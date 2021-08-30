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
from lib import _transform
from lib import _connect
from lib import _node

reload(_transform)
reload(_connect)
reload(_node)



def checkAttrExist(obj,attr,type,replace):
    attrExist = attributeQuery(attr, node=obj, exists=True)
    newAttr = ''
    if(attrExist == False):
        newAttr = addAttr(obj, longName=attr, at=type)
         
    else:
        if(replace == True):
            deleteAttr(obj, at=attr)
            newAttr = addAttr(obj, longName=attr, at=type)
             
    newAttr = PyNode('{}.{}'.format(obj, attr))
    return (attrExist,newAttr)


def offsetMatrix(item, target):
    mat1_ = _transform.getTransform(target)
    mat2_ = _transform.getInverseTransform(item)
    return _transform.getMultMatrix(mat1_, mat2_)


def matrixConst(item, target, type_, **kwargs):
    _name = '{}2{}'.format(item.name(),target.name())

    MM_ = _node.multMatrix_(_name)
    DM_ = _node.decompose_(_name)
    
    if type_ == 'local':
        pass
    elif type_ == 'parent':
        offset_ = offsetMatrix(item, target)
        MM_.setAttr('matrixIn[0]', offset_)
    _connect.connect_attr(item, 'wm', MM_, 'matrixIn[1]')
    if target.getParent():
        _connect.connect_attr(target.getParent(), 'wim', MM_, 'matrixIn[2]')
    else:
        _connect.connect_attr(target, 'pim', MM_, 'matrixIn[2]')
    _connect.connect_attr(MM_, 'matrixSum', DM_, 'inputMatrix')
    for key in kwargs.keys():
        DMAttr_ = DM_.attr(key)
        tAttr_ = target.attr(kwargs[key])
        DMAttr_.connectAttr(target, tAttr_)


def matrixConsts(object_, type_, **kwargs):
    items, targets = _transform.divide_in_two(object_)
    for i,target in enumerate(targets):
        matrixConst(items[i], target, type_, **kwargs)

