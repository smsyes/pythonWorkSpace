# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
str to unicode
unicode to str
Get the shape of an object

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

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
import pymel.core.datatypes as dt
import maya.OpenMaya as om
import string
import sys
import os
import math
import random 
from collections import OrderedDict

module_path = 'D:\script\main\mApplication\ms_module\lib\dict_lib'
if not module_path in sys.path:
    sys.path.append(module_path)
    
import _shape_dic
reload(_shape_dic)
#(add import something more...)
# front && back of classes 3 empty lines.
#


def to_unicode(unicode_or_str):
    '''Function || method descriptions.
    str to unicode
    '''
    if isinstance(unicode_or_str, str):
        value = unicode_or_str.decode('utf-8')
    else:
        value = unicode_or_str
    return value


def to_str(unicode_or_str):
    '''Function || method descriptions.
    unicode to str
    '''
    if isinstance(unicode_or_str, unicode):
        value = unicode_or_str.encode('utf-8')
    else:
        value = unicode_or_str
    return value


def shape_(object_):
    selectedTransform = object_
    return selectedTransform.getShape()


def name_(object_):
    return to_str(object_.name())


def node_(object_):
    return object_.nodeType()


def get_cvs(_shape):
    return _shape.getCVs(space='world')


def get_param_at_point(_shape, point):
    return _shape.getParamAtPoint(point)


def distance_point(_shape, point):
    return _shape.distanceToPoint(point)


def get_point_at_param(_shape, param):
    return _shape.getPointAtParam(param)


def length_(_shape):
    return _shape.length()


def num_cvs(_shape):
    return _shape.numCVs()


def num_spans(_shape):
    return _shape.numSpans()


def reverse_(_shape):
    return _shape.reverse()


def set_parent(*args):
    args[0].setParent(args[1])
    
    
#
# nodes
#
def crv_info(_shape):
    _node = createNode('curveInfo', n='{}_CVIF'.format(_shape))
    connect_attr(_shape, 'ws', _node, 'ic')
    return _node


def po_crv_info(_shape):
    _node = createNode('pointOnCurveInfo', n='{}_POCI'.format(_shape))
    connect_attr(_shape, 'ws', _node, 'ic')
    return _node


def po_surf_info(name_, _shape):
    _node = createNode('pointOnSurfaceInfo', n='{}_POSI'.format(name_))
    connect_attr(_shape, 'ws', _node, 'is')
    return _node


def rot_helper(name_, object_):
    _node = createNode('rotateHelper', n='{}_ROHP'.format(name_))
    connect_attr(object_, 'n', _node, 'up')
    connect_attr(object_, 'tv', _node, 'f')
    return _node


def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}_DCMX'.format(name_))
    return _node


def closestPOCI(name_):
    _node = createNode('closestPointOnSurface', n='{}_CPOS'.format(name_))
    return _node
    
    
def multiply_(name_, type_=None):
    if type_:
        pass
    else:
        type_ = 'MLDV'
    _node = createNode('multiplyDivide', n='{}_{}'.format(name_, type_))
    return _node


def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}_MTMX'.format(name_))
    return _node


def pairBlend_(name_):
    _node = createNode('pairBlend', n='{}_PRBL'.format(name_))
    return _node
                

def blendColors_(name_):
    _node = createNode('blendColors', n='{}_BLCL'.format(name_))
    return _node
    

def space_(_name, type_, parent_):
    space_ = createNode('transform', 
                        n='{}_{}GRP'.format(_name, type_), 
                        p=parent_)
    return space_
    
    
#
# get, set
#
def get_transform(object_):
    _name = name_(object_)
    trans = cmds.xform(_name, q=1, ws=1, rp=1 )
    rot = cmds.xform(_name, q=1, ws=1, ro=1 )
    return trans, rot


def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)


def set_rot_xform(object_, rot):
    xform(object_, r = 1, ro = rot)


def set_rot_xform_axis(object_, axis=None):
    if not axis:
        axis = 'x'
    if axis == 'x':
        rot = (0, 90, 0)
    if axis == 'y':
        rot = (-90, 0, 0)
    if axis == 'z':
        rot = (0, 0, 0)
    object_.setRotateAxis(rot)
    object_.setRotation(rotation=(0, 0, 0))


def connect_param_of_point(_shape):
    connectionList = listConnections('{}.ws'.format(_shape))
    if '{}_POCI'.format(_shape) in connectionList:
        print 'aready Connections InCurve'
    else:
        infoNode = po_crv_info(_shape)


def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()

def getMultMatrix(mat1, mat2):
    return mat1*mat2

#
# joint
#
def joint_(_name):
    JNT = joint(n='{}_JNT'.format(_name))
    return JNT


def object_at_joint(object_):
    JNTList = []
    for i,object in enumerate(object_):
        select(cl=1)
        _name = '_'.join(name_(object).split('_')[:-1])
        trans, rot = get_transform(object)
        JNT = joint_(_name)
        set_trans_xform(JNT, trans)
        set_rot_xform(JNT, rot)
        JNTList.append(JNT)
    return JNTList


def select_joint(object_):
    jnt_ = listRelatives(object_, ad = 1, typ = 'joint')
    select(jnt_)
    return jnt_
    
 
def orient_joint(object_, oj=None, sao=None):
    if not oj:
        oj = 'xyz'
    if not sao:
        sao = 'xup'
    joint(object_, e=1, oj=oj, sao=sao, zso=1)
    for i in object_:
        setAttr('{}.jointOrient'.format(i[-1]), [0,0,0])
        
            
#
# curve
#
def curve_at_joint(object_):
    if not isinstance(object_, list):
        object_ = ls(object_)
    for i, object in enumerate(object_):
        _name = '_'.join(name_(object).split('_')[:-1])
        _shape = shape_(object)
        cvs = get_cvs(_shape)
        JNTList = []

        for j,pos in enumerate(cvs):
            select(cl=1)
            JNT = joint_(_name)
            set_trans_xform(JNT, pos)
            JNTList.append(JNT)

            if j == 0:
                stJNT = JNT
            if pos == cvs[-1]:
                enJNT = JNT
            if j > 0:
                set_parent(JNT, JNTList[j-1])


def curve_at_null(object_):
    if not isinstance(object_, list):
        object_ = ls(object_)
    for i, object in enumerate(object_):
        _name = '_'.join(name_(object).split('_')[:-1])
        _shape = shape_(object)
        cvs = get_cvs(_shape)
        NULLList = []

        for j,pos in enumerate(cvs):
            select(cl=1)
            NULL_ = space_(_name, 'spc', None)
            set_trans_xform(NULL_, pos)
            NULLList.append(NULL_)
                
                
def curveParam_at_joint(object_, type_):
    JNTDict = {}
    if not isinstance(object_, list):
        object_ = ls(object_)
    for i, object in enumerate(object_):
        _name = '{}_{}'.format(name_(object), type_)
        _shape = shape_(object)
        param = num_spans(_shape) +1
        JNTList = []
        JNTDict[object] = JNTList

        for j in range(param):
            _pad = num_padding_(j)
            trans = get_point_at_param(_shape, j)
            select(cl=1)
            JNTName = '{}_{}'.format(_name, _pad)
            JNT = joint_(JNTName)
            set_trans_xform(JNT, trans)
            JNTList.append(JNT)

            if j == 0:
                stJNT = JNT
            if j == range(param)[-1]:
                enJNT = JNT
            if j > 0:
                set_parent(JNT, JNTList[j-1])
    return JNTDict


def cvs_at_param(_shape):
    param_list = []
    cvs_pos = get_cvs(_shape)
    for i in cvs_pos:
        param = get_param_at_point(_shape, i)
        param_list.append(param)
    return param_list
                    

#
# connect, constraint
#
def constraint_(*args, **kwargs):
    if kwargs['type'] == 'parent':
        parentConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'point':
        pointConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'orient':
        orientConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'scale':
        scaleConstraint(args, maintainOffset=kwargs['mo'])


def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets


def constraints_(object_, type_, mo_):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        constraint_(item, targets[i], type=type_, mo=mo_)


def setParents_(object_):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        set_parent(item, targets[i])


def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))


def poci_connect(object_):
    item = object_[0]
    target = object_[1:]
    _shape = shape_(item)
    param_ = cvs_at_param(_shape)
    for i,param in enumerate(param_):
        POCI = po_crv_info(_shape)
        setAttr('{}.parameter'.format(POCI), param)
        connect_attr(POCI, 'p', target[i], 't')


def connect_attrs(object_, output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)


def one_to_n_constrain(object_, type_, mo_):
    item = object_[0]
    target = object_[1:]
    for i, object in enumerate(target):
        constraint_(item, object, type=type_, mo=mo_)


def one_to_n_connect(object_, output, input):
    item = object_[0]
    target = object_[1:]
    for i, object in enumerate(target):
        connect_attr(item, output, object, input)


def decompose_connect(object_):
    items, targets = divide_in_two(selObject)
    DCM_list = []
    for i,item in enumerate(object_):
        _name = name_(item)
        if '|' in _name:
            _name = _name.split('|')[-1]
        _DCM = decompose_(_name)
        DCM_list.append(_DCM)
        connect_attrs([item, _DCM], 'wm', 'inputMatrix')
        '''
        connect_attrs([_DCM, targets[i]], 'or', 'r')
        connect_attrs([_DCM, targets[i]], 'ot', 't')
        connect_attrs([_DCM, targets[i]], 'os', 's')
        '''
    return DCM_list
    

def selected_find(object_, find):
    all_deg = object_[0].listRelatives(ad=1)
    find_list = []
    for i,object in enumerate(all_deg):
        spl_name = object.split('_')
        if find in spl_name:
            find_list.append(object)
    select(find_list)
    return find_list
      

def subtract(object_):
    for i,object in enumerate(object_):
        parents = object.listRelatives(p=1)[0]
        name = object.name()
        subtract = createNode('multiplyDivide', 
                            n = '{}_subtract_MULT'.format(name))
        setAttr('{}.i2'.format(subtract), -1,-1,-1)
        connect_attr(object, 't', subtract, 'i1')
        connect_attr(subtract, 'o', parents, 't')
        
        
def shape_name_match(object_):
    for i,name in enumerate(object_):
        _shape = shape_(name)
        shape_name = '{}Shape'.format(name)
        if _shape != shape_name:
            print 'rename {} -> {}'.format(_shape, shape_name)
            rename(_shape, shape_name)
                            

def surface_uvSpans_num(object_):
    _shape = shape_(object_)
    Uspans = _shape.numSpansInU()
    Vspans = _shape.numSpansInV()
    print('U number is ({0}), V number is ({1})'.format(Uspans, Vspans))
    return Uspans, Vspans
    

def surf_param_space(object_, uNum, vNum):
    uMax, vMax = surface_uvSpans_num(object_)
    _name = name_(object_)
    _shape = shape_(object_)
    for u in range(uNum):
        for v in range(vNum):
            name = '{}_U{}_V{}'.format(_name, u, v)
            _POSI = po_surf_info(name, _shape)
            _POSI.setAttr('parameterU', u)
            _POSI.setAttr('parameterV', v)
            _rotH = rot_helper(name, _POSI)
            _space = space_(name, 'spc', None)
            addAttr(_space, ln='paramU', sn='pu', at='float', dv=u, min=0, max=uMax, k=1)
            addAttr(_space, ln='paramV', sn='pv', at='float', dv=v, min=0, max=vMax, k=1)
            connect_attrs([_space, _POSI], 'pu', 'parameterU')
            connect_attrs([_space, _POSI], 'pv', 'parameterV')
            connect_attrs([_POSI, _space], 'p', 't')
            _DCM = decompose_(name)
            connect_attrs([_rotH, _DCM], 'rotateMatrix', 'inputMatrix')
            connect_attrs([_DCM, _space], 'or', 'r')
                
   
def even_or_odd(num):
    if num%2 == 0:
        return 'Even'
    else:
        return 'Odd'    
               

def chain_structure(object_):
    childList = object_[1:]
    parentList = object_[:-1]
    
    for i,object in enumerate(childList):
        parent(object, parentList[i])
     
        
def parent_chain(object_, num=None):
    if not num:
        num = 1
    parent_ = listRelatives(object_[0], p=1)
    space_list = []
    for i,object in enumerate(object_):
        _name = name_(object)
        space = space_(_name, 'spc', object)
        space_list.append(space)
        parent(space, w=1)
        parent(object, space)
    
    childList = space_list[1:]
    parentList = object_[:-1]
    
    for i,object in enumerate(childList):
        parent(object, parentList[i])
    if parent_:
        parent(space_list[0],parent_[0])        

 
def reverse(object_):
    object_.reverse()
    return object_


def sets_(object_):
    _sets = sets(object_)
    return _sets


def pose_setRange(*args):
    _object = args[0]
    transSet = args[1]
    rotSet = args[2]
    _name = name_(_object)
    values = ['vx','vy','vz']
    trans_SRG = createNode('setRange', n = '{}_trans_SRG'.format(_name))
    rot_SRG = createNode('setRange', n = '{}_rot_SRG'.format(_name))
    setAttr('{}.om'.format(trans_SRG), (1,1,1))
    setAttr('{}.om'.format(rot_SRG), (1,1,1))
    setAttr('{}.m'.format(trans_SRG), transSet)
    setAttr('{}.m'.format(rot_SRG), rotSet)
    for i in values:
        connect_attrs([_object, trans_SRG], 'weight', i)
        connect_attrs([_object, rot_SRG], 'weight', i)


def curve_at_cluster(object_):
    clsList = []
    _name = name_(object_)
    _shape = shape_(object_)
    cv_num = num_cvs(_shape)
    select(cl=1)
    for i in range(cv_num):
        select('{}.cv[{}]'.format(_name, i))
        cls = cluster(en=1, n = '{}_{}_cls'.format(_name,i))
        clsList.append(cls)
    return clsList
    
        
def curve_param_at_pos(object_, div=None):
    posList = []
    _name = name_(object_)
    _shape = shape_(object_)
    param = num_spans(_shape) +1
    num = param
    if div:
        num = param/div
    for i in range(num):
        if div:
            i = i*div
        trans = get_point_at_param(_shape, i)
        posList.append(trans)
    print posList
    return posList


def curve_param_at_joint(object_):
    JNTList_ = []
    if not isinstance(object_, list):
        object_ = ls(object_)
    for i,object in enumerate(object_):
        _name = name_(object)
        posList_ = curve_param_at_pos(object)
        select(cl=1)
        for j,object in enumerate(posList_):
            num_ = num_padding_(j+1)
            JNT_ = joint(n='{}_{}_JNT'.format(_name,num_), p=(object))
            JNTList_.append(JNT_)
        

def select_constraint(object_):
    pointConst = listRelatives(object_, ad = 1, typ = 'pointConstraint')
    orientConst = listRelatives(object_, ad = 1, typ = 'orientConstraint')
    parentConst_ = listRelatives(object_, ad = 1, typ = 'parentConstraint')
    scaleConst_ = listRelatives(object_, ad = 1, typ = 'scaleConstraint')
    select(pointConst, orientConst, parentConst_, scaleConst_)
    return pointConst, orientConst, parentConst_, scaleConst_


def blendshape_target_list(blendshape_):
    index_list = [0] + blendshape_.weightIndexList()
    base_object = blendshape_.getBaseObjects()[0]
    target_list = []
    attr_list = []
    for index in index_list:
        attr = aliasAttr( '{0}.weight[{1}]'.format( blendshape_, index ), query = True )
        if attr == '':
            print 'empty'
        else:
            print attr
            attr_full_name = '{}.{}'.format(blendshape_, attr)
            setAttr(attr_full_name, 1)
            dupl_object = duplicate(base_object)
            rename(dupl_object, '{}_geo'.format(attr))
            setAttr(attr_full_name, 0)
            target_list.append(attr_full_name)
            attr_list.append(attr)
    return attr_list, target_list


def blendshape_target_duplicate(object_, blendshapeName):
    blendshape_ = ls(blendshapeName)[0]
    base_object = object_[0]
    attr_list, target_list = blendshape_target_list(blendshape_)
    for i,target in enumerate(target_list):
        setAttr(target, 1)
        dupl_object = duplicate(base_object)
        rename(dupl_object, '{}_geo'.format(attr_list[i]))
        setAttr(target, 0)
        

def middle_vec_space(object_, numA, numB):
    for i,object in enumerate(object_):
        upVec = '{}.vtx[{}]'.format(object,numA)
        dnVec = '{}.vtx[{}]'.format(object,numB)
        upVec = PyNode(upVec)
        dnVec = PyNode(dnVec)
        posA = upVec.getPosition()
        posB = dnVec.getPosition()
        middlePos = (posA - posB)/2 + posB
        _name = 'space_{}'.format(i)
        _space = space_(_name, 'spc', None)
        set_trans_xform(_space, middlePos)
        

def selected_bindSkin(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        select(cl=1)
        bindSkin(item, targets[i])   


def object_cv_curve(object_, dgree_ = None):
    if not dgree_:
        dgree_ = 1
    trans_list = []
    for i in object_:
        trans, rot = get_transform(i)
        trans_list.append(trans)
    crv_ = curve(d=dgree_, p = trans_list)
    return crv_


def mir_trans(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        item_name = name_(item)
        target_name = name_(targets[i])
        trans = getAttr('{}.t'.format(item_name))
        rvs_trans = trans[0]*-1, trans[1]*-1, trans[2]*-1
        setAttr('{}.t'.format(target_name), rvs_trans)


def mir_rot(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        item_name = name_(item)
        target_name = name_(targets[i])
        rot = getAttr('{}.r'.format(item_name))
        rvs_rot = rot[0]*-1, rot[1]*-1, rot[2]*-1
        setAttr('{}.r'.format(target_name), rvs_rot)
        

def set_trans(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        item_name = name_(item)
        target_name = name_(targets[i])
        trans = getAttr('{}.t'.format(item_name))
        setAttr('{}.t'.format(target_name), trans)


def set_rot(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        item_name = name_(item)
        target_name = name_(targets[i])
        rot = getAttr('{}.r'.format(item_name))
        setAttr('{}.r'.format(target_name), rot)
        
                        
def crvShape_(object_, type_):
    shape_dic = _shape_dic.load_dic(type_)
    _name = object_.name()
    crv_ = cmds.curve(n = _name, d = shape_dic[0], 
                      p = shape_dic[1], k = shape_dic[2])
    return crv_
    

def alpha_padding_(num_):
    alphabet_ = string.ascii_uppercase[num_]
    return alphabet_


def num_padding_(num_):
    number_ = str(num_).zfill(2)
    return number_


def OS_(object_):
    offList_ = []
    spcList_ = []
    for i,object in enumerate(object_):
        offNULL_ = space_(object, 'off', object)
        spcNULL_ = space_(object, 'spc', offNULL_)
        offList_.append(offNULL_)
        spcList_.append(spcNULL_)
        parent(offNULL_, w=1)
    parentList = ls(object_, spcList_)
    setParents_(parentList)
    return offList_, spcList_


def controller_(object_, type_):
    CTLList_ = []
    for i,object in enumerate(object_):
        CTL_ = crvShape_(object, type_)
        shape_name_match(ls(CTL_))
        CTLList_.append(CTL_)
    return CTLList_
    

def set_transform_(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        pos, rot = get_transform(item)
        set_trans_xform(targets[i], pos)
        set_rot_xform(targets[i], rot)


def nameList_(object_):
    nameList = []
    for i in object_:
        objectName = '_'.join(i.split('_')[:-1])
        nameList.append(objectName)
    return nameList
    

def parentChain(object_):
    for i,object in enumerate(object_[:-1]):
        childEnd_ = ls(object)[0].listRelatives(ad=1)[0]
        if childEnd_.type() == 'nurbsCurve':
            childEnd_ = childEnd_.getParent()
        parents = ls(object_[i+1], childEnd_)
        setParents_(parents)


def decompose_set(object_):
    items, targets = divide_in_two(object_)
    DCM_list = []
    for i,item in enumerate(items):
        _name = name_(item)
        if '|' in _name:
            _name = _name.split('|')[-1]
        _DCM = decompose_(_name)
        DCM_list.append(_DCM)
        connect_attrs([item, _DCM], 'wm', 'inputMatrix')
        connect_attrs([_DCM, targets[i]], 'or', 'r')
        connect_attrs([_DCM, targets[i]], 'ot', 't')
        connect_attrs([_DCM, targets[i]], 'os', 's')
    return DCM_list
        

def FK_set(stJNT_):
    # Changed to FK joint chain structure
    JNTList_ = listRelatives(stJNT_, ad=1, typ='joint')[1:] + [stJNT_[0]]
    JNTList_.reverse()
    JNToffList_, JNTspcList_ = OS_(JNTList_)
    parentChain(JNToffList_)
    
    # FK controller structure creation
    nameList = nameList_(JNTList_)
    CTLList_ = controller_(nameList, 'cube')
    setList = ls(JNTList_, CTLList_)
    set_transform_(setList)
    CTLoffList_, CTLspcList_ = OS_(CTLList_)
    parentChain(CTLoffList_)
    
    # FK connection setting
    consts_ = ls(CTLList_, JNTspcList_)
    connect_attrs(consts_, 't', 't')
    connect_attrs(consts_, 'r', 'r')
    connect_attrs(consts_, 's', 's')
    strConsts = ls(CTLoffList_[0], JNToffList_[0])
    connect_attrs(strConsts, 't', 't')
    connect_attrs(strConsts, 'r', 'r')
    connect_attrs(strConsts, 's', 's')
    return CTLList_, JNTList_
    


def IK_set(stJNT_):
    JNTList_ = listRelatives(stJNT_, ad=1, typ='joint') + [stJNT_[0]]
    nameList = nameList_(JNTList_)
    JNToffList_, JNTspcList_ = OS_(JNTList_)
    CTLList_ = controller_(nameList, 'circle')
    setList = ls(JNTList_, CTLList_)
    set_transform_(setList)
    CTLoffList_, CTLspcList_ = OS_(CTLList_)
    connects_ = ls(CTLList_, JNTspcList_)
    connect_attrs(connects_, 't', 't')
    connect_attrs(connects_, 'r', 'r')
    connect_attrs(connects_, 's', 's')
    return CTLList_, JNTList_
  

def split_name(object_, num_):
    splList = []
    for i in object_:
        if '|' in i:
            i = i.split('|')[-1]
        splName_ = '_'.join(i.split('_')[:num_])
        splList.append(splName_)
    return splList
    

def add_space(object_, type_):
    NULLList_ = []
    for i in object_:
        if i.getParent():
            parent_ = i.getParent()
        else:
            parent_ = None
        NULL_ = space_(i, type_, parent_)
        NULLList_.append(NULL_)
    parents_ = ls(object_, NULLList_)
    setParents_(parents_)
    return NULLList_


def alpha_number_pad(object_, name_):
    for i,object in enumerate(object_):
        pad_ = '{}_{}'.format(alpha_padding_(i), num_padding_(1))
        rename(object, pad_)
        childList_ = object.listRelatives(ad=1)
        childList_.reverse()
        for j,child_ in enumerate(childList_):
            pad_ = '{}_{}'.format(alpha_padding_(i), num_padding_(j+2))
            rename(child_, '{}_{}'.format(name_, pad_))        


def random_color(object_):
    for i in object_:
        tmp=random.uniform(17,31)
        setAttr('{}.{}'.format(i,'overrideEnabled'), 1)
        setAttr('{}.{}'.format(i,'overrideColor'), tmp)
        

def connect_pairBlend(object_):
    items, targets = divide_in_two(object_)
    PRBL_list = []
    BLCL_list = []
    for i,object in enumerate(items):
        objectName_ = name_(object)
        if 'FK' in objectName_:
            _name = objectName_.split('FK')[0]
        elif 'IK' in objectName_:
            _name = objectName_.split('IK')[0]
        else:
            _name = objectName_.split('_')[0]
        PRBL_ = pairBlend_(_name)
        BLCL_ = blendColors_(_name)
        PRBL_list.append(PRBL_)
        BLCL_list.append(BLCL_)
        connect_attrs([object, PRBL_], 't', 'it1')
        connect_attrs([object, PRBL_], 'r', 'ir1')
        connect_attrs([object, BLCL_], 's', 'c1')
        connect_attrs([targets[i], PRBL_], 't', 'it2')
        connect_attrs([targets[i], PRBL_], 'r', 'ir2')
        connect_attrs([targets[i], BLCL_], 's', 'c2')
    return PRBL_list, BLCL_list
                

def curve_stretch_set(object_):
    MULT_list = []
    BLCL_list = []
    if not isinstance(object_, list):
        object_ = ls(object_)
    for i,object in enumerate(object_):
        _shape = shape_(object)
        _name = name_(object)
        CVIF_ = crv_info(_shape)
        DIVD_ = multiply_(_name, 'nomarlize_DIVD')
        MULT_ = multiply_(_name, 'globalScale_MULT')
        BLCL_ = blendColors_(_name)
        connect_attrs(ls(CVIF_,DIVD_), 'arcLength', 'i1x')
        arcLength_ = getAttr('{}.{}'.format(DIVD_, 'i1x'))
        setAttr('{}.{}'.format(DIVD_, 'operation'), 2)
        setAttr('{}.{}'.format(MULT_, 'i2x'), arcLength_)
        setAttr('{}.{}'.format(MULT_, 'i1x'), 1)
        connect_attrs(ls(MULT_,DIVD_), 'ox', 'i2x')
        setAttr('{}.{}'.format(BLCL_, 'c2r'), 1)
        connect_attrs(ls(DIVD_,BLCL_), 'ox', 'c1r')
        MULT_list.append(MULT_)
        BLCL_list.append(BLCL_)
        select(cl=1)
    print 'GlobalScale Node List {}, Output List {}'.format(MULT_list, BLCL_list)
    return MULT_list, BLCL_list
    

def CPOS_connect01(object_):
    CPOS_list = []
    surface_shape = shape_(object_[-1])
    object_ = object_[:-1]
    DCMX_ = decompose_connect(object_)
    for i,object in enumerate(object_):
        _name = name_(object)
        CPOS_ = closestPOCI(_name)
        CPOS_list.append(CPOS_)
        connectList = ls(DCMX_[i], CPOS_)
        connect_attrs(connectList, 'ot', 'ip')
    connect_surf = ls(surface_shape, CPOS_list)
    one_to_n_connect(connect_surf, 'ws', 'inputSurface')
    return CPOS_list


def CPOS_connect02(CPOS_, object_):
    clist_ = ls(CPOS_, object_)
    connect_attrs(clist_, 'parameterU', 'paramU')
    connect_attrs(clist_, 'parameterV', 'paramV')
    

def suffix_(object_, suffixName):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        _name = name_(target)
        rename_ = '{}_{}'.format(_name, suffixName)
        rename(items[i], rename_)
        print rename_
        
                
def mirror_connect(object_, type_=None):
    if not type_:
        type_ = 't'
        name_type = 'trans'
    if type_ == 't':
        name_type = 'trans'
    if type_ == 'r':
        name_type = 'rot'
    items, targets = divide_in_two(object_)
    mirror_MULT_list = []
    for i,item in enumerate(items):
        _name = '{}_{}'.format(item, name_type)
        mirror_MULT = multiply_(_name, type_=None)
        setAttr('{}.{}'.format(mirror_MULT, 'i2y'), -1)
        setAttr('{}.{}'.format(mirror_MULT, 'i2z'), -1)
        connect_attrs(ls(item, mirror_MULT), 'type_', 'i1')
        connect_attrs(ls(mirror_MULT, targets[i]), 'o', 'type_')
        mirror_MULT_list.append(mirror_MULT)
    return mirror_MULT_list    
    
    
def local_matrix(object_):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        _name_ = name_(target)  
        localMat = items[i].getMatrix(worldSpace=True)
        MTMX_ = multMatrix_(_name_)
        DCMX_ = decompose_(_name_)  
        connect_attrs(ls(items[i], MTMX_), 'wm', 'matrixIn[0]')
        connect_attrs(ls(target, MTMX_), 'pim', 'matrixIn[1]')
        connect_attrs(ls(MTMX_, DCMX_), 'matrixSum', 'inputMatrix')
        connect_attrs(ls(DCMX_, target), 'ot', 't')
        connect_attrs(ls(DCMX_, target), 'or', 'r')
        connect_attrs(ls(DCMX_, target), 'os', 's')
        
                   
def connection_list(object_, attr):
    attr_ = PyNode('{}.{}'.format(str(object_), attr))
    cntAttr = listConnections(attr_, d=0, s=1)
    print cntAttr
    return cntAttr


def message_(object_, attr_):
    item = object_[0]
    target = object_[1:]
    
    #conncet a some more objects  
    if not item.hasAttr(attr_):  
        addAttr(item,ln=attr_,at='message',m=True,im=False)
        itemAttr = PyNode('{}.{}'.format(item, attr_))
    else:
        itemAttr = PyNode('{}.{}'.format(item, attr_))
    for i, object in enumerate(target):
        addAttr(object,ln=attr_,at='message',m=True,im=False)
        objectAttr = PyNode('{}.{}'.format(object, attr_))
        connectAttr(objectAttr,itemAttr,na=True)
      
    print 'Multi Connection',listConnections(itemAttr)
      

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


def matrixConstraint(object_, t=None, r=None, s=None):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        _name = '{}2{}'.format(name_(items[i]), name_(target))
    
        MTMX_ = multMatrix_(_name)
        DCMX_ = decompose_(_name)
        mat1_ = getTransform(target)
        mat2_ = getInverseTransform(items[i])
        multmat_ = getMultMatrix(mat1_, mat2_)
        
        attrExist, newAttr = checkAttrExist(target,'offset','matrix',True)
        setAttr(newAttr, multmat_)
        connect_attrs(ls(target, MTMX_), 'offset', 'matrixIn[0]')
        connect_attrs(ls(items[0], MTMX_), 'wm', 'matrixIn[1]')
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


def deleteAttrs(object_, attr):
    for i in object_:
        attrExist = attributeQuery(attr, node=i, exists=True)
        if(attrExist == True):
            deleteAttr(i, at=attr)
            

def offsetMTX(object_, attrName_):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        mtx_ = items[i].getMatrix(worldSpace=True)
        addAttr(target, ln = attrName_, at = 'matrix')
        setAttr('{}.{}'.format(target,attrName_), mtx_)
        
                    
def shapeChange(object_, type_):
    ctrl_ = controller_(object_, type_)
    for i,ctrl in enumerate(ctrl_):
        ctrl = PyNode(ctrl)
        itemShape = ctrl.getShape()
        shape_ = object_[i].getShape()
        delete(shape_)
        parent(itemShape, object_[i], r=1, s=1)
        delete(ctrl)

        
selObject = ls(sl=1, fl=1, r=1) 
# curve_at_joint(selObject)
# curve_at_null(selObject)
# constraints_(selObject, 'parent', 1)
# constraints_(selObject, 'scale', 1)
# setParents_(selObject)
# _shape = shape_(selObject[0])
# poci_connect(selObject)
# object_at_joint(selObject)
# connect_attrs(selObject, 't', 't')
# connect_attrs(selObject, 'r', 'r')
# connect_attrs(selObject, 's', 's')
# connect_attrs(selObject, 'ox', 'color1R')
# findlist = selected_find(selObject, 'scaleConstraint1')
# findlist.sort()
# sets_(findlist)
# one_to_n_connect(selObject, 's', 's')
# subtract(selObject)
# shape_name_match(selObject)
# one_to_n_constrain(selObject, 'orient', 1)
# one_to_n_constrain(selObject, 'scale', 1)
# surf_param_space(selObject[0], 5, 3)
# CPOS_ = CPOS_connect(selObject)
# CPOS_connect02(CPOS_, selObject)
# DCMX_ = decompose_connect(selObject)
# list_ = ls(DCMX_, selObject)
# connect_attrs(list_, 'ot', 't')
# connect_attrs(list_, 'or', 'r')
# connect_attrs(list_, 'os', 's')
# findlist = select_joint(selObject)
# parent_chain(selObject)
# reverse(findlist)
# selObject.sort()
# sets_(selObject)
# chain_structure(selObject)
# pose_setRange(selObject[0], (0,0,0), (0,0,91.725))
# curve_at_cluster(selObject[0])
# posList_ = curve_param_at_pos(selObject[0])
# blendshape_target_duplicate(selObject, 'BShp')
# middle_vec_space(selObject, 76, 6)
# selected_bindSkin(selObject)
# curve_ = object_cv_curve(selObject)
# mir_trans(selObject)
# mir_rot(selObject)
# set_trans(selObject)
# set_rot(selObject)
# controller_(selObject, 'triangle')
# nameList = nameList_(selObject)
# parentChain(selObject)
# CTLList_ = controller_(selObject, 'trianglet')
# set_transform_list = ls(selObject, CTLList_)
# set_transform_(set_transform_list)
# offList_, spcList_ = OS_(CTLList_)
# list_ = ls(selObject, offList_)
# setParents_(selObject)
# add_space(selObject, 'spr')
# alpha_number_pad(selObject, name_)
# random_color(selObject)
# PRBL_list, BLCL_list = connect_pairBlend(selObject)
# list_ = ls(PRBL_list, selObject)
# connect_attrs(list_, 'ot', 't')
# connect_attrs(list_, 'or', 'r')
# list_ = ls(BLCL_list, selObject)
# connect_attrs(list_, 'output', 's')
# globalScale_, output_ = curve_stretch_set(selObject)
# one_to_n_connect(ls(selObject, globalScale_), 's', 'i1')
# one_to_n_connect(selObject, 'outputR', 'sx')
# JNTList_ = curve_param_at_joint(selObject)
# FKCTLList_, FKJNTList_ = FK_set(selObject)
# IKCTLList_, IKJNTList_ = IK_set(selObject)
# suffix_(selObject, 'wrap')
# mirror_connect(selObject, type_='t')
# connect_attrs(selObject, 'os', 'c2')
# local_matrix(selObject)
# mtx_ = selObject[0].getMatrix(worldSpace=True)
# addAttr(selObject[0], ln = 'offset2', at = 'matrix')
# cntAttr = connection_list(selObject[0], 'tempJoints')
# select(cntAttr)
# message_(selObject, "tempJoints")
# matrixConstraint(selObject, 't','r')
# deleteAttrs(selObject, 'package')
# dir(selObject[0])
# offsetMTX(selObject, 'offsetA')
# shapeChange(selObject, 'circle')
