import pymel.core as pm
    

sel = pm.ls(sl=1)
num_ = len(sel[2:])
div_ = 1/num_

for t,target_ in enumerate(sel[2:]):
    pb_ = pm.createNode('pairBlend',n='{0}_pb'.format(target_))
    pb_.weight.set(div_*(t+1))
    for i,item_ in enumerate(sel[:2]):
        mm_ = pm.createNode('multMatrix',n='{0}_mm'.format(target_))
        dm_ = pm.createNode('decomposeMatrix',n='{0}_dm'.format(target_))
        mat1_ = target_.getMatrix(worldSpace=True)
        mat2_ = item_.getMatrix(worldSpace=True).inverse()
        offset_ = mat1_*mat2_
        mm_.matrixIn[0].set(offset_)
        item_.wm >> mm_.matrixIn[1]
        target_.pim >> mm_.matrixIn[2]
        mm_.matrixSum >> dm_.inputMatrix
        if i==0:
            dm_.outputRotate >> pb_.inRotate1
        else:
            dm_.outputRotate >> pb_.inRotate2
    pb_.outRotate >> target_.r

