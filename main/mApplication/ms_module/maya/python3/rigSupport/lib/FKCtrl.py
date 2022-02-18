from pymel.core import *
from rigSupport.lib import _control

try:
    from imp import *
except:
    pass

reload(_control)

def hierarchy_(object_):
    for i,obj in enumerate(object_):
        if i>0:
            parent(obj, object_[i-1])

sel = ls(sl=1,fl=1,r=1)
ctrl_ = _control.control_(sel, 'square')
name_ = [i.name().split('Jnt')[0] for i in sel]
[rename(ctl,'{}Ctrl'.format(name_[i])) for i,ctl in enumerate(ctrl_)]
hierarchy_(ctrl_)