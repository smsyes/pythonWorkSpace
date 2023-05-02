# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from rigSupport.lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
import pymel.core.datatypes as dt
import math
from rigSupport.lib import _transform
from rigSupport.lib import _connect
from rigSupport.lib import _node

try:
    from imp import *
except:
    pass

reload(_transform)
reload(_connect)
reload(_node)



def checkAttrExist(obj,attr,type,replace):
    attrExist = attributeQuery(attr, node=obj, exists=True)
    newAttr = ''
    if(attrExist == False):
        newAttr = addAttr(obj, longName=attr, at=type)
         
    else:
        if(replace == True):
            deleteAttr(obj, at=attr)
            newAttr = addAttr(obj, longName=attr, at=type)
             
    newAttr = PyNode('{}.{}'.format(obj, attr))
    return (attrExist,newAttr)


def offsetMatrix(item, target):
    mat1_ = _transform.getTransform(target)
    mat2_ = _transform.getInverseTransform(item)
    return _transform.getMultMatrix(mat1_, mat2_)

def connectKwargs(item ,target, *args):
    itemAttr = item.attr(args[0])
    targetAttr = target.attr(args[1])
    itemAttr.connect(targetAttr)

def setKwargs(target, *args):
    targetAttr = target.attr(args[0])
    targetAttr.set(args[1])

def matrixConst(item, target, type_, t=None, r=None, s=None):
    _name = target.name()

    MM_ = _node.multMatrix_(_name)
    DM_ = _node.decompose_(_name)
    
    if type_ == 'local':
        pass
    elif type_ == 'parent':
        offset_ = offsetMatrix(item, target)
        MM_.setAttr('matrixIn[0]', offset_)
    _connect.connect_attr(item, 'wm', MM_, 'matrixIn[1]')
    if target.getParent():
        _connect.connect_attr(target.getParent(), 'wim', MM_, 'matrixIn[2]')
    else:
        _connect.connect_attr(target, 'pim', MM_, 'matrixIn[2]')
    _connect.connect_attr(MM_, 'matrixSum', DM_, 'inputMatrix')
    
    data = {}
    if t is not None:
        data["outputTranslate"] = t
    if r is not None:
        data["outputRotate"] = r
    if s is not None:
        data["outputScale"] = s
    for DItem in data.items():
        connectKwargs(DM_ ,target, DItem[0], DItem[1])

def MTransform(item, target, attrs):
    Ipwm = item.getAttr('worldMatrix')
    if target.getParent():
        Tpim = target.getParent().getAttr('worldMatrix').inverse()
    else:
        Tpim = target.getAttr('parentInverseMatrix')
    prod = Ipwm * Tpim

    tMat = dt.TransformationMatrix(prod)
    translate = tMat.getTranslation('transform')
    quat_rotate = tMat.getRotationQuaternion()
    quat = dt.Quaternion(quat_rotate)
    euler = quat.asEulerRotation()
    rotate = map(math.degrees, euler)
    scale = tMat.getScale('transform')

    data = {}
    if 't' in attrs:
        data["translate"] = translate
    if 'r' in attrs:
        data["rotate"] = rotate
    if target.type() == 'joint':
        data["jointOrient"] = rotate
    if 's' in attrs:
        data["scale"] = scale
    for DItem in data.items():
        setKwargs(target, DItem[0], DItem[1])

def matrixConsts(object_, type_, **kwargs):
    items, targets = _transform.divide_in_two(object_)
    for i,target in enumerate(targets):
        matrixConst(items[i], target, type_, **kwargs)

def connectQuat(
                item_,
                target_,
                MM,
                DM,
                EQ,
                QI,
                QP,
                QE
                ):
    item_.wm >> MM.matrixIn[0]
    target_.pim >> MM.matrixIn[1]
    MM.matrixSum >> DM.inputMatrix
    target_.jo >> EQ.inputRotate
    EQ.outputQuat >> QI.inputQuat
    DM.outputQuat >> QP.input1Quat
    QI.outputQuat >> QP.input2Quat
    QP.outputQuat >> QE.inputQuat
    DM.ot >> target_.t
    QE.outputRotate >> target_.r
    
def createQM(object_, name_):
    localMMNode = _node.multMatrix_(name_)
    localDMNode = _node.decompose_(name_)
    jointOrietnEQNode = _node.eularToQuat_(name_)
    QINode = _node.quatInvert_(name_)
    Quat2Mult = _node.quatProd_(name_)
    QENode = _node.quatToEuler_(name_)
    connectQuat(
                object_[0],
                object_[1],
                localMMNode,
                localDMNode,
                jointOrietnEQNode,
                QINode,
                Quat2Mult,
                QENode
                )

def createQM_(object_):
    item_, target_ = halfList_(object_)
    for i,item in enumerate(item_):
        name_ = item.name()
        MM = pm.createNode('multMatrix', n='{}_MM'.format(name_))
        DM = pm.createNode('decomposeMatrix', n='{}_DM'.format(name_))
        EQ = pm.shadingNode('eulerToQuat', au=1, n='{}_EQ'.format(name_))
        QI = pm.shadingNode('quatInvert', au=1, n='{}_QI'.format(name_))
        QP = pm.shadingNode('quatProd', au=1, n='{}_QP'.format(name_))
        QE = pm.shadingNode('quatToEuler', au=1, n='{}_QE'.format(name_))
        item.wm >> MM.matrixIn[0]
        target_[i].pim >> MM.matrixIn[1]
        MM.matrixSum >> DM.inputMatrix
        if target_[i].type() == 'joint':
            target_[i].jo >> EQ.inputRotate
        else:
            target_[i].r >> EQ.inputRotate
        EQ.outputQuat >> QI.inputQuat
        DM.outputQuat >> QP.input1Quat
        QI.outputQuat >> QP.input2Quat
        QP.outputQuat >> QE.inputQuat
        DM.ot >> target_[i].t
        QE.outputRotate >> target_[i].r