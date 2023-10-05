# -*- coding: utf-8 -*-

import os
import json
import pymel.core as pm
import maya.api.OpenMaya as om

def jsonRoad(jsonPath_):
    with open(jsonPath_) as f:
        data_ = json.load(f)
    return data_

def baseHierarchy(data_):
    for a in data_.keys():
        agrp = pm.createNode('transform', n=a)
        for b in data_[a].keys():
            bgrp = pm.createNode('transform', n=b)
            pm.parent(bgrp, agrp)
            for c in data_[a][b]:
                cgrp = pm.createNode('transform', n=c)
                pm.parent(cgrp, bgrp)

def freezeOffset(list_):
    for i in list_:
        matrix_ = i.getMatrix()
        i.offsetParentMatrix.set(matrix_)
        if i.type() == 'joint':
            i.jo.set((0,0,0))
        i.t.set((0,0,0))
        i.r.set((0,0,0))
        i.s.set((1,1,1))

def baseJointDict(data_):
    partsName = {}
    type_ = 'parts'
    for p in data_[type_].keys():
        partsName[type_][p] = {}
        if 0 == data_[type_][p][0]:
            side_ = [data_['side'][0]]
            parts = data_[type_][p][1:]
        else:
            side_ = data_['side'][1:]
            parts = data_[type_][p][1:]
        for s in side_:
            partsName[type_][p][s] = []
            for i in parts:
                parts_ = pm.PyNode('{0}_{1}'.format(i,s))
                partsName[type_][p][s].append(parts_)
    return partsName

def dupJoint(baseJoints,type_):
    jointList = []
    pm.select(cl=1)
    for b in baseJoints:
        joint_ = pm.joint(n='{0}{1}'.format(b.name().split('drv')[0],type_))
        pm.matchTransform(joint_, j)
        jointList.append(joint_)
    pm.select(cl=1)
    return jointList

def crvShape_(name_,list_,node_):
    crv_ = pm.curve(d = list_[0], 
                 p = list_[1], 
                 k = list_[2])
    crv_.rename('{}ctrl'.format(name_))
    pm.matchTransform(crv_, node_)
    return crv_

def circle_(name_,node_):
    crv_ = pm.circle(n='{}ctrl'.format(name_),r=10,nr=[1,0,0])
    pm.matchTransform(crv_, node_)

def FKCtrl(list_):
    fkctrlList = []
    for i,sl in enumerate(list_):
        ctrl = circle_('FK_{0}_'.format(sl.name()),sl)
        if i>0:
            pm.parent(ctrl,fkctrlList[i-1])
        fkctrlList.append(ctrl)
    return fkctrlList

'''
def rigHierarchy(data_):
    for data.keys():
'''   

namePath = "C:/Users/smi_th/Documents/maya/2022/scripts/rigSupport/ui/deliver/Json/metahuman.json"
rigGrpPath = "C:/Users/smi_th/Documents/maya/2022/scripts/rigSupport/ui/deliver/Json/rigHierarchy.json"
name_ = jsonRoad(namePath)
grp_ = jsonRoad(rigGrpPath)
baseJoints = baseJointDict(name_)
baseHierarchy(grp_)  


ikJoints = dupJoint(baseJoints,'IK')
fkJoints = dupJoint(baseJoints,'FK')

ajoints_ = ikJoints['parts']['arm']['l_drv']

for k in fkJoints['parts'].keys():
    for s in fkJoints['parts'][k]:
        for i in fkJoints['parts'][k][s]:
            circle_('{}_ctrl'.format(i.name()),i)
            

baseJoints.keys()


partsName = {}
type_ = 'parts'
partsName[type_] = {}
for p in name_[type_].keys():
    partsName[type_][p] = {}
    if isinstance(name_[type_][p], list):
        for i in name_[type_][p]:
            print(i)
    else:
        for d in name_[type_][p].keys():
            for i in name_[type_][p][d]:
                print(i)

