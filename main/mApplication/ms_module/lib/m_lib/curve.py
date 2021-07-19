# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
curve information drive

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

:Example:


blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *

def get_cvs(_shape):
    """Return get cv position from curve

    Arguments:
        _shape (shape): shape node to get cv position

    Returns:
        list of float: The position values for xyz.
    """
    return _shape.getCVs(space='world')

def get_param_at_point(_shape, point):
    return _shape.getParamAtPoint(point)

def distance_point(_shape, point):
    return _shape.distanceToPoint(point)

def get_point_at_param(_shape, param):
    return _shape.getPointAtParam(param)

def length_(_shape):
    return _shape.length()

def num_cvs(_shape):
    return _shape.numCVs()

def num_spans(_shape):
    return _shape.numSpans()

def crv_info(_shape):
    _node = createNode('curveInfo', n='{}_CVIF'.format(_shape))
    connectAttr('{}.ws'.format(_shape), '{}.ic'.format(_node))
    return _node

def po_crv_info(_shape, _param):
    _node = createNode('pointOnCurveInfo', n='{}_POCI'.format(_shape))
    connectAttr('{}.ws'.format(_shape), '{}.ic'.format(_node))
    setAttr('{}.parameter'.format(_node), _param)
    return _node

def cvs_at_param(_shape):
    param_list = []
    cvs_pos = get_cvs(_shape)
    for i in cvs_pos:
        param = get_param_at_point(_shape, i)
        param_list.append(param)
    return param_list

def pos_at_param(_shape, *args):
    args = ls(args)
    param_list = []
    for i in args:
        trans, rot = get_transform(i)
        param = get_param_at_point(_shape, trans)
        param_list.append(param)
    return param_list
