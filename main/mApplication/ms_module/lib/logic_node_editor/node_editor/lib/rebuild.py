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

class Rebuild():
    def __init__(self, type_, *args, **kwargs):
        
        self.object_, self.fit_ = ls(sl=1,fl=1,r=1)
        self.type_ = type_

        # message attributes name dictionary
        self.msg_ = {0:"reBuildMode", 1:"input", 2:"init", 3:"reBuildAttr"}

        # Attribute names to be associated with rebuild
        self.attrDict_ = {'self':{0:'rebuildTrans', 1:'rebuildRot'}, 
                           'fit':{0:'t', 1:'r'}}

        # Attribute name whose set value will be changed during rebuild
        self.resetAttr_ = {0:'resetAttr'}

        # List of objects associated with message attributes
        self.self_ = self.msg_check(self.object_, self.msg_[0])
        self.input_ = self.msg_check(self.object_, self.msg_[1])
        self.init_ = self.msg_check(self.fit_, self.msg_[2])
        self.reset_ = self.msg_check(self.object_, self.msg_[3])
        
        self.resetAttr = self.connectionAttr(self.reset_, self.resetAttr_)
        
        # Run build mode and rebuild mode
        self.rebuild_(self.self_, self.self_,
                      self.attrDict_['self'], 
                      self.attrDict_['fit'], 
                      type_=self.type_,
                      cnt_=True)
        self.rebuild_(self.input_, self.init_,
                      self.attrDict_['fit'], 
                      self.attrDict_['fit'], 
                      type_=self.type_,
                      cnt_=False)
        self.reset_attr(self.resetAttr.values()[0], type_=self.type_)


    
    def connectionAttr(self, list_, attr_):
        """Returns the properties of the object to be connected

        Arguments:
            list_ (list): object list
            attr_ (dictionary): dictionary key = [0,1], dictionary value = attribute Name
        Returns:
            dictionary : dictionary key = [0,1], dictionary value = attributes
        """
        attrDict = {}
        for key in attr_.keys():
            attrList = []
            attrDict[key] = attrList
            value = attr_[key]
            for obj in list_:
                if obj.hasAttr(value):
                    _attr = self.attributes(obj, value)
                else:
                    _attr = None
                attrList.append(_attr)
        return attrDict

    
    def connectedAttr(self, list_, attr_):
        """Returns the properties of the associated source object

        Arguments:
            list_ (list): object list
            attr_ (dictionary): dictionary key = [0,1], dictionary value = attribute Name
        Returns:
            dictionary : dictionary key = [0,1], dictionary value = attributes
        """
        attrDict = {}
        for key in attr_.keys():
            attrList = []
            attrDict[key] = attrList
            value = attr_[key]
            for obj in list_:
                if obj.hasAttr(value):
                    target = self.attributes(obj, value)
                    item = target.listConnections(p=1, d=0, s=1)
                else:
                    item = None
                attrList.append(item)
        return attrDict
    
    def checkAttr(self, object_,attr):
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


    def checkConnection(self, item_attr, target_attr):
        """Return Check if properties are connected

        Arguments:
            attrs (node): PyNode(attributes)

        Returns:
            bool
        """
        connection = isConnected(item_attr,target_attr)
        # print "connection is {}".format(connection)
        return connection


    def divide_in_two(self, object_):
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


    def attributes(self, object_, attr):
        """Return attributes

        Arguments:
            object_ (node): node with attributes
            attr (attribute): attribute long name
        Returns:
            PyNode(attributes)
        """
        attr_ = PyNode('{}.{}'.format(object_, attr))
        return attr_


    def msg_check(self, object_, msg_):
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
            

    def rebuild_(self, item_, target_, itemAttr, targetAttr, type_=None, cnt_=None):
        """Return Run rebuild mode

        Arguments:
            itemDict (dictionary): item dictionary
            targetDict (dictionary): target dictionary
            type (bool): If true, rebuild mode, if false, build mode.
        Returns:
            Linking items and targets
        """
        if type_==True:
            itemAttr_ = self.connectionAttr(item_, itemAttr)
            targetAttr_ = self.connectionAttr(target_, targetAttr)
        elif type_==False:
            if cnt_==True:
                itemAttr_ = self.connectedAttr(target_, targetAttr)
            else:
                itemAttr_ = self.connectionAttr(item_, itemAttr)
            targetAttr_ = self.connectionAttr(target_, targetAttr)
            
        for key in itemAttr_.keys():
            for i,item in enumerate(itemAttr_[key]):
                target = targetAttr_[key][i]
                if type_ == True:
                    # connectAttr(item, target)
                    print ("{}>>{}".format(item, target))
                else:
                    if item:
                        # disconnectAttr(item, target)
                        print ("{}!>{}".format(item, target))

                
    def reset_attr(self, attr_, type_=None):
        """Return Attributes to be set in rebuild mode

        Arguments:
            attr_ (attribute): attributes list
            type_ (bool): If true, rebuild mode, if false, build mode.
        Returns:
            set attributes value
        """
        for attr in attr_:
            str_ = attr.get()
            node_ = attr.node()
            if type_ == True:
                node_.setAttr(str_, 0)
            if type_ == False:
                node_.setAttr(str_, 10)

            
test_ = Rebuild(type_=False)

