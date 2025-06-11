import pymel.core as pm

sel = pm.ls(sl=1,fl=1,r=1)
list_ = sel[:-1]

switch = sel[-1]

def fkikblend(fk, ik, base):
    splname_ = fk.name().split('_fk')
    name_ = '%s%s' % (splname_[0], splname_[1])
    bm_ = pm.createNode('blendMatrix', n='%s_bm' % name_)
    mm_ = pm.createNode('multMatrix', n='%s_mm' % name_)
    dm_ = pm.createNode('decomposeMatrix', n='%s_dm' % name_)

    fk.wm >> bm_.inputMatrix
    ik.wm >> bm_.target[0].targetMatrix
    switch.fkik >> bm_.envelope
    switch.fkik >> bm_.target[0].weight
    bm_.outputMatrix >> mm_.matrixIn[0]
    base.parentInverseMatrix >> mm_.matrixIn[1]
    mm_.matrixSum >> dm_.inputMatrix
    dm_.ot >> base.t
    dm_.outputRotate >> base.jo
    dm_.os >> base.s

div_ = len(list_) / int(3)

for i,item in enumerate(list_[:int(div_)]):
    fkikblend(item, list_[int(div_+i)], list_[int(div_*2+i)])
