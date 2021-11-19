# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20211108

:Example:
from rigSupport.lib import stretchSet
reload(stretchSet)
sel = ls(sl=1,r=1,fl=1)
stretchSet.StretchSet(sel[-1], sel[:-1])

============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from rigSupport.lib import _curve
from rigSupport.lib import _node

try:
    from imp import *
except:
    pass
reload(_curve)
reload(_node)

def getPointOnParam(crvName_, shape_, object_, dbs_, chkDbs_):
    for j,obj in enumerate(object_):
        parma_ = _curve.po_crv_info(obj, shape_)
        poci_ = _node.pointOnCurveInfo_(crvName_)
        
        poci_.attr('parameter').set(parma_)
        
        if i==0:
            dbs_ = dbs_
        if i==1:
            dbs_ = chkDbs_
        if j==0:
            poci_.position >> dbs_[0].point1
        elif j==int(len(object_)-1):
            poci_.position >> dbs_[-1].point2
        else:
            poci_.position >> dbs_[j-1].point2
            poci_.position >> dbs_[j].point1

def StretchSet(curve_, object_):
    crvName_ = curve_.name().split('Crv')[0]
    chkCurve_ = duplicate(curve_)
    rename(chkCurve_, '{0}chkCrv'.format(crvName_))
    curves_ = [curve_, chkCurve_[0]]
    
    stretchMdl_ = _node.multDoubleLinear_('{0}Stretch'.format(crvName_))
    stretchMdl_.attr('i1').set(10)
    stretchMdl_.attr('i2').set(0.1)
    dbs_ = [_node.distancBetween_(crvName_) for obj in object_[:-1]]
    bas_ = [_node.blendTwoAttr_(crvName_) for obj in object_[:-1]]
    mds_ = [_node.multiplyDivide_(crvName_) for obj in object_[:-1]]
    mdls_ = [_node.multDoubleLinear_(crvName_) for obj in object_[:-1]]
    chkDbs_ = [_node.distancBetween_('{0}Chk'.format(crvName_)) for obj in object_[:-1]]
    
    for i,crv_ in enumerate(curves_):
        shape_ = crv_.getShape()
        getPointOnParam(crvName_, shape_, object_, dbs_, chkDbs_)
        for k,obj in enumerate(object_[:-1]):
            dist_ = dbs_[k].getAttr('distance')
            if i==0:
                mds_[k].attr('operation').set(2)
                stretchMdl_.o >> bas_[k].attributesBlender
                dbs_[k].distance >> bas_[k].input[1]
                bas_[k].o >> mds_[k].i1x
                mds_[k].ox >> mdls_[k].i1
                mdls_[k].attr('i2').set(dist_)
            if i==1:
                chkDbs_[k].distance >> bas_[k].input[0]
                chkDbs_[k].distance >> mds_[k].i2x