<<<<<<< HEAD
# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
ConnectManager tool V01

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210208

:Example:
Pakage is ConnectManager.pyc

from ui.ConnectManager import ConnectManagerUI
reload(ConnectManagerUI)

============================================================================"""
#
# when start coding 3 empty lines.
#
from PySide2 import QtCore, QtGui, QtWidgets
from PySide2.QtWidgets import QApplication, QMainWindow
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
import maya.OpenMaya as om
from pymel import util
from pymel.core import datatypes, nodetypes
from pymel.core import *
import math


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(453, 798)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_5 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_5.setObjectName("gridLayout_5")
        self.ConnectManager_groupBox = QtWidgets.QGroupBox(self.centralwidget)
        font = QtGui.QFont()
        font.setFamily("Gulim")
        self.ConnectManager_groupBox.setFont(font)
        self.ConnectManager_groupBox.setObjectName("ConnectManager_groupBox")
        self.gridLayout = QtWidgets.QGridLayout(self.ConnectManager_groupBox)
        self.gridLayout.setObjectName("gridLayout")
        self.mainverticalLayout = QtWidgets.QVBoxLayout()
        self.mainverticalLayout.setObjectName("mainverticalLayout")
        self.listhorizontalLayout = QtWidgets.QHBoxLayout()
        self.listhorizontalLayout.setObjectName("listhorizontalLayout")
        self.outlistverticalLayout = QtWidgets.QVBoxLayout()
        self.outlistverticalLayout.setObjectName("outlistverticalLayout")
        self.AlistWidget = QtWidgets.QListWidget(self.ConnectManager_groupBox)
        self.AlistWidget.setDragEnabled(True)
        self.AlistWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.AlistWidget.setAlternatingRowColors(True)
        self.AlistWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.AlistWidget.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectItems)
        self.AlistWidget.setObjectName("AlistWidget")
        self.outlistverticalLayout.addWidget(self.AlistWidget)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.AAddpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.AAddpushButton.setObjectName("AAddpushButton")
        self.horizontalLayout.addWidget(self.AAddpushButton)
        self.ARemovepushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.ARemovepushButton.setObjectName("ARemovepushButton")
        self.horizontalLayout.addWidget(self.ARemovepushButton)
        self.outlistverticalLayout.addLayout(self.horizontalLayout)
        self.listhorizontalLayout.addLayout(self.outlistverticalLayout)
        self.sortButtonverticalLayout = QtWidgets.QVBoxLayout()
        self.sortButtonverticalLayout.setObjectName("sortButtonverticalLayout")
        self.sortpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.sortpushButton.setFlat(True)
        self.sortpushButton.setObjectName("sortpushButton")
        self.sortButtonverticalLayout.addWidget(self.sortpushButton)
        self.reversepushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.reversepushButton.setFlat(True)
        self.reversepushButton.setObjectName("reversepushButton")
        self.sortButtonverticalLayout.addWidget(self.reversepushButton)
        self.pparentpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.pparentpushButton.setFlat(True)
        self.pparentpushButton.setObjectName("pparentpushButton")
        self.sortButtonverticalLayout.addWidget(self.pparentpushButton)
        self.listhorizontalLayout.addLayout(self.sortButtonverticalLayout)
        self.inlistverticalLayout = QtWidgets.QVBoxLayout()
        self.inlistverticalLayout.setObjectName("inlistverticalLayout")
        self.BlistWidget = QtWidgets.QListWidget(self.ConnectManager_groupBox)
        self.BlistWidget.setDragEnabled(True)
        self.BlistWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.BlistWidget.setAlternatingRowColors(True)
        self.BlistWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.BlistWidget.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectItems)
        self.BlistWidget.setObjectName("BlistWidget")
        self.inlistverticalLayout.addWidget(self.BlistWidget)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.BAddrpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.BAddrpushButton.setObjectName("BAddrpushButton")
        self.horizontalLayout_2.addWidget(self.BAddrpushButton)
        self.BRemovepushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.BRemovepushButton.setObjectName("BRemovepushButton")
        self.horizontalLayout_2.addWidget(self.BRemovepushButton)
        self.inlistverticalLayout.addLayout(self.horizontalLayout_2)
        self.listhorizontalLayout.addLayout(self.inlistverticalLayout)
        self.mainverticalLayout.addLayout(self.listhorizontalLayout)
        self.connectTypegroupBox = QtWidgets.QGroupBox(self.ConnectManager_groupBox)
        self.connectTypegroupBox.setTitle("")
        self.connectTypegroupBox.setFlat(False)
        self.connectTypegroupBox.setCheckable(False)
        self.connectTypegroupBox.setObjectName("connectTypegroupBox")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.connectTypegroupBox)
        self.gridLayout_2.setContentsMargins(2, 2, 2, 2)
        self.gridLayout_2.setHorizontalSpacing(6)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.connectTypehorizontalLayout = QtWidgets.QHBoxLayout()
        self.connectTypehorizontalLayout.setObjectName("connectTypehorizontalLayout")
        self.OneToNradioButton = QtWidgets.QRadioButton(self.connectTypegroupBox)
        self.OneToNradioButton.setObjectName("OneToNradioButton")
        self.connectTypehorizontalLayout.addWidget(self.OneToNradioButton)
        self.NToNradioButton = QtWidgets.QRadioButton(self.connectTypegroupBox)
        self.NToNradioButton.setChecked(True)
        self.NToNradioButton.setObjectName("NToNradioButton")
        self.connectTypehorizontalLayout.addWidget(self.NToNradioButton)
        self.gridLayout_2.addLayout(self.connectTypehorizontalLayout, 0, 0, 1, 1)
        self.mainverticalLayout.addWidget(self.connectTypegroupBox)
        self.attrrhorizontalLayout = QtWidgets.QHBoxLayout()
        self.attrrhorizontalLayout.setSpacing(6)
        self.attrrhorizontalLayout.setObjectName("attrrhorizontalLayout")
        self.outAttrlabel = QtWidgets.QLabel(self.ConnectManager_groupBox)
        self.outAttrlabel.setObjectName("outAttrlabel")
        self.attrrhorizontalLayout.addWidget(self.outAttrlabel)
        self.OutAttrtextEdit = QtWidgets.QTextEdit(self.ConnectManager_groupBox)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.OutAttrtextEdit.sizePolicy().hasHeightForWidth())
        self.OutAttrtextEdit.setSizePolicy(sizePolicy)
        self.OutAttrtextEdit.setMaximumSize(QtCore.QSize(16777215, 25))
        self.OutAttrtextEdit.setObjectName("OutAttrtextEdit")
        self.attrrhorizontalLayout.addWidget(self.OutAttrtextEdit)
        self.inAttrlabel = QtWidgets.QLabel(self.ConnectManager_groupBox)
        self.inAttrlabel.setObjectName("inAttrlabel")
        self.attrrhorizontalLayout.addWidget(self.inAttrlabel)
        self.InAttrtextEdit = QtWidgets.QTextEdit(self.ConnectManager_groupBox)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.InAttrtextEdit.sizePolicy().hasHeightForWidth())
        self.InAttrtextEdit.setSizePolicy(sizePolicy)
        self.InAttrtextEdit.setMaximumSize(QtCore.QSize(16777215, 25))
        self.InAttrtextEdit.setObjectName("InAttrtextEdit")
        self.attrrhorizontalLayout.addWidget(self.InAttrtextEdit)
        self.connectpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.connectpushButton.setObjectName("connectpushButton")
        self.attrrhorizontalLayout.addWidget(self.connectpushButton)
        self.SetAttrpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.SetAttrpushButton.setObjectName("SetAttrpushButton")
        self.attrrhorizontalLayout.addWidget(self.SetAttrpushButton)
        self.mainverticalLayout.addLayout(self.attrrhorizontalLayout)
        self.line_3 = QtWidgets.QFrame(self.ConnectManager_groupBox)
        self.line_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.mainverticalLayout.addWidget(self.line_3)
        self.constrainthorizontalLayout = QtWidgets.QHBoxLayout()
        self.constrainthorizontalLayout.setObjectName("constrainthorizontalLayout")
        self.constTypegroupBox = QtWidgets.QGroupBox(self.ConnectManager_groupBox)
        self.constTypegroupBox.setTitle("")
        self.constTypegroupBox.setObjectName("constTypegroupBox")
        self.gridLayout_3 = QtWidgets.QGridLayout(self.constTypegroupBox)
        self.gridLayout_3.setContentsMargins(2, 2, 2, 2)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.constTypehorizontalLayout = QtWidgets.QHBoxLayout()
        self.constTypehorizontalLayout.setObjectName("constTypehorizontalLayout")
        self.parentradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.parentradioButton.setChecked(True)
        self.parentradioButton.setObjectName("parentradioButton")
        self.constTypehorizontalLayout.addWidget(self.parentradioButton)
        self.pointradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.pointradioButton.setObjectName("pointradioButton")
        self.constTypehorizontalLayout.addWidget(self.pointradioButton)
        self.orientradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.orientradioButton.setObjectName("orientradioButton")
        self.constTypehorizontalLayout.addWidget(self.orientradioButton)
        self.scaleradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.scaleradioButton.setObjectName("scaleradioButton")
        self.constTypehorizontalLayout.addWidget(self.scaleradioButton)
        self.gridLayout_3.addLayout(self.constTypehorizontalLayout, 0, 0, 1, 1)
        self.constrainthorizontalLayout.addWidget(self.constTypegroupBox)
        self.maintaincheckBox = QtWidgets.QCheckBox(self.ConnectManager_groupBox)
        self.maintaincheckBox.setChecked(True)
        self.maintaincheckBox.setObjectName("maintaincheckBox")
        self.constrainthorizontalLayout.addWidget(self.maintaincheckBox)
        self.constraintpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.constraintpushButton.setObjectName("constraintpushButton")
        self.constrainthorizontalLayout.addWidget(self.constraintpushButton)
        self.mainverticalLayout.addLayout(self.constrainthorizontalLayout)
        self.line_4 = QtWidgets.QFrame(self.ConnectManager_groupBox)
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.mainverticalLayout.addWidget(self.line_4)
        self.mirrorhorizontalLayout = QtWidgets.QHBoxLayout()
        self.mirrorhorizontalLayout.setObjectName("mirrorhorizontalLayout")
        self.mirrorTypehorizontalLayout = QtWidgets.QHBoxLayout()
        self.mirrorTypehorizontalLayout.setObjectName("mirrorTypehorizontalLayout")
        self.mirrorReversgroupBox = QtWidgets.QGroupBox(self.ConnectManager_groupBox)
        self.mirrorReversgroupBox.setTitle("")
        self.mirrorReversgroupBox.setObjectName("mirrorReversgroupBox")
        self.gridLayout_4 = QtWidgets.QGridLayout(self.mirrorReversgroupBox)
        self.gridLayout_4.setContentsMargins(2, 2, 2, 2)
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.mirrorRevershorizontalLayout = QtWidgets.QHBoxLayout()
        self.mirrorRevershorizontalLayout.setObjectName("mirrorRevershorizontalLayout")
        self.axisYZradioButton = QtWidgets.QRadioButton(self.mirrorReversgroupBox)
        self.axisYZradioButton.setChecked(True)
        self.axisYZradioButton.setObjectName("axisYZradioButton")
        self.mirrorRevershorizontalLayout.addWidget(self.axisYZradioButton)
        self.axisXYradioButton = QtWidgets.QRadioButton(self.mirrorReversgroupBox)
        self.axisXYradioButton.setObjectName("axisXYradioButton")
        self.mirrorRevershorizontalLayout.addWidget(self.axisXYradioButton)
        self.axisZXradioButton = QtWidgets.QRadioButton(self.mirrorReversgroupBox)
        self.axisZXradioButton.setObjectName("axisZXradioButton")
        self.mirrorRevershorizontalLayout.addWidget(self.axisZXradioButton)
        self.gridLayout_4.addLayout(self.mirrorRevershorizontalLayout, 0, 0, 1, 1)
        self.mirrorTypehorizontalLayout.addWidget(self.mirrorReversgroupBox)
        self.mirrorhorizontalLayout.addLayout(self.mirrorTypehorizontalLayout)
        self.mirrorpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.mirrorpushButton.setObjectName("mirrorpushButton")
        self.mirrorhorizontalLayout.addWidget(self.mirrorpushButton)
        self.mainverticalLayout.addLayout(self.mirrorhorizontalLayout)
        self.line_5 = QtWidgets.QFrame(self.ConnectManager_groupBox)
        self.line_5.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_5.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_5.setObjectName("line_5")
        self.mainverticalLayout.addWidget(self.line_5)
        self.wrapTranshorizontalLayout = QtWidgets.QHBoxLayout()
        self.wrapTranshorizontalLayout.setObjectName("wrapTranshorizontalLayout")
        self.wrappushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.wrappushButton.setObjectName("wrappushButton")
        self.wrapTranshorizontalLayout.addWidget(self.wrappushButton)
        self.transformrpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.transformrpushButton.setObjectName("transformrpushButton")
        self.wrapTranshorizontalLayout.addWidget(self.transformrpushButton)
        self.SkinBindpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.SkinBindpushButton.setObjectName("SkinBindpushButton")
        self.wrapTranshorizontalLayout.addWidget(self.SkinBindpushButton)
        self.mainverticalLayout.addLayout(self.wrapTranshorizontalLayout)
        self.gridLayout.addLayout(self.mainverticalLayout, 0, 0, 1, 1)
        self.label = QtWidgets.QLabel(self.ConnectManager_groupBox)
        self.label.setMaximumSize(QtCore.QSize(16777215, 16777215))
        font = QtGui.QFont()
        self.label.setFont(font)
        self.label.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.label.setFrameShadow(QtWidgets.QFrame.Plain)
        self.label.setLineWidth(2)
        self.label.setTextFormat(QtCore.Qt.PlainText)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setWordWrap(True)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 2, 0, 1, 1)
        self.label_2 = QtWidgets.QLabel(self.ConnectManager_groupBox)
        font = QtGui.QFont()
        self.label_2.setFont(font)
        self.label_2.setAlignment(QtCore.Qt.AlignCenter)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 3, 0, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem, 1, 0, 1, 1)
        self.gridLayout_5.addWidget(self.ConnectManager_groupBox, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 453, 21))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QtWidgets.QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.ConnectManager_groupBox.setTitle(QtWidgets.QApplication.translate("MainWindow", "ConnectManager_V01", None, -1))
        self.AAddpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "add Item", None, -1))
        self.ARemovepushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Remove", None, -1))
        self.sortpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Sort", None, -1))
        self.reversepushButton.setText(QtWidgets.QApplication.translate("MainWindow", "<>", None, -1))
        self.pparentpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "PParent", None, -1))
        self.BAddrpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "add Item", None, -1))
        self.BRemovepushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Remove", None, -1))
        self.OneToNradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "One To N", None, -1))
        self.NToNradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "N to N", None, -1))
        self.outAttrlabel.setText(QtWidgets.QApplication.translate("MainWindow", "OutAttr : ", None, -1))
        self.inAttrlabel.setText(QtWidgets.QApplication.translate("MainWindow", "InAttr : ", None, -1))
        self.connectpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Connect", None, -1))
        self.SetAttrpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "SetAttr", None, -1))
        self.parentradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Parent", None, -1))
        self.pointradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Point", None, -1))
        self.orientradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Orient", None, -1))
        self.scaleradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Scale", None, -1))
        self.maintaincheckBox.setText(QtWidgets.QApplication.translate("MainWindow", "MainTain", None, -1))
        self.constraintpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Constraint", None, -1))
        self.axisYZradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "AxisYZ", None, -1))
        self.axisXYradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "AxisXY", None, -1))
        self.axisZXradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "AxisZX", None, -1))
        self.mirrorpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Mirror", None, -1))
        self.wrappushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Wrap", None, -1))
        self.transformrpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Transform", None, -1))
        self.SkinBindpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "SkinBind", None, -1))
        self.label.setText(QtWidgets.QApplication.translate("MainWindow", "AUTHOR : SUNGSEO", None, -1))
        self.label_2.setText(QtWidgets.QApplication.translate("MainWindow", "UPDATE : 20210208", None, -1))


class myUIClass(QtWidgets.QMainWindow, QtWidgets.QWidget):
    
    def __init__(self, parent = None):
        # call the widget constructor
        super(myUIClass, self).__init__(parent)
        
        # create widget object from ui file
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        
        self.Alist_ = self.ui.AlistWidget
        self.Blist_ = self.ui.BlistWidget
        self.ui.AAddpushButton.clicked.connect(self.addAListWidget)
        self.ui.BAddrpushButton.clicked.connect(self.addBListWidget)
        self.ui.ARemovepushButton.clicked.connect(self.AremoveCurrentItem)
        self.ui.BRemovepushButton.clicked.connect(self.BremoveCurrentItem)
        self.ui.sortpushButton.clicked.connect(self.SortItems)
        self.ui.reversepushButton.clicked.connect(self.ReverseItems)
        self.ui.pparentpushButton.clicked.connect(self.pparentItems)
        self.ui.OneToNradioButton.clicked.connect(self.ConnectionMode)
        self.ui.NToNradioButton.clicked.connect(self.ConnectionMode)
        self.ui.connectpushButton.clicked.connect(self.ListConnect)
        self.ui.SetAttrpushButton.clicked.connect(self.ListSet)
        self.ui.parentradioButton.clicked.connect(self.ConstraintMode)
        self.ui.pointradioButton.clicked.connect(self.ConstraintMode)
        self.ui.orientradioButton.clicked.connect(self.ConstraintMode)
        self.ui.scaleradioButton.clicked.connect(self.ConstraintMode)
        self.ui.maintaincheckBox.stateChanged.connect(self.MainTainOffsetCheck)
        self.ui.constraintpushButton.clicked.connect(self.Constraints)
        self.ui.axisYZradioButton.clicked.connect(self.MirrorAxisMode)
        self.ui.axisXYradioButton.clicked.connect(self.MirrorAxisMode)
        self.ui.axisZXradioButton.clicked.connect(self.MirrorAxisMode)
        self.ui.mirrorpushButton.clicked.connect(self.MirrorTarget)
        self.ui.wrappushButton.clicked.connect(self.SetWrap)
        self.ui.transformrpushButton.clicked.connect(self.SetTransform)
        self.ui.SkinBindpushButton.clicked.connect(self.SkinBind)
        
    # Pressing the AddItem button adds the selected items to the A list.
    def addAListWidget(self):
        self.Alist_.clear()
        self.list_ = ls(sl=1, fl=1, r=1)
        for i, object in enumerate(self.list_):
            strName_ = str(object)
            self.Alist_.addItem(strName_)
        select(cl=1)
 
           
    def addBListWidget(self):
        self.Blist_.clear()
        self.list_ = ls(sl=1, fl=1, r=1)
        for i, object in enumerate(self.list_):
            strName_ = str(object)
            self.Blist_.addItem(strName_)
        select(cl=1)

    
    # list query        
    def AprintMultiItems(self):
        self.selectList_ = []
        self.selectedList = self.Alist_.selectedItems()
        for i in self.selectedList:
            self.selectList_.append(PyNode(i.text()))
        return self.selectedList, self.selectList_


    def BprintMultiItems(self):
        self.selectList_ = []
        self.selectedList = self.Blist_.selectedItems()
        for i in self.selectedList:
            self.selectList_.append(PyNode(i.text()))
        return self.selectedList, self.selectList_            

    
    # Delete selections from the list       
    def AremoveCurrentItem(self):
        self.selectList_ = self.AprintMultiItems()[0]
        for i in self.selectList_:
            self.removeItemRow = self.Alist_.currentRow()
            self.Alist_.takeItem(self.removeItemRow)

            
    def BremoveCurrentItem(self):
        self.selectList_ = self.BprintMultiItems()[0]
        for i in self.selectList_:
            self.removeItemRow = self.Blist_.currentRow()
            self.Blist_.takeItem(self.removeItemRow)

    
    # All items in list A and B
    def AAllListItem(self):
        AAllList_ = [self.Alist_.item(i).text() for i in range(self.Alist_.count())]
        return AAllList_

        
    def BAllListItem(self):
        BAllList_ = [self.Blist_.item(i).text() for i in range(self.Blist_.count())]
        return BAllList_

        
    # Sort the contents of list A and list B        
    def SortItems(self):
        AAllList_ = self.AAllListItem()
        BAllList_ = self.BAllListItem()
        AAllList_.sort()
        BAllList_.sort()
        select(AAllList_)
        self.addAListWidget()
        select(BAllList_)
        self.addBListWidget()
        
    # Swap the contents of list A and list B
    def ReverseItems(self):
        AAllList_ = self.AAllListItem()
        BAllList_ = self.BAllListItem()
        select(BAllList_)
        self.addAListWidget()
        select(AAllList_)
        self.addBListWidget()

        
    # Pparent list A to list B
    def pparentItems(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                parent(item_, object)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                parent(item, target_[i])

    
    # Connection mode of selected list A and list B    
    def ConnectionMode(self):
        if self.ui.OneToNradioButton.isChecked(): 
            self.ASelectList = self.AprintMultiItems()[1][0]
            self.BSelectList = self.BprintMultiItems()[1]
        elif self.ui.NToNradioButton.isChecked():
            self.ASelectList = self.AprintMultiItems()[1]
            self.BSelectList = self.BprintMultiItems()[1]
        
        return self.ASelectList, self.BSelectList

    
    # get attribbutes name    
    def PrintTextEdit(self) :
        outAttr = self.ui.OutAttrtextEdit.toPlainText()
        inAttr = self.ui.InAttrtextEdit.toPlainText()
        return outAttr, inAttr
 
         
    # Attribute connection of A list and B list
    def ConnectAttr(self, *args):
        connectAttr('{}.{}'.format(args[0], args[1]),
                    '{}.{}'.format(args[2], args[3]))

                    
    def ListConnect(self):
        outAttr, inAttr = self.PrintTextEdit()
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.ConnectAttr(item_, outAttr, object, inAttr)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.ConnectAttr(item, outAttr, target_[i], inAttr)


    # Set attribute value of list A to attribute of list B
    def GetAttr(self, *args):
        self.getAttr_ = getAttr('{}.{}'.format(args[0], args[1]))
        return self.getAttr_


    def SetAttr(self, *args):
        setAttr('{}.{}'.format(args[0], args[1]), args[2])  


    def ListSet(self):
        outAttr, inAttr = self.PrintTextEdit()
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.getAttr = self.GetAttr(item_, outAttr)
                self.SetAttr(object, inAttr, self.getAttr)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.getAttr = self.GetAttr(item, outAttr)
                self.SetAttr(target_[i], inAttr, self.getAttr)


    # Constraint Type
    def Constraint_(self, *args, **kwargs):
        if kwargs['type'] == 'parent':
            parentConstraint(args, maintainOffset=kwargs['mo'])
        if kwargs['type'] == 'point':
            pointConstraint(args, maintainOffset=kwargs['mo'])
        if kwargs['type'] == 'orient':
            orientConstraint(args, maintainOffset=kwargs['mo'])
        if kwargs['type'] == 'scale':
            scaleConstraint(args, maintainOffset=kwargs['mo'])


    # Select constraint mode
    def ConstraintMode(self):
        if self.ui.parentradioButton.isChecked(): 
            self.constraintType = 'parent'
        elif self.ui.pointradioButton.isChecked():
            self.constraintType = 'point'
        elif self.ui.orientradioButton.isChecked():
            self.constraintType = 'orient'
        elif self.ui.scaleradioButton.isChecked():
            self.constraintType = 'scale'
        return self.constraintType

    
    # Constraint maintenance offset setting
    def MainTainOffsetCheck(self):
        if self.ui.maintaincheckBox.isChecked():
            self.mo_ = 1
        else:
            self.mo_ = 0
        return self.mo_

    
    # Constraint for each object by pressing the Constraint button
    def Constraints(self):
        item_, target_ = self.ConnectionMode()
        type_ = self.ConstraintMode()
        mo_ = self.MainTainOffsetCheck()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.Constraint_(item_, object, type=type_, mo=mo_)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.Constraint_(item, target_[i], type=type_, mo=mo_)

            
    # set mirror transform
    def SetMirror(self, item_, target_, axis="yz"):
        if isinstance(item_, list):
            item_ = item_[0]
        self.itemTransform_ = self.GetTransform(item_)    
        self.getSymTransform_ = self.GetSymmetricalTransform(self.itemTransform_, 
                                                             axis=axis, 
                                                             fNegScale=False)
        self.ResetTransform(target_, t=True, r=True, s=True)
        xform(target_, r=1, m=self.getSymTransform_)    

    
    # Get the target's matrix information
    def GetTransform(self, node):
        return node.getMatrix(worldSpace=True)
        
    
    # Get the object's opposite matrix value along the axis direction
    def GetSymmetricalTransform(self, t, axis="yz", fNegScale=False):
        if axis == "yz":
            mirror = datatypes.TransformationMatrix(-1, 0, 0, 0,
                                                    0, 1, 0, 0,
                                                    0, 0, 1, 0,
                                                    0, 0, 0, 1)
        if axis == "xy":
            mirror = datatypes.TransformationMatrix(1, 0, 0, 0,
                                                    0, 1, 0, 0,
                                                    0, 0, -1, 0,
                                                    0, 0, 0, 1)
        if axis == "zx":
            mirror = datatypes.TransformationMatrix(1, 0, 0, 0,
                                                    0, -1, 0, 0,
                                                    0, 0, 1, 0,
                                                    0, 0, 0, 1)
        t *= mirror
        return t
            
    
    # Initialize the target's matrix
    def ResetTransform(self, node, t=True, r=True, s=True):
        trsDic = {"tx": 0,
                  "ty": 0,
                  "tz": 0,
                  "rx": 0,
                  "ry": 0,
                  "rz": 0,
                  "sx": 1,
                  "sy": 1,
                  "sz": 1}
    
        tAxis = ["tx", "ty", "tz"]
        rAxis = ["rx", "ry", "rz"]
        sAxis = ["sx", "sy", "sz"]
        axis = []
    
        if t:
            axis = axis + tAxis
        if r:
            axis = axis + rAxis
        if s:
            axis = axis + sAxis
    
        for a in axis:
            try:
                node.attr(a).set(trsDic[a])
            except Exception:
                pass
    
    
    # Setting for mirror axis
    def MirrorAxisMode(self):
        if self.ui.axisYZradioButton.isChecked(): 
            self.MirrorAxis = 'yz'
        elif self.ui.axisXYradioButton.isChecked():
            self.MirrorAxis = 'xy'
        elif self.ui.axisZXradioButton.isChecked():
            self.MirrorAxis = 'zx'
        return self.MirrorAxis

    
    # Executed when the mirror button is pressed    
    def MirrorTarget(self):
        aixs_ = self.MirrorAxisMode()
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.SetMirror(item_, object, axis=aixs_)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.SetMirror(item, target_[i], axis=aixs_)
                
     
    # wrap deformer core function
    def createWrap(self, *args,**kwargs):
    
        influence=args[0]
        surface = args[1]
        
        shapes = listRelatives(influence,shapes=True)
        influenceShape = shapes[0]
    
        shapes = listRelatives(surface,shapes=True)
        surfaceShape = shapes[0]
    
        #create wrap deformer
        weightThreshold = kwargs.get('weightThreshold',0.0)
        maxDistance = kwargs.get('maxDistance',1.0)
        exclusiveBind = kwargs.get('exclusiveBind',False)
        autoWeightThreshold = kwargs.get('autoWeightThreshold',True)
        falloffMode = kwargs.get('falloffMode',0)
    
        wrapData = deformer(surface, type='wrap')
        wrapNode = wrapData[0]
        rename(wrapNode, '{}_wrap'.format(args[1]))
    
        setAttr(wrapNode+'.weightThreshold',weightThreshold)
        setAttr(wrapNode+'.maxDistance',maxDistance)
        setAttr(wrapNode+'.exclusiveBind',exclusiveBind)
        setAttr(wrapNode+'.autoWeightThreshold',autoWeightThreshold)
        setAttr(wrapNode+'.falloffMode',falloffMode)
    
        connectAttr(surface+'.worldMatrix[0]',wrapNode+'.geomMatrix')
        
        #add influence
        duplicateData = duplicate(influence,name=influence+'Base')
        base = duplicateData[0]
        shapes = listRelatives(base,shapes=True)
        baseShape = shapes[0]
        hide(base)
        
        #create dropoff attr if it doesn't exist
        if not attributeQuery('dropoff',n=influence,exists=True):
            addAttr( influence, sn='dr', ln='dropoff', dv=4.0, min=0.0, max=20.0  )
            setAttr( influence+'.dr', k=True )
        
        #if type mesh
        if nodeType(influenceShape) == 'mesh':
            #create smoothness attr if it doesn't exist
            if not attributeQuery('smoothness',n=influence,exists=True):
                addAttr( influence, sn='smt', ln='smoothness', dv=0.0, min=0.0  )
                setAttr( influence+'.smt', k=True )
    
            #create the inflType attr if it doesn't exist
            if not attributeQuery('inflType',n=influence,exists=True):
                addAttr( influence, at='short', sn='ift', ln='inflType', dv=2, min=1, max=2  )
    
            connectAttr(influenceShape+'.worldMesh',wrapNode+'.driverPoints[0]')
            connectAttr(baseShape+'.worldMesh',wrapNode+'.basePoints[0]')
            connectAttr(influence+'.inflType',wrapNode+'.inflType[0]')
            connectAttr(influence+'.smoothness',wrapNode+'.smoothness[0]')
    
        #if type nurbsCurve or nurbsSurface
        if nodeType(influenceShape) == 'nurbsCurve' or nodeType(influenceShape) == 'nurbsSurface':
            #create the wrapSamples attr if it doesn't exist
            if not attributeQuery('wrapSamples',n=influence,exists=True):
                addAttr( influence, at='short', sn='wsm', ln='wrapSamples', dv=10, min=1  )
                setAttr( influence+'.wsm', k=True )
    
            connectAttr(influenceShape+'.ws',wrapNode+'.driverPoints[0]')
            connectAttr(baseShape+'.ws',wrapNode+'.basePoints[0]')
            connectAttr(influence+'.wsm',wrapNode+'.nurbsSamples[0]')
    
        connectAttr(influence+'.dropoff',wrapNode+'.dropoff[0]')
        # I want to return a pyNode object for the wrap deformer.
        # I do not see the reason to rewrite the code here into pymel.
        # return wrapNode
        return nt.Wrap(wrapNode)
        
        
    def SetWrap(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.createWrap(item_, object)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.createWrap(item, target_[i])
                
                
    def SetTransform(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            self.itemTransform_ = self.GetTransform(item_)
            for i, object in enumerate(target_):
                self.resetTransform(object, t=True, r=True, s=True)
                xform(object, r=1, m=self.itemTransform_)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.itemTransform_ = self.GetTransform(item)
                self.resetTransform(target_[i], t=True, r=True, s=True)
                xform(target_[i], r=1, m=self.itemTransform_)
                
           
    def Shapes(self, object_):
        shape_ = listRelatives(object_, s = 1, pa =1)[0]
        shapeType_ = str(objectType(shape_))
        # print "Object Type is", shapeType_
        return shape_, shapeType_
    
    
    def GetSkinCluster(self, shape_, shapeType_):
        typeDic_ = {'mesh':'inMesh', 
                    'nurbsCurve':'create', 
                    'nurbsSurface':'create',
                    'lattice':'latticeInput',
                    'polyCrease':'inputPolymesh'
                    }
        if shapeType_ in typeDic_.keys():
            input_ = typeDic_[shapeType_]
        skinCluster_ = listConnections('{}.{}'.format(shape_, input_), 
                                        s = 1, d = 0)[0]
        if not skinCluster_.type() == 'skinCluster':
            shapeType_ = skinCluster_.type()
            if shapeType_ in typeDic_.keys():
                input_ = typeDic_[shapeType_]
            skinCluster_ = listConnections('{}.{}'.format(skinCluster_, input_), 
                                        s = 1, d = 0)[0]
    
        return skinCluster_
    
    def GetSkinJoint(self, skinCluster_):
        output_ = []
        #get len of array attribute (matrix)
        matrixAttrLen =  getAttr(skinCluster_ + ".matrix", s=1) 
        for i in range(0, matrixAttrLen):
            jointAttr = ls(connectionInfo(skinCluster_ + ".matrix[" + str(i) + "]", 
                                            sfd=1), l=1)[0]
            joint_ = jointAttr.split(".")[0]
            joint_ = str(joint_)
            output_.append(joint_)
        return output_
        
    
    def CopySkinBind(self, item_, target_):
        shape_, shapeType_ = self.Shapes(item_)
        skinCluster_ = self.GetSkinCluster(shape_, shapeType_)
        skinJoint_ = self.GetSkinJoint(skinCluster_)
        skinCluster(skinJoint_, target_, bm=1, mi=3, rui=0, dr=4.5)
        select(item_, r =1)
        select(target_, add =1)
        copySkinWeights(nm = 1, sa = 'closestPoint', 
                        ia = ('closestJoint', 'oneToOne'))
        select(cl=1)

                                     
    def SkinBind(self):
        item_, target_ = self.ConnectionMode()
        print item_, target_
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.CopySkinBind(item_, object)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.CopySkinBind(item, target_[i])
                
                   
def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QtWidgets.QWidget)
    

def runWin():
    global myWin
    try:
        myWin.close()
    except:
        pass
    myWin = myUIClass(parent=maya_main_window())
    myWin.show()




=======
# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
ConnectManager tool V01

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210208

:Example:
Pakage is ConnectManager.pyc

from ui.ConnectManager import ConnectManagerUI
reload(ConnectManagerUI)

============================================================================"""
#
# when start coding 3 empty lines.
#
from PySide2 import QtCore, QtGui, QtWidgets
from PySide2.QtWidgets import QApplication, QMainWindow
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
import maya.OpenMaya as om
from pymel import util
from pymel.core import datatypes, nodetypes
from pymel.core import *
import math


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(453, 798)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_5 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_5.setObjectName("gridLayout_5")
        self.ConnectManager_groupBox = QtWidgets.QGroupBox(self.centralwidget)
        font = QtGui.QFont()
        font.setFamily("Gulim")
        self.ConnectManager_groupBox.setFont(font)
        self.ConnectManager_groupBox.setObjectName("ConnectManager_groupBox")
        self.gridLayout = QtWidgets.QGridLayout(self.ConnectManager_groupBox)
        self.gridLayout.setObjectName("gridLayout")
        self.mainverticalLayout = QtWidgets.QVBoxLayout()
        self.mainverticalLayout.setObjectName("mainverticalLayout")
        self.listhorizontalLayout = QtWidgets.QHBoxLayout()
        self.listhorizontalLayout.setObjectName("listhorizontalLayout")
        self.outlistverticalLayout = QtWidgets.QVBoxLayout()
        self.outlistverticalLayout.setObjectName("outlistverticalLayout")
        self.AlistWidget = QtWidgets.QListWidget(self.ConnectManager_groupBox)
        self.AlistWidget.setDragEnabled(True)
        self.AlistWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.AlistWidget.setAlternatingRowColors(True)
        self.AlistWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.AlistWidget.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectItems)
        self.AlistWidget.setObjectName("AlistWidget")
        self.outlistverticalLayout.addWidget(self.AlistWidget)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.AAddpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.AAddpushButton.setObjectName("AAddpushButton")
        self.horizontalLayout.addWidget(self.AAddpushButton)
        self.ARemovepushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.ARemovepushButton.setObjectName("ARemovepushButton")
        self.horizontalLayout.addWidget(self.ARemovepushButton)
        self.outlistverticalLayout.addLayout(self.horizontalLayout)
        self.listhorizontalLayout.addLayout(self.outlistverticalLayout)
        self.sortButtonverticalLayout = QtWidgets.QVBoxLayout()
        self.sortButtonverticalLayout.setObjectName("sortButtonverticalLayout")
        self.sortpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.sortpushButton.setFlat(True)
        self.sortpushButton.setObjectName("sortpushButton")
        self.sortButtonverticalLayout.addWidget(self.sortpushButton)
        self.reversepushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.reversepushButton.setFlat(True)
        self.reversepushButton.setObjectName("reversepushButton")
        self.sortButtonverticalLayout.addWidget(self.reversepushButton)
        self.pparentpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.pparentpushButton.setFlat(True)
        self.pparentpushButton.setObjectName("pparentpushButton")
        self.sortButtonverticalLayout.addWidget(self.pparentpushButton)
        self.listhorizontalLayout.addLayout(self.sortButtonverticalLayout)
        self.inlistverticalLayout = QtWidgets.QVBoxLayout()
        self.inlistverticalLayout.setObjectName("inlistverticalLayout")
        self.BlistWidget = QtWidgets.QListWidget(self.ConnectManager_groupBox)
        self.BlistWidget.setDragEnabled(True)
        self.BlistWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.BlistWidget.setAlternatingRowColors(True)
        self.BlistWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.BlistWidget.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectItems)
        self.BlistWidget.setObjectName("BlistWidget")
        self.inlistverticalLayout.addWidget(self.BlistWidget)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.BAddrpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.BAddrpushButton.setObjectName("BAddrpushButton")
        self.horizontalLayout_2.addWidget(self.BAddrpushButton)
        self.BRemovepushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.BRemovepushButton.setObjectName("BRemovepushButton")
        self.horizontalLayout_2.addWidget(self.BRemovepushButton)
        self.inlistverticalLayout.addLayout(self.horizontalLayout_2)
        self.listhorizontalLayout.addLayout(self.inlistverticalLayout)
        self.mainverticalLayout.addLayout(self.listhorizontalLayout)
        self.connectTypegroupBox = QtWidgets.QGroupBox(self.ConnectManager_groupBox)
        self.connectTypegroupBox.setTitle("")
        self.connectTypegroupBox.setFlat(False)
        self.connectTypegroupBox.setCheckable(False)
        self.connectTypegroupBox.setObjectName("connectTypegroupBox")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.connectTypegroupBox)
        self.gridLayout_2.setContentsMargins(2, 2, 2, 2)
        self.gridLayout_2.setHorizontalSpacing(6)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.connectTypehorizontalLayout = QtWidgets.QHBoxLayout()
        self.connectTypehorizontalLayout.setObjectName("connectTypehorizontalLayout")
        self.OneToNradioButton = QtWidgets.QRadioButton(self.connectTypegroupBox)
        self.OneToNradioButton.setObjectName("OneToNradioButton")
        self.connectTypehorizontalLayout.addWidget(self.OneToNradioButton)
        self.NToNradioButton = QtWidgets.QRadioButton(self.connectTypegroupBox)
        self.NToNradioButton.setChecked(True)
        self.NToNradioButton.setObjectName("NToNradioButton")
        self.connectTypehorizontalLayout.addWidget(self.NToNradioButton)
        self.gridLayout_2.addLayout(self.connectTypehorizontalLayout, 0, 0, 1, 1)
        self.mainverticalLayout.addWidget(self.connectTypegroupBox)
        self.attrrhorizontalLayout = QtWidgets.QHBoxLayout()
        self.attrrhorizontalLayout.setSpacing(6)
        self.attrrhorizontalLayout.setObjectName("attrrhorizontalLayout")
        self.outAttrlabel = QtWidgets.QLabel(self.ConnectManager_groupBox)
        self.outAttrlabel.setObjectName("outAttrlabel")
        self.attrrhorizontalLayout.addWidget(self.outAttrlabel)
        self.OutAttrtextEdit = QtWidgets.QTextEdit(self.ConnectManager_groupBox)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.OutAttrtextEdit.sizePolicy().hasHeightForWidth())
        self.OutAttrtextEdit.setSizePolicy(sizePolicy)
        self.OutAttrtextEdit.setMaximumSize(QtCore.QSize(16777215, 25))
        self.OutAttrtextEdit.setObjectName("OutAttrtextEdit")
        self.attrrhorizontalLayout.addWidget(self.OutAttrtextEdit)
        self.inAttrlabel = QtWidgets.QLabel(self.ConnectManager_groupBox)
        self.inAttrlabel.setObjectName("inAttrlabel")
        self.attrrhorizontalLayout.addWidget(self.inAttrlabel)
        self.InAttrtextEdit = QtWidgets.QTextEdit(self.ConnectManager_groupBox)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.InAttrtextEdit.sizePolicy().hasHeightForWidth())
        self.InAttrtextEdit.setSizePolicy(sizePolicy)
        self.InAttrtextEdit.setMaximumSize(QtCore.QSize(16777215, 25))
        self.InAttrtextEdit.setObjectName("InAttrtextEdit")
        self.attrrhorizontalLayout.addWidget(self.InAttrtextEdit)
        self.connectpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.connectpushButton.setObjectName("connectpushButton")
        self.attrrhorizontalLayout.addWidget(self.connectpushButton)
        self.SetAttrpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.SetAttrpushButton.setObjectName("SetAttrpushButton")
        self.attrrhorizontalLayout.addWidget(self.SetAttrpushButton)
        self.mainverticalLayout.addLayout(self.attrrhorizontalLayout)
        self.line_3 = QtWidgets.QFrame(self.ConnectManager_groupBox)
        self.line_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.mainverticalLayout.addWidget(self.line_3)
        self.constrainthorizontalLayout = QtWidgets.QHBoxLayout()
        self.constrainthorizontalLayout.setObjectName("constrainthorizontalLayout")
        self.constTypegroupBox = QtWidgets.QGroupBox(self.ConnectManager_groupBox)
        self.constTypegroupBox.setTitle("")
        self.constTypegroupBox.setObjectName("constTypegroupBox")
        self.gridLayout_3 = QtWidgets.QGridLayout(self.constTypegroupBox)
        self.gridLayout_3.setContentsMargins(2, 2, 2, 2)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.constTypehorizontalLayout = QtWidgets.QHBoxLayout()
        self.constTypehorizontalLayout.setObjectName("constTypehorizontalLayout")
        self.parentradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.parentradioButton.setChecked(True)
        self.parentradioButton.setObjectName("parentradioButton")
        self.constTypehorizontalLayout.addWidget(self.parentradioButton)
        self.pointradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.pointradioButton.setObjectName("pointradioButton")
        self.constTypehorizontalLayout.addWidget(self.pointradioButton)
        self.orientradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.orientradioButton.setObjectName("orientradioButton")
        self.constTypehorizontalLayout.addWidget(self.orientradioButton)
        self.scaleradioButton = QtWidgets.QRadioButton(self.constTypegroupBox)
        self.scaleradioButton.setObjectName("scaleradioButton")
        self.constTypehorizontalLayout.addWidget(self.scaleradioButton)
        self.gridLayout_3.addLayout(self.constTypehorizontalLayout, 0, 0, 1, 1)
        self.constrainthorizontalLayout.addWidget(self.constTypegroupBox)
        self.maintaincheckBox = QtWidgets.QCheckBox(self.ConnectManager_groupBox)
        self.maintaincheckBox.setChecked(True)
        self.maintaincheckBox.setObjectName("maintaincheckBox")
        self.constrainthorizontalLayout.addWidget(self.maintaincheckBox)
        self.constraintpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.constraintpushButton.setObjectName("constraintpushButton")
        self.constrainthorizontalLayout.addWidget(self.constraintpushButton)
        self.mainverticalLayout.addLayout(self.constrainthorizontalLayout)
        self.line_4 = QtWidgets.QFrame(self.ConnectManager_groupBox)
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.mainverticalLayout.addWidget(self.line_4)
        self.mirrorhorizontalLayout = QtWidgets.QHBoxLayout()
        self.mirrorhorizontalLayout.setObjectName("mirrorhorizontalLayout")
        self.mirrorTypehorizontalLayout = QtWidgets.QHBoxLayout()
        self.mirrorTypehorizontalLayout.setObjectName("mirrorTypehorizontalLayout")
        self.mirrorReversgroupBox = QtWidgets.QGroupBox(self.ConnectManager_groupBox)
        self.mirrorReversgroupBox.setTitle("")
        self.mirrorReversgroupBox.setObjectName("mirrorReversgroupBox")
        self.gridLayout_4 = QtWidgets.QGridLayout(self.mirrorReversgroupBox)
        self.gridLayout_4.setContentsMargins(2, 2, 2, 2)
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.mirrorRevershorizontalLayout = QtWidgets.QHBoxLayout()
        self.mirrorRevershorizontalLayout.setObjectName("mirrorRevershorizontalLayout")
        self.axisYZradioButton = QtWidgets.QRadioButton(self.mirrorReversgroupBox)
        self.axisYZradioButton.setChecked(True)
        self.axisYZradioButton.setObjectName("axisYZradioButton")
        self.mirrorRevershorizontalLayout.addWidget(self.axisYZradioButton)
        self.axisXYradioButton = QtWidgets.QRadioButton(self.mirrorReversgroupBox)
        self.axisXYradioButton.setObjectName("axisXYradioButton")
        self.mirrorRevershorizontalLayout.addWidget(self.axisXYradioButton)
        self.axisZXradioButton = QtWidgets.QRadioButton(self.mirrorReversgroupBox)
        self.axisZXradioButton.setObjectName("axisZXradioButton")
        self.mirrorRevershorizontalLayout.addWidget(self.axisZXradioButton)
        self.gridLayout_4.addLayout(self.mirrorRevershorizontalLayout, 0, 0, 1, 1)
        self.mirrorTypehorizontalLayout.addWidget(self.mirrorReversgroupBox)
        self.mirrorhorizontalLayout.addLayout(self.mirrorTypehorizontalLayout)
        self.mirrorpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.mirrorpushButton.setObjectName("mirrorpushButton")
        self.mirrorhorizontalLayout.addWidget(self.mirrorpushButton)
        self.mainverticalLayout.addLayout(self.mirrorhorizontalLayout)
        self.line_5 = QtWidgets.QFrame(self.ConnectManager_groupBox)
        self.line_5.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_5.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_5.setObjectName("line_5")
        self.mainverticalLayout.addWidget(self.line_5)
        self.wrapTranshorizontalLayout = QtWidgets.QHBoxLayout()
        self.wrapTranshorizontalLayout.setObjectName("wrapTranshorizontalLayout")
        self.wrappushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.wrappushButton.setObjectName("wrappushButton")
        self.wrapTranshorizontalLayout.addWidget(self.wrappushButton)
        self.transformrpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.transformrpushButton.setObjectName("transformrpushButton")
        self.wrapTranshorizontalLayout.addWidget(self.transformrpushButton)
        self.SkinBindpushButton = QtWidgets.QPushButton(self.ConnectManager_groupBox)
        self.SkinBindpushButton.setObjectName("SkinBindpushButton")
        self.wrapTranshorizontalLayout.addWidget(self.SkinBindpushButton)
        self.mainverticalLayout.addLayout(self.wrapTranshorizontalLayout)
        self.gridLayout.addLayout(self.mainverticalLayout, 0, 0, 1, 1)
        self.label = QtWidgets.QLabel(self.ConnectManager_groupBox)
        self.label.setMaximumSize(QtCore.QSize(16777215, 16777215))
        font = QtGui.QFont()
        self.label.setFont(font)
        self.label.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.label.setFrameShadow(QtWidgets.QFrame.Plain)
        self.label.setLineWidth(2)
        self.label.setTextFormat(QtCore.Qt.PlainText)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setWordWrap(True)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 2, 0, 1, 1)
        self.label_2 = QtWidgets.QLabel(self.ConnectManager_groupBox)
        font = QtGui.QFont()
        self.label_2.setFont(font)
        self.label_2.setAlignment(QtCore.Qt.AlignCenter)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 3, 0, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem, 1, 0, 1, 1)
        self.gridLayout_5.addWidget(self.ConnectManager_groupBox, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 453, 21))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QtWidgets.QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.ConnectManager_groupBox.setTitle(QtWidgets.QApplication.translate("MainWindow", "ConnectManager_V01", None, -1))
        self.AAddpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "add Item", None, -1))
        self.ARemovepushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Remove", None, -1))
        self.sortpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Sort", None, -1))
        self.reversepushButton.setText(QtWidgets.QApplication.translate("MainWindow", "<>", None, -1))
        self.pparentpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "PParent", None, -1))
        self.BAddrpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "add Item", None, -1))
        self.BRemovepushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Remove", None, -1))
        self.OneToNradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "One To N", None, -1))
        self.NToNradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "N to N", None, -1))
        self.outAttrlabel.setText(QtWidgets.QApplication.translate("MainWindow", "OutAttr : ", None, -1))
        self.inAttrlabel.setText(QtWidgets.QApplication.translate("MainWindow", "InAttr : ", None, -1))
        self.connectpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Connect", None, -1))
        self.SetAttrpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "SetAttr", None, -1))
        self.parentradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Parent", None, -1))
        self.pointradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Point", None, -1))
        self.orientradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Orient", None, -1))
        self.scaleradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "Scale", None, -1))
        self.maintaincheckBox.setText(QtWidgets.QApplication.translate("MainWindow", "MainTain", None, -1))
        self.constraintpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Constraint", None, -1))
        self.axisYZradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "AxisYZ", None, -1))
        self.axisXYradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "AxisXY", None, -1))
        self.axisZXradioButton.setText(QtWidgets.QApplication.translate("MainWindow", "AxisZX", None, -1))
        self.mirrorpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Mirror", None, -1))
        self.wrappushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Wrap", None, -1))
        self.transformrpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "Transform", None, -1))
        self.SkinBindpushButton.setText(QtWidgets.QApplication.translate("MainWindow", "SkinBind", None, -1))
        self.label.setText(QtWidgets.QApplication.translate("MainWindow", "AUTHOR : SUNGSEO", None, -1))
        self.label_2.setText(QtWidgets.QApplication.translate("MainWindow", "UPDATE : 20210208", None, -1))


class myUIClass(QtWidgets.QMainWindow, QtWidgets.QWidget):
    
    def __init__(self, parent = None):
        # call the widget constructor
        super(myUIClass, self).__init__(parent)
        
        # create widget object from ui file
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        
        self.Alist_ = self.ui.AlistWidget
        self.Blist_ = self.ui.BlistWidget
        self.ui.AAddpushButton.clicked.connect(self.addAListWidget)
        self.ui.BAddrpushButton.clicked.connect(self.addBListWidget)
        self.ui.ARemovepushButton.clicked.connect(self.AremoveCurrentItem)
        self.ui.BRemovepushButton.clicked.connect(self.BremoveCurrentItem)
        self.ui.sortpushButton.clicked.connect(self.SortItems)
        self.ui.reversepushButton.clicked.connect(self.ReverseItems)
        self.ui.pparentpushButton.clicked.connect(self.pparentItems)
        self.ui.OneToNradioButton.clicked.connect(self.ConnectionMode)
        self.ui.NToNradioButton.clicked.connect(self.ConnectionMode)
        self.ui.connectpushButton.clicked.connect(self.ListConnect)
        self.ui.SetAttrpushButton.clicked.connect(self.ListSet)
        self.ui.parentradioButton.clicked.connect(self.ConstraintMode)
        self.ui.pointradioButton.clicked.connect(self.ConstraintMode)
        self.ui.orientradioButton.clicked.connect(self.ConstraintMode)
        self.ui.scaleradioButton.clicked.connect(self.ConstraintMode)
        self.ui.maintaincheckBox.stateChanged.connect(self.MainTainOffsetCheck)
        self.ui.constraintpushButton.clicked.connect(self.Constraints)
        self.ui.axisYZradioButton.clicked.connect(self.MirrorAxisMode)
        self.ui.axisXYradioButton.clicked.connect(self.MirrorAxisMode)
        self.ui.axisZXradioButton.clicked.connect(self.MirrorAxisMode)
        self.ui.mirrorpushButton.clicked.connect(self.MirrorTarget)
        self.ui.wrappushButton.clicked.connect(self.SetWrap)
        self.ui.transformrpushButton.clicked.connect(self.SetTransform)
        self.ui.SkinBindpushButton.clicked.connect(self.SkinBind)
        
    # Pressing the AddItem button adds the selected items to the A list.
    def addAListWidget(self):
        self.Alist_.clear()
        self.list_ = ls(sl=1, fl=1, r=1)
        for i, object in enumerate(self.list_):
            strName_ = str(object)
            self.Alist_.addItem(strName_)
        select(cl=1)
 
           
    def addBListWidget(self):
        self.Blist_.clear()
        self.list_ = ls(sl=1, fl=1, r=1)
        for i, object in enumerate(self.list_):
            strName_ = str(object)
            self.Blist_.addItem(strName_)
        select(cl=1)

    
    # list query        
    def AprintMultiItems(self):
        self.selectList_ = []
        self.selectedList = self.Alist_.selectedItems()
        for i in self.selectedList:
            self.selectList_.append(PyNode(i.text()))
        return self.selectedList, self.selectList_


    def BprintMultiItems(self):
        self.selectList_ = []
        self.selectedList = self.Blist_.selectedItems()
        for i in self.selectedList:
            self.selectList_.append(PyNode(i.text()))
        return self.selectedList, self.selectList_            

    
    # Delete selections from the list       
    def AremoveCurrentItem(self):
        self.selectList_ = self.AprintMultiItems()[0]
        for i in self.selectList_:
            self.removeItemRow = self.Alist_.currentRow()
            self.Alist_.takeItem(self.removeItemRow)

            
    def BremoveCurrentItem(self):
        self.selectList_ = self.BprintMultiItems()[0]
        for i in self.selectList_:
            self.removeItemRow = self.Blist_.currentRow()
            self.Blist_.takeItem(self.removeItemRow)

    
    # All items in list A and B
    def AAllListItem(self):
        AAllList_ = [self.Alist_.item(i).text() for i in range(self.Alist_.count())]
        return AAllList_

        
    def BAllListItem(self):
        BAllList_ = [self.Blist_.item(i).text() for i in range(self.Blist_.count())]
        return BAllList_

        
    # Sort the contents of list A and list B        
    def SortItems(self):
        AAllList_ = self.AAllListItem()
        BAllList_ = self.BAllListItem()
        AAllList_.sort()
        BAllList_.sort()
        select(AAllList_)
        self.addAListWidget()
        select(BAllList_)
        self.addBListWidget()
        
    # Swap the contents of list A and list B
    def ReverseItems(self):
        AAllList_ = self.AAllListItem()
        BAllList_ = self.BAllListItem()
        select(BAllList_)
        self.addAListWidget()
        select(AAllList_)
        self.addBListWidget()

        
    # Pparent list A to list B
    def pparentItems(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                parent(item_, object)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                parent(item, target_[i])

    
    # Connection mode of selected list A and list B    
    def ConnectionMode(self):
        if self.ui.OneToNradioButton.isChecked(): 
            self.ASelectList = self.AprintMultiItems()[1][0]
            self.BSelectList = self.BprintMultiItems()[1]
        elif self.ui.NToNradioButton.isChecked():
            self.ASelectList = self.AprintMultiItems()[1]
            self.BSelectList = self.BprintMultiItems()[1]
        
        return self.ASelectList, self.BSelectList

    
    # get attribbutes name    
    def PrintTextEdit(self) :
        outAttr = self.ui.OutAttrtextEdit.toPlainText()
        inAttr = self.ui.InAttrtextEdit.toPlainText()
        return outAttr, inAttr
 
         
    # Attribute connection of A list and B list
    def ConnectAttr(self, *args):
        connectAttr('{}.{}'.format(args[0], args[1]),
                    '{}.{}'.format(args[2], args[3]))

                    
    def ListConnect(self):
        outAttr, inAttr = self.PrintTextEdit()
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.ConnectAttr(item_, outAttr, object, inAttr)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.ConnectAttr(item, outAttr, target_[i], inAttr)


    # Set attribute value of list A to attribute of list B
    def GetAttr(self, *args):
        self.getAttr_ = getAttr('{}.{}'.format(args[0], args[1]))
        return self.getAttr_


    def SetAttr(self, *args):
        setAttr('{}.{}'.format(args[0], args[1]), args[2])  


    def ListSet(self):
        outAttr, inAttr = self.PrintTextEdit()
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.getAttr = self.GetAttr(item_, outAttr)
                self.SetAttr(object, inAttr, self.getAttr)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.getAttr = self.GetAttr(item, outAttr)
                self.SetAttr(target_[i], inAttr, self.getAttr)


    # Constraint Type
    def Constraint_(self, *args, **kwargs):
        if kwargs['type'] == 'parent':
            parentConstraint(args, maintainOffset=kwargs['mo'])
        if kwargs['type'] == 'point':
            pointConstraint(args, maintainOffset=kwargs['mo'])
        if kwargs['type'] == 'orient':
            orientConstraint(args, maintainOffset=kwargs['mo'])
        if kwargs['type'] == 'scale':
            scaleConstraint(args, maintainOffset=kwargs['mo'])


    # Select constraint mode
    def ConstraintMode(self):
        if self.ui.parentradioButton.isChecked(): 
            self.constraintType = 'parent'
        elif self.ui.pointradioButton.isChecked():
            self.constraintType = 'point'
        elif self.ui.orientradioButton.isChecked():
            self.constraintType = 'orient'
        elif self.ui.scaleradioButton.isChecked():
            self.constraintType = 'scale'
        return self.constraintType

    
    # Constraint maintenance offset setting
    def MainTainOffsetCheck(self):
        if self.ui.maintaincheckBox.isChecked():
            self.mo_ = 1
        else:
            self.mo_ = 0
        return self.mo_

    
    # Constraint for each object by pressing the Constraint button
    def Constraints(self):
        item_, target_ = self.ConnectionMode()
        type_ = self.ConstraintMode()
        mo_ = self.MainTainOffsetCheck()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.Constraint_(item_, object, type=type_, mo=mo_)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.Constraint_(item, target_[i], type=type_, mo=mo_)

            
    # set mirror transform
    def SetMirror(self, item_, target_, axis="yz"):
        if isinstance(item_, list):
            item_ = item_[0]
        self.itemTransform_ = self.GetTransform(item_)    
        self.getSymTransform_ = self.GetSymmetricalTransform(self.itemTransform_, 
                                                             axis=axis, 
                                                             fNegScale=False)
        self.ResetTransform(target_, t=True, r=True, s=True)
        xform(target_, r=1, m=self.getSymTransform_)    

    
    # Get the target's matrix information
    def GetTransform(self, node):
        return node.getMatrix(worldSpace=True)
        
    
    # Get the object's opposite matrix value along the axis direction
    def GetSymmetricalTransform(self, t, axis="yz", fNegScale=False):
        if axis == "yz":
            mirror = datatypes.TransformationMatrix(-1, 0, 0, 0,
                                                    0, 1, 0, 0,
                                                    0, 0, 1, 0,
                                                    0, 0, 0, 1)
        if axis == "xy":
            mirror = datatypes.TransformationMatrix(1, 0, 0, 0,
                                                    0, 1, 0, 0,
                                                    0, 0, -1, 0,
                                                    0, 0, 0, 1)
        if axis == "zx":
            mirror = datatypes.TransformationMatrix(1, 0, 0, 0,
                                                    0, -1, 0, 0,
                                                    0, 0, 1, 0,
                                                    0, 0, 0, 1)
        t *= mirror
        return t
            
    
    # Initialize the target's matrix
    def ResetTransform(self, node, t=True, r=True, s=True):
        trsDic = {"tx": 0,
                  "ty": 0,
                  "tz": 0,
                  "rx": 0,
                  "ry": 0,
                  "rz": 0,
                  "sx": 1,
                  "sy": 1,
                  "sz": 1}
    
        tAxis = ["tx", "ty", "tz"]
        rAxis = ["rx", "ry", "rz"]
        sAxis = ["sx", "sy", "sz"]
        axis = []
    
        if t:
            axis = axis + tAxis
        if r:
            axis = axis + rAxis
        if s:
            axis = axis + sAxis
    
        for a in axis:
            try:
                node.attr(a).set(trsDic[a])
            except Exception:
                pass
    
    
    # Setting for mirror axis
    def MirrorAxisMode(self):
        if self.ui.axisYZradioButton.isChecked(): 
            self.MirrorAxis = 'yz'
        elif self.ui.axisXYradioButton.isChecked():
            self.MirrorAxis = 'xy'
        elif self.ui.axisZXradioButton.isChecked():
            self.MirrorAxis = 'zx'
        return self.MirrorAxis

    
    # Executed when the mirror button is pressed    
    def MirrorTarget(self):
        aixs_ = self.MirrorAxisMode()
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.SetMirror(item_, object, axis=aixs_)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.SetMirror(item, target_[i], axis=aixs_)
                
     
    # wrap deformer core function
    def createWrap(self, *args,**kwargs):
    
        influence=args[0]
        surface = args[1]
        
        shapes = listRelatives(influence,shapes=True)
        influenceShape = shapes[0]
    
        shapes = listRelatives(surface,shapes=True)
        surfaceShape = shapes[0]
    
        #create wrap deformer
        weightThreshold = kwargs.get('weightThreshold',0.0)
        maxDistance = kwargs.get('maxDistance',1.0)
        exclusiveBind = kwargs.get('exclusiveBind',False)
        autoWeightThreshold = kwargs.get('autoWeightThreshold',True)
        falloffMode = kwargs.get('falloffMode',0)
    
        wrapData = deformer(surface, type='wrap')
        wrapNode = wrapData[0]
        rename(wrapNode, '{}_wrap'.format(args[1]))
    
        setAttr(wrapNode+'.weightThreshold',weightThreshold)
        setAttr(wrapNode+'.maxDistance',maxDistance)
        setAttr(wrapNode+'.exclusiveBind',exclusiveBind)
        setAttr(wrapNode+'.autoWeightThreshold',autoWeightThreshold)
        setAttr(wrapNode+'.falloffMode',falloffMode)
    
        connectAttr(surface+'.worldMatrix[0]',wrapNode+'.geomMatrix')
        
        #add influence
        duplicateData = duplicate(influence,name=influence+'Base')
        base = duplicateData[0]
        shapes = listRelatives(base,shapes=True)
        baseShape = shapes[0]
        hide(base)
        
        #create dropoff attr if it doesn't exist
        if not attributeQuery('dropoff',n=influence,exists=True):
            addAttr( influence, sn='dr', ln='dropoff', dv=4.0, min=0.0, max=20.0  )
            setAttr( influence+'.dr', k=True )
        
        #if type mesh
        if nodeType(influenceShape) == 'mesh':
            #create smoothness attr if it doesn't exist
            if not attributeQuery('smoothness',n=influence,exists=True):
                addAttr( influence, sn='smt', ln='smoothness', dv=0.0, min=0.0  )
                setAttr( influence+'.smt', k=True )
    
            #create the inflType attr if it doesn't exist
            if not attributeQuery('inflType',n=influence,exists=True):
                addAttr( influence, at='short', sn='ift', ln='inflType', dv=2, min=1, max=2  )
    
            connectAttr(influenceShape+'.worldMesh',wrapNode+'.driverPoints[0]')
            connectAttr(baseShape+'.worldMesh',wrapNode+'.basePoints[0]')
            connectAttr(influence+'.inflType',wrapNode+'.inflType[0]')
            connectAttr(influence+'.smoothness',wrapNode+'.smoothness[0]')
    
        #if type nurbsCurve or nurbsSurface
        if nodeType(influenceShape) == 'nurbsCurve' or nodeType(influenceShape) == 'nurbsSurface':
            #create the wrapSamples attr if it doesn't exist
            if not attributeQuery('wrapSamples',n=influence,exists=True):
                addAttr( influence, at='short', sn='wsm', ln='wrapSamples', dv=10, min=1  )
                setAttr( influence+'.wsm', k=True )
    
            connectAttr(influenceShape+'.ws',wrapNode+'.driverPoints[0]')
            connectAttr(baseShape+'.ws',wrapNode+'.basePoints[0]')
            connectAttr(influence+'.wsm',wrapNode+'.nurbsSamples[0]')
    
        connectAttr(influence+'.dropoff',wrapNode+'.dropoff[0]')
        # I want to return a pyNode object for the wrap deformer.
        # I do not see the reason to rewrite the code here into pymel.
        # return wrapNode
        return nt.Wrap(wrapNode)
        
        
    def SetWrap(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.createWrap(item_, object)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.createWrap(item, target_[i])
                
                
    def SetTransform(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.OneToNradioButton.isChecked():
            self.itemTransform_ = self.GetTransform(item_)
            for i, object in enumerate(target_):
                self.resetTransform(object, t=True, r=True, s=True)
                xform(object, r=1, m=self.itemTransform_)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.itemTransform_ = self.GetTransform(item)
                self.resetTransform(target_[i], t=True, r=True, s=True)
                xform(target_[i], r=1, m=self.itemTransform_)
                
           
    def Shapes(self, object_):
        shape_ = listRelatives(object_, s = 1, pa =1)[0]
        shapeType_ = str(objectType(shape_))
        # print "Object Type is", shapeType_
        return shape_, shapeType_
    
    
    def bindJoint(self, object_):
        shape_ = object_.getShape()
        connectionList_ = shape_.listHistory(gl=1,pdo=1)
        for cnt_ in connectionList_:
            if cnt_.type() == 'skinCluster':
                scls_ = cnt_
                break
            else:
                scls_ = None
        sclsMtx_ = scls_.attr('matrix')
        return sclsMtx_.listConnections(d=0,s=1,type='joint')


    def skinCopy(self, item_, target_):
        bindJoints = self.bindJoint(item_)
        skinCluster(bindJoints, target_, bm=1, mi=3, rui=0, dr=3)
        copySkinWeights(item_,target_,nm=1,sa='closestPoint',ia='oneToOne',nr=1)

                                     
    def SkinBind(self):
        item_, target_ = self.ConnectionMode()
        print item_, target_
        if self.ui.OneToNradioButton.isChecked():
            for i, object in enumerate(target_):
                self.skinCopy(item_, object)
        elif self.ui.NToNradioButton.isChecked():
            for i, item in enumerate(item_):
                self.skinCopy(item, target_[i])
                
                   
def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QtWidgets.QWidget)
    

def runWin():
    global myWin
    try:
        myWin.close()
    except:
        pass
    myWin = myUIClass(parent=maya_main_window())
    myWin.show()




>>>>>>> 7fbe2e4865dac72f9e1d3236bb58bc662cf9bf6b
