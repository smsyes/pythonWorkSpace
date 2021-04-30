import maya.cmds as cmds
import maya.OpenMaya as om

class poleVec_:
    def __init__(self, root, mid, end):
        self._root =  root
        self._mid = mid
        self._end = end

    def create_loc(self, pos):
        loc = cmds.spaceLocator()
        cmds.move(pos.x, pos.y, pos.z, loc)

    def get_vec_pos(self):

        root_pos = cmds.xform(self._root, q = True, ws = True, t = True)
        mid_pos = cmds.xform(self._mid, q = True, ws = True, t = True)
        end_pos = cmds.xform(self._end, q = True, ws = True, t = True)
        
        root_joint_vec = om.MVector(root_pos[0], root_pos[1], root_pos[2])
        mid_joint_vec = om.MVector(mid_pos[0], mid_pos[1], mid_pos[2])
        end_joint_vec = om.MVector(end_pos[0], end_pos[1], end_pos[2])
        
        line = (end_joint_vec - root_joint_vec)
        point = (mid_joint_vec - root_joint_vec)
        
        scale_value = (line * point) / (line * line)
        proj_vec = line * scale_value + root_joint_vec
        
        root_to_mid_len = (mid_joint_vec - root_joint_vec).length()
        mid_to_end_len = (end_joint_vec - mid_joint_vec).length()
        total_length = root_to_mid_len + mid_to_end_len
        
        pole_vec_pos = (mid_joint_vec - proj_vec).normal() * total_length + mid_joint_vec

        pos_loc = cmds.spaceLocator()
        cmds.move(pole_vec_pos.x, pole_vec_pos.y, pole_vec_pos.z, pos_loc)

        return pos_loc
        

