import sys
module_path = 'D:\\main\\m_application\\maya'
if not module_path in sys.path:
    sys.path.append(module_path)
from lib.m_lib import getSkin_
reload(getSkin_)

object_ = cmds.ls(sl = 1)
baseSkinObject_ = object_[0]
targetObject_ = object_[1]
shape_, shapeType_ = getSkin_.shapes(baseSkinObject_)
skinCluster_ = getSkin_.getSkinCluster(shape_, shapeType_)
skinJoint_ = getSkin_.getSkinJoint(skinCluster_)
cmds.skinCluster(skinJoint_, targetObject_, bm=1, mi=3, rui=0, dr=4.5)

if isinstance(targetObject_, list):
    pass
else:
    targetObject_ = [targetObject_]
    
for i,object in enumerate(targetObject_):
    cmds.select(baseSkinObject_, r =1)
    cmds.select(object, add =1)
    cmds.copySkinWeights(nm = 1, 
                        sa = 'closestPoint', 
                        ia = ('closestJoint', 'oneToOne')
                        )
