from pymel.core import *
from rigSupport.lib import _node
try:
    from imp import *
except:
    pass
reload(_node)

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
        loc_ = spaceLocator(n = '{0}{1}Pos'.format(name_,i))
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

def joint_(name_):
    select(cl=1)
    return joint(n=name_)

def aimJoint(object_):
    centerTrans_ = object_[-1].getMatrix(worldSpace=True)[-1][:-1]
    for i in object_[:-1]:
        name_ = i.name()
        getTrans_ = i.getMatrix(worldSpace=True)[-1][:-1]
        jnt1_ = joint_('{0}AimJnt'.format(name_))
        jnt2_ = joint_('{0}Jnt'.format(name_))
        jnt1_.attr('t').set(centerTrans_)
        aimConstraint(i,jnt1_,
                      mo=0,
                      w=1,
                      aim=[1,0,0],
                      u=[0,1,0],
                      wut='objectrotation',
                      wu=[0,1,0],
                      wuo=object_[-1])
        dist_ = getDistance(centerTrans_, getTrans_)
        jnt2_.attr('t').set(centerTrans_)
        parent(jnt2_, jnt1_)
        jnt2_.attr('jo').set(0,0,0)
        jnt2_.attr('tx').set(dist_)    

def LocAtCurveEPPos(curve_):
    locList = []
    shape_ = curve_.getShape()
    epNum = shape_.numEPs()
    for i in range(epNum):
        name_ = curve_.name()
        cvPos = shape_.getCV(i)
        loc_ = spaceLocator(n = '{0}{1}Pos'.format(name_,i))
        loc_.attr('t').set(cvPos)
        locList.append(loc_)
    return locList

def curveCVAtObjects(object_):
    crvShape_ = object_[-1].getShape()
    for i,obj in enumerate(object_[:-1]):
        shape_ = obj.getShape()
        shape_.worldPosition[0] >> crvShape_.controlPoints[i]

def reverseMultMD(object_):
    name_ = object_[0].name()
    rvsMult_ = shadingNode('multiplyDivide', au=1, n='{0}RvsMultMD'.format(name_))
    object_[0].t >> rvsMult_.i1
    rvsMult_.attr('i2').set([-1,-1,-1])
    rvsMult_.o >> object_[1].t

def selectLocator(object_):
    for i in object_:
        name_ = i.name()
        pos_ = i.getMatrix(worldSpace=True)[-1][:-1]
        loc_ = spaceLocator(n='{0}Pos'.format(name_), p=pos_)

sel = ls(sl=1)

# curve_ = sel[0]
# shape_ = sel[0].getShape()
# number = 2
# numList = division(number)
# numList = [0,1,2,3,4,5,6,7]
# numList = range(shape_.numEPs())
# LocAtCurveParam(numList, curve_)
# CurveAtObjectPosition(sel)
# surfaceAtPos(sel)
# JntAtCurveParam(numList, sel[0])
# aimJoint(sel)
# locList = LocAtCurveEPPos(sel[0])
# curveCVAtObjects(sel)
# reverseMultMD(sel)
# selectLocator(sel)



