import maya.api.OpenMaya as om
import maya.cmds as cmds

sel = cmds.ls(sl=1,r=1)

arm_pos = om.MVector(cmds.xform(sel[0], q=True, rp=True, ws=True))
elbow_pos = om.MVector(cmds.xform(sel[1], q=True, rp=True, ws=True))
wrist_pos = om.MVector(cmds.xform(sel[2], q=True, rp=True, ws=True))

arm_to_wrist = wrist_pos - arm_pos
arm_to_wrist_scaled = arm_to_wrist / 2
mid_point = arm_pos + arm_to_wrist_scaled
mid_point_to_elbow_vec = elbow_pos - mid_point
mid_point_to_elbow_vec_scaled = mid_point_to_elbow_vec * 2
mid_point_to_elbow_point = mid_point + mid_point_to_elbow_vec_scaled

pv_ = cmds.spaceLocator(n='poleVector')
cmds.xform(pv_[0], t=mid_point_to_elbow_point)