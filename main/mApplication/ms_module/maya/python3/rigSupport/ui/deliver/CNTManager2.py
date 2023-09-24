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
import maya.OpenMayaUI as omui
from pymel.core import *
import pymel.core.datatypes as dt

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance

import CNTManager2UI
try:
    from imp import *
except:
    pass
reload(CNTManager2UI)

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = CNTManager2UI.Ui_CNTManager()
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