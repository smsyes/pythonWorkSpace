
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
# crvShape_(cube)
# CreateFKControl(sel)
# freezeOffset(sel)
# dir(circleList[i-1][0].offsetParentMatrix.__class__)
