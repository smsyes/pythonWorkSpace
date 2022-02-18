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
from collections import OrderedDict
from rigSupport.lib import IKStSq

try:
    from imp import *
except:
    pass

reload(IKStSq)

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
    _name = object_.name()
    offset = space_(_name, parent_=object_)
    if object_.getParent():
        _parent = object_.getParent()
        pm.parent(offset, _parent)
    else:
        pm.parent(offset, w=1)
    pm.parent(object_, offset)
    return offset
    
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

def CurveAtObjectPosition(object_):
    """A curve is generated based on the selected object position.

    Arguments:
        object_ (node): Object list.

    Returns:
        curve : created curve.

    """
    pos_ = [i.getMatrix(worldSpace=True)[-1][:-1] for i in object_]
    curve_ = pm.curve(n='SpineBaseCrv',d=1,p=pos_)
    return curve_

def rebuildCrv(curve_, num, type_):
    """Curve rebuild.

    Arguments:
        curve_ (node): Curve that will be rebuilt.
        num (int): spans.
        type_ (string): string name.

    Returns:
        curve : created curve.

    """
    IKCrv_ = pm.rebuildCurve(curve_,ch=1,rpo=0,rt=0,end=1,kr=0,
                             kcp=0,kep=1,kt=1,s=num,d=3,tol=0.01)[0]
    pm.rename(IKCrv_, 'Spine{}Crv'.format(type_))
    return IKCrv_

def IKJoints_(joints_):
    """Copy and rename the joint list.

    Arguments:
        joints_ (joint): Joints to copy.

    Returns:
        joints : duplicated joints

    """
    IKJoints = pm.duplicate(joints_)
    for i,jnt in enumerate(IKJoints):
        pm.rename(jnt, 'Spine{}IKJnt'.format(i+1))
    return IKJoints

def pos_(curve_, joints_):
    """Positions created at regular intervals of curves.

    Arguments:
        curve_ (curve): Curve that becomes the base.

    Returns:
        pos (nodes):  A node that has a parameter position value.

    """
    numList = division(4,1)
    posList = []
    for i,num in enumerate(numList):
        getParamPos_ = curve_.getShape().getPointAtParam(num)
        pos_ = pm.createNode('transform',n='Spine{}Pos'.format(i+1))
        pos_.attr('t').set(getParamPos_)
        pm.matchTransform(pos_,joints_[0],rot=1)
        posList.append(pos_)
    return posList

def controller_(pos_):
    dict_ = {'Ctrl':[], 'Off':[]}
    nameDict = {'Hip':0,'SpineFK1':1,'SpineMid':0,
                'SpineFK2':1,'Body':0}
    for i,name_ in enumerate(nameDict.keys()):
        if nameDict[name_]==0:
            key = 'circle'
        elif nameDict[name_]==1:
            key = 'square'
        Ctrl_ = crvShape_(key,'{}Ctrl'.format(name_))
        dict_['Ctrl'].append(Ctrl_)
        pm.matchTransform(Ctrl_,pos_[i])
        cb = 1
        if nameDict[name_]==0:
            IKGrp_ = space_(name_, suffix_='IKGrp', parent_=Ctrl_)
            upVec_ = space_(name_, suffix_ = 'upVec', parent_=IKGrp_)
            upVecOffGrp = offGrp_(upVec_)
            CbJnt_ = pm.joint(n='SpineCb{}Jnt'.format(cb))
            pm.parent(CbJnt_,IKGrp_)
            cb +=1
            pm.matchTransform(CbJnt_,IKGrp_)
            offGrp = offGrp_(CbJnt_)
        offGrp = offGrp_(Ctrl_)
        dict_['Off'].append(offGrp)
    return dict_
    

sel = pm.ls(sl=1)
joints_ = getJoints_(sel[0],sel[-1])
IKjoints_ = IKJoints_(joints_)
crvs_ = IKSet.IKStretch(sel)
pos_ = pos_(crvs_[0], joints_)
ctrlDict_ = controller_(pos_)

    
# dir(IKCrv_.getShape().__class__)







