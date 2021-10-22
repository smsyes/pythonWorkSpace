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

def loadConfig_(jsonName):
    return config.jsonImport(jsonName)


def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            parent(obj, object_[i-1])



# def set_matrix_axis(self, matrix_, axis_):
flip_=om.MMatrix()
matrix_value=None

if axis_ == self.axis_x:
    matrix_value=[-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]

elif axis_ == self.axis_y:
    matrix_value=[1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]

elif axis_ == self.axis_z:
    matrix_value=[1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1]

if matrix_value:
    om.MScriptUtil.createMatrixFromList(matrix_value, flip_)

matrix_=matrix_ * flip_

return matrix_






type="millionvolt"
part="arm"
label_ = loadConfig_("configDict.json")
jo_ = loadConfig_("jointOrientDict.json")
type_ = label_["extensionsName"]
oj_ = jo_[type][part]["oj"]
sao_ = jo_[type][part]["sao"]

sel = ls(sl=1)
# mirror(sel[0], oj_=oj_)