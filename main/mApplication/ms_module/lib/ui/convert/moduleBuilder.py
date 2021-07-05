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
from pymel import util
from pymel.core import datatypes, nodetypes
from pymel.core import *
import math
import os
import sys

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance 

module_path = 'E:\script\main\mApplication\ms_module\lib'
ui_path = os.path.join(module_path, 'ui', 'convert')
parts_path = os.path.join(module_path, 'rig')

path_list = [module_path, ui_path, parts_path]
for i in path_list:
    if not i in sys.path:
        sys.path.append(i)
        
import moduleBuilderUI as MBuilder
reload(MBuilder)

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = MBuilder.Ui_Form()
        self.ui.setupUi(self)
        
        fitModule = "fits"
        setModule = "sets"
        self.fitDir = self.joinPath(parts_path, fitModule)
        self.setDir = self.joinPath(parts_path, setModule)
        self.fit_ = self.search(self.fitDir)
        self.set_ = self.search(self.setDir)

        self.ui.import_pushButton.clicked.connect(self.moduleType)

    def search(self, dirName):
        fileNames = os.listdir(dirName)
        fullFileList = [os.path.basename(name_) for name_ in fileNames]
        return fullFileList
        
    def joinPath(self, prepath, path_):
        return os.path.join(prepath, path_)
    
    def getCombo(self):
        get_ = self.ui.module_comboBox.currentText()
        return get_

    def moduleType(self):
        type_ = self.getCombo()
        if 'fit_{0}.ma'.format(type_) in self.fit_:
            type_ = 'fit_{0}.ma'.format(type_)
            dir_ = self.joinPath(self.fitDir, type_)
            self.importFile(dir_)
        else:            
            print "The {0} fit file does not exist in the path.".format(type_)
            print "path : {0}".format(self.fitDir)

    
    def PrintTextEdit(self):
        prefixName = self.ui.prefix_lineEdit.text()
        if prefixName == 'Prefix Name..':
            prefixName = None
        return prefixName
    
    def importFile(self, dir_):
        type_ = self.PrintTextEdit()
        if type_:
            ref = createReference( dir_, reference=True, namespace=type_)
            refNode = referenceQuery(ref, referenceNode=True)
        else:
            print "A prefix name is required."
            refNode = None
        return refNode
        
        
    def gatDateDag(self, name_):
        return '{}_GRP'.format(name_)


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