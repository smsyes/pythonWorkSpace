from pymel.core import *
import maya.OpenMaya as om
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
'''
def loadConfig_(jsonName):
    return config.jsonImport(jsonName)
'''
def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            parent(obj, object_[i-1])


sel=ls(sl=1,r=1)
joints_ = getChildren_(sel[0], type_='joint')
joint_orient(joints_, e=True, oj='xzy', sao='zup', zso=True)