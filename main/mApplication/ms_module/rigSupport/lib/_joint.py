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
from lib import _transform
from lib import _name

reload(_transform)
reload(_name)


def jointlabeling_(part, side):    
    sel = ls(sl=1)
    
    parts_, side_, type_ = _name.configName(part)
    sideName_ = side_[side]
    joints = _transform.getChildren_(sel[0], type_='joint')
    
    for i,jnt in enumerate(joints):
        if side == 0:
            name_ = parts_[i] 
        else:
            name_ = '{0}{1}'.format(sideName_,parts_[i])
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


def _joint(joint_, **kwargs):
    joint(joint_, **kwargs)


def joint_orient(jointChain, **kwargs):
    for joint_ in jointChain:
        _joint(jointChain, **kwargs)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 


def joint_insert(joint_, name_, pos_):
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        _joint(JNT, n=name_, e=True, co=True, p=pos_)
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
        name_ = '{0}{1}'.format(insertList[0], i+1)
        pos_ = _transform.get_trans(localspace)
        JNT = joint_insert(insertList[i], name_, pos_)
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