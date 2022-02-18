# -*- coding: utf-8 -*-
"""============================================================================
조인트 체인 기준 stretch squash setup.
IKStSq

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20220217

:Example:
Pakage is IKStSq.pyc

import IKStSq
# 첫번째와 마지막 조인트 잡고 실행해주세요
sel = ls(sl=1,r=1,fl=1)
crvs_ = IKStSq.IKStretch(sel)

============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *

def getParam(crv):
    shape_ = crv.getShape()
    cvPos = shape_.getCVs()
    paramls = []
    for i,pos in enumerate(cvPos):
        cpp_ = shape_.closestPoint(pos,
                                   param=None,
                                   tolerance=0.001,
                                   space='preTransform')
        param = shape_.getParamAtPoint(cpp_)
        paramls.append(param)
    return paramls

def get_transform(object_):
    _name = object_.name()
    trans = xform(_name, q=1, ws=1, rp=1 )
    rot = xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def pointOnCurveInfo_(curve_):
    _shape = curve_.getShape()
    _node = createNode('pointOnCurveInfo', n='{}PC'.format(curve_.name()))
    _shape.ws >> _node.ic
    return _node

def distancBetween_(name_):
    return shadingNode('distanceBetween', au=1, n='{}DB'.format(name_))

def blendTwoAttr_(name_):
    return shadingNode('blendTwoAttr', au=1, n='{}BA'.format(name_))

def multiplyDivide_(name_):
    return shadingNode('multiplyDivide', au=1, n='{}MD'.format(name_))

def multDoubleLinear_(name_):
    return shadingNode('multDoubleLinear', au=1, n='{}MDL'.format(name_))

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}Grp'.format(name_),
                        p=parent_)
    return space_

def jointReLabel(object_):
    for i in object_:
        if i.getAttr('type') != 18:
            i.attr('type').set(18)
        name_ = i.name().split('Jnt')[0]
        i.attr('otherType').set(name_)

def division(number):
    list_ = [0]
    div_ = float(1)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def searchJoint(stJnt, enJnt):
    allP_ = enJnt.getAllParents()
    if stJnt in allP_:
        index = allP_.index(stJnt)
    list_ = [enJnt] + allP_[:index+1]
    list_.reverse()
    return list_

def object_cv_curve(name_, object_, dgree_=None):
    object_ = ls(object_)
    number = int(len(object_))
    if not dgree_:
        dgree_ = 1
    trans_list = []
    for i in object_:
        trans, rot = get_transform(i)
        trans_list.append(trans)
    crv_ = curve(n='{}Crv'.format(name_), d=dgree_, p = trans_list)
    rebuildCurve(crv_,ch=0,rpo=1,rt=0,end=1,kr=0,kcp=1,kep=1,kt=1,s=number-3,d=3)
    return crv_

def createNodes(name_, names_, crvs_, divNumList):
    names_ = names_[1:]
    dict_ = {}
    chkNames_ = ['{0}Chk'.format(n) for n in names_]
    dict_['SysGrp'] = space_('{0}Sys'.format(name_))
    dict_['stml'] = multDoubleLinear_('{0}IKStretch'.format(name_))
    dict_['sqml'] = multDoubleLinear_('{0}IKsquash'.format(name_))
    dict_['ba'] = [blendTwoAttr_(n) for n in names_]
    dict_['md'] = [multiplyDivide_('{0}Normalize'.format(n)) for n in names_]
    dict_['md1'] = [multiplyDivide_('{0}PW'.format(n)) for n in names_]
    dict_['md2'] = [multiplyDivide_('{0}Squash'.format(n)) for n in names_]
    dict_['ml'] = [multDoubleLinear_(n) for n in names_]
    dict_['db'] = [distancBetween_(n) for n in names_]
    dict_['chkdb'] = [distancBetween_(n) for n in chkNames_]
    dict_['pc'] = [pointOnCurveInfo_(crvs_[0]) for i in divNumList]
    dict_['chkpc'] = [pointOnCurveInfo_(crvs_[1]) for i in divNumList]
    return dict_
    
def IKNodeConnection(dict_, joints_, divNumList):
    joints_[0].Stretch >> dict_['stml'].i1
    joints_[0].Squash >> dict_['sqml'].i1
    for p,pc in enumerate(dict_['pc']):
        pc.attr('parameter').set(divNumList[p])
        dict_['chkpc'][p].attr('parameter').set(divNumList[p])
        if pc in dict_['pc'][:-1]:
            pc.position >> dict_['db'][p].point1
            dict_['chkpc'][p].position >> dict_['chkdb'][p].point1
            dict_['md'][p].attr('operation').set(2)
            dict_['md1'][p].attr('operation').set(3)
            dict_['md2'][p].attr('operation').set(2)
            dict_['md2'][p].attr('i1x').set(1)
            dict_['md2'][p].attr('i1y').set(1)
            dict_['md2'][p].attr('i1z').set(1)
            dict_['db'][p].distance >> dict_['ba'][p].input[1]
            dict_['stml'].o >> dict_['ba'][p].attributesBlender
            dict_['sqml'].o >> dict_['md1'][p].i2x
            dict_['ba'][p].o >> dict_['md'][p].i1x
            dict_['md'][p].ox >> dict_['ml'][p].i1
            dict_['md'][p].ox >> dict_['md1'][p].i1x
            dict_['md1'][p].ox >> dict_['md2'][p].i2y
            dict_['md1'][p].ox >> dict_['md2'][p].i2z
            dict_['chkdb'][p].distance >> dict_['ba'][p].input[0]
            dict_['chkdb'][p].distance >> dict_['md'][p].i2x
        if p>0:
            pc.position >> dict_['db'][p-1].point2
            dict_['chkpc'][p].position >> dict_['chkdb'][p-1].point2
    
    for i,db in enumerate(dict_['db']):
        addAttr(joints_[1:][i], ln="SquahY",at='double',k=1)
        addAttr(joints_[1:][i], ln="SquahZ",at='double',k=1)
        dist_ = db.getAttr('distance')
        dict_['ml'][i].attr('i2').set(dist_)
        dict_['ml'][i].o >> joints_[1:][i].tx
        dict_['md2'][i].oy >> joints_[1:][i].SquahY
        dict_['md2'][i].oz >> joints_[1:][i].SquahZ
    
    dict_['stml'].attr('i2').set(0.1)
    dict_['sqml'].attr('i2').set(0.1)

def IKStretch(object_):
    name_ = object_[0].split('Jnt')[0]
    stJnt, enJnt, = object_[0], object_[1]

    joints_ = searchJoint(stJnt, enJnt)
    names_ = [jnt.name().split('Jnt')[0] for jnt in joints_]
    
    addAttr(stJnt, ln="Stretch",at='double',min=0,max=10,k=1)
    addAttr(stJnt, ln="Squash",at='double',min=0,max=10,k=1)

    crvs_ = [object_cv_curve(n, joints_) for n in [name_, '{0}Chk'.format(name_)]]
    param_ = getParam(crvs_[0])

    nodeDict_ = createNodes(name_, names_, crvs_, param_)
    IKNodeConnection(nodeDict_, joints_, param_)
    [parent(crv, nodeDict_['SysGrp']) for crv in crvs_]
    return crvs_


        

























