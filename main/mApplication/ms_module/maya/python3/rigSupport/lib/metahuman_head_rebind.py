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

메타휴먼 헤드 메쉬의 바인드 되어 있는 조인트들에서 바디 조인트와 동일한 조인트(A)를 찾고
(A)와 그 외의 헤드 조인트들(B)을 찾아서 헤드 메쉬를 복사해서 바인드 및 스킨 카피를 진행
rotateX 값을 -90도 돌리고 최종 헤드 메쉬에 다시 바인드 합니다.
============================================================================"""
#
# when start coding 3 empty lines.
#

import pymel.core as pm

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

def skinCopy(item_, target_, joints):
    pm.skinCluster(joints, target_, bm=1, mi=3, rui=0, dr=3)
    pm.copySkinWeights(item_,target_,nm=1,sa='closestPoint',ia='oneToOne',nr=1)

def objectClean(object_):
    attrs = object_.listAttr(k=1)
    [i.unlock() for i in attrs]
    pm.delete('{}ShapeOrig'.format(object_.name()))
    

# 다시 바인드 할 메타휴먼 헤드 메쉬 잡고 실행
def metahumanHeadRebind(object_):
    for i in object_:
        name_ = i.name()
        target = pm.duplicate(i)[0]
        objectClean(target)
        bindjoints = bindJoint(i)
        bodyjoints_, facejoints_ = reJointSet(bindjoints, 'DHIbody')
        rejoints = bodyjoints_ + facejoints_
        skinCopy(i, target, rejoints)
        if i.history(type='blendShape'):
            bs_ = i.history(type='blendShape')[0]
            origin_ = target.history(type='mesh')[-1]
            sc_ = target.history(type='skinCluster')[0]
            origin_.outMesh >> bs_.originalGeometry[0]
            origin_.worldMesh[0] >> bs_.input[0].inputGeometry
            bs_.outputGeometry[0] >> sc_.input[0].inputGeometry
        pm.delete(i)
        target.rename(name_)
        sc_.rename('{}_SkinCluster'.format(name_))
        

sel = pm.ls(sl=1,r=1,fl=1)
metahumanHeadRebind(sel)











