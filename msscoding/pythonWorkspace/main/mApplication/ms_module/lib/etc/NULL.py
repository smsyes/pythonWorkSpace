from pymel.core import *

def space_(_name, type_, parent_):
    _space = createNode('transform', 
                        n='{}_{}GRP'.format(_name, type_), 
                        p=parent_)
    return _space
    
selObject = ls(sl=1, fl=1, r=1) 
for i in selObject:
    _space = space_(i, "off", i)
    parent(_space, w=1)