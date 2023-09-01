# -*- coding: utf-8 -*-
"""============================================================================
기본 MiscTools를 사용하여 Tantacle 리깅 진행 후 Stretch setup등 추가.
============================================================================"""
import pymel.core as pm

# normalize값 연결해줄 multDobleLinear생성 및 연결.
def parameterConnection(curve_):
    list_ = curve_.getShape().ws.listConnections()
    
    paramMLs = []
    for i in list_:
        if i.type()=='pointOnCurveInfo':
            name_ = i.name()
            slide = i.parameter.listConnections()
            if slide:
                i.parameter.disconnect()
                paramML = pm.shadingNode('multDoubleLinear',au=1,n='{0}ParamML'.format(name_))
                paramML.i1.set(1)
                slide[0].o >> paramML.i2
                paramML.o >> i.parameter
                paramMLs.append(paramML)
    return paramMLs

# 커브 길이 노말라이즈 값 연결
def StretchConnection(curve_, paramMLs):
    crvshape = curve_.getShape()
    CI = pm.shadingNode('curveInfo',au=1,n='{0}CI'.format(sel[0].name()))
    MD = pm.shadingNode('multiplyDivide',au=1,n='{0}NormalizeMD'.format(sel[0].name()))
    BC = pm.shadingNode('blendColors',au=1,n='{0}StretchBC'.format(sel[0].name()))
    ML = pm.shadingNode('multDoubleLinear',au=1,n='{0}StretchML'.format(sel[0].name()))
    ML.operation.set(2)
    ML.i2.set(0.1)
    crvshape.ws >> CI.inputCurve
    CI.arcLength >> MD.i2x
    length_ = CI.arcLength.get()
    MD.i1x.set(length_)
    MD.ox >> BC.c2r
    ML.o >> BC.blender
    list(map(lambda p: BC.outputR >> p.i1 , paramMLs))

def waveAttr(object_):
    pm.addAttr(object_, ln="side_drive",nn="____",at='enum',en="wave:",k=1)
    pm.addAttr(object_, ln="enable",at='double',min=0,max=1,dv=0,k=1)
    pm.addAttr(object_, ln="amplitude",at='double',dv=0.2,k=1)
    pm.addAttr(object_, ln="wavelength",at='double',dv=1,k=1)
    pm.addAttr(object_, ln="offset",at='double',dv=0,k=1)

def setDriven_(iAttr,tAttr,dv_,v_):
    pm.setDrivenKeyframe(tAttr,cd=iAttr)
    for i,d in enumerate(dv_):
        pm.setDrivenKeyframe(tAttr,cd=iAttr,dv=d,v=v_[i])

def smethodSet(hairsystems):
    for h in hairsystems:
        shape = h.getShape()
        flcShape = shape.outputHair.listConnections()[0]
        setDriven_(shape.simulationMethod,flcShape.simulationMethod,[1,3],[0,2])

# 커브 선택후 실행.
sel = pm.ls(sl=1,fl=1,r=1)
paramMLs = parameterConnection(sel[0])
StretchConnection(sel[0], paramMLs)
# waveAttr(sel[0])
# smethodSet(sel)