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
import uuid

def update_id():
    """Update the unique identifier of every node"""
    attrList=[]
    for node in ls(sl=1):
        attribute = node + ".uuid"

        if not objExists(attribute):
            addAttr(node,
                         longName="uuid",
                         dataType="string")

        new_id = str(uuid.uuid4())
        setAttr(attribute, new_id, type="string")
        attrList.append(attribute)

    return PyNode(attribute)


def surface_uvSpans_num(_shape):
    Uspans = _shape.numSpansInU()
    Vspans = _shape.numSpansInV()
    print('U number is ({0}), V number is ({1})'.format(Uspans, Vspans))
    return Uspans, Vspans


def message_(object_, attr_):
    item = object_[0]
    target = object_[1:]
    
    #conncet a some more objects  
    if not item.hasAttr(attr_):  
        addAttr(item,ln=attr_,at='message',m=True,im=False)
        itemAttr = PyNode('{}.{}'.format(item, attr_))
    else:
        itemAttr = PyNode('{}.{}'.format(item, attr_))
    for i, object in enumerate(target):
        addAttr(object,ln=attr_,at='message',m=True,im=False)
        objectAttr = PyNode('{}.{}'.format(object, attr_))
        connectAttr(objectAttr,itemAttr,na=True)
      
