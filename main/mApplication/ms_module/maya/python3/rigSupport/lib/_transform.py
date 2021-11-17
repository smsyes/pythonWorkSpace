# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
import maya.OpenMaya as om
import pymel.core.datatypes as dt

def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            parent(obj, object_[i-1])

def getChildren_(object_, type_=None):
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

def divide_in_two(object_):
    divideNum = int(len(object_)/2)
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def get_transform(object_):
    _name = object_.name()
    trans = xform(_name, q=1, ws=1, rp=1 )
    rot = xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)

def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)

def set_rot_xform(object_, rot):
    xform(object_, r = 1, ro = rot)

def get_trans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]
    
def get_rot(object_):
    return xform(object_, q=1, ws=1, ro=1 )

def set_transform_(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        pos, rot = get_transform(item)
        set_trans_xform(targets[i], pos)
        set_rot_xform(targets[i], rot)

def getInverseTransform(object_):
    """Get the object_ from inverse matrix

    Arguments:
        object_ (node): transform node

    Returns:
        matrix : inverse matrix

    """
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    """Get the matrix from multiply

    Arguments:
        mat1 (matrix): The first input Matrix.
        mat2 (matrix): The second input Matrix.

    Returns:
        matrix : mult matrix

    """
    return mat1*mat2

def matrixList_(matrix_):
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

def setMatrixAxis_(matrix_, axis_):
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

def setMatrixPos(matrix_, axis_):
    """Get the FlipAxis from matrix

    Arguments:
        matrix_ (matrix): The input Matrix.
        axis_ (axis): flip axis

    Returns:
        matrix : fliped matrix

    """
    data_=matrixList_(matrix_)

    if axis_ == 'x':
        data_[12] *= -1.0

    elif axis_ == 'y':
        data_[13] *= -1.0

    elif axis_ == 'z':
        data_[14] *= -1.0

    om.MScriptUtil.createMatrixFromList(data_, matrix_)

    return matrix_
    
def setMatrixRot_(matrix_, axis_):
    """Get the FlipRotate from matrix

    Arguments:
        matrix_ (matrix): The input Matrix.
        axis_ (axis): flip axis

    Returns:
        matrix : fliped matrix

    """
    data_ = matrixList_(matrix_)
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

def setMatrixFromList(list_):

    matrix_ = dt.Matrix()
    data_ = matrixList_(matrix_)
    data_[0] = list_[0]
    data_[1] = list_[1]
    data_[2] = list_[2]
    data_[4] = list_[3]
    data_[5] = list_[4]
    data_[6] = list_[5]
    data_[8] = list_[6]
    data_[9] = list_[7]
    data_[10] = list_[8]
    data_[12] = list_[9]
    data_[13] = list_[10]
    data_[14] = list_[11]

    om.MScriptUtil.createMatrixFromList(data_, matrix_)

    return matrix_

def mirrorMatrix_(matrix_, axis_=None, type_=None):
    """Get the mirror matrix from matrix

    Arguments:
        matrix_ (matrix): The input Matrix.
        axis_ (axis): 'x', 'y', 'z'
        type_ (mirror type): 'flip', 'rot', 'pos'

    Returns:
        matrix : mirror matrix

    """
    if type_ == 'flip':
        getMatrix_ = setMatrixAxis_(matrix_, axis_)
    if type_ == 'rot':
        getMatrix_ = setMatrixRot_(matrix_, axis_)
    if type_ == 'pos':
        getMatrix_ = setMatrixPos(matrix_, axis_)
    return getMatrix_


def mirror_(items, targets, axis='xy'):
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
        
        matrix_ = mirrorMatrix_(matrix_, axis_=pAxis_, type_='flip')
        if i>0:
            PInvMatrix_ = getInverseTransform(targets[i].getParent())
            matrix_ = getMultMatrix(matrix_, PInvMatrix_)
        targets[i].setMatrix(matrix_)
        
        localmatrix_ = targets[i].getMatrix(worldSpace=True)
        
        matrix_ = mirrorMatrix_(localmatrix_, axis_=rAxis_, type_='rot')
        if i>0:
            matrix_ = getMultMatrix(matrix_, PInvMatrix_)
        targets[i].setMatrix(matrix_)
        
        matrix_ = mirrorMatrix_(localmatrix_, axis_=r2Axis_, type_='rot')
        if i>0:
            matrix_ = getMultMatrix(matrix_, PInvMatrix_)
        targets[i].setMatrix(matrix_)
        makeIdentity(targets[i], apply=1, t=0, r=1, s=1, n=0, pn=1)

def getLocalTrans(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        wm_ = item.getMatrix(worldSpace=True)
        targetParent_ = targets[i].getParent()
        wim_ = targetParent_.getMatrix(worldSpace=True).inverse()
        multM_ = wm_*wim_
        getLocalTrans_ = multM_[-1][:-1]
    return getLocalTrans_.get()