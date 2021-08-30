# Module Build Rebuild Connection 
from pymel.core import *
import json
import os
import sys



def importCNTInfo(fileName):
    with open(fileName) as f:
        data_ = json.load(f)
    return data_

def findHistory(object_, **kwargs):
    if object_.listHistory(**kwargs):
        input_ = object_.listHistory(**kwargs)
    else:
        input_ = None
    return input_

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2
    
def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

def connect_attrs(object_, output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)

def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}MM'.format(name_))
    return _node
    
def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}DM'.format(name_))
    return _node

def offsetMatrix(item, target):
    mat1_ = getTransform(target)
    mat2_ = getInverseTransform(item)
    return getMultMatrix(mat1_, mat2_)
    
def matrixConst(item, target, type_, attrs):
    _name = '{}2{}'.format(item.name(),target.name())

    MTMX_ = multMatrix_(_name)
    DCMX_ = decompose_(_name)
    
    if type_ == 'local':
        pass
    elif type_ == 'parent':
        offset_ = offsetMatrix(item, target)
        MTMX_.setAttr('matrixIn[0]', offset_)
    connect_attrs(ls(item, MTMX_), 'wm', 'matrixIn[1]')
    if target.getParent():
        connect_attrs(ls(target.getParent(), MTMX_), 'wim', 'matrixIn[2]')
    else:
        connect_attrs(ls(target, MTMX_), 'pim', 'matrixIn[2]')
    connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
    for attr in attrs:
        out_ = 'o{}'.format(attr)
        connect_attrs(ls(DCMX_, target), out_, attr)

def delete_Mnode(object_):
    inputDM = findHistory(object_, type='decomposeMatrix')
    inputMM = findHistory(object_, type='multMatrix')
    delete(ls(inputDM, inputMM))

def MMSourceAttr(object_):
    findMM = findHistory(object_, type='multMatrix')
    if findMM:
        inputAttr = findMM[0].attr('matrixIn[1]')
        sourceAttr = inputAttr.listConnections()[0]
    else:
        sourceAttr = None
    return sourceAttr
        
def BRControl(jsonPath, prefix, Mode_):
    
    absPath = os.path.abspath(jsonPath)
    CNTData = importCNTInfo(absPath)
    Module = CNTData["Module"]
    Modules_ = Module.keys()
    MData_ = Module[Modules_[0]]
    MConst_ = MData_["MConst"]
    MConnect_ = MData_["Connect"]
    
    reConst = {}
    for i,item in enumerate(MConst_.keys()):
        IData_ = MConst_[item]
        Targets_ = IData_['Target']
        Types_ = IData_["Type"]
        Atts_ = IData_["Attr"]
        item = PyNode('{}:{}'.format(prefix, item))
        for t,target in enumerate(Targets_):
            target = PyNode(target)
            if Mode_ == 'Rebuild':
                if Types_[t] == "Local":
                    matrixConst(item, target, 'local', Atts_[t])
                if Types_[t] == "Parent":
                    matrixConst(item, target, 'parent', Atts_[t])
            elif Mode_ == 'Build':
                delete_Mnode(target)
    
    
    for i,item in enumerate(MConnect_.keys()):
        IData_ = MConnect_[item]
        Targets_ = IData_['Target']
        Atts_ = IData_["Attr"]
        item = PyNode('{}:{}'.format(prefix, item))
        for t,target in enumerate(Targets_):
            target = PyNode(target)
            itemAttr = item.attr(Atts_[t])
            targetAttr = target.attr(Atts_[t])
            if Mode_ == 'Rebuild':
                itemAttr.connectAttr(targetAttr)
            elif Mode_ == 'Build':
                itemAttr.disconnect()


filePath = "C:\Users\RI-PC02\Documents\maya\\2018\\scripts\ConnectionInfo.json"

prefix = "Left"

BRControl(filePath, prefix, 'Build')
