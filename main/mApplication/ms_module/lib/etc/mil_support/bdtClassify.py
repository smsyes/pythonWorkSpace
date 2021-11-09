from collections import OrderedDict
from pymel.core import *

def getDag(object_):
    s_ = object_.listRelatives(ad=1,s=1)
    d_ = []
    for s in s_:
        d = s.getParent()
        if d not in d_:
            d_.append(d)
    return d_  

def getShape(object_):
    s_ = object_.listRelatives(ad=1,s=1)
    sh_ = []
    for s in s_:
        d = s.getParent()
        sh = d.listRelatives(s=1)[0]
        if sh not in sh_:
            sh_.append(sh)
    return sh_

def getTarget(list_,inputMesh_):
    getT_ = []
    for l in list_:
        l_ = l.split('_')[-1]
        if l_ in inputMesh_:
            getT_.append(l)
    return getT_

def getExpressionName(list_):
    getEx_ = []
    for l in list_:
        l_ = l.split('_')[0]
        if l_ not in getEx_:
            getEx_.append(l_)
    return getEx_

def classify(list_, division, type=None):
    dict_ = OrderedDict()
    for d in division:
        dict_[d]=[]
        if type == 'ex':
            spl = 0
        elif type == 'pt':
            spl = -1
        for i in list_:
            i_ = i.split('_')[spl]
            if d == i_:
                dict_[d].append(i)
    return dict_

'''
sel = ls(sl=1,r=1)

inputMesh_ = sel

# get inputMesh match TargetMesh
dag_ = getDag(sel[0])
getT_ = getTarget(dag_, inputMesh_)

# get expression name
getEx_ = getExpressionName(getT_)

# get expression dictionary and target dictionary
eDict_ = classify(getT_, getEx_, type='ex')
pDict_ = classify(getT_, inputMesh_, type='pt')
'''

