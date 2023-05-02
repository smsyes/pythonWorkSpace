# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file '.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
##__AUTHOR__ = 'minsung'
##__UPDATE__ = 20230427
################################################################################
import pymel.core as pm
import maya.api.OpenMaya as OpenMaya2
from rigSupport.lib import _matrix

def get_dag_path2(node):
    """Get the MDagPath of the given node.
    :param node: Node name
    :return: Node MDagPath
    """
    selection_list = OpenMaya2.MSelectionList()
    selection_list.add(node.name())
    return selection_list.getDagPath(0)

def halfList_(list_):
    half = int(len(list_)/2)
    return list_[:half], list_[half:]

def driveOffset_(item,target):
    mm_ = pm.shadingNode('multMatrix',au=1,n='{0}_MM'.format(item.name()))
    mm_.matrixIn[0].set(target.wim.get())
    item.wm >> mm_.matrixIn[1]
    return mm_
    
def offsetMatrix_(list_):
    item_, target_ = halfList_(list_)
    for i,item in enumerate(item_):
        mm_ = pm.shadingNode('multMatrix',au=1,n='{0}_MM'.format(item.name()))
        offset = (
            get_dag_path2(target_[i]).exclusiveMatrix() * 
            OpenMaya.MMatrix(cmds.getAttr("{}.worldInverseMatrix[0]".format(item)))
        )
        mm_.matrixIn[0].set(offset)
        item.wm >> mm_.matrixIn[1]
        if target_[i].getParent():
            target_[i].getParent().wim >> mm_.matrixIn[2]
        mm_.matrixSum >> target_[i].offsetParentMatrix


def pickMatrix_(list_, type_=[]):
    item_, target_ = halfList_(list_)
    for i,item in enumerate(item_):
        pic_ = pm.createNode('pickMatrix', n='{0}_PickM'.format(item.name()))
        mm_ = driveOffset_(item,target_[i])
        mm_.matrixSum >> pic_.inputMatrix
        pic_.outputMatrix >> target_[i].offsetParentMatrix
        useMatrix_(pic_, type_)   
        
def blendMatrix_(list_, type_=[]):
    item_, target_ = list_[:-1], list_[-1]
    bm_ = pm.createNode('blendMatrix', n='{0}_BM'.format(target_.name()))
    for i,item in enumerate(item_):
        mm_ = driveOffset_(item,target_[i])
        mm_.matrixSum >> bm_.target[i].targetMatrix
    bm_.outputMatrix >> target_.offsetParentMatrix
    useMatrix_(bm_, type_)
        
def useMatrix_(node_, type_):
    if not type_:
            pass
    else:
        if not 't' in type_:
            node_.useTranslate.set(0)
        if not 'r' in type_:
            node_.useRotate.set(0)
        if not 's' in type_:
            node_.useScale.set(0)
        if not 'sh' in type_:
            node_.useShear.set(0)
    
def createQM(object_):
    item_, target_ = halfList_(object_)
    for i,item in enumerate(item_):
        name_ = item.name()
        MM = pm.createNode('multMatrix', n='{}_MM'.format(name_))
        DM = pm.createNode('decomposeMatrix', n='{}_DM'.format(name_))
        EQ = pm.shadingNode('eulerToQuat', au=1, n='{}_EQ'.format(name_))
        QI = pm.shadingNode('quatInvert', au=1, n='{}_QI'.format(name_))
        QP = pm.shadingNode('quatProd', au=1, n='{}_QP'.format(name_))
        QE = pm.shadingNode('quatToEuler', au=1, n='{}_QE'.format(name_))
        item.wm >> MM.matrixIn[0]
        target_[i].pim >> MM.matrixIn[1]
        MM.matrixSum >> DM.inputMatrix
        if target_[i].type() == 'joint':
            target_[i].jo >> EQ.inputRotate
        else:
            target_[i].r >> EQ.inputRotate
        EQ.outputQuat >> QI.inputQuat
        DM.outputQuat >> QP.input1Quat
        QI.outputQuat >> QP.input2Quat
        QP.outputQuat >> QE.inputQuat
        DM.ot >> target_[i].t
        QE.outputRotate >> target_[i].r


# parentConst = pm.ls(type='parentConstraint')
# pConst = pm.ls(type='pointConstraint')
# oConst = pm.ls(type='orientConstraint')
# sConst = pm.ls(type='scaleConstraint')

# sel = pm.ls(sl=1,fl=1,r=1)
# offsetMatrix_(sel)
# createQM(sel)



sel = pm.select(hi=1)
hi_ = pm.ls(sl=1)

const_ = pm.ls(hi_, type='parentConstraint')
pm.select(cl=1)
# offsetMatrix_(sel)
# pickMatrix_(sel, ['t','r'])
# blendMatrix_(sel, ['t','r'])

# types = ['parentConstraint','pointConstraint','orientConstraint','scaleConstraint']

# or t in types:

# consts = pm.ls(type=types[0])

targets_ = []
for p in const_:
    target_ = p.target.target[0].targetParentMatrix.listConnections()[0]

    index_ = 0
    while True:
        if p.target.target[index_].targetParentMatrix.listConnections():
            targets_.append(p.target.target[index_].targetParentMatrix.listConnections()[0])
            index_ +=1
        else:
            break
            
    constItem = p.constraintParentInverseMatrix.listConnections()[0]
    pm.delete(p)
    offsetMatrix_([target_,constItem])

