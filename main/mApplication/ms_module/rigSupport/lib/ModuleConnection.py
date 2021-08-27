# Module Build Rebuild Connection 
from pymel.core import *
import json
import os

with open(abs_file) as f:
    data_ = json.load(f)

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

def parent_matrix(object_, attr_):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        _name = '{}2{}'.format(items[i].name(),target.name())
    
        MTMX_ = multMatrix_(_name)
        DCMX_ = decompose_(_name)
        mat1_ = getTransform(target)
        mat2_ = getInverseTransform(items[i])
        multmat_ = getMultMatrix(mat1_, mat2_)
        
        MTMX_.setAttr('matrixIn[0]', multmat_)
        connect_attrs(ls(items[0], MTMX_), 'wm', 'matrixIn[1]')
        if target.getParent():
            connect_attrs(ls(target.getParent(), MTMX_), 'wim', 'matrixIn[2]')
        else:
            connect_attrs(ls(target, MTMX_), 'pim', 'matrixIn[2]')
        connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
        if 't' in attr_:
            connect_attrs(ls(DCMX_, target), 'ot', 't')
        if 'r' in attr_:
            connect_attrs(ls(DCMX_, target), 'or', 'r')
        if 's' in attr_:
            connect_attrs(ls(DCMX_, target), 'os', 's')

def local_matrix(object_, attr_):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        if target.getParent():
            parent_ = target.getParent()
            atts_ = 'wim'
        else:
            parent_ = target
            atts_ = 'pim'
        _name = target.name()
        MTMX_ = multMatrix_(_name)
        DCMX_ = decompose_(_name)  
        connect_attrs(ls(items[i], MTMX_), 'wm', 'matrixIn[0]')
        connect_attrs(ls(parent_, MTMX_), atts_, 'matrixIn[1]')
        connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
        if 't' in attr_:
            connect_attrs(ls(DCMX_, target), 'ot', 't')
        if 'r' in attr_:
            connect_attrs(ls(DCMX_, target), 'or', 'r')
        if 's' in attr_:
            connect_attrs(ls(DCMX_, target), 'os', 's')

def importCNTInfo(fileName):
    with open(fileName) as f:
        data_ = json.load(f)
    return data_


base_dir = os.path.join("D:\Works\_Script\main\mApplication\ms_module","rigSupport\lib")
filename = str('ConnectionInfo')+".json"
abs_file = os.path.join(base_dir, filename)

prefix = "Arm"

CNTData = importCNTInfo(abs_file)
Module = CNTData["Module"]
Modules_ = Module.keys()
MData_ = Module[Modules_[0]]
MConst_ = MData_["MConst"]

'''
for i,item in enumerate(MConst_.keys()):
    IData_ = MConst_[item]
    Targets_ = IData_['Target']
    Types_ = IData_["Type"]
    Atts_ = IData_["Attr"]
    for t,target in enumerate(Targets_):
        target = '{}:{}'.format(prefix, target)
        if Types_[t] == "Local":
            print "Local"
            # print ls(item,target)
            # print  Atts_[t]
            local_matrix(ls(item,target), Atts_[t])
        if Types_[t] == "Parent":
            print "Parent"
            # print  Atts_[t]
            parent_matrix(ls(item,target), Atts_[t])
        if Types_[t] == "LocalSet":
            print "LocalSet"
            # print  Atts_[t]
'''

# parent_matrix(selObject, 't','r')
# local_matrix(sel, t='t', r='r')

sel = ls(sl=1, fl=1, r=1)
dir(sel[0])
exDM_ = sel[0].listHistory(type='decomposeMatrix')
exMM_ = sel[0].listHistory(type='multMatrix')
sel[0].disconnectAttr('t')
sel[0].disconnectAttr('r')
delete(ls(exDM_, exMM_))



