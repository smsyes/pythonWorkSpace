# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib import _joint
reload(_joint)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from rigSupport.lib import _transform, _name
try:
    from imp import *
except:
    pass
reload(_transform)
reload(_name)

def jointlabeling_(part, side):    
    sel = ls(sl=1)
    
    config_ = _name.loadConfig_("configDict.json")
    partDict_ = config_["jointLabelDict"]
    side_ = config_["sideName"]
    type_ = config_["extensionsName"]
    part_ = partDict_[part]
    sideName_ = side_[side]
    joints = _transform.getChildren_(sel[0], type_='joint')
    
    for i,jnt in enumerate(joints):
        if side == 0 or side == 3:
            name_ = part_[i] 
        else:
            name_ = '{0}{1}'.format(sideName_,part_[i])
        rename(jnt, '{0}{1}'.format(name_, type_[1]))
        jnt.attr('otherType').set(name_)
        if side > 3:
            jnt.attr('side').set(3)
        else:
            jnt.attr('side').set(side)
        jnt.attr('type').set(18)
    
    return joints

def joint_(_name):
    return joint(n='{}Jnt'.format(_name))

def joint_orient(jointChain, **kwargs):
    for joint_ in jointChain:
        makeIdentity(joint_, apply=1, t=0, r=1, s=0, n=0, pn=1)
        joint(joint_, **kwargs)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 


def joint_insert(joint_, name_, pos_):
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        joint(JNT, n=name_, e=True, co=True, p=pos_)
        return PyNode(name_)


def length(v0, v1):
    v = v1 - v0
    return v.length()


def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

    
def linear_spacing_joint(joint_, num, axis='x'):
    joints = [joint_, joint_.getChildren()[0]]
    stJoint = joints[0]
    stOtherType = stJoint.getAttr('otherType')
    stSide = stJoint.getAttr('side')
    enJoint = joints[-1]
    stTrans_= _transform.get_trans(stJoint)
    enTrans_= _transform.get_trans(enJoint)
    length_ = length(stTrans_, enTrans_)
    divValue = length_/(num+1)

    if axis:
        if axis=='x':
            value = (divValue,0,0)
        if axis=='y':
            value = (0,divValue,0)
        if axis=='z':
            value = (0,0,divValue)
        if axis=='-x':
            value = (-1*divValue,0,0)
        if axis=='-y':
            value = (0,-1*divValue,0)
        if axis=='-z':
            value = (0,0,-1*divValue)
    else:
        value = (divValue,0,0)
    
    insertList = [stJoint]
    for i in range(num):
        localspace = space_(stJoint.name(), parent_=insertList[i])
        localspace.setAttr('t',value)
        name_ = '{0}{1}{2}'.format(stOtherType, i+1, 'Jnt')
        pos_ = _transform.get_trans(localspace)
        JNT = joint_insert(insertList[i], name_, pos_)
        JNT.attr('type').set(18)
        JNT.attr('otherType').set('{0}{1}'.format(stOtherType, i+1))
        JNT.attr('side').set(stSide)
        delete(localspace)
        insertList.append(JNT)


def duplicate_joint(object_):
    dupJNT_ = duplicate(object_, rc=1)
    jointChain = _transform.getChildren_(dupJNT_[0], type_='joint')
    return jointChain


def bindSkin_(object_, **kwargs):
    scls = skinCluster(object_, **kwargs)[0]
    return scls


def object_at_joint(object_):
    JNTList = []
    for object in enumerate(object_):
        select(cl=1)
        _name = object.name()
        JNT = joint(_name)
        parent(JNT, w=1)
        JNTList.append(JNT)
    return JNTList

def reAngle(joint_):
    for jnt in joint_:
        if jnt.getAngleX()<0:
            jnt.setAngleX(jnt.getAngleX()*-1)
        if jnt.getAngleY()<0:
            jnt.setAngleY(jnt.getAngleY()*-1)
        if jnt.getAngleZ()<0:
            jnt.setAngleZ(jnt.getAngleZ()*-1)

def RPIKHandle(name_, IKJnt_, PV, parent_):
    jry=0.1
    [jnt.setAttr('ry', jnt.getAttr('ry')+jry) for jnt in IKJnt_]
    [joint(jnt, e=1, spa=1) for jnt in IKJnt_]
    jry=0.1
    [jnt.setAttr('ry', jnt.getAttr('ry')-jry) for jnt in IKJnt_]
    IKH_ = ikHandle( n='{}IKH'.format(name_), 
                            sj=IKJnt_[0], ee=IKJnt_[-1], 
                            sol='ikRPsolver',p=1)
    parent(IKH_[0], parent_)
    poleVectorConstraint(PV, IKH_[0])

def IKFKBlend(object_):
    FKChain = _transform.getChildren_(object_[0], type_='joint')
    IKChain = _transform.getChildren_(object_[1])
    DrvChain = _transform.getChildren_(object_[2], type_='joint')
    
    for i,drv in enumerate(DrvChain):
        name_ = drv.name()
        print(name_, FKChain[i], IKChain[i])
        PB_ = createNode('pairBlend', n='{0}PB'.format(name_))
        BC_ = shadingNode('blendColors', au=1, n='{0}BC'.format(name_))
        FKChain[i].r >> PB_.ir2
        FKChain[i].t >> PB_.it2
        FKChain[i].s >> BC_.color1
        IKChain[i].r >> PB_.ir1
        IKChain[i].t >> PB_.it1
        IKChain[i].s >> BC_.color2
        PB_.outTranslate >> drv.t
        PB_.outRotate >> drv.r
        BC_.output >> drv.s