import pymel.core as pm
import maya.OpenMaya as om
from collections import OrderedDict
from rigSupport.lib import _control
from rigSupport.lib import IKStSq
from rigSupport.lib import QuatMatrixConst as QM
try:
    from imp import *
except:
    pass

reload(_control)
reload(IKStSq)
reload(QM)

def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])

def rename_(list_,prefix=None,suffix=None,change=None,re_=None):
    for i,item in enumerate(list_):
        if prefix:
            pm.rename(item, '{0}{1}'.format(prefix, item.name()))
        elif suffix:
            pm.rename(item, '{0}{1}'.format(item.name(),suffix))
        elif change:
            name_ = item.name().replace(change[0],change[1])
            pm.rename(item, name_)
        elif re_:
            pm.rename(item, '{0}{1}'.format(re_,i+1))
            
def getChain_(st_, type=None):
    list_ = st_[0].listRelatives(ad=1,c=1,typ=type) + st_
    list_.reverse()
    return list_

def ikJnts_(stJnt, name_):
    ikJnts = pm.duplicate(stJnt[0])
    ikJnts = getChain_(ikJnts, type='joint')
    rename_(ikJnts,re_=name_)
    rename_(ikJnts,suffix='IKJnt')
    return ikJnts

def space_(name_, suffix_=None, parent_=None):
    if not suffix_:
        suffix_ = 'Grp'      
    space_ = pm.createNode('transform',
                           n='{0}{1}'.format(name_,suffix_),
                           p=parent_)
    return space_

def Grp_(object_, w=None):
    grps = []
    for i in object_:
        name_ = i.name()
        getTransform_ = i.getMatrix(worldSpace=True)
        node_ = pm.createNode('transform', n='{0}Grp'.format(i))
        node_.setMatrix(getTransform_)
        if w == 0:
            getParent_ = i.getParent()
            pm.parent(node_, getParent_)
        pm.parent(i, node_)
        grps.append(node_)
    return grps

def FKPos_(list_, name_):
    posls = []
    for i,item in enumerate(list_):
        pos = space_('{0}{1}'.format(name_,i+1), suffix_='FKPos')
        pm.matchTransform(pos,item)
        posls.append(pos)
    return posls

def division(number,divNum):
    """Get division number list

    Arguments:
        number (int): The number to be divided.
        divNum (int): multiply

    Returns:
        list : division list

    """
    list_ = [0]
    div_ = float(divNum)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def ikPos_(num_, curve_, name_):
    posList = []
    numList = division(num_-1,1)
    for i,num in enumerate(numList):
        pc_ = pm.createNode('pointOnCurveInfo',
                            n='{0}{1}PC'.format(name_,i))
        pos_ = pm.createNode('transform',
                             n='{0}{1}IKPos'.format(name_,i))
        cpm_ = pm.shadingNode('composeMatrix',au=1,
                              n='{0}{1}CM'.format(name_,i))
        mm_ = pm.shadingNode('multMatrix',au=1,
                              n='{0}{1}MM'.format(name_,i))
        dm_ = pm.shadingNode('decomposeMatrix',au=1,
                              n='{0}{1}DM'.format(name_,i))
        curve_.getShape().ws >> pc_.inputCurve
        pc_.attr('parameter').set(num)
        pc_.attr('turnOnPercentage').set(1)
        pc_.position >> cpm_.it
        cpm_.outputMatrix >> mm_.matrixIn[0]
        pos_.pim >> mm_.matrixIn[1]
        mm_.matrixSum >> dm_.inputMatrix
        dm_.ot >> pos_.t
        posList.append(pos_)
    return posList

def rootIKAddAttr(item):
    pm.addAttr(item, ln="Twist",at='double',k=1)
    pm.addAttr(item, ln="Stretch",at='double',min=0,max=10,k=1)
    pm.addAttr(item, ln="Squash",at='double',min=0,max=10,k=1)
    pm.addAttr(item, ln="FKVis",at='bool',k=1)
    pm.addAttr(item, ln="Spread",at='double',min=0,max=10,dv=10,k=1)
    pm.addAttr(item, ln="Width",at='double',dv=1,k=1)
    twistML = pm.shadingNode('multDoubleLinear',au=1,
                              n='{0}TwistML'.format(item.name()))
    twistML.i2.set(-1)
    item.Twist >> twistML.i1

def cls_(curve_, item, name_):
    cls = pm.cluster(curve_,n='{0}Cls'.format(name_))
    clsShape = cls[1].getShape()
    cls[1].attr('rotatePivot').set(0,0,0)
    cls[1].attr('scalePivot').set(0,0,0)
    clsShape.attr('origin').set(0,0,0)
    clsGrp = Grp_([cls[1]], w=0)
    wim_ = pm.createNode('transform',
                         n='{0}wimCNT'.format(name_),
                         p=clsGrp[0])
    wim_.wim >> cls[0].bindPreMatrix
    item.t >> cls[1].t
    item.r >> cls[1].r
    item.s >> cls[1].s
    pm.parent(clsGrp,item)
    return cls[0]

def ctrl_(list_, type_):
    ctrl = _control.control_(list_,ctrlDict[type_][0])
    rename_(ctrl,re_=name_)
    rename_(ctrl,suffix=type_)
    [pm.scale(i.cv[:],ctrlDict[type_][1]) for i in ctrl]
    return ctrl

def StartEndSet(list_, name_, curve_):
    upVecls = []
    vecPosls = []
    type = ['Start','End']
    upVecSet = {0:[-1,-90],1:[0,0],2:[1,90]}
    for i,item in enumerate(list_):
        grp = pm.createNode('transform',
                            n='{0}{1}Grp'.format(name_,type[i]))
        jnt = pm.joint(n='{0}{1}Jnt'.format(name_,type[i]))
        upVec = pm.createNode('transform',
                              n='{0}{1}WorldUpVec'.format(name_,type[i]))
        vecPos = pm.createNode('transform',
                               n='{0}{1}VecPos'.format(name_,type[i]))
        vp = pm.shadingNode('vectorProduct', au=1, n='{0}VP'.format(name_))
        pm.matchTransform(grp, item)
        pm.matchTransform(jnt, item)
        pm.matchTransform(upVec, item)
        pm.matchTransform(vecPos, list_[-1])
        jntGrp = Grp_([jnt], w=0)
        upVecGrp = Grp_([upVec], w=0)
        pm.parent(vecPos,upVecGrp[0])
        pm.parent(jntGrp[0],grp)
        pm.parent(upVecGrp[0],grp)
        upVecls.append(upVec)
        vecPosls.append(vecPos)
        if i==0:
            vecPos.t >> vp.i1
            vp.attr('i2z').set(-1)
            vp.attr('normalizeOutput').set(1)
            for u in upVecSet.keys():
                pm.setDrivenKeyframe(upVec.ry, 
                                     cd=vp.ox, 
                                     dv=upVecSet[u][0], 
                                     v=upVecSet[u][1])
    return upVecls, vecPosls

# dt='linear', 'sine', 'exponential', 'linearSquared', 'none'
def clusterWeight(curve_, cls, **kwargs):
    crvShape = curve_.getShape()
    numCVs_ = crvShape.numCVs()
    divNum = division(numCVs_-1,1)
    for i in range(values):
        pm.percent(cls,'{0}.cv[{1}]'.format(crvShape,i), v=divNum[i])


# config
name_ = 'main'
num_ = 5
ctrlDict = OrderedDict()
ctrlDict['WorldCtrl'] = ['circle',[2,2,2]]
ctrlDict['MoveCtrl'] = ['circle',[1.75,1.75,1.75]]
ctrlDict['RootCtrl'] = ['triangle',[1.5,1.5,1.5]]
ctrlDict['RootIKCtrl'] = ['pyramid',[1,1,1]]
ctrlDict['DTCtrl'] = ['circle',[1,1,1]]
ctrlDict['FKCtrl'] = ['roundSquare',[1.2,1.2,1.2]]
ctrlDict['IKCtrl'] = ['cube',[1.25,1.25,1.25]]

# Select Top Joint
sel = pm.ls(sl=1,fl=1,r=1)

# get base joints
Jnts = getChain_(sel, type='joint')

# create ik joints
ikJnts = ikJnts_(sel, name_)

# create FK Pos 
FKPos = FKPos_(Jnts, name_)
hierarchy_(FKPos)

# IK stretch squash setting
crvs_ = IKStSq.IKStretch(pm.ls(ikJnts[0],ikJnts[-1]))

# duplicate control curve
ctrlCrv = pm.rename(pm.duplicate(crvs_[1]),'{}IKCtrlCrv'.format(name_))

# create IK Pos
IKPos = ikPos_(num_, ctrlCrv, name_)

# Root IK Aim System
upVecls,vecPosls = StartEndSet(pm.ls(ikJnts[0],ikJnts[-1]), name_, ctrlCrv)

# world control Setting
worldCtrls = [ctrl_([Jnts[0]], i)[0] for i in ctrlDict.keys()[:3]]
hierarchy_(worldCtrls)
worldCtrlsGrp = Grp_(worldCtrls, w=0)

# rootIK control Setting
RootIKCtrl = ctrl_([Jnts[-1]], 'RootIKCtrl')
RootIKGrp = Grp_(RootIKCtrl, w=0)
rootIKAddAttr(RootIKCtrl)

# detail control Setting
DTCtrl = ctrl_(Jnts, 'DTCtrl')

# FK control Setting
FKCtrl = ctrl_(Jnts, 'FKCtrl')
hierarchy_(FKCtrl)
[pm.parent(dt,FKCtrl[i]) for i,dt in enumerate(DTCtrl)]
FKGrp = Grp_(FKCtrl, w=0)
[p.t >> FKGrp[i].t for i,p in enumerate(FKPos)]
[p.r >> FKGrp[i].r for i,p in enumerate(FKPos)]

# IK control Setting
IKCtrl = ctrl_(IKPos, 'IKCtrl')
[pm.parent(ik,IKPos[i]) for i,ik in enumerate(IKCtrl)]

# controller constructure
ctrlGrp = pm.createNode('transform', n='{0}CtrlGrp'.format(name_))
pm.parent(pm.ls(RootIKGrp,FKGrp[0],IKPos),ctrlGrp)
pm.parent(ctrlGrp,worldCtrls[-1])

# creaet IK cluster
for i,ik in enumerate(IKCtrl):
    cls_(crvs_[0], ik, '{0}{1}IK'.format(name_,i))

# matrix constraints
[QM.MCon(pm.ls(ik,FKPos[i]),t_=1,r_=1,maintain=1) for i,ik in enumerate(ikJnts)]
QM.MCon(pm.ls(RootIKCtrl,vecPosls[0]),t_=1,r_=1,maintain=1)
QM.MCon(pm.ls(RootIKCtrl,upVecls[1]),t_=1,r_=1,maintain=1)
