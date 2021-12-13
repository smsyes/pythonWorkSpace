from pymel.core import *
from rigSupport.lib import _node
try:
    from imp import *
except:
    pass
reload(_node)

def division(number):
    list_ = [0]
    div_ = float(1)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def LocAtCurveParam(numList, curve_):
    for i,num in enumerate(numList):
        name_ = curve_.name()
        poci_ = _node.pointOnCurveInfo_(curve_)
        loc_ = spaceLocator(n = '{0}{1}Space'.format(name_,i))
        poci_.attr('parameter').set(num)
        poci_.position >> loc_.t
        
def CurveAtObjectPosition(object_):
    name_ = object_[0].name()
    pos_ = [i.getMatrix(worldSpace=True)[-1][:-1] for i in object_]
    curve(n='{0}Crv'.format(name_),d=1,p=pos_)

def surfaceAtPos(object_):
    surfShape_ = object_[-1].getShape()
    
    for i in object_[:-1]:
        posShape_ = i.getShape()
        name_ = i.name()
        cs_ = createNode('closestPointOnSurface', n='{0}CS'.format(name_))
        ps_ = createNode('pointOnSurfaceInfo', n='{0}PS'.format(name_))
        rh_ = createNode('rotateHelper', n='{0}RH'.format(name_))
        SurfPos_ = createNode('transform', n='{0}SurfPos'.format(name_))
        posShape_.worldPosition >> cs_.inPosition
        surfShape_.ws >> cs_.inputSurface
        surfShape_.ws >> ps_.inputSurface
        cs_.parameterU >> ps_.parameterU
        cs_.parameterV >> ps_.parameterV
        ps_.normalizedNormal >> rh_.forward
        ps_.normalizedTangentU >> rh_.up
        ps_.position >> SurfPos_.t
        rh_.r >> SurfPos_.r

def JntAtCurveParam(numList, curve_):
    shape_ = curve_.getShape()
    for i,num in enumerate(numList):
        name_ = '{0}{1}'.format(curve_.name(),i)
        pc_ = createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        jnt_ = joint(n='{0}Jnt'.format(name_))
        shape_.ws >> pc_.inputCurve
        pc_.attr('parameter').set(num)
        pc_.position >> jnt_.t

sel = ls(sl=1)

# curve_ = sel[0]
# number = 8
# numList = division(number)
# numList = [0,1,2,3,4,5,6,7]
# LocAtCurveParam(numList, curve_)
# CurveAtObjectPosition(sel)
# surfaceAtPos(sel)
shape_ = sel[0].getShape()
numList = range(shape_.numEPs())
JntAtCurveParam(numList, sel[0])
'''
upLidCrv = PyNode(polyToCurve(n='upLid',form=0,degree=1,usm=1)[0])
shape_ = upLidCrv.getShape()
numList = range(shape_.numCVs())
LocAtCurveParam(numList, upLidCrv)
'''