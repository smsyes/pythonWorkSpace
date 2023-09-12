import pymel.core as pm

def joints(crv_, num_=3, _oj='xyz', _sao='yup'):
    shape_ = crv_.getShape()
    #EPs_ = shape_.numEPs()
    nums = [+1/(num_-1) for i in range(num_)[1:-1]]
    nums.insert(0,0)
    nums.append(1)
    ikJoints = []
    pm.select(cl=1)
    p_ = 0
    for i,n_ in enumerate(nums):
        point_ = shape_.getPointAtParam(n_)
        ikJoints.append(pm.joint(n='{}{}_joint'.format(crv_.name(),i), p=point_))

    pm.select(cl=1)
    pm.joint(ikJoints[0], e=1, oj=_oj, sao=_sao, ch=1, zso=1)
    ikJoints[-1].jo.set(0,0,0)
    
    atJoints = []
    atCtrls = []
    jointName = ['st','en']
    for i,j_ in enumerate([ikJoints[0],ikJoints[-1]]):
        name_ = '{0}_{1}'.format(crv_.name(),jointName[i])
        joint_ = pm.joint(n='{0}joint'.format(name_))
        ctrl = crvShape_(triangle)
        ctrl.rename('{0}Ctrl'.format(name_))
        pm.select(cl=1)
        pm.matchTransform(joint_,j_)
        pm.matchTransform(ctrl,j_)
        atJoints.append(joint_)
        atCtrls.append(ctrl)
        
    pm.parent(atCtrls[1].atCtrls[0])
    freezeOffset(ikJoints+atJoints+atCtrls)
    
    for i,c_ in enumerate(atCtrls):
        c_.t >> atJoints[i].t
        c_.r >> atJoints[i].r
        c_.s >> atJoints[i].s
        
    pm.skinCluster(atJoints[0],atJoints[1],crv_)
        
    return ikJoints, atJoints, atCtrls

def freezeOffset(list_):
    for i in list_:
        matrix_ = i.getMatrix()
        i.offsetParentMatrix.set(matrix_)
        if i.type() == 'joint':
            i.jo.set((0,0,0))
        i.t.set((0,0,0))
        i.r.set((0,0,0))
        i.s.set((1,1,1))

def crvShape_(list_):
    crv_ = pm.curve(d = list_[0], 
                 p = list_[1], 
                 k = list_[2])
    return crv_


triangle = [1,[(0,0,-1),(0,0,1),(2,0,0),(0,0,-1)],[0,1,2,3]]


crv_ = pm.ls(sl=1,fl=1,r=1)[0]


oj_='xyz'
sao_='yup'
num_=3
ikJoints, atJoints, atCtrls= joints(crv_, num_, _oj=oj_, _sao=sao_)

ikhandle_ = pm.ikHandle(n='{}ikHandle'.format(crv_.name()),sol='ikSplineSolver',
ccv=False,pcv=False,sj=ikJoints[0],ee=ikJoints[-1],c=crv_)


"""
upVec_ = pm.spaceLocator(n='{}_upVec'.format(crv_.name()))
pm.matchTransform(upVec_,joints_[0])

if sao_ == 'yup':
    upVec_.ty.set(1)
"""

# dir(shape_.__class__)
