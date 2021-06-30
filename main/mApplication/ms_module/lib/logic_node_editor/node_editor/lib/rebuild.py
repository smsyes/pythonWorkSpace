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
    # print "attrExist is {}".format(attrExist)
    return attrExist


def checkConnection(item_attr, target_attr):
    """Return Check if properties are connected

    Arguments:
        attrs (node): PyNode(attributes)

    Returns:
        bool
    """
    connection = isConnected(item_attr,target_attr)
    # print "connection is {}".format(connection)
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


def attrDict(list_, attr_):
    """Return Checks whether the attribute exists in the object and 
              returns it in the form of a dictionary

    Arguments:
        dict_ (dictionary): dict_[0] = items list, dict_[1] = targets list
        attr (dictionary): dict_[0] = item attr, dict_[1] = target attr
    Returns:
        dictionary : dict_[0] = item.attr list, dict_[1] = target.attr list
    """
    dict_ = {}
    for key in attr_:
        attrList = []
        dict_[key] = attrList
        for obj_ in list_:
            if checkAttr(obj_,key):
                obj_attr = attributes(obj_, key)
                attrList.append(obj_attr)
    return dict_


def cntAttrDict(attr_):
    """Returns the attributes associated with attributes as output.
    
    Arguments:
        attr (dictionary): dict_[0] = attributes name, dict_[1] = item attributes
    Returns:
        dictionary : dict_[0] = attributes name, dict_[1] = attached attributes
    """
    dict_ = {}
    for key in attr_.keys():
        dict_[key] = []
        for value in attr_[key]:
            cntAttr_ = value.listConnections(p=1, scn=0)
            if cntAttr_:
                dict_[key].append(cntAttr_[0])
    return dict_
    

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


def rebuild_(itemDict, targetDict, type=None):
    for key in itemDict.keys():
        for i,item_ in enumerate(itemDict[key]):
            target_ = targetDict[key][i]
            if type == True:
                connectAttr(item_, target_)
                print "connectAttr", item_
            elif type == False:
                if checkConnection(item_, target_):
                    disconnectAttr(item_, target_)
                print "disconnectAttr", item_

            
def reset_attr(attr_, type_=None):
    for attr in attr_:
        str_ = attr.get()
        node_ = attr.node()
        if type_ == True:
            node_.setAttr(str_, 0)
        if type_ == False:
            node_.setAttr(str_, 10)
        print "string, node ==",str_, node_

            
object_ = PyNode("arm_GRP")
fit_ = PyNode("L:fit_arm")

# message attributes name dictionary
msg_ = {0:"reBuildMode", 1:"input", 2:"init", 3:"reBuildAttr"}

# Attribute names to be associated with rebuild
cntAttrDict_ = {'self':['rebuildTrans', 'rebuildRot'], 'fit':['t', 'r']}

# Attribute name whose set value will be changed during rebuild
resetAttr_ = ['resetAttr']

# List of objects associated with message attributes
self_ = msg_check(object_, msg_[0])
input_ = msg_check(object_, msg_[1])
init_ = msg_check(fit_, msg_[2])
reset_ = msg_check(object_, msg_[3])

# dictionary of rebuild attributes
selfDict_ = attrDict(self_, cntAttrDict_['self'])
selfInputDict_ = attrDict(self_, cntAttrDict_['fit'])
inputDict_ = attrDict(input_, cntAttrDict_['fit'])
initDict_ = attrDict(init_, cntAttrDict_['fit'])
reSetDict_ = attrDict(reset_, resetAttr_)

# Run build mode and rebuild mode
# rebuild_(selfDict_, selfInputDict_, type=False)
# rebuild_(inputDict_, initDict_, type=False)
# reset_attr(reSetDict_.values()[0], type_=False)

