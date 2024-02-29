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

# circle 생성 및 cvs list포지션에 맞게 수정하여 컨트롤러 생성
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

# 서브 컨트롤러 생성 및 컬러 지정
def subControl_(list_, cvs, color):
    object_ = []
    for i in list_:
        object_.append(hasObject_(i))

    for i,ik in enumerate(object_):
        getChildren = ik.getChildren()[1:]
        subctrl = createControl_(ik,cvs)
        overrideColorChange_(subctrl.getShape(), color[i])
        pm.parent(subctrl,ik)
        transformReset(subctrl)
        pm.parent(getChildren, subctrl)

# 오브젝트의 아웃라이너 컬러를 color list value 적용
def outlinerColorSet_(object_, color):
    object_.useOutlinerColor.set(1)
    object_.outlinerColor.outlinerColor.set(color)

# 오브젝트의 바인드 된 조인트들을 리턴
def bindJoint(object_):
    shape_ = object_.getShape()
    connectionList_ = shape_.listHistory(gl=1,pdo=1)
    for cnt_ in connectionList_:
        if cnt_.type() == 'skinCluster':
            scls_ = cnt_
            break
        else:
            scls_ = None
    sclsMtx_ = scls_.attr('matrix')
    return sclsMtx_.listConnections(d=0,s=1,type='joint')

# joints의 베이스 네임을 기준으로 findNameSpace가 붙은 joint들을 리턴
def reJointSet(joints, findName):
    bodyjoints_ = []
    facejoints_ = []
    for j in joints:
        basename_ = j.name().split(':')[-1]
        try:
            bodyjoint_ = pm.PyNode('{0}:{1}'.format(findName,basename_))
            bodyjoints_.append(bodyjoint_)
        except:
            facejoints_.append(j)

    return bodyjoints_, facejoints_

# 바인드 하고 item_스킨 웨이트를 target_으로 카피
def skinCopy(item_, target_, joints):
    sc_ = pm.skinCluster(joints, target_, bm=1, mi=3, rui=0, dr=3)
    pm.copySkinWeights(item_,target_,nm=1,sa='closestPoint',ia='oneToOne',nr=1)
    return sc_

# 복사한 오브젝트의 attribute unlock 및 ShapeOrigin 정리 
def objectClean(object_):
    attrs = object_.listAttr(k=1)
    [i.unlock() for i in attrs]
    pm.delete('{}ShapeOrig'.format(object_.name()))

# 오브젝트가 있는지 확인하고 PyNode로 변경
def hasObject_(name_):
    if pm.objExists(name_):
        object_ = pm.PyNode(name_)
    return object_

# list_의 상위 노드 네임스페이스를 교체 후, list_를 교체한 상위 노드에 페어런츠
def parentChange(list_,ns_):
    for i in list_:
        p_ = i.getParent()
        replaceName = p_.name().replace(ns_[0], ns_[1])
        NP_ = pm.PyNode(replaceName)
        pm.parent(i, NP_)

# 다시 바인드 할 메타휴먼 헤드 메쉬 잡고 실행
def metahumanHeadRebind(ns_, object_):
    for i in object_:
        name_ = i.name()
        target = pm.duplicate(i)[0]
        objectClean(target)
        bindjoints = bindJoint(i)
        bodyjoints_, facejoints_ = reJointSet(bindjoints, ns_)
        rejoints = bodyjoints_ + facejoints_
        sc_ = skinCopy(i, target, rejoints)
        if i.history(type='blendShape'):
            bs_ = i.history(type='blendShape')[0]
            origin_ = target.history(type='mesh')[-1]
            origin_.outMesh >> bs_.originalGeometry[0]
            origin_.worldMesh[0] >> bs_.input[0].inputGeometry
            bs_.outputGeometry[0] >> sc_.input[0].inputGeometry
        pm.delete(i)
        target.rename(name_)
        sc_.rename('{}_SkinCluster'.format(name_))

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

subColordict = [18,20]

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
faceRoots = ['FACIAL_C_Neck1Root', 'FACIAL_C_Neck2Root', 'FACIAL_C_FacialRoot']


# sub controler setup
subControl_(sublist_, crvdict['sub'], subColordict)

# Spine IK Advanced Twist Forward Axis Edit
IKSpine = hasObject_('IKSpineHandle_M')
IKSpine.dForwardAxis.set(2)

# object dictionary
dict_ = {}
list_ = [bodyRoot_, headRoot_, drvRoot_, MHRig, advRig, headGeoGroup, bodyGeoGroup, headRigGroup]
for i in list_:
    dict_[i] = hasObject_(i)
bodyRootChild_ = dict_[bodyRoot_].getChildren()[0]
root_ = pm.joint(n='root')

# unused node delete
layerManager_ = hasObject_('layerManager').listConnections()
delList = [hasObject_(i) for i in deleteNode]
pm.delete(delList + layerManager_[1:])

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

# sets
sets_ = hasObject_('Sets')
AnimMeshSet_ = pm.sets(n='AnimMeshSet')
ExportSet_ = pm.sets(n='ExportSet')
pm.sets(AnimMeshSet_, edit=1, fe=geoPub_grp_)
pm.sets(ExportSet_, edit=1, fe=[root_,topGroup])
pm.sets(sets_, edit=1, fe=[AnimMeshSet_,ExportSet_])

# 선택한 메쉬 복제 및 재 바인드
sel = pm.ls(sl=1,r=1,fl=1)
dict_ = {}
for i in faceRoots:
    name_ = '{0}:{1}'.format(NS_[0],i)
    dict_[i] = hasObject_(name_)
parentChange(dict_.values(),NS_)
metahumanHeadRebind(NS_[0], sel)

hasObject_('MainExtra1').rename('MainSub')
hasObject_('MainExtra2').rename('Main_out')

main_ = hasObject_('Main')
pm.addAttr(main_, ln="inGame", at='bool', k=1)
pm.addAttr(main_, ln="model", at='enum', k=1, en='None:HI')
main_.inGame.showInChannelBox(1)
main_.model.showInChannelBox(1)
main_.overrideDisplayType.showInChannelBox(1)
main_.overrideDisplayType >> geo_grp_.overrideDisplayType

geo_grp_.overrideEnabled.set(1)
geolist = geo_grp_.listRelatives(ad=1)
[i.overrideEnabled.set(0) for i in geolist]