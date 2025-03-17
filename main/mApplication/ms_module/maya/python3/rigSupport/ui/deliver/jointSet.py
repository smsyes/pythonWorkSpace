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
import maya.OpenMaya as om
import pymel.core.datatypes as dt
import json
import os
from pymel.core import *

from PySide6.QtCore import * 
from PySide6.QtGui import * 
from PySide6.QtWidgets import *
from PySide6 import __version__
from shiboken6 import wrapInstance

from PySide6 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(243, 593)
        self.verticalLayout = QtWidgets.QVBoxLayout(Form)
        self.verticalLayout.setObjectName("verticalLayout")
        spacerItem = QtWidgets.QSpacerItem(245, 18, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.verticalLayout.addItem(spacerItem)
        self.label_6 = QtWidgets.QLabel(Form)
        self.label_6.setAlignment(QtCore.Qt.AlignCenter)
        self.label_6.setObjectName("label_6")
        self.verticalLayout.addWidget(self.label_6)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.label = QtWidgets.QLabel(Form)
        self.label.setObjectName("label")
        self.horizontalLayout.addWidget(self.label)
        self.labelCB = QtWidgets.QComboBox(Form)
        self.labelCB.setObjectName("labelCB")
        self.horizontalLayout.addWidget(self.labelCB)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.label_2 = QtWidgets.QLabel(Form)
        self.label_2.setObjectName("label_2")
        self.horizontalLayout_2.addWidget(self.label_2)
        self.sideCB = QtWidgets.QComboBox(Form)
        self.sideCB.setObjectName("sideCB")
        self.horizontalLayout_2.addWidget(self.sideCB)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        self.labelBT = QtWidgets.QPushButton(Form)
        self.labelBT.setObjectName("labelBT")
        self.verticalLayout.addWidget(self.labelBT)
        self.label_12 = QtWidgets.QLabel(Form)
        self.label_12.setObjectName("label_12")
        self.verticalLayout.addWidget(self.label_12)
        self.line = QtWidgets.QFrame(Form)
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.verticalLayout.addWidget(self.line)
        spacerItem1 = QtWidgets.QSpacerItem(245, 18, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.verticalLayout.addItem(spacerItem1)
        self.label_7 = QtWidgets.QLabel(Form)
        self.label_7.setAlignment(QtCore.Qt.AlignCenter)
        self.label_7.setObjectName("label_7")
        self.verticalLayout.addWidget(self.label_7)
        self.horizontalLayout_5 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_5.setObjectName("horizontalLayout_5")
        self.label_3 = QtWidgets.QLabel(Form)
        self.label_3.setObjectName("label_3")
        self.horizontalLayout_5.addWidget(self.label_3)
        self.ojCB = QtWidgets.QComboBox(Form)
        self.ojCB.setObjectName("ojCB")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.horizontalLayout_5.addWidget(self.ojCB)
        self.verticalLayout.addLayout(self.horizontalLayout_5)
        self.horizontalLayout_6 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_6.setObjectName("horizontalLayout_6")
        self.label_4 = QtWidgets.QLabel(Form)
        self.label_4.setObjectName("label_4")
        self.horizontalLayout_6.addWidget(self.label_4)
        self.saoCB = QtWidgets.QComboBox(Form)
        self.saoCB.setObjectName("saoCB")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.horizontalLayout_6.addWidget(self.saoCB)
        self.verticalLayout.addLayout(self.horizontalLayout_6)
        self.JOBT = QtWidgets.QPushButton(Form)
        self.JOBT.setObjectName("JOBT")
        self.verticalLayout.addWidget(self.JOBT)
        self.label_15 = QtWidgets.QLabel(Form)
        self.label_15.setObjectName("label_15")
        self.verticalLayout.addWidget(self.label_15)
        self.line_2 = QtWidgets.QFrame(Form)
        self.line_2.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_2.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.verticalLayout.addWidget(self.line_2)
        spacerItem2 = QtWidgets.QSpacerItem(37, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.verticalLayout.addItem(spacerItem2)
        self.label_8 = QtWidgets.QLabel(Form)
        self.label_8.setAlignment(QtCore.Qt.AlignCenter)
        self.label_8.setObjectName("label_8")
        self.verticalLayout.addWidget(self.label_8)
        self.horizontalLayout_7 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_7.setObjectName("horizontalLayout_7")
        self.label_5 = QtWidgets.QLabel(Form)
        self.label_5.setObjectName("label_5")
        self.horizontalLayout_7.addWidget(self.label_5)
        self.OMAxisCB = QtWidgets.QComboBox(Form)
        self.OMAxisCB.setObjectName("OMAxisCB")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.horizontalLayout_7.addWidget(self.OMAxisCB)
        self.verticalLayout.addLayout(self.horizontalLayout_7)
        self.OMCB = QtWidgets.QPushButton(Form)
        self.OMCB.setObjectName("OMCB")
        self.verticalLayout.addWidget(self.OMCB)
        self.label_14 = QtWidgets.QLabel(Form)
        self.label_14.setObjectName("label_14")
        self.verticalLayout.addWidget(self.label_14)
        self.line_3 = QtWidgets.QFrame(Form)
        self.line_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.verticalLayout.addWidget(self.line_3)
        spacerItem3 = QtWidgets.QSpacerItem(245, 18, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.verticalLayout.addItem(spacerItem3)
        self.label_9 = QtWidgets.QLabel(Form)
        self.label_9.setAlignment(QtCore.Qt.AlignCenter)
        self.label_9.setObjectName("label_9")
        self.verticalLayout.addWidget(self.label_9)
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.label_10 = QtWidgets.QLabel(Form)
        self.label_10.setObjectName("label_10")
        self.horizontalLayout_3.addWidget(self.label_10)
        self.numSP = QtWidgets.QSpinBox(Form)
        self.numSP.setProperty("value", 3)
        self.numSP.setObjectName("numSP")
        self.horizontalLayout_3.addWidget(self.numSP)
        self.verticalLayout.addLayout(self.horizontalLayout_3)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.label_11 = QtWidgets.QLabel(Form)
        self.label_11.setObjectName("label_11")
        self.horizontalLayout_4.addWidget(self.label_11)
        self.LSJAxisCB = QtWidgets.QComboBox(Form)
        self.LSJAxisCB.setObjectName("LSJAxisCB")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.horizontalLayout_4.addWidget(self.LSJAxisCB)
        self.verticalLayout.addLayout(self.horizontalLayout_4)
        self.LSJBT = QtWidgets.QPushButton(Form)
        self.LSJBT.setObjectName("LSJBT")
        self.verticalLayout.addWidget(self.LSJBT)
        self.label_13 = QtWidgets.QLabel(Form)
        self.label_13.setObjectName("label_13")
        self.verticalLayout.addWidget(self.label_13)

        self.retranslateUi(Form)
        self.ojCB.setCurrentIndex(1)
        self.saoCB.setCurrentIndex(4)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(QtWidgets.QApplication.translate("Form", "Form", None, -1))
        self.label_6.setText(QtWidgets.QApplication.translate("Form", "### Joint Labeling ###", None, -1))
        self.label.setText(QtWidgets.QApplication.translate("Form", "Label Name :", None, -1))
        self.label_2.setText(QtWidgets.QApplication.translate("Form", "Side :", None, -1))
        self.labelBT.setText(QtWidgets.QApplication.translate("Form", "Labeling", None, -1))
        self.label_12.setText(QtWidgets.QApplication.translate("Form", "# Execute after selecting the top joint", None, -1))
        self.label_7.setText(QtWidgets.QApplication.translate("Form", "### Joint Orient ###", None, -1))
        self.label_3.setText(QtWidgets.QApplication.translate("Form", "OrientJoint :", None, -1))
        self.ojCB.setItemText(0, QtWidgets.QApplication.translate("Form", "xyz", None, -1))
        self.ojCB.setItemText(1, QtWidgets.QApplication.translate("Form", "xzy", None, -1))
        self.ojCB.setItemText(2, QtWidgets.QApplication.translate("Form", "yxz", None, -1))
        self.ojCB.setItemText(3, QtWidgets.QApplication.translate("Form", "yzx", None, -1))
        self.ojCB.setItemText(4, QtWidgets.QApplication.translate("Form", "zxy", None, -1))
        self.ojCB.setItemText(5, QtWidgets.QApplication.translate("Form", "zyx", None, -1))
        self.label_4.setText(QtWidgets.QApplication.translate("Form", "SecondaryAxisOrient :", None, -1))
        self.saoCB.setItemText(0, QtWidgets.QApplication.translate("Form", "xup", None, -1))
        self.saoCB.setItemText(1, QtWidgets.QApplication.translate("Form", "xdown", None, -1))
        self.saoCB.setItemText(2, QtWidgets.QApplication.translate("Form", "yup", None, -1))
        self.saoCB.setItemText(3, QtWidgets.QApplication.translate("Form", "ydown", None, -1))
        self.saoCB.setItemText(4, QtWidgets.QApplication.translate("Form", "zup", None, -1))
        self.saoCB.setItemText(5, QtWidgets.QApplication.translate("Form", "zdown", None, -1))
        self.JOBT.setText(QtWidgets.QApplication.translate("Form", "JointOrient", None, -1))
        self.label_15.setText(QtWidgets.QApplication.translate("Form", "# Execute after selecting the top joint", None, -1))
        self.label_8.setText(QtWidgets.QApplication.translate("Form", "### Object Mirror ###", None, -1))
        self.label_5.setText(QtWidgets.QApplication.translate("Form", "Axis :", None, -1))
        self.OMAxisCB.setItemText(0, QtWidgets.QApplication.translate("Form", "xy", None, -1))
        self.OMAxisCB.setItemText(1, QtWidgets.QApplication.translate("Form", "xz", None, -1))
        self.OMAxisCB.setItemText(2, QtWidgets.QApplication.translate("Form", "yx", None, -1))
        self.OMAxisCB.setItemText(3, QtWidgets.QApplication.translate("Form", "yz", None, -1))
        self.OMAxisCB.setItemText(4, QtWidgets.QApplication.translate("Form", "zx", None, -1))
        self.OMAxisCB.setItemText(5, QtWidgets.QApplication.translate("Form", "zy", None, -1))
        self.OMCB.setText(QtWidgets.QApplication.translate("Form", "Mirror", None, -1))
        self.label_14.setText(QtWidgets.QApplication.translate("Form", "# Select an item and target and execute", None, -1))
        self.label_9.setText(QtWidgets.QApplication.translate("Form", "### Linear Spacing Joint ###", None, -1))
        self.label_10.setText(QtWidgets.QApplication.translate("Form", "Number :", None, -1))
        self.label_11.setText(QtWidgets.QApplication.translate("Form", "Axis :", None, -1))
        self.LSJAxisCB.setItemText(0, QtWidgets.QApplication.translate("Form", "x", None, -1))
        self.LSJAxisCB.setItemText(1, QtWidgets.QApplication.translate("Form", "y", None, -1))
        self.LSJAxisCB.setItemText(2, QtWidgets.QApplication.translate("Form", "z", None, -1))
        self.LSJAxisCB.setItemText(3, QtWidgets.QApplication.translate("Form", "-x", None, -1))
        self.LSJAxisCB.setItemText(4, QtWidgets.QApplication.translate("Form", "-y", None, -1))
        self.LSJAxisCB.setItemText(5, QtWidgets.QApplication.translate("Form", "-z", None, -1))
        self.LSJBT.setText(QtWidgets.QApplication.translate("Form", "LinearSpacingJoint", None, -1))
        self.label_13.setText(QtWidgets.QApplication.translate("Form", "# Execute after selecting the top joint", None, -1))

configDict = {
    "sideName":[
        "Middle",
        "Left",
        "Right",
        "None",
        "Up",
        "Dn",
        "Front",
        "Back"
    ],
    "extensionsName":[
        "Ctrl",
        "Jnt"
    ],
    "mirrorSide":{
        "Left":"Right",
        "Right":"Left"
    },
    "jointLabel":[
        "None",
        "arm",
        "leg",
        "spine",
        "neck",
        "head",
        "index",
        "middle",
        "ring",
        "pinky",
        "thumb",
        "Finger",
        "Toe",
        "Qarm",
        "Qleg",
        "tail",
        "Single"
    ],
    "jointLabelDict":{
        "None":[
            "None"
        ],
        "arm":[
            "Clavicle", "Shoulder", "Elbow", "Wrist"
        ],
        "leg":[
            "Hip", "Knee", "Ankle", "Ball", "Toe"
        ],
        "spine":[
            "Root", "Spine1", "Spine2", "Spine3", "Chest"
        ],
        "neck":[
            "Neck1", "Neck2", "Neck3", "Neck4"
        ],
        "head":[
            "Head", "HeadEnd"
        ],
        "index":[
            "IndexRoot", "Index1", "Index2", "Index3", "Index4"
        ],
        "middle":[
            "MiddleRoot", "Middle1", "Middle2", "Middle3", "Middle4"
        ],
        "ring":[
            "RingRoot", "Ring1", "Ring2", "Ring3", "Ring4"
        ],
        "pinky":[
            "PinkyRoot", "Pinky1", "Pinky2", "Pinky3", "Pinky4"
        ],
        "thumb":[
            "ThumbRoot", "Thumb1", "Thumb2", "Thumb3", "Thumb4"
        ],
        "Finger":[
            "RootFinger", "Finger1", "Finger2", "Finger3", "Finger4"
        ],
        "Toe":[
            "Toe"
        ],
        "Qarm":[
            "QScapula", "QShoulder", "QBackElbow", "QFrontElbow", "QWrist", "QToe", "QTiptoe"
        ],
        "Qleg":[
            "QHip", "QThigh", "QFrotKnee", "QBackKnee", "QAnkle", "QHindToe", "QHindTiptoe"
        ],
        "tail":[
            "tail"
        ],
        "Single":[
            "Single"
        ]
    }
}



class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = Ui_Form()
        self.ui.setupUi(self)

        self.config = configDict
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
    
    """
    def jsonImport(self, jsonName):
        currentDir = os.path.dirname(__file__)
        filePath = os.path.join(currentDir, 'Json', jsonName)
        with open(filePath) as f:
            data_ = json.load(f)
        return data_

    def loadConfig_(self, jsonName):
        # jsonName = "configDict.json"
        return self.jsonImport(jsonName)
    """

    def CBAddLabel(self):
        for p in self.parts_:
            self.ui.labelCB.addItem(p)
        for s in self.side_:
            self.ui.sideCB.addItem(s)

    def getLabelCB(self):
        return self.ui.labelCB.currentText()
    
    def getSideCB(self):
        return self.ui.sideCB.currentIndex()
    
    def length(self, v0, v1):
        v = v1 - v0
        return v.length()

    def getChildren_(self, object_, type_=None):
        """Get the childrens from top object

        Arguments:
            object_ (node): transform node
            type_ (type): node type

        Returns:
            list : childrens list

        """
        object_ = PyNode(object_)
        if not type_:
            type_ = 'transform'
        child_ = object_.listRelatives(ad=1, c=1, typ=type_)
        child_ = child_ + [object_]
        child_.reverse()
        return child_

    def jointlabeling_(self, part, side):    
        sel = ls(sl=1)
        
        config_ = self.loadConfig_("configDict.json")
        partDict_ = config_["jointLabelDict"]
        side_ = config_["sideName"]
        type_ = config_["extensionsName"]
        part_ = partDict_[part]
        sideName_ = side_[side]
        for sl in sel:
            joints = self.getChildren_(sl, type_='joint')
            
            for i,jnt in enumerate(joints):
                if part == "None":
                    name_ = jnt.name()
                else:
                    if side == 0 or side == 3:
                        if len(part_) == 1:
                            name_ = '{0}{1}{2}'.format(part_[0],i+1,type_[1])
                        else:
                            if i in list(range(len(part_))):
                                name_ = '{0}{1}'.format(part_[i],type_[1])
                            else:
                                name_ = jnt.name()
                    else:
                        name_ = '{0}{1}'.format(sideName_,part_[i])
                    rename(jnt, name_)
                jnt.attr('otherType').set(name_)
                if side > 3:
                    jnt.attr('side').set(3)
                else:
                    jnt.attr('side').set(side)
                jnt.attr('type').set(18)
        
        return joints

    def get_trans(self, object_):
        return object_.getMatrix(worldSpace=True)[-1][:-1]

    def space_(self, name_, parent_=None):
        space_ = createNode('transform',
                            n='{}GRP'.format(name_),
                            p=parent_)
        return space_

    def joint_insert(self, joint_, name_, pos_):
        if joint_.type() == 'joint':
            JNT = joint_.insert()
            joint(JNT, n=name_, e=True, co=True, p=pos_)
            return PyNode(name_)

    def linear_spacing_joint(self, joint_, num, axis='x'):
        joints = [joint_, joint_.getChildren()[0]]
        stJoint = joints[0]
        stOtherType = stJoint.getAttr('otherType')
        stSide = stJoint.getAttr('side')
        enJoint = joints[-1]
        stTrans_= self.get_trans(stJoint)
        enTrans_= self.get_trans(enJoint)
        length_ = self.length(stTrans_, enTrans_)
        divValue = length_/(num+1)

        if axis:
            if axis=='x':
                value = (divValue,0,0)
            if axis=='y':
                value = (0,divValue,0)
            if axis=='z':
                value = (0,0,divValue)
            if axis=='-x':
                value = (-1*divValue,0,0)
            if axis=='-y':
                value = (0,-1*divValue,0)
            if axis=='-z':
                value = (0,0,-1*divValue)
        else:
            value = (divValue,0,0)
        
        insertList = [stJoint]
        for i in range(num):
            localspace = self.space_(stJoint.name(), parent_=insertList[i])
            localspace.setAttr('t',value)
            name_ = '{0}{1}{2}'.format(stOtherType, i+1, 'Jnt')
            pos_ = self.get_trans(localspace)
            JNT = self.joint_insert(insertList[i], name_, pos_)
            JNT.attr('type').set(18)
            JNT.attr('otherType').set('{0}{1}'.format(stOtherType, i+1))
            JNT.attr('side').set(stSide)
            delete(localspace)
            insertList.append(JNT)

    def labeling_(self):
        parts_ = self.getLabelCB()
        side_ = self.getSideCB()
        self.jointlabeling_(parts_, side_)

    def getLinearNum(self):
        return self.ui.numSP.value()

    def getLinearAxis(self):
        return self.ui.LSJAxisCB.currentText()

    def linearSpacingJoint(self):
        num_ = self.getLinearNum()
        axis_ = self.getLinearAxis()
        for i in self.sel_():
            self.linear_spacing_joint(i,
                                        num_, 
                                        axis=axis_
                                        )
    
    def getOrient(self):
        return self.ui.ojCB.currentText()

    def getSecondaryAxisOrient(self):
        return self.ui.saoCB.currentText()

    def joint_orient(self, jointChain, **kwargs):
        for joint_ in jointChain:
            makeIdentity(joint_, apply=1, t=0, r=1, s=0, n=0, pn=1)
            joint(joint_, **kwargs)
            if joint_ == jointChain[-1]:
                joint_.attr('jo').set(0,0,0) 

    def jointOrient(self):
        oj_ = self.getOrient()
        sao_ = self.getSecondaryAxisOrient()
        joints_ = self.getChildren_(self.sel_()[0], type_='joint')
        self.joint_orient(joints_, e=True, oj=oj_, sao=sao_, zso=True)

    def setMatrixAxis_(self, matrix_, axis_):
        """Get the FlipAxis from matrix

        Arguments:
            matrix_ (matrix): The input Matrix.
            axis_ (axis): flip axis

        Returns:
            matrix : fliped matrix

        """
        flipMatrix = dt.Matrix()
        
        if axis_ == 'x':
            matrix_value=[-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
        
        elif axis_ == 'y':
            matrix_value=[1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
        
        elif axis_ == 'z':
            matrix_value=[1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1]
        
        
        if matrix_value:
            om.MScriptUtil.createMatrixFromList(matrix_value, flipMatrix)
        
        return matrix_*flipMatrix

    def matrixList_(self, matrix_):
        """Get the list from matrix

        Arguments:
            matrix_ (matrix): The input Matrix.

        Returns:
            list : matrix array list

        """
        list_=[]
        array_ = matrix_.get()
        for i,a in enumerate(array_):
            for j in a:
                list_.append(j)
        return list_

    def setMatrixPos(self, matrix_, axis_):
        """Get the FlipAxis from matrix

        Arguments:
            matrix_ (matrix): The input Matrix.
            axis_ (axis): flip axis

        Returns:
            matrix : fliped matrix

        """
        data_=self.matrixList_(matrix_)

        if axis_ == 'x':
            data_[12] *= -1.0

        elif axis_ == 'y':
            data_[13] *= -1.0

        elif axis_ == 'z':
            data_[14] *= -1.0

        om.MScriptUtil.createMatrixFromList(data_, matrix_)

        return matrix_

    def setMatrixRot_(self, matrix_, axis_):
        """Get the FlipRotate from matrix

        Arguments:
            matrix_ (matrix): The input Matrix.
            axis_ (axis): flip axis

        Returns:
            matrix : fliped matrix

        """
        data_ = self.matrixList_(matrix_)
        if axis_ == 'x':
            data_[0] *= -1.0
            data_[1] *= -1.0
            data_[2] *= -1.0

        elif axis_ == 'y':
            data_[4] *= -1.0
            data_[5] *= -1.0
            data_[6] *= -1.0

        elif axis_ == 'z':
            data_[8] *= -1.0
            data_[9] *= -1.0
            data_[10] *= -1.0

        om.MScriptUtil.createMatrixFromList(data_, matrix_)

        return matrix_
        
    def mirrorMatrix_(self, matrix_, axis_=None, type_=None):
        """Get the mirror matrix from matrix

        Arguments:
            matrix_ (matrix): The input Matrix.
            axis_ (axis): 'x', 'y', 'z'
            type_ (mirror type): 'flip', 'rot', 'pos'

        Returns:
            matrix : mirror matrix

        """
        if type_ == 'flip':
            getMatrix_ = self.setMatrixAxis_(matrix_, axis_)
        if type_ == 'rot':
            getMatrix_ = self.setMatrixRot_(matrix_, axis_)
        if type_ == 'pos':
            getMatrix_ = self.setMatrixPos(matrix_, axis_)
        return getMatrix_

    def getInverseTransform(self, object_):
        """Get the object_ from inverse matrix

        Arguments:
            object_ (node): transform node

        Returns:
            matrix : inverse matrix

        """
        return object_.getMatrix(worldSpace=True).inverse()

    def getMultMatrix(self, mat1, mat2):
        """Get the matrix from multiply

        Arguments:
            mat1 (matrix): The first input Matrix.
            mat2 (matrix): The second input Matrix.

        Returns:
            matrix : mult matrix

        """
        return mat1*mat2

    def mirror_(self, items, targets, axis='xy'):
        """Mirror the transform by selecting the top item and top target

        Arguments:
            axis_ (axis): 'xy', 'xz', 'yx', 'yz', 'zx', 'zy'

        Returns:
            matrix : transform mirror

        """
        if axis == 'xy':
            pAxis_ = 'x'
            rAxis_ = 'x'
            r2Axis_ = 'y'
            
        elif axis == 'xz':
            pAxis_ = 'x'
            rAxis_ = 'x'
            r2Axis_ = 'z'
        elif axis == 'yx':
            pAxis_ = 'y'
            rAxis_ = 'y'
            r2Axis_ = 'x'
            
        elif axis == 'yz':
            pAxis_ = 'y'
            rAxis_ = 'y'
            r2Axis_ = 'z'
            
        elif axis == 'zx':
            pAxis_ = 'z'
            rAxis_ = 'z'
            r2Axis_ = 'x'
            
        elif axis == 'zy':
            pAxis_ = 'z'
            rAxis_ = 'z'
            r2Axis_ = 'y'
        
        for i,item in enumerate(items):    
            matrix_ = item.getMatrix(worldSpace=True)
            
            matrix_ = self.mirrorMatrix_(matrix_, axis_=pAxis_, type_='flip')
            if i>0:
                PInvMatrix_ = self.getInverseTransform(targets[i].getParent())
                matrix_ = self.getMultMatrix(matrix_, PInvMatrix_)
            targets[i].setMatrix(matrix_)
            
            localmatrix_ = targets[i].getMatrix(worldSpace=True)
            
            matrix_ = self.mirrorMatrix_(localmatrix_, axis_=rAxis_, type_='rot')
            if i>0:
                matrix_ = self.getMultMatrix(matrix_, PInvMatrix_)
            targets[i].setMatrix(matrix_)
            
            matrix_ = self.mirrorMatrix_(localmatrix_, axis_=r2Axis_, type_='rot')
            if i>0:
                matrix_ = self.getMultMatrix(matrix_, PInvMatrix_)
            targets[i].setMatrix(matrix_)
            makeIdentity(targets[i], apply=1, t=0, r=1, s=1, n=0, pn=1)

    def getMirrorAxis(self):
        return self.ui.OMAxisCB.currentText()
    
    def mirror(self):
        objects_ = self.sel_()
        if len(objects_) == 1:
            objects_.append(duplicate(objects_)[0])
        items = self.getChildren_(objects_[0], type_=None)
        targets = self.getChildren_(objects_[1], type_=None)
        axis_ = self.getMirrorAxis()
        self.mirror_(items, targets, axis=axis_)


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