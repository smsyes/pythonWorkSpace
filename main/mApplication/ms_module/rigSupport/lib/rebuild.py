# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
module rig Rebuid Mode

__AUTHOR__ = 'minsung'
__UPDATE__ = 20210703

:Example:
import  rebuild as re
rebuild_ = re.Rebuild(type_=True)

Select set top group and fit top group and run
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *

from lib import _check
from lib import _node

reload(_check)
reload(_node)

class Rebuild():
    def __init__(self, object_, type_, *args, **kwargs):
        
        self.object_ = object_[0]
        self.fit_ = object_[1]
        self.type_ = type_
            

        # message attributes name dictionary
        self.msg_ = {0:"reBuildMode", 1:"input", 2:"init", 3:"reBuildAttr"}

        # Attribute names to be associated with rebuild
        self.attrDict_ = {'self':{0:'rebuildTrans', 1:'rebuildRot'}, 
                           'fit':{0:'t', 1:'r'}}

        # Attribute name whose set value will be changed during rebuild
        self.resetAttr_ = {0:'resetAttr'}

        # List of objects associated with message attributes
        self.self_ = _check.msg_check(self.object_, self.msg_[0])
        self.input_ = _check.msg_check(self.object_, self.msg_[1])
        self.init_ = _check.msg_check(self.fit_, self.msg_[2])
        self.reset_ = _check.msg_check(self.object_, self.msg_[3])
        
        self.resetAttr = _check.connectionAttr(self.reset_, self.resetAttr_)
        
        # Run build mode and rebuild mode
        self.rebuild_(self.self_, self.self_,
                      self.attrDict_['self'], 
                      self.attrDict_['fit'], 
                      type_=self.type_,
                      cnt_=True)
        self.rebuild_(self.init_, self.input_,
                      self.attrDict_['fit'], 
                      self.attrDict_['fit'], 
                      type_=self.type_,
                      cnt_=False)
        self.reset_attr(self.resetAttr.values()[0], type_=self.type_)


    def rebuild_(self, item_, target_, 
                itemAttr, targetAttr, 
                type_=None, cnt_=None):
        """Return Run rebuild mode

        Arguments:
            itemDict (dictionary): item dictionary
            targetDict (dictionary): target dictionary
            type (bool): If true, rebuild mode, 
                         If false, build mode.
        Returns:
            Linking items and targets
        """
        if type_==True:
            itemAttr_ = _check.connectionAttr(item_, itemAttr)
            targetAttr_ = _check.connectionAttr(target_, targetAttr)
        elif type_==False:
            if cnt_==True:
                itemAttr_ = _check.connectedAttr(target_, targetAttr)
            else:
                itemAttr_ = _check.connectionAttr(item_, itemAttr)
            targetAttr_ = _check.connectionAttr(target_, targetAttr)
            
        for key in itemAttr_.keys():
            for i,item in enumerate(itemAttr_[key]):
                target = targetAttr_[key][i]
                if type_ == True:
                    if item:
                        connectAttr(item, target)
                    print ("{}>>{}".format(item, target))
                else:
                    if item:
                        disconnectAttr(item, target)
                        print ("{}!>{}".format(item, target))

                
    def reset_attr(self, attr_, type_=None):
        """Return Attributes to be set in rebuild mode

        Arguments:
            attr_ (attribute): attributes list
            type_ (bool): If true, rebuild mode, 
                          If false, build mode.
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
