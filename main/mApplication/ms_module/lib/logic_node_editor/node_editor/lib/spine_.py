from pymel.core import *
<<<<<<< HEAD
import sys
import os

baseDir = "E:\script\main\mApplication\ms_module\lib\logic_node_editor\node_editor\lib"

if not baseDir in sys.path:
    sys.path.append(baseDir)
    
import ctl_
reload(ctl_)

nameDic = {}
nameDic["global"] = ["fit", "IK", "FK", "init", "joint", "output"]
nameDic["base"] = "neck"
nameDic["prefix"] = ["D", "M", "U"]
nameDic["suffix"] = ["OS", "JNT", "GRP"]
nameDic["sub"] = ["twist", "local", "param"]


def po_crv_info(_shape):
    _node = createNode('pointOnCurveInfo', n='{}_POCI'.format(_shape))
    connect_attr(_shape, 'ws', _node, 'ic')
    return _node

def multiply_(name_, type_=None):
    if type_:
        pass
    else:
        type_ = 'MLDV'
    _node = createNode('multiplyDivide', n='{}_{}'.format(name_, type_))
    return _node

def remapvalue_(name_):
    _node = shadingNode('remapValue', au=1, n='{}_RMVL'.format(name_))
    return _node

# divide the number in half
=======
import string
import sys
import os

module_path = 'D:\script\main\mApplication\ms_module\lib\dict_lib'
if not module_path in sys.path:
    sys.path.append(module_path)
    
import _shape_dic
reload(_shape_dic)

# Data
def to_str(unicode_or_str):
    '''Function || method descriptions.
    unicode to str
    '''
    if isinstance(unicode_or_str, unicode):
        value = unicode_or_str.encode('utf-8')
    else:
        value = unicode_or_str
    return value

def name_(object_):
    return to_str(object_.name())

>>>>>>> 1437125d83291c5a015c887baacd0d067cdc512d
def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets
<<<<<<< HEAD
    
# connect attribute    
def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

# Divide by half and connect
def connect_attrs(object_, output, input):
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)

# connect the first and the rest
def one_to_n_constrain(object_, type_, mo_):
    item = object_[0]
    target = object_[1:]
    for i, object in enumerate(target):
        constraint_(item, object, type=type_, mo=mo_)

# trans, rotate, scale connect
def transform_connect(target_, item_):
    connectList_ = ['t','r','s']
    [connect_attr(target_, i, item_, i) for i in connectList_]

# xform transformation get
def get_transform(object_):
=======

def jointHier(object_): # Children of the first selected joint
    hierJNT_ = object_[0].listRelatives(ad=1, c=1, typ='joint')
    hierJNT_ = hierJNT_ + object_
    hierJNT_.reverse()
    return hierJNT_

def get_param_at_point(_shape, point):
    return _shape.getParamAtPoint(point)

def shape_name_match(object_):
    for i,name in enumerate(object_):
        _shape = shape_(name)
        shape_name = '{}Shape'.format(name)
        if _shape != shape_name:
            print 'rename {} -> {}'.format(_shape, shape_name)
            rename(_shape, shape_name)

def padding_(type_, num_):
    if type_ == 'alpha':
        pad_ = string.ascii_uppercase[num_]
    if type_ == 'num':
        pad_ = str(num_).zfill(2)
    return pad_

def getTransform(object_):
    return object_.getMatrix(worldSpace=True)
    
def getInverseTransform(object_):
    return object_.getMatrix(worldSpace=True).inverse()
    
def getMultMatrix(mat1, mat2):
    return mat1*mat2    

# Attributes
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
    return attrExist, newAttr 

def get_transform(object_):
    object_ = PyNode(object_)
>>>>>>> 1437125d83291c5a015c887baacd0d067cdc512d
    _name = object_.name()
    trans = cmds.xform(_name, q=1, ws=1, rp=1 )
    rot = cmds.xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)

def set_rot_xform(object_, rot):
    xform(object_, r = 1, ro = rot)

<<<<<<< HEAD
# xform transformation set
def set_transform_(object_):
=======
def set_transform_(object_): # list to list set transform
>>>>>>> 1437125d83291c5a015c887baacd0d067cdc512d
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        pos, rot = get_transform(item)
        set_trans_xform(targets[i], pos)
        set_rot_xform(targets[i], rot)
<<<<<<< HEAD
            
# Determining whether a number is odd or even
def Odd_or_Even(num_):
    if num_%2==1:
        return 0
    else:
        return 1

# create space
def space_(_name, parent_):
    space_ = createNode('transform', 
                        n=_name, 
                        p=parent_)
    return space_

# create offset
def offset_space(object_):
    _name = '{}_offset'.format(object_.name())
    dag_ = space_(_name, object_)
    if object_.getParent():
        parent(dag_, object_.getParent())
    else:
        parent(dag_, w=1)
    parent(object_, dag_)

# create locator
def locator_(_name):
    return spaceLocator(n=_name)

# padding number
def padding_(num_):
    number_ = str(num_).zfill(2)
    return number_

# create controller
def controller_(name_, type_, scale_):
    ctlCLS = ctl_.curveShape()
    CTL_ = ctlCLS.curve_(name_, type_, scale_)
    return CTL_

# create bezier curve, num_ minimum : 3(cvs)
def bez_curve(num_):
    pointPoseDic = {}
    Ypos = 0
    cvs = range(num_+1)
    for i in cvs:
        pointPoseDic[i] = (0,Ypos,0)
        if num_==3:
            if i==1:
                Ypos=Ypos-2
        else:
            if i==cvs[-2]:
                Ypos=Ypos-2
        Ypos+=2      
    curve_ = curve(bez=1, d=3, p=pointPoseDic.values())
    return curve_, pointPoseDic

# Fit and IK Dictionary
def num_dict(num_):
    dict_ = {}
    dict_[1] = [num_//2]
    dict_[0] = range(num_)[:dict_[1][0]]
    if Odd_or_Even(num_) == 0:
        # If the number is odd, mid dictionary True
        dict_[2] = range(num_)[dict_[1][0]+1:] 
    if Odd_or_Even(num_) == 1:
        # If the number is Even, mid dictionary False
        dict_[2] = range(num_)[dict_[1][0]:]
        dict_[1] = []
    return dict_

def fit_contain():
    globalSpace_ = space_('_'.join([nameDic["base"],
                                   nameDic["suffix"][2]]),
                                   None)
    worldSpace_ = space_('_'.join([nameDic["global"][0],
                                  nameDic["base"],
                                  nameDic["suffix"][2]]),
                                  globalSpace_)
    space_LOC_ = locator_('{}_space'.format(nameDic["global"][0]))
    parent(space_LOC_, worldSpace_)
    spaceGroup_ = space_('{}_space_{}'.format(nameDic["global"][0],
                                              nameDic["suffix"][2]),
                                              worldSpace_)
    
    transform_connect(space_LOC_, spaceGroup_)
    return spaceGroup_

# create Fit
def fit_SET(dictNum_, dict_, poseDic_):
    fitDict = {}
    num_ = 0    
    fitSpace_ = fit_contain()
    
    for key in dict_.keys():
        fitlist = []
        for value in dict_[key]:
            pad_ = padding_(value)
            fitName = '_'.join([nameDic["global"][0], 
                               nameDic["base"],
                               pad_])
            fitControl = locator_(fitName)
            if dictNum_<4: # When poseDic_ has three values
                poseDic_[2] = poseDic_[3]
            move(fitControl, poseDic_[num_])
            num_ +=1
            fitlist.append(fitControl)
        fitDict[key] = fitlist
    
    # fit controller parents
    for key in fitDict.keys():
        if key == 0:
            fitDict[key].reverse()
        for i,value in enumerate(fitDict[key][:-1]):
            parent(value, fitDict[key][i+1])
    
    for key in fitDict.keys():
        if fitDict[key]:
            parent(fitDict[key][-1], fitSpace_)
    return fitDict
'''
# base name dictionary
def base_name_dict(dict_):
    nameDict ={}
    for key in dict_.keys():
        nameList = []
        for i,value in enumerate(dict_[key]):
            name_ = '_'.join([nameDic["prefix"][key], 
                              nameDic["base"]])
            if len(ls(dict_[key]))>1:
                name_ = '_'.join([name_, padding_(i)])
            nameList.append(name_)
        nameDict[key] = nameList
    return nameDict
'''
def control_SET(prefix_, list_, type_, scale_):
    offList = []
    for name_ in list_:
        name_ = '_'.join(prefix_, name_)
        ctl_ = controller_(name_, type_, scale_)
        offset_ = offset_space(ctl_)
        offList.append(offset_)
    return offList


def IK_control(dict_):
    list_ = dict_.values()
    IKOff_ = control_SET(nameDic["global"][1], list_,
                         'roundSquare',3.5)

    if num_<4 or Odd_or_Even(num_)==1:
        dict_ = {0:dict_[0], 1:dict_[2]}
    MOff_ = control_SET(nameDic["prefix"][1], mainList_,
                            'circle',5)
    set_transform_(ls(mainList_[-1], MOff_))


def main_control(num_, dict_):
    if num_<4 or Odd_or_Even(num_)==1:
        dict_ = {0:dict_[0], 1:dict_[2]}
    list_ = [dict_[key][-1] for key in dict_.keys()]
    MOff_ = control_SET(nameDic["prefix"][1], list_,
                            'circle',5)
    set_transform_(ls(dict_[key][-1], ctl_))

'''

def twist_control(dict_):
    ctlDict = {}
    dict_ = {0:dict_[0][-1], 1:dict_[2][-1]}
    for key in dict_.keys():
        name_ = '_'.join([nameDic["sub"][0], 
                          nameDic["prefix"][key],
                          nameDic["base"]])
        ctl_ = controller_(name_, 'cross', 4.5)
        set_transform_(ls(dict_[key], ctl_))
        offset_ = offset_space(ctl_)
        ctlDict[key] = ctl_
    return ctlDict
'''
# def upVec_control(dict_):

def FK_local_space(num_, MULTList, POCIList):
    FKNum_ = num_+1
    baseName_ = '_'.join([nameDic["base"], nameDic["sub"][2]])
    DIVD_ = multiply_(baseName_, type_="DIVD")
    DIVD_.setAttr('i1x', 1)
    DIVD_.setAttr('i2x', FKNum_)
    DIVD_.setAttr('operation', 2)
    for MULT in MULTList:
        connect_attrs(ls(DIVD_, MULT), 'ox', 'i1x')
        baseName_ = '_'.join([nameDic["global"][3],
                              nameDic["base"],
                              nameDic["sub"][2]])


def curve_param_SET(curve_, dict_):
    baseName_ = '_'.join([nameDic["base"],
                          nameDic["sub"][2]])
    rootName_ = '_'.join(['root', baseName_])

    MULTList = [multiply_(rootName_)]
    POCIList = []

    for key in dict_.keys():
        for i,value in enumerate(dict_[key]):
            name_ = '_'.join([nameDic["prefix"][key], 
                              baseName_])
            if len(ls(dict_[key]))>1:
                name_ = '_'.join([name_, padding_(i)])
            MULT_ = multiply_(name_)
            POCI_ = po_crv_info(curve_.getShape())
            connect_attrs(ls(MULT_, POCI_), 'ox', 'parameter')
            POCIList.append(POCI_)
            MULTList.append(MULT_)
    
    return MULTList, POCIList




num_ = 3
curve_, poseDic_ = bez_curve(num_)
dict_ = num_dict(num_)
fitsDict_ = fit_SET(num_, dict_, poseDic_)
'''
IKCTLDict_ = IK_control(fitsDict_)
MCTLDict_ = main_control(num_, fitsDict_)
TWCTLDict_ = twist_control(fitsDict_)
MULTList, POCIList = curve_param_SET(curve_, dict_)
FK_local_space(num_, MULTList, POCIList)
'''






=======

def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

def connect_attrs(object_, output, input): # list to list attribute connection
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        connect_attr(item, output, targets[i], input)

def one_to_n_connect(object_, output, input):
    item = object_[0]
    target = object_[1:]
    for i, object in enumerate(target):
        connect_attr(item, output, object, input)

def upVec_position(object_, direct_ = None): # upVector object move
    if direct_:
        pass
    else:
        direct_ = 'y'
        print "Default Direct Y"
        
    if direct_ == 'x':
        move(object_, 5, x=1)
    if direct_ == 'y':
        move(object_, 5, y=1)
    if direct_ == 'z':
        move(object_, 5, z=1)  

def constraint_(*args, **kwargs):
    if kwargs['type'] == 'parent':
        const_ = parentConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'point':
        const_ = pointConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'orient':
        const_ = orientConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'scale':
        const_ = scaleConstraint(args, maintainOffset=kwargs['mo'])
    return const_

def constraints_(object_, type_, mo_):
    constList=[]
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        const_ = constraint_(item, targets[i], type=type_, mo=mo_)
        constList.append(const_)
    return constList

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

def local_matrix(object_, t=None, r=None, s=None):
    items, targets = divide_in_two(object_)
    for i,target in enumerate(targets):
        if target.getParent():
            parent_ = target.getParent()
            atts_ = 'wim'
        else:
            parent_ = target
            atts_ = 'pim'
        _name = '{}_local'.format(name_(target))
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
        
        
# Node
def space_(name_, parent_=None): # create transform Node
    space_ = createNode('transform',
                        n='{}_GRP'.format(name_),
                        p=parent_)
    return space_

def multMatrix_(name_):
    _node = createNode('multMatrix', n='{}_MTMX'.format(name_))
    return _node

def decompose_(name_):
    _node = createNode('decomposeMatrix', n='{}_DCMX'.format(name_))
    return _node
    
def po_crv_info(_shape):
    _node = createNode('pointOnCurveInfo', n='{}_POCI'.format(_shape))
    connect_attr(_shape, 'ws', _node, 'ic')
    return _node

def crvShape_(_name, type_):
    _name = '{}_CTL'.format(_name)
    shape_dic = _shape_dic.load_dic(type_)
    crv_ = cmds.curve(n = _name, d = shape_dic[0], 
                      p = shape_dic[1], k = shape_dic[2])
    shape_name_match(ls(crv_))
    return crv_ 

def object_cv_curve(object_, dgree_ = None):
    if not dgree_:
        dgree_ = 1
    trans_list = []
    for i in object_:
        trans, rot = get_transform(i)
        trans_list.append(trans)
    crv_ = curve(d=dgree_, p = trans_list)
    return crv_

def joint_(_name):
    JNT = joint(n='{}_JNT'.format(_name))
    return JNT

def bindSkin_(joints_, object_):
    influences = ls(joints_)
    kwargs = {
        'name': 'skinCluster',
        'toSelectedBones': True,
        'bindMethod': 0,
        'skinMethod': 0,
        'normalizeWeights': 1
    }
    scls = skinCluster(influences, object_, **kwargs)[0]
    return scls      

def pairBlend_(name_):
    _node = createNode('pairBlend', n='{}_PRBL'.format(name_))
    return _node

def blendColors_(name_):
    _node = createNode('blendColors', n='{}_BLCL'.format(name_))
    return _node

def reverse_(name_):
    _node = shadingNode('reverse', n='{}_RVS'.format(name_), au=1)
    return _node

# Build
def pos_at_param(_shape, *args): # get current object Position at parameter
    args = ls(args)
    param_list = []
    cvs_pos = get_cvs(_shape)
    for i in args:
        trans, rot = get_transform(i)
        param = get_param_at_point(_shape, trans)
        param_list.append(param)
    return param_list

def param_at_objectPositions(object_): # current object Position >> curve Parameter >> object Position
    _shape = object_[0].getShape()
    _object = object_[1:]
    params_ = pos_at_param(_shape, _object)
    
    for i,object in enumerate(_object):
        POCI = po_crv_info(_shape)
        setAttr('{}.parameter'.format(POCI), params_[i])
        connect_attr(POCI, 'p', object, 't')

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
        loc_ = cmds.spaceLocator(n = '{}_{}'.format(JNT, 'space'))
        set_transform_(ls(JNT, loc_))
        loc_ = PyNode(loc_[0])
        _offset = offset_(loc_, num_=2)
        offList.append(_offset)
        spaceList.append(loc_)
    return offList, spaceList

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

def upVec_locator(object_): # upVec locator set
    upVecList = []
    for i,JNT in enumerate(object_):
        loc_ = cmds.spaceLocator(n = '{}_{}'.format(JNT, 'upVec'))
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
    worldName = ['{}_{}'.format(name_, world) for world in worldList]
    GRPDict['world'] = [space_(world, GRPDict['main']) for world in worldName]
    typeName = ['{}_{}'.format(name_, type) for type in typeList]
    GRPDict['motion'] = [space_(type, GRPDict['world'][0]) for type in typeName]
    IKTypeName = ['{}_{}'.format(name_, IKtype) for IKtype in IKTypeList]
    GRPDict['IK'] = [space_(IKtype, GRPDict['motion'][0]) for IKtype in IKTypeName]
    CTLName = ['{}_{}'.format(name_, CTL) for CTL in CTLList]
    GRPDict['CTL'] = [space_(CTL, GRPDict['world'][1]) for CTL in CTLName]
    print GRPDict
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

def chain_structure(object_):
    childList = object_[1:]
    parentList = object_[:-1]
    
    for i,object in enumerate(childList):
        parent_ = parentList[i].listRelatives(ad=1, c=1, typ='transform')[0]
        print parent_
        parent(object, parent_)

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
>>>>>>> 1437125d83291c5a015c887baacd0d067cdc512d
