# -*- coding: utf-8 -*-
"""============================================================================
FK to IK Snap Bake


__AUTHOR__ = 'minsung'
__UPDATE__ = 20230109

:Example:
import pymel.core as pm
from lib import FKIKSnap
reload(FKIKSnap)

# Please select in the order of FKJnts(st~en), IKCTRL, IKPV
sel = pm.ls(sl=1,fl=1,r=1)
ikBake(sel)

# Please select in the order of FKCtrl(3n), IKJnts(3n)
fkBake(sel)
============================================================================"""
import pymel.core as pm
import maya.OpenMaya as om


# get positions from fk
def fkPos(fklist_):
    Raw_ = pm.xform(fklist_, ws=True, q=True, t=True)
    return(om.MVector(Raw_[0], Raw_[1], Raw_[2]))

# Get the polvector position based on the FK joint pose.
def pvPos(fklist_):
    fkPoss = [fkPos(fk) for fk in fklist_]
    #find avg (midpoint) of shoulder and wrist
    midpoint = (fkPoss[2] + fkPoss[0]) / 2
    #find pv direction
    pvOrigin = fkPoss[1] - midpoint
    #extend that length
    pvRaw = pvOrigin * 2
    #position pvRaw at midpoint
    return(pvRaw + midpoint)

# Returns the start and end frame information of the timeline.
def getPlayback():
    start_frame = pm.playbackOptions(q=True, min=True)
    end_frame = pm.playbackOptions(q=True, max=True)
    print("Start frame:", start_frame)
    print("End frame:", end_frame)
    return start_frame, end_frame

# Snap the IK controller and PoleVecor.
def ikSnap(list_):
    fkenPos_ = fkPos(list_[3])
    pm.move(fkenPos_.x, fkenPos_.y, fkenPos_.z, list_[4])
    pm.matchTransform(list_[4], list_[3], rot=1)
    pvPos_ = pvPos(list_[:3])
    pm.move(pvPos_.x, pvPos_.y, pvPos_.z, list_[5])
    
# Bake the IKSnap each frame.
def ikBake(list_):
    stf, enf = getPlayback()
    for i in range(int(enf)):
        pm.currentTime(i+1)
        ikSnap(list_)
        for iks in list_[4:]:
            pm.setKeyframe(iks,at='translate',t=[i+1,i+1])
            pm.setKeyframe(iks,at='rotate',t=[i+1,i+1])
        print('Current Frame:{} IK Baked'.format(i+1))

def fkSnap(list_):
    for i,fk in enumerate(list_[:3]):
        pm.matchTransform(fk, list_[i+3], rot=1)
        pm.matchTransform(fk, list_[i+3], pos=1)

def fkBake(list_):
    stf, enf = getPlayback()
    for i in range(int(enf)):
        pm.currentTime(i+1)
        fkSnap(list_)
        for fks in list_[:3]:
            pm.setKeyframe(fks,at='translate',t=[i+1,i+1])
            pm.setKeyframe(fks,at='rotate',t=[i+1,i+1])
        print('Current Frame:{} IK Baked'.format(i+1))

