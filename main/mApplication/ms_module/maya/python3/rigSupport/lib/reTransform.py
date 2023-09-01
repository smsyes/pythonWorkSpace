from pymel.core import *

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
'''
sel = ls(sl=1,r=1,fl=1)
getT_ = []
spaces_ = []
for i in sel:
    space_ = spaceLocator()
    t_ = getTransform(i)
    space_.setMatrix(t_)
    space_.attr('s').set((1,1,1))
    getT_.append(t_)
    spaces_.append(space_)
'''

'''
half = int(len(sel)/2)
item_, target_ = spaces_, sel
for i,sel in enumerate(item_):
    matchTransform(sel, target_[i])
delete(spaces_)
'''
