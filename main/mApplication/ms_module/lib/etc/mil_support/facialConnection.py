from pymel.core import *

def addAttr_(object_, name_):
    addAttr(object_, ln=name_, at='double', dv=0)

EyeList = ['Blink_Up','Blink_Down']
MouthExpList = ['A','E','I','O','U','Big_A']
CheekList = ['Cheek_Up','Cheek']
BrowExpList = ['Sad','Angry','Squeeze']
BrowSlList = ['Brow_Up','Brow_Down','Brow_In','Brow_Out']
MouthList = ['Mouth_In','Mouth_Out','Mouth_Up','Mouth_Down']
SideName = ['L','R']
SliceName = ['Left','Middle','Right']


connection = PyNode('FaceConnection')


listA = EyeList + CheekList + MouthList + BrowExpList
for e in listA:
    for s in SideName:
        name_ = '{0}_{1}'.format(e,s)
        DrvName_ = '{0}_{1}Drv'.format(e,s)
        addAttr_(connection, name_)
        addAttr_(connection, DrvName_)

for e in BrowSlList:
    for s in SideName:
        for sl in SliceName:
            name_ = '{0}_{1}_{2}'.format(e,s,sl)
            addAttr_(connection, name_)

for me in MouthExpList:
    name_ = '{0}Drv'.format(me)
    addAttr_(connection, me)
    addAttr_(connection, name_)
    
