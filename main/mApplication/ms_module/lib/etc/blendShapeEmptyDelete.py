import pymel.core as pm

sel = pm.ls(sl=1,fl=1,r=1)

blendnode = sel[0].listHistory(type='blendShape')[0]
or_object = sel[0]
attrList = [blendnode.w[w] for w in range(len(blendnode.w.get()))]
print('Attribute Number is {}'.format(len(attrList)))
sourceList = [a.listConnections(s=1,d=0,p=1) for a in attrList]

num = 0
for i in sourceList:
    if not i:
        print('Empty Attribute {}'.format(blendnode.w[num]))
    else:
        pass
    num +=1
    
for a,attr in enumerate(attrList):
    if sourceList[a]:
        pm.disconnectAttr(sourceList[a][0], attr)

pm.delete(blendnode.w[num])

for a,attr in enumerate(attrList):
    if sourceList[a]:
        pm.connectAttr(sourceList[a][0], attr)
