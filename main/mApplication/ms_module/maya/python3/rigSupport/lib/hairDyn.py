# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20220317

:Example:
from lib import hairDyn
reload(hairDyn)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
import pymel.core as pm
import maya.mel as mel
from collections import OrderedDict

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2

def multMatrix_(name_):
    _node = pm.createNode('multMatrix', n='{}localMM'.format(name_))
    return _node
    
def decompose_(name_):
    _node = pm.createNode('decomposeMatrix', n='{}localDM'.format(name_))
    return _node

def eularToQuat_(name_):
    _node = pm.shadingNode('eulerToQuat', au=1, n='{}jointOrietnEQ'.format(name_))
    return _node

def quatInvert_(name_):
    _node = pm.shadingNode('quatInvert', au=1, n='{}QI'.format(name_))
    return _node

def quatProd_(name_):
    _node = pm.shadingNode('quatProd', au=1, n='{}QP'.format(name_))
    return _node
    
def quatToEuler_(name_):
    _node = pm.shadingNode('quatToEuler', au=1, n='{}QE'.format(name_))
    return _node

def MCon(object_, t_=None, r_=None, s_=None, maintain=None):
    item_, target_ = object_[0], object_[1]
    name_ = target_.name()
    MM = multMatrix_(name_)
    DM = decompose_(name_)
    if target_.type() == 'joint':
        jointOrietnEQ = eularToQuat_(name_)
        QI = quatInvert_(name_)
        QP = quatProd_(name_)
        QE = quatToEuler_(name_)
    mat1_ = getTransform(target_)
    mat2_ = getInverseTransform(item_)
    multmat_ = getMultMatrix(mat1_, mat2_)

    if maintain == 1:
        MM.attr('matrixIn[0]').set(multmat_)
    else:
        pass

    item_.wm >> MM.matrixIn[1]
    target_.pim >> MM.matrixIn[2]
    MM.matrixSum >> DM.inputMatrix
    if target_.type() == 'joint':
        target_.r >> jointOrietnEQ.inputRotate
        jointOrietnEQ.outputQuat >> QI.inputQuat
        DM.outputQuat >> QP.input1Quat
        QI.outputQuat >> QP.input2Quat
        QP.outputQuat >> QE.inputQuat
    if t_:
        DM.ot >> target_.t
    if r_:
        if target_.type() == 'joint':
            QE.outputRotate >> target_.jo
            target_.attr('r').set([0,0,0])
        else:
            DM.outputRotate >> target_.r
    if s_:
        DM.os >> target_.s

def getShape_(key):
    shape_dict = OrderedDict()
    shape_dict['square'] = 1, [(-1,0,1),(-1,0,-1),(1,0,-1),(1,0,1),
                            (-1,0,1)], [0,1,2,3,4]
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

def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])

def division(number,divNum):
    list_ = [0]
    div_ = float(divNum)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def JntAtCurveParam(numList,curve_,name_):
    jnts = []
    shape_ = curve_.getShape()
    for i,num in enumerate(numList):
        pm.select(cl=1)
        jnt = pm.joint(n='{0}{1}IKJnt'.format(name_,i))
        t_ = shape_.getPointAtParam(num,space='preTransform')
        jnt.t.set(t_)
        jnts.append(jnt)
    return jnts

def polyToCurve_(edges,num_,name_,rvs=None):
    pm.select(edges)
    crv = pm.polyToCurve(form=2,degree=1,
                         conformToSmoothMeshPreview=1)
    pm.rebuildCurve(ch=1,rpo=1,rt=0,end=1,kr=0,kcp=0,
                    kep=1,kt=0,s=num_,d=3,tol=0.01)
    pm.select(cl=1)
    if rvs:
        pm.reverseCurve(crv[0],ch=1,rpo=1)
    pm.select(crv[0])
    mel.eval("DeleteAllHistory")
    return pm.PyNode(crv[0])

def joint_(list_, name_):
    jnts = []
    for i,item in enumerate(list_):
        pm.select(cl=1)
        jnt = pm.joint(n='{0}{1}Jnt'.format(name_,i))
        jnt.t.set(item.t.get())
        jnts.append(jnt)
    return jnts
    
def joint_orient(jointChain, **kwargs):
    for joint_ in jointChain:
        pm.makeIdentity(joint_,apply=1,t=0,r=1,s=0,n=0,pn=1)
        pm.joint(joint_, **kwargs)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 

def space(item, num_, suffix):
    if num_:
        num_ = num_
    else:
        num_ = ''
    name_ = item.name()
    spc = pm.createNode('transform',
                        n='{0}{1}{2}'.format(name_,num_,suffix))
    pm.matchTransform(spc, item)
    return spc

def ctrl_(list_, name_):
    ctrls= []
    for i,item in enumerate(list_):
        ctrl_ = crvShape_('square',name_)
        pm.rename(ctrl_, '{0}{1}Ctrl'.format(name_,i))
        pm.matchTransform(ctrl_,item)
        ctrls.append(ctrl_)
    return ctrls

def offset_(list_):
    grps = []
    for i,item in enumerate(list_):
        grp = space(item,i,'grp')
        if item.getParent():
            pm.parent(grp,item.getParent())  
        else:
            pm.parent(grp,w=1)
        pm.parent(item,grp)
        grps.append(grp)
    return grps

def ikh_(jnts,curves_):
    for crv in curves_:
        ikh = pm.ikHandle(sj=jnts[0],ee=jnts[-1],
                          sol='ikSplineSolver',ccv=0,pcv=0,c=crv)
    return ikh

def hairsystem(crv,name_):
    pm.select(crv)
    mel.eval('makeCurvesDynamicHairs 1 0 1')
    crv = pm.ls(crv)
    outCrvs = []
    for i,c in enumerate(crv):
        flc = c.wm.listConnections()[0]
        pm.rename(flc,'{0}{1}flc'.format(name_,i))
        hsys = flc.outHair.listConnections()[0]
        flc.pointLock.set(1)
        hsys.active.set(0)
        outCrv = flc.outCurve.listConnections()[0]
        outCrvs.append(outCrv)
    nucle = hsys.currentState.listConnections()[0]
    pm.delete(nucle)
    return outCrvs
        
def BIJoint(list_,name_):
    Jnts = []
    for i,item in enumerate(list_):
        pm.select(cl=1)
        jnt = pm.joint(n='{0}{1}Jnt'.format(name_,i))
        pm.matchTransform(jnt, item)
        pm.makeIdentity( apply=True,r=1)
        Jnts.append(jnt)
    return Jnts

def mconsts(items,targets):
    for i,item in enumerate(items):
        list_ = pm.ls(item,targets[i])
        MCon(list_, t_=1, r_=1, s_=1, maintain=1)

def createJoint_(edge,name_=None,num_=5,oj_='xyz',sao_='yup',crvRvs=None):
    crv = polyToCurve_(edge,num_,name_,crvRvs)
    pm.rebuildCurve(crv,ch=0,rpo=1,rt=0,end=1,kr=0,kcp=0,
                    kep=1,kt=0,s=num_,d=3,tol=0.01)
    pm.rename(crv,'{0}Crv'.format(name_))
    divs = division(num_,1)
    jnts = JntAtCurveParam(divs,crv,name_)
    hierarchy_(jnts)
    joint_orient(jnts,e=True, oj=oj_, sao=sao_, zso=True)
    return jnts,crv

def hairDyn_(name_=None,jnts=None,crv=None):
    spcs = [space(j,i,'spc') for i,j in enumerate(jnts)]
    hierarchy_(spcs)
    ctrl = ctrl_(jnts[:-1], name_)
    JntGrp = pm.createNode('transform',n='{}JntGrp'.format(name_))
    BIJnts = BIJoint(ctrl,name_)
    BIGrp = offset_(BIJnts)
    pm.parent(BIGrp,JntGrp)
    pm.parent(jnts[0],JntGrp)
    mconsts(ctrl,BIGrp)
    hierarchy_(ctrl)
    ctrlGrp = offset_(ctrl)
    mconsts(jnts,spcs)
    [spc.t >> ctrlGrp[i].t for i,spc in enumerate(spcs[:-1])]
    [spc.r >> ctrlGrp[i].r for i,spc in enumerate(spcs[:-1])]
    outCrv = hairsystem(crv,name_)
    ikh = ikh_(jnts,outCrv)

# Edge line을 잡고 실행하세요.
sel = pm.ls(sl=1,fl=1,r=1)
name_ = 'test'
num_ = 5
jnts,crv = createJoint_(sel,name_,num_,oj_='xyz',sao_='yup',crvRvs=None)

# 조인트 오리엔트 값을 맞춰서 축 재설정 이후 실행합니다.
hairDyn_(name_,jnts,crv)


