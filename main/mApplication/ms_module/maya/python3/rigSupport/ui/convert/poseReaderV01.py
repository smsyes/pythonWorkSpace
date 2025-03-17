# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
PoseReader Creator

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210430

:Example:
Pakage is poseReaderV01.pyc, poseReaderV01UI.py

from rigSupport.ui.convert import poseReaderV01
try:
    from imp import *
except:
    pass
reload(poseReaderV01)
============================================================================"""
import maya.OpenMayaUI as omui
import pymel.core as pm
from collections import OrderedDict

from PySide6.QtCore import * 
from PySide6.QtGui import * 
from PySide6.QtWidgets import *
from PySide6 import __version__
from shiboken6 import wrapInstance

from PySide6 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(228, 168)
        self.verticalLayout = QtWidgets.QVBoxLayout(Form)
        self.verticalLayout.setObjectName("verticalLayout")
        self.label_4 = QtWidgets.QLabel(Form)
        self.label_4.setAlignment(QtCore.Qt.AlignCenter)
        self.label_4.setObjectName("label_4")
        self.verticalLayout.addWidget(self.label_4)
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.label_3 = QtWidgets.QLabel(Form)
        self.label_3.setObjectName("label_3")
        self.horizontalLayout_3.addWidget(self.label_3)
        self.AxisCB = QtWidgets.QComboBox(Form)
        self.AxisCB.setObjectName("AxisCB")
        self.AxisCB.addItem("")
        self.AxisCB.addItem("")
        self.AxisCB.addItem("")
        self.horizontalLayout_3.addWidget(self.AxisCB)
        self.verticalLayout.addLayout(self.horizontalLayout_3)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.label = QtWidgets.QLabel(Form)
        self.label.setObjectName("label")
        self.horizontalLayout_4.addWidget(self.label)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.VecXCK = QtWidgets.QCheckBox(Form)
        self.VecXCK.setChecked(True)
        self.VecXCK.setObjectName("VecXCK")
        self.horizontalLayout_2.addWidget(self.VecXCK)
        self.VecYCK = QtWidgets.QCheckBox(Form)
        self.VecYCK.setChecked(True)
        self.VecYCK.setObjectName("VecYCK")
        self.horizontalLayout_2.addWidget(self.VecYCK)
        self.VecZCK = QtWidgets.QCheckBox(Form)
        self.VecZCK.setChecked(True)
        self.VecZCK.setObjectName("VecZCK")
        self.horizontalLayout_2.addWidget(self.VecZCK)
        self.horizontalLayout_4.addLayout(self.horizontalLayout_2)
        self.verticalLayout.addLayout(self.horizontalLayout_4)
        self.horizontalLayout_5 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_5.setObjectName("horizontalLayout_5")
        self.label_2 = QtWidgets.QLabel(Form)
        self.label_2.setObjectName("label_2")
        self.horizontalLayout_5.addWidget(self.label_2)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.RVecXCK = QtWidgets.QCheckBox(Form)
        self.RVecXCK.setChecked(True)
        self.RVecXCK.setObjectName("RVecXCK")
        self.horizontalLayout.addWidget(self.RVecXCK)
        self.RVecYCK = QtWidgets.QCheckBox(Form)
        self.RVecYCK.setChecked(True)
        self.RVecYCK.setObjectName("RVecYCK")
        self.horizontalLayout.addWidget(self.RVecYCK)
        self.RVecZCK = QtWidgets.QCheckBox(Form)
        self.RVecZCK.setChecked(True)
        self.RVecZCK.setObjectName("RVecZCK")
        self.horizontalLayout.addWidget(self.RVecZCK)
        self.horizontalLayout_5.addLayout(self.horizontalLayout)
        self.verticalLayout.addLayout(self.horizontalLayout_5)
        self.createPB = QtWidgets.QPushButton(Form)
        self.createPB.setObjectName("createPB")
        self.verticalLayout.addWidget(self.createPB)
        self.removePB = QtWidgets.QPushButton(Form)
        self.removePB.setObjectName("removePB")
        self.verticalLayout.addWidget(self.removePB)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(QtWidgets.QApplication.translate("Form", "Form", None, -1))
        self.label_4.setText(QtWidgets.QApplication.translate("Form", "Pose Reader", None, -1))
        self.label_3.setText(QtWidgets.QApplication.translate("Form", "Axis : ", None, -1))
        self.AxisCB.setItemText(0, QtWidgets.QApplication.translate("Form", "x", None, -1))
        self.AxisCB.setItemText(1, QtWidgets.QApplication.translate("Form", "y", None, -1))
        self.AxisCB.setItemText(2, QtWidgets.QApplication.translate("Form", "z", None, -1))
        self.label.setText(QtWidgets.QApplication.translate("Form", "Vector : ", None, -1))
        self.VecXCK.setText(QtWidgets.QApplication.translate("Form", "x", None, -1))
        self.VecYCK.setText(QtWidgets.QApplication.translate("Form", "y", None, -1))
        self.VecZCK.setText(QtWidgets.QApplication.translate("Form", "z", None, -1))
        self.label_2.setText(QtWidgets.QApplication.translate("Form", "Reverse Vector : ", None, -1))
        self.RVecXCK.setText(QtWidgets.QApplication.translate("Form", "x", None, -1))
        self.RVecYCK.setText(QtWidgets.QApplication.translate("Form", "y", None, -1))
        self.RVecZCK.setText(QtWidgets.QApplication.translate("Form", "z", None, -1))
        self.createPB.setText(QtWidgets.QApplication.translate("Form", "Create", None, -1))
        self.removePB.setText(QtWidgets.QApplication.translate("Form", "Remove", None, -1))


class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = Ui_Form()
        self.ui.setupUi(self)

        self.x = 1
        self.y = 1
        self.z = 1
        self.rx = 1
        self.ry = 1
        self.rz = 1

        self.ui.VecXCK.stateChanged.connect(self.CheckBox_)
        self.ui.VecYCK.stateChanged.connect(self.CheckBox_)
        self.ui.VecZCK.stateChanged.connect(self.CheckBox_)
        self.ui.RVecXCK.stateChanged.connect(self.CheckBox_)
        self.ui.RVecYCK.stateChanged.connect(self.CheckBox_)
        self.ui.RVecZCK.stateChanged.connect(self.CheckBox_)

        self.ui.createPB.clicked.connect(self.createPR_)
        self.ui.removePB.clicked.connect(self.removePR_)

    def getAxisCB_(self):
        return self.ui.AxisCB.currentText()
    
    def CheckBox_(self) :
        self.x = 1 if self.ui.VecXCK.isChecked() else None
        self.y = 1 if self.ui.VecYCK.isChecked() else None
        self.z = 1 if self.ui.VecZCK.isChecked() else None
        self.rx = 1 if self.ui.RVecXCK.isChecked() else None
        self.ry = 1 if self.ui.RVecYCK.isChecked() else None
        self.rz = 1 if self.ui.RVecZCK.isChecked() else None

    def message_(self,item, target, attr_):
        #conncet a some more objects  
        if not item.hasAttr(attr_):  
            pm.addAttr(item,ln=attr_,at='message',m=True,im=False)
            itemAttr = item.attr(attr_)
        else:
            itemAttr = item.attr(attr_)
        for i, tgt in enumerate(target):
            pm.addAttr(tgt,ln=attr_,at='message',m=True,im=False)
            tgtAttr = tgt.attr(attr_)
            itemAttr >> tgtAttr
    
    def space_(self, name_, suffix_=None, parent_=None):
        if not suffix_:
            suffix_ = 'Grp'      
        space_ = pm.createNode('transform',
                            n='{0}{1}'.format(name_,suffix_),
                            p=parent_)
        return space_

    def offGrp_(self,object_):
        """선택한 오브젝트의 Offset 그룹 생성.

        Arguments:
            object_ (object): Offset 그룹 생성할 오브젝트

        Returns:
            Group :  offset Group

        """
        _name = object_.name()
        offset = self.space_(_name, parent_=object_)
        if object_.getParent():
            _parent = object_.getParent()
            pm.parent(offset, _parent)
        else:
            pm.parent(offset, w=1)
        pm.parent(object_, offset)
        return offset

    def aimMove_(self,objeect_):
        axis_ = self.getAxisCB_()
        if axis_ == 'x':
            move_=(1,0,0)
        elif axis_ == 'y':
            move_=(0,1,0)
        elif axis_ == 'z':
            move_=(0,0,1)
        objeect_.t.set(move_)

    def createAxis_(self):
        axisDict = OrderedDict()
        if self.x: axisDict['x'] = (1,0,0)
        if self.y: axisDict['y'] = (0,1,0)
        if self.z: axisDict['z'] = (0,0,1)
        if self.rx: axisDict['rx'] = (-1,0,0)
        if self.ry: axisDict['ry'] = (0,-1,0)
        if self.rz: axisDict['rz'] = (0,0,-1)

        axisList = []
        grp_ = self.space_(self.name_, suffix_='AxisGrp', parent_=None)
        for a in axisDict.keys():
            axisLoc_ = pm.spaceLocator(n='{0}{1}Axis'.format(self.name_,a.upper()))
            pm.move(axisLoc_, axisDict[a])
            pm.parent(axisLoc_,grp_)
            axisList.append(axisLoc_)
        return grp_,axisList

    def addVectorAttr_(self,name_,object_):
        typeList = ['X','Y','Z']
        pm.addAttr(object_,ln=name_,at='double3',k=1)
        for i in typeList:
            attrName = '{0}{1}'.format(name_,i)
            pm.addAttr(object_,ln=attrName,at='double',p=name_,k=1)

    def readerSys_(self,reader_,axislist_,aim_):
        ablist = []
        rmlist = []
        attrDict = OrderedDict()
        attrDict['XAxis'] = 'VecX'
        attrDict['YAxis'] = 'VecY'
        attrDict['ZAxis'] = 'VecZ'
        attrDict['RXAxis'] = 'RvsVecX'
        attrDict['RYAxis'] = 'RvsVecY'
        attrDict['RZAxis'] = 'RvsVecZ'

        for i,axis in enumerate(axislist_):
            ab_ = pm.shadingNode('angleBetween',au=1,n='{}PRAB'.format(self.name_))
            rm_ = pm.shadingNode('remapValue',au=1,n='{}PRRM'.format(self.name_))
            aim_.getShape().worldPosition >> ab_.vector1
            axis.getShape().worldPosition >> ab_.vector2
            ab_.angle >> rm_.inputValue
            rm_.inputMax.set(90)
            rm_.outputMin.set(1)
            rm_.outputMax.set(0)
            axisName_ = axis.name().split(self.name_)[-1]
            if axisName_ in list(attrDict.keys()):
                rm_.outValue >> reader_.attr(attrDict[axisName_])
            ablist.append(ab_)
            rmlist.append(rm_)
        return ablist,rmlist

    def poseReader_(self):
        for obj in self.object_:
            self.name_ = obj.name()
            reader_ = self.space_(self.name_, suffix_='PoseReader', parent_=None)
            readerGrp = self.offGrp_(reader_)
            self.addVectorAttr_('Vec',reader_)
            self.addVectorAttr_('RvsVec',reader_)
            aimLoc_ = pm.spaceLocator(n='{0}Aim'.format(self.name_))
            aimGrp = self.offGrp_(aimLoc_)
            obj.r >> aimGrp.r
            self.aimMove_(aimLoc_)
            axisGrp_,axisList_ = self.createAxis_()
            pm.parent(pm.ls(aimGrp,axisList_[0].getParent()),reader_)
            ablist,rmlist = self.readerSys_(reader_,axisList_,aimLoc_)
            msgTarget = pm.ls(readerGrp,reader_,aimLoc_,aimGrp,
                              axisList_,ablist,rmlist,axisGrp_)
            self.message_(obj, msgTarget, 'poseReader')
    
    def createPR_(self):
        self.object_ = pm.ls(sl=1,fl=1,r=1)
        self.poseReader_()
    
    def removePR_(self):
        self.object_ = pm.ls(sl=1,fl=1,r=1)
        if self.object_[0].hasAttr('poseReader'):
            list_ = self.object_[0].poseReader.listConnections()
            pm.delete(list_)

def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QWidget)

def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = myUIClass(parent=maya_main_window())
    MainWindow.show()

runWin()
