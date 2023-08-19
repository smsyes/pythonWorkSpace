import math
import maya.OpenMaya as om
import pymel.core as pm


def getMDagPath(node):
    dag = om.MDagPath()
    sel = om.MSelectionList()
    sel.add(node.name())
    sel.getDagPath(0, dag)
    return dag

def aimSet(node, aimAxis='x', upAxis='y'):

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
    eyePivotPOS = transformFn.rotatePivot(om.MSpace.kWorld)

    transformFn.setObject(targetDag)
    targetPivotPOS = transformFn.rotatePivot(om.MSpace.kWorld)

    aimVector = (targetPivotPOS - eyePivotPOS)

    eyeU = aimVector.normal()

    worldUp = om.MGlobal.upAxis()

    eyeV = worldUp
    eyeW = (eyeU ^ eyeU).normal()

    eyeV = eyeW ^ eyeU

    quaternion = om.MQuaternion()

    quaternionU = om.MQuaternion(Aim_, eyeU)
    quaternion = quaternionU

    upRotated = Up_.rotateBy(quaternion)

    angle = math.acos(upRotated*eyeV)

    quaternionV = om.MQuaternion(angle, eyeU)

    if not eyeV.isEquivalent(upRotated.rotateBy(quaternionV), 1.0e-5):
        angle = (2*math.pi) - angle
        quaternionV = om.MQuaternion(angle, eyeU)

    quaternion *= quaternionV
    transformFn.setObject(item_)
    transformFn.setRotation(quaternion)
    
"""
sel = pm.ls(sl=1,fl=1,r=1)
aimSet(sel, aimAxis='x', upAxis='y')
"""