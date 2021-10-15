from pymel.core import *
from rigSupport.lib import config


def hierarchy_(object_, type_=None):
    object_ = PyNode(object_)
    if not type_:
        type_ = 'transform'
    hier_ = object_.listRelatives(ad=1, c=1, typ=type_)
    hier_ = hier_ + [object_]
    hier_.reverse()
    return hier_


def loadConfig_(jsonName):
    return config.jsonImport(jsonName)

def jointlabeling_(part, side):
    config_ = loadConfig_("configDict.json")
    
    sel = ls(sl=1)
    
    joints = hierarchy_(sel[0], type_='joint')
    parts_ = config_["jointLabel"][part]
    side_ = config_["sideName"]
    sideName_ = side_[side]
    type_ = config_["extensionsName"]
    
    for i,jnt in enumerate(joints):
        if side == 0:
            name_ = parts_[i] 
        else:
            name_ = '{0}{1}'.format(sideName_,parts_[i])
        rename(jnt, '{0}{1}'.format(name_, type_[1]))
        jnt.attr('otherType').set(name_)
        if side > 3:
            jnt.attr('side').set(3)
        else:
            jnt.attr('side').set(side)
        jnt.attr('type').set(18)
    
    return joints
        
joints_ = jointlabeling_("spine", 0)