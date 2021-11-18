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
import maya.api.OpenMaya as om
from pymel.core import *
from rigSupport.lib import _curve
from rigSupport.lib import _node
from rigSupport.lib import _transform
from rigSupport.lib import _control

try:
    from imp import *
except:
    pass
reload(_curve)
reload(_node)
reload(_transform)
reload(_control)


def createIKCurves(joints_, type_):
    curves_ = []
    for i in type_:
        crv_ = _curve.object_cv_curve(joints_, dgree_=None)
        crv_.rename('{}Crv'.format(i))
        rebuildCurve(crv_,ch=0,rpo=1,rt=0,end=1,kr=2,kcp=0,kt=1,s=0,d=3)
        curves_.append(crv_)
    return curves_

def getCurveParamTransform(param, curve_):
    matrixList = []
    poci_ = _node.pointOnCurveInfo_(curve_)
    poci_.attr('parameter').set(param)
    vecX = poci_.getAttr('normalizedTangent')
    normal = poci_.getAttr('normalizedNormal')
    tangent = poci_.getAttr('normalizedTangent')
    position = poci_.getAttr('position')
    crossY = om.MVector(normal)^om.MVector(tangent)
    crossZ = crossY^om.MVector(normal)
    vecY = [y for y in crossY]
    vecZ = [z for z in crossZ]
    matrixList.extend(vecX)
    matrixList.extend(vecY)
    matrixList.extend(vecZ)
    matrixList.extend(position)
    matrix_ = _transform.setMatrixFromList(matrixList)
    delete(poci_)
    return matrix_

def paramAtJoint(num_, curve_):
    name_ = 'IKBind'
    jnts_ = []
    for i in range(num_+1):
        getMatrix_ = getCurveParamTransform(i, curve_)
        jnt_ = joint(n='{0}{1}Jnt'.format(name_, i+1))
        jnt_.setMatrix(getMatrix_)
        jnts_.append(jnt_)
        select(cl=1)
    return jnts_

def createIKCtrl(names_, object_):
    grp_ = []
    ctrls_ = _control.control_(object_, 'circle')
    for i,ctrl in enumerate(ctrls_):
        ctrl.rename('{0}IKCtrl'.format(names_[i]))
        grp_.append(_node.offset_(ctrl, num_=1))
    return grp_, ctrls_


def searchJoint(stJnt, enJnt):
    allP_ = enJnt.getAllParents()
    if stJnt in allP_:
        index = allP_.index(stJnt)
    list_ = [enJnt] + allP_[:index+1]
    list_.reverse()
    return list_

def splName(object_, spl, idx):
    names_ = []
    for i in object_:
        if spl in i.name():
            names_.append(i.name().split(spl)[idx])
    return names_    

def IKSetting(num, baseName, stJnt, enJnt):
    """Get the childrens from top object

    Arguments:
        num (int): ik bind joint and controller number
        baseName (string): base name
        stJnt ('joint'): ik start joint
        enJnt ('joint'): ik end joint

    Returns:
        build : ik (stretch and squash) setting

    """
    # setting value setting
    joints_ = searchJoint(stJnt, enJnt)
    names_ = splName(joints_[:-1], 'Jnt', 0)
    crvType_ = ['IK','IKChk']
    IKSets = sets(n='{0}IKSets'.format(baseName))

    # IK Nodes Configuration
    IKSysGrp = _node.space_('{0}IKSys'.format(baseName))
    IKCtrlGrp = _node.space_('{0}IKCtrl'.format(baseName))
    IKCurves = createIKCurves(joints_, crvType_)
    IKJnts_ = paramAtJoint(num, IKCurves[0])
    IKJntsName_ = splName(IKJnts_, 'Jnt', 0)
    CtrlGrps, Ctrl = createIKCtrl(IKJntsName_, IKJnts_)
    [parent(jnt, Ctrl[j]) for j,jnt in enumerate(IKJnts_)]
    [parent(crv, IKSysGrp) for crv in IKCurves]
    [parent(grp, IKCtrlGrp) for grp in CtrlGrps]

    sets(IKSets, e=1, add=[IKSysGrp,IKCtrlGrp,IKCurves,IKJnts_,CtrlGrps,Ctrl])

    stml_ = _node.multDoubleLinear_('{0}IKStretch'.format(baseName))
    sqml_ = _node.multDoubleLinear_('{0}IKsquash'.format(baseName))
    ba_ = [_node.blendTwoAttr_(n) for n in names_]
    md_ = [_node.multiplyDivide_('{0}Normalize'.format(n)) for n in names_]
    md1_ = [_node.multiplyDivide_('{0}PW'.format(n)) for n in names_]
    md2_ = [_node.multiplyDivide_('{0}Squash'.format(n)) for n in names_]
    ml_ = [_node.multDoubleLinear_(n) for n in names_]
    dbs_ = []
    pocis_ = []
    for c,crv in enumerate(IKCurves):
        shape_ = crv.getShape()
        db_ = []
        poci_ = []
        dbs_.append(db_)
        pocis_.append(poci_)
        for j,jnt in enumerate(joints_):
            pos_ = _transform.get_trans(jnt)
            cpos = shape_.closestPoint(pos_)
            param_ = shape_.getParamAtPoint(cpos, space='preTransform')            
            pc_ = _node.pointOnCurveInfo_(crv)
            pc_.attr('parameter').set(param_)
            poci_.append(pc_)
            if j<int(len(joints_)-1):
                name2_ = '{0}{1}'.format(crvType_[c], names_[j])
                db_.append(_node.distancBetween_(name2_))

    sets(IKSets, e=1, add=[stml_,sqml_,ba_,md_,md1_,md2_,ml_,
                           dbs_[0],dbs_[1],pocis_[0],pocis_[1]])

    sik_ = ikHandle(n='{}IKH'.format(baseName), 
                    sj=joints_[0], 
                    ee=joints_[-1], 
                    c=IKCurves[0], 
                    sol='ikSplineSolver', 
                    ccv=0, 
                    pcv=0)
    parent(sik_[0], IKSysGrp)

    sets(IKSets, e=1, add=sik_)

    # Connecting IK Nodes
    for c,crv in enumerate(IKCurves):
        db_ = dbs_[c]
        poci_ = pocis_[c]
        for j,jnt in enumerate(joints_):
            if j<int(len(joints_)-1):
                poci_[j].position >> db_[j].point1
                if c==0:
                    md_[j].attr('operation').set(2)
                    md1_[j].attr('operation').set(3)
                    md2_[j].attr('operation').set(2)
                    md2_[j].attr('i1x').set(1)
                    db_[j].distance >> ba_[j].input[1]
                    stml_.o >> ba_[j].attributesBlender
                    sqml_.o >> md1_[j].i2x
                    ba_[j].o >> md_[j].i1x
                    md_[j].ox >> ml_[j].i1
                    md_[j].ox >> md1_[j].i1x
                    md1_[j].ox >> md2_[j].i2x
                if c==1:
                    db_[j].distance >> ba_[j].input[0]
                    db_[j].distance >> md_[j].i2x
            if j>0:
                poci_[j].position >> db_[j-1].point2

    md2_[0].ox >> joints_[0].sy
    md2_[0].ox >> joints_[0].sz
    for i,db in enumerate(dbs_[0]):
        dist_ = db.getAttr('distance')
        ml_[i].attr('i2').set(dist_)
        ml_[i].o >> joints_[1:][i].tx
        md2_[i].ox >> joints_[1:][i].sy
        md2_[i].ox >> joints_[1:][i].sz

    stml_.attr('i1').set(10)
    stml_.attr('i2').set(0.1)
    sqml_.attr('i1').set(10)
    sqml_.attr('i2').set(0.1)
    addAttr(sik_[0], ln="Stretch",at='double',min=0,max=10,k=1)
    addAttr(sik_[0], ln="Squash",at='double',min=0,max=10,k=1)
    sik_[0].attr('dTwistControlEnable').set(1)
    sik_[0].attr('dWorldUpType').set(4)
    Ctrl[0].wm >> sik_[0].dWorldUpMatrix
    Ctrl[-1].wm >> sik_[0].dWorldUpMatrixEnd
    sik_[0].Stretch >> stml_.i1
    sik_[0].Squash >> sqml_.i1


sel = ls(sl=1,r=1,fl=1)
num = 4
baseName = "Neck"
IKSetting(num, baseName, sel[0], sel[-1])


