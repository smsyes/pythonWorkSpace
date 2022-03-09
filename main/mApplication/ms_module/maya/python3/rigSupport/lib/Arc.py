# -*- coding: utf-8 -*-
"""============================================================================
Arc setup
============================================================================"""
import pymel.core as pm
from collections import OrderedDict

def db_(name_):
    return pm.shadingNode('distanceBetween', au=1, n='{}DB'.format(name_))
    
def al_(name_):
    return pm.shadingNode('addDoubleLinear', au=1, n='{}AL'.format(name_))

def ml_(name_):
    return pm.shadingNode('multDoubleLinear', au=1, n='{}ML'.format(name_))

def pa_(name_):
    return pm.shadingNode('plusMinusAverage', au=1, n='{}PA'.format(name_))
    
def ag_(name_):
    return pm.shadingNode('angleBetween', au=1, n='{}AG'.format(name_))

def sr_(name_):
    return pm.shadingNode('setRange', au=1, n='{}SR'.format(name_))

def space_(name_):
    return pm.createNode('transform', n='{}Pos'.format(name_))

def tpc_(name_):
    return pm.createNode('makeThreePointCircularArc', n='{}TPC'.format(name_))

def dc_(name_):
    return pm.createNode('detachCurve', n='{}DC'.format(name_))
    
def rc_(name_):
    return pm.createNode('rebuildCurve', n='{}RC'.format(name_))

def crv_():
    return pm.createNode('nurbsCurve')

def arcPointPos(baseName, object):
    pointPos = space_('{0}ArcPoint'.format(baseName))
    al = al_('{0}ArcDistSum'.format(baseName))
    ml = ml_('{0}ArcDistMult'.format(baseName))

    al.o >> ml.i1
    ml.i2.set(3)

    poslist = []
    for i,item in enumerate(object):
        name_ = '{0}{1}Arc'.format(baseName,i+1)
        pos_ = space_(name_)
        pm.matchTransform(pos_, item)
        poslist.append(pos_)

    dblist = []
    for i,typ in enumerate(['Up','Dn']):
        name_ = '{0}{1}Arc'.format(baseName,typ)
        db = db_(name_)
        poslist[i+0].t >> db.p1
        poslist[i+1].t >> db.p2
        db.distance >> al.attr('input{0}'.format(i+1))
        dblist.append(db)
    
    pconst = pm.pointConstraint(pm.ls(poslist,pointPos),mo=0)
    
    attrs = []
    for i,pos in enumerate(poslist):
        attr_ = '{0}W{1}'.format(pos.name(),i)
        attrs.append(pconst.attr(attr_))
    
    dblist[0].distance >> attrs[2]
    ml.o >> attrs[1]
    dblist[1].distance >> attrs[0]
    return [poslist[0], pointPos, poslist[2]]

def arcParam(baseName, arcpos_):
    tpc = tpc_(baseName)
    angleAl = al_('{0}Angle'.format(baseName))
    angleSr = sr_('{0}Angle'.format(baseName))

    [pos.t >> tpc.attr('point{0}'.format(i+1)) for i,pos in enumerate(arcpos_)]

    vecDict = OrderedDict()
    vecDict['VecArcTo1'] = [arcpos_[1],arcpos_[0]]
    vecDict['Vec3To1'] = [arcpos_[2],arcpos_[0]]
    vecDict['Vec3ToArc'] = [arcpos_[2],arcpos_[1]]

    palist = []
    for i in vecDict.keys():
        pa = pa_('{0}{1}'.format(baseName,i))
        pa.operation.set(2)
        vecDict[i][0].t >> pa.input3D[0]
        vecDict[i][1].t >> pa.input3D[1]
        palist.append(pa)

    agDict = OrderedDict()
    agDict['in'] = [palist[0],palist[1]]
    agDict['out'] = [palist[2],palist[1]]

    aglist = []
    for i,key in enumerate(agDict.keys()):
        ag = ag_('{0}{1}'.format(baseName,key))
        agDict[key][0].output3D >> ag.attr('vector{0}'.format(1))
        agDict[key][1].output3D >> ag.attr('vector{0}'.format(2))
        aglist.append(ag)

    aglist[0].angle >> angleAl.input2
    aglist[1].angle >> angleAl.input1
    aglist[1].angle >> angleSr.valueX
    angleAl.o >> angleSr.oldMaxX
    tpc.sections >> angleSr.maxX
    return tpc, angleSr

def createArc(baseName, tpc, angleSr):
    dc = dc_('{0}Arc'.format(baseName))
    tpc.outputCurve >> dc.inputCurve
    angleSr.outValueX >> dc.parameter[0]

    for i,typ in enumerate(['Up','Dn']):
        name_ = '{0}{1}ArcCrv'.format(baseName,typ)
        rc = rc_(name_)
        crv = crv_()
        pm.rename(crv.root(), name_)
        rc.spans.set(2)
        rc.keepRange.set(0)
        dc.outputCurve[i] >> rc.inputCurve
        rc.outputCurve >> crv.create
        
baseName = "test"
sel = pm.ls(sl=1,fl=1,r=1)
arcpos_ = arcPointPos(baseName, sel)
tpc, angleSr = arcParam(baseName, arcpos_)
createArc(baseName, tpc, angleSr)
