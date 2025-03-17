import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
import maya.cmds as cmds
import json

def get_skin_cluster(mesh_name):
    sel = om.MSelectionList()
    sel.add(mesh_name)
    dag_path = om.MDagPath()
    sel.getDagPath(0, dag_path)

    it_dg = om.MItDependencyGraph(
        dag_path.node(),
        om.MFn.kSkinClusterFilter,
        om.MItDependencyGraph.kUpstream,
        om.MItDependencyGraph.kBreadthFirst,
        om.MItDependencyGraph.kNodeLevel
    )

    while not it_dg.isDone():
        skin_cluster = it_dg.currentItem()
        if skin_cluster.hasFn(om.MFn.kSkinClusterFilter):
            return skin_cluster
        it_dg.next()
    return None

def extract_joint_weights(mesh_name):
    shape_node = cmds.listRelatives(mesh_name, shapes=True, fullPath=True)
    if not shape_node:
        raise ValueError(f"No shape node found for mesh: {mesh_name}")
    shape_node = shape_node[0]

    skin_cluster = get_skin_cluster(shape_node)
    if not skin_cluster:
        raise ValueError(f"No SkinCluster found for mesh: {mesh_name}")

    skin_fn = oma.MFnSkinCluster(skin_cluster)
    influence_objects = om.MDagPathArray()
    skin_fn.influenceObjects(influence_objects)
    joint_names = [influence_objects[i].partialPathName() for i in range(influence_objects.length())]

    sel = om.MSelectionList()
    sel.add(shape_node)
    dag_path = om.MDagPath()
    sel.getDagPath(0, dag_path)
    mesh_fn = om.MFnMesh(dag_path)
    vertex_count = mesh_fn.numVertices()

    weights_data = []
    for vtx_idx in range(vertex_count):
        components = om.MFnSingleIndexedComponent()
        vertex_component = components.create(om.MFn.kMeshVertComponent)
        components.addElement(vtx_idx)

        weights_array = om.MDoubleArray()
        num_influences = om.MScriptUtil()
        num_influences.createFromInt(0)
        influences_ptr = num_influences.asUintPtr()

        skin_fn.getWeights(dag_path, vertex_component, weights_array, influences_ptr)
        joint_weights = {joint_names[i]: weights_array[i] for i in range(weights_array.length()) if weights_array[i] > 0}
        weights_data.append(joint_weights)

    return weights_data, joint_names

def get_hierarchy_joints(root_joint):
    joints = cmds.listRelatives(root_joint, allDescendents=True, type="joint", fullPath=False) or []
    joints.append(root_joint)
    return joints

def identify_joint_status(hierarchy_joints, bind_joints, weights_data):
    unbound_joints = [joint for joint in hierarchy_joints if joint not in bind_joints]
    no_weight_joints = [joint for joint in bind_joints if not any(joint in vertex_weights for vertex_weights in weights_data)]
    return unbound_joints, no_weight_joints

def calculate_displacements(ori_mesh, target_mesh):
    sel = om.MSelectionList()
    sel.add(ori_mesh)
    ori_dag = om.MDagPath()
    sel.getDagPath(0, ori_dag)
    ori_mesh_fn = om.MFnMesh(ori_dag)

    sel.clear()
    sel.add(target_mesh)
    target_dag = om.MDagPath()
    sel.getDagPath(0, target_dag)
    target_mesh_fn = om.MFnMesh(target_dag)

    ori_points = om.MPointArray()
    target_points = om.MPointArray()

    ori_mesh_fn.getPoints(ori_points, om.MSpace.kWorld)
    target_mesh_fn.getPoints(target_points, om.MSpace.kWorld)

    if ori_points.length() != target_points.length():
        raise ValueError("The vertex counts of ori_mesh and target_mesh do not match.")

    return [[(target_points[i] - ori_points[i]).x, (target_points[i] - ori_points[i]).y, (target_points[i] - ori_points[i]).z] for i in range(ori_points.length())]

def unparent_joints(hierarchy_joints):
    joint_parents = {joint: cmds.listRelatives(joint, parent=True, fullPath=False) for joint in hierarchy_joints}
    for joint in hierarchy_joints[:-1]:
        if cmds.objExists(joint):
            cmds.parent(joint, world=True)
    return joint_parents

def reparent_joints(joint_parents):
    for joint, parent in joint_parents.items():
        if parent:
            joint_name = joint.split('|')[-1]
            resolved_joint = cmds.ls(joint_name, long=True)
            if resolved_joint and cmds.objExists(resolved_joint[0]):
                cmds.parent(resolved_joint[0], parent[0])

def apply_displacement(ori_mesh, target_mesh, hierarchy_joints, weights_data, joint_names, unbound_joints, max_iterations=10, tolerance=0.001):
    for iteration in range(max_iterations):
        displacements = calculate_displacements(ori_mesh, target_mesh)

        joint_displacements = {joint: om.MVector(0, 0, 0) for joint in joint_names}
        joint_weights_sums = {joint: 0.0 for joint in joint_names}
        total_displacement_magnitude = 0

        # Calculate bind joint displacements
        for vtx_idx, displacement in enumerate(displacements):
            displacement_vector = om.MVector(*displacement)
            total_displacement_magnitude += displacement_vector.length()
            for joint, weight in weights_data[vtx_idx].items():
                joint_displacements[joint] += displacement_vector * weight
                joint_weights_sums[joint] += weight

        for joint, total_displacement in joint_displacements.items():
            if joint_weights_sums[joint] > 0:
                avg_displacement = total_displacement / joint_weights_sums[joint]
                initial_position = cmds.xform(joint, query=True, translation=True, worldSpace=True)
                offset_vector = avg_displacement
                new_position = [initial_position[0] + offset_vector.x, initial_position[1] + offset_vector.y, initial_position[2] + offset_vector.z]
                cmds.xform(joint, translation=new_position, worldSpace=True)

        # Remove unbound_joints calculation

        if total_displacement_magnitude < tolerance:
            break

def save_vertex_weights(mesh_name, output_file):
    weights_data, joint_names = extract_joint_weights(mesh_name)
    data = {"mesh": mesh_name, "joints": joint_names, "weights": weights_data}
    with open(output_file, "w") as f:
        json.dump(data, f, indent=4)

if __name__ == "__main__":
    ori_mesh = "m_tal_nrw_combined_lod0_mesh"
    target_mesh = "Mesh"
    root_joint = "|root"

    hierarchy_joints = get_hierarchy_joints(root_joint)
    weights_data, bind_joints = extract_joint_weights(ori_mesh)

    unbound_joints, no_weight_joints = identify_joint_status(hierarchy_joints, bind_joints, weights_data)
    joint_parents = unparent_joints(hierarchy_joints)

    apply_displacement(ori_mesh, target_mesh, hierarchy_joints, weights_data, bind_joints, unbound_joints, max_iterations=10, tolerance=0.001)
    reparent_joints(joint_parents)
