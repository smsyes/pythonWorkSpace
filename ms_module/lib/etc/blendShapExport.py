import pymel.core as pm

blendshape_ = pm.PyNode('tongue_target')
geo_ = 'blend_tongue'
new_target = ''
geo_ = pm.PyNode(geo_)
geo_shape = geo_.getShape()

blendshape_list = pm.aliasAttr(blendshape_, q=1)
blendshape_list = list(set(blendshape_list))
blendshape_list.sort()
for i, target_ in enumerate(blendshape_list):
    if 'weight' not in target_ and target_[0].isalpha():
        blend_attr = pm.PyNode('%s.%s' % (blendshape_, target_))
        value_list = []
        name_list = []
        ib_value_list = None
        try:
            ib_name_list = []
            ib_value_list = blendshape_.targetItemIndexList(
                blend_attr.index(), geo_shape)
                
            if ib_value_list:
                for value_ in ib_value_list:
                    eval_ = 'blendshape_'
                    eval_ += '.inbetweenInfoGroup[%s]' % blend_attr.index()
                    eval_ += '.inbetweenInfo[%s]' % value_
                    eval_ += '.inbetweenTargetName.get()'
                    ib_name = eval(eval_)
                    if ib_name != 'IB':
                        ib_name_list += [ib_name]
            ib_value_list = [float(str(o)[1:]) /
                             1000 for o in ib_value_list[:-1]]

        except Exception:
            pass
        if ib_value_list and len(ib_value_list) > 0:
            value_list += ib_value_list
            name_list += ib_name_list
        value_list += [1]
        name_list += [target_]

        target_list = zip(name_list, value_list)

        for name_, value_ in target_list:
            blend_attr.set(0)
            blend_attr.set(value_)

            if not pm.objExists('%s_target' % name_):
                target_ = pm.duplicate(new_target, n='%s_target' % name_, rr=1)

                if not pm.attributeQuery('weight', n=target_[0], ex=1):
                    target_[0].addAttr(
                        'weight', at='float', k=0, dv=value_)
                    target_[0].weight.set(cb=1)
                if 1 > value_:
                    target_[0].addAttr('parent', dt='string', k=0)
                    target_[0].parent.set(
                        str(name_list[-1]), type='string', l=1)

                pm.select(cl=1)

            blend_attr.set(0)
       