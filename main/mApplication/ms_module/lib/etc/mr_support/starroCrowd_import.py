import pymel.core as pm

sel = pm.ls(sl=1)


def AddAttr(Ctrl, LongName, AttrType, *args):
    CTL = pm.ls(Ctrl)
    CTLAttr = pm.listAttr(CTL)
    for a in CTLAttr:
        if a == LongName:
            pm.warning('Already Have the Attribute')
            pm.setAttr(Ctrl + '.' + a, k=1)
            return
        else:
            continue
    if AttrType == 'enum':
        pm.addAttr(CTL[0], ln=LongName, at=AttrType, en=args)
        pm.setAttr(Ctrl + '.' + LongName, k=1)

    elif AttrType == 'title':
        pm.addAttr(CTL[0], ln=LongName, nn=LongName, at='enum', en=args, k=1)
        pm.setAttr(Ctrl + '.' + LongName, cb=1)
    elif AttrType == 'bool':
        pm.addAttr(CTL[0], ln=LongName, at=AttrType)
        pm.setAttr(Ctrl + '.' + LongName, e=1, k=1)
    else:
        pm.addAttr(CTL[0], ln=LongName, at=AttrType, min=args[0], max=args[1], dv=0, k=1)
        pm.setAttr(Ctrl + '.' + LongName, cb=1)


delHistList = pm.ls('starroA_body_1', 'starroA_body_2', 'starroC_Inside', 'starroC_body_1', 'starroC_body_2')
mainCTL = pm.ls('main_M_CTL')[0]
starroMCTL = pm.ls('starro_main_M_CTL')[0]
headJNT = pm.ls('head_M_skinJNT')[0]
starroMOD = pm.ls('starro_MOD')[0]
starroRIG = pm.ls('starro_RIG')[0]
starroJNTRoot = pm.ls('starro_body_JNT')[0]
delStarroSet = pm.ls('starro*CTLZERO')
delStarroSetJNT = pm.ls('starro*tentacle*01_JNT')

MOD = pm.ls('MOD')[0]
RIG = pm.ls('RIG')[0]

for a in delHistList:
    pm.delete(a, ch=1)
    pm.select(cl=1)
    pm.select(a)
    pm.select('starro_eye_01_JNT', add=1)
    pm.skinCluster(toSelectedBones=1, bindMethod=0, normalizeWeights=1, mi=10, omi=1, dr=10, sm=0)

AddAttr(mainCTL, 'starro', 'bool')
pm.parentConstraint(headJNT, starroMCTL, mo=1)
pm.scaleConstraint(headJNT, starroMCTL, mo=1)
pm.parent(starroMOD, MOD)
pm.parent(starroRIG, RIG)
pm.parent(starroJNTRoot, headJNT)
pm.delete(delStarroSet)
pm.delete(delStarroSetJNT)
pm.delete('GRP1')
mainCTL.starro >> starroMOD.visibility
mainCTL.starro >> starroRIG.visibility
sMCTLShp = pm.listRelatives(starroMCTL, s=1)[0]
sMCTLShp.visibility.set(0)


def SelectSkinJoint(SEL):
    getShp = pm.listRelatives(SEL[0], s=1, type='shape', f=1)
    getCluster = pm.listHistory(getShp[0], type='skinCluster')
    getJoint = pm.skinCluster(getCluster[0], q=1, inf=1)
    return getJoint


def FindSkinMethod(SEL):
    getShp = pm.listRelatives(SEL[0], s=1, type='shape', f=1)
    getCluster = pm.listHistory(getShp[0], type='skinCluster')
    skinningMethod = pm.skinCluster(getCluster[0], q=1, sm=1)
    return skinningMethod


if sel == []:
    pass
else:
    jntList = SelectSkinJoint(sel)
    SknMthd = FindSkinMethod(sel)


def SkinCopy(SEL):
    for a in SEL[1:]:
        pm.select(a)
        pm.select(jntList, add=1)
        pm.skinCluster(toSelectedBones=1, bindMethod=0, normalizeWeights=1, mi=10, omi=1, dr=10, sm=SknMthd)
        pm.select(SEL[0])
        pm.select(a, add=1)
        pm.copySkinWeights(noMirror=1, surfaceAssociation='closestPoint')


for a in sel:
    RVRS = pm.shadingNode('reverse', au=1, n=a + '_starro_vis_RVRS')
    mainCTL.starro >> RVRS.inputX
    RVRS.outputX >> a.visibility
    aBshp = pm.listHistory(a, ac=1, type='blendShape')
    if aBshp == []:
        print 'No BS'
    else:
        aBshp[0].envelope.set(1)
        CopyMeshA = pm.duplicate(a, n='starrA_' + a)
        CopyMeshC = pm.duplicate(a, n='starrC_' + a)
        aBshp[0].envelope.set(0)
        pm.delete(aBshp[0])
        pm.parent(CopyMeshA, 'starroA_MOD')
        pm.parent(CopyMeshC, 'starroC_MOD')
        pm.select(cl=1)
        selSkin = pm.ls(a, CopyMeshA, CopyMeshC)
        SkinCopy(selSkin)

