from collections import OrderedDict
from pymel.core import *
from rigSupport.lib import _joint
from rigSupport.lib import _name
from rigSupport.lib import _node
from rigSupport.lib import _matrix

reload(_joint)
reload(_name)
reload(_node)
reload(_matrix)

sel = ls(sl=1,r=1,fl=1)
base="Test"


JntC_ = _joint.hierarchy_(sel[0])

# duplicate joint
D01Jnt_ = _joint.duplicate_joint(JntC_[1])
parent(D01Jnt_[0],w=1)
D02Jnt_ = _joint.duplicate_joint(JntC_[0])
parent(D02Jnt_[0],w=1)
D03Jnt_ = _joint.duplicate_joint(JntC_[1])
delete(D03Jnt_[-1])
D03Jnt_.pop(-1)
[parent(sub, D02Jnt_[1:-1][i]) for i,sub in enumerate(D03Jnt_)]

# rename
IKJnt_ = _name.renamer_(i=D01Jnt_,pf='',n=base,sf='IKJnt')
Jnt_ = _name.renamer_(i=D02Jnt_[1:],pf='',n=base,sf='Jnt')
RootJnt_ = _name.renamer_(i=[D02Jnt_[0]],pf='',n=base,sf='RootJnt')
SubJnt_ = _name.renamer_(i=D03Jnt_,pf='',n=base,sf='SubJnt')

# Grouping
Ctrl_ = _node.objectSpace_(JntC_[:-1],typ=['CtrlPos','CtrlOff','CtrlGrp','Ctrl'],n=base,p=None)
CtrlPos_ = [i[0] for i in Ctrl_]
_node.chain_structure(CtrlPos_)

MTPos_ = _node.objectSpace_(JntC_[1:-1],typ=['MTPos'],n=base,p=None)
MTst_ = [i[0] for i in MTPos_]
_node.chain_structure(MTst_)

AM_ = _node.objectSpace_([JntC_[1]],typ=['AMGrp','PVPos'],n=base,p=None)
PV = AM_[0][1]
PV.setAttr('tz',0.1)

IKCtrl_ = _node.objectSpace_([JntC_[-1]],typ=['IKCtrlGrp','IKCtrl','AMUpvec'],n=base,p=None)
IKCtrl = IKCtrl_[0][1]
AMUpVec = IKCtrl_[0][2]

parent(ls(IKCtrl_[0][0], IKJnt_[0], MTPos_[0][0], AM_[0][0]), Ctrl_[0][-1])

# IK setting
_joint.reAngle(IKJnt_)
[joint(jnt, e=1, spa=1)for jnt in IKJnt_]
IKH_ = ikHandle( n='{}IKH'.format(base), sj=IKJnt_[0], ee=IKJnt_[-1], sol='ikRPsolver',p=1)
parent(IKH_[0], IKCtrl)
aimConstraint(IKCtrl, AM_[0][0], mo=1, wut='objectrotation', wuo=AMUpVec)
poleVectorConstraint(PV, IKH_[0])

# MT setting
for i,IK in enumerate(IKJnt_[:-1]):
    _matrix.matrixConst(IK, MTPos_[i][0], 'local', t='t', r='r', s=None) 
for i,ctrl in enumerate(CtrlPos_[1:]):
    MTPos_[i][0].t >> ctrl.t
    MTPos_[i][0].r >> ctrl.r




