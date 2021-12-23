from pymel.core import *

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

# 포지션 값을 받아올 오브젝트들 선택[:-1], 서페이스 선택[-1]        
sel = ls(sl=1)
surfaceAtPos(sel)