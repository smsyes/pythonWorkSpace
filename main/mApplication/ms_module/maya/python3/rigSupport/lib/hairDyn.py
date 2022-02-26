# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib import _joint
reload(_joint)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
import pymel.core as pm
import maya.mel as mel
from rigSupport.lib import _control
try:
    from imp import *
except:
    pass
reload(_control)

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
        jnt = pm.joint(n='{0}{1}Jnt'.format(name_,i))
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

def space(list_, name_, suffix):
    spcs = []
    for i,item in enumerate(list_):
        spc = pm.createNode('transform',
                            n='{0}{1}{2}'.format(name_,i,suffix))
        pm.matchTransform(spc, item)
        spcs.append(spc)
    return spcs

def ctrl_(list_, name_):
    ctrl_ = _control.control_(list_, 'square')
    for i,c in enumerate(ctrl_):
        pm.rename(c, '{0}{1}Ctrl'.format(name_,i))
    return ctrl_

def offset_(list_, name_):
    grp = space(list_, name_, 'grp')
    for i,item in enumerate(list_):
        if item.getParent():
            pm.parent(grp[i],item.getParent())  
        else:
            pm.parent(grp[i],w=1)
        pm.parent(item,grp[i])
    return grp

def ikh_(jnts):
    ikh = pm.ikHandle(sj=jnts[0],ee=jnts[-1],
                      sol='ikSplineSolver',ccv=0,pcv=0)
    return ikh

def hairsystem(crv,name_):
    pm.select(crv)
    mel.eval('makeCurvesDynamicHairs 1 0 1')
    if not isinstance(crv, list):
        crv = list(crv)
    for i,c in enumerate(crv):
        flc = c.wm.listConnections()[0]
        pm.rename(flc,'{0}{1}flc'.format(name_,i))
        hsys = flc.outHair.listConnections()[0]
        flc.pointLock.set(1)
        hsys.active.set(0)
    nucle = hsys.currentState.listConnections()[0]
    pm.delete(nucle)
        
    
# base config
name_ = 'Hair'
num_ = 9
crvRvs = True

# joint orient config
oj_ = 'xzy'
sao_ = 'zup'

num_ = num_-3
sel = pm.ls(sl=1,fl=1,r=1)
crv = polyToCurve_(sel,num_,name_,crvRvs)
pm.rename(crv,'{0}Crv'.format(name_))
divs = division(num_,1)
jnts = JntAtCurveParam(divs,crv,name_)
hierarchy_(jnts)
joint_orient(jnts,e=True, oj=oj_, sao=sao_, zso=True)
spcs = space(jnts, name_, 'spc')
hierarchy_(spcs)
ctrl = ctrl_(jnts[:-1], name_)
hierarchy_(ctrl)
offset_(ctrl, name_)
ikh = ikh_(jnts)
hairsystem(crv,name_)






