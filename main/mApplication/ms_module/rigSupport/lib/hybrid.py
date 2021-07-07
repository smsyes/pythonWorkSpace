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

def checkAttrExist(obj,attr,type,replace):
    attrExist = attributeQuery(attr, node=obj, exists=True)
    newAttr = ''
    if(attrExist == False):
        newAttr = addAttr(obj, longName=attr, at=type)
         
    else:
        if(replace == True):
            deleteAttr(obj, at=attr)
            newAttr = addAttr(obj, longName=attr, at=type)
             
    newAttr = PyNode('{}.{}'.format(obj, attr))
    return (attrExist,newAttr)  

def shape_name_match(curve_):
    shape_ = curve_.getShape()
    shape_.rename(curve_.name()+'Shape')

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

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2

def get_param_at_point(_shape, point):
    return _shape.getParamAtPoint(point)

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}GRP'.format(name_),
                        p=parent_)
    return space_

def locator_(object_):
    loc_ = spaceLocator(n = '{}_{}'.format(object_, 'space'))
    set_transform_(ls(object_,loc_))
    return loc_

def insert_space(object_, 
                 type_):
    if object_.getParent():
        parent_ = object_.getParent()
    else:
        parent_ = None
    name_ = '{}_{}'.format(object_, type_)
    NULL_ = space_(name_, parent_)
    parent(object_, NULL_)
    return NULL_

def padding(num_):
    return str(num_).zfill(2)

def offset_(object_, 
            num_=None):
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

def make_name(object_, 
              name_):
    if object_:
        for i,obj in enumerate(object_):
            pad_ = padding(i+1)
            makeName_ = '{}_{}'.format(name_,pad_)
            obj.rename(makeName_)

def append_name(object_, 
                name_, 
                mode=None):
    if object_:
        for obj in object_:
            if mode ==0:
                obj.rename('{}_{}'.format(name_,obj))
            if mode ==1:
                obj.rename('{}_{}'.format(obj,name_))


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

def connect_attrs(object_, 
                  output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)

def one_to_n_connect(object_, 
                     output, input):
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

        
def constraints_(object_, 
                 type_, 
                 mo_):
    items, targets = divide_in_two(object_)
    consts_ = []
    for i, item in enumerate(items):
        const_ = constraint_(item, targets[i], type=type_, mo=mo_)
        consts_.append(const_)
    return consts_

def one_to_n_constrain(object_, 
                       type_, 
                       mo_):
    item = object_[0]
    target = object_[1:]
    consts_ = [constraint_(item, i, type=type_, mo=mo_) for i in target]
    return consts_

        
def n_to_one_constrain(object_, 
                       type_, 
                       mo_):
    item = object_[:-1]
    target = object_[-1]
    consts_ = [constraint_(i, target, type=type_, mo=mo_) for i in item]
    return consts_

def pos_at_param(_shape, *args): # get current object Position at parameter
    args = ls(args)
    param_list = []
    for i in args:
        trans, rot = get_transform(i)
        param = get_param_at_point(_shape, trans)
        param_list.append(param)
    return param_list
        
# current object Position >> curve Parameter >> object Position
def param_at_objectPositions(object_):
    _shape = object_[0].getShape()
    _object = object_[1:]
    params_ = pos_at_param(_shape, _object)
    
    for i,object in enumerate(_object):
        POCI = po_crv_info(_shape)
        setAttr('{}.parameter'.format(POCI), params_[i])
        connect_attr(POCI, 'p', object, 't')


def local_matrix(object_, 
                 t=None, r=None, s=None):
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

def matrixConstraint(object_, 
                     t=None, r=None, s=None):
    item, target = object_[0],object_[1]
    _name = '{}2{}'.format(item.name(), target.name())

    MTMX_ = multMatrix_(_name)
    DCMX_ = decompose_(_name)
    mat1_ = getTransform(target)
    mat2_ = getInverseTransform(item)
    multmat_ = getMultMatrix(mat1_, mat2_)
    
    attrExist, newAttr = checkAttrExist(target,'offset','matrix',True)
    setAttr(newAttr, multmat_)
    connect_attrs(ls(target, MTMX_), 'offset', 'matrixIn[0]')
    connect_attrs(ls(item, MTMX_), 'wm', 'matrixIn[1]')
    if target.getParent():
        connect_attrs(ls(target.getParent(), MTMX_), 'wim', 'matrixIn[2]')
    else:
        connect_attrs(ls(target, MTMX_), 'pim', 'matrixIn[2]')
    connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
    if t:
        connect_attrs(ls(DCMX_, target), 'ot', 't')
    if r:
        connect_attrs(ls(DCMX_, target), 'or', 'r')
    if s:
        connect_attrs(ls(DCMX_, target), 'os', 's')
            
            
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

def po_crv_info(_shape):
    _node = createNode('pointOnCurveInfo', n='{}_POCI'.format(_shape))
    connect_attr(_shape, 'ws', _node, 'ic')
    return _node

def object_cv_curve(object_, dgree_=None):
    if not dgree_:
        dgree_ = 1
    trans_list = []
    for i in object_:
        trans, rot = get_transform(i)
        trans_list.append(trans)
    crv_ = curve(d=dgree_, p = trans_list)
    return crv_

def rebuild_curve(curve_,
                  ch=None,
                  rpo=None,
                  rt=None,
                  end=None,
                  kr=None,
                  kcp=None,
                  kep=None,
                  kt=None,
                  s=None,
                  d=None,
                  tol=None):
    data={}
    if ch is not None:
        data["constructionHistory"] = ch
    if rpo is not None:
        data["replaceOriginal"] = rpo
    if rt is not None:
        data["rebuildType"] = rt
    if end is not None:
        data["endKnots"] = end
    if kr is not None:
        data["keepRange"] = kr
    if kcp is not None:
        data["keepControlPoints"] = kcp
    if kep is not None:
        data["keepEndPoints"] = kep
    if kt is not None:
        data["keepTangents"] = kt
    if s is not None:
        data["spans"] = s
    if d is not None:
        data["d"] = d
    if tol is not None:
        data["tolerance"] = tol
    rebuildCurve(curve_, **data)

def ikHandle_(n=None,
              c=None,
              sj=None,
              ee=None,
              sol=None,
              ccv=None,
              scv=None,
              pcv=None):
    data={}
    if n is not None:
        data["name"] = n
    if c is not None:
        data["curve"] = c
    if sj is not None:
        data["startJoint"] = sj
    if ee is not None:
        data["endEffector"] = ee
    if sol is not None:
        data["solver"] = sol
    if ccv is not None:
        data["createCurve"] = ccv
    if scv is not None:
        data["simplifyCurve"] = scv
    if pcv is not None:
        data["parentCurve"] = pcv
    ikHandle(**data)
    
def IK_Axis(IK_CTL, IK_LOC_off, IK_LOC, upVec_LOC, up=None):
    if up:
        if up=='x':
            up_=(1,0,0)
        if up=='y':
            up_=(0,1,0)
        if up=='z':
            up_=(0,0,1)
    else:
        up_=(0,0,1)

    local_matrix(ls(IK_CTL[0],
                 IK_LOC_off[0]), 
                 r='r')
    '''
    local_matrix(ls(IK_CTL[-1], 
                 IK_LOC_off[-1]), 
                 r='r')'''
       
    for i,spc in enumerate(IK_LOC[:-1]):
        aimItem = spc
        aimTarget = IK_LOC_off[i+1]
        aimUpVec = upVec_LOC[i+1]
        aimConstraint(aimItem, aimTarget, mo=1, 
                      aimVector=(-1,0,0), upVector=up_, 
                      worldUpType='object', worldUpObject=aimUpVec)

def main_structure(name_):
    GRPDict = OrderedDict()
    GRPDict['main'] = space_('{}_{}_'.format('main',name_))
    addAttr(GRPDict['main'], ln="FK_IK", nn="FK / IK", at="enum", en="IK:FK:", k=1)
    GRPDict['CTL'] = space_('CTL_', parent_=GRPDict['main'])
    GRPDict['FK_CTL'] = space_('FK_CTL_', parent_=GRPDict['CTL'])
    GRPDict['IK_CTL'] = space_('IK_CTL_', parent_=GRPDict['CTL'])
    GRPDict['JNT'] = space_('JNT_', parent_=GRPDict['main'])
    return GRPDict

base_name = 'cape'       
sel = ls(sl=1, r=1, fl=1)

# mainGRPs = main_structure(base_name)

ordict_ = OrderedDict()
prefixList = ['FK', 'IK', 'FK', 'IK', 'IK_space', 'IK', 'IK_upVec']
suffixList = ['JNT', 'JNT', 'CTL', 'CRV', 'LOC', 'CTL', 'LOC']

ordict_['FKJNTs'] = duplicate_joint(sel[0])
ordict_['IKJNTs'] = duplicate_joint(sel[0])
ordict_['FKCTLs'] = control_(ordict_['FKJNTs'])

ordict_['IKCRV'] = [object_cv_curve(ordict_['IKJNTs'], dgree_=1)]
ordict_['IKLOC'] = [locator_(JNT) for JNT in ordict_['IKJNTs']]
ordict_['IKCTLs'] = control_(ordict_['IKLOC'])

ordict_['IKupVec'] = [locator_(JNT) for JNT in ordict_['IKJNTs']]

for i,value in enumerate(ordict_.values()):
    renamer(value,
            name_=base_name, 
            prefix_=prefixList[i], 
            suffix_=suffixList[i])

# FK Setting
FK_off_space = [offset_(i, num_=2) for i in ordict_['FKCTLs']]
FK_cnt_space = [insert_space(CTL, 'cnt') for CTL in ordict_['FKCTLs']]
FK_spc_space = [CTL.getParent(2) for CTL in ordict_['FKCTLs']]
connect_attrs(ls(ordict_['FKCTLs'], 
                 ordict_['FKJNTs']), 
                 'r', 'r')
local_matrix(ls(ordict_['FKCTLs'], 
                ordict_['FKJNTs']), 
                t='t', s='s')

connect_attrs(ls(ordict_['IKJNTs'][1:], 
                 FK_spc_space[1:]), 
                 'r', 'r')
local_matrix(ls(ordict_['IKJNTs'][0], 
                ordict_['FKCTLs'][0].getParent(3)), 
                t='t',r='r',s='s')

[matrixConstraint(ls(CTL, 
                  FK_off_space[1:][i]), 
                  t='t', r='r') for i,
                  CTL in enumerate(ordict_['FKCTLs'][:-1])]


# IK Setting
IK_off_space = [offset_(i, num_=2) for i in ordict_['IKCTLs']]
rebuild_curve(ordict_['IKCRV'],
              ch=1,
              rpo=1,
              rt=0,
              end=1,
              kr=2,
              kcp=0,
              kep=1,
              kt=0,
              s=2,
              d=3,
              tol=0.01)
IK_locOffs = [offset_(LOC, num_=2) for LOC in ordict_['IKLOC']]
[LOC.setAttr('tz', 3) for LOC in ordict_['IKupVec']]
upVec_locOffs = [offset_(LOC, num_=2) for LOC in ordict_['IKupVec']]
IKupVecCRV = [object_cv_curve(ordict_['IKupVec'], dgree_=1)]
renamer(IKupVecCRV,
        name_=base_name, 
        prefix_='IK_upVec', 
        suffix_='CRV')
param_at_objectPositions(ls(ordict_['IKCRV'], IK_locOffs))
param_at_objectPositions(ls(IKupVecCRV, upVec_locOffs))
IK_Axis(ordict_['IKCTLs'], IK_locOffs, ordict_['IKLOC'], ordict_['IKupVec'])
local_matrix(ls(ordict_['IKLOC'], ordict_['IKJNTs']), 't', 'jointOrient', 's')

'''
[parent(JNTs_[0], mainGRPs['JNT']) for JNTs_ in ordict_.values()[:3]]
parent(ordict_['FKCTLs'][0].getParent(2), mainGRPs['FK_CTL'])
[parent(CTLs_.getParent(2), mainGRPs['IK_CTL']) for CTLs_ in ordict_['IKCTLs']]
'''





