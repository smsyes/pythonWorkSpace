from pymel.core import *

def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}MM'.format(name_))
    return _node
    
def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}DM'.format(name_))
    return _node

def eularToQuat_(name_):
    _node = shadingNode('eulerToQuat', au=1, n='{}EQ'.format(name_))
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
    
def connectQuat(
                item_,
                target_,
                MM,
                DM,
                EQ,
                QI,
                QP,
                QE
                ):
    item_.wm >> MM.matrixIn[0]
    target_.pim >> MM.matrixIn[1]
    MM.matrixSum >> DM.inputMatrix
    target_.jo >> EQ.inputRotate
    EQ.outputQuat >> QI.inputQuat
    DM.outputQuat >> QP.input1Quat
    QI.outputQuat >> QP.input2Quat
    QP.outputQuat >> QE.inputQuat
    DM.ot >> target_.t
    QE.outputRotate >> target_.r
    
def createQM(object_, name_, pad_):
    items, targets = object_[0], object_[1]
    for i,item_ in enumerate(items):
        target_ = targets[i]
        localMMNode = multMatrix_(name_)
        localDMNode = decompose_(name_)
        jointOrietnEQNode = eularToQuat_(name_)
        QINode = quatInvert_(name_)
        Quat2Mult = quatProd_(name_)
        QENode = quatToEuler_(name_)
        connectQuat(
                    item_,
                    target_,
                    localMMNode,
                    localDMNode,
                    jointOrietnEQNode,
                    QINode,
                    Quat2Mult,
                    QENode
                    )
        pad_ +=1

sel = ls(sl=1, fl=1, r=1)
createQM(sel, name_, pad_)


