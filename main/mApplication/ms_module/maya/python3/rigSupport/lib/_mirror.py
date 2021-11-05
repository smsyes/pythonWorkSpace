from pymel.core import *
import maya.OpenMaya as om
import pymel.core.datatypes as dt

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

def mirror_(matrix_, axis_=None, type_=None):
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


def topSelectMirror_(axis='xy'):
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
    
    sel = ls(sl=1,r=1)
    
    iObjects_ = getChildren_(sel[0], type_=None)
    tObjects_ = getChildren_(sel[1], type_=None)
    
    for i,item in enumerate(iObjects_):    
        matrix_ = item.getMatrix(worldSpace=True)
        
        matrix_ = mirror_(matrix_, axis_=pAxis_, type_='flip')
        if i>0:
            PInvMatrix_ = getInverseTransform(tObjects_[i].getParent())
            matrix_ = getMultMatrix(matrix_, PInvMatrix_)
        tObjects_[i].setMatrix(matrix_)
        
        localmatrix_ = tObjects_[i].getMatrix(worldSpace=True)
        
        matrix_ = mirror_(localmatrix_, axis_=rAxis_, type_='rot')
        if i>0:
            matrix_ = getMultMatrix(matrix_, PInvMatrix_)
        tObjects_[i].setMatrix(matrix_)
        
        matrix_ = mirror_(localmatrix_, axis_=r2Axis_, type_='rot')
        if i>0:
            matrix_ = getMultMatrix(matrix_, PInvMatrix_)
        tObjects_[i].setMatrix(matrix_)
    

   
topSelectMirror_(axis='xy')

