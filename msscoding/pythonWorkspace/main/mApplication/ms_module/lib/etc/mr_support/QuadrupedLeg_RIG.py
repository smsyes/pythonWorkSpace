import maya.cmds as cmds
import string

CA = cmds.connectAttr
SA = cmds.setAttr
XF = cmds.xform
SN = cmds.shadingNode
Num = string.ascii_uppercase
JNTlist = ['Rump', 'Hip', 'Knee', 'Ankle', 'Toe']
JNTver = ['skin', 'IK', 'FK']
setJNT = []

def CreateJNTSet(*args):
    for s in range(len(JNTlist)):
        if 'Rump' in JNTlist[s]:
            JNT = cmds.joint(name=Num[s] + '_' + JNTlist[s] + '_setJNT', p=[30, 80, 0])
            cmds.addAttr(ln='ctlSize', at='float', min=0, dv=100, k=1)
            setJNT.append(JNT)
        elif 'Hip' in JNTlist[s]:
            JNT = cmds.joint(name=Num[s] + '_' + JNTlist[s] + '_setJNT', p=[40, 80, 0])
            cmds.addAttr(ln='ctlSize', at='float', min=0, dv=100, k=1)
            setJNT.append(JNT)
        elif 'Knee' in JNTlist[s]:
            JNT = cmds.joint(name=Num[s] + '_' + JNTlist[s] + '_setJNT', p=[40, 60, 20])
            cmds.addAttr(ln='ctlSize', at='float', min=0, dv=80, k=1)
            setJNT.append(JNT)
        elif 'Ankle' in JNTlist[s]:
            JNT = cmds.joint(name=Num[s] + '_' + JNTlist[s] + '_setJNT', p=[40, 40, -10])
            cmds.addAttr(ln='ctlSize', at='float', min=0, dv=80, k=1)
            setJNT.append(JNT)
        elif 'Toe' in JNTlist[s]:
            JNT = cmds.joint(name=Num[s] + '_' + JNTlist[s] + '_setJNT', p=[40, 20, 0])
            cmds.addAttr(ln='ctlSize', at='float', min=0, dv=70, k=1)
            setJNT.append(JNT)
        else:
            pass
    GRP = cmds.group(empty=1, r=1, w=1, n='setJNT_scale')
    cmds.parent(setJNT[0], GRP)
    switchLoc = cmds.spaceLocator(n='switchLocation')
    cmds.move(55, 70, 0, switchLoc)
    SA(switchLoc[0]+'.visibility', 0)
    cmds.parent(switchLoc, GRP)

def CreateTemp(*args):
    sel =cmds.ls('*_setJNT')[-1].split('_')[0]
    for s in range(len(Num)):
        if sel in Num[s]:
            last = cmds.select(cmds.ls('*_setJNT')[-1])
            Temp = cmds.joint(name=Num[s+1]+'_Temp_setJNT')
            setJNT.append(Temp)
            Tr = XF(last, q=1, ws=1, t=1)
            Rt = XF(last, q=1, ws=1, ro=1)
            XF(Temp, ws=1, t=Tr, ro=Rt)

        else:
            pass

def CreateJNT(*args):
    cmds.select(cl=1)
    sel = cmds.ls('*setJNT')
    IKlist = []
    FKlist = []
    FKGRPlist = []
    skinlist = []
    parentList = []
    scaleList = []
    paweightList = []
    scweightList = []

    # create IK FK switch
    Tr = XF('switchLocation', q=1, ws=1, t=1)
    Rt = XF('switchLocation', q=1, ws=1, ro=1)
    Roo = XF('switchLocation', q=1, ws=1, roo=1)
    XF(cmds.curve(d=1, p=
        [(-1.000750770419927, 0.0, -2.001501540839854),
        (1.000750770419927, 0.0, -2.001501540839854),
        (1.000750770419927, 0.0, -1.000750770419927),
        (2.001501540839854, 0.0, -1.000750770419927),
        (2.001501540839854, 0.0, 1.000750770419927),
        (1.000750770419927, 0.0, 1.000750770419927),
        (1.000750770419927, 0.0, 2.001501540839854),
        (-1.000750770419927, 0.0, 2.001501540839854),
        (-1.000750770419927, 0.0, 1.000750770419927),
        (-2.001501540839854, 0.0, 1.000750770419927),
        (-2.001501540839854, 0.0, -1.000750770419927),
        (-1.000750770419927, 0.0, -1.000750770419927),
        (-1.000750770419927, 0.0, -2.001501540839854)], n='FKIK_ctrl'), ws=1, t=Tr, ro=Rt, roo=Roo)
    selObj = cmds.ls(sl=1)
    CtlScale = cmds.getAttr('setJNT_scale.scaleX')
    for i in selObj:
        cmds.select(i)  # ---- scale!!! ----#
        cmds.hilite(i)
        cmds.select(i + '.cv[:]')
        cmds.scale(CtlScale*3, CtlScale*3, CtlScale*3)
        cmds.hilite(u=1)
        cmds.select(i)
    CTLShape = cmds.listRelatives(selObj, s=1)
    cmds.setAttr((CTLShape[0] + '.overrideEnabled'), 1)
    cmds.setAttr((CTLShape[0] + '.overrideColor'), 17)
    cmds.addAttr(ln='FKIK', at='float', min=0, max=10, dv=0, k=1)
    cmds.select(cl=1)

    # create FK, IK, skin joints
    for i in range(len(JNTver)):
        if 'IK' in JNTver[i]: # create IK joint
            for s in sel:
                Tr = XF(s, q=1, ws=1, t=1)
                Rt = XF(s, q=1, ws=1, ro=1)
                Roo = XF(s, q=1, ws=1, roo=1)
                XF(cmds.joint(name=s.split('_')[1]+'_'+JNTver[i]+'_JNT'), ws=1, t=Tr, ro=Rt, roo=Roo)
                IKlist.append(s.split('_')[1]+'_'+JNTver[i]+'_JNT')
                cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
            cmds.select(cl=1)
        elif 'skin' in JNTver[i]: # create skin joint
            for s in sel:
                Tr = XF(s, q=1, ws=1, t=1)
                Rt = XF(s, q=1, ws=1, ro=1)
                Roo = XF(s, q=1, ws=1, roo=1)
                JNT = XF(cmds.joint(name=s.split('_')[1] + '_' + JNTver[i] + '_JNT'), ws=1, t=Tr, ro=Rt, roo=Roo)
                skinlist.append(s.split('_')[1]+'_'+JNTver[i]+'_JNT')
                cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
            cmds.select(cl=1)
        elif 'FK' in JNTver[i]: # create CTRL at FK joint
            for s in sel:
                Tr = XF(s, q=1, ws=1, t=1)
                Rt = XF(s, q=1, ws=1, ro=1)
                Roo = XF(s, q=1, ws=1, roo=1)
                CtlScale = cmds.getAttr(s+'.ctlSize')
                CTL = cmds.circle(nr=(0, 1, 0), c=(0, 0, 0), name=s.split('_')[1]+'_'+JNTver[i]+'_JNT_CTL', radius=CtlScale)
                CTLShape = cmds.listRelatives(CTL, s=1)
                cmds.setAttr((CTLShape[0] + '.overrideEnabled'), 1)
                cmds.setAttr((CTLShape[0] + '.overrideColor'), 6)
                XF(CTL, ws=1, roo=Roo)
                JNT = cmds.joint(name=s.split('_')[1]+'_'+JNTver[i]+'_JNT')
                XF(JNT, ws=1, roo=Roo)
                cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
                FKlist.append(JNT)
                offset = cmds.group(CTL, w=1, name=s.split('_')[1]+'_'+JNTver[i]+'_CTL_offset')
                XF(offset, ws=1, roo=Roo)
                GRP = cmds.group(offset, w=1, name=s.split('_')[1]+'_'+JNTver[i]+'_CTL_GRP')
                XF(GRP, ws=1, t=Tr, ro=Rt, roo=Roo)
                FKGRPlist.append(GRP)

                cmds.delete(CTL[0], ch=1)

            for s in range(len(FKlist) - 1): # FK joint grouping
                cmds.parent(FKGRPlist[s + 1], FKlist[s])

    # create IK handle
    ikHan = cmds.ikHandle(n='Leg_IK_handle', sj=IKlist[1], ee=IKlist[4], solver='ikRPsolver')
    CA('ikSpringSolver.message', 'Leg_IK_handle.ikSolver', force = True)
    cmds.select(cl=1)
    # create IK controller
    Trik = XF(ikHan[0], q=1, ws=1, t=1)
    ikCTL = cmds.curve(d=1, p=[
        (-2.001501540839854, 2.001501540839854, 2.001501540839854),
        (-2.001501540839854, -2.001501540839854, 2.001501540839854),
        (2.001501540839854, -2.001501540839854, 2.001501540839854),
        (2.001501540839854, 2.001501540839854, 2.001501540839854),
        (-2.001501540839854, 2.001501540839854, 2.001501540839854),
        (-2.001501540839854, 2.001501540839854, -2.001501540839854),
        (-2.001501540839854, -2.001501540839854, -2.001501540839854),
        (-2.001501540839854, -2.001501540839854, 2.001501540839854),
        (2.001501540839854, -2.001501540839854, 2.001501540839854),
        (2.001501540839854, -2.001501540839854, -2.001501540839854),
        (2.001501540839854, 2.001501540839854, -2.001501540839854),
        (2.001501540839854, 2.001501540839854, 2.001501540839854),
        (-2.001501540839854, 2.001501540839854, 2.001501540839854),
        (-2.001501540839854, 2.001501540839854, -2.001501540839854),
        (2.001501540839854, 2.001501540839854, -2.001501540839854),
        (2.001501540839854, -2.001501540839854, -2.001501540839854),
        (-2.001501540839854, -2.001501540839854, -2.001501540839854)
    ], n='IK_ctrl')
    ikoffset = cmds.group(ikCTL, w=1, n=ikCTL+'offset')
    ikGRP = cmds.group(ikoffset, w=1, n=ikCTL+'GRP')
    XF(ikGRP, ws=1, t=Trik)
    cmds.parent(ikHan[0], ikCTL)


    # constraint FK IK to skin joints
    for s in range(len(sel)):
        conpa = cmds.parentConstraint(FKlist[s], IKlist[s], skinlist[s], mo=1)
        paList = cmds.parentConstraint(conpa, query=True, weightAliasList=True)
        parentList.append(conpa)
        paweightList.append(paList)
        consc = cmds.scaleConstraint(FKlist[s], IKlist[s], skinlist[s], mo=1)
        scList = cmds.scaleConstraint(consc, query=True, weightAliasList=True)
        scaleList.append(consc)
        scweightList.append(scList)

    # connect FK IK switch => skin
    selSwitch = cmds.ls('*FKIK_ctrl')
    for s in selSwitch:
        CA(s+'.FKIK', SN('unitConversion', au=1, n='UC_'+s)+'.input')
        SA('UC_'+s+'.conversionFactor', 0.1)
        CA('UC_'+s+'.output', SN('reverse', au=1, n='RV_'+s)+'.inputX')
        for i in range(len(parentList)):
            CA('UC_'+s+'.output', parentList[i][0]+'.'+paweightList[i][1])
            CA('UC_'+s+'.output', scaleList[i][0]+'.'+scweightList[i][1])
            CA('RV_'+s+'.outputX', parentList[i][0]+'.'+paweightList[i][0])
            CA('RV_'+s+'.outputX', scaleList[i][0]+'.'+scweightList[i][0])

    # create IK poleVector
    poleCTL = cmds.curve(d=1, p=
        [(0.0, 2.001501540839854, 0.0),
        (0.0, -2.001501540839854, 0.0),
        (0.0, 0.0, 0.0),
        (0.0, 0.0, -2.001501540839854),
        (0.0, 0.0, 2.001501540839854),
        (0.0, 0.0, 0.0),
        (2.001501540839854, 0.0, 0.0),
        (-2.001501540839854, 0.0, 0.0)], n='pole_CTL')

    CTLShape = cmds.listRelatives(poleCTL, s=1)
    cmds.setAttr((CTLShape[0] + '.overrideEnabled'), 1)
    cmds.setAttr((CTLShape[0] + '.overrideColor'), 17)

    selObj = cmds.ls(sl=1)
    CtlScale = cmds.getAttr('setJNT_scale.scaleX')
    for i in selObj:
        cmds.select(i)  # ---- scale!!! ----#
        cmds.hilite(i)
        cmds.select(i + '.cv[:]')
        cmds.scale(CtlScale*3, CtlScale*3, CtlScale*3)
        cmds.hilite(u=1)
        cmds.select(i)

    Tr = XF('Knee_skin_JNT', q=1, ws=1, t=1)
    offsetPole = cmds.group(poleCTL, n=poleCTL+'offset')
    GRPpole = cmds.group(offsetPole, n=poleCTL+'GRP')
    XF(GRPpole, ws=1, t=Tr)
    cmds.move(300, GRPpole, moveZ=True, relative=True, objectSpace=True)
    cmds.poleVectorConstraint(poleCTL, ikHan[0])

    cmds.delete('setJNT_scale')


CreateJNTSet()
CreateTemp()
CreateJNT()