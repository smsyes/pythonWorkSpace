import pymel.core as pm

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
        item01[i].wm >> bm_.inputMatrix
        item02[i].wm >> bm_.target[0].targetMatrix
        bm_.outputMatrix >> mm_.matrixIn[1]
        t_.parentInverseMatrix[0] >> mm_.matrixIn[2]
        mm_.matrixSum >> dm_.inputMatrix

        t_.jo.set(0,0,0)
        dm_.ot >> t_.t
        dm_.outputRotate >> t_.r
        dm_.os >> t_.s

def ikfkListBlend(list_):
    selNum_ = len(list_)
    div_ = int(selNum_/3)
    if div_>1:
        item01 = [list_[i] for i in list(range(div_))]
        item02 = [list_[i+div_] for i in list(range(div_))]
        target = [list_[i+div_*2] for i in list(range(div_))]
    else:
        item01, item02, target = [list_[0]], [list_[1]], [list_[2]]
    ikfkBlend(item01, item02, target)        
        
sel = pm.ls(sl=1,fl=1,r=1)
ikfkListBlend(sel)