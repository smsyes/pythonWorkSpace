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

def joint_orient(jointChain):
    for joint_ in jointChain:
        _joint(joint_, e=True, oj='xzy', sao='zup', zso=True)
        if joint_ == jointChain[-1]:
            joint_.attr('jo').set(0,0,0) 

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

def get_cvs(_shape):
    return _shape.getCVs(space='world')

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
    object_ = ls(object_)
    if object_:
        for i,obj in enumerate(object_):
            pad_ = padding(i+1)
            makeName_ = '{}_{}'.format(name_,pad_)
            obj.rename(makeName_)

def append_name(object_, 
                name_, 
                mode=None):
    object_ = ls(object_)
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

def control_(object_, type_):
    object_ = ls(object_)
    CTLList = []
    for i,obj in enumerate(object_):
        CTL_ = crvShape_(type_)
        CTL_ = PyNode(CTL_)
        set_transform_(ls(obj, CTL_))
        CTLList.append(CTL_)
    return CTLList

def chain_structure(object_):
    object_ = ls(object_)
    childList = object_[1:]
    parentList = object_[:-1]
    for i,object in enumerate(childList):
        parent(object, parentList[i])

def divide_in_two(object_):
    object_ = ls(object_)
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

def connect_attrs(object_, 
                  output, input):
    object_ = ls(object_)
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)

def one_to_n_connect(object_, 
                     output, input):
    object_ = ls(object_)
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
    object_ = ls(object_)
    items, targets = divide_in_two(object_)
    consts_ = []
    for i, item in enumerate(items):
        const_ = constraint_(item, targets[i], type=type_, mo=mo_)
        consts_.append(const_)
    return consts_

def one_to_n_constrain(object_, 
                       type_, 
                       mo_):
    object_ = ls(object_)
    item = object_[0]
    target = object_[1:]
    consts_ = [constraint_(item, i, type=type_, mo=mo_) for i in target]
    return consts_

        
def n_to_one_constrain(object_, 
                       type_, 
                       mo_):
    object_ = ls(object_)
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
    object_ = ls(object_)
    _shape = object_[0].getShape()
    _object = object_[1:]
    params_ = pos_at_param(_shape, _object)
    
    for i,object in enumerate(_object):
        POCI = po_crv_info(_shape)
        setAttr('{}.parameter'.format(POCI), params_[i])
        connect_attr(POCI, 'p', object, 't')


def local_matrix(object_, 
                 t=None, r=None, s=None):
    object_ = ls(object_)
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
    object_ = ls(object_)
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

def joint_(_name):
    return joint(n='{}_JNT'.format(_name))

def object_cv_curve(object_, dgree_=None):
    object_ = ls(object_)
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
                  tol=None
                  ):
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
              pcv=None
              ):
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

def _joint(joint_,
           e=None,
           q=None,
           ex=None,
           oj=None,
           o=None,
           sao=None,
           zso=None,
           p=None,
           co=None
           ):
    
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

def curve_at_joint(object_):
    _shape = object_.getShape()
    cvs = get_cvs(_shape)
    JNTList = []

    for j,pos in enumerate(cvs):
        select(cl=1)
        JNT = joint()
        set_trans_xform(JNT, pos)
        JNTList.append(JNT)

        if j == 0:
            stJNT = JNT
        if pos == cvs[-1]:
            enJNT = JNT
        if j > 0:
            JNT.setParent(JNTList[j-1])
    return JNTList


def hybrid_structure(name_):
    GRPDict = OrderedDict()
    GRPDict['hybrid'] = space_('{}_{}_'.format('hybrid',name_))
    GRPDict['CTL'] = space_('CTL_', parent_=GRPDict['hybrid'])
    GRPDict['FK_CTL'] = space_('FK_CTL_', parent_=GRPDict['CTL'])
    GRPDict['IK_CTL'] = space_('IK_CTL_', parent_=GRPDict['CTL'])
    GRPDict['JNT'] = space_('JNT_', parent_=GRPDict['hybrid'])
    GRPDict['bind_JNT'] = space_('bind_JNT_', parent_=GRPDict['JNT'])
    GRPDict['CRV'] = space_('CRV_', parent_=GRPDict['hybrid'])
    GRPDict['motion'] = space_('motion_', parent_=GRPDict['hybrid'])
    GRPDict['IK_motion'] = space_('IK_motion_', parent_=GRPDict['motion'])
    GRPDict['IK_space'] = space_('IK_space_', parent_=GRPDict['IK_motion'])
    GRPDict['IK_upVec'] = space_('IK_upVec_', parent_=GRPDict['IK_motion'])
    return GRPDict


base_name = 'cape'       
sel = ls(sl=1, r=1, fl=1)

hybridGRPs = hybrid_structure(base_name)

ordict_ = OrderedDict()
prefixList = ['FK', 'IK', 'FK', 'IK', 'IK_space', 
              'IK_upVec', 'IK_bind', 'IK', 'IK_upVec']
suffixList = ['JNT', 'JNT', 'CTL', 'CRV', 'LOC', 
              'LOC', 'JNT', 'CTL', 'CRV']

ordict_['FKJNTs'] = duplicate_joint(sel[0])
ordict_['IKJNTs'] = duplicate_joint(sel[0])
ordict_['FKCTLs'] = control_(ordict_['FKJNTs'], 'cube')
chain_structure(ordict_['FKCTLs'])
ordict_['IKCRV'] = [object_cv_curve(ordict_['IKJNTs'], dgree_=1)]
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
              tol=0.01
              )
ordict_['IKLOC'] = [locator_(JNT) for JNT in ordict_['IKJNTs']]
ordict_['IKupVec'] = [locator_(JNT) for JNT in ordict_['IKJNTs']]
IKGuideCRV = [object_cv_curve(ordict_['IKupVec'], dgree_=1)]
rebuild_curve(IKGuideCRV,
              ch=1,
              rpo=1,
              rt=0,
              end=1,
              kr=0,
              kcp=0,
              kep=1,
              kt=0,
              s=2,
              d=1,
              tol=0.01
              )
ordict_['IKBindJNT'] = curve_at_joint(IKGuideCRV[0])
joint_orient(ordict_['IKBindJNT'])
[parent(JNT, w=1) for JNT in ordict_['IKBindJNT']]
ordict_['IKCTLs'] = control_(ordict_['IKBindJNT'], 'circle')
[LOC.setAttr('tz', 3) for LOC in ordict_['IKupVec']]
delete(IKGuideCRV)
ordict_['IKupVecCRV'] = [object_cv_curve(ordict_['IKupVec'], dgree_=1)]
rebuild_curve(ordict_['IKupVecCRV'],
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
              tol=0.01
              )

for i,value in enumerate(ordict_.values()):
    renamer(value,
            name_=base_name, 
            prefix_=prefixList[i], 
            suffix_=suffixList[i]
            )

# FK Setting
FK_off_space = [offset_(i, num_=2) for i in ordict_['FKCTLs']]
FK_cnt_space = [insert_space(CTL, 'cnt') for CTL in ordict_['FKCTLs']]
FK_spc_space = [CTL.getParent(2) for CTL in ordict_['FKCTLs']]
connect_attrs(ls(ordict_['FKCTLs'], 
                 ordict_['FKJNTs']), 
                 'r', 'r')
local_matrix(ls(ordict_['FKCTLs'], 
                ordict_['FKJNTs']), 
                t='t', s='s'
                )
connect_attrs(ls(ordict_['IKJNTs'], 
                 FK_off_space), 
                 't', 't'
                 )
connect_attrs(ls(ordict_['IKJNTs'], 
                 FK_off_space), 
                 'r', 'r'
                 )

# IK Setting
IK_off_space = [offset_(CTL, num_=2) for CTL in ordict_['IKCTLs']]
IK_loc_offset = [offset_(LOC, num_=2) for LOC in ordict_['IKLOC']]
upVec_offset = [offset_(LOC, num_=2) for LOC in ordict_['IKupVec']]
IK_bind_offset = [offset_(LOC, num_=2) for LOC in ordict_['IKBindJNT']]
param_at_objectPositions(ls(ordict_['IKCRV'], IK_loc_offset))
param_at_objectPositions(ls(ordict_['IKupVecCRV'], upVec_offset))
IK_Axis(ordict_['IKCTLs'], IK_loc_offset, ordict_['IKLOC'], ordict_['IKupVec'])
local_matrix(ls(ordict_['IKLOC'], ordict_['IKJNTs']), 't', 'r', 's')
[JNT.setAttr('jointOrient', (0,0,0)) for JNT in ordict_['IKJNTs']]
local_matrix(ls(ordict_['IKCTLs'], IK_bind_offset), 't', 'r', 's')


JNTs = ls(ordict_['FKJNTs'][0], ordict_['IKJNTs'][0])
CRVs = ls(ordict_['IKCRV'], ordict_['IKupVecCRV'])
[parent(JNT, hybridGRPs['bind_JNT']) for JNT in IK_bind_offset]
[parent(JNT, hybridGRPs['JNT']) for JNT in JNTs]
[parent(CRV, hybridGRPs['CRV']) for CRV in CRVs]
parent(FK_off_space[0], hybridGRPs['FK_CTL'])
[parent(CTL, hybridGRPs['IK_CTL']) for CTL in IK_off_space]
[parent(LOC, hybridGRPs['IK_space']) for LOC in IK_loc_offset]
[parent(LOC, hybridGRPs['IK_upVec']) for LOC in upVec_offset]



