import maya.cmds as cmds
import maya.api.OpenMaya as om2
from collections import deque

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
    
transfer_vertex_order_via_resultmesh()