# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from collections import OrderedDict
import string
import sys
import os

# joint drive
def hierarchy_(object_, type_=None):
    object_ = PyNode(object_)
    hier_ = object_.listRelatives(ad=1, c=1, typ=type_)
    hier_ = hier_ + [object_]
    hier_.reverse()
    return hier_

def _joint(joint_,
           e=None,
           q=None,
           ex=None,
           oj=None,
           o=None,
           sao=None,
           zso=None,
           p=None,
           co=None):
    
    data = {}

    if e is not None:
        data["e"] = e
    if q is not None:
        data["q"] = q
    if ex is not None:
        data["exists"] = ex
    if oj is not None:
        data["orientJoint"] = oj
    if o is not None:
        data["orientation"] = o
    if sao is not None:
        data["secondaryAxisOrient"] = sao
    if zso is not None:
        data["zeroScaleOrient"] = zso
    if p is not None:
        data["position"] = p
    if co is not None:
        data["component"] = co
    joint(joint_, **data)

def joint_orient(jointChain):
    for joint_ in jointChain:
        _joint(joint_, e=True, oj='xzy', sao='zup', zso=True)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 

def joint_insert(joint_, pos_):
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        _joint(JNT, e=True, co=True, p=pos_)
        return PyNode(JNT)

def get_transform(object_):
    _name = object_.name()
    trans = xform(_name, q=1, ws=1, rp=1 )
    rot = xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)

def set_rot_xform(object_, rot):
    xform(object_, r = 1, ro = rot)

def get_trans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]
    
def get_rot(object_):
    return xform(object_, q=1, ws=1, ro=1 )

def set_transform_(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        pos, rot = get_transform(item)
        set_trans_xform(targets[i], pos)
        set_rot_xform(targets[i], rot)

def length(v0, v1):
    v = v1 - v0
    return v.length()

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

def padding(num_):
    return str(num_).zfill(2)

def offset_(object_, num_=None):
    object_ = PyNode(object_)
    _name = object_.name()
    type_ = ['off', 'spc']
    offsetList = []
    for i in range(num_):
        if i > 0:
            _type = 1
            _parent = offset
        else:
            _type = 0
            _parent = object_
        join_name = '_'.join([_name, type_[_type]])
        offset = space_(join_name, _parent)
        if i==0:
            if object_.getParent():
                _parent = object_.getParent()
                parent(offset, _parent)
            else:
                parent(offset, w=1)
        offsetList.append(offset)
    parent(object_, offset)
    return offsetList[0]
    
def add_joint(jointChain, num):
    stJoint = jointChain[0]
    enJoint = jointChain[-1]
    stTrans_= get_trans(stJoint)
    enTrans_= get_trans(enJoint)
    length_ = length(stTrans_, enTrans_)
    divValue = length_/(num+1)
    
    insertList = [stJoint]
    for i in range(num):
        localspace = space_(stJoint.name(), parent_=insertList[i])
        localspace.setAttr('t',(divValue,0,0))
        pos_ = get_trans(localspace)
        JNT = joint_insert(insertList[i], pos_)
        delete(localspace)
        insertList.append(JNT)
    
def linear_spacing_joint(num):    
    sel = ls(sl=1, fl=1, r=1)
    for i in sel:
        jointChain = hierarchy_(i, type_='joint')
        joint_orient(jointChain)
        add_joint(jointChain, num)


num = 3
base_name = 'cape'       
sel = ls(sl=1, r=1, fl=1)
linear_spacing_joint(3)





