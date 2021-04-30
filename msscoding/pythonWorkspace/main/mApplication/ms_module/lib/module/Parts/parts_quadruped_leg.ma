//Maya ASCII 2019 scene
//Name: parts_quadruped_leg.ma
//Last modified: Thu, Apr 29, 2021 07:59:49 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "leg_GRP";
	rename -uid "5A0B5039-4BC9-DEAE-28DE-6C9D6431E959";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 2 ".iog";
	setAttr -s 4 ".rebuildMode";
	setAttr -s 5 ".init";
	setAttr -k on ".prefixType";
createNode transform -n "leg_motion_GRP" -p "leg_GRP";
	rename -uid "B7A202BA-4BF9-EF59-F4B9-5E998DE396BE";
	setAttr ".v" no;
createNode transform -n "input_hip" -p "leg_motion_GRP";
	rename -uid "A39131B7-48ED-442C-D094-E9850E778A7F";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode transform -n "input_thigh" -p "input_hip";
	rename -uid "9819C0F7-4112-6502-4634-ACB294F7C0A2";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 2.0713150501251221 -2.4073028564453125 0 ;
	setAttr ".r" -type "double3" 0 9.6145742939888414 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "input_knee" -p "input_thigh";
	rename -uid "F57B695E-49EE-BDD2-6F2C-EFBC531887EF";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 14.413311073045826 0 -9.2860890532620033e-08 ;
	setAttr ".r" -type "double3" 0 24.808835516604692 0 ;
	setAttr ".s" -type "double3" 1.0000000519103551 1 1.0000000519103551 ;
createNode transform -n "input_ankle" -p "input_knee";
	rename -uid "3B8C40BB-4590-3D93-71B6-4D92B92A69D2";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 13.462105844960195 -8.8817841970012523e-16 -9.7126701348315692e-08 ;
	setAttr ".r" -type "double3" 0 -35.779471559252869 0 ;
	setAttr ".s" -type "double3" 0.99999994890369348 1 0.99999994890369348 ;
createNode transform -n "input_B_toe" -p "input_ankle";
	rename -uid "298F5F3A-46A7-C091-52FC-2D91D26D01CC";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 10.648109404222893 8.8817841970012523e-16 4.7434767225240648e-10 ;
	setAttr ".s" -type "double3" 1 1.0000000142892349 1.0000000142892349 ;
createNode transform -n "motion_IK_GRP" -p "leg_motion_GRP";
	rename -uid "CD399FB5-421D-8831-32B0-4FAB1B724479";
createNode transform -n "IK_hip_space" -p "motion_IK_GRP";
	rename -uid "99BC8DE3-494E-F296-B69F-B69EE42145F6";
	setAttr ".t" -type "double3" 2.299082835222066e-08 9.3623519603625027e-08 -8.9822589544041875e-07 ;
createNode joint -n "IK_hip_JNT" -p "IK_hip_space";
	rename -uid "0F71D20F-41A3-64B4-CD9D-C2914BC2B18D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.57279155036866225;
createNode joint -n "IK_rot_thigh_JNT" -p "IK_hip_JNT";
	rename -uid "B2F30FE9-464A-A960-609A-66B53287D134";
	setAttr ".t" -type "double3" 2.0713150271342937 -2.4073029500688321 8.9822589544041875e-07 ;
	setAttr ".r" -type "double3" -5.7262793697483356e-08 -1.5577462181209804e-05 -2.6999288781411194e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".ds" 2;
	setAttr ".radi" 1.1937919038631488;
createNode joint -n "IK_rps_knee_JNT" -p "IK_rot_thigh_JNT";
	rename -uid "F4889E60-459D-6E8C-0ED0-419E71A2E458";
	setAttr ".t" -type "double3" 14.413311004638672 -6.2172489379008766e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -7.3852595838871938e-35 3.4026831287997974e-05 3.4980708251816239e-20 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 24.808844184130297 0 ;
	setAttr ".ds" 2;
	setAttr ".radi" 1.1445917352907937;
createNode joint -n "IK_rps_ankle_JNT" -p "IK_rps_knee_JNT";
	rename -uid "EE9AB342-4559-979A-2923-A6939016EAD6";
	setAttr ".t" -type "double3" 13.462106704711909 0 2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -35.779476665540273 0 ;
	setAttr ".ds" 2;
	setAttr ".radi" 0.99904020379521696;
createNode joint -n "IK_rps_B_toe0_JNT" -p "IK_rps_ankle_JNT";
	rename -uid "2DFF2E82-424E-39B9-A2C4-F9BD394C60BD";
	setAttr ".t" -type "double3" 10.648109436035156 -8.8817841970012523e-16 -1.7763568394002505e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".radi" 0.5013341295983873;
createNode ikEffector -n "effector13" -p "IK_rps_knee_JNT";
	rename -uid "CF23F398-4DDF-5BB1-4AD6-32B89088424C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "IK_trans_thigh_JNT" -p "IK_rot_thigh_JNT";
	rename -uid "DD966E99-4FEC-248F-2D2D-09A936B8B78F";
	addAttr -ci true -sn "initTrans" -ln "initTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "initTransX" -ln "initTransX" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransY" -ln "initTransY" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransZ" -ln "initTransZ" -at "double" -p "initTrans";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -ci true -sn "controlTrans" -ln "controlTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "controlTransX" -ln "controlTransX" -at "double" -p "controlTrans";
	addAttr -ci true -sn "controlTransY" -ln "controlTransY" -at "double" -p "controlTrans";
	addAttr -ci true -sn "controlTransZ" -ln "controlTransZ" -at "double" -p "controlTrans";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	addAttr -ci true -sn "initRot" -ln "initRot" -at "double3" -nc 3;
	addAttr -ci true -sn "initRotX" -ln "initRotX" -at "double" -p "initRot";
	addAttr -ci true -sn "initRotY" -ln "initRotY" -at "double" -p "initRot";
	addAttr -ci true -sn "initRotZ" -ln "initRotZ" -at "double" -p "initRot";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.5577462182623828e-05 0 ;
	setAttr ".radi" 1.1937919038631488;
	setAttr ".offset" -type "matrix" -1.1247605916026223e-15 -0.98595358430336555 -0.16701954855449491 0
		 1 -1.0969462157924063e-15 -1.7174609114245387e-16 0 -7.5518382746463801e-18 -0.16701954855449494 0.98595358430336544 0
		 2.299082968448829e-08 9.362351249819767e-08 -8.9822589899313243e-07 1;
createNode joint -n "IK_knee_JNT" -p "IK_trans_thigh_JNT";
	rename -uid "5B35C0BC-48C3-7FBD-2621-BDA77650E5A0";
	setAttr ".t" -type "double3" 14.413311004638672 -6.2172489379008766e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -8.2179105327508555e-07 1.5742808174503142e-05 -2.3149305020896077e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1445917352907937;
createNode joint -n "IK_ankle_JNT" -p "IK_knee_JNT";
	rename -uid "E543970A-4CBD-F349-3CE3-9B8A60CA2A00";
	setAttr ".t" -type "double3" 13.462106704711914 0 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -1.6173353955791933e-21 -1.9389757626305442e-05 -2.2441851699217224e-21 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.99904020379521696;
createNode joint -n "IK_B_toe0_JNT" -p "IK_ankle_JNT";
	rename -uid "6D7D7627-412A-EDFF-99CD-CDA2C4EC9DBA";
	setAttr ".t" -type "double3" 10.648109436035156 -8.8817841970012523e-16 -1.7763568394002505e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5013341295983873;
createNode ikEffector -n "effector14" -p "IK_ankle_JNT";
	rename -uid "442191A7-4335-644F-7EDC-CABDB86D7C9D";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IK_thigh_space" -p "motion_IK_GRP";
	rename -uid "C92A7138-42CA-8CBC-08C4-8DB04FB65748";
createNode locator -n "IK_thigh_spaceShape" -p "IK_thigh_space";
	rename -uid "FE7500C1-4AF3-EDB8-F9C0-ADB9D75287F1";
	setAttr -k off ".v";
createNode transform -n "IK_upperLeg_CTLaim" -p "IK_thigh_space";
	rename -uid "239DD292-4BB6-1F6B-BC55-9CAB040F0818";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "IK_upperLeg_CTLaimShape" -p "IK_upperLeg_CTLaim";
	rename -uid "87C120D9-4724-0DDA-FF92-9882B7D0EC8F";
	setAttr -k off ".v";
createNode transform -n "upperLeg_softIK_output_LOC" -p "IK_upperLeg_CTLaim";
	rename -uid "AB4D7612-47AD-C459-476D-F4927EAF275D";
	setAttr ".t" -type "double3" 27.22545051574707 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_softIK_output_LOCShape" -p "upperLeg_softIK_output_LOC";
	rename -uid "C79322FF-447D-F944-3D68-23A417C0B5E1";
	setAttr -k off ".v";
createNode transform -n "upperLeg_stretch_output_LOC" -p "upperLeg_softIK_output_LOC";
	rename -uid "46E737D2-43B1-CD9A-EAEE-49848420C10A";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_stretch_output_LOCShape" -p "upperLeg_stretch_output_LOC";
	rename -uid "18DA11D9-48C8-C4BF-735A-109B4DB6D59C";
	setAttr -k off ".v";
createNode transform -n "IK_B_toe_flex_local_offGRP" -p "upperLeg_stretch_output_LOC";
	rename -uid "F1297EDA-4DFC-9413-9C51-7CBCAE5A5B2E";
	setAttr ".t" -type "double3" 9.8056228524887903 1.5987211554602254e-14 4.1511466900800862 ;
	setAttr ".r" -type "double3" -21.588982155756764 1.5902773407317584e-15 90.000000000000057 ;
createNode transform -n "IK_B_toe_flex_local_spcGRP" -p "IK_B_toe_flex_local_offGRP";
	rename -uid "B83A7787-4017-A63B-C2EC-96B5BE481D05";
createNode transform -n "upperLeg_ikHandle_offGRP" -p "IK_B_toe_flex_local_spcGRP";
	rename -uid "711C14EE-4D82-9F56-35AC-C89E66807A72";
	setAttr ".t" -type "double3" -1.3116254482525846e-07 10.645128936477311 -0.25199484747692935 ;
createNode ikHandle -n "upperLeg_ikHandle" -p "upperLeg_ikHandle_offGRP";
	rename -uid "4B08BD33-4C0E-B13C-74B3-FCB090145E28";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "upperLeg_ikHandle_poleVectorConstraint1" -p "upperLeg_ikHandle";
	rename -uid "01609C4B-4A6C-52B3-BF0C-DABC12ACB174";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knee_poleVecW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -4.4408920985006262e-15 -22.690418714081307 9.9659329626481004 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IK_upperLeg_CTLaim_aimConstraint1" -p "IK_upperLeg_CTLaim";
	rename -uid "2DD83904-43F5-9A8F-81D8-77908A0C84BA";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_ankle_offset_LOCW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -2.9593625319897447e-08 11.974412884855838 -2.821706048302148e-07 ;
	setAttr -k on ".w0";
createNode transform -n "IK_thigh_space_upVec" -p "IK_thigh_space";
	rename -uid "50C33280-49A1-9E22-0112-1D9BBC53A92F";
	setAttr ".t" -type "double3" 6.2325491732529114e-15 1 -6.0636337963556973e-15 ;
createNode locator -n "IK_thigh_space_upVecShape" -p "IK_thigh_space_upVec";
	rename -uid "39E80261-4232-F202-8110-859F1EC0EF08";
	setAttr -k off ".v";
createNode transform -n "IK_knee_space" -p "motion_IK_GRP";
	rename -uid "E4A69AE0-4660-D724-8003-42B654B4CEF8";
createNode locator -n "IK_knee_spaceShape" -p "IK_knee_space";
	rename -uid "415B90BF-4EE9-AD27-4EAE-DFA037FCA711";
	setAttr -k off ".v";
createNode transform -n "IK_lowerLeg_CTLaim" -p "IK_knee_space";
	rename -uid "DBA62635-410D-96D0-CA49-759F26EC9BB7";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "IK_lowerLeg_CTLaimShape" -p "IK_lowerLeg_CTLaim";
	rename -uid "B7B44E64-49A2-2C93-EF3D-53ACC766D576";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_softIK_output_LOC" -p "IK_lowerLeg_CTLaim";
	rename -uid "A141CA3F-4E36-69D7-6C7E-FCAA9018C6AF";
	setAttr ".t" -type "double3" 22.960750579833984 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_softIK_output_LOCShape" -p "lowerLeg_softIK_output_LOC";
	rename -uid "35098D4C-4FC0-22DB-8717-B594E7C9A7D5";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_stretch_output_LOC" -p "lowerLeg_softIK_output_LOC";
	rename -uid "7E74A837-4A99-F5C1-0245-8C9BC534AE10";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_stretch_output_LOCShape" -p "lowerLeg_stretch_output_LOC";
	rename -uid "2F9B2E99-4218-3328-3905-4CA9BB5B5B07";
	setAttr -k off ".v";
createNode transform -n "IK_ankle_flex_local_offGRP" -p "lowerLeg_stretch_output_LOC";
	rename -uid "5C425920-4071-B5DA-A36E-0E9AA4F16064";
	setAttr ".t" -type "double3" -10.002941320380531 -4.4408920985006262e-15 -3.6501296818809728 ;
	setAttr ".r" -type "double3" -18.691241513948722 0 89.999999999999986 ;
createNode transform -n "IK_ankle_flex_local_spcGRP" -p "IK_ankle_flex_local_offGRP";
	rename -uid "10E52EAB-4A6E-23D6-14CE-D0AC91236C39";
createNode transform -n "lowerLeg_ikHandle_offGRP" -p "IK_ankle_flex_local_spcGRP";
	rename -uid "A0DD9E9D-4AFE-2492-1F53-5090B4316E24";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 -10.645127257617185 0.25199252154928686 ;
createNode ikHandle -n "lowerLeg_ikHandle" -p "lowerLeg_ikHandle_offGRP";
	rename -uid "0AA6254B-4FC9-9AFF-1739-4181F2F8C3B2";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "lowerLeg_ikHandle_poleVectorConstraint1" -p "lowerLeg_ikHandle";
	rename -uid "5D10C247-454C-6D90-AE93-9988ADAEF4F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ankle_poleVecW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.3116253327893901e-07 -11.34131249103865 -17.607383471077792 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IK_lowerLeg_CTLaim_aimConstraint1" -p "IK_lowerLeg_CTLaim";
	rename -uid "6A5BF989-46CE-602F-77E2-C8B63F002F25";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_B_toe_CTLW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -4.6979091140431782e-08 -15.732176964170399 3.4003825556383181e-07 ;
	setAttr -k on ".w0";
createNode transform -n "IK_knee_space_upVec" -p "IK_knee_space";
	rename -uid "215B0599-47B0-5E66-D668-2B8264832204";
	setAttr ".t" -type "double3" -8.5414944037635054e-16 1 4.9389353589875994e-15 ;
createNode locator -n "IK_knee_space_upVecShape" -p "IK_knee_space_upVec";
	rename -uid "4FF00AB5-429C-D76D-5199-8EBB03350D1E";
	setAttr -k off ".v";
createNode transform -n "leg_softIK_input" -p "motion_IK_GRP";
	rename -uid "E8E58F0D-418F-1F70-6D23-AC8097904C35";
	addAttr -ci true -sn "upper_legLen" -ln "upper_legLen" -at "double";
	addAttr -ci true -sn "upper_ctrlLen" -ln "upper_ctrlLen" -at "double";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lower_legLen" -ln "lower_legLen" -at "double";
	addAttr -ci true -sn "lower_ctrlLen" -ln "lower_ctrlLen" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".upper_legLen";
	setAttr -k on ".upper_ctrlLen";
	setAttr -k on ".softik_ctrl_value";
	setAttr -k on ".lower_legLen";
	setAttr -k on ".lower_ctrlLen";
createNode transform -n "leg_softIK_output" -p "motion_IK_GRP";
	rename -uid "B5EE709E-4529-3B20-7CC2-93907F7E4106";
	addAttr -ci true -sn "output_upper_softik" -ln "output_upper_softik" -at "double";
	addAttr -ci true -sn "output_lower_softik" -ln "output_lower_softik" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".output_upper_softik";
	setAttr -k on ".output_lower_softik";
createNode transform -n "leg_stretchIK_input" -p "motion_IK_GRP";
	rename -uid "5F1E0552-4157-4FD9-9B30-D59ADD54F42A";
	addAttr -ci true -sn "upperSoftik_len" -ln "upperSoftik_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "upLeg_len" -ln "upLeg_len" -at "double";
	addAttr -ci true -sn "upperCtrl_len" -ln "upperCtrl_len" -at "double";
	addAttr -ci true -sn "midLeg_len" -ln "midLeg_len" -at "double";
	addAttr -ci true -sn "loLegLen" -ln "loLegLen" -at "double";
	addAttr -ci true -sn "lowerSoftik_len" -ln "lowerSoftik_len" -at "double";
	addAttr -ci true -sn "lowerCtrl_len" -ln "lowerCtrl_len" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".upperSoftik_len";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".upLeg_len";
	setAttr -k on ".upperCtrl_len";
	setAttr -k on ".midLeg_len";
	setAttr -k on ".loLegLen";
	setAttr -k on ".lowerSoftik_len";
	setAttr -k on ".lowerCtrl_len";
createNode transform -n "leg_stretchIK_output" -p "motion_IK_GRP";
	rename -uid "B63444C3-45F1-41A9-7B78-DDBA7DF018A6";
	addAttr -ci true -sn "midLeg_stretched" -ln "midLeg_stretched" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "upperStretched_len" -ln "upperStretched_len" -at "double";
	addAttr -ci true -sn "upleg_stretched" -ln "upleg_stretched" -at "double";
	addAttr -ci true -sn "loLeg_Stretched" -ln "loLeg_Stretched" -at "double";
	addAttr -ci true -sn "lowerStretched_len" -ln "lowerStretched_len" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".midLeg_stretched";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".upperStretched_len";
	setAttr -k on ".upleg_stretched";
	setAttr -k on ".loLeg_Stretched";
	setAttr -k on ".lowerStretched_len";
createNode transform -n "motion_FK_GRP" -p "leg_motion_GRP";
	rename -uid "17F27AA0-4403-81B6-E241-FD893C30BA3D";
createNode joint -n "FK_hip_JNT" -p "motion_FK_GRP";
	rename -uid "F1DEEB93-49EA-F23A-8F49-83AADE883525";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.57279155036866225;
createNode joint -n "FK_thigh_JNT" -p "FK_hip_JNT";
	rename -uid "4EC214EC-4335-B210-16AE-C1969AA99C82";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1937919038631488;
createNode joint -n "FK_knee_JNT" -p "FK_thigh_JNT";
	rename -uid "C221CF81-4D11-6451-87D9-3B85FD7C02AB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1445917352907937;
createNode joint -n "FK_ankle_JNT" -p "FK_knee_JNT";
	rename -uid "8166620E-4299-599E-1895-3A995927E573";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.99904020379521696;
createNode joint -n "FK_B_toe0_JNT" -p "FK_ankle_JNT";
	rename -uid "A1EE3A32-4DD0-C9CF-3E67-88A8DEB9D09B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5013341295983873;
createNode transform -n "leg_CTL_GRP" -p "leg_GRP";
	rename -uid "E4611170-4498-1168-3CCF-85BC2B4FA2AC";
createNode transform -n "hip_L_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "B2A3BE88-49D6-268A-D45C-A8AEB59249A7";
createNode transform -n "hip_L_CTL_spcGRP" -p "hip_L_CTL_offGRP";
	rename -uid "32F39F8A-48B6-27A2-89CF-5EA2DE19352E";
createNode transform -n "hip_L_CTL" -p "hip_L_CTL_spcGRP";
	rename -uid "13F937BF-4EAD-50FE-F0E0-5797B8AA987A";
createNode nurbsCurve -n "hip_L_CTLShape" -p "hip_L_CTL";
	rename -uid "F71B0DD2-40F2-5B70-870C-55B497BA09AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.0999999999999948 3.6334503822956306 3.6334503822956492
		3.0999999999999983 2.4424906541753444e-15 5.1384748088522123
		3.1000000000000001 1.3523812645055771 3.6334503822956492
		3.0999999999999983 2.6827684246472541 2.0039525594484076e-14
		3.1000000000000001 1.3523812645055759 -3.6334503822956168
		3.0999999999999983 -9.9920072216264089e-16 -5.1384748088521706
		3.0999999999999948 3.6334503822956292 -3.6334503822956177
		3.0999999999999956 5.1384748088521839 1.8873791418627661e-14
		3.0999999999999948 3.6334503822956306 3.6334503822956492
		3.0999999999999983 2.4424906541753444e-15 5.1384748088522123
		3.1000000000000001 1.3523812645055771 3.6334503822956492
		;
createNode transform -n "IK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "87935FCE-4961-A4B6-D81D-2BBD2D2998FD";
	setAttr ".r" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "IK_ankle_CTL_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "DF73B998-487A-588E-2F90-3DA36A4116A5";
	setAttr ".t" -type "double3" 37.086550797632711 0 -3.6221953375658877 ;
	setAttr ".r" -type "double3" -9.6145742939888379 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000151032806 1.0000000151032806 ;
createNode transform -n "IK_ankle_CTL_spcGRP" -p "IK_ankle_CTL_offGRP";
	rename -uid "31F862A8-46C2-B197-0AFF-41A8A7F2D020";
createNode transform -n "IK_ankle_CTL" -p "IK_ankle_CTL_spcGRP";
	rename -uid "F4C90406-4C64-F1B3-6D6C-DD9F7AB03D97";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -k on ".softIK";
	setAttr -k on ".stretchIK";
createNode nurbsCurve -n "IK_ankle_CTLShape" -p "IK_ankle_CTL";
	rename -uid "0C14E794-4AF3-A16A-45F2-C885ADBF7853";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		2.3200000000000003 -2.3200000000000003 2.3200000000000003
		2.3200000000000003 2.3200000000000003 2.3200000000000003
		2.3200000000000003 2.3200000000000003 -2.3200000000000003
		2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		2.3200000000000003 -2.3200000000000003 2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 2.3200000000000003
		-2.3200000000000003 2.3200000000000003 2.3200000000000003
		-2.3200000000000003 2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		2.3200000000000003 2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 2.3200000000000003
		-2.3200000000000003 2.3200000000000003 2.3200000000000003
		2.3200000000000003 2.3200000000000003 2.3200000000000003
		;
createNode transform -n "IK_B_toe_flex_CTL_offGRP" -p "IK_ankle_CTL";
	rename -uid "5B193073-409E-5A73-B555-8495352A56AD";
createNode transform -n "IK_B_toe_flex_CTL_spcGRP" -p "IK_B_toe_flex_CTL_offGRP";
	rename -uid "CBC6F59D-49D4-E49C-E962-9EA26AB1228F";
createNode transform -n "IK_B_toe_flex_CTL" -p "IK_B_toe_flex_CTL_spcGRP";
	rename -uid "4C6A8514-46D0-89A0-AE2A-1B9254881E89";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_B_toe_flex_CTLShape" -p "IK_B_toe_flex_CTL";
	rename -uid "2B01F6FA-47D2-338D-7480-A0A7FAF448E5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 5.5861933477740582 2.8273701351040854
		-2.7979910232057762e-30 6.040608935502485 3.9244264099517991
		-1.1102230246251565e-16 5.5861933477740582 5.0214826847995129
		0 4.4891370729263436 5.4758982725279415
		-1.1102230246251565e-16 3.3920807980786289 5.0214826847995129
		2.7486872166294634e-30 2.9376652103501995 3.9244264099517991
		1.1102230246251565e-16 3.3920807980786298 2.8273701351040854
		-2.2204460492503131e-16 4.4891370729263436 2.3729545473756559
		1.1102230246251565e-16 5.5861933477740582 2.8273701351040854
		-2.7979910232057762e-30 6.040608935502485 3.9244264099517991
		-1.1102230246251565e-16 5.5861933477740582 5.0214826847995129
		;
createNode transform -n "IK_ankle_flex_CTL_offGRP" -p "IK_B_toe_flex_CTL";
	rename -uid "6910DEF1-458D-CC1B-DDFC-DB9F138EBE23";
	setAttr ".t" -type "double3" -5.6621339616924615e-08 4.4891370729263418 3.9244264099517991 ;
createNode transform -n "IK_ankle_flex_CTL_spcGRP" -p "IK_ankle_flex_CTL_offGRP";
	rename -uid "7D4A0837-43C9-525F-E12A-7AA46418377A";
createNode transform -n "IK_ankle_flex_CTL" -p "IK_ankle_flex_CTL_spcGRP";
	rename -uid "5441F67A-4970-CF3C-ED0E-5F92265732FA";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_ankle_flex_CTLShape" -p "IK_ankle_flex_CTL";
	rename -uid "C7377F6A-4879-3C74-6950-F8B6A6EB25EB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.8589950632057608 -8.5899504151942807e-06 -5.8286708792820728e-16
		7.4385197725941893e-17 -1.2148024377545141e-05 -2.7977620220553955e-16
		-0.8589950632057608 -8.5899504151942807e-06 -9.3258734068513153e-16
		-1.2148024683971204 2.4128572597604301e-17 -2.4128572597604291e-17
		-0.8589950632057608 0.85899506320576091 3.9634961979118097e-16
		-1.2168759410079059e-16 1.2148024683971219 6.5281113847959233e-16
		0.8589950632057608 0.85899506320575969 9.792167077193881e-16
		1.2148024683971204 3.0956283524129434e-16 6.3472101032758347e-17
		0.8589950632057608 -8.5899504151942807e-06 -5.8286708792820728e-16
		7.4385197725941893e-17 -1.2148024377545141e-05 -2.7977620220553955e-16
		-0.8589950632057608 -8.5899504151942807e-06 -9.3258734068513153e-16
		;
createNode transform -n "IK_B_toe_CTL_offGRP" -p "IK_ankle_CTL";
	rename -uid "AD82BFEC-45B9-A651-5500-E98C1E085F99";
	addAttr -ci true -sn "init_trans" -ln "init_trans" -at "double3" -nc 3;
	addAttr -ci true -sn "init_transX" -ln "init_transX" -at "double" -p "init_trans";
	addAttr -ci true -sn "init_transY" -ln "init_transY" -at "double" -p "init_trans";
	addAttr -ci true -sn "init_transZ" -ln "init_transZ" -at "double" -p "init_trans";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 6.6613381477509392e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 3.9756933518294038e-16 -7.5269520085988317e-17 -3.1796638646290565e-15 ;
createNode transform -n "IK_B_toe_CTL_spcGRP" -p "IK_B_toe_CTL_offGRP";
	rename -uid "7C142199-4DC0-2B78-66A5-459C5232C872";
createNode transform -n "IK_B_toe_CTL" -p "IK_B_toe_CTL_spcGRP";
	rename -uid "C2DE8FD4-40ED-75C7-761B-E88C6065D26E";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_B_toe_CTLShape" -p "IK_B_toe_CTL";
	rename -uid "1F1D08EA-4BE2-697D-AF3A-4B8F1D4D5C5C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.3007952973194339 -0.78361162489122416 
		2.084406922210658 1.1264315656364128e-16 -1.1081941875543866 2.9477965388946732 -1.3007952973194339 
		-0.78361162489122393 2.0844069222106567 -1.8396023513402859 -5.7448982375248255e-17 
		1.5281429311816058e-16 -1.3007952973194339 0.78361162489122405 -2.084406922210658 
		-1.8427422569541374e-16 1.1081941875543861 -2.9477965388946754 1.3007952973194339 
		0.78361162489122393 -2.0844069222106567 1.8396023513402859 1.5112405007799595e-16 
		-4.0198997320746915e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "IK_lower_local_offGRP" -p "IK_ankle_CTL";
	rename -uid "B927D977-4AA0-D5E6-56A3-7AB08247CE7A";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	addAttr -ci true -sn "initTrans" -ln "initTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "initTransX" -ln "initTransX" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransY" -ln "initTransY" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransZ" -ln "initTransZ" -at "double" -p "initTrans";
	addAttr -ci true -sn "initRot" -ln "initRot" -at "double3" -nc 3;
	addAttr -ci true -sn "initRotX" -ln "initRotX" -at "double" -p "initRot";
	addAttr -ci true -sn "initRotY" -ln "initRotY" -at "double" -p "initRot";
	addAttr -ci true -sn "initRotZ" -ln "initRotZ" -at "double" -p "initRot";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3116254926615056e-07 10.64512893647731 -0.25199484747691869 ;
	setAttr ".r" -type "double3" -1.0136452660277877e-14 -4.4822924494631397e-14 -2.092528478743933e-14 ;
	setAttr ".offset" -type "matrix" 3.8362656337119275e-16 0.99999999999999989 7.734455142535803e-16 -3.0814879110195774e-33
		 -0.99971994634466577 -3.4694469519536103e-18 0.023665533146073919 -1.084202172485508e-19
		 0.023665533146074051 5.5511151231257815e-17 0.99971994634466566 -6.9388939039072268e-18
		 -1.9173998495602973e-06 -1.3116254748979372e-07 -1.6232339703492471e-06 1;
createNode transform -n "IK_lower_local" -p "IK_lower_local_offGRP";
	rename -uid "7E6F5C28-43AE-6227-873F-5795C27843A9";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 0 0 ;
createNode locator -n "IK_lower_localShape" -p "IK_lower_local";
	rename -uid "1ED520C5-41D0-E9D5-E12B-BAB180C2BD81";
	setAttr -k off ".v";
createNode transform -n "IK_thigh_CTL_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "3E83BBD7-4C68-7CC4-0E5F-2B931E27E1E5";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".t" -type "double3" -5.7712838952284073e-08 -2.2990830572666709e-08 9.0124602181163027e-07 ;
	setAttr ".r" -type "double3" -9.6145742939888308 3.8705425531566048e-14 90.000000000000057 ;
	setAttr ".s" -type "double3" 1 1.0000000151032804 1.0000000151032804 ;
	setAttr ".offset" -type "matrix" -9.6863977148416995e-16 1 -6.7553711391130397e-16 3.0814879110195774e-33
		 -0.98595359919449821 -2.7755575615628901e-17 -0.16701955107703786 3.4694469519536126e-18
		 -0.16701955107703795 -3.4694469519536103e-18 0.98595359919449843 8.6736173798840287e-19
		 -5.7712838952284073e-08 -2.2990830572666709e-08 9.0124601825891659e-07 1;
createNode transform -n "hip_L_space_offGRP" -p "IK_thigh_CTL_offGRP";
	rename -uid "3A96568F-4CF3-ABB2-3CCC-39808D886429";
	setAttr ".t" -type "double3" -2.0713150271342911 2.4073029500688321 -8.9822589544041875e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "hip_L_space_spcGRP" -p "hip_L_space_offGRP";
	rename -uid "A36B20B9-424F-33A9-17A4-37869ED3C69D";
createNode transform -n "IK_thigh_CTL_spcGRP" -p "hip_L_space_spcGRP";
	rename -uid "405AC040-46FC-9C47-71A5-8D89F004BF9B";
	setAttr ".t" -type "double3" 2.0713150271342911 -2.4073029500688321 8.9822589544041875e-07 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "IK_thigh_CTL" -p "IK_thigh_CTL_spcGRP";
	rename -uid "8640FED1-4035-CE26-FF06-768CB770C97F";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_thigh_CTLShape" -p "IK_thigh_CTL";
	rename -uid "367F1D2C-4568-F1E0-7CE1-0DBC5A7E6B96";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		6.5999999999999996 0 3.4648243000000001
		6.5999999999999996 3.4648242999999979 0
		6.5999999999999996 0 -3.4648243000000001
		6.5999999999999996 0 -2.7718564999999988
		6.5999999999999996 2.4253774999999993 -0.3464824299999999
		6.5999999999999996 3.4648242999999979 0
		6.5999999999999996 2.4253774999999993 0.3464824299999999
		6.5999999999999996 0 2.7718564999999988
		6.5999999999999996 0 2.7718564999999988
		6.5999999999999996 0 3.4648243000000001
		;
createNode transform -n "leg_poleVec_GRP" -p "IK_leg_CTL_GRP";
	rename -uid "36E0B5E4-4E61-82DC-ACEC-18A39585BC1C";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "upper_poleVec_spcGRP" -p "leg_poleVec_GRP";
	rename -uid "BF4D01C9-4489-769F-8713-4C8D1F7E20BF";
	setAttr ".s" -type "double3" 1.0000000151032804 1 1.0000000151032804 ;
createNode transform -n "upper_poleVec_space" -p "upper_poleVec_spcGRP";
	rename -uid "3FDF73CC-4E58-3DD4-EDF8-0C94FBFF4A03";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "upper_poleVec" -p "upper_poleVec_space";
	rename -uid "92AF01C2-4904-B4E6-9178-F7A3F07F9AD4";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "upper_poleVecShape" -p "upper_poleVec";
	rename -uid "2EA22269-40AD-232B-B7BF-24965FD1EF30";
	setAttr -k off ".v";
createNode transform -n "IK_B_toe_flex_poleVec_offGRP" -p "leg_poleVec_GRP";
	rename -uid "FCF19DD5-4703-C23F-5F5B-A6B94366FFA6";
	setAttr ".v" no;
createNode transform -n "IK_B_toe_flex_poleVec_spcGRP" -p "IK_B_toe_flex_poleVec_offGRP";
	rename -uid "75CCAFF3-4907-9D46-56D2-A8A5FBED9B48";
createNode transform -n "lower_poleVec_spcGRP" -p "IK_B_toe_flex_poleVec_spcGRP";
	rename -uid "A78B78A1-4D2F-B694-13A9-B09839A773D0";
	addAttr -ci true -sn "init_trans" -ln "init_trans" -at "double3" -nc 3;
	addAttr -ci true -sn "init_transX" -ln "init_transX" -at "double" -p "init_trans";
	addAttr -ci true -sn "init_transY" -ln "init_transY" -at "double" -p "init_trans";
	addAttr -ci true -sn "init_transZ" -ln "init_transZ" -at "double" -p "init_trans";
	addAttr -ci true -sn "init_rot" -ln "init_rot" -at "double3" -nc 3;
	addAttr -ci true -sn "init_rotX" -ln "init_rotX" -at "double" -p "init_rot";
	addAttr -ci true -sn "init_rotY" -ln "init_rotY" -at "double" -p "init_rot";
	addAttr -ci true -sn "init_rotZ" -ln "init_rotZ" -at "double" -p "init_rot";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	setAttr ".t" -type "double3" 0 10.645127058029173 -0.25199317932128906 ;
	setAttr ".r" -type "double3" 0 -1.3560617486593369 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999967 ;
createNode transform -n "lower_poleVec_space" -p "lower_poleVec_spcGRP";
	rename -uid "5BB3514E-475F-47E7-155D-B090C2593E34";
	setAttr ".t" -type "double3" -8.8817841970012563e-16 -4.3321966757057152e-15 -10 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 1 ;
createNode transform -n "lower_poleVec" -p "lower_poleVec_space";
	rename -uid "23EC8742-4F29-A4D4-39BC-EAB30954EDCA";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode locator -n "lower_poleVecShape" -p "lower_poleVec";
	rename -uid "88B6FDCA-43D2-040D-F360-95993A1FDB71";
	setAttr -k off ".v";
createNode transform -n "FK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "A274AF3F-4EFC-1145-D293-7CA6E8C0ABC6";
	setAttr ".t" -type "double3" 2.0713151582968319 -2.4073033071275134 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 9.6145692709009243 -90.000000000000028 ;
createNode transform -n "FK_hip_offGRP" -p "FK_leg_CTL_GRP";
	rename -uid "D2F20553-4AD0-9C0C-AE17-AC8C6E84B6F7";
	setAttr ".t" -type "double3" -2.3734893594166664 -2.0713151582968332 -0.40206650350775419 ;
	setAttr ".r" -type "double3" -9.6145692709009243 0 90.000000000000028 ;
createNode transform -n "FK_hip_spcGRP" -p "FK_hip_offGRP";
	rename -uid "6E7633A2-4185-42E6-C857-6DB872950563";
createNode transform -n "FK_thigh_CTL_offGRP" -p "FK_hip_spcGRP";
	rename -uid "F2D0ABD5-4602-47C5-FEEF-C0AF2D706D8F";
createNode transform -n "FK_thigh_CTL_spcGRP" -p "FK_thigh_CTL_offGRP";
	rename -uid "221A76EA-40EF-AD52-3FED-6D898EC98D3F";
createNode transform -n "FK_thigh_CTL" -p "FK_thigh_CTL_spcGRP";
	rename -uid "580086E6-4067-B445-E948-7F86C204B03E";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_thigh_CTLShape" -p "FK_thigh_CTL";
	rename -uid "ED735E3A-450E-A430-F49A-1AA54CE847DB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.7836116248912236 4.4753908802885745 
		5.2590025051797964 -6.7857323231109011e-17 6.3291584798249509 4.5540650691180704e-16 
		0.7836116248912236 4.4753908802885736 -5.2590025051797964 1.1081941875543875 3.2810469323975997e-16 
		-7.4373526673793364 0.7836116248912236 -4.4753908802885745 -5.2590025051797964 1.1100856969603226e-16 
		-6.3291584798249518 -7.4500470332978742e-16 -0.7836116248912236 -4.4753908802885736 
		5.2590025051797964 -1.1081941875543875 -8.6310510720820413e-16 7.4373526673793364 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_knee_CTL_offGRP" -p "FK_thigh_CTL";
	rename -uid "7B963D3E-4A69-9FA1-B99A-23AFCF36CD00";
createNode transform -n "FK_knee_CTL_spcGRP" -p "FK_knee_CTL_offGRP";
	rename -uid "465A5B76-4BB0-67E4-1FEA-E2918D22777D";
createNode transform -n "FK_knee_CTL" -p "FK_knee_CTL_spcGRP";
	rename -uid "6433060E-481D-7F71-55BF-F0B5D2BBB09B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "FK_knee_CTLShape" -p "FK_knee_CTL";
	rename -uid "5154703B-46B8-D015-E2A7-4989FCD49CBE";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122183 2.8976901287346348 
		3.6813017536258585 1.7084995161691405e-15 4.0979526796111498 -8.026300357419338e-15 
		0.78361162489122516 2.8976901287346339 -3.6813017536258585 1.1081941875543881 2.1243859055525751e-16 
		-5.2061468671655371 0.78361162489122516 -2.8976901287346348 -3.6813017536258585 1.8873654090962807e-15 
		-4.0979526796111507 -8.8665882045884472e-15 -0.78361162489122183 -2.8976901287346339 
		3.6813017536258585 -1.1081941875543859 -5.5883636002234418e-16 5.2061468671655362 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_ankle_CTL_offGRP" -p "FK_knee_CTL";
	rename -uid "B6A06A04-4441-B976-214F-068CA5D8EF51";
createNode transform -n "FK_ankle_CTL_spcGRP" -p "FK_ankle_CTL_offGRP";
	rename -uid "3C479034-43F2-11EE-E398-12BBD2C30028";
createNode transform -n "FK_ankle_CTL" -p "FK_ankle_CTL_spcGRP";
	rename -uid "6CF407CB-404B-8DB1-559B-89A63B3C7D7D";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_ankle_CTLShape" -p "FK_ankle_CTL";
	rename -uid "B8D00B4E-4200-E356-EBF9-69B7BC4B4228";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122427 1.8669256377193952 
		2.6505372626106194 -6.7857323231109097e-17 2.6402315568048005 2.295248794835509e-16 
		0.78361162489122427 1.8669256377193957 -2.6505372626106194 1.1081941875543877 1.3687007013471593e-16 
		-3.7484257443591873 0.78361162489122427 -1.8669256377193952 -2.6505372626106194 1.1100856969603226e-16 
		-2.6402315568048009 -3.7548237047821296e-16 -0.78361162489122427 -1.8669256377193957 
		2.6505372626106194 -1.1081941875543877 -3.6004744519424908e-16 3.7484257443591873 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_B_toe_CTL_offGRP" -p "FK_ankle_CTL";
	rename -uid "3F4EF1C0-4933-4BF7-BDA1-C285553867CF";
createNode transform -n "FK_B_toe_CTL_spcGRP" -p "FK_B_toe_CTL_offGRP";
	rename -uid "EFA3B074-4611-0BDA-42A1-2F9CDEBB830A";
createNode transform -n "FK_B_toe_CTL" -p "FK_B_toe_CTL_spcGRP";
	rename -uid "0449283F-4D44-FFDF-BDAF-8C9FC7832B0A";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_B_toe_CTLShape" -p "FK_B_toe_CTL";
	rename -uid "9410A405-4E38-B1F3-E7B4-1EA284A22491";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122405 1.8669256377193952 
		2.6505372626106194 3.7623188661895316e-16 2.6402315568048005 -1.2725904047228195e-15 
		0.78361162489122471 1.8669256377193957 -2.6505372626106194 1.1081941875543881 -1.979182078577896e-15 
		-3.7484257443591873 0.78361162489122471 -1.8669256377193948 -2.6505372626106194 5.5509777954609406e-16 
		-2.6402315568048009 -1.8775976546845811e-15 -0.78361162489122405 -1.8669256377193957 
		2.6505372626106194 -1.1081941875543873 -2.4760995939068662e-15 3.7484257443591873 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "leg_switch_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "E3C4B0F1-4344-0B92-0050-AB9F6AA521DF";
createNode transform -n "leg_switch_CTL_spcGRP" -p "leg_switch_CTL_offGRP";
	rename -uid "BE0A0BDD-4EC1-05DC-89EA-6CB92D121FB5";
createNode transform -n "leg_switch_CTL" -p "leg_switch_CTL_spcGRP";
	rename -uid "A9711D0C-4FB7-3345-92F0-08B1D6FE4756";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "leg_switch_CTLShape" -p "leg_switch_CTL";
	rename -uid "D129A59A-4909-3EE8-C160-7E874C7822DF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		0 -1.4901161415892261e-09 0
		6.6410247564315785 1.4901179179460655e-09 0
		6.2108428955078114 0.33222502470016657 0
		6.0857520580291737 0.68974572420120417 0
		6.2859173297882069 1.1457456350326556 0
		6.7959670305252065 1.3241260051727313 0
		7.3786776542663564 1.2321258783340472 0
		7.3786776542663564 0.92220836877823054 0
		6.8153388977050771 1.0707044601440447 0
		6.5247933149337758 0.97708451747894465 0
		6.4101818084716786 0.74141520261764704 0
		6.4941157579421986 0.52994400262832819 0
		6.8008263587951649 0.31043985486030756 0
		6.971933889389037 0.21358031034469782 0
		7.4045289039611806 -0.11894857138395132 0
		7.5271735668182362 -0.49504771828651251 0
		7.2979834556579579 -0.99541139602660955 0
		6.6894544839858998 -1.1842378377914411 0
		6.0728264331817616 -1.0793453454971296 0
		6.0728264331817616 -0.74360972642898382 0
		6.7378843307495107 -0.93084943294524969 0
		7.0582809925079335 -0.82513040304183782 0
		7.1801321983337392 -0.54992383718490423 0
		7.1002314567565907 -0.31101468205451788 0
		6.805652904510497 -0.091477505862711084 0
		6.6410247564315785 1.4901179179460655e-09 0
		;
createNode pointConstraint -n "leg_switch_CTL_offGRP_pointConstraint1" -p "leg_switch_CTL_offGRP";
	rename -uid "0ABD3B80-4248-6AE8-FD21-D4B4EEBA6644";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "B_toe_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 2.042810365310288e-14 2.1316282072803006e-14 0 ;
	setAttr ".rst" -type "double3" 5.6516844153727464 2.5131329958365569 -27.933609079681816 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "leg_switch_CTL_offGRP_orientConstraint1" -p "leg_switch_CTL_offGRP";
	rename -uid "B7150005-41C5-A598-9815-D7A8C936A582";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_GRPW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "output_GRP" -p "leg_GRP";
	rename -uid "EAEB6B1F-45B5-1C2A-1B33-90B0C81661A1";
createNode joint -n "hip_JNT" -p "output_GRP";
	rename -uid "988E483B-474B-01C6-AC94-14BC19DCF0AC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.57279155036866225;
createNode joint -n "thigh_JNT" -p "hip_JNT";
	rename -uid "ABDA17A8-4A6F-C5AB-47B6-0084FA63E9E9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1937919038631488;
createNode joint -n "knee_JNT" -p "thigh_JNT";
	rename -uid "88C1B30C-4259-A236-F0FE-2E95C85BF44D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1445917352907937;
createNode joint -n "ankle_JNT" -p "knee_JNT";
	rename -uid "0E8A4380-4DBF-D0F5-C1BD-AC903C30C2C8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.99904020379521696;
createNode joint -n "B_toe_JNT" -p "ankle_JNT";
	rename -uid "34C5A304-478C-29E6-5128-88BD117CDBAD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5013341295983873;
createNode objectSet -n "leg_SET";
	rename -uid "B1BEA845-48C3-57B2-4023-A7BE0FF47046";
	setAttr ".ihi" 0;
	setAttr -s 111 ".dsm";
	setAttr -s 88 ".dnsm";
createNode decomposeMatrix -n "IK_hip_JNT2IK_thigh_JNT_DCMX";
	rename -uid "5C44059A-46D5-9037-0318-DEB463BD4006";
createNode multMatrix -n "IK_hip_JNT2IK_thigh_JNT_MTMX";
	rename -uid "FC9D9DAE-4584-C41D-9460-CCB48FAB362A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_thigh_CTL_local2IK_JNT_DCMX";
	rename -uid "82B92347-4548-081D-129E-7282A18FA050";
createNode multMatrix -n "IK_thigh_CTL_local2IK_JNT_MTMX";
	rename -uid "23DD1AA7-467D-BDCE-8400-B888925B6A54";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion3";
	rename -uid "1AC89AD7-4DB2-EEE7-2699-5B976BF6214D";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "1353D206-4B1F-4BF5-F82D-A383E835CF99";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "32A4A56C-4B35-C94D-9517-4A91FF665C87";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "6EE296B6-4A5F-A9E1-A992-1CA3D218CA91";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "F42C21B5-454C-02E8-FC35-AA8A27E91B88";
createNode decomposeMatrix -n "input_knee2IK_knee_space_DCMX";
	rename -uid "B6983450-40AA-0195-5946-159E56DA251B";
createNode multMatrix -n "input_knee2IK_knee_space_MTMX";
	rename -uid "1DCD88D6-47F2-A26B-69B2-5393C125EAA2";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "CBEBFC1C-438F-32A0-4437-1CAB6E834EBA";
createNode plusMinusAverage -n "softupperLegLen";
	rename -uid "C61ABE4D-4CE6-2472-657D-43800865B824";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uplegLen";
	rename -uid "578D59A8-496F-DD41-8A39-6D8E7169DD94";
createNode multMatrix -n "input_thigh_local_MTMX";
	rename -uid "AE754229-49F1-4102-EC3B-FA85E59694B0";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_knee_local_MTMX";
	rename -uid "D7F56339-4195-D854-CB6B-2DB1AC0196BA";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midlegLen";
	rename -uid "10DEFCF7-45C1-DF15-72BE-24BF8F02BFED";
createNode multMatrix -n "input_ankle_local_MTMX";
	rename -uid "4F977BE7-4336-9B8D-6081-A08288E4E803";
	setAttr -s 2 ".i";
createNode distanceBetween -n "leg_ctrlLen";
	rename -uid "8DEFBF0C-4F86-AE12-F5AE-07BA32565295";
createNode multMatrix -n "ik_leg_ctrl_local_MTMX";
	rename -uid "2A83F4E6-4F0C-80C9-B780-C3B323B53032";
createNode multMatrix -n "ik_leg_space_local_MTMX";
	rename -uid "D161C36E-4F75-8B14-4305-86BF58C5DF3E";
createNode multiplyDivide -n "leg_IK_negate_val";
	rename -uid "7433F871-4D14-AC12-1A99-43896721528F";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "softlowerLegLen";
	rename -uid "211509AD-4795-B9F9-C4BF-CDAA7775578D";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode distanceBetween -n "loLegLen";
	rename -uid "A2CB777D-4FDA-B6A5-69F7-6E883BA93900";
createNode multMatrix -n "input_B_toe_local_MTMX";
	rename -uid "64503FF8-4D36-D9F8-89F9-EEBF577B62B0";
	setAttr -s 2 ".i";
createNode distanceBetween -n "B_toe_ctrlLen";
	rename -uid "FDEB9AC4-46F3-BFEE-D5BF-E58695670104";
createNode multMatrix -n "ik_knee_space_local_MTMX";
	rename -uid "4534EBC1-4413-A4FB-D0B7-C7B7FD942A5F";
createNode multMatrix -n "ik_B_toe_ctrl_local_MTMX";
	rename -uid "8909430B-42CA-381E-69D8-FD806CF866EB";
createNode condition -n "upperLeg_ctrllen_COND";
	rename -uid "059F3F2D-4BF2-73DC-44FD-C0BAF4898702";
	setAttr ".op" 2;
createNode condition -n "upperLeg_softikV_COND";
	rename -uid "C67125C5-4B09-61AB-EF27-289F9FB666DE";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_result_softik_len";
	rename -uid "6EB86248-4D1D-7395-CF8A-48BC97AAA42E";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "upperLeg_mult_softikV";
	rename -uid "B12012E4-40A8-63CC-EBB9-A5BED4EDB2CF";
createNode multiplyDivide -n "upperLeg_power_val";
	rename -uid "7FE7176D-410D-4C23-7DB0-7EA491DA8092";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "upperLeg_negate_val";
	rename -uid "353D9518-4D61-E2C5-B7B8-3AAF029114F5";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "upperLeg_divide_softikV";
	rename -uid "EC0C3668-4EE9-1798-A488-8BA9481DEC78";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_ctrlLen_minue_dif";
	rename -uid "595677C0-4382-BB32-9A5D-3791C1758975";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "upperLeglen_minus_softikV";
	rename -uid "3BD414A9-4675-024C-114B-5D85CF111386";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "leg_for_zerodivide_COND";
	rename -uid "AFC0B21B-4017-DD6B-A300-17A61D29A275";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "lowerLeg_ctrllen_COND";
	rename -uid "8CE4EDD4-4A5D-F98D-BB50-83A1AF18E995";
	setAttr ".op" 2;
createNode condition -n "lowerLeg_softikV_COND";
	rename -uid "82DAD4B3-4F2E-35A2-A7E6-43B26FAB3173";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_result_softik_len";
	rename -uid "02456EE3-4605-DF75-4EAD-F09EF1A1DA31";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_mult_softikV";
	rename -uid "494F09C1-4F9B-138D-3923-2A9127872008";
createNode multiplyDivide -n "lowerLeg_power_val";
	rename -uid "21671DF4-4AF6-0877-904E-60AA29F2449A";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "lowerLeg_negate_val";
	rename -uid "3395B04D-4984-ECBC-3994-7BA194B7E15B";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lowerLeg_divide_softikV";
	rename -uid "132FFF06-441F-362F-C9C0-6F8B7C171579";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_ctrlLen_minue_dif";
	rename -uid "BF3D265F-443A-4C49-89E8-2FBA2A05B3E6";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "lowerLeglen_minus_softikV";
	rename -uid "458F3A63-4D74-49C8-BFC1-FAB200306D7C";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loleg_plus_stretch";
	rename -uid "577B0994-48E6-0B2A-EF11-AE9321616CD8";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loleg";
	rename -uid "63BE0217-45BF-1FED-BBB1-96929442FC32";
createNode multiplyDivide -n "stretched_lolegLen";
	rename -uid "8BE5948C-428B-5BD8-1C41-49A07AA54D24";
createNode plusMinusAverage -n "upperLeg_stretchedLen";
	rename -uid "3DACED9F-49BB-6E76-7485-0B8FF0628625";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loleg_ratio";
	rename -uid "4606DFC7-4E8F-163B-FF4D-6DB598957BC1";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_legLen";
	rename -uid "D659F4B5-4B3B-D36B-CA58-06B5BEB17124";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upleg_plus_stretch";
	rename -uid "FAF74962-4D43-F7A1-4CB4-F2B143CD7912";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upleg";
	rename -uid "3B6782D2-4B9A-A604-CD7A-B984C41F256E";
createNode multiplyDivide -n "stretched_uplegLen";
	rename -uid "1EEEB97A-4A69-3D29-D1F6-B8BD1D002744";
createNode multiplyDivide -n "upleg_ratio";
	rename -uid "A5FC54FA-4396-430D-4EC8-A4ABBBF943F1";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_plus_stretch";
	rename -uid "A5B8A64F-4B2C-3AAC-5825-5A9C3CE249D3";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_lowerLeg";
	rename -uid "11C857A1-40F8-620D-ED1C-F0B4DA41A705";
createNode multiplyDivide -n "stretched_lowerLegLen";
	rename -uid "C47EFD38-4983-C637-29AD-40B0A1AA5F24";
createNode plusMinusAverage -n "lowerLeg_stretchedLen";
	rename -uid "F428C562-461B-7973-6670-A49A438B2A1B";
	setAttr ".op" 2;
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_ratio";
	rename -uid "54DF54FD-46D8-9802-4968-B985848D6E2F";
	setAttr ".op" 2;
createNode decomposeMatrix -n "input_B_toe2IK_B_toe_CTL_DCMX";
	rename -uid "F3CF06E0-4C52-975C-8BE3-C2B55A2D5632";
createNode multMatrix -n "input_B_toe2IK_B_toe_CTL_MTMX";
	rename -uid "ED2FD7F8-4B97-6B51-87F0-9482DB7C644D";
	setAttr -s 2 ".i";
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "086828B8-40C7-EE6B-28CD-EEB125050B38";
createNode decomposeMatrix -n "input_ankle2IK_ankle_local_offGRP_DCMX";
	rename -uid "C67EB91F-4136-65B6-FB98-CEA18C9CE956";
createNode multMatrix -n "input_ankle2IK_ankle_local_offGRP_MTMX";
	rename -uid "827CAC25-443B-61BA-1CE5-ABA2E581D6AD";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion4";
	rename -uid "8B91F85C-4107-BE04-3AE4-6BBEE6E44B67";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "upper_poleVec_offGRP_DCMX";
	rename -uid "933C5680-446E-1E36-76C9-909D287923A0";
createNode multMatrix -n "upper_poleVec_offGRP_MTMX";
	rename -uid "90B39C70-4E14-25C7-DD76-8CAEC4E6CE45";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankle_poleVec_offGRP_DCMX";
	rename -uid "51D31D39-450E-C852-B2DD-BF8C97C1A237";
createNode multMatrix -n "ankle_poleVec_offGRP_MTMX";
	rename -uid "DC2AC2F7-49F5-61BB-CDB6-14AF1B6C5333";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_ankle2lower_poleVec_DCMX";
	rename -uid "8911434E-4677-87E9-4EA8-DCBD9BA378C8";
createNode multMatrix -n "input_ankle2lower_poleVec_MTMX";
	rename -uid "08CA84E8-46AF-0FEE-EBFC-5DB19EF3621F";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "2B1CFB6B-4CF5-3433-C08F-C1B060F25E62";
	setAttr ".cf" 57.295779513082323;
createNode reverse -n "FK_IK_RVS";
	rename -uid "DBEF282C-4768-4EAA-3054-D9B31B05AC16";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "35BD81C7-4009-D9A6-6A3A-A5BE1A33D208";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "10DBDEE8-47DE-A899-D6F6-F8806740BACA";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "9390C21B-4A0C-5921-B1EF-C597DAD06C9E";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "719A862B-4B25-D63F-B0B9-56BD358A4602";
createNode blendColors -n "hip_BLCL";
	rename -uid "583744F8-454B-17E3-1CBF-43B5FA3B5E85";
createNode pairBlend -n "hip_PRBL";
	rename -uid "D458E080-49E0-32F4-C271-01A77DFD6D19";
createNode blendColors -n "thigh_BLCL";
	rename -uid "78F828A9-4EA8-28DF-8606-90860BD65C8B";
createNode pairBlend -n "thigh_PRBL";
	rename -uid "BECC75A6-4797-E856-EB87-2493739D0AED";
createNode decomposeMatrix -n "IK_thigh_JNT_local_DCMX";
	rename -uid "E8A291A6-4EEC-86A5-8337-9583C13B9B03";
createNode multMatrix -n "IK_thigh_JNT_local_MTMX";
	rename -uid "03A10AC0-4A1E-BC63-A1CA-7BBA142D9F09";
	setAttr -s 2 ".i";
createNode blendColors -n "knee_BLCL";
	rename -uid "6DB0E2C1-4BB4-E81B-E403-209FE44A9D2A";
createNode pairBlend -n "knee_PRBL";
	rename -uid "07153C90-4A49-DD8F-C0BE-C5A03B744560";
createNode blendColors -n "ankle_BLCL";
	rename -uid "D28FC658-4D92-FD09-387D-8E9EAF5914A7";
createNode pairBlend -n "ankle_PRBL";
	rename -uid "9F7E0F02-4681-E225-52AC-469F09479489";
createNode pairBlend -n "B_toe_PRBL";
	rename -uid "C0FBF1BB-4032-8F3B-B718-27A26C2AFD34";
createNode blendColors -n "B_toe_BLCL";
	rename -uid "7CB72A6A-4ED8-7626-32B0-98949B8353AB";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 65 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "IK_trans_thigh_JNT.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "IK_B_toe_CTL_offGRP.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "lower_poleVec_spcGRP.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "IK_lower_local_offGRP.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "input_hip.init" "leg_GRP.init" -na;
connectAttr "input_thigh.init" "leg_GRP.init" -na;
connectAttr "input_knee.init" "leg_GRP.init" -na;
connectAttr "input_ankle.init" "leg_GRP.init" -na;
connectAttr "input_B_toe.init" "leg_GRP.init" -na;
connectAttr "input_hip.t" "motion_IK_GRP.t";
connectAttr "input_hip.r" "motion_IK_GRP.r";
connectAttr "input_hip.s" "motion_IK_GRP.s";
connectAttr "hip_L_CTL.t" "IK_hip_JNT.t";
connectAttr "hip_L_CTL.r" "IK_hip_JNT.r";
connectAttr "IK_hip_JNT.s" "IK_rot_thigh_JNT.is";
connectAttr "IK_rot_thigh_JNT.s" "IK_rps_knee_JNT.is";
connectAttr "IK_rps_knee_JNT.s" "IK_rps_ankle_JNT.is";
connectAttr "IK_rps_ankle_JNT.s" "IK_rps_B_toe0_JNT.is";
connectAttr "IK_rps_ankle_JNT.tx" "effector13.tx";
connectAttr "IK_rps_ankle_JNT.ty" "effector13.ty";
connectAttr "IK_rps_ankle_JNT.tz" "effector13.tz";
connectAttr "IK_rot_thigh_JNT.s" "IK_trans_thigh_JNT.is";
connectAttr "IK_trans_thigh_JNT.controlTrans" "IK_trans_thigh_JNT.t";
connectAttr "IK_hip_JNT2IK_thigh_JNT_DCMX.ot" "IK_trans_thigh_JNT.initTrans";
connectAttr "IK_thigh_CTL_local2IK_JNT_DCMX.ot" "IK_trans_thigh_JNT.controlTrans"
		;
connectAttr "unitConversion3.o" "IK_trans_thigh_JNT.initRot";
connectAttr "IK_trans_thigh_JNT.s" "IK_knee_JNT.is";
connectAttr "leg_stretchIK_output.upleg_stretched" "IK_knee_JNT.tx";
connectAttr "input_knee.r" "IK_knee_JNT.jo";
connectAttr "IK_knee_JNT.s" "IK_ankle_JNT.is";
connectAttr "leg_stretchIK_output.midLeg_stretched" "IK_ankle_JNT.tx";
connectAttr "input_ankle.r" "IK_ankle_JNT.jo";
connectAttr "IK_ankle_JNT.s" "IK_B_toe0_JNT.is";
connectAttr "leg_stretchIK_output.loLeg_Stretched" "IK_B_toe0_JNT.tx";
connectAttr "input_B_toe.r" "IK_B_toe0_JNT.jo";
connectAttr "IK_B_toe0_JNT.tx" "effector14.tx";
connectAttr "IK_B_toe0_JNT.ty" "effector14.ty";
connectAttr "IK_B_toe0_JNT.tz" "effector14.tz";
connectAttr "IK_thigh_space_DCMX.ot" "IK_thigh_space.t";
connectAttr "IK_thigh_space_DCMX.or" "IK_thigh_space.r";
connectAttr "IK_thigh_space_DCMX.os" "IK_thigh_space.s";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.crx" "IK_upperLeg_CTLaim.rx";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.cry" "IK_upperLeg_CTLaim.ry";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.crz" "IK_upperLeg_CTLaim.rz";
connectAttr "leg_softIK_output.output_upper_softik" "upperLeg_softIK_output_LOC.tx"
		;
connectAttr "upperLeg_stretch_output_mul_ctrlVal.ox" "upperLeg_stretch_output_LOC.tx"
		;
connectAttr "IK_B_toe_flex_CTL.r" "IK_B_toe_flex_local_spcGRP.r";
connectAttr "IK_rot_thigh_JNT.msg" "upperLeg_ikHandle.hsj";
connectAttr "effector13.hp" "upperLeg_ikHandle.hee";
connectAttr "ikRPsolver.msg" "upperLeg_ikHandle.hsv";
connectAttr "upperLeg_ikHandle_poleVectorConstraint1.ctx" "upperLeg_ikHandle.pvx"
		;
connectAttr "upperLeg_ikHandle_poleVectorConstraint1.cty" "upperLeg_ikHandle.pvy"
		;
connectAttr "upperLeg_ikHandle_poleVectorConstraint1.ctz" "upperLeg_ikHandle.pvz"
		;
connectAttr "upperLeg_ikHandle.pim" "upperLeg_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "IK_rot_thigh_JNT.pm" "upperLeg_ikHandle_poleVectorConstraint1.ps";
connectAttr "IK_rot_thigh_JNT.t" "upperLeg_ikHandle_poleVectorConstraint1.crp";
connectAttr "upper_poleVec.t" "upperLeg_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "upper_poleVec.rp" "upperLeg_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "upper_poleVec.rpt" "upperLeg_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "upper_poleVec.pm" "upperLeg_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "upperLeg_ikHandle_poleVectorConstraint1.w0" "upperLeg_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_upperLeg_CTLaim.pim" "IK_upperLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upperLeg_CTLaim.t" "IK_upperLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_upperLeg_CTLaim.rp" "IK_upperLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_upperLeg_CTLaim.rpt" "IK_upperLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_upperLeg_CTLaim.ro" "IK_upperLeg_CTLaim_aimConstraint1.cro";
connectAttr "IK_lower_local.t" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "IK_lower_local.rp" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "IK_lower_local.rpt" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "IK_lower_local.pm" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.w0" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_thigh_space_upVec.wm" "IK_upperLeg_CTLaim_aimConstraint1.wum";
connectAttr "input_knee2IK_knee_space_DCMX.ot" "IK_knee_space.t";
connectAttr "input_knee2IK_knee_space_DCMX.or" "IK_knee_space.r";
connectAttr "input_knee2IK_knee_space_DCMX.os" "IK_knee_space.s";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crx" "IK_lowerLeg_CTLaim.rx";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.cry" "IK_lowerLeg_CTLaim.ry";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crz" "IK_lowerLeg_CTLaim.rz";
connectAttr "leg_softIK_output.output_lower_softik" "lowerLeg_softIK_output_LOC.tx"
		;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.ox" "lowerLeg_stretch_output_LOC.tx"
		;
connectAttr "IK_ankle_flex_CTL.r" "IK_ankle_flex_local_spcGRP.r";
connectAttr "IK_knee_JNT.msg" "lowerLeg_ikHandle.hsj";
connectAttr "effector14.hp" "lowerLeg_ikHandle.hee";
connectAttr "ikRPsolver.msg" "lowerLeg_ikHandle.hsv";
connectAttr "lowerLeg_ikHandle_poleVectorConstraint1.ctx" "lowerLeg_ikHandle.pvx"
		;
connectAttr "lowerLeg_ikHandle_poleVectorConstraint1.cty" "lowerLeg_ikHandle.pvy"
		;
connectAttr "lowerLeg_ikHandle_poleVectorConstraint1.ctz" "lowerLeg_ikHandle.pvz"
		;
connectAttr "lowerLeg_ikHandle.pim" "lowerLeg_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "IK_knee_JNT.pm" "lowerLeg_ikHandle_poleVectorConstraint1.ps";
connectAttr "IK_knee_JNT.t" "lowerLeg_ikHandle_poleVectorConstraint1.crp";
connectAttr "lower_poleVec.t" "lowerLeg_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "lower_poleVec.rp" "lowerLeg_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "lower_poleVec.rpt" "lowerLeg_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "lower_poleVec.pm" "lowerLeg_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "lowerLeg_ikHandle_poleVectorConstraint1.w0" "lowerLeg_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_lowerLeg_CTLaim.pim" "IK_lowerLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lowerLeg_CTLaim.t" "IK_lowerLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_lowerLeg_CTLaim.rp" "IK_lowerLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_lowerLeg_CTLaim.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_lowerLeg_CTLaim.ro" "IK_lowerLeg_CTLaim_aimConstraint1.cro";
connectAttr "IK_B_toe_CTL.t" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "IK_B_toe_CTL.rp" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "IK_B_toe_CTL.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "IK_B_toe_CTL.pm" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.w0" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_knee_space_upVec.wm" "IK_lowerLeg_CTLaim_aimConstraint1.wum";
connectAttr "softupperLegLen.o1" "leg_softIK_input.upper_legLen";
connectAttr "leg_ctrlLen.d" "leg_softIK_input.upper_ctrlLen";
connectAttr "leg_IK_negate_val.ox" "leg_softIK_input.softik_ctrl_value";
connectAttr "softlowerLegLen.o1" "leg_softIK_input.lower_legLen";
connectAttr "B_toe_ctrlLen.d" "leg_softIK_input.lower_ctrlLen";
connectAttr "upperLeg_ctrllen_COND.ocr" "leg_softIK_output.output_upper_softik";
connectAttr "lowerLeg_ctrllen_COND.ocr" "leg_softIK_output.output_lower_softik";
connectAttr "leg_softIK_output.output_upper_softik" "leg_stretchIK_input.upperSoftik_len"
		;
connectAttr "leg_IK_negate_val.ox" "leg_stretchIK_input.stretch_ctrl_value";
connectAttr "uplegLen.d" "leg_stretchIK_input.upLeg_len";
connectAttr "leg_ctrlLen.d" "leg_stretchIK_input.upperCtrl_len";
connectAttr "midlegLen.d" "leg_stretchIK_input.midLeg_len";
connectAttr "loLegLen.d" "leg_stretchIK_input.loLegLen";
connectAttr "leg_softIK_output.output_lower_softik" "leg_stretchIK_input.lowerSoftik_len"
		;
connectAttr "B_toe_ctrlLen.d" "leg_stretchIK_input.lowerCtrl_len";
connectAttr "loleg_plus_stretch.o1" "leg_stretchIK_output.midLeg_stretched";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "leg_stretchIK_output.stretch_ctrl_value"
		;
connectAttr "upperLeg_stretchedLen.o1" "leg_stretchIK_output.upperStretched_len"
		;
connectAttr "upleg_plus_stretch.o1" "leg_stretchIK_output.upleg_stretched";
connectAttr "lowerLeg_plus_stretch.o1" "leg_stretchIK_output.loLeg_Stretched";
connectAttr "lowerLeg_stretchedLen.o1" "leg_stretchIK_output.lowerStretched_len"
		;
connectAttr "input_hip.t" "motion_FK_GRP.t";
connectAttr "input_hip.r" "motion_FK_GRP.r";
connectAttr "input_hip.s" "motion_FK_GRP.s";
connectAttr "hip_L_CTL.s" "FK_hip_JNT.s";
connectAttr "hip_L_CTL.t" "FK_hip_JNT.t";
connectAttr "hip_L_CTL.r" "FK_hip_JNT.r";
connectAttr "FK_hip_JNT.s" "FK_thigh_JNT.is";
connectAttr "FK_thigh_CTL.s" "FK_thigh_JNT.s";
connectAttr "input_thigh.t" "FK_thigh_JNT.t";
connectAttr "FK_thigh_CTL.r" "FK_thigh_JNT.r";
connectAttr "input_thigh.r" "FK_thigh_JNT.jo";
connectAttr "FK_thigh_JNT.s" "FK_knee_JNT.is";
connectAttr "FK_knee_CTL.s" "FK_knee_JNT.s";
connectAttr "input_knee.t" "FK_knee_JNT.t";
connectAttr "FK_knee_CTL.r" "FK_knee_JNT.r";
connectAttr "input_knee.r" "FK_knee_JNT.jo";
connectAttr "FK_knee_JNT.s" "FK_ankle_JNT.is";
connectAttr "FK_ankle_CTL.s" "FK_ankle_JNT.s";
connectAttr "input_ankle.t" "FK_ankle_JNT.t";
connectAttr "FK_ankle_CTL.r" "FK_ankle_JNT.r";
connectAttr "input_ankle.r" "FK_ankle_JNT.jo";
connectAttr "FK_ankle_JNT.s" "FK_B_toe0_JNT.is";
connectAttr "input_B_toe.t" "FK_B_toe0_JNT.t";
connectAttr "FK_B_toe_CTL.r" "FK_B_toe0_JNT.r";
connectAttr "FK_B_toe_CTL.s" "FK_B_toe0_JNT.s";
connectAttr "input_B_toe.r" "FK_B_toe0_JNT.jo";
connectAttr "input_hip.t" "leg_CTL_GRP.t";
connectAttr "input_hip.r" "leg_CTL_GRP.r";
connectAttr "input_hip.s" "leg_CTL_GRP.s";
connectAttr "leg_switch_CTL.FK_IK" "IK_leg_CTL_GRP.v";
connectAttr "input_thigh.t" "IK_leg_CTL_GRP.t";
connectAttr "input_B_toe2IK_B_toe_CTL_DCMX.ot" "IK_B_toe_CTL_offGRP.init_trans";
connectAttr "makeNurbCircle5.oc" "IK_B_toe_CTLShape.cr";
connectAttr "input_ankle2IK_ankle_local_offGRP_DCMX.ot" "IK_lower_local_offGRP.initTrans"
		;
connectAttr "unitConversion4.o" "IK_lower_local_offGRP.initRot";
connectAttr "hip_L_CTL.t" "hip_L_space_spcGRP.t";
connectAttr "hip_L_CTL.r" "hip_L_space_spcGRP.r";
connectAttr "hip_L_CTL.s" "hip_L_space_spcGRP.s";
connectAttr "upper_poleVec_offGRP_DCMX.ot" "upper_poleVec_spcGRP.t";
connectAttr "upper_poleVec_offGRP_DCMX.or" "upper_poleVec_spcGRP.r";
connectAttr "ankle_poleVec_offGRP_DCMX.ot" "IK_B_toe_flex_poleVec_offGRP.t";
connectAttr "ankle_poleVec_offGRP_DCMX.or" "IK_B_toe_flex_poleVec_offGRP.r";
connectAttr "ankle_poleVec_offGRP_DCMX.os" "IK_B_toe_flex_poleVec_offGRP.s";
connectAttr "IK_B_toe_CTL.r" "IK_B_toe_flex_poleVec_spcGRP.r";
connectAttr "IK_B_toe_CTL.t" "IK_B_toe_flex_poleVec_spcGRP.t";
connectAttr "input_ankle2lower_poleVec_DCMX.ot" "lower_poleVec_spcGRP.init_trans"
		;
connectAttr "unitConversion2.o" "lower_poleVec_spcGRP.init_rot";
connectAttr "FK_IK_RVS.ox" "FK_leg_CTL_GRP.v";
connectAttr "hip_L_CTL.t" "FK_hip_spcGRP.t";
connectAttr "hip_L_CTL.r" "FK_hip_spcGRP.r";
connectAttr "hip_L_CTL.s" "FK_hip_spcGRP.s";
connectAttr "input_thigh.t" "FK_thigh_CTL_offGRP.t";
connectAttr "input_thigh.r" "FK_thigh_CTL_offGRP.r";
connectAttr "input_thigh.s" "FK_thigh_CTL_offGRP.s";
connectAttr "makeNurbCircle14.oc" "FK_thigh_CTLShape.cr";
connectAttr "input_knee.t" "FK_knee_CTL_offGRP.t";
connectAttr "input_knee.r" "FK_knee_CTL_offGRP.r";
connectAttr "input_knee.s" "FK_knee_CTL_offGRP.s";
connectAttr "makeNurbCircle15.oc" "FK_knee_CTLShape.cr";
connectAttr "input_ankle.t" "FK_ankle_CTL_offGRP.t";
connectAttr "input_ankle.r" "FK_ankle_CTL_offGRP.r";
connectAttr "input_ankle.s" "FK_ankle_CTL_offGRP.s";
connectAttr "makeNurbCircle16.oc" "FK_ankle_CTLShape.cr";
connectAttr "input_B_toe.t" "FK_B_toe_CTL_offGRP.t";
connectAttr "input_B_toe.r" "FK_B_toe_CTL_offGRP.r";
connectAttr "input_B_toe.s" "FK_B_toe_CTL_offGRP.s";
connectAttr "makeNurbCircle17.oc" "FK_B_toe_CTLShape.cr";
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.ctx" "leg_switch_CTL_offGRP.tx"
		;
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.cty" "leg_switch_CTL_offGRP.ty"
		;
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.ctz" "leg_switch_CTL_offGRP.tz"
		;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.crx" "leg_switch_CTL_offGRP.rx"
		;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.cry" "leg_switch_CTL_offGRP.ry"
		;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.crz" "leg_switch_CTL_offGRP.rz"
		;
connectAttr "leg_switch_CTL_offGRP.pim" "leg_switch_CTL_offGRP_pointConstraint1.cpim"
		;
connectAttr "leg_switch_CTL_offGRP.rp" "leg_switch_CTL_offGRP_pointConstraint1.crp"
		;
connectAttr "leg_switch_CTL_offGRP.rpt" "leg_switch_CTL_offGRP_pointConstraint1.crt"
		;
connectAttr "B_toe_JNT.t" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].tt";
connectAttr "B_toe_JNT.rp" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].trp";
connectAttr "B_toe_JNT.rpt" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].trt";
connectAttr "B_toe_JNT.pm" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].tpm";
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.w0" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_switch_CTL_offGRP.ro" "leg_switch_CTL_offGRP_orientConstraint1.cro"
		;
connectAttr "leg_switch_CTL_offGRP.pim" "leg_switch_CTL_offGRP_orientConstraint1.cpim"
		;
connectAttr "leg_GRP.r" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tr";
connectAttr "leg_GRP.ro" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tro";
connectAttr "leg_GRP.pm" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tpm";
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.w0" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "input_hip.t" "output_GRP.t";
connectAttr "input_hip.r" "output_GRP.r";
connectAttr "input_hip.s" "output_GRP.s";
connectAttr "hip_BLCL.op" "hip_JNT.s";
connectAttr "hip_PRBL.ot" "hip_JNT.t";
connectAttr "hip_PRBL.or" "hip_JNT.r";
connectAttr "input_hip.r" "hip_JNT.jo";
connectAttr "hip_JNT.s" "thigh_JNT.is";
connectAttr "thigh_BLCL.op" "thigh_JNT.s";
connectAttr "thigh_PRBL.ot" "thigh_JNT.t";
connectAttr "thigh_PRBL.or" "thigh_JNT.r";
connectAttr "input_thigh.r" "thigh_JNT.jo";
connectAttr "thigh_JNT.s" "knee_JNT.is";
connectAttr "knee_BLCL.op" "knee_JNT.s";
connectAttr "knee_PRBL.ot" "knee_JNT.t";
connectAttr "knee_PRBL.or" "knee_JNT.r";
connectAttr "input_knee.r" "knee_JNT.jo";
connectAttr "knee_JNT.s" "ankle_JNT.is";
connectAttr "ankle_BLCL.op" "ankle_JNT.s";
connectAttr "ankle_PRBL.ot" "ankle_JNT.t";
connectAttr "ankle_PRBL.or" "ankle_JNT.r";
connectAttr "input_ankle.r" "ankle_JNT.jo";
connectAttr "B_toe_PRBL.ot" "B_toe_JNT.t";
connectAttr "ankle_JNT.s" "B_toe_JNT.is";
connectAttr "B_toe_PRBL.or" "B_toe_JNT.r";
connectAttr "B_toe_BLCL.op" "B_toe_JNT.s";
connectAttr "input_B_toe.r" "B_toe_JNT.jo";
connectAttr "leg_GRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_motion_GRP.iog" "leg_SET.dsm" -na;
connectAttr "input_hip.iog" "leg_SET.dsm" -na;
connectAttr "input_thigh.iog" "leg_SET.dsm" -na;
connectAttr "input_knee.iog" "leg_SET.dsm" -na;
connectAttr "input_ankle.iog" "leg_SET.dsm" -na;
connectAttr "input_B_toe.iog" "leg_SET.dsm" -na;
connectAttr "motion_IK_GRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_hip_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_hip_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_rot_thigh_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_rps_knee_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_rps_ankle_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_rps_B_toe0_JNT.iog" "leg_SET.dsm" -na;
connectAttr "effector13.iog" "leg_SET.dsm" -na;
connectAttr "IK_trans_thigh_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe0_JNT.iog" "leg_SET.dsm" -na;
connectAttr "effector14.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_upperLeg_CTLaim.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_softIK_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_stretch_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_local_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_ikHandle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_ikHandle.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_ikHandle_poleVectorConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_space_upVec.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_lowerLeg_CTLaim.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_softIK_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_stretch_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_local_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_ikHandle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_ikHandle.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_ikHandle_poleVectorConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_space_upVec.iog" "leg_SET.dsm" -na;
connectAttr "leg_softIK_input.iog" "leg_SET.dsm" -na;
connectAttr "leg_softIK_output.iog" "leg_SET.dsm" -na;
connectAttr "leg_stretchIK_input.iog" "leg_SET.dsm" -na;
connectAttr "leg_stretchIK_output.iog" "leg_SET.dsm" -na;
connectAttr "motion_FK_GRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_hip_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe0_JNT.iog" "leg_SET.dsm" -na;
connectAttr "leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_lower_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_lower_local.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_space_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_space_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_CTL.iog" "leg_SET.dsm" -na;
connectAttr "leg_poleVec_GRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec_space.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_poleVec_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "lower_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "lower_poleVec_space.iog" "leg_SET.dsm" -na;
connectAttr "lower_poleVec.iog" "leg_SET.dsm" -na;
connectAttr "FK_leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_hip_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_hip_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_CTL.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_CTL.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_CTL.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe_CTL.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "output_GRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_JNT.iog" "leg_SET.dsm" -na;
connectAttr "thigh_JNT.iog" "leg_SET.dsm" -na;
connectAttr "knee_JNT.iog" "leg_SET.dsm" -na;
connectAttr "ankle_JNT.iog" "leg_SET.dsm" -na;
connectAttr "B_toe_JNT.iog" "leg_SET.dsm" -na;
connectAttr "ankle_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "B_toe_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "hip_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "knee_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "thigh_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "leg_for_zerodivide_COND.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_ctrllen_COND.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_softikV_COND.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_ctrllen_COND.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_softikV_COND.msg" "leg_SET.dnsm" -na;
connectAttr "ankle_poleVec_offGRP_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_hip_JNT2IK_thigh_JNT_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_CTL_local2IK_JNT_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_JNT_local_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2IK_ankle_local_offGRP_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2lower_poleVec_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_B_toe2IK_B_toe_CTL_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee2IK_knee_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "B_toe_ctrlLen.msg" "leg_SET.dnsm" -na;
connectAttr "leg_ctrlLen.msg" "leg_SET.dnsm" -na;
connectAttr "loLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "midlegLen.msg" "leg_SET.dnsm" -na;
connectAttr "uplegLen.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle14.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle15.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle16.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle17.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle5.msg" "leg_SET.dnsm" -na;
connectAttr "ankle_poleVec_offGRP_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_B_toe_ctrl_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_hip_JNT2IK_thigh_JNT_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_knee_space_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_leg_ctrl_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_leg_space_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_CTL_local2IK_JNT_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_JNT_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2IK_ankle_local_offGRP_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2lower_poleVec_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_B_toe2IK_B_toe_CTL_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_B_toe_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee2IK_knee_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_thigh_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "leg_IK_negate_val.msg" "leg_SET.dnsm" -na;
connectAttr "loleg_ratio.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_divide_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_mult_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_negate_val.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_power_val.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_ratio.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.msg" "leg_SET.dnsm" -na;
connectAttr "stretchCtrl_loleg.msg" "leg_SET.dnsm" -na;
connectAttr "stretchCtrl_lowerLeg.msg" "leg_SET.dnsm" -na;
connectAttr "stretchCtrl_upleg.msg" "leg_SET.dnsm" -na;
connectAttr "stretched_lolegLen.msg" "leg_SET.dnsm" -na;
connectAttr "stretched_lowerLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "stretched_uplegLen.msg" "leg_SET.dnsm" -na;
connectAttr "upleg_ratio.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_divide_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_mult_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_negate_val.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_power_val.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_stretch_output_mul_ctrlVal.msg" "leg_SET.dnsm" -na;
connectAttr "ankle_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "B_toe_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "hip_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "knee_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "thigh_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "loleg_plus_stretch.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_ctrlLen_minue_dif.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_plus_stretch.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_result_softik_len.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_stretchedLen.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeglen_minus_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "softlowerLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "softupperLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "stretch_legLen.msg" "leg_SET.dnsm" -na;
connectAttr "upleg_plus_stretch.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_ctrlLen_minue_dif.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_result_softik_len.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_stretchedLen.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeglen_minus_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "FK_IK_RVS.msg" "leg_SET.dnsm" -na;
connectAttr "IK_hip_JNT2IK_thigh_JNT_MTMX.o" "IK_hip_JNT2IK_thigh_JNT_DCMX.imat"
		;
connectAttr "input_thigh.wm" "IK_hip_JNT2IK_thigh_JNT_MTMX.i[0]";
connectAttr "IK_rot_thigh_JNT.wim" "IK_hip_JNT2IK_thigh_JNT_MTMX.i[1]";
connectAttr "IK_thigh_CTL_local2IK_JNT_MTMX.o" "IK_thigh_CTL_local2IK_JNT_DCMX.imat"
		;
connectAttr "IK_trans_thigh_JNT.offset" "IK_thigh_CTL_local2IK_JNT_MTMX.i[0]";
connectAttr "IK_thigh_CTL.wm" "IK_thigh_CTL_local2IK_JNT_MTMX.i[1]";
connectAttr "IK_rot_thigh_JNT.wim" "IK_thigh_CTL_local2IK_JNT_MTMX.i[2]";
connectAttr "IK_hip_JNT2IK_thigh_JNT_DCMX.or" "unitConversion3.i";
connectAttr "IK_thigh_space_MTMX.o" "IK_thigh_space_DCMX.imat";
connectAttr "input_thigh.wm" "IK_thigh_space_MTMX.i[0]";
connectAttr "IK_thigh_space.pim" "IK_thigh_space_MTMX.i[1]";
connectAttr "leg_stretchIK_output.upperStretched_len" "upperLeg_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "leg_stretchIK_output.stretch_ctrl_value" "upperLeg_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "input_knee2IK_knee_space_MTMX.o" "input_knee2IK_knee_space_DCMX.imat"
		;
connectAttr "input_knee.wm" "input_knee2IK_knee_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "input_knee2IK_knee_space_MTMX.i[1]";
connectAttr "leg_stretchIK_output.stretch_ctrl_value" "lowerLeg_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "leg_stretchIK_output.lowerStretched_len" "lowerLeg_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "uplegLen.d" "softupperLegLen.i1[0]";
connectAttr "midlegLen.d" "softupperLegLen.i1[1]";
connectAttr "input_thigh_local_MTMX.o" "uplegLen.im1";
connectAttr "input_knee_local_MTMX.o" "uplegLen.im2";
connectAttr "input_thigh.wm" "input_thigh_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_thigh_local_MTMX.i[1]";
connectAttr "input_knee.wm" "input_knee_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_knee_local_MTMX.i[1]";
connectAttr "input_knee_local_MTMX.o" "midlegLen.im1";
connectAttr "input_ankle_local_MTMX.o" "midlegLen.im2";
connectAttr "input_ankle.wm" "input_ankle_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_ankle_local_MTMX.i[1]";
connectAttr "ik_leg_ctrl_local_MTMX.o" "leg_ctrlLen.im2";
connectAttr "ik_leg_space_local_MTMX.o" "leg_ctrlLen.im1";
connectAttr "IK_lower_local.wm" "ik_leg_ctrl_local_MTMX.i[0]";
connectAttr "input_thigh.wm" "ik_leg_space_local_MTMX.i[0]";
connectAttr "IK_ankle_CTL.softIK" "leg_IK_negate_val.i1x";
connectAttr "IK_ankle_CTL.stretchIK" "leg_IK_negate_val.i1y";
connectAttr "uplegLen.d" "softlowerLegLen.i1[0]";
connectAttr "midlegLen.d" "softlowerLegLen.i1[1]";
connectAttr "loLegLen.d" "softlowerLegLen.i1[2]";
connectAttr "input_ankle_local_MTMX.o" "loLegLen.im1";
connectAttr "input_B_toe_local_MTMX.o" "loLegLen.im2";
connectAttr "input_B_toe.wm" "input_B_toe_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_B_toe_local_MTMX.i[1]";
connectAttr "ik_knee_space_local_MTMX.o" "B_toe_ctrlLen.im1";
connectAttr "ik_B_toe_ctrl_local_MTMX.o" "B_toe_ctrlLen.im2";
connectAttr "input_knee.wm" "ik_knee_space_local_MTMX.i[0]";
connectAttr "IK_B_toe_CTL.wm" "ik_B_toe_ctrl_local_MTMX.i[0]";
connectAttr "upperLeg_softikV_COND.ocr" "upperLeg_ctrllen_COND.ctr";
connectAttr "leg_softIK_input.upper_ctrlLen" "upperLeg_ctrllen_COND.cfr";
connectAttr "leg_softIK_input.upper_ctrlLen" "upperLeg_ctrllen_COND.ft";
connectAttr "upperLeglen_minus_softikV.o1" "upperLeg_ctrllen_COND.st";
connectAttr "upperLeg_result_softik_len.o1" "upperLeg_softikV_COND.ctr";
connectAttr "leg_softIK_input.upper_legLen" "upperLeg_softikV_COND.cfr";
connectAttr "leg_softIK_input.softik_ctrl_value" "upperLeg_softikV_COND.ft";
connectAttr "leg_softIK_input.upper_legLen" "upperLeg_result_softik_len.i1[0]";
connectAttr "upperLeg_mult_softikV.ox" "upperLeg_result_softik_len.i1[1]";
connectAttr "upperLeg_power_val.ox" "upperLeg_mult_softikV.i2x";
connectAttr "leg_softIK_input.softik_ctrl_value" "upperLeg_mult_softikV.i1x";
connectAttr "upperLeg_negate_val.ox" "upperLeg_power_val.i2x";
connectAttr "upperLeg_divide_softikV.ox" "upperLeg_negate_val.i1x";
connectAttr "upperLeg_ctrlLen_minue_dif.o1" "upperLeg_divide_softikV.i1x";
connectAttr "leg_for_zerodivide_COND.ocr" "upperLeg_divide_softikV.i2x";
connectAttr "leg_softIK_input.upper_ctrlLen" "upperLeg_ctrlLen_minue_dif.i1[0]";
connectAttr "upperLeglen_minus_softikV.o1" "upperLeg_ctrlLen_minue_dif.i1[1]";
connectAttr "leg_softIK_input.upper_legLen" "upperLeglen_minus_softikV.i1[0]";
connectAttr "leg_softIK_input.softik_ctrl_value" "upperLeglen_minus_softikV.i1[1]"
		;
connectAttr "leg_softIK_input.softik_ctrl_value" "leg_for_zerodivide_COND.ft";
connectAttr "leg_softIK_input.softik_ctrl_value" "leg_for_zerodivide_COND.cfr";
connectAttr "lowerLeg_softikV_COND.ocr" "lowerLeg_ctrllen_COND.ctr";
connectAttr "leg_softIK_input.lower_ctrlLen" "lowerLeg_ctrllen_COND.cfr";
connectAttr "leg_softIK_input.lower_ctrlLen" "lowerLeg_ctrllen_COND.ft";
connectAttr "lowerLeglen_minus_softikV.o1" "lowerLeg_ctrllen_COND.st";
connectAttr "lowerLeg_result_softik_len.o1" "lowerLeg_softikV_COND.ctr";
connectAttr "leg_softIK_input.lower_legLen" "lowerLeg_softikV_COND.cfr";
connectAttr "leg_softIK_input.softik_ctrl_value" "lowerLeg_softikV_COND.ft";
connectAttr "leg_softIK_input.lower_legLen" "lowerLeg_result_softik_len.i1[0]";
connectAttr "lowerLeg_mult_softikV.ox" "lowerLeg_result_softik_len.i1[1]";
connectAttr "lowerLeg_power_val.ox" "lowerLeg_mult_softikV.i2x";
connectAttr "leg_softIK_input.softik_ctrl_value" "lowerLeg_mult_softikV.i1x";
connectAttr "lowerLeg_negate_val.ox" "lowerLeg_power_val.i2x";
connectAttr "lowerLeg_divide_softikV.ox" "lowerLeg_negate_val.i1x";
connectAttr "lowerLeg_ctrlLen_minue_dif.o1" "lowerLeg_divide_softikV.i1x";
connectAttr "leg_for_zerodivide_COND.ocr" "lowerLeg_divide_softikV.i2x";
connectAttr "leg_softIK_input.lower_ctrlLen" "lowerLeg_ctrlLen_minue_dif.i1[0]";
connectAttr "lowerLeglen_minus_softikV.o1" "lowerLeg_ctrlLen_minue_dif.i1[1]";
connectAttr "leg_softIK_input.lower_legLen" "lowerLeglen_minus_softikV.i1[0]";
connectAttr "leg_softIK_input.softik_ctrl_value" "lowerLeglen_minus_softikV.i1[1]"
		;
connectAttr "leg_stretchIK_input.midLeg_len" "loleg_plus_stretch.i1[0]";
connectAttr "stretchCtrl_loleg.ox" "loleg_plus_stretch.i1[1]";
connectAttr "stretched_lolegLen.ox" "stretchCtrl_loleg.i1x";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "stretchCtrl_loleg.i2x";
connectAttr "upperLeg_stretchedLen.o1" "stretched_lolegLen.i1x";
connectAttr "loleg_ratio.ox" "stretched_lolegLen.i2x";
connectAttr "leg_stretchIK_input.upperCtrl_len" "upperLeg_stretchedLen.i1[0]";
connectAttr "leg_stretchIK_input.upperSoftik_len" "upperLeg_stretchedLen.i1[1]";
connectAttr "stretch_legLen.o1" "loleg_ratio.i2x";
connectAttr "leg_stretchIK_input.midLeg_len" "loleg_ratio.i1x";
connectAttr "leg_stretchIK_input.upLeg_len" "stretch_legLen.i1[0]";
connectAttr "leg_stretchIK_input.midLeg_len" "stretch_legLen.i1[1]";
connectAttr "leg_stretchIK_input.loLegLen" "stretch_legLen.i1[2]";
connectAttr "leg_stretchIK_input.upLeg_len" "upleg_plus_stretch.i1[0]";
connectAttr "stretchCtrl_upleg.ox" "upleg_plus_stretch.i1[1]";
connectAttr "stretched_uplegLen.ox" "stretchCtrl_upleg.i1x";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "stretchCtrl_upleg.i2x";
connectAttr "upleg_ratio.ox" "stretched_uplegLen.i2x";
connectAttr "upperLeg_stretchedLen.o1" "stretched_uplegLen.i1x";
connectAttr "leg_stretchIK_input.upLeg_len" "upleg_ratio.i1x";
connectAttr "stretch_legLen.o1" "upleg_ratio.i2x";
connectAttr "leg_stretchIK_input.loLegLen" "lowerLeg_plus_stretch.i1[0]";
connectAttr "stretchCtrl_lowerLeg.ox" "lowerLeg_plus_stretch.i1[1]";
connectAttr "stretched_lowerLegLen.ox" "stretchCtrl_lowerLeg.i1x";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "stretchCtrl_lowerLeg.i2x";
connectAttr "lowerLeg_stretchedLen.o1" "stretched_lowerLegLen.i1x";
connectAttr "lowerLeg_ratio.ox" "stretched_lowerLegLen.i2x";
connectAttr "leg_stretchIK_input.lowerCtrl_len" "lowerLeg_stretchedLen.i1[0]";
connectAttr "leg_stretchIK_input.lowerSoftik_len" "lowerLeg_stretchedLen.i1[1]";
connectAttr "stretch_legLen.o1" "lowerLeg_ratio.i2x";
connectAttr "leg_stretchIK_input.loLegLen" "lowerLeg_ratio.i1x";
connectAttr "input_B_toe2IK_B_toe_CTL_MTMX.o" "input_B_toe2IK_B_toe_CTL_DCMX.imat"
		;
connectAttr "input_B_toe.wm" "input_B_toe2IK_B_toe_CTL_MTMX.i[0]";
connectAttr "IK_ankle_CTL.wim" "input_B_toe2IK_B_toe_CTL_MTMX.i[1]";
connectAttr "input_ankle2IK_ankle_local_offGRP_MTMX.o" "input_ankle2IK_ankle_local_offGRP_DCMX.imat"
		;
connectAttr "IK_lower_local_offGRP.offset" "input_ankle2IK_ankle_local_offGRP_MTMX.i[0]"
		;
connectAttr "input_ankle.wm" "input_ankle2IK_ankle_local_offGRP_MTMX.i[1]";
connectAttr "IK_ankle_CTL.wim" "input_ankle2IK_ankle_local_offGRP_MTMX.i[2]";
connectAttr "input_ankle2IK_ankle_local_offGRP_DCMX.or" "unitConversion4.i";
connectAttr "upper_poleVec_offGRP_MTMX.o" "upper_poleVec_offGRP_DCMX.imat";
connectAttr "input_knee.wm" "upper_poleVec_offGRP_MTMX.i[0]";
connectAttr "leg_poleVec_GRP.wim" "upper_poleVec_offGRP_MTMX.i[1]";
connectAttr "ankle_poleVec_offGRP_MTMX.o" "ankle_poleVec_offGRP_DCMX.imat";
connectAttr "IK_B_toe_CTL.wm" "ankle_poleVec_offGRP_MTMX.i[0]";
connectAttr "IK_B_toe_flex_poleVec_offGRP.pim" "ankle_poleVec_offGRP_MTMX.i[1]";
connectAttr "input_ankle2lower_poleVec_MTMX.o" "input_ankle2lower_poleVec_DCMX.imat"
		;
connectAttr "input_ankle.wm" "input_ankle2lower_poleVec_MTMX.i[0]";
connectAttr "IK_B_toe_flex_poleVec_spcGRP.wim" "input_ankle2lower_poleVec_MTMX.i[1]"
		;
connectAttr "input_ankle2lower_poleVec_DCMX.or" "unitConversion2.i";
connectAttr "leg_switch_CTL.FK_IK" "FK_IK_RVS.ix";
connectAttr "IK_hip_JNT.s" "hip_BLCL.c1";
connectAttr "FK_hip_JNT.s" "hip_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "hip_BLCL.b";
connectAttr "IK_hip_JNT.t" "hip_PRBL.it1";
connectAttr "IK_hip_JNT.r" "hip_PRBL.ir1";
connectAttr "FK_hip_JNT.t" "hip_PRBL.it2";
connectAttr "FK_hip_JNT.r" "hip_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "hip_PRBL.w";
connectAttr "IK_rot_thigh_JNT.s" "thigh_BLCL.c1";
connectAttr "FK_thigh_JNT.s" "thigh_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "thigh_BLCL.b";
connectAttr "IK_thigh_JNT_local_DCMX.ot" "thigh_PRBL.it1";
connectAttr "IK_rot_thigh_JNT.r" "thigh_PRBL.ir1";
connectAttr "FK_thigh_JNT.t" "thigh_PRBL.it2";
connectAttr "FK_thigh_JNT.r" "thigh_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "thigh_PRBL.w";
connectAttr "IK_thigh_JNT_local_MTMX.o" "IK_thigh_JNT_local_DCMX.imat";
connectAttr "IK_trans_thigh_JNT.wm" "IK_thigh_JNT_local_MTMX.i[0]";
connectAttr "IK_hip_JNT.wim" "IK_thigh_JNT_local_MTMX.i[1]";
connectAttr "IK_knee_JNT.s" "knee_BLCL.c1";
connectAttr "FK_knee_JNT.s" "knee_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "knee_BLCL.b";
connectAttr "IK_knee_JNT.t" "knee_PRBL.it1";
connectAttr "IK_knee_JNT.r" "knee_PRBL.ir1";
connectAttr "FK_knee_JNT.t" "knee_PRBL.it2";
connectAttr "FK_knee_JNT.r" "knee_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "knee_PRBL.w";
connectAttr "IK_ankle_JNT.s" "ankle_BLCL.c1";
connectAttr "FK_ankle_JNT.s" "ankle_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "ankle_BLCL.b";
connectAttr "IK_ankle_JNT.t" "ankle_PRBL.it1";
connectAttr "IK_ankle_JNT.r" "ankle_PRBL.ir1";
connectAttr "FK_ankle_JNT.t" "ankle_PRBL.it2";
connectAttr "FK_ankle_JNT.r" "ankle_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "ankle_PRBL.w";
connectAttr "IK_B_toe0_JNT.t" "B_toe_PRBL.it1";
connectAttr "IK_B_toe0_JNT.r" "B_toe_PRBL.ir1";
connectAttr "FK_B_toe0_JNT.t" "B_toe_PRBL.it2";
connectAttr "FK_B_toe0_JNT.r" "B_toe_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "B_toe_PRBL.w";
connectAttr "IK_B_toe0_JNT.s" "B_toe_BLCL.c1";
connectAttr "FK_B_toe0_JNT.s" "B_toe_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "B_toe_BLCL.b";
connectAttr "input_thigh_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_ankle_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_B_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uplegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midlegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softupperLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_leg_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_leg_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeglen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_legLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loleg_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upleg_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_lolegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uplegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loleg.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_upleg.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loleg_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upleg_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "loLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softlowerLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_B_toe_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_knee_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "B_toe_ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeglen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_lowerLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_lowerLeg.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_IK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_knee2IK_knee_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_knee2IK_knee_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_ankle2lower_poleVec_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "input_ankle2lower_poleVec_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_hip_JNT2IK_thigh_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "IK_hip_JNT2IK_thigh_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_B_toe2IK_B_toe_CTL_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_B_toe2IK_B_toe_CTL_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "IK_thigh_JNT_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_thigh_JNT_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_thigh_CTL_local2IK_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_thigh_CTL_local2IK_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of parts_quadruped_leg.ma
