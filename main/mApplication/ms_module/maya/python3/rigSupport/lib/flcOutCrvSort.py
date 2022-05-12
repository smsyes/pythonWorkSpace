# -*- coding: utf-8 -*-
"""============================================================================
follicle hair output curve grouping
============================================================================"""
import pymel.core as pm

def flcOutCrvSort(curves):
    dict_ = {}
    for c in curves:
        shape = c.getShape()
        flc = shape.create.listConnections()[0]
        flcShape = flc.getShape()
        flcCurve = flcShape.startPosition.listConnections()[0]
        newname = 'outCurve' + flc.name().split('follicle')[-1]
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
