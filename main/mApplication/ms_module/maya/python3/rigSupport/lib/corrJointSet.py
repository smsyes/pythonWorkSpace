import pymel.core as pm

sel = pm.ls(sl=1,r=1)

'''
name_ = sel[0].name()
parent_ = sel[0].getParent()


vec = 'yz'
rvs_ = 1

# subJoint Set Harf Rotate Connect
sub_ = pm.joint(n='{}_Corr'.format(name_))
pm.parent(sub_, parent_)
pb_ = pm.createNode('pairBlend', n='{}_pb'.format(name_))
sel[0].r >> pb_.inRotate1
pb_.rotInterpolation.set(1)
pb_.weight.set(0.5)
pb_.outRotate >> sub_.r

sides = []
if vec:
    if rvs_ == 1:
        nums_ = [-1,1]
    else:
        nums_ = [1,-1]
    for v in range(len(vec)):
        for i,num in enumerate(nums_):
            pm.select(sub_,r=1)
            side_ = pm.joint(n='{0}_sideZ{1}'.format(name_,i))
            attr_ = side_.attr('t{}'.format(vec[v]))
            attr_.set(attr_.get()+num)
            sides.append(side_)
            pm.parent(sides, sub_)
'''

# dir(duplicate_[0].keyTimeValue[0].keyTime.__class__)

# keyframe node mirror
for i in sel:
    plugAttr_ = i.input.listConnections(p=1)
    connectionAttr_ = i.output.listConnections(p=1)

    plugAttr_ = pm.PyNode(plugAttr_[0].replace('_L','_R'))
    connectionAttr_ = pm.PyNode(connectionAttr_[0].replace('_L','_R'))

    duplicate_ = pm.duplicate(i)
    pm.rename(duplicate_[0], duplicate_[0].replace('_L','_R'))

    plugAttr_ >> duplicate_[0].input
    duplicate_[0].output >> connectionAttr_

    getNum = duplicate_[0].keyTimeValue.getNumElements()
    keyTimeValues = [duplicate_[0].keyTimeValue[i].get() for i in range(getNum)]
    revalue_ = [(i[0], i[-1]*-1)  for i in keyTimeValues]

    for j, kv_ in enumerate(revalue_):
        pm.keyframe(duplicate_[0], index=j, vc=kv_[1])
        
