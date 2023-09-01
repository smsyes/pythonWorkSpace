from pymel.core import *

def getChildren_(object_, type_=None):
    """Get the childrens from top object

    Arguments:
        object_ (node): transform node
        type_ (type): node type

    Returns:
        list : childrens list

    """
    object_ = PyNode(object_)
    if not type_:
        type_ = 'transform'
    child_ = object_.listRelatives(ad=1, c=1, typ=type_)
    child_ = child_ + [object_]
    child_.reverse()
    return child_

def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            parent(obj, object_[i-1])

def list_chuck(arr, n):
    return [arr[i: i + n] for i in range(0, len(arr), n)]

def IKFKBlend(object_):
    # The current number of list checks is based on fingers.
    result_array = list_chuck(object_, 4)
    FKChain, IKChain, DrvChain = result_array
    IKPos_ = [createNode('transform', n='{0}Pos'.format(ik.name())) for ik in IKChain]
    [matchTransform(IKPos_[i],Drv) for i,Drv in enumerate(DrvChain)]
    hierarchy_(IKPos_)

    for i,drv in enumerate(DrvChain):
        name_ = drv.name()
        print(name_, FKChain[i], IKChain[i])
        PB_ = createNode('pairBlend', n='{0}PB'.format(name_))
        BC_ = shadingNode('blendColors', au=1, n='{0}BC'.format(name_))
            
        FKChain[i].r >> PB_.ir2
        FKChain[i].t >> PB_.it2
        FKChain[i].s >> BC_.color1
        IKChain[i].r >> IKPos_[i].r
        IKChain[i].t >> IKPos_[i].t
        IKChain[i].s >> IKPos_[i].s
        IKPos_[i].r >> PB_.ir1
        IKPos_[i].t >> PB_.it1
        IKPos_[i].s >> BC_.color2
        PB_.outTranslate >> drv.t
        PB_.outRotate >> drv.r
        BC_.output >> drv.s

# 첫번째 FK 조인트 리스트, IK 조인트 리스트, Drv 조인트 리스트 선택후 실행해주세요
sel = ls(sl=1,r=1,fl=1)
IKFKBlend(sel)