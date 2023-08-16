import pymel.core as pm

crv_ = pm.ls(sl=1,fl=1,r=1)[0]

def joints(crv_, _oj='xyz', _sao='yup'):
    shape_ = crv_.getShape()
    EPs_ = shape_.numEPs()
    joints = []
    pm.select(cl=1)
    p_ = 0
    for i in range(EPs_):
        point_ = shape_.getPointAtParam(i)
        print(point_)
        joints.append(pm.joint(n='{}{}_joint'.format(crv_.name(),i), p=point_))

    pm.select(cl=1)
    pm.joint(joints[0], e=1, oj=_oj, sao=_sao, ch=1, zso=1)
    joints[-1].jo.set(0,0,0)
    return joints

oj_='xyz'
sao_='yup'
joints_ = joints(crv_, _oj=oj_, _sao=sao_)

upVec_ = pm.spaceLocator(n='{}_upVec'.format(crv_.name()))
pm.matchTransform(upVec_,joints_[0])


dir(shape_.__class__)
