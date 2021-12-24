import pymel.core as pm

def FindNodes():
    
    #groupId 찌꺼기 노드
    gidLs=pm.ls(type='groupId')
    trashGid=[]
    for gid in gidLs:
        if not gid.groupId.outputs() : trashGid.append(gid)
    
    #groupParts 찌꺼기 노드
    gptLs=pm.ls(type='groupParts')
    trashGpts=[]
    for gpts in gptLs:
        if len(gid.inputs())==0 and len(gid.outputs())==0 : trashGpts.append(gid)
    
    #materialInfo 찌꺼기 노드
    mtInfoLs=pm.ls(type='materialInfo')
    trashMt=[]
    for mtInfo in  mtInfoLs :
        if len(mtInfo.inputs())==0 and len(mtInfo.outputs())==0:trashMt.append(mtInfo)
    
    #Redshift aov 노드
    aovs=pm.ls(type='RedshiftAOV')
    
    #unknown 노드
    ukn=pm.ls(type='unknown')
    
    #blindDataTemplate 찌꺼기 노드
    bdt=pm.ls(type='blindDataTemplate')
    
    #polyBlindData 찌꺼기 노드
    pbd=pm.ls(type='polyBlindData')
    
    #tweak 노드
    twk=pm.ls(type='tweak')
    
    #dagPose 노드
    dags=pm.ls(type='dagPose')
    
    return trashGid, trashGpts, trashMt, aovs, ukn, bdt, pbd, twk, dags

def PrintNodeLen(ev=None):
    nodes=FindNodes()
    pm.intFieldGrp('gids_Ifg',e=1,v1=len(nodes[0]))
    pm.intFieldGrp('gps_Ifg',e=1,v1=len(nodes[1]))
    pm.intFieldGrp('mti_Ifg',e=1,v1=len(nodes[2]))
    pm.intFieldGrp('aov_Ifg',e=1,v1=len(nodes[3]))
    pm.intFieldGrp('ukn_Ifg',e=1,v1=len(nodes[4]))
    pm.intFieldGrp('bdt_Ifg',e=1,v1=len(nodes[5]))
    pm.intFieldGrp('pbd_Ifg',e=1,v1=len(nodes[6]))
    pm.intFieldGrp('tk_Ifg',e=1,v1=len(nodes[7]))
    pm.intFieldGrp('dag_Ifg',e=1,v1=len(nodes[8]))

def DeleteNodes(ev=None):
    nodes=FindNodes()
    node=[]
    for obj in nodes:
        if obj: node.append(obj)

    for ii in range(len(node)):
        pm.progressWindow( pr=0, min=0, max=100, t='Deleting ...' )
        print ('Delete [%s]'%node[ii])
        pm.progressWindow( e=1, pr=(100.0/len(node))*ii )
        pm.delete(node[ii])
        PrintNodeLen()
    pm.progressWindow(endProgress=1)
    print ('Clean!')

def RigFinalCheck_UI():
    rfchWin='RIG_FINAL_CHECK_TOOL'
    rfchTitle='Rigging Final Check Tool'
    if pm.window(rfchWin,ex=1): pm.deleteUI(rfchWin,wnd=1)
    pm.window(rfchWin,t=rfchTitle,te=1,tlb=1)
    column1=pm.columnLayout(rs=10,cal='left')
    pm.separator()
    row1=pm.rowLayout( nc=3, cw3=(40, 160, 40), adj=2, cal=(1, 'right'), cat=[(1, 'both', 0), (2, 'both', 0), (3, 'both', 0)] )
    pm.separator(st='none')
    pm.text(l=u'필요 없는 노드 체크 후 지우기', fn='boldLabelFont')
    pm.separator(st='none')
    pm.setParent(column1)
    pm.separator()
    pm.intFieldGrp('gids_Ifg', nf=1, l=u'Group ID    :    ',  v1=0)
    pm.intFieldGrp('gps_Ifg', nf=1, l=u'Group Parts    :    ',  v1=0)
    pm.intFieldGrp('mti_Ifg', nf=1, l=u'Material Info    :    ',  v1=0)
    pm.intFieldGrp('aov_Ifg', nf=1, l=u'AOV    :    ',  v1=0)
    pm.intFieldGrp('ukn_Ifg', nf=1, l=u'Unknown Node    :    ',  v1=0)
    pm.intFieldGrp('bdt_Ifg', nf=1, l=u'Blind Data    :    ',  v1=0)
    pm.intFieldGrp('pbd_Ifg', nf=1, l=u'Poly Blind Data    :    ',  v1=0)
    pm.intFieldGrp('tk_Ifg', nf=1, l=u'Tweak    :    ',  v1=0)
    pm.intFieldGrp('dag_Ifg', nf=1, l=u'Bind Pose    :    ',  v1=0)
    pm.separator()
    row7=pm.rowLayout(nc=2,cat=[(1,'left',20),(2,'left',15)])
    pm.button(l=u'Check',w=90,c=PrintNodeLen)
    pm.button(l=u'Delete',w=90,c=DeleteNodes)
    pm.window(rfchWin,e=1,wh=[240,400], s=0)
    pm.showWindow(rfchWin)

RigFinalCheck_UI()