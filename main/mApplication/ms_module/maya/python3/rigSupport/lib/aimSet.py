import math
import maya.OpenMaya as om
import pymel.core as pm


def getMDagPath(node):
    dag = om.MDagPath()
    sel = om.MSelectionList()
    sel.add(node.name())
    sel.getDagPath(0, dag)
    return dag

def aimSet(node, aimAxis=None, upAxis=None, rev_=None):

    if aimAxis == 'x':
        Aim_ = om.MVector().xAxis
    elif aimAxis == 'y':
        Aim_ = om.MVector().yAxis
    elif aimAxis == 'z':
        Aim_ = om.MVector().zAxis

    if upAxis == 'x':
        Up_ = om.MVector().xAxis
    elif upAxis == 'y':
        Up_ = om.MVector().yAxis
    elif upAxis == 'z':
        Up_ = om.MVector().zAxis

    
    item_ = getMDagPath(node[0])
    targetDag = getMDagPath(node[1])

    transformFn = om.MFnTransform(item_)
    itemPivotPOS = transformFn.rotatePivot(om.MSpace.kWorld)

    transformFn.setObject(targetDag)
    targetPivotPOS = transformFn.rotatePivot(om.MSpace.kWorld)

    if rev_ == 1:
        aimVector = (itemPivotPOS - targetPivotPOS)
    else:
        aimVector = (targetPivotPOS - itemPivotPOS)
    

    itemU = aimVector.normal()

    worldUp = om.MGlobal.upAxis()

    itemV = worldUp
    itemW = (itemU ^ itemV).normal()

    itemV = itemW ^ itemU

    quaternion = om.MQuaternion()

    quaternionU = om.MQuaternion(Aim_, itemU)
    quaternion = quaternionU

    upRotated = Up_.rotateBy(quaternion)

    angle = math.acos(upRotated*itemV)

    quaternionV = om.MQuaternion(angle, itemU)

    if not itemV.isEquivalent(upRotated.rotateBy(quaternionV), 1.0e-5):
        angle = (2*math.pi) - angle
        quaternionV = om.MQuaternion(angle, itemU)

    quaternion *= quaternionV
    transformFn.setObject(item_)
    transformFn.setRotation(quaternion)
    
"""
sel = pm.ls(sl=1,fl=1,r=1)
aimSet(sel, aimAxis='x', upAxis='y', rev_=0)
"""
