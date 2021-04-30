"""
multipleWrap.py
version 1.0
Created by Chaewon Chung from South Korea in 2020
email: chaechae.chung@gmail.com

Coverting Wrap deformer to Skin Cluster / Skin Copy / Wrap for multiple meshes

Use Guide :
1.  import oneMesh List (Skinned & BlendShapped Mesh) in <Base List>
    import MOD List (Render Mesh) in <Target List>

2.  choose 1:1 / 1:n Matching Type

3.  Click one of Skin Copy / Wrap Skin / Wrap button

"""
import pymel.core as pm
import maya.OpenMaya as om
def getInputs(type):
    if type == 'Prefix':
        Prefix = pm.textField('PrefixTextInput', q=1, tx=True)
        return Prefix+"_"
    elif type == 'MatchingType':
        MatchingType = pm.radioCollection('gradioCollection1', q=1, sl=True)
        return MatchingType
def Error(Item):
    if len(Item) < 1:
        pm.warning("You didn't *SELECT* the Meshes Dude.")
def WrapDeformer(SEL):
    BaseMod = SEL[0]
    TargetMod = SEL[1]
    #for Group selection
    duplicateData = pm.duplicate(BaseMod, name=BaseMod + 'Base')
    BaseModShape = BaseMod.getChildren()[0]
    wrapData = pm.deformer(TargetMod, type='wrap', n=TargetMod+'_wrap')
    wrapNode = wrapData[0]
    wrapNode.setAttr('weightThreshold', 0.0)
    wrapNode.setAttr('maxDistance', 1.0)
    wrapNode.setAttr('exclusiveBind', False)
    wrapNode.setAttr('autoWeightThreshold', True)
    wrapNode.setAttr('falloffMode', 0)
    TargetMod.worldMatrix[0] >> wrapNode.geomMatrix
    # add influence
    base = duplicateData[0]
    shapes = base.getChildren()
    baseShape = shapes[0]
    base.hide()
    # create dropoff attr if it doesn't exist
    if not pm.attributeQuery('dropoff',n=BaseMod,exists=True):
        pm.addAttr(BaseMod, sn='dr', ln='dropoff', dv=4.0, min=0.0, max=20.0)
        pm.setAttr(BaseMod + '.dr', k=True)
    # # if type mesh
    # if pm.nodeType(BaseModShape) == 'mesh':
        # create smoothness attr if it doesn't exist
    if not pm.attributeQuery('smoothness',n=BaseMod,exists=True):
        pm.addAttr(BaseMod, sn='smt', ln='smoothness', dv=0.0, min=0.0)
        pm.setAttr(BaseMod + '.smt', k=True)
    # create the inflType attr if it doesn't exist
    if not pm.attributeQuery('inflType',n=BaseMod,exists=True):
        pm.addAttr(BaseMod, at='short', sn='ift', ln='inflType', dv=2, min=1, max=2)
    BaseModShape.worldMesh >> wrapNode.driverPoints[0]
    baseShape .worldMesh >> wrapNode.basePoints[0]
    BaseMod.inflType >> wrapNode.inflType[0]
    BaseMod.smoothness >> wrapNode.smoothness[0]
    BaseMod.dropoff >> wrapNode.dropoff[0]

def DuplicateBSTarget(SEL):
    BaseMod = SEL[0]
    TargetMod = SEL[1]
    BaseBShp = BaseMod.listHistory(type = 'blendShape')
    if BaseBShp:                # If BaseMod has BlendShape
        BShpIndexList = BaseBShp[0].weightIndexList()
        BShpList =  pm.aliasAttr(BaseBShp[0], q=1)[::2]
        pm.select(TargetMod)
        Bshp = pm.blendShape(n = TargetMod+'_BShp', automatic=1)[0]
        newAttr = []
        PR_list = []
        PR_Attr= []
        for a in range(0, len(BShpIndexList)):
            Attr = BShpList[a]
            PoseReader = pm.listConnections(BaseBShp[0]+'.'+Attr)
            if PoseReader:
                PR_list.append(PoseReader[0])
                PR_Attr.append(Attr)
            else:                # no PoseReader
                AttrComp = pm.ls(BShpList[a])[0]
                newAttr.append(AttrComp)
                print 'No PSD'
        # if PoseReader is True / ['something in here'] kind of meaning
        for a in range(0, len(PR_list)):
            Attr = PR_Attr[a]
            pm.disconnectAttr(PR_list[a]+'.weight', BaseBShp[0]+'.'+Attr)
            pm.setAttr(BaseBShp[0]+'.'+Attr, 1)
            Target = pm.duplicate(TargetMod, n=TargetMod+'_'+Attr)[0]
            pm.blendShape(Bshp, e=1, t=(TargetMod, a+1, Target, 1.0))
            pm.connectAttr(PR_list[a]+'.weight', BaseBShp[0]+'.'+Attr)
            pm.connectAttr(PR_list[a]+'.weight', Bshp+'.'+TargetMod+'_'+Attr)
            pm.delete(Target)
            print TargetMod, Attr, " Duplicated Done! & Connected Pose Reader!"
        # If blendShape attribute has no connections to pose reader, you just need to skin copy the targets
        TargetList = []
        for a in range(0, len(newAttr)):
            AttrName = newAttr[a]
            Target = pm.duplicate(TargetMod, n=TargetMod+'_'+AttrName)[0]
            pm.setAttr(Target+'.visibility', 0)
            pm.blendShape(Bshp, e=1, t=(TargetMod, a+len(PR_list)+1, Target, 1.0))
            pm.setAttr(Bshp+'.'+Target, 1)
            SkinMesh = AttrName.listHistory(type = 'shape')[0].listRelatives(p=1)[0]
            subSC = SkinMesh.listHistory(type = 'skinCluster')
            TargetList.append(Target)
            if subSC != []:
                getJnt = pm.skinCluster(subSC, q=1, wi=1)
                skinMthd = pm.getAttr(subSC[0] + ".skinningMethod")
                pm.select(Target)
                pm.select(getJnt, add=1)
                pm.skinCluster(toSelectedBones=1, sm=skinMthd)
                pm.copySkinWeights(SkinMesh, Target, nm=True, sa="closestPoint", ia="oneToOne")
                pm.select(cl=True)
                print SkinMesh, Target,  " Duplicated Done!"
            else:
                pass
        if TargetList != []:
            layerGrp = pm.group(em=1, n= TargetMod + '_target_layer_grp')
            for a in TargetList:
                pm.parent(a, layerGrp)
    else:       # If BaseMod has no BlendShape (you just need to copy skin weight)
        pass
def DeleteWrap(SEL):
    BaseMod = SEL[0]
    TargetMod = SEL[1]
    if pm.objExists(TargetMod+'_wrap*'):
        pm.delete(TargetMod+'_wrap*')
        BaseList = pm.ls(BaseMod+'Base*', type='transform') # filtering pre-exist Base* mesh obj
        for a in BaseList:
            if a.listHistory(type = 'shape') == []:
                pm.delete(a)
    else:
        print ('warning: no wrap founded')
def SkinCopy(SEL):
    BaseMod = SEL[0]
    TargetMod = SEL[1]
    skinClst = BaseMod.listHistory(type='skinCluster')
    if skinClst:
        skinJnt = pm.skinCluster(skinClst[0], query=True, inf=True)
        skinMhod = pm.getAttr(skinClst[0] + ".skinningMethod")
        pm.select(TargetMod, skinJnt)
        pm.skinCluster(sm=skinMhod, tsb=True)
        pm.copySkinWeights(BaseMod, TargetMod, nm=True, sa="closestPoint", ia="oneToOne")
    else:
        pass
    pm.select(cl=True)
def ModListing():
    selGrp = pm.ls(sl=1)
    pm.select(selGrp, hi=1)
    GrpChildrenList = pm.ls(sl=1, s=1) #to find mesh only(=don't want to grab group), find geo shape first
    ChildrenGeoList=[]
    for a in GrpChildrenList:
        temp = pm.ls(a, type='mesh')
        if len(temp) == 1:
            Mod = pm.listRelatives(a, p=1)
            ChildrenGeoList.append(Mod[0])
    ChildrenGeoList = list(set(ChildrenGeoList) - set(list(filter(lambda x: 'Base' in x[:], ChildrenGeoList))))
    pm.select(selGrp[0])
    return ChildrenGeoList
def RefreshList(List):
    aList=[]
    for a in ModListing():
        aList.append(a)
    aList.sort()
    pm.textScrollList(List, e=True, removeAll=True)
    if len(aList) == 0:
        pm.textScrollList(List, e=True, a = ['you select nothing'])
    else:
        for a in aList:
            pm.textScrollList(List, e=True, append=a)
    return aList
def OnWrapSkinClick(ListA, ListB):
    MatchingType = getInputs('MatchingType')
    BaseList=pm.textScrollList(ListA, q=True, si=True )
    TargetList=pm.textScrollList(ListB, q=True, si=True )
    TotalList = []
    MatchingTotal = []
    for a in range(len(TargetList)):
        if MatchingType == 'Matching': # 1:1 Matching
            # print BaseList
            slBase = pm.ls(BaseList[a])
            slTarget = pm.ls(TargetList[a])
            temp = slBase + slTarget
            MatchingTotal.append(temp)
        else:                           # 1:n Matching
            slBase = pm.ls(BaseList[0])
            slTarget = pm.ls(TargetList[a])
            temp = slBase + slTarget
            TotalList.append(temp)

    if MatchingType == 'Matching': # 1:1 Matching
        if MatchingTotal == []:
            Error(MatchingTotal)
            return
        for a in MatchingTotal:
            WrapDeformer(a)
            DuplicateBSTarget(a)
            DeleteWrap(a)
            SkinCopy(a)
    else:                         # 1:n Matching
        if TotalList == []:
            Error(TotalList)
            return
        for a in TotalList:
            WrapDeformer(a)
            DuplicateBSTarget(a)
            DeleteWrap(a)
            SkinCopy(a)
    om.MGlobal.displayInfo("**<Wrap to Skin> has safely done!**")

def OnSkinCopyClick(ListA, ListB):
    MatchingType = getInputs('MatchingType')
    BaseList = pm.textScrollList(ListA, q=True, si=True)
    TargetList = pm.textScrollList(ListB, q=True, si=True)
    TotalList = []
    MatchingTotal = []
    for a in range(len(TargetList)):    # 1:1 Matching list
        if MatchingType == 'Matching':
            slBase = pm.ls(BaseList[a])
            slTarget = pm.ls(TargetList[a])
            temp = slBase + slTarget
            MatchingTotal.append(temp)
        else:                           # 1:n Matching list
            slBase = pm.ls(BaseList[0])
            slTarget = pm.ls(TargetList[a])
            temp = slBase + slTarget
            TotalList.append(temp)
    if MatchingType == 'Matching':      # 1:1 Matching
        if MatchingTotal == []:
            Error(MatchingTotal)
            return
        for a in MatchingTotal:
            SkinCopy(a)
    else:                                # 1:n Matching
        if TotalList == []:
            Error(TotalList)
            return
        for a in TotalList:
            SkinCopy(a)
    om.MGlobal.displayInfo("**<Skin Copy> has safely done!**")
def OnWrapClick(ListA, ListB):
    MatchingType = getInputs('MatchingType')
    BaseList=pm.textScrollList(ListA, q=True, si=True )
    TargetList=pm.textScrollList(ListB, q=True, si=True )
    TotalList = []
    MatchingTotal = []
    for a in range(len(TargetList)):
        if MatchingType == 'Matching': # 1:1 Matching
            # print BaseList
            slBase = pm.ls(BaseList[a])
            slTarget = pm.ls(TargetList[a])
            temp = slBase + slTarget
            MatchingTotal.append(temp)
        else:                           # 1:n Matching
            slBase = pm.ls(BaseList[0])
            slTarget = pm.ls(TargetList[a])
            temp = slBase + slTarget
            TotalList.append(temp)

    if MatchingType == 'Matching': # 1:1 Matching
        if MatchingTotal == []:
            Error(MatchingTotal)
            return
        for a in MatchingTotal:
            WrapDeformer(a)
    else:                         # 1:n Matching
        if TotalList == []:
            Error(TotalList)
            return
        for a in TotalList:
            WrapDeformer(a)
    om.MGlobal.displayInfo("**<Wrap> has safely done!**")
def OnRemoveClick(List):
    RemoveList = pm.textScrollList(List, q=True, si=True)
    ScrollList = pm.textScrollList(List, q=True, ai=True)
    totalList = list(set(ScrollList) - set(RemoveList))
    totalList.sort()
    pm.textScrollList(List, e=True, removeAll=True)
    print 'has been removed %s from the list' %RemoveList
    for a in totalList:
        pm.textScrollList(List, e=1, a=a)
    return totalList
def GUI():
    if (pm.window('Mywindow', q=1, ex=1)):
        pm.deleteUI('Mywindow')
    pm.window('Mywindow', ret=1, rtf=1, t='MultipleWrap', mb=1)
    pm.tabLayout('tabLayout2', tv=1)
    pm.frameLayout('Step2', mw=5, l='Skin Copy / Wrap to Skin / Wrap Tool',
                     bgc=[0.38620584420538645, 0.4155031662470436, 0.3777981231403067], mh=10)
    pm.separator('separator97', st='in')
    pm.columnLayout('columnLayout43', rs=10, adj=1)
    pm.rowLayout('rowLayout3', nc=100)
    pm.text('text100', l=' Base List')
    pm.text('text103', l='                                                                         ')
    pm.text('text101', l='Target List')
    pm.rowLayout('rowLayout4', p='columnLayout43', nc=100)
    pm.textScrollList('BaseTxtScroll', ams=1)
    pm.text('text104', l='>>')
    pm.textScrollList('TargetTxtScroll', ams=1)
    pm.rowLayout('rowLayout5', p='Step2', cw=[[3, 120], [4, 90], [5, 50], [2, 60]], nc=100)
    pm.button('button29', c="OnRemoveClick('BaseTxtScroll')", bgc=[0.38620584420538645, 0.4155031662470436, 0.3777981231403067], l='remove selected')
    pm.text('text108', l='')
    pm.button('button27', c="RefreshList('BaseTxtScroll')", bgc=[0.38620584420538645, 0.4155031662470436, 0.3777981231403067], l='import base list')
    pm.button('button30',c="OnRemoveClick('TargetTxtScroll')", bgc=[0.38620584420538645, 0.4155031662470436, 0.3777981231403067], l='remove selected')
    pm.text('text106', l='')
    pm.button('button28', c="RefreshList('TargetTxtScroll')", bgc=[0.38620584420538645, 0.4155031662470436, 0.3777981231403067], l='import target list')
    pm.separator('separator96', p='Step2', st='in')
    pm.rowLayout('rowLayout6', p='Step2', nc=100)
    pm.text('text107', l='                                                              ')
    pm.radioCollection('gradioCollection1')
    pm.radioButton('11Matching', l='1:1 Matching', sl=1)
    pm.radioButton('1nMatching', l='1:n Matching')
    pm.button('SkinCopyButton', p='Step2', c="OnSkinCopyClick('BaseTxtScroll', 'TargetTxtScroll' )",
                bgc=(0.62117999792099, 0.6299999952316284, 0.1889999955892563), l='Skin Copy GoGo!')
    pm.button('WrapSkinButton', p='Step2', c="OnWrapSkinClick('BaseTxtScroll', 'TargetTxtScroll' )",
                bgc=[0.5129015030136568, 0.5974059662775616, 0.4887006942854963], l='Wrap Skin GoGo!')
    pm.button('WrapButton', p='Step2', c="OnWrapClick('BaseTxtScroll', 'TargetTxtScroll' )",
                bgc=(0.1889999955892563, 0.6299999952316284, 0.6299999952316284), l='Wrap GoGo!')
    pm.text('text102', p='Step2', l='created by Chae.Chung 2020   ')
    # pm.frameLayout('Step1', p='tabLayout2', l='MirrorBS&Connect')
    pm.showWindow('Mywindow')


GUI()

