from pymel.core import *

sel = ls(sl=1,r=1)

shape_ = sel[0].getShape()
skinCluster_ = sel[0].history(type='skinCluster')[0]
joints_ = skinCluster_.getInfluence()
for t in sel[1:]:
    skinCluster(joints_,t,bm=1,mi=3,rui=0,dr=3)
    select(sel[0], r=1)
    select(t, add=1)
    copySkinWeights(nm=1,sa='closestPoint',ia=('closestJoint', 'oneToOne'))
    select(cl=1)
