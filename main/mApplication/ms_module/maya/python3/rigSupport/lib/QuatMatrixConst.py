# -*- coding: utf-8 -*-
from pymel.core import *

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2

def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}localMM'.format(name_))
    return _node
    
def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}localDM'.format(name_))
    return _node

def eularToQuat_(name_):
    _node = shadingNode('eulerToQuat', au=1, n='{}jointOrietnEQ'.format(name_))
    return _node

def quatInvert_(name_):
    _node = shadingNode('quatInvert', au=1, n='{}QI'.format(name_))
    return _node

def quatProd_(name_):
    _node = shadingNode('quatProd', au=1, n='{}QP'.format(name_))
    return _node
    
def quatToEuler_(name_):
    _node = shadingNode('quatToEuler', au=1, n='{}QE'.format(name_))
    return _node

def MCon(object_, t_=None, r_=None, s_=None, maintain=None):
    item_, target_ = object_[0], object_[1]
    name_ = target_.name()
    MM = multMatrix_(name_)
    DM = decompose_(name_)
    if target_.type() == 'joint':
        jointOrietnEQ = eularToQuat_(name_)
        QI = quatInvert_(name_)
        QP = quatProd_(name_)
        QE = quatToEuler_(name_)
    mat1_ = getTransform(target_)
    mat2_ = getInverseTransform(item_)
    multmat_ = getMultMatrix(mat1_, mat2_)

    if maintain == 1:
        MM.attr('matrixIn[0]').set(multmat_)
    else:
        pass

    item_.wm >> MM.matrixIn[1]
    target_.pim >> MM.matrixIn[2]
    MM.matrixSum >> DM.inputMatrix
    if target_.type() == 'joint':
        target_.r >> jointOrietnEQ.inputRotate
        jointOrietnEQ.outputQuat >> QI.inputQuat
        DM.outputQuat >> QP.input1Quat
        QI.outputQuat >> QP.input2Quat
        QP.outputQuat >> QE.inputQuat
    if t_:
        DM.ot >> target_.t
    if r_:
        if target_.type() == 'joint':
            QE.outputRotate >> target_.jo
            target_.attr('r').set([0,0,0])
        else:
            DM.outputRotate >> target_.r
    if s_:
        DM.os >> target_.s

# 아이템 잡고 타겟 잡고 실행. (maintain[0] : 아이템 트랜스폼으로 옮겨지고 연결됩니다. maintain[0] : 아이템 OffSet 값을 유지하고 연결됩니다.) 
# sel = ls(sl=1, fl=1, r=1)
# MCon(sel, t_=1, r_=1, s_=1, maintain=1)
