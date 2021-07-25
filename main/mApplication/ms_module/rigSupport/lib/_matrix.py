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


def local_matrix(object_, t=None, r=None, s=None):
    items, targets = _transform.divide_in_two(object_)
    for i,target in enumerate(targets):
        if target.getParent():
            parent_ = target.getParent()
            atts_ = 'wim'
        else:
            parent_ = target
            atts_ = 'pim'
        _name = '{}_local'.format(target.name())
        MTMX_ = _node.multMatrix_(_name)
        DCMX_ = _node.decompose_(_name)  
        _connect.connect_attrs(ls(items[i], MTMX_), 'wm', 'matrixIn[0]')
        _connect.connect_attrs(ls(parent_, MTMX_), atts_, 'matrixIn[1]')
        _connect.connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
        if t:
            _connect.connect_attrs(ls(DCMX_, target), 'ot', t)
        if r:
            _connect.connect_attrs(ls(DCMX_, target), 'or', r)
        if s:
            _connect.connect_attrs(ls(DCMX_, target), 'os', s)        


def matrixConstraint(object_, 
                     t=None, r=None, s=None):
    object_ = ls(object_)
    item, target = object_[0],object_[1]
    _name = '{}2{}'.format(item.name(), target.name())

    MTMX_ = _node.multMatrix_(_name)
    DCMX_ = _node.decompose_(_name)
    mat1_ = _transform.getTransform(target)
    mat2_ = _transform.getInverseTransform(item)
    multmat_ = _transform.getMultMatrix(mat1_, mat2_)
    
    attrExist, newAttr = checkAttrExist(target,'offset','matrix',True)
    setAttr(newAttr, multmat_)
    _connect.connect_attrs(ls(target, MTMX_), 'offset', 'matrixIn[0]')
    _connect.connect_attrs(ls(item, MTMX_), 'wm', 'matrixIn[1]')
    if target.getParent():
        _connect.connect_attrs(ls(target.getParent(), MTMX_), 
                             'wim', 'matrixIn[2]')
    else:
        _connect.connect_attrs(ls(target, MTMX_), 'pim', 'matrixIn[2]')
    _connect.connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
    if t:
        _connect.connect_attrs(ls(DCMX_, target), 'ot', 't')
    if r:
        _connect.connect_attrs(ls(DCMX_, target), 'or', 'r')
    if s:
        _connect.connect_attrs(ls(DCMX_, target), 'os', 's')