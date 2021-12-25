# -*- coding: utf-8 -*-
'''

    MconTool
    date : 21.06.30
    script by woo

'''
import maya.cmds as cmds,pymel.core as pm, pymel.core.datatypes as dt
def Mcon( src, tg, **op ):
    if op.get('pos') : pm.matchTransform( tg, src, pos=1, rot=1, scl=0 )
    mm=pm.createNode('multMatrix',n='%sMM'% tg)
    dm=pm.createNode('decomposeMatrix',n='%sDM'% tg)
    rtn=[None,None]
    if op.get('pvtCalc') :
        #tgRotatePivot=tg.getRotatePivot(space='transform')
        #tg.setScalePivot(tgRotatePivot,space='transform')
        tgScalePivotMtx=dt.Matrix()
        tgScalePivotMtx[3]=tg.getScalePivot(space='transform')
        mm.i[0].set( tgScalePivotMtx )
        mm.i[1].set( tg.getMatrix(worldSpace=1) )
        mm.i[2].set( src.getMatrix(worldSpace=1).inverse() )
        src.wm >> mm.i[3]
        tg.pim >> mm.i[4]
        tgTMRPM=dt.Matrix()
        tgTMRPM[3]=tg.transMinusRotatePivot.get()
        mm.i[5].set(tgTMRPM)
    else:
        mm.i[0].set( tg.getMatrix(worldSpace=1) )
        mm.i[1].set( src.getMatrix(worldSpace=1).inverse() )
        src.wm >> mm.i[2]
        tg.pim >> mm.i[3]
    mm.o >> dm.imat
    if op.get('t'):
        dm.ot >> tg.t
    if op.get('r'):
        if tg.nodeType()=='joint':
            eq=pm.createNode('eulerToQuat', n='%sEQ'%tg)
            qi=pm.createNode('quatInvert', n='%sQI'%tg)
            qp=pm.createNode('quatProd', n='%sQP'%tg)
            qe=pm.createNode('quatToEuler', n='%sQE'%tg)
            tg.jo >> eq.irt
            eq.oq >> qi.iq
            dm.oq >> qp.iq1
            qi.oq >> qp.iq2
            qp.oq >> qe.iq
            qe.ort >> tg.r
        else:
            dm.attr('or') >> tg.r
    if  op.get('s'):
        dm.os >> tg.s
    if op.get('sh'):
        dm.osh >> tg.sh

def DelMcon(obj):
    print(obj)
    jntCfm=0
    if obj.nodeType()=='joint': jntCfm=1
    tmpLs=[]
    if obj.t.inputs():
        tmpLs.append(obj.t.inputs()[0] )
        obj.t.inputs(p=1)[0] // obj.t.inputs(p=1)[0].outputs(p=1)[0]
    if jntCfm:
        if obj.r.inputs():
            qte=obj.r.inputs()[0]
            obj.r.inputs(p=1)[0] // qte.outputs(p=1)[0]
            if qte.inputQuat.inputs():
                qp=qte.inputQuat.inputs()[0]
                if qp.input2Quat.inputs():
                    qi=qp.input2Quat.inputs()[0]
                    if qi.inputQuat.inputs():
                        etq=qi.inputQuat.inputs()[0]
    else:
        if obj.r.inputs():
            tmpLs.append(obj.r.inputs()[0] )
            obj.r.inputs(p=1)[0] // obj.r.inputs(p=1)[0].outputs(p=1)[0]
    if obj.s.inputs():
        tmpLs.append(obj.s.inputs()[0] )
        obj.s.inputs(p=1)[0] // obj.s.inputs(p=1)[0].outputs(p=1)[0]
    if obj.sh.inputs():
        tmpLs.append(obj.sh.inputs()[0] )
        obj.sh.inputs(p=1)[0] // obj.sh.inputs(p=1)[0].outputs(p=1)[0]
    srcLs=list(set(tmpLs))
    ssrcLs=[]
    [ ssrcLs.append( src.inputMatrix.inputs()[0] ) for src in srcLs ]
    pm.delete(srcLs,ssrcLs,qte,qp,qi,etq) if jntCfm else pm.delete(srcLs,ssrcLs)

def Exe(ev=None):
    mochk=cmds.checkBox( 'MaintainOffsetCheckBox',q=1,v=1)
    pcchk=cmds.checkBox( 'PivotCalcCheckBox',q=1,v=1)
    tchk=cmds.checkBox( 'MconTranslateCheckBox',q=1,v=1)
    rchk=cmds.checkBox( 'MconRotateCheckBox',q=1,v=1)
    schk=cmds.checkBox( 'MconScaleOffsetCheckBox',q=1,v=1)
    shchk=cmds.checkBox( 'MconShearCheckBox',q=1,v=1)
    selobjchk=cmds.radioButtonGrp( 'MconSelectOptionRdoBtn', q=1, sl=1)
    slls = pm.ls(sl=1)
    hSelSz= int(len(slls)/2)
    if selobjchk==1:
        if len(slls)%2 != 0: cmds.error('짝수로 선택하시오')
        list(map( lambda i: Mcon(slls[i], slls[hSelSz+i], pvtCalc=pcchk, pos=0 if mochk else 1,t=tchk, r=rchk, s=schk, sh=shchk ), range( hSelSz ) ))
    elif selobjchk==2:
        list(map( lambda i: Mcon(slls[0], slls[i], pvtCalc=pcchk, pos=0 if mochk else 1,t=tchk, r=rchk, s=schk, sh=shchk ) if i!=0 else None, range( int(len(slls)) ) ))
    pm.select(slls)

def Del(ev=None):
    list(map( lambda a: DelMcon(a), pm.ls(sl=1) ))

def MconTool_UI():
    win='MconTool_UI'
    title='Mcon Tool'
    cmds.deleteUI(win, wnd=1) if cmds.window(win, ex=1, mw=1) else None
    cmds.window(win, t=title, mb=1, tlb=1)
    cmds.rowColumnLayout(cs=[1,10],rs=[1,10])
    cmds.rowLayout( nc=2, cat=[(1,'left',0), (2,'left',5)] )
    cmds.checkBox( 'MaintainOffsetCheckBox',l='mo',v=1)
    cmds.checkBox( 'PivotCalcCheckBox',l='pvtCalc',v=0)
    cmds.setParent('..')
    cmds.rowLayout( nc=4, cat=[(1,'left',0), (2,'left',5), (3,'left',5),(4,'left',5)] )
    cmds.checkBox( 'MconTranslateCheckBox',l='t',v=1)
    cmds.checkBox( 'MconRotateCheckBox',l='r',v=1)
    cmds.checkBox( 'MconScaleOffsetCheckBox',l='s')
    cmds.checkBox( 'MconShearCheckBox',l='sh')
    cmds.setParent('..')
    cmds.radioButtonGrp( 'MconSelectOptionRdoBtn', nrb=2, la2=['Each other','First select'], sl=1,cw2=[80,80] )
    cmds.button('MconExecuteButton',l='Mcon', c=Exe)
    cmds.button('DelMconExecuteButton',l='Delete Mcon',c=Del)
    cmds.window(win, e=1, wh=[190,160], s=0)
    cmds.showWindow(win)
MconTool_UI()
