from pymel.core import *

def curveinfo_(name_):
    return shadingNode('curveInfo', au=1, n='{0}CIF'.format(name_))
    
def multiplyDivide_(name_):
    return shadingNode('multiplyDivide', au=1, n='{0}DV'.format(name_))
    
def decomposeMatrix_(name_):
    return shadingNode('decomposeMatrix', au=1, n='{0}DM'.format(name_))

def remapValue_(name_):
    return shadingNode('remapValue', au=1, n='{0}RM'.format(name_))
    
def locator_(name_):
    return spaceLocator(n='{0}UVPos'.format(name_))
    
def pathAnimation_(item_, curve_, name_):
    return PyNode(pathAnimation(item_, c=curve_, n='{0}MP'.format(name_), f=1, fm=1, fa='x', ua='y'))
    
def motionPathSpace_(curve_, num_=None):
    baseName_ = curve_.name()
    if not num_:
        num_ = curve_.getShape().numEPs()
    UValue_ = 0
    div_ = float(1)/float(num_-1)
    CIF_ = curveinfo_(baseName_)
    DM_ = decomposeMatrix_(baseName_)
    RM_ = remapValue_(baseName_)
    globalScale_ = multiplyDivide_('{0}{1}'.format(baseName_, 'globalScale'))
    normalizeDiv_ = multiplyDivide_('{0}{1}'.format(baseName_, 'normalize'))
    normalizeDiv_.attr('operation').set(2)
    RM_.attr('inputMax').set(10)
    curve_.getShape().ws >> CIF_.inputCurve
    curve_.getShape().wm >> DM_.inputMatrix
    DM_.osx >> globalScale_.i2x
    globalScale_.attr('i1x').set(CIF_.getAttr('arcLength'))
    globalScale_.ox >> RM_.outputMin
    CIF_.arcLength >> normalizeDiv_.i1x
    CIF_.arcLength >> RM_.outputMax
    RM_.outValue >> normalizeDiv_.i2x
    
    mpList = []
    for i in range(num_):
        name_ = '{0}{1}'.format(baseName_, i)
        space_ = locator_(name_)
        mp_ = pathAnimation_(space_, curve_, name_)
        delete(mp_.history(type='animCurveTL'))
        dv_ = multiplyDivide_(name_)
        dv_.attr('operation').set(2)
        dv_.attr('i1x').set(UValue_)
        normalizeDiv_.ox >> dv_.i2x
        dv_.ox >> mp_.uValue
        UValue_ += div_
        mpList.append(mp_)
    return mpList


sel = ls(sl=1,r=1)
motionPathSpace_(sel[0], num_=28)

'''
for i,item in enumerate(mp_):
    item.attr('worldUpType').set(1)
    sel[i].wm >> item.worldUpMatrix
'''
