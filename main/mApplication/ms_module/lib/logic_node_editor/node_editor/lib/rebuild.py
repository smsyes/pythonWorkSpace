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

def checkConnection(item_attr, target_attr):
    """Return Check if properties are connected

    Arguments:
        attrs (node): PyNode(attributes)

    Returns:
        bool
    """
    connection = isConnected(item_attr,target_attr)
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

def attributes(object_, attr):
    """Return attributes

    Arguments:
        object_ (node): node with attributes
        attr (attribute): attribute long name
    Returns:
        PyNode(attributes)
    """
    attr_ = PyNode('{}.{}'.format(object_, attr))
    return attr_

def attrDict(dict_, attrs):
    """Return Checks whether the attribute exists in the object and 
              returns it in the form of a dictionary

    Arguments:
        dict_ (dictionary): dict_[0] = items list, dict_[1] = targets list
        attr (dictionary): dict_[0] = item attr, dict_[1] = target attr
    Returns:
        dictionary : dict_[0] = item.attr list, dict_[1] = target.attr list
    """
    dictAttr_ = {}
    for dic in dict_.values():
        for obj in dic:
            for i,attr in enumerate(attrs.keys()):
                value_ = attrs.values()[i]
                if checkAttr(obj,attr) and checkAttr(obj,value_):
                    dictAttr_[attributes(obj, attr)] = attributes(obj, value_)
    return dictAttr_    

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

def rebuild_(dict_, type=None):
    for key in dict_.keys():
        if checkConnection(key, dict_[key]):
            disconnectAttr(key, dict_[key])
        if type == True:
            connectAttr(key, dict_[key])
            

object_ = PyNode("arm_GRP")
fit_ = PyNode("L:fit_arm")

msg_ = {0:"reBuildMode", 1:"input", 2:"init"}

selfAttr_ = {"rebuildTrans":'t', "rebuildRot":'r'}
fitAttr_ = {'t':'t', 'r':'r'}

self_ = msg_check(object_, msg_[0])
input_ = msg_check(object_, msg_[1])
init_ = msg_check(fit_, msg_[2])

selfDict = {0:self_, 1:self_}
fitDict = {0:init_, 1:input_}

selfAttrDict_ = attrDict(selfDict, selfAttr_)
fitAttrDict_ = attrDict(fitDict, fitAttr_)

rebuild_(selfAttrDict_, type=False)
    
dir(selfAttrDict_[selfAttrDict_.keys()[5]])
selfAttrDict_[selfAttrDict_.keys()[5]].plugAttr()
# select(selfDict.values()[0])
