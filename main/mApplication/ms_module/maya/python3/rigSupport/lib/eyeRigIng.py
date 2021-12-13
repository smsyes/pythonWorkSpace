from pymel.core import *
from rigSupport.lib import _node
try:
    from imp import *
except:
    pass
reload(_node)

def division(number):
    list_ = [0]
    div_ = float(1)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def LocAtCurveParam(numList, curve_):
    for i,num in enumerate(numList):
        name_ = curve_.name()
        poci_ = _node.pointOnCurveInfo_(curve_)
        loc_ = spaceLocator(n = '{0}{1}Space'.format(name_,i))
        poci_.attr('parameter').set(num)
        poci_.position >> loc_.t
        
def CurveAtObjectPosition(object_):
    name_ = object_[0].name()
    pos_ = [i.getMatrix(worldSpace=True)[-1][:-1] for i in object_]
    curve(n='{0}Crv'.format(name_),d=1,p=pos_)

def getTransform(object_, p=None, r=None):
    transform = []
    if p:
        pos_ = xform(object_, q=1, ws=1, rp=1 )
        transform.append(pos_)
    if r:
        rot_ = xform(object_, q=1, ws=1, ro=1 )
        transform.append(rot_)
    return transform

def jointAtObject(object_):
    for i in object_:
        select(cl=1)
        name_ = i.name()
        pos,rot = getTransform(i, p=1, r=1)
        jnt_ = joint(n='{0}Jnt'.format(name_))
        jnt_.attr('t').set(pos)
        jnt_.attr('jointOrient').set(rot)

def connection(object_):
    object_[0].t >> object_[1].t
    object_[0].r >> object_[1].r

sel = ls(sl=1,fl=1,r=1)

# curve_ = sel[0]
# number = 8
# numList = division(number)
# numList = [0,1,2,3,4,5,6,7]
# LocAtCurveParam(numList, curve_)
# CurveAtObjectPosition(sel)
# jointAtObject(sel)
# connection(sel)






        