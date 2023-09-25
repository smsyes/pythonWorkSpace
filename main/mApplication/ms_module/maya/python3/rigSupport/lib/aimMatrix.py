import pymel.core as pm


def aimMatrix_(pos_, aim_, target):
    
    name_ = target.name()
    up_ = pm.spaceLocator(n='{0}_up'.format(name_))
    pm.matchTransform(up_, target)
    target_ = pm.spaceLocator(n='{0}_target'.format(name_))
    pm.matchTransform(target_, target)
    pm.parent(up_, pos_)
    target_.t.set(0,0,0)
    target_.r.set(0,0,0)
    target_.s.set(1,1,1)
    up_.ty.set(5)
    am_ = pm.createNode('aimMatrix',n='{0}_am'.format(name_))
    am_.secondaryMode.set(1)

    pos_.worldMatrix >> am_.inputMatrix
    aim_.worldMatrix >> am_.primaryTargetMatrix
    up_.worldMatrix >> am_.secondaryTargetMatrix
    am_.outputMatrix >> target_.offsetParentMatrix


sel = pm.ls(sl=1,fl=1,r=1)
aimMatrix_(sel[0], sel[1], sel[2])