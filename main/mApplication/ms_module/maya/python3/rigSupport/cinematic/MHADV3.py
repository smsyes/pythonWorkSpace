# -*- coding: utf-8 -*-

################################################################################
## 메타휴먼 리깅 작업시 필요한 스크립트
## Form generated from reading UI file 'MHADVvzdMHm.ui'
##
## __AUTHOR__ = 'minsung'
## __UPDATE__ = 20240206
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################
import sys
import os
import json
from PySide6.QtCore import * 
from PySide6.QtGui import * 
from PySide6.QtWidgets import *
from PySide6 import __version__
from shiboken6 import wrapInstance
import pymel.core as pm
import maya.OpenMayaUI as omui


class Ui_Form(object):
    def setupUi(self, Form):
        if not Form.objectName():
            Form.setObjectName(u"Form")
        Form.resize(480, 500)
        Form.setLayoutDirection(Qt.LeftToRight)
        self.gridLayout_3 = QGridLayout(Form)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.gridLayout_3.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.toolBox = QToolBox(Form)
        self.toolBox.setObjectName(u"toolBox")
        self.toolBox.setContextMenuPolicy(Qt.DefaultContextMenu)
        self.toolBox.setLayoutDirection(Qt.LeftToRight)
        self.toolBox.setAutoFillBackground(False)
        self.toolBox.setStyleSheet(u"")
        self.page = QWidget()
        self.page.setObjectName(u"page")
        self.page.setGeometry(QRect(0, 0, 302, 281))
        self.formLayout = QFormLayout(self.page)
        self.formLayout.setObjectName(u"formLayout")
        self.formLayout.setLabelAlignment(Qt.AlignCenter)
        self.formLayout.setFormAlignment(Qt.AlignHCenter|Qt.AlignTop)
        self.widget = QWidget(self.page)
        self.widget.setObjectName(u"widget")
        self.gridLayout = QGridLayout(self.widget)
        self.gridLayout.setObjectName(u"gridLayout")
        self.label_4 = QLabel(self.widget)
        self.label_4.setObjectName(u"label_4")
        sizePolicy = QSizePolicy(QSizePolicy.Fixed, QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.label_4.sizePolicy().hasHeightForWidth())
        self.label_4.setSizePolicy(sizePolicy)

        self.gridLayout.addWidget(self.label_4, 0, 0, 1, 1)

        self.line = QFrame(self.widget)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.gridLayout.addWidget(self.line, 1, 0, 1, 1)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setSpacing(6)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalLayout.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.horizontalLayout.setContentsMargins(0, 0, 0, -1)
        self.label_3 = QLabel(self.widget)
        self.label_3.setObjectName(u"label_3")
        sizePolicy.setHeightForWidth(self.label_3.sizePolicy().hasHeightForWidth())
        self.label_3.setSizePolicy(sizePolicy)

        self.horizontalLayout.addWidget(self.label_3)

        self.JsonOpenPB = QPushButton(self.widget)
        self.JsonOpenPB.setObjectName(u"JsonOpenPB")
        self.JsonOpenPB.setMaximumSize(QSize(20, 30))
        self.JsonOpenPB.setStyleSheet(u"background-color: rgb(81, 81, 81);")
        self.JsonOpenPB.setFlat(False)

        self.horizontalLayout.addWidget(self.JsonOpenPB)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.SubAddCB = QCheckBox(self.widget)
        self.SubAddCB.setObjectName(u"SubAddCB")
        self.SubAddCB.setChecked(True)

        self.verticalLayout.addWidget(self.SubAddCB)

        self.SpineIKAxisCB = QCheckBox(self.widget)
        self.SpineIKAxisCB.setObjectName(u"SpineIKAxisCB")
        self.SpineIKAxisCB.setChecked(True)

        self.verticalLayout.addWidget(self.SpineIKAxisCB)

        self.OneRootCB = QCheckBox(self.widget)
        self.OneRootCB.setObjectName(u"OneRootCB")
        self.OneRootCB.setChecked(True)

        self.verticalLayout.addWidget(self.OneRootCB)

        self.GroupCB = QCheckBox(self.widget)
        self.GroupCB.setObjectName(u"GroupCB")
        self.GroupCB.setChecked(True)

        self.verticalLayout.addWidget(self.GroupCB)

        self.SetsCB = QCheckBox(self.widget)
        self.SetsCB.setObjectName(u"SetsCB")
        self.SetsCB.setChecked(True)

        self.verticalLayout.addWidget(self.SetsCB)

        self.OLColorCB = QCheckBox(self.widget)
        self.OLColorCB.setObjectName(u"OLColorCB")
        self.OLColorCB.setChecked(True)

        self.verticalLayout.addWidget(self.OLColorCB)

        self.AddAttrCB = QCheckBox(self.widget)
        self.AddAttrCB.setObjectName(u"AddAttrCB")
        self.AddAttrCB.setChecked(True)

        self.verticalLayout.addWidget(self.AddAttrCB)

        self.ArrangementPB = QPushButton(self.widget)
        self.ArrangementPB.setObjectName(u"ArrangementPB")
        self.ArrangementPB.setStyleSheet(u"background-color: rgb(81, 81, 81);")

        self.verticalLayout.addWidget(self.ArrangementPB)


        self.gridLayout.addLayout(self.verticalLayout, 2, 0, 1, 1)


        self.formLayout.setWidget(0, QFormLayout.LabelRole, self.widget)

        self.toolBox.addItem(self.page, u"Arrangement")
        self.page_2 = QWidget()
        self.page_2.setObjectName(u"page_2")
        self.page_2.setGeometry(QRect(0, 0, 312, 268))
        self.formLayout_2 = QFormLayout(self.page_2)
        self.formLayout_2.setObjectName(u"formLayout_2")
        self.widget_2 = QWidget(self.page_2)
        self.widget_2.setObjectName(u"widget_2")
        self.gridLayout_2 = QGridLayout(self.widget_2)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.label = QLabel(self.widget_2)
        self.label.setObjectName(u"label")
        self.label.setEnabled(True)
        sizePolicy.setHeightForWidth(self.label.sizePolicy().hasHeightForWidth())
        self.label.setSizePolicy(sizePolicy)
        self.label.setFrameShadow(QFrame.Plain)
        self.label.setLineWidth(1)
        self.label.setTextFormat(Qt.AutoText)
        self.label.setScaledContents(False)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setWordWrap(False)

        self.gridLayout_2.addWidget(self.label, 0, 0, 1, 1)

        self.label_2 = QLabel(self.widget_2)
        self.label_2.setObjectName(u"label_2")
        sizePolicy.setHeightForWidth(self.label_2.sizePolicy().hasHeightForWidth())
        self.label_2.setSizePolicy(sizePolicy)
        font = QFont()
        font.setFamily(u"\uad74\ub9bc")
        font.setPointSize(7)
        self.label_2.setFont(font)
        self.label_2.setLayoutDirection(Qt.LeftToRight)
        self.label_2.setAutoFillBackground(False)
        self.label_2.setInputMethodHints(Qt.ImhNone)
        self.label_2.setMidLineWidth(0)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.gridLayout_2.addWidget(self.label_2, 1, 0, 1, 1)

        self.DuplicateBindPB = QPushButton(self.widget_2)
        self.DuplicateBindPB.setObjectName(u"DuplicateBindPB")
        sizePolicy1 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Fixed)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.DuplicateBindPB.sizePolicy().hasHeightForWidth())
        self.DuplicateBindPB.setSizePolicy(sizePolicy1)
        self.DuplicateBindPB.setStyleSheet(u"background-color: rgb(81, 81, 81);")

        self.gridLayout_2.addWidget(self.DuplicateBindPB, 2, 0, 1, 1)


        self.formLayout_2.setWidget(0, QFormLayout.LabelRole, self.widget_2)

        self.toolBox.addItem(self.page_2, u"MeshDuplicateBind")

        self.gridLayout_3.addWidget(self.toolBox, 0, 0, 1, 1)


        self.retranslateUi(Form)

        self.toolBox.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label_4.setText(QCoreApplication.translate("Form", u"Metahuman Advanced Rigging Arrangement..", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"MH JSON", None))
        self.JsonOpenPB.setText(QCoreApplication.translate("Form", u"?", None))
        self.SubAddCB.setText(QCoreApplication.translate("Form", u"ADV IKArmSub Add", None))
        self.SpineIKAxisCB.setText(QCoreApplication.translate("Form", u"ADV IKSpine Twist Axis", None))
        self.OneRootCB.setText(QCoreApplication.translate("Form", u"One Root", None))
        self.GroupCB.setText(QCoreApplication.translate("Form", u"Group Construction", None))
        self.SetsCB.setText(QCoreApplication.translate("Form", u"Sets", None))
        self.OLColorCB.setText(QCoreApplication.translate("Form", u"Outliner Color", None))
        self.AddAttrCB.setText(QCoreApplication.translate("Form", u"Main Add Attr", None))
        self.ArrangementPB.setText(QCoreApplication.translate("Form", u"MH ADV Arrangement", None))
        self.toolBox.setItemText(self.toolBox.indexOf(self.page), 
                                 QCoreApplication.translate("Form", u"Arrangement", None))
        self.label.setText(QCoreApplication.translate("Form", u"**Please select the objects before execution**", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"ex) \"head_lod0_grp\" hierarchy, \"m_med_nrw_body_lod0_mesh\"..", None))
        self.DuplicateBindPB.setText(QCoreApplication.translate("Form", u"MH Mesh Duplicate Bind", None))
        self.toolBox.setItemText(self.toolBox.indexOf(self.page_2), QCoreApplication.translate("Form", u"MeshDuplicateBind", None))
    # retranslateUi

class MyError(Exception):
    pass

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = Ui_Form()
        self.ui.setupUi(self)

        filePath_ = self.path_("Json/MHADVJS.json")
        with open(filePath_)as json_file:
            json_data = json.load(json_file)
        self.name_ = json_data["NAME"]
        self.ctrlPos_ = json_data["CTRLPOS"]
        self.color_ = json_data["COLOR"]
        self.olcolor_ = json_data["OLCOLOR"]
        self.headR_ = '{0}:{1}'.format(self.name_['ns'][0],self.name_['headR'])
        self.bodyR_ = '{0}:{1}'.format(self.name_['ns'][1],self.name_['bodyR'])

        self.ui.ArrangementPB.clicked.connect(self.MHADVArrangementPB_)
        self.ui.DuplicateBindPB.clicked.connect(self.duplicatebind_)
        

    def MHADVArrangementPB_(self):
        pm.undoInfo(openChunk=True)
        try:
            if self.ui.SubAddCB.isChecked():
                # sub controler setup
                self.subControl_()
            
            if self.ui.SpineIKAxisCB.isChecked():
                # Spine IK Advanced Twist Forward Axis Edit
                IKSpine = self.hasObject_(self.name_['adbIKSpine'])
                IKSpine.dForwardAxis.set(2)
            
            if self.ui.OneRootCB.isChecked():
                MHbodyRoot = self.hasObject_(self.bodyR_)
                MHbodyRootChild_ = MHbodyRoot.getChildren()[0]
                pm.select(cl=1)
                root_ = pm.joint(n='root')
                pm.parent(MHbodyRootChild_, root_)
            
            if self.ui.GroupCB.isChecked():
                # unused node delete
                layerManager_ = self.hasObject_('layerManager').listConnections()
                delList = [self.hasObject_(i) for i in self.name_['deleteNode']]
                pm.delete(delList + layerManager_[1:])

                # group construction
                topGroup = pm.createNode('transform',n='name_')
                geo_grp_ = pm.createNode('transform',n='geo_grp')
                geoPub_grp_ = pm.createNode('transform',n='geoPub_grp')
                geoWip_grp_ = pm.createNode('transform',n='geoWip_grp')
                rig_grp_ = pm.createNode('transform',n='rig_grp')

                # parents
                pm.parent(geo_grp_, topGroup)
                pm.parent(rig_grp_, topGroup)
                pm.parent(root_, topGroup)
                pm.parent(geoPub_grp_, geo_grp_)
                pm.parent(self.name_['headRig'], self.name_['MHRig'])
                pm.parent([self.name_['headGro'],self.name_['bodyGeo']], geoPub_grp_)
                pm.parent(geoWip_grp_, geo_grp_)
                pm.parent([self.name_['advRig'],self.name_['drvR'],self.bodyR_,
                self.headR_,self.name_['MHRig']], rig_grp_)

                # Mains Rename
                for i in self.name_['mainExtra']:
                    self.hasObject_(i).rename(self.name_['mainExtra'][i])

            if self.ui.OLColorCB.isChecked():
                # change outliner
                self.outlinerColorSet_(topGroup, self.olcolor_['top'])
                self.outlinerColorSet_(geoPub_grp_, self.olcolor_['geometry'])
                self.outlinerColorSet_(root_, self.olcolor_['root'])

            if self.ui.AddAttrCB.isChecked():
                # Add Attrs
                main_ = self.hasObject_('Main')
                pm.addAttr(main_, ln="inGame", at='bool', k=1)
                pm.addAttr(main_, ln="model", at='enum', k=1, en='None:HI')
                pm.addAttr(main_, ln="facial", at='bool', k=1)
                self.displayType(main_, geo_grp_)

                # sets
                sets_ = self.hasObject_('Sets')
                AnimMeshSet_ = pm.sets(n='AnimMeshSet')
                ExportSet_ = pm.sets(n='ExportSet')
                pm.sets(AnimMeshSet_, edit=1, fe=geoPub_grp_)
                pm.sets(ExportSet_, edit=1, fe=[root_,topGroup])
                pm.sets(sets_, edit=1, fe=[AnimMeshSet_,ExportSet_])

        finally:
            pm.undoInfo(closeChunk=True)

    def duplicatebind_(self):
        # 선택한 메쉬 복제 및 재 바인드
        sel = pm.ls(sl=1,r=1,fl=1)
        dict_ = {}
        for i in self.name_['faceR']:
            name_ = '{0}:{1}'.format(self.name_['ns'][0],i)
            dict_[i] = self.hasObject_(name_)
        self.parentChange(dict_.values(),self.name_['ns'])
        self.metahumanHeadRebind(self.name_['ns'][1], sel)
        # pm.parent(dict_['faceR'][0], self.bodyR_)

    # circle 생성 및 cvs list포지션에 맞게 수정하여 컨트롤러 생성
    def createControl_(self, object_, cvs):
        circleShape_ = pm.circle(nr=(1,0,0),n='{0}Sub'.format(object_.name()))
        for i,cp in enumerate(cvs):
            circleShape_[0].getShape().controlPoints[i].set(cp)
        return circleShape_[0]

    def overrideColorChange_(self, shape_, num):
        shape_.overrideEnabled.set(1)
        shape_.overrideColor.set(num)

    def transformReset(self, object_):
        object_.t.set(0,0,0)
        object_.r.set(0,0,0)
        object_.s.set(1,1,1)

    # 서브 컨트롤러 생성 및 컬러 지정
    def subControl_(self):
        object_ = []
        for i in self.name_['sub']:
            object_.append(self.hasObject_(i))

        for i,ik in enumerate(object_):
            getChildren = ik.getChildren()[1:]
            subctrl = self.createControl_(ik,self.ctrlPos_['sub'])
            self.overrideColorChange_(subctrl.getShape(), 
                                      int(list(self.color_.values())[i]))
            pm.parent(subctrl,ik)
            self.transformReset(subctrl)
            pm.parent(getChildren, subctrl)

    # 오브젝트의 아웃라이너 컬러를 color list value 적용
    def outlinerColorSet_(self, object_, color):
        object_.useOutlinerColor.set(1)
        object_.outlinerColor.outlinerColor.set(color)

    # 오브젝트의 바인드 된 조인트들을 리턴
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

    # joints의 베이스 네임을 기준으로 findNameSpace가 붙은 joint들을 리턴
    def reJointSet(self, joints, findName):
        bodyjoints_ = []
        facejoints_ = []
        for j in joints:
            basename_ = j.name().split(':')[-1]
            if basename_ == 'root':
                pass
            else:
                try:
                    bodyjoint_ = pm.PyNode('{0}:{1}'.format(findName,basename_))
                    bodyjoints_.append(bodyjoint_)
                except:
                    facejoints_.append(j)
        print(bodyjoints_, facejoints_)
        return bodyjoints_, facejoints_

    # 바인드 하고 item_스킨 웨이트를 target_으로 카피
    def skinCopy(self, item_, target_, joints):
        sc_ = pm.skinCluster(joints, target_, bm=1, mi=3, rui=0, dr=3)
        pm.copySkinWeights(item_,target_,nm=1,sa='closestPoint',ia='oneToOne',nr=1)
        return sc_

    # 복사한 오브젝트의 attribute unlock 및 ShapeOrigin 정리 
    def objectClean(self, object_):
        attrs = object_.listAttr(k=1)
        [i.unlock() for i in attrs]
        pm.delete('{}ShapeOrig'.format(object_.name()))

    # 오브젝트가 있는지 확인하고 PyNode로 변경
    def hasObject_(self, name_):
        if pm.objExists(name_):
            object_ = pm.PyNode(name_)
        return object_

    # list_의 상위 노드 네임스페이스를 교체 후, list_를 교체한 상위 노드에 페어런츠
    def parentChange(self, list_,ns_):
        for i in list_:
            p_ = i.getParent()
            replaceName = p_.name().replace(ns_[0], ns_[1])
            NP_ = pm.PyNode(replaceName)
            pm.parent(i, NP_)

    # 다시 바인드 할 메타휴먼 헤드 메쉬 잡고 실행
    def metahumanHeadRebind(self, ns_, object_):
        for i in object_:
            name_ = i.name()
            target = pm.duplicate(i)[0]
            self.objectClean(target)
            bindjoints = self.bindJoint(i)
            bodyjoints_, facejoints_ = self.reJointSet(bindjoints, ns_)
            rejoints = bodyjoints_ + facejoints_
            sc_ = self.skinCopy(i, target, rejoints)
            if i.history(type='blendShape'):
                bs_ = i.history(type='blendShape')[0]
                origin_ = target.history(type='mesh')[-1]
                origin_.outMesh >> bs_.originalGeometry[0]
                origin_.worldMesh[0] >> bs_.input[0].inputGeometry
                bs_.outputGeometry[0] >> sc_.input[0].inputGeometry
            pm.delete(i)
            target.rename(name_)
            sc_.rename('{}_SkinCluster'.format(name_))

    def displayType(self, item_, target_):
        item_.inGame.showInChannelBox(1)
        item_.model.showInChannelBox(1)
        item_.overrideDisplayType.showInChannelBox(1)
        item_.overrideDisplayType >> target_.overrideDisplayType

        target_.overrideEnabled.set(1)
        list_ = target_.listRelatives(ad=1)
        [i.overrideEnabled.set(0) for i in list_]

    def path_(self, dir_=None):
        fileDir = os.path.dirname(__file__)
        currentDir = os.path.abspath(fileDir)
        if dir_:
            joinDir = os.path.join(currentDir, dir_)
            currentDir = os.path.abspath(joinDir)
        if not currentDir in sys.path:
            sys.path.append(currentDir)
    
        return currentDir

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
