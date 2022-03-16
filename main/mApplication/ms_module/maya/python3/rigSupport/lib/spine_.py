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
        pm.matchTransform(pos_,joints_[i],rot=1)
        posList.append(pos_)
    return posList

def controller_(pos_):
    """Positions created at regular intervals of curves.

    Arguments:
        pos_ (transform): joint position space pos

    Returns:
        pos (nodes):  A node that has a parameter position value.

    """
    dict_ = OrderedDict()
    dict_['Ctrl'] = []
    dict_['Off'] = []
    dict_['Vec'] = []
    
    nameDict = OrderedDict()
    nameDict['Hip'] = 0
    nameDict['SpineFK1'] = 1
    nameDict['SpineMid'] = 0
    nameDict['SpineFK2'] = 1
    nameDict['Body'] = 0
    
    for i,name_ in enumerate(nameDict.keys()):
        if nameDict[name_]==0:
            key = 'circle'
        elif nameDict[name_]==1:
            key = 'square'
        Ctrl_ = crvShape_(key,'{}Ctrl'.format(name_))
        dict_['Ctrl'].append(Ctrl_)
        if i == 0:
            pm.matchTransform(Ctrl_,pos_[1],pos=1)
            RootPos = space_('Root', suffix_='JntPos', parent_=pos_[0])
            RootoffGrp = offGrp_(RootPos)
            pm.parent(RootoffGrp,Ctrl_)
        else:
            pm.matchTransform(Ctrl_,pos_[i],pos=1)
        cb = 1
        if nameDict[name_]==0:            
            IKGrp_ = space_(name_, suffix_='IKGrp', parent_=pos_[i])
            pm.parent(IKGrp_,Ctrl_)
            upVec_ = space_(name_, suffix_ = 'UpVec', parent_=IKGrp_)
            upVecOffGrp = offGrp_(upVec_)
            CbJnt_ = pm.joint(n='SpineCb{}Jnt'.format(cb))
            pm.parent(CbJnt_,IKGrp_)
            cb +=1
            pm.matchTransform(CbJnt_,pos_[i])
            offGrp = offGrp_(CbJnt_)
        offGrp = offGrp_(Ctrl_)
        pm.parent(pos_[i],Ctrl_)
        dict_['Off'].append(offGrp)
        dict_['Vec'].append(upVec_)
        
    CtrlGrp_ = space_('Spine', suffix_='CtrlGrp', parent_=None)
    offGrp02 = offGrp_(dict_['Off'][2])
    pm.parent(dict_['Off'][3], dict_['Ctrl'][1])
    pm.parent(offGrp02, dict_['Ctrl'][1])
    pm.parent(dict_['Off'][4], dict_['Ctrl'][3])
    pm.parent(pm.ls(dict_['Off'][0],dict_['Off'][1]), CtrlGrp_)
    return dict_

def ikh_(jnts,crv,vector):
    ikh = pm.ikHandle(sj=jnts[0],ee=jnts[1],c=crv,
                       sol='ikSplineSolver',ccv=0,pcv=0)
    ikh[0].dTwistControlEnable.set(1)
    ikh[0].dWorldUpType.set(4)
    vector[0].wm >> ikh[0].dWorldUpMatrix
    vector[1].wm >> ikh[0].dWorldUpMatrixEnd    

def midPbw(dict_):
    pm.addAttr(dict_['Ctrl'][2],ln='pbw',min=0,max=10,dv=3,k=1)
    pConst = pm.parentConstraint(pm.ls(dict_['Ctrl'][0],dict_['Ctrl'][-1],
                                 dict_['Off'][2]),mo=1)
    pb = pm.createNode('pairBlend',n='{}PB'.format(dict_['Off'][2].name()))
    ml = pm.shadingNode('multDoubleLinear',au=1,n='{}ML'.format(dict_['Off'][2].name()))
    pb.rotInterpolation.set(1)
    dict_['Ctrl'][2].pbw >> ml.i1
    ml.i2.set(0.1)
    pConst.constraintRotate >> pb.ir2
    pConst.constraintTranslate >> pb.it2
    [dict_['Off'][2].attr(i).disconnect() for i in ['rx','ry','rz']]
    [dict_['Off'][2].attr(i).disconnect() for i in ['tx','ty','tz']]
    pb.outRotate >> dict_['Off'][2].r
    pb.outTranslate >> dict_['Off'][2].t
    ml.o >> pb.weight

def spine_(object_):
    joints_ = getJoints_(object_[0],object_[-1])
    IKjoints_ = IKJoints_(joints_)
    crvs_ = IKStSq.IKStretch(object_)
    pos = pos_(crvs_[0], joints_)
    dict_ = controller_(pos)
    StEnJnt = pm.ls(IKjoints_[0],IKjoints_[-1])
    vector = pm.ls(dict_['Vec'][0],dict_['Vec'][-1])
    ikh_(StEnJnt,crvs_[0],vector)
    midPbw(dict_)

# 첫번째와 마지막 조인트 선택후 실행.
sel = pm.ls(sl=1)
spine_(sel)



