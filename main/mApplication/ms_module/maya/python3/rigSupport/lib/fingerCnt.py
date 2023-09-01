import pymel.core as pm

def pb_(name_):
    return pm.createNode('pairblend',n='{}_PB'.format(name_))

def halfList_(object_):
    half = int(len(object_)/2)
    item = object_[:half]
    target = object_[half:]
    return item, target

def halfRot_(object_):
    items, targets = halfList_(object_)
    for i,t in enumerate(targets):
        pb = pb_(t.name())
        
sel = pm.ls(sl=1,fl=1,r=1)
