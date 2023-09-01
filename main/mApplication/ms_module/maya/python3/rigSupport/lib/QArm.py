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
from rigSupport.lib import linearJoint as lj
try:
    from imp import *
except:
    pass

reload(IKStSq)
reload(Arc)
reload(QM)
reload(lj)

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
    """object Offset Position Group.

    Arguments:
        object_ (object): Offset object

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
    """objects Hierarchy Constructure.

    Arguments:
        object_ (list): object to be hierarchyed

    Returns:
        None : None

    """
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])

def dupJoint(joints,type_):
    """Joint Duplicate.

    Arguments:
        joints (list) : joint to be copied
        type_ (string) : 'FK' or 'IK' or 'Drv'

    Returns:
        Jnts : copied joint

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
    """Create FK Controller.

    Arguments:
        object_ (list) : FK Position Joints

    Returns:
        list_ : FK Controller List

    """
    list_ = []
    for i in object_:
        name_ = '{0}FKPoser'.format(i.name())
        pos = pm.createNode('transform',n=name_)
        pm.matchTransform(pos,i)
        list_.append(pos)
    hierarchy_(list_)
    return list_

def Ctrl(name_,joints,type_=None):
    """Ctrls Create.

    Arguments:
        joints (list) : Ctrl Position Object

    Returns:
        ctrls : Create Ctrls

    """
    ctrls = []
    for i,j in enumerate(joints):
        if type_ == 'FK':
            shape_ = 'square'
        elif type_ == 'IK':
            shape_ = 'circle'
        else:
            shape_ = type_
        name = '{0}{1}{2}Ctrl'.format(name_,i+1,type_)
        ctrl = crvShape_(shape_,name)
        pm.matchTransform(ctrl,j)
        ctrls.append(ctrl)
    if type_ == 'FK':
        hierarchy_(ctrls)
    [offGrp_(c) for c in ctrls]
    return ctrls

def root_(object_):
    """root Position Control and Offset Group

    Arguments:
        object_ (object) : root Position object

    Returns:
        grp : root Ctrl Offset Group
        const : root Position ConstGrp

    """
    name_ = '{}Ctrl'.format(object_.name())
    ctrl = crvShape_('circle',name_)
    grp = offGrp_(ctrl)
    const = pm.createNode('transform',
                          n='{0}ConstGrp'.format(ctrl.name()))
    pm.matchTransform(grp,object_)
    pm.matchTransform(const,object_)
    return grp,const,ctrl

def getVecPos(st,md,en):
    """poleVector Position

    Arguments:
        st,md,en (objects) : start, mid, end Vector Object

    Returns:
        position : poleVector Position Pos

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

def poleVecCtrlPos_(name_,st,md,en,side_='Right'):
    """poleVector Ctrl Pos

    Arguments:
        name_ (string) : prefix name
        st,md,en (objects) : start, mid, end Vector Object
        side_ (string) : 'Left' Or 'Right'

    Returns:
        pos : poleVector Ctrl Position pos

    """
    if side_ == 'Left':
        upVec = [-1,0,0]
    else:
        upVec = [1,0,0]
    position = getVecPos(st,md,en)
    pos = pm.createNode('transform',
                        n='{0}PoleVectorCtrlPoser'.format(name_))
    pos.t.set(position)
    aimConst = pm.aimConstraint(md,pos,aim=(0,0,1),u=upVec,
                                wut="object",wuo=st,mo=0)
    pm.delete(aimConst)
    return pos

def IKCtrlPos_(name_,en,side_='Right'):
    """IK Ctrl Pos

    Arguments:
        name_ (string) : prefix name
        st,en (objects) : start, end Vector Object
        side_ (string) : 'Left' Or 'Right'

    Returns:
        pos : IK Ctrl Position pos

    """
    if side_ == 'Left':
        rz_ = -90
    else:
        rz_ = 90
    pos = pm.createNode('transform',n='{0}IKCtrlPoser'.format(name_))
    pm.matchTransform(pos,en,pos=1)
    pos.rz.set(rz_)
    return pos

def ExIKCtrlPos_(name_,ex):
    """IK Ctrl Pos

    Arguments:
        name_ (string) : prefix name
        st,en (objects) : start, end Vector Object
        side_ (string) : 'Left' Or 'Right'

    Returns:
        pos : IK Ctrl Position pos

    """
    pos = pm.createNode('transform',n='{0}ExIKCtrlPoser'.format(name_))
    pm.matchTransform(pos,ex,pos=1)
    return pos

def PVSysPos_(name_,st,en,side_='Right'):
    """PVSys Pos

    Arguments:
        name_ (string) : prefix name
        st,en (objects) : start, end Vector Object
        side_ (string) : 'Left' Or 'Right'

    Returns:
        pos : polvector Sys Pos

    """
    if side_ == 'Left':
        aim_ = (1,0,0)
    else:
        aim_ = (-1,0,0)
    pos = pm.createNode('transform',n='{0}PVSysPoser'.format(name_))
    pm.matchTransform(pos,st,pos=1)
    aimConst = pm.aimConstraint(en,pos,aim=aim_,u=(0,1,0),
                                wut="None",mo=0)
    pm.delete(aimConst)
    return pos

def ikPos_(name,object_,ikCtrlPos,exIkCtrlPos,pvCtrlPos):
    """Create IKPos and IKStretch Setup.

    Arguments:
        object_ (list) : object to be positioned

    Returns:
        IKPos : IK Position Pos Group
        Squash BlendAttr : Squash OutPut

    """
    list_ = []
    for i,item in enumerate(object_):
        name_ = '{0}IK{1}Pos'.format(name,i)
        pos = pm.createNode('transform',n=name_)
        pm.matchTransform(pos,item)
        if i>0:
            pm.addAttr(pos,ln='Tx',at='double',dv=0,k=1)
            pm.addAttr(pos,ln='Length',at='double',dv=0,k=1)
            pos.Length.set(item.tx.get())
        list_.append(pos)
    ikMovePos = pm.duplicate(ikCtrlPos,
                po=1,n='{0}IKMovePos'.format(name_))
    exIkMovePos = pm.duplicate(exIkCtrlPos,
                po=1,n='{0}exIkCtrlPos'.format(name_))
    pm.addAttr(ikMovePos,ln='Stretch',at='double',min=0,max=10,dv=0,k=1)
    pm.addAttr(ikMovePos,ln='Squash',at='double',min=0,max=10,dv=0,k=1)
    pm.addAttr(ikMovePos,ln='PVStretch',at='double',min=0,max=10,dv=0,k=1)
    pm.addAttr(ikMovePos,ln='UpSlide',at='double',dv=0,k=1)
    pm.addAttr(ikMovePos,ln='DnSlide',at='double',dv=0,k=1)
    pvStretchPos = pm.duplicate(pvCtrlPos,
                   po=1,n='{0}PVStretchPos'.format(name_))
    updb = db_(name_+'Up',[list_[0].t,list_[1].t])
    mddb = db_(name_+'Md',[list_[1].t,list_[2].t])
    dndb = db_(name_+'Dn',[list_[2].t,list_[3].t])
    exdb = db_(name_+'Ex',[list_[3].t,list_[4].t])
    alldb = db_(name_+'All',[list_[0].t,exIkMovePos[0].t])
    pv1db = db_(name_+'PVStretch1',[list_[0].t,pvStretchPos[0].t])
    pv2db = db_(name_+'PVStretch2',[pvStretchPos[0].t,list_[2].t])
    pv3db = db_(name_+'PVStretch3',[list_[2].t,list_[3].t])
    pv4db = db_(name_+'PVStretch4',[list_[3].t,list_[4].t])
    upAllDist = al_(name_+'UpAllDist',[updb.distance,mddb.distance])
    dnAllDist = al_(name_+'DnAllDist',[dndb.distance,exdb.distance])
    AllDist = al_(name_+'AllDist',[upAllDist.o,dnAllDist.o])
    pv1md = md_(name_+'PVStretch1Dv',[pv1db.distance,updb.distance],op=2)
    pv2md = md_(name_+'PVStretch2Dv',[pv2db.distance,mddb.distance],op=2)
    pv3md = md_(name_+'PVStretch3Dv',[pv3db.distance,dndb.distance],op=2)
    pv4md = md_(name_+'PVStretch4Dv',[pv4db.distance,exdb.distance],op=2)
    stretchbc = bc_(name_+'AllStretch',[alldb.distance,AllDist.o])
    AllStretchmd = md_(name_+'StretchDv',[stretchbc.outputR,stretchbc.color2R],op=2)
    allCd = cd_(name_+'All')
    allCd.operation.set(2)
    stretchbc.outputR >> allCd.firstTerm
    stretchbc.color2R >> allCd.secondTerm
    AllStretchmd.ox >> allCd.colorIfTrueR
    pvStretch1ba = blendAttr_(name_+'PVStretch1',[allCd.outColorR,pv1md.ox])
    pvStretch2ba = blendAttr_(name_+'PVStretch2',[allCd.outColorR,pv2md.ox])
    pvStretch3ba = blendAttr_(name_+'PVStretch3',[allCd.outColorR,pv3md.ox])
    pvStretch4ba = blendAttr_(name_+'PVStretch4',[allCd.outColorR,pv4md.ox])

    upSlideFilter = ml_(name_+'UpSlideFilter',[ikMovePos[0].UpSlide])
    upSlideFilter.i2.set(0.1)
    upSlideal = al_(name_+'UpSlideFilter',[upSlideFilter.o])
    upSlideal.i2.set(1)
    upSlideml = ml_(name_+'UpStretchFilter',[pvStretch1ba.o,upSlideal.o])
    mdSlideml = ml_(name_+'MdStretchFilter',[pvStretch2ba.o,upSlideal.o])
    upTxml = ml_(name_+'UpTx',[upSlideml.o,list_[1].Length])
    mdTxml = ml_(name_+'MdTx',[mdSlideml.o,list_[2].Length])
    upTxml.o >> list_[1].Tx
    mdTxml.o >> list_[2].Tx

    dnSlideFilter = ml_(name_+'DnSlideFilter',[ikMovePos[0].DnSlide])
    dnSlideFilter.i2.set(0.1)
    dnSlideal = al_(name_+'DnSlideFilter',[dnSlideFilter.o])
    dnSlideal.i2.set(1)
    dnSlideml = ml_(name_+'DnStretchFilter',[pvStretch3ba.o,dnSlideal.o])
    exSlideml = ml_(name_+'ExStretchFilter',[pvStretch4ba.o,dnSlideal.o])
    dnTxml = ml_(name_+'DnTx',[dnSlideml.o,list_[3].Length])
    exTxml = ml_(name_+'ExTx',[exSlideml.o,list_[4].Length])
    dnTxml.o >> list_[3].Tx
    exTxml.o >> list_[4].Tx
    
    squashPow = md_(name_+'SquashPow',op=3)
    upSlideml.o >> squashPow.i1x
    dnSlideml.o >> squashPow.i1y
    squashPow.i2.set(-2,-2,-2)
    squash1ba = blendAttr_(name_+'1Squash',[squashPow.ox,squashPow.ox])
    squash2ba = blendAttr_(name_+'2Squash',[squashPow.ox,squashPow.ox])
    squash3ba = blendAttr_(name_+'3Squash',[squashPow.ox,squashPow.ox])
    squash4ba = blendAttr_(name_+'4Squash',[squashPow.ox,squashPow.ox])
    squashPow.ox // squash1ba.i[0]
    squashPow.ox // squash2ba.i[0]
    squashPow.ox // squash3ba.i[0]
    squashPow.ox // squash4ba.i[0]
    stretchsr = sr_(name_+'Stretch')
    list(map(lambda a: stretchsr.attr('oldMax%s'%a).set(10) ,['X','Y','Z']))
    list(map(lambda a: stretchsr.attr('max%s'%a).set(1) ,['X','Y','Z']))
    stretchsr.outValueX >> stretchbc.blender
    stretchsr.outValueY >> pvStretch1ba.attributesBlender
    stretchsr.outValueY >> pvStretch2ba.attributesBlender
    stretchsr.outValueY >> pvStretch3ba.attributesBlender
    stretchsr.outValueY >> pvStretch4ba.attributesBlender
    ikMovePos[0].Stretch >> stretchsr.valueX
    ikMovePos[0].PVStretch >> stretchsr.valueY
    ikMovePos[0].Squash >> stretchsr.valueZ
    poslist_ = pm.ls(list_, ikMovePos, exIkMovePos, pvStretchPos)
    squashlist = pm.ls(squash1ba,squash2ba,squash3ba,squash4ba)
    return poslist_,squashlist
    
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
        elif len(attrlist_)>2: attrlist_[2] >> _md.i3x
    _md.operation.set(op)
    return _md

def blendAttr_(name,attrlist_=None):
    ba = pm.shadingNode('blendTwoAttr',au=1,
                        n='{}BA'.format(name))
    if attrlist_: 
        attrlist_[0] >> ba.i[0]
        if len(attrlist_)>1: attrlist_[1] >> ba.i[1]
    return ba

def bc_(name,attrlist_=None):
    bc = pm.shadingNode('blendColors',au=1,
                        n='{}BC'.format(name))
    if attrlist_: 
        attrlist_[0] >> bc.color1R
        if len(attrlist_)>1: attrlist_[1] >> bc.color2R
    return bc

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

def IKFKBlend_(IKList,FKList,DrvList):
    pblist = []
    for i,fk in enumerate(FKList):
        name_ = DrvList[i].name()
        pb_ = pm.createNode('pairBlend', n='{0}PB'.format(name_))
        IKList[i].t >> pb_.it1
        fk.t >> pb_.it2
        pb_.ot >> DrvList[i].t
        if i<4:
            IKList[i].r >> pb_.ir1
            fk.r >> pb_.ir2
            pb_.outRotate >> DrvList[i].r
        pblist.append(pb_)
    return pblist

def length(v0, v1):
    """A Vector B Vector Length

    Arguments:
        v0, v1 (Vector) : Start and End Vector

    Returns:
        position : length
    """
    v = v1 - v0
    return v.length()

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

def pvSys(name_,side_,pvSysPoser,md,IKCtrl):
    """pvSysGrp

    Arguments:
        name_ (string) : base name.
        side_ (string) : Left or Right
        pvSysPoser (object): PvSys position Poser
        md (object) : position factor
        IKCtrl (object) : position factor

    Returns:
        sys : sys Top Group
        posFW : position factor

    """
    pvName_ = '{}PV'.format(name_)
    sys = space_('{}Sys'.format(pvName_), parent_=pvSysPoser)
    pm.parent(sys,w=1)
    aimGrp = space_('{}Aim'.format(pvName_), parent_=sys)
    posGrp = space_('{}Pos'.format(pvName_), parent_=md)
    pm.parent(posGrp,aimGrp)
    pos = space_(pvName_,suffix_='Pos',parent_=posGrp)
    posFWGrp = space_('{}FW'.format(pos.name()), parent_=pos)
    posFW = space_('{}FW'.format(pos.name()), parent_=posFWGrp)
    pm.parent(pvSysPoser,aimGrp)
    upVec = space_(pvName_,suffix_='UpVec',parent_=pvSysPoser)
    pm.parent(upVec,sys)
    tg = space_(pvName_,suffix_='TgPos',parent_=IKCtrl)
    pm.parent(tg,sys)
    pvConst = space_(pvName_,suffix_='SysChestConstPos',parent_=sys)
    pm.parent(pvConst, w=1)
    pvVP = pm.shadingNode('vectorProduct',au=1,n='{}PV'.format(pvName_))
    if side_ == 'Left':
        aim_ = (1,0,0)
        y_ = 1
    else:
        aim_ = (-1,0,0)
        y_ = -1
    aimConst = pm.aimConstraint(tg,aimGrp,aim=aim_,u=(0,1,0),
                                wut="objectrotation",wuo=upVec,mo=1)
    tg.t >> pvVP.i1
    IKCtrl.Twist >> aimConst.offsetX
    pvVP.i2y.set(y_)
    pvVP.normalizeOutput.set(1)
    pm.setDrivenKeyframe(upVec.rz,cd=pvVP.ox)
    pm.setDrivenKeyframe(upVec.rz,cd=pvVP.ox,dv=-1,v=-90)
    pm.setDrivenKeyframe(upVec.rz,cd=pvVP.ox,dv=1,v=90)
    list(map(lambda a: pvSysPoser.attr(a) >> posGrp.attr(a),['t','r','s']))
    QM.MCon(pm.ls(pvConst,sys), r_='r', maintain=True)
    return sys,pos,tg

def twistSys(name_,side_,root,st,md1,md2,en,DrvJoints):
    """create twist system

    Arguments:
        name_ (string) : base name.
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
    rotTg = [root,st,md1,md2,en]
    parentTg = pm.ls(DrvJoints[0].getParent(),DrvJoints[:-1])
    for i,jnt in enumerate(DrvJoints):
        twistFixGrp = space_(name_,suffix_='{0}TwistFixGrp'.format(i+1))
        aimGrp = space_(name_,suffix_='{0}AimGrp'.format(i+1),
                        parent_=twistFixGrp)
        twistFix = space_(name_,suffix_='{0}TwistFixPos'.format(i+1),
                          parent_=aimGrp)
        twistFixTg = space_(name_,suffix_='{0}TwistFixTgPos'.format(i+1),
                            parent_=twistFixGrp)
        if i>0:
            AssiA = space_(name_,suffix_='{0}AssiAPos'.format(i+1),
                           parent_=jnt)
            AssiB = space_(name_,suffix_='{0}AssiBPos'.format(i+1),
                           parent_=twistFixGrp)
            AssiA.tx.set(value)
            AssiB.tx.set(value)
            QM.PairMCon(pm.ls(AssiA,AssiB,twistFixTg),t=True,mo_=False)
        else:
            AssiB = space_(name_,suffix_='{0}TwistFixUpVec'.format(i+1),
                           parent_=twistFixGrp)
            QM.MCon(pm.ls(DrvJoints[1],twistFixTg), t_='t', maintain=False)
        pm.matchTransform(twistFixGrp,jnt,pos=1)
        pm.matchTransform(twistFixGrp,rotTg[i],rot=1)
        pm.parent(twistFixGrp,parentTg[i])
        QM.MCon(pm.ls(jnt,twistFixGrp), t_='t', maintain=True)
        aimConst = pm.aimConstraint(twistFixTg,aimGrp,aim=aim_,u=(0,1,0),
                                    wut="objectrotation",wuo=AssiB,mo=0)
        if jnt == DrvJoints[-1]:
            twistFixSub = space_(name_,
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

def IKHandle_(name_,st,en,ikPos,pole):
    ikh = pm.ikHandle(sj=st,ee=en,sol='ikRPsolver',
                      n='{0}IKH'.format(name_))
    pm.poleVectorConstraint(pole,ikh[0])
    QM.MCon(pm.ls(ikPos,ikh[0]),t_=1,maintain=1)
    return ikh[0]

def sIKHandle_(name_,st,en,crv_,upTwist,dnTwist):
    ikh = pm.ikHandle(sj=st,ee=en,c=crv_,ccv=0,
                    pcv=0,sol='ikSplineSolver',n='{0}ArcIKH'.format(name_))
    ikh[0].dTwistControlEnable.set(1)
    ikh[0].dWorldUpType.set(4)
    upTwist.wm >> ikh[0].dWorldUpMatrix
    dnTwist.wm >> ikh[0].dWorldUpMatrixEnd
    return ikh[0]

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

def ArcCtrl_(name_,side,num_,upObject,crv_,ArcPoint,DrvJoints,bs_):
    index = 0
    number_ = num_+1+num_
    divNum = float(1)/float(num_+1)
    spc = [space_(name_,suffix_='Temp') for i in range(number_)]
    ArcCtrls = Ctrl(name_,spc,type_='Arc')
    repeat = [divNum]*num_
    numList = repeat+[1]+repeat
    targetNum = 0
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
            bs_.attr('outputGeometry[{0}]'.format(targetNum)) >> pc_.ic
            cm_ = pm.shadingNode('composeMatrix',au=1,n='{}CM'.format(name_))
            mm_ = pm.shadingNode('multMatrix',au=1,n='{}MM'.format(name_))
            dm_ = pm.shadingNode('decomposeMatrix',au=1,n='{}DM'.format(name_))
            pc_.p >> cm_.it
            cm_.outputMatrix >> mm_.matrixIn[0]
            mm_.matrixSum >> dm_.inputMatrix
            dm_.ot >> parent_.t
            parent_.pim >> mm_.matrixIn[1]
            tgc = pm.tangentConstraint(crv_[index],parent_,aim=aim_,u=(0,1,0),
                                wut='objectrotation',wu=(0,1,0),
                                wuo=upObject[index])
            print(tgc.target[0].targetGeometry)
            print(tgc.target[0].targetGeometry.listConnections(p=1)[0])
            tgc.target[0].targetGeometry.listConnections(p=1)[0] // tgc.target[0].targetGeometry
            bs_.attr('outputGeometry[{0}]'.format(targetNum)) >> tgc.target[0].targetGeometry
            targetNum +=1
        else:
            pm.addAttr(a,ln='Pbw',at='double',min=0,max=10,dv=0,k=1)
            pb_ = pm.createNode('pairBlend', n='{0}PB'.format(parent_.name()))
            ml = ml_(parent_.name(),attrlist_=[a.Pbw])
            ml.i2.set(0.1)
            pm.parentConstraint(DrvJoints[1],parent_,mo=0)
            t_ = list(map(lambda a: parent_.attr('t{0}'.format(a)),['x','y','z']))
            r_ = list(map(lambda a: parent_.attr('r{0}'.format(a)),['x','y','z']))
            inT_ = list(map(lambda a: a.listConnections(p=1)[0] ,t_))
            inR_ = list(map(lambda a: a.listConnections(p=1)[0] ,r_))
            pbt_ = list(map(lambda a: pb_.attr(a) ,['itx1','ity1','itz1']))
            pbr_ = list(map(lambda a: pb_.attr(a) ,['irx1','iry1','irz1']))
            [inT_[i] // t for i,t in enumerate(t_)]
            [inR_[i] // r for i,r in enumerate(r_)]
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
            pb_.rotInterpolation.set(1)
    pm.delete(spc)
    return ArcCtrls

def rebuildCrv_(crv_,num_):
    pm.rebuildCurve(crv_,ch=1,rpo=1,rt=0,end=1,kr=0,
                    kcp=0,kep=1,kt=1,s=num_-1,d=3)

def crvBlendshape_(name_,ArcCrvGrp,IKCrvGrp,crvs,num_):
    for c in crvs:
        pm.delete(pm.cluster(c))
        rebuildCrv_(c,num_)
    bs_ = pm.blendShape(ArcCrvGrp,IKCrvGrp,
                        n='{0}ArcBlendShape'.format(name_))[0]
    return bs_

def clusterBind_(name_,object_,crv_):
    spcList = []
    clsList = []
    crvOri = pm.PyNode(crv_.getShape().name() + 'Orig')
    for i,pos in enumerate(object_):
        cls = pm.cluster(crv_,n='{0}{1}Cls'.format(name_,i))
        pos.t >> crvOri.attr('controlPoints[{0}]'.format(i))
        spc = space_(cls[-1].name())
        ZeroMtx = space_(cls[-1].name(),suffix_='ZeroMtx',parent_=spc)
        pm.parent(cls[-1],spc)
        pm.matchTransform(spc,pos)
        cls[-1].rotatePivot.set(0,0,0)
        cls[-1].scalePivot.set(0,0,0)
        cls[-1].getShape().origin.set(0,0,0)
        ZeroMtx.wim >> cls[0].bindPreMatrix
        spcList.append(spc)
        clsList.append(cls[-1])
    return spcList,clsList

def ikfkVisConnect_(name_,attr_):
    rvs = pm.shadingNode('reverse',au=1,n='{}IKFKRVS'.format(name_))
    cd = cd_(name_+'IKFK')
    cd.secondTerm.set(1)
    attr_[0] >> rvs.ix
    rvs.ox >> cd.colorIfTrueR
    attr_[0] >> cd.colorIfTrueG
    attr_[1] >> cd.firstTerm
    return cd.outColorR,cd.outColorG
    

part = 'Leg'
side = 'Left'
inbetween = 3
arcCtrlNum = 1
sel = pm.ls(sl=1,fl=1,r=1)
root,st,md1,md2,en,ex = sel[0],sel[1],sel[2],sel[3],sel[4],sel[5]

# Base Constructure.
rigGrp = pm.createNode('transform',n='{0}{1}RigGrp'.format(side,part))
ctrlGrp = pm.createNode('transform',n='{0}{1}CtrlGrp'.format(side,part))
sysGrp = pm.createNode('transform',n='{0}{1}SysGrp'.format(side,part))
rootGrp,rootConst,rootCtrl = root_(root)
SysConst = space_(root.name(),suffix_='SysConstGrp',parent_=rootConst)
QM.MCon(pm.ls(rootCtrl,rootConst),t_=1,r_=1,maintain=1)

pm.parent(pm.ls(rootConst,SysConst),rootCtrl)
posGrp = space_(side+part,suffix_='PosGrp',parent_=SysConst)
jntGrp = space_(side+part,suffix_='JntGrp',parent_=SysConst)
crvGrp = space_(side+part,suffix_='CrvGrp',parent_=SysConst)
pm.parent(pm.ls(rootGrp,rootConst),ctrlGrp)

# Create Poser.
FKCtrlPoser = fkCtrlPos_(sel[1:])
pvCtrlPoser = poleVecCtrlPos_(side+part,st,md1,md2,side_=side)
ikCtrlPoser = IKCtrlPos_(side+part,en,side_=side)
exIkCtrlPoser = ExIKCtrlPos_(side+part,ex)
rootCtrlPoser = pm.duplicate(rootConst,
                             n='{}CtrlPoser'.format(root.name()),po=1)[0]
pvSysPoser = PVSysPos_(side+part,st,en,side_=side)
ikCtrlPoser = pm.PyNode('LeftLegIKCtrlPoser')
exIkCtrlPoser = pm.PyNode('LeftLegExIKCtrlPoser')
pvCtrlPoser = pm.PyNode('LeftLegPoleVectorCtrlPoser')
ikPos,squashba = ikPos_(side+part+'new',[st,md1,md2,en,ex],ikCtrlPoser,exIkCtrlPoser,pvCtrlPoser)
pm.parent(pm.ls(FKCtrlPoser[0],pvCtrlPoser,ikCtrlPoser,exIkCtrlPoser),rootConst)
pm.parent(rootCtrlPoser,ctrlGrp)
pm.parent(ikPos,posGrp)

# Create Joint.
FKJoints = dupJoint([st,md1,md2,en,ex],'FK')
IKJoints = dupJoint([st,md1,md2],'IK')
SubIKJoints = dupJoint([md2,en,ex],'SubIK')
pm.parent(SubIKJoints[0],IKJoints[0])
[pos.Tx >> IKJoints[i+1].tx for i,pos in enumerate(ikPos[1:3])]
[pos.Tx >> SubIKJoints[i+1].tx for i,pos in enumerate(ikPos[3:5])]
DrvJoints = dupJoint([st,md1,md2,en,ex],'Drv')
[pm.addAttr(i,ln='FKScaleY',at='double',dv=0,k=1) for i in DrvJoints[:-1]]
[pm.addAttr(i,ln='FKScaleZ',at='double',dv=0,k=1) for i in DrvJoints[:-1]]
[pm.addAttr(i,ln='IKSquash',at='double',dv=0,k=1) for i in DrvJoints[:-1]]
[squashba[i].o >> drv.IKSquash for i,drv in enumerate(DrvJoints[:-1])] 
pbs = IKFKBlend_(pm.ls(IKJoints[:2],SubIKJoints),FKJoints,DrvJoints)

axis = '-x' if side == 'Right' else 'x'
upArcJnt,upCrvs = lj.linearJoint_('{0}UpArc'.format(side+part),[st],inbetween, axis_=axis)
dn1ArcJnt,dn1Crvs = lj.linearJoint_('{0}Dn1Arc'.format(side+part),[md1],1, axis_=axis)
dn2ArcJnt,dn2Crvs = lj.linearJoint_('{0}Dn2Arc'.format(side+part),[md2],inbetween, axis_=axis)
exArcJnt,exCrvs = lj.linearJoint_('{0}ExArc'.format(side+part),[en],inbetween, axis_=axis)
# pm.parent(dnArcJnt[0],upArcJnt[-1])
ArcJoints = getChildren_(upArcJnt[0], type_='joint')
[pm.rename(arc,'{0}Arc{1}Jnt'.format(side+part,i+1)) for i,
arc in enumerate(ArcJoints)]
pm.parent(pm.ls(DrvJoints[0],FKJoints[0],IKJoints[0],ArcJoints[0]),jntGrp)

# Create Curve.
IKCrvGrp = space_(side+part,suffix_='IKCrvGrp',parent_=crvGrp)
IKChkCrvGrp = space_(side+part,suffix_='IKChkCrvGrp',parent_=crvGrp)
UpArcCrvs,UpArcPos,UpArcPoint,UpArcCrvGrp = Arc.createArc(side+part+'Up', [st,md1,md2])
DnArcCrvs,DnArcPos,DnArcPoint,DnArcCrvGrp = Arc.createArc(side+part+'Dn', [md2,en,ex])
pm.parent(pm.ls(upCrvs[0],dn1Crvs[0],dn2Crvs[0],exCrvs[0]),IKCrvGrp)
pm.parent(pm.ls(upCrvs[1],dn1Crvs[1],dn2Crvs[1],exCrvs[1]),IKChkCrvGrp)
pm.parent(UpArcPos[0].getParent(),SysConst)
pm.parent(DnArcPos[0].getParent(),SysConst)
# UpBs_ = crvBlendshape_(side+part,UpArcCrvGrp,IKCrvGrp,[upCrvs[0],dnCrvs[0]],inbetween)
# DnBs_ = crvBlendshape_(side+part,DnArcCrvGrp,IKCrvGrp,[upCrvs[0],dnCrvs[0]],inbetween)   
# upbs_ = pm.PyNode('LeftLegUpArcBlendShape')
# dnbs_ = pm.PyNode('LeftLegDnArcBlendShape')

upClsGrps,upCls = clusterBind_(side+part,UpArcPos[:-1],upCrvs[0])
dn1ClsGrps,dn1Cls = clusterBind_(side+part,UpArcPos[1:],dn1Crvs[0])
dn2ClsGrps,dn2Cls = clusterBind_(side+part,DnArcPos[:-1],dn2Crvs[0])
exClsGrps,exCls = clusterBind_(side+part,DnArcPos[1:],exCrvs[0])
# dn3ClsGrps,dn3Cls = clusterBind_(side+part,[DnArcPos[0]],dn2Crvs[0])
'''
[QM.MCon(pm.ls(DrvJoints[i],ap),
         t_=1,maintain=1) for i,ap in enumerate(ArcPos)]         
QM.MCon(pm.ls(DrvJoints[0],upCrvs[-1]),t_=1,r_=1,maintain=1)
QM.MCon(pm.ls(DrvJoints[1],dnCrvs[-1]),t_=1,r_=1,maintain=1)
'''

           
# Create Controller.
IKCtrlPos = space_(side+part,suffix_='IKCtrlPos')
pm.matchTransform(IKCtrlPos,ikCtrlPoser)
if side == 'Right': IKCtrlPos.rx.set(180)
FKCtrlPos = space_(side+part,suffix_='FKCtrlPos')
pm.matchTransform(FKCtrlPos,FKCtrlPoser)
FKCtrls = Ctrl(side+part,FKJoints,type_='FK')
[FKCtrls[i].sy >> drv.FKScaleY for i,drv in enumerate(DrvJoints[:-1])] 
[FKCtrls[i].sz >> drv.FKScaleZ for i,drv in enumerate(DrvJoints[:-1])] 
IKCtrl = Ctrl(side+part,[exIkCtrlPoser],type_='IK')[0]
IKAttrCnt(ikPos[5],IKCtrl)
PoleCtrl = Ctrl(side+part,[pvCtrlPoser],type_='Pole')[0]
IKCtrl.PVCtrlVis >> PoleCtrl.getParent().v
UpArcCtrls = ArcCtrl_(side+part+'Up',side,arcCtrlNum,[st,md1],
                    [upCrvs[0],dn1Crvs[0]],UpArcPoint,DrvJoints[:2],upbs_)
DnArcCtrls = ArcCtrl_(side+part+'Dn',side,arcCtrlNum,[md2,en],
                    [dn2Crvs[0],exCrvs[0]],DnArcPoint,DrvJoints[2:],dnbs_)
UpArcCtrlGrp = list(map(lambda a: a.getParent() ,UpArcCtrls))
DnArcCtrlGrp = list(map(lambda a: a.getParent() ,DnArcCtrls))           
IKFKCtrl = Ctrl(side+part,[exIkCtrlPoser],type_='IKFK')[0]
pm.addAttr(IKFKCtrl,ln='IKFK',at='double',min=0,max=1,dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='Arc',at='double',min=0,max=10,dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='UpTwistFix',at='double',dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='DnTwistFix',at='double',dv=0,k=1)
pm.addAttr(IKFKCtrl,ln='AutoHideIKFK',at='bool',k=1)
pm.addAttr(IKFKCtrl,ln='ArcCtrlVis',at='bool',k=1)
ikin, fkin = ikfkVisConnect_(side+part,[IKFKCtrl.IKFK,IKFKCtrl.AutoHideIKFK])
IKFKCtrl.Arc >> upbs_.attr('LeftLegUpArcCrvGrp')
IKFKCtrl.Arc >> dnbs_.attr('LeftLegDnArcCrvGrp')
list(map(lambda a: IKFKCtrl.ArcCtrlVis >> a.v ,UpArcCtrlGrp))
list(map(lambda a: IKFKCtrl.ArcCtrlVis >> a.v ,DnArcCtrlGrp))

list(map(lambda a: IKFKCtrl.IKFK >> a.weight ,pbs))
pm.parent(IKCtrlPos,IKCtrl)
pm.parent(FKCtrlPos,FKCtrls[-1])
list(map(offGrp_,[IKCtrlPos,FKCtrlPos]))
'''
pm.parent(pm.ls(IKCtrl.getParent(),
          FKCtrls[0].getParent(),
          PoleCtrl.getParent(),
          IKFKCtrl.getParent(),
          ArcCtrlGrp[0],
          ArcCtrlGrp[1],
          ArcCtrlGrp[2]),
          rootConst)
'''
[pm.parent(upClsGrps[i],g) for i,g in enumerate([ArcCtrlGrp[0],ArcCtrlGrp[1]])]
[pm.parent(dnClsGrps[i],g) for i,g in enumerate([ArcCtrlGrp[1],ArcCtrlGrp[2]])]
[c.t >> upCls[i].t for i,c in enumerate([ArcCtrls[0],ArcCtrls[1]])]
[c.r >> upCls[i].r for i,c in enumerate([ArcCtrls[0],ArcCtrls[1]])]
[c.s >> upCls[i].s for i,c in enumerate([ArcCtrls[0],ArcCtrls[1]])]
[c.t >> dnCls[i].t for i,c in enumerate([ArcCtrls[1],ArcCtrls[2]])]
[c.r >> dnCls[i].r for i,c in enumerate([ArcCtrls[1],ArcCtrls[2]])]
[c.s >> dnCls[i].s for i,c in enumerate([ArcCtrls[1],ArcCtrls[2]])]
[QM.MCon(pm.ls(fk,FKJoints[i]),
         t_=1,r_=1,maintain=1) for i,fk in enumerate(FKCtrls)]
QM.MCon(pm.ls(IKCtrlPos,IKJoints[-1]),r_=1,maintain=0)
oriConst = pm.orientConstraint(pm.ls(IKCtrlPos,FKCtrlPos,
                               DrvJoints[-1]),mo=0)
QM.MCon(pm.ls(IKCtrlPos,ikPos[3]),t_=1,r_=1,maintain=1)
QM.MCon(pm.ls(PoleCtrl,ikPos[4]),t_=1,maintain=1)

# Create PoleVector System.
sys,pos,tg = pvSys(side+part,side,pvSysPoser,md1,IKCtrl)
pm.matchTransform(pos,pvCtrlPoser)
QM.MCon(pm.ls(IKCtrlPos,tg),t_=1,maintain=1)
pm.parentConstraint(pos,PoleCtrl.getParent(),mo=1)
pm.parent(sys,SysConst)

# Create Twist System.
twists = twistSys(side+part,side,root,st,md1,md2,en,DrvJoints)
IKFKCtrl.UpTwistFix >> twists[0].rx
IKFKCtrl.DnTwistFix >> twists[1].rx

# Create IK System.
ikh = IKHandle_(side+part,IKJoints[0],IKJoints[-1],IKCtrlPos,PoleCtrl)
upikh = sIKHandle_(side+part+'Up',upArcJnt[0],upArcJnt[-1],upCrvs[0],
                    twists[0],twists[1])
dnikh = sIKHandle_(side+part+'Dn',dnArcJnt[0],dnArcJnt[-1],dnCrvs[0],
                    twists[1],twists[2])
dFwd = 1 if side == 'Right' else 0
upikh.dForwardAxis.set(dFwd)
dnikh.dForwardAxis.set(dFwd)
pm.parent(pm.ls(ikh,upikh,dnikh),SysConst)

