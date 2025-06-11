import maya.cmds as cmds
import maya.api.OpenMaya as om

def get_bounding_box_center_from_faces():
    """
    선택된 faces의 월드 좌표상 bounding box 중심(translate)만 계산해서 반환
    """
    faces = cmds.ls(selection=True, flatten=True)
    if not faces:
        cmds.warning("페이스를 선택해주세요.")
        return None

    all_points = []
    for face in faces:
        verts = cmds.polyListComponentConversion(face, fromFace=True, toVertex=True)
        verts = cmds.ls(verts, flatten=True)
        for v in verts:
            pos = cmds.pointPosition(v, world=True)
            all_points.append(pos)

    if not all_points:
        cmds.warning("정점 좌표를 찾을 수 없습니다.")
        return None

    # 모든 정점 기준으로 bounding box center 계산
    xs, ys, zs = zip(*all_points)
    min_x, max_x = min(xs), max(xs)
    min_y, max_y = min(ys), max(ys)
    min_z, max_z = min(zs), max(zs)

    center = [
        (min_x + max_x) * 0.5,
        (min_y + max_y) * 0.5,
        (min_z + max_z) * 0.5
    ]

    print(f"Bounding box world center: {center}")
    return center


def get_individual_bounding_box_transforms():
    objects = cmds.ls(selection=True, type='transform')
    if not objects:
        cmds.warning("오브젝트를 선택해주세요.")
        return []

    transform_data_list = []

    for obj in objects:
        bbox = cmds.exactWorldBoundingBox(obj)
        min_x, min_y, min_z = bbox[0], bbox[1], bbox[2]
        max_x, max_y, max_z = bbox[3], bbox[4], bbox[5]

        center = [(min_x + max_x) / 2.0, (min_y + max_y) / 2.0, (min_z + max_z) / 2.0]
        size = [max_x - min_x, max_y - min_y, max_z - min_z]  # width, height, depth

        # 트랜스폼 데이터만 저장
        transform_info = {
            'object': obj,
            'translate': center,
            'scale': size
        }
        transform_data_list.append(transform_info)

        print(f"{obj} transform:", transform_info)

    return transform_data_list

def get_world_matrix(obj):
    sel = om.MSelectionList()
    sel.add(obj)
    dag_path = sel.getDagPath(0)
    return dag_path.inclusiveMatrix()

def transform_dict_to_matrix(transform_dict):
    """translate + scale 딕셔너리를 MMatrix로 변환"""
    t = transform_dict['translate']
    s = transform_dict['scale']
    transform = om.MTransformationMatrix()
    transform.setTranslation(om.MVector(*t), om.MSpace.kWorld)
    transform.setScale(s, om.MSpace.kWorld)
    return transform.asMatrix()

def get_world_matrix(obj):
    sel = om.MSelectionList()
    sel.add(obj)
    dag_path = sel.getDagPath(0)
    return dag_path.inclusiveMatrix()

def apply_translation_delta_to_multiple(from_position, to_position, target_objects, dup=None):
    """
    from_position, to_position: [x, y, z] 형식의 위치 리스트
    target_objects: 복사해서 이동할 오브젝트 리스트
    원본은 남기고 복사본만 위치 이동
    """
    # 위치 차이(델타) 계산
    delta_translation = [
        to_position[0] - from_position[0],
        to_position[1] - from_position[1],
        to_position[2] - from_position[2]
    ]

    result_objects = []

    for obj in target_objects:
        if dup:
            # 복사본 생성
            obj = cmds.duplicate(obj, name=f"{obj}_moved")[0]
        result_objects.append(obj)
            

        # 현재 위치
        current_pos = cmds.xform(obj, q=True, ws=True, translation=True)

        # 이동 적용
        new_pos = [
            current_pos[0] + delta_translation[0],
            current_pos[1] + delta_translation[1],
            current_pos[2] + delta_translation[2]
        ]

        cmds.xform(obj, ws=True, translation=new_pos)

        print(f"Duplicated and moved {obj} to {new_pos}")

    return result_objects

def transform_dict_to_matrix(transform_dict):
    t = transform_dict['translate']
    s = transform_dict.get('scale', [1.0, 1.0, 1.0])
    tm = om.MTransformationMatrix()
    tm.setTranslation(om.MVector(*t), om.MSpace.kWorld)
    tm.setScale(s, om.MSpace.kWorld)
    return tm.asMatrix()

def set_world_translation_only(obj, new_translation):
    """새로운 world 위치만 적용 (rotation/scale은 유지)"""
    cmds.xform(obj, ws=True, translation=new_translation)

def apply_translation_delta_to_joints_safe_reparent(from_position, to_position, joint_list):
    """
    from_position, to_position: [x, y, z] 포지션 리스트
    joint_list: 이동할 조인트 리스트
    """
    # 위치 차이(델타) 계산
    delta_translation = [
        to_position[0] - from_position[0],
        to_position[1] - from_position[1],
        to_position[2] - from_position[2]
    ]

    for joint in joint_list:
        # 자식 조인트 detach
        children = cmds.listRelatives(joint, children=True, type='joint', fullPath=False) or []
        for child in children:
            cmds.parent(child, world=True)

        # 현재 위치 얻기
        current_pos = cmds.xform(joint, q=True, ws=True, translation=True)

        # 델타 적용
        new_pos = [
            current_pos[0] + delta_translation[0],
            current_pos[1] + delta_translation[1],
            current_pos[2] + delta_translation[2]
        ]

        # 위치만 이동
        cmds.xform(joint, ws=True, translation=new_pos)

        # 자식 다시 attach
        for child in children:
            cmds.parent(child, joint)

        print(f"Moved {joint} to {new_pos} (translation only), reparented children: {children}")

def unbind_skin_keep_history():
    selection = cmds.ls(selection=True, type='transform')
    if not selection:
        cmds.warning("하나 이상의 지오메트리를 선택해주세요.")
        return []

    result = []

    for obj in selection:
        # 연결된 스킨클러스터 찾기
        skin_clusters = cmds.ls(cmds.listHistory(obj), type='skinCluster')
        if not skin_clusters:
            print(f"'{obj}'에는 스킨 클러스터가 없습니다.")
            continue

        skin_cluster = skin_clusters[0]

        # 바인드된 조인트들과 지오메트리 정보
        bind_joints = cmds.skinCluster(skin_cluster, query=True, influence=True)
        geometry = cmds.skinCluster(skin_cluster, query=True, geometry=True)[0]

        # Unbind (히스토리 유지)
        cmds.skinCluster(skin_cluster, edit=True, unbindKeepHistory=True)

        print(f"[Unbound] {geometry} ← skinCluster: {skin_cluster}, joints: {bind_joints}")

        result.append({
            'geometry': geometry,
            'bind_joints': bind_joints
        })

    return result

def rebind_skin_multiple(data_list, skin_method=0, normalize_weights=1):
    """
    data_list: [{'geometry': 'mesh1', 'bind_joints': ['j1', 'j2']}, ...]
    skin_method: 0=Classic Linear, 1=Dual Quaternion, 2=Blended
    normalize_weights: 0=None, 1=Interactive, 2=Post
    """
    created_skin_clusters = []

    for entry in data_list:
        geometry = entry.get('geometry')
        bind_joints = entry.get('bind_joints')

        if not geometry or not bind_joints:
            print(f"⚠️ 누락된 정보: {entry}")
            continue

        # 기존 스킨클러스터 제거 (중복 방지)
        old_skin = cmds.ls(cmds.listHistory(geometry), type='skinCluster')
        if old_skin:
            cmds.delete(old_skin)

        # 새 스킨클러스터 생성
        skin_cluster = cmds.skinCluster(
            bind_joints,
            geometry,
            toSelectedBones=True,
            bindMethod=skin_method,
            normalizeWeights=normalize_weights,
            skinMethod=skin_method,
            name=f"{geometry}_skinCluster"
        )[0]

        print(f"[Rebound] {geometry} ← {bind_joints} → {skin_cluster}")
        created_skin_clusters.append(skin_cluster)

    return created_skin_clusters

# 예시 실행
head_lod0_teeth_space_index = [
'[112:172]','[777:860]','[1377:1396]','[1401:1404]','[1421:1481]','[1490:1493]',
'[1498:1881]','[12113:12173]','[12778:12861]','[13378:13397]','[13402:13405]',
'[13422:13482]','[13491:13494]','[13499:13882]'
]
target_teeth_space_index = [
'[112:172]','[777:860]','[1377:1396]','[1401:1404]','[1421:1481]','[1490:1493]',
'[1498:1881]','[12113:12173]','[12778:12861]','[13378:13397]','[13402:13405]',
'[13422:13482]','[13491:13494]','[13499:13882]'
]
head_lod0_eyes_space_index = '[17668:17686]','[17691:17733]','[17742:17745]','[21176:21207]','[5667:5685]','[5690:5732]','[5741:5744]','[9175:9206]'
target_eyes_space_index = '[17668:17686]','[17691:17733]','[17742:17745]','[21176:21207]','[5667:5685]','[5690:5732]','[5741:5744]','[9175:9206]'

head_lod0_teeth_space = [f'head_lod0_mesh.f{i}' for i in head_lod0_teeth_space_index]
head_lod0_eyes_space = [f'head_lod0_mesh.f{i}' for i in head_lod0_eyes_space_index]

target_teeth_space = [f'Mesh.f{i}' for i in target_teeth_space_index]
target_eyes_space = [f'Mesh.f{i}' for i in target_eyes_space_index]

teeth_saliva = ['teeth_lod*_mesh','saliva_lod*_mesh']
teeth_saliva = cmds.ls(teeth_saliva,r=1)

eyes = ['eyeLeft_lod*_mesh','eyeRight_lod*_mesh','eyeshell_lod*_mesh','eyelashes_lod*_mesh','eyeEdge_lod*_mesh','cartilage_lod*_mesh']
eyes = cmds.ls(eyes,r=1)

joints = [
    'FACIAL_L_EyesackUpper',
 'FACIAL_R_EyesackUpper',
 'FACIAL_L_EyelidUpperFurrow',
 'FACIAL_R_EyelidUpperFurrow',
 'FACIAL_L_EyelidUpperB',
 'FACIAL_R_EyelidUpperB',
 'FACIAL_L_EyelidUpperA',
 'FACIAL_R_EyelidUpperA',
 'FACIAL_L_Eye',
 'FACIAL_R_Eye',
 'FACIAL_L_EyelidLowerA',
 'FACIAL_R_EyelidLowerA',
 'FACIAL_L_EyelidLowerB',
 'FACIAL_R_EyelidLowerB',
 'FACIAL_L_EyeCornerInner',
 'FACIAL_R_EyeCornerInner',
 'FACIAL_L_EyeCornerOuter',
 'FACIAL_R_EyeCornerOuter',
 'FACIAL_L_EyesackLower',
 'FACIAL_R_EyesackLower',
 'FACIAL_L_CheekInner',
 'FACIAL_R_CheekInner',
 'FACIAL_L_CheekOuter',
 'FACIAL_R_CheekOuter',
 'FACIAL_L_NasolabialBulge',
 'FACIAL_R_NasolabialBulge',
 'FACIAL_L_CheekLower',
 'FACIAL_R_CheekLower',
 'FACIAL_C_Nose',
 'FACIAL_C_MouthUpper',
 'FACIAL_C_LowerLipRotation',
 'FACIAL_C_Jaw',
 'FACIAL_L_EyeParallel',
 'FACIAL_L_Pupil',
 'FACIAL_R_EyeParallel',
 'FACIAL_R_Pupil',
 'FACIAL_C_LipUpper',
 'FACIAL_L_LipUpper',
 'FACIAL_R_LipUpper',
 'FACIAL_L_LipUpperOuter',
 'FACIAL_R_LipUpperOuter',
 'FACIAL_L_LipCorner',
 'FACIAL_R_LipCorner',
 'FACIAL_L_LipLowerOuter',
 'FACIAL_R_LipLowerOuter',
 'FACIAL_R_LipLower',
 'FACIAL_L_LipLower',
 'FACIAL_C_LipLower',
 'FACIAL_C_Chin',
 'FACIAL_R_Jawline',
 'FACIAL_C_TeethLower',
 'FACIAL_L_Jawline',
 'FACIAL_C_Tongue1',
 'FACIAL_L_ForeheadOut',
 'FACIAL_L_ForeheadMid',
 'FACIAL_R_ForeheadOut',
 'FACIAL_L_ForeheadIn',
 'FACIAL_R_ForeheadIn',
 'FACIAL_R_ForeheadMid',
 'FACIAL_C_Forehead',
 'FACIAL_C_Tongue2',
 'FACIAL_C_TongueUpper2',
 'FACIAL_L_TongueSide2',
 'FACIAL_R_TongueSide2',
 'FACIAL_C_Tongue3',
 'FACIAL_C_TongueUpper3',
 'FACIAL_C_TongueLower3',
 'FACIAL_L_TongueSide3',
 'FACIAL_R_TongueSide3',
 'FACIAL_C_Tongue4',
 'FACIAL_C_NoseLower',
 'FACIAL_C_NoseTip',
 'FACIAL_L_Nostril',
 'FACIAL_R_Nostril',
 'FACIAL_C_MouthLower', 
 'FACIAL_C_TeethUpper',
 'FACIAL_C_Neck1Root', 
 'FACIAL_C_Neck2Root', 
 'FACIAL_C_FacialRoot'
 ]

cmds.select(head_lod0_teeth_space, r=1)
head_lod0_teeth_space = get_bounding_box_center_from_faces()

cmds.select(target_teeth_space, r=1)
target_teeth_space = get_bounding_box_center_from_faces()

cmds.select(head_lod0_eyes_space, r=1)
head_lod0_eyes_space = get_bounding_box_center_from_faces()

cmds.select(target_eyes_space, r=1)
target_eyes_space = get_bounding_box_center_from_faces()

# cmds.select(teeth_saliva, r=1)
# cmds.select(eyes, r=1)
# bbox_transforms = get_individual_bounding_box_transforms()

# 'boxA' → 'boxAprime' 변형을 ['boxB1', 'boxB2', 'boxC']에 적용
apply_translation_delta_to_multiple(head_lod0_teeth_space, target_teeth_space, teeth_saliva,dup=False)
apply_translation_delta_to_multiple(head_lod0_eyes_space, target_eyes_space, eyes,dup=False)


# joints = cmds.ls(selection=True, type='joint')
apply_translation_delta_to_joints_safe_reparent(head_lod0_eyes_space, target_eyes_space, joints)

# 1. 언바인드 → 바인드 정보 저장
cmds.select(teeth_saliva,eyes, r=1)
unbind_data = unbind_skin_keep_history()

# 2. 리바인드 (반복 적용)
rebind_skin_multiple(unbind_data)
