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

def getShortName(object_):
    sname_=[]
    for i in object_:
        name_ = i.name()
        if '|' in i.name():
            name_ = name_.split('|')[-1]
        name_ = name_.split('_')[-1]
        sname_.append(name_)
    return sname_
    
def getShape(object_):
    s_ = object_.listRelatives(ad=1,s=1)
    sh_ = []
    for s in s_:
        d = s.getParent()
        sh = d.listRelatives(s=1)[0]
        if sh not in sh_:
            sh_.append(sh)
    return sh_

def getTarget(dags,inputMesh_):
    getT_ = []
    listN_ = getShortName(dags)
    inputN_ = getShortName(inputMesh_)
    for l,dag in enumerate(dags):
        l_ = listN_[l]
        if l_ in inputN_:
            getT_.append(dag)
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


sel = ls(sl=1,r=1)

dagI_ = getDag(sel[0])

# get inputMesh match TargetMesh
dagT_ = getDag(sel[1])
getT_ = getTarget(dagT_, dagI_)

# get expression name
getEx_ = getExpressionName(getT_)

# get expression dictionary and target dictionary
EMDict_ = classify(getT_, getEx_, type='ex')
TMDict_ = classify(getT_, dagI_, type='pt')


bsDict = {'Blink':{}, 'Mouth':{}, 'Brow':{}, 'Nose':{}}
for e in getEx_:
    if e == 'Blink':
        bsDict['Blink'] = {'Up':{'L':[],'R':[]},'Down':{'L':[],'R':[]}}
        for t in EMDict_[e]:
            if '_Up_' in t.name():
                if '_L_' in t.name():
                   bsDict['Blink']['Up']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Blink']['Up']['R'].append(t)
            if '_Down_' in t.name():
                if '_L_' in t.name():
                    bsDict['Blink']['Down']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Blink']['Down']['R'].append(t)
    if e == 'Cheek':
        bsDict['Mouth']['Cheek'] = {'L':[],'R':[],
                                    'In':{'L':[],'R':[]},
                                    'Out':{'L':[],'R':[]},
                                    'Up':{'L':[],'R':[]},
                                    'Down':{'L':[],'R':[]}}
        for t in EMDict_[e]:
            if '_L_' in t.name():
                bsDict['Mouth']['Cheek']['L'].append(t)
            if '_R_' in t.name():
                bsDict['Mouth']['Cheek']['R'].append(t)
            if '_In_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Cheek']['In']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Cheek']['In']['R'].append(t)
            if '_Out_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Cheek']['Out']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Cheek']['Out']['R'].append(t)
            if '_Up_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Cheek']['Up']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Cheek']['Up']['R'].append(t)
            if '_Down_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Cheek']['Down']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Cheek']['Down']['R'].append(t)
    if e == 'Scale':
        bsDict['Mouth']['Scale'] = {'In':{'L':[],'R':[]},'Out':{'L':[],'R':[]}}
        for t in EMDict_[e]:
            if '_In_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Scale']['In']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Scale']['In']['R'].append(t)
            if '_Out_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Scale']['Out']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Scale']['Out']['R'].append(t)
    if e == 'Curl':
        bsDict['Mouth']['Curl'] = {'In':{'L':[],'R':[]},'Out':{'L':[],'R':[]}}
        for t in EMDict_[e]:
            if '_In_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Curl']['In']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Curl']['In']['R'].append(t)
            if '_Out_' in t.name():
                if '_L_' in t.name():
                    bsDict['Mouth']['Curl']['Out']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Mouth']['Curl']['Out']['R'].append(t)
    if e == 'Out':
        bsDict['Mouth'] = {'Out':[]}
        for t in EMDict_[e]:
            if '_Out_' in t.name():
                bsDict['Mouth']['Out'].append(t)
    if e == 'In':
        bsDict['Mouth'] = {'In':[]}
        for t in EMDict_[e]:
            if '_In_' in t.name():
                bsDict['Mouth']['In'].append(t)
    if e == 'Brow':
        bsDict['Brow'] = {'Up':{'L':[],'R':[]},
                          'Down':{'L':[],'R':[]},
                          'Angry':{'L':[],'R':[]},
                          'Sad':{'L':[],'R':[]},
                          'Squeeze':{'L':[],'R':[]}}
        for t in EMDict_[e]:
            if '_Up_' in t.name():
                if '_L_' in t.name():
                    bsDict['Brow']['Up']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Brow']['Up']['R'].append(t)
            if 'Down' in t.name():
                if '_L_' in t.name():
                    bsDict['Brow']['Down']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Brow']['Down']['R'].append(t)
            if 'Angry' in t.name():
                if '_L_' in t.name():
                    bsDict['Brow']['Angry']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Brow']['Angry']['R'].append(t)
            if 'Sad' in t.name():
                if '_L_' in t.name():
                    bsDict['Brow']['Sad']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Brow']['Sad']['R'].append(t)
            if 'Squeeze' in t.name():
                if '_L_' in t.name():
                    bsDict['Brow']['Squeeze']['L'].append(t)
                if '_R_' in t.name():
                    bsDict['Brow']['Squeeze']['R'].append(t)
    if e == 'Nose':
        bsDict['Nose'] = {'Up':{'L':[],'R':[]}}
        for t in EMDict_[e]:
            if '_L_' in t.name():
                bsDict['Nose']['Up']['L'].append(t)
            if '_R_' in t.name():
                bsDict['Nose']['Up']['R'].append(t)
        

