# -*- coding: utf-8 -*-
"""============================================================================
Arm Setup
============================================================================"""
import pymel.core as pm
import maya.OpenMaya as om
from collections import OrderedDict

def getShape_(key):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string

    Returns:
        dictionary : Curve information.

    """
    shape_dict = OrderedDict()
    shape_dict['square'] = 1, [(-1,0,1),(-1,0,-1),(1,0,-1),(1,0,1),
                            (-1,0,1)], [0,1,2,3,4]
    shape_dict['circle'] = 1, [(0,0,1),(0.382683,0,0.92388),
                            (0.707107,0,0.707107),(0.92388,0,0.382683),
                            (1,0,0),(0.92388,0,-0.382683),
                            (0.707107,0,-0.707107),(0.382683,0,-0.92388),
                            (0,0,-1),(-0.382683,0,-0.92388),
                            (-0.707107,0,-0.707107),(-0.92388,0,-0.382683),
                            (-1,0,0),(-0.92388,0,0.382683),
                            (-0.707107,0,0.707107),(-0.382683,0,0.92388),
                            (0,0,1)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,
                            15,16]
    return shape_dict[key]

def crvShape_(key,name_):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string
        name_ (string): 

    Returns:
        dictionary : Curve information.

    """
    shapeDict = getShape_(key)
    crv_ = pm.curve(d=shapeDict[0],
                    p=shapeDict[1],
                    k=shapeDict[2],
                    n=name_)
    return crv_

def space_(name_, suffix_=None, parent_=None):
    if not suffix_:
        suffix_ = 'Grp'      
    space_ = pm.createNode('transform',
                        n='{0}{1}'.format(name_,suffix_),
                        p=parent_)
    return space_

def offGrp_(object_):
    """선택한 오브젝트의 Offset 그룹 생성.

    Arguments:
        object_ (object): Offset 그룹 생성할 오브젝트

    Returns:
        Group :  offset Group

    """
    _name = object_.name()
    offset = space_(_name, parent_=object_)
    if object_.getParent():
        _parent = object_.getParent()
        pm.parent(offset, _parent)
    else:
        pm.parent(offset, w=1)
    pm.parent(object_, offset)
    return offset

def hierarchy_(object_):
    """선택한 오브젝트 순서대로 hierarchy구조로 변환.

    Arguments:
        object_ (list): hierarchy 구조로 만들 오브젝트들

    Returns:
        None : None

    """
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])

def dupJoint(joints,type_):
    """선택한 조인트들 복사 type_리네임.

    Arguments:
        joints (list) : 복사할 조인트들
        type_ (string) : 'FK' or 'IK' or 'Drv'

    Returns:
        Jnts : 복사한 chain구조 조인트

    """
    Jnts = []
    for j in joints:
        dup = pm.duplicate(j,po=1)
        pm.parent(dup,w=1)
        pm.rename(dup,'{0}{1}Jnt'.format(j.name(),type_))
        Jnts.append(dup[0])
    hierarchy_(Jnts)
    return Jnts

def fkCtrlPos_(object_):
    """FK컨트롤러 배치 포지션용 포즈.

    Arguments:
        object_ (list) : pos생성할 오브젝트 리스트

    Returns:
        list_ : 생성된 pos 리스트

    """
    list_ = []
    for i in object_:
        name_ = '{0}FKPos'.format(i.name())
        pos = pm.createNode('transform',n=name_)
        pm.matchTransform(pos,i)
        list_.append(pos)
    hierarchy_(list_)
    return list_

def FKCtrl(joints):
    """FK Ctrls 생성.

    Arguments:
        joints (list) : FK Ctrl 생성할 오즈젝트 리스트

    Returns:
        ctrls : 생성된 Ctrls

    """
    ctrls = []
    for j in joints:
        name_ = '{}FKCtrl'.format(j.name())
        ctrl = crvShape_('square',name_)
        pm.matchTransform(ctrl,j)
        ctrls.append(ctrl)
    hierarchy_(ctrls)
    [offGrp_(c) for c in ctrls]
    return ctrls

def root_(object_):
    """root 구성

    Arguments:
        object_ (object) : root 위치로 구성할 오브젝트 

    Returns:
        grp : root Ctrl Offset Group
        const : root 위치의 ConstGrp

    """
    name_ = '{}Ctrl'.format(object_.name())
    ctrl = crvShape_('circle',name_)
    grp = offGrp_(ctrl)
    const = pm.createNode('transform',n='{0}ConstGrp'.format(ctrl.name()))
    pm.matchTransform(grp,object_)
    pm.matchTransform(const,object_)
    return grp,const

def getVecPos(st,md,en):
    """poleVector 위치값

    Arguments:
        st,md,en (objects) : start, mid, end Vector Object

    Returns:
        position : poleVector 위치값

    """
    rootPos = pm.xform(st,q=True,ws=True,t=True)
    midPos = pm.xform(md,q=True,ws=True,t=True)
    endPos = pm.xform(en,q=True,ws=True,t=True)
    
    rootJointVec = om.MVector(rootPos[0],rootPos[1],rootPos[2])
    midJointVec = om.MVector(midPos[0],midPos[1],midPos[2])
    endJointVec = om.MVector(endPos[0],endPos[1],endPos[2])
    
    line = (endJointVec - rootJointVec)
    point = (midJointVec - rootJointVec)
    
    scaleValue = (line * point) / (line * line)
    projVec = line * scaleValue + rootJointVec
    
    poleVecPos = (midJointVec - projVec).normal() * 0.01 + midJointVec
    return [poleVecPos.x, poleVecPos.y, poleVecPos.z]

def poleVecCtrlPos_(part,st,md,en,side_='Right'):
    """poleVector Ctrl Pos

    Arguments:
        part (string) : prefix name
        st,md,en (objects) : start, mid, end Vector Object
        side_ (string) : 좌우 구분

    Returns:
        pos : poleVector Ctrl 포지션 pos

    """
    if side_ == 'Left':
        upVec = (-1,0,0)
    else:
        upVec = (1,0,0)
    position = getVecPos(st,md,en)
    pos = pm.createNode('transform',n='{0}PoleVectorCtrlPos'.format(part))
    pos.t.set(position)
    aimConst = pm.aimConstraint(md,pos,aim=(0,0,1),u=upVec,
                                wut="object",wuo=st,mo=0)
    pm.delete(aimConst)
    return pos

def IKCtrlPos_(part,st,en,side_='Right'):
    """IK Ctrl Pos

    Arguments:
        part (string) : prefix name
        st,en (objects) : start, end Vector Object
        side_ (string) : 좌우 구분

    Returns:
        pos : IK Ctrl 포지션 pos

    """
    if side_ == 'Left':
        aim_ = (-1,0,0)
    else:
        aim_ = (1,0,0)
    pos = pm.createNode('transform',n='{0}IKCtrlPos'.format(part))
    pm.matchTransform(pos,en,pos=1)
    aimConst = pm.aimConstraint(st,pos,aim=aim_,u=(0,1,0),
                                wut="None",mo=0)
    pm.delete(aimConst)
    return pos

def PVSysPos_(part,st,en,side_='Right'):
    """IK Ctrl Pos

    Arguments:
        part (string) : prefix name
        st,en (objects) : start, end Vector Object
        side_ (string) : 좌우 구분

    Returns:
        pos : IK Ctrl 포지션 pos

    """
    if side_ == 'Left':
        aim_ = (1,0,0)
    else:
        aim_ = (-1,0,0)
    pos = pm.createNode('transform',n='{0}PVSysPos'.format(part))
    pm.matchTransform(pos,st,pos=1)
    aimConst = pm.aimConstraint(en,pos,aim=aim_,u=(0,1,0),
                                wut="None",mo=0)
    pm.delete(aimConst)
    return pos

part = 'Arm'
side = 'Right'    
sel = pm.ls(sl=1,fl=1,r=1)
root,st,md,en = sel[0],sel[1],sel[2],sel[3]

# 베이스 구조 생성.
rigGrp = pm.createNode('transform',n='{0}RigGrp'.format(part))
ctrlGrp = pm.createNode('transform',n='{0}CtrlGrp'.format(part))
sysGrp = pm.createNode('transform',n='{0}SysGrp'.format(part))
rootGrp,rootConst = root_(root)
pm.parent(pm.ls(rootGrp,rootConst),ctrlGrp)
pm.parent(pm.ls(ctrlGrp,sysGrp),rigGrp)

# 포즈 생성.
FKCtrlPos = fkCtrlPos_(sel[1:])
pvCtrlPos = poleVecCtrlPos_(part,st,md,en,side_=side)
ikCtrlPos = IKCtrlPos_(part,st,en,side_=side)
rootCtrlPos = pm.duplicate(rootConst,n='{}CtrlPos'.format(root.name()),po=1)
pvSysPos = PVSysPos_(part,st,en,side_=side)
pm.parent(pm.sl(pvCtrlPos,ikCtrlPos),rootConst)
pm.parent(rootCtrlPos,ctrlGrp)
pm.parent(pvSysPos,sysGrp)

# FKJoints = dupJoint(sel,'FK')
# IKJoints = dupJoint(sel,'IK')
# DrvJoints = dupJoint(sel,'Drv')

# FKCtrls = FKCtrl(sel)

    
