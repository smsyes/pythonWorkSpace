# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
str to unicode
unicode to str
Get the shape of an object

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

:Example:
from lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
import maya.OpenMayaUI as omui
from pymel.core import *
import string
import os
import sys

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance 

module_path = 'E:\script\main\mApplication\ms_module\lib'
ui_path = os.path.join(module_path, 'ui', 'convert')

path_list = [module_path, ui_path]
for i in path_list:
    if not i in sys.path:
        sys.path.append(i)

import renameUI as rename_
reload(rename_)

class ReName(QWidget):
    def __init__(self, *args, **kwargs):
        super(ReName, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = rename_.Ui_Form()
        self.ui.setupUi(self)

        self.ui.rename_pushButton.clicked.connect(self.run_rename)
        self.ui.change_pushButton.clicked.connect(self.old_change)
        self.ui.prefix_lineEdit.returnPressed.connect(self.append_prefix)
        self.ui.suffix_lineEdit.returnPressed.connect(self.append_suffix)

        
    def padding(self, num_):
        pad_ = str(num_).zfill(2)
        return pad_

    def get_pad(self):
        num_ = self.ui.padding_lineEdit.text()
        if num_:
            try:
                toInt = int(num_)
                self.set_message("...")
                return toInt
            except:
                self.set_message("Let's just put in numbers.")
                self.ui.padding_lineEdit.setText("1")
        elif num_ == '':
            self.ui.padding_lineEdit.setText("1")
    
    def make_name(self, name_):
        self.sel_ = ls(sl=1,r=1,fl=1)
        self.get_pad()
        num_ = self.ui.padding_lineEdit.text()
        if self.sel_:
            for i,sel_ in enumerate(self.sel_):
                pad_ = self.padding(i+int(num_))
                makeName_ = name_ + pad_
                sel_.rename(makeName_)
    
    def append_name(self, name_, mode=None):
        self.sel_ = ls(sl=1,r=1,fl=1)
        if self.sel_:
            for sel in self.sel_:
                if mode ==0:
                    sel.rename(name_ + sel)
                if mode ==1:
                    sel.rename(sel + name_)
    
    def change_name(self, oldName_, newName_):
        self.sel_ = ls(sl=1,r=1,fl=1)
        if self.sel_:
            for sel in self.sel_:
                changeName = sel.replace(oldName_, newName_)
                sel.rename(changeName)
    
    def set_message(self, message_):
        self.ui.message_label.setText(message_)

    def run_rename(self):
        getRename = self.ui.name_lineEdit.text()
        if getRename=="Name..":
            self.set_message("Please enter your name")
        else:
            self.make_name(getRename)
            self.set_message("...")

    def append_prefix(self):
        getRename = self.ui.prefix_lineEdit.text()
        if getRename=="Prefix..":
            self.set_message("Please enter your Prefix name")
        else:
            self.append_name(getRename, mode=0)
            self.set_message("...")

    def append_suffix(self):
        getRename = self.ui.suffix_lineEdit.text()
        if getRename=="Suffix..":
            self.set_message("Please enter your Suffix name")
        else:
            self.append_name(getRename, mode=1)
            self.set_message("...")

    def old_change(self):
        oldName_ = self.ui.oldname_lineEdit.text()
        newName_ = self.ui.newname_lineEdit.text()
        if oldName_=="Old Name..":
            self.set_message("Please enter your old name")
        elif newName_=="New Name..":
            self.set_message("Please enter a new name")
        else:
            self.change_name(oldName_, newName_)
            self.set_message("...")


def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)

def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = ReName(parent=maya_main_window())
    MainWindow.show()

runWin()
