from collections import OrderedDict
from pymel.core import *
from lib import _joint
from lib import _name

reload(_joint)
reload(_name)


def space_(object_,**kwargs):
    result = []
    num = 1
    for obj in object_:
        spcs = []
        if 1 == len(object_):
            num = ''
        for i,t in enumerate(kwargs['typ']):
            name_ = _name.sumN(kwargs['n'],str(num),t)
            spc = createNode('transform', n=name_, p=obj)
            parent(spc,w=1)
            if i>0:
                parent(spc, spcs[i-1])
            spcs.append(spc)
        if kwargs['p'] is not None:
            if obj.getParent():
                parent(spcs[0], obj.getParent())
            parent(obj, spcs[-1])
        num +=1
        result.append(spcs)
    return result

# sel = ls(sl=1,r=1,fl=1)
base="Thumb"


JntC_ = _joint.hierarchy_(sel[0])

# duplicate joint
D01Jnt_ = _joint.duplicate_joint(JntC_[1])
parent(D01Jnt_[0],w=1)
D02Jnt_ = _joint.duplicate_joint(JntC_[0])
parent(D02Jnt_[0],w=1)

# rename
IKJnt_ = [rename(jnt,_name.sumN(base,str(i+1),"IKJnt")) for i,jnt in enumerate(D01Jnt_)]
Jnt_ = [rename(jnt,_name.sumN(base,str(i+1),"Jnt")) for i,jnt in enumerate(D02Jnt_[1:])]
rename(D02Jnt_[0], _name.sumN(base,"RootJnt"))

# Grouping
ctrl_ = space_(JntC_,typ=['CtrlGrp','Ctrl','CtrlPos'],n=base,p=None)








