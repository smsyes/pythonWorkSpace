from pymel.core import *


def selectJoints(object_):
    joint_ = object_.listRelatives(ad=1,c=1,typ='joint')
    joint_.reverse()
    if sel[0].type()=='joint':
        joint_ = ls(object_,joint_)
    select(joint_)
    return joint_
        
sel = ls(sl=1,r=1,fl=1)
joint_ = selectJoints(sel[0])