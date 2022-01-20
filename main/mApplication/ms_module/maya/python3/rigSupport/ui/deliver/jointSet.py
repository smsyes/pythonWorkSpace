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

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance

from UI import jointSetUI
try:
    from imp import *
except:
    pass

reload(jointSetUI)

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = jointSetUI.Ui_Form()
        self.ui.setupUi(self)

        self.config = self.loadConfig_("configDict.json")
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
    
    def jsonImport(self, jsonName):
        currentDir = os.path.dirname(__file__)
        filePath = os.path.join(currentDir, 'Json', jsonName)
        with open(filePath) as f:
            data_ = json.load(f)
        return data_

    def loadConfig_(self, jsonName):
        # jsonName = "configDict.json"
        return self.jsonImport(jsonName)

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
        joints = self.getChildren_(sel[0], type_='joint')
        
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