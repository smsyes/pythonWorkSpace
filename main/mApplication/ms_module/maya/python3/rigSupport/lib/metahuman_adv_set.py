# -*- coding: utf-8 -*-
"""============================================================================
메타휴먼 리깅 작업시 필요한 스크립트

__AUTHOR__ = 'minsung'
__UPDATE__ = 20240206

:Example:
import metahumanHeadRebind_
reload(metahumanHeadRebind_)
sel = pm.ls(sl=1,r=1,fl=1)
metahumanHeadRebind(sel)

메타휴먼 Advanced Rig IKArm 추가 컨트롤 셋업
============================================================================"""
#
# when start coding 3 empty lines.
#

import pymel.core as pm

def createControl_(object_, cvs):
    circleShape_ = pm.circle(nr=(1,0,0),n='{0}Sub'.format(object_.name()))
    for i,cp in enumerate(cvs):
        circleShape_[0].getShape().controlPoints[i].set(cp)
    return circleShape_[0]

def overrideColorChange_(shape_, num):
    shape_.overrideEnabled.set(1)
    shape_.overrideColor.set(num)

def transformReset(object_):
    object_.t.set(0,0,0)
    object_.r.set(0,0,0)
    object_.s.set(1,1,1)

def subControl_(list_, cvs, color):
    object_ = []
    for i in list_:
        object_.append(hasObject_(name_))

    for i,ik in enumerate(object_):
        getChildren = ik.getChildren()[1:]
        subctrl = createControl_(ik,cvs)
        overrideColorChange_(subctrl.getShape(), color[i])
        pm.parent(subctrl,ik)
        transformReset(subctrl)
        pm.parent(getChildren, subctrl)

def outlinerColorSet_(object_, color):
    object_.useOutlinerColor.set(1)
    object_.outlinerColor.outlinerColor.set(color)

def hasObject_(name_):
    if pm.objExists(name_):
        object_ = pm.PyNode(name_)
    return object_

#
# when start coding 3 empty lines.
#
# config..
crvdict = {}
crvdict['sub'] = [
 [3.7129107811167e-16, 2.3217227125906654, -2.3217227125906654],
 [3.215217577170064e-32, 8.575286827503849, -5.250848782536512e-16],
 [-3.7129107811167e-16, 2.3217227125906645, 2.3217227125906654],
 [-5.250848782536519e-16, 4.445443834199767e-16, 8.575286827503852],
 [-3.7129107811167e-16, -2.3217227125906654, 2.3217227125906654],
 [-5.259811137666026e-32, -8.575286827503856, 8.589923464182668e-16],
 [3.7129107811167e-16, -2.3217227125906645, -2.3217227125906654],
 [5.250848782536519e-16, -1.169408836923057e-15, -8.575286827503852],
 [3.7129107811167e-16, 2.3217227125906654, -2.3217227125906654],
 [3.215217577170064e-32, 8.575286827503849, -5.250848782536512e-16],
 [-3.7129107811167e-16, 2.3217227125906645, 2.3217227125906654]]

colordict = {}
colordict['L'] = [18]
colordict['R'] = [20]

outlinerColordict = {}
outlinerColordict['top'] = [0,1,0]
outlinerColordict['root'] = [1,0,1]
outlinerColordict['geometry'] = [1,1,0]

NS_ = ["DHIhead","DHIbody"]

sublist_ = ['IKArm_L','IKArm_R']
bodyRoot_ = '{0}:{1}'.format(NS_[1],'root')
headRoot_ = '{0}:{1}'.format(NS_[0],'spine_04')
drvRoot_ = 'root_drv'
MHRig = 'rig'
advRig = 'Group'
headGeoGroup = 'head_grp'
bodyGeoGroup = 'body_grp'
headRigGroup = 'headRig_grp'
deleteNode = ['Lights', 'export_geo_GRP']

# sub controler setup
subControl_(sublist_, crvdict['sub'], colordict.values())

# object dictionary
dict_ = {}
list_ = [bodyRoot_, headRoot_, drvRoot_, MHRig, advRig, headGeoGroup, bodyGeoGroup, headRigGroup]
for i in list_:
    dict_[i] = hasObject_(i)
bodyRootChild_ = dict_[bodyRoot_].getChildren()[0]
root_ = pm.joint(n='root')

# unused node delete
delList = [hasObject_(i) for i in deleteNode]
pm.delete(delList)

# group construction
topGroup = pm.createNode('transform',n='name_')
geo_grp_ = pm.createNode('transform',n='geo_grp')
geoPub_grp_ = pm.createNode('transform',n='geoPub_grp')
geoWip_grp_ = pm.createNode('transform',n='geoWip_grp')
rig_grp_ = pm.createNode('transform',n='rig_grp')

# parents
pm.parent(geo_grp_, topGroup)
pm.parent(rig_grp_, topGroup)
pm.parent(bodyRootChild_, root_)
pm.parent(root_, topGroup)
pm.parent(geoPub_grp_, geo_grp_)
pm.parent(dict_[headRigGroup], dict_[MHRig])
pm.parent([dict_[headGeoGroup],dict_[bodyGeoGroup]], geoPub_grp_)
pm.parent(geoWip_grp_, geo_grp_)
pm.parent([dict_[advRig],dict_[drvRoot_],dict_[bodyRoot_],dict_[headRoot_],dict_[MHRig]], rig_grp_)

# change outliner
outlinerColorSet_(topGroup, outlinerColordict['top'])
outlinerColorSet_(geoPub_grp_, outlinerColordict['geometry'])
outlinerColorSet_(root_, outlinerColordict['root'])





























