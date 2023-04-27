import pymel.core as pm
import pymel.core.datatypes as dt

sel = pm.ls(sl=1)[0]
if sel.namespace():
    ns_ = sel.namespace()
else:
    ns_ = ''

arm_R_m = dt.Matrix()
arm_R_m[0] = [-1.0, -1.2246467991473532e-16, 0.0, 0.0]
arm_R_m[1] = [0.0, 0.0, 1.0, 0.0]
arm_R_m[2] = [-1.2246467991473532e-16, 1.0, 0.0, 0.0]
arm_R_m[3] = [0.0, 0.0, 0.0, 1.0]

arm_L_m = dt.Matrix()
arm_L_m[0] = [-1.0, 1.2246467991473532e-16, 0.0, 0.0]
arm_L_m[1] = [0.0, 0.0, -1.0, 0.0]
arm_L_m[2] = [-1.2246467991473532e-16, -1.0, 0.0, 0.0]
arm_L_m[3] = [0.0, 0.0, 0.0, 1.0]

leg_R_m = dt.Matrix()
leg_R_m[0] = [0.0, -1.0, 0.0, 0.0]
leg_R_m[1] = [0.0, 0.0, 1.0, 0.0]
leg_R_m[2] = [-1.0, 0.0, 0.0, 0.0]
leg_R_m[3] = [0.0, 0.0, 0.0, 1.0]

leg_L_m = dt.Matrix()
leg_L_m[0] = [0.0, 1.0, 0.0, 0.0]
leg_L_m[1] = [0.0, 0.0, -1.0, 0.0]
leg_L_m[2] = [-1.0, 0.0, 0.0, 0.0]
leg_L_m[3] = [0.0, 0.0, 0.0, 1.0]

m_list = [arm_R_m,arm_L_m,leg_R_m,leg_L_m]
pos_list = []
for i in m_list:
    pos_ = pm.spaceLocator()
    pos_.setMatrix(i)
    pos_list.append(pos_)

FKIKList = ['FKIKLeg_R','FKIKArm_R','FKIKArm_L','FKIKSpine_M','FKIKLeg_L']
[pm.PyNode(ns_ + i).FKIKBlend.set(0) for i in FKIKList]

match_dict = {
    0 : ['FKScapula_R', 'FKShoulder_R', 'FKElbow_R', 'FKWrist_R'],
    1 : ['FKScapula_L', 'FKShoulder_L', 'FKElbow_L', 'FKWrist_L'],
    2 : ['FKHip_R', 'FKKnee_R', 'FKAnkle_R'],
    3 : ['FKHip_L', 'FKKnee_L', 'FKAnkle_L']
    }

for keys in match_dict.keys():
    for value in match_dict[keys]:
        pm.matchTransform(pm.PyNode(ns_ + value), pos_list[keys], rot=True)
    
pm.delete(pos_list)