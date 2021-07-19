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

def shapeChange(object_):
    item = object_[0]
    targets = object_[1:]
    for target in targets:
        target = PyNode(target)
        dup_item = duplicate(item, rr=1)
        itemShape = dup_item[0].getShape()
        shape_ = target.getShape()
        delete(shape_)
        parent(itemShape, target, r=1, s=1)
        delete(dup_item)
