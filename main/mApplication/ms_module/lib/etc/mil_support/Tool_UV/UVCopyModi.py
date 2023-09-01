import pymel.core as pm
#UV 옮길것 선택 후, UV의 옮겨질 것들을 차례로 선택하세요.
def FindShMesh(obj):
	
	objSh=pm.listRelatives(obj, s=1, f=1)
	o = ""
	origObj = ""
	connectMesh = []
	cmSz = 0
	for o in objSh:
		if not "*Shape*" in o:
			continue
			
		connectMesh=pm.listConnections((str(o) + ".instObjGroups[0]"), 
			s=0, d=1)
		cmSz=len(connectMesh)
		if cmSz == 0:
			continue
			
		origObj=str(o)
		
	if origObj == "":
		return objSh[0]
		
	
	else:
		return origObj
		
	


def FindOrigMesh(obj):
	
	objSh=pm.listRelatives(obj, s=1, f=1)
	o = ""
	origObj = ""
	connectMesh = []
	cmSz = 0
	for o in objSh:
		if not "*Orig*" in o:
			continue
			
		connectMesh=pm.listConnections((str(o) + ".worldMesh[0]"), 
			s=0, d=1)
		cmSz=len(connectMesh)
		if cmSz == 0:
			continue
			
		origObj=str(o)
		
	if origObj == "":
		return "None"
		
	
	else:
		return origObj
		
	


sl=pm.ls(l=1, sl=1)
orig = ""
sh = ""
uvmap = []

slSz=len(sl)

sc=sl[0]
tg=sl[1:]
i = 0
for i in xrange(len(tg)):
	sh=FindShMesh(sl[i])
	uvmap=pm.polyUVSet(sh, q=1, cuv=1)
	orig=FindOrigMesh(sl[0])
	if orig == "None":
		orig=FindShMesh(sl[0])
		pm.select(orig,tg[i])
		
		pm.transferAttributes(fuv=0, uvs=2, pos=0, clb=1, sus=str(uvmap[0]), sm=3, spa=1, nml=0, col=2)
		pm.delete(tg[i],ch=1)
		
	
	else:
		pm.setAttr((orig + ".intermediateObject"), 
			0)
		pm.select(sl[i])
		pm.select(orig, add=1)
		pm.transferAttributes(fuv=0, uvs=2, pos=0, clb=1, sus=uvs[0], sm=3, spa=1, nml=0, col=2)
		pm.delete(orig,ch=1)
		pm.setAttr((orig + ".intermediateObject"), 
			1)
		
	

