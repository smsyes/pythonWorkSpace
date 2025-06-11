# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
bend setup

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20240225

:Example:
from tool
try:
    from imp import *
except:
    pass
reload(tool)
============================================================================"""
import pymel.core as pm

def division(number,divNum):
    list_ = [0]
    div_ = float(divNum)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def offset_(object_, w=None):
    name_ = object_.name()
    getTransform_ = object_.getMatrix(worldSpace=True)
    node_ = pm.createNode('transform', n='%s_offset' % object_)
    node_.setMatrix(getTransform_)
    if w == 0:
        getParent_ = object_.getParent()
        pm.parent(node_, getParent_)
    pm.parent(object_, node_)
    return node_


num_ = 4
axis_ = 'x'
# type_ is 'up' or 'dn'
type_ = 'up'
div_ = division(num_,1)
sel = pm.ls(sl=1,fl=1,r=1)
name_ = 'hairTail'


# 선택한 오브젝트의 포지션값을 리스트로 저장
pos_ = [pm.xform(i, q=1, ws=1, rp=1) for i in sel]

# pos_ 기준으로 linear 커브 생성
linearCrv = pm.curve(n='%s_linearCrv' % name_, d=1, p=pos_)

# linearCrv 기준으로 bendCrv생성 num_인수값으로 bend 갯수 설정.
bendCrv = pm.duplicate(linearCrv)[0]
bendCrv.rename('%s_bendCrv' % name_)
pm.rebuildCurve(bendCrv,rt=0,d=3,kr=2,s=num_-2)

# bendCrv에 softModifier생성
pm.select(bendCrv, r=1)
sm_ = pm.softMod(n='%sSoftMod' % bendCrv.name())
pm.select(cl=1)
bendOri = bendCrv.listRelatives()[-1]

# center컨트롤러 생성 및 offset
centerCtrl = pm.circle(n='%s_bend_center_ctrl' % name_)[0]
pm.addAttr(centerCtrl, ln='UVal', at='double', dv=float(0.5), k=1)
cenmp_ = pm.createNode('motionPath',n='%s_mp' % (centerCtrl.name()))
linearCrv.getShape().ws >> cenmp_.geometryPath
centerCtrl.UVal >> cenmp_.uValue
pm.matchTransform(centerCtrl, sm_[1], pos=1)
pm.matchTransform(centerCtrl, sel[0], rot=1)
pm.matchTransform(sm_[-1], sel[0], rot=1)
centerOffset = offset_(centerCtrl, w=None)
pm.parent(sm_[-1],centerOffset)
centerCtrl.t >> sm_[-1].t
centerCtrl.r >> sm_[-1].r
cenmp_.allCoordinates >> centerOffset.t
cenmp_.rotate >> centerOffset.rotate

# softModifier setup
sm_[-1].getShape().origin.set(0,0,0)
sm_[-1].pim >> sm_[0].bindPreMatrix
sm_[-1].setPivots([0,0,0])
sm_[0].falloffRadius.set(2.5)

# softModifier 연결
cendm_ = pm.createNode('decomposeMatrix',n='%s_dm'% centerCtrl.name())
centerOffset.wm >> cendm_.inputMatrix
cendm_.ot >> sm_[0].falloffCenter


# upvec locator
if type_ == 'up':
    upvec_ = pm.spaceLocator(n='%s_upvec_loc' % name_)
    pm.matchTransform(upvec_, sel[-1], pos=1)
    pm.matchTransform(upvec_, sel[0], rot=1)
else:
    pass

# 선택한 오브젝트의 포지션 값을 linearCrv가 따라가게 셋팅
locs_ = []
for i,item in enumerate(sel):
    dm_ = pm.createNode('decomposeMatrix',n='%s_dm'% (name_))
    if type_ == 'up':
        loc_ = pm.spaceLocator(n='%s_offset_loc'% (item.name()))
        pm.matchTransform(loc_,item)
        if i>0:
            pm.matchTransform(loc_,sel[0],rot=1)
            pm.parent(upvec_, loc_)
        locs_.append(loc_)
    elif type_ == 'dn':
        pass
    item.wm >> dm_.inputMatrix
    dm_.ot >> linearCrv.getShape().controlPoints[i]
    
for i in list(range(num_+1)):
    mp_ = pm.createNode('motionPath',n='%s_%s_mp' % (linearCrv.name(),i))
    linearCrv.getShape().ws >> mp_.geometryPath
    mp_.uValue.set(div_[i])
    mp_.allCoordinates >> bendOri.controlPoints[i]

spcs_ = []
for i in list(range(num_+1)):
    mp_ = pm.createNode('motionPath',n='%s_%s_mp' % (bendCrv.name(),i))
    md_ = pm.createNode('multiplyDivide', n='%s_%s_twist_md' % (name_,i))
    spc_ = pm.createNode('transform',n='%s_%s_space' % (bendCrv.name(),i))
    bendCrv.getShape().ws >> mp_.geometryPath
    if type_ == 'up':
        locs_[0].worldMatrix >> mp_.worldUpMatrix
        pm.aimConstraint(locs_[-1],sel[0], aim=(1,0,0), u=(0,1,0), wut=2, wuo=upvec_)
        sel[0].rx >> md_.i1x
    elif type_ == 'dn':
        sel[0].worldMatrix >> mp_.worldUpMatrix
        sel[1].rx >> md_.i1x
    md_.i2x.set(div_[i])
    mp_.uValue.set(div_[i])
    md_.ox >> mp_.frontTwist
    mp_.allCoordinates >> spc_.t
    mp_.r >> spc_.r
    mp_.fractionMode.set(1)
    mp_.worldUpType.set(2)
    mp_.frontAxis.set(0)
    mp_.upAxis.set(1)
    spcs_.append(spc_)

spaceGrp = pm.createNode('transform', n='%s_bendSpace_grp' % name_)
sysGrp = pm.createNode('transform', n='%s_bendSys_grp' % name_)

pm.parent(spcs_, spaceGrp)
pm.parent([linearCrv,bendCrv,spaceGrp,centerOffset,sel[0]], sysGrp)
