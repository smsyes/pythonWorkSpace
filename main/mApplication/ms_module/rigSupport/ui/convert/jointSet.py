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
from pymel.core import *

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance

from ui.convert import jointSetUI as jointSet
from lib import _joint
from lib import _transform
from lib import _name

reload(_joint)
reload(_transform)
reload(_name)
reload(jointSet)

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = jointSet.Ui_Form()
        self.ui.setupUi(self)

        self.config = _name.loadConfig_("configDict.json")
        self.parts_ = self.config["jointLabel"]
        self.side_ = self.config["sideName"]
        self.mirSide = self.config["mirrorSide"]
        self.CBAddLabel()

        self.ui.labelBT.clicked.connect(self.labeling_)
        self.ui.LSJBT.clicked.connect(self.linearSpacingJoint)
        self.ui.JOBT.clicked.connect(self.jointOrient)
        self.ui.OMCB.clicked.connect(self.mirror)
    
    def sel_(self):
        return ls(sl=1,r=1)
    
    def CBAddLabel(self):
        for p in self.parts_:
            self.ui.labelCB.addItem(p)
        for s in self.side_:
            self.ui.sideCB.addItem(s)

    def getLabelCB(self):
        return self.ui.labelCB.currentText()
    
    def getSideCB(self):
        return self.ui.sideCB.currentIndex()
    
    def labeling_(self):
        parts_ = self.getLabelCB()
        side_ = self.getSideCB()
        _joint.jointlabeling_(parts_, side_)

    def getLinearNum(self):
        return self.ui.numSP.value()

    def getLinearAxis(self):
        return self.ui.LSJAxisCB.currentText()

    def linearSpacingJoint(self):
        num_ = self.getLinearNum()
        axis_ = self.getLinearAxis()
        for i in self.sel_():
            _joint.linear_spacing_joint(i,
                                        num_, 
                                        axis=axis_
                                        )
    
    def getOrient(self):
        return self.ui.ojCB.currentText()

    def getSecondaryAxisOrient(self):
        return self.ui.saoCB.currentText()

    def jointOrient(self):
        oj_ = self.getOrient()
        sao_ = self.getSecondaryAxisOrient()
        joints_ = _transform.getChildren_(self.sel_()[0], type_='joint')
        _joint.joint_orient(joints_, e=True, oj=oj_, sao=sao_, zso=True)

    def getMirrorAxis(self):
        return self.ui.OMAxisCB.currentText()
    
    def mirror(self):
        objects_ = self.sel_()
        if len(objects_) == 1:
            objects_.append(duplicate(objects_)[0])
        items = _transform.getChildren_(objects_[0], type_=None)
        targets = _transform.getChildren_(objects_[1], type_=None)
        axis_ = self.getMirrorAxis()
        _transform.mirror_(items, targets, axis=axis_)


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
    