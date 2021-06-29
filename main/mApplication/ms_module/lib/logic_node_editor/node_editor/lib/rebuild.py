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

def checkAttr(object_,attr):
    """Return Check the existence of attribute in object

    Arguments:
        object_ (node): An object with attribute attributes
        attr (attributes): attribute long name

    Returns:
        bool
    """
    attrExist = attributeQuery(attr, node=object_, exists=True)
    print "attrExist is {}".format(attrExist)
    return attrExist

def checkConnection(attrs):
    """Return Check if properties are connected

    Arguments:
        attrs (node): PyNode(attributes)

    Returns:
        bool
    """
    connection = isConnected(attrs[0],attrs[1])
    print "connection is {}".format(connection)
    return connection

def divide_in_two(object_):
    """Return list split in half

    Arguments:
        object_ (node): list

    Returns:
        each half of the list
    """
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def objectAttr(object_, attr):
    """Return attributes

    Arguments:
        object_ (node): node with attributes
        attr (attribute): attribute long name
    Returns:
        PyNode(attributes)
    """
    attr_ = PyNode('{}.{}'.format(object_, attr))
    print attr_
    return attr_
    

def msg_check(object_, msg_):
    list_ = []
    msgAttr_ = attributeQuery(msg_, node=object_, msg=1)
    if msgAttr_ == True:
        pAttrs_ = object_.listConnections(p=1)
        for pAttr in pAttrs_:
            pln = str(pAttr.longName())
            if pln == msg_:
                list_.append(pAttr.node())
    return list_


object_ = PyNode("arm_GRP")
fit_ = PyNode("L:fit_arm")

msg_ = {0:"reBuildMode", 1:"input", 2:"init"}

selfAttr_ = {'t':"rebuildTrans", 'r':"rebuildRot"}
fitAttr_ = {'t':'t', 'r':'r'}

self_ = msg_check(object_, msg_[0])
input_ = msg_check(object_, msg_[1])
init_ = msg_check(fit_, msg_[2])

selfList = {0:self_, 1:self_}
fitList = {0:init_, 1:input_}

def keyAttrDict(list_, attrs):
    list_ = {0:[], 1:[]}
    for list in list_:
        for obj in list:
            for i,attr in enumerate(attrs.keys()):
                if checkAttr(obj,attr):
                    attr_ = objectAttr(obj, attr)
                    list_[i].append(attr_)


keyAttrDict(selfList, selfAttr_)

    


