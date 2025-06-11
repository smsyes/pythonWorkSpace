import pymel.core as pm

sel = pm.ls(sl=1,fl=1,r=1)

ctrls_ = []
for i,item in enumerate(sel):
    ctrl_ = pm.circle(n='%s_ctrl' %item.name())[0]
    pm.matchTransform(ctrl_,item)
    offset_ = pm.createNode('transform',n='%s_offset' % ctrl_.name())
    cnt_ = pm.createNode('transform',n='%s_cnt' % ctrl_.name())
    pm.matchTransform(offset_,item)
    pm.matchTransform(cnt_,item)
    pm.parent(ctrl_, cnt_)
    pm.parent(cnt_, offset_)
    ctrls_.append(ctrl_)
    if i>0:
        pm.parent(offset_, ctrls_[i-1])
    