# -*- coding: utf-8 -*-
"""============================================================================
Arm Setup
============================================================================"""
import pymel.core as pm
import maya.OpenMaya as om
from collections import OrderedDict
from rigSupport.lib import IKStSq
from rigSupport.lib import Arc
from rigSupport.lib import QuatMatrixConst as QM
try:
    from imp import *
except:
    pass

reload(IKStSq)
reload(Arc)
reload(QM)


def getShape_(key):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string

    Returns:
        dictionary : Curve information.

    """
    shapeDict = OrderedDict()
    shapeDict['square'] = 1, [(-1,0,1),(-1,0,-1),(1,0,-1),(1,0,1),
                        (-1,0,1)], [0,1,2,3,4]
    shapeDict['circle'] = 1, [(0,0,1),(0.382683,0,0.92388),
                        (0.707107,0,0.707107),(0.92388,0,0.382683),
                        (1,0,0),(0.92388,0,-0.382683),
                        (0.707107,0,-0.707107),(0.382683,0,-0.92388),
                        (0,0,-1),(-0.382683,0,-0.92388),
                        (-0.707107,0,-0.707107),(-0.92388,0,-0.382683),
                        (-1,0,0),(-0.92388,0,0.382683),
                        (-0.707107,0,0.707107),(-0.382683,0,0.92388),
                        (0,0,1)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,
                        15,16]
    shapeDict['Pole'] = 1, [(0,0,0),(0,5,-5),(0,2,-8),(0,0,-6),(0,-2,-8),
                        (0,-5,-5),(0,0,0)],[0,1,2,3,4,5,6]
    shapeDict['IKFK'] = 1, [(0,0,0.0810633),(0,-0.0476478,0.0655809),
                        (0,-0.0770958,0.0250494),(0,-0.0770958,-0.0250508),
                        (0,-0.0476478,-0.0655821),(0,0,-0.0810633),
                        (0,0.0476478,-0.0655821),(0,0.0770958,-0.0250508),
                        (0,0.0770958,0.0250494),(0,0.0476478,0.0655809),
                        (0,0,0.0810633),(0,0,1.821054),
                        (0,0.356796,1.936983),(0,0.577308,2.24049),
                        (0,0.577308,2.615652),(0,0.356796,2.919159),
                        (0,0,3.035094),(0,-0.356796,2.919159),
                        (0,-0.577308,2.615652),(0,-0.577308,2.24049),
                        (0,-0.356796,1.936983),(0,0,1.821054)],[0,1,
                        2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
                        17,18,19,20,21]
    shapeDict['Arc'] = 1, [(0,0,1.018961),(-0.27303,0,1.018961),
                        (-0.577061,0,0.98492),(-0.841496,0,0.841496),
                        (-0.98492,0,0.577061),(-1.0157,0,0.278849),
                        (-1.012079,0,0),(-1.018961,0,-0.27303),
                        (-0.98492,0,-0.577061),(-0.841496,0,-0.841496),
                        (-0.577061,0,-0.98492),(-0.27303,0,-1.018961),
                        (0,0,-1.012079),(0.278849,0,-1.0157),
                        (0.577061,0,-0.98492),(0.841496,0,-0.841496),
                        (0.98492,0,-0.577061),(1.018961,0,-0.27303),
                        (1.018961,0,0),(1.016847,0,0.278849),
                        (0.98492,0,0.577061),(0.841496,0,0.841496),
                        (0.577061,0,0.98492),(0.27303,0,1.018961),
                        (0,0,1.018961)],[0,1,2,3,4,5,6,7,8,9,10,11,
                        12,13,14,15,16,17,18,19,20,21,22,23,24]
    return shapeDict[key]

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
        name_ = '{0}FKPoser'.format(i.name())
        pos = pm.createNode('transform',n=name_)
        pm.matchTransform(pos,i)
        list_.append(pos)
    hierarchy_(list_)
    return list_

def Ctrl(part,joints,type_=None):
    """Ctrls 생성.

    Arguments:
        joints (list) : Ctrl 생성할 오즈젝트 리스트

    Returns:
        ctrls : 생성된 Ctrls

    """
    ctrls = []
    for i,j in enumerate(joints):
        if type_ == 'FK':
            shape_ = 'square'
        elif type_ == 'IK':
            shape_ = 'circle'
        else:
            shape_ = type_
        name_ = '{0}{1}{2}Ctrl'.format(part,i+1,type_)
        ctrl = crvShape_(shape_,name_)
        pm.matchTransform(ctrl,j)
        ctrls.append(ctrl)
    if type_ == 'FK':
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
    const = pm.createNode('transform',
                          n='{0}ConstGrp'.format(ctrl.name()))
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
    
    rootToMidLen = (midJointVec - rootJointVec).length()
    midToEndLen = (endJointVec - midJointVec).length()
    totalLength = rootToMidLen + midToEndLen
    
    poleVecPos = (midJointVec - projVec).normal() * 0.1 + midJointVec
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
        upVec = [-1,0,0]
    else:
        upVec = [1,0,0]
    position = getVecPos(st,md,en)
    pos = pm.createNode('transform',
                        n='{0}PoleVectorCtrlPoser'.format(part))
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
    pos = pm.createNode('transform',n='{0}IKCtrlPoser'.format(part))
    pm.matchTransform(pos,en,pos=1)
    aimConst = pm.aimConstraint(st,pos,aim=aim_,u=(0,1,0),
                                wut="None",mo=0)
    pm.delete(aimConst)
    return pos

def PVSysPos_(part,st,en,side_='Right'):
    """PVSys Pos

    Arguments:
        part (string) : prefix name
        st,en (objects) : start, end Vector Object
        side_ (string) : 좌우 구분

    Returns:
        pos : polvector Sys Pos

    """
    if side_ == 'Left':
        aim_ = (1,0,0)
    else:
        aim_ = (-1,0,0)
    pos = pm.createNode('transform',n='{0}PVSysPoser'.format(part))
    pm.matchTransform(pos,st,pos=1)
    aimConst = pm.aimConstraint(en,pos,aim=aim_,u=(0,1,0),
                                wut="None",mo=0)
    pm.delete(aimConst)
    return pos

def ikPos_(part,object_,ikCtrlPos,pvCtrlPos):
    """IKStretch 포지션용 포즈.

    Arguments:
        object_ (list) : pos생성할 오브젝트 리스트

    Returns:
        list_ : 생성된 pos 리스트

    """
    list_ = []
    for i,item in enumerate(object_):
        name_ = '{0}IK{1}Pos'.format(part,i)
        pos = pm.createNode('transform',n=name_)
        pm.matchTransform(pos,item)
        if i>0:
            pm.addAttr(pos,ln='Tx',at='double',dv=0,k=1)
            pm.addAttr(pos,ln='Length',at='double',dv=0,k=1)
            pos.Length.set(item.tx.get())
        list_.append(pos)
    ikMovePos = pm.duplicate(ikCtrlPos,
                po=1,n='{0}IKMovePos'.format(part))
    pm.addAttr(ikMovePos,ln='Stretch',at='double',min=0,max=10,dv=0,k=1)
    pm.addAttr(ikMovePos,ln='Squash',at='double',min=0,max=10,dv=0,k=1)
    pm.addAttr(ikMovePos,ln='PVStretch',at='double',min=0,max=10,dv=0,k=1)
    pm.addAttr(ikMovePos,ln='UpSlide',at='double',dv=0,k=1)
    pm.addAttr(ikMovePos,ln='DnSlide',at='double',dv=0,k=1)
    pvStretchPos = pm.duplicate(pvCtrlPos,
                   po=1,n='{0}PVStretchPos'.format(part))
    updb = db_(part+'Up',[list_[0].t,list_[1].t])
    dndb = db_(part+'Dn',[list_[1].t,list_[2].t])
    alldb = db_(part+'All',[list_[0].t,ikMovePos[0].t])
    pv1db = db_(part+'PVStretch1',[list_[0].t,pvStretchPos[0].t])
    pv2db = db_(part+'PVStretch2',[pvStretchPos[0].t,ikMovePos[0].t])
    sumDist = al_(part+'SumDist',[updb.distance,dndb.distance])
    pv1md = md_(part+'PVStretch1Dv',[pv1db.distance,updb.distance],op=2)
    pv2md = md_(part+'PVStretch2Dv',[pv2db.distance,dndb.distance],op=2)
    stretchba = blendAttr_(part+'Stretch',[sumDist.o,alldb.distance])
    cd = cd_(part)
    cd.operation.set(2)
    alldb.distance >> cd.firstTerm
    sumDist.o >> cd.secondTerm
    stretchba.o >> cd.colorIfTrueR
    sumDist.o >> cd.colorIfTrueG
    stretchmd = md_(part+'StretchDv',[cd.outColorR,cd.outColorG],op=2)
    pvStretch1ba = blendAttr_(part+'PVStretch1',[stretchmd.ox,pv1md.ox])
    pvStretch2ba = blendAttr_(part+'PVStretch2',[stretchmd.ox,pv2md.ox])
    dnSlideFilter = ml_(part+'DnSlideFilter',[ikMovePos[0].DnSlide])
    dnSlideFilter.i2.set(0.1)
    dnSlideal = al_(part+'DnSlide',[dnSlideFilter.o])
    dnSlideal.i2.set(1)
    dnSlideml = ml_(part+'DnSlide',[pvStretch2ba.o,dnSlideal.o])
    dnTxml = ml_(part+'DnTx',[dnSlideml.o,list_[2].Length])
    dnTxml.o >> list_[2].Tx
    upSlideFilter = ml_(part+'UpSlideFilter',[ikMovePos[0].UpSlide])
    upSlideFilter.i2.set(0.1)
    upSlideal = al_(part+'UpSlide',[upSlideFilter.o])
    upSlideal.i2.set(1)
    upSlideml = ml_(part+'UpSlide',[pvStretch1ba.o,upSlideal.o])
    upTxml = ml_(part+'UpTx',[upSlideml.o,list_[1].Length])
    upTxml.o >> list_[1].Tx
    squashPow = md_(part+'SquashPow',[upSlideml.o],op=3)
    squashPow.i2x.set(-1)
    squashba = blendAttr_(part+'Squash',[squashPow.ox,squashPow.ox])
    squashPow.ox // squashba.i[0]
    stretchsr = sr_(part+'Stretch')
    list(map(lambda a: stretchsr.attr('oldMax%s'%a).set(10) ,['X','Y','Z']))
    list(map(lambda a: stretchsr.attr('max%s'%a).set(1) ,['X','Y','Z']))
    stretchsr.outValueX >> stretchba.attributesBlender
    stretchsr.outValueY >> pvStretch1ba.attributesBlender
    stretchsr.outValueY >> pvStretch2ba.attributesBlender
    stretchsr.outValueX >> squashba.attributesBlender
    ikMovePos[0].Stretch >> stretchsr.valueX
    ikMovePos[0].PVStretch >> stretchsr.valueY
    ikMovePos[0].Squash >> stretchsr.valueZ
    poslist_ = pm.ls(list_, ikMovePos, pvStretchPos)
    return poslist_, squashba
    
def db_(name,attrlist_=None):
    db = pm.shadingNode('distanceBetween',au=1,
                        n='{}DB'.format(name))
    if attrlist_: 
        attrlist_[0] >> db.point1
        if len(attrlist_)>1: attrlist_[1] >> db.point2
    return db

def md_(name,attrlist_=None,op=None):
    _md = pm.shadingNode('multiplyDivide',au=1,
                        n='{}MD'.format(name))
    if attrlist_:
        attrlist_[0] >> _md.i1x
        if len(attrlist_)>1: attrlist_[1] >> _md.i2x
    _md.operation.set(op)
    return _md

def blendAttr_(name,attrlist_=None):
    ba = pm.shadingNode('blendTwoAttr',au=1,
                        n='{}BA'.format(name))
    if attrlist_: 
        attrlist_[0] >> ba.i[0]
        if len(attrlist_)>1: attrlist_[1] >> ba.i[1]
    return ba

def ml_(name,attrlist_=None):
    ml = pm.shadingNode('multDoubleLinear',au=1,
                        n='{}ML'.format(name))
    if attrlist_: 
        attrlist_[0] >> ml.i1
        if len(attrlist_)>1: attrlist_[1] >> ml.i2
    return ml

def al_(name,attrlist_=None):
    al = pm.shadingNode('addDoubleLinear',au=1,
                        n='{}AL'.format(name))
    if attrlist_: 
        attrlist_[0] >> al.i1
        if len(attrlist_)>1: attrlist_[1] >> al.i2
    return al

def cd_(name):
    cd = pm.shadingNode('condition',au=1,
                        n='{}CD'.format(name))
    return cd

def sr_(name):
    sr = pm.shadingNode('setRange',au=1,
                        n='{}SR'.format(name))
    return sr

def get_trans(object_):
    """오브젝트의 world translate값 

    Arguments:
        object_ (object) : world translate값 가져올 오브젝트

    Returns:
        position : translate value

    """
    return object_.getMatrix(worldSpace=True)[-1][:-1]

def length(v0, v1):
    """두 Vector 사이의 거리

    Arguments:
        v0, v1 (Vector) : length값 구할 두 Vector

    Returns:
        position : length
    """
    v = v1 - v0
    return v.length()

def joint_insert(joint_, name_, pos_):
    """joint insert

    Arguments:
        joint_ (joint) : insert 할 joint
        name_ (string) : 생성될 조인트 Name
        pos_ (position) : 위치값

    Returns:
        joint : insert된 joint
    """
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        pm.joint(JNT, n=name_, e=True, co=True, p=pos_)
        return pm.PyNode(name_)

def linear_spacing_joint(joint_, num, axis='x',side_='Right'):
    """갯수에 따라 비율 조정하여 조인트 끼워넣기.

    Arguments:
        joint_ (joint) : insert 할 joint
        num (int) : 추가할 조인트 갯수
        axis (position) : joint Axis

    Returns:
        insertList : insert된 joints
    """
    joints = [joint_, joint_.getChildren()[0]]
    stJoint = joints[0]
    stOtherType = stJoint.otherType.get()
    stSide = stJoint.side.get()
    enJoint = joints[-1]
    stTrans_= get_trans(stJoint)
    enTrans_= get_trans(enJoint)
    length_ = length(stTrans_, enTrans_)
    divValue = length_/(num+1)

    if side_ == 'Left':
        divValue = divValue
    else:
        divValue = divValue*-1
    if axis:
        if axis=='x':
            value = (divValue,0,0)
        if axis=='y':
            value = (0,divValue,0)
        if axis=='z':
            value = (0,0,divValue)
        if axis=='-x':
            value = (-1*divValue,0,0)
        if axis=='-y':
            value = (0,-1*divValue,0)
        if axis=='-z':
            value = (0,0,-1*divValue)
    else:
        value = (divValue,0,0)
    
    insertList = [stJoint]
    for i in range(num):
        localspace = space_(stJoint.name(), parent_=insertList[i])
        localspace.t.set(value)
        name_ = '{0}{1}{2}'.format(stOtherType, i+1, 'Jnt')
        pos_ = get_trans(localspace)
        JNT = joint_insert(insertList[i], name_, pos_)
        JNT.attr('type').set(18)
        JNT.otherType.set('{0}{1}'.format(stOtherType, i+1))
        JNT.side.set(stSide)
        pm.delete(localspace)
        insertList.append(JNT)
    return insertList

def getChildren_(object_, type_=None):
    """Get the childrens from top object

    Arguments:
        object_ (node): transform node
        type_ (type): node type

    Returns:
        list : childrens list

    """
    object_ = pm.PyNode(object_)
    if not type_:
        type_ = 'transform'
    child_ = object_.listRelatives(ad=1, c=1, typ=type_)
    child_ = child_ + [object_]
    child_.reverse()
    return child_

def pvSys(part,side_,pvSysPoser,md,IKCtrl):
    """pvSysGrp 하위 구조 생성.

    Arguments:
        part (string) : base name.
        side_ (string) : Left or Right
        pvSysPoser (object): PvSys position Poser
        md (object) : position factor
        IKCtrl (object) : position factor

    Returns:
        sys : sys Top Group
        posFW : position factor

    """
    name_ = '{}PV'.format(part)
    sys = space_('{}Sys'.format(name_), parent_=pvSysPoser)
    pm.parent(sys,w=1)
    aimGrp = space_('{}Aim'.format(name_), parent_=sys)
    posGrp = space_('{}Pos'.format(name_), parent_=md)
    pm.parent(posGrp,aimGrp)
    pos = space_(name_,suffix_='Pos',parent_=posGrp)
    posFWGrp = space_('{}FW'.format(pos.name()), parent_=pos)
    posFW = space_('{}FW'.format(pos.name()), parent_=posFWGrp)
    pm.parent(pvSysPoser,aimGrp)
    upVec = space_(name_,suffix_='UpVec',parent_=pvSysPoser)
    pm.parent(upVec,sys)
    tg = space_(name_,suffix_='TgPos',parent_=IKCtrl)
    pm.parent(tg,sys)
    pvConst = space_(name_,suffix_='SysChestConstPos',parent_=sys)
    pm.parent(pvConst, w=1)
    pvVP = pm.shadingNode('vectorProduct',au=1,n='{}PV'.format(name_))
    if side_ == 'Left':
        aim_ = (1,0,0)
    else:
        aim_ = (-1,0,0)
    aimConst = pm.aimConstraint(tg,aimGrp,aim=aim_,u=(0,1,0),
                                wut="objectrotation",wuo=upVec,mo=1)
    tg.t >> pvVP.i1
    IKCtrl.Twist >> aimConst.offsetX
    pvVP.i2y.set(1)
    pvVP.normalizeOutput.set(1)
    pm.setDrivenKeyframe(upVec.rz,cd=pvVP.ox)
    pm.setDrivenKeyframe(upVec.rz,cd=pvVP.ox,dv=-1,v=-90)
    pm.setDrivenKeyframe(upVec.rz,cd=pvVP.ox,dv=1,v=90)
    list(map(lambda a: pvSysPoser.attr(a) >> posGrp.attr(a),['t','r','s']))
    QM.MCon(pm.ls(pvConst,sys), r_='r', maintain=True)
    return sys,posFW

def twistSys(part,side_,root,st,md,DrvJoints):
    """create twist system

    Arguments:
        part (string) : base name.
        side_ (string) : Left or Right
        root,st,md,DrvJoints (object): position Poser

    Returns:
        twistList : twist Factor

    """
    twistList = []
    if side_ == 'Left':
        value = 1
        aim_ = (1,0,0)
    else:
        value = -1
        aim_ = (-1,0,0)
    rotTg = [root,st,md]
    parentTg = [DrvJoints[0].getParent(),DrvJoints[0],DrvJoints[1]]
    for i,jnt in enumerate(DrvJoints):
        twistFixGrp = space_(part,suffix_='{0}TwistFixGrp'.format(i+1))
        aimGrp = space_(part,suffix_='{0}AimGrp'.format(i+1),
                        parent_=twistFixGrp)
        twistFix = space_(part,suffix_='{0}TwistFixPos'.format(i+1),
                          parent_=aimGrp)
        twistFixTg = space_(part,suffix_='{0}TwistFixTgPos'.format(i+1),
                            parent_=twistFixGrp)
        if i>0:
            AssiA = space_(part,suffix_='{0}AssiAPos'.format(i+1),
                           parent_=jnt)
            AssiB = space_(part,suffix_='{0}AssiBPos'.format(i+1),
                           parent_=twistFixGrp)
            AssiA.tx.set(value)
            AssiB.tx.set(value)
            QM.PairMCon(pm.ls(AssiA,AssiB,twistFixTg),t=True,mo_=False)
        else:
            AssiB = space_(part,suffix_='{0}TwistFixUpVec'.format(i+1),
                           parent_=twistFixGrp)
            QM.MCon(pm.ls(DrvJoints[1],twistFixTg), t_='t', maintain=False)
        pm.matchTransform(twistFixGrp,jnt,pos=1)
        pm.matchTransform(twistFixGrp,rotTg[i],rot=1)
        pm.parent(twistFixGrp,parentTg[i])
        QM.MCon(pm.ls(jnt,twistFixGrp), t_='t', maintain=True)
        aimConst = pm.aimConstraint(twistFixTg,aimGrp,aim=aim_,u=(0,1,0),
                                    wut="objectrotation",wuo=AssiB,mo=0)
        if i == 2:
            twistFixSub = space_(part,
                                 suffix_='{0}TwistFixSubPos'.format(i+1),
                                 parent_=aimGrp)
            aimConst = pm.aimConstraint(twistFixTg,twistFixSub,
                                        aim=aim_,u=(0,1,0),
                                        wut="objectrotation",
                                        wuo=AssiA,mo=1)
            oriConst = pm.orientConstraint(pm.ls(aimGrp,twistFixSub,
                                           twistFix),mo=1)
            oriConst.attr('{}W0'.format(aimGrp.name())).set(0.5)
            oriConst.attr('{}W1'.format(twistFixSub.name())).set(1)
        twistList.append(twistFix)
    return twistList

def IKHandle_(part,st,en,ikPos,pole):
    ikh = pm.ikHandle(sj=st,ee=en,sol='ikRPsolver',
                      n='{0}IKH'.format(part))
    pm.poleVectorConstraint(pole,ikh[0])
    QM.MCon(pm.ls(ikPos,ikh[0]),t_=1,maintain=1)
    return ikh[0]

def sIKHandle_(part,st,en,crv_,upTwist,dnTwist):
    ikh = pm.ikHandle(sj=st,ee=en,c=crv_,ccv=0,
                    pcv=0,sol='ikSplineSolver',n='{0}ArcIKH'.format(part))
    ikh[0].dTwistControlEnable.set(1)
    ikh[0].dWorldUpType.set(4)
    upTwist.wm >> ikh[0].dWorldUpMatrix
    dnTwist.wm >> ikh[0].dWorldUpMatrixEnd
    return ikh[0]

def IKFKBlend_(IKList,FKList,DrvList):
    pblist = []
    for i,fk in enumerate(FKList):
        name_ = DrvList[i].name()
        pb_ = pm.createNode('pairBlend', n='{0}PB'.format(name_))
        IKList[i].t >> pb_.it1
        fk.t >> pb_.it2
        pb_.ot >> DrvList[i].t
        if i<2:
            IKList[i].r >> pb_.ir1
            fk.r >> pb_.ir2
            pb_.outRotate >> DrvList[i].r
        pblist.append(pb_)
    return pblist

def IKAttrCnt(ikPos_,IKCtrl):
    pm.addAttr(IKCtrl,ln='Twist',at='double',dv=0,k=1)
    pm.addAttr(IKCtrl,ln='Stretch',at='double',min=0,max=10,dv=0,k=1)
    IKCtrl.Stretch >> ikPos_.Stretch
    pm.addAttr(IKCtrl,ln='Squash',at='double',min=0,max=10,dv=0,k=1)
    IKCtrl.Squash >> ikPos_.Squash
    pm.addAttr(IKCtrl,ln='UpSlide',at='double',dv=0,k=1)
    IKCtrl.UpSlide >> ikPos_.UpSlide
    pm.addAttr(IKCtrl,ln='DnSlide',at='double',dv=0,k=1)
    IKCtrl.DnSlide >> ikPos_.DnSlide
    pm.addAttr(IKCtrl,ln='PVCtrlVis',at='bool',k=1)
    pm.addAttr(IKCtrl,ln='PVStretch',at='double',min=0,max=10,dv=0,k=1)
    IKCtrl.PVStretch >> ikPos_.PVStretch

def ArcCtrl_(name_,side,num_,upObject,crv_,ArcPoint,DrvJoints):
    index = 0
    number_ = num_+1+num_
    divNum = float(1)/float(num_+1)
    spc = [space_(name_,suffix_='Temp') for i in range(number_)]
    ArcCtrls = Ctrl(part,spc,type_='Arc')
    repeat = [divNum]*num_
    numList = repeat+[1]+repeat
    for i,a in enumerate(ArcCtrls):
        parent_ = a.getParent()
        if i != num_:
            if side == 'Right':
                aim_ = (-1,0,0)
            else:
                aim_ = (1,0,0)
            pc_ = pm.createNode('pointOnCurveInfo',n='{0}{1}PC'.format(name_,i))
            pc_.turnOnPercentage.set(1)
            pc_.parameter.set(numList[i])
            if i>num_:
                index = 1
            crv_[index].getShape().ws >> pc_.ic
            cm_ = pm.shadingNode('composeMatrix',au=1,n='{}CM'.format(name_))
            mm_ = pm.shadingNode('multMatrix',au=1,n='{}MM'.format(name_))
            dm_ = pm.shadingNode('decomposeMatrix',au=1,n='{}DM'.format(name_))
            pc_.p >> cm_.it
            cm_.outputMatrix >> mm_.matrixIn[0]
            mm_.matrixSum >> dm_.inputMatrix
            dm_.ot >> parent_.t
            parent_.pim >> mm_.matrixIn[1]
            pm.tangentConstraint(crv_[index],parent_,aim=aim_,u=(0,1,0),
                                wut='objectrotation',wu=(0,1,0),
                                wuo=upObject[index])
        else:
            pm.addAttr(ArcCtrls,ln='Pbw',at='double',min=0,max=10,dv=0,k=1)
            pb_ = pm.createNode('pairBlend', n='{0}PB'.format(parent_.name()))
            pm.matchTransform(parent_,ArcPoint,pos=1)
            pm.matchTransform(parent_,DrvJoints[1],rot=1)
            pb_.it1.set(parent_.t.get())
            pb_.ir1.set(parent_.r.get())
            pm.pointConstraint(ArcPoint,parent_,mo=1)
            pm.orientConstraint(DrvJoints[0],parent_,mo=0)
            t_ = list(map(lambda a: parent_.attr('t{0}'.format(a)),['x','y','z']))
            r_ = list(map(lambda a: parent_.attr('r{0}'.format(a)),['x','y','z']))
            inT_ = list(map(lambda a: a.listConnections(p=1)[0] ,t_))
            inR_ = list(map(lambda a: a.listConnections(p=1)[0] ,r_))
            pbt_ = list(map(lambda a: pb_.attr(a) ,['itx2','ity2','itz2']))
            pbr_ = list(map(lambda a: pb_.attr(a) ,['irx2','iry2','irz2']))
            [inT_[i] >> t for i,t in enumerate(pbt_)]
            [inR_[i] >> r for i,r in enumerate(pbr_)]
            [inT_[i] // t for i,t in enumerate(t_)]
            [inR_[i] // r for i,r in enumerate(r_)]
            pb_.ot >> parent_.t
            pb_.outRotate >> parent_.r
    pm.delete(spc)
    return ArcCtrls
        

part = 'Arm'
side = 'Right'
inbetween = 3
arcCtrlNum = 1
sel = pm.ls(sl=1,fl=1,r=1)
root,st,md,en = sel[0],sel[1],sel[2],sel[3]

# 베이스 구조 생성.
rigGrp = pm.createNode('transform',n='{0}RigGrp'.format(part))
ctrlGrp = pm.createNode('transform',n='{0}CtrlGrp'.format(part))
sysGrp = pm.createNode('transform',n='{0}SysGrp'.format(part))
rootGrp,rootConst = root_(root)
SysConst = space_(root.name(),suffix_='SysConstGrp',parent_=rootConst)
pm.parent(SysConst,sysGrp)
posGrp = space_(part,suffix_='PosGrp',parent_=SysConst)
jntGrp = space_(part,suffix_='JntGrp',parent_=SysConst)
crvGrp = space_(part,suffix_='IKCrvGrp',parent_=SysConst)
pm.parent(pm.ls(rootGrp,rootConst),ctrlGrp)
pm.parent(pm.ls(ctrlGrp,sysGrp),rigGrp)

# Poser 생성.
FKCtrlPoser = fkCtrlPos_(sel[1:])
pvCtrlPoser = poleVecCtrlPos_(part,st,md,en,side_=side)
ikCtrlPoser = IKCtrlPos_(part,st,en,side_=side)
rootCtrlPoser = pm.duplicate(rootConst,
                             n='{}CtrlPoser'.format(root.name()),po=1)[0]
pvSysPoser = PVSysPos_(part,st,en,side_=side)
ikPos,squashba = ikPos_(part,[st,md,en],ikCtrlPoser,pvCtrlPoser)
pm.parent(pm.ls(FKCtrlPoser[0],pvCtrlPoser,ikCtrlPoser),rootConst)
pm.parent(rootCtrlPoser,ctrlGrp)
pm.parent(ikPos,posGrp)

# 조인트 생성.
FKJoints = dupJoint([st,md,en],'FK')
IKJoints = dupJoint([st,md,en],'IK')
[pos.Tx >> IKJoints[i+1].tx for i,pos in enumerate(ikPos[1:3])]
DrvJoints = dupJoint([st,md,en],'Drv')
[pm.addAttr(i,ln='FKScaleY',at='double',dv=0,k=1) for i in DrvJoints[:-1]]
[pm.addAttr(i,ln='FKScaleZ',at='double',dv=0,k=1) for i in DrvJoints[:-1]]
[pm.addAttr(i,ln='IKSquash',at='double',dv=0,k=1) for i in DrvJoints[:-1]]
[squashba.o >> i.IKSquash for i in DrvJoints[:-1]] 
IKFKBlend_(IKJoints,FKJoints,DrvJoints)
UpArcJoints = dupJoint([st,md],'UpArc')
DnArcJoints = dupJoint([md,en],'DnArc')
UpArcJoints[-1].jointOrient.set(0,0,0)
UpArcJoints[-1].r.set(0,0,0)
linear_spacing_joint(UpArcJoints[0], inbetween, axis='x', side_=side)
linear_spacing_joint(DnArcJoints[0], inbetween, axis='x', side_=side)
pm.parent(DnArcJoints[0],UpArcJoints[-1])
ArcJoints = getChildren_(UpArcJoints[0], type_='joint')
[pm.rename(arc,'{0}Arc{1}Jnt'.format(part,i+1)) for i,
arc in enumerate(ArcJoints)]
pm.parent(pm.ls(FKJoints[0],IKJoints[0],DrvJoints[0],ArcJoints[0]),jntGrp)

# 커브 생성.
half = int(len(ArcJoints)/2)
rvs_ = True if side == 'Right' else False
upIKCrv = IKStSq.IKStretch(pm.ls(ArcJoints[0],ArcJoints[half-1]),
                           rvs=rvs_)
pm.rename(upIKCrv[0],'{0}UpIKCrv'.format(part))
pm.rename(upIKCrv[1],'{0}UpIKChkCrv'.format(part))
upGrp = upIKCrv[0].getParent()
dnIKCrv = IKStSq.IKStretch(pm.ls(ArcJoints[half],ArcJoints[-1]),
                           rvs=rvs_)
pm.rename(dnIKCrv[0],'{0}DnIKCrv'.format(part))
pm.rename(dnIKCrv[1],'{0}DnIKChkCrv'.format(part))
dnGrp = dnIKCrv[0].getParent()
ArcGrp,ArcCrvs,ArcPoint = Arc.createArc(part, [st,md,en])
pm.parent(pm.ls(upIKCrv,dnIKCrv),crvGrp)
pm.parent(ArcGrp,SysConst)
pm.delete(pm.ls(upGrp,dnGrp))
QM.MCon(pm.ls(DrvJoints[0],upIKCrv[-1]),t_=1,r_=1,maintain=1)
QM.MCon(pm.ls(DrvJoints[1],dnIKCrv[-1]),t_=1,r_=1,maintain=1)
bs_ = pm.blendShape(ArcCrvs[0],upIKCrv[0],
                    n='{0}ArcBlendShape'.format(part))[0]
bs_.addBaseObject(dnIKCrv[0].getShape())
bs_.addTarget(dnIKCrv[0].getShape(),weightIndex=2,
            newTarget=ArcCrvs[1],fullWeight=1.0,
            targetType='object')
                  
# 컨트롤러 생성.
IKCtrlPos = space_(part,suffix_='IKCtrlPos')
pm.matchTransform(IKCtrlPos,ikCtrlPoser)
if side == 'Right': IKCtrlPos.rx.set(180)
FKCtrlPos = space_(part,suffix_='FKCtrlPos')
pm.matchTransform(FKCtrlPos,FKCtrlPoser)
FKCtrls = Ctrl(part,FKJoints,type_='FK')
[FKCtrls[i].sy >> drv.FKScaleY for i,drv in enumerate(DrvJoints[:-1])] 
[FKCtrls[i].sz >> drv.FKScaleZ for i,drv in enumerate(DrvJoints[:-1])] 
IKCtrl = Ctrl(part,[ikCtrlPoser],type_='IK')[0]
IKAttrCnt(ikPos[3],IKCtrl)
PoleCtrl = Ctrl(part,[pvCtrlPoser],type_='Pole')[0]
IKCtrl.PVCtrlVis >> PoleCtrl.getParent().v
ArcCtrls = ArcCtrl_(part,side,arcCtrlNum,[st,md],
                    [upIKCrv[0],dnIKCrv[0]],ArcPoint,DrvJoints)
IKFKCtrl = Ctrl(part,[ikCtrlPoser],type_='IKFK')[0]
pm.addAttr(IKFKCtrl,ln='IKFK',at='double',min=0,max=1,dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='Arc',at='double',min=0,max=10,dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='UpTwistFix',at='double',dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='DnTwistFix',at='double',dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='AutoHideIKFK',at='bool',k=1)
pm.addAttr(IKFKCtrl,ln='ArcCtrlVis',at='bool',k=1)
IKFKCtrl.Arc >> bs_.attr(ArcCrvs[0].name())
IKFKCtrl.Arc >> bs_.attr(ArcCrvs[1].name())
pm.parent(IKCtrlPos,IKCtrl)
pm.parent(FKCtrlPos,FKCtrls[-1])
list(map(offGrp_,[IKCtrlPos,FKCtrlPos]))
pm.parent(pm.ls(IKCtrl.getParent(),
          FKCtrls[0].getParent(),
          PoleCtrl.getParent(),
          IKFKCtrl.getParent(),
          ArcCtrls[0].getParent(),
          ArcCtrls[1].getParent(),
          ArcCtrls[2].getParent()),
          rootConst)
[QM.MCon(pm.ls(fk,FKJoints[i]),
         t_=1,r_=1,maintain=1) for i,fk in enumerate(FKCtrls)]
QM.MCon(pm.ls(IKCtrlPos,IKJoints[-1]),r_=1,maintain=0)
oriConst = pm.orientConstraint(pm.ls(IKCtrlPos,FKCtrlPos,
                               DrvJoints[-1]),mo=0)
QM.MCon(pm.ls(IKCtrlPos,ikPos[3]),t_=1,r_=1,maintain=1)
QM.MCon(pm.ls(PoleCtrl,ikPos[4]),t_=1,maintain=1)

# PoleVector System 생성.
sys,posFW = pvSys(part,side,pvSysPoser,md,IKCtrl)
pm.parent(sys,SysConst)

# Twist System 생성.
twists = twistSys(part,side,root,st,md,DrvJoints)

# IK System 생성.
ikh = IKHandle_(part,IKJoints[0],IKJoints[-1],IKCtrlPos,PoleCtrl)
upikh = sIKHandle_(part+'Up',UpArcJoints[0],UpArcJoints[-1],upIKCrv[0],
                    twists[0],twists[1])
dnikh = sIKHandle_(part+'Dn',DnArcJoints[0],DnArcJoints[-1],dnIKCrv[0],
                    twists[1],twists[2])
pm.parent(pm.ls(ikh,upikh,dnikh),SysConst)
