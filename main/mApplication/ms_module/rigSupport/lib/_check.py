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

from lib import _node

reload(_node)


def connectionAttr(list_, attr_):
    """Returns the properties of the object to be connected

    Arguments:
        list_ (list): object list
        attr_ (dictionary): dictionary key = [0,1], 
                            dictionary value = attribute Name
    Returns:
        dictionary : dictionary key = [0,1], 
                        dictionary value = attributes
    """
    attrDict = {}
    for key in attr_.keys():
        attrList = []
        attrDict[key] = attrList
        value = attr_[key]
        for obj in list_:
            if obj.hasAttr(value):
                _attr = _node.attributes(obj, value)
            else:
                _attr = None
            attrList.append(_attr)
    return attrDict


def connectedAttr(list_, attr_):
    """Returns the properties of the associated source object

    Arguments:
        list_ (list): object list
        attr_ (dictionary): dictionary key = [0,1], 
                            dictionary value = attribute Name
    Returns:
        dictionary : dictionary key = [0,1], 
                        dictionary value = attributes
    """
    attrDict = {}
    for key in attr_.keys():
        attrList = []
        attrDict[key] = attrList
        value = attr_[key]
        for obj in list_:
            if obj.hasAttr(value):
                target = _node.attributes(obj, value)
                item = target.listConnections(p=1, d=0, s=1)
                if not item:
                    item = None
                else:
                    item = item[0]
                attrList.append(item)
    return attrDict


def checkAttr(object_,attr):
    """Return Check the existence of attribute in object

    Arguments:
        object_ (node): An object with attribute attributes
        attr (attributes): attribute long name

    Returns:
        bool
    """
    attrExist = attributeQuery(attr, node=object_, exists=True)
    return attrExist


def checkConnection(item_attr, target_attr):
    """Return Check if properties are connected

    Arguments:
        attrs (node): PyNode(attributes)

    Returns:
        bool
    """
    connection = isConnected(item_attr,target_attr)
    return connection


def msg_check(object_, msg_):
    """Return objects connected by message attribute

    Arguments:
        object_ (node): node with attributes
        attr (attribute): attribute long name
    Returns:
        PyNode(attributes)
    """
    list_ = []
    msgAttr_ = attributeQuery(msg_, node=object_, msg=1)
    if msgAttr_ == True:
        pAttrs_ = object_.listConnections(p=1)
        for pAttr in pAttrs_:
            pln = str(pAttr.longName())
            if pln == msg_:
                list_.append(pAttr.node())
    return list_