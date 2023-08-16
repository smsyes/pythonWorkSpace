import pymel.core as pm
import pymel.core.datatypes as dt

def halfList(object_):
    half = int(len(object_)/2)
    items = object_[:half]
    targets = object_[half:]
    return items,targets

def createQM_(object_,mo_=1):
    item_, target_ = halfList(object_)
    for i,item in enumerate(item_):
        name_ = item.name()
        MM = pm.createNode('multMatrix', n='{}_MM'.format(name_))
        DM = pm.createNode('decomposeMatrix', n='{}_DM'.format(name_))
        EQ = pm.shadingNode('eulerToQuat', au=1, n='{}_EQ'.format(name_))
        QI = pm.shadingNode('quatInvert', au=1, n='{}_QI'.format(name_))
        QP = pm.shadingNode('quatProd', au=1, n='{}_QP'.format(name_))
        QE = pm.shadingNode('quatToEuler', au=1, n='{}_QE'.format(name_))
        if mo_ == 0:
            MM.matrixIn[1].set(target_[i].getMatrix(worldSpace=True))
            MM.matrixIn[2].set(item.getMatrix(worldSpace=True).inverse())
        elif mo_ == 1:
            tgScalePivotMtx=dt.Matrix()
            tgScalePivotMtx[3]=target_[i].getScalePivot(space='transform')
            MM.matrixIn[0].set(tgScalePivotMtx)
            MM.matrixIn[1].set(target_[i].getMatrix(worldSpace=True))
            MM.matrixIn[2].set(item.getMatrix(worldSpace=True).inverse())
        item.wm >> MM.matrixIn[3]
        target_[i].pim >> MM.matrixIn[4]
        MM.matrixSum >> DM.inputMatrix
        if target_[i].type() == 'joint':
            target_[i].jo >> EQ.inputRotate
        else:
            target_[i].r >> EQ.inputRotate
        EQ.outputQuat >> QI.inputQuat
        DM.outputQuat >> QP.input1Quat
        QI.outputQuat >> QP.input2Quat
        QP.outputQuat >> QE.inputQuat
        DM.ot >> target_[i].t
        target_[i].r.set(0,0,0)
        QE.outputRotate >> target_[i].jo

sel = pm.ls(sl=1,r=1,fl=1)
for i in sel:
    item_ = i.target.listConnections(s=1,d=0)[0]
    target_ = i.constraintParentInverseMatrix.listConnections(s=1,d=0)[0]
    pm.delete(i)
    createQM_([item_, target_],mo_=1)
    

