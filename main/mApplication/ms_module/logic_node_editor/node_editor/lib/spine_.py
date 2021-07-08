from pymel.core import *
import string
import sys
import os

module_path = 'E:\script\main\mApplication\ms_module\lib\dict_lib'
if not module_path in sys.path:
    sys.path.append(module_path)
    
import _shape_dic
reload(_shape_dic)


def upVec_position(object_, direct_ = None): # upVector object move
    if direct_:
        pass
    else:
        direct_ = 'y'
        
    if direct_ == 'x':
        move(object_, 5, x=1)
    if direct_ == 'y':
        move(object_, 5, y=1)
    if direct_ == 'z':
        move(object_, 5, z=1)  


def connect_pairBlend(items_, target_, PRBL_list, BLCL_list):
    items, targets = divide_in_two(items_)
    for i,item in enumerate(items):
        connect_attrs([item, PRBL_list[i]], 't', 'it1')
        connect_attrs([item, PRBL_list[i]], 'jointOrient', 'ir1')
        connect_attrs([item, BLCL_list[i]], 's', 'c2')
        connect_attrs([targets[i], PRBL_list[i]], 't', 'it2')
        connect_attrs([targets[i], PRBL_list[i]], 'jointOrient', 'ir2')
        connect_attrs([targets[i], BLCL_list[i]], 's', 'c1')
        connect_attrs([PRBL_list[i], target_[i]], 'ot', 't')
        connect_attrs([PRBL_list[i], target_[i]], 'or', 'jointOrient')
        connect_attrs([BLCL_list[i], target_[i]], 'output', 's')
           

def IK_FK_joint(object_): # base joint duplicate IK, FK joint
    IKJNT_ = duplicate(object_, rc=1)
    hierIKJNT_ = jointHier(IKJNT_)
    [rename(i, 'IK_{}JNT'.format(i.split('JNT')[0])) for i in hierIKJNT_]
    FKJNT_ = duplicate(object_, rc=1)
    hierFKJNT_ = jointHier(FKJNT_)
    [rename(i, 'FK_{}JNT'.format(i.split('JNT')[0])) for i in hierFKJNT_]
    return hierIKJNT_, hierFKJNT_


def space_locator(object_): # IK space set
    offList = []
    spaceList = []
    for i,JNT in enumerate(object_):
        loc_ = spaceLocator(n = '{}_{}'.format(JNT, 'space'))
        set_transform_(ls(JNT, loc_))
        loc_ = PyNode(loc_)
        _offset = offset_(loc_, num_=2)
        offList.append(_offset)
        spaceList.append(loc_)
    return offList, spaceList


def upVec_locator(object_): # upVec locator set
    upVecList = []
    for i,JNT in enumerate(object_):
        loc_ = spaceLocator(n = '{}_{}'.format(JNT, 'upVec'))
        set_transform_(ls(JNT, loc_))
        loc_ = PyNode(loc_[0])
        upVecList.append(loc_)
    return upVecList

def main_structure(name_): # Group heirarchy Structure
    GRPDict = {}
    parentList = ['main', 'motion', 'motion_IK_GRP']
    worldList = ['motion', 'CTL', 'output']
    typeList = ['motion_IK', 'motion_FK']
    IKTypeList = ['IK_space', 'IK_upVec', 'IK_CRV']
    CTLList = ['IK_CTL', 'FK_CTL']
    
    GRPDict['main'] = space_(name_)
    worldName = ['{}_{}'.format(name_, 
                                world) for world in worldList]
    GRPDict['world'] = [space_(world, 
                               GRPDict['main']) for world in worldName]
    typeName = ['{}_{}'.format(name_, 
                               type) for type in typeList]
    GRPDict['motion'] = [space_(type, 
                               GRPDict['world'][0]) for type in typeName]
    IKTypeName = ['{}_{}'.format(name_, 
                                 IKtype) for IKtype in IKTypeList]
    GRPDict['IK'] = [space_(IKtype, 
                            GRPDict['motion'][0]) for IKtype in IKTypeName]
    CTLName = ['{}_{}'.format(name_, 
                              CTL) for CTL in CTLList]
    GRPDict['CTL'] = [space_(CTL, 
                             GRPDict['world'][1]) for CTL in CTLName]
    return GRPDict

def IK_curves(object_, name_): # create IK curves
    IKCRV = object_cv_curve(object_)
    rebuildCurve(IKCRV, ch=1, rpo=1, rt=0, end=1 ,kr=2 ,kcp=0 ,kep=1 ,kt=0 ,s=2 ,d=3 ,tol=0.01)
    rename(IKCRV, '{}_IK_CRV'.format(name_))
    upVecCRV = duplicate(IKCRV, rc=1)
    rename(upVecCRV, '{}_IK_upVec_CRV'.format(name_))
    return ls(IKCRV,upVecCRV) 

def IK_control(object_, curve_, name_):
    IKNumber = 3
    _shape = curve_[0].getShape()
    IKCTLs = []
    offList = []
    jointList = []
    for i in range(IKNumber):
        pad_ = padding_('num', i)
        _name = 'IK_{}_{}'.format(name_, pad_)
        IKCTL_ = crvShape_(_name, 'circle')
        constList = constraints_(ls(object_, IKCTL_), 'orient', 0)
        delete(constList)
        IKBindJNT = joint_('{}_bind'.format(_name))
        parent(IKBindJNT, IKCTL_)
        POCI = po_crv_info(_shape)
        setAttr('{}.parameter'.format(POCI), i)
        position = POCI.getAttr('p')
        setAttr('{}.t'.format(IKCTL_), position)
        IKCTLOffset = offset_(IKCTL_, num_=2)
        IKCTLs.append(IKCTL_)
        offList.append(IKCTLOffset)
        jointList.append(IKBindJNT)
    bindSkin_(jointList, curve_[0])
    bindSkin_(jointList, curve_[1])
    return IKCTLs, offList

def FK_control(object_, name_):
    FKList = object_[:-1]
    FKCTLList = []
    FKOffList = []
    for i,JNT in enumerate(FKList):
        pad_ = padding_('num', i)
        _name = 'FK_{}_{}'.format(name_, pad_)
        FKCTL_ = crvShape_(_name, 'circle')
        FKCTL_ = PyNode(FKCTL_)
        set_transform_(ls(JNT, FKCTL_))
        FKCTLOffset = offset_(FKCTL_, num_=2)
        FKCTLList.append(FKCTL_)
        FKOffList.append(FKCTLOffset)
    return FKCTLList, FKOffList


def IK_Axis(IKCTLs, offList, spaceList, upVecList, up=None):
    if up:
        if up=='x':
            up_=(1,0,0)
        if up=='y':
            up_=(0,1,0)
        if up=='z':
            up_=(0,0,1)
    else:
        up_=(0,0,1)

    orientList = ls([IKCTLs[0], IKCTLs[2]], [offList[0], offList[-1]])
    constraints_(orientList, 'orient', 1)
       
    for i,spc in enumerate(spaceList[:-2]):
        aimItem = spc
        aimTarget = offList[i+1]
        aimUpVec = upVecList[i+1]
        aimConstraint(aimItem, aimTarget, mo=1, 
                      aimVector=(-1,0,0), upVector=up_, 
                      worldUpType='object', worldUpObject=aimUpVec)

def IK_FK_Blend(items_, target_):
    PRBL_list = []
    BLCL_list = []
    for target in target_:
        _name = name_(target).split('_')
        if 'IK' in _name:
            _name.remove('IK')
        elif 'FK' in _name:
            _name.remove('FK')
        _name = '_'.join(_name)
        PRBL_ = pairBlend_(_name)
        BLCL_ = blendColors_(_name)
        PRBL_list.append(PRBL_)
        BLCL_list.append(BLCL_)
    connect_pairBlend(items_, target_, PRBL_list, BLCL_list)
    return PRBL_list, BLCL_list

    
# base 
selObject = ls(sl=1, fl=1, r=1) 
baseName_ = 'tail'
hierJNT_ = jointHier(selObject)
hierIKJNT_, hierFKJNT_ = IK_FK_joint(selObject[0])
spaceOffList, spaceList = space_locator(hierJNT_)
upVecList = upVec_locator(hierJNT_)
StEnSpace = ls(spaceList[0], spaceList[-1])
curves = IK_curves(StEnSpace, baseName_)
param_at_objectPositions(ls(curves[0], spaceOffList))
param_at_objectPositions(ls(curves[1], upVecList))
upVec_position(curves[1])
IKCTLs, IKOffList = IK_control(selObject[0], curves, baseName_)
FKCTLList, FKOffList = FK_control(hierJNT_, baseName_)
IK_Axis(IKCTLs, spaceOffList, spaceList, upVecList)
local_matrix(ls(spaceList, hierIKJNT_), 't', 'jointOrient', 's')
local_matrix(ls(FKCTLList, hierFKJNT_[:-1]), 't', 'jointOrient', 's')
PRBL_list, BLCL_list = IK_FK_Blend(ls(hierIKJNT_, hierFKJNT_), hierJNT_)

# structure
groupDict = main_structure(baseName_)
chain_structure(FKOffList)
[parent(off, groupDict['IK'][0]) for off in spaceOffList]
[parent(upVec, groupDict['IK'][1]) for upVec in upVecList]
[parent(CRV, groupDict['IK'][2]) for CRV in curves]
[parent(IKCTL, groupDict['CTL'][0]) for IKCTL in IKOffList]
parent(FKOffList[0], groupDict['CTL'][1])
parent(hierIKJNT_[0], groupDict['motion'][0])
parent(hierFKJNT_[0], groupDict['motion'][1])
parent(hierJNT_[0], groupDict['world'][2])
groupDict['world'][0].setAttr('v',0)

# switch
RVS_ = reverse_('{}_FKIK'.format(baseName_))
FKSpcList = [CTL.getParent() for CTL in FKCTLList]
addAttr(groupDict['main'], ln="FK_IK", nn="FK / IK", at="enum", en="IK:FK:", k=1)
addAttr(groupDict['main'], ln="curl", at="double", dv=0, k=1)
addAttr(groupDict['main'], ln="roll", at="double", dv=0, k=1)
addAttr(groupDict['main'], ln="twist", at="double", dv=0, k=1)
connect_attrs(ls(groupDict['main'], RVS_), 'FK_IK', 'ix')
one_to_n_connect(ls(groupDict['main'],PRBL_list), 'FK_IK', 'weight')
one_to_n_connect(ls(groupDict['main'],BLCL_list), 'FK_IK', 'blender')
one_to_n_connect(ls(groupDict['main'],FKSpcList), 'curl', 'rz')
one_to_n_connect(ls(groupDict['main'],FKSpcList), 'roll', 'ry')
one_to_n_connect(ls(groupDict['main'],FKSpcList), 'twist', 'rx')
connect_attrs(ls(groupDict['main'], groupDict['CTL'][1]), 'FK_IK', 'v')
connect_attrs(ls(RVS_, groupDict['CTL'][0]), 'ox', 'v')
