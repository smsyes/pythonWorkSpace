# -*- coding: utf-8 -*-
"""============================================================================
Arm Setup
============================================================================"""

import pymel.core as pm
from collections import OrderedDict

def getShape_(key):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string

    Returns:
        dictionary : Curve information.

    """
    shapeDict = OrderedDict()
    shapeDict['square'] = 1, [(0,0,0.0810633),(0,-0.0476478,0.0655809),
                              (0,-0.0770958,0.0250494),(0,-0.0770958,-0.0250508),(0,-0.0476478,-0.0655821),
(0,0,-0.0810633),(0,0.0476478,-0.0655821),(0,0.0770958,-0.0250508),(0,0.0770958,0.0250494),
(0,0.0476478,0.0655809),(0,0,0.0810633),(0,0,1.821054),(0,0.356796,1.936983),
(0,0.577308,2.24049),(0,0.577308,2.615652),(0,0.356796,2.919159),(0,0,3.035094),
(0,-0.356796,2.919159),(0,-0.577308,2.615652),(0,-0.577308,2.24049),(0,-0.356796,1.936983),
(0,0,1.821054)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]
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

def space_(name_, s_=None, p_=None):
    if not s_:
        s_ = 'Grp'      
    space_ = pm.createNode('transform',
                        n='{0}{1}'.format(name_,s_),
                        p=p_)
    return space_

def setdriven_(itAttr,tgAttr,dv_,v_):
    for i,d in enumerate(dv_):
        pm.setDrivenKeyframe(tgAttr,cd=itAttr)
        pm.setDrivenKeyframe(tgAttr,cd=itAttr,dv=d,v=v_[i])

def footAttr_(target):
    attrlist = ['FootRoll','BallRoll','ToeRoll','InOut',
                'HeelPivot','BallPivot','ToePivot']
    pm.addAttr(target,ln='FootDrive',nn='____',at='enum',en='Foot',k=1)
    list(map(lambda a: pm.addAttr(target,ln=a,at='double',min=-10,
                                  max=10,dv=0,k=1) ,attrlist))

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

def footPivot_():
    pivDict = OrderedDict()
    pivDict['FootIn'] = ['FootInRot']
    pivDict['FootOut'] = ['FootOutRot']
    pivDict['Heel'] = ['HeelRollPiv']
    pivDict['Toe'] = ['ToeRollPiv']
    pivDict['Ball'] = ['BallPiv','FootRoll','IKFootRoll','BallRoll']

    attrDict = OrderedDict()
    attrDict['FootInRot'] = {'InOut':['rx',[90,0,0]]}
    attrDict['FootOutRot'] = {'InOut':['rx',[0,0,-90]]}
    attrDict['HeelRollPiv'] = {'FootRoll':['ry',[-90,0,0]],
                               'HeelPivot':['rz',[90,0,-90]]}
    attrDict['ToeRollPiv'] = {'ToeRoll':['ry',[-90,0,90]],
                              'ToePivot':['rz',[90,0,-90]]}
    attrDict['BallPiv'] = {'BallPivot':['rz',[90,0,-90]]}
    attrDict['FootRoll'] = {'FootRoll':['ry',[0,0,90]]}
    attrDict['BallRoll'] = {'BallRoll':['ry',[90,0,-90]]}
                       
    SysGrp = space_('FootSys')
    mvGrp = space_('FootMvPiv')
    attrGrp = space_('FootAttr')

    footAttr_(attrGrp)
    piv_ = list(map(lambda p: space_('{0}Piv'.format(p),
                    s_='Pos') ,pivDict.keys()))
    pm.parent(piv_,mvGrp)

    result = []
    for i,p in enumerate(pivDict.keys()):
        for v in pivDict[p]:
            pos = space_(v,s_='Pos')
            piv_[i].attr('center') >> pos.rotatePivot
            piv_[i].attr('center') >> pos.scalePivot
            
            if v in attrDict.keys():
                for a in attrDict[v].keys():
                    itAttr = attrGrp.attr(a)
                    tgAttr = pos.attr(attrDict[v][a][0])
                    dv_ = [-10,0,10]
                    v_ = attrDict[v][a][1]
                    setdriven_(itAttr,tgAttr,dv_,v_)
            if i>0:
                if p == 'Ball':
                    if v == pivDict[p][0]: st = pos
                    if v == pivDict[p][1]: result.append(pos)
                    if v == pivDict[p][-1]:
                        parent_ = st
                        result.append(pos)
                pm.parent(pos,parent_)
            parent_ = pos
            if i==0: result.append(pos)

    pm.parent([result[0],mvGrp,attrGrp],SysGrp)

def ikfkJoint_(object_):
    jntGrp = space_('Jnt')
    pm.matchTransform(jntGrp,object_[0])
    FKJoints = dupJoint(object_,'FK')
    IKJoints = dupJoint(object_,'IK')
    DrvJoints = dupJoint(object_,'Drv')
    pbs = IKFKBlend_(IKJoints,FKJoints,DrvJoints)
    pm.parent([FKJoints[0],IKJoints[0],DrvJoints[0]],jntGrp)
    return FKJoints,IKJoints,DrvJoints


sel = pm.ls(sl=1,fl=1,r=1)
footPivot_()
ikfkJoint_(sel)
