# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
Marvelous-Desinger Triangle Mesh Convert To Maya QuadMesh

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20220206

:Example:
Pakage is MVConvertQuadMesh.pyc

import MVConvertQuadMesh as MVCvt
reload(MVCvt)

============================================================================"""
#
# when start coding 3 empty lines.
#
import pymel.core as pm

# 삼각폴리 메쉬의 바깥쪽 Edge라인 잡고 실행
sel = pm.ls(sl=1,fl=1,r=1)

base_ = pm.PyNode(sel[0].name().split('.e')[0])
PolyToCrv_ = pm.polyToCurve(form=2, degree=1, conformToSmoothMeshPreview=1)[0]
planar_ = pm.planarSrf(PolyToCrv_, ch=1, d=1, ko=0, tol=0.01, rn=1, po=1)[0]
pm.transferAttributes(base_, planar_, pos=0, nml=0, uvs=2, tcs=0, spa=0, 
sus="map1", tus="map1", sm=3, fuv=0, clb=1)