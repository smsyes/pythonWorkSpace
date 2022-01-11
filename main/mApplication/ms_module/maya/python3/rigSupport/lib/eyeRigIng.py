from pymel.core import *
from rigSupport.lib import _node
try:
    from imp import *
except:
    pass
reload(_node)

def jointReLabel(object_):
    for i in object_:
        if i.getAttr('type') != 18:
            i.attr('type').set(18)
        name_ = i.name().split('Jnt')[0]
        i.attr('otherType').set(name_)

def jointSide(joint_, side):
    for i in joint_:
        i.attr('side').set(side)

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

def division(number,divNum):
    list_ = [0]
    div_ = float(divNum)/float(number)
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
        # poci_.attr('turnOnPercentage').set(1)
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
        pc_.attr('turnOnPercentage').set(1)
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

def surfZipSet(numList, object_):
    surfShape_ = object_.getShape()
    addAttr(object_, ln='zip',at='double',min=0,max=1,dv=1,k=1)
    grp_ = [createNode('transform',n=i) for i in ['ZipAGrp','ZipBGrp','AGrp','BGrp']]
    for i,num in enumerate(numList):
        name_ = '{0}{1}'.format(sel[0].name(),i)
        ps_ = createNode('pointOnSurfaceInfo', n='{0}PS'.format(name_))
        ps_.attr('turnOnPercentage').set(1)
        ps_.attr('parameterU').set(num)
        ps_.attr('parameterV').set(0.5)
        surfShape_.ws >> ps_.inputSurface
        for p in ['A','B']:
            zipPos_ = createNode('transform', n='{0}{1}ZipPos'.format(name_,p))
            Pos_ = spaceLocator(n='{0}{1}Pos'.format(name_,p))
            pb_ = createNode('pairBlend', n='{0}{1}PB'.format(name_,p))
            rm_ = createNode('remapValue', n='{0}{1}RM'.format(name_,p))
            pb_.attr('rotInterpolation').set(1)
            rm_.attr('inputMax').set(num)
            object_.zip >> rm_.inputValue
            Pos_.getShape().worldPosition >> pb_.it1
            rm_.outValue >> pb_.weight
            ps_.position >> pb_.it2
            pb_.ot >> zipPos_.t
            getPos_ = ps_.attr('position').get()
            Pos_.attr('t').set(getPos_)
            if p=='A':
                parent(zipPos_, grp_[0])
                parent(Pos_, grp_[2])
            if p=='B':
                parent(zipPos_, grp_[1])
                parent(Pos_, grp_[3])

def objectCntCurveParam(object_):
    shape_ = object_[-1].getShape()
    numList = division(len(object_[:-1])-1,1)
    for i,num in enumerate(numList):
        name_ = '{0}'.format(object_[i].name())
        pc_ = createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        shape_.ws >> pc_.inputCurve
        pc_.attr('turnOnPercentage').set(1)
        pc_.attr('parameter').set(num)
        pc_.position >> object_[i].t 

def getCrvParamAtObjectPosition(object_):
    paramList = []
    shape_ = object_[-1].getShape()
    for i in object_[:-1]:
        name_ = i.name()
        getTrans_ = i.getMatrix(worldSpace=True)[-1][:-1]
        cpp_ = shape_.closestPoint(getTrans_,param=None,tolerance=0.001,space='preTransform')
        param_ = shape_.getParamAtPoint(cpp_, space='preTransform')
        paramList.append(param_)
    return paramList


def surfacePosAtObject(paramList, object_):
    surfShape_ = object_[-1].getShape()
    
    for i,obj in enumerate(object_[:-1]):
        posShape_ = obj.getShape()
        name_ = obj.name()
        ps_ = createNode('pointOnSurfaceInfo', n='{0}PS'.format(name_))
        rh_ = createNode('rotateHelper', n='{0}RH'.format(name_))
        SurfPos_ = createNode('transform', n='{0}SurfPos'.format(name_))
        surfShape_.ws >> ps_.inputSurface
        ps_.attr('parameterU').set(paramList[i])
        ps_.attr('parameterV').set(0.5)
        ps_.normalizedNormal >> rh_.forward
        ps_.normalizedTangentU >> rh_.up
        ps_.position >> SurfPos_.t
        rh_.r >> SurfPos_.r

def createPos(object_):
    for i in object_:
        name_ = i.name()
        pos_ = createNode('transform', n='{0}Pos'.format(name_))
        parent(pos_, i)
        pos_.attr('t').set([0,0,0])
        pos_.attr('r').set([0,0,0])
        pos_.attr('s').set([1,1,1])
        parent(pos_, w=1)

sel = ls(sl=1)

# shape_ = sel[0].getShape()
# number = 6
# numList = division(number,1)
# numList = [0,1,2,3,4,5,6,7]
# numList = range(shape_.numEPs())
# LocAtCurveParam(numList, sel[0])
# CurveAtObjectPosition(sel)
# surfaceAtPos(sel)
# JntAtCurveParam(numList, sel[0])
# jointReLabel(sel)
# aimJoint(sel)
# locList = LocAtCurveEPPos(sel[0])
# curveCVAtObjects(sel)
# reverseMultMD(sel)
# selectLocator(sel)
# jointSide(sel, 2)
# surfZipSet(numList, sel[0])
# objectCntCurveParam(sel)
# getParamAtObjectPosition(sel)
# paramList = getCrvParamAtObjectPosition(sel)
# JntAtCurveParam(paramList, sel[-1])
# surfacePosAtObject(paramList, sel)
# createPos(sel)

