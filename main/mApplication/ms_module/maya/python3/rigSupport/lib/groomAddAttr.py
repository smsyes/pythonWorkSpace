# -*- coding: utf-8 -*-
from maya import cmds
import pymel.core as pm


curves = pm.ls(sl=1,fl=1,r=1)
groups = [i.name() for i in curves]
attr_name = 'groom_group_id'

# ����: ���� �̸��� �����Ͽ� ����� �� �ݿ�

for groom_group_id, group_name in enumerate(groups):

    # xgGroom���� Ŀ�� ���
    curves = cmds.listRelatives(group_name, ad=True, type='nurbsCurve')

    # �׷� ID�� �±� �׷���
    cmds.addAttr(group_name, longName=attr_name, attributeType='short', defaultValue=groom_group_id, keyable=True)

    # ��Ʈ����Ʈ ���� �߰�
    # Maya�� �󷽺��� �����͸� GeometryScope::kConstantScope�� �ͽ���Ʈ�ϵ��� ����
    cmds.addAttr(group_name, longName='{}_AbcGeomScope'.format(attr_name), dataType='string', keyable=True)
    cmds.setAttr('{}.{}_AbcGeomScope'.format(group_name, attr_name), 'con', type='string')

attr_name = 'groom_guide'

# xgGroom���� Ŀ�� ���
curves = cmds.listRelatives('xgGroom', ad=True, type='nurbsCurve')

# �� �׷� ����
guides_group = cmds.createNode('transform', name='guides')

# �׷��� groom_guide�� �±�
cmds.addAttr(guides_group, longName=attr_name, attributeType='short', defaultValue=1, keyable=True)

# Maya �󷽺��� Ŀ�긦 �ϳ��� �׷����� �ͽ���Ʈ�ϵ��� ����
cmds.addAttr(guides_group, longName='riCurves', attributeType='bool', defaultValue=1, keyable=True)

# ��Ʈ����Ʈ ���� �߰�
# Maya�� �󷽺��� �����͸� GeometryScope::kConstantScope�� �ͽ���Ʈ�ϵ��� ����
cmds.addAttr(guides_group, longName='{}_AbcGeomScope'.format(attr_name), dataType='string', keyable=True)
cmds.setAttr('{}.{}_AbcGeomScope'.format(guides_group, attr_name), 'con', type='string')

# ���̵� �׷� ������ Ŀ�� �� Ŀ��
# ���� ����:
for curve in curves:
    cmds.parent(curve, guides_group, shape=True, relative=True)