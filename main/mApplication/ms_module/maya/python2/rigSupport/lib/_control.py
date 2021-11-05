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
from dictLib import _shape_dic
from lib import _transform

reload(_shape_dic)
reload(_transform)


def shape_name_match(curve_):
    shape_ = curve_.getShape()
    shape_.rename(curve_.name()+'Shape')

def crvShape_(type_):
    shape_dic = _shape_dic.load_dic(type_)
    crv_ = curve(d = shape_dic[0], 
                 p = shape_dic[1], 
                 k = shape_dic[2])
    shape_name_match(crv_)
    return crv_

def control_(object_, type_):
    CTLList = []
    for i,obj in enumerate(object_):
        CTL_ = crvShape_(type_)
        CTL_ = PyNode(CTL_)
        _transform.set_transform_(ls(obj, CTL_))
        CTLList.append(CTL_)
    return CTLList