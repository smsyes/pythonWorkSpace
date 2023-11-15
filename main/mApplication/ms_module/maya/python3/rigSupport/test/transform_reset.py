import pymel.core as pm
import pymel.core.datatypes as dt

def reset(list_):
    matrix_ = dt.Matrix()
    for i in list_:
        mat1_ = i.getMatrix(worldSpace=True)
        mat2_ = i.getParent().getMatrix(worldSpace=True).inverse()
        offset_ = mat1_*mat2_
        if i.offsetParentMatrix.get() != matrix_:
            i.offsetParentMatrix.set(matrix_)
        if i.jointOrient.get() != (0,0,0):
            i.jointOrient.set(0,0,0)
        i.setMatrix(offset_)
        rot_ = i.r.get()
        i.jointOrient.set(rot_)
        i.r.set(0,0,0)

sel = pm.ls(sl=1,fl=1,r=1)
reset(sel)