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

curves = pm.ls(sl=1,fl=1,r=1)
flcOutCrvSort(curves)

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

