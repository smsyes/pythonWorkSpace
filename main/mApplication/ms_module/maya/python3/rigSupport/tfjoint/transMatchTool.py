import math
import maya.cmds as cmds
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma

class TransMatchTool:
    def __init__(self, originalMesh, targetMesh, skinCluster,
                 maxIters=10, tolerance=0.001, weightThreshold=0.05, alpha=0.5, debug=True):
        self.originalMesh = originalMesh
        self.targetMesh = targetMesh
        self.skinCluster = skinCluster
        self.maxIters = maxIters
        self.tolerance = tolerance
        self.weightThreshold = weightThreshold
        self.alpha = alpha
        self.debug = debug

        # SkinCluster 및 메시 데이터 수집
        self.collectSkinData()
        self.collectMeshData()

    def collectSkinData(self):
        """스킨 클러스터에서 인플루언스, bindPreMatrix, skin weight 등 관련 데이터를 수집"""
        selList = om.MSelectionList()
        selList.add(self.skinCluster)
        skinObj = om.MObject()
        selList.getDependNode(0, skinObj)
        self.fnSkin = oma.MFnSkinCluster(skinObj)

        geoCount = self.fnSkin.numOutputConnections()
        if geoCount < 1:
            raise RuntimeError("SkinCluster에 연결된 지오메트리가 없습니다.")
        geoIndex = self.fnSkin.indexForOutputConnection(0)
        dagMesh = om.MDagPath()
        self.fnSkin.getPathAtIndex(geoIndex, dagMesh)
        self.fnMesh = om.MFnMesh(dagMesh)
        self.numVtx = self.fnMesh.numVertices()

        # 인플루언스 객체(조인트)와 개수
        self.infPaths = om.MDagPathArray()
        self.fnSkin.influenceObjects(self.infPaths)
        self.infCount = self.infPaths.length()

        # bindPreMatrix (역바인딩 행렬) 수집
        self.invBindMats = []
        for i in range(self.infCount):
            plugName = f"{self.skinCluster}.bindPreMatrix[{i}]"
            matList = cmds.getAttr(plugName)
            m = om.MMatrix()
            om.MScriptUtil.createMatrixFromList(matList, m)
            self.invBindMats.append(m)

        # 각 버텍스의 스킨 weight 수집 (2차원 리스트로 구성)
        compFn = om.MFnSingleIndexedComponent()
        compObj = compFn.create(om.MFn.kMeshVertComponent)
        compFn.setCompleteData(self.numVtx)
        wArr = om.MDoubleArray()
        util = om.MScriptUtil()
        infCountPtr = util.asUintPtr()
        self.fnSkin.getWeights(dagMesh, compObj, wArr, infCountPtr)
        self.weights2D = []
        for vIdx in range(self.numVtx):
            base = vIdx * self.infCount
            wList = [wArr[base + j] for j in range(self.infCount)]
            self.weights2D.append(wList)

    def collectMeshData(self):
        """원본 및 타겟 메시의 버텍스 좌표를 수집"""
        # Original Mesh (object space)
        selOrig = om.MSelectionList()
        selOrig.add(self.originalMesh)
        dagOrig = om.MDagPath()
        selOrig.getDagPath(0, dagOrig)
        self.fnOM = om.MFnMesh(dagOrig)
        numVtx_orig = self.fnOM.numVertices()

        # Target Mesh (world space)
        selTar = om.MSelectionList()
        selTar.add(self.targetMesh)
        dagTar = om.MDagPath()
        selTar.getDagPath(0, dagTar)
        self.fnTar = om.MFnMesh(dagTar)
        numVtx_tar = self.fnTar.numVertices()

        if numVtx_orig != numVtx_tar:
            raise RuntimeError("Original vs Target mismatch vertex count.")

        origPosArr = om.MPointArray()
        self.fnOM.getPoints(origPosArr, om.MSpace.kObject)
        self.origPositions = [origPosArr[i] for i in range(numVtx_orig)]

        tarPosArr = om.MPointArray()
        self.fnTar.getPoints(tarPosArr, om.MSpace.kWorld)
        self.targetPts = [tarPosArr[i] for i in range(numVtx_tar)]

    def computeDeformedPoints(self):
        """
        각 인플루언스(조인트)에 대해 invBind와 현재 조인트 월드 행렬의 곱을 미리 계산한 후,
        원본 메시 버텍스에 적용하여 skinning 결과(변형된 포인트)를 산출.
        """
        # 각 인플루언스별로 변형 행렬(defMatrix)을 한 번만 계산
        defMats = []
        for j in range(self.infCount):
            jWorld = self.infPaths[j].inclusiveMatrix()
            defMats.append(self.invBindMats[j] * jWorld)
        deformed = []
        for vIdx in range(self.numVtx):
            pO = self.origPositions[vIdx]
            accum = om.MPoint(0, 0, 0)
            for jIdx in range(self.infCount):
                w = self.weights2D[vIdx][jIdx]
                if abs(w) < 1e-8:
                    continue
                tmp = pO * defMats[jIdx]
                accum.x += w * tmp.x
                accum.y += w * tmp.y
                accum.z += w * tmp.z
            deformed.append(accum)
        return deformed

    def computeRMSE(self, deformed):
        """deformed points와 타겟 포인트 사이의 RMSE를 계산"""
        sumSq = 0.0
        for i in range(self.numVtx):
            diff = om.MVector(deformed[i] - self.targetPts[i])
            sumSq += diff * diff
        return math.sqrt(sumSq / self.numVtx) if self.numVtx > 0 else 0.0

    def moveJointByWeightedOffset(self, jDag, jIdx, defPts):
        """
        해당 조인트에 영향을 주는 버텍스들의 (target - deformed) 차이를 weight로 가중 평균하여
        조인트의 translation만 업데이트 (alpha 계수 적용)
        """
        wSum = 0.0
        offset = om.MVector(0, 0, 0)
        for vIdx in range(self.numVtx):
            w = self.weights2D[vIdx][jIdx]
            if w < self.weightThreshold:
                continue
            delta = om.MVector(self.targetPts[vIdx] - defPts[vIdx])
            offset += delta * w
            wSum += w
        if wSum < 1e-8:
            return
        offset /= wSum
        offset *= self.alpha

        oldWorld = jDag.inclusiveMatrix()
        oldTM = om.MTransformationMatrix(oldWorld)
        oldPos = oldTM.translation(om.MSpace.kWorld)
        newPos = oldPos + offset

        newTM = om.MTransformationMatrix(oldWorld)
        newTM.setTranslation(newPos, om.MSpace.kWorld)
        newWorld = newTM.asMatrix()

        parentDag = om.MDagPath(jDag)
        parentDag.pop()
        if parentDag.isValid():
            parentWM = parentDag.inclusiveMatrix()
        else:
            parentWM = om.MMatrix()
        invPar = parentWM.inverse()
        newLocal = invPar * newWorld

        finalTM = om.MTransformationMatrix(newLocal)
        fPos = finalTM.translation(om.MSpace.kWorld)
        fRotQ = finalTM.rotation()
        euler = fRotQ.asEulerRotation()
        eDeg = (math.degrees(euler.x), math.degrees(euler.y), math.degrees(euler.z))

        sUtil = om.MScriptUtil()
        sUtil.createFromList([0, 0, 0], 3)
        sp = sUtil.asDoublePtr()
        finalTM.getScale(sp, om.MSpace.kObject)
        fsx = om.MScriptUtil.getDoubleArrayItem(sp, 0)
        fsy = om.MScriptUtil.getDoubleArrayItem(sp, 1)
        fsz = om.MScriptUtil.getDoubleArrayItem(sp, 2)

        jName = jDag.fullPathName()
        if self.debug:
            print(f"    {jName}: offset=({offset.x:.3f},{offset.y:.3f},{offset.z:.3f}), "
                  f"local=({fPos.x:.3f},{fPos.y:.3f},{fPos.z:.3f}), euler={eDeg}")

        cmds.xform(jName, ws=False,
                   translation=(fPos.x, fPos.y, fPos.z),
                   rotation=eDeg,
                   scale=(fsx, fsy, fsz))

    @staticmethod
    def getJointHierarchyOrder(infPaths):
        """
        입력된 인플루언스(조인트)들의 계층 구조를 DFS 방식으로 정렬하여,
        부모-자식 순서에 따른 업데이트가 가능하도록 순서를 반환
        """
        nameToDag = {}
        childrenMap = {}
        for i in range(infPaths.length()):
            d = infPaths[i]
            jName = d.fullPathName()
            nameToDag[jName] = d
            childrenMap[jName] = []
        allNames = list(nameToDag.keys())
        for jName in allNames:
            dag = nameToDag[jName]
            pDag = om.MDagPath(dag)
            pDag.pop()
            if pDag.isValid():
                pName = pDag.fullPathName()
                if pName in nameToDag:
                    childrenMap[pName].append(jName)
        rootList = []
        for jName in allNames:
            pDag = om.MDagPath(nameToDag[jName])
            pDag.pop()
            if not pDag.isValid():
                rootList.append(jName)
            else:
                pName = pDag.fullPathName()
                if pName not in nameToDag:
                    rootList.append(jName)
        visited = []
        def dfs(n):
            visited.append(n)
            for c in childrenMap[n]:
                if c not in visited:
                    dfs(c)
        for r in rootList:
            if r not in visited:
                dfs(r)
        return [nameToDag[n] for n in visited]

    def run(self):
        """최종적으로 반복(iteration)을 수행하며 조인트의 translation을 업데이트"""
        ordered = self.getJointHierarchyOrder(self.infPaths)
        reversedList = [ordered[i] for i in range(len(ordered) - 1, -1, -1)]
        for it in range(self.maxIters):
            defPts = self.computeDeformedPoints()
            rmse = self.computeRMSE(defPts)
            if self.debug:
                print(f"\n[Iter {it}] RMSE= {rmse:.6f}")
            if rmse < self.tolerance:
                if self.debug:
                    print(f"  => break, tolerance= {self.tolerance}")
                break

            if self.debug:
                print("[Pass1: parent->child translational]")
            for jDag in ordered:
                jName = jDag.fullPathName()
                jIdx = -1
                for idx in range(self.infCount):
                    if self.infPaths[idx].fullPathName() == jName:
                        jIdx = idx
                        break
                if jIdx < 0:
                    continue
                self.moveJointByWeightedOffset(jDag, jIdx, defPts)

            if self.debug:
                print("[Pass2: child->parent translational]")
            newDef = self.computeDeformedPoints()
            for jDag in reversedList:
                jName = jDag.fullPathName()
                jIdx = -1
                for idx in range(self.infCount):
                    if self.infPaths[idx].fullPathName() == jName:
                        jIdx = idx
                        break
                if jIdx < 0:
                    continue
                self.moveJointByWeightedOffset(jDag, jIdx, newDef)
        if self.debug:
            print("=== TransMatchTool run() done ===")

# UI 부분 (기존과 동일하되, 새 클래스 호출)
def createTransMatchingUI():
    import maya.cmds as cmds

    windowName = "transMatchingWin"
    if cmds.window(windowName, exists=True):
        cmds.deleteUI(windowName)

    cmds.window(windowName, title="Translational Matching Tool", widthHeight=(300, 400))
    cmds.columnLayout(adjustableColumn=True)

    cmds.text(label="Original Mesh Name:")
    origField = cmds.textField("transMatch_origField", text="pSphere1")

    cmds.text(label="Target Mesh Name:")
    targField = cmds.textField("transMatch_targField", text="pSphere2")

    cmds.text(label="SkinCluster Name:")
    skinField = cmds.textField("transMatch_skinField", text="skinCluster1")

    cmds.separator(h=10, style="none")
    cmds.text(label="Max Iterations:")
    itersField = cmds.intField("transMatch_itersField", value=10, minValue=1)

    cmds.text(label="Tolerance:")
    tolField = cmds.floatField("transMatch_tolField", value=0.001, minValue=0.0)

    cmds.text(label="Weight Threshold:")
    wthresField = cmds.floatField("transMatch_wthresField", value=0.05, minValue=0.0)

    cmds.text(label="Alpha (0..1):")
    alphaField = cmds.floatField("transMatch_alphaField", value=0.5, minValue=0.0, maxValue=1.0)

    cmds.separator(h=10, style="none")

    def onApply(*args):
        origMesh = cmds.textField(origField, q=True, text=True)
        targMesh = cmds.textField(targField, q=True, text=True)
        skn = cmds.textField(skinField, q=True, text=True)
        iters = cmds.intField(itersField, q=True, value=True)
        tol = cmds.floatField(tolField, q=True, value=True)
        wth = cmds.floatField(wthresField, q=True, value=True)
        alf = cmds.floatField(alphaField, q=True, value=True)

        print("\n[TransMatchingUI] Running TransMatchTool with:")
        print(f"  originalMesh= {origMesh}, targetMesh= {targMesh}, skinCluster= {skn}")
        print(f"  maxIters= {iters}, tolerance= {tol}, weightThreshold= {wth}, alpha= {alf}")

        tool = TransMatchTool(originalMesh=origMesh,
                              targetMesh=targMesh,
                              skinCluster=skn,
                              maxIters=iters,
                              tolerance=tol,
                              weightThreshold=wth,
                              alpha=alf,
                              debug=True)
        tool.run()
        print("[TransMatchingUI] Done.\n")

    cmds.button(label="Apply", command=onApply)
    cmds.separator(h=10, style="none")
    cmds.button(label="Close", command=lambda *a: cmds.deleteUI(windowName))

    cmds.showWindow(windowName)

def example_runUI():
    createTransMatchingUI()

example_runUI()
