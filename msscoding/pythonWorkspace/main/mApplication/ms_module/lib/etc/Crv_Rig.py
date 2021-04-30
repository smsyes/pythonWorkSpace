###curve rigging setup### v5
import maya.cmds as cmds
import pymel.core as pm

MyWindowCrv = "MyWindowCrv"
if cmds.window(MyWindowCrv, exists=True):
    cmds.deleteUI(MyWindowCrv)
# ===================================== UI ===================================== #
cmds.window(MyWindowCrv, title="Chae's Curve Rig Tool", wh=(400, 400), s=1)
cmds.columnLayout(columnAttach=('both', 10), rowSpacing=30, cw=400)
# cmds.separator(h=10)
cmds.text(l="")
cmds.text("CHAE'S CURVE RIG TOOL")
cmds.separator(h=20)
cmds.rowColumnLayout(nc=1, cw=[(1, 400)], adjustableColumn=True)
# cmds.setParent("..")
cmds.rowColumnLayout(nc=3, cw=[(1, 50), (2, 150), (3, 50)], adjustableColumn=True)
cmds.text(l="Enter the Name:")
NameTextFG = cmds.textFieldGrp(tx="Name", ed=1, adjustableColumn=True)
cmds.text(l="")
cmds.setParent("..")
cmds.rowColumnLayout(nc=1, cw=[(1, 400)], adjustableColumn=True)
cmds.separator(h=50)
cmds.setParent("..")
cmds.rowColumnLayout(nc=2, cw=[(1, 200), (2, 200)], adjustableColumn=True)
cmds.text(l="Num of IK CTL:")
IKCtlintSG = cmds.intSliderGrp(min=2, max=10, field=1, v=3)
cmds.text(l="Num of Jnt between IK CTL:")
JntNumintSG = cmds.intSliderGrp(min=2, max=10, field=1, v=2)
cmds.setParent("..")
cmds.rowColumnLayout(nc=1, cw=[(1, 400)], adjustableColumn=True)
cmds.separator(h=50)
cmds.setParent("..")
cmds.rowColumnLayout(nc=1, cw=[(1, 400)], cal=[1, "center"])
cmds.text("Step1: select curves")
cmds.setParent("..")
cmds.rowColumnLayout(nc=3, cw=[(1, 100), (2, 200), (3, 100)])
cmds.text(l="")
cmds.button(l="Create Joints along the Curves", w=80, c="CreatJntAlngCrv()",
            bgc=(0.1889999955892563, 0.6299999952316284, 0.6299999952316284))
cmds.text(l="")
cmds.setParent("..")
cmds.rowColumnLayout(nc=1, cw=[(1, 400)], cal=[1, "center"])
cmds.separator(h=50)
cmds.text("Step2")
cmds.setParent("..")
cmds.rowColumnLayout(nc=4, cw=[(1, 80), (2, 70), (3, 150), (4, 50)])
cmds.text(l="")
checkStrech = cmds.checkBox(w=50, h=10, l='Stretch')
cmds.button(l="Create Curve Rig Setting", w=80, c="CreateIKCTLOnCrv(1, 19)",
            bgc=(0.6299999952316284, 0.1889999955892563, 0.41391000151634216))
cmds.setParent("..")
cmds.rowColumnLayout(nc=1, cw=[(1, 400)], cal=[1, "center"])
cmds.separator(h=50)
cmds.rowColumnLayout(nc=3, cw=[(1, 100), (2, 100), (3, 100), (4, 100)])
cmds.text(l="")
cmds.button(l="close", w=200, c="cmds.deleteUI(MyWindow)", bgc=(0.25, 0.25, 0.25))
cmds.showWindow()


# ===========================�ㅽ뻾�� �꾩슂�� �⑥닔��=========================== #

def SelHi_(selectObj_):  # select EACH hierarchy
    ObjList = []
    for i in selectObj_:
        cmds.select(i, hi=1)
        slObjLs = cmds.ls(sl=1, type='joint')
        ObjList.append(slObjLs)
    return ObjList


def Naming_(sel_Obj_, baseName, targetName):  # Naming tool : Now you can get the hierarchy lists of each selObj's
    NameLst = []
    for i in sel_Obj_:
        TempNameLst = []
        if type(i) == list:
            for x in i:
                reName = x.replace(baseName, targetName)
                TempNameLst.append(reName)
            NameLst.append(TempNameLst)
        else:
            reName = i.replace(baseName, targetName)
            TempNameLst.append(reName)
        NameLst.append(TempNameLst)
    return NameLst


# Naming_(SelHi_(selObj), 'joint', 'jnt')
def NullPrntGrp_(sel_Obj_, grpName):  # For Creating CTL's Null Parent Grp
    objLst = []
    DupSel = cmds.duplicate(selObj, rc=True)
    DupSelLst = cmds.parent(DupSel, w=1)
    DupSelLst.append(DupSel[0])
    DupSelLst.append(DupSel[1])
    DupSelLst.append(DupSel[2])
    DupSelLst.sort()
    if len(sel_Obj_) >= 1:
        for i in DupSelLst:
            zeroGrp = cmds.group(em=1, n=i + '.' + grpName)  # --make empty grp
            getX = cmds.getAttr(i + '.translateX')  # --get selected obj's position
            getY = cmds.getAttr(i + '.translateY')
            getZ = cmds.getAttr(i + '.translateZ')
            cmds.move(getX, getY, getZ, zeroGrp, rpr=1, ws=1)  # --place that in selected obj's position
            objLst.append(zeroGrp)
    cmds.delete(DupSelLst)
    return objLst


# NullPrntGrp_(selObj, 'Zero')
def PrntConstraint(Prnt, Chld):
    return cmds.parentConstraint(Prnt, Chld, mo=1)


def SclConstraint(Prnt, Chld):
    return cmds.scaleConstraint(Prnt, Chld, mo=1)


##-----------Move Pivot to Ctl-----------##
def PivotChange_(originPiv, TargetPiv):  # for Changing Pivot of Clusters
    getX = cmds.getAttr(TargetPiv + '.translateX')  # --get selected obj's position
    getY = cmds.getAttr(TargetPiv + '.translateY')
    getZ = cmds.getAttr(TargetPiv + '.translateZ')
    cmds.move(getX, getY, getZ, originPiv + '.scalePivot', originPiv + '.rotatePivot', rpr=1)  # --changing pivot

def CreateIkH():
    Name = cmds.textFieldGrp(NameTextFG, q=1, tx=1)
    selJnt = cmds.ls(Name + "*_joint1", type='joint')  ####------------------creating ikHandle------------------####
    IKCtlAmnt = cmds.intSliderGrp(IKCtlintSG, q=1, v=1)
    for i in SelHi_(selJnt):
        ikHLst = cmds.ikHandle(n=Naming_([i], 'joint', 'ikH')[0][0], sj=i[0], ee=i[-1], sol='ikSplineSolver',
                               ns=IKCtlAmnt - 1)
        crvName = ikHLst[2]
        cmds.select(crvName)
        cmds.rename(ikHLst[0] + '_crv')
    print ('*ikHandle �ㅻ컯�꾩æ^______^*')


def BindSkin(Joint, targetMesh):
    Name = cmds.textFieldGrp(NameTextFG, q=1, tx=1)
    cmds.skinCluster(Joint, targetMesh, n=Name + '_skinCluster', tsb=True, bm=0, sm=0, nw=1)[0]


# ===========================�ㅽ뻾�⑥닔=========================== #
def CreatJntAlngCrv():
    selCrv = cmds.ls(sl=1, type='transform')
    Name = cmds.textFieldGrp(NameTextFG, q=1, tx=1)
    IKCtlAmnt = cmds.intSliderGrp(IKCtlintSG, q=1, v=1)
    JntNum = cmds.intSliderGrp(JntNumintSG, q=1, v=1)
    jntAmnt = (JntNum * (IKCtlAmnt - 1)) + 1
    for k in selCrv:
        cmds.setAttr(k + '.visibility', 0)
        cmds.rebuildCurve(k, ch=0, rpo=1, rt=0, end=1, kr=1, kcp=0, kep=1, kt=0, s=jntAmnt - 1, d=3,
                          tol=0.01)  ## Rebuild Crv ##
    preJnt = ""
    rootJnt = ""
    for x in range(len(selCrv)):
        for i in range(0, jntAmnt):
            cmds.select(cl=True)
            newJnt = cmds.joint(n=Name + str(x + 1) + '_joint1')
            motionPath = cmds.pathAnimation(newJnt, c=selCrv[x], fractionMode=True)
            cmds.cutKey(motionPath + ".u", time=())
            cmds.setAttr(motionPath + ".u", i * (1.0 / (jntAmnt - 1)))
            cmds.delete(newJnt + ".tx", icn=True)
            cmds.delete(newJnt + ".ty", icn=True)
            cmds.delete(newJnt + ".tz", icn=True)
            cmds.delete(motionPath)
            if i == 0:
                preJnt = newJnt
                rootJnt = newJnt
                continue
            cmds.parent(newJnt, preJnt)
            preJnt = newJnt
        cmds.joint(rootJnt, e=True, oj="xyz", sao="yup", ch=True, zso=True)  # ---- Orient Joint----#
    selJnt = cmds.ls(Name + "*_joint1", type='joint')
    for a in range(len(selCrv)):  # ---- Orient the End Joint----#
        # print a, SelHi_(selJnt)[a][-1]
        endJnt = SelHi_(selJnt)[a][-1]
        cmds.joint(endJnt, e=1, oj="none", ch=1, zso=1)


def CreateIKCTLOnCrv(S, C):  ###---------Create Clusters---------###
    CreateIkH()
    Name = cmds.textFieldGrp(NameTextFG, q=1, tx=1)
    IKCtlAmnt = cmds.intSliderGrp(IKCtlintSG, q=1, v=1)
    JntNum = cmds.intSliderGrp(JntNumintSG, q=1, v=1)
    targetCurve = cmds.ls(Name + '*_crv')  # Curve to put clusters on
    selJnt = cmds.ls(Name + "*_joint1", type='joint')
    DynIKJntLstLst = []
    ZeroLst = []
    CtlLst = []
    for z in range(len(targetCurve)):  ###--- Create DynJnt ---###
        DynIKJntLst = []
        Zero = []
        Ctl = []
        for x in range(IKCtlAmnt):
            num = JntNum * x
            PosJnt = SelHi_(selJnt)[z][num]
            cmds.select(cl=1)
            DynJnt = cmds.joint(n=Name + str(z + 1) + "_DynJnt" + str(x + 1))
            CTL = cmds.curve(n=Name + str(z + 1) + '_IK_Ctl' + str(x + 1), d=1,
                             p=[(S, S, -S), (S, S, S), (S, -S, S), (S, -S, -S), (S, S, -S), (-S, S, -S), (-S, -S, -S),
                                (-S, -S, S), (-S, S, S), (S, S, S), (S, -S, S), (-S, -S, S), (-S, -S, -S), (S, -S, -S),
                                (S, S, -S), (-S, S, -S), (-S, S, S), (S, S, S), (S, S, -S)])
            boxList = cmds.listRelatives(CTL, s=1)
            cmds.setAttr((boxList[0] + '.overrideEnabled'), 1)
            cmds.setAttr((boxList[0] + '.overrideColor'), C)
            CTLZero = cmds.group(n=CTL + '_Zero', em=1)
            CTLZeroAttatch = cmds.parentConstraint(PosJnt, CTLZero)
            JntAttatch = cmds.parentConstraint(PosJnt, DynJnt)
            CtlAttatch = cmds.parentConstraint(PosJnt, CTL)
            cmds.delete(JntAttatch)
            cmds.delete(CtlAttatch)
            cmds.delete(CTLZeroAttatch)
            cmds.parent(CTL, CTLZero)
            cmds.parent(DynJnt, CTL)
            DynIKJntLst.append(DynJnt)
            Zero.append(CTLZero)
            Ctl.append(CTL)
        DynIKJntLstLst.append(DynIKJntLst)
        BindSkin(DynIKJntLstLst[z], targetCurve[z])

        ZeroLst.append(Zero)
        CtlLst.append(Ctl)
        # cmds.select(cl=1)
        CtlGrp = cmds.group(em=1, n=Name + str(z + 1) + "_IK_Grp")
        print CtlGrp
        for a in range(IKCtlAmnt):
            cmds.parent(ZeroLst[z][a], CtlGrp)

        cmds.parent(selJnt[z], CtlGrp)

    CreateFKCtl(1.5, 23)


def CreateFKCtl(S, C):  ####------------------creating FK Ctl------------------####
    Zero = []
    CTLLst = []
    Name = cmds.textFieldGrp(NameTextFG, q=1, tx=1)
    selJnt = cmds.ls(Name + "*_joint1", type='joint')
    for i in SelHi_(selJnt):
        CTLLstTemp = []
        ZeroTemp = []
        DupSel = cmds.duplicate(i[0], rc=True)  ### Making FK Skin Joint ###
        cmds.delete(DupSel[-1])
        cmds.select(DupSel[0])
        DupSelpdown = cmds.pickWalk(d='down')
        cmds.select(DupSelpdown, hi=1)
        DupSelHi = cmds.ls(sl=1, type='joint')
        DupSelLst = cmds.parent(DupSelHi, w=1)
        DupSelLst.insert(0, DupSel[0])
        cmds.parent(DupSelLst[-1], DupSelLst[-2])
        for x in range(len(SelHi_(selJnt)[0])):
            newNAME = Naming_([i[x]], '_joint', '_FK_skinJnt')[0][0]
            cmds.rename(DupSelLst[x], newNAME)
            CTL = cmds.circle(n=Naming_([i[x]], '_joint', '_FK_Ctl')[0][0], r=S, nr=(1, 0, 0))
            # cmds.delete(CTL, ch=1)
            CTLGrp = cmds.group(em=1, n=Naming_([i[x]], '_joint', '_FK_Ctl')[0][0] + '_Grp')
            CTLZero = cmds.group(em=1, n=Naming_([i[x]], '_joint', '_FK_Ctl')[0][0] + '_Zero')

            boxList = cmds.listRelatives(CTL[0], s=1)
            cmds.setAttr((boxList[0] + '.overrideEnabled'), 1)
            cmds.setAttr((boxList[0] + '.overrideColor'), C)
            cmds.rename(boxList, (CTL[0] + 'Shape'))
            POS = cmds.parentConstraint(i[x], CTL)
            GrpPos = cmds.parentConstraint(i[x], CTLGrp)
            ZeroPos = cmds.parentConstraint(i[x], CTLZero)
            cmds.delete(POS)
            cmds.delete(GrpPos)
            cmds.delete(ZeroPos)
            cmds.parent(newNAME, CTL[0])
            cmds.parent(CTL[0], CTLGrp)
            cmds.parent(CTLGrp, CTLZero)
            cmds.select(cl=1)
            CTLLstTemp.append(CTL)
            ZeroTemp.append(CTLZero)

        CTLGrp = cmds.group(em=1, n=Naming_(i, '_joint1', '_FK_Grp')[0][0])
        cmds.parent(ZeroTemp, CTLGrp)

        for z in range(len(SelHi_(selJnt)[0]) - 1):
            if z == 0:
                IKCTL = Naming_([i[z]], '_joint', '_IK_Ctl')[0][0]
                FKGrp = Naming_([i[z]], '_joint', '_FK_Ctl')[0][0] + '_Grp'
                FKZero = Naming_([i[z]], '_joint', '_FK_Ctl')[0][0] + '_Zero'
                cmds.parent(ZeroTemp[z + 1], CTLLstTemp[z][0])
            else:
                FKGrp = Naming_([i[z]], '_joint', '_FK_Ctl')[0][0] + '_Grp'
                cmds.parent(ZeroTemp[z + 1], CTLLstTemp[z][0])

        for k in range(len(SelHi_(selJnt)[0])):
            FKZero = Naming_([i[k]], '_joint', '_FK_Ctl')[0][0] + '_Zero'
            DcmpsMtrx = cmds.shadingNode('decomposeMatrix', asUtility=True, name='dcmpsMatrix_' + [i[k]][0])
            cmds.connectAttr([i[k]][0] + '.matrix', DcmpsMtrx + '.inputMatrix')
            cmds.connectAttr(DcmpsMtrx + '.outputTranslate', FKZero + '.translate')
            cmds.connectAttr(DcmpsMtrx + '.outputRotate', FKZero + '.rotate')
            cmds.connectAttr(DcmpsMtrx + '.outputScale', FKZero + '.scale')
    delHisroty(Name)
    checkBoxV()


def stretchSet():
    Name = cmds.textFieldGrp(NameTextFG, q=1, tx=1)
    targetCurve = cmds.ls(Name + '*_crv')
    selJnt = cmds.ls(Name + "*_joint2", type='joint')
    IKGrp = cmds.ls(Name + "*_IK_Grp*")
    FKGrp = cmds.ls(Name + "*_FK_Grp*")
    condNodeLst = []
    n = 0
    for a in targetCurve:
        # print a, Naming_([a], 'ikH1_crv', 'worldScale_loc')[0][0]
        worldScaleLoc = cmds.spaceLocator(n=Naming_([a], 'ikH1_crv', 'worldScale_loc')[0][0])
        cmds.setAttr(worldScaleLoc[0] + '.visibility', 0)
        cmds.setAttr(a + '.visibility', 0)
        IKH = Naming_([a], 'ikH1_crv', 'ikH1')[0][0]
        cmds.setAttr(IKH + '.visibility', 0)
        CrvInfo = cmds.arclen(a, ch=True)
        cmds.rename(CrvInfo, a + 'Info')
        arcLen = cmds.getAttr(a + 'Info' + '.arcLength')
        DivMainScale = cmds.shadingNode('multiplyDivide', asUtility=True,
                                        name=Naming_([a], 'ikH1_crv', 'Main_Scale')[0][0])
        cmds.setAttr(DivMainScale + '.operation', 2)
        Div = cmds.shadingNode('multiplyDivide', asUtility=True, name=Naming_([a], 'ikH1_crv', 'Div')[0][0])
        cmds.setAttr(Div + '.operation', 2)
        Mult = cmds.shadingNode('multiplyDivide', asUtility=True, name=Naming_([a], 'ikH1_crv', 'Mult')[0][0])
        Cond = cmds.shadingNode('condition', asUtility=True, name=Naming_([a], 'ikH1_crv', 'OnOff_Cond')[0][0])
        cmds.connectAttr(a + 'Info' + '.arcLength', DivMainScale + '.input1.input1X')
        cmds.setAttr(Div + '.input2.input2X', arcLen)
        cmds.connectAttr(worldScaleLoc[0] + '.scaleZ', DivMainScale + '.input2.input2X')
        cmds.connectAttr(DivMainScale + '.outputX', Div + '.input1.input1X')
        cmds.connectAttr(Div + '.outputX', Mult + '.input1.input1X')
        cmds.connectAttr(Mult + '.outputX', Cond + '.colorIfFalse.colorIfFalseR')
        TransX = cmds.getAttr(selJnt[n] + '.tx')  ###connect to joint's transX###
        cmds.setAttr(Mult + '.input2.input2X', TransX)
        cmds.setAttr(Cond + '.colorIfTrue.colorIfTrueR', TransX)
        condNodeLst.append(Cond)
        cmds.scaleConstraint(worldScaleLoc, IKGrp[n])  ###---Scale Constraint from worldScale locator to IK Grp---###
        cmds.scaleConstraint(worldScaleLoc, FKGrp[n])
        n = n + 1

    # print len(multNodeLst), range(len(multNodeLst)), SelHi_(selJnt)[0]
    for x in range(len(condNodeLst)):
        for z in range(len(SelHi_(selJnt)[0])):
            cmds.connectAttr(condNodeLst[x] + '.outColor.outColorR', SelHi_(selJnt)[x][z] + '.tx')


def CTLAttrTemp():
    Name = cmds.textFieldGrp(NameTextFG, q=1, tx=1)
    checkStrechV = cmds.checkBox(checkStrech, q=True, v=True)
    print checkStrechV
    selJnt = cmds.ls(Name + "*_joint1", type='joint')
    IKGrp = cmds.ls(Name + "*_IK_Grp*")
    FKGrp = cmds.ls(Name + "*_FK_Grp*")
    for a in selJnt:
        CTL = cmds.curve(n=Naming_([a], '_joint1', '_Main_Ctl')[0][0], d=1,
                         p=[(0, 1, 0), (-0.382683, 0.92388, 0), (-0.707107, 0.707107, 0), (-0.92388, 0.382683, 0),
                            (-1, 0, 0),
                            (-0.92388, -0.382683, 0), (-0.707107, -0.707107, 0), (-0.382683, -0.92388, 0), (0, -1, 0),
                            (0.382683, -0.92388, 0),
                            (0.707107, -0.707107, 0), (0.92388, -0.382683, 0), (1, 0, 0), (0.92388, 0.382683, 0),
                            (0.707107, 0.707107, 0), (0.382683, 0.92388, 0),
                            (0, 1, 0), (0, 0.92388, 0.382683), (0, 0.707107, 0.707107), (0, 0.382683, 0.92388),
                            (0, 0, 1), (0, -0.382683, 0.92388), (0, -0.707107, 0.707107),
                            (0, -0.92388, 0.382683), (0, -1, 0), (0, -0.92388, -0.382683), (0, -0.707107, -0.707107),
                            (0, -0.382683, -0.92388), (0, 0, -1), (0, 0.382683, -0.92388),
                            (0, 0.707107, -0.707107), (0, 0.92388, -0.382683), (0, 1, 0), (-0.382683, 0.92388, 0),
                            (-0.707107, 0.707107, 0), (-0.92388, 0.382683, 0), (-1, 0, 0),
                            (-0.92388, 0, 0.382683), (-0.707107, 0, 0.707107), (-0.382683, 0, 0.92388), (0, 0, 1),
                            (0.382683, 0, 0.92388), (0.707107, 0, 0.707107),
                            (0.92388, 0, 0.382683), (1, 0, 0), (0.92388, 0, -0.382683), (0.707107, 0, -0.707107),
                            (0.382683, 0, -0.92388), (0, 0, -1), (-0.382683, 0, -0.92388),
                            (-0.707107, 0, -0.707107), (-0.92388, 0, -0.382683), (-1, 0, 0)],
                         k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
                            25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,
                            48, 49, 50, 51, 52])
        CTLList = cmds.listRelatives(CTL, s=1)
        cmds.setAttr((CTLList[0] + '.overrideEnabled'), 1)
        cmds.setAttr((CTLList[0] + '.overrideColor'), 28)
        POS = cmds.parentConstraint(a, CTL)
        cmds.delete(POS)
        Zero = cmds.group(em=1, n=CTL + '.Zero')  ###---making zero Grp to CTL---###
        Pos = cmds.parentConstraint(a, Zero)
        cmds.delete(Pos)
        cmds.parent(CTL, Zero)
        cmds.makeIdentity(apply=1, t=1, r=1, s=1, n=0, pn=1)

        cmds.select(CTL)  # ---- scale!!! ----#
        cmds.hilite(CTL)
        cmds.select(CTL + '.cv[0:52]')
        cmds.scale(3, 3, 3)
        cmds.hilite(u=1)
        cmds.select(cl=1)

        if checkStrechV == True:
            print "Stretch Setting!"
            cmds.addAttr(CTL, ln="Stretch", at='bool')
            cmds.setAttr(CTL + ".Stretch", keyable=True)
            cmds.setAttr(CTL + ".Stretch", 1)
            Cond = Naming_([a], '_joint1', '_OnOff_Cond')[0][0]
            cmds.connectAttr(CTL + '.Stretch', Cond + '.firstTerm')
        else:
            print "No Stretch!"

        FKGrp = Naming_([a], '_joint1', '_FK_Grp')[0][0]
        IKGrp = Naming_([a], '_joint1', '_IK_Grp')[0][0]
        cmds.parent(FKGrp, CTL)
        cmds.parent(IKGrp, CTL)


def checkBoxV():
    checkStrechV = cmds.checkBox(checkStrech, q=True, v=True)
    if checkStrechV == True:
        stretchSet()
        CTLAttrTemp()
    else:
        CTLAttrTemp()


def delHisroty(Name):
    selObj = cmds.listRelatives(Name + '*_FK_Ctl*', type='nurbsCurve')
    selCtl = cmds.listRelatives(selObj, p=1)
    for a in selCtl:
        cmds.delete(a, ch=1)

''''
import pymel.core as pm
selObj=pm.ls(sl=1)
for a in selObj:
    selShp=pm.listRelatives(a, s=True)
    pm.rename(selShp, a+'Shape')
'''