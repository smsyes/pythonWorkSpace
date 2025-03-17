# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
CNTManager

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20220114

:Example:
Pakage is CNTManager2.pyc

from rigSupport.ui.convert import CNTManager2
try:
    from imp import *
except:
    pass
reload(CNTManager2)

============================================================================"""
#
# when start coding 3 empty lines.
#
import sys
import maya.OpenMayaUI as omui
from pymel.core import *
import pymel.core.datatypes as dt

from PySide6.QtCore import * 
from PySide6.QtGui import * 
from PySide6.QtWidgets import *
from PySide6 import __version__
from shiboken6 import wrapInstance
from PySide6 import QtCore, QtGui, QtWidgets

class Ui_CNTManager(object):
    def setupUi(self, CNTManager):
        CNTManager.setObjectName("CNTManager")
        CNTManager.resize(430, 650)
        self.gridLayout_3 = QtWidgets.QGridLayout(CNTManager)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.horizontalLayout_5 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_5.setObjectName("horizontalLayout_5")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.AlistWidget = QtWidgets.QListWidget(CNTManager)
        self.AlistWidget.setDragEnabled(True)
        self.AlistWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.AlistWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.AlistWidget.setObjectName("AlistWidget")
        self.gridLayout.addWidget(self.AlistWidget, 0, 0, 1, 2)
        self.AAddPB = QtWidgets.QPushButton(CNTManager)
        self.AAddPB.setObjectName("AAddPB")
        self.gridLayout.addWidget(self.AAddPB, 1, 0, 1, 1)
        self.ARemovePB = QtWidgets.QPushButton(CNTManager)
        self.ARemovePB.setObjectName("ARemovePB")
        self.gridLayout.addWidget(self.ARemovePB, 1, 1, 1, 1)
        self.horizontalLayout_5.addLayout(self.gridLayout)
        self.verticalLayout_3 = QtWidgets.QVBoxLayout()
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_3.addItem(spacerItem)
        self.SortPB = QtWidgets.QPushButton(CNTManager)
        self.SortPB.setFlat(True)
        self.SortPB.setObjectName("SortPB")
        self.verticalLayout_3.addWidget(self.SortPB)
        self.ChangePB = QtWidgets.QPushButton(CNTManager)
        self.ChangePB.setFlat(True)
        self.ChangePB.setObjectName("ChangePB")
        self.verticalLayout_3.addWidget(self.ChangePB)
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.OneToNRB = QtWidgets.QRadioButton(CNTManager)
        self.OneToNRB.setChecked(False)
        self.OneToNRB.setObjectName("OneToNRB")
        self.verticalLayout.addWidget(self.OneToNRB)
        self.NToNRB = QtWidgets.QRadioButton(CNTManager)
        self.NToNRB.setChecked(True)
        self.NToNRB.setObjectName("NToNRB")
        self.verticalLayout.addWidget(self.NToNRB)
        self.verticalLayout_3.addLayout(self.verticalLayout)
        spacerItem1 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_3.addItem(spacerItem1)
        self.horizontalLayout_5.addLayout(self.verticalLayout_3)
        self.gridLayout_2 = QtWidgets.QGridLayout()
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.BlistWidget = QtWidgets.QListWidget(CNTManager)
        self.BlistWidget.setDragEnabled(True)
        self.BlistWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.BlistWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.BlistWidget.setObjectName("BlistWidget")
        self.gridLayout_2.addWidget(self.BlistWidget, 0, 0, 1, 2)
        self.BAddPB = QtWidgets.QPushButton(CNTManager)
        self.BAddPB.setObjectName("BAddPB")
        self.gridLayout_2.addWidget(self.BAddPB, 1, 0, 1, 1)
        self.BRemovePB = QtWidgets.QPushButton(CNTManager)
        self.BRemovePB.setObjectName("BRemovePB")
        self.gridLayout_2.addWidget(self.BRemovePB, 1, 1, 1, 1)
        self.horizontalLayout_5.addLayout(self.gridLayout_2)
        self.gridLayout_3.addLayout(self.horizontalLayout_5, 0, 0, 1, 1)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.OutLE = QtWidgets.QLineEdit(CNTManager)
        self.OutLE.setObjectName("OutLE")
        self.horizontalLayout_2.addWidget(self.OutLE)
        self.ConnectionPB = QtWidgets.QPushButton(CNTManager)
        self.ConnectionPB.setFlat(True)
        self.ConnectionPB.setObjectName("ConnectionPB")
        self.horizontalLayout_2.addWidget(self.ConnectionPB)
        self.InLE = QtWidgets.QLineEdit(CNTManager)
        self.InLE.setObjectName("InLE")
        self.horizontalLayout_2.addWidget(self.InLE)
        self.verticalLayout_2.addLayout(self.horizontalLayout_2)
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.GetSetPB = QtWidgets.QPushButton(CNTManager)
        self.GetSetPB.setObjectName("GetSetPB")
        self.horizontalLayout_3.addWidget(self.GetSetPB)
        self.PPPB = QtWidgets.QPushButton(CNTManager)
        self.PPPB.setObjectName("PPPB")
        self.horizontalLayout_3.addWidget(self.PPPB)
        self.SetDrivenPB = QtWidgets.QPushButton(CNTManager)
        self.SetDrivenPB.setObjectName("SetDrivenPB")
        self.horizontalLayout_3.addWidget(self.SetDrivenPB)
        self.verticalLayout_2.addLayout(self.horizontalLayout_3)
        self.line = QtWidgets.QFrame(CNTManager)
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.verticalLayout_2.addWidget(self.line)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.AllCKB = QtWidgets.QCheckBox(CNTManager)
        self.AllCKB.setChecked(True)
        self.AllCKB.setObjectName("AllCKB")
        self.horizontalLayout.addWidget(self.AllCKB)
        self.TransCKB = QtWidgets.QCheckBox(CNTManager)
        self.TransCKB.setChecked(False)
        self.TransCKB.setObjectName("TransCKB")
        self.horizontalLayout.addWidget(self.TransCKB)
        self.RotCKB = QtWidgets.QCheckBox(CNTManager)
        self.RotCKB.setObjectName("RotCKB")
        self.horizontalLayout.addWidget(self.RotCKB)
        self.ScaleCKB = QtWidgets.QCheckBox(CNTManager)
        self.ScaleCKB.setObjectName("ScaleCKB")
        self.horizontalLayout.addWidget(self.ScaleCKB)
        self.ShearCKB = QtWidgets.QCheckBox(CNTManager)
        self.ShearCKB.setObjectName("ShearCKB")
        self.horizontalLayout.addWidget(self.ShearCKB)
        self.PivotCKB = QtWidgets.QCheckBox(CNTManager)
        self.PivotCKB.setChecked(True)
        self.PivotCKB.setObjectName("PivotCKB")
        self.horizontalLayout.addWidget(self.PivotCKB)
        self.verticalLayout_2.addLayout(self.horizontalLayout)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.MatchPB = QtWidgets.QPushButton(CNTManager)
        self.MatchPB.setObjectName("MatchPB")
        self.horizontalLayout_4.addWidget(self.MatchPB)
        self.MConPB = QtWidgets.QPushButton(CNTManager)
        self.MConPB.setObjectName("MConPB")
        self.horizontalLayout_4.addWidget(self.MConPB)
        self.ConstPB = QtWidgets.QPushButton(CNTManager)
        self.ConstPB.setObjectName("ConstPB")
        self.horizontalLayout_4.addWidget(self.ConstPB)
        self.verticalLayout_2.addLayout(self.horizontalLayout_4)
        self.gridLayout_3.addLayout(self.verticalLayout_2, 1, 0, 1, 1)
        self.verticalLayout_4 = QtWidgets.QVBoxLayout()
        self.verticalLayout_4.setObjectName("verticalLayout_4")
        self.AUTHORLB = QtWidgets.QLabel(CNTManager)
        self.AUTHORLB.setAlignment(QtCore.Qt.AlignCenter)
        self.AUTHORLB.setObjectName("AUTHORLB")
        self.verticalLayout_4.addWidget(self.AUTHORLB)
        self.UPDATALB = QtWidgets.QLabel(CNTManager)
        self.UPDATALB.setAlignment(QtCore.Qt.AlignCenter)
        self.UPDATALB.setObjectName("UPDATALB")
        self.verticalLayout_4.addWidget(self.UPDATALB)
        self.gridLayout_3.addLayout(self.verticalLayout_4, 2, 0, 1, 1)

        self.retranslateUi(CNTManager)
        QtCore.QMetaObject.connectSlotsByName(CNTManager)

    def retranslateUi(self, CNTManager):
        CNTManager.setWindowTitle(QtWidgets.QApplication.translate("CNTManager", "CNTManager", None, -1))
        self.AAddPB.setText(QtWidgets.QApplication.translate("CNTManager", "Add", None, -1))
        self.ARemovePB.setText(QtWidgets.QApplication.translate("CNTManager", "Remove", None, -1))
        self.SortPB.setText(QtWidgets.QApplication.translate("CNTManager", "Sort", None, -1))
        self.ChangePB.setText(QtWidgets.QApplication.translate("CNTManager", "Change", None, -1))
        self.OneToNRB.setText(QtWidgets.QApplication.translate("CNTManager", "One To N", None, -1))
        self.NToNRB.setText(QtWidgets.QApplication.translate("CNTManager", "N To N", None, -1))
        self.BAddPB.setText(QtWidgets.QApplication.translate("CNTManager", "Add", None, -1))
        self.BRemovePB.setText(QtWidgets.QApplication.translate("CNTManager", "Remove", None, -1))
        self.OutLE.setText(QtWidgets.QApplication.translate("CNTManager", "OutPut..", None, -1))
        self.ConnectionPB.setText(QtWidgets.QApplication.translate("CNTManager", ">>", None, -1))
        self.InLE.setText(QtWidgets.QApplication.translate("CNTManager", "InPut..", None, -1))
        self.GetSetPB.setText(QtWidgets.QApplication.translate("CNTManager", "Get Set", None, -1))
        self.PPPB.setText(QtWidgets.QApplication.translate("CNTManager", "PParent", None, -1))
        self.SetDrivenPB.setText(QtWidgets.QApplication.translate("CNTManager", "SetDriven", None, -1))
        self.AllCKB.setText(QtWidgets.QApplication.translate("CNTManager", "All", None, -1))
        self.TransCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Trans", None, -1))
        self.RotCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Rot", None, -1))
        self.ScaleCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Scale", None, -1))
        self.ShearCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Shear", None, -1))
        self.PivotCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Pivot", None, -1))
        self.MatchPB.setText(QtWidgets.QApplication.translate("CNTManager", "Match", None, -1))
        self.MConPB.setText(QtWidgets.QApplication.translate("CNTManager", "MCon", None, -1))
        self.ConstPB.setText(QtWidgets.QApplication.translate("CNTManager", "Const", None, -1))
        self.AUTHORLB.setText(QtWidgets.QApplication.translate("CNTManager", "AUTHOR : MinSung", None, -1))
        self.UPDATALB.setText(QtWidgets.QApplication.translate("CNTManager", "UPDATE : 20220114", None, -1))
        self.PivotCKB.setObjectName("PivotCKB")
        self.horizontalLayout.addWidget(self.PivotCKB)
        self.verticalLayout_2.addLayout(self.horizontalLayout)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.MatchPB = QtWidgets.QPushButton(CNTManager)
        self.MatchPB.setObjectName("MatchPB")
        self.horizontalLayout_4.addWidget(self.MatchPB)
        self.MConPB = QtWidgets.QPushButton(CNTManager)
        self.MConPB.setObjectName("MConPB")
        self.horizontalLayout_4.addWidget(self.MConPB)
        self.ConstPB = QtWidgets.QPushButton(CNTManager)
        self.ConstPB.setObjectName("ConstPB")
        self.horizontalLayout_4.addWidget(self.ConstPB)
        self.verticalLayout_2.addLayout(self.horizontalLayout_4)
        self.gridLayout_3.addLayout(self.verticalLayout_2, 1, 0, 1, 1)
        self.verticalLayout_4 = QtWidgets.QVBoxLayout()
        self.verticalLayout_4.setObjectName("verticalLayout_4")
        self.AUTHORLB = QtWidgets.QLabel(CNTManager)
        self.AUTHORLB.setAlignment(QtCore.Qt.AlignCenter)
        self.AUTHORLB.setObjectName("AUTHORLB")
        self.verticalLayout_4.addWidget(self.AUTHORLB)
        self.UPDATALB = QtWidgets.QLabel(CNTManager)
        self.UPDATALB.setAlignment(QtCore.Qt.AlignCenter)
        self.UPDATALB.setObjectName("UPDATALB")
        self.verticalLayout_4.addWidget(self.UPDATALB)
        self.gridLayout_3.addLayout(self.verticalLayout_4, 2, 0, 1, 1)

        self.retranslateUi(CNTManager)
        QtCore.QMetaObject.connectSlotsByName(CNTManager)

    def retranslateUi(self, CNTManager):
        CNTManager.setWindowTitle(QtWidgets.QApplication.translate("CNTManager", "CNTManager", None, -1))
        self.AAddPB.setText(QtWidgets.QApplication.translate("CNTManager", "Add", None, -1))
        self.ARemovePB.setText(QtWidgets.QApplication.translate("CNTManager", "Remove", None, -1))
        self.SortPB.setText(QtWidgets.QApplication.translate("CNTManager", "Sort", None, -1))
        self.ChangePB.setText(QtWidgets.QApplication.translate("CNTManager", "Change", None, -1))
        self.OneToNRB.setText(QtWidgets.QApplication.translate("CNTManager", "One To N", None, -1))
        self.NToNRB.setText(QtWidgets.QApplication.translate("CNTManager", "N To N", None, -1))
        self.BAddPB.setText(QtWidgets.QApplication.translate("CNTManager", "Add", None, -1))
        self.BRemovePB.setText(QtWidgets.QApplication.translate("CNTManager", "Remove", None, -1))
        self.OutLE.setText(QtWidgets.QApplication.translate("CNTManager", "OutPut..", None, -1))
        self.ConnectionPB.setText(QtWidgets.QApplication.translate("CNTManager", ">>", None, -1))
        self.InLE.setText(QtWidgets.QApplication.translate("CNTManager", "InPut..", None, -1))
        self.GetSetPB.setText(QtWidgets.QApplication.translate("CNTManager", "Get Set", None, -1))
        self.PPPB.setText(QtWidgets.QApplication.translate("CNTManager", "PParent", None, -1))
        self.SetDrivenPB.setText(QtWidgets.QApplication.translate("CNTManager", "SetDriven", None, -1))
        self.AllCKB.setText(QtWidgets.QApplication.translate("CNTManager", "All", None, -1))
        self.TransCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Trans", None, -1))
        self.RotCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Rot", None, -1))
        self.ScaleCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Scale", None, -1))
        self.ShearCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Shear", None, -1))
        self.PivotCKB.setText(QtWidgets.QApplication.translate("CNTManager", "Pivot", None, -1))
        self.MatchPB.setText(QtWidgets.QApplication.translate("CNTManager", "Match", None, -1))
        self.MConPB.setText(QtWidgets.QApplication.translate("CNTManager", "MCon", None, -1))
        self.ConstPB.setText(QtWidgets.QApplication.translate("CNTManager", "Const", None, -1))
        self.AUTHORLB.setText(QtWidgets.QApplication.translate("CNTManager", "AUTHOR : MinSung", None, -1))
        self.UPDATALB.setText(QtWidgets.QApplication.translate("CNTManager", "UPDATE : 20220114", None, -1))

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = Ui_CNTManager()
        self.ui.setupUi(self)
        
        self.Alist_ = self.ui.AlistWidget
        self.Blist_ = self.ui.BlistWidget
        self.ui.AAddPB.clicked.connect(self.addAListWidget)
        self.ui.BAddPB.clicked.connect(self.addBListWidget)
        self.ui.ARemovePB.clicked.connect(self.AremoveCurrentItem)
        self.ui.BRemovePB.clicked.connect(self.BremoveCurrentItem)
        self.ui.SortPB.clicked.connect(self.SortItems)
        self.ui.ChangePB.clicked.connect(self.ChangeItems)
        self.ui.PPPB.clicked.connect(self.pparentItems)
        self.ui.OneToNRB.clicked.connect(self.ConnectionMode)
        self.ui.NToNRB.clicked.connect(self.ConnectionMode)
        self.ui.ConnectionPB.clicked.connect(self.ListConnect)
        self.ui.GetSetPB.clicked.connect(self.ListSet)
        self.ui.ConstPB.clicked.connect(self.Constraints)
        self.ui.MatchPB.clicked.connect(self.MatchTransform)
        self.ui.SetDrivenPB.clicked.connect(self.SetDrivens)
        self.ui.MConPB.clicked.connect(self.MConst)
        
    # Pressing the AddItem button adds the selected items to the A list.
    def addAListWidget(self):
        self.Alist_.clear()
        self.list_ = ls(sl=1, fl=1, r=1)
        for i in self.list_:
            strName_ = str(i)
            self.Alist_.addItem(strName_)
        select(cl=1)
 
           
    def addBListWidget(self):
        self.Blist_.clear()
        self.list_ = ls(sl=1, fl=1, r=1)
        for i in self.list_:
            strName_ = str(i)
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
        AAllList_.sort()
        BAllList_ = self.BAllListItem()
        BAllList_.sort()
        select(AAllList_)
        self.addAListWidget()
        select(BAllList_)
        self.addBListWidget()
        
    # Swap the contents of list A and list B
    def ChangeItems(self):
        AAllList_ = self.AAllListItem()
        BAllList_ = self.BAllListItem()
        select(BAllList_)
        self.addAListWidget()
        select(AAllList_)
        self.addBListWidget()

        
    # Connection mode of selected list A and list B    
    def ConnectionMode(self):
        self.ASelectList = self.AprintMultiItems()[1]
        self.BSelectList = self.BprintMultiItems()[1]
        return self.ASelectList, self.BSelectList

    
    # get attribbutes name    
    def PrintTextEdit(self) :
        outAttr = self.ui.OutLE.text()
        inAttr = self.ui.InLE.text()
        return outAttr, inAttr

                    
    def ListConnect(self):
        outAttr, inAttr = self.PrintTextEdit()
        item_, target_ = self.ConnectionMode()
        undoInfo(openChunk=True)
        try:
            for i, tgt in enumerate(target_):
                if self.ui.OneToNRB.isChecked():
                    i = 0
                elif self.ui.NToNRB.isChecked():
                    i = i
                item_[i].attr(outAttr) >> tgt.attr(inAttr)
        finally:
            undoInfo(closeChunk=True)


    def ListSet(self):
        outAttr, inAttr = self.PrintTextEdit()
        item_, target_ = self.ConnectionMode()
        undoInfo(openChunk=True)
        try:
            for i, tgt in enumerate(target_):
                if self.ui.OneToNRB.isChecked():
                    i = 0
                elif self.ui.NToNRB.isChecked():
                    i = i
                getAttr = item_[i].attr(outAttr).get()
                tgt.attr(inAttr).set(getAttr)
        finally:
            undoInfo(closeChunk=True)
    

     # Pparent list A to list B
    def pparentItems(self):
        item_, target_ = self.ConnectionMode()
        undoInfo(openChunk=True)
        try:
            for i, tgt in enumerate(target_):
                if self.ui.OneToNRB.isChecked():
                    i = 0
                elif self.ui.NToNRB.isChecked():
                    i = i
                parent(item_[i], tgt)
        finally:
            undoInfo(closeChunk=True)

    
    def SetDrivens(self):
        outAttr, inAttr = self.PrintTextEdit()
        item_, target_ = self.ConnectionMode()
        undoInfo(openChunk=True)
        try:
            for i, tgt in enumerate(target_):
                if self.ui.OneToNRB.isChecked():
                    i = 0
                elif self.ui.NToNRB.isChecked():
                    i = i
                setDrivenKeyframe(tgt.attr(inAttr).name(), cd=item_[i].attr(outAttr).name())
        finally:
            undoInfo(closeChunk=True)


    # Constraint Type
    def Constraint_(self, *args, **kwargs):
        if self.ui.AllCKB.isChecked():
            parentConstraint(args, maintainOffset=kwargs['mo'])
        if self.ui.TransCKB.isChecked():
            pointConstraint(args, maintainOffset=kwargs['mo'])
        if self.ui.RotCKB.isChecked():
            orientConstraint(args, maintainOffset=kwargs['mo'])
        if self.ui.ScaleCKB.isChecked():
            scaleConstraint(args, maintainOffset=kwargs['mo'])


    # Constraint for each object by pressing the Constraint button
    def Constraints(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.PivotCKB.isChecked():
            mo_=1
        else:
            mo_=0
        undoInfo(openChunk=True)
        try:
            for i, tgt in enumerate(target_):
                if self.ui.OneToNRB.isChecked():
                    i = 0
                elif self.ui.NToNRB.isChecked():
                    i = i
                self.Constraint_(item_[i], tgt, mo=mo_)
        finally:
            undoInfo(closeChunk=True)
    

    def MatchTransform(self):
        item_, target_ = self.ConnectionMode()
        undoInfo(openChunk=True)
        try:
            for i, tgt in enumerate(target_):
                if self.ui.OneToNRB.isChecked():
                    i = 0
                elif self.ui.NToNRB.isChecked():
                    i = i
                if self.ui.AllCKB.isChecked():
                    matchTransform(item_[i], tgt)
                if self.ui.TransCKB.isChecked():
                    matchTransform(item_[i], tgt, pos=True)
                if self.ui.RotCKB.isChecked():
                    matchTransform(item_[i], tgt, rot=True)
                if self.ui.ScaleCKB.isChecked():
                    matchTransform(item_[i], tgt, scl=True)
                if self.ui.PivotCKB.isChecked():
                    matchTransform(item_[i], tgt, piv=True)
        finally:
            undoInfo(closeChunk=True)

    
    def MConst(self):
        item_, target_ = self.ConnectionMode()
        if self.ui.PivotCKB.isChecked():
            piv_=1
        else:
            piv_=0
        undoInfo(openChunk=True)
        try:
            for i, tgt in enumerate(target_):
                if self.ui.OneToNRB.isChecked():
                    i = 0
                elif self.ui.NToNRB.isChecked():
                    i = i
                mm=createNode('multMatrix',n='%sMM'% tgt)
                dm=createNode('decomposeMatrix',n='%sDM'% tgt)
                if piv_ == 1 :
                    tgScalePivotMtx=dt.Matrix()
                    tgScalePivotMtx[3]=tgt.getScalePivot(space='transform')
                    mm.i[0].set( tgScalePivotMtx )
                    mm.i[1].set( tgt.getMatrix(worldSpace=1) )
                    mm.i[2].set( item_[i].getMatrix(worldSpace=1).inverse() )
                    item_[i].wm >> mm.i[3]
                    tgt.pim >> mm.i[4]
                    tgTMRPM=dt.Matrix()
                    tgTMRPM[3]=tgt.transMinusRotatePivot.get()
                    mm.i[5].set(tgTMRPM)
                else:
                    mm.i[0].set( tgt.getMatrix(worldSpace=1) )
                    mm.i[1].set( item_[i].getMatrix(worldSpace=1).inverse() )
                    item_[i].wm >> mm.i[2]
                    tgt.pim >> mm.i[3]
                mm.o >> dm.imat
                if self.ui.AllCKB.isChecked() or self.ui.TransCKB.isChecked():
                    dm.ot >> tgt.t
                if self.ui.AllCKB.isChecked() or self.ui.RotCKB.isChecked():
                    if tgt.nodeType()=='joint':
                        eq=createNode('eulerToQuat', n='%sEQ'%tgt)
                        qi=createNode('quatInvert', n='%sQI'%tgt)
                        qp=createNode('quatProd', n='%sQP'%tgt)
                        qe=createNode('quatToEuler', n='%sQE'%tgt)
                        tgt.jo >> eq.irt
                        eq.oq >> qi.iq
                        dm.oq >> qp.iq1
                        qi.oq >> qp.iq2
                        qp.oq >> qe.iq
                        qe.ort >> tgt.r
                    else:
                        dm.attr('or') >> tgt.r
                if  self.ui.AllCKB.isChecked() or self.ui.ScaleCKB.isChecked():
                    dm.os >> tgt.s
                if self.ui.AllCKB.isChecked() or self.ui.ShearCKB.isChecked():
                    dm.osh >> tgt.sh
        finally:
            undoInfo(closeChunk=True)


def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QWidget)
    

def runWin():
    global myWin
    try:
        myWin.close()
    except:
        pass
    myWin = myUIClass(parent=maya_main_window())
    myWin.show()
runWin()