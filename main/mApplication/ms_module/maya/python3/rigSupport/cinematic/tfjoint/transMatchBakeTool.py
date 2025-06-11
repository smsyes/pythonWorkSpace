import math
import maya.cmds as cmds
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma

def transMatch_oneIteration(
    originalMesh, 
    targetMesh,
    skinCluster,
    weightThreshold=0.05,
    alpha=0.5,
    debug=False
):
    """
    'Translational Matching'을 
    - '부모->자식' pass1
    - '자식->부모' pass2
    단 한 번씩만 수행하는 버전.
    
    => 이 함수는 '현재 프레임'에서 OriginalMesh 디포밍 상태 vs TargetMesh를 비교해,
       Joint들을 한 번씩만 이동. (회전/스케일 없음)
    """
    # 1) Data 준비 (Skin, Weights, InvBind, etc.)
    selList= om.MSelectionList()
    selList.add(skinCluster)
    skinObj= om.MObject()
    selList.getDependNode(0, skinObj)
    fnSkin= oma.MFnSkinCluster(skinObj)
    
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
    
    invBindMats= []
    for i in range(infCount):
        plugName= f"{skinCluster}.bindPreMatrix[{i}]"
        matList= cmds.getAttr(plugName)
        m= om.MMatrix()
        om.MScriptUtil.createMatrixFromList(matList, m)
        invBindMats.append(m)
    
    # Weights
    compFn= om.MFnSingleIndexedComponent()
    compObj= compFn.create(om.MFn.kMeshVertComponent)
    compFn.setCompleteData(numVtx)
    wArr= om.MDoubleArray()
    util= om.MScriptUtil()
    infCountPtr= util.asUintPtr()
    fnSkin.getWeights(dagMesh, compObj, wArr, infCountPtr)
    weights2D= []
    for vIdx in range(numVtx):
        base= vIdx*infCount
        wList= [wArr[base+j] for j in range(infCount)]
        weights2D.append(wList)
    
    # Original
    selOrig= om.MSelectionList()
    selOrig.add(originalMesh)
    dagOrig= om.MDagPath()
    selOrig.getDagPath(0, dagOrig)
    fnOM= om.MFnMesh(dagOrig)
    numVtx_orig= fnOM.numVertices()
    
    # Target
    selTar= om.MSelectionList()
    selTar.add(targetMesh)
    dagTar= om.MDagPath()
    selTar.getDagPath(0, dagTar)
    fnTar= om.MFnMesh(dagTar)
    numVtx_tar= fnTar.numVertices()
    if numVtx_orig!= numVtx_tar:
        raise RuntimeError("Original vs Target mismatch vertex count.")
    
    # Original points (object space)
    origPosArr= om.MPointArray()
    fnOM.getPoints(origPosArr, om.MSpace.kObject)
    origPositions= [origPosArr[i] for i in range(numVtx_orig)]
    
    # Target points (world)
    tarPosArr= om.MPointArray()
    fnTar.getPoints(tarPosArr, om.MSpace.kWorld)
    targetPts= [tarPosArr[i] for i in range(numVtx_tar)]
    
    # computeDeformed
    def computeDeformedPoints():
        jWorld= []
        for i in range(infCount):
            Mj= infPaths[i].inclusiveMatrix()
            jWorld.append(Mj)
        out= []
        for vIdx in range(numVtx):
            pO= origPositions[vIdx]
            acc= om.MPoint(0,0,0)
            for jIdx in range(infCount):
                w= weights2D[vIdx][jIdx]
                if abs(w)<1e-8:
                    continue
                invB= invBindMats[jIdx]
                Mj= jWorld[jIdx]
                tmp= pO* invB
                tmp= tmp* Mj
                acc.x+= w* tmp.x
                acc.y+= w* tmp.y
                acc.z+= w* tmp.z
            out.append(acc)
        return out
    
    # joint move
    def moveJointByWeightedOffset(jDag, jIdx, defPts):
        wSum=0.0
        offset= om.MVector(0,0,0)
        for vIdx in range(numVtx):
            w= weights2D[vIdx][jIdx]
            if w< weightThreshold:
                continue
            delta= om.MVector(targetPts[vIdx] - defPts[vIdx])
            offset+= delta* w
            wSum+= w
        if wSum<1e-8:
            return
        offset/= wSum
        # alpha
        offset*= alpha
        
        oldWorld= jDag.inclusiveMatrix()
        oldTM= om.MTransformationMatrix(oldWorld)
        oldPos= oldTM.translation(om.MSpace.kWorld)
        newPos= oldPos+ offset
        
        # keep rotation/scale
        newMT= om.MTransformationMatrix(oldWorld)
        newMT.setTranslation(newPos, om.MSpace.kWorld)
        newWorld= newMT.asMatrix()
        
        parentDag= om.MDagPath(jDag)
        parentDag.pop()
        if parentDag.isValid():
            parentWM= parentDag.inclusiveMatrix()
        else:
            parentWM= om.MMatrix()
        invPar= parentWM.inverse()
        newLocal= invPar* newWorld
        
        finalTM= om.MTransformationMatrix(newLocal)
        fPos= finalTM.translation(om.MSpace.kWorld)
        fRotQ= finalTM.rotation()
        euler= fRotQ.asEulerRotation()
        import math
        eDeg= (math.degrees(euler.x), math.degrees(euler.y), math.degrees(euler.z))
        
        sUtil= om.MScriptUtil()
        sUtil.createFromList([0,0,0],3)
        sp= sUtil.asDoublePtr()
        finalTM.getScale(sp, om.MSpace.kObject)
        fsx= om.MScriptUtil.getDoubleArrayItem(sp,0)
        fsy= om.MScriptUtil.getDoubleArrayItem(sp,1)
        fsz= om.MScriptUtil.getDoubleArrayItem(sp,2)
        
        jName= jDag.fullPathName()
        if debug:
            print(f"    {jName}: offset=({offset.x:.3f},{offset.y:.3f},{offset.z:.3f}), local= pos=({fPos.x:.3f},{fPos.y:.3f},{fPos.z:.3f}), euler={eDeg}")
        
        cmds.xform(jName, ws=False,
                   translation=(fPos.x,fPos.y,fPos.z),
                   rotation=eDeg,
                   scale=(fsx,fsy,fsz))
    
    # Hierarchy
    ordered= getJointHierarchyOrder(infPaths)
    reversedList= [ordered[i] for i in range(len(ordered)-1,-1,-1)]
    
    # pass1, pass2 한 번씩만
    defPts= computeDeformedPoints()
    # pass1
    for jDag in ordered:
        jName= jDag.fullPathName()
        jIdx= -1
        for idx in range(infCount):
            if infPaths[idx].fullPathName()== jName:
                jIdx= idx
                break
        if jIdx<0:
            continue
        moveJointByWeightedOffset(jDag, jIdx, defPts)
    # pass2
    newDef= computeDeformedPoints()
    for jDag in reversedList:
        jName= jDag.fullPathName()
        jIdx= -1
        for idx in range(infCount):
            if infPaths[idx].fullPathName()== jName:
                jIdx= idx
                break
        if jIdx<0:
            continue
        moveJointByWeightedOffset(jDag, jIdx, newDef)

def getJointHierarchyOrder(infPaths):
    nameToDag={}
    childrenMap={}
    for i in range(infPaths.length()):
        d= infPaths[i]
        jName= d.fullPathName()
        nameToDag[jName]= d
        childrenMap[jName]=[]
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

def createTransMatchBakeUI():
    """
    Maya UI:
      - originalMesh / targetMesh / skinCluster
      - startFrame / endFrame
      - weightThreshold / alpha
      - 'Bake' 버튼 => 각 프레임 돌며 transMatch_oneIteration -> setKeyframe
    """
    import maya.cmds as cmds
    
    winName= "transMatchBakeWin"
    if cmds.window(winName, exists=True):
        cmds.deleteUI(winName)
    
    cmds.window(winName, title="TransMatch Bake Tool", widthHeight=(300,400))
    cmds.columnLayout(adjustableColumn=True)
    
    cmds.text(label="Original Mesh Name:")
    origField= cmds.textField("transBake_origField", text="pSphere1")
    
    cmds.text(label="Target Mesh Name:")
    targField= cmds.textField("transBake_targField", text="pSphere2")
    
    cmds.text(label="SkinCluster Name:")
    sknField= cmds.textField("transBake_sknField", text="skinCluster1")
    
    cmds.separator(h=10, style="none")
    
    cmds.text(label="Start Frame:")
    startField= cmds.intField("transBake_startField", value=1)
    
    cmds.text(label="End Frame:")
    endField= cmds.intField("transBake_endField", value=30)
    
    cmds.separator(h=10, style="none")
    cmds.text(label="Weight Threshold:")
    wthField= cmds.floatField("transBake_wthField", value=0.05, minValue=0.0)
    
    cmds.text(label="alpha(0..1):")
    alphaField= cmds.floatField("transBake_alphaField", value=0.5, minValue=0.0, maxValue=1.0)
    
    cmds.separator(h=10, style="none")
    
    def onBake(*args):
        import maya.cmds as cmds
        
        origMesh= cmds.textField(origField, q=True, text=True)
        targMesh= cmds.textField(targField, q=True, text=True)
        skn= cmds.textField(sknField, q=True, text=True)
        startF= cmds.intField(startField, q=True, value=True)
        endF= cmds.intField(endField, q=True, value=True)
        wth= cmds.floatField(wthField, q=True, value=True)
        alf= cmds.floatField(alphaField, q=True, value=True)
        
        print(f"\n[Bake translationalMatching] from frame {startF} to {endF}")
        print(f"  originalMesh= {origMesh}, targetMesh= {targMesh}, skinCluster= {skn}")
        print(f"  threshold= {wth}, alpha= {alf}")
        
        # 1) influence list
        import maya.OpenMaya as om
        import maya.OpenMayaAnim as oma
        selSk= om.MSelectionList()
        selSk.add(skn)
        skObj= om.MObject()
        selSk.getDependNode(0, skObj)
        fnSk= oma.MFnSkinCluster(skObj)
        
        infPaths= om.MDagPathArray()
        fnSk.influenceObjects(infPaths)
        infCount= infPaths.length()
        # joint names
        jointList= []
        for i in range(infCount):
            jointList.append(infPaths[i].fullPathName())
        
        # 2) For each frame => currentTime => transMatch_oneIteration => setKeyframe
        for frame in range(startF, endF+1):
            cmds.currentTime(frame, edit=True)
            
            # 한 번(부->자 / 자->부)만 수행
            transMatch_oneIteration(
                originalMesh= origMesh,
                targetMesh= targMesh,
                skinCluster= skn,
                weightThreshold= wth,
                alpha= alf,
                debug=False
            )
            
            # setKeyframe => joint translate/rotate/scale
            for jName in jointList:
                # 혹은 ['translate','rotate','scale'] 각각?
                # 간단히 cmds.setKeyframe(jName, at='translate', time=frame) + rotate+scale
                cmds.setKeyframe(jName, at='translate', time=frame)
                cmds.setKeyframe(jName, at='rotate', time=frame)
                cmds.setKeyframe(jName, at='scale', time=frame)
            
            print(f"  frame {frame} => done.")
        
        print("[Bake translationalMatching] done.\n")
    
    cmds.button(label="Bake", command=onBake)
    
    cmds.separator(h=10, style="none")
    cmds.button(label="Close", command=lambda *a: cmds.deleteUI(winName))
    
    cmds.showWindow(winName)

def example_run_bakeUI():
    createTransMatchBakeUI()
example_run_bakeUI()