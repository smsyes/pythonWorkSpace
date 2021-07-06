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

module_path = 'E:\script\main\mApplication\ms_module\lib\dict_lib'
if not module_path in sys.path:
    sys.path.append(module_path)
    
import _shape_dic
reload(_shape_dic)


# joint drive
def hierarchy_(object_, type_=None):
    object_ = PyNode(object_)
    hier_ = object_.listRelatives(ad=1, c=1, typ=type_)
    hier_ = hier_ + [object_]
    hier_.reverse()
    return hier_

def _joint(joint_,
           e=None,
           q=None,
           ex=None,
           oj=None,
           o=None,
           sao=None,
           zso=None,
           p=None,
           co=None):
    
    data = {}

    if e is not None:
        data["e"] = e
    if q is not None:
        data["q"] = q
    if ex is not None:
        data["exists"] = ex
    if oj is not None:
        data["orientJoint"] = oj
    if o is not None:
        data["orientation"] = o
    if sao is not None:
        data["secondaryAxisOrient"] = sao
    if zso is not None:
        data["zeroScaleOrient"] = zso
    if p is not None:
        data["position"] = p
    if co is not None:
        data["component"] = co
    joint(joint_, **data)

def joint_orient(jointChain):
    for joint_ in jointChain:
        _joint(joint_, e=True, oj='xzy', sao='zup', zso=True)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 

def joint_insert(joint_, pos_):
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        _joint(JNT, e=True, co=True, p=pos_)
        return PyNode(JNT)

def get_transform(object_):
    _name = object_.name()
    trans = xform(_name, q=1, ws=1, rp=1 )
    rot = xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)

def set_rot_xform(object_, rot):
    xform(object_, r = 1, ro = rot)

def get_trans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]
    
def get_rot(object_):
    return xform(object_, q=1, ws=1, ro=1 )

def set_transform_(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        pos, rot = get_transform(item)
        set_trans_xform(targets[i], pos)
        set_rot_xform(targets[i], rot)

def length(v0, v1):
    v = v1 - v0
    return v.length()

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

def padding(num_):
    return str(num_).zfill(2)

def offset_(object_, num_=None):
    object_ = PyNode(object_)
    _name = object_.name()
    type_ = ['off', 'spc']
    offsetList = []
    for i in range(num_):
        if i > 0:
            _type = 1
            _parent = offset
        else:
            _type = 0
            _parent = object_
        join_name = '_'.join([_name, type_[_type]])
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
    
def add_joint(jointChain, num):
    stJoint = jointChain[0]
    enJoint = jointChain[-1]
    stTrans_= get_trans(stJoint)
    enTrans_= get_trans(enJoint)
    length_ = length(stTrans_, enTrans_)
    divValue = length_/(num+1)
    
    insertList = [stJoint]
    for i in range(num):
        localspace = space_(stJoint.name(), parent_=insertList[i])
        localspace.setAttr('t',(divValue,0,0))
        pos_ = get_trans(localspace)
        JNT = joint_insert(insertList[i], pos_)
        delete(localspace)
        insertList.append(JNT)
    
def linear_spacing_joint(num):    
    sel = ls(sl=1, fl=1, r=1)
    for i in sel:
        jointChain = hierarchy_(i, type_='joint')
        joint_orient(jointChain)
        add_joint(jointChain, num)

def renamer(object_,
            name_=None, 
            prefix_=None, 
            suffix_=None):
    if name_:
        make_name(object_, name_)
    if prefix_:
        append_name(object_, prefix_, mode=0)
    if suffix_:
        append_name(object_, suffix_, mode=1)

def duplicate_joint(object_):
    dupJNT_ = duplicate(object_)
    jointChain = hierarchy_(dupJNT_[0], type_='joint')
    return jointChain

def make_name(object_, name_):
    if object_:
        for i,obj in enumerate(object_):
            pad_ = padding(i+1)
            makeName_ = '{}_{}'.format(name_,pad_)
            obj.rename(makeName_)

def append_name(object_, name_, mode=None):
    if object_:
        for obj in object_:
            if mode ==0:
                obj.rename('{}_{}'.format(name_,obj))
            if mode ==1:
                obj.rename('{}_{}'.format(obj,name_))

def shape_name_match(curve_):
    shape_ = curve_.getShape()
    shape_.rename(curve_.name()+'Shape')

def crvShape_(type_):
    shape_dic = _shape_dic.load_dic(type_)
    crv_ = curve(d = shape_dic[0], 
                 p = shape_dic[1], 
                 k = shape_dic[2])
    shape_name_match(crv_)
    return crv_

def control_(object_):
    CTLList = []
    for i,obj in enumerate(object_):
        CTL_ = crvShape_('circle')
        CTL_ = PyNode(CTL_)
        set_transform_(ls(obj, CTL_))
        CTLList.append(CTL_)
    return CTLList

def chain_structure(object_):
    childList = object_[1:]
    parentList = object_[:-1]
    for i,object in enumerate(childList):
        parent(object, parentList[i])

def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

def connect_attrs(object_, output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)

def one_to_n_connect(object_, output, input):
    item = object_[0]
    target = object_[1:]
    for i, object in enumerate(target):
        connect_attr(item, output, object, input)

def constraint_(*args, **kwargs):
    if kwargs['type'] == 'parent':
        node_ = parentConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'point':
        node_ = pointConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'orient':
        node_ = orientConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'scale':
        node_ = scaleConstraint(args, maintainOffset=kwargs['mo'])
    return node_

        
def constraints_(object_, type_, mo_):
    items, targets = divide_in_two(object_)
    consts_ = []
    for i, item in enumerate(items):
        const_ = constraint_(item, targets[i], type=type_, mo=mo_)
        consts_.append(const_)
    return consts_

def one_to_n_constrain(object_, type_, mo_):
    item = object_[0]
    target = object_[1:]
    consts_ = [constraint_(item, i, type=type_, mo=mo_) for i in target]
    return consts_

        
def n_to_one_constrain(object_, type_, mo_):
    item = object_[:-1]
    target = object_[-1]
    consts_ = [constraint_(i, target, type=type_, mo=mo_) for i in item]
    return consts_
        

def local_matrix(object_, t=None, r=None, s=None):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        if target.getParent():
            parent_ = target.getParent()
            atts_ = 'wim'
        else:
            parent_ = target
            atts_ = 'pim'
        _name = '{}_local'.format(target.name())
        MTMX_ = multMatrix_(_name)
        DCMX_ = decompose_(_name)  
        connect_attrs(ls(items[i], MTMX_), 'wm', 'matrixIn[0]')
        connect_attrs(ls(parent_, MTMX_), atts_, 'matrixIn[1]')
        connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
        if t:
            connect_attrs(ls(DCMX_, target), 'ot', t)
        if r:
            connect_attrs(ls(DCMX_, target), 'or', r)
        if s:
            connect_attrs(ls(DCMX_, target), 'os', s)

def decompose_(name_):
    return createNode('decomposeMatrix', n='{}_DCMX'.format(name_))

def multMatrix_(name_):
    return createNode('multMatrix', n='{}_MTMX'.format(name_))

def pairBlend_():
    return createNode('pairBlend')

def blendColors_():
    return createNode('blendColors')

def reverse_():
    return shadingNode('reverse', au=1)

def connect_pairBlend(items_, target_, PRBL_list, BLCL_list):
    items, targets = divide_in_two(items_)
    for i,item in enumerate(items):
        connect_attrs([item, PRBL_list[i]], 't', 'it1')
        connect_attrs([item, PRBL_list[i]], 'r', 'ir1')
        connect_attrs([item, BLCL_list[i]], 's', 'c2')
        connect_attrs([targets[i], PRBL_list[i]], 't', 'it2')
        connect_attrs([targets[i], PRBL_list[i]], 'r', 'ir2')
        connect_attrs([targets[i], BLCL_list[i]], 's', 'c1')
        connect_attrs([PRBL_list[i], target_[i]], 'ot', 't')
        connect_attrs([PRBL_list[i], target_[i]], 'or', 'r')
        connect_attrs([BLCL_list[i], target_[i]], 'output', 's')

def IK_FK_Blend(items_, target_):
    PRBLs = [pairBlend_() for i in target_]
    BLCLs = [blendColors_() for i in target_]
    connect_pairBlend(items_, target_, PRBLs, BLCLs)
    return PRBLs, BLCLs

def main_structure(name_):
    GRPDict = OrderedDict()
    GRPDict['main'] = space_('{}_{}_'.format('main',name_))
    addAttr(GRPDict['main'], ln="FK_IK", nn="FK / IK", at="enum", en="IK:FK:", k=1)
    GRPDict['CTL'] = space_('CTL_', parent_=GRPDict['main'])
    GRPDict['FK_CTL'] = space_('FK_CTL_', parent_=GRPDict['CTL'])
    GRPDict['IK_CTL'] = space_('IK_CTL_', parent_=GRPDict['CTL'])
    GRPDict['JNT'] = space_('JNT_', parent_=GRPDict['main'])
    return GRPDict



num = 3
base_name = 'cape'       
sel = ls(sl=1, r=1, fl=1)
# linear_spacing_joint(3)
# jointChain = hierarchy_(sel[0], type_='joint')
# joint_orient(jointChain)
# add_joint(jointChain, num)

mainGRPs = main_structure(base_name)

ordict_ = OrderedDict()
prefixList = ['main', 'main_FK', 'main_IK', 'main_FK', 'main_IK', 'FK_IK', 'FK_IK', 'FK_IK']
suffixList = ['JNT', 'JNT', 'JNT', 'CTL', 'CTL', 'PRBL', 'BLCL', 'RVS']

ordict_['baseJNTs'] = duplicate_joint(sel[0])        
ordict_['FKJNTs'] = duplicate_joint(sel[0])     
ordict_['IKJNTs'] = duplicate_joint(sel[0])
ordict_['FKCTLs'] = control_(ordict_['FKJNTs'])
ordict_['IKCTLs'] = control_(ordict_['IKJNTs'])
PRBLs, BLCLs = IK_FK_Blend(ls(ordict_['IKJNTs'], ordict_['IKJNTs']), 
                           ordict_['baseJNTs'])
ordict_['PRBLs'] = PRBLs
ordict_['BLCLs'] = BLCLs
ordict_['RVS'] = ls(reverse_())
for i,value in enumerate(ordict_.values()):
    renamer(value,
            name_=base_name, 
            prefix_=prefixList[i], 
            suffix_=suffixList[i])

# FK Setting
chain_structure(ordict_['FKCTLs'])
FKCTLoffset = [offset_(i, num_=2) for i in ordict_['FKCTLs']]
connect_attrs(ls(ordict_['FKCTLs'], ordict_['FKJNTs']), 'r', 'r')
local_matrix(ls(ordict_['FKCTLs'], ordict_['FKJNTs']), t='t', s='s')

# IK Setting
IKCTLoffset = [offset_(i, num_=2) for i in ordict_['IKCTLs']]
local_matrix(ls(ordict_['IKCTLs'], ordict_['IKJNTs']), t='t', r='r', s='s')
IKConstList = {0:[ordict_['IKCTLs'][0],ordict_['IKCTLs'][-1],ordict_['IKCTLs'][2].getParent(2)],
               1:[ordict_['IKCTLs'][0],ordict_['IKCTLs'][2],ordict_['IKCTLs'][1].getParent(2)],
               2:[ordict_['IKCTLs'][-1],ordict_['IKCTLs'][2],ordict_['IKCTLs'][3].getParent(2)]}
IKConsts = [n_to_one_constrain(i,'parent',mo_=1) for i in IKConstList.values()]
[i[0].setAttr('interpType', 2) for i in IKConsts]

[parent(JNTs_[0], mainGRPs['JNT']) for JNTs_ in ordict_.values()[:3]]
parent(ordict_['FKCTLs'][0].getParent(2), mainGRPs['FK_CTL'])
[parent(CTLs_.getParent(2), mainGRPs['IK_CTL']) for CTLs_ in ordict_['IKCTLs']]

one_to_n_connect(ls(mainGRPs['main'], ordict_['PRBLs']), 'FK_IK', 'weight')
one_to_n_connect(ls(mainGRPs['main'], ordict_['BLCLs']), 'FK_IK', 'blender')
connect_attrs(ls(mainGRPs['main'], ordict_['RVS']), 'FK_IK', 'ix')
connect_attrs(ls(mainGRPs['main'], mainGRPs['FK_CTL']), 'FK_IK', 'v')
connect_attrs(ls(ordict_['RVS'], mainGRPs['IK_CTL']), 'ox', 'v')






