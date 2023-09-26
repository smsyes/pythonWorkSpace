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

        if mo_ == 0:
            MM.matrixIn[1].set(target_[i].getMatrix(worldSpace=True))
            MM.matrixIn[2].set(item.getMatrix(worldSpace=True).inverse())
        elif mo_ == 1:
            tgScalePivotMtx=dt.Matrix()
            tgScalePivotMtx[3]=target_[i].getScalePivot(space='transform')
            MM.matrixIn[0].set(tgScalePivotMtx)
            MM.matrixIn[1].set(target_[i].getMatrix(worldSpace=True))
            MM.matrixIn[2].set(item.getMatrix(worldSpace=True).inverse())
        target_[i].r.set(target_[i].jo.get())
        target_[i].jo.set(0,0,0)
        item.wm >> MM.matrixIn[3]
        target_[i].pim >> MM.matrixIn[4]
        MM.matrixSum >> DM.inputMatrix
        DM.ot >> target_[i].t
        DM.outputRotate >> target_[i].r
        DM.os >> target_[i].s
        

sel = pm.ls(sl=1,r=1)
dir(sel[0].__class__)
list_ = sel[0].listRelatives(ad=1,typ='parentConstraint')

for i in list_:
    item_ = i.target.listConnections(s=1,d=0)[0]
    target_ = i.constraintParentInverseMatrix.listConnections(s=1,d=0)[0]
    if target_.sx.listConnections(s=1,d=0,type='scaleConstraint') :
        pm.delete(target_.sx.listConnections(s=1,d=0,type='scaleConstraint'))
    pm.delete(i)
    createQM_([item_, target_],mo_=1)
