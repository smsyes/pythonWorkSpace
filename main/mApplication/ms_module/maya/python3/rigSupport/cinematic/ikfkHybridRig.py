import maya.cmds as cmds

def create_spline_ik_from_selected():
    # 선택된 루트 조인트 기준으로 트리 추출
    selected = cmds.ls(selection=True, type="joint")
    if not selected:
        cmds.warning("루트 조인트를 선택해주세요.")
        return

    root_joint = selected[0]
    joint_chain = [root_joint]
    children = cmds.listRelatives(root_joint, children=True, type="joint") or []

    while children:
        joint_chain.append(children[0])
        children = cmds.listRelatives(children[0], children=True, type="joint") or []

    if len(joint_chain) < 3:
        cmds.warning("최소 3개의 조인트가 필요합니다.")
        return

    # Spline IK 핸들 생성
    ik_handle, effector, curve = cmds.ikHandle(
        name=f"{root_joint}_splineIK",
        solver="ikSplineSolver",
        startJoint=joint_chain[0],
        endEffector=joint_chain[-1],
        createCurve=True,
        simplifyCurve=False
    )
    
    # Twist 옵션 설정
    cmds.setAttr(f"{ik_handle}.dTwistControlEnable", 1)
    cmds.setAttr(f"{ik_handle}.dWorldUpType", 4)  # Object Rotation Up (Start/End)
    
    print(f"[✔] IK Handle: {ik_handle}, Curve: {curve}")
    return {
        "ik_handle": ik_handle,
        "curve": curve,
        "joint_chain": joint_chain
    }

def duplicate_joint_chain(joint_chain, suffix="_ik"):
    duplicated = []
    for jnt in joint_chain:
        dup = cmds.duplicate(jnt, name=jnt + suffix, parentOnly=True)[0]
        duplicated.append(dup)
    # 연결
    for i in range(len(duplicated) - 1):
        cmds.parent(duplicated[i + 1], duplicated[i])
    return duplicated

def create_controller(name, base, radius=1.0):
    ctrl = cmds.circle(name=name + "_ctrl", radius=radius, normal=[1, 0, 0])[0]
    grp = cmds.group(ctrl, name=ctrl + "_grp")
    cmds.matchTransform(grp, base)
    # cmds.xform(grp, ws=True, translation=position)
    return ctrl, grp

def normalize_curve_parameter_range(curve, desired_name=None):
    """
    curve: 정규화할 커브 이름
    desired_name: 리빌드 후 이 이름으로 재지정
    return: 최종 사용될 커브 이름
    """
    # 기존 이름 저장
    original_shape = cmds.listRelatives(curve, shapes=True, fullPath=True)[0]
    spans = cmds.getAttr(f"{original_shape}.spans")
    degree = cmds.getAttr(f"{original_shape}.degree")

    # 현재 커브의 변환 그룹 이름 저장
    parent_transform = curve

    # 커브 리빌드 (parameter 정규화) → 이름 변경될 수 있음
    rebuilt = cmds.rebuildCurve(
        parent_transform,
        ch=False,
        rpo=False,  # 원본 덮어쓰기 (내부적으로는 삭제 + 새로 생성됨)
        rt=0,
        end=1,
        kr=0,
        kcp=False,
        kep=True,
        d=degree,
        spans=spans
    )

    # rebuildCurve는 커브 이름을 반환하지 않으므로 탐색 필요
    new_curve = rebuilt if isinstance(rebuilt, str) else rebuilt[0]

    # 이름이 바뀌었는지 체크
    if desired_name and new_curve != desired_name:
        if cmds.objExists(desired_name):
            cmds.delete(desired_name)
        new_curve = cmds.rename(new_curve, desired_name)

    return new_curve

def get_normalized_param_from_position(curve_shape, position):
    npc = cmds.createNode("nearestPointOnCurve")
    cmds.connectAttr(f"{curve_shape}.worldSpace[0]", f"{npc}.inputCurve", force=True)
    cmds.setAttr(f"{npc}.inPosition", *position, type="double3")
    param = cmds.getAttr(f"{npc}.parameter")
    curve_len = cmds.arclen(curve_shape)
    cmds.delete(npc)
    return param / curve_len  # Normalize 0~1

def assign_all_clusters_with_weight_blend(curve, controllers):
    """
    controllers: list of 3 ctrl names (start, end)
    """
    curve_shape = cmds.listRelatives(curve, shapes=True, fullPath=True)[0]
    cvs = cmds.ls(f"{curve}.cv[*]", flatten=True)

    # 1. 클러스터 생성
    cluster_names = []
    cluster_handles = []

    for ctrl in controllers:
        cluster = cmds.cluster(curve, name=f"{ctrl}_cluster")[0]
        handle = cmds.listConnections(cluster, type="transform")[0]
        cmds.setAttr(f"{handle}.visibility", 0)
        cluster_names.append(cluster)
        cluster_handles.append(handle)

    # 2. 컨트롤러 위치의 parameter 계산
    ctrl_params = []
    for ctrl in controllers:
        pos = cmds.xform(ctrl, q=True, ws=True, t=True)
        param = get_normalized_param_from_position(curve_shape, pos)
        ctrl_params.append(param)

    # 3. 정의된 구간: (start → mid), (mid → end)
    ranges = [(0,1)]

    # 4. 각 CV의 커브상 parameter 계산 후 weight 분배
    for cv in cvs:
        pos = cmds.pointPosition(cv, world=True)
        u = get_normalized_param_from_position(curve_shape, pos)

        weights = [0.0, 0.0]
        applied = False

        for i1, i2 in ranges:
            p1 = ctrl_params[i1]
            p2 = ctrl_params[i2]

            if min(p1, p2) <= u <= max(p1, p2):
                t = (u - p1) / (p2 - p1) if p2 != p1 else 0.0
                weights[i1] = 1.0 - t
                weights[i2] = t
                applied = True
                break

        if not applied:
            closest_idx = min(range(2), key=lambda i: abs(u - ctrl_params[i]))
            weights[closest_idx] = 1.0

        for i, w in enumerate(weights):
            if w > 0.0:
                cmds.percent(cluster_names[i], cv, v=w)
            if w == 0.0:
                cmds.percent(cluster_names[i], cv, v=0.0)

    # 5. 각 컨트롤러 → 해당 클러스터 핸들 parentConstraint 연결
    for ctrl, handle in zip(controllers, cluster_handles):
        if not cmds.listConnections(handle, type="constraint"):
            cmds.parentConstraint(ctrl, handle, mo=True)

    print("[✔] 클러스터 생성, weight 분배 및 컨트롤러 연결 완료]")

def setup_ik_with_controls():
    result = create_spline_ik_from_selected()
    curve = result["curve"]
    new_curve_name = f"{result['joint_chain'][0]}_curve"
    norm_curve = normalize_curve_parameter_range(curve, desired_name=f"{new_curve_name}_normalized")
    cmds.delete(curve)  # 기존 커브 삭제
    curve = norm_curve
    
    original_chain = result["joint_chain"]

    # IK 조인트 복사
    ik_chain = duplicate_joint_chain(original_chain, suffix="_ik")
    cmds.delete(result["ik_handle"])

    ik_result = cmds.ikHandle(
        name=f"{ik_chain[0]}_splineIK",
        solver="ikSplineSolver",
        startJoint=ik_chain[0],
        endEffector=ik_chain[-1],
        createCurve=False,
        curve=curve,
        simplifyCurve=False
    )
    ik_handle, effector = ik_result
    cmds.setAttr(f"{ik_handle}.dTwistControlEnable", 1)
    cmds.setAttr(f"{ik_handle}.dWorldUpType", 4)  # Object Rotation Up (Start/End)
    
    # 컨트롤러 생성 (start / mid / end)
    curve_shape = cmds.listRelatives(curve, shapes=True)[0]

    names = ["start", "end"]
    controllers = []

    for name, jnt in zip(names, [original_chain[0],original_chain[-1]]):
        ctrl, grp = create_controller(f"{original_chain[0]}_{name}", jnt, radius=0.5)
        controllers.append((ctrl, grp))

    # CV → 클러스터로 연결
    assign_all_clusters_with_weight_blend(
        curve, 
        [f"{original_chain[0]}_start_ctrl", 
        f"{original_chain[0]}_end_ctrl"]
        )

    # Advanced Twist 설정: 컨트롤러 그룹을 UpObject로 연결
    # start null 생성 및 base joint와 동일한 transform
    start_up = cmds.group(empty=True, name=f"{original_chain[0]}_start_up_null")
    base_pos = cmds.xform(original_chain[0], q=True, ws=True, t=True)
    base_rot = cmds.xform(original_chain[0], q=True, ws=True, ro=True)
    cmds.xform(start_up, ws=True, t=base_pos, ro=base_rot)
    cmds.parent(start_up, controllers[0][0])

    # end null 생성 및 tip joint와 동일한 transform
    end_up = cmds.group(empty=True, name=f"{original_chain[0]}_end_up_null")
    tip_pos = cmds.xform(original_chain[-1], q=True, ws=True, t=True)
    tip_rot = cmds.xform(original_chain[-1], q=True, ws=True, ro=True)
    cmds.xform(end_up, ws=True, t=tip_pos, ro=tip_rot)
    cmds.parent(end_up, controllers[-1][0])
    
    cmds.connectAttr(f"{start_up}.worldMatrix[0]", f"{ik_handle}.dWorldUpMatrix")
    cmds.connectAttr(f"{end_up}.worldMatrix[0]", f"{ik_handle}.dWorldUpMatrixEnd")
    cmds.setAttr(f"{ik_handle}.dWorldUpAxis", 3)  # Z
    cmds.setAttr(f"{ik_handle}.dWorldUpVector", 0, 0, 1, type="double3")
    cmds.setAttr(f"{ik_handle}.dWorldUpVectorEnd", 0, 0, 1, type="double3")
    
    [cmds.makeIdentity(jnt, apply=True, rotate=True) for jnt in ik_chain]

    print(f"[✔] IK 조인트 및 컨트롤러 세팅 완료 (twist + mid 위치 정확화)")
    return {
        "joint_chain": original_chain,
        "ik_chain": ik_chain,
        "curve": curve,
        "controllers": controllers,
        "ik_handle": ik_handle
    }

def create_fk_controllers_for_ik_chain(ik_joint_chain):
    fk_controllers = []

    for i,joint in enumerate(ik_joint_chain):
        jnt_name = joint.replace("_ik", "")
        fk_name = f"{jnt_name}_fk_ctrl"

        # 컨트롤러 생성
        ctrl = cmds.circle(name=fk_name, radius=1.0, normal=[1, 0, 0])[0]
        offset1 = cmds.group(empty=True, name=f"{fk_name}_offset1")
        offset2 = cmds.group(empty=True, name=f"{fk_name}_offset2")
        
        cmds.parent(ctrl, offset2)
        cmds.parent(offset2, offset1)

        # IK 조인트의 전체 worldMatrix 복사 → offset1에 적용
        matrix = cmds.xform(joint, q=True, ws=True, matrix=True)
        cmds.xform(offset1, ws=True, matrix=matrix)
        if i > 0 :
            cmds.parent(offset1, fk_controllers[i-1][0])

        # 회전 연결: IK 조인트의 rotate → offset2.rotate
        for axis in "XYZ":
            jnt_rot_attr = f"{joint}.rotate{axis}"
            rot = cmds.getAttr(f"{joint}.jointOrient{axis}")
            offset_rot_attr = f"{offset2}.rotate{axis}"
            if i > 0:
                cmds.setAttr(f"{offset1}.rotate{axis}", rot)
            cmds.connectAttr(jnt_rot_attr, offset_rot_attr, force=True)
   
        fk_controllers.append((ctrl, offset1))

    print("[✔] FK 컨트롤러 생성 완료 (offset1 = IK 조인트 트랜스폼 복제)")
    return [ctrl for ctrl, _ in fk_controllers]

def create_bind_joints_from_fk_controllers(fk_controllers, original_chain, suffix="_bind"):
    bind_joints = []

    for i, (fk_ctrl, original_joint) in enumerate(zip(fk_controllers, original_chain)):
        jnt_name = original_joint.replace("_ik", "").replace("_fk", "")  # base name
        bind_joint = cmds.createNode("joint", name=f"{jnt_name}{suffix}")

        # FK 컨트롤러 위치로 정렬
        pos = cmds.xform(fk_ctrl, q=True, ws=True, t=True)
        rot = cmds.xform(fk_ctrl, q=True, ws=True, ro=True)
        cmds.xform(bind_joint, ws=True, t=pos, ro=rot)

        # 부모 연결
        if i > 0:
            cmds.parent(bind_joint, bind_joints[i - 1])

        cmds.makeIdentity(bind_joint, apply=True, rotate=True)
        # FK 컨트롤러의 트랜스폼 따라가도록 연결
        cmds.parentConstraint(fk_ctrl, bind_joint, mo=False)
        cmds.scaleConstraint(fk_ctrl, bind_joint, mo=False)

        bind_joints.append(bind_joint)

    print(f"[✔] Bind 조인트 생성 완료 (FK 컨트롤러 따라감)")
    return bind_joints

def setup_full_squash_stretch_system(
    curve, bind_joints, controller,
    axis="X", squash_axes=["Y", "Z"]
):
    axis = axis.upper()
    squash_axes = [ax.upper() for ax in squash_axes]
    curve_shape = cmds.listRelatives(curve, shapes=True, fullPath=True)[0]

    # === Step 1: curveInfo + stretchRatio ===
    curve_info = cmds.createNode("curveInfo", name=f"{curve}_curveInfo")
    cmds.connectAttr(f"{curve_shape}.worldSpace[0]", f"{curve_info}.inputCurve", force=True)

    if not cmds.attributeQuery("originalLength", node=controller, exists=True):
        cmds.addAttr(controller, longName="originalLength", attributeType="double", keyable=True)
    original_length = cmds.getAttr(f"{curve_info}.arcLength")
    cmds.setAttr(f"{controller}.originalLength", original_length)

    stretch_md = cmds.createNode("multiplyDivide", name=f"{curve}_stretchMD")
    cmds.setAttr(f"{stretch_md}.operation", 2)
    cmds.connectAttr(f"{curve_info}.arcLength", f"{stretch_md}.input1X")
    cmds.connectAttr(f"{controller}.originalLength", f"{stretch_md}.input2X")

    # === Step 2: squash = 1 / sqrt(stretchRatio) ===
    sqrt_md = cmds.createNode("multiplyDivide", name=f"{curve}_squashSqrtMD")
    cmds.setAttr(f"{sqrt_md}.operation", 3)
    cmds.setAttr(f"{sqrt_md}.input2X", 0.5)
    cmds.connectAttr(f"{stretch_md}.outputX", f"{sqrt_md}.input1X")

    inv_md = cmds.createNode("multiplyDivide", name=f"{curve}_invSquashMD")
    cmds.setAttr(f"{inv_md}.operation", 2)
    cmds.setAttr(f"{inv_md}.input1X", 1)
    cmds.connectAttr(f"{sqrt_md}.outputX", f"{inv_md}.input2X")

    # === Step 3: squashAmount multiplier ===
    if not cmds.attributeQuery("squashAmount", node=controller, exists=True):
        cmds.addAttr(controller, longName="squashAmount", attributeType="double", min=0, max=2, defaultValue=1, keyable=True)

    mult_squash = cmds.createNode("multiplyDivide", name=f"{curve}_squashAmountMD")
    cmds.setAttr(f"{mult_squash}.operation", 1)
    cmds.connectAttr(f"{inv_md}.outputX", f"{mult_squash}.input1X")
    cmds.connectAttr(f"{controller}.squashAmount", f"{mult_squash}.input2X")

    # === Step 4: squashBlend (blend with value 1) ===
    if not cmds.attributeQuery("squashBlend", node=controller, exists=True):
        cmds.addAttr(controller, longName="squashBlend", attributeType="double", min=0, max=1, defaultValue=1, keyable=True)

    squash_blend = cmds.createNode("blendColors", name=f"{curve}_squashBlendBC")
    cmds.setAttr(f"{squash_blend}.color2R", 1)  # no squash
    cmds.connectAttr(f"{mult_squash}.outputX", f"{squash_blend}.color1R")
    cmds.connectAttr(f"{controller}.squashBlend", f"{squash_blend}.blender")
    
    if not cmds.attributeQuery("stretchBlend", node=controller, exists=True):
        cmds.addAttr(controller, longName="stretchBlend", attributeType="double", min=0, max=1, defaultValue=1, keyable=True)

    stretch_blend = cmds.createNode("blendColors", name=f"{curve}_stretchBlendBC")
    cmds.setAttr(f"{stretch_blend}.color2R", 1)  # no stretch
    cmds.connectAttr(f"{stretch_md}.outputX", f"{stretch_blend}.color1R")
    cmds.connectAttr(f"{controller}.stretchBlend", f"{stretch_blend}.blender")

    # === Step 5: squash/stretch ON/OFF switch ===
    if not cmds.attributeQuery("enableSquashStretch", node=controller, exists=True):
        cmds.addAttr(controller, longName="enableSquashStretch", attributeType="bool", defaultValue=1, keyable=True)

    squash_cond = cmds.createNode("condition", name=f"{curve}_squashFinalCond")
    cmds.setAttr(f"{squash_cond}.operation", 0)  # Equal
    cmds.setAttr(f"{squash_cond}.secondTerm", 1)
    cmds.connectAttr(f"{controller}.enableSquashStretch", f"{squash_cond}.firstTerm")
    cmds.connectAttr(f"{squash_blend}.outputR", f"{squash_cond}.colorIfTrueR")
    cmds.setAttr(f"{squash_cond}.colorIfFalseR", 1)
    
    stretch_cond = cmds.createNode("condition", name=f"{curve}_stretchFinalCond")
    cmds.setAttr(f"{stretch_cond}.operation", 0)  # Equal
    cmds.setAttr(f"{stretch_cond}.secondTerm", 1)
    cmds.connectAttr(f"{controller}.enableSquashStretch", f"{stretch_cond}.firstTerm")
    cmds.connectAttr(f"{stretch_blend}.outputR", f"{stretch_cond}.colorIfTrueR")
    cmds.setAttr(f"{stretch_cond}.colorIfFalseR", 1)

    # === Step 6: 최종 squash → bind joints 연결 ===
    for jnt in bind_joints:
        for ax in squash_axes:
            cmds.connectAttr(f"{squash_cond}.outColorR", f"{jnt}.scale{ax}", force=True)

    print("[✔] squash/stretch 시스템 세팅 완료 → bind joints 반영 포함")
    return stretch_cond

def apply_stretch_to_fk_offset1_translate(fk_controllers, ik_joints, stretch_ratio_node, axis="X"):
    """
    fk_controllers: FK 컨트롤러 리스트 (create_fk_controllers_for_ik_chain 결과)
    stretch_ratio_node: stretchRatio를 계산한 multiplyDivide 노드 이름 (normalize_stretchMD)
    axis: 적용할 축 ("X", "Y", "Z")
    """
    axis = axis.upper()

    for i, ctrl in enumerate(fk_controllers[1:]):  # 첫 컨트롤러는 제외
        offset1 = f"{ctrl}_offset1"
        attr = f"{offset1}.translate{axis}"
        ik_attr = f"{ik_joints[i+1]}.translate{axis}"

        if not cmds.objExists(offset1):
            cmds.warning(f"{offset1} does not exist.")
            continue

        # 기본 translateX 값 가져오기
        base_tx = cmds.getAttr(attr)

        # multiplyDivide 노드 생성
        md_node = cmds.createNode("multiplyDivide", name=f"{offset1}_translateStretchMD")
        cmds.setAttr(f"{md_node}.operation", 1)  # Multiply
        cmds.setAttr(f"{md_node}.input1X", base_tx)

        # stretchRatio 연결
        cmds.connectAttr(f"{stretch_ratio_node}.outColorR", f"{md_node}.input2X", force=True)

        # 연결
        cmds.connectAttr(f"{md_node}.outputX", attr, force=True)
        cmds.connectAttr(f"{md_node}.outputX", ik_attr, force=True)

    print("[✔] Stretch 적용 완료 (offset1.translateX)")

# 실행
ik_info = setup_ik_with_controls()
fk_ctrls = create_fk_controllers_for_ik_chain(ik_info["ik_chain"])
bind_joints = create_bind_joints_from_fk_controllers(fk_ctrls, ik_info["ik_chain"])

# 예: ik_chain에 squash/stretch 적용
stretch_md = setup_full_squash_stretch_system(
    curve=ik_info["curve"],
    bind_joints=bind_joints,
    controller=f"{ik_info['joint_chain'][0]}_start_ctrl",
    axis="X"
)

apply_stretch_to_fk_offset1_translate(fk_ctrls, ik_info["ik_chain"], stretch_md, axis="X")
