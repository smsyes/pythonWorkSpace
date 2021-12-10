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



sel = ls(sl=1,fl=1,r=1)

# curve_ = sel[0]
# number = 8
# numList = division(number)
# LocAtCurveParam(numList, curve_)
# CurveAtObjectPosition(sel)

