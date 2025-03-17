
# -*- coding: utf-8 -*-

################################################################################
## Rigging Class basic pymel script Hard cording..
##__AUTHOR__ = 'minsung'
##__UPDATE__ = 20231102
################################################################################
import pymel.core as pm

def fkikblend(items, target_):
    name_ = '{0}_fkik'.format(target_.name().split('_')[0])
    bm_ = pm.createNode('blendMatrix',n='{0}_bm'.format(name_))
    for i,item in enumerate(items):
        mm_ = pm.shadingNode('multMatrix',au=1, n='{0}{1}_mm'.format(name_,i))
        item.wm >> mm_.matrixIn[0]
        item.pim >> mm_.matrixIn[1]
        if i==0:
            mm_.matrixSum >> bm_.inputMatrix
        else:
            mm_.matrixSum >> bm_.target[0].targetMatrix
        
    bm_.outputMatrix >> target_.offsetParentMatrix

sel = pm.ls(sl=1,fl=1,r=1)
items = sel[:-1]
target = sel[-1]

fkikblend(items, target)