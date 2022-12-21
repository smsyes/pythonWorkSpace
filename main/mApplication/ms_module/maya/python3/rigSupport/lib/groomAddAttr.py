# -*- coding: utf-8 -*-
from maya import cmds
import pymel.core as pm


curves = pm.ls(sl=1,fl=1,r=1)
groups = [i.name() for i in curves]
attr_name = 'groom_group_id'

# 참고: 다음 이름을 변경하여 노드의 씬 반영

for groom_group_id, group_name in enumerate(groups):

    # xgGroom에서 커브 얻기
    curves = cmds.listRelatives(group_name, ad=True, type='nurbsCurve')

    # 그룹 ID로 태그 그루핑
    cmds.addAttr(group_name, longName=attr_name, attributeType='short', defaultValue=groom_group_id, keyable=True)

    # 어트리뷰트 범위 추가
    # Maya의 얼렘빅이 데이터를 GeometryScope::kConstantScope로 익스포트하도록 강제
    cmds.addAttr(group_name, longName='{}_AbcGeomScope'.format(attr_name), dataType='string', keyable=True)
    cmds.setAttr('{}.{}_AbcGeomScope'.format(group_name, attr_name), 'con', type='string')

attr_name = 'groom_guide'

# xgGroom에서 커브 얻기
curves = cmds.listRelatives('xgGroom', ad=True, type='nurbsCurve')

# 새 그룹 생성
guides_group = cmds.createNode('transform', name='guides')

# 그룹을 groom_guide로 태그
cmds.addAttr(guides_group, longName=attr_name, attributeType='short', defaultValue=1, keyable=True)

# Maya 얼렘빅이 커브를 하나의 그룹으로 익스포트하도록 강제
cmds.addAttr(guides_group, longName='riCurves', attributeType='bool', defaultValue=1, keyable=True)

# 어트리뷰트 범위 추가
# Maya의 얼렘빅이 데이터를 GeometryScope::kConstantScope로 익스포트하도록 강제
cmds.addAttr(guides_group, longName='{}_AbcGeomScope'.format(attr_name), dataType='string', keyable=True)
cmds.setAttr('{}.{}_AbcGeomScope'.format(guides_group, attr_name), 'con', type='string')

# 가이드 그룹 내에서 커브 인 커브
# 종속 설정:
for curve in curves:
    cmds.parent(curve, guides_group, shape=True, relative=True)