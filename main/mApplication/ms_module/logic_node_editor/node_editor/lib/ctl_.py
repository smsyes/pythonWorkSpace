from pymel.core import *
import sys
import os

import _shape_dic
reload(_shape_dic)

class curveShape(object):
    def __init__(self, *args, **kwargs):
        super(curveShape, self).__init__(*args, **kwargs)
        self.CTL_ = None
        self.shape_dic = None
        
    def shape_name_match(self, CTL_, name_):
        _shape = CTL_.getShape()
        shape_name = '{}Shape'.format(name_)
        if _shape != shape_name:
            rename(_shape, shape_name)
    
    def create_curve(self, name_, type_):
        self.shape_dic = _shape_dic.load_dic(type_)
        crv_ = curve(n = '{}_CTL'.format(name_), d = self.shape_dic[0], 
                    p = self.shape_dic[1], k = self.shape_dic[2])
        return crv_, self.shape_dic
    
    def scale_(self, scale_):
        cvNum_ = len(self.shape_dic[2])
        select('{}.cv[0:{}]'.format(self.CTL_, cvNum_))
        scale(scale_,scale_,scale_)
        select(cl=1)

    def curve_(self, name_, type_, scale_):
        self.CTL_, self.shape_dic= self.create_curve(name_, type_)
        self.scale_(scale_)
        self.shape_name_match(self.CTL_, name_)
        return self.CTL_