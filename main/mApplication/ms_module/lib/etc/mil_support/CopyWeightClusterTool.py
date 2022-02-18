# -*- coding: utf-8 -*-
'''
    ==Copy Weight Cluster==
     Date: 2021.06.24
     Note: 커브 복사 되게 수정
                        '''
import maya.cmds as cmds, pymel.core.general as gn, time, datetime
def MakeBindPreMtxCluster(ev=None):
    slls=cmds.ls(sl=1,l=1)
    clustHdlLs=[]
    mesh=[]
    for sl in slls:
        sh=cmds.listRelatives(sl,s=1,f=1)[0]
        cfmNode=cmds.nodeType(sh)
        if cfmNode=='mesh': mesh.append(sl)
        elif cfmNode=='clusterHandle': clustHdlLs.append(sl)
    if len(clustHdlLs)==0 and len(mesh)==0:
        cmds.error(u'메쉬나 클러스터를 선택하여야 스크립트가 실행됩니다.')
    if len(mesh):
        meshSlClst=cmds.cluster(mesh)
        clustHdlLs.append(meshSlClst[1])
    for ch in clustHdlLs:
        sh=cmds.listRelatives(ch,s=1)[0]
        clst=cmds.listConnections('%s.worldMatrix[0]'% ch)[0]
        cmds.setAttr('%s.rotatePivot'% ch, 0, 0, 0)
        cmds.setAttr('%s.scalePivot'% ch, 0, 0, 0)
        cmds.setAttr('%s.origin'% sh, 0, 0, 0)
        clstGrp=cmds.createNode('transform',n='%sGrp'% ch)
        clstIvsMtx=cmds.createNode('transform',n='%sZeroMtx'% ch,p=clstGrp)
        cmds.parent(ch,clstGrp)
        cmds.connectAttr('%s.worldInverseMatrix'% clstIvsMtx,'%s.bindPreMatrix'% clst)

def CopyWeightCluster(ev=None):
    sendMesh=cmds.textField('SendObjTextField',q=1,text=1)
    receiveMesh=cmds.textField('ReceiveObjTextField',q=1,text=1)
    slJnt=cmds.textField('TargetJointTextField',q=1,text=1)
    rcJnt=cmds.textField('ReciveJointTextField',q=1,text=1)
    sdObj=cmds.textScrollList ('SendObjHistoryList',q=1,si=1)[0]
    rcObj=cmds.textScrollList ('ReceiveObjHistoryList',q=1,si=1)[0]
    sendMeshTyp=cmds.nodeType(cmds.listRelatives(sendMesh,s=1)[0])
    receiveMeshTyp=cmds.nodeType(cmds.listRelatives(receiveMesh,s=1)[0])
    if sendMeshTyp!=receiveMeshTyp: cmds.error(u'서로 쉐입타입이 같지 않습니다')
    if sendMeshTyp=='nurbsCurve':
        vtxTyp='cv'
        sendVtxSz=cmds.getAttr('%s.spans'% sendMesh) +  cmds.getAttr('%s.degree'% sendMesh)
        receiveVtxSz=cmds.getAttr('%s.spans'% receiveMesh) +  cmds.getAttr('%s.degree'% receiveMesh)
    else:
        vtxTyp='vtx'
        sendVtxSz=cmds.polyEvaluate(sendMesh, v=1)
        receiveVtxSz=cmds.polyEvaluate(receiveMesh, v=1)
    if sendVtxSz!=receiveVtxSz: cmds.error(u'볼텍스 갯수가 맞지 않습니다!!')
    sendType=cmds.nodeType(sdObj)
    if sendType=='skinCluster': sendType=0
    elif sendType=='cluster': sendType=1
    else: cmds.error(u'스킨클러스터와 클러스터에만 작동합니다.')
    amount=0
    cmds.progressWindow(pr=amount,min=0,max=sendVtxSz)
    startTime=time.time()
    for i in range(sendVtxSz):
        if sendType==0: vtxVl=cmds.skinPercent(sdObj,'%s.%s[%d]'% (sendMesh,vtxTyp,i), q=1, t=slJnt)
        elif sendType==1: vtxVl=cmds.percent(sdObj,'%s.%s[%d]'% (sendMesh,vtxTyp,i), q=1, v=True)[0]
        if gn.PyNode(rcObj).nodeType()=='cluster': cmds.percent(rcObj,'%s.%s[%d]'% (receiveMesh,vtxTyp,i),v=vtxVl)
        elif gn.PyNode(rcObj).nodeType()=='skinCluster':
            if rcJnt!='':
                cmds.skinPercent(rcObj,'%s.%s[%d]'% (receiveMesh,vtxTyp,i), tv=[(rcJnt, vtxVl)] )
        amount+=1
        cmds.progressWindow( e=1, pr=amount, st='%s[%d]'% (vtxTyp,i) )
    print datetime.timedelta(seconds=time.time()-startTime)
    cmds.progressWindow(endProgress=1)

def SearchDeformList(obj,op):
    type=cmds.nodeType(obj)
    if type=='skinCluster':  dfLs=cmds.listConnections('%s.matrix'% obj)
    elif type=='cluster':
        if op:
            msh=cmds.textField('ReceiveObjTextField',q=1,text=1)
        else: msh=cmds.textField('SendObjTextField',q=1,text=1)
        dfLs=[]
        try: tmpLs=cmds.listHistory(msh,gl=1,pdo=1)
        except: cmds.error(u'히스토리가 탐색 되지 않습니다.')
        [dfLs.append(tmp) for tmp in tmpLs if gn.PyNode(tmp).nodeType()=='cluster']
    else: cmds.error(u'스킨클러스터와 클러스터에만 작동합니다.')
    return dfLs

def AllCopyWeightClusterExe(ev=None):
    sendMesh=cmds.textField('SendObjTextField',q=1,text=1)
    receiveMesh=cmds.textField('ReceiveObjTextField',q=1,text=1)
    sdObj=cmds.textScrollList ('SendObjHistoryList',q=1,si=1)[0]
    rcObj=cmds.textScrollList ('ReceiveObjHistoryList',q=1,si=1)[0]
    sendVtxSz=cmds.polyEvaluate(sendMesh, v=1)
    receiveVtxSz=cmds.polyEvaluate(receiveMesh, v=1)
    if sendVtxSz!=receiveVtxSz: cmds.error('볼텍스 갯수가 맞지 않습니다!!')
    sdLs=SearchDeformList(sdObj,0)
    rcLs=SearchDeformList(rcObj,1)
    amount=0
    cmds.progressWindow(pr=amount,min=0,max=len(sdLs))
    startTime=time.time()
    for sc in sdLs:
        vtxVls=[]
        if gn.PyNode(sc).nodeType()=='joint': [ vtxVls.append( cmds.skinPercent(sdObj,'%s.vtx[%d]'% (sendMesh,i), q=1, t=sc) ) for i in xrange(sendVtxSz) ]
        elif gn.PyNode(sc).nodeType()=='cluster': [vtxVls.append( cmds.percent(sc,'%s.vtx[%d]'% (sendMesh,i), q=1, v=True)[0] ) for i in xrange(sendVtxSz)]
        for rc in rcLs:

            if rc.replace('Jnt','').replace('CS','') == sc.replace('Jnt','').replace('CS',''):

                if gn.PyNode(rc).nodeType()=='joint': [ cmds.skinPercent(rcObj,'%s.vtx[%d]'% (receiveMesh,i), tv=[(rc, vtxVls[i])] ) for i in xrange(receiveVtxSz) ]
                elif gn.PyNode(rc).nodeType()=='cluster': [ cmds.percent(rc,'%s.vtx[%d]'% (receiveMesh,i),v=vtxVls[i] ) for i in xrange(receiveVtxSz) ]
                amount+=1
                #print '%d: %s----->%s\n'% (amount,sc,rc)
                cmds.progressWindow( e=1, pr=amount, st='%s--->%s'% (sc,rc) )
    print datetime.timedelta(seconds=time.time()-startTime)
    print amount
    cmds.progressWindow(endProgress=1)


def ImportHistoryList(obj,op):
    if op: st='Receive'
    else: st='Send'
    cmds.textField('%sObjTextField'% st,e=1,tx=obj)
    try: sendHistoryLs=cmds.listHistory(obj,gl=1,pdo=1)
    except: cmds.error(u'히스토리가 탐색 되지 않습니다.')
    cmds.textScrollList('%sObjHistoryList'% st ,e=1,ra=1)
    if sendHistoryLs is None: cmds.error(u'클러스터가 존재하지 않습니다.')
    for sh in sendHistoryLs:
        nt=cmds.nodeType(sh)
        if nt=='skinCluster' or nt=='cluster': cmds.textScrollList('%sObjHistoryList'% st,e=1,a=sh)

def SearchingJoint(who):
    if who: skc=cmds.textScrollList ('ReceiveObjHistoryList',q=1,si=1)[0]
    else: skc=cmds.textScrollList ('SendObjHistoryList',q=1,si=1)[0]
    bndJntLs=cmds.listConnections('%s.matrix'% skc)
    map(lambda a: cmds.textScrollList('SelectJointList',e=1,a=a), bndJntLs)

def ConfirmJoint(who):
    slJnt=cmds.textScrollList ('SelectJointList',q=1,si=1)[0]
    if who: cmds.textField('ReciveJointTextField',e=1,text=slJnt)
    else: cmds.textField('TargetJointTextField',e=1,text=slJnt)
    cmds.deleteUI('SELECT_JOINT_UI',wnd=1)

def SelectJoint_UI(who):
    if who:
        selectedItem=cmds.textScrollList ('ReceiveObjHistoryList',q=1,si=1)[0]
    else:
        selectedItem=cmds.textScrollList ('SendObjHistoryList',q=1,si=1)[0]
    selNodeType=cmds.nodeType(selectedItem)
    if selNodeType!='skinCluster': return 0
    sjWin='SELECT_JOINT_UI'
    sjTitle='SELECT JOINT'
    if cmds.window(sjWin,ex=1): cmds.deleteUI(sjWin,wnd=1)
    cmds.window(sjWin,t=sjTitle,te=1,p='COPY_WEIGHT_CLUSTER_UI',tlb=1)
    column1=cmds.columnLayout(cal='left')
    cmds.textScrollList ( 'SelectJointList', w=200, h=100, sc='CopyWeightClusterTool.ConfirmJoint( %d )'% who )
    SearchingJoint(who)
    cmds.window(sjWin,e=1,wh=[200,100],s=0)
    cmds.showWindow(sjWin)

def SendSelect(ev=None):
    try: sl=cmds.ls(sl=1)[0]
    except: cmds.error(cmds.error(u'오브젝트를 선택하시오.'))
    ImportHistoryList(sl,0)

def ReceiveSelect(ev=None):
    try: sl=cmds.ls(sl=1)[0]
    except: cmds.error(cmds.error(u'오브젝트를 선택하시오.'))
    ImportHistoryList(sl,1)

def CopyWeightClusterTool_UI():
    cwcWin='COPY_WEIGHT_CLUSTER_UI'
    cwcTitle='COPY WEIGHT CLUSTER'
    if cmds.window(cwcWin,ex=1): cmds.deleteUI(cwcWin,wnd=1)
    cmds.window(cwcWin,t=cwcTitle,te=1,tlb=1)
    column1=cmds.columnLayout(rs=10,cal='left')
    cmds.separator()
    row1=cmds.rowLayout(nc=2,cat=[(1,'left',40),(2,'left',25)])
    cmds.text(l=u'Bind Pre Matrix 만들기')
    cmds.button(l=u'실행',w=150,h=20,al='center',c=MakeBindPreMtxCluster)
    cmds.setParent(column1)
    cmds.separator(w=400,st='shelf')
    row2=cmds.rowLayout(nc=2,cat=[(1,'left',20),(2,'left',10)])
    cmds.button(l=u'전달자 선택',w=150,c=SendSelect)
    cmds.button(l=u'받는자 선택',w=150,c=ReceiveSelect)
    cmds.setParent(column1)
    row3=cmds.rowLayout(nc=2,cat=[(1,'left',20),(2,'left',10)])
    cmds.textField('SendObjTextField',w=150,en=0)
    cmds.textField('ReceiveObjTextField',w=150,en=0)
    cmds.setParent(column1)
    row4=cmds.rowLayout(nc=2,cat=[(1,'left',20),(2,'left',10)])
    cmds.textScrollList ('SendObjHistoryList',w=150,h=150,sc='CopyWeightClusterTool.SelectJoint_UI(%d)'% 0)
    cmds.textScrollList ('ReceiveObjHistoryList',w=150,h=150,sc='CopyWeightClusterTool.SelectJoint_UI(%d)'% 1)
    cmds.setParent(column1)
    row5=cmds.rowLayout(nc=2,cat=[(1,'left',20),(2,'left',15)])
    cmds.text(l='Target Joint')
    cmds.textField('TargetJointTextField',w=200,en=0)
    cmds.setParent(column1)
    row6=cmds.rowLayout(nc=2,cat=[(1,'left',20),(2,'left',15)])
    cmds.text(l='Recive Joint')
    cmds.textField('ReciveJointTextField',w=200,en=0)
    cmds.setParent(column1)
    row7=cmds.rowLayout(nc=2,cat=[(1,'left',20),(2,'left',15)])
    cmds.button(l=u'부분복사',w=150,ann=u'지정된 디폼만 복사합니다.',c=CopyWeightCluster)
    cmds.button(l=u'전체복사',w=150,ann=u'접미사가 조인트는 \"Jnt\" \n클러스터는 \"CS\" 이어야함!',c=AllCopyWeightClusterExe)
    cmds.window(cwcWin,e=1,wh=[360,390], s=0)
    cmds.showWindow(cwcWin)
CopyWeightClusterTool_UI()
