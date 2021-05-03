# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
toolName

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210430

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
parts_path = os.path.join(module_path, 'parts')

path_list = [module_path, ui_path, parts_path]
for i in path_list:
    if not i in sys.path:
        sys.path.append(i)

import partsBuilderUI as PBuilder
reload(PBuilder)


class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = PBuilder.Ui_Form()
        self.ui.setupUi(self)
        
        fitDir = {'ref':'RefFit', 'parts':'PartsFit'}
        setDir = {'ref':'RefSet', 'parts':'PartsSet'}
        
        self.fitDirList = self.joinPath(fitDir.values())
        self.setDirList = self.joinPath(setDir.values())

        self.fitRef = self.search(self.fitDirList[1])
        self.fitPrt = self.search(self.fitDirList[0])

        self.addComboRef(self.fitRef)
        self.addComboPrt(self.fitPrt)
        
        self.ui.addParts_pushButton.clicked.connect(self.addTreeParts)
        self.ui.clear_pushButton.clicked.connect(self.treeClear)
        self.ui.Parts_treeWidget.itemClicked.connect(self.ItemClicked)
    
    
    def search(self, dirName):
        fileNames = os.listdir(dirName)
        fullFileList = [os.path.basename(name_) for name_ in fileNames]
        return fullFileList
        
    def joinPath(self, path_):
        return [os.path.join(parts_path,path) for path in path_]
        
    def addComboRef(self, items):
        if items:
            items = items
        else:
            items = ['None']
        [self.ui.fitRef_comboBox.addItem(str(item)) for item in items]
        
    def addComboPrt(self, items):
        if items:
            items = items
        else:
            items = ['None']
        [self.ui.fitPrt_comboBox.addItem(str(item)) for item in items]
        
    
    def getComboRef(self):
        return self.ui.fitRef_comboBox.currentText()
        
    def getComboParts(self):
        return self.ui.fitPrt_comboBox.currentText()
    
    def PrintTextEdit(self):
        prefixName = self.ui.prefix_textEdit.text()
        if prefixName == 'Base Name':
            prefixName = ''
        return prefixName
        
    def treeClear(self):
        selItem_ = self.selTreeItem()
        root = self.ui.Parts_treeWidget.invisibleRootItem()
        object_ = ls(sl=1, r=1)
        for i, item in enumerate(selItem_):
            (item.parent() or root).removeChild(item)
            object_[i].referenceFile(rr=1)
        
    def selTreeItem(self):
        selItem_ = self.ui.Parts_treeWidget.selectedItems()
        return selItem_

    def addTreeParts(self):
        parts_ = self.getComboParts()
        name_ = self.PrintTextEdit()
        partsName = parts_.split('.')[0]
        if name_:
            partsName = ':'.join([name_, parts_.split('.')[0]])
        itemTop1 = QTreeWidgetItem(self.ui.Parts_treeWidget,[partsName])
        self.importParts(parts_, name_)

    def importParts(self, parts_, name_):
        dir_ = os.path.join(self.fitDirList[0], parts_)
        createReference( dir_, reference=True, namespace=name_)
        
    def ItemClicked(self):
        items = self.selTreeItem()
        for i in items:
            if ':' in i.text(0):
                object_ = '{}_GRP'.format(i.text(0))
            else:
                object_ = '{}:{}_GRP'.format(i.text(0), i.text(0))
            object_ = PyNode(object_)
            select(object_)
            print i.text(0)
            print i
            








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