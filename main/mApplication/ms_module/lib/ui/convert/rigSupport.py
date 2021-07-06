# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
str to unicode
unicode to str
Get the shape of an object

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

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
import string
import sys
import os

module_path = 'E:\script\main\mApplication\ms_module\lib\dict_lib'
if not module_path in sys.path:
    sys.path.append(module_path)
    
import _shape_dic
reload(_shape_dic)

# joint drive
def jointHier(object_):
    object_ = PyNode(object_)
    hierJNT_ = object_.listRelatives(ad=1, c=1, typ='joint')
    hierJNT_ = hierJNT_ + [object_]
    hierJNT_.reverse()
    return hierJNT_

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



def get_trans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]
    
def get_rot(object_):
    return xform(object_, q=1, ws=1, ro=1 )

def length(v0, v1):
    v = v1 - v0
    return v.length()

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}_space'.format(name_),
                        p=parent_)
    return space_
    
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
        jointChain = jointHier(i)
        joint_orient(jointChain)
        add_joint(jointChain, num)

def duplicate_joint(object_): # base joint duplicate IK, FK joint
    IKJNT_ = duplicate(object_, rc=1)
    hierIKJNT_ = jointHier(IKJNT_)
    [rename(i, 'IK_{}JNT'.format(i.split('JNT')[0])) for i in hierIKJNT_]
    return hierIKJNT_

def FK_control(object_, name_):
    FKList = object_[:-1]
    FKCTLList = []
    FKOffList = []
    for i,JNT in enumerate(FKList):
        pad_ = padding_('num', i)
        _name = 'FK_{}_{}'.format(name_, pad_)
        FKCTL_ = crvShape_(_name, 'circle')
        FKCTL_ = PyNode(FKCTL_)
        set_transform_(ls(JNT, FKCTL_))
        FKCTLOffset = offset_(FKCTL_, num_=2)
        FKCTLList.append(FKCTL_)
        FKOffList.append(FKCTLOffset)
    return FKCTLList, FKOffList
        
sel = ls(sl=1, r=1, fl=1)
# linear_spacing_joint(3)







