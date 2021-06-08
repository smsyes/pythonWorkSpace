import pymel.core as pm


nameDic = {}
nameDic["global"] = ["fit", "IK", "FK", "joint", "output"]
nameDic["base"] = "neck"
nameDic["suffix"] = ["CTL", "OS", "JNT"]

# create bezier curve, num_ minimum : 3(cvs)
def bezCurve(num_):
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
        
# Determining whether a number is odd or even
def Odd_or_Even(num_):
    if num_%2==1:
        return "Odd"
    else:
        return "Even"

# create space
def space_(_name, parent_):
    space_ = createNode('transform', 
                        n='{}_space'.format(_name), 
                        p=parent_)
    return space_

# create locator
def locator_(_name):
    return spaceLocator(n=_name)

# padding number
def padding_(num_):
    number_ = str(num_).zfill(2)
    return number_

# Fit and IK Dictionary
def numDict(num_):
    dict_ = {}
    dict_[1] = [num_//2]
    dict_[0] = range(num_)[:dict_[1][0]]
    if Odd_or_Even(num_) == "Odd":
        dict_[2] = range(num_)[dict_[1][0]+1:]
    if Odd_or_Even(num_) == "Even":
        dict_[2] = range(num_)[dict_[1][0]:]
        dict_[1] = []
    return dict_

# create Fit
def fitSET(dict_, poseDic_):
    fitDict = {}
    num_ = 0    
    for key in dict_.keys():
        fitlist = []
        for value in dict_[key]:
            fitName = '{}_{}_{}'.format(nameDic["global"][0], 
                                        nameDic["base"],
                                        padding_(value))
            fitControl = locator_(fitName)
            move(fitControl, poseDic_[num_])
            num_ +=1
            fitlist.append(fitControl)
        fitDict[key] = fitlist
    
    for key in fitDict.keys():
        if key == 0:
            fitDict[key].reverse()
        for i,value in enumerate(fitDict[key][:-1]):
            parent(value, fitDict[key][i+1])
            
    return fitDict


num_ = 6  
curve_, poseDic_ = bezCurve(num_)
dict_ = numDict(num_)
fits_ = fitSET(dict_, poseDic_)






















