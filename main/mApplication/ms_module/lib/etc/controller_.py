import maya.cmds as cmds
from collections import OrderedDict
import string
import os
import sys

global module_path
module_path = os.path.split(os.path.realpath('D:\main\m_application\maya\lib\m_lib'))[0]
if not module_path in sys.path:
    sys.path.append(module_path)

from m_lib import _ctl

def ctl_(name, type, offset, radius):
    ctl_list = []
    shape_ = _ctl.crvShape_(_name = name,_type = type,_offset = offset,_radius=radius)
    ctl_, ctl_os = shape_.create_shape()
    ctl_list.append(ctl_)
    ctl_list.append(ctl_os)
    cmds.select(cl = 1)
    print 'control and offset =', ctl_list
    return ctl_list

# get xform, set xform    
def get_set(item, target, frzz = None):
    pos_ = cmds.xform(item, q=1, ws=1, rp=1 )
    rot_ = cmds.xform(item, q=1, ws=1, ro=1 )
    cmds.xform(target, r = 1, t = pos_)
    cmds.xform(target, r = 1, ro = rot_)
    if frzz:
        cmds.makeIdentity(target, a = True, t=1, r=1, s=1, n=0)
    else:
        pass
    print '{} Trnas >> {} Trans'.format(item,target)

sel = cmds.ls(sl=1,fl=1,r=1)

for i,object in enumerate(sel):
    _name = '_'.join(object.split('_')[:-1])
    controls, controls_os = ctl_(_name,'sphere',2,1)
    get_set(object, controls_os, frzz = None)

    






















