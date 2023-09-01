from pymel.core import *


def bindJoint(object_):
    shape_ = object_.getShape()
    connectionList_ = shape_.listHistory(gl=1,pdo=1)
    for cnt_ in connectionList_:
        if cnt_.type() == 'skinCluster':
            scls_ = cnt_
            break
        else:
            scls_ = None
    sclsMtx_ = scls_.attr('matrix')
    return sclsMtx_.listConnections(d=0,s=1,type='joint')
        
def skinCopy(item_, target_):
    bindJoints = bindJoint(item_)
    skinCluster(bindJoints, target_, bm=1, mi=3, rui=0, dr=3)
    copySkinWeights(item_,target_,nm=1,sa='closestPoint',ia='oneToOne',nr=1)


sel = ls(sl=1,r=1,fl=1)
    
for i in sel[1:]:
    item_ = sel[0]
    target_ = i
    skinCopy(item_, target_)