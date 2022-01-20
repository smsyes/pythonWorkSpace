from pymel.core import *

def division(number,divNum):
    list_ = []
    div_ = float(divNum)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def jointFromCrvNearPos(curves):
    curve1_, curve2_ = curves[0], curves[1]
    shape_ = curve1_.getShape()
    numList = division(shape_.numEPs(),1)
    name_ = curve2_.name()
    for i,num in enumerate(numList):
        pc1_ = createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        curve1_.getShape().ws >> pc1_.inputCurve
        pc2_ = createNode('pointOnCurveInfo', n='{0}PC'.format(name_))
        curve2_.getShape().ws >> pc2_.inputCurve
        np_ = createNode("nearestPointOnCurve", n='{0}NP'.format(name_))
        jnt_ = joint(n='{0}Jnt'.format(name_))
        pc1_.attr('parameter').set(num)
        pc1_.attr('turnOnPercentage').set(1)
        curve2_.getShape().ws >> np_.inputCurve
        pc1_.position >> np_.inPosition
        nParm_ = np_.getAttr('parameter')
        pc2_.attr('parameter').set(nParm_)
        pc2_.position >> jnt_.t
        delete(pc1_, np_)

'''
첫번째 커브의 CV갯수만큼 조인트 생성
첫번째커브의 CV 포지션에서 가까운 두번쨰 커브의 Parameter값 생성
생성된 조인트를 두번째 커브의 Paramter 포지션에 연결
'''
# CV갯수만큼 조인트 생성할 커브 선택하고, 생성된 조인트를 연결할 커브 선택하고 실행
sel = ls(sl=1)
jointFromCrvNearPos(sel)