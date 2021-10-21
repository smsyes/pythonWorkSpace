from pymel.core import *
from rigSupport.lib import config


def getChildren_(object_, type_=None):
    object_ = PyNode(object_)
    if not type_:
        type_ = 'transform'
    child_ = object_.listRelatives(ad=1, c=1, typ=type_)
    child_ = child_ + [object_]
    child_.reverse()
    return child_

def joint_orient(object_, **kwargs):
    for joint_ in object_:
        joint(object_, **kwargs)
        if joint_ == object_[-1]:
            joint_.attr('jo').set(0,0,0)

def freezeTransform_(object_):
    makeIdentity(object_,apply=1,t=1,r=1,s=1,n=0,pn=1)

def loadConfig_(jsonName):
    return config.jsonImport(jsonName)


def jointlabeling_(object_, parts_=None, sideName_=None, sideIndex=None, type_=None, oj_=None, sao_=None):
    joints = getChildren_(object_, type_='joint')
    for i,jnt in enumerate(joints):
        if sideIndex == 0:
            name_ = parts_[i] 
        else:
            name_ = '{0}{1}'.format(sideName_,parts_[i])
        rename(jnt, '{0}{1}'.format(name_, type_[1]))
        jnt.attr('otherType').set(parts_[i])
        if sideIndex > 3:
            jnt.attr('side').set(3)
        else:
            jnt.attr('side').set(sideIndex)
        jnt.attr('type').set(18)
    
    freezeTransform_(joints)
    joint_orient(joints,
                 e=True,
                 oj=oj_,
                 sao=sao_,
                 zso=True
                 )
    return joints

def reverseAxis(object_, axis='xzy'):
    if axis == 'xyz':
        set_ = 'rz'
    elif axis == 'yxz':
        set_ = 'rz'
    elif axis == 'yzx':
        set_ = 'rx'
    elif axis == 'zxy':
        set_ = 'ry'
    elif axis == 'zyx':
        set_ = 'rx'
    else:
        set_ = 'ry'
    for i in object_:
        attr_ = i.attr(set_)
        attr_.set(180)
        
def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            parent(obj, object_[i-1])

def mirror(object_, oj_=None):
    joints = getChildren_(object_, type_='joint')
    freezeTransform_(joints)
    [parent(jnt, w=1) for jnt in joints if jnt.getParent()]
    reverseAxis(joints, axis=oj_)
    freezeTransform_(joints)
    hierarchy_(joints)


type="millionvolt"
part="arm"
sideIndex=1
label_ = loadConfig_("configDict.json")
jo_ = loadConfig_("jointOrientDict.json")
parts_ = label_["jointLabel"][part]
side_ = label_["sideName"]
sideName_ = side_[sideIndex]
type_ = label_["extensionsName"]
oj_ = jo_[type][part]["oj"]
sao_ = jo_[type][part]["sao"]

sel = ls(sl=1)
# joints_ = jointlabeling_(sel[0], parts_=None, side_=None, sideIndex=None, type_=None, oj=None, sao=None)
# mirror(sel[0], oj_=oj_)



