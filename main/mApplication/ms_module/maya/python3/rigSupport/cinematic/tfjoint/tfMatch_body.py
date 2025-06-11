import math
import maya.api.OpenMaya as om2
import maya.cmds as cmds

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
    ordered = []
    def dfs(jnt):
        ordered.append(jnt)
        children = cmds.listRelatives(jnt, type='joint', children=True, fullPath=False) or []
        for child in children:
            dfs(child)
    dfs(joint)
    return ordered

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
            print(f"? {obj}: 가까운 vertex를 찾을 수 없습니다.")
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
        print(f"?? {obj}: 위치 추정 실패: {e}")
        return None

def rotate_transform_y_to_aim_target(transform, target, aim_axis='z', rotate_axis='y'):
    import maya.api.OpenMaya as om2
    import maya.cmds as cmds
    import math

    axis_map = {
        'x': om2.MVector(1, 0, 0),
        'y': om2.MVector(0, 1, 0),
        'z': om2.MVector(0, 0, 1)
    }

    if not cmds.objExists(transform) or not cmds.objExists(target):
        print(f"?? {transform} 또는 {target} 존재하지 않음")
        return

    pos_a = om2.MVector(cmds.xform(transform, q=True, ws=True, t=True))
    pos_b = om2.MVector(cmds.xform(target, q=True, ws=True, t=True))
    aim_vec = (pos_b - pos_a)

    # ?? 투영: rotate_axis 평면에 투영
    if rotate_axis == 'y':
        aim_vec.y = 0
    elif rotate_axis == 'x':
        aim_vec.x = 0
    elif rotate_axis == 'z':
        aim_vec.z = 0

    if aim_vec.length() < 1e-5:
        print("?? 투영된 벡터가 너무 짧아 회전 불가")
        return

    aim_vec = aim_vec.normalize()

    # ?? aim axis 처리 (음수 축 대응)
    base_axis = aim_axis.lstrip('-')
    reference_vec = axis_map.get(base_axis.lower(), om2.MVector(0, 0, 1))
    if aim_axis.startswith('-'):
        reference_vec *= -1

    rot_quat = om2.MQuaternion(reference_vec, aim_vec)
    euler = rot_quat.asEulerRotation()

    # ?? 회전 적용: rotate_axis만 적용
    cmds.setAttr(f"{transform}.rotateX", 0)
    cmds.setAttr(f"{transform}.rotateY", 0)
    cmds.setAttr(f"{transform}.rotateZ", 0)

    if rotate_axis == 'x':
        cmds.setAttr(f"{transform}.rotateX", math.degrees(euler.x))
    elif rotate_axis == 'y':
        cmds.setAttr(f"{transform}.rotateY", math.degrees(euler.y))
    elif rotate_axis == 'z':
        cmds.setAttr(f"{transform}.rotateZ", math.degrees(euler.z))

    print(f"? {transform} → {target} 방향으로 {rotate_axis.upper()}축 회전 적용 완료 (aim axis: {aim_axis})")

def align_joint_orient_with_world_axis_rotation(
    joint,
    aim_target_joint,
    aim_axis='z',         # 이 축이 타겟을 바라보도록
    rotate_axis='y',      # 이 축만 회전 허용
):
    loc_name = f"{aim_target_joint}_estimated_pos_loc"
    if not cmds.objExists(loc_name):
        print(f"?? {joint}: aim 타겟 로케이터 {loc_name} 존재하지 않음")
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

    print(f"? {joint}: {aim_target_joint} 을 {rotate_axis.upper()}축 회전만으로 aim 완료")

def compute_and_apply_aim_matrix(
    joint,
    aim_target_joint,
    aim_axis='x',
    up_axis='z',
    include_parent=True,
    up_reverse=True,
    world_up_obj=None,
    world_up_axis=None
):
    loc_name = f"{aim_target_joint}_estimated_pos_loc"
    if not cmds.objExists(loc_name):
        print(f"?? {joint}: aim 타겟 로케이터 {loc_name} 존재하지 않음")
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
        print(f"?? {joint}: aim과 up 벡터가 평행하여 회전 계산 실패")
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


def is_excluded_from_aim(jnt, ancestors=None):
    name = jnt.lower()
    excluded_keywords = ['correctiveroot', 'twist_', 'hand', 'wrist', 'slide', 'palmmid', 'side', 'bulge', 'half']
    if any(k in name for k in excluded_keywords):
        return True
    if ancestors:
        for ancestor in ancestors:
            if any(k in ancestor.lower() for k in ['correctiveroot', 'twist_', 'half', 'side']):
                return True
    return False

def is_excluded_from_move(jnt):
    name = jnt.lower()
    return 'half' in name or 'twistcor' in name or 'correctiveroot' in name

def pole_vector(jnts):
    arm_pos = om2.MVector(cmds.xform(jnts[0], q=True, rp=True, ws=True))
    elbow_pos = om2.MVector(cmds.xform(jnts[1], q=True, rp=True, ws=True))
    wrist_pos = om2.MVector(cmds.xform(jnts[2], q=True, rp=True, ws=True))

    arm_to_wrist = wrist_pos - arm_pos
    arm_to_wrist_scaled = arm_to_wrist / 2
    mid_point = arm_pos + arm_to_wrist_scaled
    mid_point_to_elbow_vec = elbow_pos - mid_point
    mid_point_to_elbow_vec_scaled = mid_point_to_elbow_vec * 2
    mid_point_to_elbow_point = mid_point + mid_point_to_elbow_vec_scaled

    pv_ = cmds.spaceLocator(n=f'{jnts[0]}_poleVec')
    cmds.xform(pv_[0], t=mid_point_to_elbow_point)
    return pv_[0]

def update_aim_dict_category(aim_dict, category, side='l', suffix='_Tester'):
    updated = {}
    for k, v in aim_dict.get(category, {}).items():
        new_k = f"{k}_{side}{suffix}"
        new_v = [f"{j}_{side}{suffix}" for j in v]
        updated[new_k] = new_v

    # 전체 딕셔너리 복사 후 해당 카테고리만 갱신
    new_dict = aim_dict.copy()
    new_dict[category] = updated
    return new_dict

def update_selected_joint_positions(meshA, meshB):
    # 선택된 조인트 목록
    selection = cmds.ls(sl=True, type='joint')
    if not selection:
        cmds.error("[?] 하나 이상의 조인트를 선택하세요.")

    # 선택된 각 조인트로부터 루트 조인트를 찾고 트리 수집
    all_joints_set = set()
    for j in selection:
        root = j
        while True:
            parent = cmds.listRelatives(root, parent=True, type='joint')
            if not parent:
                break
            root = parent[0]
        descendants = get_all_descendant_joints(root)
        all_joints_set.update(descendants)

    # 부모 → 자식 순서 보장 (중복 제거된 리스트)
    all_joints = get_all_descendant_joints(root)  # 이미 BFS 기반 순서

    # 중복 필터링
    all_joints = [j for j in all_joints if j in all_joints_set]

    # ? 1차 패스: 전체 조인트 위치 이동
    for jnt in all_joints:
        if is_excluded_from_move(jnt):
            print(f"?? {jnt} 이동 제외")
            continue
        estimate_object_position_from_mesh_deform(jnt, meshA, meshB)


    # ? 2차 패스: 전체 위치 적용 + 선택된 조인트에 대해서만 회전 적용
    # ?? 현재 진행 중인 aim 시퀀스 (선택된 경우에만 유효)
    
    aim_dict = {
        "arm":{
            "clavicle": ["clavicle", "upperarm", "lowerarm","hand"],  
        },
        "finger":{
            "thumb_01": ["thumb_01", "thumb_02", "thumb_03"],
            "middle_metacarpal": ["middle_metacarpal", "middle_01", "middle_02", "middle_03"],
            "ring_metacarpal": ["ring_metacarpal", "ring_01", "ring_02", "ring_03"],
            "pinky_metacarpal": ["pinky_metacarpal", "pinky_01", "pinky_02", "pinky_03"],
            "index_metacarpal": ["index_metacarpal", "index_01", "index_02", "index_03"]
        },
        "leg":{
            "thigh" : ["thigh", "calf", "foot"],
        },
        "foot":{
            "foot":["foot", "ball"]
        },
        "spine":{
            "spine_01":["spine_01", "spine_02", "spine_03", "spine_04", "spine_05", "neck_01", "neck_02", "head"]
        }
    }
    
    active_aim_sequence = []
    current_aim_key = None

    for i, jnt in enumerate(all_joints):
        if is_excluded_from_move(jnt):
            print(f"?? {jnt} 이동 제외")
            continue

        loc_name = f"{jnt}_estimated_pos_loc"
        if not cmds.objExists(loc_name):
            print(f"?? {jnt}: 로케이터 없음 - 위치 생략")
            continue

        # ? 위치 적용
        pos = cmds.xform(loc_name, q=True, ws=True, t=True)
        parent = cmds.listRelatives(jnt, parent=True, fullPath=True)
        if parent:
            parent_matrix = om2.MMatrix(cmds.getAttr(f"{parent[0]}.worldMatrix[0]"))
            local_pos = om2.MPoint(pos) * parent_matrix.inverse()
            cmds.setAttr(f"{jnt}.translate", local_pos.x, local_pos.y, local_pos.z, type="double3")
        else:
            cmds.xform(jnt, ws=True, t=pos)
        print(f"? {jnt} 위치 적용 완료")

        # ? AIM 시퀀스 시작 조건: jnt가 aim_dict의 key일 경우
        world_up_obj = None
        world_up_axis = None
        current_aim_key = jnt
        all_aim = True
        
        for part in ['arm', 'finger', 'leg', 'foot']:
            for side in ['l','r']:
                aim_dict_updated = update_aim_dict_category(aim_dict, category=part, side=side, suffix='')
                if side == 'l':
                    arm_aim_axis = 'x'
                    leg_aim_axis = '-x'
                else:
                    arm_aim_axis = '-x'
                    leg_aim_axis = 'x'
                finger_world_up_obj = f'hand_{side}'

        if jnt in aim_dict_updated["arm"]:
            active_aim_sequence = aim_dict_updated["arm"][jnt]
            aim_axis = arm_aim_axis
            up_axis = 'z'
        elif jnt in aim_dict_updated["finger"]:
            active_aim_sequence = aim_dict_updated["finger"][jnt]
            if idx > 0:
                jnts = [f"{active_aim_sequence[1]}_estimated_pos_loc",
                        f"{active_aim_sequence[2]}_estimated_pos_loc",
                        f"{active_aim_sequence[3]}_estimated_pos_loc"]
                world_up_obj = pole_vector(jnts)
                world_up_axis = None
            else:
                world_up_obj = finger_world_up_obj
                world_up_axis = '-y'
            up_axis = 'y'
        elif jnt in aim_dict_updated["leg"]:
            active_aim_sequence = aim_dict_updated["leg"][jnt]
            aim_axis = leg_aim_axis
            up_axis = 'z'
        elif jnt in aim_dict_updated["foot"]:
            active_aim_sequence = aim_dict_updated["foot"][jnt]
            aim_axis='z'
            rotate_axis='y'
            all_aim = False
        if jnt in aim_dict_updated["spine"]:
            active_aim_sequence = aim_dict_updated["spine"][jnt]
            aim_axis = 'x'
            up_axis = 'z'
        print(f"?? AIM 시퀀스 시작: {current_aim_key} → {active_aim_sequence}")
        
        # ? AIM 회전 적용: 현재 jnt가 active_aim_sequence 안에 있을 경우
        if active_aim_sequence and jnt in active_aim_sequence:
            idx = active_aim_sequence.index(jnt)
            if idx < len(active_aim_sequence) - 1:
                aim_target_joint = active_aim_sequence[idx + 1]
                loc_name = f"{aim_target_joint}_estimated_pos_loc"
                if not cmds.objExists(loc_name):
                    print(f"?? {joint}: aim 타겟 로케이터 {loc_name} 존재하지 않음")
                    return
                if all_aim:
                    compute_and_apply_aim_matrix(
                        joint=jnt,
                        aim_target_joint=aim_target_joint,
                        aim_axis=aim_axis,
                        up_axis=up_axis,
                        world_up_obj=world_up_obj,
                        world_up_axis=world_up_axis,
                    )
                else:
                    align_joint_orient_with_world_axis_rotation(
                        joint=jnt,
                        aim_target_joint=aim_target_joint,
                        aim_axis=aim_axis,         # 이 축이 타겟을 바라보도록
                        rotate_axis=rotate_axis,      # 이 축만 회전 허용
                    )
                print(f"?? {jnt} → AIM 적용 완료 (→ {aim_target_joint})")
            else:
                print(f"?? {jnt}: AIM 시퀀스 마지막 - 회전 생략")



# 실행 예시
update_selected_joint_positions("m_med_unw_body_lod0_mesh", "m_med_unw_body_lod0_mesh1")
