import maya.cmds as cmds

def get_all_descendant_joints(joint):
    result = []
    def dfs(j):
        result.append(j)
        for c in cmds.listRelatives(j, type='joint', children=True, fullPath=False) or []:
            dfs(c)
    dfs(joint)
    return result

def remove_namespace(name):
    return name.split(":")[-1]

def match_translate_and_joint_orient():
    # 선택 순서: [source_root, target_root]
    selection = cmds.ls(selection=True, type="joint")
    if len(selection) != 2:
        cmds.error("⚠️ 반드시 source 루트 조인트와 target 루트 조인트를 순서대로 선택해주세요.")
    else:
        source_joints = get_all_descendant_joints(selection[0])
        target_joints = get_all_descendant_joints(selection[1])

        # 네임스페이스 제거된 이름 기반 딕셔너리 구성
        target_name_dict = {
            remove_namespace(j).split("|")[-1]: j for j in target_joints
        }

        for src_joint in source_joints:
            src_name = remove_namespace(src_joint).split("|")[-1]
            
            if "_drv" in target_joints[0]:
                target_name = src_name + "_drv"
            else:
                target_name = src_name
                
            target_joint = target_name_dict.get(target_name)

            if not target_joint:
                print(f"⚠️ 매치 실패: {src_name} → {target_name} 없음")
                continue

            # 상위 'Off_' 처리
            parent = cmds.listRelatives(target_joint, parent=True, type="joint")
            if parent and "Off_" in parent[0]:
                print(f"🔄 '{target_joint}' 대신 상위의 '{parent[0]}'에 적용")
                target_joint = parent[0]

            # source → target 위치, jointOrient 복사
            translate = cmds.xform(src_joint, q=True, ws=True, t=True)
            joint_orient = cmds.getAttr(f"{src_joint}.jointOrient")[0]

            cmds.xform(target_joint, ws=True, t=translate)
            cmds.setAttr(f"{target_joint}.jointOrient", *joint_orient)

            print(f"✅ 적용 완료: {src_joint} → {target_joint}")

def collect_constraint_info_from_selected_joint():
    selection = cmds.ls(selection=True, type='joint')
    if not selection:
        cmds.warning("⚠️ 조인트를 선택해주세요.")
        return None

    root_joint = cmds.ls(selection[0], long=True)[0]
    joint_list = get_all_descendant_joints(root_joint)
    joint_set = set(joint_list)

    constraint_info = {}

    # constraint 타입별 주요 속성
    constraint_attr_keys = {
        'parentConstraint': ['interpType'],
        'orientConstraint': ['interpType'],
        'pointConstraint': ['interpType'],
        'scaleConstraint': []
    }

    for joint in joint_list:
        # 해당 조인트에 연결된, 영향을 "받는" 컨스트레인트만 추출
        constraints = cmds.listConnections(joint, type='constraint', s=True, d=False) or []

        for constraint in constraints:
            if not cmds.objExists(constraint):
                continue

            # 🎯 이 constraint가 root 하이라키 내부에 연결된 조인트를 포함하는가?
            connected_nodes = cmds.listConnections(constraint, s=True, d=False, plugs=False, connections=False) or []
            connected_in_hierarchy = any(node in joint_set for node in connected_nodes)

            if not connected_in_hierarchy:
                print(f"⚠️ 스킵됨 (하이라키 외 constraint): {constraint}")
                continue

            ctype = cmds.nodeType(constraint)
            attr_keys = constraint_attr_keys.get(ctype, [])
            attrs = {}

            # 주요 속성 수집
            for attr in attr_keys:
                try:
                    attrs[attr] = cmds.getAttr(f"{constraint}.{attr}")
                except:
                    pass
            attrs["maintainOffset"] = True

            # 타겟 수집
            targets = []
            for idx in range(20):  # 타겟 인덱스 최대 20까지 확인
                target_attr = f"{constraint}.target[{idx}].targetParentMatrix"
                if not cmds.objExists(target_attr):
                    continue

                src = cmds.listConnections(target_attr, source=True, destination=False)
                if not src:
                    continue

                target_obj = src[0]

                weight_attr = f"{constraint}.target[{idx}].targetWeight"
                try:
                    weight = cmds.getAttr(weight_attr)
                except:
                    weight = 1.0

                targets.append({
                    "object": target_obj,
                    "weight": weight
                })

            if not targets:
                print(f"⚠️ 타겟 없음: {constraint}")
                continue

            constraint_info[constraint] = {
                "type": ctype,
                "constrained": joint,
                "targets": targets,
                "attrs": attrs
            }

    print("✅ constraint 정보 수집 완료 (하이라키 내부만).")
    return constraint_info

def n_to_n_match():
    # 선택 순서: [source_root, target_root]
    selection = cmds.ls(selection=True, type="joint")
    if len(selection) != 2:
        cmds.error("⚠️ 반드시 source 루트 조인트와 target 루트 조인트를 순서대로 선택해주세요.")
    else: 
        source_joints = get_all_descendant_joints(selection[0])
        target_joints = get_all_descendant_joints(selection[1])

        # 네임스페이스 제거된 이름 기반 딕셔너리 구성
        target_name_dict = {
            remove_namespace(j).split("|")[-1]: j for j in target_joints
        }
        for src_joint in source_joints:
            src_name = remove_namespace(src_joint).split("|")[-1]
            target_name = src_name

            target_joint = target_name_dict.get(target_name)

            if not target_joint:
                print(f"⚠️ 매치 실패: {src_name} → {target_name} 없음")
                continue
            translate = cmds.xform(src_joint, q=True, ws=True, t=True)
            joint_orient = cmds.getAttr(f"{src_joint}.jointOrient")[0]

            cmds.xform(target_joint, ws=True, t=translate)
            cmds.setAttr(f"{target_joint}.jointOrient", *joint_orient)

def remove_constraints_from_hierarchy(constraint_data):
    if not constraint_data:
        cmds.warning("컨스트레인트 데이터가 없습니다.")
        return

    for constraint in constraint_data.keys():
        if cmds.objExists(constraint):
            try:
                cmds.delete(constraint)
            except Exception as e:
                print(f"⚠️ 삭제 실패: {constraint} - {e}")
    print("✅ 컨스트레인트 제거 완료.")

def restore_constraints(constraint_data, zero_out_offset=True):
    if not constraint_data:
        cmds.warning("⚠️ constraint_data가 없습니다.")
        return

    for original_name, data in constraint_data.items():
        ctype = data["type"]
        constrained = data["constrained"]
        targets = data["targets"]
        attrs = data["attrs"]
        maintain_offset = attrs.get("maintainOffset", True)

        target_names = [t["object"] for t in targets]
        weights = [t["weight"] for t in targets]

        if not target_names or not cmds.objExists(constrained):
            print(f"⚠️ 스킵됨: {original_name} (대상 또는 타겟 없음)")
            continue
        if not all(cmds.objExists(t) for t in target_names):
            print(f"⚠️ 일부 타겟 누락 → {original_name} 스킵")
            continue

        try:
            if ctype == "parentConstraint":
                created = cmds.parentConstraint(target_names, constrained, maintainOffset=maintain_offset)
            elif ctype == "orientConstraint":
                created = cmds.orientConstraint(target_names, constrained, maintainOffset=maintain_offset)
            elif ctype == "pointConstraint":
                created = cmds.pointConstraint(target_names, constrained, maintainOffset=maintain_offset)
            elif ctype == "scaleConstraint":
                created = cmds.scaleConstraint(target_names, constrained, maintainOffset=maintain_offset)
            else:
                print(f"⚠️ 미지원 컨스트레인트 타입: {ctype}")
                continue
        except Exception as e:
            print(f"⚠️ 컨스트레인트 생성 실패: {original_name} - {e}")
            continue

        if not created:
            print(f"⚠️ 생성 실패: {original_name} - 반환값 없음")
            continue

        new_constraint = created[0]

        # 🔹 offset 속성 제로화 (옵션)
        if zero_out_offset:
            try:
                if ctype == "parentConstraint":
                    cmds.setAttr(f"{new_constraint}.offsetTranslate", 0, 0, 0)
                    cmds.setAttr(f"{new_constraint}.offsetRotate", 0, 0, 0)
                elif ctype == "orientConstraint":
                    cmds.setAttr(f"{new_constraint}.offset", 0, 0, 0)
                elif ctype == "pointConstraint":
                    cmds.setAttr(f"{new_constraint}.offset", 0, 0, 0)
            except Exception as e:
                print(f"⚠️ offset 초기화 실패: {new_constraint} - {e}")


        # 🔹 weight 설정
        for i, weight in enumerate(weights):
            try:
                weight_attr = f"{new_constraint}.w{i}"
                cmds.setAttr(weight_attr, weight)
            except Exception as e:
                print(f"⚠️ weight 설정 실패: {weight_attr} - {e}")

        # 🔹 기타 속성 복원
        for attr, value in attrs.items():
            if attr == "maintainOffset":
                continue  # 이미 적용됨
            attr_full = f"{new_constraint}.{attr}"
            if cmds.objExists(attr_full) and cmds.getAttr(attr_full, settable=True):
                try:
                    cmds.setAttr(attr_full, value)
                except Exception as e:
                    print(f"⚠️ 속성 복원 실패: {attr_full} - {e}")

        print(f"✅ 복원 완료: {original_name}")


# 예시 실행
# skin_constraint_data = collect_constraint_info_from_selected_joint()
# remove_constraints_from_hierarchy(skin_constraint_data)

# drv_constraint_data = collect_constraint_info_from_selected_joint()
# remove_constraints_from_hierarchy(drv_constraint_data)

# n_to_n_match()
# match_translate_and_joint_orient()

# 오프셋을 0으로 초기화하면서 복원
# restore_constraints(skin_constraint_data, zero_out_offset=True)
# restore_constraints(drv_constraint_data, zero_out_offset=True)
# 오프셋은 유지하고 복원
# restore_constraints(constraint_data, zero_out_offset=False)


