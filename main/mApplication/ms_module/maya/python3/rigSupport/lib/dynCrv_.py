import pymel.core as pm



def ikjoints_(crv_, num_=3, _oj='xyz', _sao='yup'):
    dup_ = pm.duplicate(crv_)[0]
    pm.makeIdentity(dup_, apply=True, t=1,r=1,s=1,n=0,pn=1)
    shape_ = dup_.getShape()
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
    pm.delete(dup_)

    return ikJoints

def attachs_(crv_, ikJoints):
    atJoints = []
    atCtrls = []
    sideName = ['st','en']
    for i,j_ in enumerate([ikJoints[0],ikJoints[-1]]):
        name_ = '{0}_{1}'.format(crv_.name(),sideName[i])
        joint_ = pm.joint(n='{0}joint'.format(name_))
        ctrl = crvShape_(triangle)
        ctrl.rename('{0}Ctrl'.format(name_))
        atCtrls.append(ctrl)
        atJoints.append(joint_)
        pm.select(cl=1)
    pm.parent(atCtrls[1], atCtrls[0])
    
    return atJoints, atCtrls


def freezeOffset_(list_):
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

def createikHandle_(crv_,ikJoints,atJoints):
    ikhandle_ = pm.ikHandle(n='{}ikHandle'.format(crv_.name()),sol='ikSplineSolver',
    ccv=False,pcv=False,sj=ikJoints[0],ee=ikJoints[-1],c=crv_)
    ikhandle_[0].dTwistControlEnable.set(1)
    ikhandle_[0].dWorldUpType.set(4)
    atJoints[0].wm >> ikhandle_[0].dWorldUpMatrix
    atJoints[1].wm >> ikhandle_[0].dWorldUpMatrixEnd
    return ikhandle_[0]

triangle = [1,[(0,0,-1),(0,0,1),(2,0,0),(0,0,-1)],[0,1,2,3]]

crvs_ = pm.ls(sl=1,fl=1,r=1)

oj_='xyz'
sao_='yup'
num_=3

for i in crvs_:
    ikGrp_ = pm.createNode('transform',n='{0}Grp'.format(i.name()))
    ikJoints = ikjoints_(i, num_, _oj=oj_, _sao=sao_)
    atJoints, atCtrls = attachs_(i, ikJoints)

    pm.parent([ikJoints[0],atJoints],ikGrp_)
    
    for j,ik_ in enumerate([ikJoints[0],ikJoints[-1]]):
        pm.matchTransform(atJoints[j],ik_)
        pm.matchTransform(atCtrls[j],ik_)
    
    freezeOffset_(ikJoints+atJoints+atCtrls)
    
    for k,c_ in enumerate(atCtrls):
        c_.worldMatrix >> atJoints[k].offsetParentMatrix
    
    pm.skinCluster(atJoints[0],atJoints[1],i)
    ikHandle_ = createikHandle_(i,ikJoints,atJoints)
    
    pm.parent(ikHandle_,ikGrp_)
    

# dir(shape_.__class__)
