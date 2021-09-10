from collections import OrderedDict
from pymel.core import *
from lib import _joint
from lib import _name
from lib import _node
from lib import _matrix
from lib import _control
from lib import _shapeChange

reload(_joint)
reload(_name)
reload(_node)
reload(_matrix)
reload(_control)
reload(_shapeChange)


class Finger():
    def __init__(self, object_, name_, *args, **kwargs):
        self.object = object_
        self.name = name_

        self.fingerJnt()
        self.fingerGrouping()
        self.fingerController()
        self.fingerSetting()

    def fingerJnt(self):
        self.JntC_ = _joint.hierarchy_(self.object)

        # duplicate joint
        D01Jnt_ = _joint.duplicate_joint(self.JntC_[1])
        parent(D01Jnt_[0],w=1)
        D02Jnt_ = _joint.duplicate_joint(self.JntC_[0])
        parent(D02Jnt_[0],w=1)
        D03Jnt_ = _joint.duplicate_joint(self.JntC_[1])
        delete(D03Jnt_[-1])
        D03Jnt_.pop(-1)
        [parent(sub, D02Jnt_[1:-1][i]) for i,sub in enumerate(D03Jnt_)]

        # rename
        self.IKJnt_ = _name.renamer_(i=D01Jnt_,pf='',n=self.name,sf='IKJnt')
        self.Jnt_ = _name.renamer_(i=D02Jnt_[1:],pf='',n=self.name,sf='Jnt')
        self.RootJnt_ = _name.renamer_(i=[D02Jnt_[0]],pf='',n=self.name,sf='RootJnt')
        self.SubJnt_ = _name.renamer_(i=D03Jnt_,pf='',n=self.name,sf='SubJnt')

    def fingerGrouping(self):
        # Grouping
        self.Ctrl_ = _node.objectSpace_(self.JntC_[:-1],
                                        typ=['CtrlPos','CtrlOff','CtrlGrp','Ctrl'],
                                        n=self.name,p=None)
        self.CtrlPos_ = [i[0] for i in self.Ctrl_]
        _node.chain_structure(self.CtrlPos_)

        self.MTPos_ = _node.objectSpace_(self.JntC_[1:-1],
                                         typ=['MTPos'],
                                         n=self.name,p=None)
        self.MTst_ = [i[0] for i in self.MTPos_]
        _node.chain_structure(self.MTst_)

        self.AM_ = _node.objectSpace_([self.JntC_[1]],
                                      typ=['AMGrp','PVPos'],
                                      n=self.name,p=None)
        self.PV = self.AM_[0][1]
        self.PV.setAttr('tz',0.1)

        self.IKCtrl_ = _node.objectSpace_([self.JntC_[-1]],
                                          typ=['IKCtrlGrp','IKCtrl','AMUpvec'],
                                          n=self.name,p=None)
        self.IKCtrl = self.IKCtrl_[0][1]
        self.AMUpVec = self.IKCtrl_[0][2]

        parent(ls(self.IKCtrl_[0][0], self.IKJnt_[0], self.MTPos_[0][0], self.AM_[0][0]), self.Ctrl_[0][-1])

    def fingerController(self):
        tempCtrl = PyNode(_control.crvShape_('circleHandler'))
        IKtempCtrl = PyNode(_control.crvShape_('pyramid'))
        [_shapeChange.shapeChange(ls(tempCtrl, ctrl[-1])) for ctrl in self.Ctrl_]
        _shapeChange.shapeChange(ls(IKtempCtrl, self.IKCtrl))
        delete(ls(tempCtrl, IKtempCtrl))

    def fingerSetting(self):
        # IK setting
        _joint.reAngle(self.IKJnt_)
        jry=0.1
        [jnt.setAttr('ry', jnt.getAttr('ry')+jry) for jnt in self.IKJnt_]
        [joint(jnt, e=1, spa=1) for jnt in self.IKJnt_]
        jry=0.1
        [jnt.setAttr('ry', jnt.getAttr('ry')-jry) for jnt in self.IKJnt_]
        self.IKH_ = ikHandle( n='{}IKH'.format(self.name), 
                             sj=self.IKJnt_[0], ee=self.IKJnt_[-1], 
                             sol='ikRPsolver',p=1)
        parent(self.IKH_[0], self.IKCtrl)
        aimConstraint(self.IKCtrl, self.AM_[0][0], mo=1, wut='objectrotation', wuo=self.AMUpVec)
        poleVectorConstraint(self.PV, self.IKH_[0])

        # MT setting
        for i,IK in enumerate(self.IKJnt_[:-1]):
            _matrix.matrixConst(IK, self.MTPos_[i][0], 'local', t='t', r='r', s=None) 
        for i,ctrl in enumerate(self.CtrlPos_[1:]):
            self.MTPos_[i][0].t >> ctrl.t
            self.MTPos_[i][0].r >> ctrl.r

        # joint matrix constraint
        for i,ctrl in enumerate(self.Ctrl_):
            ctrl = ctrl[-1]
            Jnts_ = ls(self.RootJnt_, self.Jnt_)
            _matrix.createQM(ls(ctrl, Jnts_[i]), self.name)
            ctrl.s >> Jnts_[i].s








