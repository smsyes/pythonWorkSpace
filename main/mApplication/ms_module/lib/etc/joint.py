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
from __future__ import division

def rename_(*args):
    names_ = [name for name in args[:-1]]
    list_ = args[-1]
    joinName = [] 
    for i,object_ in enumerate(list_):
        if names_[0] : joinName.append(names_[0])
        if names_[1] : joinName.append(names_[1])
        joinName.append(num_padding_(i+1))
        if names_[2] : joinName.append(names_[2])
        name_ = '_'.join(joinName)
        rename(object_, name_)
        joinName=[]

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
           zso=None):
    
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
    joint(joint_, **data)

def joint_orient(jointChain):
    for joint_ in jointChain:
        _joint(joint_, e=True, oj='xzy', sao='zup', zso=True)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 

prefix_ = ""
name_ = "FK"
suffix_ = "JNT"

selObject = ls(sl=1, fl=1, r=1)
jointChain = jointHier(selObject[0])
rename_(prefix_, name_, suffix_, jointChain)
joint_orient(jointChain)


