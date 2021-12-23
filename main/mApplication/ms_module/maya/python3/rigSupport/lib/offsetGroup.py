from pymel.core import *

def Grp_(object_, w=None):
    for i in object_:
        name_ = i.name()
        getTransform_ = i.getMatrix(worldSpace=True)
        node_ = createNode('transform', n='{0}Grp'.format(i))
        node_.setMatrix(getTransform_)
        if w == 0:
            getParent_ = i.getParent()
            parent(node_, getParent_)
        parent(i, node_)
        

sel = ls(sl=1,r=1,fl=1)
Grp_(sel, w=0)