import pymel.core as pm
import os
import sys
uiPath = r'C:\msscoding\pythonWorkspace\main\mApplication\maya\lib\ui'
uiName = 'reNamer.ui'
allPath = '\\'.join([uiPath , uiName])

def getPad():
    getPadStr = pm.textField('pad',q=1,tx=1)
    if getPadStr:
        try:
            getPadToInt = int(getPadStr)
            return getPadToInt
        except:
            pm.warning('어이 친구 신사답게 행동해.')
            pm.textField('pad',e=1,tx = '1')
    elif getPadStr == '':
        pm.textField('pad',e=1,tx = '1')        

def getName(name_):
    getName = pm.textField(name_,q=1,tx=1)
    if getName:
        return getName
    
    return None

def makeName(getName , num):
    num = 10**num
    stInt = 0
    sel = pm.ls(sl=1)
    if sel:
        for x in sel:
            getPad = str(num + stInt)[1::]
            makeName = getName + getPad
            x.rename(makeName)
            stInt += 1

def appendName(getName, mode=None):
    sel = pm.ls(sl=1)
    if sel:
        for x in sel:
            if mode ==0:
                x.rename(getName + x)
            if mode ==1:
                x.rename(x + getName)

def changeName(oldName, newName):
    sel = pm.ls(sl=1)
    if sel:
        for x in sel:
            changeName = x.replace(oldName, newName)
            print changeName
            x.rename(changeName)
    
def runRename():
    getRename = getName('getName')
    getPadNum = getPad()
    makeName(getRename , getPadNum)
    
def appendPrefix():
    getRename = getName('getPrefix')
    appendName(getRename, mode =0)
    print getRename
    
def appendSuffix():
    getRename = getName('getSuffix')
    appendName(getRename, mode =1)
    print getRename

def oldChange():
    oldName = getName('getOldName')
    newName = getName('getNewName')
    changeName(oldName, newName)
    print oldName, newName

def runWin():
    if pm.window('reNamer',ex=1):
        pm.deleteUI('reNamer') 
    getUi = pm.loadUI(f = allPath)
    pm.showWindow(getUi)
    
    
runWin()



















