from pymel.core import *

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2

def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}localMMNode'.format(name_))
    return _node
    
def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}localDMNode'.format(name_))
    return _node

def eularToQuat_(name_):
    _node = shadingNode('eulerToQuat', au=1, n='{}jointOrietnEQNode'.format(name_))
    return _node

def quatInvert_(name_):
    _node = shadingNode('quatInvert', au=1, n='{}QINode'.format(name_))
    return _node

def quatProd_(name_):
    _node = shadingNode('quatProd', au=1, n='{}Quat2Mult'.format(name_))
    return _node
    
def quatToEuler_(name_):
    _node = shadingNode('quatToEuler', au=1, n='{}QENode'.format(name_))
    return _node
    

    
def creatjointOrietnEQNodeM(object_, t_=None, r_=None, s_=None, maintain=None):
    item_, target_ = object_[0], object_[1]
    name_ = '{}To{}'.format(item_.name(),target_.name())
    localMMNode = multMatrix_(name_)
    localDMNode = decompose_(name_)
    jointOrietnEQNode = eularToQuat_(name_)
    QINode = quatInvert_(name_)
    Quat2Mult = quatProd_(name_)
    QENode = quatToEuler_(name_)
    mat1_ = getTransform(target_)
    mat2_ = getInverseTransform(item_)
    multmat_ = getMultMatrix(mat1_, mat2_)

    if maintain == 1:
        localMMNode.attr('matrixIn[0]').set(multmat_)
    else:
        pass

    item_.wm >> localMMNode.matrixIn[1]
    target_.pim >> localMMNode.matrixIn[2]
    localMMNode.matrixSum >> localDMNode.inputMatrix
    target_.r >> jointOrietnEQNode.inputRotate
    jointOrietnEQNode.outputQuat >> QINode.inputQuat
    localDMNode.outputQuat >> Quat2Mult.input1Quat
    QINode.outputQuat >> Quat2Mult.input2Quat
    Quat2Mult.outputQuat >> QENode.inputQuat
    if t_:
        localDMNode.ot >> target_.t
    if r_:
        QENode.outputRotate >> target_.r
    if s_:
        localDMNode.os >> target_.s


                    
sel = ls(sl=1, fl=1, r=1)
creatjointOrietnEQNodeM(sel, t_=1, r_=1, s_=1, maintain=0)
