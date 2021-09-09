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

reload(_transform)


def hierarchy_(object_, type_=None):
    object_ = PyNode(object_)
    if not type_:
        type_ = 'transform'
    hier_ = object_.listRelatives(ad=1, c=1, typ=type_)
    hier_ = hier_ + [object_]
    hier_.reverse()
    return hier_

def joint_(_name):
    return joint(n='{}Jnt'.format(_name))


def _joint(joint_, **kwargs):
    joint(joint_, **kwargs)


def joint_orient(jointChain, **kwargs):
    for joint_ in jointChain:
        _joint(jointChain, **kwargs)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 


def joint_insert(joint_, pos_):
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        _joint(JNT, e=True, co=True, p=pos_)
        return PyNode(JNT)


def length(v0, v1):
    v = v1 - v0
    return v.length()


def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

    
def add_joint(jointChain, num, axis=None):
    stJoint = jointChain[0]
    enJoint = jointChain[-1]
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
    else:
        value = (divValue,0,0)
    
    insertList = [stJoint]
    for i in range(num):
        localspace = space_(stJoint.name(), parent_=insertList[i])
        localspace.setAttr('t',value)
        pos_ = _transform.get_trans(localspace)
        JNT = joint_insert(insertList[i], pos_)
        delete(localspace)
        insertList.append(JNT)


def linear_spacing_joint(num, 
                         e=True, 
                         oj='xzy', 
                         sao='zup', 
                         zso=True, 
                         axis='x'
                         ):
    sel = ls(sl=1, fl=1, r=1)
    for i in sel:
        jointChain = hierarchy_(i, type_='joint')
        joint_orient(jointChain,
                     e=e,
                     oj=oj,
                     sao=sao,
                     zso=zso
                     )
        add_joint(jointChain, num, axis)


def duplicate_joint(object_):
    dupJNT_ = duplicate(object_, rc=1)
    jointChain = hierarchy_(dupJNT_[0], type_='joint')
    return jointChain


def bindSkin_(object_, **kwargs):
    scls = skinCluster(object_, **kwargs)[0]
    return scls


def object_at_joint(object_):
    JNTList = []
    for i,object in enumerate(object_):
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