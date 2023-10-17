from maya import cmds, mel
import pymel.core as pm
from maya.api import OpenMaya, OpenMayaAnim

# assuming you have a skinned pSphere1, then you can just run this code
# just basic code to get the needed shape/skin/component variables, mostly here for reference
shape = pm.ls(sl=1)[0].getShape().name()
skin_name = mel.eval('findRelatedSkinCluster "{}"'.format(shape))
num_verts = cmds.polyEvaluate(shape, v=True)

sel_list = OpenMaya.MSelectionList()
sel_list.add(shape)
sel_list.add(skin_name)

shape_dag = sel_list.getDagPath(0)
skin_dep = sel_list.getDependNode(1)
skin_fn = OpenMayaAnim.MFnSkinCluster(skin_dep)

# NOTE: this supports querying specific components, you dont have to do them all
comp_ids = [c for c in range(num_verts)]
single_fn = OpenMaya.MFnSingleIndexedComponent()
shape_comp = single_fn.create(OpenMaya.MFn.kMeshVertComponent)
single_fn.addElements(comp_ids)

# quickly get all weights for all comps and influences as a gigantic flat list 
flat_weights, inf_count = skin_fn.getWeights(shape_dag, shape_comp)

# get the plugs we will use to index into the flat weights to ignore the bazillion zero values
weight_plug = skin_fn.findPlug('weights', False)
list_plug = skin_fn.findPlug('weightList', False).attribute()

# removed influences can mess with the inf indexing so build a mapping
inf_dags = skin_fn.influenceObjects()
inf_count = len(inf_dags)
sparse_map = {skin_fn.indexForInfluenceObject(inf_dag): i for i, inf_dag in enumerate(inf_dags)}

# now store into a dictionary where {comp_id: {inf_id: weight}}
skin_weights = {}
for c, comp_id in enumerate(comp_ids):
    weight_plug.selectAncestorLogicalIndex(comp_id, list_plug)
    valid_ids = weight_plug.getExistingArrayAttributeIndices()

    # sometimes removed influences can give false positives, so ignore
    valid_ids = set(valid_ids) & sparse_map.keys()

    # now build up the inf weights
    comp_weights = {}
    flat_index = c * inf_count
    for valid_id in valid_ids:
        inf_index = sparse_map[valid_id]
        comp_weights[inf_index] = flat_weights[flat_index + inf_index]
    
    # finally store into main dict
    skin_weights[comp_id] = comp_weights

# the components must be done in order
comp_ids = sorted(skin_weights)

# you'll need to know the total number of influences in the cluster
inf_count = 5

# populate the MDoubleArray entirely with zeroes first, then just update the needed indices
weights = OpenMaya.MDoubleArray(len(comp_ids) * inf_count, 0)
for c, comp_id in enumerate(comp_ids):
    start_id = c * inf_count
    for inf_id, weight in skin_weights[comp_id].items():
        weights[start_id + inf_id] = weight