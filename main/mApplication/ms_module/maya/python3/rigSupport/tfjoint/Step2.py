import maya.cmds as cmds
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
import math

def step2_previewDeformedAndError(
    originalMesh, 
    targetMesh, 
    skinCluster
):
    """
    1) Step1과 동일하게, Skin 데이터 + Original/Target을 수집
    2) computeDeformedPoints()로 '현재 조인트 상태'에서 OriginalMesh가 어떻게 디포밍되었는지 계산
    3) 디포밍 결과 vs TargetMesh 간 RMSE 계산
    4) 결과를 콘솔에 출력
    5) 여전히 '조인트 이동'은 하지 않음
    """
    print("=== Step2: Preview Deformed Points & Calculate Error ===")

    # -- (1) Skin Data & Mesh Check (간단 재구현 or step1 함수를 재사용) --
    selList = om.MSelectionList()
    selList.add(skinCluster)
    skinObj = om.MObject()
    selList.getDependNode(0, skinObj)
    fnSkin = oma.MFnSkinCluster(skinObj)
    
    geoCount = fnSkin.numOutputConnections()
    if geoCount<1:
        raise RuntimeError("SkinCluster에 연결된 지오메트리가 없습니다.")
    geoIndex = fnSkin.indexForOutputConnection(0)
    dagMesh = om.MDagPath()
    fnSkin.getPathAtIndex(geoIndex, dagMesh)
    fnMesh = om.MFnMesh(dagMesh)
    numVertices = fnMesh.numVertices()
    
    # 인플루언스
    infPaths = om.MDagPathArray()
    fnSkin.influenceObjects(infPaths)
    infCount = infPaths.length()
    
    # bindPreMatrix
    invBindMats= []
    for i in range(infCount):
        plugName = f"{skinCluster}.bindPreMatrix[{i}]"
        matList= cmds.getAttr(plugName)
        m= om.MMatrix()
        om.MScriptUtil.createMatrixFromList(matList, m)
        invBindMats.append(m)

    # Weights
    compFn= om.MFnSingleIndexedComponent()
    compObj= compFn.create(om.MFn.kMeshVertComponent)
    compFn.setCompleteData(numVertices)
    wArr= om.MDoubleArray()
    util= om.MScriptUtil()
    infCountPtr= util.asUintPtr()
    fnSkin.getWeights(dagMesh, compObj, wArr, infCountPtr)
    
    weights2D= []
    for vIdx in range(numVertices):
        base= vIdx*infCount
        wList= [wArr[base+i] for i in range(infCount)]
        weights2D.append(wList)
    
    # OriginalMesh (object space)
    selOrig= om.MSelectionList()
    selOrig.add(originalMesh)
    dagOrig= om.MDagPath()
    selOrig.getDagPath(0, dagOrig)
    fnOM= om.MFnMesh(dagOrig)
    numVtxOrig= fnOM.numVertices()
    
    # Target
    selTar= om.MSelectionList()
    selTar.add(targetMesh)
    dagTar= om.MDagPath()
    selTar.getDagPath(0, dagTar)
    fnTM= om.MFnMesh(dagTar)
    numVtxTar= fnTM.numVertices()
    
    if numVtxOrig!= numVtxTar:
        raise RuntimeError("Original/Target vertex count mismatch.")
    
    # OriginalMesh object space points
    origPosArray= om.MPointArray()
    fnOM.getPoints(origPosArray, om.MSpace.kObject)
    origPositions= []
    for i in range(numVtxOrig):
        origPositions.append(origPosArray[i])
    
    # TargetMesh world space
    tarPosArr= om.MPointArray()
    fnTM.getPoints(tarPosArr, om.MSpace.kWorld)
    targetPts= []
    for i in range(numVtxTar):
        targetPts.append(tarPosArr[i])
    
    # -- (2) computeDeformedPoints: Original -> current world --
    #     P_def = sum_j [ w_j * ( Mj * invBind_j * P_orig ) ]
    #     origPos는 오브젝트 스페이스이므로, invBindMat도 그 전제로 계산
    # => "Maya에서 MSpace.kObject" bind 시, 보통 invBindMat은 해당 로컬기준
    #    하지만 실제론 kWorld bind도 가능하므로 Scene 상황에 따라 체크 필요
    # 여기선 일반적인 kObject bind를 가정
    jointWorldMats= []
    for i in range(infCount):
        jDag= infPaths[i]
        Mj= jDag.inclusiveMatrix()  # world
        jointWorldMats.append(Mj)
    
    # 디포밍 결과
    deformedPts= []
    for vIdx in range(numVtxOrig):
        pOrig= om.MPoint(origPositions[vIdx])
        accum= om.MPoint(0,0,0)
        for jIdx in range(infCount):
            w= weights2D[vIdx][jIdx]
            if abs(w)<1e-8:
                continue
            invB= invBindMats[jIdx]
            Mj= jointWorldMats[jIdx]
            tmp= pOrig* invB
            tmp= tmp* Mj
            accum.x+= w* tmp.x
            accum.y+= w* tmp.y
            accum.z+= w* tmp.z
        deformedPts.append(accum)
    
    # -- (3) RMSE vs Target(world)
    # TargetMesh는 world space 이므로, deformedPts도 world space로 해석
    # => OK. (단, bindPose가 object space였는데 inclusiveMatrix를 곱하면?)
    #    보통 Maya의 invBindMatrix는 object->world bind 시점이므로 괜찮.
    
    if len(deformedPts)!= numVtxTar:
        raise RuntimeError("Length mismatch??")
    
    sumSq= 0.0
    for i in range(numVtxTar):
        diff= om.MVector(deformedPts[i]- targetPts[i])
        sumSq+= diff* diff
    rmse= math.sqrt(sumSq/ numVtxTar) if numVtxTar>0 else 0.0
    
    # (4) Print
    print("* step2_previewDeformedAndError:")
    print(f"   - deformedPts len= {len(deformedPts)}, targetPts= {len(targetPts)}")
    print(f"   - RMSE= {rmse:.6f}")
    print("========================================\n")

def example_run_step2():
    """
    예시:
      step2_previewDeformedAndError("pSphere1","pSphere2","skinCluster1")
    """
    step2_previewDeformedAndError(
        originalMesh="pSphere1",
        targetMesh="pSphere2",
        skinCluster="skinCluster1"
    )
