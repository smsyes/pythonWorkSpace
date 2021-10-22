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

def loadConfig_(jsonName):
    return config.jsonImport(jsonName)

def jointlabeling_(object_, json=None, part=None, sideIndex=None):    
    label = loadConfig_(json)
    parts_ = label["jointLabel"][part]
    sideName_ = label["sideName"][sideIndex]
    type_ = label["extensionsName"]
    joints = getChildren_(object_, type_='joint')
    
    for i,jnt in enumerate(joints[:len(parts_)]):
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
        
    return joints

"""
sel = ls(sl=1)
joints_ = jointlabeling_(sel[0], 
                         json="configDict.json", 
                         part="arm", 
                         sideIndex=1)
"""
