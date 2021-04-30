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
    
    
def getTransform(object_):
    trans = object_.getTranslation(space = 'world')
    rot = object_.getRotation(space = 'world')
    return trans, rot


    
loc = spaceLocator(n = 'poseReder_loc')
loc.listRelatives(s=1)[0].hide()
ano = createNode('annotationShape')
anoRoot = ano.root()
parent(ano, loc, r=1, s=1)
delete(anoRoot)

trans, rot = getTransform(loc)
print rot[0], rot[1], rot[2]


dir(loc)
loc.getTranslation(space = 'world')
trans, rot = getXform(loc)





















