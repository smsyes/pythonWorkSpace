from pymel.core import *

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2

def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}localMM'.format(name_))
    return _node
    
def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}localDM'.format(name_))
    return _node

def eularToQuat_(name_):
    _node = shadingNode('eulerToQuat', au=1, n='{}jointOrietnEQ'.format(name_))
    return _node

def quatInvert_(name_):
    _node = shadingNode('quatInvert', au=1, n='{}QI'.format(name_))
    return _node

def quatProd_(name_):
    _node = shadingNode('quatProd', au=1, n='{}QP'.format(name_))
    return _node
    
def quatToEuler_(name_):
    _node = shadingNode('quatToEuler', au=1, n='{}QE'.format(name_))
    return _node

def MCon(object_, t_=None, r_=None, s_=None, maintain=None):
    item_, target_ = object_[0], object_[1]
    name_ = target_.name()
    MM = multMatrix_(name_)
    DM = decompose_(name_)
    if target_.type() == 'joint':
        jointOrietnEQ = eularToQuat_(name_)
        QI = quatInvert_(name_)
        QP = quatProd_(name_)
        QE = quatToEuler_(name_)
    mat1_ = getTransform(target_)
    mat2_ = getInverseTransform(item_)
    multmat_ = getMultMatrix(mat1_, mat2_)

    if maintain == 1:
        MM.attr('matrixIn[0]').set(multmat_)
    else:
        pass

    item_.wm >> MM.matrixIn[1]
    target_.pim >> MM.matrixIn[2]
    MM.matrixSum >> DM.inputMatrix
    if target_.type() == 'joint':
        target_.r >> jointOrietnEQ.inputRotate
        jointOrietnEQ.outputQuat >> QI.inputQuat
        DM.outputQuat >> QP.input1Quat
        QI.outputQuat >> QP.input2Quat
        QP.outputQuat >> QE.inputQuat
    if t_:
        DM.ot >> target_.t
    if r_:
        if target_.type() == 'joint':
            QE.outputRotate >> target_.jo
            target_.attr('r').set([0,0,0])
        else:
            DM.outputRotate >> target_.r
    if s_:
        DM.os >> target_.s

def division(number,divNum):
    list_ = []
    div_ = float(divNum)/float(number)
    for i in range(number+1):
        i+1
        list_.append(i*div_)
    return list_

def PosFromCrvNearPos(curves):
    posList = []
    curve1_, curve2_ = curves[0], curves[1]
    shape_ = curve1_.getShape()
    numList = division(shape_.numEPs()-1,1)
    name_ = curve2_.name()
    for i,num in enumerate(numList):
        pc1_ = createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        curve1_.getShape().ws >> pc1_.inputCurve
        pc2_ = createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        curve2_.getShape().ws >> pc2_.inputCurve
        np_ = createNode("nearestPointOnCurve", n='{0}NP'.format(name_))
        pos = createNode('transform', n='{}Pos'.format(name_))
        pc1_.attr('parameter').set(num)
        pc1_.attr('turnOnPercentage').set(1)
        curve2_.getShape().ws >> np_.inputCurve
        pc1_.position >> np_.inPosition
        nParm_ = np_.getAttr('parameter')
        pc2_.attr('parameter').set(nParm_)
        pc2_.position >> pos.t
        delete(pc1_, np_)
        posList.append(pos)
    return posList

def joint_(object_):
    jntList = []
    for i in object_:
        name_ = i.name()
        select(cl=1)
        jnt = joint(n='{}Jnt'.format(name_))
        matchTransform(jnt, i)
        jntList.append(jnt)
    return jntList

def AimPos(object_, center, upVec):
    posList = []
    for i in object_:
        name_ = i.name()
        pos = createNode('transform', n='{}Pos'.format(name_))
        matchTransform(pos, center)
        aimConstraint(i,pos,mo=1,weight=1,
                        aimVector=(0, 0, 1),upVector=(0, 1, 0),
                        worldUpType="objectrotation",
                        worldUpVector=(0, 1, 0),
                        worldUpObject=upVec)
        posList.append(pos)
    return posList

'''
첫번째 커브의 CV갯수만큼 조인트 생성
첫번째커브의 CV 포지션에서 가까운 두번쨰 커브의 Parameter값 생성
생성된 조인트를 두번째 커브의 Paramter 포지션에 연결

1. CV갯수만큼 Pos 생성할 커브 선택
2. 생성된 Pos를 연결할 커브 선택하고 실행
3. Center 포지션 값 가져올 오브젝트 선택
4. UpVector로 설정할 오브젝트 선택.
스크립트 실행.
'''

sel = ls(sl=1)
pos = PosFromCrvNearPos(sel[:-2])
jnt = joint_(pos)
aim = AimPos(pos, sel[-2], sel[-1])
[parent(j,aim[i]) for i,j in enumerate(jnt)]

for i,p in enumerate(pos):
    MCon(ls(p,jnt[i]), t_=1, r_=1, s_=0, maintain=1)