import maya.cmds as cmds
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma

def step1_collectData(originalMesh, targetMesh, skinCluster):
    """
    Step 1: 스킨 & 메시 기본 정보 수집 + 출력
    """
    # 1) 스킨 찾아서 데이터 수집
    data = collectSkinData(skinCluster)  # 아래 정의
    dagMesh = data["dagMesh"]
    numVtx  = data["numVertices"]
    infPaths= data["influencePaths"]
    invBind = data["inverseBindMatrices"]
    weights2D = data["weights"]
    origPos   = data["origPositions"]
    
    print("[Step1] OriginalMesh & Skin Info")
    print("  - dagMesh =", dagMesh.fullPathName())
    print("  - numVertices =", numVtx)
    print("  - # of Influence Joints =", infPaths.length())
    
    # influence 조인트 이름들
    for i in range(infPaths.length()):
        jDag = infPaths[i]
        print("    Joint[%d]: %s" % (i, jDag.fullPathName()))
    
    # weights 대략 체크
    # (예) 첫 버텍스의 weights, 또는 가중치 범위
    allW = []
    for vIdx in range(numVtx):
        allW.extend(weights2D[vIdx])
    minW = min(allW)
    maxW = max(allW)
    print("  - weight range: (%.3f ~ %.3f)" % (minW, maxW))
    
    # 2) TargetMesh
    selTar = om.MSelectionList()
    selTar.add(targetMesh)
    dagTar= om.MDagPath()
    selTar.getDagPath(0, dagTar)
    fnTar = om.MFnMesh(dagTar)
    tarVtx = fnTar.numVertices()
    print("[Step1] TargetMesh = %s, numVertices= %d" % (dagTar.fullPathName(), tarVtx))
    
    # 3) 동일 토폴로지인지 (numVertices 같아야 함)
    if tarVtx != numVtx:
        print("Warning: TargetMesh vertex count != OriginalMesh vertex count!")
    else:
        print("OK: 동일한 vert 수.")
    
    # origPositions 체크
    print("  - Example of origPositions[0..2]:")
    for i in range(min(3, numVtx)):
        p = origPos[i]
        print("    vIdx=%d => (%.3f, %.3f, %.3f)" % (i, p.x, p.y, p.z))
    
    print("[Step1] Done.")

def collectSkinData(skinClusterName, shapeOffset=(0,0,0)):
    """
    (이전 예시와 유사)
    스킨 & 메시 기본 정보 추출
    """
    selList = om.MSelectionList()
    selList.add(skinClusterName)
    skinObj = om.MObject()
    selList.getDependNode(0, skinObj)
    
    fnSkin = oma.MFnSkinCluster(skinObj)
    
    geoCount = fnSkin.numOutputConnections()
    if geoCount<1:
        raise RuntimeError("No geometry in skinCluster!")
    geoIndex = fnSkin.indexForOutputConnection(0)
    dagMesh = om.MDagPath()
    fnSkin.getPathAtIndex(geoIndex, dagMesh)
    
    fnMesh = om.MFnMesh(dagMesh)
    numVertices = fnMesh.numVertices()
    
    # 인플루언스
    influencePaths= om.MDagPathArray()
    fnSkin.influenceObjects(influencePaths)
    infCount= influencePaths.length()
    
    # bindPreMatrix -> Inverse Bind
    invBindMats=[]
    for i in range(infCount):
        plugName = "%s.bindPreMatrix[%d]" % (skinClusterName, i)
        matList = cmds.getAttr(plugName)
        mm= om.MMatrix()
        om.MScriptUtil.createMatrixFromList(matList, mm)
        invBindMats.append(mm)
    
    # weights
    compFn= om.MFnSingleIndexedComponent()
    compObj= compFn.create(om.MFn.kMeshVertComponent)
    compFn.setCompleteData(numVertices)
    wArr= om.MDoubleArray()
    util= om.MScriptUtil()
    infCountPtr= util.asUintPtr()
    fnSkin.getWeights(dagMesh, compObj, wArr, infCountPtr)
    
    weights2D=[]
    for vIdx in range(numVertices):
        base= vIdx*infCount
        wList= [wArr[base+j] for j in range(infCount)]
        weights2D.append(wList)
    
    # original Positions(바인드포즈 or 현재mesh)
    # + shapeOffset
    origPosArray= om.MPointArray()
    fnMesh.getPoints(origPosArray, om.MSpace.kObject)
    ox,oy,oz= shapeOffset
    origPositions=[]
    for i in range(numVertices):
        p= origPosArray[i]
        p.x+= ox
        p.y+= oy
        p.z+= oz
        origPositions.append(p)
    
    return {
        "dagMesh": dagMesh,
        "numVertices": numVertices,
        "influencePaths": influencePaths,
        "inverseBindMatrices": invBindMats,
        "weights": weights2D,
        "origPositions": origPositions
    }

# 사용 예시:
def example_run_step1():
    originalMesh= "pSphere1"
    targetMesh  = "pSphere2"
    skinCluster = "skinCluster1"
    
    step1_collectData(originalMesh, targetMesh, skinCluster)
