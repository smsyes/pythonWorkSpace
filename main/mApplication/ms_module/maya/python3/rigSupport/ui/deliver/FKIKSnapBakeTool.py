# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'FKIKSnapBakeToolvHwwBo.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
##__AUTHOR__ = 'minsung'
##__UPDATE__ = 20230111
################################################################################
import maya.OpenMayaUI as omui
import maya.OpenMaya as om
import pymel.core.datatypes as dt
import pymel.core as pm
from PySide2 import __version__
from shiboken2 import wrapInstance

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_Form(QWidget,object):
    def __init__(self, *args, **kwargs):
        super(Ui_Form, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.setupUi(self)
        
        self.IKtoFKradioButton.clicked.connect(self.snapGroupbox)
        self.FKtoIKradioButton.clicked.connect(self.snapGroupbox)
        self.registrationpushButton.clicked.connect(self.register)
        self.deletepushButton.clicked.connect(self.registDelete)
        self.IKradioButton.clicked.connect(self.registerGroupbox)
        self.FKradioButton.clicked.connect(self.registerGroupbox)
        self.SnappushButton.clicked.connect(self.snap)
        self.SnapBakepushButton.clicked.connect(self.snapBake)
        
    
    def registDelete(self):
        sel = pm.ls(sl=1,fl=1,r=1)
        type_ = self.snapGroupbox()
        ikList_ = self.msgCheck(sel, 'IK')
        pm.delete(ikList_[-2])
        [self.msgDelete(sel, i) for i in ['IK', 'FK']]
    
    def register(self):
        sel = pm.ls(sl=1,fl=1,r=1)
        type_ = self.registerGroupbox()
        if type_ == 0:
            attr_ = 'IK'
            ikLocal_ = self.createIkLocal(sel[3], sel[2])
            sel.insert(-2, ikLocal_)
        elif type_ == 1:
            attr_ = 'FK'
        self.createMessage(sel, attr_)
        print('{} registration complite'.format(sel[:-1]))
    
    def registerGroupbox(self):
        if self.IKradioButton.isChecked() : result = 0
        elif self.FKradioButton.isChecked() : result = 1
        return result
    
    def snap(self) :
        sel = pm.ls(sl=1,fl=1,r=1)
        type_ = self.snapGroupbox()
        if type_ == 0:
            attr_ = 'FK'
            attrs_ = self.msgCheck(sel, attr_)
            list_ = [i.node() for i in attrs_]
            self.fkSnap(list_)
            print("IK to FK Snap")
        elif type_ == 1:
            attr_ = 'IK'
            attrs_ = self.msgCheck(sel, attr_)
            list_ = [i.node() for i in attrs_]
            self.ikSnap(list_)
            print("FK to IK Snap")
            
    def snapBake(self) :
        type_ = self.snapGroupbox()
        print("btn_1 Clicked")
    
    def snapGroupbox(self):
        if self.IKtoFKradioButton.isChecked() : result = 0
        elif self.FKtoIKradioButton.isChecked() : result = 1
        return result
    
    def setupUi(self, Form):
        if not Form.objectName():
            Form.setObjectName(u"Form")
        Form.resize(514, 317)
        self.gridLayout_3 = QGridLayout(Form)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.author = QLabel(Form)
        self.author.setObjectName(u"author")
        self.author.setAlignment(Qt.AlignCenter)

        self.gridLayout_3.addWidget(self.author, 1, 0, 1, 1)

        self.tabWidget = QTabWidget(Form)
        self.tabWidget.setObjectName(u"tabWidget")
        self.Registertab = QWidget()
        self.Registertab.setObjectName(u"Registertab")
        self.gridLayout = QGridLayout(self.Registertab)
        self.gridLayout.setObjectName(u"gridLayout")
        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.horizontalSpacer_4 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_4)

        self.label_2 = QLabel(self.Registertab)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout_2.addWidget(self.label_2)

        self.horizontalSpacer_5 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_5)

        self.label_7 = QLabel(self.Registertab)
        self.label_7.setObjectName(u"label_7")

        self.verticalLayout_2.addWidget(self.label_7)

        self.label_3 = QLabel(self.Registertab)
        self.label_3.setObjectName(u"label_3")

        self.verticalLayout_2.addWidget(self.label_3)

        self.label_8 = QLabel(self.Registertab)
        self.label_8.setObjectName(u"label_8")

        self.verticalLayout_2.addWidget(self.label_8)

        self.label_9 = QLabel(self.Registertab)
        self.label_9.setObjectName(u"label_9")

        self.verticalLayout_2.addWidget(self.label_9)

        self.horizontalSpacer_6 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_6)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.FKradioButton = QRadioButton(self.Registertab)
        self.FKradioButton.setObjectName(u"FKradioButton")
        self.FKradioButton.setChecked(True)

        self.horizontalLayout_3.addWidget(self.FKradioButton)

        self.IKradioButton = QRadioButton(self.Registertab)
        self.IKradioButton.setObjectName(u"IKradioButton")

        self.horizontalLayout_3.addWidget(self.IKradioButton)


        self.verticalLayout_2.addLayout(self.horizontalLayout_3)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.registrationpushButton = QPushButton(self.Registertab)
        self.registrationpushButton.setObjectName(u"registrationpushButton")

        self.horizontalLayout_4.addWidget(self.registrationpushButton)

        self.deletepushButton = QPushButton(self.Registertab)
        self.deletepushButton.setObjectName(u"deletepushButton")

        self.horizontalLayout_4.addWidget(self.deletepushButton)


        self.verticalLayout_2.addLayout(self.horizontalLayout_4)


        self.gridLayout.addLayout(self.verticalLayout_2, 0, 0, 1, 1)

        self.tabWidget.addTab(self.Registertab, "")
        self.Snaptab = QWidget()
        self.Snaptab.setObjectName(u"Snaptab")
        self.gridLayout_2 = QGridLayout(self.Snaptab)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalSpacer_2 = QSpacerItem(401, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_2)

        self.label = QLabel(self.Snaptab)
        self.label.setObjectName(u"label")
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.horizontalSpacer = QSpacerItem(401, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer)

        self.label_6 = QLabel(self.Snaptab)
        self.label_6.setObjectName(u"label_6")

        self.verticalLayout.addWidget(self.label_6)

        self.horizontalSpacer_3 = QSpacerItem(401, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_3)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.IKtoFKradioButton = QRadioButton(self.Snaptab)
        self.IKtoFKradioButton.setObjectName(u"IKtoFKradioButton")
        self.IKtoFKradioButton.setChecked(True)

        self.horizontalLayout.addWidget(self.IKtoFKradioButton)

        self.FKtoIKradioButton = QRadioButton(self.Snaptab)
        self.FKtoIKradioButton.setObjectName(u"FKtoIKradioButton")

        self.horizontalLayout.addWidget(self.FKtoIKradioButton)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.SnappushButton = QPushButton(self.Snaptab)
        self.SnappushButton.setObjectName(u"SnappushButton")

        self.horizontalLayout_2.addWidget(self.SnappushButton)

        self.SnapBakepushButton = QPushButton(self.Snaptab)
        self.SnapBakepushButton.setObjectName(u"SnapBakepushButton")

        self.horizontalLayout_2.addWidget(self.SnapBakepushButton)


        self.verticalLayout.addLayout(self.horizontalLayout_2)


        self.gridLayout_2.addLayout(self.verticalLayout, 0, 0, 1, 1)

        self.tabWidget.addTab(self.Snaptab, "")

        self.gridLayout_3.addWidget(self.tabWidget, 0, 0, 1, 1)

        self.update = QLabel(Form)
        self.update.setObjectName(u"update")
        self.update.setAlignment(Qt.AlignCenter)

        self.gridLayout_3.addWidget(self.update, 2, 0, 1, 1)


        self.retranslateUi(Form)

        self.tabWidget.setCurrentIndex(1)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.author.setText(QCoreApplication.translate("Form", u"__AUTHOR__ = 'MinSung'", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"Register IK or FK.", None))
        self.label_7.setText(QCoreApplication.translate("Form", u"!! It operates on the FK IK Switching structure consisting of three joints.", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"Register IK : Please select in the order of FKJnts(St,Md,En), IKCTRL, IKPV, Input", None))
        self.label_8.setText(QCoreApplication.translate("Form", u"Register FK : Please select in the order of FKCtrl(St,Md,En), IKJnts(St,Md,En), Input", None))
        self.label_9.setText(QCoreApplication.translate("Form", u"The snapitem is registered with the last selected input.", None))
        self.FKradioButton.setText(QCoreApplication.translate("Form", u"FK", None))
        self.IKradioButton.setText(QCoreApplication.translate("Form", u"IK", None))
        self.registrationpushButton.setText(QCoreApplication.translate("Form", u"Registration", None))
        self.deletepushButton.setText(QCoreApplication.translate("Form", u"Delete", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Registertab), QCoreApplication.translate("Form", u"Register", None))
        self.label.setText(QCoreApplication.translate("Form", u"FK IK Snap Bake Tool", None))
        self.label_6.setText(QCoreApplication.translate("Form", u"Select the pre-registered input, check the setting, and run it.", None))
        self.IKtoFKradioButton.setText(QCoreApplication.translate("Form", u"IKtoFK", None))
        self.FKtoIKradioButton.setText(QCoreApplication.translate("Form", u"FKtoIK", None))
        self.SnappushButton.setText(QCoreApplication.translate("Form", u"Snap", None))
        self.SnapBakepushButton.setText(QCoreApplication.translate("Form", u"SnapBake", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Snaptab), QCoreApplication.translate("Form", u"Snap", None))
        self.update.setText(QCoreApplication.translate("Form", u"__UPDATE__ = 20230111", None))
    # retranslateUi
    
    
    # get positions from fk
    def fkPos(self, fklist_):
        Raw_ = pm.xform(fklist_, ws=True, q=True, t=True)
        return(om.MVector(Raw_[0], Raw_[1], Raw_[2]))

    # Get the polvector position based on the FK joint pose.
    def pvPos(self, fklist_):
        fkPoss = [self.fkPos(fk) for fk in fklist_]
        #find avg (midpoint) of shoulder and wrist
        midpoint = (fkPoss[2] + fkPoss[0]) / 2
        #find pv direction
        pvOrigin = fkPoss[1] - midpoint
        #extend that length
        pvRaw = pvOrigin * 2
        #position pvRaw at midpoint
        return(pvRaw + midpoint)

    # Returns the start and end frame information of the timeline.
    def getPlayback(self):
        start_frame = pm.playbackOptions(q=True, min=True)
        end_frame = pm.playbackOptions(q=True, max=True)
        print("Start frame:", start_frame)
        print("End frame:", end_frame)
        return start_frame, end_frame

    # Snap the IK controller and PoleVecor.
    def ikSnap(self, list_):
        fkenPos_ = self.fkPos(list_[2])
        pm.move(fkenPos_.x, fkenPos_.y, fkenPos_.z, list_[-3])
        pm.matchTransform(list_[-3], list_[-1], rot=1)
        pvPos_ = self.pvPos(list_[:3])
        pm.move(pvPos_.x, pvPos_.y, pvPos_.z, list_[-2])
        
    # Bake the IKSnap each frame.
    def ikBake(self, list_):
        stf, enf = self.getPlayback()
        for i in range(int(enf)):
            pm.currentTime(i+1)
            self.ikSnap(list_)
            for iks in list_[4:]:
                pm.setKeyframe(iks,at='translate',t=[i+1,i+1])
                pm.setKeyframe(iks,at='rotate',t=[i+1,i+1])
            print('Current Frame:{} IK Baked'.format(i+1))

    def fkSnap(self, list_):
        for i,fk in enumerate(list_[:3]):
            pm.matchTransform(fk, list_[i+3], rot=1)
            pm.matchTransform(fk, list_[i+3], pos=1)

    def fkBake(self, list_):
        stf, enf = self.getPlayback()
        for i in range(int(enf)):
            pm.currentTime(i+1)
            self.fkSnap(list_)
            for fks in list_[:3]:
                pm.setKeyframe(fks,at='translate',t=[i+1,i+1])
                pm.setKeyframe(fks,at='rotate',t=[i+1,i+1])
            print('Current Frame:{} IK Baked'.format(i+1))
    

    def createMessage(self, object_, attr_):
        """Message Attribute Association Between 
        First and Remaining Objects

        Arguments:
            object_ (node): item[0],target[:1]
            attr (attribute): message connection attribute
        Returns:
            connection
        """
        item = object_[-1]
        target = object_[:-1]
        
        #conncet a some more objects  
        if not item.hasAttr(attr_):
            pm.addAttr(item,ln=attr_,at='message',m=True,im=False)
            for i, tgt in enumerate(target):
                pm.addAttr(tgt,ln=attr_,at='message',m=True,im=False)
                pm.connectAttr(tgt.attr(attr_),item.attr(attr_),na=True)
        else:
            print("It's already there.")
            
    def msgCheck(self, object_, attr_):
        """Return objects connected by message attribute

        Arguments:
            object_ (node): node with attributes
            attr (attribute): attribute long name
        Returns:
            result(list): 
        """
        result = []
        if not isinstance(object_, list):
            object_ = list(pm.PyNode(object_))
        for obj in object_:
            if obj.hasAttr(attr_):
                cnts = obj.attr(attr_).listConnections(p=1)
                if len(cnts) >1:
                    result = cnts
                else:
                    result.append(cnts[0])
        return result
        
    def msgDelete(self, object_, attr_):
        """Remove message attributes associated with the object

        Arguments:
            object_ (node): node with attributes
            attr (attribute): attribute long name
        Returns:
            result(list): 
        """
        list_ = self.msgCheck(object_, attr_)
        for i in list_+[object_[0].attr(attr_)]:
            i.delete()
            print('{} delete!'.format(i))
            
    def createIkLocal(self, object_, parent_):
        local_ = pm.createNode('transform', n='{}Local'.format(object_.name()))
        pm.matchTransform(local_, object_)
        pm.parent(local_, parent_)
        return local_


def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QWidget)


def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = Ui_Form(parent=maya_main_window())
    MainWindow.show()

runWin()