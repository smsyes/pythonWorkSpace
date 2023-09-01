<<<<<<< HEAD
# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
AutoRig tool V01

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210327

:Example:
Pakage is AutoRig.pyc

import AutoRig as msrig
msrig.runWin()

============================================================================"""
#
# when start coding 3 empty lines.
#
from maya import OpenMayaUI as omui 
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


global module_path
path_ = 'C:\msscoding\pythonWorkspace\main\mApplication\ms_module\lib\module'
module_path = os.path.split(os.path.realpath(path_))
if not module_path in sys.path:
    sys.path.append(module_path)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(430, 732)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_5 = QGridLayout(self.centralwidget)
        self.gridLayout_5.setObjectName("gridLayout_5")
        self.tabWidget = QTabWidget(self.centralwidget)
        self.tabWidget.setObjectName("tabWidget")
        self.Build_tab = QWidget()
        self.Build_tab.setObjectName("Build_tab")
        self.gridLayout_3 = QGridLayout(self.Build_tab)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.gridLayout = QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        spacerItem = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem, 29, 0, 1, 1)
<<<<<<< Updated upstream
=======
        self.label_5 = QLabel(self.Build_tab)
        self.label_5.setAlignment(Qt.AlignCenter)
        self.label_5.setObjectName("label_5")
        self.gridLayout.addWidget(self.label_5, 30, 0, 1, 1)
        self.FitR_CBB = QComboBox(self.Build_tab)
        self.FitR_CBB.setEnabled(True)
        self.FitR_CBB.setEditable(False)
        self.FitR_CBB.setCurrentText("")
        self.FitR_CBB.setObjectName("FitR_CBB")
        self.gridLayout.addWidget(self.FitR_CBB, 8, 0, 1, 1)
        self.label = QLabel(self.Build_tab)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 13, 0, 1, 1)
>>>>>>> Stashed changes
        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.label_2 = QLabel(self.Build_tab)
        self.label_2.setObjectName("label_2")
        self.horizontalLayout_2.addWidget(self.label_2)
        self.BaseNametextEdit = QTextEdit(self.Build_tab)
        sizePolicy = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.BaseNametextEdit.sizePolicy().hasHeightForWidth())
        self.BaseNametextEdit.setSizePolicy(sizePolicy)
        self.BaseNametextEdit.setMinimumSize(QSize(0, 9))
        self.BaseNametextEdit.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.BaseNametextEdit.setHorizontalScrollBarPolicy(Qt.ScrollBarAsNeeded)
        self.BaseNametextEdit.setLineWrapMode(QTextEdit.WidgetWidth)
        self.BaseNametextEdit.setTabStopWidth(80)
        self.BaseNametextEdit.setObjectName("BaseNametextEdit")
        self.horizontalLayout_2.addWidget(self.BaseNametextEdit)
        self.Name_EditBT = QPushButton(self.Build_tab)
        self.Name_EditBT.setObjectName("Name_EditBT")
        self.horizontalLayout_2.addWidget(self.Name_EditBT)
        self.gridLayout.addLayout(self.horizontalLayout_2, 18, 0, 1, 1)
<<<<<<< Updated upstream
        spacerItem1 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem1, 6, 0, 1, 1)
        self.ClearBT = QPushButton(self.Build_tab)
        self.ClearBT.setObjectName("ClearBT")
        self.gridLayout.addWidget(self.ClearBT, 19, 0, 1, 1)
        self.FitP_CBB = QComboBox(self.Build_tab)
        self.FitP_CBB.setEditable(False)
        self.FitP_CBB.setCurrentText("")
        self.FitP_CBB.setObjectName("FitP_CBB")
        self.gridLayout.addWidget(self.FitP_CBB, 14, 0, 1, 1)
        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName("horizontalLayout_6")
        self.BuildBT = QPushButton(self.Build_tab)
        self.BuildBT.setObjectName("BuildBT")
        self.horizontalLayout_6.addWidget(self.BuildBT)
        self.EditModeBT = QPushButton(self.Build_tab)
        self.EditModeBT.setObjectName("EditModeBT")
        self.horizontalLayout_6.addWidget(self.EditModeBT)
        self.gridLayout.addLayout(self.horizontalLayout_6, 31, 0, 1, 1)
        self.line_2 = QFrame(self.Build_tab)
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.gridLayout.addWidget(self.line_2, 22, 0, 1, 1)
        self.FitR_AddBT = QPushButton(self.Build_tab)
        self.FitR_AddBT.setObjectName("FitR_AddBT")
        self.gridLayout.addWidget(self.FitR_AddBT, 9, 0, 1, 1)
        self.FitP_AddBT = QPushButton(self.Build_tab)
        self.FitP_AddBT.setObjectName("FitP_AddBT")
        self.gridLayout.addWidget(self.FitP_AddBT, 15, 0, 1, 1)
        spacerItem2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem2, 12, 0, 1, 1)
        self.line = QFrame(self.Build_tab)
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setObjectName("line")
        self.gridLayout.addWidget(self.line, 11, 0, 1, 1)
=======
        self.FitP_CBB = QComboBox(self.Build_tab)
        self.FitP_CBB.setEditable(False)
        self.FitP_CBB.setCurrentText("")
        self.FitP_CBB.setObjectName("FitP_CBB")
        self.gridLayout.addWidget(self.FitP_CBB, 14, 0, 1, 1)
        spacerItem1 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem1, 6, 0, 1, 1)
        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName("horizontalLayout_6")
        self.BuildBT = QPushButton(self.Build_tab)
        self.BuildBT.setObjectName("BuildBT")
        self.horizontalLayout_6.addWidget(self.BuildBT)
        self.EditModeBT = QPushButton(self.Build_tab)
        self.EditModeBT.setObjectName("EditModeBT")
        self.horizontalLayout_6.addWidget(self.EditModeBT)
        self.gridLayout.addLayout(self.horizontalLayout_6, 31, 0, 1, 1)
        self.line_2 = QFrame(self.Build_tab)
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.gridLayout.addWidget(self.line_2, 22, 0, 1, 1)
        self.FitR_AddBT = QPushButton(self.Build_tab)
        self.FitR_AddBT.setObjectName("FitR_AddBT")
        self.gridLayout.addWidget(self.FitR_AddBT, 9, 0, 1, 1)
        self.FitP_AddBT = QPushButton(self.Build_tab)
        self.FitP_AddBT.setObjectName("FitP_AddBT")
        self.gridLayout.addWidget(self.FitP_AddBT, 15, 0, 1, 1)
        spacerItem2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem2, 12, 0, 1, 1)
        self.line = QFrame(self.Build_tab)
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setObjectName("line")
        self.gridLayout.addWidget(self.line, 11, 0, 1, 1)
        self.ClearBT = QPushButton(self.Build_tab)
        self.ClearBT.setObjectName("ClearBT")
        self.gridLayout.addWidget(self.ClearBT, 19, 0, 1, 1)
>>>>>>> Stashed changes
        self.label_4 = QLabel(self.Build_tab)
        self.label_4.setAlignment(Qt.AlignCenter)
        self.label_4.setObjectName("label_4")
        self.gridLayout.addWidget(self.label_4, 7, 0, 1, 1)
<<<<<<< Updated upstream
        self.label = QLabel(self.Build_tab)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 13, 0, 1, 1)
        self.label_5 = QLabel(self.Build_tab)
        self.label_5.setAlignment(Qt.AlignCenter)
        self.label_5.setObjectName("label_5")
        self.gridLayout.addWidget(self.label_5, 30, 0, 1, 1)
        self.FitP_TWG = QTreeWidget(self.Build_tab)
        self.FitP_TWG.setFrameShape(QFrame.StyledPanel)
        self.FitP_TWG.setFrameShadow(QFrame.Sunken)
        self.FitP_TWG.setVerticalScrollBarPolicy(Qt.ScrollBarAsNeeded)
        self.FitP_TWG.setEditTriggers(QAbstractItemView.DoubleClicked|QAbstractItemView.EditKeyPressed|QAbstractItemView.SelectedClicked)
        self.FitP_TWG.setDragEnabled(True)
        self.FitP_TWG.setAlternatingRowColors(False)
        self.FitP_TWG.setSelectionMode(QAbstractItemView.MultiSelection)
        self.FitP_TWG.setIndentation(20)
        self.FitP_TWG.setWordWrap(False)
        self.FitP_TWG.setColumnCount(2)
        self.FitP_TWG.setObjectName("FitP_TWG")
        self.FitP_TWG.header().setVisible(True)
        self.FitP_TWG.header().setCascadingSectionResizes(True)
        self.FitP_TWG.header().setDefaultSectionSize(80)
        self.FitP_TWG.header().setHighlightSections(True)
        self.FitP_TWG.header().setSortIndicatorShown(False)
        self.gridLayout.addWidget(self.FitP_TWG, 16, 0, 1, 1)
        self.FitR_CBB = QComboBox(self.Build_tab)
        self.FitR_CBB.setEnabled(True)
        self.FitR_CBB.setEditable(False)
        self.FitR_CBB.setCurrentText("")
        self.FitR_CBB.setObjectName("FitR_CBB")
        self.gridLayout.addWidget(self.FitR_CBB, 8, 0, 1, 1)
=======
        self.propertiestreeView = QTreeView(self.Build_tab)
        self.propertiestreeView.setObjectName("propertiestreeView")
        self.gridLayout.addWidget(self.propertiestreeView, 16, 0, 1, 1)
>>>>>>> Stashed changes
        self.gridLayout_3.addLayout(self.gridLayout, 0, 0, 1, 1)
        self.label_9 = QLabel(self.Build_tab)
        self.label_9.setAlignment(Qt.AlignCenter)
        self.label_9.setObjectName("label_9")
        self.gridLayout_3.addWidget(self.label_9, 2, 0, 1, 1)
        self.label_10 = QLabel(self.Build_tab)
        self.label_10.setAlignment(Qt.AlignCenter)
        self.label_10.setObjectName("label_10")
        self.gridLayout_3.addWidget(self.label_10, 3, 0, 1, 1)
        spacerItem3 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout_3.addItem(spacerItem3, 1, 0, 1, 1)
        self.tabWidget.addTab(self.Build_tab, "")
        self.Sub_tab = QWidget()
        self.Sub_tab.setObjectName("Sub_tab")
        self.gridLayout_2 = QGridLayout(self.Sub_tab)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.label_8 = QLabel(self.Sub_tab)
        self.label_8.setAlignment(Qt.AlignCenter)
        self.label_8.setObjectName("label_8")
        self.verticalLayout_3.addWidget(self.label_8)
        self.AtcMorror_RBT = QRadioButton(self.Sub_tab)
        self.AtcMorror_RBT.setObjectName("AtcMorror_RBT")
        self.verticalLayout_3.addWidget(self.AtcMorror_RBT)
        self.Atc_CreateBT = QPushButton(self.Sub_tab)
        self.Atc_CreateBT.setObjectName("Atc_CreateBT")
        self.verticalLayout_3.addWidget(self.Atc_CreateBT)
        self.gridLayout_2.addLayout(self.verticalLayout_3, 2, 1, 1, 1)
        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.label_7 = QLabel(self.Sub_tab)
        self.label_7.setLayoutDirection(Qt.LeftToRight)
        self.label_7.setAlignment(Qt.AlignCenter)
        self.label_7.setObjectName("label_7")
        self.verticalLayout.addWidget(self.label_7)
        self.BindSkinBT = QPushButton(self.Sub_tab)
        self.BindSkinBT.setObjectName("BindSkinBT")
        self.verticalLayout.addWidget(self.BindSkinBT)
        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setSpacing(6)
        self.verticalLayout_2.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.label_6 = QLabel(self.Sub_tab)
        self.label_6.setObjectName("label_6")
        self.verticalLayout_2.addWidget(self.label_6)
        self.gridLayout_4 = QGridLayout()
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.Proxy_CreateBT = QPushButton(self.Sub_tab)
        self.Proxy_CreateBT.setObjectName("Proxy_CreateBT")
        self.gridLayout_4.addWidget(self.Proxy_CreateBT, 0, 0, 1, 1)
        self.Proxy_DeleteBT = QPushButton(self.Sub_tab)
        self.Proxy_DeleteBT.setObjectName("Proxy_DeleteBT")
        self.gridLayout_4.addWidget(self.Proxy_DeleteBT, 0, 1, 1, 1)
        self.verticalLayout_2.addLayout(self.gridLayout_4)
        self.verticalLayout.addLayout(self.verticalLayout_2)
        self.gridLayout_2.addLayout(self.verticalLayout, 0, 1, 1, 1)
        self.line_4 = QFrame(self.Sub_tab)
        self.line_4.setFrameShape(QFrame.HLine)
        self.line_4.setFrameShadow(QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.gridLayout_2.addWidget(self.line_4, 1, 1, 1, 1)
        self.tabWidget.addTab(self.Sub_tab, "")
        self.gridLayout_5.addWidget(self.tabWidget, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setGeometry(QRect(0, 0, 430, 21))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        self.tabWidget.setCurrentIndex(0)
        self.FitR_CBB.setCurrentIndex(-1)
        QMetaObject.connectSlotsByName(MainWindow)
<<<<<<< Updated upstream

=======
 
    
    def treeItem(self):
        self.model = QStandardItemModel()
        self.model.setHorizontalHeaderLabels(['Properties', 'Value'])
        self.tree.header().setDefaultSectionSize(180)
        self.tree.setModel(self.model)
    
    def addTreeView(self):
        for j, _type in enumerate(data):
         	item = QStandardItem(_type["type"])
         	for obj in _type["objects"]:
         		child = QStandardItem(obj)
         		item.appendRow(child)
         	self.setItem(j, 0, item)
    
    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.label_5.setText(QApplication.translate("MainWindow", "____Build____", None, -1))
        self.label.setText(QApplication.translate("MainWindow", "____Fit Parts____", None, -1))
        self.label_2.setText(QApplication.translate("MainWindow", "Base Name", None, -1))
        self.Name_EditBT.setText(QApplication.translate("MainWindow", "Edit", None, -1))
        self.BuildBT.setText(QApplication.translate("MainWindow", "Build", None, -1))
        self.EditModeBT.setText(QApplication.translate("MainWindow", "EditMode", None, -1))
        self.FitR_AddBT.setText(QApplication.translate("MainWindow", "Add Reference", None, -1))
        self.FitP_AddBT.setText(QApplication.translate("MainWindow", "Add Parts", None, -1))
        self.ClearBT.setText(QApplication.translate("MainWindow", "Clear", None, -1))
        self.label_4.setText(QApplication.translate("MainWindow", "____Fit Reference____", None, -1))
        self.label_9.setText(QApplication.translate("MainWindow", "AUTHOR : SUNGSEO", None, -1))
        self.label_10.setText(QApplication.translate("MainWindow", "UPDATE : 20210415", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Build_tab), QApplication.translate("MainWindow", "Build", None, -1))
        self.label_8.setText(QApplication.translate("MainWindow", "____Attach Control____", None, -1))
        self.AtcMorror_RBT.setText(QApplication.translate("MainWindow", "Mirror", None, -1))
        self.Atc_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.label_7.setText(QApplication.translate("MainWindow", "____Skinning____", None, -1))
        self.BindSkinBT.setText(QApplication.translate("MainWindow", "Bind Skin", None, -1))
        self.label_6.setText(QApplication.translate("MainWindow", "Proxy Mesh", None, -1))
        self.Proxy_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.Proxy_DeleteBT.setText(QApplication.translate("MainWindow", "Delete", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Sub_tab), QApplication.translate("MainWindow", "Sub", None, -1))

    '''
>>>>>>> Stashed changes
    def addParts(self, MainWindow, partName, parentObject, bendyNum):
        item_0 = QTreeWidgetItem(self.FitP_TWG)
        item_1 = QTreeWidgetItem(item_0)
        item_1 = QTreeWidgetItem(item_0)
        item_1 = QTreeWidgetItem(item_0)
        TreeCount = self.treeCount(self.FitP_TWG)
        CBBName = '{}_{}'.format(partName,TreeCount)
        self.addCBB = self.addComboBox(CBBName)
        self.partsretranslateUi(MainWindow, TreeCount, partName, parentObject, bendyNum)
    
    def treeCount(self, tree_, item_ = 0):
        count = 0
        if item_ ==0:
            topCount = tree_.topLevelItemCount()
            for i in range(topCount):
                item_ = tree_.topLevelItem(i)
                if item_.isExpanded():
                    count += treeCount(tree_, item_)
            
            count += topCount

        else:
            childCount = item_.childCount()
            for i in range(childCount):
                item_ = parent_.child(i)
                if item_.isExpanded():
                    count += treeCount(tree_, item)
            
            count += childCount
        return count-1

<<<<<<< Updated upstream
    def delegate(self, )
=======
>>>>>>> Stashed changes
    
    def addComboBox(self, partName):
        comboName_ = '{}_CBB'.format(partName)
        self.combo_ = QComboBox()
        self.combo_.addItems(["L","R","M"])
        self.combo_.setObjectName(comboName_)
        return self.combo_
<<<<<<< Updated upstream

    
    def partsretranslateUi(self, MainWindow, count, partName, parentObject, bendyNum):
        parts_description = '{} Description'.format(partName)
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        __sortingEnabled = self.FitP_TWG.isSortingEnabled()
        self.FitP_TWG.setSortingEnabled(False)
        self.FitP_TWG.topLevelItem(count).setText(0, QApplication.translate("MainWindow", partName, None, -1))
        self.FitP_TWG.topLevelItem(count).setText(1, QApplication.translate("MainWindow", parts_description, None, -1))
        self.FitP_TWG.topLevelItem(count).child(0).setText(0, QApplication.translate("MainWindow", "Label", None, -1))
        # self.FitP_TWG.setItemWidget(self.FitP_TWG.topLevelItem(count).child(0), 1, self.addCBB)
        # self.FitP_TWG.topLevelItem(count).child(0).setText(1, QApplication.translate("MainWindow", "L", None, -1))
        self.FitP_TWG.topLevelItem(count).child(1).setText(0, QApplication.translate("MainWindow", "Parent", None, -1))
        self.FitP_TWG.topLevelItem(count).child(1).setText(1, QApplication.translate("MainWindow", "Object", None, -1))
        self.FitP_TWG.topLevelItem(count).child(2).setText(0, QApplication.translate("MainWindow", "Bendy", None, -1))
        self.FitP_TWG.topLevelItem(count).child(2).setText(1, QApplication.translate("MainWindow", "Bendy Value", None, -1))
        self.FitP_TWG.setSortingEnabled(__sortingEnabled)
    
    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.label_2.setText(QApplication.translate("MainWindow", "Base Name", None, -1))
        self.Name_EditBT.setText(QApplication.translate("MainWindow", "Edit", None, -1))
        self.ClearBT.setText(QApplication.translate("MainWindow", "Clear", None, -1))
        self.BuildBT.setText(QApplication.translate("MainWindow", "Build", None, -1))
        self.EditModeBT.setText(QApplication.translate("MainWindow", "EditMode", None, -1))
        self.FitR_AddBT.setText(QApplication.translate("MainWindow", "Add Reference", None, -1))
        self.FitP_AddBT.setText(QApplication.translate("MainWindow", "Add Parts", None, -1))
        self.label_4.setText(QApplication.translate("MainWindow", "____Fit Reference____", None, -1))
        self.label.setText(QApplication.translate("MainWindow", "____Fit Parts____", None, -1))
        self.label_5.setText(QApplication.translate("MainWindow", "____Build____", None, -1))
        self.FitP_TWG.headerItem().setText(0, QApplication.translate("MainWindow", "Properties", None, -1))
        self.FitP_TWG.headerItem().setText(1, QApplication.translate("MainWindow", "Value", None, -1))
        self.label_9.setText(QApplication.translate("MainWindow", "AUTHOR : SUNGSEO", None, -1))
        self.label_10.setText(QApplication.translate("MainWindow", "UPDATE : 20210415", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Build_tab), QApplication.translate("MainWindow", "Build", None, -1))
        self.label_8.setText(QApplication.translate("MainWindow", "____Attach Control____", None, -1))
        self.AtcMorror_RBT.setText(QApplication.translate("MainWindow", "Mirror", None, -1))
        self.Atc_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.label_7.setText(QApplication.translate("MainWindow", "____Skinning____", None, -1))
        self.BindSkinBT.setText(QApplication.translate("MainWindow", "Bind Skin", None, -1))
        self.label_6.setText(QApplication.translate("MainWindow", "Proxy Mesh", None, -1))
        self.Proxy_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.Proxy_DeleteBT.setText(QApplication.translate("MainWindow", "Delete", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Sub_tab), QApplication.translate("MainWindow", "Sub", None, -1))

    '''
    def AddParts(self):
        self.root_ = QTreeWidgetItem(self.FitP_TWG)
        name_ = self.FitP_CBB.currentText().split('.')[0]
        self.root_.setText(0, name_)
        self.root_.setText(1, '{} Description'.format(name_))
        self.item_01 = QTreeWidgetItem()
        self.item_01.setText(0, "Label")
        self.root_.addChild(self.item_01)
        comboName_ = '{}_CBB'.format(name_)
        self.combo_ = QComboBox()
        self.combo_.addItems(["L","R","M"])
        self.combo_.setObjectName(comboName_)
        self.FitP_TWG.setItemWidget(self.item_01, 1, self.combo_)
        self.item_02 = QTreeWidgetItem()
        self.item_02.setText(0, "Parent")
        self.item_02.setText(1, "None")
        self.root_.addChild(self.item_02)
        self.item_03 = QTreeWidgetItem()
        self.item_03.setText(0, "Bendy")
        self.root_.addChild(self.item_03)
        self.spin_ = QSpinBox()
        self.FitP_TWG.setItemWidget(self.item_03, 1, self.spin_)
    '''
        
=======

    
    def partsretranslateUi(self, MainWindow, count, partName, parentObject, bendyNum):
        parts_description = '{} Description'.format(partName)
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        __sortingEnabled = self.FitP_TWG.isSortingEnabled()
        # self.FitP_TWG.setItemWidget(self.FitP_TWG.topLevelItem(count).child(0), 1, self.addCBB)
        # self.FitP_TWG.topLevelItem(count).child(0).setText(1, QApplication.translate("MainWindow", "L", None, -1))
    '''
>>>>>>> Stashed changes
        
class myUIClass(QMainWindow, QWidget, QTreeWidgetItem):
    
    def __init__(self, parent = None):
        # call the widget constructor
        super(myUIClass, self).__init__(parent)
        
        # create widget object from ui file
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        
        
        self.moduleDir_ = module_path
        self.fitDir = os.path.join(module_path[0], module_path[1])
        self.fitRDir = os.path.join(self.fitDir, "RefFit")
        self.fitRList = self.search(self.fitRDir)
        self.addRefComboBoxItem(self.fitRList)
        
        self.fitPDir = os.path.join(self.fitDir, "PartsFit")
        self.fitPList = self.search(self.fitPDir)
        self.addPartsComboBoxItem(self.fitPList)
        '''
        if self.fitRList:
            self.ui.FitR_AddBT.clicked.connect(self.addRListWidget)
        
        '''
        self.ui.FitP_AddBT.clicked.connect(self.addParts)
        
        
    def search(self, dirName):
        fullFileList = []
        fileNames = os.listdir(dirName)
        for name_ in fileNames:
            fileName = os.path.basename(name_)
            fullFileList.append(fileName)
        return fullFileList
        
        
    def addRefComboBoxItem(self, items):
        if items:
            items = items
        else:
            items = ['None']
        for i, item in enumerate(items):
                strName_ = str(item)
                self.ui.FitR_CBB.addItem(strName_)
            
            
    def addPartsComboBoxItem(self, items):
        if items:
            items = items
        else:
            items = ['None']
        for i, item in enumerate(items):
            strName_ = str(item)
            self.ui.FitP_CBB.addItem(strName_)
            
    
    def addParts(self):
        partName = str(self.ui.FitP_CBB.currentText().split('.')[0])
        self.ui.addParts(self, partName, None, None)
    

        



def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)
    

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
AutoRig tool V01

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210327

:Example:
Pakage is AutoRig.pyc

import AutoRig as msrig
msrig.runWin()

============================================================================"""
#
# when start coding 3 empty lines.
#
from maya import OpenMayaUI as omui 
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


global module_path
path_ = 'C:\msscoding\pythonWorkspace\main\mApplication\ms_module\lib\module'
module_path = os.path.split(os.path.realpath(path_))
if not module_path in sys.path:
    sys.path.append(module_path)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(430, 732)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_5 = QGridLayout(self.centralwidget)
        self.gridLayout_5.setObjectName("gridLayout_5")
        self.tabWidget = QTabWidget(self.centralwidget)
        self.tabWidget.setObjectName("tabWidget")
        self.Build_tab = QWidget()
        self.Build_tab.setObjectName("Build_tab")
        self.gridLayout_3 = QGridLayout(self.Build_tab)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.gridLayout = QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        spacerItem = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem, 29, 0, 1, 1)
<<<<<<< Updated upstream
=======
        self.label_5 = QLabel(self.Build_tab)
        self.label_5.setAlignment(Qt.AlignCenter)
        self.label_5.setObjectName("label_5")
        self.gridLayout.addWidget(self.label_5, 30, 0, 1, 1)
        self.FitR_CBB = QComboBox(self.Build_tab)
        self.FitR_CBB.setEnabled(True)
        self.FitR_CBB.setEditable(False)
        self.FitR_CBB.setCurrentText("")
        self.FitR_CBB.setObjectName("FitR_CBB")
        self.gridLayout.addWidget(self.FitR_CBB, 8, 0, 1, 1)
        self.label = QLabel(self.Build_tab)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 13, 0, 1, 1)
>>>>>>> Stashed changes
        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.label_2 = QLabel(self.Build_tab)
        self.label_2.setObjectName("label_2")
        self.horizontalLayout_2.addWidget(self.label_2)
        self.BaseNametextEdit = QTextEdit(self.Build_tab)
        sizePolicy = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.BaseNametextEdit.sizePolicy().hasHeightForWidth())
        self.BaseNametextEdit.setSizePolicy(sizePolicy)
        self.BaseNametextEdit.setMinimumSize(QSize(0, 9))
        self.BaseNametextEdit.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.BaseNametextEdit.setHorizontalScrollBarPolicy(Qt.ScrollBarAsNeeded)
        self.BaseNametextEdit.setLineWrapMode(QTextEdit.WidgetWidth)
        self.BaseNametextEdit.setTabStopWidth(80)
        self.BaseNametextEdit.setObjectName("BaseNametextEdit")
        self.horizontalLayout_2.addWidget(self.BaseNametextEdit)
        self.Name_EditBT = QPushButton(self.Build_tab)
        self.Name_EditBT.setObjectName("Name_EditBT")
        self.horizontalLayout_2.addWidget(self.Name_EditBT)
        self.gridLayout.addLayout(self.horizontalLayout_2, 18, 0, 1, 1)
<<<<<<< Updated upstream
        spacerItem1 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem1, 6, 0, 1, 1)
        self.ClearBT = QPushButton(self.Build_tab)
        self.ClearBT.setObjectName("ClearBT")
        self.gridLayout.addWidget(self.ClearBT, 19, 0, 1, 1)
        self.FitP_CBB = QComboBox(self.Build_tab)
        self.FitP_CBB.setEditable(False)
        self.FitP_CBB.setCurrentText("")
        self.FitP_CBB.setObjectName("FitP_CBB")
        self.gridLayout.addWidget(self.FitP_CBB, 14, 0, 1, 1)
        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName("horizontalLayout_6")
        self.BuildBT = QPushButton(self.Build_tab)
        self.BuildBT.setObjectName("BuildBT")
        self.horizontalLayout_6.addWidget(self.BuildBT)
        self.EditModeBT = QPushButton(self.Build_tab)
        self.EditModeBT.setObjectName("EditModeBT")
        self.horizontalLayout_6.addWidget(self.EditModeBT)
        self.gridLayout.addLayout(self.horizontalLayout_6, 31, 0, 1, 1)
        self.line_2 = QFrame(self.Build_tab)
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.gridLayout.addWidget(self.line_2, 22, 0, 1, 1)
        self.FitR_AddBT = QPushButton(self.Build_tab)
        self.FitR_AddBT.setObjectName("FitR_AddBT")
        self.gridLayout.addWidget(self.FitR_AddBT, 9, 0, 1, 1)
        self.FitP_AddBT = QPushButton(self.Build_tab)
        self.FitP_AddBT.setObjectName("FitP_AddBT")
        self.gridLayout.addWidget(self.FitP_AddBT, 15, 0, 1, 1)
        spacerItem2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem2, 12, 0, 1, 1)
        self.line = QFrame(self.Build_tab)
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setObjectName("line")
        self.gridLayout.addWidget(self.line, 11, 0, 1, 1)
=======
        self.FitP_CBB = QComboBox(self.Build_tab)
        self.FitP_CBB.setEditable(False)
        self.FitP_CBB.setCurrentText("")
        self.FitP_CBB.setObjectName("FitP_CBB")
        self.gridLayout.addWidget(self.FitP_CBB, 14, 0, 1, 1)
        spacerItem1 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem1, 6, 0, 1, 1)
        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName("horizontalLayout_6")
        self.BuildBT = QPushButton(self.Build_tab)
        self.BuildBT.setObjectName("BuildBT")
        self.horizontalLayout_6.addWidget(self.BuildBT)
        self.EditModeBT = QPushButton(self.Build_tab)
        self.EditModeBT.setObjectName("EditModeBT")
        self.horizontalLayout_6.addWidget(self.EditModeBT)
        self.gridLayout.addLayout(self.horizontalLayout_6, 31, 0, 1, 1)
        self.line_2 = QFrame(self.Build_tab)
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.gridLayout.addWidget(self.line_2, 22, 0, 1, 1)
        self.FitR_AddBT = QPushButton(self.Build_tab)
        self.FitR_AddBT.setObjectName("FitR_AddBT")
        self.gridLayout.addWidget(self.FitR_AddBT, 9, 0, 1, 1)
        self.FitP_AddBT = QPushButton(self.Build_tab)
        self.FitP_AddBT.setObjectName("FitP_AddBT")
        self.gridLayout.addWidget(self.FitP_AddBT, 15, 0, 1, 1)
        spacerItem2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem2, 12, 0, 1, 1)
        self.line = QFrame(self.Build_tab)
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setObjectName("line")
        self.gridLayout.addWidget(self.line, 11, 0, 1, 1)
        self.ClearBT = QPushButton(self.Build_tab)
        self.ClearBT.setObjectName("ClearBT")
        self.gridLayout.addWidget(self.ClearBT, 19, 0, 1, 1)
>>>>>>> Stashed changes
        self.label_4 = QLabel(self.Build_tab)
        self.label_4.setAlignment(Qt.AlignCenter)
        self.label_4.setObjectName("label_4")
        self.gridLayout.addWidget(self.label_4, 7, 0, 1, 1)
<<<<<<< Updated upstream
        self.label = QLabel(self.Build_tab)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 13, 0, 1, 1)
        self.label_5 = QLabel(self.Build_tab)
        self.label_5.setAlignment(Qt.AlignCenter)
        self.label_5.setObjectName("label_5")
        self.gridLayout.addWidget(self.label_5, 30, 0, 1, 1)
        self.FitP_TWG = QTreeWidget(self.Build_tab)
        self.FitP_TWG.setFrameShape(QFrame.StyledPanel)
        self.FitP_TWG.setFrameShadow(QFrame.Sunken)
        self.FitP_TWG.setVerticalScrollBarPolicy(Qt.ScrollBarAsNeeded)
        self.FitP_TWG.setEditTriggers(QAbstractItemView.DoubleClicked|QAbstractItemView.EditKeyPressed|QAbstractItemView.SelectedClicked)
        self.FitP_TWG.setDragEnabled(True)
        self.FitP_TWG.setAlternatingRowColors(False)
        self.FitP_TWG.setSelectionMode(QAbstractItemView.MultiSelection)
        self.FitP_TWG.setIndentation(20)
        self.FitP_TWG.setWordWrap(False)
        self.FitP_TWG.setColumnCount(2)
        self.FitP_TWG.setObjectName("FitP_TWG")
        self.FitP_TWG.header().setVisible(True)
        self.FitP_TWG.header().setCascadingSectionResizes(True)
        self.FitP_TWG.header().setDefaultSectionSize(80)
        self.FitP_TWG.header().setHighlightSections(True)
        self.FitP_TWG.header().setSortIndicatorShown(False)
        self.gridLayout.addWidget(self.FitP_TWG, 16, 0, 1, 1)
        self.FitR_CBB = QComboBox(self.Build_tab)
        self.FitR_CBB.setEnabled(True)
        self.FitR_CBB.setEditable(False)
        self.FitR_CBB.setCurrentText("")
        self.FitR_CBB.setObjectName("FitR_CBB")
        self.gridLayout.addWidget(self.FitR_CBB, 8, 0, 1, 1)
=======
        self.propertiestreeView = QTreeView(self.Build_tab)
        self.propertiestreeView.setObjectName("propertiestreeView")
        self.gridLayout.addWidget(self.propertiestreeView, 16, 0, 1, 1)
>>>>>>> Stashed changes
        self.gridLayout_3.addLayout(self.gridLayout, 0, 0, 1, 1)
        self.label_9 = QLabel(self.Build_tab)
        self.label_9.setAlignment(Qt.AlignCenter)
        self.label_9.setObjectName("label_9")
        self.gridLayout_3.addWidget(self.label_9, 2, 0, 1, 1)
        self.label_10 = QLabel(self.Build_tab)
        self.label_10.setAlignment(Qt.AlignCenter)
        self.label_10.setObjectName("label_10")
        self.gridLayout_3.addWidget(self.label_10, 3, 0, 1, 1)
        spacerItem3 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.gridLayout_3.addItem(spacerItem3, 1, 0, 1, 1)
        self.tabWidget.addTab(self.Build_tab, "")
        self.Sub_tab = QWidget()
        self.Sub_tab.setObjectName("Sub_tab")
        self.gridLayout_2 = QGridLayout(self.Sub_tab)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.label_8 = QLabel(self.Sub_tab)
        self.label_8.setAlignment(Qt.AlignCenter)
        self.label_8.setObjectName("label_8")
        self.verticalLayout_3.addWidget(self.label_8)
        self.AtcMorror_RBT = QRadioButton(self.Sub_tab)
        self.AtcMorror_RBT.setObjectName("AtcMorror_RBT")
        self.verticalLayout_3.addWidget(self.AtcMorror_RBT)
        self.Atc_CreateBT = QPushButton(self.Sub_tab)
        self.Atc_CreateBT.setObjectName("Atc_CreateBT")
        self.verticalLayout_3.addWidget(self.Atc_CreateBT)
        self.gridLayout_2.addLayout(self.verticalLayout_3, 2, 1, 1, 1)
        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.label_7 = QLabel(self.Sub_tab)
        self.label_7.setLayoutDirection(Qt.LeftToRight)
        self.label_7.setAlignment(Qt.AlignCenter)
        self.label_7.setObjectName("label_7")
        self.verticalLayout.addWidget(self.label_7)
        self.BindSkinBT = QPushButton(self.Sub_tab)
        self.BindSkinBT.setObjectName("BindSkinBT")
        self.verticalLayout.addWidget(self.BindSkinBT)
        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setSpacing(6)
        self.verticalLayout_2.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.label_6 = QLabel(self.Sub_tab)
        self.label_6.setObjectName("label_6")
        self.verticalLayout_2.addWidget(self.label_6)
        self.gridLayout_4 = QGridLayout()
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.Proxy_CreateBT = QPushButton(self.Sub_tab)
        self.Proxy_CreateBT.setObjectName("Proxy_CreateBT")
        self.gridLayout_4.addWidget(self.Proxy_CreateBT, 0, 0, 1, 1)
        self.Proxy_DeleteBT = QPushButton(self.Sub_tab)
        self.Proxy_DeleteBT.setObjectName("Proxy_DeleteBT")
        self.gridLayout_4.addWidget(self.Proxy_DeleteBT, 0, 1, 1, 1)
        self.verticalLayout_2.addLayout(self.gridLayout_4)
        self.verticalLayout.addLayout(self.verticalLayout_2)
        self.gridLayout_2.addLayout(self.verticalLayout, 0, 1, 1, 1)
        self.line_4 = QFrame(self.Sub_tab)
        self.line_4.setFrameShape(QFrame.HLine)
        self.line_4.setFrameShadow(QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.gridLayout_2.addWidget(self.line_4, 1, 1, 1, 1)
        self.tabWidget.addTab(self.Sub_tab, "")
        self.gridLayout_5.addWidget(self.tabWidget, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setGeometry(QRect(0, 0, 430, 21))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        self.tabWidget.setCurrentIndex(0)
        self.FitR_CBB.setCurrentIndex(-1)
        QMetaObject.connectSlotsByName(MainWindow)
<<<<<<< Updated upstream

=======
 
    
    def treeItem(self):
        self.model = QStandardItemModel()
        self.model.setHorizontalHeaderLabels(['Properties', 'Value'])
        self.tree.header().setDefaultSectionSize(180)
        self.tree.setModel(self.model)
    
    def addTreeView(self):
        for j, _type in enumerate(data):
         	item = QStandardItem(_type["type"])
         	for obj in _type["objects"]:
         		child = QStandardItem(obj)
         		item.appendRow(child)
         	self.setItem(j, 0, item)
    
    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.label_5.setText(QApplication.translate("MainWindow", "____Build____", None, -1))
        self.label.setText(QApplication.translate("MainWindow", "____Fit Parts____", None, -1))
        self.label_2.setText(QApplication.translate("MainWindow", "Base Name", None, -1))
        self.Name_EditBT.setText(QApplication.translate("MainWindow", "Edit", None, -1))
        self.BuildBT.setText(QApplication.translate("MainWindow", "Build", None, -1))
        self.EditModeBT.setText(QApplication.translate("MainWindow", "EditMode", None, -1))
        self.FitR_AddBT.setText(QApplication.translate("MainWindow", "Add Reference", None, -1))
        self.FitP_AddBT.setText(QApplication.translate("MainWindow", "Add Parts", None, -1))
        self.ClearBT.setText(QApplication.translate("MainWindow", "Clear", None, -1))
        self.label_4.setText(QApplication.translate("MainWindow", "____Fit Reference____", None, -1))
        self.label_9.setText(QApplication.translate("MainWindow", "AUTHOR : SUNGSEO", None, -1))
        self.label_10.setText(QApplication.translate("MainWindow", "UPDATE : 20210415", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Build_tab), QApplication.translate("MainWindow", "Build", None, -1))
        self.label_8.setText(QApplication.translate("MainWindow", "____Attach Control____", None, -1))
        self.AtcMorror_RBT.setText(QApplication.translate("MainWindow", "Mirror", None, -1))
        self.Atc_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.label_7.setText(QApplication.translate("MainWindow", "____Skinning____", None, -1))
        self.BindSkinBT.setText(QApplication.translate("MainWindow", "Bind Skin", None, -1))
        self.label_6.setText(QApplication.translate("MainWindow", "Proxy Mesh", None, -1))
        self.Proxy_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.Proxy_DeleteBT.setText(QApplication.translate("MainWindow", "Delete", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Sub_tab), QApplication.translate("MainWindow", "Sub", None, -1))

    '''
>>>>>>> Stashed changes
    def addParts(self, MainWindow, partName, parentObject, bendyNum):
        item_0 = QTreeWidgetItem(self.FitP_TWG)
        item_1 = QTreeWidgetItem(item_0)
        item_1 = QTreeWidgetItem(item_0)
        item_1 = QTreeWidgetItem(item_0)
        TreeCount = self.treeCount(self.FitP_TWG)
        CBBName = '{}_{}'.format(partName,TreeCount)
        self.addCBB = self.addComboBox(CBBName)
        self.partsretranslateUi(MainWindow, TreeCount, partName, parentObject, bendyNum)
    
    def treeCount(self, tree_, item_ = 0):
        count = 0
        if item_ ==0:
            topCount = tree_.topLevelItemCount()
            for i in range(topCount):
                item_ = tree_.topLevelItem(i)
                if item_.isExpanded():
                    count += treeCount(tree_, item_)
            
            count += topCount

        else:
            childCount = item_.childCount()
            for i in range(childCount):
                item_ = parent_.child(i)
                if item_.isExpanded():
                    count += treeCount(tree_, item)
            
            count += childCount
        return count-1

<<<<<<< Updated upstream
    def delegate(self, )
=======
>>>>>>> Stashed changes
    
    def addComboBox(self, partName):
        comboName_ = '{}_CBB'.format(partName)
        self.combo_ = QComboBox()
        self.combo_.addItems(["L","R","M"])
        self.combo_.setObjectName(comboName_)
        return self.combo_
<<<<<<< Updated upstream

    
    def partsretranslateUi(self, MainWindow, count, partName, parentObject, bendyNum):
        parts_description = '{} Description'.format(partName)
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        __sortingEnabled = self.FitP_TWG.isSortingEnabled()
        self.FitP_TWG.setSortingEnabled(False)
        self.FitP_TWG.topLevelItem(count).setText(0, QApplication.translate("MainWindow", partName, None, -1))
        self.FitP_TWG.topLevelItem(count).setText(1, QApplication.translate("MainWindow", parts_description, None, -1))
        self.FitP_TWG.topLevelItem(count).child(0).setText(0, QApplication.translate("MainWindow", "Label", None, -1))
        # self.FitP_TWG.setItemWidget(self.FitP_TWG.topLevelItem(count).child(0), 1, self.addCBB)
        # self.FitP_TWG.topLevelItem(count).child(0).setText(1, QApplication.translate("MainWindow", "L", None, -1))
        self.FitP_TWG.topLevelItem(count).child(1).setText(0, QApplication.translate("MainWindow", "Parent", None, -1))
        self.FitP_TWG.topLevelItem(count).child(1).setText(1, QApplication.translate("MainWindow", "Object", None, -1))
        self.FitP_TWG.topLevelItem(count).child(2).setText(0, QApplication.translate("MainWindow", "Bendy", None, -1))
        self.FitP_TWG.topLevelItem(count).child(2).setText(1, QApplication.translate("MainWindow", "Bendy Value", None, -1))
        self.FitP_TWG.setSortingEnabled(__sortingEnabled)
    
    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.label_2.setText(QApplication.translate("MainWindow", "Base Name", None, -1))
        self.Name_EditBT.setText(QApplication.translate("MainWindow", "Edit", None, -1))
        self.ClearBT.setText(QApplication.translate("MainWindow", "Clear", None, -1))
        self.BuildBT.setText(QApplication.translate("MainWindow", "Build", None, -1))
        self.EditModeBT.setText(QApplication.translate("MainWindow", "EditMode", None, -1))
        self.FitR_AddBT.setText(QApplication.translate("MainWindow", "Add Reference", None, -1))
        self.FitP_AddBT.setText(QApplication.translate("MainWindow", "Add Parts", None, -1))
        self.label_4.setText(QApplication.translate("MainWindow", "____Fit Reference____", None, -1))
        self.label.setText(QApplication.translate("MainWindow", "____Fit Parts____", None, -1))
        self.label_5.setText(QApplication.translate("MainWindow", "____Build____", None, -1))
        self.FitP_TWG.headerItem().setText(0, QApplication.translate("MainWindow", "Properties", None, -1))
        self.FitP_TWG.headerItem().setText(1, QApplication.translate("MainWindow", "Value", None, -1))
        self.label_9.setText(QApplication.translate("MainWindow", "AUTHOR : SUNGSEO", None, -1))
        self.label_10.setText(QApplication.translate("MainWindow", "UPDATE : 20210415", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Build_tab), QApplication.translate("MainWindow", "Build", None, -1))
        self.label_8.setText(QApplication.translate("MainWindow", "____Attach Control____", None, -1))
        self.AtcMorror_RBT.setText(QApplication.translate("MainWindow", "Mirror", None, -1))
        self.Atc_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.label_7.setText(QApplication.translate("MainWindow", "____Skinning____", None, -1))
        self.BindSkinBT.setText(QApplication.translate("MainWindow", "Bind Skin", None, -1))
        self.label_6.setText(QApplication.translate("MainWindow", "Proxy Mesh", None, -1))
        self.Proxy_CreateBT.setText(QApplication.translate("MainWindow", "Create", None, -1))
        self.Proxy_DeleteBT.setText(QApplication.translate("MainWindow", "Delete", None, -1))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Sub_tab), QApplication.translate("MainWindow", "Sub", None, -1))

    '''
    def AddParts(self):
        self.root_ = QTreeWidgetItem(self.FitP_TWG)
        name_ = self.FitP_CBB.currentText().split('.')[0]
        self.root_.setText(0, name_)
        self.root_.setText(1, '{} Description'.format(name_))
        self.item_01 = QTreeWidgetItem()
        self.item_01.setText(0, "Label")
        self.root_.addChild(self.item_01)
        comboName_ = '{}_CBB'.format(name_)
        self.combo_ = QComboBox()
        self.combo_.addItems(["L","R","M"])
        self.combo_.setObjectName(comboName_)
        self.FitP_TWG.setItemWidget(self.item_01, 1, self.combo_)
        self.item_02 = QTreeWidgetItem()
        self.item_02.setText(0, "Parent")
        self.item_02.setText(1, "None")
        self.root_.addChild(self.item_02)
        self.item_03 = QTreeWidgetItem()
        self.item_03.setText(0, "Bendy")
        self.root_.addChild(self.item_03)
        self.spin_ = QSpinBox()
        self.FitP_TWG.setItemWidget(self.item_03, 1, self.spin_)
    '''
        
=======

    
    def partsretranslateUi(self, MainWindow, count, partName, parentObject, bendyNum):
        parts_description = '{} Description'.format(partName)
        MainWindow.setWindowTitle(QApplication.translate("MainWindow", "MainWindow", None, -1))
        __sortingEnabled = self.FitP_TWG.isSortingEnabled()
        # self.FitP_TWG.setItemWidget(self.FitP_TWG.topLevelItem(count).child(0), 1, self.addCBB)
        # self.FitP_TWG.topLevelItem(count).child(0).setText(1, QApplication.translate("MainWindow", "L", None, -1))
    '''
>>>>>>> Stashed changes
        
class myUIClass(QMainWindow, QWidget, QTreeWidgetItem):
    
    def __init__(self, parent = None):
        # call the widget constructor
        super(myUIClass, self).__init__(parent)
        
        # create widget object from ui file
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        
        
        self.moduleDir_ = module_path
        self.fitDir = os.path.join(module_path[0], module_path[1])
        self.fitRDir = os.path.join(self.fitDir, "RefFit")
        self.fitRList = self.search(self.fitRDir)
        self.addRefComboBoxItem(self.fitRList)
        
        self.fitPDir = os.path.join(self.fitDir, "PartsFit")
        self.fitPList = self.search(self.fitPDir)
        self.addPartsComboBoxItem(self.fitPList)
        '''
        if self.fitRList:
            self.ui.FitR_AddBT.clicked.connect(self.addRListWidget)
        
        '''
        self.ui.FitP_AddBT.clicked.connect(self.addParts)
        
        
    def search(self, dirName):
        fullFileList = []
        fileNames = os.listdir(dirName)
        for name_ in fileNames:
            fileName = os.path.basename(name_)
            fullFileList.append(fileName)
        return fullFileList
        
        
    def addRefComboBoxItem(self, items):
        if items:
            items = items
        else:
            items = ['None']
        for i, item in enumerate(items):
                strName_ = str(item)
                self.ui.FitR_CBB.addItem(strName_)
            
            
    def addPartsComboBoxItem(self, items):
        if items:
            items = items
        else:
            items = ['None']
        for i, item in enumerate(items):
            strName_ = str(item)
            self.ui.FitP_CBB.addItem(strName_)
            
    
    def addParts(self):
        partName = str(self.ui.FitP_CBB.currentText().split('.')[0])
        self.ui.addParts(self, partName, None, None)
    

        



def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)
    

def runWin():
    global myWin
    try:
        myWin.close()
    except:
        pass
    myWin = myUIClass(parent=maya_main_window())
    myWin.show()

>>>>>>> 7fbe2e4865dac72f9e1d3236bb58bc662cf9bf6b
runWin()