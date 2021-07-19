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
reload(_transform)

def chain_structure(object_):
    object_ = ls(object_)
    childList = object_[1:]
    parentList = object_[:-1]
    for i,object in enumerate(childList):
        parent(object, parentList[i])


def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))


def connect_attrs(object_, output, input):
    items, targets = _transform.divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)


def one_to_n_connect(object_, output, input):
    item = object_[0]
    target = object_[1:]
    for i, object in enumerate(target):
        connect_attr(item, output, object, input)


def constraint_(*args, **kwargs):
    if kwargs['type'] == 'parent':
        node_ = parentConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'point':
        node_ = pointConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'orient':
        node_ = orientConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'scale':
        node_ = scaleConstraint(args, maintainOffset=kwargs['mo'])
    return node_

        
def constraints_(object_, type_, mo_):
    items, targets = _transform.divide_in_two(object_)
    consts_ = []
    for i, item in enumerate(items):
        const_ = constraint_(item, targets[i], type=type_, mo=mo_)
        consts_.append(const_)
    return consts_


def one_to_n_constrain(object_, type_, mo_):
    item = object_[0]
    target = object_[1:]
    consts_ = [constraint_(item, i, type=type_, mo=mo_) for i in target]
    return consts_

        
def n_to_one_constrain(object_, type_, mo_):
    item = object_[:-1]
    target = object_[-1]
    consts_ = [constraint_(i, target, type=type_, mo=mo_) for i in item]
    return consts_


def subtract(object_):
    for i,object in enumerate(object_):
        parents = object.listRelatives(p=1)[0]
        name_ = object.name()
        subtract = createNode('multiplyDivide', 
                            n = '{}_subtract_MULT'.format(name_))
        setAttr('{}.i2'.format(subtract), -1,-1,-1)
        connect_attr(object, 't', subtract, 'i1')
        connect_attr(subtract, 'o', parents, 't')