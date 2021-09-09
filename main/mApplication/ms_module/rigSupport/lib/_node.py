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
from lib import _connect
from lib import _transform

reload(_connect)
reload(_transform)

def objectSpace_(object_,**kwargs):
    result = []
    for i,obj in enumerate(object_):
        spcs = []
        if 1 == len(object_):
            num = ''
        else:
            num = i+1
        for i,t in enumerate(kwargs['typ']):
            name_ = '{}{}{}'.format(kwargs['n'],num,t)
            spc = createNode('transform', n=name_, p=obj)
            parent(spc,w=1)
            if i>0:
                parent(spc, spcs[i-1])
            spcs.append(spc)
        if kwargs['p'] is not None:
            if obj.getParent():
                parent(spcs[0], obj.getParent())
            parent(obj, spcs[-1])
        result.append(spcs)
    return result

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}Grp'.format(name_),
                        p=parent_)
    return space_

def locator_(object_):
    loc_ = spaceLocator(n = '{}{}'.format(object_, 'Space'))
    _transform.set_transform_(ls(object_,loc_))
    return loc_

def insert_space(object_, type_):
    if object_.getParent():
        parent_ = object_.getParent()
    else:
        parent_ = None
    name_ = '{}{}'.format(object_, type_)
    NULL_ = space_(name_, parent_)
    parent(object_, NULL_)
    return NULL_

def offset_(object_, num_=None):
    object_ = PyNode(object_)
    _name = object_.name()
    type_ = ['Off', 'Spc']
    offsetList = []
    for i in range(num_):
        if i > 0:
            _type = 1
            _parent = offset
        else:
            _type = 0
            _parent = object_
        join_name = ''.join([_name, type_[_type]])
        offset = space_(join_name, _parent)
        if i==0:
            if object_.getParent():
                _parent = object_.getParent()
                parent(offset, _parent)
            else:
                parent(offset, w=1)
        offsetList.append(offset)
    parent(object_, offset)
    return offsetList[0]

def decompose_(name_):
    return createNode('decomposeMatrix', n='{}DM'.format(name_))

def multMatrix_(name_):
    return createNode('multMatrix', n='{}MM'.format(name_))

def pairBlend_():
    return createNode('pairBlend')

def blendColors_():
    return createNode('blendColors')

def reverse_():
    return shadingNode('reverse', au=1)

def po_crv_info(_shape):
    _node = createNode('pointOnCurveInfo', n='{}PCI'.format(_shape))
    _connect.connect_attr(_shape, 'ws', _node, 'ic')
    return _node

def rot_helper(name_, object_):
    _node = createNode('rotateHelper', n='{}RH'.format(name_))
    _connect.connect_attr(object_, 'n', _node, 'up')
    _connect.connect_attr(object_, 'tv', _node, 'f')
    return _node

def po_surf_info(name_, _shape):
    _node = createNode('pointOnSurfaceInfo', n='{}PSI'.format(name_))
    _connect.connect_attr(_shape, 'ws', _node, 'is')
    return _node

def attributes(object_, attr):
    """Return attributes

    Arguments:
        object_ (node): node with attributes
        attr (attribute): attribute long name
    Returns:
        PyNode(attributes)
    """
    attr_ = PyNode('{}.{}'.format(object_, attr))
    return attr_

def inputNode(object_, **kwargs):
    return object_.listHistory(**kwargs)
    
def chain_structure(object_):
    childList = object_[1:]
    parentList = object_[:-1]
    
    for i,child in enumerate(childList):
        if parentList[i].listRelatives(ad=1):
            parent_ = parentList[i].listRelatives(ad=1)[0]
        else:
            parent_ = parentList[i]
        parent(child, parent_)