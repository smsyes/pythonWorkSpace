import maya.cmds as cmds
import maya.mel as mel

def creation_curve(*args):
    mel_script = 'EPCurveTool; curveEPCtx -e -d 1 -bez 0 `currentCtx`; EPCurveTool;'
    mel.eval(mel_script)

def creation_deformer(*args):

    def show_error_message(message):
        cmds.confirmDialog(title='Erreur', message=message, button='OK', defaultButton='OK', icon='critical')

    def create_clusters_on_curve(curve):
        curve_points = cmds.ls(curve + ".cv[*]", flatten=True)
        cluster_list = []
        for index, point in enumerate(curve_points):
            cluster = cmds.cluster(point)[1]
            cluster_name = "{}_cluster_{:02d}".format(curve, index + 1)
            cluster = cmds.rename(cluster, cluster_name)
            cluster_list.append(cluster)
            cmds.setAttr(cluster + ".visibility", 0)
        return cluster_list

    def rename_curve(curve):
        if cmds.objExists("Curve_Deformer_01"):
            suffix_number = 2
            while cmds.objExists("Curve_Deformer_{:02d}".format(suffix_number)):
                suffix_number += 1
            new_name = "Curve_Deformer_{:02d}".format(suffix_number)
        else:
            new_name = "Curve_Deformer_01"
        renamed_curve = cmds.rename(curve, new_name)
        return renamed_curve

    def rebuild_curve(curve, spans):
        cmds.rebuildCurve(curve, ch=1, rpo=1, rt=0, end=1, kr=0, kcp=0, kep=1, kt=0, s=spans, d=2, tol=0.01)
    def create_nurbs_spheres(cluster_list, curve_name, mesh_selected):
        nurbs_sphere_list = []
        uv_set_name = cmds.polyUVSet(mesh_selected, query=True, currentUVSet=True)[0]
        for index, cluster in enumerate(cluster_list):
            nurbs_sphere = cmds.sphere(radius=0.5, s=4, d=3, name="Ctrl_{:02d}_{}".format(index + 1, curve_name))[0]
            lambert_shader = cmds.shadingNode('lambert', asShader=True, name="Lambert_{:02d}_{}".format(index + 1, curve_name))
            cmds.setAttr(lambert_shader + ".color", 1, 0, 1, type="double3")
            cmds.select(nurbs_sphere, replace=True)
            cmds.hyperShade(assign=lambert_shader)
            cmds.delete(nurbs_sphere, constructionHistory=True)
            group_number = int(cluster.split("_")[-1])
            group_name = "OFF_Ctrl_{:02d}_{}".format(group_number, curve_name)
            group = cmds.spaceLocator(name=group_name)
            cmds.matchTransform(group, cluster)
            cmds.parent(nurbs_sphere, group)
            cmds.matchTransform(nurbs_sphere, cluster)
            cmds.makeIdentity(nurbs_sphere, apply=True, t=1, r=1, s=1, n=0, pn=1)
            attrs_to_lock_hide = ['.v']
            for attr_suffix in attrs_to_lock_hide:
                attr_name = nurbs_sphere + attr_suffix
                cmds.setAttr(attr_name, lock=True, keyable=False, channelBox=False)
            cmds.connectAttr(nurbs_sphere + ".translateX", cluster + ".translateX")
            cmds.connectAttr(nurbs_sphere + ".translateY", cluster + ".translateY")
            cmds.connectAttr(nurbs_sphere + ".translateZ", cluster + ".translateZ")
            cmds.setAttr(group_name + ".localScaleZ", 0.001)
            cmds.setAttr(group_name + ".localScaleX", 0.001)
            cmds.setAttr(group_name + ".localScaleY", 0.001)
            nurbs_sphere_list.append(nurbs_sphere)
            cmds.setAttr(nurbs_sphere + ".translateX", 0)
            cmds.setAttr(nurbs_sphere + ".translateY", 0)
            cmds.setAttr(nurbs_sphere + ".translateZ", 0)
            if cmds.objExists("GEO_In_Deform_Curve"):
                cmds.select("GEO_In_Deform_Curve", replace=True)
                cmds.select(group, add=True)
                cmds.UVPin(transform="U", existingTransform="UV Pin", uvSetName=uv_set_name)
                cmds.matchTransform(group, cluster)
            else : 
                cmds.select(mesh_selected, replace=True)
                cmds.select(group, add=True)
                cmds.UVPin(transform="U", existingTransform="UV Pin", uvSetName=uv_set_name)
                cmds.matchTransform(group, cluster)
        
        return nurbs_sphere_list

    def selection_objects():
        selected_objects = cmds.ls(selection=True)
        if not selected_objects or len(selected_objects) != 2:
            show_error_message("Please select exactly one mesh and one curve.")
            raise ValueError("Please select exactly one mesh and one curve.")
        return selected_objects

    def set_attributes_on_curve_deformer(curve_deformer):
        attrs_to_lock_hide = ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz', '.sx', '.sy', '.sz', '.v']
        for attr_suffix in attrs_to_lock_hide:
            attr_name = curve_deformer + attr_suffix
            cmds.setAttr(attr_name, lock=True, keyable=False, channelBox=False)

    def create_groups_and_connections(mesh_selected, curve_deformer, nurbs_sphere_list, all_cluster_group):

        num_curve_deformers = len(cmds.ls("Curve_Deformer_*", type="transform"))
        if not cmds.objExists("GEO_In_Deform_Curve"):
            duplicated_mesh = cmds.duplicate(mesh_selected)[0]
            mesh_skin = cmds.rename(mesh_selected, "GEO_In_Deform_Curve")
            final_mesh = cmds.rename(duplicated_mesh, mesh_selected)
            num_curve_deformers = len(cmds.ls("GRP_Curve_Deformer_*", type="transform"))
            curve_deformer_group = cmds.group(empty=True, name="GRP_Curve_Deformer_{}".format(num_curve_deformers + 1))
            cmds.parent(["OFF_Ctrl_{:02d}_{}".format(i + 1, curve_deformer) for i in range(len(nurbs_sphere_list))] + [curve_deformer], curve_deformer_group)
            all_curves_deformers_group = cmds.group(empty=True, name="GRP_All_Curves_Deformers")
            cmds.parent([curve_deformer_group, "GEO_In_Deform_Curve", all_cluster_group], all_curves_deformers_group)
            blendshape_node = cmds.blendShape(mesh_skin, final_mesh)[0]
            new_blendshape_name = "Import_All_Transform"
            cmds.rename(blendshape_node, new_blendshape_name)
            objet_et_attribut = "Import_All_Transform.GEO_In_Deform_Curve"
            cmds.setAttr(objet_et_attribut, 1)
            wire_deformer = cmds.wire(final_mesh, wire=curve_deformer, dropoffDistance=[0, 100], n="Curve_Deformer_Wire")[0]
            source_attr = "Curve_Deformer_01.Influence"
            destination_attr = "Curve_Deformer_Wire.dropoffDistance[0]"
            cmds.connectAttr(source_attr, destination_attr, force=True)
            cmds.setAttr("Curve_Deformer_Wire.rotation", 0)
            cmds.select(curve_deformer, replace=True)
            cmds.select(curve_deformer + "BaseWire", add=True)
            cmds.select(mesh_skin, add=True)
            cmds.CreateWrap()
            cmds.setAttr("GEO_In_Deform_Curve.visibility", 0)
            cmds.setAttr(curve_deformer + "BaseWire.visibility", lock=False)
            cmds.setAttr(curve_deformer + "BaseWire.visibility", 0)

        else:
            num_curve_deformers = len(cmds.ls("GRP_Curve_Deformer_*", type="transform"))
            curve_deformer_group = cmds.group(empty=True, name="GRP_Curve_Deformer_{}".format(num_curve_deformers + 1))
            last_digit = int(curve_deformer_group.split("_")[-1])
            value_final = int(last_digit-1)
            final_test = int(last_digit)
            cmds.parent(["OFF_Ctrl_{:02d}_{}".format(i + 1, curve_deformer) for i in range(len(nurbs_sphere_list))] + [curve_deformer], curve_deformer_group)
            cmds.parent([curve_deformer_group, all_cluster_group], "GRP_All_Curves_Deformers")
            if cmds.objExists("Curve_Deformer_Wire"):
                
                if cmds.objExists("GRP_Curve_Deformer_1"):
                    wire_deformer = cmds.wire(mesh_selected, edit=True, wire=curve_deformer)
                    source_attr = curve_deformer+".Influence"
                    destination_attr = "Curve_Deformer_Wire.dropoffDistance[{}]".format(value_final)
                    cmds.connectAttr(source_attr, destination_attr, force=True)
                    cmds.setAttr("Curve_Deformer_Wire.rotation", 0)
                    cmds.select(curve_deformer, replace=True)
                    cmds.select(curve_deformer + "BaseWire", add=True)
                    cmds.select("GEO_In_Deform_Curve", add=True)
                    cmds.CreateWrap()
                    cmds.setAttr(curve_deformer + "BaseWire.visibility", lock=False)
                    cmds.setAttr(curve_deformer + "BaseWire.visibility", 0)
                else :
                    wire_deformer = cmds.wire(mesh_selected, edit=True, wire=curve_deformer)
                    source_attr = curve_deformer+".Influence"
                    destination_attr = "Curve_Deformer_Wire.dropoffDistance[{}]".format(final_test)
                    cmds.connectAttr(source_attr, destination_attr, force=True)
                    cmds.setAttr("Curve_Deformer_Wire.rotation", 0)
                    cmds.select(curve_deformer, replace=True)
                    cmds.select(curve_deformer + "BaseWire", add=True)
                    cmds.select("GEO_In_Deform_Curve", add=True)
                    cmds.CreateWrap()
                    cmds.setAttr(curve_deformer + "BaseWire.visibility", lock=False)
                    cmds.setAttr(curve_deformer + "BaseWire.visibility", 0)
            else : 
                wire_deformer = cmds.wire(mesh_selected, wire=curve_deformer, dropoffDistance=[0, 100], n="Curve_Deformer_Wire")[0]
                source_attr = "Curve_Deformer_01.Influence"
                destination_attr = "Curve_Deformer_Wire.dropoffDistance[0]"
                cmds.connectAttr(source_attr, destination_attr, force=True)
                cmds.setAttr("Curve_Deformer_Wire.rotation", 0)
                cmds.select(curve_deformer, replace=True)
                cmds.select(curve_deformer + "BaseWire", add=True)
                cmds.select("GEO_In_Deform_Curve", add=True)
                cmds.CreateWrap()
                cmds.setAttr(curve_deformer + "BaseWire.visibility", lock=False)
                cmds.setAttr(curve_deformer + "BaseWire.visibility", 0)

    def main():
        try:
            selected_objects = selection_objects()
            curve_selected = None
            mesh_selected = None
            for obj in selected_objects:
                if cmds.nodeType(obj) == 'transform' and cmds.listRelatives(obj, shapes=True, type='nurbsCurve'):
                    curve_selected = obj
                elif cmds.nodeType(obj) == 'transform' and cmds.listRelatives(obj, shapes=True, type='mesh'):
                    mesh_selected = obj
            if not curve_selected or not mesh_selected:
                show_error_message("Please select exactly one mesh and one curve.")
                raise ValueError("Please select exactly one mesh and one curve.")
            curve_selected = rename_curve(curve_selected)
            cmds.select(clear=True)
            cmds.select(curve_selected, add=True)
            cmds.select(mesh_selected, add=True)
            curves_select = [curve_selected]
            mesh_select = [mesh_selected]
            cluster_list = create_clusters_on_curve(curve_selected)
            all_cluster_group = cmds.group(empty=True, name="All_Cluster_Deformer_01")
            cmds.parent(cluster_list, all_cluster_group)
            spans = len(cluster_list) * 3
            rebuild_curve(curve_selected, spans)
            nurbs_sphere_list = create_nurbs_spheres(cluster_list, curve_selected, mesh_selected)
            curve_deformer = curve_selected
            set_attributes_on_curve_deformer(curve_deformer)
            cmds.addAttr(curve_deformer, longName="Influence", attributeType='double', defaultValue=1.0)
            curve_Influence = curve_deformer + ".Influence"
            cmds.setAttr(curve_Influence, keyable=True)
            create_groups_and_connections(mesh_selected, curve_deformer, nurbs_sphere_list, all_cluster_group)
            cmds.select(clear=True)
        except ValueError as e:
            print(e)
    if __name__ == "__main__":
        main()

def delete_curve(*args):
    def supprimer_parent_si_unique():
        selection = cmds.ls(selection=True, dag=True, long=True)
        parent = cmds.listRelatives(selection, parent=True, fullPath=True)
        cmds.select(parent)
        cmds.delete()
    supprimer_parent_si_unique()

def create_window():
    window_name = 'customWindow'
    if cmds.window(window_name, exists=True):
        cmds.deleteUI(window_name, window=True)
    cmds.window(window_name, title='Curve Deformer v.1', sizeable=False)
    cmds.columnLayout(adjustableColumn=True)
    cmds.text(label="Curve Deform Creator", font="boldLabelFont", align="center", height=25)
    cmds.text(label="This tool applies the Curve Deform tests done by Theo Murat, making them automatic and simpler.", align="left", height=80, wordWrap=True)
    cmds.button(label='Create_Curve', command=creation_curve)
    cmds.separator(style='single', height=10)
    cmds.button(label='Delete_Curve', command=delete_curve)  
    cmds.separator(style='single', height=5)
    cmds.text(label="This button is used to create the deformer. Please select the curve and the final mesh. IMPORTANT : Make sure the curve is positioned on the mesh.", align="left", height=80, wordWrap=True)
    cmds.button(label='Create_Deformer', command=creation_deformer) 
    cmds.showWindow(window_name)

create_window()