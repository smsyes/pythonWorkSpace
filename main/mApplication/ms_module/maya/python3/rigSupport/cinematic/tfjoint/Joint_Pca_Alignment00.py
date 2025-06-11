import maya.api.OpenMaya as om
import maya.cmds as cmds
import numpy as np

# --------- UTILS ---------

def get_dag_path(node):
    sel = om.MSelectionList()
    sel.add(node)
    return sel.getDagPath(0)

def get_mesh_fn(mesh_name):
    dag_path = get_dag_path(mesh_name)
    return om.MFnMesh(dag_path), dag_path

def get_face_vertices_world(mesh_fn, face_index):
    verts = mesh_fn.getPolygonVertices(face_index)
    return [om.MVector(mesh_fn.getPoint(i, om.MSpace.kWorld)) for i in verts]

def compute_pca_frame(points):
    arr = np.array([[p.x, p.y, p.z] for p in points])
    mean = np.mean(arr, axis=0)
    centered = arr - mean
    _, _, vh = np.linalg.svd(centered, full_matrices=False)

    x_axis = om.MVector(*vh[0]).normalize()
    y_axis = om.MVector(*vh[1]).normalize()
    z_axis = (x_axis ^ y_axis).normalize()

    return x_axis, y_axis, z_axis

def compute_rotation_matrix(x_axis, y_axis, z_axis):
    return om.MMatrix([
        x_axis.x, x_axis.y, x_axis.z, 0.0,
        y_axis.x, y_axis.y, y_axis.z, 0.0,
        z_axis.x, z_axis.y, z_axis.z, 0.0,
        0.0,      0.0,      0.0,      1.0
    ])

def get_face_center(points):
    return sum(points, om.MVector(0, 0, 0)) / len(points)

def create_locator(name, position, rotation_matrix):
    if cmds.objExists(name):
        cmds.delete(name)
    loc = cmds.spaceLocator(name=name)[0]
    cmds.xform(loc, ws=True, t=(position.x, position.y, position.z))

    tm = om.MTransformationMatrix(rotation_matrix)
    euler = tm.rotation()
    rot_deg = [om.MAngle(euler.x).asDegrees(),
               om.MAngle(euler.y).asDegrees(),
               om.MAngle(euler.z).asDegrees()]
    cmds.xform(loc, ws=True, rotation=rot_deg)
    return loc

# --------- ROTATION ANALYSIS ---------

def find_closest_face_in_direction(mesh_fn, origin, direction, max_distance=5.0, dot_threshold=0.7):
    closest_face = None
    closest_dist = float('inf')
    for i in range(mesh_fn.numPolygons):
        verts = get_face_vertices_world(mesh_fn, i)
        center = get_face_center(verts)
        vec = (center - origin).normalize()
        dot = vec * direction.normalize()
        if dot < dot_threshold:
            continue
        dist = (center - origin).length()
        if dist < closest_dist and dist < max_distance:
            closest_face = i
            closest_dist = dist
    return closest_face

def extract_face_rotation_with_alignment(mesh_a, mesh_b, face_index):
    fn_a, _ = get_mesh_fn(mesh_a)
    fn_b, _ = get_mesh_fn(mesh_b)

    points_a = get_face_vertices_world(fn_a, face_index)
    points_b = get_face_vertices_world(fn_b, face_index)

    x_a, y_a, z_a = compute_pca_frame(points_a)
    x_b, y_b, z_b = compute_pca_frame(points_b)

    # Align B mesh axes to A
    if (x_a * x_b) < 0:
        x_b = -x_b
    if (y_a * y_b) < 0:
        y_b = -y_b
    z_b = (x_b ^ y_b).normalize()

    rot_matrix_a = compute_rotation_matrix(x_a, y_a, z_a)
    rot_matrix_b = compute_rotation_matrix(x_b, y_b, z_b)

    center_a = get_face_center(points_a)
    center_b = get_face_center(points_b)

    return center_a, rot_matrix_a, center_b, rot_matrix_b

def compare_rotations(matrix_a, matrix_b):
    rot_a = om.MTransformationMatrix(matrix_a).rotation(asQuaternion=True)
    rot_b = om.MTransformationMatrix(matrix_b).rotation(asQuaternion=True)
    delta = rot_a.inverse() * rot_b
    angle_rad = 2 * np.arccos(max(min(delta.w, 1.0), -1.0))
    return np.degrees(angle_rad)

def analyze_joint_face_rotation_aligned(joint, mesh_a, mesh_b):
    joint_matrix = om.MMatrix(cmds.xform(joint, q=True, ws=True, m=True))
    joint_pos = om.MVector(joint_matrix[12], joint_matrix[13], joint_matrix[14])
    directions = {
        'x': om.MVector(joint_matrix[0], joint_matrix[1], joint_matrix[2]),
        'y': om.MVector(joint_matrix[4], joint_matrix[5], joint_matrix[6]),
        'z': om.MVector(joint_matrix[8], joint_matrix[9], joint_matrix[10]),
        '-x': -om.MVector(joint_matrix[0], joint_matrix[1], joint_matrix[2]),
        '-y': -om.MVector(joint_matrix[4], joint_matrix[5], joint_matrix[6]),
        '-z': -om.MVector(joint_matrix[8], joint_matrix[9], joint_matrix[10]),
    }

    mesh_a_fn, _ = get_mesh_fn(mesh_a)

    results = {}

    for dir_name, dir_vec in directions.items():
        face_id = find_closest_face_in_direction(mesh_a_fn, joint_pos, dir_vec)
        if face_id is None:
            print(f"[{dir_name}] No face found.")
            continue

        center_a, rot_a, center_b, rot_b = extract_face_rotation_with_alignment(mesh_a, mesh_b, face_id)
        angle_diff = compare_rotations(rot_a, rot_b)

        create_locator(f"loc_A_{dir_name}", center_a, rot_a)
        create_locator(f"loc_B_{dir_name}", center_b, rot_b)

        results[dir_name] = {
            'face_id': face_id,
            'rotation_error_deg': angle_diff
        }

    return results

# --------- AVERAGE & CREATE JOINT ---------

def compute_average_transform_from_locators(locator_names):
    positions = []
    rotation_vectors = []

    for name in locator_names:
        if not cmds.objExists(name):
            continue

        pos = cmds.xform(name, q=True, ws=True, t=True)
        rot = cmds.xform(name, q=True, ws=True, rotation=True)

        positions.append(om.MVector(pos[0], pos[1], pos[2]))

        rot_rad = [np.radians(angle) for angle in rot]
        euler = om.MEulerRotation(rot_rad[0], rot_rad[1], rot_rad[2])
        quat = euler.asQuaternion()
        rotation_vectors.append(quat)

    if not positions or not rotation_vectors:
        raise RuntimeError("No valid locators found for averaging.")

    avg_pos = sum(positions, om.MVector(0, 0, 0)) / len(positions)
    avg_quat = rotation_vectors[0]
    for q in rotation_vectors[1:]:
        avg_quat = om.MQuaternion.slerp(avg_quat, q, 1.0 / len(rotation_vectors))

    avg_euler = avg_quat.asEulerRotation()
    avg_rot_deg = [om.MAngle(avg_euler.x).asDegrees(),
                   om.MAngle(avg_euler.y).asDegrees(),
                   om.MAngle(avg_euler.z).asDegrees()]

    return avg_pos, avg_rot_deg

def create_new_joint_from_b_mesh(joint_name="joint1", new_name="joint1_B", locator_prefix="loc_B_"):
    directions = ['x', 'y', 'z', '-x', '-y', '-z']
    locator_names = [f"{locator_prefix}{d}" for d in directions]

    avg_pos, avg_rot_deg = compute_average_transform_from_locators(locator_names)

    cmds.select(cl=True)  # ✅ 선택 초기화
    if cmds.objExists(new_name):
        cmds.delete(new_name)

    new_joint = cmds.joint(name=new_name)
    cmds.xform(new_joint, ws=True, t=(avg_pos.x, avg_pos.y, avg_pos.z))
    cmds.xform(new_joint, ws=True, rotation=avg_rot_deg)

    print(f"✅ Created joint '{new_name}' at {avg_pos} with rotation {avg_rot_deg}")
    return new_joint


# 1. 분석 및 시각화
analyze_joint_face_rotation_aligned("joint1", "meshA", "meshB")

# 2. 평균 위치/회전 기반으로 새로운 조인트 생성
create_new_joint_from_b_mesh("joint1", "joint1_B", "loc_B_")
