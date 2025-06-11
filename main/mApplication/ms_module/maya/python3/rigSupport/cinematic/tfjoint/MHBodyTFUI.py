# -*- coding: utf-8 -*-
import math
import json
import maya.api.OpenMaya as om2
import maya.cmds as cmds

def save_aim_dict_to_json(data, path):
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2)
    print(f"✅ aim_dict 저장 완료: {path}")

def load_from_json(path):
    with open(path, 'r', encoding='utf-8') as f:
        return json.load(f)

def get_dag_path(name):
    sel = om2.MSelectionList()
    sel.add(name)
    return sel.getDagPath(0)

def get_vertex_positions(dag_path):
    mesh_fn = om2.MFnMesh(dag_path)
    return mesh_fn.getPoints(om2.MSpace.kWorld)

def get_closest_vertex_indices_to_point(mesh_dag, point, max_distance=None):
    mesh_fn = om2.MFnMesh(mesh_dag)
    points = mesh_fn.getPoints(om2.MSpace.kWorld)
    target_point = om2.MPoint(point)
    if max_distance is None:
        return list(range(len(points)))
    return [i for i, pt in enumerate(points) if (target_point - pt).length() <= max_distance]

def get_all_descendant_joints(joint):
    result = []
    def dfs(j):
        result.append(j)
        for c in cmds.listRelatives(j, type='joint', children=True, fullPath=False) or []:
            dfs(c)
    dfs(joint)
    return result

def is_excluded(jnt, mode='aim', ancestors=None, rules=None):
    name = jnt.lower()
    if rules is None:
        return False
    rule_set = rules.get(mode, {})
    if any(k in name for k in rule_set.get("self", [])):
        return True
    if ancestors:
        for a in ancestors:
            if any(k in a.lower() for k in rule_set.get("ancestor", [])):
                return True
    return False

def create_pole_vector_locator(joints, name):
    a = om2.MVector(cmds.xform(joints[0], q=True, ws=True, t=True))
    b = om2.MVector(cmds.xform(joints[1], q=True, ws=True, t=True))
    c = om2.MVector(cmds.xform(joints[2], q=True, ws=True, t=True))
    scaleValue = ((c - a) * (b - a)) / ((c - a) * (c - a))
    projVec = (c - a) * scaleValue + a
    pv = projVec + (b - projVec).normal() * 1
    # mid = a + (c - a) * 0.5
    # pv = mid + (b - mid) * 2
    loc = cmds.spaceLocator(name=name)[0]
    cmds.xform(loc, ws=True, t=(pv.x, pv.y, pv.z))
    return loc

def update_aim_dict_category(aim_dict):
    new_dict = {}
    for k, v in aim_dict.items():
        if not isinstance(v, dict):
            continue
        if "sequence" not in v:
            continue
        sequence = v["sequence"]
        if not isinstance(sequence, (list, tuple)):
            continue

        if "spine" in k:
            # spine은 좌우 나누지 않고 그대로
            new_dict.setdefault(k, {})[k] = sequence
        else:
            for side in ['l', 'r']:
                new_key = f"{k}_{side}" if not k.endswith(f"_{side}") else k
                new_sequence = [f"{joint}_{side}" if not joint.endswith(f"_{side}") else joint for joint in sequence]
                new_dict.setdefault(k, {})[new_key] = new_sequence
    return new_dict


def estimate_object_position_from_mesh_deform(obj, meshA, meshB, max_distance=None, use_weighted=True, visualize=True, neighbor_count=300):
    try:
        obj_pos = cmds.xform(obj, q=True, ws=True, t=True)
        dagA = get_dag_path(meshA)
        dagB = get_dag_path(meshB)
        pointsA = get_vertex_positions(dagA)
        pointsB = get_vertex_positions(dagB)
        obj_vec = om2.MVector(*obj_pos)
        distances = [(om2.MVector(pt) - obj_vec).length() for pt in pointsA]
        distances.sort()
        radius_index = min(len(distances) - 1, neighbor_count - 1)
        radius = distances[radius_index]
        nearest_ids = get_closest_vertex_indices_to_point(dagA, obj_pos, radius)
        if not nearest_ids:
            print(f"⚠️ {obj}: 가까운 vertex를 찾을 수 없습니다.")
            return None
        delta = om2.MVector(0, 0, 0)
        weight_sum = 0.0 if use_weighted else len(nearest_ids)
        for idx in nearest_ids:
            vA = om2.MVector(pointsA[idx])
            vB = om2.MVector(pointsB[idx])
            w = 1.0
            if use_weighted:
                w = 1.0 / max((obj_vec - vA).length(), 1e-5)
                weight_sum += w
            delta += (vB - vA) * w
        avg_delta = delta / weight_sum if use_weighted else delta / len(nearest_ids)
        new_position = obj_vec + avg_delta
        loc_name = f"{obj}_estimated_pos_loc"
        if cmds.objExists(loc_name):
            cmds.delete(loc_name)
        loc = cmds.spaceLocator(name=loc_name)[0]
        cmds.xform(loc, ws=True, t=(new_position.x, new_position.y, new_position.z))
        cmds.setAttr(f"{loc}.localScale", 0.1, 0.1, 0.1)
        return (new_position.x, new_position.y, new_position.z)
    except Exception as e:
        print(f"⚠️ {obj}: 위치 추정 실패: {e}")
        return None

def rotate_transform_y_to_aim_target(transform, target, aim_axis='z', rotate_axis='y'):
    axis_map = {
        'x': om2.MVector(1, 0, 0),
        'y': om2.MVector(0, 1, 0),
        'z': om2.MVector(0, 0, 1)
    }

    if not cmds.objExists(transform) or not cmds.objExists(target):
        print(f"⚠️ {transform} 또는 {target} 존재하지 않음")
        return

    pos_a = om2.MVector(cmds.xform(transform, q=True, ws=True, t=True))
    pos_b = om2.MVector(cmds.xform(target, q=True, ws=True, t=True))
    aim_vec = (pos_b - pos_a)

    # ? 투영: rotate_axis 평면에 투영
    if rotate_axis == 'y':
        aim_vec.y = 0
    elif rotate_axis == 'x':
        aim_vec.x = 0
    elif rotate_axis == 'z':
        aim_vec.z = 0

    if aim_vec.length() < 1e-5:
        print("⚠️ 투영된 벡터가 너무 짧아 회전 불가")
        return

    aim_vec = aim_vec.normalize()

    # ? aim axis 처리 (음수 축 대응)
    base_axis = aim_axis.lstrip('-')
    reference_vec = axis_map.get(base_axis.lower(), om2.MVector(0, 0, 1))
    if aim_axis.startswith('-'):
        reference_vec *= -1

    rot_quat = om2.MQuaternion(reference_vec, aim_vec)
    euler = rot_quat.asEulerRotation()

    # ? 회전 적용: rotate_axis만 적용
    cmds.setAttr(f"{transform}.rotateX", 0)
    cmds.setAttr(f"{transform}.rotateY", 0)
    cmds.setAttr(f"{transform}.rotateZ", 0)

    if rotate_axis == 'x':
        cmds.setAttr(f"{transform}.rotateX", math.degrees(euler.x))
    elif rotate_axis == 'y':
        cmds.setAttr(f"{transform}.rotateY", math.degrees(euler.y))
    elif rotate_axis == 'z':
        cmds.setAttr(f"{transform}.rotateZ", math.degrees(euler.z))

    print(f"🎯 {transform} → {target} 방향으로 {rotate_axis.upper()}축 회전 적용 완료 (aim axis: {aim_axis})")

def align_joint_orient_with_world_axis_rotation(
    joint,
    target,
    aim_axis='z',         # 이 축이 타겟을 바라보도록
    rotate_axis='y',      # 이 축만 회전 허용
):
    loc_name = f"{target}_estimated_pos_loc"
    if not cmds.objExists(loc_name):
        print(f"⚠️ {joint}: aim 타겟 로케이터 {loc_name} 존재하지 않음")
        return

    joint_pos = cmds.xform(joint, q=True, ws=True, t=True)
    ref = cmds.spaceLocator(name=f"{joint}_aimRef")[0]
    cmds.xform(ref, ws=True, t=joint_pos)
    cmds.setAttr(f"{ref}.rotate", 0, 0, 0)
    cmds.setAttr(f"{ref}.scale", 1, 1, 1)

    original_parent = cmds.listRelatives(joint, parent=True, fullPath=True)
    cmds.parent(joint, ref)

    rotate_transform_y_to_aim_target(ref, loc_name, aim_axis=aim_axis, rotate_axis=rotate_axis)

    cmds.parent(joint, world=True)
    cmds.delete(ref)

    if original_parent:
        cmds.parent(joint, original_parent[0])

    print(f"🎯 {joint}: {target} 을 {rotate_axis.upper()}축 회전만으로 aim 완료")

def compute_and_apply_aim_matrix(
    joint,
    target,
    aim_axis='x',
    up_axis='z',
    include_parent=True,
    up_reverse=None,
    world_up_obj=None,
    world_up_axis=None,
    debug=None
):
    loc_name = f"{target}_estimated_pos_loc"
    if not cmds.objExists(loc_name):
        print(f"⚠️ {joint}: aim 타겟 로케이터 {loc_name} 존재하지 않음")
        return

    pos_a = om2.MVector(cmds.xform(joint, q=True, ws=True, t=True))
    pos_b = om2.MVector(cmds.xform(loc_name, q=True, ws=True, t=True))
    raw_aim = (pos_b - pos_a).normalize()

    axis_lookup = {
        'x': om2.MVector(1, 0, 0),
        'y': om2.MVector(0, 1, 0),
        'z': om2.MVector(0, 0, 1),
        '-x': om2.MVector(-1, 0, 0),
        '-y': om2.MVector(0, -1, 0),
        '-z': om2.MVector(0, 0, -1),
    }

    aim_vector = raw_aim * -1 if aim_axis.startswith('-') else raw_aim
    up_vector = axis_lookup.get(up_axis.lower(), om2.MVector(0, 0, 1))

    if world_up_obj and cmds.objExists(world_up_obj):
        world_matrix = om2.MMatrix(cmds.getAttr(f"{world_up_obj}.worldMatrix[0]"))
        if world_up_axis and world_up_axis.lower() in axis_lookup:
            local_axis = axis_lookup[world_up_axis.lower()]
            up_vector = local_axis * world_matrix
        else:
            up_vector = om2.MVector(cmds.xform(world_up_obj, q=True, ws=True, t=True)) - pos_a
        up_vector = up_vector.normalize()

    if aim_vector.isParallel(up_vector):
        print(f"⚠️ {joint}: aim과 up 벡터가 평행하여 회전 계산 실패")
        return

    side_vector = (aim_vector ^ up_vector).normalize()
    if up_reverse:
        side_vector *= -1
    corrected_up = (side_vector ^ aim_vector).normalize()

    rot_matrix = om2.MMatrix([
        [aim_vector.x, aim_vector.y, aim_vector.z, 0],
        [corrected_up.x, corrected_up.y, corrected_up.z, 0],
        [side_vector.x, side_vector.y, side_vector.z, 0],
        [0, 0, 0, 1]
    ])
    m_trans = om2.MTransformationMatrix(rot_matrix)
    final_quat = m_trans.rotation(asQuaternion=True)

    if include_parent:
        parent = cmds.listRelatives(joint, parent=True, fullPath=True)
        if parent:
            parent_rot = cmds.xform(parent[0], q=True, ws=True, ro=True)
            q_rotate = om2.MEulerRotation(
                math.radians(parent_rot[0]),
                math.radians(parent_rot[1]),
                math.radians(parent_rot[2])
            ).asQuaternion()
            final_quat = final_quat * q_rotate.inverse()

    euler = final_quat.asEulerRotation()
    cmds.setAttr(f"{joint}.rotate", 0, 0, 0)
    cmds.setAttr(f"{joint}.jointOrient",
                 math.degrees(euler.x),
                 math.degrees(euler.y),
                 math.degrees(euler.z), type="double3")
    if debug:
        print(f"🎯 AIM 적용: {joint} → {target} (axis: {aim_axis}, up: {up_axis})")

def update_selected_joint_positions_step1(meshA, meshB, aim_dict_path=None, selection_only=False, neighbor_count=300, use_weighted=True, debug=False):
    selection = cmds.ls(sl=True, type='joint')
    if not selection:
        cmds.error("[⚠️] 하나 이상의 조인트를 선택하세요.")
    
    if not aim_dict_path:
        cmds.error("[⚠️] aim_dict.json 경로가 필요합니다.")

    aim_dict = load_from_json(aim_dict_path)

    # 모든 조인트를 선택 대상으로 가져오기
    all_joints = []
    for root in selection:
        if selection_only:
            all_joints.append(root)
        else:
            all_joints.extend(get_all_descendant_joints(root))

    progress_bar = create_progress_bar("Step1: Estimate Positions", max_value=len(all_joints))

    for idx, jnt_name in enumerate(all_joints):
        update_progress_bar(progress_bar, step=1, label=f"{idx+1}/{len(all_joints)}: {jnt_name}")
        if not cmds.objExists(jnt_name):
            print(f"⚠️ 조인트 {jnt_name} 없음 - 스킵")
            continue
        estimate_object_position_from_mesh_deform(
            obj=jnt_name,
            meshA=meshA,
            meshB=meshB,
            neighbor_count=neighbor_count,
            use_weighted=use_weighted,
            visualize=True
        )

    # Pole Vector 생성 (aim_dict 기반)
    for category, entries in aim_dict.items():
        for key, config in entries.items():
            seq = config.get("sequence") if isinstance(config, dict) else config
            if isinstance(seq, (list, tuple)) and len(seq) >= 3:
                if len(seq) == 3:
                    joints = [f"{seq[0]}_estimated_pos_loc", f"{seq[1]}_estimated_pos_loc", f"{seq[2]}_estimated_pos_loc"]
                else:
                    joints = [f"{seq[1]}_estimated_pos_loc", f"{seq[2]}_estimated_pos_loc", f"{seq[3]}_estimated_pos_loc"]
                if all(cmds.objExists(j) for j in joints):
                    create_pole_vector_locator(joints, name=f"{key}_poleVec_loc")

    cmds.progressBar(progress_bar, edit=True, endProgress=True)
    if cmds.window("aimProgressWin", exists=True):
        cmds.deleteUI("aimProgressWin")

def update_selected_joint_positions_step2(aim_dict, exclude_rules, cleanup=True, dry_run=False, selection_only=False, debug=False):
    selection = cmds.ls(sl=True, type='joint')
    if not selection:
        cmds.error("[⚠️] 하나 이상의 조인트를 선택하세요.")

    all_joints = []
    for root in selection:
        if selection_only:
            all_joints.append(root)
        else:
            all_joints.extend(get_all_descendant_joints(root))

    progress_bar = create_progress_bar("Step2: Apply Joint Movement", max_value=len(all_joints))

    for idx, jnt in enumerate(all_joints):
        update_progress_bar(progress_bar, step=1, label=f"{idx+1}/{len(all_joints)}: {jnt}")
        loc_name = f"{jnt}_estimated_pos_loc"
        if not cmds.objExists(loc_name):
            print(f"⚠️ {jnt}: 로케이터 없음 - 위치 생략")
            continue
        if is_excluded(jnt, mode='move', rules=exclude_rules):
            continue

        pos = cmds.xform(loc_name, q=True, ws=True, t=True)
        parent = cmds.listRelatives(jnt, parent=True, fullPath=True)
        if not dry_run:
            if parent:
                parent_matrix = om2.MMatrix(cmds.getAttr(f"{parent[0]}.worldMatrix[0]"))
                local_pos = om2.MPoint(pos) * parent_matrix.inverse()
                cmds.setAttr(f"{jnt}.translate", local_pos.x, local_pos.y, local_pos.z, type="double3")
            else:
                cmds.xform(jnt, ws=True, t=pos)
            if debug:
                print(f"✅ 위치 적용: {jnt} → {round(pos[0],2)}, {round(pos[1],2)}, {round(pos[2],2)})")
        else:
            print(f"🧪 [Dry Run] {jnt} 위치 계산 완료: {pos}")

        # 추가: 회전 적용 (aim_dict 기반)
        for category, entries in aim_dict.items():
            for key, config in entries.items():
                seq = config.get("sequence") if isinstance(config, dict) else config
                if isinstance(seq, (list, tuple)) and jnt in seq:
                    aim_axis = config.get("aim_axis", "x")
                    up_axis = config.get("up_axis", "-y")
                    rotate_axis = config.get("rotate_axis", None)
                    up_reverse = config.get("up_reverse", None)
                    world_up_axis = config.get("world_up_axis", None)
                    world_up_obj = config.get("world_up_obj", None)
                    up_axis_0 = config.get("up_axis_0", None)
                    up_reverse_0 = config.get("up_reverse_0", None)

                    target_idx = seq.index(jnt)
                    if target_idx < len(seq) - 1:
                        if not rotate_axis:
                            target_joint = seq[target_idx + 1]
                            if world_up_obj:
                                world_up_obj = f"{seq[0]}_poleVec_loc"
                            else:
                                world_up_obj = None
                            if up_axis_0:
                                if target_idx==0:
                                    up_axis = up_axis_0
                                    up_reverse = up_reverse_0
                            compute_and_apply_aim_matrix(
                                joint=jnt,
                                target=target_joint,
                                aim_axis=aim_axis,
                                up_axis=up_axis,
                                include_parent=True,
                                up_reverse=up_reverse,
                                world_up_obj=world_up_obj,
                                world_up_axis=world_up_axis,
                                debug=debug
                            )
                        elif rotate_axis:
                            align_joint_orient_with_world_axis_rotation(
                                joint=jnt,
                                target=jnt,
                                aim_axis=aim_axis,
                                rotate_axis=rotate_axis
                            )

    if cleanup:
        for idx, jnt in enumerate(all_joints):
            update_progress_bar(progress_bar, step=2, label=f"{idx+1}/{len(all_joints)}: {jnt}")
            loc = f"{jnt}_estimated_pos_loc"
            if cmds.objExists(loc):
                cmds.delete(loc)
        cmds.delete([n for n in cmds.ls(type='transform') if '_poleVec_loc' in n])
        print("✅ 로케이터 및 임시 오브젝트 정리 완료")

    cmds.progressBar(progress_bar, edit=True, endProgress=True)
    if cmds.window("aimProgressWin", exists=True):
        cmds.deleteUI("aimProgressWin")

def create_progress_bar(title, max_value):
    if cmds.window("aimProgressWin", exists=True):
        cmds.deleteUI("aimProgressWin")
    win = cmds.window("aimProgressWin", title=title, widthHeight=(300, 50))
    cmds.columnLayout(adjustableColumn=True)
    bar = cmds.progressBar(maxValue=max_value, width=280, height=20)
    cmds.showWindow(win)
    return bar

def update_progress_bar(bar, step, label=""):
    cmds.progressBar(bar, edit=True, step=step)
    if label:
        cmds.progressBar(bar, edit=True, status=label)

def launch_MH_body_TF_panel():
    global meshA_field, meshB_field, aim_field, rule_field, opts

    if cmds.window("MHBodyTFWin", exists=True):
        cmds.deleteUI("MHBodyTFWin")

    win = cmds.window("MHBodyTFWin", title="MH body TF Panel", widthHeight=(460, 400))
    cmds.columnLayout(adjustableColumn=True)

    cmds.text(label="Step1: Estimate Locators (선택된 조인트 기반)\nStep2: Apply Movement (기존 로케이터 기반)\n", align='left', wordWrap=True, height=40)

    meshA_field = cmds.textFieldGrp(label="Mesh A (source)", text="f_med_nrw_body_lod0_mesh")
    meshB_field = cmds.textFieldGrp(label="Mesh B (target)", text="remodel_body")
    aim_field = cmds.textFieldButtonGrp(label="aim_dict.json", buttonLabel="📂",
                                        text="T:/scripts/python/application/maya/python3/Json/aim_dict.json", bc=lambda: cmds.textFieldButtonGrp(aim_field, e=True, text=cmds.fileDialog2(fm=1, fileFilter="*.json")[0]))
    rule_field = cmds.textFieldButtonGrp(label="exclude_rules.json", buttonLabel="📂",
                                         text="T:/scripts/python/application/maya/python3/Json/exclude_rules.json", bc=lambda: cmds.textFieldButtonGrp(rule_field, e=True, text=cmds.fileDialog2(fm=1, fileFilter="*.json")[0]))

    opts = {
        "cleanup": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Cleanup Locators', value1=True),
        "dry_run": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Dry Run (no apply)', value1=False),
        "selection_only": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Selection Only', value1=False),
        "debug": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Debug Log', value1=True),
    }

    cmds.separator(h=8, style='in')
    cmds.button(label="🔵 Step1: Estimate Locators", c=lambda *_: run_step1())
    cmds.button(label="🟠 Step2: Apply Movement", c=lambda *_: run_step2())
    cmds.button(label="✏️ Edit Aim Dict", c=lambda *_: launch_aim_dict_editor())

    cmds.setParent("..")
    cmds.showWindow(win)

def run_step1():
    meshA = cmds.textFieldGrp(meshA_field, q=True, text=True)
    meshB = cmds.textFieldGrp(meshB_field, q=True, text=True)
    aim_dict_path = cmds.textFieldButtonGrp(aim_field, q=True, text=True)

    if not (meshA and meshB):
        cmds.error("❌ MeshA와 MeshB를 모두 입력하세요.")

    update_selected_joint_positions_step1(
        meshA=meshA,
        meshB=meshB,
        aim_dict_path=aim_dict_path,
        selection_only=cmds.checkBoxGrp(opts['selection_only'], q=True, value1=True),
        debug=cmds.checkBoxGrp(opts['debug'], q=True, value1=True)
    )


def run_step2():
    aim_path = cmds.textFieldButtonGrp(aim_field, q=True, text=True)
    rule_path = cmds.textFieldButtonGrp(rule_field, q=True, text=True)

    if not (aim_path and rule_path):
        cmds.error("❌ aim_dict.json과 exclude_rules.json을 모두 입력하세요.")

    aim_dict = load_from_json(aim_path)
    rules = load_from_json(rule_path)

    update_selected_joint_positions_step2(
        aim_dict=aim_dict,
        exclude_rules=rules,
        cleanup=cmds.checkBoxGrp(opts['cleanup'], q=True, value1=True),
        dry_run=cmds.checkBoxGrp(opts['dry_run'], q=True, value1=True),
        selection_only=cmds.checkBoxGrp(opts['selection_only'], q=True, value1=True),
        debug=cmds.checkBoxGrp(opts['debug'], q=True, value1=True)
    )

