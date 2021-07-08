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
