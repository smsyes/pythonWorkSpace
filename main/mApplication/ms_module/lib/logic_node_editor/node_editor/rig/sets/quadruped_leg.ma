//Maya ASCII 2019 scene
//Name: quadruped_leg.ma
//Last modified: Fri, Jun 04, 2021 07:49:02 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires "mtoa" "4.0.3";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "124A3386-4EEC-5F00-25BF-709E3EE93FEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 174.94890388413094 12.823208461153214 23.136493826660423 ;
	setAttr ".r" -type "double3" 3.8616472704105176 77.399999999995771 1.8225150256207278e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C6347AEB-43B5-9960-16ED-6A8D3E8FED1B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 171.31060379520665;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "FF4B0DB9-4232-D63E-5C8D-BCB27AC33378";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "654B8142-4649-5F90-D302-14918A70A26B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "1B20835C-4006-43EE-0EFC-9786B94ECC26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "13C403CE-49D3-EBDB-AF1B-A8A66CF86E91";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3C945FB2-43C5-33DA-3A9D-4D8AFBD17257";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "82622F6B-4770-7220-8637-7BB4D3A951A5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "leg_GRP";
	rename -uid "4A10C497-4CF4-E70F-91E3-33AA605C96A3";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 2 ".rebuildMode";
	setAttr -s 6 ".init";
	setAttr -k on ".prefixType";
createNode transform -n "leg_motion_GRP" -p "leg_GRP";
	rename -uid "E4D9F068-43F0-BEFF-8D88-65ADBA78946B";
	setAttr ".v" no;
createNode transform -n "input_hip" -p "leg_motion_GRP";
	rename -uid "97E2B090-4B3B-765E-D42C-4D939074F12F";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode transform -n "input_thigh" -p "input_hip";
	rename -uid "49D8FFB7-445E-96C9-6BBB-15AE562FE023";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 2.0713150501251221 -2.4073028564453125 0 ;
	setAttr ".r" -type "double3" 0 9.6145742939888414 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "input_knee" -p "input_thigh";
	rename -uid "00EE884C-4B27-30CB-F1C8-F6A9F2DAD9BB";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 14.413311073045826 0 -9.2860890532620033e-08 ;
	setAttr ".r" -type "double3" 0 24.808835516604695 0 ;
	setAttr ".s" -type "double3" 1.0000000519103551 1 1.0000000519103551 ;
createNode transform -n "input_ankle" -p "input_knee";
	rename -uid "A6059991-493A-A106-18AA-3DB1A1C34789";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 13.462105844960195 -8.8817841970012523e-16 -9.7126701348315692e-08 ;
	setAttr ".r" -type "double3" 0 -35.779471559252876 0 ;
	setAttr ".s" -type "double3" 0.99999994890369348 1 0.99999994890369348 ;
createNode transform -n "input_B_toe" -p "input_ankle";
	rename -uid "B72DF9A3-4EF0-81E1-24CA-28964E6D6FB4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 10.648109404222893 8.8817841970012523e-16 4.7434767225240648e-10 ;
	setAttr ".s" -type "double3" 1 1.0000000142892349 1.0000000142892349 ;
createNode transform -n "motion_IK_GRP" -p "leg_motion_GRP";
	rename -uid "19A9DA68-4EA2-D05D-5E36-38960AB581E6";
createNode transform -n "IK_thigh_space" -p "motion_IK_GRP";
	rename -uid "66E7D533-40C6-B25E-4224-B0BEDDC16C22";
createNode locator -n "IK_thigh_spaceShape" -p "IK_thigh_space";
	rename -uid "A9421C2F-4E32-DC36-7B08-82A10AD1BFF4";
	setAttr -k off ".v";
createNode transform -n "IK_upperLeg_CTLaim" -p "IK_thigh_space";
	rename -uid "74AE2FF3-416F-F093-5A80-67935D1A5A24";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "IK_upperLeg_CTLaimShape" -p "IK_upperLeg_CTLaim";
	rename -uid "379840FC-4EF4-2180-C4E1-138CE0E3977B";
	setAttr -k off ".v";
createNode transform -n "upperLeg_softIK_output_LOC" -p "IK_upperLeg_CTLaim";
	rename -uid "BB24A7EA-44C6-2614-A39E-218880C7577E";
	setAttr ".t" -type "double3" 27.875417709350586 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_softIK_output_LOCShape" -p "upperLeg_softIK_output_LOC";
	rename -uid "20B38DD6-44BD-DFD0-2BA0-F3AC114AD75B";
	setAttr -k off ".v";
createNode transform -n "upperLeg_stretch_output_LOC" -p "upperLeg_softIK_output_LOC";
	rename -uid "E03907AB-401D-EE84-E95B-ACB3509D85EB";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_stretch_output_LOCShape" -p "upperLeg_stretch_output_LOC";
	rename -uid "E9D3E63B-44CF-1A17-134A-9283C1599E1D";
	setAttr -k off ".v";
createNode transform -n "IK_B_toe_flex_local_offGRP" -p "upperLeg_stretch_output_LOC";
	rename -uid "42169BD8-4E63-A5A0-B486-9FA51CFFBD28";
	setAttr ".t" -type "double3" 9.8056228524887903 1.5987211554602254e-14 4.1511466900800862 ;
	setAttr ".r" -type "double3" -21.588982155756764 1.5902773407317584e-15 90.000000000000057 ;
createNode transform -n "IK_B_toe_flex_local_spcGRP" -p "IK_B_toe_flex_local_offGRP";
	rename -uid "2FDDB1BC-4D72-4A27-1614-85B7E03CE3B2";
createNode transform -n "upperLeg_ikHandle_offGRP" -p "IK_B_toe_flex_local_spcGRP";
	rename -uid "5E870120-4EFD-B75A-8126-9AB70850A1C0";
	setAttr ".t" -type "double3" -1.3116254482525846e-07 10.645128936477311 -0.25199484747692935 ;
createNode aimConstraint -n "IK_upperLeg_CTLaim_aimConstraint1" -p "IK_upperLeg_CTLaim";
	rename -uid "1E161873-4A87-839C-27D0-92A71B2BA071";
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
	rename -uid "A8572824-4464-F6D3-9D38-BC9FDFD5745E";
	setAttr ".t" -type "double3" 6.2325491732529114e-15 1 -6.0636337963556973e-15 ;
createNode locator -n "IK_thigh_space_upVecShape" -p "IK_thigh_space_upVec";
	rename -uid "304CD4FE-42B4-7D91-CEE9-9FAB5F01DB12";
	setAttr -k off ".v";
createNode transform -n "IK_knee_space" -p "motion_IK_GRP";
	rename -uid "3CB466A0-40E8-8FD5-1481-B981869478E8";
createNode locator -n "IK_knee_spaceShape" -p "IK_knee_space";
	rename -uid "DC4FAB5A-4B65-0DB8-E0FF-8395CD865B5E";
	setAttr -k off ".v";
createNode transform -n "IK_lowerLeg_CTLaim" -p "IK_knee_space";
	rename -uid "ADCE5285-4388-4C3F-8532-5596DDE8F700";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "IK_lowerLeg_CTLaimShape" -p "IK_lowerLeg_CTLaim";
	rename -uid "E0693F46-470A-D35E-3296-21983452EEA6";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_softIK_output_LOC" -p "IK_lowerLeg_CTLaim";
	rename -uid "768141AC-4D8C-BEE6-8F7A-BE82D2538FEA";
	setAttr ".t" -type "double3" 29.383132934570313 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_softIK_output_LOCShape" -p "lowerLeg_softIK_output_LOC";
	rename -uid "E8C67217-4F79-ACF4-786B-5DB547D7ABC7";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_stretch_output_LOC" -p "lowerLeg_softIK_output_LOC";
	rename -uid "9DB711F3-4E3F-7BDC-8134-21A38DAFE8A0";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_stretch_output_LOCShape" -p "lowerLeg_stretch_output_LOC";
	rename -uid "C1972FAA-496C-2C2D-92E3-E3BF6D13C9D5";
	setAttr -k off ".v";
createNode transform -n "IK_ankle_flex_local_offGRP" -p "lowerLeg_stretch_output_LOC";
	rename -uid "ADA1898C-4A3C-BF97-3214-50A4824E1D7C";
	setAttr ".t" -type "double3" -10.002941320380531 -4.4408920985006262e-15 -3.6501296818809728 ;
	setAttr ".r" -type "double3" -18.691241513948722 0 89.999999999999986 ;
createNode transform -n "IK_ankle_flex_local_spcGRP" -p "IK_ankle_flex_local_offGRP";
	rename -uid "BBF97656-4194-DD51-142F-00A7820B576C";
createNode transform -n "lowerLeg_ikHandle_offGRP" -p "IK_ankle_flex_local_spcGRP";
	rename -uid "E10A3FAB-4650-5D44-1F1B-45BC083597B9";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 -10.645127257617185 0.25199252154928686 ;
createNode aimConstraint -n "IK_lowerLeg_CTLaim_aimConstraint1" -p "IK_lowerLeg_CTLaim";
	rename -uid "B4977795-4FF5-F952-E549-86B7A279213E";
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
	rename -uid "DCAD4DB5-412F-8CD0-EBE5-CE92E1CE0156";
	setAttr ".t" -type "double3" -8.5414944037635054e-16 1 4.9389353589875994e-15 ;
createNode locator -n "IK_knee_space_upVecShape" -p "IK_knee_space_upVec";
	rename -uid "4F635FBA-46AB-E755-10D3-B882B8DB0BB4";
	setAttr -k off ".v";
createNode transform -n "leg_softIK_input" -p "motion_IK_GRP";
	rename -uid "94209AD3-4431-3DF8-4ACC-BD8C9276FA2E";
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
	rename -uid "3FAB1D20-4D61-0E5A-B351-45BF15C90114";
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
	rename -uid "A1F1217E-4667-AD7A-94FD-249AFD71072B";
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
	rename -uid "57591F24-4425-A227-48E4-A5A3AC650217";
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
	rename -uid "A705078B-470E-ECAD-BBB0-C0AF305AC959";
createNode transform -n "leg_CTL_GRP" -p "leg_GRP";
	rename -uid "14DEE3EA-4AEB-3875-BB8D-0EA862BF4CD1";
createNode transform -n "hip_L_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "19111C86-4E81-B63B-0DD0-F2AAC5485A30";
createNode transform -n "hip_L_CTL_spcGRP" -p "hip_L_CTL_offGRP";
	rename -uid "566149FD-4001-9573-6FD4-B98DEF961458";
createNode transform -n "hip_L_CTL" -p "hip_L_CTL_spcGRP";
	rename -uid "B6426ED0-464D-2D6D-2E01-0CB4330C5C3C";
createNode nurbsCurve -n "hip_L_CTLShape" -p "hip_L_CTL";
	rename -uid "D9D52BF5-4DEE-8C58-F846-769CD52960B3";
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
	rename -uid "C08452DC-42D9-23B5-E73C-F29879FDB3C2";
	setAttr ".r" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "IK_ankle_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "B65E0A22-4E14-7167-F50A-EE99EE2E65C8";
	setAttr -s 2 ".iog";
	setAttr ".r" -type "double3" 0 -10.970636042648177 0 ;
	setAttr ".s" -type "double3" 1.0000000008140459 1 1.0000000008140459 ;
createNode transform -n "IK_ankle_spcGRP" -p "IK_ankle_offGRP";
	rename -uid "600C45AE-4CEE-31EE-7F44-3DB7BEE0F156";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
createNode transform -n "IK_ankle_local_space" -p "IK_ankle_spcGRP";
	rename -uid "CE7867E3-4E54-0C8A-D256-3987B76BFEDE";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".r" -type "double3" 0 1.987846675914698e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000142892349 1.0000000142892347 ;
createNode transform -n "IK_ankle_CTL_local_offGRP" -p "IK_ankle_local_space";
	rename -uid "AA4D0D56-4F7A-E499-5848-518B9C620F3E";
	setAttr ".t" -type "double3" 1.5543122344752192e-14 0 0 ;
	setAttr ".r" -type "double3" 1.3560617292894874 0 90 ;
	setAttr ".s" -type "double3" 0.9999999857107652 1.000000014281232 1.0000000000080025 ;
	setAttr ".sh" -type "double3" 0 0 -6.7613529358148837e-10 ;
createNode transform -n "IK_ankle_CTL_local_spcGRP" -p "IK_ankle_CTL_local_offGRP";
	rename -uid "40BA21FE-4732-141E-745D-17B75EFB876C";
createNode transform -n "IK_ankle_CTL" -p "IK_ankle_CTL_local_spcGRP";
	rename -uid "2C580631-40E6-16D2-5617-3FB80CCE322A";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".softIK";
	setAttr -k on ".stretchIK";
createNode nurbsCurve -n "IK_ankle_CTLShape" -p "IK_ankle_CTL";
	rename -uid "EB9259F4-4B96-7F2E-E1EF-C99D883BE3AE";
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
	rename -uid "F6FEC037-4004-352D-9B82-B282C0D53FBB";
createNode transform -n "IK_B_toe_flex_CTL_spcGRP" -p "IK_B_toe_flex_CTL_offGRP";
	rename -uid "A8AD575B-4185-D072-BD69-A0AC9524846B";
createNode transform -n "IK_B_toe_flex_CTL" -p "IK_B_toe_flex_CTL_spcGRP";
	rename -uid "A4BEA457-437E-1A6B-BA87-DBB9776E86BA";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_B_toe_flex_CTLShape" -p "IK_B_toe_flex_CTL";
	rename -uid "EA67AEF9-4BA3-82B1-0F18-6E987E08D2CF";
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
	rename -uid "5EC77E2F-4E20-6EFC-786B-01B33560975B";
	setAttr ".t" -type "double3" -5.6621339616924615e-08 4.4891370729263418 3.9244264099517991 ;
createNode transform -n "IK_ankle_flex_CTL_spcGRP" -p "IK_ankle_flex_CTL_offGRP";
	rename -uid "AF1211D6-46EE-3FDB-A8A2-948EFF6C5C59";
createNode transform -n "IK_ankle_flex_CTL" -p "IK_ankle_flex_CTL_spcGRP";
	rename -uid "CD5A100A-4FAD-1795-B6D0-0FBE5C2D0F1B";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_ankle_flex_CTLShape" -p "IK_ankle_flex_CTL";
	rename -uid "BF2A8D4C-45BC-DF3A-3C6D-1CBBC39C9465";
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
	rename -uid "8431A070-40D3-B2F4-A1B1-D993FAB6AD90";
	addAttr -ci true -sn "initTrans" -ln "initTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "initTransX" -ln "initTransX" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransY" -ln "initTransY" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransZ" -ln "initTransZ" -at "double" -p "initTrans";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.9539925233402755e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 3.9756933518294038e-16 -7.5269520085988317e-17 -3.1796638646290565e-15 ;
	setAttr ".initTrans" -type "double3" 8.8817841970012523e-16 1.9539925233402755e-14 
		3.5527136788005009e-15 ;
createNode transform -n "IK_B_toe_CTL_spcGRP" -p "IK_B_toe_CTL_offGRP";
	rename -uid "C482377F-4F5A-DDA3-B78F-86A9A32A1163";
createNode transform -n "IK_B_toe_CTL" -p "IK_B_toe_CTL_spcGRP";
	rename -uid "E028EC8B-4023-5C7C-E2DC-B080D2E64E61";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_B_toe_CTLShape" -p "IK_B_toe_CTL";
	rename -uid "244C57DB-47A3-5984-4557-F999DC846737";
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
	rename -uid "BA8A46E9-40A9-5F37-9DBA-F9A948F029EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3116254926615056e-07 10.64512893647731 -0.25199484747691869 ;
	setAttr ".r" -type "double3" -1.0136452660277877e-14 -4.4822924494631397e-14 -2.092528478743933e-14 ;
createNode transform -n "IK_lower_local" -p "IK_lower_local_offGRP";
	rename -uid "C9D9C798-494C-F8C5-9F76-E6A4D74A2F82";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 0 0 ;
createNode locator -n "IK_lower_localShape" -p "IK_lower_local";
	rename -uid "90F3121F-4445-7485-59A8-46A01A6DB676";
	setAttr -k off ".v";
createNode transform -n "IK_thigh_CTL_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "4CEABDF5-4B85-961B-4077-FAA76A70627D";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".t" -type "double3" -5.7712838952284073e-08 -2.2990830572666709e-08 9.0124602181163027e-07 ;
	setAttr ".r" -type "double3" -9.6145742939888308 3.8705425531566048e-14 90.000000000000057 ;
	setAttr ".s" -type "double3" 1 1.0000000151032804 1.0000000151032804 ;
	setAttr ".offset" -type "matrix" -9.6863977148416995e-16 1 -6.7553711391130397e-16 3.0814879110195774e-33
		 -0.98595359919449821 -2.7755575615628901e-17 -0.16701955107703786 3.4694469519536126e-18
		 -0.16701955107703795 -3.4694469519536103e-18 0.98595359919449843 8.6736173798840287e-19
		 -5.7712838952284073e-08 -2.2990830572666709e-08 9.0124601825891659e-07 1;
createNode transform -n "hip_L_space_offGRP" -p "IK_thigh_CTL_offGRP";
	rename -uid "A745A8CA-464F-F624-1331-A1AE7386A3F4";
	setAttr ".t" -type "double3" -2.0713150271342911 2.4073029500688321 -8.9822589544041875e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "hip_L_space_spcGRP" -p "hip_L_space_offGRP";
	rename -uid "26AE2E42-4D46-6C19-3CC8-968EED9733DE";
createNode transform -n "IK_thigh_CTL_spcGRP" -p "hip_L_space_spcGRP";
	rename -uid "49D079A6-437C-9566-7877-F9BAC66DE2FD";
	setAttr ".t" -type "double3" 2.0713150271342911 -2.4073029500688321 8.9822589544041875e-07 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "IK_thigh_CTL" -p "IK_thigh_CTL_spcGRP";
	rename -uid "62A85E2C-4FBE-D7B3-DEAA-6696CBB1B038";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_thigh_CTLShape" -p "IK_thigh_CTL";
	rename -uid "8F9995BC-4C47-C773-50F7-718295E8DC53";
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
	rename -uid "8A7F2C5B-4182-C63F-E958-91875CFC08DB";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "upper_poleVec_offGRP" -p "leg_poleVec_GRP";
	rename -uid "AB7A2040-42AB-418E-FA0E-E0A126A5D093";
	setAttr ".s" -type "double3" 1.0000000151032804 1 1.0000000151032804 ;
createNode transform -n "upper_flex_poleVec_offGRP" -p "upper_poleVec_offGRP";
	rename -uid "A4DED58A-466F-CAFC-E1EE-588659301E5E";
	setAttr ".t" -type "double3" -13.083147000085591 -2.2990832349023549e-08 -6.0477099840341459 ;
	setAttr ".r" -type "double3" -34.423409810593526 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "upper_flex_poleVec_spcGRP" -p "upper_flex_poleVec_offGRP";
	rename -uid "03855092-4080-31C7-8A53-0E8DC429B8C4";
createNode transform -n "upper_poleVec_spcGRP" -p "upper_flex_poleVec_spcGRP";
	rename -uid "CED4D61E-4F01-73E3-A3CC-568D27AE4390";
	setAttr ".t" -type "double3" 2.2990831460845129e-08 -14.210855390385252 -2.4073056620198479 ;
	setAttr ".r" -type "double3" 0 34.423409810593533 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "upper_poleVec_space" -p "upper_poleVec_spcGRP";
	rename -uid "A09C8E86-46E1-FB40-126B-3EB5662D9909";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 15 ;
createNode transform -n "upper_poleVec" -p "upper_poleVec_space";
	rename -uid "6340611C-4C90-E427-CF63-C787B469F8FD";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "upper_poleVecShape" -p "upper_poleVec";
	rename -uid "EFA53EB8-40ED-DFF4-66DA-6B909707C401";
	setAttr -k off ".v";
createNode transform -n "lower_flex_poleVec_offGRP" -p "leg_poleVec_GRP";
	rename -uid "4DE288BA-46F6-B792-C429-91B4DCF48606";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000151032806 1.0000000151032806 ;
createNode transform -n "lower_flex_poleVec_spcGRP" -p "lower_flex_poleVec_offGRP";
	rename -uid "0833BFB9-42B6-0110-333B-3DAE50A4EE58";
createNode transform -n "lower_poleVec_spcGRP" -p "lower_flex_poleVec_spcGRP";
	rename -uid "779B808B-4FBD-5343-70B7-94B55C416BD5";
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
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999967 ;
	setAttr ".initTrans" -type "double3" -8.8817841970012523e-16 10.645127058029196 
		-0.25199317932129617 ;
	setAttr ".initRot" -type "double3" 0 -1.3560617486593372 -90 ;
createNode transform -n "lower_poleVec_space" -p "lower_poleVec_spcGRP";
	rename -uid "3BB3B6D3-4CF7-4946-CA54-E2A4D2FA94C9";
	setAttr ".t" -type "double3" -8.8817841970012563e-16 -4.3321966757057152e-15 -10 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 1 ;
createNode transform -n "lower_poleVec" -p "lower_poleVec_space";
	rename -uid "EF1449BF-4815-692A-1823-1B86922DC208";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 1.1126304536671584e-15 6.4392935428259079e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode locator -n "lower_poleVecShape" -p "lower_poleVec";
	rename -uid "55B638D0-4F2B-C4B7-D896-6D850FC5ED9B";
	setAttr -k off ".v";
createNode transform -n "FK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "88EE586D-4272-5A8D-066C-A5B7F0C15703";
	setAttr ".t" -type "double3" 2.0713151582968319 -2.4073033071275134 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 9.6145692709009243 -90.000000000000028 ;
createNode transform -n "FK_hip_offGRP" -p "FK_leg_CTL_GRP";
	rename -uid "79B8D9A0-4444-A69E-D551-00B01CF28688";
	setAttr ".t" -type "double3" -2.3734893594166664 -2.0713151582968332 -0.40206650350775419 ;
	setAttr ".r" -type "double3" -9.6145692709009243 0 90.000000000000028 ;
createNode transform -n "FK_hip_spcGRP" -p "FK_hip_offGRP";
	rename -uid "AA3025D2-445E-5EEE-30FF-E9BB347452ED";
createNode transform -n "FK_thigh_CTL_offGRP" -p "FK_hip_spcGRP";
	rename -uid "5508C6C7-492B-26B0-7177-F8840DD46853";
createNode transform -n "FK_thigh_CTL_spcGRP" -p "FK_thigh_CTL_offGRP";
	rename -uid "E515F343-459F-4A35-FDD2-40950C5D1E63";
createNode transform -n "FK_thigh_CTL" -p "FK_thigh_CTL_spcGRP";
	rename -uid "10839E53-4180-938F-F033-D59AE4652C58";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_thigh_CTLShape" -p "FK_thigh_CTL";
	rename -uid "77D69CDD-4D4E-3E95-CD22-C69B848BD541";
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
	rename -uid "7B07F6C2-4BEA-C981-8CBB-F2953983F1DF";
createNode transform -n "FK_knee_CTL_spcGRP" -p "FK_knee_CTL_offGRP";
	rename -uid "62F8F2A4-4A6E-D41E-07CF-63880EC81D53";
createNode transform -n "FK_knee_CTL" -p "FK_knee_CTL_spcGRP";
	rename -uid "D595D8AB-4BF1-E3C2-7CCA-3AAD4F4F6B32";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "FK_knee_CTLShape" -p "FK_knee_CTL";
	rename -uid "2A2E7F20-4B45-359F-55EE-2CADC715CDBC";
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
	rename -uid "8A5B9BEF-458C-6BAB-64D8-A09C712B1B3A";
createNode transform -n "FK_ankle_CTL_spcGRP" -p "FK_ankle_CTL_offGRP";
	rename -uid "21897F81-4112-44DC-2A6E-998095FC815D";
createNode transform -n "FK_ankle_CTL" -p "FK_ankle_CTL_spcGRP";
	rename -uid "4AECA3BD-4A72-583D-5EBB-DB985F02E64C";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_ankle_CTLShape" -p "FK_ankle_CTL";
	rename -uid "362771B5-41EF-9314-0FF3-8688735C0F3A";
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
	rename -uid "6E9F1367-4D11-BB55-7844-329AF0DCE611";
createNode transform -n "FK_B_toe_CTL_spcGRP" -p "FK_B_toe_CTL_offGRP";
	rename -uid "F1EED001-43FF-9403-C7D4-ABAFEB65B098";
createNode transform -n "FK_B_toe_CTL" -p "FK_B_toe_CTL_spcGRP";
	rename -uid "380CC954-4D1B-7392-8EF1-67BCA55F31CE";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_B_toe_CTLShape" -p "FK_B_toe_CTL";
	rename -uid "2679D13A-419C-D55E-45ED-45A0B232911D";
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
	rename -uid "7F2B0E5C-4C5B-97E2-CA3B-4A83F1829351";
createNode transform -n "leg_switch_CTL_spcGRP" -p "leg_switch_CTL_offGRP";
	rename -uid "619559ED-47A6-8758-BECC-1E889DD0AD26";
createNode transform -n "leg_switch_CTL" -p "leg_switch_CTL_spcGRP";
	rename -uid "2983BF99-4EB2-52C4-4D32-A3942F39D475";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "leg_switch_CTLShape" -p "leg_switch_CTL";
	rename -uid "454B4E23-4637-F694-7656-E6A35B997841";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "17A4D9FF-4E5A-8FB9-940B-A78EE8E13AD6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "AEF6294C-4D2F-AA4F-CD97-1ABC4D410648";
	setAttr ".gi" yes;
	setAttr ".rfc" yes;
	setAttr ".pe" 2;
	setAttr ".se" 3;
	setAttr ".cmph" 60;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dam" 1;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".pmt" 0;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".lightCacheType" 1;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" -1;
	setAttr ".suv" 0;
	setAttr ".srflc" 1;
	setAttr ".srdml" 0;
	setAttr ".seu" yes;
	setAttr ".gormio" yes;
	setAttr ".gocle" yes;
	setAttr ".gopl" 2;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".productionGPUResizeTextures" 0;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".vfbOn" yes;
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_leg.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BD375D69-41E4-3A53-12BE-02AFB08CD302";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EC375FB4-427F-A42E-A71D-22BCFCC69F56";
createNode displayLayerManager -n "layerManager";
	rename -uid "25490F2F-4078-2DFA-5C3C-A3BAC73D4868";
createNode displayLayer -n "defaultLayer";
	rename -uid "7D720044-4807-CA8E-D2A7-9D822F583C0E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "54075468-4C75-E013-F641-929B455BAB8D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "248CF49D-4874-0653-F8A8-04A44D37B1DA";
	setAttr ".g" yes;
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "259A18C7-44F6-17E4-EC3E-5AAFC95EF9F1";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "91F396A8-4008-30A1-EEDD-09B4D0618DB2";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "58F4CDED-4177-AD68-1442-CCA71DC4101E";
createNode decomposeMatrix -n "IK_knee_space_DCMX";
	rename -uid "1F69983C-435E-4D4A-F386-83A5CAC69E8D";
createNode multMatrix -n "IK_knee_space_MTMX";
	rename -uid "7145C606-448D-1417-54EA-1D86F0666807";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "382E143C-4AB4-14AA-02AB-509D794EFB22";
createNode plusMinusAverage -n "softupperLegLen";
	rename -uid "E3F71AD5-48D4-8AC4-9D3D-05AC2F2A9DBB";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uplegLen";
	rename -uid "7CCCB367-4FE2-27DC-A986-9F857DB69EA4";
createNode multMatrix -n "input_thigh_local_MTMX";
	rename -uid "F4347F9B-4066-0854-2D35-82B08A0BF32B";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_knee_local_MTMX";
	rename -uid "8FE221D2-4CBE-17F7-C68A-F09D93A6CDE0";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midlegLen";
	rename -uid "454BB16E-42B7-CC88-57A8-E093A75A6B34";
createNode multMatrix -n "input_ankle_local_MTMX";
	rename -uid "53696429-4D5D-A175-B778-24A7B321CC43";
	setAttr -s 2 ".i";
createNode distanceBetween -n "leg_ctrlLen";
	rename -uid "C78B3EBC-4610-D49E-DD1D-EFA5268E90F6";
createNode multMatrix -n "ik_leg_ctrl_local_MTMX";
	rename -uid "F8F9B8E5-4CFF-B694-5734-6991249E7BFB";
createNode multMatrix -n "input_thigh_local_dist_MTMX";
	rename -uid "96501E92-4F97-ED2D-1B06-258CC1EAAFAC";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "leg_IK_negate_val";
	rename -uid "F2418304-44B4-5533-1B91-A4A0EC7591E1";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "softlowerLegLen";
	rename -uid "5DF0BE0B-458F-26E8-11C4-9D9624B5DF93";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode distanceBetween -n "loLegLen";
	rename -uid "DAD43194-4198-10F4-5067-0BB0EC42F1AF";
createNode multMatrix -n "input_B_toe_local_MTMX";
	rename -uid "705CF846-42AD-D230-DA7C-F585BFFA3A0E";
	setAttr -s 2 ".i";
createNode distanceBetween -n "B_toe_ctrlLen";
	rename -uid "4A8C3132-4990-0CB8-6059-6B96883802BC";
createNode multMatrix -n "input_knee_local_dist_MTMX";
	rename -uid "97E3EE35-44B2-EC1E-0B59-E09207EEC1FB";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_B_toe_ctrl_local_MTMX";
	rename -uid "AE7CCF32-40F7-3492-A70E-2393EEBA6EF2";
createNode condition -n "upperLeg_ctrllen_COND";
	rename -uid "74E5787A-4E09-B0DF-3427-4DBBEC382D87";
	setAttr ".op" 2;
createNode condition -n "upperLeg_softikV_COND";
	rename -uid "E3CB8E7B-41BA-39BF-E179-22B7ADE7DC68";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_result_softik_len";
	rename -uid "EDC6668F-4335-12FF-E7EA-9DBC5CDD2471";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "upperLeg_mult_softikV";
	rename -uid "2D6E6775-44A1-A404-D018-D7A9B2353C07";
createNode multiplyDivide -n "upperLeg_power_val";
	rename -uid "3E4FF128-4380-3A1E-9C13-BD871E56B691";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "upperLeg_negate_val";
	rename -uid "4131D4D7-4E0E-F3CC-ECD1-67A5EE874D92";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "upperLeg_divide_softikV";
	rename -uid "D7EA8EB2-46F3-40EA-AE34-A597EDB2B198";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_ctrlLen_minue_dif";
	rename -uid "6229C5BB-4D26-87A1-D71F-FD81DE60C371";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "upperLeglen_minus_softikV";
	rename -uid "48E5AB2B-4725-BA0D-CA4A-018A147FC0F0";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "leg_for_zerodivide_COND";
	rename -uid "CE41B937-4FAE-46DA-8B13-76AAD595E282";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "lowerLeg_ctrllen_COND";
	rename -uid "1C322811-4D76-82C9-2AD3-62A136EAA7B0";
	setAttr ".op" 2;
createNode condition -n "lowerLeg_softikV_COND";
	rename -uid "C042F91E-4A80-C6A2-242C-CEBB0EFE59B5";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_result_softik_len";
	rename -uid "0EF76F53-49F8-8F7C-18D7-CBB3F43772C3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_mult_softikV";
	rename -uid "428E3D92-46A2-0C9F-FBBC-74BB74C43FF3";
createNode multiplyDivide -n "lowerLeg_power_val";
	rename -uid "0677D99A-4C1E-4252-5861-DD8EE71DE97A";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "lowerLeg_negate_val";
	rename -uid "C0F0C739-4FA5-6F2E-6B28-C9AB3432316C";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lowerLeg_divide_softikV";
	rename -uid "E6B423DA-49CA-A8F0-DBC8-02AFC5194321";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_ctrlLen_minue_dif";
	rename -uid "854BA610-4C9E-D72E-E911-58A834899766";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "lowerLeglen_minus_softikV";
	rename -uid "95E75DED-4A3F-F2D2-3764-2DBAE0EA569D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loleg_plus_stretch";
	rename -uid "86E922DB-4718-FBF4-4045-F3BBC28CC01E";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loleg";
	rename -uid "C804D4BC-4317-6852-2D5D-CD81472EA325";
createNode multiplyDivide -n "stretched_lolegLen";
	rename -uid "E68F6713-475D-3832-A2E8-76BBE273A763";
createNode plusMinusAverage -n "upperLeg_stretchedLen";
	rename -uid "5712F74D-428D-58E7-EB92-32B72543E138";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loleg_ratio";
	rename -uid "59790961-4344-76C5-A159-7B98D1416941";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_legLen";
	rename -uid "B7AA2217-4EBC-ADAF-B756-80A3B1149205";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upleg_plus_stretch";
	rename -uid "1110201F-496B-452C-458E-DD8E75FCED45";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upleg";
	rename -uid "3EBA3178-4A71-9616-8186-5590A1A913A9";
createNode multiplyDivide -n "stretched_uplegLen";
	rename -uid "2E35AC91-4A60-60F7-A8BF-50B47A75BAA5";
createNode multiplyDivide -n "upleg_ratio";
	rename -uid "A3317761-4F17-23E8-9F52-AAAE0949817F";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_plus_stretch";
	rename -uid "1F168718-4686-9C9B-95FA-22B12358FA93";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_lowerLeg";
	rename -uid "282DE4EF-46BF-C59A-F7EC-229816623DCD";
createNode multiplyDivide -n "stretched_lowerLegLen";
	rename -uid "4AA20C06-4E19-7BB3-477B-1FBC72E55905";
createNode plusMinusAverage -n "lowerLeg_stretchedLen";
	rename -uid "B816C862-467A-6A17-8239-D99777661F3A";
	setAttr ".op" 2;
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_ratio";
	rename -uid "24CB7165-46F5-D211-312A-CBB95BCD27F0";
	setAttr ".op" 2;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "04CDBC17-4D71-3469-E87F-5394B25B9A72";
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX";
	rename -uid "B8EF3C23-405A-A235-C446-4EAD29D2209C";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX";
	rename -uid "C9C67C9C-4286-D6DA-6EB5-E7AD3B095F4B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "lower_flex_poleVec_offGRP_space_DCMX";
	rename -uid "3756ABE6-468F-19C5-3BF1-B083700B5CEA";
createNode multMatrix -n "lower_flex_poleVec_offGRP_space_MTMX";
	rename -uid "E52A2E0A-42D2-C98A-0568-82A5B557B592";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "lower_poleVec_spcGRP_space_DCMX";
	rename -uid "E5F7462C-4CF2-BA6D-1631-33AA773A3535";
createNode multMatrix -n "lower_poleVec_spcGRP_space_MTMX";
	rename -uid "BD7DA779-4EF2-CE4F-307F-8DBBD6A9A2F3";
	setAttr -s 2 ".i";
createNode reverse -n "FK_IK_RVS";
	rename -uid "6FED0956-46CF-A88D-7252-00BB19B394BB";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "D1A6F253-4FF4-4636-03DA-FF9CDA38E5ED";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "70DF6A82-4D7F-BA4C-8F21-D5A07F1C163B";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "26F9FA15-402B-A8C8-566A-E992A137C1DE";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "100CA262-4712-4381-B118-83827A7DDFEA";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C472536E-4D3D-B1BD-41CF-58A82E0223E8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1214\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1214\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1214\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA0DF1FE-41D5-0CA5-6C75-39A5A4494719";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multMatrix -n "IK_ankle_offGRP_space_MTMX";
	rename -uid "DBCF6B4B-40FB-A2AD-A9B5-98992B884556";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_ankle_offGRP_space_DCMX";
	rename -uid "B4C90E08-4CF4-A5A2-7044-12BBFDE47E45";
createNode choice -n "leg_switch_CTL_CHOI";
	rename -uid "FAB28D0F-4765-8A41-8601-0CAA53180B54";
	setAttr -s 2 ".i";
createNode multMatrix -n "leg_switch_CTL_MTMX";
	rename -uid "90468B94-47A3-6668-9237-1F8A7CB5AA2E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "leg_switch_CTL_DCMX";
	rename -uid "9EE8D130-4A70-94D9-9324-59951A1577A5";
createNode multMatrix -n "IK_ankle_local_space_MTMX";
	rename -uid "BA0A4492-45C3-7182-5271-A08890360238";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_ankle_local_space_DCMX";
	rename -uid "13277F79-4C7E-8306-E77D-1BAE260824C4";
createNode objectSet -n "leg_SET";
	rename -uid "8A3B5507-4B8D-4288-2B35-98883E8AA206";
	setAttr ".ihi" 0;
	setAttr -s 88 ".dsm";
	setAttr -s 70 ".dnsm";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "8DE10BBB-4388-8B34-76BD-C99E50638873";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1133.3332882987147 -553.57140657447724 ;
	setAttr ".tgi[0].vh" -type "double2" 1133.3332882987147 553.57140657447724 ;
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
	setAttr -s 64 ".u";
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
connectAttr "IK_B_toe_CTL_offGRP.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "lower_poleVec_spcGRP.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "input_hip.init" "leg_GRP.init" -na;
connectAttr "input_thigh.init" "leg_GRP.init" -na;
connectAttr "input_knee.init" "leg_GRP.init" -na;
connectAttr "input_ankle.init" "leg_GRP.init" -na;
connectAttr "input_B_toe.init" "leg_GRP.init" -na;
connectAttr "IK_ankle_local_space.init" "leg_GRP.init" -na;
connectAttr "input_hip.t" "motion_IK_GRP.t";
connectAttr "input_hip.r" "motion_IK_GRP.r";
connectAttr "input_hip.s" "motion_IK_GRP.s";
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
connectAttr "IK_knee_space_DCMX.ot" "IK_knee_space.t";
connectAttr "IK_knee_space_DCMX.or" "IK_knee_space.r";
connectAttr "IK_knee_space_DCMX.os" "IK_knee_space.s";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crx" "IK_lowerLeg_CTLaim.rx";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.cry" "IK_lowerLeg_CTLaim.ry";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crz" "IK_lowerLeg_CTLaim.rz";
connectAttr "leg_softIK_output.output_lower_softik" "lowerLeg_softIK_output_LOC.tx"
		;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.ox" "lowerLeg_stretch_output_LOC.tx"
		;
connectAttr "IK_ankle_flex_CTL.r" "IK_ankle_flex_local_spcGRP.r";
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
connectAttr "input_hip.t" "leg_CTL_GRP.t";
connectAttr "input_hip.r" "leg_CTL_GRP.r";
connectAttr "input_hip.s" "leg_CTL_GRP.s";
connectAttr "leg_switch_CTL.FK_IK" "IK_leg_CTL_GRP.v";
connectAttr "input_thigh.t" "IK_leg_CTL_GRP.t";
connectAttr "IK_ankle_offGRP_space_DCMX.ot" "IK_ankle_offGRP.t";
connectAttr "IK_ankle_local_space_DCMX.ot" "IK_ankle_local_space.t";
connectAttr "makeNurbCircle5.oc" "IK_B_toe_CTLShape.cr";
connectAttr "hip_L_CTL.t" "hip_L_space_spcGRP.t";
connectAttr "hip_L_CTL.r" "hip_L_space_spcGRP.r";
connectAttr "hip_L_CTL.s" "hip_L_space_spcGRP.s";
connectAttr "upper_poleVec_offGRP_space_DCMX.ot" "upper_poleVec_offGRP.t";
connectAttr "upper_poleVec_offGRP_space_DCMX.or" "upper_poleVec_offGRP.r";
connectAttr "IK_thigh_CTL.t" "upper_flex_poleVec_spcGRP.t";
connectAttr "IK_thigh_CTL.r" "upper_flex_poleVec_spcGRP.r";
connectAttr "lower_flex_poleVec_offGRP_space_DCMX.ot" "lower_flex_poleVec_offGRP.t"
		;
connectAttr "lower_flex_poleVec_offGRP_space_DCMX.or" "lower_flex_poleVec_offGRP.r"
		;
connectAttr "IK_B_toe_CTL.r" "lower_flex_poleVec_spcGRP.r";
connectAttr "IK_B_toe_CTL.t" "lower_flex_poleVec_spcGRP.t";
connectAttr "lower_poleVec_spcGRP_space_DCMX.ot" "lower_poleVec_spcGRP.t";
connectAttr "lower_poleVec_spcGRP_space_DCMX.or" "lower_poleVec_spcGRP.r";
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
connectAttr "leg_switch_CTL_DCMX.ot" "leg_switch_CTL_offGRP.t";
connectAttr "leg_switch_CTL_DCMX.os" "leg_switch_CTL_offGRP.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "IK_thigh_space_MTMX.o" "IK_thigh_space_DCMX.imat";
connectAttr "input_thigh.wm" "IK_thigh_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_thigh_space_MTMX.i[1]";
connectAttr "leg_stretchIK_output.upperStretched_len" "upperLeg_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "leg_stretchIK_output.stretch_ctrl_value" "upperLeg_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "IK_knee_space_MTMX.o" "IK_knee_space_DCMX.imat";
connectAttr "input_knee.wm" "IK_knee_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_knee_space_MTMX.i[1]";
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
connectAttr "input_thigh_local_dist_MTMX.o" "leg_ctrlLen.im1";
connectAttr "IK_lower_local.wm" "ik_leg_ctrl_local_MTMX.i[0]";
connectAttr "input_thigh.wm" "input_thigh_local_dist_MTMX.i[0]";
connectAttr "input_hip.wim" "input_thigh_local_dist_MTMX.i[1]";
connectAttr "IK_ankle_CTL.softIK" "leg_IK_negate_val.i1x";
connectAttr "IK_ankle_CTL.stretchIK" "leg_IK_negate_val.i1y";
connectAttr "uplegLen.d" "softlowerLegLen.i1[0]";
connectAttr "midlegLen.d" "softlowerLegLen.i1[1]";
connectAttr "loLegLen.d" "softlowerLegLen.i1[2]";
connectAttr "input_ankle_local_MTMX.o" "loLegLen.im1";
connectAttr "input_B_toe_local_MTMX.o" "loLegLen.im2";
connectAttr "input_B_toe.wm" "input_B_toe_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_B_toe_local_MTMX.i[1]";
connectAttr "input_knee_local_dist_MTMX.o" "B_toe_ctrlLen.im1";
connectAttr "ik_B_toe_ctrl_local_MTMX.o" "B_toe_ctrlLen.im2";
connectAttr "input_knee.wm" "input_knee_local_dist_MTMX.i[0]";
connectAttr "input_thigh.wim" "input_knee_local_dist_MTMX.i[1]";
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
connectAttr "upper_poleVec_offGRP_space_MTMX.o" "upper_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "input_knee.wm" "upper_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "leg_poleVec_GRP.wim" "upper_poleVec_offGRP_space_MTMX.i[1]";
connectAttr "lower_flex_poleVec_offGRP_space_MTMX.o" "lower_flex_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "IK_B_toe_CTL.wm" "lower_flex_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "lower_flex_poleVec_offGRP.pim" "lower_flex_poleVec_offGRP_space_MTMX.i[1]"
		;
connectAttr "lower_poleVec_spcGRP_space_MTMX.o" "lower_poleVec_spcGRP_space_DCMX.imat"
		;
connectAttr "input_ankle.wm" "lower_poleVec_spcGRP_space_MTMX.i[0]";
connectAttr "lower_flex_poleVec_spcGRP.wim" "lower_poleVec_spcGRP_space_MTMX.i[1]"
		;
connectAttr "leg_switch_CTL.FK_IK" "FK_IK_RVS.ix";
connectAttr "input_ankle.wm" "IK_ankle_offGRP_space_MTMX.i[0]";
connectAttr "IK_leg_CTL_GRP.wim" "IK_ankle_offGRP_space_MTMX.i[1]";
connectAttr "IK_ankle_offGRP_space_MTMX.o" "IK_ankle_offGRP_space_DCMX.imat";
connectAttr "FK_B_toe_CTL.wm" "leg_switch_CTL_CHOI.i[0]";
connectAttr "IK_ankle_CTL.wm" "leg_switch_CTL_CHOI.i[1]";
connectAttr "leg_switch_CTL.FK_IK" "leg_switch_CTL_CHOI.s";
connectAttr "leg_switch_CTL_CHOI.o" "leg_switch_CTL_MTMX.i[0]";
connectAttr "leg_CTL_GRP.wim" "leg_switch_CTL_MTMX.i[1]";
connectAttr "leg_switch_CTL_MTMX.o" "leg_switch_CTL_DCMX.imat";
connectAttr "input_B_toe.wm" "IK_ankle_local_space_MTMX.i[0]";
connectAttr "IK_ankle_spcGRP.wim" "IK_ankle_local_space_MTMX.i[1]";
connectAttr "IK_ankle_local_space_MTMX.o" "IK_ankle_local_space_DCMX.imat";
connectAttr "leg_GRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_motion_GRP.iog" "leg_SET.dsm" -na;
connectAttr "input_hip.iog" "leg_SET.dsm" -na;
connectAttr "input_thigh.iog" "leg_SET.dsm" -na;
connectAttr "input_knee.iog" "leg_SET.dsm" -na;
connectAttr "input_ankle.iog" "leg_SET.dsm" -na;
connectAttr "input_B_toe.iog" "leg_SET.dsm" -na;
connectAttr "motion_IK_GRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_upperLeg_CTLaim.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_softIK_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_stretch_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_local_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_ikHandle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_space_upVec.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_lowerLeg_CTLaim.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_softIK_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_stretch_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_local_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_ikHandle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_space_upVec.iog" "leg_SET.dsm" -na;
connectAttr "leg_softIK_input.iog" "leg_SET.dsm" -na;
connectAttr "leg_softIK_output.iog" "leg_SET.dsm" -na;
connectAttr "leg_stretchIK_input.iog" "leg_SET.dsm" -na;
connectAttr "leg_stretchIK_output.iog" "leg_SET.dsm" -na;
connectAttr "motion_FK_GRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_local_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL_local_spcGRP.iog" "leg_SET.dsm" -na;
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
connectAttr "upper_poleVec_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_flex_poleVec_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_flex_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec_space.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec.iog" "leg_SET.dsm" -na;
connectAttr "lower_flex_poleVec_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "lower_flex_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
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
connectAttr "leg_switch_CTL_CHOI.msg" "leg_SET.dnsm" -na;
connectAttr "leg_for_zerodivide_COND.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_ctrllen_COND.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_softikV_COND.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_ctrllen_COND.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_softikV_COND.msg" "leg_SET.dnsm" -na;
connectAttr "IK_ankle_local_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_ankle_offGRP_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_knee_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "leg_switch_CTL_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "lower_flex_poleVec_offGRP_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "lower_poleVec_spcGRP_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "B_toe_ctrlLen.msg" "leg_SET.dnsm" -na;
connectAttr "leg_ctrlLen.msg" "leg_SET.dnsm" -na;
connectAttr "loLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "midlegLen.msg" "leg_SET.dnsm" -na;
connectAttr "uplegLen.msg" "leg_SET.dnsm" -na;
connectAttr "IK_ankle_local_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_ankle_offGRP_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_B_toe_ctrl_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_knee_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_leg_ctrl_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_B_toe_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee_local_dist_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_thigh_local_dist_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_thigh_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "leg_switch_CTL_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "lower_flex_poleVec_offGRP_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "lower_poleVec_spcGRP_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_space_MTMX.msg" "leg_SET.dnsm" -na;
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
connectAttr "input_thigh_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_ankle_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_B_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uplegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midlegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softupperLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_leg_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_thigh_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
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
connectAttr "input_knee_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
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
connectAttr "IK_knee_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_knee_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lower_poleVec_spcGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lower_poleVec_spcGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "IK_ankle_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_ankle_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_switch_CTL_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_switch_CTL_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_switch_CTL_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_ankle_local_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_ankle_local_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of quadruped_leg.ma
