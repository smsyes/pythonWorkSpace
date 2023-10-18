import pymel.core as pm


def matrixConst01(item_, target_, t_=None, r_=None):
    mm_ = pm.createNode('multMatrix',n='{0}_mm'.format(target_))
    dm_ = pm.createNode('decomposeMatrix',n='{0}_dm'.format(target_))

    mat1_ = target_.getMatrix(worldSpace=True)
    mat2_ = item_.getMatrix(worldSpace=True).inverse()
    offset_ = mat1_*mat2_

    mm_.matrixIn[0].set(offset_)
    item_.wm >> mm_.matrixIn[1]
    target_.pim >> mm_.matrixIn[2]
    mm_.matrixSum >> dm_.inputMatrix
    
    if t_:
        dm_.outputTranslate >> target_.t
    if r_:
        dm_.outputRotate >> target_.r
    
    
sel = pm.ls(sl=1,fl=1,r=1)
matrixConst01(sel[0], sel[1],t_=1,r_=1)
