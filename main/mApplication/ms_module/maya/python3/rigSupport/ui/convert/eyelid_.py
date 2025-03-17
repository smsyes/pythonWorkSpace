#-*- coding: utf-8 -*-
"""
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20200204

:Example:z
from rig.Core import Unit
reload(Unit)
"""

import pymel.core as pm

def eyeRoot():
    cengroup_ = pm.createNode('transform', n='eyeRoot_grp')
    center_ = pm.spaceLocator(n='eyeRoot')
    pm.addAttr(center_, ln='radius', at='double', dv=1, k=1)
    guide_ = pm.polySphere(n='eyeguide')
    center_. radius >> guide_[-1].radius
    deform_ = pm.lattice(dv=(2,2,2), n='guideDeform',oc=1)
    deform_[0].local.set(1)
    deform_[0].outsideLattice.set(1)
    pm.parent(center_,cengroup_)
    pm.parent(guide_[0],center_)
    pm.parent(deform_,cengroup_)
    return center_

def offSet(object_, w=None):
    for i in object_:
        name_ = i.name()
        getTransform_ = i.getMatrix(worldSpace=True)
        node_ = pm.createNode('transform', n='{0}_offset'.format(i))
        node_.setMatrix(getTransform_)
        if w == 0:
            getParent_ = i.getParent()
            pm.parent(node_, getParent_)
        pm.parent(i, node_)

def controlCurve(ptc_):
    vtxnum_ = ptc_.getShape().numCVs()
    ptcCvs_ = ptc_.getShape().getCVs()
    print(vtxnum_)

    controlcurve_ = pm.duplicate(ptc_)
    pm.rename(controlcurve_[0],'controlCurve')
    pm.rebuildCurve(controlcurve_[0], ch=0,s=4,d=3,tol=0.01)
    cls_ = pm.cluster(controlcurve_[0])
    pm.delete(cls_)
    pm.rebuildCurve(controlcurve_[0], ch=1,s=vtxnum_,d=1,tol=0.01)

    controlShape_ = controlcurve_[0].getShape()
    controlOrig_ = controlcurve_[0].getShapes()[-1]
    controlCvs_ = controlOrig_.getCVs()
    controlEps_ = controlOrig_.numCVs()

    [controlShape_.setCV(i,pos) for i,pos in enumerate(ptcCvs_)]
    pm.delete(ptc_)

    locs = [pm.spaceLocator(n='control') for i in range(controlEps_)]
    [locs[i].t.set(p) for i,p in enumerate(controlCvs_)]
    [loc.getShape().wp >> controlOrig_.cp[i] for i,loc in enumerate(locs)]

    pm.parent(locs[1], locs[0])
    pm.parent(locs[2], locs[3])
    pm.parent(locs[4], locs[3])
    pm.parent(locs[5], locs[6])
    offSet(locs,w=0)
    pm.parentConstraint(locs[0], locs[3], locs[1].getParent(), mo=1)
    pm.parentConstraint(locs[0], locs[3], locs[2].getParent(), mo=1)
    pm.parentConstraint(locs[6], locs[3], locs[5].getParent(), mo=1)
    pm.parentConstraint(locs[6], locs[3], locs[4].getParent(), mo=1)
    
    locs_ = LocAtCurve(range(vtxnum_), controlcurve_[0])
    
    return controlcurve_, locs_


def LocAtCurve(numList, curve_):
    shape_ = curve_.getShape()
    locs_ = []
    for i,num in enumerate(numList):
        name_ = '{0}{1}'.format(curve_.name(),i)
        pc_ = pm.createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        loc_ = pm.spaceLocator(n='{0}pos'.format(name_))
        shape_.ws >> pc_.inputCurve
        pc_.attr('turnOnPercentage').set(0)
        pc_.attr('parameter').set(num)
        pc_.position >> loc_.t
        locs_.append(loc_)
    return locs_

sel = pm.ls(sl=1,r=1) 
# shape_ = sel[0].getShape()
# cvnum_ = shape_.numCVs()
# ikh_ = shape_.ws.listConnections()[0]
# stJoint_ = ikh_.startJoint.listConnections()[0]
# joints_ = stJoint_.listRelatives(ad=1,typ='joint') + [stJoint_]
# joints_.reverse()
# dir(stJoint_.__class__)

# center_ = eyeRoot()

ptc_ = pm.polyToCurve(n='ptc', dg=1)
ptc_ = pm.PyNode(ptc_[0])
controlcurve_, loc_ = controlCurve(ptc_)



controlcurve_[0].getShape().numEPs()


# dir(ptc_.getShape().__class__)
sel[0].connectedVertices()