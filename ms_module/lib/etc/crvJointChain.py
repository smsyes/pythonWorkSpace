import math
import sys

module_path = 'D:\\main\\m_application\\maya'
if not module_path in sys.path:
    sys.path.append(module_path)
from lib.m_lib import getSkin_
reload(getSkin_)

def jnt(item, name_):
    jnt_ = cmds.joint(n = '{}_{}'.format(name_, 'JNT'))
    xform_(item, jnt_)
    return jnt_

def xform_(item, target):
    pos_ = cmds.xform(item, q=1, ws=1, rp=1 )
    rot_ = cmds.xform(item, q=1, ws=1, ro=1 )
    cmds.xform(target, r = 1, t = pos_)
    cmds.xform(target, r = 1, ro = rot_)

def to_int(str_or_int):
    '''Function || method descriptions.
    str to integer
    '''
    values = []
    if isinstance(str_or_int, list):
        pass
    else:
        str_or_int = [str_or_int]
    for i,object in enumerate(str_or_int):
        if isinstance(object, str):
            values.append(int(object))
        else:
            values.append(object)
    return values

def crvJointChain(object_):
    object_ = getSkin_.to_str(object_)
    baseName = '_'.join(object_.split('_')[:-1])
    shape_, shapeType_ = getSkin_.shapes(object_)
    crvInfo = [cmds.getAttr('{}.s'.format(shape_)),cmds.getAttr('{}.d'.format(shape_))]
    crvPointsNum = sum(to_int(crvInfo))
    poci_ = cmds.createNode('pointOnCurveInfo', n = '{}_{}'.format(baseName, 'POCI'))
    cmds.connectAttr('{}.{}'.format(shape_, 'ws'), '{}.{}'.format(poci_, 'ic'))
    cmds.select(cl = 1)
    
    for i in range(crvPointsNum):
        cmds.setAttr('{}.{}'.format(poci_, 'parameter'), int(i)*0.1)
        joint_ = cmds.joint(n ='{}_JNT'.format(baseName))
        pos_ = cmds.getAttr('{}.{}'.format(poci_, 'p'))[0]
        cmds.xform(joint_, r = 1, t = pos_)
        cmds.select(cl = 1)

object_ = cmds.ls(sl = 1)

for i,object in enumerate(object_):
    crvJointChain(object)
    

    