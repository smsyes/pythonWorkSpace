from pymel.core import *

def halfList(object_):
    half = int(len(object_)/2)
    items = object_[:half]
    targets = object_[half:]
    return items,targets

sel = ls(sl=1,r=1)
items,targets = halfList(sel)

for i,item in enumerate(items):
    shape_ = item.getShape()
    skinCluster_ = item.history(type='skinCluster')[0]
    joints_ = skinCluster_.getInfluence()
    skinCluster(joints_,targets[i],tsb=1,bm=1,mi=3,rui=0,dr=3)
    select(item, r=1)
    select(targets[i], add=1)
    copySkinWeights(nm=1,sa='closestPoint',ia=('closestJoint', 'oneToOne'))
    select(cl=1)
