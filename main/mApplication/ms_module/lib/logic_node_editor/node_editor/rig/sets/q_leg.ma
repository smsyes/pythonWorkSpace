//Maya ASCII 2019 scene
//Name: q_leg.ma
//Last modified: Tue, Jun 22, 2021 02:04:22 PM
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
	rename -uid "B234CAD8-448B-C13D-D84D-F499CD193D3F";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 2 ".iog";
	setAttr -s 8 ".init";
	setAttr -k on ".prefixType";
createNode transform -n "leg_motion_GRP" -p "leg_GRP";
	rename -uid "5FC8DE4E-4E5D-DA4D-A6FD-B5B14C9BF30A";
createNode transform -n "input_hip" -p "leg_motion_GRP";
	rename -uid "65E0E5D9-4B94-F4D7-5D5C-EF89B865FD06";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode transform -n "input_thigh" -p "input_hip";
	rename -uid "EA137511-43F2-5828-875D-16A698BA0ECD";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 2.0713150501251221 -2.5815366105945259 -3.808582305908196 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "input_F_knee" -p "input_thigh";
	rename -uid "0392808B-4EEC-1737-BCB2-DF81C6B6D27C";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 15.556728957302013 0 -4.3035299768234836e-07 ;
	setAttr ".r" -type "double3" 0 31.269644285477174 0 ;
	setAttr ".s" -type "double3" 1.0000000519103551 1 1.0000000519103551 ;
createNode transform -n "input_B_knee" -p "input_F_knee";
	rename -uid "96B62E24-4C09-C5B0-25CB-0EB003F35DFF";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 11.553380621947188 -8.8817841970012523e-16 2.5981660556340103e-07 ;
	setAttr ".r" -type "double3" 0 -31.528015707152111 0 ;
	setAttr ".s" -type "double3" 0.99999994890369348 1 0.99999994890369348 ;
createNode transform -n "input_ankle" -p "input_B_knee";
	rename -uid "49B2B4C1-47E3-9052-8453-9EB474D1F099";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 10.443978722141399 1.7763568394002505e-15 4.8194399582257574e-07 ;
	setAttr ".r" -type "double3" 0 -48.499341944216738 0 ;
	setAttr ".s" -type "double3" 1 1.0000000142892349 1.0000000142892349 ;
createNode transform -n "input_hind_toe" -p "input_ankle";
	rename -uid "E9DE8B11-4536-70BF-C007-0AADE6FC00A1";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 1.2635080671143939 -1.7763568394002505e-15 2.0951314638750773e-07 ;
	setAttr ".r" -type "double3" 6.1621949141614935e-09 -15.478212812316018 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "input_hind_tiptoe" -p "input_hind_toe";
	rename -uid "EEE9385D-4B39-AE3F-89C6-DF8782FAD0E9";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 3.6600722913155082 -8.8817841970012523e-16 -1.9375632120954833e-07 ;
	setAttr ".r" -type "double3" 64.235926178207706 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "motion_IK_GRP" -p "leg_motion_GRP";
	rename -uid "760AE574-4547-483A-725A-E4B6592B17DA";
	setAttr -s 2 ".iog";
createNode transform -n "IK_thigh_space" -p "motion_IK_GRP";
	rename -uid "1821D2A3-4E6D-4C33-5D02-F980D3D2DEF2";
	setAttr ".v" no;
createNode locator -n "IK_thigh_spaceShape" -p "IK_thigh_space";
	rename -uid "2FA1D2B7-412B-B3C8-FC5B-A98834DFE978";
	setAttr -k off ".v";
createNode transform -n "IK_upperLeg_CTLaim" -p "IK_thigh_space";
	rename -uid "165FF8E4-4FDE-D08E-68A8-CE8C83D706AB";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "IK_upperLeg_CTLaimShape" -p "IK_upperLeg_CTLaim";
	rename -uid "A66759F1-45EC-DE48-132A-04A38EF5E0C8";
	setAttr -k off ".v";
createNode transform -n "upperLeg_softIK_output_LOC" -p "IK_upperLeg_CTLaim";
	rename -uid "B364A856-4A5A-CB48-38C1-83A1E5B109EE";
	setAttr ".t" -type "double3" 26.129291534423828 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_softIK_output_LOCShape" -p "upperLeg_softIK_output_LOC";
	rename -uid "CD577792-433A-C58A-FCAD-618024578445";
	setAttr -k off ".v";
createNode transform -n "upperLeg_stretch_output_LOC" -p "upperLeg_softIK_output_LOC";
	rename -uid "61EC7810-453F-9BF4-CF56-E0ACD7EE3816";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_stretch_output_LOCShape" -p "upperLeg_stretch_output_LOC";
	rename -uid "296A6283-4126-E95B-56CC-FC9E796455FE";
	setAttr -k off ".v";
createNode transform -n "B_ankle_space_GRP" -p "upperLeg_stretch_output_LOC";
	rename -uid "413A5F5C-4A42-480D-9FA3-EC84D8B1BF06";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 1.0589691576967653e-06 2.6645352591003757e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 -13.526681204479067 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "B_ankle_space" -p "B_ankle_space_GRP";
	rename -uid "40D53659-470F-8AD1-CEBC-C59FACD58AAE";
createNode ikHandle -n "ikHandle9" -p "B_ankle_space";
	rename -uid "0D1D1B07-4C6A-D950-18BB-E9BF92D9ED7A";
	setAttr ".t" -type "double3" -6.9139960423569846e-07 0 3.3208003102913608e-07 ;
	setAttr ".r" -type "double3" 0.25837142167494115 0 90 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000151032806 1.0000000151032806 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle9_poleVectorConstraint1" -p "ikHandle9";
	rename -uid "287B7146-4E41-8100-55C5-E5AF08E2BDD3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_poleVecW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -4.4408920985006262e-15 -23.342723830995276 12.821008896843679 ;
	setAttr -k on ".w0";
createNode transform -n "IK_knee_space" -p "upperLeg_stretch_output_LOC";
	rename -uid "4F977FA3-4106-D68F-F7A5-F3BC09AF892E";
	setAttr -s 2 ".iog";
	setAttr ".s" -type "double3" 1.0000000008140462 1 1.0000000008140462 ;
	setAttr ".sh" -type "double3" 0 -9.8073115450991193e-09 0 ;
createNode locator -n "IK_knee_spaceShape" -p "IK_knee_space";
	rename -uid "4CB9C1CF-4D92-453F-76F6-ABA76CA433C6";
	setAttr -k off ".v";
createNode transform -n "IK_lowerLeg_CTLaim" -p "IK_knee_space";
	rename -uid "E38D0DAA-40A3-6C7C-4BBE-67952F99ED85";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "IK_lowerLeg_CTLaimShape" -p "IK_lowerLeg_CTLaim";
	rename -uid "F5FBDDA0-4C09-9A8D-5AD4-5797C80342E9";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_softIK_output_LOC" -p "IK_lowerLeg_CTLaim";
	rename -uid "DD55A8AC-4B44-1FA5-9770-F8A66DE9D1E9";
	setAttr ".t" -type "double3" 10.443978309631348 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_softIK_output_LOCShape" -p "lowerLeg_softIK_output_LOC";
	rename -uid "512D807D-45E0-4E33-DB75-DEAC676EE096";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_stretch_output_LOC" -p "lowerLeg_softIK_output_LOC";
	rename -uid "FBFE3F90-4783-14E4-3F3F-09ABD2650E90";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_stretch_output_LOCShape" -p "lowerLeg_stretch_output_LOC";
	rename -uid "C65C927D-4C5C-6F5A-349E-99BC76BC8622";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle6" -p "lowerLeg_stretch_output_LOC";
	rename -uid "FFF1A148-475F-2195-F411-B7A6771290B3";
	setAttr ".t" -type "double3" 1.0098834462013428e-06 -8.8817841970012523e-16 3.3508985808339276e-08 ;
	setAttr ".s" -type "double3" 1.000000016519516 1 1.0000000120589532 ;
	setAttr ".sh" -type "double3" 0 8.734228007183687e-09 0 ;
	setAttr ".pv" -type "double3" 0.0045094303984040763 5.5511151231257827e-17 0.99998984456560447 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "IK_lowerLeg_CTLaim_aimConstraint1" -p "IK_lowerLeg_CTLaim";
	rename -uid "7DE78E93-4D6A-63BD-E4B3-E29DF76457E2";
	addAttr -dcb 0 -ci true -sn "w0" -ln "B_ankleW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -5.9434180450864692e-16 -13.526681452866381 5.0115711424517593e-15 ;
	setAttr -k on ".w0";
createNode transform -n "IK_knee_space_upVec" -p "IK_knee_space";
	rename -uid "8630146B-4671-78DB-FF3E-E2840E0F0A2F";
	setAttr ".t" -type "double3" -1.6695378642591435e-15 1 8.3968127717560347e-15 ;
createNode locator -n "IK_knee_space_upVecShape" -p "IK_knee_space_upVec";
	rename -uid "4E68BD59-4C54-7CD8-5B50-F78F75D7DB1A";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upperLeg_CTLaim_aimConstraint1" -p "IK_upperLeg_CTLaim";
	rename -uid "2DA3BEA1-4806-191C-9113-B6844E561CD7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "B_knee_spaceW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 2.3273179455478037e-16 13.268309782804122 2.0009941203097114e-15 ;
	setAttr -k on ".w0";
createNode transform -n "IK_thigh_space_upVec" -p "IK_thigh_space";
	rename -uid "111CC0DA-4871-2E4E-D491-9BA75F1018BE";
	setAttr ".t" -type "double3" 6.2325491732529114e-15 1 -6.0636337963556973e-15 ;
createNode locator -n "IK_thigh_space_upVecShape" -p "IK_thigh_space_upVec";
	rename -uid "11BE846C-4A63-F5F2-824D-268F19DFF062";
	setAttr -k off ".v";
createNode transform -n "leg_softIK_input" -p "motion_IK_GRP";
	rename -uid "2C9555A4-4CBA-142C-C0A1-BCA48B2D1499";
	addAttr -ci true -sn "upper_legLen" -ln "upper_legLen" -at "double";
	addAttr -ci true -sn "upper_ctrlLen" -ln "upper_ctrlLen" -at "double";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lower_legLen" -ln "lower_legLen" -at "double";
	addAttr -ci true -sn "lower_ctrlLen" -ln "lower_ctrlLen" -at "double";
	setAttr -l on -k off ".v";
	setAttr -s 2 ".iog";
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
	rename -uid "F71CA5D0-4195-EAD8-86F6-5C9D033DC76A";
	addAttr -ci true -sn "output_upper_softik" -ln "output_upper_softik" -at "double";
	addAttr -ci true -sn "output_lower_softik" -ln "output_lower_softik" -at "double";
	setAttr -l on -k off ".v";
	setAttr -s 2 ".iog";
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
	rename -uid "C2D558B1-40B2-7CEE-845C-40AA7289C206";
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
	setAttr -s 2 ".iog";
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
	rename -uid "D51C7359-46E1-1CAB-F98C-889B40133465";
	addAttr -ci true -sn "midLeg_stretched" -ln "midLeg_stretched" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "upperStretched_len" -ln "upperStretched_len" -at "double";
	addAttr -ci true -sn "upleg_stretched" -ln "upleg_stretched" -at "double";
	addAttr -ci true -sn "loLeg_Stretched" -ln "loLeg_Stretched" -at "double";
	addAttr -ci true -sn "lowerStretched_len" -ln "lowerStretched_len" -at "double";
	setAttr -l on -k off ".v";
	setAttr -s 2 ".iog";
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
createNode joint -n "IK_hip" -p "motion_IK_GRP";
	rename -uid "6932C0FB-42CA-4D11-5B42-718CB3335840";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_thigh" -p "IK_hip";
	rename -uid "870354BD-449D-93B3-9868-E19E2A33D0B9";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_knee" -p "IK_thigh";
	rename -uid "249CA28D-4FC3-C2B6-7CD3-8C95619AF366";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" 0 9.907333781148098e-14 0 ;
	setAttr ".s" -type "double3" 0.99999998688804204 1 0.99999998688804204 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_knee" -p "IK_F_knee";
	rename -uid "A3D243D4-4A11-A713-16DE-0BB7EFA4EB20";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_ankle" -p "IK_B_knee";
	rename -uid "E8675C98-477D-8B48-26F7-71BD3D59AB94";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -2.5444437451707787e-14 3.5772149371036417e-29 -4.2191611492772445e-21 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_toe" -p "IK_ankle";
	rename -uid "EC664C2E-4778-F807-C25C-A2B9FC64F32E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_tiptoe" -p "IK_hind_toe";
	rename -uid "FE50DC80-4862-C9C3-28F4-76B0B0B4F8F5";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999999258654459 0.99999999290083708 0.99999998828870273 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector8" -p "IK_hind_toe";
	rename -uid "38E1A2A6-4170-A227-D46E-2982ED8F6E9B";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "IK_ankle";
	rename -uid "4D0A1319-4B13-12D1-46DD-9284E09B4BEE";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector6" -p "IK_B_knee";
	rename -uid "823A33A5-4A4D-B536-781B-6B9BE1F72103";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector9" -p "IK_F_knee";
	rename -uid "5A152D90-479A-4D0D-2E51-B992BB949A1E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation2" -p "IK_F_knee";
	rename -uid "E9D8CC91-40BA-AEEB-2C8B-6E8DDC1D834E";
	setAttr ".r" -type "double3" -31.269644285477167 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000131119584 1.0000000131119584 ;
createNode annotationShape -n "annotationShape2" -p "annotation2";
	rename -uid "A94B38B8-4073-A58C-30F5-67A5CFBCF4AB";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode transform -n "IK_hip_aim_space" -p "motion_IK_GRP";
	rename -uid "41567FBE-4D00-F07A-54A5-E0BFBA052987";
createNode pointConstraint -n "IK_hip_aim_space_pointConstraint1" -p "IK_hip_aim_space";
	rename -uid "559ED6A0-45EA-9359-F4D3-76A1F4478F7F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hipW0" -dv 1 -min 0 -at "double";
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
createNode aimConstraint -n "IK_hip_aim_space_aimConstraint1" -p "IK_hip_aim_space";
	rename -uid "3AF3B19A-4EEE-B824-ADA8-11857C1D13E8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "B_foot_CTLW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -12.159274089598272 0 -2.8355527164634591 ;
	setAttr ".rsrr" -type "double3" -4.6046604641255509e-15 1.6274500735713635e-12 3.5065615363135272e-13 ;
	setAttr -k on ".w0";
createNode transform -n "motion_FK_GRP" -p "leg_motion_GRP";
	rename -uid "D6CD90B6-4537-3CAF-4302-C49519F9182A";
createNode joint -n "FK_hip" -p "motion_FK_GRP";
	rename -uid "0FD00550-40F8-AD90-32F6-BE933438D999";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_thigh" -p "FK_hip";
	rename -uid "30CAC9F2-48BE-8915-99D9-33A1B2699E69";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_F_knee" -p "FK_thigh";
	rename -uid "44DC02C5-4DD9-D5FA-0BE5-EEA51E54A2BB";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_B_knee" -p "FK_F_knee";
	rename -uid "66DC6761-4E60-5714-B1C8-0C9409595B0C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_ankle" -p "FK_B_knee";
	rename -uid "C828BB05-48DB-5CCC-8A6B-C48F77C5C252";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_toe" -p "FK_ankle";
	rename -uid "6839F2F4-47FD-7614-BBD1-BFAD65F5D676";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_tiptoe" -p "FK_hind_toe";
	rename -uid "50DFFD88-4DBE-F901-AF7F-2DA3D074900B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 3.6600722913155082 -8.8817841970012523e-16 -1.9375632120954833e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000184310067 1.0000000019227699 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "leg_CTL_GRP" -p "leg_GRP";
	rename -uid "F0CDE8ED-4801-BF5D-EF2B-F68BD1842F33";
	setAttr -s 2 ".iog";
createNode transform -n "hip_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "A5F961F5-4AB8-89F7-5586-A098F9F9F628";
createNode transform -n "hip_CTL_spcGRP" -p "hip_CTL_offGRP";
	rename -uid "BB22FE50-413D-6A23-48CB-75BFC6E76493";
createNode transform -n "hip_CTL" -p "hip_CTL_spcGRP";
	rename -uid "B01BB7E9-49C3-EF46-BB94-D9A1A5F310AF";
	setAttr -s 2 ".iog";
createNode nurbsCurve -n "hip_CTLShape" -p "hip_CTL";
	rename -uid "A1A3D057-4BBF-D3B2-912F-FABCFF577A35";
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
createNode transform -n "hip_CTL_ivsScale" -p "hip_CTL";
	rename -uid "442BDD66-4B0C-2F37-9896-16B3D0AAC2DA";
createNode transform -n "IK_thigh_CTL_offGRP" -p "hip_CTL_ivsScale";
	rename -uid "516739DA-4B06-3BD9-696C-A19312EC87A3";
	setAttr -s 2 ".iog";
createNode transform -n "IK_thigh_CTL_spcGRP" -p "IK_thigh_CTL_offGRP";
	rename -uid "DAA7988E-4BDE-4014-F5E5-6E814FE3F100";
	setAttr -s 2 ".iog";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "IK_thigh_CTL" -p "IK_thigh_CTL_spcGRP";
	rename -uid "0403ACFD-4E9F-DA82-F8B9-998C0848B9FA";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_thigh_CTLShape" -p "IK_thigh_CTL";
	rename -uid "9D648E97-4CC8-28EF-EAEA-34B97800DE11";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.4999999999999996 1.6282381585168533e-15 2.5000658633535129
		3.4999999999999996 0.95673270478571404 2.3097608498350453
		3.4999999999999996 1.7678140724383156 1.76781407243831
		3.4999999999999996 2.309760849835047 0.95673270478571215
		3.5000000000000004 2.5000658633535138 1.0414336611847825e-15
		3.4999999999999996 2.309760849835047 -0.95673270478571382
		3.5000000000000004 1.7678140724383147 -1.7678140724383096
		3.5000000000000004 0.95673270478571315 -2.3097608498350422
		3.5000000000000004 7.6683553226961245e-16 -2.5000658633535102
		3.5000000000000004 -0.95673270478571149 -2.3097608498350422
		3.5000000000000004 -1.7678140724383136 -1.7678140724383096
		3.5000000000000004 -2.309760849835043 -0.95673270478571382
		3.5000000000000004 -2.5000658633535102 1.0414336611847825e-15
		3.5000000000000004 -2.309760849835043 0.95673270478571282
		3.4999999999999996 -1.7678140724383127 1.7678140724383107
		3.4999999999999996 -0.9567327047857106 2.3097608498350453
		3.4999999999999996 1.6282381585168533e-15 2.5000658633535129
		;
createNode transform -n "IK_B_ankle_upVec" -p "IK_thigh_CTL";
	rename -uid "CB8F4545-4E34-7DF3-AC29-C7A66C3ED32F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode locator -n "IK_B_ankle_upVecShape" -p "IK_B_ankle_upVec";
	rename -uid "AD0BE6C5-4896-C68A-3871-9C9ED46EBA33";
	setAttr -k off ".v";
createNode transform -n "IK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "B3C0371B-4D89-8E96-A46A-0CA75E89A878";
	setAttr -s 2 ".iog";
	setAttr ".r" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "B_foot_CTL_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "B36191F4-4B2C-0C4E-C0BE-43BDD4F53564";
	setAttr ".t" -type "double3" 38.596635090173251 0 1.4671939513296905 ;
	setAttr ".r" -type "double3" -9.6145742939888379 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000151032806 1.0000000151032806 ;
createNode transform -n "B_foot_CTL_spcGRP" -p "B_foot_CTL_offGRP";
	rename -uid "F64BE9B0-418F-9973-4092-81A958ECDD18";
createNode transform -n "B_foot_CTL" -p "B_foot_CTL_spcGRP";
	rename -uid "E2A079E6-4A87-556F-65E1-45BC362315B0";
	addAttr -ci true -sn "roll" -ln "roll" -at "double";
	addAttr -ci true -sn "rollStartAngle" -ln "rollStartAngle" -at "double";
	addAttr -ci true -sn "bank" -ln "bank" -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -at "double";
	addAttr -ci true -sn "stretch" -ln "stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "toesAim" -ln "toesAim" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".roll";
	setAttr -k on ".rollStartAngle" 15;
	setAttr -k on ".bank";
	setAttr -k on ".heelTwist";
	setAttr -k on ".toeTwist";
	setAttr -k on ".stretch";
	setAttr -k on ".softIK";
	setAttr -k on ".toesAim" 10;
createNode transform -n "B_heel" -p "B_foot_CTL";
	rename -uid "5B857EA6-4AFE-5B0E-49DC-6E906EC48C17";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00047531438057291098 1.1102230246251565e-15 -2.1991176605224583 ;
createNode locator -n "B_heelShape" -p "B_heel";
	rename -uid "2B12AFF9-4591-19D1-98B2-6CB996377075";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_heel_CTL" -p "B_heel";
	rename -uid "37964342-401F-4B4C-92FD-0FA0CAA35BB4";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_heel_CTLShape" -p "B_heel_CTL";
	rename -uid "7BF91335-422F-E98A-18AC-C6B48E7CABF1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.4010816158446283e-16 3.4010816158446278e-16 1
		-2.2827795969109785e-16 0.38268300000000022 0.92387999999999992
		-1.8856883524998227e-16 0.70710699999999993 0.70710699999999982
		2.5578445730976182e-18 0.92388000000000015 0.38268299999999966
		7.3789722912146118e-18 0.99999999999999978 -3.7470027081099033e-16
		4.0077815862813639e-16 0.92387999999999981 -0.38268300000000033
		3.9761580914181381e-16 0.70710699999999949 -0.70710700000000026
		4.5120272139074375e-16 0.38268299999999955 -0.92388000000000015
		4.1037725739814955e-16 -4.1037725739814955e-16 -1
		3.6793599454385696e-16 -0.38268300000000022 -0.92387999999999992
		1.4781562860115339e-16 -0.70710700000000004 -0.70710699999999982
		6.7711251240589177e-17 -0.92388000000000015 -0.38268299999999966
		6.2890123522472152e-17 -0.99999999999999978 3.7470027081099033e-16
		-3.3050906281444956e-16 -0.92387999999999981 0.38268300000000033
		-2.4407998648124024e-16 -0.70710699999999971 0.70710700000000026
		-3.8093362557705698e-16 -0.38268299999999955 0.92388000000000015
		-3.4010816158446283e-16 3.4010816158446278e-16 1
		;
createNode transform -n "B_heel_out" -p "B_heel_CTL";
	rename -uid "851A6657-4CA9-275A-1272-679A5CF00C9A";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.6304045646172298 -1.1102230246251565e-15 0.0071562015207398133 ;
createNode locator -n "B_heel_outShape" -p "B_heel_out";
	rename -uid "7078B0CD-4507-5100-A0E3-FCB476806C5F";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_heel_in" -p "B_heel_CTL";
	rename -uid "58C01F6C-48AB-D2E8-E691-B5A4CE1EA247";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.6293138535041081 -8.8817841970012484e-16 0.0071562015207398133 ;
createNode locator -n "B_heel_inShape" -p "B_heel_in";
	rename -uid "5E4274BE-4F97-C7E4-9FEC-EE9629BDBD79";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_toe" -p "B_heel_CTL";
	rename -uid "8DFBAEC1-4F86-83B7-84BF-78A3495AD043";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00047531438057557551 2.8648354982420945e-07 5.4953481166846885 ;
createNode locator -n "B_toeShape" -p "B_toe";
	rename -uid "5FD19FD7-4B4B-1F2A-666E-9ABA8A5B7BCE";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_toe_CTL" -p "B_toe";
	rename -uid "AD1B3BE1-4FBA-2A9F-E135-93A3D8CF8C5F";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_toe_CTLShape" -p "B_toe_CTL";
	rename -uid "95B814D7-47F0-88FE-1C05-73BB7AC45063";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.4010816158446283e-16 3.4010816158446278e-16 1
		-2.2827795969109785e-16 0.38268300000000022 0.92387999999999992
		-1.8856883524998227e-16 0.70710699999999993 0.70710699999999982
		2.5578445730976182e-18 0.92388000000000015 0.38268299999999966
		7.3789722912146118e-18 0.99999999999999978 -3.7470027081099033e-16
		4.0077815862813639e-16 0.92387999999999981 -0.38268300000000033
		3.9761580914181381e-16 0.70710699999999949 -0.70710700000000026
		4.5120272139074375e-16 0.38268299999999955 -0.92388000000000015
		4.1037725739814955e-16 -4.1037725739814955e-16 -1
		3.6793599454385696e-16 -0.38268300000000022 -0.92387999999999992
		1.4781562860115339e-16 -0.70710700000000004 -0.70710699999999982
		6.7711251240589177e-17 -0.92388000000000015 -0.38268299999999966
		6.2890123522472152e-17 -0.99999999999999978 3.7470027081099033e-16
		-3.3050906281444956e-16 -0.92387999999999981 0.38268300000000033
		-2.4407998648124024e-16 -0.70710699999999971 0.70710700000000026
		-3.8093362557705698e-16 -0.38268299999999955 0.92388000000000015
		-3.4010816158446283e-16 3.4010816158446278e-16 1
		;
createNode transform -n "B_ball" -p "B_toe_CTL";
	rename -uid "625B87A6-408C-B646-B656-68967232EF3B";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.5909109058722251 -3.2962298632919591 ;
createNode locator -n "B_ballShape" -p "B_ball";
	rename -uid "805D1B27-4FE7-34E2-51CF-C3B4E372C359";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_ball_CTL" -p "B_ball";
	rename -uid "FC772B65-4C5A-57A3-83AF-B39370184E2E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_ball_CTLShape" -p "B_ball_CTL";
	rename -uid "95D44FBB-4128-AFE1-4328-BFA4B33D00EE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-5.7138171146189772e-16 -0.28320660591125441 2.0030229568481448
		-3.835069722810444e-16 0.35970083408874542 1.8751413568481463
		-3.1679564321997026e-16 0.904733154088745 1.5109627168481445
		4.2971788828039997e-18 1.2689117940887453 0.96593039684814364
		1.2396673449240555e-17 1.3967933940887447 0.32302295684814386
		6.7330730649526897e-16 1.2689117940887447 -0.31988448315185608
		6.6799455935824706e-16 0.90473315408874466 -0.86491680315185571
		7.5802057193644954e-16 0.35970083408874431 -1.2290954431518561
		6.8943379242889094e-16 -0.28320660591125552 -1.3569770431518549
		6.1813247083367964e-16 -0.92611404591125446 -1.2290954431518561
		2.4833025604993761e-16 -1.4711463659112545 -0.86491680315185504
		1.1375490208418987e-16 -1.8353250059112558 -0.31988448315185503
		1.0565540751775322e-16 -1.9632066059112552 0.32302295684814519
		-5.5525522552827534e-16 -1.8353250059112558 0.96593039684814452
		-4.1005437728848359e-16 -1.4711463659112536 1.5109627168481452
		-6.3996849096945572e-16 -0.92611404591125412 1.8751413568481463
		-5.7138171146189772e-16 -0.28320660591125441 2.0030229568481448
		;
createNode transform -n "B_ankle" -p "B_ball_CTL";
	rename -uid "5124AC64-4872-2BF4-9A2E-5B9A4710F7BB";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0.83296069292618813 -0.95006793129699574 ;
createNode locator -n "B_ankleShape" -p "B_ankle";
	rename -uid "EFE5D0C9-481F-6F6C-87F3-1192575764A3";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_ankle_CTL_offGRP" -p "B_ankle";
	rename -uid "D282761C-41AE-FB36-F6DE-5B9DBE10C029";
createNode transform -n "B_ankle_CTL_spcGRP" -p "B_ankle_CTL_offGRP";
	rename -uid "A729EF35-4444-D081-8009-C69F0DB3DA85";
createNode transform -n "B_ankle_CTL" -p "B_ankle_CTL_spcGRP";
	rename -uid "E0F43D06-4509-BCDF-0559-10B6BBAA9C74";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_ankle_CTLShape" -p "B_ankle_CTL";
	rename -uid "0625022E-4EBF-3366-C9D4-2C95DA204BAC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-7.42796224900467e-16 0.28320660591125563 1.8609770431518551
		-4.9855906396535768e-16 1.118986277911254 1.6947309631518563
		-4.1183433618596129e-16 1.8275282939112536 1.2212987311518553
		5.5863325476452e-18 2.3009605259112558 0.51275671515185517
		1.611567548401272e-17 2.467206605911255 -0.32302295684814514
		8.7529949844384953e-16 2.3009605259112558 -1.1588026288481439
		8.6839292716572104e-16 1.8275282939112532 -1.867344644848145
		9.8542674351738436e-16 1.118986277911254 -2.3407768768481461
		8.9626393015755818e-16 0.28320660591125407 -2.5070229568481444
		8.0357221208378343e-16 -0.55257306608874557 -2.3407768768481461
		3.228293328649189e-16 -1.2611150820887453 -1.8673446448481441
		1.4788137270944681e-16 -1.7345473140887453 -1.158802628848143
		1.3735202977307916e-16 -1.9007933940887445 -0.32302295684814336
		-7.2183179318675786e-16 -1.7345473140887444 0.51275671515185661
		-5.3307069047502864e-16 -1.2611150820887449 1.2212987311518562
		-8.319590382602923e-16 -0.55257306608874412 1.6947309631518563
		-7.42796224900467e-16 0.28320660591125563 1.8609770431518551
		;
createNode transform -n "B_ankle_aim_space" -p "B_ankle_CTL";
	rename -uid "E01B8BAE-4629-177F-75A4-069E8CCB535C";
	setAttr ".v" no;
createNode transform -n "B_knee_space_GRP" -p "B_ankle_aim_space";
	rename -uid "10EDC914-4949-B893-824D-B5BE0ACE5EBA";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 10.443872381879702 -0.047096733519250478 ;
	setAttr ".r" -type "double3" 0 -0.25837142167493932 -90 ;
	setAttr ".s" -type "double3" 0.99999998571076532 1 0.99999998571076565 ;
createNode transform -n "B_knee_space" -p "B_knee_space_GRP";
	rename -uid "A8F21A17-4D60-9FF2-2BAC-97BEFCFBF613";
	setAttr ".s" -type "double3" 1.0000000142892349 1 1.0000000142892347 ;
createNode locator -n "B_knee_spaceShape" -p "B_knee_space";
	rename -uid "AEB0C911-456E-2B82-38CE-B6B93690F1A5";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle7" -p "B_knee_space";
	rename -uid "B64BEE49-41B7-9BFB-9B36-51BC4D963659";
	setAttr ".r" -type "double3" 0 -48.499341944216738 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".pv" -type "double3" 0.0045094167181025544 0 0.99998983252874252 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle7_pointConstraint1" -p "ikHandle7";
	rename -uid "FE5C9B33-4534-EDA5-2CC0-DB9FEA4F04B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "B_ballW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -7.1755830077790961e-07 -1.7763568394002505e-15 4.62435792769611e-07 ;
	setAttr ".rst" -type "double3" 11.281214609501008 -1.7763568394002505e-15 0.94630245488372111 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle8" -p "B_knee_space";
	rename -uid "F27A1BB9-46CC-9C7F-5AD2-C7BBFF45FAAE";
	setAttr ".r" -type "double3" 0 -63.977554756532754 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".pv" -type "double3" 0.0045094167181025544 0 0.99998983252874252 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle8_pointConstraint1" -p "ikHandle8";
	rename -uid "ED209D3A-4F96-9A68-3D2E-12BE42458FB0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "B_toeW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -7.0823152675814072e-07 -1.7763568394002505e-15 1.3872988091634397e-08 ;
	setAttr ".rst" -type "double3" 12.886973430941293 -1.7763568394002505e-15 4.2353247278944259 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "B_ankle_aim_space_aimConstraint1" -p "B_ankle_aim_space";
	rename -uid "B4A4BAB7-4E44-61F3-7218-2CADAFBA30B5";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_thighW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "IK_thigh_aim_spaceW1" -dv 1 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -9.4166264201482033 0 0 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-15 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode nurbsCurve -n "B_foot_CTLShape" -p "B_foot_CTL";
	rename -uid "A62F7EAC-4CCF-AE0E-7555-5E9A33F52157";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0.59831371024901969 0 4.2000000000000028
		2.0706098493219156 0 3.8802960000000035
		3.1137432048280855 0 2.9703794045013456
		3.5926390381672211 0 1.6440712256561316
		3.5906288595562699 0 0.16895928382873884
		3.2324304198705511 0 -1.1806252045761076
		2.5625544067924437 0 -2.2000507635635338
		1.6473311418609986 0 -2.8042898020706168
		0.59831371024901969 0 -2.9999999999999964
		-0.45070372136295922 0 -2.8042898020706168
		-1.3659269862944043 0 -2.2000507635635338
		-2.0358029993725117 0 -1.1806252045761076
		-2.3940011987323029 0 0.16895942687988624
		-2.3960116176691817 0 1.6440712971817053
		-1.9171157843300461 0 2.9703794045013456
		-0.87398242882387622 0 3.8802960000000035
		0.59831371024901969 0 4.2000000000000028
		;
createNode transform -n "B_foot_upVec" -p "B_foot_CTL";
	rename -uid "DDAB9D17-44D6-2345-F70F-C5BC7F205DBD";
	setAttr ".t" -type "double3" 5 0 0 ;
createNode transform -n "IK_thigh_aim_space" -p "B_foot_CTL";
	rename -uid "50541382-438B-81F8-C806-A29FFE90A5E6";
	setAttr ".t" -type "double3" 0 38.299540202149615 4.999807357788093 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
createNode transform -n "B_poleVec_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "B9C9C807-434C-27DA-75C9-848153732946";
	setAttr ".s" -type "double3" 1.0000000110780887 0.99999999999999967 1.0000000191284719 ;
	setAttr ".sh" -type "double3" 0 6.0830007089158456e-09 0 ;
createNode transform -n "B_poleVec_space" -p "B_poleVec_offGRP";
	rename -uid "32985FB1-4A6B-5522-1FE4-7BA3CE08D92F";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
createNode transform -n "B_poleVec_CTL" -p "B_poleVec_space";
	rename -uid "22C90FD3-44BE-4565-8BB2-5D8B2B51E345";
	addAttr -ci true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".follow" 10;
createNode nurbsCurve -n "B_poleVec_CTLShape" -p "B_poleVec_CTL";
	rename -uid "8972B0D3-4AE9-AA6D-1E56-0787A4C7ADCB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 -1 0
		0 1 0
		0 0 0
		-1 0 0
		1 0 0
		0 0 0
		0 0 1
		0 0 -1
		;
createNode parentConstraint -n "B_poleVec_space_parentConstraint1" -p "B_poleVec_space";
	rename -uid "E02ED881-403B-A86E-4C2D-D393A3D54C58";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hip_aim_spaceW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.0713150501251172 -25.924260699759756 9.0124265408856683 ;
	setAttr ".tg[0].tor" -type "double3" 0 31.26964461403503 -90 ;
	setAttr ".lr" -type "double3" 0 4.3929456132696651e-07 0 ;
	setAttr ".rst" -type "double3" -1.4210854715202004e-14 -5.3290705182007514e-15 15.000000000000002 ;
	setAttr -k on ".w0";
createNode transform -n "FK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "7FD9AEDA-4C89-09CA-BDD0-09BB169339CB";
createNode transform -n "FK_hip_offGRP" -p "FK_leg_CTL_GRP";
	rename -uid "9AFBB129-427B-5D5B-7B9B-FC881D52DF79";
createNode transform -n "FK_hip_space" -p "FK_hip_offGRP";
	rename -uid "EE4E31E0-4B6B-A1AD-6B0F-3CABE37B40F5";
createNode transform -n "FK_hip_space_ivsScale" -p "FK_hip_space";
	rename -uid "9F193A38-4971-6485-D9AA-93AD3473D67B";
createNode transform -n "FK_thigh_CTL_offGRP" -p "FK_hip_space_ivsScale";
	rename -uid "F6E80D1A-433B-BE5A-9362-E8BD520D801B";
createNode transform -n "FK_thigh_CTL_spcGRP" -p "FK_thigh_CTL_offGRP";
	rename -uid "84725EE6-4E24-E51B-55A7-E58C89D40645";
createNode transform -n "FK_thigh_CTL" -p "FK_thigh_CTL_spcGRP";
	rename -uid "95F4EEC1-47CC-1202-9D7B-15B9CE8BE8CC";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_thigh_CTLShape" -p "FK_thigh_CTL";
	rename -uid "A758D1F2-485C-A7FC-1FB0-1C823458AA44";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.7836116248912236 4.4753908802885745 
		5.2590025051797964 -6.7857323231109011e-17 6.3291584798249509 4.5540650691180704e-16 
		0.7836116248912236 4.4753908802885736 -5.2590025051797964 1.1081941875543875 3.2810469323975997e-16 
		-7.4373526673793364 0.7836116248912236 -4.4753908802885745 -5.2590025051797964 1.1100856969603226e-16 
		-6.3291584798249518 -7.4500470332978742e-16 -0.7836116248912236 -4.4753908802885736 
		5.2590025051797964 -1.1081941875543875 -8.6310510720820413e-16 7.4373526673793364 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_thigh_CTL_ivsScale" -p "FK_thigh_CTL";
	rename -uid "A50DC949-4009-54AC-D2FE-DF9F36C95EF4";
createNode transform -n "FK_F_knee_CTL_offGRP" -p "FK_thigh_CTL_ivsScale";
	rename -uid "01311007-49A4-6D6E-1E71-039E3219B57F";
createNode transform -n "FK_F_knee_CTL_spcGRP" -p "FK_F_knee_CTL_offGRP";
	rename -uid "52A60F64-4ACF-D8D2-D34D-2DA6D524C158";
createNode transform -n "FK_F_knee_CTL" -p "FK_F_knee_CTL_spcGRP";
	rename -uid "6093860E-49C9-D8A4-63A7-29A99D7F0E59";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "FK_F_knee_CTLShape" -p "FK_F_knee_CTL";
	rename -uid "65BC59D6-495F-5535-9DD9-078E430235CD";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122183 2.8976901287346348 
		3.6813017536258585 1.7084995161691405e-15 4.0979526796111498 -8.026300357419338e-15 
		0.78361162489122516 2.8976901287346339 -3.6813017536258585 1.1081941875543881 2.1243859055525751e-16 
		-5.2061468671655371 0.78361162489122516 -2.8976901287346348 -3.6813017536258585 1.8873654090962807e-15 
		-4.0979526796111507 -8.8665882045884472e-15 -0.78361162489122183 -2.8976901287346339 
		3.6813017536258585 -1.1081941875543859 -5.5883636002234418e-16 5.2061468671655362 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_knee_CTL_ivsScale" -p "FK_F_knee_CTL";
	rename -uid "4962ED3A-4EB4-93F8-D3EE-0ABC635AE976";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_B_knee_CTL_offGRP" -p "FK_F_knee_CTL_ivsScale";
	rename -uid "DC56E923-4784-86B3-0D77-64B5942FE6E4";
createNode transform -n "FK_B_knee_CTL_spcGRP" -p "FK_B_knee_CTL_offGRP";
	rename -uid "10AE7126-4696-DB70-09A6-8AB2F68C73E9";
createNode transform -n "FK_B_knee_CTL" -p "FK_B_knee_CTL_spcGRP";
	rename -uid "03531F1D-4722-A074-857F-BD893855E9A8";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_knee_CTLShape" -p "FK_B_knee_CTL";
	rename -uid "848B1C5A-4C42-DBD0-19C3-D59BD43D5645";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122427 1.8669256377193952 
		2.6505372626106194 -6.7857323231109097e-17 2.6402315568048005 2.295248794835509e-16 
		0.78361162489122427 1.8669256377193957 -2.6505372626106194 1.1081941875543877 1.3687007013471593e-16 
		-3.7484257443591873 0.78361162489122427 -1.8669256377193952 -2.6505372626106194 1.1100856969603226e-16 
		-2.6402315568048009 -3.7548237047821296e-16 -0.78361162489122427 -1.8669256377193957 
		2.6505372626106194 -1.1081941875543877 -3.6004744519424908e-16 3.7484257443591873 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_B_knee_CTL_ivsScale" -p "FK_B_knee_CTL";
	rename -uid "E2E08FD6-4D2F-394F-1CD0-19A3E4362F3A";
createNode transform -n "FK_ankle_CTL_offGRP" -p "FK_B_knee_CTL_ivsScale";
	rename -uid "4021D68D-43A2-EC7D-7CCB-50A97D5BD262";
createNode transform -n "FK_ankle_CTL_spcGRP" -p "FK_ankle_CTL_offGRP";
	rename -uid "D869CBEF-45A3-4679-442E-3DAD4DD54BAA";
createNode transform -n "FK_ankle_CTL" -p "FK_ankle_CTL_spcGRP";
	rename -uid "FB7F6CED-4CAB-36AF-C6E4-298CEB5C80C4";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_ankle_CTLShape" -p "FK_ankle_CTL";
	rename -uid "34DCFBC8-415B-90F8-E24F-FEAD8D3F9D80";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122405 1.8669256377193952 
		2.6505372626106194 3.7623188661895316e-16 2.6402315568048005 -1.2725904047228195e-15 
		0.78361162489122471 1.8669256377193957 -2.6505372626106194 1.1081941875543881 -1.979182078577896e-15 
		-3.7484257443591873 0.78361162489122471 -1.8669256377193948 -2.6505372626106194 5.5509777954609406e-16 
		-2.6402315568048009 -1.8775976546845811e-15 -0.78361162489122405 -1.8669256377193957 
		2.6505372626106194 -1.1081941875543873 -2.4760995939068662e-15 3.7484257443591873 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_ankle_CTL_ivsScale" -p "FK_ankle_CTL";
	rename -uid "BF0DC1C5-4C48-F484-1797-EFA6667FB805";
createNode transform -n "FK_hind_toe_CTL_offGRP" -p "FK_ankle_CTL_ivsScale";
	rename -uid "53B8ADB1-4CBD-9385-D8A1-5590CCA6B03A";
createNode transform -n "FK_hind_toe_CTL_spcGRP" -p "FK_hind_toe_CTL_offGRP";
	rename -uid "60BA458B-49B6-B5F8-999E-54BC971D1C05";
createNode transform -n "FK_hind_toe_CTL" -p "FK_hind_toe_CTL_spcGRP";
	rename -uid "1BE28F6A-42E7-BF5D-5086-48AC3BFABB01";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_hind_toe_CTLShape" -p "FK_hind_toe_CTL";
	rename -uid "6A213165-4FE4-45C2-D7C1-AF963CA94320";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.4408920985006262e-16 2.6505372626106198 2.6505372626106194
		4.4408920985006227e-16 3.7484257443591882 -1.2725904047228195e-15
		2.2204460492503131e-16 2.6505372626106203 -2.6505372626106194
		0 -1.9217330962026476e-15 -3.7484257443591873
		2.2204460492503131e-16 -2.6505372626106194 -2.6505372626106194
		4.4408920985006183e-16 -3.7484257443591895 -1.8775976546845811e-15
		4.4408920985006262e-16 -2.6505372626106203 2.6505372626106194
		8.8817841970012523e-16 -2.6272236439848621e-15 3.7484257443591873
		4.4408920985006262e-16 2.6505372626106198 2.6505372626106194
		4.4408920985006227e-16 3.7484257443591882 -1.2725904047228195e-15
		2.2204460492503131e-16 2.6505372626106203 -2.6505372626106194
		;
createNode transform -n "leg_switch_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "55DD3FB5-4107-DA8E-8BD8-BDB0F432C18C";
	setAttr -s 2 ".iog";
createNode transform -n "leg_switch_CTL_spcGRP" -p "leg_switch_CTL_offGRP";
	rename -uid "BD86F03A-4248-B14F-E50E-FE871F3B51B3";
createNode transform -n "leg_switch_CTL" -p "leg_switch_CTL_spcGRP";
	rename -uid "558B994A-4A59-CD1F-3313-828BB89820A2";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "leg_switch_CTLShape" -p "leg_switch_CTL";
	rename -uid "6BAA3205-45C1-C1DD-4F14-158D892F94FD";
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
createNode transform -n "output" -p "leg_GRP";
	rename -uid "2C25EA0C-4832-D79F-C2AA-2481FF63E62F";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
createNode joint -n "hip" -p "output";
	rename -uid "14A9A195-4414-3973-A9CF-37967FD28C0F";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "thigh" -p "hip";
	rename -uid "8C0AE060-48BC-AFA4-9C5F-78B891CAB18A";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "F_knee" -p "thigh";
	rename -uid "E94A6915-4ADA-B45F-C7A1-29BC5436D7E7";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "B_knee" -p "F_knee";
	rename -uid "8C38FB02-466F-E3AF-54AA-9D8A2D513B1F";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "ankle" -p "B_knee";
	rename -uid "BB41AFF5-40A0-A80C-C98F-F8A49DA06B83";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_toe" -p "ankle";
	rename -uid "76D16DAA-4432-94E7-9B2A-F59B65387B12";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_tiptoe" -p "hind_toe";
	rename -uid "1D2973BE-47BC-F134-CB87-48B9528741E3";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "0E6AE336-4706-5613-1B22-8DB46F34AA40";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "E8D530B0-42EC-8168-CD6E-E3B4B9CE804C";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "F2334776-43BA-9530-BA83-CA809B013ED7";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "1053374C-4C84-8ED3-7A65-E7933B4FB0E1";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "5C1CF9D9-4878-AB42-FDD5-0885345DC346";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "16E7076F-4BAD-DB0E-8DA2-16AFA1002BA8";
createNode plusMinusAverage -n "softupperLegLen";
	rename -uid "17276882-44E4-9579-8F26-3FB0921A21C1";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uplegLen";
	rename -uid "FC4D49AB-4FEE-08E8-7834-5799F739B692";
createNode multMatrix -n "input_thigh_local_MTMX";
	rename -uid "1AC59AFE-4F46-C8D1-33FB-48A7CC5377AF";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_knee_local_MTMX";
	rename -uid "73BC856E-4051-F894-035B-C5A1B63B1BBB";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midlegLen";
	rename -uid "97AB0344-4E47-161E-61AF-EFB70D39F054";
createNode multMatrix -n "input_ankle_local_MTMX";
	rename -uid "E57AA3A8-41D1-3897-15D7-3FB9A8130FD8";
	setAttr -s 2 ".i";
createNode distanceBetween -n "leg_ctrlLen";
	rename -uid "DF2B9C3C-4A7F-F69B-CAD8-2C891619F094";
createNode multMatrix -n "B_knee_space_local_MTMX";
	rename -uid "A47B417A-4D2C-0149-9FA7-8E8A1EA95A6B";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_thigh_local_dist_MTMX";
	rename -uid "F4D38782-4ECA-3385-C7D4-9B98CD5DFB49";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "leg_IK_negate_val";
	rename -uid "14959EDF-4CE8-8005-B4BA-2F8919AAA312";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "softlowerLegLen";
	rename -uid "CCE1284E-4441-C2E6-F3AD-EDB63E48BC9C";
	setAttr -s 3 ".i1[0:2]"  0 11.55338097 10.44397831;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loLegLen";
	rename -uid "8E78D16D-4957-DDC9-2108-83AF4A1F20ED";
createNode multMatrix -n "input_B_toe_local_MTMX";
	rename -uid "0138521F-4FDE-E51A-2D89-38AC31B27F60";
	setAttr -s 2 ".i";
createNode distanceBetween -n "B_toe_ctrlLen";
	rename -uid "9C3F2E6A-40DF-49EE-54DF-60BE75759868";
createNode multMatrix -n "multMatrix5";
	rename -uid "CE131466-4017-BF29-B211-718073E46C5F";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "1DF8E6FE-44B9-ACBA-364D-6699C3B87B37";
	setAttr -s 2 ".i";
createNode condition -n "upperLeg_ctrllen_COND";
	rename -uid "B9E32D55-4A82-9BA0-267C-88959EF61DB0";
	setAttr ".op" 2;
createNode condition -n "upperLeg_softikV_COND";
	rename -uid "8A688327-43CD-A5A8-9F33-E68D10A57E25";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_result_softik_len";
	rename -uid "1B1298F9-4A8F-4A90-E42F-38BD0AB87556";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "upperLeg_mult_softikV";
	rename -uid "6F373CC7-4E45-5B26-C229-2AADB8E8DF34";
createNode multiplyDivide -n "upperLeg_power_val";
	rename -uid "A20236D2-491A-D0CA-E94D-6CB17BAF6F9B";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "upperLeg_negate_val";
	rename -uid "BF9F7FF3-45F5-8DF6-7EF6-298EC8004BAD";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "upperLeg_divide_softikV";
	rename -uid "A6044D96-4DD2-753C-27D3-779CEF946DA1";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_ctrlLen_minue_dif";
	rename -uid "65F7240C-49FB-0486-99E5-7E850F2DD8D2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "upperLeglen_minus_softikV";
	rename -uid "20069114-42A3-EA15-3869-7D93E78A997D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "leg_for_zerodivide_COND";
	rename -uid "B2D99C3F-4B65-8562-A197-40AFDDD7AFF0";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "lowerLeg_ctrllen_COND";
	rename -uid "F5462B91-4E6D-FE80-F729-F992943091DD";
	setAttr ".op" 2;
createNode condition -n "lowerLeg_softikV_COND";
	rename -uid "81B486E6-4E02-2974-DB60-CF8EDC598B43";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_result_softik_len";
	rename -uid "EB0ABFDB-4217-C978-073B-77B628EB2D73";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_mult_softikV";
	rename -uid "EDDBC145-49C7-D019-125D-1BBCC486CEF5";
createNode multiplyDivide -n "lowerLeg_power_val";
	rename -uid "6095805C-4DA3-2B61-7B2E-989718D62B81";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "lowerLeg_negate_val";
	rename -uid "82BB7B55-4308-BBA0-E0A6-17B2B2877CC8";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lowerLeg_divide_softikV";
	rename -uid "1D1AE333-4B41-1CA5-1623-08B2F95762A8";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_ctrlLen_minue_dif";
	rename -uid "3740396E-4608-E85E-D415-D1B0682C4FD7";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "lowerLeglen_minus_softikV";
	rename -uid "A420B8B9-44FA-C507-1221-8E8ED25396D4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loleg_plus_stretch";
	rename -uid "28A637E0-4104-8D72-6BDA-1E9112668735";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loleg";
	rename -uid "A7082E98-4A72-3C34-9808-F1B7DA46B65F";
createNode multiplyDivide -n "stretched_lolegLen";
	rename -uid "C58490DE-4A58-714C-32EA-4DB8DBF8FC03";
createNode plusMinusAverage -n "upperLeg_stretchedLen";
	rename -uid "6C105FE1-400E-1F14-D984-D9A3CB2BD3F6";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loleg_ratio";
	rename -uid "A411FF22-4CEA-D839-5470-A9B02308BECF";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_legLen";
	rename -uid "73A459F5-4636-9B15-F6FF-BB9AF61DD0CE";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upleg_plus_stretch";
	rename -uid "8461E87D-4171-57FF-B199-5091591904DA";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upleg";
	rename -uid "690EB3D9-411F-DB5A-D64B-FEB91EFBFBC8";
createNode multiplyDivide -n "stretched_uplegLen";
	rename -uid "1E7B6C2C-4645-6612-A861-CABC656AC501";
createNode multiplyDivide -n "upleg_ratio";
	rename -uid "B5F428F2-40DE-9FDA-F045-79BEBE137D1C";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_plus_stretch";
	rename -uid "442F198D-403F-8D43-77BD-8BB58845A695";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_lowerLeg";
	rename -uid "A134C3C0-4406-D846-F105-E195C398AB4C";
createNode multiplyDivide -n "stretched_lowerLegLen";
	rename -uid "FE237559-4DD5-4F8E-04F5-8A915AFEAC4D";
createNode plusMinusAverage -n "lowerLeg_stretchedLen";
	rename -uid "F2410F8A-4BF9-0C9E-24D3-DC80F0A57589";
	setAttr ".op" 2;
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_ratio";
	rename -uid "5B80DC91-4BCB-1821-DACE-6C8A22D3C432";
	setAttr ".op" 2;
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "7302BF39-4CEC-42C2-583D-2886EBD7E3BF";
createNode multMatrix -n "multMatrix7";
	rename -uid "B828E66A-4952-6B2E-8D1A-D2A98E6594B8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "6FEE57E7-47CB-34BF-420E-D6AFAD8AEB9D";
createNode multMatrix -n "multMatrix8";
	rename -uid "2C0604C9-4A16-1883-339B-20AF7F5A4DDB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_B_knee_local_DCMX";
	rename -uid "789C0F31-447C-A772-A0CF-93AE09BCC531";
createNode decomposeMatrix -n "IK_ankle_local_DCMX";
	rename -uid "A6A28937-4A53-C8C8-16ED-E28D31E249E0";
createNode decomposeMatrix -n "IK_hind_toe_local_DCMX";
	rename -uid "9A98CFB1-4107-D572-0776-62AEE40E15B5";
createNode decomposeMatrix -n "FK_thigh_local_DCMX";
	rename -uid "AE16B1E3-458B-CE58-29B0-169157B5BAAF";
createNode multMatrix -n "FK_thigh_local_MTMX";
	rename -uid "0BA992AF-4C7B-FAEC-E525-179932551E26";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_knee_local_DCMX";
	rename -uid "DF4D7C3C-48B4-28B0-A368-C1AE70A3A9E5";
createNode multMatrix -n "FK_F_knee_local_MTMX";
	rename -uid "F592E7BE-4591-F0E5-514F-0EB6F847989B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_knee_local_DCMX";
	rename -uid "1115D447-4A94-48FA-31A4-62BA5EBF2030";
createNode multMatrix -n "FK_B_knee_local_MTMX";
	rename -uid "E61395CD-4C28-2026-C533-6F8413CBB341";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_ankle_local_DCMX";
	rename -uid "F313008F-4114-4490-D2B6-79AFB2B4EA58";
createNode multMatrix -n "FK_ankle_local_MTMX";
	rename -uid "5ABE96F3-4218-08AB-988F-9DAA72322334";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_hind_toe_local_DCMX";
	rename -uid "A7E2E89A-46D3-7D88-4E62-959ADE007A1F";
createNode multMatrix -n "FK_hind_toe_local_MTMX";
	rename -uid "39C3E20B-45FF-3F4D-7396-C8A345971A17";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hip_L_CTL_inverse_DCMX";
	rename -uid "5AB251E8-4831-035C-4F05-2097A6E81B55";
createNode unitConversion -n "unitConversion9";
	rename -uid "3FC586DC-48D1-7771-7ACD-42830DDB10E0";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition1";
	rename -uid "FEDF6F46-4726-7655-AB7D-028B0BA96160";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion12";
	rename -uid "31070B6F-4A7C-9EE9-13FF-56934279D76C";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition1";
	rename -uid "9F7EC181-4223-B587-3B35-64B67AD6A3AC";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition1";
	rename -uid "D8F25098-4C1C-FDA0-046E-FAA064E127F1";
createNode unitConversion -n "unitConversion11";
	rename -uid "00DB8B5D-4680-D1A4-0C4D-1BACB766338A";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition1";
	rename -uid "19942C15-47D1-D726-1432-53B6E73AD2C1";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage2";
	rename -uid "B4D73C78-42CE-AE1B-C962-B7A636019F9F";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_toe_local_DCMX";
	rename -uid "D6CB6F25-4EED-7DF2-9972-45BFCA9BBB84";
createNode multMatrix -n "B_toe_local_MTMX";
	rename -uid "0C855EF5-4DB8-6EF9-B9FF-DC955F2C2BB7";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion10";
	rename -uid "48B26A03-4E34-DC5B-AD8F-1F9FF282F1D8";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon1";
	rename -uid "BCF92205-4D11-8B4A-E4EF-05A7AB36FCDD";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition1";
	rename -uid "BCD9C0C9-4762-BCED-0324-36878B5C629F";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball1";
	rename -uid "72B8A85D-4C32-2EA7-FD37-D497667D5055";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap1";
	rename -uid "4A06AA3C-4B5F-3ED4-55F5-1890DCAF6D8D";
	setAttr ".imx" 90;
	setAttr -s 3 ".vl[0:2]"  0 0 2 1 1 3 1 1 2;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "after_ball_start1";
	rename -uid "5C178D26-4234-EA84-EDEF-88AA9C6AD426";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_ball_local_DCMX";
	rename -uid "42BC93E0-4551-8DCD-599B-999C6D3971B9";
createNode multMatrix -n "B_ball_local_MTMX";
	rename -uid "72F3178E-43A2-BF87-7DF5-8FAD77910C7E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_ankle_local_DCMX";
	rename -uid "D2BF6AEF-44B3-5B55-F4E6-0288D8C5A13F";
createNode multMatrix -n "B_ankle_local_MTMX";
	rename -uid "B7C94400-4A83-39CA-92A1-EC8A8B0569E2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_knee_space_GRP_local_DCMX";
	rename -uid "4BBBBC01-4D34-E3DC-28CC-A6966EC87EA8";
createNode multMatrix -n "B_knee_space_GRP_local_MTMX";
	rename -uid "BEDCD997-4088-2076-12E9-4EAB015D3E2E";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion13";
	rename -uid "041C3EA3-468D-A8E4-8174-EFB38451CE58";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS1";
	rename -uid "974B68DE-48C1-9D63-B564-C296E34940C8";
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX1";
	rename -uid "95B1AA86-475B-0088-D49A-90A63F52A673";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX1";
	rename -uid "82E5B8DF-4D82-6402-2B04-789F4FF103F1";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion14";
	rename -uid "61A486D0-4375-D6CD-E9C6-0F859E140F8B";
	setAttr ".cf" 0.1;
createNode reverse -n "FK_IK_RVS";
	rename -uid "3C0B97EA-46BA-43A2-1C22-35BD4ACC8074";
createNode decomposeMatrix -n "FK_hip_space_inverse_DCMX";
	rename -uid "C8ABBEBD-4577-C159-ACE9-91A68F1362FB";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "2B98FA65-4E68-9BEC-700A-1EB13850D9D3";
createNode decomposeMatrix -n "FK_thigh_CTL_inverse_DCMX";
	rename -uid "60715B37-41FE-FCDB-B7B8-13BEE11B7469";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "ED42C220-47F6-6945-7423-C1827D0C0BBC";
createNode decomposeMatrix -n "FK_F_knee_CTL_inverse_DCMX";
	rename -uid "4D0A5D63-47E0-81B9-DE52-A2BFE4E211E5";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "FD28614C-42CE-82CE-EC5D-6EB8C2033061";
createNode decomposeMatrix -n "FK_B_knee_CTL_inverse_DCMX";
	rename -uid "81C86220-4B10-005D-CD25-74A672C3C284";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "FE96B27B-4289-6355-4CF4-D985DCC379C4";
createNode decomposeMatrix -n "FK_ankle_CTL_inverse_DCMX";
	rename -uid "8BDF571B-4261-9449-3EA3-54B97E078369";
createNode decomposeMatrix -n "leg_switch_CTL_DCMX";
	rename -uid "FDC77AA1-415B-056D-D366-AE92FD1348AC";
createNode multMatrix -n "leg_switch_CTL_MTMX";
	rename -uid "F6316293-4E45-705D-032C-2E95CBC2AA60";
	setAttr -s 2 ".i";
createNode choice -n "leg_switch_CTL_CHOI";
	rename -uid "437CB938-43CF-948C-F6C5-6A9B353575F2";
	setAttr -s 2 ".i";
createNode pairBlend -n "hip_PRBL";
	rename -uid "2D230AF4-4818-5EB2-71AB-379285A769D2";
createNode blendColors -n "hip_BLCL";
	rename -uid "CE31F834-486A-6B3B-FB85-4FB26D9B3826";
createNode pairBlend -n "thigh_PRBL";
	rename -uid "F1B21BCD-4E1D-6188-F47D-CCAF13631A78";
createNode blendColors -n "thigh_BLCL";
	rename -uid "D5C41361-467E-96AD-3568-D1A604D9C780";
createNode pairBlend -n "F_knee_PRBL";
	rename -uid "F9942222-40DC-5765-CCE3-859065758D35";
createNode blendColors -n "F_knee_BLCL";
	rename -uid "ADECC1ED-43C1-DE92-E2D1-0CA7990E6022";
createNode pairBlend -n "B_knee_PRBL";
	rename -uid "5B054BB3-4D32-4EF5-349C-96AB58B6E88E";
createNode blendColors -n "B_knee_BLCL";
	rename -uid "36EB263B-4292-893F-CFE5-3A8C43C27C15";
createNode pairBlend -n "ankle_PRBL";
	rename -uid "4A918CD0-42BB-0BE3-CF1E-93B74A397882";
createNode blendColors -n "ankle_BLCL";
	rename -uid "CB701C25-4ECF-07EF-B1E0-7AA05A5BD3EF";
createNode pairBlend -n "hind_toe_PRBL";
	rename -uid "453F206F-449B-1991-8998-22BF36423028";
createNode blendColors -n "hind_toe_BLCL";
	rename -uid "52A9CEC0-4D5C-B7A7-8071-05AB23EA9763";
createNode pairBlend -n "hind_tiptoe_PRBL";
	rename -uid "28C8900F-472A-CACA-E3B3-81852870EE84";
createNode blendColors -n "hind_tiptoe_BLCL";
	rename -uid "86348AC2-4B4C-1D37-908D-0A9F3C0F9D55";
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
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 84 ".u";
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
	setAttr -s 4 ".sol";
connectAttr "input_hip.init" "leg_GRP.init" -na;
connectAttr "input_thigh.init" "leg_GRP.init" -na;
connectAttr "input_F_knee.init" "leg_GRP.init" -na;
connectAttr "input_B_knee.init" "leg_GRP.init" -na;
connectAttr "input_ankle.init" "leg_GRP.init" -na;
connectAttr "input_hind_toe.init" "leg_GRP.init" -na;
connectAttr "input_hind_tiptoe.init" "leg_GRP.init" -na;
connectAttr "output.init" "leg_GRP.init" -na;
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
connectAttr "IK_thigh.msg" "ikHandle9.hsj";
connectAttr "effector9.hp" "ikHandle9.hee";
connectAttr "ikRPsolver.msg" "ikHandle9.hsv";
connectAttr "ikHandle9_poleVectorConstraint1.ctx" "ikHandle9.pvx";
connectAttr "ikHandle9_poleVectorConstraint1.cty" "ikHandle9.pvy";
connectAttr "ikHandle9_poleVectorConstraint1.ctz" "ikHandle9.pvz";
connectAttr "ikHandle9.pim" "ikHandle9_poleVectorConstraint1.cpim";
connectAttr "IK_thigh.pm" "ikHandle9_poleVectorConstraint1.ps";
connectAttr "IK_thigh.t" "ikHandle9_poleVectorConstraint1.crp";
connectAttr "B_poleVec_CTL.t" "ikHandle9_poleVectorConstraint1.tg[0].tt";
connectAttr "B_poleVec_CTL.rp" "ikHandle9_poleVectorConstraint1.tg[0].trp";
connectAttr "B_poleVec_CTL.rpt" "ikHandle9_poleVectorConstraint1.tg[0].trt";
connectAttr "B_poleVec_CTL.pm" "ikHandle9_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle9_poleVectorConstraint1.w0" "ikHandle9_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crx" "IK_lowerLeg_CTLaim.rx";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.cry" "IK_lowerLeg_CTLaim.ry";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crz" "IK_lowerLeg_CTLaim.rz";
connectAttr "leg_softIK_output.output_lower_softik" "lowerLeg_softIK_output_LOC.tx"
		;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.ox" "lowerLeg_stretch_output_LOC.tx"
		;
connectAttr "IK_B_knee.msg" "ikHandle6.hsj";
connectAttr "effector6.hp" "ikHandle6.hee";
connectAttr "ikSCsolver.msg" "ikHandle6.hsv";
connectAttr "IK_lowerLeg_CTLaim.pim" "IK_lowerLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lowerLeg_CTLaim.t" "IK_lowerLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_lowerLeg_CTLaim.rp" "IK_lowerLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_lowerLeg_CTLaim.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_lowerLeg_CTLaim.ro" "IK_lowerLeg_CTLaim_aimConstraint1.cro";
connectAttr "B_ankle.t" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "B_ankle.rp" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "B_ankle.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "B_ankle.pm" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.w0" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_knee_space_upVec.wm" "IK_lowerLeg_CTLaim_aimConstraint1.wum";
connectAttr "IK_upperLeg_CTLaim.pim" "IK_upperLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upperLeg_CTLaim.t" "IK_upperLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_upperLeg_CTLaim.rp" "IK_upperLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_upperLeg_CTLaim.rpt" "IK_upperLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_upperLeg_CTLaim.ro" "IK_upperLeg_CTLaim_aimConstraint1.cro";
connectAttr "B_knee_space.t" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "B_knee_space.rp" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "B_knee_space.rpt" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "B_knee_space.pm" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.w0" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_thigh_space_upVec.wm" "IK_upperLeg_CTLaim_aimConstraint1.wum";
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
connectAttr "decomposeMatrix2.ot" "IK_hip.t";
connectAttr "input_hip.r" "IK_hip.jo";
connectAttr "decomposeMatrix2.os" "IK_hip.s";
connectAttr "decomposeMatrix2.or" "IK_hip.r";
connectAttr "IK_hip.s" "IK_thigh.is";
connectAttr "decomposeMatrix3.ot" "IK_thigh.t";
connectAttr "IK_thigh_CTL.s" "IK_thigh.s";
connectAttr "input_thigh.r" "IK_thigh.jo";
connectAttr "leg_stretchIK_output.upleg_stretched" "IK_F_knee.tx";
connectAttr "IK_thigh.s" "IK_F_knee.is";
connectAttr "input_F_knee.r" "IK_F_knee.jo";
connectAttr "leg_stretchIK_output.midLeg_stretched" "IK_B_knee.tx";
connectAttr "input_B_knee.r" "IK_B_knee.jo";
connectAttr "IK_F_knee.s" "IK_B_knee.is";
connectAttr "IK_B_knee_local_DCMX.os" "IK_B_knee.s";
connectAttr "IK_B_knee.s" "IK_ankle.is";
connectAttr "leg_stretchIK_output.loLeg_Stretched" "IK_ankle.tx";
connectAttr "input_ankle.r" "IK_ankle.jo";
connectAttr "IK_ankle_local_DCMX.os" "IK_ankle.s";
connectAttr "IK_ankle.s" "IK_hind_toe.is";
connectAttr "input_hind_toe.t" "IK_hind_toe.t";
connectAttr "input_hind_toe.r" "IK_hind_toe.jo";
connectAttr "IK_hind_toe_local_DCMX.os" "IK_hind_toe.s";
connectAttr "IK_hind_toe.s" "IK_hind_tiptoe.is";
connectAttr "input_hind_tiptoe.t" "IK_hind_tiptoe.t";
connectAttr "input_hind_tiptoe.r" "IK_hind_tiptoe.jo";
connectAttr "IK_hind_tiptoe.tx" "effector8.tx";
connectAttr "IK_hind_tiptoe.ty" "effector8.ty";
connectAttr "IK_hind_tiptoe.tz" "effector8.tz";
connectAttr "IK_hind_toe.tx" "effector7.tx";
connectAttr "IK_hind_toe.ty" "effector7.ty";
connectAttr "IK_hind_toe.tz" "effector7.tz";
connectAttr "IK_ankle.tx" "effector6.tx";
connectAttr "IK_ankle.ty" "effector6.ty";
connectAttr "IK_ankle.tz" "effector6.tz";
connectAttr "IK_B_knee.tx" "effector9.tx";
connectAttr "IK_B_knee.ty" "effector9.ty";
connectAttr "IK_B_knee.tz" "effector9.tz";
connectAttr "B_poleVec_CTLShape.wm" "annotationShape2.dom" -na;
connectAttr "IK_hip_aim_space_pointConstraint1.ctx" "IK_hip_aim_space.tx";
connectAttr "IK_hip_aim_space_pointConstraint1.cty" "IK_hip_aim_space.ty";
connectAttr "IK_hip_aim_space_pointConstraint1.ctz" "IK_hip_aim_space.tz";
connectAttr "IK_hip_aim_space_aimConstraint1.crx" "IK_hip_aim_space.rx";
connectAttr "IK_hip_aim_space_aimConstraint1.cry" "IK_hip_aim_space.ry";
connectAttr "IK_hip_aim_space_aimConstraint1.crz" "IK_hip_aim_space.rz";
connectAttr "IK_hip_aim_space.pim" "IK_hip_aim_space_pointConstraint1.cpim";
connectAttr "IK_hip_aim_space.rp" "IK_hip_aim_space_pointConstraint1.crp";
connectAttr "IK_hip_aim_space.rpt" "IK_hip_aim_space_pointConstraint1.crt";
connectAttr "IK_hip.t" "IK_hip_aim_space_pointConstraint1.tg[0].tt";
connectAttr "IK_hip.rp" "IK_hip_aim_space_pointConstraint1.tg[0].trp";
connectAttr "IK_hip.rpt" "IK_hip_aim_space_pointConstraint1.tg[0].trt";
connectAttr "IK_hip.pm" "IK_hip_aim_space_pointConstraint1.tg[0].tpm";
connectAttr "IK_hip_aim_space_pointConstraint1.w0" "IK_hip_aim_space_pointConstraint1.tg[0].tw"
		;
connectAttr "IK_hip_aim_space.pim" "IK_hip_aim_space_aimConstraint1.cpim";
connectAttr "IK_hip_aim_space.t" "IK_hip_aim_space_aimConstraint1.ct";
connectAttr "IK_hip_aim_space.rp" "IK_hip_aim_space_aimConstraint1.crp";
connectAttr "IK_hip_aim_space.rpt" "IK_hip_aim_space_aimConstraint1.crt";
connectAttr "IK_hip_aim_space.ro" "IK_hip_aim_space_aimConstraint1.cro";
connectAttr "B_foot_CTL.t" "IK_hip_aim_space_aimConstraint1.tg[0].tt";
connectAttr "B_foot_CTL.rp" "IK_hip_aim_space_aimConstraint1.tg[0].trp";
connectAttr "B_foot_CTL.rpt" "IK_hip_aim_space_aimConstraint1.tg[0].trt";
connectAttr "B_foot_CTL.pm" "IK_hip_aim_space_aimConstraint1.tg[0].tpm";
connectAttr "IK_hip_aim_space_aimConstraint1.w0" "IK_hip_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "B_foot_upVec.wm" "IK_hip_aim_space_aimConstraint1.wum";
connectAttr "input_hip.t" "motion_FK_GRP.t";
connectAttr "input_hip.r" "motion_FK_GRP.r";
connectAttr "input_hip.s" "motion_FK_GRP.s";
connectAttr "FK_hip_space.t" "FK_hip.t";
connectAttr "input_hip.r" "FK_hip.jo";
connectAttr "FK_hip_space.s" "FK_hip.s";
connectAttr "FK_hip_space.r" "FK_hip.r";
connectAttr "FK_hip.s" "FK_thigh.is";
connectAttr "FK_thigh_local_DCMX.ot" "FK_thigh.t";
connectAttr "FK_thigh_CTL.r" "FK_thigh.r";
connectAttr "FK_thigh_CTL.s" "FK_thigh.s";
connectAttr "input_thigh.r" "FK_thigh.jo";
connectAttr "FK_F_knee_CTL.s" "FK_F_knee.s";
connectAttr "FK_F_knee_local_DCMX.ot" "FK_F_knee.t";
connectAttr "FK_F_knee_CTL.r" "FK_F_knee.r";
connectAttr "FK_thigh.s" "FK_F_knee.is";
connectAttr "input_F_knee.r" "FK_F_knee.jo";
connectAttr "FK_B_knee_local_DCMX.ot" "FK_B_knee.t";
connectAttr "input_B_knee.r" "FK_B_knee.jo";
connectAttr "FK_F_knee.s" "FK_B_knee.is";
connectAttr "FK_B_knee_CTL.s" "FK_B_knee.s";
connectAttr "FK_B_knee_CTL.r" "FK_B_knee.r";
connectAttr "FK_B_knee.s" "FK_ankle.is";
connectAttr "FK_ankle_local_DCMX.ot" "FK_ankle.t";
connectAttr "input_ankle.r" "FK_ankle.jo";
connectAttr "FK_ankle_CTL.s" "FK_ankle.s";
connectAttr "FK_ankle_CTL.r" "FK_ankle.r";
connectAttr "FK_ankle.s" "FK_hind_toe.is";
connectAttr "FK_hind_toe_local_DCMX.ot" "FK_hind_toe.t";
connectAttr "input_hind_toe.r" "FK_hind_toe.jo";
connectAttr "FK_hind_toe_CTL.s" "FK_hind_toe.s";
connectAttr "FK_hind_toe_CTL.r" "FK_hind_toe.r";
connectAttr "FK_hind_toe.s" "FK_hind_tiptoe.is";
connectAttr "input_hind_tiptoe.r" "FK_hind_tiptoe.jo";
connectAttr "input_hip.t" "leg_CTL_GRP.t";
connectAttr "input_hip.r" "leg_CTL_GRP.r";
connectAttr "input_hip.s" "leg_CTL_GRP.s";
connectAttr "hip_L_CTL_inverse_DCMX.os" "hip_CTL_ivsScale.s";
connectAttr "input_thigh.t" "IK_thigh_CTL_offGRP.t";
connectAttr "leg_switch_CTL.FK_IK" "IK_thigh_CTL_offGRP.v";
connectAttr "leg_switch_CTL.FK_IK" "IK_leg_CTL_GRP.v";
connectAttr "input_thigh.t" "IK_leg_CTL_GRP.t";
connectAttr "unitConversion9.o" "B_heel.rx";
connectAttr "unitConversion12.o" "B_heel.rz";
connectAttr "in_out_condition1.oc" "B_heel.rp";
connectAttr "unitConversion11.o" "B_toe.rx";
connectAttr "B_toe_local_DCMX.ot" "B_toe.rebuildTrans";
connectAttr "unitConversion10.o" "B_ball.rx";
connectAttr "B_ball_local_DCMX.ot" "B_ball.rebuildTrans";
connectAttr "B_ankle_local_DCMX.ot" "B_ankle.rebuildTrans";
connectAttr "B_ankle_aim_space_aimConstraint1.crx" "B_ankle_aim_space.rx";
connectAttr "B_ankle_aim_space_aimConstraint1.cry" "B_ankle_aim_space.ry";
connectAttr "B_ankle_aim_space_aimConstraint1.crz" "B_ankle_aim_space.rz";
connectAttr "B_knee_space_GRP_local_DCMX.ot" "B_knee_space_GRP.rebuildTrans";
connectAttr "IK_ankle.msg" "ikHandle7.hsj";
connectAttr "effector7.hp" "ikHandle7.hee";
connectAttr "ikSCsolver.msg" "ikHandle7.hsv";
connectAttr "ikHandle7_pointConstraint1.ctx" "ikHandle7.tx";
connectAttr "ikHandle7_pointConstraint1.cty" "ikHandle7.ty";
connectAttr "ikHandle7_pointConstraint1.ctz" "ikHandle7.tz";
connectAttr "ikHandle7.pim" "ikHandle7_pointConstraint1.cpim";
connectAttr "ikHandle7.rp" "ikHandle7_pointConstraint1.crp";
connectAttr "ikHandle7.rpt" "ikHandle7_pointConstraint1.crt";
connectAttr "B_ball.t" "ikHandle7_pointConstraint1.tg[0].tt";
connectAttr "B_ball.rp" "ikHandle7_pointConstraint1.tg[0].trp";
connectAttr "B_ball.rpt" "ikHandle7_pointConstraint1.tg[0].trt";
connectAttr "B_ball.pm" "ikHandle7_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle7_pointConstraint1.w0" "ikHandle7_pointConstraint1.tg[0].tw"
		;
connectAttr "IK_hind_toe.msg" "ikHandle8.hsj";
connectAttr "effector8.hp" "ikHandle8.hee";
connectAttr "ikSCsolver.msg" "ikHandle8.hsv";
connectAttr "ikHandle8_pointConstraint1.ctx" "ikHandle8.tx";
connectAttr "ikHandle8_pointConstraint1.cty" "ikHandle8.ty";
connectAttr "ikHandle8_pointConstraint1.ctz" "ikHandle8.tz";
connectAttr "ikHandle8.pim" "ikHandle8_pointConstraint1.cpim";
connectAttr "ikHandle8.rp" "ikHandle8_pointConstraint1.crp";
connectAttr "ikHandle8.rpt" "ikHandle8_pointConstraint1.crt";
connectAttr "B_toe.t" "ikHandle8_pointConstraint1.tg[0].tt";
connectAttr "B_toe.rp" "ikHandle8_pointConstraint1.tg[0].trp";
connectAttr "B_toe.rpt" "ikHandle8_pointConstraint1.tg[0].trt";
connectAttr "B_toe.pm" "ikHandle8_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle8_pointConstraint1.w0" "ikHandle8_pointConstraint1.tg[0].tw"
		;
connectAttr "B_ankle_aim_space.pim" "B_ankle_aim_space_aimConstraint1.cpim";
connectAttr "B_ankle_aim_space.t" "B_ankle_aim_space_aimConstraint1.ct";
connectAttr "B_ankle_aim_space.rp" "B_ankle_aim_space_aimConstraint1.crp";
connectAttr "B_ankle_aim_space.rpt" "B_ankle_aim_space_aimConstraint1.crt";
connectAttr "B_ankle_aim_space.ro" "B_ankle_aim_space_aimConstraint1.cro";
connectAttr "IK_thigh.t" "B_ankle_aim_space_aimConstraint1.tg[0].tt";
connectAttr "IK_thigh.rp" "B_ankle_aim_space_aimConstraint1.tg[0].trp";
connectAttr "IK_thigh.rpt" "B_ankle_aim_space_aimConstraint1.tg[0].trt";
connectAttr "IK_thigh.pm" "B_ankle_aim_space_aimConstraint1.tg[0].tpm";
connectAttr "B_ankle_aim_space_aimConstraint1.w0" "B_ankle_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_thigh_aim_space.t" "B_ankle_aim_space_aimConstraint1.tg[1].tt";
connectAttr "IK_thigh_aim_space.rp" "B_ankle_aim_space_aimConstraint1.tg[1].trp"
		;
connectAttr "IK_thigh_aim_space.rpt" "B_ankle_aim_space_aimConstraint1.tg[1].trt"
		;
connectAttr "IK_thigh_aim_space.pm" "B_ankle_aim_space_aimConstraint1.tg[1].tpm"
		;
connectAttr "B_ankle_aim_space_aimConstraint1.w1" "B_ankle_aim_space_aimConstraint1.tg[1].tw"
		;
connectAttr "unitConversion13.o" "B_ankle_aim_space_aimConstraint1.w0";
connectAttr "toesAim_RVS1.ox" "B_ankle_aim_space_aimConstraint1.w1";
connectAttr "IK_B_ankle_upVec.wm" "B_ankle_aim_space_aimConstraint1.wum";
connectAttr "upper_poleVec_offGRP_space_DCMX1.ot" "B_poleVec_offGRP.t";
connectAttr "upper_poleVec_offGRP_space_DCMX1.or" "B_poleVec_offGRP.r";
connectAttr "B_poleVec_space_parentConstraint1.ctx" "B_poleVec_space.tx";
connectAttr "B_poleVec_space_parentConstraint1.cty" "B_poleVec_space.ty";
connectAttr "B_poleVec_space_parentConstraint1.ctz" "B_poleVec_space.tz";
connectAttr "B_poleVec_space_parentConstraint1.crx" "B_poleVec_space.rx";
connectAttr "B_poleVec_space_parentConstraint1.cry" "B_poleVec_space.ry";
connectAttr "B_poleVec_space_parentConstraint1.crz" "B_poleVec_space.rz";
connectAttr "B_poleVec_space.ro" "B_poleVec_space_parentConstraint1.cro";
connectAttr "B_poleVec_space.pim" "B_poleVec_space_parentConstraint1.cpim";
connectAttr "B_poleVec_space.rp" "B_poleVec_space_parentConstraint1.crp";
connectAttr "B_poleVec_space.rpt" "B_poleVec_space_parentConstraint1.crt";
connectAttr "IK_hip_aim_space.t" "B_poleVec_space_parentConstraint1.tg[0].tt";
connectAttr "IK_hip_aim_space.rp" "B_poleVec_space_parentConstraint1.tg[0].trp";
connectAttr "IK_hip_aim_space.rpt" "B_poleVec_space_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_hip_aim_space.r" "B_poleVec_space_parentConstraint1.tg[0].tr";
connectAttr "IK_hip_aim_space.ro" "B_poleVec_space_parentConstraint1.tg[0].tro";
connectAttr "IK_hip_aim_space.s" "B_poleVec_space_parentConstraint1.tg[0].ts";
connectAttr "IK_hip_aim_space.pm" "B_poleVec_space_parentConstraint1.tg[0].tpm";
connectAttr "B_poleVec_space_parentConstraint1.w0" "B_poleVec_space_parentConstraint1.tg[0].tw"
		;
connectAttr "unitConversion14.o" "B_poleVec_space_parentConstraint1.w0";
connectAttr "FK_IK_RVS.ox" "FK_leg_CTL_GRP.v";
connectAttr "hip_CTL.t" "FK_hip_space.t";
connectAttr "hip_CTL.r" "FK_hip_space.r";
connectAttr "hip_CTL.s" "FK_hip_space.s";
connectAttr "FK_hip_space_inverse_DCMX.os" "FK_hip_space_ivsScale.s";
connectAttr "input_thigh.t" "FK_thigh_CTL_offGRP.t";
connectAttr "input_thigh.r" "FK_thigh_CTL_offGRP.r";
connectAttr "input_thigh.s" "FK_thigh_CTL_offGRP.s";
connectAttr "makeNurbCircle14.oc" "FK_thigh_CTLShape.cr";
connectAttr "FK_thigh_CTL_inverse_DCMX.os" "FK_thigh_CTL_ivsScale.s";
connectAttr "input_F_knee.t" "FK_F_knee_CTL_offGRP.t";
connectAttr "input_F_knee.r" "FK_F_knee_CTL_offGRP.r";
connectAttr "input_F_knee.s" "FK_F_knee_CTL_offGRP.s";
connectAttr "makeNurbCircle15.oc" "FK_F_knee_CTLShape.cr";
connectAttr "FK_F_knee_CTL_inverse_DCMX.os" "FK_F_knee_CTL_ivsScale.s";
connectAttr "input_B_knee.t" "FK_B_knee_CTL_offGRP.t";
connectAttr "input_B_knee.r" "FK_B_knee_CTL_offGRP.r";
connectAttr "input_B_knee.s" "FK_B_knee_CTL_offGRP.s";
connectAttr "makeNurbCircle16.oc" "FK_B_knee_CTLShape.cr";
connectAttr "FK_B_knee_CTL_inverse_DCMX.os" "FK_B_knee_CTL_ivsScale.s";
connectAttr "input_ankle.t" "FK_ankle_CTL_offGRP.t";
connectAttr "input_ankle.r" "FK_ankle_CTL_offGRP.r";
connectAttr "input_ankle.s" "FK_ankle_CTL_offGRP.s";
connectAttr "makeNurbCircle17.oc" "FK_ankle_CTLShape.cr";
connectAttr "FK_ankle_CTL_inverse_DCMX.os" "FK_ankle_CTL_ivsScale.s";
connectAttr "input_hind_toe.t" "FK_hind_toe_CTL_offGRP.t";
connectAttr "input_hind_toe.r" "FK_hind_toe_CTL_offGRP.r";
connectAttr "input_hind_toe.s" "FK_hind_toe_CTL_offGRP.s";
connectAttr "leg_switch_CTL_DCMX.ot" "leg_switch_CTL_offGRP.t";
connectAttr "leg_switch_CTL_DCMX.os" "leg_switch_CTL_offGRP.s";
connectAttr "input_hip.t" "output.t";
connectAttr "input_hip.r" "output.r";
connectAttr "input_hip.s" "output.s";
connectAttr "hip_PRBL.ot" "hip.t";
connectAttr "input_hip.r" "hip.jo";
connectAttr "hip_BLCL.op" "hip.s";
connectAttr "hip_PRBL.or" "hip.r";
connectAttr "thigh_PRBL.ot" "thigh.t";
connectAttr "input_thigh.r" "thigh.jo";
connectAttr "hip.s" "thigh.is";
connectAttr "thigh_BLCL.op" "thigh.s";
connectAttr "thigh_PRBL.or" "thigh.r";
connectAttr "F_knee_PRBL.ot" "F_knee.t";
connectAttr "input_F_knee.r" "F_knee.jo";
connectAttr "F_knee_BLCL.op" "F_knee.s";
connectAttr "thigh.s" "F_knee.is";
connectAttr "F_knee_PRBL.or" "F_knee.r";
connectAttr "B_knee_PRBL.ot" "B_knee.t";
connectAttr "input_B_knee.r" "B_knee.jo";
connectAttr "F_knee.s" "B_knee.is";
connectAttr "B_knee_BLCL.op" "B_knee.s";
connectAttr "B_knee_PRBL.or" "B_knee.r";
connectAttr "B_knee.s" "ankle.is";
connectAttr "ankle_PRBL.ot" "ankle.t";
connectAttr "input_ankle.r" "ankle.jo";
connectAttr "ankle_BLCL.op" "ankle.s";
connectAttr "ankle_PRBL.or" "ankle.r";
connectAttr "ankle.s" "hind_toe.is";
connectAttr "hind_toe_PRBL.ot" "hind_toe.t";
connectAttr "input_hind_toe.r" "hind_toe.jo";
connectAttr "hind_toe_BLCL.op" "hind_toe.s";
connectAttr "hind_toe_PRBL.or" "hind_toe.r";
connectAttr "hind_toe.s" "hind_tiptoe.is";
connectAttr "hind_tiptoe_PRBL.ot" "hind_tiptoe.t";
connectAttr "input_hind_tiptoe.r" "hind_tiptoe.jo";
connectAttr "hind_tiptoe_BLCL.op" "hind_tiptoe.s";
connectAttr "hind_tiptoe_PRBL.or" "hind_tiptoe.r";
connectAttr "IK_thigh_space_MTMX.o" "IK_thigh_space_DCMX.imat";
connectAttr "input_thigh.wm" "IK_thigh_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_thigh_space_MTMX.i[1]";
connectAttr "leg_stretchIK_output.upperStretched_len" "upperLeg_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "leg_stretchIK_output.stretch_ctrl_value" "upperLeg_stretch_output_mul_ctrlVal.i2x"
		;
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
connectAttr "input_F_knee.wm" "input_knee_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_knee_local_MTMX.i[1]";
connectAttr "input_knee_local_MTMX.o" "midlegLen.im1";
connectAttr "input_ankle_local_MTMX.o" "midlegLen.im2";
connectAttr "input_B_knee.wm" "input_ankle_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_ankle_local_MTMX.i[1]";
connectAttr "B_knee_space_local_MTMX.o" "leg_ctrlLen.im2";
connectAttr "input_thigh_local_dist_MTMX.o" "leg_ctrlLen.im1";
connectAttr "B_knee_space.wm" "B_knee_space_local_MTMX.i[0]";
connectAttr "input_hip.wim" "B_knee_space_local_MTMX.i[1]";
connectAttr "input_thigh.wm" "input_thigh_local_dist_MTMX.i[0]";
connectAttr "input_hip.wim" "input_thigh_local_dist_MTMX.i[1]";
connectAttr "B_foot_CTL.softIK" "leg_IK_negate_val.i1x";
connectAttr "B_foot_CTL.stretch" "leg_IK_negate_val.i1y";
connectAttr "midlegLen.d" "softlowerLegLen.i1[1]";
connectAttr "loLegLen.d" "softlowerLegLen.i1[2]";
connectAttr "input_ankle_local_MTMX.o" "loLegLen.im1";
connectAttr "input_B_toe_local_MTMX.o" "loLegLen.im2";
connectAttr "input_ankle.wm" "input_B_toe_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_B_toe_local_MTMX.i[1]";
connectAttr "multMatrix5.o" "B_toe_ctrlLen.im1";
connectAttr "multMatrix4.o" "B_toe_ctrlLen.im2";
connectAttr "input_B_knee.wm" "multMatrix5.i[0]";
connectAttr "input_F_knee.wim" "multMatrix5.i[1]";
connectAttr "B_ankle.wm" "multMatrix4.i[0]";
connectAttr "input_F_knee.wim" "multMatrix4.i[1]";
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
connectAttr "multMatrix7.o" "decomposeMatrix2.imat";
connectAttr "hip_CTL.wm" "multMatrix7.i[0]";
connectAttr "motion_IK_GRP.wim" "multMatrix7.i[1]";
connectAttr "multMatrix8.o" "decomposeMatrix3.imat";
connectAttr "IK_thigh_CTL.wm" "multMatrix8.i[0]";
connectAttr "IK_hip.wim" "multMatrix8.i[1]";
connectAttr "B_knee_space.wm" "IK_B_knee_local_DCMX.imat";
connectAttr "B_ankle.wm" "IK_ankle_local_DCMX.imat";
connectAttr "B_ball.wm" "IK_hind_toe_local_DCMX.imat";
connectAttr "FK_thigh_local_MTMX.o" "FK_thigh_local_DCMX.imat";
connectAttr "FK_thigh_CTL.wm" "FK_thigh_local_MTMX.i[0]";
connectAttr "FK_thigh.pim" "FK_thigh_local_MTMX.i[1]";
connectAttr "FK_F_knee_local_MTMX.o" "FK_F_knee_local_DCMX.imat";
connectAttr "FK_F_knee_CTL.wm" "FK_F_knee_local_MTMX.i[0]";
connectAttr "FK_F_knee.pim" "FK_F_knee_local_MTMX.i[1]";
connectAttr "FK_B_knee_local_MTMX.o" "FK_B_knee_local_DCMX.imat";
connectAttr "FK_B_knee_CTL.wm" "FK_B_knee_local_MTMX.i[0]";
connectAttr "FK_B_knee.pim" "FK_B_knee_local_MTMX.i[1]";
connectAttr "FK_ankle_local_MTMX.o" "FK_ankle_local_DCMX.imat";
connectAttr "FK_ankle_CTL.wm" "FK_ankle_local_MTMX.i[0]";
connectAttr "FK_ankle.pim" "FK_ankle_local_MTMX.i[1]";
connectAttr "FK_hind_toe_local_MTMX.o" "FK_hind_toe_local_DCMX.imat";
connectAttr "FK_hind_toe_CTL.wm" "FK_hind_toe_local_MTMX.i[0]";
connectAttr "FK_hind_toe.pim" "FK_hind_toe_local_MTMX.i[1]";
connectAttr "hip_CTL.wim" "hip_L_CTL_inverse_DCMX.imat";
connectAttr "ball_bk_condition1.ocr" "unitConversion9.i";
connectAttr "B_foot_CTL.roll" "ball_bk_condition1.ft";
connectAttr "B_foot_CTL.roll" "ball_bk_condition1.cfr";
connectAttr "B_foot_CTL.bank" "unitConversion12.i";
connectAttr "B_foot_CTL.bank" "in_out_condition1.ft";
connectAttr "in_out_default_condition1.oc" "in_out_condition1.ct";
connectAttr "B_heel_out.t" "in_out_condition1.cf";
connectAttr "B_foot_CTL.bank" "in_out_default_condition1.ft";
connectAttr "B_heel_in.t" "in_out_default_condition1.cf";
connectAttr "toe_fn_condition1.ocr" "unitConversion11.i";
connectAttr "B_foot_CTL.rollStartAngle" "toe_fn_condition1.st";
connectAttr "B_foot_CTL.roll" "toe_fn_condition1.ft";
connectAttr "plusMinusAverage2.o1" "toe_fn_condition1.ctr";
connectAttr "B_foot_CTL.roll" "plusMinusAverage2.i1[0]";
connectAttr "B_foot_CTL.rollStartAngle" "plusMinusAverage2.i1[1]";
connectAttr "B_toe_local_MTMX.o" "B_toe_local_DCMX.imat";
connectAttr "input_hind_tiptoe.wm" "B_toe_local_MTMX.i[0]";
connectAttr "B_heel_CTL.wim" "B_toe_local_MTMX.i[1]";
connectAttr "ball_start_conditon1.ocr" "unitConversion10.i";
connectAttr "ball_fn_condition1.ocr" "ball_start_conditon1.ft";
connectAttr "B_foot_CTL.rollStartAngle" "ball_start_conditon1.st";
connectAttr "backto_zero_ball1.o1" "ball_start_conditon1.ctr";
connectAttr "ball_fn_condition1.ocr" "ball_start_conditon1.cfr";
connectAttr "B_foot_CTL.roll" "ball_fn_condition1.ft";
connectAttr "B_foot_CTL.roll" "ball_fn_condition1.ctr";
connectAttr "B_foot_CTL.rollStartAngle" "backto_zero_ball1.i1[0]";
connectAttr "ball_remap1.ov" "backto_zero_ball1.i1[1]";
connectAttr "after_ball_start1.o1" "ball_remap1.i";
connectAttr "B_foot_CTL.rollStartAngle" "ball_remap1.omx";
connectAttr "B_foot_CTL.roll" "after_ball_start1.i1[0]";
connectAttr "B_foot_CTL.rollStartAngle" "after_ball_start1.i1[1]";
connectAttr "B_ball_local_MTMX.o" "B_ball_local_DCMX.imat";
connectAttr "input_hind_toe.wm" "B_ball_local_MTMX.i[0]";
connectAttr "B_toe_CTL.wim" "B_ball_local_MTMX.i[1]";
connectAttr "B_ankle_local_MTMX.o" "B_ankle_local_DCMX.imat";
connectAttr "input_ankle.wm" "B_ankle_local_MTMX.i[0]";
connectAttr "B_ball_CTL.wim" "B_ankle_local_MTMX.i[1]";
connectAttr "B_knee_space_GRP_local_MTMX.o" "B_knee_space_GRP_local_DCMX.imat";
connectAttr "input_B_knee.wm" "B_knee_space_GRP_local_MTMX.i[0]";
connectAttr "B_ankle_aim_space.wim" "B_knee_space_GRP_local_MTMX.i[1]";
connectAttr "B_foot_CTL.toesAim" "unitConversion13.i";
connectAttr "unitConversion13.o" "toesAim_RVS1.ix";
connectAttr "upper_poleVec_offGRP_space_MTMX1.o" "upper_poleVec_offGRP_space_DCMX1.imat"
		;
connectAttr "input_F_knee.wm" "upper_poleVec_offGRP_space_MTMX1.i[0]";
connectAttr "IK_leg_CTL_GRP.wim" "upper_poleVec_offGRP_space_MTMX1.i[1]";
connectAttr "B_poleVec_CTL.follow" "unitConversion14.i";
connectAttr "leg_switch_CTL.FK_IK" "FK_IK_RVS.ix";
connectAttr "FK_hip_space.wim" "FK_hip_space_inverse_DCMX.imat";
connectAttr "FK_thigh_CTL.wim" "FK_thigh_CTL_inverse_DCMX.imat";
connectAttr "FK_F_knee_CTL.wim" "FK_F_knee_CTL_inverse_DCMX.imat";
connectAttr "FK_B_knee_CTL.wim" "FK_B_knee_CTL_inverse_DCMX.imat";
connectAttr "FK_ankle_CTL.wim" "FK_ankle_CTL_inverse_DCMX.imat";
connectAttr "leg_switch_CTL_MTMX.o" "leg_switch_CTL_DCMX.imat";
connectAttr "leg_switch_CTL_CHOI.o" "leg_switch_CTL_MTMX.i[0]";
connectAttr "leg_CTL_GRP.wim" "leg_switch_CTL_MTMX.i[1]";
connectAttr "FK_ankle_CTL.wm" "leg_switch_CTL_CHOI.i[0]";
connectAttr "B_ankle.wm" "leg_switch_CTL_CHOI.i[1]";
connectAttr "leg_switch_CTL.FK_IK" "leg_switch_CTL_CHOI.s";
connectAttr "IK_hip.t" "hip_PRBL.it1";
connectAttr "IK_hip.r" "hip_PRBL.ir1";
connectAttr "FK_hip.t" "hip_PRBL.it2";
connectAttr "FK_hip.r" "hip_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "hip_PRBL.w";
connectAttr "IK_hip.s" "hip_BLCL.c1";
connectAttr "FK_hip.s" "hip_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "hip_BLCL.b";
connectAttr "IK_thigh.t" "thigh_PRBL.it1";
connectAttr "IK_thigh.r" "thigh_PRBL.ir1";
connectAttr "FK_thigh.t" "thigh_PRBL.it2";
connectAttr "FK_thigh.r" "thigh_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "thigh_PRBL.w";
connectAttr "IK_thigh.s" "thigh_BLCL.c1";
connectAttr "FK_thigh.s" "thigh_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "thigh_BLCL.b";
connectAttr "IK_F_knee.t" "F_knee_PRBL.it1";
connectAttr "IK_F_knee.r" "F_knee_PRBL.ir1";
connectAttr "FK_F_knee.t" "F_knee_PRBL.it2";
connectAttr "FK_F_knee.r" "F_knee_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "F_knee_PRBL.w";
connectAttr "IK_F_knee.s" "F_knee_BLCL.c1";
connectAttr "FK_F_knee.s" "F_knee_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "F_knee_BLCL.b";
connectAttr "IK_B_knee.t" "B_knee_PRBL.it1";
connectAttr "IK_B_knee.r" "B_knee_PRBL.ir1";
connectAttr "FK_B_knee.t" "B_knee_PRBL.it2";
connectAttr "FK_B_knee.r" "B_knee_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "B_knee_PRBL.w";
connectAttr "IK_B_knee.s" "B_knee_BLCL.c1";
connectAttr "FK_B_knee.s" "B_knee_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "B_knee_BLCL.b";
connectAttr "IK_ankle.t" "ankle_PRBL.it1";
connectAttr "IK_ankle.r" "ankle_PRBL.ir1";
connectAttr "FK_ankle.t" "ankle_PRBL.it2";
connectAttr "FK_ankle.r" "ankle_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "ankle_PRBL.w";
connectAttr "IK_ankle.s" "ankle_BLCL.c1";
connectAttr "FK_ankle.s" "ankle_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "ankle_BLCL.b";
connectAttr "IK_hind_toe.t" "hind_toe_PRBL.it1";
connectAttr "IK_hind_toe.r" "hind_toe_PRBL.ir1";
connectAttr "FK_hind_toe.t" "hind_toe_PRBL.it2";
connectAttr "FK_hind_toe.r" "hind_toe_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "hind_toe_PRBL.w";
connectAttr "IK_hind_toe.s" "hind_toe_BLCL.c1";
connectAttr "FK_hind_toe.s" "hind_toe_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "hind_toe_BLCL.b";
connectAttr "IK_hind_tiptoe.t" "hind_tiptoe_PRBL.it1";
connectAttr "IK_hind_tiptoe.r" "hind_tiptoe_PRBL.ir1";
connectAttr "FK_hind_tiptoe.t" "hind_tiptoe_PRBL.it2";
connectAttr "FK_hind_tiptoe.r" "hind_tiptoe_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "hind_tiptoe_PRBL.w";
connectAttr "IK_hind_tiptoe.s" "hind_tiptoe_BLCL.c1";
connectAttr "FK_hind_tiptoe.s" "hind_tiptoe_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "hind_tiptoe_BLCL.b";
connectAttr "input_thigh_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_ankle_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_B_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uplegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midlegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softupperLegLen.msg" ":defaultRenderUtilityList1.u" -na;
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
connectAttr "leg_switch_CTL_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_switch_CTL_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_switch_CTL_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_bk_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_fn_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_remap1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_start_conditon1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toe_fn_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "after_ball_start1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "backto_zero_ball1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_default_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "B_knee_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesAim_RVS1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of q_leg.ma
