import pymel.core as pm

def addTwistJnt(*args):
    targetJntList = ['armUpper_TGET_02_R_JNT', 'armLower_TGET_02_R_JNT',
                     'armUpper_TGET_02_L_JNT', 'armLower_TGET_02_L_JNT',
                     'legUpper_TGET_02_R_JNT', 'legLower_TGET_02_R_JNT',
                     'legUpper_TGET_02_L_JNT', 'legLower_TGET_02_L_JNT']
    renameList = ['shoulder_R_twist_skinJNT', 'elbow_R_twist_skinJNT',
                  'shoulder_L_twist_skinJNT', 'elbow_L_twist_skinJNT',
                  'leg_R_twist_skinJNT', 'knee_R_twist_skinJNT',
                  'leg_L_twist_skinJNT', 'knee_L_twist_skinJNT']
    parList = ['shoulder_R_skinJNT', 'elbow_R_skinJNT', 'shoulder_L_skinJNT', 'elbow_L_skinJNT',
               'leg_R_skinJNT', 'knee_R_skinJNT', 'leg_L_skinJNT', 'knee_L_skinJNT']
    chaList = ['elbow_R_skinJNT', 'wrist_R_skinJNT', 'elbow_L_skinJNT', 'wrist_L_skinJNT',
               'knee_R_skinJNT', 'ankle_R_skinJNT', 'knee_L_skinJNT', 'ankle_L_skinJNT']
    slideList = ['elbowSlide_R_skinJNT', 'elbowSlide_R_offGRP', 'elbowSlide_L_skinJNT', 'elbowSlide_L_offGRP',
                 'kneeSlide_R_skinJNT', 'kneeSlide_R_offGRP', 'kneeSlide_L_skinJNT', 'kneeSlide_L_offGRP']
    for i in range(len(targetJntList)):
        creTwistJnt = pm.duplicate(targetJntList[i], n=renameList[i])
        pm.setAttr(creTwistJnt[0]+'.scaleX', 1)
        pm.setAttr(creTwistJnt[0]+'.scaleY', 1)
        pm.setAttr(creTwistJnt[0]+'.scaleZ', 1)
        pm.parent(creTwistJnt[0], parList[i])
        pm.parent(chaList[i], creTwistJnt[0])
        if 'shoulder_R_twist_skinJNT' in str(renameList[i]):
            pm.parent(slideList[0], creTwistJnt[0])
            pm.parent(slideList[1], creTwistJnt[0])
        else:
            pass
        if 'shoulder_L_twist_skinJNT' in str(renameList[i]):
            pm.parent(slideList[2], creTwistJnt[0])
            pm.parent(slideList[3], creTwistJnt[0])
        else:
            pass
        if 'leg_R_twist_skinJNT' in str(renameList[i]):
            pm.parent(slideList[4], creTwistJnt[0])
            pm.parent(slideList[5], creTwistJnt[0])
        else:
            pass
        if 'leg_L_twist_skinJNT' in str(renameList[i]):
            pm.parent(slideList[6], creTwistJnt[0])
            pm.parent(slideList[7], creTwistJnt[0])
        else:
            pass
        pm.parentConstraint(targetJntList[i], creTwistJnt[0], mo=1)
        pm.scaleConstraint(targetJntList[i], creTwistJnt[0], mo=1)

    for i in renameList:
        pm.setAttr(i + '.displayLocalAxis', 0)

    for i in renameList:
        pm.setAttr(i + '.type', 18)
        renameList = i.split('_')
        if len(renameList) > 1:
            makeName = str(renameList[0]) + str(renameList[2])
        else:
            makeName = renameList[0]
        pm.setAttr(i + '.otherType', makeName)

addTwistJnt()