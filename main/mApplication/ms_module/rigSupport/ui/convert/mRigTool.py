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

_path = 'E:\script\main\mApplication\ms_module'
module_path = os.path.join(_path, 'rigSupport')

if not module_path in sys.path:
    sys.path.append(module_path)

from ui.convert import mRigToolUI as mRigTool
from lib import _name
from lib import rebuild
from lib import spine
from lib import _attribute
from lib import _check

reload(mRigTool)
reload(_name)
reload(rebuild)
reload(spine)
reload(_attribute)
reload(_check)


class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = mRigTool.Ui_Form()
        self.ui.setupUi(self)


        self.rigDir = self.joinPath(module_path, "rig")
        self.fitDir = self.joinPath(self.rigDir, "fits")
        self.setDir = self.joinPath(self.rigDir, "sets")
        self.fit_ = self.search(self.fitDir)
        self.set_ = self.search(self.setDir)


        self.ui.import_pushButton.clicked.connect(self.moduleType)
        self.ui.mirror_pushButton.clicked.connect(self.mirror_)
        self.ui.build_pushButton.clicked.connect(self.build_)
        self.ui.rebuild_pushButton.clicked.connect(self.rebuild_)


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
            print ("The {0} fit file does not exist in the path.".format(type_))
            print ("path : {0}".format(self.fitDir))


    def PrintTextEdit(self):
        prefixName = self.ui.prefix_lineEdit_2.text()
        if prefixName == 'Prefix Name..':
            prefixName = ''
        return prefixName
    

    def importFile(self, dir_):
        type_ = self.PrintTextEdit()
        if type_:
            ref = createReference( dir_, reference=True, namespace=type_)
            refNode = referenceQuery(ref, referenceNode=True, nodes=1)
        else:
            print ("A prefix name is required.")
            refNode = None
        return refNode[0]
        
        
    def gatDateDag(self, name_):
        return '{}_GRP'.format(name_)

    
    def mirror_(self):
        sel = ls(sl=1, r=1, fl=1)
        beforeValue = sel[0].getAttr('mirror')
        if beforeValue==1:
            affterValue = 0
            print ('mirror False')
        if beforeValue==0:
            affterValue = 1
            print ('mirror True')
        sel[0].setAttr('mirror',affterValue)


    def build_(self):
        sel = ls(sl=1, r=1, fl=1)
        attr_ = _attribute.update_id()
        uuid_ = attr_.get()
        match_ = _check.checkID(uuid_)
        match_.remove(attr_)
        if match_:
            list_ = ls(match_, sel)
        else:
            type_ = '{0}.ma'.format(sel[0].split('_')[-1])
            dir_ = self.joinPath(self.setDir, type_)
            set_ = self.importFile(dir_)
            list_ = ls(set_, sel)

        # rebuild.Rebuild(list_, type=True)
        rebuild.Rebuild(list_, type=False)
        # sel[0].referenceFile().remove()

    def rebuild_(self):
        rebuild.Rebuild(type=True)

    def checkID(self, uuid_):
        alldag_ = ls(dag=1, type='transform')
        moduleTops_ = [_check.checkAttr(obj,'uuid') for obj in alldag_]
        matchModule_ = [mod for mod in moduleTops_ if mod.getAttr('uuid')==uuid_]
        return matchModule_





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