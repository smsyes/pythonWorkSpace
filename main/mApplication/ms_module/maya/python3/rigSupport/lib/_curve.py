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
from rigSupport.lib import _transform
from rigSupport.lib import _connect
from rigSupport.lib import _node
from rigSupport.lib import _name

try:
    from imp import *
except:
    pass

reload(_transform)
reload(_connect)
reload(_node)
reload(_name)


def get_cvs(_shape):
    return _shape.getCVs(space='world')


def get_param_at_point(_shape, point):
    return _shape.getParamAtPoint(point)

def getClosetPointParam(object_, crv):
    t_,r_ = _transform.get_transform(object_)
    cPoint = crv.closestPoint(t_, param=None, tolerance=0.001, space='preTransform')
    return crv.getParamAtPoint(cPoint, space='preTransform')

# get current object Position at parameter
def pos_at_param(_shape, *args): 
    args = ls(args)
    param_list = []
    for i in args:
        trans, rot = _transform.get_transform(i)
        param = get_param_at_point(_shape, trans)
        param_list.append(param)
    return param_list

# current object Position >> curve Parameter >> object Position
def param_at_objectPositions(object_): 
    _shape = object_[0].getShape()
    _object = object_[1:]
    params_ = pos_at_param(_shape, _object)
    
    for i,object in enumerate(_object):
        POCI = _node.po_crv_info(_shape)
        setAttr('{}.parameter'.format(POCI), params_[i])
        _connect.connect_attr(POCI, 'p', object, 't')


def object_cv_curve(object_, dgree_=None):
    object_ = ls(object_)
    if not dgree_:
        dgree_ = 1
    trans_list = []
    for i in object_:
        trans, rot = _transform.get_transform(i)
        trans_list.append(trans)
    crv_ = curve(d=dgree_, p = trans_list)
    return crv_


def curve_at_joint(object_):
    _shape = object_.getShape()
    cvs = get_cvs(_shape)
    JNTList = []

    for j,pos in enumerate(cvs):
        select(cl=1)
        JNT = joint()
        _transform.set_trans_xform(JNT, pos)
        JNTList.append(JNT)

        if j == 0:
            stJNT = JNT
        if pos == cvs[-1]:
            enJNT = JNT
        if j > 0:
            JNT.setParent(JNTList[j-1])
    return JNTList


def curve_at_null(object_):
    NULLList = []
    name_ = object_.name()
    _shape = object_.getShape()
    cvs = get_cvs(_shape)
    for i,pos in enumerate(cvs):
        select(cl=1)
        pad_ = _name.padding(i)
        NULL_name = '{}_{}'.format(name_, pad_)
        NULL_ = _node.space_(NULL_name, None)
        _transform.set_trans_xform(NULL_, pos)
        NULLList.append(NULL_)
    return NULLList


def rebuild_curve(curve_,
                  ch=None,
                  rpo=None,
                  rt=None,
                  end=None,
                  kr=None,
                  kcp=None,
                  kep=None,
                  kt=None,
                  s=None,
                  d=None,
                  tol=None
                  ):
    data={}
    if ch is not None:
        data["constructionHistory"] = ch
    if rpo is not None:
        data["replaceOriginal"] = rpo
    if rt is not None:
        data["rebuildType"] = rt
    if end is not None:
        data["endKnots"] = end
    if kr is not None:
        data["keepRange"] = kr
    if kcp is not None:
        data["keepControlPoints"] = kcp
    if kep is not None:
        data["keepEndPoints"] = kep
    if kt is not None:
        data["keepTangents"] = kt
    if s is not None:
        data["spans"] = s
    if d is not None:
        data["d"] = d
    if tol is not None:
        data["tolerance"] = tol
    rebuildCurve(curve_, **data)    


def cvs_at_param(_shape):
    param_list = []
    cvs_pos = get_cvs(_shape)
    for i in cvs_pos:
        param = get_param_at_point(_shape, i)
        param_list.append(param)
    return param_list
