#-*- coding: utf-8 -*-
import pymel.core as pm
import os
import sys

print(__file__)
print(os.path.abspath(__file__))
print(os.path.dirname(os.path.abspath(__file__)))

object = selected()

class reName(object):
    '''
    rename tool
    '''
    
    def __init__(self, object):
        self.object_ = ''
        if isinstance(object, list):
            self.object_ = object
        else:
            self.object_ = [object]
        
    def getPad(self):
        getPadStr = pm.textField('pad',q=1,tx=1)
        if getPadStr:
            try:
                getPadToInt = int(getPadStr)
                return getPadToInt
            except:
                pm.warning('Only numbers are possible.')
                pm.textField('pad',e=1,tx = '1')
        elif getPadStr == '':
            pm.textField('pad',e=1,tx = '1')        
    
    def getName(self, name_):
        getName = pm.textField(name_,q=1,tx=1)
        if getName:
            return getName
        
        return None
    
    def makeName(self, getName , num):
        num = 10**num
        stInt = 0
        sel = pm.ls(sl=1)
        if sel:
            for x in sel:
                getPad = str(num + stInt)[1::]
                makeName = getName + getPad
                x.rename(makeName)
                stInt += 1
    
    def appendName(self, getName, mode=None):
        sel = pm.ls(sl=1)
        if sel:
            for x in sel:
                if mode ==0:
                    x.rename(getName + x)
                if mode ==1:
                    x.rename(x + getName)
    
    def changeName(self, oldName, newName):
        sel = pm.ls(sl=1)
        if sel:
            for x in sel:
                changeName = x.replace(oldName, newName)
                print changeName
                x.rename(changeName)
        
    def runRename(self):
        getRename = getName('getName')
        getPadNum = getPad()
        makeName(getRename , getPadNum)
        
    def appendPrefix(self):
        getRename = getName('getPrefix')
        appendName(getRename, mode =0)
        print getRename
        
    def appendSuffix(self):
        getRename = getName('getSuffix')
        appendName(getRename, mode =1)
        print getRename
    
    def oldChange(self):
        oldName = getName('getOldName')
        newName = getName('getNewName')
        changeName(oldName, newName)
        print oldName, newName
    
    def runWin(self):
        if pm.window('reNamer',ex=1):
            pm.deleteUI('reNamer') 
        getUi = pm.loadUI(f = allPath)
        pm.showWindow(getUi)
    



















