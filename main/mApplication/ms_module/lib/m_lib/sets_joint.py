import pymel.core as pm

sel = pm.ls(sl = 1)
hi = pm.listRelatives(sel, ad=1)
joint_list = []
for i in hi:
    if i.type() == 'joint':
        if i.getAttr('otp') == 'BindJoint':
            joint_list.append(i)
pm.select(joint_list)
pm.sets(n = 'jointSets')
        