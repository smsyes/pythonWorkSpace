import math

import maya.OpenMaya as OpenMaya

from pymel.core import datatypes

##########################################################################################
# Vectro Operations
##########################################################################################

def getDistance(v0, v1):
    """
    Arguments:
        v0 (Vector): Vector A.
        v1 (Vector): Vector B.

    Returns:
        float: Distance Length.
    """

    v = v1 - v0
    
    return v.length()

def getDistance2(obj0, obj1):
    """
    Arguments:
        obj0 (dagNode): Object A.
        obj1 (dagNode): Object B.

    Returns:
        float: Distance Length.
    """

    v0 = obj0.getTranslation(space='world')
    v1 = obj1.getTranslation(space='world')

    v = v1 - v0

    return v.length()

def linearlyInterpolate(v0, v1, blend=.5):
    """
    Arguments:
        v0 (vector): vector A.
        v1 (vector): vector B.
        blend (float): Blending value.
    Returns:
        vector: The interpolated vector.
    """

    vector = v1 - v0
    vector *= blend
    vector += v0

    return vector

def getPlaneNormal(v0, v1, v2):
    """
    Arguments:
        v0 (vector): First position on the plane.
        v1 (vector): Second position on the plane.
        v2 (vector): Third position on the plane.
    Returns:
        vector: The normal.
    """
    vector0 = v1 - v0
    vector1 = v2 - v0
    vector0.normalize()
    vector1.normalize()

    normal = vector1 ^ vector0
    normal.normalize()

    return normal