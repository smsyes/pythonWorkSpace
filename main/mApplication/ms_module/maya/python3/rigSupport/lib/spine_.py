# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20220317

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

def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])
                    
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

def IKJoints_(type_,joints_):
    """Copy and rename the joint list.

    Arguments:
        joints_ (joint): Joints to copy.

    Returns:
        joints : duplicated joints

    """
    IKJoints = []
    for i,jnt in enumerate(joints_):
        pm.select(cl=1)
        IKJoint = pm.joint(n='{0}{1}IKJnt'.format(type_,i+1))
        pm.matchTransform(IKJoint,jnt)
        IKJoints.append(IKJoint)
    hierarchy_(IKJoints)
    return IKJoints

def pos_(crv,dict_,jnt):
    """Positions created at regular intervals of curves.

    Arguments:
        curve_ (curve): Curve that becomes the base.

    Returns:
        pos (nodes):  A node that has a parameter position value.

    """
    numList = division(len(dict_.keys())-1,1)
    posList = []
    for i,num in enumerate(numList):
        getParamPos_ = crv.getShape().getPointAtParam(num)
        pos = pm.createNode('transform',n='{0}{1}Pos'.format(type,i+1))
        pos.t.set(getParamPos_)
        if type == 'Neck':
            tc = pm.tangentConstraint(crv,pos,
                                      aim=(0,1,0),u=(0,0,1),
                                      wut="objectrotation",
                                      wu=(0,0,-1),wuo=jnt[0])
            pm.delete(tc)
        posList.append(pos)
    return posList

def ikh_(jnts,crv,vector):
    ikh = pm.ikHandle(sj=jnts[0],ee=jnts[1],c=crv,
                       sol='ikSplineSolver',ccv=0,pcv=0)
    ikh[0].dTwistControlEnable.set(1)
    ikh[0].dWorldUpType.set(4)
    vector[0].wm >> ikh[0].dWorldUpMatrix
    vector[1].wm >> ikh[0].dWorldUpMatrixEnd    

def midPbw(stCtrl,mdCtrl,enCtrl):
    pm.addAttr(mdCtrl,ln='pbw',min=0,max=10,dv=3,k=1)
    mdCtrlGrp = mdCtrl.getParent()
    pConst = pm.parentConstraint(pm.ls(stCtrl,enCtrl,mdCtrlGrp),mo=1)
    pb = pm.createNode('pairBlend',n='{}PB'.format(mdCtrl.name()))
    ml = pm.shadingNode('multDoubleLinear',au=1,n='{}ML'.format(mdCtrl.name()))
    pb.rotInterpolation.set(1)
    mdCtrl.pbw >> ml.i1
    ml.i2.set(0.1)
    [mdCtrlGrp.attr(i).listConnections(p=1)[0] // mdCtrlGrp.attr(i) for i in ['rx','ry','rz']]
    [mdCtrlGrp.attr(i).listConnections(p=1)[0] // mdCtrlGrp.attr(i) for i in ['tx','ty','tz']]
    pb.ir1.set(pConst.constraintRotate.get())
    pb.it1.set(pConst.constraintTranslate.get())
    pConst.constraintRotate >> pb.ir2
    pConst.constraintTranslate >> pb.it2
    pb.outRotate >> mdCtrlGrp.r
    pb.outTranslate >> mdCtrlGrp.t
    ml.o >> pb.weight

def cbJoint(name_,pos):
    IKGrp = space_('IK',suffix_='Grp',parent_=None)
    pm.matchTransform(IKGrp,pos)
    upVec_ = space_(name_, suffix_ = 'UpVec', parent_=IKGrp)
    upVecOffGrp = offGrp_(upVec_)
    CbJnt_ = pm.joint(n='{}CbJnt'.format(name_))
    pm.matchTransform(CbJnt_,IKGrp)
    offGrp = offGrp_(CbJnt_)
    return IKGrp,upVec_

def controller_(type_,dict_,pos_):
    """Positions created at regular intervals of curves.

    Arguments:
        pos_ (transform): joint position space pos

    Returns:
        pos (nodes):  A node that has a parameter position value.

    """
    ctrllist = []
    offlist = []
    veclist = []
    
    # CtrlGrp_ = space_('Spine', suffix_='CtrlGrp', parent_=None)

    for i,name_ in enumerate(dict_.keys()):
        if dict_[name_][1] == 'IK':
            IKGrp, upVec_ = cbJoint(name_,(pos_[i]))
        Ctrl_ = crvShape_(dict_[name_][0],'{}Ctrl'.format(name_))
        pm.matchTransform(Ctrl_,pos_[i])
        
        offGrp = offGrp_(Ctrl_)
        pm.parent(pos_[i],Ctrl_)
        
        if dict_[name_][1] == 'IK':
            pm.parent(IKGrp,Ctrl_)
            veclist.append(upVec_)
        
        ctrllist.append(Ctrl_)
        offlist.append(offGrp)
        
        
    return ctrllist, offlist, veclist

def rootPos_(pos_):
    RootPos = space_('Root', suffix_='JntPos', parent_=pos_[0])
    RootoffGrp = offGrp_(RootPos)
    return RootoffGrp

def Spine_(object_):
    joints_ = getJoints_(object_[0],object_[-1])
    IKjoints_ = IKJoints_(type,joints_)
    
    crvs_ = IKStSq.IKStretch(pm.ls(IKjoints_[0], IKjoints_[-1]))
    
    pos = pos_(crvs_[0],nameDict,IKjoints_)
    ctrl,off,vec = controller_(type,nameDict,pos)
    root = rootPos_(pos)
    pm.parent(root,ctrl[0])
    
    StEnJnt = pm.ls(IKjoints_[0],IKjoints_[-1])
    vector = pm.ls(vec[0],vec[-1])
    if type == 'Spine':
        st,md,en = ctrl[0],ctrl[2],ctrl[-1]
    elif type == 'Neck':
        st,md,en = ctrl[0],ctrl[1],ctrl[2]
        
    ikh_(StEnJnt,crvs_[0],vector)
    midPbw(st,md,en)


# 泥ル쾲吏몄� 留덉�留� 議곗씤�� �좏깮�� �ㅽ뻾.
'''
type = 'Spine' Or 'Neck' �섏쨷 �섎굹濡� �ㅼ젙�섍퀬 �ㅽ뻾�댁빞 �⑸땲��.
'''
type = 'Neck'

nameDict = OrderedDict()
if type == 'Spine':
    nameDict['Hip'] = ['circle','IK']
    nameDict['SpineFK1'] = ['square','FK']
    nameDict['SpineMid'] = ['circle','IK']
    nameDict['SpineFK2'] = ['square','FK']
    nameDict['Body'] = ['circle','IK']
if type == 'Neck':
    nameDict['Neck'] = ['square','IK']
    nameDict['NeckMid'] = ['square','IK']
    nameDict['Head'] = ['circle','IK']
    
sel = pm.ls(sl=1)
Spine_(sel)




