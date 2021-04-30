#-*- coding: utf-8 -*-
"""=============================================================================
Module descriptions.
str to unicode
unicode to str
Get the shape of an object

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

:Example:
from lib.m_lib import poseReader
reload(poseReader)

blah blah blah blah blah blah 
blah blah blah blah blah blah 
============================================================================="""
#
# when start coding 3 empty lines.
#
from pymel.core import *
import pymel.core.datatypes as dt
import sys
import os

#(add import something more...)
# front && back of classes 3 empty lines.
#

# creat local transform set
def to_str(unicode_or_str):
    if isinstance(unicode_or_str, unicode):
        value = unicode_or_str.encode('utf-8')
    else:
        value = unicode_or_str
    return value

    
def shapes(object_):
    selectedTransform = selected()[0]
    return selectedTransform.getShape()


def name(object_):
    return to_str(object_.name())

    
def node(object_):
    return object_.nodeType()
    
    
def GetTransform(object_):
    trans = object_.getTranslation(space = 'world')
    rot = object_.getRotation(space = 'world')
    return trans, rot

def SetTranslate(object_, trans):
    object_.setTranslation(trans, space = 'object')

def SetRotate(object_, rot):
    object_.setRotation(rot, space = 'object')

def SetRotateAxis(object_, axis = None):
    if not axis:
        axis = 'x' 
    if axis == 'x':
        rot = (0,90,0)
    if axis == 'y':
        rot = (-90,0,0)
    if axis == 'z':
        rot = (0,0,0)
    object_.setRotateAxis(rot)
    object_.setRotation(rotation = (0,0,0))

def AnoLocator(axis = None):
    loc = spaceLocator(n = 'poseReder_loc')
    loc.listRelatives(s=1)[0].hide()
    ano = createNode('annotationShape')
    anoRoot = ano.root()
    parent(ano, loc, r=1, s=1)
    SetRotateAxis(loc, axis)
    delete(anoRoot)
    return loc

def GetPoseRotate(rot):
    rotX = rot[0]
    rotY = rot[1]
    rotZ = rot[2]
    return (rotX, rotY, rotZ)




sel = ls(sl =1, fl =1)[0]
loc = AnoLocator()
trans, rot = GetTransform(sel)
SetTranslate(loc, trans)
SetRotate(loc, rot)

















