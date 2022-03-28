import pymel.core as pm
from rigSupport.lib import QuatMatrixConst as QM
try:
    from imp import *
except:
    pass
reload(QM)

def quadAxisSetRangeCnt(object_):
    e_,w_,s_,n_ = object_[0],object_[1],object_[2],object_[3]
    reader = object_[-1]
    axisList = ['VecY','RvsVecY','VecZ','RvsVecZ']
    for i,item in enumerate([e_,w_,s_,n_]):
        list(map(lambda a: reader.attr(axisList[i]) >> item.attr(a),['valueX','valueY','valueZ']))

sel = pm.ls(sl=1,fl=1,r=1)
# pb = QM.PairMCon(sel,r=1,mo_=1)
# pb.ir2.listConnections(p=1)[0] // pb.ir2
# quadAxisSetRangeCnt(sel)