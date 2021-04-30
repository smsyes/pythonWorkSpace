from maya import cmds
import maya.mel as mm
import sys
import copy
import os
import webbrowser
def sdd_updateLink(typ):
    if(typ==1):
        webbrowser.open('https://www.highend3d.com/maya/script/maya-sdd_uidesigner-stand-alone-for-maya', new=0, autoraise=True)
    else:
        webbrowser.open('https://www.highend3d.com/maya/plugin/maya-sdd_riggingtools-supplementary-kit-for-maya', new=0, autoraise=True)


def sdd_UIDesigner(iconsPath):
    global uidIconsPath
    uidIconsPath=iconsPath
    if(cmds.window('sdd_UIDesignerWin',q=1,ex=1)):
        cmds.deleteUI('sdd_UIDesignerWin',window=1)
    cmds.windowPref('sdd_UIDesignerWin',ra=1)
    cmds.window('sdd_UIDesignerWin',rtf=1,menuBar=1,s=1,t='sdd_UIDesignerWin v1.3.0')

    cmds.menu(l='File')
    cmds.menuItem(l='New',c='sdd_fileNew()')
    cmds.menuItem(d=1)
    cmds.menuItem(l='Open',c='sdd_fileOpen()')
    cmds.menuItem(l='Save',c='sdd_fileSave()')
    cmds.menuItem(d=1)
    cmds.menuItem(l='Export',c='sdd_fileExport()')

    cmds.menu(l='Window')
    cmds.menuItem(l='showWindow',c='sdd_refreshDisplayUI()')

    cmds.menu(l='Update')
    cmds.menuItem(l='Link-sdd_UIDesignerNew',c='sdd_updateLink(1)')
    cmds.menuItem(l='Link-sdd_RiggingTools',c='sdd_updateLink(2)')

    cmds.menu(l='Help')
    cmds.menuItem(l='NanJing-OriginalForce')
    cmds.menuItem(d=1)
    cmds.menuItem(l='Author:SunDongDong')
    cmds.menuItem(l='E-mail:136941679@qq.com')


    cmds.formLayout('uidMainFL')
    cmds.tabLayout('uidToolButtonTL')
    #layout
    cmds.rowLayout('uidLayoutListRL',nc=10)
    layoutList=sdd_getLayoutList()
    for i in layoutList:
        cmds.iconTextButton(p='uidLayoutListRL',i1=uidIconsPath+'%s.png'%i,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%(i,i),ann=i)
    
    iconName='menuBarLayout'
    cmds.iconTextButton(p='uidLayoutListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('menuBarLayout',iconName),ann='menuBarLayout')

    cmds.rowLayout('uidCtrlListRL',p='uidToolButtonTL',nc=20)
    ctrlList=sdd_getCtrlList()

    #control
    iconName='button'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,ann='button')
    cmds.popupMenu(b=1)
    cmds.menuItem(l='button',c='sdd_addCtrlType("%s","%s")'%('button',iconName))
    cmds.menuItem(l='iconTextButton',c='sdd_addCtrlType("%s","%s")'%('iconTextButton',iconName))
    cmds.menuItem(l='canvas',c='sdd_addCtrlType("%s","%s")'%('canvas',iconName))
    cmds.menuItem(l='image',c='sdd_addCtrlType("%s","%s")'%('image','image'))

    iconName='field'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,ann='field')
    cmds.popupMenu(b=1)
    cmds.menuItem(l='intField',c='sdd_addCtrlType("%s","%s")'%('intField',iconName))
    cmds.menuItem(l='floatField',c='sdd_addCtrlType("%s","%s")'%('floatField',iconName))
    cmds.menuItem(l='textField',c='sdd_addCtrlType("%s","%s")'%('textField',iconName))
    cmds.menuItem(l='scrollField',c='sdd_addCtrlType("%s","%s")'%('scrollField',iconName))
    
    iconName='checkBox'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,ann='checkBox')
    cmds.popupMenu(b=1)
    cmds.menuItem(l='checkBox',c='sdd_addCtrlType("%s","%s")'%('checkBox',iconName))
    cmds.menuItem(l='iconTextCheckBox',c='sdd_addCtrlType("%s","%s")'%('iconTextCheckBox',iconName))

    iconName='radioCollection'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32)
    cmds.popupMenu(b=1)
    cmds.menuItem(l='radioCollection',c='sdd_addCtrlType("%s","%s")'%('radioCollection',iconName))
    cmds.menuItem(l='iconTextRadioCollection',c='sdd_addCtrlType("%s","%s")'%('iconTextRadioCollection',iconName))

    iconName='radio'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,ann='radioButton')
    cmds.popupMenu(b=1)
    cmds.menuItem(l='radioButton',c='sdd_addCtrlType("%s","%s")'%('radioButton',iconName))
    cmds.menuItem(l='iconTextRadioButton',c='sdd_addCtrlType("%s","%s")'%('iconTextRadioButton',iconName))

    iconName='text'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('text',iconName),ann='text')
    iconName='palettePort'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('palettePort',iconName),ann='palettePort')
    
    iconName='slider'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,ann='slider')
    cmds.popupMenu(b=1)
    cmds.menuItem(l='intSlider',c='sdd_addCtrlType("%s","%s")'%('intSlider',iconName))
    cmds.menuItem(l='floatSlider',c='sdd_addCtrlType("%s","%s")'%('floatSlider',iconName))

    iconName='sliderGrp'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,ann='sliderGrp')
    cmds.popupMenu(b=1)
    cmds.menuItem(l='intSliderGrp',c='sdd_addCtrlType("%s","%s")'%('intSliderGrp',iconName))
    cmds.menuItem(l='floatSliderGrp',c='sdd_addCtrlType("%s","%s")'%('floatSliderGrp',iconName))
    cmds.menuItem(l='colorSliderGrp',c='sdd_addCtrlType("%s","%s")'%('colorSliderGrp',iconName))
    cmds.menuItem(l='colorIndexSliderGrp',c='sdd_addCtrlType("%s","%s")'%('colorIndexSliderGrp',iconName))

    iconName='textScrollList'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('textScrollList',iconName),ann='textScrollList')
    iconName='treeView'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('treeView',iconName),ann='treeView')
    iconName='progressBar'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('progressBar',iconName),ann='progressBar')
    iconName='dividerMenuItem'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('separator',iconName),ann='separator')
    iconName='line'
    cmds.iconTextButton(p='uidCtrlListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32)
    cmds.popupMenu(b=1)
    cmds.menuItem(l='commandLine',c='sdd_addCtrlType("%s","%s")'%('commandLine',iconName))
    cmds.menuItem(l='helpLine',c='sdd_addCtrlType("%s","%s")'%('helpLine',iconName))
    cmds.menuItem(l='messageLine',c='sdd_addCtrlType("%s","%s")'%('messageLine',iconName))

    #menu
    cmds.rowLayout('uidMenuListRL',p='uidToolButtonTL',nc=20)
    iconName='menu'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('menu',iconName),ann='menu')
    iconName='tearOffMenu'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('tearOffMenu',iconName),ann='tearOffMenu')

    iconName='popupMenu'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('popupMenu',iconName),ann='popupMenu')
    iconName='optionMenu'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('optionMenu',iconName),ann='optionMenu')
    iconName='dividerMenuItem'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('dividerMenuItem',iconName),ann='dividerMenuItem')
    iconName='menuItem'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('menuItem',iconName),ann='menuItem')
    iconName='subMenuItem'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('subMenuItem',iconName),ann='subMenuItem')

    iconName='radioMenuItemCollection'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('radioMenuItemCollection',iconName),ann='radioMenuItemCollection')
    iconName='radioMenuItem'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('radioMenuItem',iconName),ann='radioMenuItem')
    iconName='checkBoxMenuItem'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('checkBoxMenuItem',iconName),ann='checkBoxMenuItem')
    iconName='optionBoxMenuItem'
    cmds.iconTextButton(p='uidMenuListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('optionBoxMenuItem',iconName),ann='optionBoxMenuItem')

    #dock
    cmds.rowLayout('uidDockListRL',p='uidToolButtonTL',nc=20)
    iconName='toolBar'
    cmds.iconTextButton(p='uidDockListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('toolBar',iconName),ann='toolBar')
    iconName='dockControl'
    cmds.iconTextButton(p='uidDockListRL',i1=uidIconsPath+'%s.png'%iconName,w=32,h=32,c='sdd_addCtrlType("%s","%s")'%('dockControl',iconName),ann='dockControl')


    cmds.paneLayout('uidListAndAttrPL',h=300,p='uidMainFL',cn='vertical2' )
    #tree
    cmds.treeView('uidTreeTV',nb=1,dad=sdd_dragAndDrop,elc=sdd_treeViewRenameLabel,scc='sdd_treeViewSelectChange()',ecc=sdd_treeViewExpendChange)
    cmds.popupMenu()
    cmds.menuItem(l='copyUI',c='sdd_copyUIObject()')
    cmds.menuItem(l='pasteUI',c='sdd_pasteUIObject()')
    cmds.menuItem(d=1)
    cmds.menuItem(l='cutUI',c='sdd_cutUIObject()')
    cmds.menuItem(d=1)
    cmds.menuItem(l='deleteUI',c='sdd_deleteUIObject(True)')
    #property
    cmds.scrollLayout(p='uidListAndAttrPL')
    cmds.columnLayout('uidPropertyCL',adj=1)

    sdd_createLayoutProperty()


    cmds.frameLayout('uidHelpFL',p='uidMainFL',lv=0,w=1,h=1)
    cmds.helpLine()
    #edit ui
    cmds.tabLayout('uidToolButtonTL',e=1,tabLabelIndex=[[1,'layout'],[2,'control'],[3,'menu'],[4,'dock']])
    bw=2
    cmds.formLayout('uidMainFL',e=1,af=[('uidToolButtonTL','left',bw),('uidToolButtonTL','right',bw),('uidListAndAttrPL','top',bw+55),('uidListAndAttrPL','left',bw),('uidListAndAttrPL','right',bw),('uidListAndAttrPL','bottom',bw+15),('uidHelpFL','bottom',0),('uidHelpFL','right',0),('uidHelpFL','left',0)],ac=[('uidHelpFL','top',0,'uidListAndAttrPL')])

    cmds.showWindow('sdd_UIDesignerWin')
    sdd_initTreeView()
#====================================================================================================
#file menu
def sdd_fileNew():
    global dataDirc
    try:
        if(cmds.window(dataDirc['sort'][0],q=1,ex=1)):
            cmds.deleteUI(dataDirc['sort'][0])
        dockList=sdd_getCtrlByType('dockControl')
        for i in dockList:
            if(cmds.dockControl(i,q=1,ex=1)):
                cmds.deleteUI(i)
        dockList=sdd_getCtrlByType('toolBar')
        for i in dockList:
            if(cmds.toolBar(i,q=1,ex=1)):
                cmds.deleteUI(i)
    except:
        pass
    cmds.treeView('uidTreeTV',e=1,ra=1)
    dataDirc={}
    sdd_initTreeView()
def sdd_fileSave():
    global dataDirc
    filePath=cmds.fileDialog2(ff="SUI File (*.sui)", ds=2,fm=0)
    if(filePath!=None):
        #sdd_itemExpand('save')
        f=open(filePath[0],'w+')
        f.write(str(dataDirc))
        f.close()
def sdd_fileOpen():
    global dataDirc
    filePath=cmds.fileDialog2(ff="SUI File (*.sui);;All Files (*.*)", ds=2,fm=1)
    if(filePath!=None):
        sdd_fileNew()
        allItem=cmds.treeView('uidTreeTV',q=1,ch='')
        if(cmds.window(allItem[0],q=1,ex=1)):
            cmds.deleteUI(allItem[0])
        f=open(filePath[0],'r')
        dataStr=f.read()
        f.close()
        dataDirc=sdd_eval(dataStr)
        cmds.treeView('uidTreeTV',e=1,ra=1)
        sdd_refreshDisplayUI()
def sdd_fileExport():
    ret=cmds.layoutDialog(ui=sdd_exportPrompt)
    if(ret=='dismiss'):
        return
    opList=sdd_eval(ret)
    if(opList[0]=='python'):
        filePath=cmds.fileDialog2(ff="maya py(*.py)", ds=2,fm=0)
    else:
        filePath=cmds.fileDialog2(ff="maya mel(*.py)", ds=2,fm=0)
    if(filePath==None):
        return
    exportList=sdd_getExportStrList(opList[1],opList[0],opList[2],False)
    exportList = [line+'\n' for line in exportList]
    f=open(filePath[0],'w+')
    for i in exportList:
        f.writelines(i)
    f.close()
    
#====================================================================================================
#export 
def sdd_exportPrompt():
    pLayout=cmds.setParent(q=1)
    fl=cmds.frameLayout(w=300,mh=10,bs='etchedIn',h=70,lv=False)
    cl=cmds.columnLayout(rs=5)
    cmds.rowLayout(nc=4,cw=[[2, 70], [1, 100], [3, 70]])
    cmds.text(w=90,al='right',l='Langue:')
    cmds.radioCollection()
    lMel=cmds.radioButton(l='Mel')
    cmds.radioButton(l='Python',sl=True)
    cmds.rowLayout(p=cl,nc=4,cw=[[2, 70], [1, 100], [3, 70]])
    cmds.text(w=90,al='right',l='Flag Name:')
    cmds.radioCollection()
    fSht=cmds.radioButton(l='Short',sl=True)
    cmds.radioButton(l='Long')
    cmds.rowLayout(p=cl,nc=4,cw=[[2, 70], [1, 100], [3, 70]])
    cmds.text(w=90,al='right',l='Control ID:')
    cmds.radioCollection()
    fAll=cmds.radioButton(l='Force All')
    cmds.radioButton(l='Renamed',sl=True)
    b1=cmds.button(p=pLayout,l='Export',w=100,c='sdd_exportPromptOption("%s","%s","%s")'%(lMel,fSht,fAll))
    b2=cmds.button(p=pLayout,l='Close',w=100,c='cmds.layoutDialog( dismiss="dismiss" )')
    cmds.formLayout(pLayout,e=1,ap=[[b1, 'right', 1, 50], [b2, 'left', 1, 50]],af=[[fl, 'top', 5], [fl, 'bottom', 30], [fl, 'left', 5], [fl, 'right', 5], [b1, 'bottom', 5], [b1, 'left', 5], [b2, 'right', 5], [b2, 'bottom', 5]],ac=[])
def sdd_exportPromptOption(lMel,fSht,fAll):
    langue='python'
    if(cmds.radioButton(lMel,q=1,sl=1)):
        langue='mel'
    nameType='long'
    if(cmds.radioButton(fSht,q=1,sl=1)):
        nameType='short'
    ctrlId='renamed'
    if(cmds.radioButton(fAll,q=1,sl=1)):
        ctrlId='all'
    cmds.layoutDialog(dismiss='%s'%str([langue,nameType,ctrlId]))

def sdd_resetExportCtrlAttrData(debug):
    global dataDirc
    for ctrlName in dataDirc['sort']:
        ctrlType=dataDirc[ctrlName]['type']
        attrData=dataDirc[ctrlName]['attrData']
        if(ctrlType=='rowLayout'):
            nc=len(sdd_getCtrlChildList(ctrlName))
            if(nc==0):
                attrData['numberOfColumns'][1]=None
            else:
                attrData['numberOfColumns'][1]=nc
            if(debug):
                attrData['numberOfColumns'][1]=100
        elif(ctrlType in ['dockControl','toolBar']):
            attrData['content'][1]=dataDirc['sort'][0]
        elif(ctrlType=='window'):
            cList=sdd_getCtrlChildList(ctrlName,'menu')+sdd_getCtrlChildList(ctrlName,'tearOffMenu')
            if(len(cList)!=0):
                dataDirc[ctrlName]['attrData']['menuBar']=['bool',None,['h','mb']]
                attrData['menuBar'][1]=1



def sdd_getExportStrList(nameType='short',langue='python',ctrlId='all',debug=True):
    global dataDirc
    exportList=[]

    sdd_resetExportCtrlAttrData(debug)

    addShowWindow=True
    #python code
    if(langue=='python'):
        #window delete
        winId=dataDirc['sort'][0]
        importStr='from maya import cmds'
        exportList.append(importStr)
        winDelStr='if(cmds.window(\'%s\',q=1,ex=1)):cmds.deleteUI(\'%s\')'%(winId,winId)
        exportList.append(winDelStr)
        #del str
        delList=['dockControl','toolBar']
        for i in delList:
            ctrlList=sdd_getCtrlByType(i)
            for ctrlName in ctrlList:
                dockStr='if(cmds.%s(\'%s\',q=1,ex=1)):cmds.deleteUI(\'%s\')'%(i,ctrlName,ctrlName)
                exportList.append(dockStr)
                addShowWindow=False

        #function 
        for ctrlName in dataDirc['sort']:
            ctrlType=dataDirc[ctrlName]['type']
            pLayout=sdd_getRealParent(ctrlName)

            #func name
            funcName=ctrlType
            #custom funcName
            if(ctrlType=='tearOffMenu'):
                funcName='menu'
            if(ctrlType in ['subMenuItem','checkBoxMenuItem','dividerMenuItem','radioMenuItem','optionBoxMenuItem']):
                funcName='menuItem'
            #func str
            cmdStr='cmds.%s('%funcName
            #ctrl id
            flagStr=''
            if(sdd_isNeedControlID(ctrlName) or ctrlId=='all'):
                flagStr+=',\'%s\''%ctrlName
            #parent
            if(debug and ctrlType=='window'):
                flagStr+=',ret=1'
            if(nameType=='short'):
                if(pLayout!='' and sdd_isNeedParentFlag(ctrlName)):
                    flagStr+=',p=\'%s\''%pLayout
            else:
                if(pLayout!='' and sdd_isNeedParentFlag(ctrlName)):
                    flagStr+=',parent=\'%s\''%pLayout

            #flag
            attrData=dataDirc[ctrlName]['attrData']
            attrList=attrData.keys()
            for aName in attrList:
                if(sdd_skipFlags(ctrlType,aName)):
                    continue
                typ=attrData[aName][0]
                val=attrData[aName][1]
                cType=attrData[aName][2][0]
                sName=attrData[aName][2][1]

                flagName=aName
                if(nameType=='short'):
                    flagName=sName
                if(val==None or cType=='e'):
                    continue
                if(typ in ['popup','string','image','cmd']):
                    flagStr+=',%s=\'%s\''%(flagName,val)
                else:
                    flagStr+=',%s=%s'%(flagName,val)

            flagStr=flagStr.strip(',')
            funcStr=cmdStr+flagStr+')'
            exportList.append(funcStr)

        #eidt Ctrl attrData
        for ctrlName in dataDirc['sort']:
            ctrlType=dataDirc[ctrlName]['type']
            #func
            cmdStr='cmds.%s('%ctrlType
            #ctrl id
            cmdStr+='\'%s\',e=1'%ctrlName
            #flag
            attrData=dataDirc[ctrlName]['attrData']
            attrList=attrData.keys()
            exList=False
            for aName in attrList:
                if(sdd_skipFlags(ctrlType,aName)):
                    continue
                typ=attrData[aName][0]
                val=attrData[aName][1]
                cType=attrData[aName][2][0]
                sName=attrData[aName][2][1]
                flagName=aName
                if(nameType=='short'):
                    flagName=sName
                if(val==None or cType!='e'):
                    continue
                exList=True
                if(typ in ['popup','string','image','cmd']):
                    cmdStr+=',%s=\'%s\''%(flagName,val)
                else:
                    cmdStr+=',%s=%s'%(flagName,val)

            if(exList):
                editStr=cmdStr+')'
                exportList.append(editStr)

        #show window
        winShowStr='cmds.showWindow(\'%s\')'%winId
    else:
        #window delete
        winId=dataDirc['sort'][0]
        winDelStr='if(`window -q -ex "%s"`)deleteUI("%s");'%(winId,winId)
        exportList.append(winDelStr)
        #del str
        delList=['dockControl','toolBar']
        for i in delList:
            ctrlList=sdd_getCtrlByType(i)
            for ctrlName in ctrlList:
                dockStr='if(`%s -q -ex "%s"`)deleteUI("%s");'%(i,ctrlName,ctrlName)
                exportList.append(dockStr)
                addShowWindow=False

        #function 
        for ctrlName in dataDirc['sort']:
            ctrlType=dataDirc[ctrlName]['type']
            pLayout=sdd_getRealParent(ctrlName)


            #func name
            funcName=ctrlType
            #custom funcName
            if(ctrlType=='tearOffMenu'):
                funcName='menu'
            if(ctrlType in ['subMenuItem','checkBoxMenuItem','dividerMenuItem','radioMenuItem','optionBoxMenuItem']):
                funcName='menuItem'
            #func str
            cmdStr='%s '%funcName

            flagStr=''
            #parent
            if(nameType=='short'):
                if(pLayout!='' and sdd_isNeedParentFlag(ctrlName)):
                    flagStr+='-p "%s"'%pLayout
            else:
                if(pLayout!='' and sdd_isNeedParentFlag(ctrlName)):
                    flagStr+='-parent "%s"'%pLayout

            #flag
            attrData=dataDirc[ctrlName]['attrData']
            attrList=attrData.keys()
            for aName in attrList:
                if(sdd_skipFlags(ctrlType,aName)):
                    continue
                typ=attrData[aName][0]
                val=attrData[aName][1]
                cType=attrData[aName][2][0]
                sName=attrData[aName][2][1]

                flagName=aName
                if(nameType=='short'):
                    flagName=sName
                if(val==None or cType=='e'):
                    continue
                if(typ in ['popup','string','image','cmd']):
                    flagStr+=' -%s "%s"'%(flagName,val)
                elif(typ=='list'):
                    for v in val:
                        flagStr+=' -%s %s'%(flagName,sdd_splitListToString(v))
                elif(typ=='color' or typ=='colorA'):
                    flagStr+=' -%s %s'%(flagName,sdd_splitListToString(val))
                elif(typ=='multi'):
                    for v in val:
                        cmdStr+=' -%s "%s"'%(flagName,v)
                elif(typ=='bool'):
                    if(aName=='select'):
                        if(val):
                            flagStr+=' -%s'%(flagName)
                    else:
                        if(val):
                            flagStr+=' -%s true'%(flagName)
                        else:
                            flagStr+=' -%s false'%(flagName)
                else:
                    flagStr+=' -%s %s'%(flagName,val)


            #ctrl id
            if(sdd_isNeedControlID(ctrlName) or ctrlId=='all' ):
                flagStr+=' "%s"'%ctrlName

            flagStr=flagStr.strip()
            funcStr=cmdStr+flagStr+';'
            exportList.append(funcStr)

        #eidt Ctrl attrData
        for ctrlName in dataDirc['sort']:
            ctrlType=dataDirc[ctrlName]['type']
            #func
            cmdStr='%s  -e'%ctrlType
            #flag
            attrData=dataDirc[ctrlName]['attrData']
            attrList=attrData.keys()
            exList=False
            for aName in attrList:
                if(sdd_skipFlags(ctrlType,aName)):
                    continue
                typ=attrData[aName][0]
                val=attrData[aName][1]
                cType=attrData[aName][2][0]
                sName=attrData[aName][2][1]
                flagName=aName

                if(nameType=='short'):
                    flagName=sName
                if(val==None or cType!='e'):
                    continue
                exList=True
                if(typ in ['popup','string','image','cmd']):
                    cmdStr+=' -%s "%s"'%(flagName,val)
                elif(typ=='list'):
                    for v in val:
                        cmdStr+=' -%s %s'%(flagName,sdd_splitListToString(v))
                elif(typ=='color' or typ=='colorA'):
                    cmdStr+=' -%s %s'%(flagName,sdd_splitListToString(val))
                elif(typ=='multi'):
                    for v in val:
                        cmdStr+=' -%s "%s"'%(flagName,v)
                elif(typ=='bool'):
                    if(aName=='select'):
                        if(val):
                            cmdStr+=' -%s'%(flagName)
                    else:
                        if(val):
                            cmdStr+=' -%s true'%(flagName)
                        else:
                            cmdStr+=' -%s false'%(flagName)
                else:
                    cmdStr+=' -%s %s'%(flagName,val)


            if(exList):
                #ctrl id
                cmdStr+=' "%s"'%ctrlName
                editStr=cmdStr+';'
                exportList.append(editStr) 
        #show window
        winShowStr='showWindow "%s";'%winId
    if(addShowWindow):
        exportList.append(winShowStr)
    return exportList

def sdd_skipFlags(ctrlType,aName):
    if(int(cmds.about(v=1)[:4])>2015):
        if(ctrlType=='frameLayout' and (aName=='borderStyle' or aName=='bs')):
            return True
    return False


def sdd_splitListToString(iList):
    ret=''
    for i in iList:
        if(type(i)==str):
            ret+=' "%s"'%i
        else:
            ret+=' %s'%i
    return ret

def sdd_isNeedParentFlag(ctrlName):
    global dataDirc
    if(dataDirc[ctrlName]['type'] in ['toolBar','dockControl']):
        return True
    pLayout=sdd_getRealParent(ctrlName)
    pChList=sdd_getCtrlChildList(pLayout)
    cIdx=pChList.index(ctrlName)
    for i in pChList[:cIdx]:
        if(dataDirc[i]['type'] in sdd_getLayoutList()+sdd_getMenuLayoutList()):
            return True
            break
    return False

def sdd_isNeedControlID(ctrlName):
    global dataDirc
    typ=dataDirc[ctrlName]['type']
    if(dataDirc[ctrlName]['type']=='window'):
        return True

    if(len(ctrlName)<len(typ) or ctrlName[:len(typ)]!=typ):
        return True

    chList=sdd_getCtrlChildList(ctrlName)

    #child has cmds.parent flag
    for i in chList:
        if(sdd_isNeedParentFlag(i)):
            return True
            break
    #self edit flag
    attrData=dataDirc[ctrlName]['attrData']
    attrList=attrData.keys()
    for aName in attrList:
        typ=attrData[aName][0]
        val=attrData[aName][1]
        cType=attrData[aName][2][0]
        if(val==None):
            continue
        if(cType=='e'):
            return True
        
    #ctrlName in cmds.parent attrData
    pLayout=dataDirc[ctrlName]['parent']
    if(pLayout==''):
        return False
    attrData=dataDirc[pLayout]['attrData']
    attrList=attrData.keys()
    for aName in attrList:
        typ=attrData[aName][0]
        valList=attrData[aName][1]
        if(valList==None or typ!='list'):
            continue
        for val in valList:
            for v in val:
                if(v==ctrlName):
                    return True
    return False

def sdd_refreshDisplayUI():
    sdd_loadDataToTreeView()
    sdd_updateTreeViewSelectExpend()
    sdd_treeViewSelectChange()
    exportList=sdd_getExportStrList()
    cmdStr=''
    for i in exportList:
        cmdStr+=i+'\n'
    print cmdStr
    exec(cmdStr)

#====================================================================================================
def sdd_getRealParent(ctrlName):
    global dataDirc
    pLayout=dataDirc[ctrlName]['parent']
    if(pLayout==''):
        return ''
    elif(dataDirc[pLayout]['type'] in sdd_getCollectionList()):
        return dataDirc[pLayout]['parent']
    elif(dataDirc[pLayout]['type'] in ['menuItem','radioMenuItem','checkBoxMenuItem']):
        return sdd_getRealParent(pLayout)
    elif(dataDirc[ctrlName]['type'] in ['menu','tearOffMenu']):
        if(dataDirc[pLayout]['type']=='window'):
            return ''
        else:
            return pLayout
    else:
        return pLayout

def sdd_getCtrlChildList(pLayout,typ=None):
    global dataDirc
    childList=[]
    for i in dataDirc['sort']:
        if(sdd_getRealParent(i)==pLayout):
            if(typ!=None and dataDirc[i]['type']==typ):
                return [i]
            childList.append(i)
    return childList
def sdd_getCtrlByType(typ):
    global dataDirc
    childList=[]
    for i in dataDirc['sort']:
        if(dataDirc[i]['type']==typ):
            childList.append(i)
    return childList

def sdd_getTreeSelect():
    global dataDirc
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        if(dataDirc.has_key('sort')):
            selI=dataDirc['sort'][0]
        else:
            selI=''
    else:
        selI=selI[0]
    return selI
def sdd_getNotExistsName(ctrlName,ctrlType,exList):
    if(ctrlName!=''):
        if(ctrlName[:len(ctrlType)]!=ctrlType):
            return ctrlName
    i=1
    while True:
        ctrlName='%s%s'%(ctrlType,i)
        if not(cmds.treeView('uidTreeTV',q=1,iex=ctrlName)):
            if ctrlType in ['menuItem','subMenuItem','checkBoxMenuItem','dividerMenuItem','radioMenuItem','optionBoxMenuItem']:
                ctrlFunc='menuItem'
            else:
                ctrlFunc=ctrlType
            if(ctrlType=='tearOffMenu'):
                ctrlFunc='menu'
            if not(sdd_eval('cmds.%s("%s",q=1,ex=1)'%(ctrlFunc,ctrlName))):
                if(exList!=None):
                    if not(ctrlName in exList):
                        break
                else:
                    break
        i+=1
    return ctrlName
def sdd_eval(sCmd):
    return sys.modules['__builtin__'].eval(sCmd)
#====================================================================================================
#tree function
def sdd_treeViewSelectChange():
    global dataDirc
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    #select data
    for ctrlName in dataDirc['sort']:
        if(ctrlName in selI):
            dataDirc[ctrlName]['select']=True
        else:
            dataDirc[ctrlName]['select']=False
    #show property
    ctrlName=selI[0]
    ctrlType=dataDirc[ctrlName]['type']
    sdd_displayProperty(ctrlType)

    attrData=dataDirc[ctrlName]['attrData']
    attrList=attrData.keys()
    common=sdd_getCommonPropertyList()
    for aName in attrList:
        if(sdd_skipFlags(ctrlType,aName)):
            continue
        typ=attrData[aName][0]
        val=attrData[aName][1]
        cType=attrData[aName][2][0]
        if(cType=='h'):
            continue
        if(aName in common):
             uidName='%s_%s_'%('common',aName)
        else:
            uidName='%s_%s_'%(ctrlType,aName)

        if(val==None):
            qStr='cmds.%s("%s",q=1,%s=1)'%(ctrlType,ctrlName,aName)
            if(typ!='list'):
                winVal=None
                try:
                    winVal=sdd_eval(qStr)
                except:
                    pass
                

                if(winVal!=None):
                    sdd_loadDataToPropertyByType(uidName,typ,winVal)
            else:
                cmds.textScrollList('%sV'%uidName,e=1,ra=1)
        else:
            sdd_loadDataToPropertyByType(uidName,typ,val)
        if(len(selI)==1):
            sdd_enableAttrProc(uidName,(val!=None))
        else:
            sdd_enableAttrProc(uidName,False)

def sdd_treeViewExpendChange(ctrlName,isExpend):
    global dataDirc
    dataDirc[ctrlName]['expend']=isExpend


def sdd_treeViewRenameLabel(oldName,newName):
    global dataDirc
    if(cmds.treeView('uidTreeTV',q=1,iex=newName)):
        return ''
    else:
        sdd_renameChangeData(oldName,newName)
        dataDirc[newName]=dataDirc[oldName]
        del dataDirc[oldName]
        sdd_refreshDisplayUI()

def sdd_renameChangeData(oldName,newName):
    global dataDirc
    #rename cmds.parent list attrData 
    ctrlName=dataDirc[oldName]['parent']
    if(dataDirc[oldName]['type']=='window'):
        cmds.deleteUI(oldName)
    if(ctrlName!=''):
        attrData=dataDirc[ctrlName]['attrData']
        attrList=attrData.keys()
        for aName in attrList:
            typ=attrData[aName][0]
            valList=attrData[aName][1]
            if(valList==None):
                continue
            if(typ=='list'):
                newList=[]
                for val in valList:
                    vList=[]
                    for v in val:
                        if(v==oldName):
                            vList.append(newName)
                        else:
                            vList.append(v)
                    newList.append(vList)
                attrData[aName][1]=newList

    #rename child cmds.parent     
    for ctrlName in dataDirc['sort']:
        if(dataDirc[ctrlName]['parent']==oldName):
            dataDirc[ctrlName]['parent']=newName
    #rename sort
    for i in range(len(dataDirc['sort'])):
        if(dataDirc['sort'][i]==oldName):
            dataDirc['sort'][i]=newName

#tree item copy paste delete
def sdd_deleteUIObject(quert):
    global dataDirc
    if(quert):
        ret=cmds.confirmDialog(t='Delete', message='Are you sure cmds.delete UI ?',b=['Yes','No'], db='Yes', cb='No', ds='No' )
        if(ret=='No'):
            return
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    #select parent
    pLayout=dataDirc[selI[0]]['parent']
    if(pLayout!=''):
        if(dataDirc.has_key(pLayout)):
            dataDirc[pLayout]['select']=True
    #
    for i in selI:
        if not(dataDirc.has_key(i)):
            continue
        if(dataDirc[i]['type']=='window'):
            continue
        chList=cmds.treeView('uidTreeTV',q=1,ch=i)
        for ch in chList:
            try:
                del dataDirc['sort'][dataDirc['sort'].index(ch)]
                del dataDirc[ch]
            except:
                pass
            try:
                cmdStr='cmds.deleteUI("%s")'%(ch)
                sdd_eval(cmdStr)
            except:
                pass

    sdd_refreshDisplayUI()

def sdd_cutUIObject():
    sdd_copyUIObject()
    sdd_deleteUIObject(False)

def sdd_copyUIObject():
    global dataDirc
    global copyDirc
    copyDirc={'select':[],'sort':[]}
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    pLayout=None
    selList=[]
    allCtrlList={}
    for ctrlName in selI:
        if(dataDirc[ctrlName]['type']=='window'):
            continue
        if(pLayout==None):
            pLayout=dataDirc[ctrlName]['parent']
        if(dataDirc[ctrlName]['parent']!=pLayout):
            continue
        copyDirc['select'].append(ctrlName)
        chList=cmds.treeView('uidTreeTV',q=1,ch=ctrlName)
        for ch in chList:
            copyDirc['sort'].append(ch)
            copyDirc[ch]=dataDirc[ch].copy()


def sdd_pasteUIObject():
    global dataDirc
    global copyDirc
    tmpDirc=copy.deepcopy(dataDirc)
    try:
        sdd_treeViewClearSelection(True)

        pasteDirc=copy.deepcopy(copyDirc)
        selI=cmds.treeView('uidTreeTV',q=1,si=1)
        if(selI==None):
            return
        pCtrl=selI[0]

        #reparent
        for i in pasteDirc['select']:
            ctrl=pasteDirc[i]
            ctrlType=ctrl['type']
            if(sdd_isCanAddCtrl(pCtrl,ctrlType)):
                ctrl['parent']=pCtrl
            else:
                return
        #rename
        newList=[]
        for ctrlName in pasteDirc['sort']:
            #newName
            newCtrlName=sdd_getNotExistsName(ctrlName,pasteDirc[ctrlName]['type'],newList+dataDirc['sort']+pasteDirc['sort'])
            #rename parent attrData
            if not(ctrlName in pasteDirc['select']):
                pLayout=pasteDirc[ctrlName]['parent']
                if(pasteDirc[pLayout]['type'] in sdd_getLayoutList()):
                    attrData=pasteDirc[pLayout]['attrData']
                    attrList=attrData.keys()
                    for aName in attrList:
                        typ=attrData[aName][0]
                        valList=attrData[aName][1]
                        if(valList==None):
                            continue
                        if(typ=='list'):
                            newVal=[]
                            for val in valList:
                                vlist=[]
                                for v in val:
                                    if(v==ctrlName):
                                        vlist.append(newCtrlName)
                                    else:
                                        vlist.append(v)
                                newVal.append(vlist)
                            attrData[aName][1]=newVal
            #rename child parent
            for i in pasteDirc.keys():
                if(i in [ctrlName,'sort','select']):
                    continue
                if(i in pasteDirc['select']):
                    continue
                if(pasteDirc[i]['parent']==ctrlName):
                    pasteDirc[i]['parent']=newCtrlName


            pasteDirc[newCtrlName]=pasteDirc[ctrlName]

            newList.append(newCtrlName)
            del pasteDirc[ctrlName]
        pasteDirc['sort']=newList

        #addToDataDirc
        for i in pasteDirc['sort']:
            dataDirc['sort'].append(i)
            dataDirc[i]=pasteDirc[i]

        sdd_refreshDisplayUI()
    except:
        mm.eval('warning "Paste Error! Undo it!"')
        dataDirc=tmpDirc
        sdd_refreshDisplayUI()


def sdd_loadDataToTreeView():
    global dataDirc
    cmds.treeView('uidTreeTV',e=1,ra=1)
    for ctrlName in dataDirc['sort']:
        sdd_addCtrlToTreeView(ctrlName,dataDirc[ctrlName]['parent'],dataDirc[ctrlName]['type'],dataDirc[ctrlName]['iconName'],dataDirc[ctrlName]['attrData'],dataDirc[ctrlName]['expend'],dataDirc[ctrlName]['select'],'reload')


def sdd_dragAndDrop(dropList,preParentList,preIdx,newParent,newIdx,beforeName,afterName):
    global dataDirc
    for i in range(len(dropList)): 
        if(sdd_isCanAddCtrl(newParent,dataDirc[dropList[i]]['type'])):
            dataDirc[dropList[i]]['parent']=newParent
            dataDirc['sort']=cmds.treeView('uidTreeTV',q=1,ch='')
    sdd_refreshDisplayUI()
#====================================================================================================
#Property UI function  
def sdd_displayProperty(typ):
    allCtrl=sdd_getLayoutList()+sdd_getCtrlList()+['window']+sdd_getMenuLayoutList()+sdd_getMenuList()
    noDisList=['menuBarLayout']+sdd_getCollectionList()
    for i in allCtrl:
        if(i in noDisList):
            continue
        if(i==typ):
            if(cmds.frameLayout('%sUIDFL'%i,e=1,ex=1)):
                cmds.frameLayout('%sUIDFL'%i,e=1,vis=1)
            if(cmds.frameLayout('%sUIDFLc'%i,e=1,ex=1)):
                cmds.frameLayout('%sUIDFLc'%i,e=1,vis=1)
        else:
            if(cmds.frameLayout('%sUIDFL'%i,e=1,ex=1)):
                cmds.frameLayout('%sUIDFL'%i,e=1,vis=0)
            if(cmds.frameLayout('%sUIDFLc'%i,e=1,ex=1)):
                cmds.frameLayout('%sUIDFLc'%i,e=1,vis=0)

    if(typ in noDisList):
        cmds.frameLayout('%sUIDFL'%'common',e=1,vis=0)
        cmds.button('uidRefreshWindow',e=1,vis=0)
    else:
        cmds.frameLayout('%sUIDFL'%'common',e=1,vis=1)
        cmds.button('uidRefreshWindow',e=1,vis=1)

    if(typ in sdd_getMenuList()+sdd_getMenuLayoutList()):
        cmds.frameLayout('%sUIDFL'%'common',e=1,vis=0)

def sdd_loadDataToPropertyByType(uidName,typ,val):
    if(typ=='int'):
        cmds.intField('%sV'%uidName,e=1,v=max(val,cmds.intField('%sV'%uidName,q=1,min=1)))
    elif(typ=='float'):
         cmds.floatField('%sV'%uidName,e=1,v=val)
    elif(typ=='int2'):
         cmds.intField('%sV1'%uidName,e=1,v=val[0])
         cmds.intField('%sV2'%uidName,e=1,v=val[1])
    elif(typ=='bool'):
        cmds.checkBox('%sV'%uidName,e=1,v=val)
    elif(typ=='string' or typ=='cmd'):
        cmds.textField('%sV'%uidName,e=1,tx=val)
    elif(typ=='popup'):
        if(cmds.optionMenu('%sV'%uidName,q=1,ex=1)):
            cmds.optionMenu('%sV'%uidName,e=1,v=val)
        else:
            cmds.button('%sV'%uidName,e=1,l=val)
    elif(typ=='image'):
        cmds.textField('%sV'%uidName,e=1,tx=val)
    elif(typ=='color' or typ=='colorA'):
        cmds.canvas('%sV'%uidName,e=1,rgb=val[:3])
    elif(typ=='list'):
        cmds.textScrollList('%sV'%uidName,e=1,ra=1)
        for i in val:
            cmds.textScrollList('%sV'%uidName,e=1,a=str(i))
    elif(typ=='multi'):
        cmds.textScrollList('%sV'%uidName,e=1,ra=1)
        for i in val:
            cmds.textScrollList('%sV'%uidName,e=1,a=i)

def sdd_addDataToList(typeList,ctrlName):
    valList=[]
    for i in range(len(typeList)):
        typ=typeList[i][0]
        if(cmds.button('%sV%s'%(ctrlName,i),q=1,ex=1)):
            val=cmds.button('%sV%s'%(ctrlName,i),q=1,l=1)
            if(val==''):
                return
        elif(cmds.textField('%sV%s'%(ctrlName,i),q=1,ex=1)):
            val=cmds.textField('%sV%s'%(ctrlName,i),q=1,tx=1)
        elif(cmds.floatField('%sV%s'%(ctrlName,i),q=1,ex=1)):
            val=cmds.floatField('%sV%s'%(ctrlName,i),q=1,v=1)
        else:
            val=cmds.intField('%sV%s'%(ctrlName,i),q=1,v=1)

        if(typ=='int'):
            val=int(val)
        if(typ=='float'):
            val=float(val)
        valList.append(val)
    allI=cmds.textScrollList('%sV'%ctrlName,q=1,ai=1)

    if(allI!=None):
        for item in allI:
            curI=sdd_eval(item)
            ch=True
            for t in range(len(typeList)):
                if(typeList[t][1]):
                    if(valList[t]!=curI[t]):
                        ch=False
                        break
            if(ch):
                cmds.textScrollList('%sV'%ctrlName,e=1,ri=item)
    valStr='['
    for t in range(len(typeList)):
        if(typeList[t][0] in ['string','cmd']):
            valStr+='\'%s\','%valList[t]
        else:
            valStr+='%s,'%valList[t]
 
    valStr=valStr.strip(',')
    valStr+=']'
    cmds.textScrollList('%sV'%ctrlName,e=1,a=valStr)

def sdd_addStrigToList(ctrlName):
    valList=[]
    val=cmds.button('%sV0'%(ctrlName),q=1,l=1)
    allI=cmds.textScrollList('%sV'%ctrlName,q=1,ai=1)
    if(allI!=None):
        if(val in allI):
            return
    cmds.textScrollList('%sV'%ctrlName,e=1,a='%s'%val)

def sdd_attrListSelectChange(ctrlName):
    selI=cmds.textScrollList('%sV'%ctrlName,q=1,si=1)
    if(selI==None):
        return
    try:
        valList=sdd_eval(selI[0])
    except:
        valList=selI
    for i in range(len(valList)):
        if(cmds.button('%sV%s'%(ctrlName,i),q=1,ex=1)):
            cmds.button('%sV%s'%(ctrlName,i),e=1,l=valList[i])
        elif(cmds.textField('%sV%s'%(ctrlName,i),q=1,ex=1)):
            cmds.textField('%sV%s'%(ctrlName,i),e=1,tx=valList[i])
        else:
            cmds.intField('%sV%s'%(ctrlName,i),e=1,v=valList[i])


def sdd_deleteListDataItem(idx):
    selI=cmds.textScrollList(idx,q=1,sii=1)
    if(selI==None):
        return
    for i in selI:
        cmds.textScrollList(idx,e=1,rii=i)

def sdd_setButtonLabel(btn,tx):
    cmds.button(btn,e=1,l=tx)

def sdd_selectImage(btn):
    global uidImagePath
    if not('uidImagePath' in globals().keys()):
        uidImagePath=cmds.internalVar(ubd=1)

    path=cmds.fileDialog2(dir=uidImagePath,ff="Image Filee (*.bmp *.jpg *.png *.xpm);;All Files (*.*)", ds=2,fm=1)
    if(path==None):
        return
    newPath=os.path.dirname(path[0])+'/'
    if(newPath!=cmds.internalVar(ubd=1)):
        uidImagePath=newPath
        cmds.textField(btn,e=1,tx=path[0])
    else:
        cmds.textField(btn,e=1,tx=os.path.basename(path[0]))

def sdd_selecColor(ctrlName):
    result = cmds.colorEditor()
    buf = result.split()
    if(buf[3]==0):
        return
    cmds.canvas(ctrlName,e=1,rgb=cmds.colorEditor(q=1,rgb=1))

def sdd_enableAttrProc(typ,val):
    cmds.checkBox('%sCB'%typ,e=1,v=val)
    sdd_enableAttr(typ)

def sdd_enableAttr(typ):
    cmds.rowLayout('%sRL'%typ,e=1,en=cmds.checkBox('%sCB'%typ,q=1,v=1))

def sdd_savePropertyPanelToDate():
    global dataDirc
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    ctrlType=dataDirc[selI[0]]['type']
    sdd_savePropertyPanelToDateType(ctrlType)
    sdd_refreshDisplayUI()

def sdd_savePropertyPanelToDateType(ctrlType):
    global dataDirc
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    common=sdd_getCommonPropertyList()
    for ctrlName in selI:
        curType=dataDirc[ctrlName]['type']
        if(curType!=ctrlType):
            continue
        attrData=dataDirc[ctrlName]['attrData']
        attrList=attrData.keys()
        for aName in attrList:
            typ=attrData[aName][0]
            cType=attrData[aName][2][0]
            if(cType=='h'):
                continue
            if(aName in common):
                uidName='%s_%s_'%('common',aName)
            else:
                uidName='%s_%s_'%(ctrlType,aName)

            if(cmds.checkBox('%sCB'%uidName,q=1,v=1)):
                attrData[aName][1]=sdd_loadPropertyToData(uidName,typ)
            else:
                if(len(selI)==1):
                    attrData[aName][1]=None

def sdd_loadPropertyToData(uidName,typ):
    if(typ=='int'):
        val=cmds.intField('%sV'%uidName,q=1,v=1)
    elif(typ=='float'):
        val=cmds.floatField('%sV'%uidName,q=1,v=1)
    elif(typ=='int2'):
         val1=cmds.intField('%sV1'%uidName,q=1,v=1)
         val2=cmds.intField('%sV2'%uidName,q=1,v=1)
         val=[val1,val2]
    elif(typ=='bool'):
        val=cmds.checkBox('%sV'%uidName,q=1,v=1)
        val=int(val)
    elif(typ=='string'):
        val=cmds.textField('%sV'%uidName,q=1,tx=1)
    elif(typ=='cmd'):
        val=cmds.textField('%sV'%uidName,q=1,tx=1)
        if(val==''):
            val=None
        else:
            val=val.replace('\'','"')
            cmds.textField('%sV'%uidName,e=1,tx=val)
    elif(typ=='popup'):
        if(cmds.optionMenu('%sV'%uidName,q=1,ex=1)):
            val=cmds.optionMenu('%sV'%uidName,q=1,v=1)
        else:
            val=cmds.button('%sV'%uidName,q=1,l=1)
    elif(typ=='image'):
        val=cmds.textField('%sV'%uidName,q=1,tx=1)
        if(val==''):
            val=None
    elif(typ=='color'):
        val=cmds.canvas('%sV'%uidName,q=1,rgb=1)
    elif(typ=='colorA'):
        val=cmds.canvas('%sV'%uidName,q=1,rgb=1)
        val.append(0.25)
        print val
    elif(typ=='list'):
        valList=cmds.textScrollList('%sV'%uidName,q=1,ai=1)
        val=[]
        if(valList!=None):
            for i in valList:
                val.append(sdd_eval(i))
        if(len(val)==0):
            val=None
    elif(typ=='multi'):
        val=cmds.textScrollList('%sV'%uidName,q=1,ai=1)
        if(len(val)==0):
            val=None
    return val

def sdd_showChildIdx(pmName,typ):
    global dataDirc
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    selI=selI[0]
    cmds.popupMenu(pmName,e=1,dai=1)
    chList=sdd_getCtrlChildList(selI)
    itemList=[]
    for i in chList:
        if not(dataDirc[i]['type'] in sdd_getCollectionList()):
            itemList.append(i)

    for i in range(len(itemList)):
        if(typ=='idx'):
            item=str(i+1)
        else:
            item=itemList[i]
        cmds.menuItem(p=pmName,l='%s'%item,c='sdd_setButtonLabel("%s","%s")'%(pmName[:-2],item))
def sdd_showPaletteIdx(pmName,typ):
    global dataDirc
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    selI=selI[0]
    cmds.popupMenu(pmName,e=1,dai=1)
    dim=cmds.palettePort(selI,q=1,dim=1)
    num=dim[0]*dim[1]
    for i in range(num):
        item=str(i)
        cmds.menuItem(p=pmName,l='%s'%item,c='sdd_setButtonLabel("%s","%s")'%(pmName[:-2],item))

def sdd_showCameraList(pmName):
    cmds.popupMenu(pmName,e=1,dai=1)
    camList=ls(typ='camera',fl=1)
    for i in camList:
        camT=cmds.listRelatives(i,p=1)[0]
        cmds.menuItem(p=pmName,l='%s'%camT,c='sdd_setButtonLabel("%s","%s")'%(pmName[:-2],camT))


#====================================================================================================
#add ctrl item
def sdd_initTreeView():
    global dataDirc
    if('dataDirc' in globals().keys() and len(dataDirc.keys())>0):
        sdd_refreshDisplayUI()
    else:
        dataDirc={}
        sdd_addCtrlType('window','window')


def sdd_addCtrlType(ctrlType,iconName):
    global dataDirc
    tmpDirc=copy.deepcopy(dataDirc)
    try:
        selI=sdd_getTreeSelect()
        if(selI!=''):
            if not(sdd_isCanAddCtrl(selI,ctrlType)):
                return
        ctrlName=sdd_getNotExistsName('',ctrlType,None)
        attrData=sdd_returnDefaultDate(ctrlType)
        isSelect=False
        if(ctrlType in ['window']+sdd_getLayoutList()+sdd_getMenuLayoutList()+sdd_getCollectionList()):
            isSelect=True
        
        sdd_addCtrlToTreeView(ctrlName,selI,ctrlType,iconName,attrData,True,isSelect,'create')
        sdd_refreshDisplayUI()
    except:
        dataDirc=tmpDirc
        sdd_refreshDisplayUI()


def sdd_addCtrlToTreeView(ctrlName,pLayout,ctrlType,iconName,attrData,isExpend,isSelect,typ):
    global uidIconsPath
    cmds.treeView('uidTreeTV',e=1,ai=[ctrlName,pLayout])
    cmds.treeView('uidTreeTV',e=1,i=[ctrlName,1,uidIconsPath+'%s.png'%iconName],eb=[ctrlName,1,0],btc=[ctrlName,1,0,0,0],btp=[ctrlName,1,ctrlType])
    if(pLayout!=''):
        cmds.treeView('uidTreeTV',e=1,ei=[pLayout,True])

    sdd_addKeyToDataDirc(ctrlName,'type',ctrlType)
    sdd_addKeyToDataDirc(ctrlName,'parent',pLayout)
    sdd_addKeyToDataDirc(ctrlName,'iconName',iconName)
    sdd_addKeyToDataDirc(ctrlName,'attrData',attrData)
    sdd_addKeyToDataDirc(ctrlName,'expend',isExpend)

    if(typ=='create'):
        dataDirc['sort']=cmds.treeView('uidTreeTV',q=1,ch='')
        sdd_treeViewClearSelection(isSelect)

    sdd_addKeyToDataDirc(ctrlName,'select',isSelect)

def sdd_updateTreeViewSelectExpend():
    global dataDirc
    cmds.treeView('uidTreeTV',e=1,cs=1)
    for ctrlName in dataDirc['sort']:
        cmds.treeView('uidTreeTV',e=1,si=[ctrlName,dataDirc[ctrlName]['select']])
        cmds.treeView('uidTreeTV',e=1,ei=[ctrlName,dataDirc[ctrlName]['expend']])
    cmds.refresh(cv=1)
    selI=cmds.treeView('uidTreeTV',q=1,si=1)
    if(selI==None):
        return
    cmds.treeView('uidTreeTV',e=1,shi=selI[0])


def sdd_treeViewClearSelection(isClear):
    global dataDirc
    if(isClear==False):
        return
    for ctrlName in dataDirc['sort']:
        dataDirc[ctrlName]['select']=False

def sdd_isCanAddCtrl(pCtrl,ctrlType):
    global dataDirc

    if(dataDirc[pCtrl]['type']=='Window'):
        if not(ctrlType in sdd_getLayoutList()+['menuBarLayout']):
            cmds.confirmDialog( t='Prompt', m='Please add to Layout', b=['Yes'], db='Yes' )
            return False

    #dock
    if(ctrlType=='toolBar' or ctrlType=='dockControl'):
        if not (dataDirc[pCtrl]['type'] in sdd_getLayoutList()):
            cmds.confirmDialog( t='Prompt', m='Please add to Layout', b=['Yes'], db='Yes' )
            return False
        exList=sdd_getCtrlByType('toolBar')+sdd_getCtrlByType('dockControl')
        ret=len(exList)<1
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Just add one toolBar or dockControl ', b=['Yes'], db='Yes' )
        return ret

    #collection
    if(ctrlType=='radioButton'):
        ret=dataDirc[pCtrl]['type']=='radioCollection'
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to radioCollection', b=['Yes'], db='Yes' )
        return ret
    if(ctrlType=='iconTextRadioButton'):
        ret=dataDirc[pCtrl]['type']=='iconTextRadioCollection'
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to iconTextRadioCollection', b=['Yes'], db='Yes' )
        return ret
    if(ctrlType=='radioMenuItem'):
        ret=dataDirc[pCtrl]['type']=='radioMenuItemCollection'
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to radioMenuItemCollection', b=['Yes'], db='Yes' )
        return ret
        
    #menu
    if(ctrlType == 'optionBoxMenuItem'):
        ret=(dataDirc[pCtrl]['type'] in ['menuItem','radioMenuItem','checkBoxMenuItem'] and len(sdd_getCtrlChildList(pCtrl))==0)
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to menuItem|radioMenuItem|checkBoxMenuItem', b=['Yes'], db='Yes' )
        return ret
        
    if(dataDirc[pCtrl]['type']=='optionMenu'):
        ret=ctrlType=='menuItem'
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add menuItem to optionMenu', b=['Yes'], db='Yes' )
        return ret

    if(dataDirc[pCtrl]['type'] == 'menuBarLayout' ):
        ret=ctrlType in ['menu','tearOffMenu']
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Can not add to menuBarLayout', b=['Yes'], db='Yes' )
        return ret

    elif(ctrlType in ['menu','tearOffMenu']):
        ret=dataDirc[pCtrl]['type'] in ['menuBarLayout','window']
        print ret
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to menuBarLayout|window', b=['Yes'], db='Yes' )
        return ret

    if(ctrlType in sdd_getMenuList()):
        ret=dataDirc[pCtrl]['type'] in sdd_getMenuLayoutList()
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to optionMenu|popupMenu|menu|tearOffMenu|subMenuItem|menuBarLayout', b=['Yes'], db='Yes' )
        return ret
    #ctrl layout
    if(ctrlType in sdd_getCtrlList()):
        ret=dataDirc[pCtrl]['type'] in sdd_getLayoutList()
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to Layout', b=['Yes'], db='Yes' )
        return ret
    if(ctrlType in sdd_getLayoutList()):
        ret=dataDirc[pCtrl]['type'] in sdd_getLayoutList()+['window']
        if not(ret):
            cmds.confirmDialog( t='Prompt', m='Please add to Layout|window', b=['Yes'], db='Yes' )
        return ret
    return True

def sdd_addKeyToDataDirc(itemName,key,value):
    global dataDirc
    if not(dataDirc.has_key(itemName)):
        dataDirc[itemName]={}
    attrDirc=dataDirc[itemName]
    attrDirc[key]=value
    
#====================================================================================================
#property ui
def sdd_createLayoutProperty():
    #common
    mainType='common'
    columnWidth=80
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('enable',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('visible',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('annotation',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('width',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('height',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('backgroundColor',mainType,'color',pLayout,columnWidth,None)

    #window
    mainType='window'
    columnWidth=90
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('title',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('sizeable',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('titleBar',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minimizeButton',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maximizeButton',mainType,'bool',pLayout,columnWidth,None)
    # sdd_addLayoutCollection('menuBar',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('toolbox',mainType,'bool',pLayout,columnWidth,None)
    # sdd_addLayoutCollection('menuBarVisible',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('topEdge',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('leftEdge',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('resizeToFitChildren',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('minimizeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('restoreCommand',mainType,'cmd',pLayout,columnWidth,None)

    #columnLayout
    mainType='columnLayout'
    columnWidth=90
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('adjustableColumn',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('columnWidth',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('columnAlign',mainType,'popup',pLayout,columnWidth,['left','right','center'])
    sdd_addLayoutCollection('rowSpacing',mainType,'int',pLayout,columnWidth,[None,None])


    #rowLayout
    mainType='rowLayout'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('columnWidth',mainType,'columnWidth',pLayout,columnWidth,None)


    aName='columnAlign'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    cLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=cLayout,w=110,h=40,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=cLayout,nc=2,cw2=[42,42])
    cmds.text(l='column')
    cmds.text(l='align')
    cmds.rowLayout(p=cLayout,nc=3,cw3=[42,42,20])
    cmds.button('%sV0'%preName,l='',w=40,h=20)
    cmds.popupMenu('%sV0PM'%preName,b=1,pmc='sdd_showChildIdx("%s","idx")'%('%sV0PM'%preName))
    cmds.radioMenuItemCollection()
    cmds.button('%sV1'%preName,l='left',w=40,h=20)
    cmds.popupMenu(b=1)
    cmds.radioMenuItemCollection()
    cmds.menuItem(l='left',rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'left'))
    cmds.menuItem(l='right',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'right'))
    cmds.menuItem(l='center',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'center'))
    cmds.button(l='+',w=20,h=20,c='sdd_addDataToList(%s,"%s")'%([['int',1],['string',0]],preName))


    #gridLayout
    mainType='gridLayout'
    columnWidth=90
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('numberOfColumns',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('cellWidth',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('cellHeight',mainType,'int',pLayout,columnWidth,None)


    #tabLayout
    mainType='tabLayout'
    columnWidth=75
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('image',mainType,'image',pLayout,columnWidth,None)
    sdd_addLayoutCollection('tabsVisible',mainType,'bool',pLayout,columnWidth,None)

    aName='tabLabelIndex'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    cLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=cLayout,w=145,h=40,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=cLayout,nc=2,cw2=[42,42])
    cmds.text(l='index')
    cmds.text(l='label')
    cmds.rowLayout(p=cLayout,nc=3,cw3=[42,42,20])
    cmds.button('%sV0'%preName,l='',w=40,h=20)
    cmds.popupMenu('%sV0PM'%preName,b=1,pmc='sdd_showChildIdx("%s","idx")'%('%sV0PM'%preName))
    cmds.radioMenuItemCollection()
    cmds.textField('%sV1'%preName,w=80,tx='')
    cmds.button(l='+',w=20,h=20,c='sdd_addDataToList(%s,"%s")'%([['int',1],['string',0]],preName))
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('selectCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('preSelectCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('doubleClickCommand',mainType,'cmd',pLayout,columnWidth,None)

    #formLayout
    mainType='formLayout'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    
    #attachForm
    aName='attachForm'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    cLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=cLayout,w=180,h=60,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=cLayout,nc=3,cw3=[82,42,30])
    cmds.text(l='control')
    cmds.text(l='edge')
    cmds.text(l='offset')
    cmds.rowLayout(p=cLayout,nc=4,cw4=[82,42,32,20])
    cmds.button('%sV0'%preName,l='',w=80,h=20)
    cmds.popupMenu('%sV0PM'%preName,b=1,pmc='sdd_showChildIdx("%s","name")'%('%sV0PM'%preName))
    cmds.radioMenuItemCollection()
    cmds.button('%sV1'%preName,l='top',w=40,h=20)
    cmds.popupMenu(b=1)
    cmds.radioMenuItemCollection()
    cmds.menuItem(l='top',rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'top'))
    cmds.menuItem(l='bottom',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'bottom'))
    cmds.menuItem(l='left',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'left'))
    cmds.menuItem(l='right',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'right'))
    cmds.intField('%sV2'%preName,w=30,min=0)
    cmds.button(l='+',w=20,h=20,c='sdd_addDataToList(%s,"%s")'%([['string',1],['string',1],['int',0]],preName))

    #attachForm
    aName='attachControl'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    cLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=cLayout,w=265,h=60,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=cLayout,nc=4,cw4=[82,42,32,82])
    cmds.text(l='control')
    cmds.text(l='edge')
    cmds.text(l='offset')
    cmds.text(l='control')
    cmds.rowLayout(p=cLayout,nc=5,cw5=[82,42,32,82,20])
    cmds.button('%sV0'%preName,l='',w=80,h=20)
    cmds.popupMenu('%sV0PM'%preName,b=1,pmc='sdd_showChildIdx("%s","name")'%('%sV0PM'%preName))
    cmds.radioMenuItemCollection()
    cmds.button('%sV1'%preName,l='top',w=40,h=20)
    cmds.popupMenu(b=1)
    cmds.radioMenuItemCollection()
    cmds.menuItem(l='top',rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'top'))
    cmds.menuItem(l='bottom',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'bottom'))
    cmds.menuItem(l='left',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'left'))
    cmds.menuItem(l='right',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'right'))
    cmds.intField('%sV2'%preName,w=30,min=0)
    cmds.button('%sV3'%preName,l='',w=80,h=20)
    cmds.popupMenu('%sV3PM'%preName,b=1,pmc='sdd_showChildIdx("%s","name")'%('%sV3PM'%preName))
    cmds.radioMenuItemCollection()
    cmds.button(l='+',w=20,h=20,c='sdd_addDataToList(%s,"%s")'%([['string',1],['string',1],['int',0],['string',1],],preName))

    #attachPosition
    aName='attachPosition'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    cLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=cLayout,w=215,h=60,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=cLayout,nc=4,cw4=[82,42,32,32])
    cmds.text(l='control')
    cmds.text(l='edge')
    cmds.text(l='offset')
    cmds.text(l='pos')
    cmds.rowLayout(p=cLayout,nc=5,cw5=[82,42,32,32,20])
    cmds.button('%sV0'%preName,l='',w=80,h=20)
    cmds.popupMenu('%sV0PM'%preName,b=1,pmc='sdd_showChildIdx("%s","name")'%('%sV0PM'%preName))
    cmds.radioMenuItemCollection()
    cmds.button('%sV1'%preName,l='top',w=40,h=20)
    cmds.popupMenu(b=1)
    cmds.radioMenuItemCollection()
    cmds.menuItem(l='top',rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'top'))
    cmds.menuItem(l='bottom',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'bottom'))
    cmds.menuItem(l='left',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'left'))
    cmds.menuItem(l='right',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV1'%preName,'right'))
    cmds.intField('%sV2'%preName,w=30,min=0,v=0)
    cmds.intField('%sV3'%preName,w=30,min=0,v=0)
    cmds.button(l='+',w=20,h=20,c='sdd_addDataToList(%s,"%s")'%([['string',1],['string',1],['int',0],['int',0],],preName))


    #frameLayout
    mainType='frameLayout'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('borderVisible',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('borderStyle',mainType,'popup',pLayout,columnWidth,['in','out','etchedIn','etchedOut'])
    sdd_addLayoutCollection('collapse',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('collapsable',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('labelVisible',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('labelAlign',mainType,'popup',pLayout,columnWidth,['top','center','bottom'])
    sdd_addLayoutCollection('labelIndent',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('labelWidth',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('marginWidth',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('marginHeight',mainType,'int',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('collapseCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('expandCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('preCollapseCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('preExpandCommand',mainType,'cmd',pLayout,columnWidth,None)

    #paneLayout
    mainType='paneLayout'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('configuration',mainType,'popup',pLayout,columnWidth,['horizontal4','vertical4','top4','left4','bottom4','right4','quad'])

    aName='paneSize'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    pLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=pLayout,w=155,h=40,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=pLayout,nc=3,cw3=[42,42,42])
    cmds.text(l='index')
    cmds.text(l='width')
    cmds.text(l='height')
    cmds.rowLayout(p=pLayout,nc=4,cw4=[42,42,42,20])
    cmds.button('%sV0'%preName,l='1',w=40,h=20)
    cmds.popupMenu(b=1)
    cmds.radioMenuItemCollection()
    cmds.menuItem(l='1',rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'1'))
    cmds.menuItem(l='2',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'2'))
    cmds.menuItem(l='3',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'3'))
    cmds.menuItem(l='4',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'4'))
    cmds.intField('%sV1'%preName,v=1,w=30,min=1)
    cmds.intField('%sV2'%preName,v=1,w=30,min=1)
    cmds.button(l='+',w=20,h=20,c='sdd_addDataToList(%s,"%s")'%([['int',1],['int',0],['int',0],],preName))

    #scrollLayout
    mainType='scrollLayout'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('childResizable',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minChildWidth',mainType,'int',pLayout,columnWidth,None)

    #sdd_addLayoutCollection('paneSize',mainType,'list',pLayout,columnWidth,['index','width','height'])

    #button
    mainType='button'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('command',mainType,'cmd',pLayout,columnWidth,None)

    #iconTextButton
    mainType='iconTextButton'
    columnWidth=110
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('image',mainType,'image',pLayout,columnWidth,None)
    sdd_addLayoutCollection('imageOverlayLabel',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('overlayLabelColor',mainType,'color',pLayout,columnWidth,None)
    sdd_addLayoutCollection('overlayLabelBackColor',mainType,'colorA',pLayout,columnWidth,None)
    sdd_addLayoutCollection('style',mainType,'popup',pLayout,columnWidth,['iconOnly','textOnly','iconAndTextHorizontal','iconAndTextVertical','iconAndTextCentered'])
    sdd_addLayoutCollection('align',mainType,'popup',pLayout,columnWidth,['left','right','center'])
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('command',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('doubleClickCommand',mainType,'cmd',pLayout,columnWidth,None)

    #intField
    mainType='intField'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('value',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('step',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('editable',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enterCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('receiveFocusCommand',mainType,'cmd',pLayout,columnWidth,None)

    #floatField
    mainType='floatField'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('value',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('step',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('editable',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('precision',mainType,'int',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enterCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('receiveFocusCommand',mainType,'cmd',pLayout,columnWidth,None)

    #textField
    mainType='textField'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('text',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('editable',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enterCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('receiveFocusCommand',mainType,'cmd',pLayout,columnWidth,None)

    #scrollField
    mainType='scrollField'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('wordWrap',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('text',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('editable',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enterCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('keyPressCommand',mainType,'cmd',pLayout,columnWidth,None)

    #checkBox
    mainType='checkBox'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('value',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('onCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('offCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)


    #iconTextCheckBox
    mainType='iconTextCheckBox'
    columnWidth=110
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('image',mainType,'image',pLayout,columnWidth,None)
    sdd_addLayoutCollection('imageOverlayLabel',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('overlayLabelColor',mainType,'color',pLayout,columnWidth,None)
    sdd_addLayoutCollection('overlayLabelBackColor',mainType,'colorA',pLayout,columnWidth,None)
    sdd_addLayoutCollection('style',mainType,'popup',pLayout,columnWidth,['iconOnly','textOnly','iconAndTextHorizontal','iconAndTextVertical','iconAndTextCentered'])
    sdd_addLayoutCollection('align',mainType,'popup',pLayout,columnWidth,['left','right','center'])
    sdd_addLayoutCollection('value',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('onCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('offCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)


    #radioButton
    mainType='radioButton'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('select',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('onCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('offCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)


    #iconTextRadioButton
    mainType='iconTextRadioButton'
    columnWidth=110
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('image',mainType,'image',pLayout,columnWidth,None)
    sdd_addLayoutCollection('imageOverlayLabel',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('overlayLabelColor',mainType,'color',pLayout,columnWidth,None)
    sdd_addLayoutCollection('overlayLabelBackColor',mainType,'colorA',pLayout,columnWidth,None)
    sdd_addLayoutCollection('style',mainType,'popup',pLayout,columnWidth,['iconOnly','textOnly','iconAndTextHorizontal','iconAndTextVertical','iconAndTextCentered'])
    sdd_addLayoutCollection('align',mainType,'popup',pLayout,columnWidth,['left','right','center'])
    sdd_addLayoutCollection('select',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('onCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('offCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)

    #image
    mainType='image'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('image',mainType,'image',pLayout,columnWidth,None)


    #palettePort
    mainType='palettePort'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('dimensions',mainType,'int2',pLayout,columnWidth,None)
    sdd_addLayoutCollection('colorEditable',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)


    #canvas
    mainType='canvas'
    columnWidth=60
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('rgbValue',mainType,'color',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('pressCommand',mainType,'cmd',pLayout,columnWidth,None)


    #text
    mainType='text'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('align',mainType,'popup',pLayout,columnWidth,['left','right','center'])
    sdd_addLayoutCollection('wordWrap',mainType,'bool',pLayout,columnWidth,None)

    #intSlider
    mainType='intSlider'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('value',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('step',mainType,'int',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)

    #floatSlider
    mainType='floatSlider'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('value',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('step',mainType,'float',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)

    #intSliderGrp
    mainType='intSliderGrp'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('extraLabel',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('value',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('step',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('fieldMinValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('fieldMaxValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('columnWidth',mainType,'columnWidth',pLayout,columnWidth,['1','2','3','4'])
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)


    #colorIndexSliderGrp
    mainType='colorIndexSliderGrp'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('extraLabel',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('value',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('columnWidth',mainType,'columnWidth',pLayout,columnWidth,['1','2','3','4'])
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)

    #colorSliderGrp
    mainType='colorSliderGrp'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('rgbValue',mainType,'color',pLayout,columnWidth,None)
    sdd_addLayoutCollection('columnWidth',mainType,'columnWidth',pLayout,columnWidth,['1','2','3'])
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)


    #floatSliderGrp
    mainType='floatSliderGrp'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('extraLabel',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('value',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('step',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('fieldMinValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('fieldMaxValue',mainType,'float',pLayout,columnWidth,None)
    sdd_addLayoutCollection('precision',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('columnWidth',mainType,'columnWidth',pLayout,columnWidth,['1','2','3','4'])
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragCommand',mainType,'cmd',pLayout,columnWidth,None)

    #textScrollList
    mainType='textScrollList'
    columnWidth=100
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('allowMultiSelection',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('selectCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('doubleClickCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('deleteKeyCommand',mainType,'cmd',pLayout,columnWidth,None)

    #treeView
    mainType='treeView'
    columnWidth=90
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('allowReparenting',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('numberOfButtons',mainType,'int',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('selectCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('selectionChangedCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('editLabelCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('itemRenamedCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('contextMenuCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('expandCollapseCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('dragAndDropCommand',mainType,'cmd',pLayout,columnWidth,None)

    #progressBar
    mainType='progressBar'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('progress',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('minValue',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('maxValue',mainType,'int',pLayout,columnWidth,None)

    #separator
    mainType='separator'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('style',mainType,'popup',pLayout,columnWidth,['none','single','double','singleDash','doubleDash','in','out'])
    sdd_addLayoutCollection('horizontal',mainType,'bool',pLayout,columnWidth,None)

    #optionMenu
    mainType='optionMenu'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('select',mainType,'int',pLayout,columnWidth,None)
    sdd_addLayoutCollection('value',mainType,'string',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('changeCommand',mainType,'cmd',pLayout,columnWidth,None)

    #popupMenu
    mainType='popupMenu'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('altModifier',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('ctrlModifier',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('shiftModifier',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('button',mainType,'int',pLayout,columnWidth,[1,3])


    #menu
    mainType='menu'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('postMenuCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('postMenuCommandOnce',mainType,'bool',pLayout,columnWidth,None)

    #tearOffMenu
    mainType='tearOffMenu'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('postMenuCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('postMenuCommandOnce',mainType,'bool',pLayout,columnWidth,None)

    #menuItem
    mainType='menuItem'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enable',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('command',mainType,'cmd',pLayout,columnWidth,None)

    #subMenuItem
    mainType='subMenuItem'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enable',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('command',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('postMenuCommand',mainType,'cmd',pLayout,columnWidth,None)
    sdd_addLayoutCollection('postMenuCommandOnce',mainType,'bool',pLayout,columnWidth,None)

    #radioMenuItem
    mainType='radioMenuItem'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enable',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('radioButton',mainType,'bool',pLayout,columnWidth,None)

    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('command',mainType,'cmd',pLayout,columnWidth,None)

    #checkBoxMenuItem
    mainType='checkBoxMenuItem'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enable',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('checkBox',mainType,'bool',pLayout,columnWidth,None)

    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('command',mainType,'cmd',pLayout,columnWidth,None)

    #dividerMenuItem
    mainType='dividerMenuItem'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enable',mainType,'bool',pLayout,columnWidth,None)
    #dividerMenuItem
    mainType='optionBoxMenuItem'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('enable',mainType,'bool',pLayout,columnWidth,None)
    #
    cmds.frameLayout('%sUIDFLc'%mainType,p='uidPropertyCL',l=mainType+'Command',vis=0,cll=1,cl=1)
    pLayout=cmds.columnLayout('%sUICLc'%mainType,adj=1)
    sdd_addLayoutCollection('command',mainType,'cmd',pLayout,columnWidth,None)


    #dockControl
    mainType='dockControl'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('floating',mainType,'bool',pLayout,columnWidth,None)
    sdd_addLayoutCollection('area',mainType,'popup',pLayout,columnWidth,['top','left','bottom','right'])
    sdd_addLayoutCollection('enablePopupOption',mainType,'bool',pLayout,columnWidth,None)
    
    aName='allowedArea'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    pLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=pLayout,w=155,h=40,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=pLayout,nc=3,cw3=[42,42,42])
    cmds.text(l='Area')
    cmds.rowLayout(p=pLayout,nc=2,cw2=[42,20])
    cmds.button('%sV0'%preName,l='left',w=40,h=20)
    cmds.popupMenu(b=1)
    cmds.radioMenuItemCollection()
    cmds.menuItem(l='left',rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'left'))
    cmds.menuItem(l='right',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'right'))
    cmds.menuItem(l='top',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'top'))
    cmds.menuItem(l='bottom',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'bottom'))

    cmds.button(l='+',w=20,h=20,c='sdd_addStrigToList("%s")'%(preName))
    #toolBar
    mainType='toolBar'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('label',mainType,'string',pLayout,columnWidth,None)
    sdd_addLayoutCollection('area',mainType,'popup',pLayout,columnWidth,['top','left','bottom','right'])
    aName='allowedArea'
    preName='%s_%s_'%(mainType,aName)
    cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
    cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
    cmds.rowLayout('%sRL'%preName,en=0)
    pLayout=cmds.columnLayout('%sCL'%preName)
    cmds.text(l=aName,al='left',w=95)

    cmds.textScrollList('%sV'%preName,p=pLayout,w=155,h=40,sc='sdd_attrListSelectChange("%s")'%preName)
    cmds.popupMenu()
    cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
    cmds.rowLayout(p=pLayout,nc=3,cw3=[42,42,42])
    cmds.text(l='Area')
    cmds.rowLayout(p=pLayout,nc=2,cw2=[42,20])
    cmds.button('%sV0'%preName,l='left',w=40,h=20)
    cmds.popupMenu(b=1)
    cmds.radioMenuItemCollection()
    cmds.menuItem(l='left',rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'left'))
    cmds.menuItem(l='right',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'right'))
    cmds.menuItem(l='top',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'top'))
    cmds.menuItem(l='bottom',rb=0,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,'bottom'))
    cmds.button(l='+',w=20,h=20,c='sdd_addStrigToList("%s")'%(preName))


    #commandLine
    mainType='commandLine'
    columnWidth=70
    cmds.frameLayout('%sUIDFL'%mainType,p='uidPropertyCL',l=mainType,vis=0,cll=1)
    pLayout=cmds.columnLayout('%sUIDCL'%mainType,adj=1)
    sdd_addLayoutCollection('sourceType',mainType,'popup',pLayout,columnWidth,['mel','python'])
    sdd_addLayoutCollection('numberOfHistoryLines',mainType,'int',pLayout,columnWidth,None)



    cmds.button('uidRefreshWindow',l='Refresh Window',p='uidPropertyCL',vis=0,c='sdd_savePropertyPanelToDate()')




def sdd_addLayoutCollection(aName,mainType,typ,pLayout,cw,exAttr):
    if(typ=='bool'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=2,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.checkBox('%sV'%preName,l='')
    if(typ=='int'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=2,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.intField('%sV'%preName,v=1,w=30)
        if(exAttr==None):
            cmds.intField('%sV'%preName,e=1,min=1)
        else:
            if(exAttr[0]!=None):
                cmds.intField('%sV'%preName,e=1,min=exAttr[0],s=1)
            if(exAttr[1]!=None):
                cmds.intField('%sV'%preName,e=1,max=exAttr[1])
    if(typ=='float'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=2,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.floatField('%sV'%preName,v=0,pre=1,w=30)
    if(typ=='int2'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=3,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.intField('%sV1'%preName,v=0,w=30)
        cmds.intField('%sV2'%preName,v=0,w=30)
    if(typ=='string'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=2,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.textField('%sV'%preName,tx='')
    if(typ=='cmd'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50],rowAttach=[1,'top',3])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=2,en=0)
        cmds.columnLayout(adj=1,rs=5)
        cmds.text(l=aName,al='left')
        cmds.textField('%sV'%preName,tx='',w=200)

    if(typ=='color' or typ=='colorA'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=2,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.canvas('%sV'%preName,w=80,h=15,rgb=(0,0,0),pc='sdd_selecColor("%s")'%('%sV'%preName))
    if(typ=='image'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=3,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.textField('%sV'%preName,tx='',w=100)
        cmds.button(l='...',c='sdd_selectImage("%s")'%('%sV'%preName))
    if(typ=='popup'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,50])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',w=15,cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,nc=2,cw=[1,cw],en=0)
        cmds.text(l=aName,al='left')
        cmds.optionMenu('%sV'%preName)
        for i in exAttr:
            cmds.menuItem(l=i)
    if(typ=='columnWidth'):
        cmds.rowLayout(p=pLayout,nc=2,cw2=[15,95],rowAttach=[1,'top',4])
        preName='%s_%s_'%(mainType,aName)
        cmds.checkBox('%sCB'%preName,l='',cc='sdd_enableAttr("%s")'%preName)
        cmds.rowLayout('%sRL'%preName,en=0)
        cLayout=cmds.columnLayout('%sCL'%preName)
        cmds.text(l=aName,al='left',w=95)

        cmds.textScrollList('%sV'%preName,p=cLayout,w=110,h=40,sc='sdd_attrListSelectChange("%s")'%preName)
        cmds.popupMenu()
        cmds.menuItem(l='delete',c='sdd_deleteListDataItem("%s")'%('%sV'%preName))
        cmds.rowLayout(p=cLayout,nc=2,cw2=[42,42])
        cmds.text(l='column')
        cmds.text(l='width')
        cmds.rowLayout(p=cLayout,nc=3,cw3=[42,42,20])
        cmds.button('%sV0'%preName,l='',w=40,h=20)
        if(exAttr!=None):
            cmds.popupMenu('%sV0PM'%preName,b=1)
            cmds.radioMenuItemCollection()
            for i in exAttr:
                cmds.menuItem(l=i,rb=1,c='sdd_setButtonLabel("%s","%s")'%('%sV0'%preName,i))
        else:
            cmds.popupMenu('%sV0PM'%preName,b=1,pmc='sdd_showChildIdx("%s","idx")'%('%sV0PM'%preName))
        cmds.intField('%sV1'%preName,v=1,w=30,min=1)
        cmds.button(l='+',w=20,h=20,c='sdd_addDataToList(%s,"%s")'%([['int',1],['int',0]],preName))

#====================================================================================================
#defult data
def sdd_returnDefaultDate(typ):
    dData={}
    dData['enable']=['bool',None,['c','en']]
    dData['visible']=['bool',None,['c','vis']]
    dData['annotation']=['string',None,['c','ann']]
    dData['width']=['int',None,['c','w']]
    dData['height']=['int',None,['c','h']]
    dData['backgroundColor']=['color',None,['c','bgc']]

    if(typ=='window'):
        dData['title']=['string',None,['c','t']]
        dData['sizeable']=['bool',None,['c','s']]
        dData['titleBar']=['bool',None,['c','tb']]
        dData['minimizeButton']=['bool',None,['c','mnb']]
        dData['maximizeButton']=['bool',None,['c','mxb']]
        dData['menuBar']=['bool',None,['h','mb']]
        dData['toolbox']=['bool',None,['c','tlb']]
        # dData['menuBarVisible']=['bool',None,['c','mbv']]
        dData['topEdge']=['int',None,['c','te']]
        dData['leftEdge']=['int',None,['c','le']]
        dData['resizeToFitChildren']=['bool',None,['c','rtf']]
        #
        dData['minimizeCommand']=['cmd',None,['c','mnc']]
        dData['restoreCommand']=['cmd',None,['c','rc']]

        del dData['enable']
        del dData['annotation']
    if(typ=='columnLayout'):
        dData['adjustableColumn']=['bool',None,['c','adj']]
        dData['columnWidth']=['int',None,['c','cw']]
        dData['columnAlign']=['popup',None,['c','cal']]
        dData['rowSpacing']=['int',None,['c','rs']]
    if(typ=='rowLayout'):
        dData['columnWidth']=['list',None,['c','cw']]
        dData['columnAlign']=['list',None,['c','cal']]
        dData['numberOfColumns']=['int',100,['h','nc']]
    if(typ=='gridLayout'):
        dData['numberOfColumns']=['int',None,['c','nc']]
        dData['cellWidth']=['int',None,['c','cw']]
        dData['cellHeight']=['int',None,['c','ch']]
    if(typ=='tabLayout'):
        dData['image']=['image',None,['c','i']]
        dData['tabsVisible']=['bool',None,['c','tv']]
        dData['tabLabelIndex']=['list',None,['e','tli']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['selectCommand']=['cmd',None,['c','sc']]
        dData['preSelectCommand']=['cmd',None,['c','psc']]
        dData['doubleClickCommand']=['cmd',None,['c','dcc']]

    if(typ=='formLayout'):
        dData['attachForm']=['list',None,['e','af']]
        dData['attachControl']=['list',None,['e','ac']]
        dData['attachPosition']=['list',None,['e','ap']]
    if(typ=='frameLayout'):
        dData['borderVisible']=['bool',None,['c','bv']]
        dData['borderStyle']=['popup',None,['c','bs']]
        dData['collapse']=['bool',None,['c','cl']]
        dData['collapsable']=['bool',None,['c','cll']]
        dData['label']=['string',None,['c','l']]
        dData['labelVisible']=['bool',None,['c','lv']]
        dData['labelAlign']=['popup',None,['c','la']]
        dData['labelIndent']=['int',None,['c','li']]
        dData['labelWidth']=['int',None,['c','lw']]
        dData['marginHeight']=['int',None,['c','mh']]
        dData['marginWidth']=['int',None,['c','mw']]
        #
        dData['collapseCommand']=['cmd',None,['c','cc']]
        dData['expandCommand']=['cmd',None,['c','ec']]
        dData['preCollapseCommand']=['cmd',None,['c','pcc']]
        dData['preExpandCommand']=['cmd',None,['c','pec']]

    if(typ=='paneLayout'):
        dData['configuration']=['popup','vertical4',['c','cn']]
        dData['paneSize']=['list',None,['c','ps']]
    if(typ=='scrollLayout'):
        dData['childResizable']=['bool',None,['c','cr']]
        dData['minChildWidth']=['int',None,['c','mcw']]

    if(typ=='button'):
        dData['label']=['string',None,['c','l']]
        #
        dData['command']=['cmd',None,['c','c']]

    if(typ=='iconTextButton'):
        dData['label']=['string',None,['c','l']]
        dData['image']=['image',None,['c','i']]
        dData['imageOverlayLabel']=['string',None,['c','iol']]
        dData['overlayLabelColor']=['color',None,['c','olc']]
        dData['overlayLabelBackColor']=['colorA',None,['c','olb']]
        dData['style']=['popup',None,['c','st']]
        dData['align']=['popup',None,['c','al']]
        #
        dData['command']=['cmd',None,['c','c']]
        dData['doubleClickCommand']=['cmd',None,['c','dcc']]

    if(typ=='intField'):
        dData['value']=['int',None,['c','v']]
        dData['minValue']=['int',None,['c','min']]
        dData['maxValue']=['int',10,['c','max']]
        dData['step']=['int',1,['c','s']]
        dData['editable']=['bool',None,['c','ed']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['enterCommand']=['cmd',None,['c','ec']]
        dData['dragCommand']=['cmd',None,['c','dc']]
        dData['receiveFocusCommand']=['cmd',None,['c','rfc']]

    if(typ=='floatField'):
        dData['value']=['float',None,['c','v']]
        dData['minValue']=['float',None,['c','min']]
        dData['maxValue']=['float',10,['c','max']]
        dData['step']=['float',0.1,['c','s']]
        dData['editable']=['bool',None,['c','ed']]
        dData['precision']=['int',None,['c','pre']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['enterCommand']=['cmd',None,['c','ec']]
        dData['dragCommand']=['cmd',None,['c','dc']]
        dData['receiveFocusCommand']=['cmd',None,['c','rfc']]

    if(typ=='textField'):
        dData['text']=['string',None,['c','tx']]
        dData['editable']=['bool',None,['c','ed']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['enterCommand']=['cmd',None,['c','ec']]
        dData['receiveFocusCommand']=['cmd',None,['c','rfc']]

    if(typ=='scrollField'):
        dData['wordWrap']=['bool',None,['c','ww']]
        dData['text']=['string',None,['c','tx']]
        dData['editable']=['bool',None,['c','ed']]
        #
        dData['enterCommand']=['cmd',None,['c','ec']]
        dData['keyPressCommand']=['cmd',None,['c','kpc']]
        dData['changeCommand']=['cmd',None,['c','cc']]

    if(typ=='checkBox'):
        dData['label']=['string',None,['c','l']]
        dData['value']=['bool',None,['c','v']]
        #
        dData['onCommand']=['cmd',None,['c','onc']]
        dData['offCommand']=['cmd',None,['c','ofc']]
        dData['changeCommand']=['cmd',None,['c','cc']]

    if(typ=='iconTextCheckBox'):
        dData['label']=['string',None,['c','l']]
        dData['image']=['image',None,['c','i']]
        dData['imageOverlayLabel']=['string',None,['c','iol']]
        dData['overlayLabelColor']=['color',None,['c','olc']]
        dData['overlayLabelBackColor']=['colorA',None,['c','olb']]
        dData['style']=['popup',None,['c','st']]
        dData['align']=['popup',None,['c','al']]
        dData['value']=['bool',None,['c','v']]
        #
        dData['onCommand']=['cmd',None,['c','onc']]
        dData['offCommand']=['cmd',None,['c','ofc']]
        dData['changeCommand']=['cmd',None,['c','cc']]

    if(typ=='radioCollection'):
        dData={}
    if(typ=='iconTextRadioCollection'):
        dData={}
    if(typ=='radioButton'):
        dData['label']=['string',None,['c','l']]
        dData['select']=['bool',None,['c','sl']]
        #
        dData['onCommand']=['cmd',None,['c','onc']]
        dData['offCommand']=['cmd',None,['c','ofc']]
        dData['changeCommand']=['cmd',None,['c','cc']]

    if(typ=='iconTextRadioButton'):
        dData['label']=['string',None,['c','l']]
        dData['image']=['image',None,['c','i']]
        dData['imageOverlayLabel']=['string',None,['c','iol']]
        dData['overlayLabelColor']=['color',None,['c','olc']]
        dData['overlayLabelBackColor']=['colorA',None,['c','olb']]
        dData['style']=['popup',None,['c','st']]
        dData['align']=['popup',None,['c','al']]
        dData['select']=['bool',None,['c','sl']]
        #
        dData['onCommand']=['cmd',None,['c','onc']]
        dData['offCommand']=['cmd',None,['c','ofc']]
        dData['changeCommand']=['cmd',None,['c','cc']]

    if(typ=='image'):
        dData['image']=['image',None,['c','i']]
    if(typ=='palettePort'):
        dData['dimensions']=['int2',None,['c','dim']]
        dData['colorEditable']=['bool',None,['c','ced']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]

    if(typ=='canvas'):
        dData['rgbValue']=['color',[1,1,1],['c','rgb']]
        #
        dData['pressCommand']=['cmd',None,['c','pc']]

    if(typ=='text'):
        dData['label']=['string',None,['c','l']]
        dData['align']=['popup',None,['c','al']]
        dData['wordWrap']=['bool',None,['c','ww']]
    if(typ=='intSlider'):
        dData['value']=['int',None,['c','v']]
        dData['minValue']=['int',None,['c','min']]
        dData['maxValue']=['int',10,['c','max']]
        dData['step']=['int',1,['c','s']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['dragCommand']=['cmd',None,['c','dc']]

    if(typ=='floatSlider'):
        dData['value']=['float',None,['c','v']]
        dData['minValue']=['float',None,['c','min']]
        dData['maxValue']=['float',10,['c','max']]
        dData['step']=['float',0.1,['c','s']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['dragCommand']=['cmd',None,['c','dc']]

    if(typ=='intSliderGrp'):
        dData['label']=['string',None,['c','l']]
        dData['extraLabel']=['string',None,['c','el']]
        dData['value']=['int',None,['c','v']]
        dData['minValue']=['int',None,['c','min']]
        dData['maxValue']=['int',10,['c','max']]
        dData['step']=['int',1,['c','s']]
        dData['fieldMinValue']=['int',None,['c','fmn']]
        dData['fieldMaxValue']=['int',None,['c','fmx']]
        dData['columnWidth']=['list',None,['c','cw']]
        dData['field']=['bool',1,['h','f']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['dragCommand']=['cmd',None,['c','dc']]

    if(typ=='colorIndexSliderGrp'):
        dData['label']=['string',None,['c','l']]
        dData['extraLabel']=['string',None,['c','el']]
        dData['value']=['int',None,['c','v']]
        dData['minValue']=['int',None,['c','min']]
        dData['maxValue']=['int',63,['c','max']]
        dData['columnWidth']=['list',None,['c','cw']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['dragCommand']=['cmd',None,['c','dc']]


    if(typ=='colorSliderGrp'):
        dData['label']=['string',None,['c','l']]
        dData['rgbValue']=['color',None,['c','rgb']]
        dData['columnWidth']=['list',None,['c','cw']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['dragCommand']=['cmd',None,['c','dc']]


    if(typ=='floatSliderGrp'):
        dData['label']=['string',None,['c','l']]
        dData['extraLabel']=['string',None,['c','el']]
        dData['value']=['float',None,['c','v']]
        dData['minValue']=['float',None,['c','min']]
        dData['maxValue']=['float',10,['c','max']]
        dData['step']=['float',0.1,['c','s']]
        dData['fieldMinValue']=['float',None,['c','fmn']]
        dData['fieldMaxValue']=['float',None,['c','fmx']]
        dData['precision']=['int',3,['c','pre']]
        dData['columnWidth']=['list',None,['c','cw']]
        dData['field']=['bool',1,['h','f']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]
        dData['dragCommand']=['cmd',None,['c','dc']]

    if(typ=='textScrollList'):
        dData['allowMultiSelection']=['bool',None,['c','ams']]
        #
        dData['selectCommand']=['cmd',None,['c','sc']]
        dData['doubleClickCommand']=['cmd',None,['c','dcc']]
        dData['deleteKeyCommand']=['cmd',None,['c','dkc']]

    if(typ=='treeView'):
        dData['allowReparenting']=['bool',None,['c','arp']]
        dData['numberOfButtons']=['int',None,['c','nb']]
        #
        dData['selectCommand']=['cmd',None,['c','sc']]
        dData['selectionChangedCommand']=['cmd',None,['c','scc']]
        dData['editLabelCommand']=['cmd',None,['c','elc']]
        dData['itemRenamedCommand']=['cmd',None,['c','irc']]
        dData['contextMenuCommand']=['cmd',None,['c','cmc']]
        dData['expandCollapseCommand']=['cmd',None,['c','ecc']]
        dData['dragAndDropCommand']=['cmd',None,['c','dad']]


    if(typ=='progressBar'):
        dData['progress']=['int',None,['c','pr']]
        dData['minValue']=['int',None,['c','min']]
        dData['maxValue']=['int',10,['c','max']]

    if(typ=='separator'):
        dData['style']=['popup',None,['c','st']]
        dData['horizontal']=['bool',None,['c','hr']]


    if(typ=='optionMenu'):
        dData['label']=['string',None,['c','l']]
        dData['select']=['int',None,['c','sl']]
        dData['value']=['string',None,['c','v']]
        #
        dData['changeCommand']=['cmd',None,['c','cc']]

    if(typ=='popupMenu'):
        dData['altModifier']=['bool',None,['c','alt']]
        dData['ctrlModifier']=['bool',None,['c','ctl']]
        dData['shiftModifier']=['bool',None,['c','sh']]
        dData['button']=['int',None,['c','b']]

    if(typ=='menu'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['tearOff']=['bool',None,['h','to']]
        #
        dData['postMenuCommand']=['cmd',None,['c','pmc']]
        dData['postMenuCommandOnce']=['bool',None,['c','pmo']]

    if(typ=='tearOffMenu'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['tearOff']=['bool',1,['h','to']]
        #
        dData['postMenuCommand']=['cmd',None,['c','pmc']]
        dData['postMenuCommandOnce']=['bool',None,['c','pmo']]

    if(typ=='menuItem'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['enable']=['bool',None,['c','en']]
        #
        dData['command']=['cmd',None,['c','c']]

    if(typ=='subMenuItem'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['enable']=['bool',None,['c','en']]
        dData['subMenu']=['bool',1,['h','sm']]
        #
        dData['command']=['cmd',None,['c','c']]
        dData['postMenuCommand']=['cmd',None,['c','pmc']]
        dData['postMenuCommandOnce']=['bool',None,['c','pmo']]

    if(typ=='radioMenuItem'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['enable']=['bool',None,['c','enu']]
        dData['radioButton']=['bool',0,['c','rb']]
        #
        dData['command']=['cmd',None,['c','c']]

    if(typ=='checkBoxMenuItem'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['enable']=['bool',None,['c','en']]
        dData['checkBox']=['bool',0,['c','cb']]
        #
        dData['command']=['cmd',None,['c','c']]

    if(typ=='dividerMenuItem'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['enable']=['bool',None,['c','enu']]
        dData['divider']=['bool',1,['h','d']]

    if(typ=='optionBoxMenuItem'):
        dData={}
        dData['label']=['string',None,['c','l']]
        dData['enable']=['bool',None,['c','en']]
        dData['optionBox']=['bool',1,['h','ob']]
        #
        dData['command']=['cmd',None,['c','c']]

    if(typ=='radioMenuItemCollection'):
        dData={}

    #dock
    if(typ=='dockControl'):
        dData['allowedArea']=['multi',['left','right','top','bottom'],['c','aa']]
        dData['floating']=['bool',None,['c','fl']]
        dData['area']=['popup','right',['c','a']]
        dData['enablePopupOption']=['bool',None,['c','epo']]
        dData['content']=['popup',None,['h','con']]

    #dock
    if(typ=='toolBar'):
        dData['label']=['string',None,['c','l']]
        dData['allowedArea']=['multi',['left','right','top','bottom'],['c','aa']]
        dData['area']=['popup','top',['c','a']]
        dData['content']=['popup',None,['h','con']]

    if(typ=='componentBox'):
        pass
    if(typ=='helpLine'):
        pass
    if(typ=='messageLine'):
        pass
    if(typ=='commandLine'):
        dData['sourceType']=['popup',None,['c','st']]
        dData['numberOfHistoryLines']=['int',20,['c','nhl']]

    return dData
#==

#====================================================================================================
#get list
def sdd_getMenuList():
    return ['menuItem','radioMenuItem','dividerMenuItem','checkBoxMenuItem','optionBoxMenuItem','radioMenuItemCollection']

def sdd_getCtrlList():
    return ['button','iconTextButton','intField','floatField','textField','scrollField','checkBox','iconTextCheckBox','radioCollection','iconTextRadioCollection','radioButton','iconTextRadioButton','image','canvas','text','intSlider','floatSlider','intSliderGrp','floatSliderGrp','colorIndexSliderGrp','colorSliderGrp','textScrollList','treeView','progressBar','optionMenu','separator','dockControl','toolBar','componentBox','helpLine','messageLine','commandLine','palettePort']

def sdd_getLayoutList():
    return ['columnLayout','rowLayout','gridLayout','tabLayout','formLayout','frameLayout','paneLayout','scrollLayout']

def sdd_getMenuLayoutList():
    return ['optionMenu','popupMenu','menu','tearOffMenu','subMenuItem','menuBarLayout']

def sdd_getCollectionList():
    return ['radioCollection','iconTextRadioCollection','radioMenuItemCollection']

def sdd_getCommonPropertyList():
    return ['enable','visible','annotation','width','height','backgroundColor']

sdd_UIDesigner('C:/Users/sundongdong/Desktop/sdd_UIDesigner/icons/')
