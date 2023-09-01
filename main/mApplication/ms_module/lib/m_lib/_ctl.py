import maya.cmds as cmds
from collections import OrderedDict
import string
import os
import sys

module_path = 'D:\script\main\mApplication\ms_module\lib\dict_lib'
if not module_path in sys.path:
    sys.path.append(module_path)

import _shape_dic
reload(_shape_dic)

# create curve shape
#___________________________________________________________________________________________________
class crvShape_:
    def __init__(self, _name = None, _type = None, _offset = None, _radius = None, _direct = None, _target = None):
        self.name_ = _name
        self.target_ = _target
        self.type_ = _type
        self.offset = _offset
        self.radius = _radius
        self.direct = _direct
    
    def get_name(self):
        
        self.name_dict = OrderedDict()
        num = 0
        
        if self.target_:
            for n in self.target_:
                pos_ = cmds.xform(n, q=1, ws=1, rp=1 )
                rot_ = cmds.xform(n, q=1, ws=1, ro=1 )
                alphabet = string.ascii_uppercase[num]
                
                if not self.name_:
                    self.control_name = n
                if len(self.target_) > 1:
                    self.control_name = '{}{}'.format(self.name_,alphabet)
                else:
                    self.control_name = self.name_
                self.name_dict[self.control_name] = pos_, rot_
                num += 1
                
        else:
            if not self.name_:
                self.control_name = self.type_
            else:
                self.control_name = self.name_
            self.name_dict[self.control_name] = [0,0,0], [0,0,0]
            
        return self.name_dict
        
    def create_shape(self):
        offsets_ = []
        dic = self.get_name()
        for shape_ in dic.keys():
            if self.offset > 0:
                for i in range(self.offset):
                    if self.offset >1:
                        os_name = '{}_{}_{}'.format(shape_,'OS', string.ascii_uppercase[i])
                    if self.offset ==1:
                        os_name = '{}_{}'.format(shape_,'OS')
                    offset_ = cmds.createNode('transform', n = os_name)
                    cmds.xform(offset_, r = 1, t = dic[shape_][0])
                    cmds.xform(offset_, r = 1, ro = dic[shape_][1])
                    offsets_.append(offset_)
                    if i > 0:
                        cmds.parent(offset_, offsets_[i-1])
            shape_dic = _shape_dic.load_dic(self.type_)
            crvShape_ = cmds.curve(n = '{}_{}'.format(shape_, 'CTL'), d = shape_dic[0], 
                        p = shape_dic[1], k = shape_dic[2])
            cmds.parent(crvShape_, offsets_[-1])
            cmds.setAttr(crvShape_ + '.t', 0,0,0)
            cmds.setAttr(crvShape_ + '.r', 0,0,0)
            if self.radius:
                cmds.setAttr(offsets_[-1] + '.s', self.radius, self.radius, self.radius)
            if self.direct == 'x':
                pass
            if self.direct == 'y':
                cmds.setAttr(offsets_[-1] + '.rz', 90)
            if self.direct == 'z':
                cmds.setAttr(offsets_[-1] + '.ry', -90)
            else:
                pass
            cmds.makeIdentity(offsets_[-1], a = True, r=1, s=1, n=0)
        return crvShape_, offsets_[0]
