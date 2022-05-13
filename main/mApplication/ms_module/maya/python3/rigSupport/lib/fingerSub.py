
# -*- coding: utf-8 -*-
"""============================================================================
finger sub joint setup
============================================================================"""
import pymel.core as pm

def pb_(name_):
    return pm.createNode('pairBlend',n='{}_PB'.format(name_))

def halfList(object_):
    half = int(len(object_)/2)
    items = object_[:half]
    targets = object_[half:]
    return items,targets

def halfRot(object_):
    items, targets = halfList(object_)

    for i,it in enumerate(items):
        pb = pb_(targets[i].name())
        pb.rotInterpolation.set(1)
        pb.weight.set(0.5)
        it.r >> pb.ir2
        pb.outRotate >> targets[i].r

def setDriven_(iAttr,tAttr,dv_,v_):
    pm.setDrivenKeyframe(tAttr,cd=iAttr)
    for i,d in enumerate(dv_):
        pm.setDrivenKeyframe(tAttr,cd=iAttr,dv=d,v=v_[i])

def fingerSDK(iAttr,tAttr,dv_,v_):
    setDriven_(iAttr,tAttr,dv_,v_)

sel = pm.ls(sl=1,fl=1,r=1)
# halfRot(sel)
fingerSDK(sel[0].ry,sel[1].tz,[-45],[-1])
# fingerSDK(sel[0].ry,sel[2].tz,[45],[1])