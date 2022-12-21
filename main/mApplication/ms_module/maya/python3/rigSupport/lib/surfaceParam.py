# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from rigSupport.lib import surfaceParam
reload(surfaceParam)
spaces_ = surfaceParam.SurfParamSpace()

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from collections import OrderedDict
from rigSupport.lib import _attribute
from rigSupport.lib import _node
from rigSupport.lib import _connect

try:
    from imp import *
except:
    pass

reload(_attribute)
reload(_node)
reload(_connect)

class SurfParamSpace():
    def __init__(self,*args, **kwargs):
        object_ = ls(sl=1, r=1, fl=1)
        shape_ = object_[0].getShape()
        uNum_ = shape_.numSpansInU()+1
        vNum_ = shape_.numSpansInV()+1
        spaces = self.surf_param_space(self.sel[0], uNum_, vNum_)
        paramGRPs = self.param_structure(spaces.keys())
        for i,grp in enumerate(paramGRPs['V_param']):
            for spc in spaces[i]:
                parent(spc, grp)

    def surf_param_space(self, object_, uNum, vNum):
        spaceDict = OrderedDict()
        _shape = object_.getShape()
        uMax, vMax = _attribute.surface_uvSpans_num(_shape)
        _name = object_.name()
        for v in range(vNum):
            uList = []
            spaceDict[v] = uList
            for u in range(uNum):
                name = '{}_U{}_V{}'.format(_name, u, v)
                _POSI = _node.po_surf_info(name, _shape)
                _POSI.setAttr('parameterU', u)
                _POSI.setAttr('parameterV', v)
                _rotH = _node.rot_helper(name, _POSI)
                _space = _node.space_(name, parent_=None)
                addAttr(_space, 
                        ln='paramU', 
                        sn='pu', 
                        at='float', 
                        dv=u, 
                        min=0, 
                        max=uMax, 
                        k=1)
                addAttr(_space, 
                        ln='paramV', 
                        sn='pv', 
                        at='float', 
                        dv=v, 
                        min=0, 
                        max=vMax, 
                        k=1)
                _connect.connect_attrs([_space, _POSI], 
                                       'pu', 'parameterU')
                _connect.connect_attrs([_space, _POSI], 
                                       'pv', 'parameterV')
                _connect.connect_attrs([_POSI, _space], 
                                       'p', 't')
                _DCM = _node.decompose_(name)
                _connect.connect_attrs([_rotH, _DCM], 
                                       'rotateMatrix', 'inputMatrix')
                _connect.connect_attrs([_DCM, _space], 
                                       'or', 'r')
                uList.append(_space)
        return spaceDict
                
    def param_structure(self, list_):
        GRPDict = OrderedDict()
        GRPDict['param'] = _node.space_('param')
        GRPDict['V_param'] = [_node.space_('V{}_space'.format(i), 
                             parent_=GRPDict['param']) for i in list_]
        return GRPDict
    

s_ = SurfParamSpace()