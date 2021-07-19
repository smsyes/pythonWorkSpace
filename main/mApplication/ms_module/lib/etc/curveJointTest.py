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
import pymel.core.datatypes as dt
import sys
import os
from collections import OrderedDict

# (add import something more...)
# front && back of classes 3 empty lines.
#


def to_unicode(unicode_or_str):
    '''Function || method descriptions.
    str to unicode
    '''
    if isinstance(unicode_or_str, str):
        value = unicode_or_str.decode('utf-8')
    else:
        value = unicode_or_str
    return value


def to_str(unicode_or_str):
    '''Function || method descriptions.
    unicode to str
    '''
    if isinstance(unicode_or_str, unicode):
        value = unicode_or_str.encode('utf-8')
    else:
        value = unicode_or_str
    return value


def shape_(object_):
    selectedTransform = object_
    return selectedTransform.getShape()


def name_(object_):
    return to_str(object_.name())


def node_(object_):
    return object_.nodeType()


def get_cvs(shape_):
    return shape_.getCVs(space='world')


def get_param_at_point(shape_, point):
    return shape_.getParamAtPoint(point)


def distance_point(shape_, point):
    return shape_.distanceToPoint(point)


def get_point_at_param(shape_, param):
    return shape_.getPointAtParam(param)


def length_(shape_):
    return shape_.length()


def num_cvs(shape_):
    return shape_.numCVs()


def num_spans(shape_):
    return shape_.numSpans()


def reverse_(shape_):
    return shape_.reverse()


def crv_info(shape_):
    node_ = createNode('curveInfo', n='{}_Info'.format(shape_))
    connect_attr('{}.ws'.format(shape_), '{}.ic'.format(node_))
    return node_


def po_crv_info(shape_):
    node_ = createNode('pointOnCurveInfo', n='{}_POCI'.format(shape_))
    connect_attr('{}.ws'.format(shape_), '{}.ic'.format(node_))
    return node_


def get_transform(object_):
    trans = object_.getTranslation(space='world')
    rot = object_.getRotation(space='world')
    return trans, rot


def set_translate(object_, trans):
    object_.setTranslation(trans, space='object')


def set_rotate(object_, rot):
    object_.setRotation(rot, space='object')


def set_rotate_axis(object_, axis=None):
    if not axis:
        axis = 'x'
    if axis == 'x':
        rot = (0, 90, 0)
    if axis == 'y':
        rot = (-90, 0, 0)
    if axis == 'z':
        rot = (0, 0, 0)
    object_.setRotateAxis(rot)
    object_.setRotation(rotation=(0, 0, 0))


def connect_param_of_point(shape_):
    connectionList = listConnections('{}.ws'.format(shape_))
    if '{}_POCI'.format(shape_) in connectionList:
        print 'aready Connections InCurve'
    else:
        infoNode = po_crv_info(shape_)


def joint_(name_, num):
    JNT = joint(n='{}_{}_JNT'.format(name_, num))
    return JNT


def orient_joint(joint_, *args):
    select(joint_)
    joint(e=1, oj=args[0], sao=args[1], ch=1, zso=1)
    select(cl=1)


def space_(name_, num, parent_):
    space_ = createNode(
        'transform', n='{}_{}_space'.format(name_, num), p=parent_)
    return space_


def set_parent(*args):
    args[0].setParent(args[1])


def curve_at_joint(object_):
    if not isinstance(object_, list):
        object_ = ls(object_)
    for i in object_:
        name_ = '_'.join(name_(i).split('_')[:-1])
        shape_ = shape_(i)
        pointPos = get_cvs(shape_)

        JNTList = []

        for i, pos in enumerate(pointPos):
            select(cl=1)
            JNT = joint_(shape_, name_)
            set_translate(JNT, pos)
            JNTTrans, JNTRot = get_transform(JNT)
            JNTList.append(JNT)

            if i == 0:
                stJNT = JNT
            if pos == pointPos[-1]:
                enJNT = JNT
            if i > 0:
                set_parent(JNT, JNTList[i-1])


def constraint_(*args, **kwargs):
    if kwargs['type'] == 'parent':
        parentConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'point':
        pointConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'orient':
        orientConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'scale':
        scaleConstraint(args, maintainOffset=kwargs['mo'])


def object_at_joint(object_):
    for i in object_:
        select(cl=1)
        name_ = '_'.join(name_(i).split('_')[:-1])
        trans, rot = get_transform(i)
        JNT = joint_(name_, i)
        set_translate(JNT, trans)
        set_rotate(JNT, rot)


def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets


def constraints_(object_):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        constraint_(item, targets[i], type='parent', mo=1)


def setParents_(object_):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        set_parent(item, targets[i])


def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))


def poci_connect(shape_, object_):
    cvNum = num_cvs(shape_)
    for i in range(cvNum):
        POCI = po_crv_info(shape_)
        setAttr('{}.parameter'.format(POCI), i)
        connect_attr(POCI, 'p', object_[i], 't')


def connect_attrs(object_, output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)


selObject = ls(sl=1, fl=1)
# curve_at_joint(selObject)
# constraints_(selObject)
# setParents_(selObject)
# shape_ = shape_(selObject[0])
# poci_connect(shape_, selObject)
# object_at_joint(selObject)
# connect_attrs(selObject, output, input)

