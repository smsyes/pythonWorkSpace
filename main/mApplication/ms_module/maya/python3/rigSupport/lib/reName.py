# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
str to unicode
unicode to str
Get the shape of an object

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

:Example:
from lib import reName
rename_ = reName()

message_ = ReName().run_rename(getRename, num_)
message_ = ReName().old_change(oldName_, newName_)
message_ = ReName().append_prefix(getRename)
message_ = ReName().append_suffix(getRename)
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
import string
import maya.cmds as cmds

class ReName():
    def __init__(self, *args, **kwargs):
        self.set_message = ''

    
    def alpha_padding_(num_):
        alphabet_ = string.ascii_uppercase[num_]
        return alphabet_
    
    
    def padding(self, num_, check_):
        if check_ == True:
            pad_ = string.ascii_uppercase[num_]
        if check_ == False:
            pad_ = str(num_).zfill(1)
        return pad_


    def make_name(self, name_, num_, check_):
        sel_ = ls(sl=1,r=1,fl=1)
        if sel_:
            try:
                cmds.undoInfo(openChunk=True)    
                if len(sel_)==1:
                    sel_[0].rename(name_)
                else:
                    for i,sel_ in enumerate(sel_):
                        pad_ = self.padding(i+int(num_), check_)
                        makeName_ = name_ + pad_
                        sel_.rename(makeName_)
            finally:
                cmds.undoInfo(closeChunk=True)                


    def append_name(self, name_, mode=None):
        sel_ = ls(sl=1,r=1,fl=1)
        if sel_:
            for sel in sel_:
                if mode ==0:
                    sel.rename(name_ + sel)
                if mode ==1:
                    sel.rename(sel + name_)


    def change_name(self, oldName_, newName_):
        sel_ = ls(sl=1,r=1,fl=1)
        if sel_:
            for sel in sel_:
                changeName = sel.replace(oldName_, newName_)
                sel.rename(changeName)


    def run_rename(self, getRename, num_, check_):
        # getRename = self.ui.name_lineEdit.text()
        if getRename=="Name..":
            self.set_message = "Please enter your name"
        else:
            self.make_name(getRename, num_, check_)
            self.set_message = "..."
        return self.set_message


    def append_prefix(self, getRename):
        # getRename = self.ui.prefix_lineEdit.text()
        if getRename=="Prefix..":
            self.set_message = "Please enter your Prefix name"
        else:
            self.append_name(getRename, mode=0)
            self.set_message = "..."
        return self.set_message


    def append_suffix(self, getRename):
        # getRename = self.ui.suffix_lineEdit.text()
        if getRename=="Suffix..":
            self.set_message = "Please enter your Suffix name"
        else:
            self.append_name(getRename, mode=1)
            self.set_message = "..."
        return self.set_message


    def old_change(self, oldName_, newName_):
        # oldName_ = self.ui.oldname_lineEdit.text()
        # newName_ = self.ui.newname_lineEdit.text()
        if oldName_=="Old Name..":
            self.set_message = "Please enter your old name"
        elif newName_=="New Name..":
            set_message = "Please enter a new name"
        else:
            self.change_name(oldName_, newName_)
            self.set_message = "..."
        return self.set_message