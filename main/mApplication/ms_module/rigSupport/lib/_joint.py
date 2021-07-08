# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from lib import _transform

reload(_transform)



def hierarchy_(object_, type_=None):
    object_ = PyNode(object_)
    hier_ = object_.listRelatives(ad=1, c=1, typ=type_)
    hier_ = hier_ + [object_]
    hier_.reverse()
    return hier_

def joint_(_name):
    return joint(n='{}_JNT'.format(_name))


def _joint(joint_,
           e=None,
           q=None,
           ex=None,
           oj=None,
           o=None,
           sao=None,
           zso=None,
           p=None,
           co=None):
    
    data = {}

    if e is not None:
        data["e"] = e
    if q is not None:
        data["q"] = q
    if ex is not None:
        data["exists"] = ex
    if oj is not None:
        data["orientJoint"] = oj
    if o is not None:
        data["orientation"] = o
    if sao is not None:
        data["secondaryAxisOrient"] = sao
    if zso is not None:
        data["zeroScaleOrient"] = zso
    if p is not None:
        data["position"] = p
    if co is not None:
        data["component"] = co
    joint(joint_, **data)


def joint_orient(jointChain):
    for joint_ in jointChain:
        _joint(joint_, e=True, oj='xzy', sao='zup', zso=True)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 


def joint_insert(joint_, pos_):
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        _joint(JNT, e=True, co=True, p=pos_)
        return PyNode(JNT)


def length(v0, v1):
    v = v1 - v0
    return v.length()


def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

    
def add_joint(jointChain, num):
    stJoint = jointChain[0]
    enJoint = jointChain[-1]
    stTrans_= _transform.get_trans(stJoint)
    enTrans_= _transform.get_trans(enJoint)
    length_ = length(stTrans_, enTrans_)
    divValue = length_/(num+1)
    
    insertList = [stJoint]
    for i in range(num):
        localspace = space_(stJoint.name(), parent_=insertList[i])
        localspace.setAttr('t',(divValue,0,0))
        pos_ = _transform.get_trans(localspace)
        JNT = joint_insert(insertList[i], pos_)
        delete(localspace)
        insertList.append(JNT)


def linear_spacing_joint(num):
    sel = ls(sl=1, fl=1, r=1)
    for i in sel:
        jointChain = hierarchy_(i, type_='joint')
        joint_orient(jointChain)
        add_joint(jointChain, num)


def duplicate_joint(object_):
    dupJNT_ = duplicate(object_)
    jointChain = hierarchy_(dupJNT_[0], type_='joint')
    return jointChain


def bindSkin_(object_,
              n=None,
              tsb=None,
              bm=None,
              sm=None,
              nw=None,
              mi=None,
              dr=None,
              ):

    data={}
    if n is not None:
        data["name"] = n
    if tsb is not None:
        data["toSelectedBones"] = tsb
    if bm is not None:
        data["bindMethod"] = bm
    if sm is not None:
        data["skinMethod"] = sm
    if nw is not None:
        data["normalizeWeights"] = nw
    if mi is not None:
        data["maximumInfluences"] = mi
    if dr is not None:
        data["dropoffRate"] = dr
    scls = skinCluster(object_, **data)[0]
    return scls


def object_at_joint(object_):
    JNTList = []
    for i,object in enumerate(object_):
        select(cl=1)
        _name = object.name()
        JNT = joint(_name)
        parent(JNT, w=1)
        JNTList.append(JNT)
    return JNTList