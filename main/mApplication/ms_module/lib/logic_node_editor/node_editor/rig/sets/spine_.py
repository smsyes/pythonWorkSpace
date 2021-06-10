from pymel.core import *

module_path = 'D:\script\main\mApplication\ms_module\lib\m_lib'
if not module_path in sys.path:
    sys.path.append(module_path)
    
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
def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets
    
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
    _name = object_.name()
    trans = cmds.xform(_name, q=1, ws=1, rp=1 )
    rot = cmds.xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)

def set_rot_xform(object_, rot):
    xform(object_, r = 1, ro = rot)

# xform transformation set
def set_transform_(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        pos, rot = get_transform(item)
        set_trans_xform(targets[i], pos)
        set_rot_xform(targets[i], rot)
            
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






