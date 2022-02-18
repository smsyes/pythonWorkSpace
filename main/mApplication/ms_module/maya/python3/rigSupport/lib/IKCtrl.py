# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20220215

:Example:


spine rigging setup
============================================================================"""
#
# when start coding 3 empty lines.
#
import pymel.core as pm
from rigSupport.lib import _control

try:
    from imp import *
except:
    pass

reload(_control)

def division(number,divNum):
    list_ = [0]
    div_ = float(divNum)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def getChildren_(object_, type_=None):
    """Get the childrens from top object

    Arguments:
        object_ (node): selection top object
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

def getJoints_(*args):
    """Objects between two selected objects.

    Arguments:
        args (node): Two objects.

    Returns:
        list : The object returned in the hierarchy.

    """
    getCJnts = getChildren_(args[0], 'joint')
    lastJntIndex = getCJnts.index(args[1])
    getJnts = getCJnts[:lastJntIndex+1]
    return getJnts

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

def pos_(number, curve_, joints_, name_):
    """Positions created at regular intervals of curves.

    Arguments:
        curve_ (curve): Curve that becomes the base.

    Returns:
        pos (nodes):  A node that has a parameter position value.

    """
    numList = division(number,1)
    posList = []
    posCrv = pm.duplicate(curve_)
    pm.rebuildCurve(posCrv,ch=0,rpo=1,rt=0,end=1,kr=0,kcp=0,kep=1,kt=0,s=number,d=3)
    for i,num in enumerate(numList):
        getParamPos_ = posCrv[0].getShape().getPointAtParam(num)
        pos_ = pm.createNode('transform',n='{0}{1}Pos'.format(name_,i+1))
        pos_.attr('t').set(getParamPos_)
        pm.matchTransform(pos_,joints_[0],rot=1)
        posList.append(pos_)
    pm.delete(posCrv)
    return posList

def nameList_(list_, name_):
    names=[]
    for i,item in enumerate(list_):
        names.append('{0}{1}'.format(name_,i))
    return names

def IK_(pos, curve_, joints_, name_):
    names = nameList_(pos, name_)
    for i,p in enumerate(pos):
        cls = pm.cluster(curve_,n='{0}{1}cls'.format(name_,i))
        clsShape = cls[1].getShape()
        clsShape.attr('origin').set(p.attr('t').get())
        clsGrp = Grp_([cls[1]], w=0)
        ctrl_ = _control.control_([p], 'circle')
        pm.rename(ctrl_,'{0}IKCtrl'.format(names[i]))
        pm.parent(ctrl_, p)
        pm.parent(clsGrp, ctrl_)
    pm.ikHandle(sj=joints_[0],
                ee=joints_[-1],
                c=curve_,
                sol='ikSplineSolver',
                ccv=0,
                pcv=0)
    
name_ = 'Neck'
number = 2
numList = division(number,1)
sel = pm.ls(sl=1)
joints_ = getJoints_(sel[0],sel[1])
curve_ = sel[2]
pos = pos_(number, curve_, joints_, name_)
IK_(pos, curve_, joints_, name_)