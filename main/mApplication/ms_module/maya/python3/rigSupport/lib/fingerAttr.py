import pymel.core as pm
from collections import OrderedDict

def FingerAttr_(target):
    CurlDict = OrderedDict()
    CurlDict['IndexCurl'] = ['Index',3]
    CurlDict['MiddleCurl'] = ['Middle',3]
    CurlDict['RingCurl'] = ['Ring',3]
    CurlDict['PinkyCurl'] = ['Pinky',3]
    CurlDict['IndexCurl'] = ['Index',3]
    
    spreadlist = ['IndexSpread','MiddleSpread','RingSpread','PinkySpread']
    rolllist = ['IndexRoll','MiddleRoll','RingRoll','PinkyRoll'] 
    vislist = ['IKCtrlVis','FKCtrlVis']
    
    for c in CurlDict.keys():
        pm.addAttr(target,ln='{}Drive'.format(c),nn='____',at='enum',en=c,k=1)
        for i in range(CurlDict[c][1]):
            attName = '{0}{1}'.format(CurlDict[c][0],i+1)
            pm.addAttr(target,ln=attName,at='double',min=-10,max=10,dv=0,k=1)
    
    
    pm.addAttr(target,ln='SpreadDrive',nn='____',at='enum',en='Spread',k=1)
    for s in spreadlist:
        pm.addAttr(target,ln=s,at='double',min=-10,max=10,dv=0,k=1)
    
    pm.addAttr(target,ln='RollDrive',nn='____',at='enum',en='Roll',k=1)
    for r in rolllist:
        pm.addAttr(target,ln=r,at='double',min=-10,max=10,dv=0,k=1)
        
    pm.addAttr(target,ln='VisDrive',nn='____',at='enum',en='CtrlVis',k=1)
    for v in vislist:
        pm.addAttr(target,ln=v,at='bool',dv=0,k=1)

sel = pm.ls(sl=1,fl=1,r=1)
FingerAttr_(sel[0])