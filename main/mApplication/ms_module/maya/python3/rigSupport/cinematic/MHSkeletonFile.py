# -*- coding: utf-8 -*-
import math
import json
import maya.api.OpenMaya as om2
import maya.cmds as cmds
from collections import deque
import os
import sys

# Defining common paths
ROOT_DIR = "T:/scripts/python/application/maya/MetaHuman-DNA-Calibration-main"
WORK_DIR = "C:/Users/smi_th/Documents/Megascans Library/Downloaded/DHI/fskikIND_asset/8k/asset_source/MetaHumans/Ada/SourceAssets"

# body Mesh Name
baseBody = 'f_med_nrw'
character_name = "Apex"

# Body file
orig_body_file = f"{WORK_DIR}/{baseBody}_body_rig.ma"

# remodel Body file
remodel_body_file = f"{WORK_DIR}/model/{character_name}_remodel.obj"


# Temp folder
temp_dir = f"{WORK_DIR}/temp"

# Output folder
output_dir = f"{WORK_DIR}/output/scale"

# Model folder
model_dir = f"{WORK_DIR}/model"

# Create folders
if not os.path.exists(output_dir):
   os.makedirs(output_dir)
if not os.path.exists(temp_dir):
   os.makedirs(temp_dir)
if not os.path.exists(model_dir):
   os.makedirs(model_dir)

# Scaled body files
skeleton_file = os.path.join(temp_dir, "skeleton_body.ma")
body_file = os.path.join(temp_dir, "body.ma")

################
def get_joints_from_file(file_path):
    deformer_data = {}
    with open(file_path) as def_file:
        deformer_data = json.load(def_file)

    joints_in_cluster = []
    children = deformer_data["deformerWeight"]["weights"]
    for child in children:
        joints_in_cluster.append(child["source"])
    print(joints_in_cluster)
    return joints_in_cluster
    # cmds.select(joints_in_cluster, add=True)

def load_skin_weights(mesh, path, file_name, max_influence):


    # create skinCluster
    joints = get_joints_from_file(path + "/" + file_name)
    if not joints:
        raise RuntimeError(f"Could not find joints in skinweights file {path}")
    joints.append(mesh)
    skinCluster = cmds.skinCluster(joints, tsb=True)[0]
    # zero everything, was seeing weird values perhaps from initial default weights.
    # cmds.skinPercent(skinCluster,mesh,pruneWeights=100,normalize=False)
    # load new weights
    cmds.deformerWeights(file_name, path=path, deformer=skinCluster, im=True, method='index')

    # set skinCluster settings
    cmds.setAttr(skinCluster + '.normalizeWeights', 1)
    cmds.skinCluster(skinCluster, e=True, forceNormalizeWeights=True)
    cmds.setAttr(skinCluster + '.maintainMaxInfluences', 1)
    cmds.setAttr(skinCluster + '.maxInfluences', max_influence)
    
def save_aim_dict_to_json(data, path):
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2)
    print(f"aim_dict 꾨즺: {path}")

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
            # spine 醫뚯슦 섎늻吏 딄퀬 洹몃濡
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
            print(f"좑툘 {obj}: 媛源뚯슫 vertex瑜李얠쓣 놁뒿덈떎.")
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
        print(f"좑툘 {obj}: 꾩튂 異붿젙 ㅽ뙣: {e}")
        return None

def rotate_transform_y_to_aim_target(transform, target, aim_axis='z', rotate_axis='y'):
    axis_map = {
        'x': om2.MVector(1, 0, 0),
        'y': om2.MVector(0, 1, 0),
        'z': om2.MVector(0, 0, 1)
    }

    if not cmds.objExists(transform) or not cmds.objExists(target):
        print(f"좑툘 {transform} 먮뒗 {target} 議댁옱섏 딆쓬")
        return

    pos_a = om2.MVector(cmds.xform(transform, q=True, ws=True, t=True))
    pos_b = om2.MVector(cmds.xform(target, q=True, ws=True, t=True))
    aim_vec = (pos_b - pos_a)

    # ? ъ쁺: rotate_axis 됰㈃ъ쁺
    if rotate_axis == 'y':
        aim_vec.y = 0
    elif rotate_axis == 'x':
        aim_vec.x = 0
    elif rotate_axis == 'z':
        aim_vec.z = 0

    if aim_vec.length() < 1e-5:
        print("좑툘 ъ쁺踰≫꽣媛 덈Т 吏㏃븘 뚯쟾 遺덇")
        return

    aim_vec = aim_vec.normalize()

    # ? aim axis 泥섎━ (뚯닔 異
    base_axis = aim_axis.lstrip('-')
    reference_vec = axis_map.get(base_axis.lower(), om2.MVector(0, 0, 1))
    if aim_axis.startswith('-'):
        reference_vec *= -1

    rot_quat = om2.MQuaternion(reference_vec, aim_vec)
    euler = rot_quat.asEulerRotation()

    # ? 뚯쟾 곸슜: rotate_axis留곸슜
    cmds.setAttr(f"{transform}.rotateX", 0)
    cmds.setAttr(f"{transform}.rotateY", 0)
    cmds.setAttr(f"{transform}.rotateZ", 0)

    if rotate_axis == 'x':
        cmds.setAttr(f"{transform}.rotateX", math.degrees(euler.x))
    elif rotate_axis == 'y':
        cmds.setAttr(f"{transform}.rotateY", math.degrees(euler.y))
    elif rotate_axis == 'z':
        cmds.setAttr(f"{transform}.rotateZ", math.degrees(euler.z))

    print(f"렞 {transform} {target} 諛⑺뼢쇰줈 {rotate_axis.upper()}異뚯쟾 곸슜 꾨즺 (aim axis: {aim_axis})")

def align_joint_orient_with_world_axis_rotation(
    joint,
    target,
    aim_axis='z',         # 異뺤씠 寃잛쓣 諛붾씪蹂대룄濡
    rotate_axis='y',      # 異뺣쭔 뚯쟾 덉슜
):
    loc_name = f"{target}_estimated_pos_loc"
    if not cmds.objExists(loc_name):
        print(f"좑툘 {joint}: aim 寃濡쒖댄꽣 {loc_name} 議댁옱섏 딆쓬")
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

    print(f"렞 {joint}: {target} {rotate_axis.upper()}異뚯쟾留뚯쑝濡aim 꾨즺")

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
        print(f"좑툘 {joint}: aim 寃濡쒖댄꽣 {loc_name} 議댁옱섏 딆쓬")
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
        print(f"좑툘 {joint}: aim怨up 踰≫꽣媛 됲뻾섏뿬 뚯쟾 怨꾩궛 ㅽ뙣")
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
        print(f"렞 AIM 곸슜: {joint} {target} (axis: {aim_axis}, up: {up_axis})")

def update_selected_joint_positions_step1(meshA, meshB, aim_dict_path=None, selection_only=False, neighbor_count=300, use_weighted=True, debug=False):
    selection = cmds.ls(sl=True, type='joint')
    if not selection:
        cmds.error("[좑툘] 섎굹 댁긽議곗씤몃 좏깮섏꽭")
    
    if not aim_dict_path:
        cmds.error("[좑툘] aim_dict.json 寃쎈줈媛 꾩슂⑸땲")

    aim_dict = load_from_json(aim_dict_path)

    # 紐⑤뱺 議곗씤몃 좏깮 곸쑝濡媛몄삤湲
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
            print(f"좑툘 議곗씤{jnt_name} 놁쓬 - ㅽ궢")
            continue
        estimate_object_position_from_mesh_deform(
            obj=jnt_name,
            meshA=meshA,
            meshB=meshB,
            neighbor_count=neighbor_count,
            use_weighted=use_weighted,
            visualize=True
        )

    # Pole Vector 앹꽦 (aim_dict 湲곕컲)
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
        cmds.error("[좑툘] 섎굹 댁긽議곗씤몃 좏깮섏꽭")

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
            print(f"좑툘 {jnt}: 濡쒖댄꽣 놁쓬 - 꾩튂 앸왂")
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
                print(f"꾩튂 곸슜: {jnt} {round(pos[0],2)}, {round(pos[1],2)}, {round(pos[2],2)})")
        else:
            print(f"㎦ [Dry Run] {jnt} 꾩튂 怨꾩궛 꾨즺: {pos}")

        # 異붽: 뚯쟾 곸슜 (aim_dict 湲곕컲)
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
        print("濡쒖댄꽣 諛꾩떆 ㅻ툕앺듃 뺣━ 꾨즺")

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

    cmds.text(label="Step1: Estimate Locators (좏깮議곗씤湲곕컲)\nStep2: Apply Movement (湲곗〈 濡쒖댄꽣 湲곕컲)\n", align='left', wordWrap=True, height=40)

    meshA_field = cmds.textFieldGrp(label="Mesh A (source)", text="f_med_nrw_body_lod0_mesh")
    meshB_field = cmds.textFieldGrp(label="Mesh B (target)", text="remodel_body")
    aim_field = cmds.textFieldButtonGrp(label="aim_dict.json", buttonLabel="뱛",
                                        text="T:/scripts/python/application/maya/python3/Json/aim_dict.json", bc=lambda: cmds.textFieldButtonGrp(aim_field, e=True, text=cmds.fileDialog2(fm=1, fileFilter="*.json")[0]))
    rule_field = cmds.textFieldButtonGrp(label="exclude_rules.json", buttonLabel="뱛",
                                         text="T:/scripts/python/application/maya/python3/Json/exclude_rules.json", bc=lambda: cmds.textFieldButtonGrp(rule_field, e=True, text=cmds.fileDialog2(fm=1, fileFilter="*.json")[0]))

    opts = {
        "cleanup": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Cleanup Locators', value1=True),
        "dry_run": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Dry Run (no apply)', value1=False),
        "selection_only": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Selection Only', value1=False),
        "debug": cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Debug Log', value1=True),
    }

    cmds.separator(h=8, style='in')
    cmds.button(label="뵷 Step1: Estimate Locators", c=lambda *_: run_step1())
    cmds.button(label="윝 Step2: Apply Movement", c=lambda *_: run_step2())
    cmds.button(label="륅툘 Edit Aim Dict", c=lambda *_: launch_aim_dict_editor())

    cmds.setParent("..")
    cmds.showWindow(win)

def run_step1():
    meshA = cmds.textFieldGrp(meshA_field, q=True, text=True)
    meshB = cmds.textFieldGrp(meshB_field, q=True, text=True)
    aim_dict_path = cmds.textFieldButtonGrp(aim_field, q=True, text=True)

    if not (meshA and meshB):
        cmds.error("MeshA MeshB瑜紐⑤몢 낅젰섏꽭")

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
        cmds.error("aim_dict.json怨exclude_rules.json紐⑤몢 낅젰섏꽭")

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
    


def get_dag_path(node):
    sel = om2.MSelectionList()
    sel.add(node)
    return sel.getDagPath(0)

def traverse_face_iterative(dag, start_face, v0, v1,
                            face_visited, cv_map, cv_map_inv,
                            new_poly_counts, new_poly_connects,
                            orig_vertices, new_vertices,
                            depth=0, max_depth=1000):
    fn = om2.MFnMesh(dag)
    poly_it = om2.MItMeshPolygon(dag)
    edge_it = om2.MItMeshEdge(dag)

    stack = [(start_face, v0, v1)]
    while stack:
        face_idx, v0, v1 = stack.pop()
        if face_visited[face_idx]:
            continue

        poly_it.setIndex(face_idx)
        vtx_ids = poly_it.getVertices()
        edge_ids = poly_it.getEdges()
        vtx_cnt = len(vtx_ids)

        def idx(i): return (i + vtx_cnt) % vtx_cnt
        dir = 0
        start_idx = -1
        for i in range(vtx_cnt):
            if vtx_ids[i] == v0:
                start_idx = i
                if vtx_ids[idx(i+1)] == v1:
                    dir = 1
                elif vtx_ids[idx(i-1)] == v1:
                    dir = -1
                break
        if dir == 0:
            continue

        vtx_sorted = [vtx_ids[idx(start_idx + i * dir)] for i in range(vtx_cnt)]
        edge_sorted = [edge_ids[idx(start_idx + i * dir if dir == 1 else start_idx - 1 + i * dir)]
                       for i in range(vtx_cnt)]

        for vtx_id in vtx_sorted:
            if cv_map[vtx_id] == -1:
                new_vertices.append(orig_vertices[vtx_id])
                new_idx = len(new_vertices) - 1
                cv_map[vtx_id] = new_idx
                cv_map_inv[new_idx] = vtx_id

        new_poly_counts.append(vtx_cnt)
        for vtx_id in vtx_sorted:
            new_poly_connects.append(cv_map[vtx_id])

        face_visited[face_idx] = True

        for edge_id in edge_sorted:
            edge_it.setIndex(edge_id)
            vtx_pair = edge_it.vertexId(0), edge_it.vertexId(1)
            faces = edge_it.getConnectedFaces()
            if len(faces) > 1:
                neighbor = faces[1] if faces[0] == face_idx else faces[0]
                if face_visited[neighbor]:
                    continue
                stack.append((neighbor, vtx_pair[1], vtx_pair[0]))

def get_face_and_vertices_from_selection():
    sel = cmds.ls(sl=True, fl=True)
    if len(sel) != 3:
        raise RuntimeError("Exactly 3 vertices must be selected on the same face")

    meshes = list(set(s.split(".vtx[")[0] for s in sel))
    if len(meshes) != 1:
        raise RuntimeError("All selected vertices must be from the same mesh")
    mesh = meshes[0]

    indices = [int(s.split("[")[-1].rstrip("]")) for s in sel]
    dag = get_dag_path(mesh)
    fn_mesh = om2.MFnMesh(dag)

    face_sets = []
    for vtx_id in indices:
        it = om2.MItMeshVertex(dag)
        it.setIndex(vtx_id)
        face_sets.append(set(it.getConnectedFaces()))

    common_faces = set.intersection(*face_sets)
    if len(common_faces) != 1:
        raise RuntimeError("Selected vertices must define a unique face")

    return dag, indices, list(common_faces)[0]

def mesh_reorder_from_face(with_map=False):
    dag, ref_indices, face_idx = get_face_and_vertices_from_selection()
    fn = om2.MFnMesh(dag)

    num_verts = fn.numVertices
    num_faces = fn.numPolygons

    face_visited = [False] * num_faces
    cv_map = [-1] * num_verts
    cv_map_inv = [-1] * num_verts

    new_poly_counts = om2.MIntArray()
    new_poly_connects = om2.MIntArray()
    new_vertices = om2.MFloatPointArray()
    orig_vertices = fn.getPoints(om2.MSpace.kObject)

    traverse_face_iterative(dag, face_idx, ref_indices[0], ref_indices[1],
                  face_visited, cv_map, cv_map_inv,
                  new_poly_counts, new_poly_connects,
                  orig_vertices, new_vertices,
                  depth=0, max_depth=1000)

    if with_map:
        return cv_map, fn, dag

    # Debug: Print vertex ID remapping
    print("\nVertex ID Remapping (old -> new):")
    for old_id, new_id in enumerate(cv_map):
        print(f"  Vertex {old_id:4} -> {new_id:4}")

    fn_new = om2.MFnMesh()
    new_mesh = fn_new.create(new_vertices, new_poly_counts, new_poly_connects)
    new_name = cmds.rename(om2.MDagPath.getAPathTo(new_mesh).fullPathName(), "ReorderedMesh")
    print(f"\u2705 Mesh reordered: {new_name}")
    return new_name

def transfer_vertex_order_via_resultmesh():
    import copy
    sel = cmds.ls(sl=True, fl=True)
    if len(sel) != 6:
        raise RuntimeError("Select 3 vertices from src, then 3 from tgt")

    # 1. reorder src and tgt separately with mapping
    cmds.select(sel[:3])
    src_map, src_fn, _ = mesh_reorder_from_face(with_map=True)
    cmds.select(sel[3:])
    tgt_map, tgt_fn, _ = mesh_reorder_from_face(with_map=True)

    # 2. invert mapping: new_id -> original_id
    src_inv = {v: k for k, v in enumerate(src_map) if v != -1}
    tgt_inv = {v: k for k, v in enumerate(tgt_map) if v != -1}

    tgt_points = tgt_fn.getPoints(om2.MSpace.kWorld)

    # 3. new mesh positions = tgt[new_id], write into src[old_id]
    new_points = src_fn.getPoints(om2.MSpace.kObject)
    for new_id in src_inv:
        old_id = src_inv[new_id]
        tgt_id = tgt_inv[new_id]
        new_points[old_id] = tgt_points[tgt_id]

    # 4. duplicate original src mesh
    src_path = src_fn.fullPathName()
    duplicated = cmds.duplicate(src_path, name="TransferredViaResultMesh")[0]
    dup_dag = get_dag_path(duplicated)
    fn_dup = om2.MFnMesh(dup_dag)

    # apply target positions
    fn_dup.setPoints(new_points, om2.MSpace.kObject)

    # unparent the duplicated mesh to world
    if cmds.listRelatives(duplicated, p=1):
        cmds.parent(duplicated, world=True)
    new_name = duplicated
    # delete target mesh and rename duplicated to target name
    tgt_name = sel[3].split(".vtx")[0]
    cmds.delete(tgt_name)
    new_name = cmds.rename(duplicated, tgt_name)
    print(f"Transferred shape via result mesh remapping: {new_name}")
    return new_name
    

#############

########################### RIGGING PART ###############################################################################

# Scaling body

# Step 1: Open body scene
cmds.file(orig_body_file, options="v=0", type="mayaAscii", i=True)

# Step 2: Save skin cluster values in JSON file
for i in range(4):
    cmds.deformerWeights(f"body_lod{i}_sw.json", path=temp_dir, deformer=f"{baseBody}_body_lod{i}_mesh_skinCluster",
                         weightPrecision=16, weightTolerance=0.0000001, export=True)

# Step 3: body remodel import
cmds.file(remodel_body_file, options="v=0", type="OBJ", i=True)

# Step 4: Manual work in Maya
cmds.select('root', replace=True)
cmds.select(hi=True)
cmds.delete(cmds.ls(sl=True, type='constraint'))

# Step 5: nodes delete
deleteNodes = [f'{baseBody}_flipflops_lod0_mesh',f'{baseBody}_combined_lod0_mesh', f'{baseBody}_flipflops_lod1_mesh', f'{baseBody}_flipflops_lod2_mesh', f'{baseBody}_flipflops_lod3_mesh','rig_setup_GRP', 'Skeletons']
cmds.delete(deleteNodes)
cmds.setAttr('root.v', 1)

# Step 6: vertex reorder
transfer_vertex_order_via_resultmesh()

# Step 7: Metahuman body transfer
launch_MH_body_TF_panel()

# Step 8: body mesh delete history and freeze transform
delHistoryNodes = [f'{baseBody}_body_lod0_mesh',f'{baseBody}_body_lod1_mesh',f'{baseBody}_body_lod2_mesh',f'{baseBody}_body_lod3_mesh']
cmds.delete(delHistoryNodes, constructionHistory = True)
cmds.makeIdentity("root", apply=True, t=True, r=True, s=True)

# Step 9: Read joints from skin cluster JSON file
for i in range(4):
    influence = 8
    if i == 3:
        influence = 4
    load_skin_weights(f"{baseBody}_body_lod{i}_meshShape", temp_dir, f"body_lod{i}_sw.json", influence)

# Step 10: Save body files
cmds.file(rename=str(body_file))
cmds.file(save=True, type='mayaAscii')

# Step 11: node delete
deleteNodes = delHistoryNodes + ['thigh_r','thigh_l','lowerarm_l','upperarm_twist_01_l','upperarm_twist_02_l','lowerarm_r','upperarm_twist_01_r','upperarm_twist_02_r']
cmds.delete(deleteNodes)

# Step 12: Prepare skeleton file and save
cmds.file(rename=str(skeleton_file))
cmds.file(save=True, type='mayaAscii')