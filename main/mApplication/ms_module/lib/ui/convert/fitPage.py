# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
fit page ui

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210601

:Example:
Pakage is toolName.pyc

import toolName as tool_
tool_.run()

============================================================================"""
#
# when start coding 3 empty lines.
#
import maya.OpenMayaUI as omui
import maya.OpenMaya as om
from pymel import util
from pymel.core import datatypes, nodetypes
from pymel.core import *
import math
import os
import sys

try:
  from PySide2.QtCore import * 
  from PySide2.QtGui import * 
  from PySide2.QtWidgets import *
  from PySide2 import __version__
  from shiboken2 import wrapInstance 
except ImportError:
  from PySide.QtCore import * 
  from PySide.QtGui import * 
  from PySide import __version__
  from shiboken import wrapInstance

module_path = 'D:\script\main\mApplication\ms_module\lib'
ui_path = os.path.join(module_path, 'ui', 'convert')
parts_path = os.path.join(module_path, 'rig_module', 'fits')
sets_path = os.path.join(module_path, 'rig_module', 'sets')

path_list = [module_path, ui_path, parts_path]
for i in path_list:
    if not i in sys.path:
        sys.path.append(i)

import fitPageUI as fitPage
reload(fitPage)

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = fitPage.Ui_Form()
        self.ui.setupUi(self)
        
        fitDir = {'R':'Refs', 'P':'Parts'}        

        self.fitDirList = self.joinPath(parts_path, fitDir.values())

        haeders_ = [self.search(dir_) for dir_ in self.fitDirList]
        fitHeader = haeders_[0]
        partsHeader = haeders_[1]
        
        self.fitsDir_ = [self.joinPath(self.fitDirList[i], header_) for i, 
                         header_ in enumerate(haeders_)]
                         
        self.parts_ = [self.search(dir_) for dir_ in self.fitsDir_[0]]
        self.fits_ = [self.search(dir_) for dir_ in self.fitsDir_[1]]

        self.fitRoot = self.ui.fit_treeWidget.invisibleRootItem()
        self.partsRoot = self.ui.part_treeWidget.invisibleRootItem()
        
        self.fitsHeader = self.addTree(self.fitRoot, haeders_[0])
        self.addTree(self.fitsHeader[0], self.fits_[0])
        self.addTree(self.fitsHeader[1], self.fits_[1])
        
        self.partsHeader = self.addTree(self.partsRoot, haeders_[1])
        self.addTree(self.partsHeader[0], self.parts_[0])
        self.addTree(self.partsHeader[1], self.parts_[1])
        
    
    def search(self, dirName):
        fileNames = os.listdir(dirName)
        fullFileList = [os.path.basename(name_) for name_ in fileNames]
        return fullFileList

    def joinPath(self, pre_path, path_):
        return [os.path.join(pre_path,path) for path in path_]

        
    def addTree(self, parent_, item_):
        itemList = []
        for i in item_:
            item = QTreeWidgetItem()
            item.setText(0, str(i))
            itemList.append(item)
            if parent_:
                parent_.addChild(item)
        return itemList


def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)


def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = myUIClass(parent=maya_main_window())
    MainWindow.show()
    

runWin()   


        