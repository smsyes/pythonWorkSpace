import os
import json
import maya.api.OpenMaya as om
import maya.cmds as cmds


class MeshTransferTool:
    def __init__(self):
        self.ROOT_DIR = "T:/scripts/python/application/maya/MetaHuman-DNA-Calibration-main/"
        self.WORK_DIR = "G:/rnd/metahuman/data/"
        self.temp_dir = os.path.join(self.WORK_DIR, "temp")
        self.output_dir = os.path.join(self.WORK_DIR, "output/scale")
        self.skin_data_file = os.path.join(self.temp_dir, "skin_data.json")
        self.movement_data_file = os.path.join(self.temp_dir, "movement_data.json")
        self.original_mesh = ""
        self.transfer_mesh = ""
        
        # original body files
        self.orig_body_file = os.path.join(self.WORK_DIR, "model/m_tal_nrw_body_rig.ma")
        
        # Scaled body files
        self.scaled_skeleton_file = os.path.join(self.temp_dir, "scaled_skeleton_body.ma")
        self.scaled_body_file = os.path.join(self.temp_dir, "scaled_body.ma")
        

    def create_ui(self):
        """Creates the Maya UI for the tool."""
        window_name = "MeshTransferTool"
        if cmds.window(window_name, exists=True):
            cmds.deleteUI(window_name)

        window = cmds.window(window_name, title="Mesh Transfer Tool", widthHeight=(400, 300))
        cmds.columnLayout(adjustableColumn=True)

        # WORK_DIR Line Editor
        cmds.text(label="Work Directory:")
        cmds.textField("work_dir_field", text=self.WORK_DIR, changeCommand=self.set_work_dir)

        # original_mesh Field with Select Button
        cmds.text(label="Original Mesh:")
        cmds.textField("original_mesh_field", text="", changeCommand=self.set_original_mesh)
        cmds.button(label="Select Original Mesh", command=lambda _: self.select_mesh("original_mesh_field"))

        # transfer_mesh Field with Select Button
        cmds.text(label="Transfer Mesh:")
        cmds.textField("transfer_mesh_field", text="", changeCommand=self.set_transfer_mesh)
        cmds.button(label="Select Transfer Mesh", command=lambda _: self.select_mesh("transfer_mesh_field"))

        # Button to browse folder
        cmds.button(label="Open Work Directory", command=self.open_work_dir)

        # Stage Buttons
        cmds.separator(style="in", height=10)
        cmds.button(label="Stage 1: Save Data to JSON", command=self.stage_1)
        cmds.separator(style="in", height=10)
        cmds.button(label="Stage 2: Save Data to JSON", command=self.stage_2)
        cmds.separator(style="in", height=10)
        cmds.button(label="Stage 3: Adjust Joints", command=self.stage_3)
        cmds.separator(style="in", height=10)
        cmds.button(label="Stage 4: Update Shape & Rebind Skin", command=self.stage_4)

        cmds.showWindow(window)

    def set_work_dir(self, new_dir):
        """Updates the work directory."""
        self.WORK_DIR = new_dir
        self.temp_dir = os.path.join(self.WORK_DIR, "temp")
        self.output_dir = os.path.join(self.WORK_DIR, "output/scale")
        self.skin_data_file = os.path.join(self.temp_dir, "skin_data.json")
        self.movement_data_file = os.path.join(self.temp_dir, "movement_data.json")

    def set_original_mesh(self, mesh_name):
        """Sets the original mesh."""
        self.original_mesh = mesh_name

    def set_transfer_mesh(self, mesh_name):
        """Sets the transfer mesh."""
        self.transfer_mesh = mesh_name

    def select_mesh(self, target_field):
        """Sets the selected Maya object name into the target text field."""
        selected = cmds.ls(selection=True)
        if selected:
            cmds.textField(target_field, edit=True, text=selected[0])
            if target_field == "original_mesh_field":
                self.original_mesh = selected[0]
            elif target_field == "transfer_mesh_field":
                self.transfer_mesh = selected[0]
        else:
            om.MGlobal.displayWarning("No object selected in the viewport.")

    def open_work_dir(self, *_):
        """Opens the folder specified in the WORK_DIR."""
        if os.path.exists(self.WORK_DIR):
            os.startfile(self.WORK_DIR)
        else:
            om.MGlobal.displayError(f"Directory does not exist: {self.WORK_DIR}")

    def show_progress_bar(self, title, steps, task_function=None):
        """Displays a progress bar in Maya and updates it dynamically."""
        cmds.progressWindow(title=title, progress=0, status="Starting...", isInterruptable=False, maxValue=steps)
    
        for step in range(steps):
            if task_function:
                task_function(step)  # Executes the specific task for the step
            cmds.progressWindow(edit=True, progress=step + 1, status=f"{title}: Step {step + 1}/{steps}")
    
        cmds.progressWindow(endProgress=True)
        print(f"{title} completed.")

    
    def stage_1(self, *_):
        """Stage 1: Save Skin Data and Movement Data to JSON."""
        try:
            cmds.undoInfo(openChunk=True)
    
            def task_function(step):
                if step == 0:
                    if not os.path.exists(self.temp_dir):
                        os.makedirs(self.temp_dir)
                    if not os.path.exists(self.output_dir):
                        os.makedirs(self.output_dir)
    
            self.show_progress_bar("Stage 1: Saving Data", 3, task_function)
    
        except Exception as e:
            om.MGlobal.displayError(f"Error in Stage 1: {e}")
        finally:
            cmds.undoInfo(closeChunk=True)


    def stage_2(self, *_):
        """Stage 2: Save Skin Data and Movement Data to JSON."""
        try:
            cmds.undoInfo(openChunk=True)
    
            def task_function(step):
                if step == 0:
                    skin_data = self.get_skin_cluster_and_weights(self.original_mesh)
                    if skin_data:
                        self.save_data_to_json(self.skin_data_file, skin_data)
                elif step == 1:
                    movement_data = self.compare_mesh_vertices(self.original_mesh, self.transfer_mesh)
                    if movement_data:
                        self.save_data_to_json(self.movement_data_file, movement_data)
                    self.unbind_skin(self.original_mesh)
    
            self.show_progress_bar("Stage 2: Saving Data", 3, task_function)
    
        except Exception as e:
            om.MGlobal.displayError(f"Error in Stage 2: {e}")
        finally:
            cmds.undoInfo(closeChunk=True)
    
    def stage_3(self, *_):
        """Stage 3: Adjust Joints."""
        try:
            cmds.undoInfo(openChunk=True)
    
            def task_function(step):
                if step == 0:
                    self.movement_data = self.load_data_from_json(self.movement_data_file)
                    self.skin_data = self.load_data_from_json(self.skin_data_file)
                elif step == 1:
                    original_root = self.get_root_joint(self.skin_data["bind_joints"][0])
                    self.transfer_root = self.copy_bind_joint_hierarchy_with_suffix(original_root, suffix="_transfer")
                elif step == 2:
                    self.adjust_joints_based_on_vertex_movement(self.movement_data, self.skin_data, self.transfer_root)
                    if cmds.objExists(self.transfer_root):
                        cmds.delete(self.transfer_root)
    
            self.show_progress_bar("Stage 3: Adjusting Joints", 3, task_function)
    
        except Exception as e:
            om.MGlobal.displayError(f"Error in Stage 3: {e}")
        finally:
            cmds.undoInfo(closeChunk=True)

    
    def stage_4(self, *_):
        """Stage 4: Update Mesh Shape and Rebind Skin."""
        try:
            cmds.undoInfo(openChunk=True)
    
            def task_function(step):
                if step == 0:
                    self.skin_data = self.load_data_from_json(self.skin_data_file)
                elif step == 1:
                    self.update_original_mesh_shape(self.original_mesh, self.transfer_mesh)
                elif step == 2:
                    self.bind_skin_with_saved_weights(self.original_mesh, self.skin_data)
    
            self.show_progress_bar("Stage 4: Updating Mesh", 3, task_function)
    
        except Exception as e:
            om.MGlobal.displayError(f"Error in Stage 4: {e}")
        finally:
            cmds.undoInfo(closeChunk=True)



    def save_data_to_json(self, file_path, data):
        """Saves data to a JSON file."""
        try:
            with open(file_path, 'w') as json_file:
                json.dump(data, json_file, indent=4)
            print(f"Data saved to {file_path}")
        except Exception as e:
            om.MGlobal.displayError(f"Error saving data to JSON file: {e}")

    def load_data_from_json(self, file_path):
        """Loads data from a JSON file after checking its existence."""
        if not os.path.exists(file_path):
            om.MGlobal.displayWarning(f"File does not exist: {file_path}")
            return None
        try:
            with open(file_path, 'r') as json_file:
                data = json.load(json_file)
            print(f"Data loaded from {file_path}")
            return data
        except Exception as e:
            om.MGlobal.displayError(f"Error loading data from JSON file: {e}")
            return None

    def get_root_joint(self, joint):
        """
        Recursively find the topmost parent joint.

        :param joint: Name of the joint.
        :return: Name of the topmost parent joint.
        """
        parent = cmds.listRelatives(joint, parent=True)
        if not parent:
            return joint
        return self.get_root_joint(parent[0])

    def copy_bind_joint_hierarchy_with_suffix(self, original_root, suffix="_transfer"):
        """
        Copies the hierarchy of the bind joint root and renames it with the specified suffix.

        :param original_root: Root joint of the bind hierarchy.
        :param suffix: Suffix to append to the joint names.
        :return: The root of the new joint hierarchy.
        """
        # Verify the topmost parent is a valid root joint
        topmost_root = self.get_root_joint(original_root)
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

    def get_mesh_vertex_positions(self, mesh_name):
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

    def compare_mesh_vertices(self, original_mesh, transfer_mesh):
        """
        Compares the vertex count and computes the vertex movement from original_mesh to transfer_mesh.

        :param original_mesh: Name of the original mesh object in Maya.
        :param transfer_mesh: Name of the transfer mesh object in Maya.
        :return: A dictionary with vertex movement data or None if there is an error.
        """
        original_positions = self.get_mesh_vertex_positions(original_mesh)
        transfer_positions = self.get_mesh_vertex_positions(transfer_mesh)

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

    def get_skin_cluster_and_weights(self, mesh_name):
        """Retrieves the skinCluster and associated joints and weights of the specified mesh."""
        try:
            history = cmds.listHistory(mesh_name, pdo=True) or []
            skin_cluster = next((node for node in history if cmds.nodeType(node) == "skinCluster"), None)
            if not skin_cluster:
                om.MGlobal.displayError(f"No skinCluster found for {mesh_name}.")
                return None

            bind_joints = cmds.skinCluster(skin_cluster, query=True, influence=True) or []
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

    def unbind_skin(self, mesh_name):
        """
        Unbinds the skinCluster from the specified mesh.

        :param mesh_name: Name of the mesh object in Maya.
        """
        try:
            skin_cluster = cmds.ls(cmds.listHistory(mesh_name), type="skinCluster")
            if skin_cluster:
                cmds.skinCluster(mesh_name, edit=True, ubk=True)
                print(f"Unbound skinCluster from {mesh_name}")
        except Exception as e:
            om.MGlobal.displayError(f"Error unbinding skin from {mesh_name}: {e}")

    def adjust_joints_based_on_vertex_movement(self, movement_data, skin_data, transfer_root):
        """
        Adjusts the position of joints based on vertex movement and skin weights.

        :param movement_data: List of dictionaries containing vertex movement data.
        :param skin_data: Dictionary containing skinCluster, bind joints, and weight data.
        :param transfer_root: Root joint of the transfer hierarchy.
        """
        try:
            jointDict = {}
            joints = []
            jointChild = cmds.listRelatives(transfer_root, allDescendents=True, type="joint") or []
            for joint in jointChild:
                if 'twist' not in joint:
                    joints.append(joint)
            print(joints)
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
                    if 'twist' not in joint:
                        current_position = cmds.xform(jointDict[joint], query=True, translation=True, worldSpace=True)
                        new_position = [current_position[0] + movement.x, current_position[1] + movement.y, current_position[2] + movement.z]
                        cmds.xform(joint, translation=new_position, worldSpace=True)
                        print(f"Moved joint {joint} to {new_position}.")
                        
            # Delete transfer_root after use
            if cmds.objExists(transfer_root):
                cmds.delete(transfer_root)

        except Exception as e:
            om.MGlobal.displayError(f"Error adjusting joints: {e}")


    def bind_skin_with_saved_weights(self, mesh_name, skin_data):
        """
        Binds the skinCluster to the specified mesh using saved weights.

        :param mesh_name: Name of the mesh object in Maya.
        :param skin_data: Skin data including bind joints and weights.
        """
        try:
            # Check that bind_joints exist
            for joint in skin_data["bind_joints"]:
                if not cmds.objExists(joint):
                    raise ValueError(f"Joint '{joint}' does not exist in the scene.")

            # Check if the mesh is valid
            if not cmds.objExists(mesh_name):
                raise ValueError(f"Mesh '{mesh_name}' does not exist in the scene.")

            # Check for existing skinCluster
            existing_skin_cluster = cmds.ls(cmds.listHistory(mesh_name), type="skinCluster")
            if not existing_skin_cluster:
                print(f"Existing skinCluster found on {mesh_name}. noting...")

            # Bind the mesh to the original joints
            skin_cluster = cmds.skinCluster(skin_data["bind_joints"], mesh_name, toSelectedBones=True,
                                            bindMethod=1, maximumInfluences=3, removeUnusedInfluence=False, dropoffRate=3)
            print(f"Rebound skinCluster to {mesh_name}: {skin_cluster}")

        except ValueError as e:
            om.MGlobal.displayError(f"Data validation error: {e}")



    def update_original_mesh_shape(self, original_mesh, transfer_mesh):
        """
        Updates the vertex positions of original_mesh to match transfer_mesh.

        :param original_mesh: Name of the original mesh object in Maya.
        :param transfer_mesh: Name of the transfer mesh object in Maya.
        """
        try:
            # Retrieve vertex positions from transfer_mesh
            transfer_positions = self.get_mesh_vertex_positions(transfer_mesh)
            if transfer_positions is None:
                raise ValueError(f"Could not retrieve vertex positions from {transfer_mesh}")

            # Apply vertex positions to original_mesh
            selection_list = om.MSelectionList()
            selection_list.add(original_mesh)
            dag_path = selection_list.getDagPath(0)
            mesh_fn = om.MFnMesh(dag_path)
            mesh_fn.setPoints(transfer_positions, om.MSpace.kWorld)

            print(f"Updated {original_mesh} shape to match {transfer_mesh}")
        except Exception as e:
            om.MGlobal.displayError(f"Error updating {original_mesh} shape: {e}")


    # Additional helper functions like save_data_to_json, load_data_from_json,
    # and adjust_joints_based_on_vertex_movement remain unchanged and integrated.

# Initialize and run the tool
tool = MeshTransferTool()
tool.create_ui()
