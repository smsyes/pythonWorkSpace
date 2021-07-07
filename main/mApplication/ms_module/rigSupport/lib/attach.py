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

module_path = 'E:\script\main\mApplication\ms_module\lib\dict_lib'
if not module_path in sys.path:
    sys.path.append(module_path)
    
import _shape_dic
reload(_shape_dic)


def get_cvs(_shape):
    return _shape.getCVs(space='world')

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)

def curve_at_null(object_):
    NULLList = []
    _name = object_.name()
    _shape = object_.getShape()
    cvs = get_cvs(_shape)
    for pos in cvs:
        select(cl=1)
        NULL_ = space_(_name, None)
        set_trans_xform(NULL_, pos)
        NULLList.append(NULL_)
    return NULLList

sel = ls(sl=1, fl=1, r=1)
null_ = curve_at_null(sel[0])
ordict_ = OrderedDict()
ordict_['IKCRV'] = [object_cv_curve(ordict_['IKJNTs'], dgree_=1)]


