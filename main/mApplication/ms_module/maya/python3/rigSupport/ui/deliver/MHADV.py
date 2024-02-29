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
from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance
import pymel.core as pm
import maya.OpenMayaUI as omui


class Ui_Form(object):
    def setupUi(self, Form):
        if not Form.objectName():
            Form.setObjectName(u"Form")
        Form.resize(308, 309)
        self.toolBox = QToolBox(Form)
        self.toolBox.setObjectName(u"toolBox")
        self.toolBox.setGeometry(QRect(9, 9, 291, 281))
        sizePolicy = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.toolBox.sizePolicy().hasHeightForWidth())
        self.toolBox.setSizePolicy(sizePolicy)
        self.toolBox.setMaximumSize(QSize(16777215, 16777215))
        self.toolBox.setAcceptDrops(False)
        self.toolBox.setInputMethodHints(Qt.ImhNone)
        self.toolBox.setFrameShape(QFrame.NoFrame)
        self.toolBox.setFrameShadow(QFrame.Sunken)
        self.MHADVArrangement = QWidget()
        self.MHADVArrangement.setObjectName(u"MHADVArrangement")
        self.MHADVArrangement.setGeometry(QRect(0, 0, 291, 229))
        self.verticalLayout_2 = QVBoxLayout(self.MHADVArrangement)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.splitter = QSplitter(self.MHADVArrangement)
        self.splitter.setObjectName(u"splitter")
        self.splitter.setOrientation(Qt.Horizontal)
        self.label_3 = QLabel(self.splitter)
        self.label_3.setObjectName(u"label_3")
        self.splitter.addWidget(self.label_3)
        self.JsonOpenPB = QPushButton(self.splitter)
        self.JsonOpenPB.setObjectName(u"JsonOpenPB")
        self.JsonOpenPB.setMaximumSize(QSize(20, 30))
        self.splitter.addWidget(self.JsonOpenPB)

        self.verticalLayout_2.addWidget(self.splitter)

        self.SubAddCB = QCheckBox(self.MHADVArrangement)
        self.SubAddCB.setObjectName(u"SubAddCB")
        self.SubAddCB.setChecked(True)

        self.verticalLayout_2.addWidget(self.SubAddCB)

        self.SpineIKAxisCB = QCheckBox(self.MHADVArrangement)
        self.SpineIKAxisCB.setObjectName(u"SpineIKAxisCB")
        self.SpineIKAxisCB.setChecked(True)

        self.verticalLayout_2.addWidget(self.SpineIKAxisCB)

        self.OneRootCB = QCheckBox(self.MHADVArrangement)
        self.OneRootCB.setObjectName(u"OneRootCB")
        self.OneRootCB.setChecked(True)

        self.verticalLayout_2.addWidget(self.OneRootCB)

        self.GroupCB = QCheckBox(self.MHADVArrangement)
        self.GroupCB.setObjectName(u"GroupCB")
        self.GroupCB.setChecked(True)

        self.verticalLayout_2.addWidget(self.GroupCB)

        self.SetsCB = QCheckBox(self.MHADVArrangement)
        self.SetsCB.setObjectName(u"SetsCB")
        self.SetsCB.setChecked(True)

        self.verticalLayout_2.addWidget(self.SetsCB)

        self.OLColorCB = QCheckBox(self.MHADVArrangement)
        self.OLColorCB.setObjectName(u"OLColorCB")
        self.OLColorCB.setChecked(True)

        self.verticalLayout_2.addWidget(self.OLColorCB)

        self.AddAttrCB = QCheckBox(self.MHADVArrangement)
        self.AddAttrCB.setObjectName(u"AddAttrCB")
        self.AddAttrCB.setChecked(True)

        self.verticalLayout_2.addWidget(self.AddAttrCB)

        self.ArrangementPB = QPushButton(self.MHADVArrangement)
        self.ArrangementPB.setObjectName(u"ArrangementPB")

        self.verticalLayout_2.addWidget(self.ArrangementPB)

        self.toolBox.addItem(self.MHADVArrangement, u"Arrangement")
        self.MHMeshDuplicateBind = QWidget()
        self.MHMeshDuplicateBind.setObjectName(u"MHMeshDuplicateBind")
        self.MHMeshDuplicateBind.setGeometry(QRect(0, 0, 291, 229))
        self.gridLayout = QGridLayout(self.MHMeshDuplicateBind)
        self.gridLayout.setObjectName(u"gridLayout")
        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setSpacing(0)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.verticalLayout.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.label = QLabel(self.MHMeshDuplicateBind)
        self.label.setObjectName(u"label")
        sizePolicy1 = QSizePolicy(QSizePolicy.Fixed, QSizePolicy.Fixed)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.label.sizePolicy().hasHeightForWidth())
        self.label.setSizePolicy(sizePolicy1)
        self.label.setFrameShadow(QFrame.Plain)
        self.label.setLineWidth(1)
        self.label.setScaledContents(False)
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.label_2 = QLabel(self.MHMeshDuplicateBind)
        self.label_2.setObjectName(u"label_2")
        sizePolicy1.setHeightForWidth(self.label_2.sizePolicy().hasHeightForWidth())
        self.label_2.setSizePolicy(sizePolicy1)
        font = QFont()
        font.setFamily(u"Adobe Devanagari")
        font.setPointSize(8)
        self.label_2.setFont(font)
        self.label_2.setLayoutDirection(Qt.LeftToRight)
        self.label_2.setAutoFillBackground(False)
        self.label_2.setInputMethodHints(Qt.ImhNone)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_2)

        self.DuplicateBindPB = QPushButton(self.MHMeshDuplicateBind)
        self.DuplicateBindPB.setObjectName(u"DuplicateBindPB")

        self.verticalLayout.addWidget(self.DuplicateBindPB)


        self.gridLayout.addLayout(self.verticalLayout, 0, 0, 1, 1)

        self.toolBox.addItem(self.MHMeshDuplicateBind, u"MeshDuplicateBind")

        self.retranslateUi(Form)

        self.toolBox.setCurrentIndex(1)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
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
        self.toolBox.setItemText(self.toolBox.indexOf(self.MHADVArrangement), QCoreApplication.translate("Form", u"Arrangement", None))
        self.label.setText(QCoreApplication.translate("Form", u"**Please select the objects before execution**", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"ex) \"head_lod0_grp\" hierarchy, \"m_med_nrw_body_lod0_mesh\"..", None))
        self.DuplicateBindPB.setText(QCoreApplication.translate("Form", u"MH Mesh Duplicate Bind", None))
        self.toolBox.setItemText(self.toolBox.indexOf(self.MHMeshDuplicateBind), QCoreApplication.translate("Form", u"MeshDuplicateBind", None))
    # retranslateUi


class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)

        # sub controler setup
        self.subControl_(sublist_, crvdict['sub'], subColordict)

        # Spine IK Advanced Twist Forward Axis Edit
        IKSpine = self.hasObject_('IKSpineHandle_M')
        IKSpine.dForwardAxis.set(2)

        # object dictionary
        dict_ = {}
        list_ = [bodyRoot_, headRoot_, drvRoot_, MHRig, advRig, headGeoGroup, bodyGeoGroup, headRigGroup]
        for i in list_:
            dict_[i] = self.hasObject_(i)
        bodyRootChild_ = dict_[bodyRoot_].getChildren()[0]
        root_ = pm.joint(n='root')

        # unused node delete
        layerManager_ = self.hasObject_('layerManager').listConnections()
        delList = [self.hasObject_(i) for i in deleteNode]
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
        pm.parent(bodyRootChild_, root_)
        pm.parent(root_, topGroup)
        pm.parent(geoPub_grp_, geo_grp_)
        pm.parent(dict_[headRigGroup], dict_[MHRig])
        pm.parent([dict_[headGeoGroup],dict_[bodyGeoGroup]], geoPub_grp_)
        pm.parent(geoWip_grp_, geo_grp_)
        pm.parent([dict_[advRig],dict_[drvRoot_],dict_[bodyRoot_],dict_[headRoot_],dict_[MHRig]], rig_grp_)

        # change outliner
        self.outlinerColorSet_(topGroup, outlinerColordict['top'])
        self.outlinerColorSet_(geoPub_grp_, outlinerColordict['geometry'])
        self.outlinerColorSet_(root_, outlinerColordict['root'])

        # Mains Rename
        self.hasObject_('MainExtra1').rename('MainSub')
        self.hasObject_('MainExtra2').rename('Main_out')

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

        # 선택한 메쉬 복제 및 재 바인드
        sel = pm.ls(sl=1,r=1,fl=1)
        dict_ = {}
        for i in faceRoots:
            name_ = '{0}:{1}'.format(NS_[0],i)
            dict_[i] = self.hasObject_(name_)
        self.parentChange(dict_.values(),NS_)
        self.metahumanHeadRebind(NS_[0], sel)



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
    def subControl_(self, list_, cvs, color):
        object_ = []
        for i in list_:
            object_.append(self.hasObject_(i))

        for i,ik in enumerate(object_):
            getChildren = ik.getChildren()[1:]
            subctrl = self.createControl_(ik,cvs)
            self.overrideColorChange_(subctrl.getShape(), color[i])
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
            try:
                bodyjoint_ = pm.PyNode('{0}:{1}'.format(findName,basename_))
                bodyjoints_.append(bodyjoint_)
            except:
                facejoints_.append(j)

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
            bindjoints = bindJoint(i)
            bodyjoints_, facejoints_ = reJointSet(bindjoints, ns_)
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

def path_(dir_=None):
    fileDir = os.path.dirname(__file__)
    currentDir = os.path.abspath(fileDir)
    if dir_:
        joinDir = os.path.join(currentDir, dir_)
        currentDir = os.path.abspath(joinDir)
    if not currentDir in sys.path:
        sys.path.append(currentDir)
   
    return currentDir
