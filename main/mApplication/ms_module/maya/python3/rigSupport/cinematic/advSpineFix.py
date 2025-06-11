import maya.cmds as cmds

# 조작할 조인트 또는 컨트롤러 이름 리스트
joint_names = ['RootPart1', 'RootPart2', 'Spine1', 'Spine1Part1', 'Spine1Part2', 'Chest']
# 타입 구분자: Spine, Accessory 등?
types = ['Sp', 'Ac']

# 스위치 컨트롤과 IK 핸들 이름
fkik_switch = 'FKIKSpine_M'
ik_handle = 'IKSpineHandle_M'

# ikhandle constraint 및 parent 변경
for side in ['L', 'R']:
    ik_arm_handle = f"IKArmHandle_{side}"
    ik_arm = f"IKArm_{side}"
    if not cmds.listConnections("IKArmHandle_L",s=1,d=1,t='parentConstraint'):
        cmds.parentConstraint(ik_arm, ik_arm_handle, mo=1)
    if cmds.objExists('MotionSystem'):
        cmds.parent(ik_arm_handle, 'MotionSystem')
        
# 각 조인트 이름과 타입에 대해 반복
for name in joint_names:
    for typ in types:
        fk_ctrl = f'FK{name}_M'
        ik_follow_offset = f'IK{typ}{name}FollowOffset_M'
        orient_constraint = f'{ik_follow_offset}_orientConstraint1'

        # orientConstraint의 타겟 오브젝트 가져오기
        target = cmds.listConnections(f'{orient_constraint}.target', d=True)[0]

        # FK 모드로 전환
        cmds.setAttr(f'{fkik_switch}.FKIKBlend', 0)

        # FK 컨트롤 위치로 IK Follow Offset 정렬
        cmds.matchTransform(ik_follow_offset, fk_ctrl)

        # 기존 orientConstraint 삭제
        cmds.delete(orient_constraint)

        # IK 핸들의 Forward Axis 설정 (Z축)
        cmds.setAttr(f'{ik_handle}.dForwardAxis', 2)

        # 타겟을 기준으로 새로운 orientConstraint 생성
        cmds.orientConstraint(target, ik_follow_offset, mo=True)
