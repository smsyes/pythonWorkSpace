from pymel.core import *

def joint_(name_):
    select(cl=1)
    return joint(n=name_)

def jointAtSelect(object_):
    for i in object_:
        name_ = i.name()
        Jnt_ = joint_('{}Jnt'.format(name_))
        matchTransform(Jnt_, i)
        makeIdentity(Jnt_, a=True, r=True )

def createJoint():
    object_ = ls(sl=1)
    undoInfo(openChunk=True)
    try:
        jointAtSelect(object_)
    finally:
        undoInfo(closeChunk=True)
createJoint()