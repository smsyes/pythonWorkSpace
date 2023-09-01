from pymel.core import *

def space_(_name, type_, parent_):
    _space = createNode('transform', 
                        n='{}{}Grp'.format(_name, type_), 
                        p=parent_)
    return _space

def offset_(object_, num=1):
    for i in range(num):
        if num>1:
            midName = "Off"
        else:
            midName = ""
        for i in object_:
            _space = space_(i, midName, i)
            parent(_space, w=1)
            if i.getParent():
                parent(_space, i.getParent())
            else:
                pass
            parent(i, _space)

selObject = ls(sl=1, fl=1, r=1) 
offset_(selObject, num=1)