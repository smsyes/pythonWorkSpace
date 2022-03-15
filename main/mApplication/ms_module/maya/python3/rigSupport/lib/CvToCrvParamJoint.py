from pymel.core import *

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

def AimPos(object_, center):
    posList = []
    for i in object_:
        name_ = i.name()
        pos = createNode('transform', n='{}Pos'.format(name_))
        matchTransform(pos, center)
        aimConstraint(i,pos,mo=1,weight=1,
                        aimVector=(0, 0, 1),upVector=(0, 1, 0),
                        worldUpType="objectrotation",
                        worldUpVector=(0, 1, 0),
                        worldUpObject='RightEyeLidCCtrl')
        posList.append(pos)
    return posList

'''
첫번째 커브의 CV갯수만큼 조인트 생성
첫번째커브의 CV 포지션에서 가까운 두번쨰 커브의 Parameter값 생성
생성된 조인트를 두번째 커브의 Paramter 포지션에 연결
'''
# 1. CV갯수만큼 Pos 생성할 커브 선택, 2. 생성된 Pos를 연결할 커브 선택하고 실행, 3.Center 포지션 값 가져올 오브젝트 선택
sel = ls(sl=1)
pos = PosFromCrvNearPos(sel[:-1])
jnt = joint_(pos)
aim = AimPos(pos, sel[-1])
[parent(j,aim[i]) for i,j in enumerate(jnt)]
