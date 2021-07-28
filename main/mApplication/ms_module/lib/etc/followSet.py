from pymel.core import *


def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}'.format(name_),
                        p=parent_)
    return space_


def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

def addVectorAttr(object_, name_):
    if object_.hasAttr(name_):
        pass
    else:
        addAttr(object_, ln=name_, at='double3', k=0, h=0)
        addAttr(object_, ln='{}X'.format(name_), at='double', p=name_)
        addAttr(object_, ln='{}Y'.format(name_), at='double', p=name_)
        addAttr(object_, ln='{}Z'.format(name_), at='double', p=name_)
    return object_.attr(name_)


def FWSpace(dict_, object_):
    FWDict = {}
    for i,object in enumerate(object_):
        FWList = []
        FWDict[i] = FWList
        baseNmae_ = object.name()
        splName_ = baseNmae_.split('FK')[0]
        for key in enums_.keys():
            spaceName_ = '{}To{}FW'.format(splName_, enums_[key])
            FW_ = space_(spaceName_, parent_=object)
            parent(FW_, w=1)
            FWList.append(FW_)
        constList_ = ls(FWDict[i], object.getParent())
        orientConstraint(constList_, mo=1, weight=1)
    return FWDict
            
def FWGrp(object_):
    FWGrpList=[]
    for i in object_:
        baseNmae_ = i.name()
        splName_ = baseNmae_.split('Ctrl')[0]
        spaceName_ = '{}FWGrp'.format(splName_)
        FWGrp_ = space_(spaceName_, parent_=i)
        FWGrpList.append(FWGrp_)
    return FWGrpList


def FollowSet(dict_, enums_, object_):
    for key in dict_.keys():
        # orient constraint
        constList_ = ls(dict_[key], object_[key].getParent())
        ori_ = orientConstraint(constList_, mo=1, weight=1)
        
        # create choice Node and connection 
        splName_ = object_[key].name()
        CHOIName_ = '{}CHOI'.format(splName_)
        CHOI_= shadingNode('choice', asUtility=1, n=CHOIName_)
        attr_ = addVectorAttr(CHOI_, 'out')
        connect_attr(CHOI_, 'o', CHOI_, 'out')
        for j,value in enumerate(dict_[key]):
            vector = ['X','Y','Z']
            attrName = value.split('To')[-1]
            attr_ = addVectorAttr(CHOI_, attrName)
            attrValue_ = [0,0,0]
            attrValue_[j] = 1
            attr_.set(attrValue_)
            connect_attr(CHOI_, attrName, CHOI_, 'input[{}]'.format(j))
            connect_attr(CHOI_, 'out{}'.format(vector[j]), ori_, '{}W{}'.format(value, j))
            
        # add follow Attr
        enum_ = ''
        for enum in enums_.values():
            enum_ = enum_ + enum + ':'
        addAttr(object_[key], ln="Follow", at='enum', en=enum_, k=1)
        connect_attr(object_[key], "Follow", CHOI_, "selector")
        
        

def PParent(item, target):
    for key in item.keys():
        for i,value in enumerate(item[key]):
            parent(value, target[i])
        


sel=ls(sl=1,fl=1,r=1)

enums_ = {0:'Hip', 1:'Root', 2:'World'}
FWGrp_ = FWGrp(sel)
FWDict_ = FWSpace(enums_, sel)
FollowSet(FWDict_, enums_, sel)
PParent(FWDict_, FWGrp_)





