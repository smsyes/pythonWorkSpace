#-*- coding: utf-8 -*-
"""=============================================================================
Module descriptions.
object lambert random color set

__AUTHOR__ = 'minsung'
__UPDATE__ = 20220304

:Example:
from lib.m_lib import randomColor
reload(randomColor)

blah blah blah blah blah blah 
blah blah blah blah blah blah 
============================================================================="""
#
# when start coding 3 empty lines.
#
from pymel.core import *
import random 

def shapes():
    '''Function || method descriptions.
    Get the shape of an object
    '''
    selectedTransform = selected()[0]
    print (selectedTransform.getShape())
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
    print ('{} color change of {}'.format(object, myLambert))
    return object, myLambert

sel = ls(sl =1, fl =1)
for i in sel:
    randomColor(i)
