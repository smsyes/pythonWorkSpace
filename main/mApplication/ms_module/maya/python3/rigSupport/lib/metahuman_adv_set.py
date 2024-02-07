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

def subControl_(cvs, color):
    if pm.objExists('IKArm_R'):
        ikArmR = pm.PyNode('IKArm_R')
    if pm.objExists('IKArm_L'):
        ikArmL = pm.PyNode('IKArm_L')

    for i,ik in enumerate([ikArmL, ikArmR]):
        getChildren = ik.getChildren()[1:]
        subctrl = createControl_(ik,cvs)
        overrideColorChange_(subctrl.getShape(), color[i])
        pm.parent(subctrl,ik)
        transformReset(subctrl)
        pm.parent(getChildren, subctrl)

def outlinerColorSet_(object_, dict_):
    object_.useOutlinerColor.set(1)
    for i in dict_:
        object_.outlinerColor.outlinerColor.set()

crvdict = {}
crvdict['sub'] = [[3.7129107811167e-16, 2.3217227125906654, -2.3217227125906654],
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
outlinerColordict['top'] = [120,1,1]
outlinerColordict['root'] = [300,1,1]
outlinerColordict['geometry'] = [60,1,1]

sel = pm.ls(sl=1)
subControl_(crvdict['sub'], colordict.values())


    
if pm.objExists('DHIbody:root'):
    root = pm.PyNode('DHIbody:root')
if pm.objExists('DHIhead:FACIAL_C_Neck1Root'):
    Neck1Root = pm.PyNode('DHIhead:FACIAL_C_Neck1Root')
if pm.objExists('DHIhead:FACIAL_C_Neck2Root'):
    Neck2Root = pm.PyNode('DHIhead:FACIAL_C_Neck2Root')
if pm.objExists('DHIhead:FACIAL_C_FacialRoot'):
    FacialRoot = pm.PyNode('DHIhead:FACIAL_C_FacialRoot')
    
root.rename('root')
outlinerColorSet_(root, outlinerColordict['root'])



dir(root.__class__)