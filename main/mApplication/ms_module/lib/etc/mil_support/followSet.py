from pymel.core import *

def followDict(node, num):
    dict = {}
    for i,n in enumerate(node[:-1]):
        attr_ = '{}W{}'.format(n, i)
        dict[attr_] = 0
        if i==num:
            dict[attr_] = 1
    return dict


def setAnim(node, type):
    const_ = constraint_(node, type)
    for i,n in enumerate(node[:-1]):
        dict = followDict(node, i)
        for j,key in enumerate(dict.keys()):
            followAttr_ = node[-1].attr("Follow")
            constAttr_ = const_.attr(key)
            followAttr_.set(i)
            constAttr_.set(dict[key])
            setDrivenKeyframe(constAttr_, cd=followAttr_)
    followAttr_.set(0)


def followAttr(node, enums):
    enum_ = ':'.join(enums)
    if node.hasAttr("Follow"):
        attr_ = node.attr("Follow")
        addAttr(attr_, e=1, enumName=enum_)
    else:
        addAttr(node, ln="Follow", at='enum', en=enum_, k=1)
    return node.attr("Follow")
        

def constraint_(node,type):
    constList_ = ls(node[:-1], node[-1].getParent())
    if type == "orient":
        const = orientConstraint(constList_, mo=1, weight=1)
    elif type == "point":
        const = pointConstraint(constList_, mo=1, weight=1)
    elif type == "parent":
        const = parentConstraint(constList_, mo=1, weight=1)
    return const


def space_(_name, type_, parent_):
    _space = createNode('transform', 
                        n='{}To{}FW'.format(_name, type_), 
                        p=parent_)
    return _space
    
def followSpace(node, type):
    item = node[-1]
    target = node[:-1]
    spaceList = [space_(item, type[i], item) for i,n in enumerate(target)]
    [parent(spc, target[i]) for i,spc in enumerate(spaceList)]
    

node = ls(sl=1,fl=1,r=1)
# followList = ["Clavicle", "Body", "Root", "Fly", "World"]
# followList = ["Clavicle", "Root", "World", "Body", "Fly"]
# followList = ["Body", "Fly"]
# followList = ["Fly"]
# followList = ['Hip', 'Root', 'Fly', 'World']
# followList = ['Root', 'Fly', 'World']
# followList = ['Hip']
# followList = ['Jaw', 'Head']
# followList = ['Tongue', 'Fly', 'World']
# followList = ["Head", "Body", "Root", "Fly", "Hip"]
# followList = ["Clavicle", "Body", "Root", "Fly", "World"]
# FW_ = followSpace(node, followList)
# attr_ = followAttr(node[-1], followList)
# setAnim(node, 'orient')


