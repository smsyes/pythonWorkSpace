#-*- coding: utf-8 -*-
"""=============================================================================
Module descriptions.
str to unicode
unicode to str
Get the shape of an object
Bring the skincluster connected to the shape's inMesh.
Get a list of skin cluster joints.

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

:Example:
from lib.m_lib import getSkin_
reload(getSkin_)

blah blah blah blah blah blah 
blah blah blah blah blah blah 
============================================================================="""
#
# when start coding 3 empty lines.
#
import maya.cmds as cmds
import sys
import os
'''
from lib.m_lib import getSkin_
reload(getSkin_)
'''
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
    shapeType_ = to_str(cmds.objectType(shape_))
    print "Object Type is", shapeType_
    return shape_, shapeType_
    
def getSkinCluster(shape_, shapeType_):
    '''Function || method descriptions.
    Bring the skincluster connected to the shape's inMesh.
    '''
    typeDic_ = {'mesh':'inMesh', 
                'nurbsCurve':'create', 
                'nurbsSurface':'create',
                'lattice':'latticeInput'
                }
    if shapeType_ in typeDic_.keys():
        input_ = typeDic_[shapeType_] 
    skinCluster_ = cmds.listConnections('{}.{}'.format(shape_, input_), 
                                            s = 1, d = 0)[0]
    return skinCluster_

def getSkinJoint(skinCluster_):
    '''Function || method descriptions.
    Get a list of skin cluster joints.
    '''
    output_ = []
    #get len of array attribute (matrix)
    matrixAttrLen =  cmds.getAttr(skinCluster_ + ".matrix", s=1) 
    for i in range(0, matrixAttrLen):
        jointAttr = cmds.ls(cmds.connectionInfo(skinCluster_ + 
                                                ".matrix[" + str(i) + "]", 
                                                sfd=1), l=1)[0]
        joint_ = jointAttr.split(".")[0]
        joint_ = to_str(joint_)
        output_.append(joint_)
    return output_



