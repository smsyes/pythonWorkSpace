from pymel.core import *


def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))

def pointOnCurveInfo_(object_, name_):
    _shape = object_.getShape()
    _node = createNode('pointOnCurveInfo', n='{}PC'.format(name_))
    connect_attr(_shape, 'ws', _node, 'ic')
    return _node

def distanceBetween_(name_):
    _node = shadingNode('distanceBetween', au=1, n='{}DB'.format(name_))
    return _node

def multDoubleLinear_(name_):
    _node = shadingNode('multDoubleLinear', au=1, n='{}ML'.format(name_))
    return _node
    
def addDoubleLinear_(name_):
    _node = shadingNode('addDoubleLinear', au=1, n='{}AL'.format(name_))
    return _node

def blendTwoAttr_(name_):
    _node = shadingNode('blendTwoAttr', au=1, n='{}BA'.format(name_))
    return _node

def multiply_(name_, op=None):
    _node = createNode('multiplyDivide', n='{}MD'.format(name_))
    if not op:
        op = 1
    _node.setAttr('operation', op)
    return _node

def CreateParamDistance(
                        object_, 
                        startNum, 
                        seal, 
                        baseName_, 
                        insertName_,
                        pad_
                        ):
    number = 2
    DBList = []
    
    for i,obj in enumerate(object_):
        _pad = pad_
        param_ = startNum
        type_ = ''
        if i>0:
            type_ = 'Chk'
        name_ = '{0}{1}{2}{3}'.format(baseName_, type_, insertName_, _pad)
        DB_ = distanceBetween_(name_)
        DBList.append(DB_)
        for num in range(number):
            name_ = '{0}{1}{2}{3}'.format(baseName_, type_, insertName_, _pad)
            PC_ = pointOnCurveInfo_(obj, name_)
            PC_.setAttr('parameter', param_)
            connect_attr(PC_, 'result.position', DB_, 'point{}'.format(num+1))
            _pad +=1
            param_ += seal
    return DBList
            
def stretchValue(
                 DB_,
                 pad_,
                 baseName_,
                 insertName_
                 ):
    name_ = '{0}{1}{2}'.format(baseName_, insertName_, pad_)
    stretchBA_ = blendTwoAttr_(name_)
    nomalizeDV_ = multiply_(name_, op=2)
    connect_attr(DB_[1], 'distance', stretchBA_, 'input[0]')
    connect_attr(DB_[0], 'distance', stretchBA_, 'input[1]')
    connect_attr(DB_[1], 'distance', nomalizeDV_, 'input1Y')
    connect_attr(DB_[1], 'distance', nomalizeDV_, 'input2X')
    connect_attr(stretchBA_, 'output', nomalizeDV_, 'input1X')
    connect_attr(stretchBA_, 'output', nomalizeDV_, 'input2Y')
    return ls(stretchBA_,nomalizeDV_ )

def squashValue(
                target_,
                DB_,
                pad_,
                baseName_,
                insertName_
                ):
    BAs_ = ['Squash', 'SquashFilter']
    Scale_ = ['ScaleY', 'ScaleZ']
    attr_ = ['SquashYValue', 'SquashZValue']
    BAList = []
    ALList = []
    for i,ba in enumerate(BAs_):
        name_ = '{0}{1}{2}{3}'.format(baseName_, insertName_, ba, pad_)
        squashBA_ = blendTwoAttr_(name_)
        name_ = '{0}{1}{2}{3}'.format(baseName_, insertName_, Scale_[i], pad_)
        squashAL_ = addDoubleLinear_(name_)
        BAList.append(squashBA_)
        ALList.append(squashAL_)
        squashBA_.setAttr('input[0]', 1)
        connect_attr(squashAL_, 'output', target_, attr_[i])
        if ba == BAs_[0]:
            connect_attr(DB_[1], 'outputY', squashBA_, 'input[1]')
        elif ba == BAs_[1]:
            squashBA_.setAttr('attributesBlender', float(0.9))
            connect_attr(BAList[0], 'output', squashBA_, 'input[1]')
            connect_attr(squashBA_, 'output', ALList[0], 'input2')
            connect_attr(squashBA_, 'output', ALList[1], 'input2')
    return ls(BAList, ALList)
            
def stretchInOut(
                 target_,
                 BADV,
                 pad_,
                 baseName_,
                 insertName_,
                 tx_
                 ):
    name_ = '{0}{1}{2}'.format(baseName_, insertName_, pad_)
    io_ = ['Stretch', 'CrvPoint']
    ioList_ = []
    for io in io_:
        name_ = name_ + io
        ioNode_ = multDoubleLinear_(name_)
        ioList_.append(ioNode_)
        if io == io_[0]:
            ioNode_.setAttr('input1', float(10))
            ioNode_.setAttr('input2', float(0.1))
            connect_attr(ioNode_, 'output', BADV[0], 'attributesBlender')
        elif io == io_[1]:
            connect_attr(BADV[1], 'outputX', ioNode_, 'input1')
            ioNode_.setAttr('input2', tx_)
            connect_attr(ioNode_, 'output', target_, 'tx')
    return ioList_
            
def squashInOut(
                target_,
                BAAL,
                pad_,
                baseName_,
                insertName_,
                ):
    name_ = '{0}{1}{2}'.format(baseName_, insertName_, pad_)
    MDList = []
    in_ = multDoubleLinear_(name_ + 'Squash')
    in_.setAttr('input1', float(0.1))
    connect_attr(in_, 'output', BAAL[0], 'attributesBlender')
    out_ = ['FKnEXFK', 'SqxNctrl', 'TotalScale']
    attr_ = ['SquashYValue', 'SquashZValue']
    for i,out in enumerate(out_):
        MD_ = multiply_(name_ + out, op=1)
        MDList.append(MD_)
        if out == out_[1]:
            MD_.setAttr('input1X',1)
            connect_attr(target_, attr_[0], MD_, 'input1Y')
            connect_attr(target_, attr_[1], MD_, 'input1Z')
        elif out == out_[2]:
            connect_attr(MDList[0], 'output', MD_, 'input1')
            connect_attr(MDList[1], 'output', MD_, 'input2')
            
    return MDList
    

sel = ls(sl=1, fl=1, r=1)
# curves_ = ls(sl=1, fl=1, r=1)

startNum = float(0.750)
seal = float(0.025)
pad_ = 8
baseName_ = "Ginsengroot"
insertName_ = 'Sub'

for i in sel:
    tx_ = i.getAttr('tx')
    DBList = CreateParamDistance(
                                 curves_, 
                                 startNum, 
                                 seal, 
                                 baseName_, 
                                 insertName_,
                                 pad_
                                 )
    
    stretchBADV = stretchValue(
                               DBList,
                               pad_,
                               baseName_,
                               insertName_
                               )
    
    squashBAAL = squashValue(
                             i,
                             stretchBADV,
                             pad_,
                             baseName_,
                             insertName_
                             )
                        
    stretchIO_ =  stretchInOut(
                               i,
                               stretchBADV,
                               pad_,
                               baseName_,
                               insertName_,
                               tx_
                               )
    
    squashOut_ = squashInOut(
                             i,
                             squashBAAL,
                             pad_,
                             baseName_,
                             insertName_,
                             )
    pad_ +=1
    startNum +=float(0.05)
                             
                             