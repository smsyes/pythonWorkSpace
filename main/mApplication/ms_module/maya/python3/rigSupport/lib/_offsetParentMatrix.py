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

def halfList_(list_):
    half = int(len(list_)/2)
    return list_[:half], list_[half:]

def driveOffset_(item):
    dm_ = pm.shadingNode('multMatrix',au=1,n='{0}_DM'.format(item.name()))
    dm_.matrixIn[0].set(item.wim.get())
    item.wm >> dm_.matrixIn[1]
    return dm_
    
def offsetMatrix_(list_):
    item_, target_ = halfList_(list_)
    for i,item in enumerate(item_):
        dm_ = driveOffset_(item)
        dm_.matrixSum >> target_[i].offsetParentMatrix

def pickMatrix_(list_, type_=[]):
    item_, target_ = halfList_(list_)
    for i,item in enumerate(item_):
        pic_ = pm.createNode('pickMatrix', n='{0}_PickM'.format(item.name()))
        dm_ = driveOffset_(item)
        dm_.matrixSum >> pic_.inputMatrix
        pic_.outputMatrix >> target_[i].offsetParentMatrix
        useMatrix_(pic_, type_)   
        
def blendMatrix_(list_, type_=[]):
    item_, target_ = list_[:-1], list_[-1]
    bm_ = pm.createNode('blendMatrix', n='{0}_BM'.format(target_.name()))
    for i,item in enumerate(item_):
        dm_ = driveOffset_(item)
        dm_.matrixSum >> bm_.target[i].targetMatrix
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

        
# sel = pm.ls(sl=1,fl=1,r=1)
# offsetMatrix_(sel)
# pickMatrix_(sel)
# blendMatrix_(sel)


