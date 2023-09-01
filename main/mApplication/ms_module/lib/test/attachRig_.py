import maya.cmds as cmds
from collections import OrderedDict
global module_path
module_path = os.path.split(os.path.realpath('D:\maya\script\ms_module\lib\m_lib'))[0]
if not module_path in sys.path:
    sys.path.append(module_path)

from m_lib import _ctl
reload(_ctl)

#_________________________________________________________________________________________
#Run before selecting vertex
cmds.selectPref(tso = True)

# select ordered list
def orderls():
    sel = cmds.ls(sl = 1)
    sel = cmds.ls(os = 1)
    return sel

# get vtx point position list
def pointCrv(sel, name_):
    # Get Shape Selection
    shapeVtx_ = cmds.ls(selection=True, o=True)
    posList_ = OrderedDict()
    
    # Get Position
    for vtx in sel:
        vtxID_ = int(vtx[vtx.find("[")+1:vtx.find("]")])
        xformPos_ = cmds.xform(str(shapeVtx_[0]) + '.vtx[{}]'.format(vtxID_), 
                q=True, objectSpace=True, t=True)
        listPos_ = zip(xformPos_ [0::3], xformPos_ [1::3], xformPos_ [2::3])
        posList_[vtxID_] = listPos_[0]
    return posList_, shapeVtx_

# create curve
def crv(sel, name_, posList_):
    crv_ = cmds.curve(n = '{}_{}'.format(name_, 'crv'), d = 1, 
        p = posList_.values(), k = range(len(sel)))
    return crv_

def ctl(name_, type_, offset_):
    crvShape = _ctl.crvShape_(_name = name_, _type = type_, _offset = offset_)
    ctl_, ctl_os = crvShape.create_shape()
    cmds.select(cl = 1)
    return ctl_, ctl_os

def jnt(item, name_):
    jnt_ = cmds.joint(n = '{}_{}'.format(name_, 'JNT'))
    xform_(item, jnt_)
    return jnt_

def xform_(item, target):
    pos_ = cmds.xform(item, q=1, ws=1, rp=1 )
    rot_ = cmds.xform(item, q=1, ws=1, ro=1 )
    cmds.xform(target, r = 1, t = pos_)
    cmds.xform(target, r = 1, ro = rot_)

def OSCS(sel):
    targetA = cmds.createNode( 'transform', n=sel+'_CS' )
    targetB = cmds.createNode( 'transform', n=sel+'_OS' )
    cmds.parentConstraint( sel, targetA )
    cmds.delete (targetA + '_parentConstraint1')
    cmds.parent( sel, targetA )
    up = cmds.listRelatives(sel, p=True)
    cmds.parentConstraint( sel, targetB )
    cmds.delete (targetB + '_parentConstraint1')
    cmds.parent( targetA, targetB )
    cmds.select(cl = 1)
    return targetB


name_ = 'ankle_ribbon'
sel = orderls()
num_ = len(sel)
posList_, crvShape_ = pointCrv(sel, name_)
crv_ = crv(sel, name_, posList_)

for i in range(num_):
    padding = '2'
    pad = ("%%0%si" % padding) % int(i)
    #cmds.getAttr('{}.{}[{}]'.format(shape_, 'controlPoints', i))
    poci_ = cmds.createNode('pointOnCurveInfo', n = '{}_{}_{}'.format(name_, pad, 'POCI'))
    ctl_, ctl_os = ctl('{}_{}'.format(name_, pad), 'sphere', 2)
    jnt_ = jnt(ctl_, '{}_{}'.format(name_, pad))
    jnt_os = OSCS(jnt_)
    cmds.parent(jnt_os, ctl_)
    cmds.setAttr('{}.{}'.format(poci_, 'parameter'), i)
    cmds.connectAttr('{}.{}'.format(crv_, 'ws'), '{}.{}'.format(poci_, 'ic'))
    cmds.connectAttr('{}.{}'.format(poci_, 'p'), '{}.{}'.format(ctl_os, 't'))
    

    