import pymel.core as pm



def ikjoints_(crv_, num_=3, _oj='xyz', _sao='yup'):
    dup_ = pm.duplicate(crv_)[0]
    pm.makeIdentity(dup_, apply=True, t=1,r=1,s=1,n=0,pn=1)
    shape_ = dup_.getShape()
    #EPs_ = shape_.numEPs()
    nums = [+1/(num_-1) for i in range(num_)[1:-1]]
    nums.insert(0,0)
    nums.append(1)
    ikJoints = []
    pm.select(cl=1)
    p_ = 0
    for i,n_ in enumerate(nums):
        point_ = shape_.getPointAtParam(n_)
        ikJoints.append(pm.joint(n='{}_{}_joint'.format(crv_.name(),i), p=point_))

    pm.select(cl=1)
    pm.joint(ikJoints[0], e=1, oj=_oj, sao=_sao, ch=1, zso=1)
    ikJoints[-1].jo.set(0,0,0)
    pm.delete(dup_)

    return ikJoints

def attachs_(crv_, ikJoints):
    atJoints = []
    atCtrls = []
    sideName = ['st','en']
    for i,j_ in enumerate([ikJoints[0],ikJoints[-1]]):
        name_ = '{0}_{1}'.format(crv_.name(),sideName[i])
        joint_ = pm.joint(n='{0}joint'.format(name_))
        ctrl = crvShape_(name_,triangle,j_)
        pm.select(cl=1)
        pm.matchTransform(joint_,j_)
        atCtrls.append(ctrl)
        atJoints.append(joint_)
        pm.select(cl=1)

    pm.parent(atCtrls[1], atCtrls[0])
    
    return atJoints, atCtrls


def freezeOffset_(list_):
    for i in list_:
        matrix_ = i.getMatrix()
        i.offsetParentMatrix.set(matrix_)
        if i.type() == 'joint':
            i.jo.set((0,0,0))
        i.t.set((0,0,0))
        i.r.set((0,0,0))
        i.s.set((1,1,1))

def crvShape_(name_,list_,node_):
    crv_ = pm.curve(d = list_[0], 
                 p = list_[1], 
                 k = list_[2])
    crv_.rename('{}ctrl'.format(name_))
    pm.matchTransform(crv_, node_)
    return crv_

def createikHandle_(crv_,ikJoints,atJoints):
    
    ikhandle_ = pm.ikHandle(n='{}ikHandle'.format(crv_.name()),
    sol='ikSplineSolver',ccv=False,pcv=False,sj=ikJoints[0],
    ee=ikJoints[-1],c=crv_)
    ikhandle_[0].dTwistControlEnable.set(1)
    ikhandle_[0].dWorldUpType.set(4)
    atJoints[0].wm >> ikhandle_[0].dWorldUpMatrix
    atJoints[1].wm >> ikhandle_[0].dWorldUpMatrixEnd
    return ikhandle_[0]

def aimMatrix_(pos_, aim_, target):
    
    name_ = target.name()
    up_ = pm.spaceLocator(n='{0}_up'.format(name_))
    pm.matchTransform(up_, pos_)
    target_ = pm.spaceLocator(n='{0}_target'.format(name_))
    pm.matchTransform(target_, target)
    pm.parent(up_, pos_)
    target_.t.set(0,0,0)
    target_.r.set(0,0,0)
    target_.s.set(1,1,1)
    up_.ty.set(5)
    am_ = pm.createNode('aimMatrix',n='{0}_am'.format(name_))
    am_.secondaryMode.set(1)

    pos_.worldMatrix >> am_.inputMatrix
    aim_.worldMatrix >> am_.primaryTargetMatrix
    up_.worldMatrix >> am_.secondaryTargetMatrix
    am_.outputMatrix >> target_.offsetParentMatrix
    return up_, target_

def CurveAtObjectPosition(object_,name_):
    pos_ = [i.getMatrix(worldSpace=True)[-1][:-1] for i in object_]
    curve_ = pm.curve(n='{0}Crv'.format(name_),d=1,p=pos_)
    return curve_

def LocAtCurveParam(numList, curve_):
    locs = []
    for i,num in enumerate(numList):
        name_ = curve_.name()
        poci_ = pointOnCurveInfo_(curve_)
        loc_ = pm.spaceLocator(n = '{0}{1}Pos'.format(name_,i))
        poci_.attr('parameter').set(num)
        poci_.position >> loc_.t
        locs.append(loc_)
    return locs

def group_(name_):
    return  pm.createNode('transform',n='{0}Grp'.format(name_))

def offsetMatrixConnect(item_, target_):
    # mm = pm.shadingNode('multMatrix', au=1, n='{0}_MM'.format(target_))
    # target_.pim >> mm.matrixIn[0]
    # item_.worldMatrix >> mm.matrixIn[1]
    item_.wm >> target_.offsetParentMatrix    

def pointOnCurveInfo_(curve_):
    _shape = curve_.getShape()
    _node = pm.createNode('pointOnCurveInfo', n='{}PC'.format(curve_.name()))
    _shape.ws >> _node.ic
    return _node    

def ik_at_joints(crvs_, oj_, sao_, num_):
    posDict = {}
    posDict['atJoints'] = []
    posDict['atCtrls'] = []
    ikGrps = []

    for i in crvs_:
        ikGrp_ = group_('{0}_{1}'.format(i.name(), 'ik'))
        ikJoints = ikjoints_(i, num_, _oj=oj_, _sao=sao_)
        atJoints, atCtrls = attachs_(i, ikJoints)
        pm.parent([ikJoints[0],atJoints],ikGrp_)
        ikHandle_ = createikHandle_(i,ikJoints,atJoints)
        pm.parent(ikHandle_,ikGrp_)
        pm.skinCluster(atJoints,i)
        posDict['atJoints'].append(atJoints)
        posDict['atCtrls'].append(atCtrls)
        freezeOffset_(ikJoints+atJoints)
        ikGrps.append(ikGrp_)

    stAtPos = [i[0] for i in posDict['atJoints']]
    enAtPos = [i[-1] for i in posDict['atJoints']]
    enCtrls = [i[0] for i in posDict['atCtrls']]
    return posDict,stAtPos,enAtPos,enCtrls,ikGrps

def atCurve(stAtPos,enAtPos,baseName):
    stAtCurve = CurveAtObjectPosition(stAtPos, '{0}_st'.format(baseName))
    enAtCurve = CurveAtObjectPosition(enAtPos, '{0}_en'.format(baseName))
    return stAtCurve, enAtCurve

def posLoc(stAtPos,stAtCurve,enAtCurve,enAtPos,baseName,crvsName,posDict):
    stAtCurveShape_ = stAtCurve.getShape()
    stNumList = list(range(stAtCurveShape_.numEPs()))
    stLocs = LocAtCurveParam(stNumList, stAtCurve)
    [pm.matchTransform(st,stAtPos[i]) for i,st in enumerate(stLocs)]
    stLocsGrp = group_('{0}_pos'.format(baseName))
    pm.parent(stLocs,stLocsGrp)

    enAtCurveShape_ = enAtCurve.getShape()
    enNumList = list(range(enAtCurveShape_.numEPs()))
    enLocs = LocAtCurveParam(enNumList, enAtCurve)
    [pm.matchTransform(en,enAtPos[i]) for i,en in enumerate(enLocs)]
    stLocsGrp = group_('{0}_aim'.format(baseName))
    pm.parent(enLocs,stLocsGrp)

    ikCtrls = [crvShape_('{0}_aim_'.format(crvsName[i]),pin,en) for i,en in enumerate(enLocs)]
    [pm.parent(c, enLocs[i]) for i,c in enumerate(ikCtrls)]
    [freezeOffset_(i) for i in posDict['atCtrls']]
    return stLocs,ikCtrls
    
def ikAim(baseName,stLocs,enAtPos,ikCtrls,enCtrls,posDict,ikGrps):
    targets = []
    targetGrp = group_('{0}_target'.format(baseName))
    for i,en in enumerate(enAtPos):
        up_, target_ = aimMatrix_(stLocs[i], ikCtrls[i], en)
        targets.append(target_)
        pm.parent(target_, targetGrp)
    [pm.parent(c, targets[i]) for i,c in enumerate(enCtrls)]

    for i,at in enumerate(posDict['atCtrls']):
        for j,a in enumerate(at):
            offsetMatrixConnect(a, posDict['atJoints'][i][j])
      
    ikGrp = group_('{0}_ik'.format(baseName)) 
    pm.parent(ikGrps,ikGrp) 


triangle = [1,[(0,0,-1),(0,0,1),(2,0,0),(0,0,-1)],[0,1,2,3]]
pin = [1, [(0,0,0),(0,4,0),(0,4.07612,0.382683),
(0,4.292893,0.707107),(0,4.617317,0.92388),(0,5,1),(0,5.382683,0.92388),
(0,5.707107,0.707107),(0,5.92388,0.382683),(0,6,0),(0,5.92388,-0.382683),
(0,5.707107,-0.707107),(0,5.382683,-0.92388),(0,5,-1),(0,4.617317,-0.92388),
(0,4.292893,-0.707107),(0,4.07612,-0.382683),(0,4,0)], [0,1,2,3,4,5,6,7,8,9,10,
11,12,13,14,15,16,17]]

crvs_ = pm.ls(sl=1,fl=1,r=1)
baseName = 'flightTail'
oj_='xyz'
sao_='yup'
num_=3
crvsName = [i.name() for i in crvs_]

posDict,stAtPos,enAtPos,enCtrls,ikGrps = ik_at_joints(crvs_, oj_, sao_, num_)
stAtCurve, enAtCurve = atCurve(stAtPos,enAtPos,baseName)
stLocs,ikCtrls = posLoc(stAtPos,stAtCurve,enAtCurve,enAtPos,baseName,crvsName,posDict)
ikAim(baseName,stLocs,enAtPos,ikCtrls,enCtrls,posDict,ikGrps)