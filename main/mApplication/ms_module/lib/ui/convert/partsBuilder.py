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
        self.ui.Parts_treeWidget.itemClicked.connect(self.itemClicked)
    
    
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
            prefixName = 'base'
        return prefixName
        
    def treeClear(self):
        selItem_ = self.selTreeItem()[0]
        object_ = ls(sl=1,r=1)[0]
        root = self.ui.Parts_treeWidget.invisibleRootItem()
        if objExists(object_):
            (selItem_.parent() or root).removeChild(selItem_)
            object_.referenceFile().remove()
        
    def selTreeItem(self):
        selItem_ = self.ui.Parts_treeWidget.selectedItems()
        return selItem_

    def addTreeParts(self):
        parts_ = self.getComboParts()
        name_ = self.PrintTextEdit()
        partsSpl = parts_.split('.')[0]
        partsName = ':'.join([name_, partsSpl])
        itemTop1 = QTreeWidgetItem(self.ui.Parts_treeWidget,[partsName])
        refNode = self.importParts(parts_, name_)
        dateObject = '{}:{}_GRP'.format(refNode, partsSpl)
        self.setDates(dateObject, 'test')

    def importParts(self, parts_, name_):
        dir_ = os.path.join(self.fitDirList[0], parts_)
        ref = createReference( dir_, reference=True, namespace=name_)
        refNode = referenceQuery(ref, referenceNode=True)
        return refNode
        
        
    def gatDateDag(self, name_):
        return '{}_GRP'.format(name_)

    
    def itemClicked(self):
        items = self.selTreeItem()
        objects = []
        parts = []
        for i in items:
            if ':' in i.text(0):
                object_ = '{}_GRP'.format(i.text(0))
            else:
                object_ = '{}:{}_GRP'.format(i.text(0), i.text(0))
            objects.append(object_)
            parts.append(i.text(0))
        # select(objects)
        print items
        return items, objects

    def setDates(self, object_, itemID):
        object_.addAttr(ln ='itemID', sn='ii', at='string')
        object_.setAttr('ii', itemID)









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