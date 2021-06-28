# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
rebuidMode

__AUTHOR__ = 'minsung'
__UPDATE__ = 20210628

:Example:


blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *

def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))


def connect_attrs(object_, output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)
        

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
    
object_ = PyNode("arm_GRP")
msg = "reBuildMode"
cntAttrs = ["rebuildTrans", "rebuildRot"]


def msg_check(object_, msg):
    
    objects_ = []
    msgAttr_ = attributeQuery(msg, node=object_, msg=1)
    if msgAttr_ == True:
        pAttrs_ = object_.listConnections(p=1)
        for pAttr in pAttrs_:
            pln = str(pAttr.longName())
            if pln == msg:
                objects_.append(pAttr.node())
    return objects_
        
# cntAttr_ = object_.listConnections(attr)

   
   
'''    
attr_ = ["rebuildTrans", "rebuildRot"]

if item.hasAttr(attr_):
    connect_attrs(object_, output, input) 
else:
'''
