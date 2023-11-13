import pymel.core as pm
import pymel.core.datatypes as dt

def freezeOffset(list_):
    for i in list_:
        matrix_ = i.getMatrix()
        i.offsetParentMatrix.set(matrix_)
        if i.type() == 'joint':
            i.jo.set((0,0,0))
        i.t.set((0,0,0))
        i.r.set((0,0,0))
        i.s.set((1,1,1))
        

def offset(list_):
    parentList = []
    for i in list_:
        parent_ = pm.createNode('transform', n='{0}_offset'.format(i.name()))
        pm.matchTransform(parent_, i)
        p_ = i.getParent()
        pm.parent(i,parent_)
        pm.parent(parent_, p_)
        parentList.append(parent_)
    return parentList

def reset(list_):
    matrix_ = dt.Matrix()
    for i in list_:
        if i.offsetParentMatrix.get() != matrix_:
            i.offsetParentMatrix.set(matrix_)
        p_ = i.getParent()
        pm.matchTransform(i, p_)

sel = pm.ls(sl=1,fl=1,r=1)

offsets = offset(sel)
freezeOffset(offsets)
reset(sel)
freezeOffset(sel)
