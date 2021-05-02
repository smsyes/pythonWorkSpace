# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
RBF(fake)solver system

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200729

:Example:
from m_lib.etc import MrbfSolver
reload(solver)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
import pymel.core.datatypes as dt
import re
# world space reader set
def world_space_reader(object_):
    name_ = '{}_ws_poseReader'.format(object_)
    space_(name_, parent_=object_)

# local space reader set
def world_space_reader(object_):
    name_ = '{}_ls_poseReader'.format(object_)
    space_(name_)

# aim set

# add space

# xform
def get_xform(object_):
    pos_ = xform(object_, q=1, ws=1, rp=1)
    rot_ = xform(object_, q=1, ws=1, ro=1 )
    return pos_, rot_


def set_xform(object_, pos_=None, rot_=None):
    if pos_:
        cmds.xform(object_, r=1, t=pos_)
        print '{} set position {}'.format(object_, pos_)
    if rot_:
        cmds.xform(object_, r=1, ro=rot_)
        print '{} set rotation {}'.format(object_, rot_)

    
# parentConst
def constraint_(*args, **kwargs):
    if kwargs['type'] == 'parent':
        parentConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'point':
        pointConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'orient':
        orientConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'scale':
        scaleConstraint(args, maintainOffset=kwargs['mo'])
        
        
# offset
def offset_(object_, num_=None, p=None):
    _name = name_(object_)
    type_ = ['offset', 'space']
    
    if num_:
        for i in range(num_):
            number = i+1
            pad_ = padding_('num', number)
            if i > 0:
                _type = 1
                object_ = join_name
            else:
                _type = 0
            join_name = '_'.join([_name, type_[_type], pad_])
            '''
            
            dup_name = duplicate_name(join_name)
            if dup_name:
                split = join_name.split('_')
                spl_sum = split[:-1] + [split[-1]+1]
                join_name = '_'.join(split[:-1]
                
            '''
            offset = dag_node(join_name, parent_=object_)
            parent(offset, w=1)
            parent(object_, offset)
            if i == 0:
                start_offset = offset
    else:
        join_name = '_'.join([_name, type_[0]])
        start_offset = dag_node(join_name, parent_=object_)
    if p == 0:
        parent(start_offset, w=1)
       
       
# duplicate name
def duplicate_name(name_):
    duplicates = [f for f in cmds.ls() if name_ in f]
    print 'duplicate name is {}'.format(duplicates)


# decompose


# connect
def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))


# angle between
def node_angleBetween(name_):
    abw = createNode('angleBetween', n=name_)
    return abw
    
    
# remapValue
def node_remapValue(name_):
    rmv = createNode('remapValue', n=name_)
    return rmv


# setRotateAxis
def set_rotate_axis(object_, rot_):
    object_.setRotateAxis(rot_)


# setRotate
def set_rotate(object_, rot_):
    object_.setRotation(rot_)


# axis
def axis_(*args):
    axis = args[0]
    axis_dic = {'x':[1,0,0],'y':[0,1,0],'z':[0,0,1]}
    axisRot_dic = {'x':[0,90,0],'y':[-90,0,0],'z':[0,0,0]}
    reverseRot_dic = {'x':[0,-180,0],'y':[180,0,0],'z':[180,0,0]}
    if '-' in args[0]:
        axis = args[0].split('-')[-1]
        dict = axis_dic[axis]
        rotDict = axisRot_dic[axis]
        reverseDict = reverseRot_dic[axis]
        for i,ax in enumerate(dict):
            axis_dic[axis][i] = dict[i]*-1
            axisRot_dic[axis][i] = rotDict[i] + reverseDict[i]
    print 'axis is {0} {1}'.format(args[0], axis_dic[axis])
    print 'axis rotate is {0} {1}'.format(args[0], axisRot_dic[axis])
    return axis_dic[axis], axisRot_dic[axis]


# name convention
def name_(object_):
    _name = object_.name()
    return _name


# padding string
def padding_(type_, num_):
    if type_ == 'alpha':
        pad_ = string.ascii_uppercase[num_]
    if type_ == 'num':
        pad_ = str(num_).zfill(2)
    return pad_    


# space
def dag_node(_name, parent_=None):
    if not parent_:
        parent_ = None
    dag = createNode('transform', n=_name, p=parent_)
    return dag


# anoLocator
def ano_locator(name_, axis):
    loc = spaceLocator(n = name_)
    loc.listRelatives(s=1)[0].hide()
    anoShape = createNode('annotationShape')
    anoRoot = anoShape.root()
    axis, rot_ = axis_(axis)
    parent(anoShape, loc, r=1, s=1)
    delete(anoRoot)
    set_rotate(loc, rot_)
    return loc


selObject = ls(sl=1,fl=1,r=1)
# dag_ = dag_node('test')
# dag_.setTranslation(axis_('x'), space='object')
# anoLoc = ano_locator('test', 'x')
# offset_(selObject[0], num_=5, p=0)
duplicate_name('output_wrist')















