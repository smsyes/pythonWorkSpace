import pymel.core as pm

def space_(name_, parent_=None):
    space_ = pm.createNode('transform',
                        n='{}Grp'.format(name_),
                        p=parent_)
    return space_

def insert_space(object_, type_):
    if object_.getParent():
        parent_ = object_.getParent()
    else:
        parent_ = None
    name_ = '{}{}'.format(object_, type_)
    NULL_ = space_(name_, parent_)
    pm.parent(object_, NULL_)
    return NULL_

def reverseMultMD(object_):
    name_ = object_[0].name()
    rvsMult_ = pm.shadingNode('multiplyDivide', au=1,
                              n='{0}RvsMultMD'.format(name_))
    object_[0].t >> rvsMult_.i1
    rvsMult_.attr('i2').set([-1,-1,-1])
    rvsMult_.o >> object_[1].t

sel = pm.ls(sl=1)
for i in sel:
    insertSpace_ = insert_space(i, 'Rvs')
    reverseMultMD(pm.ls(i,insertSpace_))
