from pymel.core import *

sel = ls(sl = 1)
jnt_ = listRelatives(sel, ad = 1, typ = 'joint')
select(jnt_)


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

sel = ls(sl=1,r=1,fl=1)
select(bindJoint(sel[0]))