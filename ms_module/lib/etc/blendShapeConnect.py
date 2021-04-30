import pymel.core as pm

list_ = pm.ls(sl=1, r=1)
list_.sort()
blend_name = 'face_target'  # New blend shape name
base_ = 'target_mesh_body'  # New base geo
count_ = 0


def f_format(s):
    return float('%.3f' % s)


def check_value(attr_, max_):
    count_max = max_ * 50

    for i in range(0, int(count_max)):
        pm.refresh()
        pm.setAttr(blend_attr, i / 50)

    pm.refresh()
    pm.setAttr(attr_, max_)
    pm.refresh()
    pm.setAttr(attr_, 0)


# Loop for normal target
for object_ in list_:
    if not pm.attributeQuery('weight', n=object_, ex=1):  # Check weight data
        object_ = None
    if object_ and object_.weight.get() == 1:

        if base_ and not pm.objExists(blend_name):
            pm.blendShape(base_, n=blend_name)
        if str(object_).endswith('target'):
            new_target_name = object_.replace('_target', '')
        else:
            new_target_name = object_

        if base_ and pm.objExists(blend_name):
            pm.blendShape(blend_name, e=1, t=(base_, count_, object_, 1))
            blend_attr = pm.PyNode('%s.%s' % (blend_name, object_))

            pm.aliasAttr(new_target_name, '%s.w[%s]' % (blend_name,
                                                        blend_attr.index()))

            blend_attr = '%s.%s' % (blend_name, new_target_name)

            check_value(blend_attr, 1.0)

        count_ += 1

# Loop for in-between target
for object_ in list_:
    parent_ = None

    if not pm.attributeQuery('weight', n=object_, ex=1):  # Check weight data
        object_ = None

    if pm.attributeQuery('parent', n=object_, ex=1):  # Check parent data
        parent_ = pm.getAttr('%s.parent' % object_)

    if parent_ and object_ and object_.weight.get() != 1:
        value_ = object_.weight.get()  # Get in-between value

        if base_ and not pm.objExists(blend_name):
            pm.blendShape(base_, n=blend_name)
        if str(object_).endswith('target'):
            new_target_name = object_.replace('_target', '')
        else:
            new_target_name = object_

        if base_ and pm.objExists(blend_name):
            value_ = f_format(value_)  # Convert in-between index

            blend_attr = pm.PyNode('%s.%s' % (blend_name, parent_))
            index_ = blend_attr.index()  # Get parent target index

            pm.blendShape(blend_name, e=1, ib=1, t=(base_, index_,
                                                    object_, value_))

            check_value(blend_attr, value_)
