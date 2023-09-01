# -*- coding: utf-8 -*-
"""============================================================================
seal spine
============================================================================"""
import pymel.core as pm
from collections import OrderedDict
from rigSupport.lib import IKStSq
try:
    from imp import *
except:
    pass
reload(IKStSq)

def offGrp_(object_):
    _name = object_.name()
    offset = space_(_name, parent_=object_)
    if object_.getParent():
        _parent = object_.getParent()
        pm.parent(offset, _parent)
    else:
        pm.parent(offset, w=1)
    pm.parent(object_, offset)
    return offset

def getChildren_(object_, type_=None):
    """Get the childrens from top object

    Arguments:
        object_ (node): transform node
        type_ (type): node type

    Returns:
        list : childrens list

    """
    object_ = pm.PyNode(object_)
    if not type_:
        type_ = 'transform'
    child_ = object_.listRelatives(ad=1, c=1, typ=type_)
    child_ = child_ + [object_]
    child_.reverse()
    return child_

def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])
            
def dupJoint(joints,type_):
    """좏깮議곗씤몃뱾 蹂듭궗 type_由щ꽕

    Arguments:
        joints (list) : 蹂듭궗議곗씤몃뱾
        type_ (string) : 'FK' or 'IK' or 'Drv'

    Returns:
        Jnts : 蹂듭궗chain援ъ“ 議곗씤

    """
    Jnts = []
    for j in joints:
        dup = pm.duplicate(j,po=1)
        pm.parent(dup,w=1)
        pm.rename(dup,'{0}{1}Jnt'.format(j.name(),type_))
        Jnts.append(dup[0])
    hierarchy_(Jnts)
    return Jnts

def getShape_(key):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string

    Returns:
        dictionary : Curve information.

    """
    shape_dict = OrderedDict()
    shape_dict['square'] = 1, [(-1,0,1),(-1,0,-1),(1,0,-1),(1,0,1),
                            (-1,0,1)], [0,1,2,3,4]
    shape_dict['circle'] = 1, [(0,0,1),(0.382683,0,0.92388),
                            (0.707107,0,0.707107),(0.92388,0,0.382683),
                            (1,0,0),(0.92388,0,-0.382683),
                            (0.707107,0,-0.707107),(0.382683,0,-0.92388),
                            (0,0,-1),(-0.382683,0,-0.92388),
                            (-0.707107,0,-0.707107),(-0.92388,0,-0.382683),
                            (-1,0,0),(-0.92388,0,0.382683),
                            (-0.707107,0,0.707107),(-0.382683,0,0.92388),
                            (0,0,1)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,
                            15,16]
    return shape_dict[key]

def crvShape_(key,name_):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string
        name_ (string): 

    Returns:
        dictionary : Curve information.

    """
    shapeDict = getShape_(key)
    crv_ = pm.curve(d=shapeDict[0],
                    p=shapeDict[1],
                    k=shapeDict[2],
                    n=name_)
    return crv_

def Ctrl(part,joints,type_):
    """Ctrls 앹꽦.

    Arguments:
        joints (list) : Ctrl 앹꽦ㅼ쫰앺듃 由ъ뒪

    Returns:
        ctrls : 앹꽦Ctrls

    """
    ctrls = []
    for i,j in enumerate(joints):
        if type_ == 'FK':
            shape_ = 'square'
        elif type_ == 'IK':
            shape_ = 'circle'
        name_ = '{0}{1}{2}Ctrl'.format(part,i+1,type_)
        ctrl = crvShape_(shape_,name_)
        pm.matchTransform(ctrl,j)
        ctrls.append(ctrl)
    if type_ == 'FK':
        hierarchy_(ctrls)
    [offGrp_(c) for c in ctrls]
    return ctrls

def JntAtCurveParam(part,numList, curve_):
    jnts = []
    shape_ = curve_.getShape()
    for i,num in enumerate(numList):
        pm.select(cl=1)
        name_ = '{0}{1}'.format(part,i)
        pos = shape_.getPointAtParam(num)
        # pc_ = pm.createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        jnt_ = pm.joint(n='{0}Jnt'.format(name_))
        jnt_.t.set(pos)
        # shape_.ws >> pc_.inputCurve
        # pc_.attr('turnOnPercentage').set(1)
        # pc_.attr('parameter').set(num)
        # pc_.position >> jnt_.t
        jnts.append(jnt_)
    return jnts

part = 'Spine'        
sel = pm.ls(sl=1,fl=1,r=1)
joints = getChildren_(sel[0], type_='joint')
FKJoints = dupJoint(joints,'FK')
IKJoints = dupJoint(joints,'IK')
DrvJoints = dupJoint(joints,'Drv')
IKCrv = IKStSq.IKStretch(pm.ls(IKJoints[0],IKJoints[-1]),rvs=False)
BIJnt = JntAtCurveParam(part,[0,0.5,1],IKCrv[0])
FKCtrl = Ctrl(part,FKJoints,'FK')
IKCtrl = Ctrl(part,BIJnt,'IK')
[pm.parent(j,IKCtrl[i]) for i,j in enumerate(BIJnt)]






