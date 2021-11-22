from pymel.core import *
from rigSupport.lib import _control
from rigSupport.lib import _node
try:
    from imp import *
except:
    pass
reload(_control)
reload(_node)

def fourDirectionsCtrl(object_):
    spc_ = _node.space_(object_.name())
    values = [0,90,180,-90]
    name = object_.name().split('Ctrl')[0]
    for i,value in enumerate(values):
        name_ = '{0}{1}Ctrl'.format(name, i+1)
        ctrl_ = _control.control_([object_], 'triangle')
        ctrl_[0].rename(name_)
        grp_ = _node.offset_(ctrl_[0], num_=2)
        chd_ = grp_.getChildren()[0]
        chd_.attr('rx').set(value)
        parent(grp_, spc_)

def SRSetting(object_):
    half = int(len(object_)/2)
    itme_ = object_[:half]
    target_ = object_[half:]
    for i,item in enumerate(itme_):
        pm_ = shadingNode('plusMinusAverage', au=1, n='{0}PM'.format(item.name()))
        sr_ = shadingNode('setRange', au=1, n='{0}SR'.format(item.name()))
        sr_.attr('oldMaxX').set(1)
        sr_.attr('oldMaxY').set(1)
        sr_.attr('oldMaxZ').set(1)
        item.Value >> pm_.input3D[0]
        item.t >> pm_.input3D[1]
        pm_.output3D >> sr_.max
        sr_.outValue >> target_[i].t
        

sel = ls(sl=1,r=1,fl=1)
fourDirectionsCtrl(sel[0])
# [_node.offset_(i, num_=1) for i in sel]
SRSetting(sel)

    