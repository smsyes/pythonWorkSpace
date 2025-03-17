# -*- coding: utf-8 -*-
"""============================================================================
follicle hair output curve grouping
============================================================================"""
import pymel.core as pm
from collections import OrderedDict

def flcOutCrvSort(curves):
    dict_ = {}
    for c in curves:
        shape = c.getShape()
        print(shape)
        flc = shape.create.listConnections()[0]
        flcShape = flc.getShape()
        flcCurve = flcShape.startPositionMatrix.listConnections()[0]
        newname =  flcCurve.name().split('tempCurve')[0] + 'outCurve'
        pm.rename(c,newname)
        if flc.getParent().name() not in dict_.keys():
            dict_[flc.getParent().name()] = [c]
        else:
            dict_[flc.getParent().name()].append(c)
    
    for d in dict_.keys():
        grp = pm.createNode('transform',n='{}_GRP'.format(d))
        dict_[d].sort()
        pm.parent(dict_[d],grp)

def hairsysSort(hairsys):
    tempCrvDict = {}
    for hs in hairsys:
        shape_ = hs.getShape()
        flcs_ = shape_.outputHair.listConnections()
        for f in flcs_:
            tempCrv = f.getChildren(type='transform')[0]
            outCrv_ = f.outCurve.listConnections()[0]
            num_ = tempCrv.name().split('_tempCurve')[0]
            num_ = num_.split('xgGuide')[-1]
            tempCrvDict[num_] = [f,outCrv_]
    keys_ = list(tempCrvDict.keys())
    nums_ = sorted(keys_, key=int)
    tempsort_ = [tempCrvDict[i][0] for i in nums_]
    outsort_ = [tempCrvDict[i][1] for i in nums_]
    newgrp = pm.createNode('transform', n='tempcrv_grp')
    outgrp = pm.createNode('transform', n='outcrv_grp')
    pm.parent(tempsort_, newgrp)
    pm.parent(outsort_, outgrp)

# curves = pm.ls(sl=1,fl=1,r=1)
# flcOutCrvSort(curves)

'''
curves = pm.ls(sl=1,fl=1,r=1)
baseCrv_ = [c.name().split(':')[-1] for c in curves]

newGrp = pm.createNode('transform')
crvdict = OrderedDict()
for i,c in enumerate(curves):
    crvdict[c.name().split('|')[-1]] = c
for b in baseCrv_:
    if b in crvdict.keys():
        pm.parent(crvdict[b].getParent(),newGrp)
'''

hairsys = pm.ls(sl=1,fl=1,r=1)
hairsysSort(hairsys)

# dir(flcs_[0].__class__)
