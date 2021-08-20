from pymel.core import *

def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

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
    connect_attr(item_, 'wm', MM, 'matrixIn[0]')
    connect_attr(target_, 'pim', MM, 'matrixIn[1]')
    connect_attr(MM, 'matrixSum', DM, 'inputMatrix')
    connect_attr(target_, 'jointOrient', EQ, 'inputRotate')
    connect_attr(EQ, 'outputQuat', QI, 'inputQuat')
    connect_attr(DM, 'outputQuat', QP, 'input1Quat')
    connect_attr(QI, 'outputQuat', QP, 'input2Quat')
    connect_attr(QP, 'outputQuat', QE, 'inputQuat')
    connect_attr(DM, 'ot', target_, 't')
    connect_attr(QE, 'outputRotate', target_, 'r')
    
def createQM(object_, name_, pad_):
    items, targets = divide_in_two(object_)
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

pad_ = 16
baseName_ = "Ginsenroot1IK"
insertName_ = 'Sub'
name_ = baseName_ + insertName_

sel = ls(sl=1, fl=1, r=1)
createQM(sel, name_, pad_)


