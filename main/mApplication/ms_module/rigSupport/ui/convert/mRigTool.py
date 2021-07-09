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

_path = 'D:\script\main\mApplication\ms_module'
module_path = os.path.join(_path, 'rigSupport')

if not module_path in sys.path:
    sys.path.append(module_path)

from ui.convert import mRigToolUI as mRigTool
from lib import _name
from lib import rebuild
from lib import spine
from lib import _attribute
from lib import _check
from lib import mainSet
from lib import surfaceParam
from lib import hybridSet
from lib import _joint
from lib import _curve
from lib import attachSet
from lib import _shapeChange

reload(mRigTool)
reload(_name)
reload(rebuild)
reload(spine)
reload(_attribute)
reload(_check)
reload(mainSet)
reload(surfaceParam)
reload(hybridSet)
reload(_joint)
reload(_curve)
reload(attachSet)
reload(_shapeChange)


class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = mRigTool.Ui_Form()
        self.ui.setupUi(self)


        self.rigDir = self.joinPath(module_path, "rig")
        self.fitDir = self.joinPath(self.rigDir, "fits")
        self.setDir = self.joinPath(self.rigDir, "sets")
        self.etcDir = self.joinPath(self.rigDir, "etc")
        self.fit_ = self.search(self.fitDir)
        self.set_ = self.search(self.setDir)
        self.etc_ = self.search(self.etcDir)


        self.ui.import_pushButton.clicked.connect(self.moduleType)
        self.ui.mirror_pushButton.clicked.connect(self.mirror_)
        self.ui.build_pushButton.clicked.connect(self.build_)
        self.ui.rebuild_pushButton.clicked.connect(self.rebuild_)
        self.ui.LSJoint_pushButton.clicked.connect(self.set_ls_joint)
        self.ui.main_pushButton.clicked.connect(self.main_setting)
        self.ui.paramSpace_pushButton.clicked.connect(self.surf_parma_space)
        self.ui.hybrid_pushButton.clicked.connect(self.hybrid_setting)
        self.ui.objCV_pushButton.clicked.connect(self.object_cv_curve)
        self.ui.crvNull_pushButton.clicked.connect(self.curve_at_null)
        self.ui.attach_pushButton.clicked.connect(self.attach_setting)
        self.ui.switchImport_pushButton.clicked.connect(self.switch_import)
        self.ui.shapeChange_pushButton.clicked.connect(self.shape_change)


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


    def print_m_prefix(self):
        prefixName = self.ui.M_prefix_lineEdit.text()
        if prefixName == 'Prefix Name..':
            prefixName = ''
        return prefixName
    

    def importFile(self, dir_):
        type_ = self.print_m_prefix()
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
            '''

            dir_ = self.joinPath(self.setDir, type_)
            set_ = self.importFile(dir_)
            list_ = ls(set_, sel)
            # rebuild.Rebuild(list_, type=True)
            '''
        rebuild.Rebuild(list_, type=False)
        # sel[0].referenceFile().remove()


    def rebuild_(self):
        rebuild.Rebuild(type=True)


    def checkID(self, uuid_):
        alldag_ = ls(dag=1, type='transform')
        moduleTops_ = [_check.checkAttr(obj,'uuid') for obj in alldag_]
        match_ = [mod for mod in moduleTops_ if mod.getAttr('uuid')==uuid_]
        return match_


    
    
    
    def print_base_prefix(self):
        prefixName = self.ui.baseName_lineEdit.text()
        if prefixName == 'Base Name entering..':
            prefixName = ''
        return prefixName

    
    def get_spacing_num(self):
        return self.ui.spacingNum_spinBox.value()

    
    def get_oj(self):
        return self.ui.oj_comboBox.currentText()

    
    def get_sao(self):
        return self.ui.sao_comboBox.currentText()

    
    def set_ls_joint(self):
        num_ = self.get_spacing_num()
        oj_ = self.get_oj()
        sao_ = self.get_sao()
        if oj_[0]=='x':
            axis_ = 'x'
        elif oj_[0]=='y':
            axis_ = 'y'
        elif oj_[0]=='z':
            axis_ = 'z'
        _joint.linear_spacing_joint(num_, 
                                    e=True, 
                                    oj=oj_, 
                                    sao=sao_, 
                                    zso=True, 
                                    axis=axis_
                                    )


    def main_setting(self):
        mainSet.MainSet(name_=self.print_base_prefix())

    
    def surf_parma_space(self):
        return surfaceParam.SurfParamSpace()


    def hybrid_setting(self):
        return hybridSet.HybridSet(name_=self.print_base_prefix(), 
                                   up_=self.get_sao())


    def object_cv_curve(self):
        sel = ls(sl=1, r=1, fl=1)
        object_ = _joint.hierarchy_(sel[0])
        return _curve.object_cv_curve(object_)


    def curve_at_null(self):
        sel = ls(sl=1, r=1, fl=1)
        return _curve.curve_at_null(sel[0])


    def attach_setting(self):
        attachSet.AttachSet(name_=self.print_base_prefix())

    
    def switch_import(self):
        type_ = 'cape_switch.ma'
        if objExists(type_)==False:
            dir_ = self.joinPath(self.etcDir, type_)
            set_ = importFile(dir_)


    def shape_change(self):
        sel = ls(sl=1, r=1, fl=1)
        _shapeChange.shapeChange(sel)






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
    

