import pymel.core as pm

sel = pm.ls(sl=1,fl=1,r=1)

"""
circleList = []
for i in sel:
    circleShape_ = pm.circle(nr=(1,0,0),n='{}_{}'.format(i.name(),'ctrl'))
    offset_ = pm.createNode('transform',n='{}_offset'.format(i.name()))
    pm.parent(circleShape_, offset_)
    pm.matchTransform(offset_,i)
    circleList.append(circleShape_)

for i,c_ in enumerate(circleList):
    if i >0:
        pm.parent(circleList[i][0].getParent(), circleList[i-1][0])
        
"""
# dir(circleList[i-1][0].offsetParentMatrix.__class__)

for i in sel:
    matrix_ = i.getMatrix()
    i.offsetParentMatrix.set(matrix_)
    i.t.set((0,0,0))
    i.r.set((0,0,0))
    i.s.set((1,1,1))