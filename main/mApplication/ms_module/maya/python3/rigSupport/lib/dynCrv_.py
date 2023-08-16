import pymel.core as pm

crv_ = pm.ls(sl=1,fl=1,r=1)[0]
shape_ = crv_.getShape()

dir(shape_.__class__)

cvs_ = shape_.getCVs()

joints = []
pm.select(cl=1)
for i,cv in enumerate(cvs_):
    joints.append(pm.joint(n='{}{}_joint'.format(crv_.name(),i), p=cv))
    
pm.select(cl=1)
pm.joint(joints[0], e=1, oj='xyz', sao='yup', ch=1, zso=1)
