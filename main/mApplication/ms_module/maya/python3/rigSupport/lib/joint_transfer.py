import maya.api.OpenMaya as om
import maya.cmds as cmds

def get_mesh_vertex_positions(mesh_name):
    """
    Retrieves the vertex positions of the specified mesh.

    :param mesh_name: Name of the mesh object in Maya.
    :return: List of vertex positions as MPoint objects.
    """
    try:
        selection_list = om.MSelectionList()
        selection_list.add(mesh_name)
        dag_path = selection_list.getDagPath(0)

        mesh_fn = om.MFnMesh(dag_path)
        return mesh_fn.getPoints(om.MSpace.kWorld)
    except Exception as e:
        om.MGlobal.displayError(f"Error retrieving vertex positions for {mesh_name}: {e}")
        return None

def compare_mesh_vertices(original_mesh, transfer_mesh):
    """
    Compares the vertex count and computes the vertex movement from original_mesh to transfer_mesh.

    :param original_mesh: Name of the original mesh object in Maya.
    :param transfer_mesh: Name of the transfer mesh object in Maya.
    :return: A dictionary with vertex movement data or None if there is an error.
    """
    original_positions = get_mesh_vertex_positions(original_mesh)
    transfer_positions = get_mesh_vertex_positions(transfer_mesh)

    if original_positions is None or transfer_positions is None:
        return None

    if len(original_positions) != len(transfer_positions):
        om.MGlobal.displayError("The vertex counts of the two meshes do not match.")
        return None

    movement_data = []
    for i in range(len(original_positions)):
        original_point = original_positions[i]
        transfer_point = transfer_positions[i]

        movement = om.MVector(transfer_point - original_point)
        movement_data.append({
            "vertex_id": i,
            "original_position": (original_point.x, original_point.y, original_point.z),
            "transfer_position": (transfer_point.x, transfer_point.y, transfer_point.z),
            "movement": (movement.x, movement.y, movement.z)
        })

    return movement_data

def get_root_joint(joint):
    """
    Recursively find the topmost parent joint.

    :param joint: Name of the joint.
    :return: Name of the topmost parent joint.
    """
    parent = cmds.listRelatives(joint, parent=True)
    if not parent:
        return joint
    return get_root_joint(parent[0])

def copy_bind_joint_hierarchy_with_suffix(original_root, suffix="_transfer"):
    """
    Copies the hierarchy of the bind joint root and renames it with the specified suffix.

    :param original_root: Root joint of the bind hierarchy.
    :param suffix: Suffix to append to the joint names.
    :return: The root of the new joint hierarchy.
    """
    # Verify the topmost parent is a valid root joint
    topmost_root = get_root_joint(original_root)
    if "root" not in topmost_root.lower():
        raise ValueError(f"{topmost_root} is not a valid root joint (name does not include 'root').")

    def copy_hierarchy(joint, parent=None):
        if not joint.endswith(suffix):
            new_name = joint + suffix
        else:
            new_name = joint
        new_joint = cmds.duplicate(joint, parentOnly=True, name=new_name)[0]
        if parent:
            cmds.parent(new_joint, parent)

        children = cmds.listRelatives(joint, children=True, type="joint") or []
        for child in children:
            copy_hierarchy(child, new_joint)

        return new_joint

    return copy_hierarchy(topmost_root)

def adjust_joints_based_on_vertex_movement(movement_data, skin_data, transfer_root):
    """
    Adjusts the position of joints based on vertex movement and skin weights.

    :param movement_data: List of dictionaries containing vertex movement data.
    :param skin_data: Dictionary containing skinCluster, bind joints, and weight data.
    :param transfer_root: Root joint of the transfer hierarchy.
    """
    try:
        jointDict = {}
        joints = cmds.listRelatives(transfer_root, allDescendents=True, type="joint") or []
        joints.append(transfer_root)
        
        for joint in skin_data["bind_joints"]:
            if f'{joint}_transfer' in joints:
                jointDict[joint] = f'{joint}_transfer'
                
        joint_movements = {joint: om.MVector(0, 0, 0) for joint in skin_data["bind_joints"]}
        joint_weights = {joint: 0.0 for joint in skin_data["bind_joints"]}

        # Calculate joint movements based on vertex movements and weights
        for vertex_data in skin_data["weights_data"]:
            vertex_id = vertex_data["vertex_id"]
            weights = vertex_data["weights"]
            movement = om.MVector(*movement_data[vertex_id]["movement"])

            for joint, weight in weights.items():
                joint_movements[joint] += movement * weight
                joint_weights[joint] += weight

        # Normalize and apply the movements to the joints
        for joint, movement in joint_movements.items():
            if joint_weights[joint] > 0:
                movement /= joint_weights[joint]
                current_position = cmds.xform(joint, query=True, translation=True, worldSpace=True)
                new_position = [current_position[0] + movement.x, current_position[1] + movement.y, current_position[2] + movement.z]
                cmds.xform(jointDict[joint], translation=new_position, worldSpace=True)
                print(f"Moved joint {joint} to {new_position}.")

    except Exception as e:
        om.MGlobal.displayError(f"Error adjusting joints: {e}")

def get_skin_cluster_and_weights(mesh_name):
    """
    Retrieves the skinCluster and associated joints and weights of the specified mesh.

    :param mesh_name: Name of the mesh object in Maya.
    :return: A dictionary containing skinCluster, bind joints, and weight data.
    """
    try:
        # Find skinCluster attached to the mesh
        history = cmds.listHistory(mesh_name, pdo=True) or []
        skin_cluster = next((node for node in history if cmds.nodeType(node) == "skinCluster"), None)

        if not skin_cluster:
            om.MGlobal.displayError(f"No skinCluster found for {mesh_name}.")
            return None

        # Get bind joints
        bind_joints = cmds.skinCluster(skin_cluster, query=True, influence=True) or []

        # Get weights per vertex
        vertex_count = cmds.polyEvaluate(mesh_name, vertex=True)
        weights_data = []

        for i in range(vertex_count):
            weights = cmds.skinPercent(skin_cluster, f"{mesh_name}.vtx[{i}]", query=True, value=True)
            weights_data.append({
                "vertex_id": i,
                "weights": {bind_joints[j]: weights[j] for j in range(len(bind_joints))}
            })

        return {
            "skin_cluster": skin_cluster,
            "bind_joints": bind_joints,
            "weights_data": weights_data
        }
    except Exception as e:
        om.MGlobal.displayError(f"Error retrieving skinCluster and weights for {mesh_name}: {e}")
        return None

def bind_transfer_mesh_and_copy_weights(original_mesh, transfer_mesh, transfer_root, source_skin_cluster):
    """
    Binds the transfer joints to the transfer mesh and copies skin weights from the original mesh.

    :param original_mesh: Name of the original mesh.
    :param transfer_mesh: Name of the transfer mesh.
    :param transfer_root: Root joint of the transfer hierarchy.
    :param source_skin_cluster: Skin cluster of the original mesh.
    """
    try:
        # Gather joints from originalMesh and transferMesh
        original_joints = cmds.skinCluster(source_skin_cluster, query=True, influence=True)
        transfer_joints = cmds.listRelatives(transfer_root, allDescendents=True, type="joint") or []
        transfer_joints.append(transfer_root)

        # Ensure transferMesh has the same number of joints as originalMesh
        missing_joints = [j for j in original_joints if f"{j}_transfer" not in transfer_joints]
        if missing_joints:
            print(f"Adding missing joints to transfer hierarchy: {missing_joints}")
            for joint in missing_joints:
                new_joint = cmds.duplicate(joint, parentOnly=True, name=f"{joint}_transfer")[0]
                cmds.parent(new_joint, transfer_root)
                transfer_joints.append(new_joint)

        # Finalize joint list
        final_joint_list = [j for j in transfer_joints if j.replace("_transfer", "") in original_joints]

        # Bind transfer joints to transfer mesh
        cmds.skinCluster(final_joint_list, transfer_mesh, toSelectedBones=True)
        print(f"Bound transfer joints to {transfer_mesh}")

        # Copy skin weights from originalMesh to transferMesh
        destination_skin_cluster = cmds.ls(cmds.listHistory(transfer_mesh), type="skinCluster")[0]
        cmds.copySkinWeights(
            sourceSkin=source_skin_cluster,
            destinationSkin=destination_skin_cluster,
            noMirror=True,
            surfaceAssociation="closestPoint",
            uvSpace=("map1", "map1"),
            influenceAssociation="oneToOne",
            normalize=True
        )
        print("Skin weights copied from originalMesh to transferMesh.")

    except Exception as e:
        om.MGlobal.displayError(f"Error binding or copying weights: {e}")


# Example usage
if __name__ == "__main__":
    original_mesh = "m_tal_nrw_combined_lod0_mesh"  # Replace with your OriginalMesh name
    transfer_mesh = "head_lod0_meshhead_lod0_grp3"  # Replace with your TransferMesh name

    movement_data = compare_mesh_vertices(original_mesh, transfer_mesh)
    if movement_data:
        print("Movement data computed.")

    skin_data = get_skin_cluster_and_weights(original_mesh)
    if skin_data:
        print("SkinCluster Data Retrieved.")

        # Copy joint hierarchy with suffix
        original_root = get_root_joint(skin_data["bind_joints"][0])
        transfer_root = copy_bind_joint_hierarchy_with_suffix(original_root, suffix="_transfer")

        print(f"Copied and renamed joint hierarchy from {original_root} to {transfer_root}")

        # Adjust transfer joints based on movement data
        adjust_joints_based_on_vertex_movement(movement_data, skin_data, transfer_root)

        # Bind transfer joints and copy skin weights
        bind_transfer_mesh_and_copy_weights(original_mesh, transfer_mesh, transfer_root, skin_data["skin_cluster"])
