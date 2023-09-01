#-*- coding: utf-8 -*-
"""=============================================================================
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
============================================================================="""
#
# when start coding 3 empty lines.
#
import maya.cmds as cmds
import sys
import os
from collections import OrderedDict

#(add import something more...)
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


def shapes(object_):
    '''Function || method descriptions.
    Get the shape of an object
    '''
    shape_ = cmds.listRelatives(object_, s = 1, pa =1)[0]
    shape_ = to_str(shape_)
    shapeType_ = to_str(cmds.objectType(shape_))
    print "Object Type is", shapeType_
    return shape_, shapeType_
    
def spans(shape_):
    return cmds.getAttr('{}.s'.format(shape_))

def dgree(shape_):
    return cmds.getAttr('{}.d'.format(shape_))

def min(shape_):
    return cmds.getAttr('{}.min'.format(shape_))
    
def max(shape_):
    return cmds.getAttr('{}.max'.format(shape_))
    
def crvInfo(shape_):
    node_ = cmds.createNode('curveInfo', n = '{}_Info'.format(shape_))
    cmds.connectAttr('{}.ws'.format(shape_), '{}.ic'.format(node_))
    return node_
    
def pocInfo(shape_):
    node_ = cmds.createNode('pointOnCurveInfo', n = '{}_POCI'.format(shape_))
    cmds.connectAttr('{}.ws'.format(shape_), '{}.ic'.format(node_))
    return node_
    
def length(shape_):
    infoNode = crvInfo(shape_)
    length = cmds.getAttr('{}.al'.format(infoNode))
    cmds.delete(infoNode)
    return length
    
def getPointPos(shape_):
    infoNode = crvInfo(shape_)
    spans_ = spans(shape_)
    pointPos = OrderedDict()
    for i in range(spans_):
        pointPos[i] = cmds.getAttr('{}.cp[{}]'.format(infoNode, i))[0]
    cmds.delete(infoNode)
    return pointPos

def setPointPos(object_):
    getPointPosList = getPointPos(shape_)
    poslist = getPointPosList.values()
    setList = OrderedDict()
    for i,name in enumerate(poslist):
        cmds.setAttr('{}.t'.format(object_[i]), name[0], name[1], name[2])
        setList[object_[i]] = name
    return setList

def getParamOfPoint(param_):
    infoNode = pocInfo(shape_)
    cmds.setAttr('{}.parameter'.format(infoNode), param_)
    position = cmds.getAttr('{}.p'.format(infoNode))[0]
    cmds.delete(infoNode)
    return position

def connectParamOfPoint(shape_):
    connectionList = cmds.listConnections('{}.ws'.format(shape_))
    if '{}_POCI'.format(shape_) in connectionList:
        print 'aready Connections InCurve'
    else:
        infoNode = pocInfo(shape_)


selObject = cmds.ls(sl =1, fl =1)
shape_ = shapes(selObject)[0]

connectParamOfPoint(shape_)




















