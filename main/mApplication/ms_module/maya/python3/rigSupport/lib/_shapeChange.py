# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.

__AUTHOR__ = 'minsung'
__UPDATE__ = 20220207

:Example:
from rigSupport.lib import _shapeChange
reload(_shapeChange)

첫번째 선택한 오브젝트 쉐입으로 두번째 선택한 쉐입을 교체.
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
        if shape_:
            delete(shape_)
        parent(itemShape, target, r=1, s=1)
        delete(dup_item)

sel = ls(sl=1,fl=1,r=1)
shapeChange(sel)