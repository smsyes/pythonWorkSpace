import pymel.core as pm
from collections import OrderedDict
from rigSupport.lib import _control
from rigSupport.lib import IKStSq
try:
    from imp import *
except:
    pass

reload(_control)
reload(IKStSq)

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

def ikPos_(num_, curve_):
    posList = []
    numList = division(num_-1,1)
    for i,num in enumerate(numList):
        getParamPos_ = curve_.getShape().getPointAtParam(num)
        posList.append(getParamPos_)
    return posList

def ctrl_(list_, name_, IKPos_):
    ctrlGrp = pm.createNode('transform', n='{0}CtrlGrp'.format(name_))
    worlds = []
    ctrlList = OrderedDict()
    ctrlList['WorldCtrl'] = [0,'circle',[3,3,3]]
    ctrlList['MoveCtrl'] = [0,'circle',[2.5,2.5,2.5]]
    ctrlList['RootCtrl'] = [0,'triangle',[2,2,2]]
    ctrlList['RootIKCtrl'] = [-1,'pyramid',[1.5,1.5,1.5]]
    for i in ctrlList.keys():
        ctrl = _control.control_([list_[ctrlList[i][0]]], ctrlList[i][1])
        pm.scale(ctrl[0].cv[:],ctrlList[i][2])
        pm.rename(ctrl, '{0}{1}'.format(name_,i))
        worlds.append(ctrl[0])
    hierarchy_(worlds[:-1])
    worldGrp = Grp_(worlds, w=0)
    
    DTCtrl = _control.control_(list_, 'circle')
    FKCtrl = _control.control_(list_, 'roundSquare')
    [pm.scale(i.cv[:],1.2,1.2,1.2) for i in FKCtrl]
    rename_(DTCtrl,re_=name_)
    rename_(DTCtrl,suffix='DTCtrl')
    rename_(FKCtrl,re_=name_)
    rename_(FKCtrl,suffix='FKCtrl')
    hierarchy_(FKCtrl)
    [pm.parent(ik, FKCtrl[i]) for i,ik in enumerate(DTCtrl)]
    FKGrp = Grp_(FKCtrl, w=0)
    
    IKCtrl = []
    for i,pos in enumerate(IKPos):
        ctrl = _control.control_([list_[0]], 'cube')
        pm.rename(ctrl, '{0}{1}IKCtrl'.format(name_,i))
        ctrl[0].attr('t').set(pos)
        IKCtrl.append(ctrl[0])
    [pm.scale(i.cv[:],3,3,3) for i in IKCtrl]
    IKGrp = Grp_(IKCtrl, w=0)
    
    pm.parent(pm.ls(worldGrp[-1],FKGrp[0],IKGrp),ctrlGrp)
    pm.parent(ctrlGrp,worlds[2])
    
    return worlds, DTCtrl, FKCtrl, IKCtrl

def StartEndSet(list_, name_):
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
        pm.parent(vecPos,upVecGrp)
        pm.parent(pm.ls(jntGrp,upVecGrp),grp)
        if i==0:
            vecPos.t >> vp.i1
            vp.attr('i2y').set(1)
            vp.attr('normalizeOutput').set(1)
            for i in upVecSet.keys():
                pm.setDrivenKeyframe(upVec.rz, cd=vp.ox)
                anim = upVec.attr('rz').connections()[0]
                pm.keyframe(anim,o='over',index=i,a=1,fc=upVecSet[i][0])
                pm.keyframe(anim,index=i,a=1,vc=upVecSet[i][1])
        

name_ = 'main'
num_ = 5
sel = pm.ls(sl=1,fl=1,r=1)

Jnts = getChain_(sel, type='joint')
ikJnts = ikJnts_(sel, name_)
FKPos = hierarchy_(FKPos_(Jnts, name_))
crvs_ = IKSet.IKStretch(pm.ls(ikJnts[0],ikJnts[-1]))
IKPos = ikPos_(num_, crvs_[0])
worlds, DTCtrl, FKCtrl, IKCtrl = ctrl_(Jnts, name_, IKPos)
StartEndSet(pm.ls(ikJnts[0],ikJnts[-1]), name_)


