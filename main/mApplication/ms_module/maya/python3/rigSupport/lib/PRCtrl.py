# -*- coding: utf-8 -*-
"""============================================================================
PR Controller
============================================================================"""
import pymel.core as pm
from collections import OrderedDict
from rigSupport.lib import QuatMatrixConst as QM
try:
    from imp import *
except:
    pass
reload(QM)

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
    shape_dict['Pole'] = 1, [(0,0,0),(0,5,-5),(0,2,-8),(0,0,-6),(0,-2,-8),
                            (0,-5,-5),(0,0,0)],[0,1,2,3,4,5,6]
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
    """Create Offset Group 

    Arguments:
        object_ (object): Offset Object

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

def addVectorAttr_(name_,object_):
    typeList = ['X','Y','Z']
    pm.addAttr(object_,ln=name_,at='double3',k=1)
    for i in typeList:
        attrName = '{0}{1}'.format(name_,i)
        pm.addAttr(object_,ln=attrName,at='double',p=name_,k=1)

def PRCtrl_(object_):
    for i in object_:
        PRJntGrp_ = space_(name_, suffix_='PRJntGrp', parent_=None)
        pm.matchTransform(PRJntGrp_,i,pos=1,rot=1)
        name_ = i.name()
        pm.select(i)
        PRJnt_ = pm.joint(n='{0}PRJnt'.format(name_))
        pm.select(cl=1)
        PRCtrl_ = space_(name_, suffix_='PRCtrl', parent_=None)
        pm.addAttr(PRCtrl_,ln="Pbw",at='double',min=0,max=10,dv=0,k=1)
        pm.matchTransform(PRCtrl_,i,pos=1,rot=1)
        offGrp_(PRCtrl_)
        for a in ['E','S','W','N']:
            suffix = 'PR{0}Ctrl'.format(a)
            AxisPRCtrl_ = space_(name_, suffix_='PR{0}Ctrl'.format(a), parent_=PRCtrl_)
            AxisPRPos_ = space_(name_, suffix_='PR{0}Pos'.format(a), parent_=PRCtrl_)
            pm.select(AxisPRPos_)
            PRAxisJnt_ = pm.joint(n='{0}PR{1}Jnt'.format(name_,a))
            pm.select(cl=1)
            addVectorAttr_('Value',AxisPRCtrl_)
            AxisPRCtrl_.ValueZ.set(5)
            pm_ = pm.shadingNode('plusMinusAverage',au=1,n='{}PM'.format(AxisPRCtrl_.name()))
            sr_ = pm.shadingNode('setRange',au=1,n='{}SR'.format(AxisPRCtrl_.name()))
            AxisPRCtrl_.Value >> pm_.input3D[0]
            QM.MCon(pm.ls(AxisPRCtrl_,PRAxisJnt_),t_=1,r_=1,s_=1,maintain=True)
            tc = PRAxisJnt_.t.listConnections(p=1)[0]
            tc // PRAxisJnt_.t
            AxisPRCtrl_.t >> sr_.min
            pm_.output3D >> sr_.max
            sr_.outValue >> PRAxisJnt_.t
            AxisPRCtrlGrp_ = offGrp_(AxisPRCtrl_)
            PRAxisJntGrp_ = offGrp_(PRAxisJnt_)
            PRAxisJntGrp_.tz.set(1)
            pm.parent(PRAxisJntGrp_,PRJntGrp_)

sel = pm.ls(sl=1,fl=1,r=1)
PRCtrl_(sel)


        
        
        
    
    
    
    
    
    
    
    
    
    
    