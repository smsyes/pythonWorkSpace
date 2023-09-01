import pymel.core as pm

def space_(name_, suffix_=None, parent_=None):
    if not suffix_:
        suffix_ = 'Grp'      
    space_ = pm.createNode('transform',
                        n='{0}{1}'.format(name_,suffix_),
                        p=parent_)
    return space_
    
list_ = ['World','Fly','Root'] + []
enumlist = list_[0]
for i in list_[1:]:
    enumlist = enumlist + ':' + i
sel = pm.ls(sl=1,fl=1,r=1)

pm.addAttr(sel[0],ln='Follow',at='enum',en=enumlist,k=1)

name_ = sel[0].name()
spclist = []
# pm.setDrivenKeyframe(target.rz,cd=vp.ox)
for i,item in enumerate(list_):
    spc = space_(name_,suffix_='{0}Space'.format(item))
    pm.matchTransform(spc,sel[0])
    pm.parentConstraint(spc,sel[0].getParent(),mo=1)
    spclist.append(spc)
    const = sel[0].getParent().tx.listConnections()[0]
    

for i,item in enumerate(list_):
    poplist = list(range(len(list_)))
    poplist.pop(i)
    for p in poplist:
        pm.setDrivenKeyframe(const.attr('{0}W{1}'.format(spclist[i].name(),i)),cd=sel[0].Follow,dv=p,v=0)
    pm.setDrivenKeyframe(const.attr('{0}W{1}'.format(spclist[i].name(),i)),cd=sel[0].Follow,dv=i,v=1)
