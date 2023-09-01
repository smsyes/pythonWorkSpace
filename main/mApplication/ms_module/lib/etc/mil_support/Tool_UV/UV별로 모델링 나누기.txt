#UV별로 나누기 21.03.09
import pymel.core as pm, maya.mel as mel

def ChangeUVListTarget(uvls=None,**op):
    if uvls is None: uvls=[]
    if op.get('tg'):
        tgMesh=op.get('tg')
    else: tgMesh='Null'
    if tgMesh=='Null' or len(uvls)==0: return None
    chgLs=[]
    [ chgLs.append( pm.MeshUV( '%s.%s'% ( tgMesh.name(), uv.name().split('.')[-1] ) ) ) for uv in uvls ]
    return chgLs
    
def UVShell(msh):
    pm.select( pm.polyListComponentConversion(msh, tuv=1) )
    mshUVLs=pm.ls(sl=1,fl=1)
    dvdUVLs=[]
    def DivdeUVShell(uvls=None):
        if uvls is None: uvls=[]
        if len(uvls)==0: return 0
        pm.select(uvls[0])
        mel.eval('polySelectBorderShell 0;')
        uvShellLs=pm.ls(sl=1, fl=1)
        dvdUVLs.append(uvShellLs)
        rtUVLs=list( set(uvls)-set(uvShellLs) )
        DivdeUVShell(rtUVLs)       
    DivdeUVShell(mshUVLs)
    pm.select(msh)
    return dvdUVLs

def LeaveFace(uvls=None,**op):
    if uvls is None: uvls=[]
    if op.get('tg'):
        tgMesh=op.get('tg')
    else: tgMesh='Null'
    if tgMesh=='Null' or len(uvls)==0: return None    
    pm.select( pm.polyListComponentConversion(tgMesh, tf=1) )
    tgAllFace=pm.ls(sl=1,fl=1)
    pm.select( pm.polyListComponentConversion(uvls, tf=1) )
    tgSlFace=pm.ls(sl=1,fl=1)
    delFaceLs=list( set(tgAllFace)-set(tgSlFace) )
    pm.delete(delFaceLs)
    
slMesh=pm.ls(sl=1)[0]
uvShellLs=UVShell(slMesh)
copyMeshLs=[]
for i in xrange(len(uvShellLs)):
    copyMeshLs.append( pm.duplicate(slMesh, n='%sCopy%d_geo'% (slMesh.name(),i+1) )[0] )
    slTgUVLs=ChangeUVListTarget(uvShellLs[i],tg=copyMeshLs[i])
    LeaveFace(slTgUVLs, tg=copyMeshLs[i])
if len(copyMeshLs)>1:
    dvdMesh=pm.polyUnite(copyMeshLs,ch=0,muv=1, cp=0,n='%sDvd_geo'% slMesh.name() )[0]
else: dvdMesh=copyMeshLs[0].rename('%sDvd_geo'% slMesh.name())
unfoldMesh=pm.duplicate(dvdMesh, n='%sUnfold_geo'% slMesh.name() )[0]
pm.select( pm.polyListComponentConversion(unfoldMesh, tuv=1) )
unfoldMeshUVLs=pm.ls(sl=1,fl=1)
for ufuv in unfoldMeshUVLs:
    uvCoor=pm.polyEditUV(ufuv,q=1,u=1)
    tgVtx=pm.polyListComponentConversion(ufuv, tv=1)[0]
    pm.move(tgVtx,[ uvCoor[0]*5, 0.0, uvCoor[1]*-5 ],ws=1)