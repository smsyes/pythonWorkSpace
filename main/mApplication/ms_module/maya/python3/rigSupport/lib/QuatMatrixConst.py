# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
PoseReader Creator

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20220327

:Example:
Pakage is QuatMatrixConst.pyc

from rigSupport.lib import QuatMatrixConst as QM
try:
    from imp import *
except:
    pass
reload(QM)
# sel = ls(sl=1, fl=1, r=1)
# MCon(sel, t_=1, r_=1, s_=1, maintain=1)
PairMCon(object_,t=1,r=1,s=1,mo_=1)
============================================================================"""
from pymel.core import *

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2

def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}localMM'.format(name_))
    return _node
    
def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}localDM'.format(name_))
    return _node

def eularToQuat_(name_):
    _node = shadingNode('eulerToQuat', au=1, n='{}jointOrientEQ'.format(name_))
    return _node

def quatInvert_(name_):
    _node = shadingNode('quatInvert', au=1, n='{}QI'.format(name_))
    return _node

def quatProd_(name_):
    _node = shadingNode('quatProd', au=1, n='{}QP'.format(name_))
    return _node
    
def quatToEuler_(name_):
    _node = shadingNode('quatToEuler', au=1, n='{}QE'.format(name_))
    return _node

def MCon(object_, t_=None, r_=None, s_=None, maintain=None):
    item_, target_ = object_[0], object_[1]
    name_ = target_.name()
    MM = multMatrix_(name_)
    DM = decompose_(name_)
    if target_.type() == 'joint':
        jointOrientEQ = eularToQuat_(name_)
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
        target_.jointOrient >> jointOrientEQ.inputRotate
        jointOrientEQ.outputQuat >> QI.inputQuat
        DM.outputQuat >> QP.input1Quat
        QI.outputQuat >> QP.input2Quat
        QP.outputQuat >> QE.inputQuat
    if t_:
        DM.ot >> target_.t
    if r_:
        if target_.type() == 'joint':
            QE.outputRotate >> target_.r
            # target_.attr('r').set([0,0,0])
        else:
            DM.outputRotate >> target_.r
    if s_:
        DM.os >> target_.s

def PairMCon(object_,t=None,r=None,s=None,mo_=None):
    """ matrix constraint value of two factor intermediate values

    Arguments:
        object_ (object) : object_[0] = A Factor, 
                           object_[1] = B Factor,
                           object_[2] = input Factor
        t,r,s (bool) : transform True or False
        mo (bool): maintainoffset True or False

    Returns:
        redult : Mix the two transform values

    """
    pb_ = createNode('pairBlend', n='{0}PB'.format(object_[-1].name()))
    for i in [1,2]:
        MCon(ls(object_[i-1],object_[-1]),t_=t,r_=r,s_=s,maintain=mo_)
        inT_ = object_[-1].t.listConnections(p=1)
        inR_ = object_[-1].r.listConnections(p=1)
        inS_ = object_[-1].s.listConnections(p=1)
        
        if inT_:
            attrName = 'it{}'.format(i)
            inT_[0] // object_[-1].t
            inT_[0] >> pb_.attr(attrName)
        if inR_:
            attrName = 'ir{}'.format(i)
            inR_[0] // object_[-1].r
            inR_[0] >> pb_.attr(attrName)
        if inS_:
            inS_[0] // object_[-1].s
    if t:
        pb_.ot >> object_[-1].t
    if r:
        pb_.outRotate >> object_[-1].r
    pb_.weight.set(0.5)
