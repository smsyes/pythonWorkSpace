
# -*- coding: utf-8 -*-

################################################################################
## Rigging Class basic pymel script Hard cording..
##__AUTHOR__ = 'minsung'
##__UPDATE__ = 20230823
################################################################################

import pymel.core as pm


# selection create FK control
def CreateFKControl(list_):
    circleList = []
    for i in list_:
        circleShape_ = pm.circle(nr=(1,0,0),n='{}_{}'.format(i.name(),'ctrl'))
        offset_ = pm.createNode('transform',n='{}_offset'.format(i.name()))
        pm.parent(circleShape_, offset_)
        pm.matchTransform(offset_,i)
        circleList.append(circleShape_)

    for i,c_ in enumerate(circleList):
        if i >0:
            pm.parent(circleList[i][0].getParent(), circleList[i-1][0])
        
def freezeOffset(list_):
    for i in list_:
        matrix_ = i.getMatrix()
        i.offsetParentMatrix.set(matrix_)
        i.t.set((0,0,0))
        i.r.set((0,0,0))
        i.s.set((1,1,1))

# create crv shape
def crvShape_(list_):
    crv_ = pm.curve(d = list_[0], 
                 p = list_[1], 
                 k = list_[2])
    return crv_
    
cube = [1, [(0.5,-0.5,0.5),(0.5,0.5,0.5),(0.5,0.5,-0.5),
(0.5,-0.5,-0.5),(0.5,-0.5,0.5),(-0.5,-0.5,0.5),(-0.5,0.5,0.5),(-0.5,0.5,-0.5),
(-0.5,-0.5,-0.5),(0.5,-0.5,-0.5),(0.5,0.5,-0.5),(-0.5,0.5,-0.5),
(-0.5,-0.5,-0.5),(-0.5,-0.5,0.5),(-0.5,0.5,0.5),(0.5,0.5,0.5)], [0 ,1 ,2 ,3 ,4 ,
5 ,6 ,7 ,8 ,9 ,10 ,11 ,12 ,13 ,14 ,15]]
pin = [1,[(0,0,0),(-1.10596e-06,1.386038,0),(0.192665,1.424866,0),(0.356355,1.533645,0),
(0.465134,1.697335,0),(0.503962,1.89,0),(0.465134,2.082665,0),(0.356355,2.246355,0),
(0.192665,2.355134,0),(-1.10596e-06,2.393962,0),(-0.192663,2.355134,0),
(-0.356359,2.246355,0),(-0.465128,2.082665,0),(-0.504,1.89,0),(-0.465128,1.697335,0),
(-0.356359,1.533645,0),(-0.192663,1.424866,0),(-1.10596e-06,1.386038,0)],
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]]

def selectionControl(list_):
    for i in list_:
        crv_ = crvShape_(pin)
        pm.matchTransform(crv_,i)

def offsetMatrix(item, target):
    mat1_ = item.wm[0].get()
    mat2_ = target.parentInverseMatrix.get()
    return mat1_*mat2_

def ikfkBlend(item01, item02, target):    
    for i,t_ in enumerate(target):
        name_ = '{0}_fkik'.format(t_.name().split('_')[0])
        bm_ = pm.createNode('blendMatrix',n='{0}_bm'.format(name_))
        mm_ = pm.shadingNode('multMatrix',au=1, n='{0}_mm'.format(name_))
        dm_ = pm.createNode('decomposeMatrix',n='{0}_dm'.format(name_))
        offset_ = offsetMatrix(target, target)
        item01[i].wm >> bm_.inputMatrix
        item02[i].wm >> bm_.target[0].targetMatrix
        mm_.matrixIn[0].set(offset_)
        bm_.outputMatrix >> mm_.matrixIn[1]
        t_.parentInverseMatrix[0] >> mm_.matrixIn[2]
        mm_.matrixSum >> dm_.inputMatrix

        t_.jo.set(0,0,0)
        dm_.ot >> t_.t
        dm_.outputRotate >> t_.r
        dm_.os >> t_.s


def ikfkListBlend(list_):
    selNum_ = len(list_)
    div_ = selNum_/3
    if div_>1:
        item01 = [list_[0+i] for i in range(div_)]
        item02 = [list_[3+i] for i in range(div_)]
        target = [list_[6+i] for i in range(div_)]
    else:
        item01, item02, target = [list_[0]], [list_[1]], [list_[2]]
    ikfkBlend(item01, item02, target)

# selection create proxy attr
'''
pm.addAttr(ln='IK_FK', proxy='spine_ik_switch.IK_FK')
'''

#  joint labeling...
'''
child_ = sel[0].listRelatives(type='joint',ad=1)
[j_.rotateOrder.set(0) for j_ in child_]
[j_.side.set(2) for j_ in child_]
[j_.attr('type').set(7) for j_ in sel]
[j_.attr('type').set(18) for j_ in sel]
[j_.attr('otherType').set(j_.name().split('_r')[0]) for j_ in sel]
[j_.attr('otherType').set('eye') for j_ in sel]
'''

sel = pm.ls(sl=1,fl=1,r=1)

# selectionControl(sel)
# crvShape_(pin)
# CreateFKControl(sel)
# freezeOffset(sel)
# dir(circleList[i-1][0].offsetParentMatrix.__class__)
# ikfkListBlend(sel)



