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
from pymel.core import *
import random 
import sys
import os

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
    selectedTransform = selected()[0]
    print selectedTransform.getShape()
    return selectedTransform.getShape()


def randomColorsSets(shader_):
    Colors=[]
    for i in range(3):
        tmp=random.uniform(0.0,1.0) #Uniform function allow me to find a random FLOAT number between a range(not like randint!)
        Colors.append(tmp)
    setAttr((shader_ + '.color'), Colors[0],Colors[1],Colors[2], type = 'double3')   
    return Colors

def randomColor(object):
    myLambert = shadingNode('lambert', n = '{}_randomColor'.format(object), asShader = 1)
    randomColorsSets(myLambert)
    select(object)
    hyperShade(assign = myLambert)
    print '{} color change of {}'.format(object, myLambert)
    return object, myLambert



'''
loc = spaceLocator()
loc.listRelatives(s=1)[0].hide()
ano = createNode('annotationShape')
anoRoot = ano.root()
parent(ano, loc, r=1, s=1)
delete(anoRoot)
sphere_ = polySphere(r =0.5)[0]

sel = cmds.ls(sl =1, fl =1)
for i in sel:
    randomColor(i)
'''











