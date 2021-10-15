from pymel.core import *

def distanceBW_(name_):
    _node = shadingNode('distanceBetween', au=1, n='{}DIST'.format(name_))
    return _node

def multiplyDivide_(name_):
    _node = shadingNode('multiplyDivide', au=1, n='{}MD'.format(name_))
    return _node

def multDoubleLinear_(name_):
    _node = shadingNode('multDoubleLinear', au=1, n='{}ML'.format(name_))
    return _node


sel = ls(sl=1,r=1,fl=1)

name_ = sel[0].name().split("_V")[0]
dist_ = distanceBW_(name_)
md_ = multiplyDivide_(name_)
ml_ = multDoubleLinear_(name_)

sel[0].position >> dist_.point2
sel[1].position >> dist_.point1
dist_.distance >> md_.input1X
ml_.output >> md_.input2X
normalValue = dist_.attr('distance').get()
ml_.attr('input1').set(normalValue)
md_.attr('operation').set(2)