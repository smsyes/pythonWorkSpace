# matrix Constraint

def mtx_const_(pos, rot, scl):
        
    sel = cmds.ls(sl = 1, fl = 1, r = 1)
    
    if len(sel) < 3:
        take_ = 1
            
    else:
        take_ = 2
        PB_ = cmds.createNode('pairBlend', n = 'default_PB')
        cmds.setAttr('%s.%s' %(PB_, 'rotInterpolation'), 1)
        
    if scl:
        scale_BLD = cmds.shadingNode('blendColors', au = 1, n = 'default_scale_BLD')
    
    objects = sel[-1]
    OS_ = cmds.listRelatives(objects, p = 1)
    user_attr_ = cmds.listAttr(OS_[0], ud = 1)
    offsetattr_name = '%s_%d' % ('offsetAttr', 0)
    pos_ = cmds.xform(objects, q=1, ws=1, rp=1 )
    rot_ = cmds.xform(objects, q=1, ws=1, ro=1 )
        
    if OS_:
        null_ = OS_[0]
        if user_attr_:
            for attrs_ in user_attr_:
                if 'offsetAttr' in attrs_:
                    spl_ = attrs_.split('_')
                    offsetattr_name = '_'.join([spl_[0], str(int(spl_[1]) + 1)])

    else:
        null_ = cmds.createNode('transform', n = '{}_{}'.format(name_, 'MOS'))
        cmds.xform(null_, r = 1, t = pos_)
        cmds.xform(null_, r = 1, ro = rot_)
        cmds.parent(objects, null_)
        
    cmds.addAttr(null_, ln = offsetattr_name, at = 'matrix') 
    
    for t in range(take_):
        
        targets = sel[0 + t]
        
        name_ = '_'.join([targets, 'to', objects])
        
        if take_ == 2:
            PB_ = cmds.rename(PB_, '{}_{}'.format(name_, 'PB'))
            if scl:
                scale_BLD = cmds.rename(scale_BLD, '{}_{}'.format(name_, 'scale_BLD'))

        multM = cmds.shadingNode('multMatrix', au = 1, n = '{}_{}'.format(name_, 'UNKN'))
        offset_multM = cmds.shadingNode('multMatrix', au = 1, n = '{}_{}'.format(name_, 'offset_UNKN'))
        decomM = cmds.shadingNode('decomposeMatrix', au = 1, n = '{}_{}'.format(name_, 'DMTX'))
        cmds.connectAttr(objects+'.wm[0]', offset_multM + '.i[0]')
        cmds.connectAttr(targets+'.wim[0]', offset_multM + '.i[1]')
        cmds.connectAttr(offset_multM+'.o', '%s.%s' % (null_ ,offsetattr_name))
        cmds.disconnectAttr(offset_multM+'.o', '%s.%s' % (null_ ,offsetattr_name))
        cmds.delete(offset_multM)
        
        cmds.connectAttr(targets+'.wm[0]', multM + '.i[1]')
        cmds.connectAttr('%s.%s' % (null_ ,offsetattr_name), multM + '.i[0]')
        cmds.connectAttr(null_ +'.wim[0]', multM + '.i[2]')
        cmds.connectAttr(multM +'.o', decomM + '.imat')
    
        if take_ == 1:
        
            if pos == 1:
                cmds.connectAttr(decomM+'.ot', objects + '.t')
            if rot == 1:
                cmds.connectAttr(decomM+'.or', objects + '.r')
            if scl:
                if scl == 1:
                    cmds.connectAttr(targets+'.s', objects + '.s')
                
        else:
            cmds.connectAttr(decomM+'.ot', PB_ + '.it' + str(t+1))
            cmds.connectAttr(decomM+'.or', PB_ + '.ir' + str(t+1))
            if scl:
                cmds.connectAttr(targets+'.s', scale_BLD + '.c' + str(t+1))
            
    if take_ == 2:
        if pos == 1:
            cmds.connectAttr(PB_+'.ot', objects + '.t')
        if rot == 1:
            cmds.connectAttr(PB_+'.or', objects + '.r')
        if scl:
            if scl == 1:
                cmds.connectAttr(scale_BLD+'.output', objects + '.scale')        
    
           
mtx_const_(1,1,0)