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

def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def get_transform(object_):
    _name = object_.name()
    trans = xform(_name, q=1, ws=1, rp=1 )
    rot = xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)

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

def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2