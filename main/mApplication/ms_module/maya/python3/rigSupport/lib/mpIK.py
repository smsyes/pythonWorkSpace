from pymel.core import *

def get_trans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]

def curveCvAtObject(object_, dgree=None):
    if not dgree:
        dgree = 3
    pos_ = [get_trans(obj) for obj in object_]
    crv_ = curve(n=name_, d=1, p = pos_)
    rebuildCurve(crv_,ch=0,rpo=1,rt=0,end=1,kr=0,kcp=0,kt=0,s=int(len(sel))-3,d=dgree)
    return crv_

def division(number):
    list_ = [0]
    div_ = float(1)/float(number-1)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def motionPath_(curve_, param):
    name_ = curve_.name()
    curveShape_ = curve_.getShape()
    coordinate = ['x','y','z']
    
    loc_ = spaceLocator(r=1, n='{}{}Space'.format(name_,param))
    upVec_ = spaceLocator(r=1, n='{}{}upVec'.format(name_,param))
    upVec_.attr('ty').set(1)
    parent(upVec_, loc_)
    mp_ = createNode('motionPath',n='{0}MP'.format(name_))
    curveShape_.ws >> mp_.geometryPath
    mp_.attr('uValue').set(param)
    mp_.attr('follow').set(1)
    mp_.attr('worldUpType').set(1)
    mp_.attr('frontAxis').set(0)
    mp_.attr('upAxis').set(1)
    upVec_.wm >> mp_.worldUpMatrix
    mp_.r >> loc_.r
    
    for co in coordinate:
        locAttrName_ = 'transMinusRotatePivot{0}'.format(co.upper())
        mpAttrName_ = '{0}Coordinate'.format(co)
        locCntAttrName_ = 't{0}'.format(co)
        locAttr_ = loc_.attr(locAttrName_)
        mpAttr_ = mp_.attr(mpAttrName_)
        locCntAttr_ = loc_.attr(locCntAttrName_)
        al_ = shadingNode('addDoubleLinear',au=1,n='{0}AL'.format(name_))
        locAttr_ >> al_.i1
        mpAttr_ >> al_.i2
        al_.o >> locCntAttr_
        
    return mp_

sel = ls(sl=1,r=1,fl=1)
num_ = division(int(len(sel)))
curve_ = curveCvAtObject(sel)
for i,obj in enumerate(sel):
    mp_ = motionPath_(curve_, num_[i])
