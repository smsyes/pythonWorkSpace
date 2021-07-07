# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from collections import OrderedDict
import string
import sys
import os

def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

def connect_attrs(object_, output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)

def po_surf_info(name_, _shape):
    _node = createNode('pointOnSurfaceInfo', n='{}_POSI'.format(name_))
    connect_attr(_shape, 'ws', _node, 'is')
    return _node

def rot_helper(name_, object_):
    _node = createNode('rotateHelper', n='{}_ROHP'.format(name_))
    connect_attr(object_, 'n', _node, 'up')
    connect_attr(object_, 'tv', _node, 'f')
    return _node

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

def decompose_(name_):
    return createNode('decomposeMatrix', n='{}_DCMX'.format(name_))

def surface_uvSpans_num(_shape):
    Uspans = _shape.numSpansInU()
    Vspans = _shape.numSpansInV()
    print('U number is ({0}), V number is ({1})'.format(Uspans, Vspans))
    return Uspans, Vspans

def surf_param_space(object_, uNum, vNum):
    spaceDict = OrderedDict()
    _shape = object_.getShape()
    uMax, vMax = surface_uvSpans_num(_shape)
    _name = object_.name()
    for v in range(vNum):
        uList = []
        spaceDict[v] = uList
        for u in range(uNum):
            name = '{}_U{}_V{}'.format(_name, u, v)
            _POSI = po_surf_info(name, _shape)
            _POSI.setAttr('parameterU', u)
            _POSI.setAttr('parameterV', v)
            _rotH = rot_helper(name, _POSI)
            _space = space_(name, parent_=None)
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
            connect_attrs([_space, _POSI], 'pu', 'parameterU')
            connect_attrs([_space, _POSI], 'pv', 'parameterV')
            connect_attrs([_POSI, _space], 'p', 't')
            _DCM = decompose_(name)
            connect_attrs([_rotH, _DCM], 'rotateMatrix', 'inputMatrix')
            connect_attrs([_DCM, _space], 'or', 'r')
            uList.append(_space)
    return spaceDict
            
def param_structure(list_):
    GRPDict = OrderedDict()
    GRPDict['param'] = space_('param')
    GRPDict['V_param'] = [space_('V{}_space'.format(i), 
                                 parent_=GRPDict['param']) for i in list_]
    return GRPDict
    
sel = ls(sl=1, fl=1, r=1)
shape_ = sel[0].getShape()
uNum_ = shape_.numSpansInU()+1
vNum_ = shape_.numSpansInV()+1
spaces = surf_param_space(sel[0], uNum_, vNum_)
paramGRPs = param_structure(spaces.keys())
[parent(spc, paramGRPs['V_param'][i]) for i,spc in enumerate(spaces[i])]

