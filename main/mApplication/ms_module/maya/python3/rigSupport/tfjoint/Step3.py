import math
import maya.cmds as cmds
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma

def step3_translationalMatching(
    originalMesh,
    targetMesh,
    skinCluster,
    maxIters=10,
    tolerance=0.001,
    weightThreshold=0.05,
    alpha=0.5,       # 점진적 이동 (0<alpha<=1)
    debug=True
):
    """
    - 조인트 j마다 weight_{v,j}> weightThreshold인 버텍스들을 모아,
      이동량(targetPts[v]- currentPts[v])을 weight로 가중 평균 => 조인트의 '월드 위치'를 이동.
    - 회전/스케일은 고려하지 않음(간단히 조인트 위치만 옮겨).
    - alpha<1 => 한 번에 전부 이동하지 않고 점진적 적용.
    - pass1: 부모->자식 / pass2: 자식->부모 + iteration
    """

    print("=== step3_translationalMatching (simple) ===")
    
    # (1) Skin Data
    selList = om.MSelectionList()
    selList.add(skinCluster)
    skinObj = om.MObject()
    selList.getDependNode(0, skinObj)
    fnSkin = oma.MFnSkinCluster(skinObj)
    
    geoCount= fnSkin.numOutputConnections()
    if geoCount<1:
        raise RuntimeError("SkinCluster에 연결된 지오메트리가 없습니다.")
    geoIndex= fnSkin.indexForOutputConnection(0)
    dagMesh= om.MDagPath()
    fnSkin.getPathAtIndex(geoIndex, dagMesh)
    fnMesh= om.MFnMesh(dagMesh)
    numVtx= fnMesh.numVertices()
    
    infPaths= om.MDagPathArray()
    fnSkin.influenceObjects(infPaths)
    infCount= infPaths.length()
    
    # bindPreMatrix -> invBind
    invBindMats= []
    for i in range(infCount):
        plugName= f"{skinCluster}.bindPreMatrix[{i}]"
        matList= cmds.getAttr(plugName)
        m= om.MMatrix()
        om.MScriptUtil.createMatrixFromList(matList, m)
        invBindMats.append(m)
    
    # weights
    compFn= om.MFnSingleIndexedComponent()
    compObj= compFn.create(om.MFn.kMeshVertComponent)
    compFn.setCompleteData(numVtx)
    wArr= om.MDoubleArray()
    util= om.MScriptUtil()
    infCountPtr= util.asUintPtr()
    fnSkin.getWeights(dagMesh, compObj, wArr, infCountPtr)
    weights2D= []
    for vIdx in range(numVtx):
        base= vIdx* infCount
        wList= [wArr[base+j] for j in range(infCount)]
        weights2D.append(wList)
    
    # Original Mesh
    selOrig= om.MSelectionList()
    selOrig.add(originalMesh)
    dagOrig= om.MDagPath()
    selOrig.getDagPath(0, dagOrig)
    fnOM= om.MFnMesh(dagOrig)
    numVtx_orig= fnOM.numVertices()
    
    # Target Mesh
    selTar= om.MSelectionList()
    selTar.add(targetMesh)
    dagTar= om.MDagPath()
    selTar.getDagPath(0, dagTar)
    fnTar= om.MFnMesh(dagTar)
    numVtx_tar= fnTar.numVertices()
    
    if numVtx_orig!= numVtx_tar:
        raise RuntimeError("Original vs Target : mismatch vertex count.")
    
    # original object space points
    origPosArr= om.MPointArray()
    fnOM.getPoints(origPosArr, om.MSpace.kObject)
    origPositions= [origPosArr[i] for i in range(numVtx_orig)]
    
    # target world
    tarPosArr= om.MPointArray()
    fnTar.getPoints(tarPosArr, om.MSpace.kWorld)
    targetPts= [tarPosArr[i] for i in range(numVtx_tar)]
    
    # (2) Helper: computeDeformedPoints
    def computeDeformedPoints():
        # 조인트 world
        jWorld= []
        for i in range(infCount):
            jDag= infPaths[i]
            Mj= jDag.inclusiveMatrix()
            jWorld.append(Mj)
        outPts= []
        for vIdx in range(numVtx):
            pO= origPositions[vIdx]
            accum= om.MPoint(0,0,0)
            for jIdx in range(infCount):
                w= weights2D[vIdx][jIdx]
                if abs(w)<1e-8:
                    continue
                invB= invBindMats[jIdx]
                Mj= jWorld[jIdx]
                tmp= pO* invB
                tmp= tmp* Mj
                accum.x+= w* tmp.x
                accum.y+= w* tmp.y
                accum.z+= w* tmp.z
            outPts.append(accum)
        return outPts
    
    # (3) RMSE
    def computeRMSE(deformed):
        import math
        sumSq=0.0
        for i in range(numVtx):
            diff= om.MVector(deformed[i]- targetPts[i])
            sumSq+= diff* diff
        return math.sqrt(sumSq/ numVtx) if numVtx>0 else 0.0
    
    # (4) Joint -> vtx weight>threshold pick
    #    => vtx 이동량 = (target[v] - currentDeformed[v])
    #    => weighted average => Joint world offset
    def moveJointByWeightedOffset(jDag, jIdx, deformedPts):
        """
        1) 찾기: weight_{v, jIdx} >= weightThreshold
        2) 이동량: sum(w_{v,j}*(target[v]- deformed[v])) / sum(w_{v,j})
        3) 조인트 world pos += offset
        4) local= parent^-1* newWorld
        """
        wSum=0.0
        offset= om.MVector(0,0,0)
        for vIdx in range(numVtx):
            w= weights2D[vIdx][jIdx]
            if w< weightThreshold:
                continue
            # 이동량
            delta= om.MVector(targetPts[vIdx] - deformedPts[vIdx])
            offset+= delta* w
            wSum+= w
        if wSum< 1e-8:
            return  # skip
        offset/= wSum
        
        # alpha
        offset.x*= alpha
        offset.y*= alpha
        offset.z*= alpha
        
        # apply world offset => newWorldPos= oldWorldPos + offset
        # => local= parent^-1*(translate)
        oldWorld= jDag.inclusiveMatrix()
        
        # oldWorld의 t추출
        oldTM= om.MTransformationMatrix(oldWorld)
        oldPos= oldTM.translation(om.MSpace.kWorld)
        newPos= om.MVector(oldPos+ offset)
        
        # 로테이션/스케일은 그대로 유지 => 
        # => newWorld= ( oldRot/scale + newPos )
        # MTransformationMatrix로 간단 조립
        newMT= om.MTransformationMatrix(oldWorld)
        newMT.setTranslation(newPos, om.MSpace.kWorld)
        newWorld= newMT.asMatrix()
        
        # local= parent^-1* newWorld
        parentDag= om.MDagPath(jDag)
        parentDag.pop()
        if parentDag.isValid():
            parentWM= parentDag.inclusiveMatrix()
        else:
            parentWM= om.MMatrix()
        invParent= parentWM.inverse()
        
        newLocal= newWorld* invParent  # 또는 invParent* newWorld (Maya의 순서 확인)
        # Maya 보통 local= parent^-1* childWorld => childWorld= parentWorld* local
        # => childLocal= invParent* newWorld
        # => check the order carefully
        # 아래에는 parent^-1이 앞으로 와야 정석: newLocal= invParent* newWorld
        #   => script depends on how you interpret. We'll do invParent* newWorld for consistency:
        
        finalTM= om.MTransformationMatrix(newLocal)
        fPos= finalTM.translation(om.MSpace.kWorld)
        fQ= finalTM.rotation()
        euler= fQ.asEulerRotation()
        import math
        eDeg= (math.degrees(euler.x), math.degrees(euler.y), math.degrees(euler.z))
        # scale
        sUtil= om.MScriptUtil()
        sUtil.createFromList([0,0,0],3)
        sp= sUtil.asDoublePtr()
        finalTM.getScale(sp, om.MSpace.kObject)
        fsx= om.MScriptUtil.getDoubleArrayItem(sp,0)
        fsy= om.MScriptUtil.getDoubleArrayItem(sp,1)
        fsz= om.MScriptUtil.getDoubleArrayItem(sp,2)
        
        jName= jDag.fullPathName()
        if debug:
            print(f"    {jName}: offset=({offset.x:.3f},{offset.y:.3f},{offset.z:.3f}), newLocal=> trans=({fPos.x:.3f},{fPos.y:.3f},{fPos.z:.3f}), euler={eDeg}")
        
        cmds.xform(jName, ws=False,
                   translation=(fPos.x, fPos.y, fPos.z),
                   rotation=eDeg,
                   scale=(fsx,fsy,fsz))
    
    # (5) iteration
    orderedJoints= getJointHierarchyOrder(infPaths)
    reversedJoints= [orderedJoints[i] for i in range(len(orderedJoints)-1,-1,-1)]
    
    for it in range(maxIters):
        # compute deformed
        currDef= computeDeformedPoints()
        rmse= computeRMSE(currDef)
        if debug:
            print(f"\n[Iter {it}] RMSE= {rmse:.6f}")
        if rmse< tolerance:
            if debug:
                print(f"  => break (tolerance).")
            break
        
        # pass1: parent->child
        if debug:
            print("[Pass1: parent->child (translation-only)]")
        for jDag in orderedJoints:
            jName= jDag.fullPathName()
            # find jIdx
            jIdx= -1
            for idx in range(infCount):
                if infPaths[idx].fullPathName()== jName:
                    jIdx= idx
                    break
            if jIdx<0:
                continue
            # moveJointByWeightedOffset
            moveJointByWeightedOffset(jDag, jIdx, currDef)
        
        # pass2: child->parent
        if debug:
            print("[Pass2: child->parent (translation-only)]")
        newDef= computeDeformedPoints()
        for jDag in reversedJoints:
            jName= jDag.fullPathName()
            jIdx= -1
            for idx in range(infCount):
                if infPaths[idx].fullPathName()== jName:
                    jIdx= idx
                    break
            if jIdx<0:
                continue
            moveJointByWeightedOffset(jDag, jIdx, newDef)
    
    print("=== step3_translationalMatching done ===")

def getJointHierarchyOrder(infPaths):
    nameToDag= {}
    childrenMap= {}
    for i in range(infPaths.length()):
        d= infPaths[i]
        jName= d.fullPathName()
        nameToDag[jName]= d
        childrenMap[jName]= []
    allNames= list(nameToDag.keys())
    for jName in allNames:
        dag= nameToDag[jName]
        pDag= om.MDagPath(dag)
        pDag.pop()
        if pDag.isValid():
            pName= pDag.fullPathName()
            if pName in nameToDag:
                childrenMap[pName].append(jName)
    rootList=[]
    for jName in allNames:
        pDag= om.MDagPath(nameToDag[jName])
        pDag.pop()
        if not pDag.isValid():
            rootList.append(jName)
        else:
            pName= pDag.fullPathName()
            if pName not in nameToDag:
                rootList.append(jName)
    visited=[]
    def dfs(n):
        visited.append(n)
        for c in childrenMap[n]:
            if c not in visited:
                dfs(c)
    for r in rootList:
        if r not in visited:
            dfs(r)
    return [nameToDag[n] for n in visited]

def example_run_trans():
    step3_translationalMatching(
        originalMesh="pSphere1",
        targetMesh="pSphere2",
        skinCluster="skinCluster1",
        maxIters=20,
        tolerance=0.0001,
        weightThreshold=0.05,
        alpha=0.5,  # 한 번에 절반만 이동
        debug=True
    )