
# -*- coding: utf-8 -*-
"""============================================================================
finger sub joint setup

조인트 네개를 선택하고 실행합니다.
1. 회전값을 주는 관절 finger조인트 Select List [0]
2. 회전값의 절반만 받는 해당 관절 조인트 상위에 parent된 subRoot조인트 (fingerParent/subRoot) Select List [1]
3. 회전값에 따라 driven값이 적용되는 sub조인트 (subRoot/sub) Select List [1:]
4. fingerSubSet(Drive attr, Driven attr, [driveValue list], [setValue list], ivs_=True)
5. ivs_ True인 경우 inverse 

# fingerSubSet('rz', 'ty', [0,-90], [0.3,1], ivs_=True)

============================================================================"""
import pymel.core as pm

def pb_(name_):
    return pm.createNode('pairBlend',n='{}_PB'.format(name_))

def halfList(object_):
    half = int(len(object_)/2)
    items = object_[:half]
    targets = object_[half:]
    return items,targets

def halfRot(object_):
    items, targets = halfList(object_)

    for i,it in enumerate(items):
        pb = pb_(targets[i].name())
        pb.rotInterpolation.set(1)
        pb.weight.set(0.5)
        it.r >> pb.ir2
        pb.outRotate >> targets[i].r

def setDriven_(iAttr,tAttr,dv_,v_):
    pm.setDrivenKeyframe(tAttr,cd=iAttr)
    for i,d in enumerate(dv_):
        pm.setDrivenKeyframe(tAttr,cd=iAttr,dv=d,v=v_[i])

def fingerSubSet(iAttr, tAttr, dvValue, dvnValue,ivs_=None):
    if not  isinstance(dvValue, list):
        dvValue = list(dvValue)
    if not  isinstance(dvnValue, list):
        dvnValue = list(dvnValue)
    sel = pm.ls(sl=1,fl=1,r=1)
    halfRot(sel[:2])
    for i,s in enumerate(sel[2:]):
        if not (i%2==1):
            if ivs_ == True:
                dvnReValue = [-1*v for v in dvnValue]
        else:
            dvnReValue = dvnValue
        setDriven_(sel[0].attr(iAttr),s.attr(tAttr),dvValue,dvnReValue)

fingerSubSet('rz', 'ty', [0,-90], [0.3,1], ivs_=True)