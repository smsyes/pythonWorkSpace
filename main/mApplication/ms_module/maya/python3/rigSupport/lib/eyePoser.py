from pymel.core import *

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

def getTrans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]

def distSet(object_):
    distTgt_ = object_.attr('dist').listConnections(d=0,s=1)
    for i in distTgt_:
        v0 = getTrans(object_)
        v1 = getTrans(i)
        dist_ = getDistance(v0, v1)
        input_ = i.attr('dist').listConnections(d=0,s=1)[0]
        input_.attr('tz').set(dist_)

def slideSet(object_):
    centerDistance_ = object_.attr('CenterDistance').get()
    slideTgt_ = object_.attr('Slide').listConnections(d=0,s=1)
    
    for i in slideTgt_:
        name_ = i.name()
        maxTgt_ = i.attr('max').listConnections(d=0,s=1)[0]
        minTgt_ = i.attr('min').listConnections(d=0,s=1)[0]
    
        if 'Down' in name_:
            ctd_ = centerDistance_ 
            maxValue_ = maxTgt_.attr('ty').get() -1
            minValue_ = minTgt_.attr('ty').get() +1
        else:
            ctd_ = centerDistance_ *-1
            maxValue_ = maxTgt_.attr('ty').get() +1
            minValue_ = minTgt_.attr('ty').get() -1
        i.attr('inputMin').set(ctd_)
        i.attr('outputMax').set(maxValue_)
        i.attr('outputMin').set(minValue_)
        maxTgt_.attr('ty').set(0)
        minTgt_.attr('ty').set(0)

    
list_ = ls('LeftEyeBallPosLoc', 'RightEyeBallPosLoc')
for i in list_:
    distSet(i)
    slideSet(i)
