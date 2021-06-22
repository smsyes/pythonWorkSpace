//Maya ASCII 2019 scene
//Name: dog_V002_1.ma
//Last modified: Tue, Jun 22, 2021 02:05:10 PM
//Codeset: 949
file -rdi 1 -ns ":" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "D:/rnd/quadruped/dog/data/model.ma";
file -rdi 1 -ns ":" -rfn "q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
file -rdi 1 -ns ":" -dr 1 -rfn "fit_q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
file -r -ns ":" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "D:/rnd/quadruped/dog/data/model.ma";
file -r -ns ":" -dr 1 -rfn "q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
file -r -ns ":" -dr 1 -rfn "fit_q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "07E054F0-442A-C2FE-65C3-32ABA0DA3DEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 234.75357011923688 75.848115827635411 30.818529101881516 ;
	setAttr ".r" -type "double3" -12.338352729591294 80.199999999962699 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "58DE91FE-494A-0D7D-D57A-0994A559B397";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 237.37163767956105;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.6516842842102051 12.86774426716166 -27.973667444138361 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "7E17CC73-4812-B07C-8642-5B8BC089089B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.8505247589327851 1000.550686479096 -27.120231079354991 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C19CC89E-4859-4317-966B-9CA9A8A66A89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.550686479096;
	setAttr ".ow" 9.1608766959892645;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 7.1321015964244516 0 -29.1684648311941 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E5035B14-4DF9-1DDF-5EBA-2DA099BAE280";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "64353169-4965-B113-D9F2-66B8124EED66";
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
	rename -uid "F39707CA-419D-EE05-A859-CFA631659FFE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.9576067638715 22.836602934879302 -31.905494192600901 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E3530DBF-4A54-0112-FC66-D1B4BB732BE0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 996.30592247966126;
	setAttr ".ow" 79.038386561588723;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 5.6516842842102051 22.742811244847601 -21.976696444757287 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
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
createNode transform -n "IK_thigh_space" -p "|leg_GRP|leg_motion_GRP|motion_IK_GRP";
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
createNode transform -n "leg_softIK_input" -p "|leg_GRP|leg_motion_GRP|motion_IK_GRP";
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
createNode transform -n "leg_softIK_output" -p "|leg_GRP|leg_motion_GRP|motion_IK_GRP";
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
createNode transform -n "leg_stretchIK_input" -p "|leg_GRP|leg_motion_GRP|motion_IK_GRP";
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
createNode transform -n "leg_stretchIK_output" -p "|leg_GRP|leg_motion_GRP|motion_IK_GRP";
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
createNode joint -n "IK_hip" -p "|leg_GRP|leg_motion_GRP|motion_IK_GRP";
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
createNode transform -n "IK_hip_aim_space" -p "|leg_GRP|leg_motion_GRP|motion_IK_GRP";
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
createNode joint -n "FK_hip" -p "|leg_GRP|leg_motion_GRP|motion_FK_GRP";
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
createNode joint -n "hip" -p "|leg_GRP|output";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "40E36CC1-4CDA-84C2-E4CE-E1A169D9D67F";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "6244EB42-4F6A-F94B-D13C-B18F314B590E";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/part/dog_V002_1.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B7008E6E-4E14-B40A-93C1-F680259BDA0F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A6059995-460B-5E11-83DC-E0846FC1789D";
createNode displayLayerManager -n "layerManager";
	rename -uid "BE552FC3-46D2-0D16-B45E-868A0C9E3F68";
createNode displayLayer -n "defaultLayer";
	rename -uid "F40AE5C4-493D-6EC6-383E-BFA431F61530";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D72B10AB-4D5A-577C-7CA4-19B29C98D394";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "658056FD-421B-0A56-2D4A-7FAAE47650FC";
	setAttr ".g" yes;
createNode reference -n "modelRN";
	rename -uid "8BF57D11-495A-7D65-15D7-8793407A6883";
	setAttr -s 84 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 85
		2 "|Geometry" "visibility" " 1"
		5 3 "modelRN" "|Geometry.message" "modelRN.placeHolderList[1]" ""
		5 3 "modelRN" "|Geometry|body.message" "modelRN.placeHolderList[2]" 
		""
		5 3 "modelRN" "|Geometry|body|bodyShape.message" "modelRN.placeHolderList[3]" 
		""
		5 3 "modelRN" "|Geometry|body|bodyShapeOrig.message" "modelRN.placeHolderList[4]" 
		""
		5 3 "modelRN" "|Geometry|eye_l.message" "modelRN.placeHolderList[5]" 
		""
		5 3 "modelRN" "|Geometry|eye_l|eye_lShape.message" "modelRN.placeHolderList[6]" 
		""
		5 3 "modelRN" "|Geometry|eye_l|eye_lShapeOrig.message" "modelRN.placeHolderList[7]" 
		""
		5 3 "modelRN" "|Geometry|eye_r.message" "modelRN.placeHolderList[8]" 
		""
		5 3 "modelRN" "|Geometry|eye_r|eye_rShape.message" "modelRN.placeHolderList[9]" 
		""
		5 3 "modelRN" "|Geometry|eye_r|eye_rShapeOrig.message" "modelRN.placeHolderList[10]" 
		""
		5 3 "modelRN" "|Geometry|tongue.message" "modelRN.placeHolderList[11]" 
		""
		5 3 "modelRN" "|Geometry|tongue|tongueShape.message" "modelRN.placeHolderList[12]" 
		""
		5 3 "modelRN" "|Geometry|tongue|tongueShapeOrig.message" "modelRN.placeHolderList[13]" 
		""
		5 3 "modelRN" "|Geometry|nails1.message" "modelRN.placeHolderList[14]" 
		""
		5 3 "modelRN" "|Geometry|nails1|nailsShape1.message" "modelRN.placeHolderList[15]" 
		""
		5 3 "modelRN" "|Geometry|nails1|nailsShape1Orig.message" "modelRN.placeHolderList[16]" 
		""
		5 3 "modelRN" "|Geometry|nails2.message" "modelRN.placeHolderList[17]" 
		""
		5 3 "modelRN" "|Geometry|nails2|nailsShape2.message" "modelRN.placeHolderList[18]" 
		""
		5 3 "modelRN" "|Geometry|nails2|nailsShape2Orig.message" "modelRN.placeHolderList[19]" 
		""
		5 3 "modelRN" "|Geometry|nails3.message" "modelRN.placeHolderList[20]" 
		""
		5 3 "modelRN" "|Geometry|nails3|nailsShape3.message" "modelRN.placeHolderList[21]" 
		""
		5 3 "modelRN" "|Geometry|nails3|nailsShape3Orig.message" "modelRN.placeHolderList[22]" 
		""
		5 3 "modelRN" "|Geometry|nails4.message" "modelRN.placeHolderList[23]" 
		""
		5 3 "modelRN" "|Geometry|nails4|nailsShape4.message" "modelRN.placeHolderList[24]" 
		""
		5 3 "modelRN" "|Geometry|nails4|nailsShape4Orig.message" "modelRN.placeHolderList[25]" 
		""
		5 3 "modelRN" "|Geometry|nails5.message" "modelRN.placeHolderList[26]" 
		""
		5 3 "modelRN" "|Geometry|nails5|nailsShape5.message" "modelRN.placeHolderList[27]" 
		""
		5 3 "modelRN" "|Geometry|nails5|nailsShape5Orig.message" "modelRN.placeHolderList[28]" 
		""
		5 3 "modelRN" "|Geometry|nails6.message" "modelRN.placeHolderList[29]" 
		""
		5 3 "modelRN" "|Geometry|nails6|nailsShape6.message" "modelRN.placeHolderList[30]" 
		""
		5 3 "modelRN" "|Geometry|nails6|nailsShape6Orig.message" "modelRN.placeHolderList[31]" 
		""
		5 3 "modelRN" "|Geometry|nails7.message" "modelRN.placeHolderList[32]" 
		""
		5 3 "modelRN" "|Geometry|nails7|nailsShape7.message" "modelRN.placeHolderList[33]" 
		""
		5 3 "modelRN" "|Geometry|nails7|nailsShape7Orig.message" "modelRN.placeHolderList[34]" 
		""
		5 3 "modelRN" "|Geometry|nails8.message" "modelRN.placeHolderList[35]" 
		""
		5 3 "modelRN" "|Geometry|nails8|nailsShape8.message" "modelRN.placeHolderList[36]" 
		""
		5 3 "modelRN" "|Geometry|nails8|nailsShape8Orig.message" "modelRN.placeHolderList[37]" 
		""
		5 3 "modelRN" "|Geometry|nails9.message" "modelRN.placeHolderList[38]" 
		""
		5 3 "modelRN" "|Geometry|nails9|nailsShape9.message" "modelRN.placeHolderList[39]" 
		""
		5 3 "modelRN" "|Geometry|nails9|nailsShape9Orig.message" "modelRN.placeHolderList[40]" 
		""
		5 3 "modelRN" "|Geometry|nails10.message" "modelRN.placeHolderList[41]" 
		""
		5 3 "modelRN" "|Geometry|nails10|nailsShape10.message" "modelRN.placeHolderList[42]" 
		""
		5 3 "modelRN" "|Geometry|nails10|nailsShape10Orig.message" "modelRN.placeHolderList[43]" 
		""
		5 3 "modelRN" "|Geometry|nails11.message" "modelRN.placeHolderList[44]" 
		""
		5 3 "modelRN" "|Geometry|nails11|nailsShape11.message" "modelRN.placeHolderList[45]" 
		""
		5 3 "modelRN" "|Geometry|nails11|nailsShape11Orig.message" "modelRN.placeHolderList[46]" 
		""
		5 3 "modelRN" "|Geometry|nails12.message" "modelRN.placeHolderList[47]" 
		""
		5 3 "modelRN" "|Geometry|nails12|nailsShape12.message" "modelRN.placeHolderList[48]" 
		""
		5 3 "modelRN" "|Geometry|nails12|nailsShape12Orig.message" "modelRN.placeHolderList[49]" 
		""
		5 3 "modelRN" "|Geometry|nails13.message" "modelRN.placeHolderList[50]" 
		""
		5 3 "modelRN" "|Geometry|nails13|nailsShape13.message" "modelRN.placeHolderList[51]" 
		""
		5 3 "modelRN" "|Geometry|nails13|nailsShape13Orig.message" "modelRN.placeHolderList[52]" 
		""
		5 3 "modelRN" "|Geometry|nails14.message" "modelRN.placeHolderList[53]" 
		""
		5 3 "modelRN" "|Geometry|nails14|nailsShape14.message" "modelRN.placeHolderList[54]" 
		""
		5 3 "modelRN" "|Geometry|nails14|nailsShape14Orig.message" "modelRN.placeHolderList[55]" 
		""
		5 3 "modelRN" "|Geometry|nails15.message" "modelRN.placeHolderList[56]" 
		""
		5 3 "modelRN" "|Geometry|nails15|nailsShape15.message" "modelRN.placeHolderList[57]" 
		""
		5 3 "modelRN" "|Geometry|nails15|nailsShape15Orig.message" "modelRN.placeHolderList[58]" 
		""
		5 3 "modelRN" "|Geometry|nails16.message" "modelRN.placeHolderList[59]" 
		""
		5 3 "modelRN" "|Geometry|nails16|nailsShape16.message" "modelRN.placeHolderList[60]" 
		""
		5 3 "modelRN" "|Geometry|nails16|nailsShape16Orig.message" "modelRN.placeHolderList[61]" 
		""
		5 3 "modelRN" "|Geometry|nails17.message" "modelRN.placeHolderList[62]" 
		""
		5 3 "modelRN" "|Geometry|nails17|nailsShape17.message" "modelRN.placeHolderList[63]" 
		""
		5 3 "modelRN" "|Geometry|nails17|nailsShape17Orig.message" "modelRN.placeHolderList[64]" 
		""
		5 3 "modelRN" "|Geometry|nails18.message" "modelRN.placeHolderList[65]" 
		""
		5 3 "modelRN" "|Geometry|nails18|nailsShape18.message" "modelRN.placeHolderList[66]" 
		""
		5 3 "modelRN" "|Geometry|nails18|nailsShape18Orig.message" "modelRN.placeHolderList[67]" 
		""
		5 3 "modelRN" "|Geometry|teethUpper.message" "modelRN.placeHolderList[68]" 
		""
		5 3 "modelRN" "|Geometry|teethUpper|teethUpperShape.message" "modelRN.placeHolderList[69]" 
		""
		5 3 "modelRN" "|Geometry|teethUpper|teethUpperShapeOrig.message" "modelRN.placeHolderList[70]" 
		""
		5 3 "modelRN" "|Geometry|teethLower.message" "modelRN.placeHolderList[71]" 
		""
		5 3 "modelRN" "|Geometry|teethLower|teethLowerShape.message" "modelRN.placeHolderList[72]" 
		""
		5 3 "modelRN" "|Geometry|teethLower|teethLowerShapeOrig.message" "modelRN.placeHolderList[73]" 
		""
		5 3 "modelRN" "tweak1.message" "modelRN.placeHolderList[74]" ""
		5 3 "modelRN" "tweakSet1.message" "modelRN.placeHolderList[75]" ""
		5 3 "modelRN" "Dog_blinnSG.message" "modelRN.placeHolderList[76]" ""
		
		5 3 "modelRN" "Dog_blinn.message" "modelRN.placeHolderList[77]" ""
		5 3 "modelRN" "ZBrushTexture.message" "modelRN.placeHolderList[78]" 
		""
		5 3 "modelRN" "place2dTexture2.message" "modelRN.placeHolderList[79]" 
		""
		5 3 "modelRN" "bump2d1.message" "modelRN.placeHolderList[80]" ""
		5 3 "modelRN" "file1.message" "modelRN.placeHolderList[81]" ""
		5 3 "modelRN" "place2dTexture3.message" "modelRN.placeHolderList[82]" 
		""
		5 3 "modelRN" "file2.message" "modelRN.placeHolderList[83]" ""
		5 3 "modelRN" "place2dTexture4.message" "modelRN.placeHolderList[84]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "q_armRN";
	rename -uid "A1BD00E1-4B8B-5737-C714-049F8B52AD12";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
	setAttr -s 296 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"q_armRN"
		"q_armRN" 0
		"q_armRN" 299
		2 "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		5 3 "q_armRN" "|arm_GRP.message" "q_armRN.placeHolderList[1]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP.message" "q_armRN.placeHolderList[2]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|input_scapula.message" "q_armRN.placeHolderList[3]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|input_scapula|input_shoulder.message" 
		"q_armRN.placeHolderList[4]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow.message" 
		"q_armRN.placeHolderList[5]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow.message" 
		"q_armRN.placeHolderList[6]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow|input_wrist.message" 
		"q_armRN.placeHolderList[7]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow|input_wrist|input_toe.message" 
		"q_armRN.placeHolderList[8]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow|input_wrist|input_toe|input_tiptoe.message" 
		"q_armRN.placeHolderList[9]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP.message" "q_armRN.placeHolderList[10]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space.message" 
		"q_armRN.placeHolderList[11]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_shoulder_spaceShape.message" 
		"q_armRN.placeHolderList[12]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim.message" 
		"q_armRN.placeHolderList[13]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|IK_upper_CTLaimShape.message" 
		"q_armRN.placeHolderList[14]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC.message" 
		"q_armRN.placeHolderList[15]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_softIK_output_LOCShape.message" 
		"q_armRN.placeHolderList[16]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC.message" 
		"q_armRN.placeHolderList[17]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|upper_stretch_output_LOCShape.message" 
		"q_armRN.placeHolderList[18]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP.message" 
		"q_armRN.placeHolderList[19]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP|wrist_space.message" 
		"q_armRN.placeHolderList[20]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP|wrist_space|ikHandle1.message" 
		"q_armRN.placeHolderList[21]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP|wrist_space|ikHandle1|ikHandle1_poleVectorConstraint1.message" 
		"q_armRN.placeHolderList[22]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space.message" 
		"q_armRN.placeHolderList[23]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_wrist_spaceShape.message" 
		"q_armRN.placeHolderList[24]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim.message" 
		"q_armRN.placeHolderList[25]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|IK_lower_CTLaimShape.message" 
		"q_armRN.placeHolderList[26]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC.message" 
		"q_armRN.placeHolderList[27]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_softIK_output_LOCShape.message" 
		"q_armRN.placeHolderList[28]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_stretch_output_LOC.message" 
		"q_armRN.placeHolderList[29]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_stretch_output_LOC|lower_stretch_output_LOCShape.message" 
		"q_armRN.placeHolderList[30]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_stretch_output_LOC|ikHandle2.message" 
		"q_armRN.placeHolderList[31]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|IK_lower_CTLaim_aimConstraint1.message" 
		"q_armRN.placeHolderList[32]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_wrist_space_upVec.message" 
		"q_armRN.placeHolderList[33]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_wrist_space_upVec|IK_wrist_space_upVecShape.message" 
		"q_armRN.placeHolderList[34]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|IK_upper_CTLaim_aimConstraint1.message" 
		"q_armRN.placeHolderList[35]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_shoulder_space_upVec.message" 
		"q_armRN.placeHolderList[36]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_shoulder_space_upVec|IK_shoulder_space_upVecShape.message" 
		"q_armRN.placeHolderList[37]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|softIK_input.message" 
		"q_armRN.placeHolderList[38]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|softIK_output.message" 
		"q_armRN.placeHolderList[39]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|stretchIK_input.message" 
		"q_armRN.placeHolderList[40]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|stretchIK_output.message" 
		"q_armRN.placeHolderList[41]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula.message" 
		"q_armRN.placeHolderList[42]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder.message" 
		"q_armRN.placeHolderList[43]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow.message" 
		"q_armRN.placeHolderList[44]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow.message" 
		"q_armRN.placeHolderList[45]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist.message" 
		"q_armRN.placeHolderList[46]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|IK_toe.message" 
		"q_armRN.placeHolderList[47]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|IK_toe|IK_tiptoe.message" 
		"q_armRN.placeHolderList[48]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|IK_toe|effector4.message" 
		"q_armRN.placeHolderList[49]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|effector3.message" 
		"q_armRN.placeHolderList[50]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|effector2.message" 
		"q_armRN.placeHolderList[51]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|annotation1.message" 
		"q_armRN.placeHolderList[52]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|annotation1|annotationShape1.message" 
		"q_armRN.placeHolderList[53]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|effector1.message" 
		"q_armRN.placeHolderList[54]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula_aim_space.message" 
		"q_armRN.placeHolderList[55]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula_aim_space|IK_scapula_aim_space_aimConstraint1.message" 
		"q_armRN.placeHolderList[56]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_IK_GRP|IK_scapula_aim_space|IK_scapula_aim_space_pointConstraint1.message" 
		"q_armRN.placeHolderList[57]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP.message" "q_armRN.placeHolderList[58]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP|FK_scapula.message" 
		"q_armRN.placeHolderList[59]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder.message" 
		"q_armRN.placeHolderList[60]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow.message" 
		"q_armRN.placeHolderList[61]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow.message" 
		"q_armRN.placeHolderList[62]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow|FK_wrist.message" 
		"q_armRN.placeHolderList[63]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow|FK_wrist|FK_toe.message" 
		"q_armRN.placeHolderList[64]" ""
		5 3 "q_armRN" "|arm_GRP|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow|FK_wrist|FK_toe|FK_tiptoe.message" 
		"q_armRN.placeHolderList[65]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP.message" "q_armRN.placeHolderList[66]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.message" "q_armRN.placeHolderList[67]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[68]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL.message" 
		"q_armRN.placeHolderList[69]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTLShape.message" 
		"q_armRN.placeHolderList[70]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[71]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP.message" 
		"q_armRN.placeHolderList[72]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[73]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL.message" 
		"q_armRN.placeHolderList[74]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL|IK_shoulder_CTLShape.message" 
		"q_armRN.placeHolderList[75]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL|IK_wrist_aim.message" 
		"q_armRN.placeHolderList[76]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL|IK_wrist_aim|IK_wrist_aimShape.message" 
		"q_armRN.placeHolderList[77]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP.message" "q_armRN.placeHolderList[78]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|scapula_offGRP.message" 
		"q_armRN.placeHolderList[79]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space.message" 
		"q_armRN.placeHolderList[80]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP.message" 
		"q_armRN.placeHolderList[81]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[82]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL.message" 
		"q_armRN.placeHolderList[83]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel.message" 
		"q_armRN.placeHolderList[84]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heelShape.message" 
		"q_armRN.placeHolderList[85]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL.message" 
		"q_armRN.placeHolderList[86]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_CTLShape.message" 
		"q_armRN.placeHolderList[87]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_out.message" 
		"q_armRN.placeHolderList[88]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_out|F_heel_outShape.message" 
		"q_armRN.placeHolderList[89]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_in.message" 
		"q_armRN.placeHolderList[90]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_in|F_heel_inShape.message" 
		"q_armRN.placeHolderList[91]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe.message" 
		"q_armRN.placeHolderList[92]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toeShape.message" 
		"q_armRN.placeHolderList[93]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL.message" 
		"q_armRN.placeHolderList[94]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_toe_CTLShape.message" 
		"q_armRN.placeHolderList[95]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball.message" 
		"q_armRN.placeHolderList[96]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ballShape.message" 
		"q_armRN.placeHolderList[97]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL.message" 
		"q_armRN.placeHolderList[98]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_ball_CTLShape.message" 
		"q_armRN.placeHolderList[99]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist.message" 
		"q_armRN.placeHolderList[100]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wristShape.message" 
		"q_armRN.placeHolderList[101]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP.message" 
		"q_armRN.placeHolderList[102]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[103]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL.message" 
		"q_armRN.placeHolderList[104]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_CTLShape.message" 
		"q_armRN.placeHolderList[105]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space.message" 
		"q_armRN.placeHolderList[106]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_aim_space_aimConstraint1.message" 
		"q_armRN.placeHolderList[107]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP.message" 
		"q_armRN.placeHolderList[108]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP.message" 
		"q_armRN.placeHolderList[109]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space.message" 
		"q_armRN.placeHolderList[110]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|F_wrist_spaceShape.message" 
		"q_armRN.placeHolderList[111]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle3.message" 
		"q_armRN.placeHolderList[112]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle3|ikHandle3_parentConstraint1.message" 
		"q_armRN.placeHolderList[113]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle4.message" 
		"q_armRN.placeHolderList[114]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle4|ikHandle4_parentConstraint1.message" 
		"q_armRN.placeHolderList[115]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_foot_CTL_CTLShape.message" 
		"q_armRN.placeHolderList[116]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|IK_shoulder_aim.message" 
		"q_armRN.placeHolderList[117]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_foot_upVec.message" 
		"q_armRN.placeHolderList[118]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP.message" 
		"q_armRN.placeHolderList[119]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP.message" 
		"q_armRN.placeHolderList[120]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[121]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP|poleVec_CTL.message" 
		"q_armRN.placeHolderList[122]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP|poleVec_CTL|poleVec_CTLShape.message" 
		"q_armRN.placeHolderList[123]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP|poleVec_CTL_spcGRP_parentConstraint1.message" 
		"q_armRN.placeHolderList[124]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP.message" "q_armRN.placeHolderList[125]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP.message" 
		"q_armRN.placeHolderList[126]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space.message" 
		"q_armRN.placeHolderList[127]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale.message" 
		"q_armRN.placeHolderList[128]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP.message" 
		"q_armRN.placeHolderList[129]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[130]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL.message" 
		"q_armRN.placeHolderList[131]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTLShape.message" 
		"q_armRN.placeHolderList[132]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[133]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP.message" 
		"q_armRN.placeHolderList[134]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[135]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL.message" 
		"q_armRN.placeHolderList[136]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTLShape.message" 
		"q_armRN.placeHolderList[137]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[138]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP.message" 
		"q_armRN.placeHolderList[139]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[140]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL.message" 
		"q_armRN.placeHolderList[141]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTLShape.message" 
		"q_armRN.placeHolderList[142]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[143]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP.message" 
		"q_armRN.placeHolderList[144]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[145]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL.message" 
		"q_armRN.placeHolderList[146]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTLShape.message" 
		"q_armRN.placeHolderList[147]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[148]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP.message" 
		"q_armRN.placeHolderList[149]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP|FK_F_toe_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[150]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP|FK_F_toe_CTL_spcGRP|FK_F_toe_CTL.message" 
		"q_armRN.placeHolderList[151]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP|FK_F_toe_CTL_spcGRP|FK_F_toe_CTL|FK_F_toe_CTLShape.message" 
		"q_armRN.placeHolderList[152]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|arm_switch_CTL_offGRP.message" "q_armRN.placeHolderList[153]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|arm_switch_CTL_offGRP|arm_switch_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[154]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|arm_switch_CTL_offGRP|arm_switch_CTL_spcGRP|arm_switch_CTL.message" 
		"q_armRN.placeHolderList[155]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|arm_switch_CTL_offGRP|arm_switch_CTL_spcGRP|arm_switch_CTL|arm_switch_CTLShape.message" 
		"q_armRN.placeHolderList[156]" ""
		5 3 "q_armRN" "|arm_GRP|output.message" "q_armRN.placeHolderList[157]" 
		""
		5 3 "q_armRN" "|arm_GRP|output|scapula.message" "q_armRN.placeHolderList[158]" 
		""
		5 3 "q_armRN" "|arm_GRP|output|scapula|shoulder.message" "q_armRN.placeHolderList[159]" 
		""
		5 3 "q_armRN" "|arm_GRP|output|scapula|shoulder|B_elbow.message" "q_armRN.placeHolderList[160]" 
		""
		5 3 "q_armRN" "|arm_GRP|output|scapula|shoulder|B_elbow|F_elbow.message" 
		"q_armRN.placeHolderList[161]" ""
		5 3 "q_armRN" "|arm_GRP|output|scapula|shoulder|B_elbow|F_elbow|wrist.message" 
		"q_armRN.placeHolderList[162]" ""
		5 3 "q_armRN" "|arm_GRP|output|scapula|shoulder|B_elbow|F_elbow|wrist|toe.message" 
		"q_armRN.placeHolderList[163]" ""
		5 3 "q_armRN" "|arm_GRP|output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe.message" 
		"q_armRN.placeHolderList[164]" ""
		5 3 "q_armRN" "IK_shoulder_space_DCMX.message" "q_armRN.placeHolderList[165]" 
		""
		5 3 "q_armRN" "IK_shoulder_space_MTMX.message" "q_armRN.placeHolderList[166]" 
		""
		5 3 "q_armRN" "stretch_output_mul_CTLVal_MULT.message" "q_armRN.placeHolderList[167]" 
		""
		5 3 "q_armRN" "loarm_stretch_output_mul_CTLlVal_MULT.message" "q_armRN.placeHolderList[168]" 
		""
		5 3 "q_armRN" "soft_armLen_PMA.message" "q_armRN.placeHolderList[169]" 
		""
		5 3 "q_armRN" "uparmLen.message" "q_armRN.placeHolderList[170]" ""
		5 3 "q_armRN" "input_shoulder_local_MTMX.message" "q_armRN.placeHolderList[171]" 
		""
		5 3 "q_armRN" "input_elbow_local_MTMX.message" "q_armRN.placeHolderList[172]" 
		""
		5 3 "q_armRN" "midarmLen.message" "q_armRN.placeHolderList[173]" ""
		5 3 "q_armRN" "input_F_elbow_local_MTMX1.message" "q_armRN.placeHolderList[174]" 
		""
		5 3 "q_armRN" "upIKLen.message" "q_armRN.placeHolderList[175]" ""
		5 3 "q_armRN" "input_shoulder_local_dist_MTMX.message" "q_armRN.placeHolderList[176]" 
		""
		5 3 "q_armRN" "wrist_space_local_MTMX.message" "q_armRN.placeHolderList[177]" 
		""
		5 3 "q_armRN" "IK_negate_val_MULT.message" "q_armRN.placeHolderList[178]" 
		""
		5 3 "q_armRN" "loIKLen.message" "q_armRN.placeHolderList[179]" ""
		5 3 "q_armRN" "input_F_elbow_local_MTMX.message" "q_armRN.placeHolderList[180]" 
		""
		5 3 "q_armRN" "F_toe_CTL_local_MTMX.message" "q_armRN.placeHolderList[181]" 
		""
		5 3 "q_armRN" "loarm_soft_Len_PMA.message" "q_armRN.placeHolderList[182]" 
		""
		5 3 "q_armRN" "loarmLen.message" "q_armRN.placeHolderList[183]" ""
		5 3 "q_armRN" "input_F_toe01_local_MTMX.message" "q_armRN.placeHolderList[184]" 
		""
		5 3 "q_armRN" "CTLlen_COND.message" "q_armRN.placeHolderList[185]" ""
		
		5 3 "q_armRN" "softikV_COND.message" "q_armRN.placeHolderList[186]" 
		""
		5 3 "q_armRN" "result_softik_len_SUBT.message" "q_armRN.placeHolderList[187]" 
		""
		5 3 "q_armRN" "mult_softikV_MULT.message" "q_armRN.placeHolderList[188]" 
		""
		5 3 "q_armRN" "power_val_POW.message" "q_armRN.placeHolderList[189]" 
		""
		5 3 "q_armRN" "negate_val_MULT.message" "q_armRN.placeHolderList[190]" 
		""
		5 3 "q_armRN" "divide_uparm_softikV_DIVD.message" "q_armRN.placeHolderList[191]" 
		""
		5 3 "q_armRN" "CTLLen_minue_dif_SUBT.message" "q_armRN.placeHolderList[192]" 
		""
		5 3 "q_armRN" "armlen_minus_softikV_SUBT.message" "q_armRN.placeHolderList[193]" 
		""
		5 3 "q_armRN" "for_zerodivide_COND.message" "q_armRN.placeHolderList[194]" 
		""
		5 3 "q_armRN" "loarm_CTLlen_COND.message" "q_armRN.placeHolderList[195]" 
		""
		5 3 "q_armRN" "loarm_softikV_COND.message" "q_armRN.placeHolderList[196]" 
		""
		5 3 "q_armRN" "loarm_result_softik_len_SUBT.message" "q_armRN.placeHolderList[197]" 
		""
		5 3 "q_armRN" "loarm_mult_softikV_MULT.message" "q_armRN.placeHolderList[198]" 
		""
		5 3 "q_armRN" "loarm_power_val_POW.message" "q_armRN.placeHolderList[199]" 
		""
		5 3 "q_armRN" "loarm_negate_val_MULT.message" "q_armRN.placeHolderList[200]" 
		""
		5 3 "q_armRN" "divide_loarm_softikV_DIVD.message" "q_armRN.placeHolderList[201]" 
		""
		5 3 "q_armRN" "loarm_ctrlLen_minue_dif_SUBT.message" "q_armRN.placeHolderList[202]" 
		""
		5 3 "q_armRN" "loarm_armlen_minus_softikV_SUBT.message" "q_armRN.placeHolderList[203]" 
		""
		5 3 "q_armRN" "midarm_plus_stretch_PMA.message" "q_armRN.placeHolderList[204]" 
		""
		5 3 "q_armRN" "stretchCtrl_midarm_MULT.message" "q_armRN.placeHolderList[205]" 
		""
		5 3 "q_armRN" "stretched_midarmLen_MULT.message" "q_armRN.placeHolderList[206]" 
		""
		5 3 "q_armRN" "stretchedLen_SUBT.message" "q_armRN.placeHolderList[207]" 
		""
		5 3 "q_armRN" "midarm_ratio3_DIVD.message" "q_armRN.placeHolderList[208]" 
		""
		5 3 "q_armRN" "stretch_armLen_PMA.message" "q_armRN.placeHolderList[209]" 
		""
		5 3 "q_armRN" "uparm_plus_stretch_PMA.message" "q_armRN.placeHolderList[210]" 
		""
		5 3 "q_armRN" "stretchCtrl_uparm_MULT.message" "q_armRN.placeHolderList[211]" 
		""
		5 3 "q_armRN" "stretched_uparmLen_MULT.message" "q_armRN.placeHolderList[212]" 
		""
		5 3 "q_armRN" "uparm_ratio.message" "q_armRN.placeHolderList[213]" ""
		
		5 3 "q_armRN" "loarm_plus_stretch_PMA.message" "q_armRN.placeHolderList[214]" 
		""
		5 3 "q_armRN" "loarm_stretchCtrl_arm_MULT.message" "q_armRN.placeHolderList[215]" 
		""
		5 3 "q_armRN" "loarm_stretched_arm_MULT.message" "q_armRN.placeHolderList[216]" 
		""
		5 3 "q_armRN" "loarm_stretchedLen_SUBT.message" "q_armRN.placeHolderList[217]" 
		""
		5 3 "q_armRN" "loarm_ratio_DIVD.message" "q_armRN.placeHolderList[218]" 
		""
		5 3 "q_armRN" "loarm_stretch_armLen_PMA.message" "q_armRN.placeHolderList[219]" 
		""
		5 3 "q_armRN" "scapula_CTL_local_DCMX.message" "q_armRN.placeHolderList[220]" 
		""
		5 3 "q_armRN" "scapula_CTL_local_MTMX.message" "q_armRN.placeHolderList[221]" 
		""
		5 3 "q_armRN" "IK_shoulder_CTL_local_DCMX.message" "q_armRN.placeHolderList[222]" 
		""
		5 3 "q_armRN" "IK_shoulder_CTL_local_MTMX.message" "q_armRN.placeHolderList[223]" 
		""
		5 3 "q_armRN" "F_wrist_space_scale_DCMX.message" "q_armRN.placeHolderList[224]" 
		""
		5 3 "q_armRN" "F_wrist_CTL_scale_DCMX.message" "q_armRN.placeHolderList[225]" 
		""
		5 3 "q_armRN" "F_ball_CTL_scale_DCMX.message" "q_armRN.placeHolderList[226]" 
		""
		5 3 "q_armRN" "FK_shoulder_CTL_local_DCMX.message" "q_armRN.placeHolderList[227]" 
		""
		5 3 "q_armRN" "FK_shoulder_CTL_local_MTMX.message" "q_armRN.placeHolderList[228]" 
		""
		5 3 "q_armRN" "FK_B_elbow_CTL_local_DCMX.message" "q_armRN.placeHolderList[229]" 
		""
		5 3 "q_armRN" "FK_B_elbow_CTL_local_MTMX.message" "q_armRN.placeHolderList[230]" 
		""
		5 3 "q_armRN" "FK_F_elbow_CTL_local_DCMX.message" "q_armRN.placeHolderList[231]" 
		""
		5 3 "q_armRN" "FK_F_elbow_CTL_local_MTMX.message" "q_armRN.placeHolderList[232]" 
		""
		5 3 "q_armRN" "FK_F_wrist_CTL_local_DCMX.message" "q_armRN.placeHolderList[233]" 
		""
		5 3 "q_armRN" "FK_F_wrist_CTL_local_MTMX.message" "q_armRN.placeHolderList[234]" 
		""
		5 3 "q_armRN" "FK_F_toe_CTL_local_DCMX.message" "q_armRN.placeHolderList[235]" 
		""
		5 3 "q_armRN" "FK_F_toe_CTL_local_MTMX.message" "q_armRN.placeHolderList[236]" 
		""
		5 3 "q_armRN" "makeNurbCircle1.message" "q_armRN.placeHolderList[237]" 
		""
		5 3 "q_armRN" "scapula_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[238]" 
		""
		5 3 "q_armRN" "input_wrist_local_DCMX.message" "q_armRN.placeHolderList[239]" 
		""
		5 3 "q_armRN" "input_wrist_local_MTMX1.message" "q_armRN.placeHolderList[240]" 
		""
		5 3 "q_armRN" "unitConversion1.message" "q_armRN.placeHolderList[241]" 
		""
		5 3 "q_armRN" "ball_bk_condition.message" "q_armRN.placeHolderList[242]" 
		""
		5 3 "q_armRN" "unitConversion4.message" "q_armRN.placeHolderList[243]" 
		""
		5 3 "q_armRN" "unitConversion5.message" "q_armRN.placeHolderList[244]" 
		""
		5 3 "q_armRN" "in_out_condition.message" "q_armRN.placeHolderList[245]" 
		""
		5 3 "q_armRN" "in_out_default_condition.message" "q_armRN.placeHolderList[246]" 
		""
		5 3 "q_armRN" "unitConversion3.message" "q_armRN.placeHolderList[247]" 
		""
		5 3 "q_armRN" "toe_fn_condition.message" "q_armRN.placeHolderList[248]" 
		""
		5 3 "q_armRN" "roll_angle_SUBT.message" "q_armRN.placeHolderList[249]" 
		""
		5 3 "q_armRN" "unitConversion6.message" "q_armRN.placeHolderList[250]" 
		""
		5 3 "q_armRN" "input_tiptoe_local_DCMX.message" "q_armRN.placeHolderList[251]" 
		""
		5 3 "q_armRN" "input_tiptoe_local_MTMX.message" "q_armRN.placeHolderList[252]" 
		""
		5 3 "q_armRN" "unitConversion2.message" "q_armRN.placeHolderList[253]" 
		""
		5 3 "q_armRN" "ball_start_conditon.message" "q_armRN.placeHolderList[254]" 
		""
		5 3 "q_armRN" "ball_fn_condition.message" "q_armRN.placeHolderList[255]" 
		""
		5 3 "q_armRN" "backto_zero_ball_SUBT.message" "q_armRN.placeHolderList[256]" 
		""
		5 3 "q_armRN" "ball_remap.message" "q_armRN.placeHolderList[257]" ""
		
		5 3 "q_armRN" "after_ball_start_SUBT.message" "q_armRN.placeHolderList[258]" 
		""
		5 3 "q_armRN" "input_toe_local_DCMX.message" "q_armRN.placeHolderList[259]" 
		""
		5 3 "q_armRN" "input_toe_local_MTMX.message" "q_armRN.placeHolderList[260]" 
		""
		5 3 "q_armRN" "input_wrist_local_DCMX1.message" "q_armRN.placeHolderList[261]" 
		""
		5 3 "q_armRN" "input_wrist_local_MTMX.message" "q_armRN.placeHolderList[262]" 
		""
		5 3 "q_armRN" "unitConversion7.message" "q_armRN.placeHolderList[263]" 
		""
		5 3 "q_armRN" "toesAim_RVS.message" "q_armRN.placeHolderList[264]" ""
		
		5 3 "q_armRN" "input_F_elbow_local_DCMX.message" "q_armRN.placeHolderList[265]" 
		""
		5 3 "q_armRN" "input_F_elbow_local_MTMX2.message" "q_armRN.placeHolderList[266]" 
		""
		5 3 "q_armRN" "upper_poleVec_offGRP_space_DCMX.message" "q_armRN.placeHolderList[267]" 
		""
		5 3 "q_armRN" "upper_poleVec_offGRP_space_MTMX.message" "q_armRN.placeHolderList[268]" 
		""
		5 3 "q_armRN" "unitConversion8.message" "q_armRN.placeHolderList[269]" 
		""
		5 3 "q_armRN" "FKIK_RVS.message" "q_armRN.placeHolderList[270]" ""
		5 3 "q_armRN" "FK_scapula_space_inverse_DCMX.message" "q_armRN.placeHolderList[271]" 
		""
		5 3 "q_armRN" "makeNurbCircle7.message" "q_armRN.placeHolderList[272]" 
		""
		5 3 "q_armRN" "FK_shoulder_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[273]" 
		""
		5 3 "q_armRN" "makeNurbCircle8.message" "q_armRN.placeHolderList[274]" 
		""
		5 3 "q_armRN" "FK_B_elbow_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[275]" 
		""
		5 3 "q_armRN" "makeNurbCircle9.message" "q_armRN.placeHolderList[276]" 
		""
		5 3 "q_armRN" "FK_F_elbow_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[277]" 
		""
		5 3 "q_armRN" "makeNurbCircle10.message" "q_armRN.placeHolderList[278]" 
		""
		5 3 "q_armRN" "FK_F_wrist_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[279]" 
		""
		5 3 "q_armRN" "arm_switch_CTL_space_DCMX.message" "q_armRN.placeHolderList[280]" 
		""
		5 3 "q_armRN" "arm_switch_CTL_space_MTMX.message" "q_armRN.placeHolderList[281]" 
		""
		5 3 "q_armRN" "arm_switch_space_CHOI.message" "q_armRN.placeHolderList[282]" 
		""
		5 3 "q_armRN" "scapula_PRBL.message" "q_armRN.placeHolderList[283]" 
		""
		5 3 "q_armRN" "scapula_BLCL.message" "q_armRN.placeHolderList[284]" 
		""
		5 3 "q_armRN" "shoulder_PRBL.message" "q_armRN.placeHolderList[285]" 
		""
		5 3 "q_armRN" "shoulder_BLCL.message" "q_armRN.placeHolderList[286]" 
		""
		5 3 "q_armRN" "B_elbow_PRBL.message" "q_armRN.placeHolderList[287]" 
		""
		5 3 "q_armRN" "B_elbow_BLCL.message" "q_armRN.placeHolderList[288]" 
		""
		5 3 "q_armRN" "F_elbow_PRBL.message" "q_armRN.placeHolderList[289]" 
		""
		5 3 "q_armRN" "F_elbow_BLCL.message" "q_armRN.placeHolderList[290]" 
		""
		5 3 "q_armRN" "wrist_PRBL.message" "q_armRN.placeHolderList[291]" ""
		
		5 3 "q_armRN" "wrist_BLCL.message" "q_armRN.placeHolderList[292]" ""
		
		5 3 "q_armRN" "toe_PRBL.message" "q_armRN.placeHolderList[293]" ""
		5 3 "q_armRN" "toe_BLCL.message" "q_armRN.placeHolderList[294]" ""
		5 3 "q_armRN" "tiptoe_PRBL.message" "q_armRN.placeHolderList[295]" ""
		
		5 3 "q_armRN" "tiptoe_BLCL.message" "q_armRN.placeHolderList[296]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "fit_q_legRN";
	rename -uid "6B8464B1-40D9-31FC-34CD-7F978163D551";
	setAttr -s 21 ".phl";
	setAttr ".ed" -type "dataReferenceEdits" 
		"fit_q_legRN"
		"fit_q_legRN" 53
		2 "|fit_leg" "visibility" " 1"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee" "translate" " -type \"double3\" 0 -15.55672895730201333 -4.3035299768234836e-07"
		
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee" "translateX" 
		" -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee" "translateY" 
		" -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee" "translateZ" 
		" -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee" "translate" 
		" -type \"double3\" 0 -9.87506671968980676 -5.99697070001810317"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee" "translateX" 
		" -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee" "translateY" 
		" -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee" "translateZ" 
		" -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle" 
		"translate" " -type \"double3\" 0 -10.4438728933290097 0.047096735825636671"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle" 
		"translateX" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle" 
		"translateY" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle" 
		"translateZ" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe" 
		"translate" " -type \"double3\" 0 -0.83296070891929075 0.95006794953859242"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe" 
		"translateX" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe" 
		"translateY" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe" 
		"translateZ" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe" 
		"translate" " -type \"double3\" 0 -1.59091092290949243 3.29622986764591275"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe" 
		"translateX" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe" 
		"translateY" " -av"
		2 "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe" 
		"translateZ" " -av"
		5 4 "fit_q_legRN" "|fit_leg.tempJoints" "fit_q_legRN.placeHolderList[1]" 
		""
		5 4 "fit_q_legRN" "|fit_leg.tempJoints" "fit_q_legRN.placeHolderList[2]" 
		""
		5 4 "fit_q_legRN" "|fit_leg.tempJoints" "fit_q_legRN.placeHolderList[3]" 
		""
		5 4 "fit_q_legRN" "|fit_leg.tempJoints" "fit_q_legRN.placeHolderList[4]" 
		""
		5 4 "fit_q_legRN" "|fit_leg.tempJoints" "fit_q_legRN.placeHolderList[5]" 
		""
		5 4 "fit_q_legRN" "|fit_leg.tempJoints" "fit_q_legRN.placeHolderList[6]" 
		""
		5 4 "fit_q_legRN" "|fit_leg.tempJoints" "fit_q_legRN.placeHolderList[7]" 
		""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_hip.translateX" "fit_q_legRN.placeHolderList[8]" 
		""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_hip.translateY" "fit_q_legRN.placeHolderList[9]" 
		""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_hip.translateZ" "fit_q_legRN.placeHolderList[10]" 
		""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh.translateX" 
		"fit_q_legRN.placeHolderList[11]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh.translateY" 
		"fit_q_legRN.placeHolderList[12]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh.translateZ" 
		"fit_q_legRN.placeHolderList[13]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee.translateX" 
		"fit_q_legRN.placeHolderList[14]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee.translateY" 
		"fit_q_legRN.placeHolderList[15]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee.translateZ" 
		"fit_q_legRN.placeHolderList[16]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee.translateX" 
		"fit_q_legRN.placeHolderList[17]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee.translateY" 
		"fit_q_legRN.placeHolderList[18]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee.translateZ" 
		"fit_q_legRN.placeHolderList[19]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle.translateX" 
		"fit_q_legRN.placeHolderList[20]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle.translateY" 
		"fit_q_legRN.placeHolderList[21]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle.translateZ" 
		"fit_q_legRN.placeHolderList[22]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe.translateX" 
		"fit_q_legRN.placeHolderList[23]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe.translateY" 
		"fit_q_legRN.placeHolderList[24]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe.translateZ" 
		"fit_q_legRN.placeHolderList[25]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe.translateX" 
		"fit_q_legRN.placeHolderList[26]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe.translateY" 
		"fit_q_legRN.placeHolderList[27]" ""
		5 4 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe.translateZ" 
		"fit_q_legRN.placeHolderList[28]" ""
		"fit_q_legRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "0E6AE336-4706-5613-1B22-8DB46F34AA40";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "E8D530B0-42EC-8168-CD6E-E3B4B9CE804C";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "F2334776-43BA-9530-BA83-CA809B013ED7";
createNode decomposeMatrix -n "IK_knee_space_DCMX";
	rename -uid "2E54F161-4659-D3A6-594D-909007C3072B";
createNode multMatrix -n "IK_knee_space_MTMX";
	rename -uid "814173C6-475F-94CF-0576-D2B5EF3F9B4F";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "5C1CF9D9-4878-AB42-FDD5-0885345DC346";
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
createNode multMatrix -n "input_knee_local_dist_MTMX";
	rename -uid "914F372F-4C7D-CD79-47BE-32AD2F3C0281";
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
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX1";
	rename -uid "95B1AA86-475B-0088-D49A-90A63F52A673";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX1";
	rename -uid "82E5B8DF-4D82-6402-2B04-789F4FF103F1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "lower_poleVec_spcGRP_space_DCMX";
	rename -uid "96E1A6BF-45BC-00F3-E210-C49DFD85BF4C";
createNode multMatrix -n "lower_poleVec_spcGRP_space_MTMX";
	rename -uid "84845F9D-43D4-14E8-03CC-42903ED378C0";
createNode reverse -n "FK_IK_RVS";
	rename -uid "3C0B97EA-46BA-43A2-1C22-35BD4ACC8074";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "2B98FA65-4E68-9BEC-700A-1EB13850D9D3";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "ED42C220-47F6-6945-7423-C1827D0C0BBC";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "FD28614C-42CE-82CE-EC5D-6EB8C2033061";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "FE96B27B-4289-6355-4CF4-D985DCC379C4";
createNode script -n "uiConfigurationScriptNode1";
	rename -uid "A235A74F-4856-8389-CCD7-199513F8A03F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 525\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 524\n            -height 329\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 525\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1060\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode1";
	rename -uid "F53439BB-475C-1862-1774-64BF1704E539";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multMatrix -n "IK_ankle_offGRP_space_MTMX";
	rename -uid "BE6A13E1-4FA2-4E4B-F8D4-99AC825FD2C5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_ankle_offGRP_space_DCMX";
	rename -uid "FB1CE9E4-4D73-B122-F827-7E9F775505F6";
createNode choice -n "leg_switch_CTL_CHOI";
	rename -uid "437CB938-43CF-948C-F6C5-6A9B353575F2";
	setAttr -s 2 ".i";
createNode multMatrix -n "leg_switch_CTL_MTMX";
	rename -uid "F6316293-4E45-705D-032C-2E95CBC2AA60";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "leg_switch_CTL_DCMX";
	rename -uid "FDC77AA1-415B-056D-D366-AE92FD1348AC";
createNode multMatrix -n "IK_ankle_local_space_MTMX";
	rename -uid "E519B3B8-48EA-1D62-8B04-2FACFE98CC2C";
createNode decomposeMatrix -n "IK_ankle_local_space_DCMX";
	rename -uid "92A1BE73-442C-6426-B1C9-82BBBD65BB46";
createNode surfaceShader -n "surfaceShader1";
	rename -uid "5703F9F8-466C-C683-9BB2-8E86BEB421E0";
createNode shadingEngine -n "surfaceShader1SG";
	rename -uid "0FAE20D3-4187-6AB5-EDF4-5F9DEF8C4E9B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "31546665-472D-05D4-3FEF-1AA23FE1896F";
createNode lambert -n "lambert2";
	rename -uid "FFD439A0-4A71-1209-0867-D699FD7A6066";
	setAttr ".c" -type "float3" 0 1 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "68AD38E9-41AD-BD49-A1CF-4BAAC3DA3F93";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "FA494C9B-413B-C343-B5BA-70AD477E76A8";
createNode lambert -n "lambert3";
	rename -uid "F9231637-410A-978E-49D1-5895695E52F9";
	setAttr ".c" -type "float3" 0 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "33D5A55F-4561-F481-2843-07A152010E0E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C7EA62C3-4670-B3C4-64E9-D19C24F4AB40";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A7071BDF-4235-9E3F-F0AA-C39CC3E0B611";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679688;
	setAttr ".tgi[0].ni[1].y" -5.7142858505249023;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 582.85711669921875;
	setAttr ".tgi[0].ni[2].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 844.28570556640625;
	setAttr ".tgi[0].ni[3].y" -70;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[4].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 262.85714721679688;
	setAttr ".tgi[0].ni[5].y" -70;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "16E7076F-4BAD-DB0E-8DA2-16AFA1002BA8";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "1053374C-4C84-8ED3-7A65-E7933B4FB0E1";
createNode condition -n "ball_bk_condition1";
	rename -uid "FEDF6F46-4726-7655-AB7D-028B0BA96160";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion9";
	rename -uid "3FC586DC-48D1-7771-7ACD-42830DDB10E0";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_fn_condition1";
	rename -uid "BCD9C0C9-4762-BCED-0324-36878B5C629F";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
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
createNode condition -n "ball_start_conditon1";
	rename -uid "BCF92205-4D11-8B4A-E4EF-05A7AB36FCDD";
	setAttr ".op" 2;
createNode unitConversion -n "unitConversion10";
	rename -uid "48B26A03-4E34-DC5B-AD8F-1F9FF282F1D8";
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
createNode unitConversion -n "unitConversion11";
	rename -uid "00DB8B5D-4680-D1A4-0C4D-1BACB766338A";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "after_ball_start1";
	rename -uid "5C178D26-4234-EA84-EDEF-88AA9C6AD426";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "backto_zero_ball1";
	rename -uid "72B8A85D-4C32-2EA7-FD37-D497667D5055";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "in_out_condition1";
	rename -uid "9F7EC181-4223-B587-3B35-64B67AD6A3AC";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion12";
	rename -uid "31070B6F-4A7C-9EE9-13FF-56934279D76C";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_default_condition1";
	rename -uid "D8F25098-4C1C-FDA0-046E-FAA064E127F1";
createNode reference -n "sharedReferenceNode";
	rename -uid "C0837B62-4FC4-0964-0365-2ABCA035E757";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
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
createNode multMatrix -n "B_knee_space_local_MTMX";
	rename -uid "A47B417A-4D2C-0149-9FA7-8E8A1EA95A6B";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "1DF8E6FE-44B9-ACBA-364D-6699C3B87B37";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix5";
	rename -uid "CE131466-4017-BF29-B211-718073E46C5F";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix6";
	rename -uid "415F6954-4D11-B90A-23A5-8E9004A94105";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "2CA1B5C7-48CF-C690-1A57-84B0BF0D71B9";
createNode unitConversion -n "unitConversion13";
	rename -uid "041C3EA3-468D-A8E4-8174-EFB38451CE58";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS1";
	rename -uid "974B68DE-48C1-9D63-B564-C296E34940C8";
createNode unitConversion -n "unitConversion14";
	rename -uid "61A486D0-4375-D6CD-E9C6-0F859E140F8B";
	setAttr ".cf" 0.1;
createNode multMatrix -n "multMatrix7";
	rename -uid "B828E66A-4952-6B2E-8D1A-D2A98E6594B8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "7302BF39-4CEC-42C2-583D-2886EBD7E3BF";
createNode multMatrix -n "multMatrix8";
	rename -uid "2C0604C9-4A16-1883-339B-20AF7F5A4DDB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "6FEE57E7-47CB-34BF-420E-D6AFAD8AEB9D";
createNode decomposeMatrix -n "FK_hip_space_inverse_DCMX";
	rename -uid "C8ABBEBD-4577-C159-ACE9-91A68F1362FB";
createNode decomposeMatrix -n "FK_thigh_CTL_inverse_DCMX";
	rename -uid "60715B37-41FE-FCDB-B7B8-13BEE11B7469";
createNode decomposeMatrix -n "FK_F_knee_CTL_inverse_DCMX";
	rename -uid "4D0A5D63-47E0-81B9-DE52-A2BFE4E211E5";
createNode decomposeMatrix -n "FK_B_knee_CTL_inverse_DCMX";
	rename -uid "81C86220-4B10-005D-CD25-74A672C3C284";
createNode decomposeMatrix -n "FK_ankle_CTL_inverse_DCMX";
	rename -uid "8BDF571B-4261-9449-3EA3-54B97E078369";
createNode multMatrix -n "FK_thigh_local_MTMX";
	rename -uid "0BA992AF-4C7B-FAEC-E525-179932551E26";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_thigh_local_DCMX";
	rename -uid "AE16B1E3-458B-CE58-29B0-169157B5BAAF";
createNode multMatrix -n "FK_F_knee_local_MTMX";
	rename -uid "F592E7BE-4591-F0E5-514F-0EB6F847989B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_knee_local_DCMX";
	rename -uid "DF4D7C3C-48B4-28B0-A368-C1AE70A3A9E5";
createNode multMatrix -n "FK_B_knee_local_MTMX";
	rename -uid "E61395CD-4C28-2026-C533-6F8413CBB341";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_knee_local_DCMX";
	rename -uid "1115D447-4A94-48FA-31A4-62BA5EBF2030";
createNode multMatrix -n "FK_ankle_local_MTMX";
	rename -uid "5ABE96F3-4218-08AB-988F-9DAA72322334";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_ankle_local_DCMX";
	rename -uid "F313008F-4114-4490-D2B6-79AFB2B4EA58";
createNode multMatrix -n "FK_hind_toe_local_MTMX";
	rename -uid "39C3E20B-45FF-3F4D-7396-C8A345971A17";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_hind_toe_local_DCMX";
	rename -uid "A7E2E89A-46D3-7D88-4E62-959ADE007A1F";
createNode decomposeMatrix -n "hip_L_CTL_inverse_DCMX";
	rename -uid "5AB251E8-4831-035C-4F05-2097A6E81B55";
createNode decomposeMatrix -n "IK_B_knee_local_DCMX";
	rename -uid "789C0F31-447C-A772-A0CF-93AE09BCC531";
createNode decomposeMatrix -n "IK_ankle_local_DCMX";
	rename -uid "A6A28937-4A53-C8C8-16ED-E28D31E249E0";
createNode decomposeMatrix -n "IK_hind_toe_local_DCMX";
	rename -uid "9A98CFB1-4107-D572-0776-62AEE40E15B5";
createNode multMatrix -n "B_knee_space_GRP_local_MTMX";
	rename -uid "BEDCD997-4088-2076-12E9-4EAB015D3E2E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_knee_space_GRP_local_DCMX";
	rename -uid "4BBBBC01-4D34-E3DC-28CC-A6966EC87EA8";
createNode multMatrix -n "B_ankle_local_MTMX";
	rename -uid "B7C94400-4A83-39CA-92A1-EC8A8B0569E2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_ankle_local_DCMX";
	rename -uid "D2BF6AEF-44B3-5B55-F4E6-0288D8C5A13F";
createNode multMatrix -n "B_ball_local_MTMX";
	rename -uid "72F3178E-43A2-BF87-7DF5-8FAD77910C7E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_ball_local_DCMX";
	rename -uid "42BC93E0-4551-8DCD-599B-999C6D3971B9";
createNode multMatrix -n "B_toe_local_MTMX";
	rename -uid "0C855EF5-4DB8-6EF9-B9FF-DC955F2C2BB7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_toe_local_DCMX";
	rename -uid "D6CB6F25-4EED-7DF2-9972-45BFCA9BBB84";
createNode animCurveTL -n "fit_hip_translateX";
	rename -uid "51816316-4233-08A0-025C-B7A637B2A343";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.580369234085083;
createNode animCurveTL -n "fit_hip_translateY";
	rename -uid "8667FD1D-41AC-646A-CDBD-33A358961671";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 40.881076812744141;
createNode animCurveTL -n "fit_hip_translateZ";
	rename -uid "857C3DF7-4000-7B33-367A-F299A3C36A6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -18.168113708496094;
createNode animCurveTL -n "fit_thigh_translateX";
	rename -uid "336E5102-4476-C4B5-1E7E-70B78D489CB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0713150501251221;
createNode animCurveTL -n "fit_thigh_translateY";
	rename -uid "0D7615D6-4047-E4CE-CCA9-0DAC51FFB708";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.5815366105945259;
createNode animCurveTL -n "fit_thigh_translateZ";
	rename -uid "381DF233-4F4C-DF17-D3E3-E9989B7536A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -3.808582305908196;
createNode animCurveTL -n "fit_F_knee_translateX";
	rename -uid "AE0946BE-4BFE-4040-9CB8-C7A54D58E035";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "fit_F_knee_translateY";
	rename -uid "2680D7DF-4195-7CEC-F39F-1986C8725372";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -15.556728957302013;
createNode animCurveTL -n "fit_F_knee_translateZ";
	rename -uid "A863052C-463B-FC23-A360-1194D0DC87DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.3035299768234836e-07;
createNode animCurveTL -n "fit_B_knee_translateX";
	rename -uid "B654919D-4391-A26F-ECDE-26965A33883D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "fit_B_knee_translateY";
	rename -uid "054744ED-4F48-EBFD-1101-32911C4C9AD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -9.8750667196898068;
createNode animCurveTL -n "fit_B_knee_translateZ";
	rename -uid "71790CE3-4CDC-F54E-BDB0-35A24F06CC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -5.9969707000181032;
createNode animCurveTL -n "fit_ankle_translateX";
	rename -uid "5A4278EE-4766-3D07-CCB7-89B3B05F4CA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "fit_ankle_translateY";
	rename -uid "279B67DA-4DB9-C2C7-BAF4-DEBACCC6F5B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -10.44387289332901;
createNode animCurveTL -n "fit_ankle_translateZ";
	rename -uid "9B4EBFC9-416F-0BD0-801B-CD95453CB5CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.047096735825636671;
createNode animCurveTL -n "fit_hind_toe_translateX";
	rename -uid "0B49D1F6-4A98-6226-50EA-F89D14A64E25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "fit_hind_toe_translateY";
	rename -uid "680F429F-4CD9-2E88-13EC-309D7B659C6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.83296070891929075;
createNode animCurveTL -n "fit_hind_toe_translateZ";
	rename -uid "0696052D-4F6F-803B-53B2-BFB74A4B65F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.95006794953859242;
createNode animCurveTL -n "fit_hind_tiptoe_translateX";
	rename -uid "563E2E92-4C01-FC70-DD65-679BB891C05E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "fit_hind_tiptoe_translateY";
	rename -uid "C87BD1E4-4996-B598-A1CD-FD96E460D208";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.5909109229094924;
createNode animCurveTL -n "fit_hind_tiptoe_translateZ";
	rename -uid "7D3C0A3D-48AE-99EF-5A23-5694B683378D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.2962298676459127;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "86210856-4E52-52C8-B387-E3BC56FDF1C8";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 118.83343244482214 -1016.2803642301684 ;
	setAttr ".tgi[0].vh" -type "double2" 2185.5545754653745 -25.25284134268702 ;
	setAttr -s 401 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 5794.28564453125;
	setAttr ".tgi[0].ni[0].y" 6174.28564453125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 5794.28564453125;
	setAttr ".tgi[0].ni[1].y" 5802.85693359375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 597.14288330078125;
	setAttr ".tgi[0].ni[2].y" 2570;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -3752.857177734375;
	setAttr ".tgi[0].ni[3].y" 4631.4287109375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 5847.14306640625;
	setAttr ".tgi[0].ni[4].y" -1691.4285888671875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 904.28570556640625;
	setAttr ".tgi[0].ni[5].y" 2367.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -3138.571533203125;
	setAttr ".tgi[0].ni[6].y" 4757.14306640625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 5794.28564453125;
	setAttr ".tgi[0].ni[7].y" 5701.4287109375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 5840;
	setAttr ".tgi[0].ni[8].y" -1301.4285888671875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 5794.28564453125;
	setAttr ".tgi[0].ni[9].y" 5510;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 5794.28564453125;
	setAttr ".tgi[0].ni[10].y" 5321.4287109375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 5850;
	setAttr ".tgi[0].ni[11].y" -1821.4285888671875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 5842.85693359375;
	setAttr ".tgi[0].ni[12].y" -1431.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 597.14288330078125;
	setAttr ".tgi[0].ni[13].y" 2468.571533203125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -3138.571533203125;
	setAttr ".tgi[0].ni[14].y" 4858.5712890625;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 5395.71435546875;
	setAttr ".tgi[0].ni[15].y" 5597.14306640625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 5395.71435546875;
	setAttr ".tgi[0].ni[16].y" 5321.4287109375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 5025.71435546875;
	setAttr ".tgi[0].ni[17].y" 5371.4287109375;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 5872.85693359375;
	setAttr ".tgi[0].ni[18].y" -7151.4287109375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 5395.71435546875;
	setAttr ".tgi[0].ni[19].y" 5105.71435546875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 5847.14306640625;
	setAttr ".tgi[0].ni[20].y" -1561.4285888671875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 904.28570556640625;
	setAttr ".tgi[0].ni[21].y" 2570;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 5025.71435546875;
	setAttr ".tgi[0].ni[22].y" 5155.71435546875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 290;
	setAttr ".tgi[0].ni[23].y" 2468.571533203125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -1872.857177734375;
	setAttr ".tgi[0].ni[24].y" 5052.85693359375;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 5872.85693359375;
	setAttr ".tgi[0].ni[25].y" -7021.4287109375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 597.14288330078125;
	setAttr ".tgi[0].ni[26].y" 2367.142822265625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -3138.571533203125;
	setAttr ".tgi[0].ni[27].y" 4528.5712890625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1287.142822265625;
	setAttr ".tgi[0].ni[28].y" 4972.85693359375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 5794.28564453125;
	setAttr ".tgi[0].ni[29].y" 5212.85693359375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 5794.28564453125;
	setAttr ".tgi[0].ni[30].y" 5105.71435546875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 5794.28564453125;
	setAttr ".tgi[0].ni[31].y" 4978.5712890625;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1604.2857666015625;
	setAttr ".tgi[0].ni[32].y" 4380;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 5872.85693359375;
	setAttr ".tgi[0].ni[33].y" -6891.4287109375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 4104.28564453125;
	setAttr ".tgi[0].ni[34].y" 1394.2857666015625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 5872.85693359375;
	setAttr ".tgi[0].ni[35].y" -6761.4287109375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 4718.5712890625;
	setAttr ".tgi[0].ni[36].y" 5735.71435546875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 5794.28564453125;
	setAttr ".tgi[0].ni[37].y" 4877.14306640625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 5872.85693359375;
	setAttr ".tgi[0].ni[38].y" -6631.4287109375;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 5794.28564453125;
	setAttr ".tgi[0].ni[39].y" 4775.71435546875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 4411.4287109375;
	setAttr ".tgi[0].ni[40].y" 1982.857177734375;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1518.5714111328125;
	setAttr ".tgi[0].ni[41].y" 1128.5714111328125;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 5794.28564453125;
	setAttr ".tgi[0].ni[42].y" 4674.28564453125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 5872.85693359375;
	setAttr ".tgi[0].ni[43].y" -6501.4287109375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 3490;
	setAttr ".tgi[0].ni[44].y" 3965.71435546875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -3138.571533203125;
	setAttr ".tgi[0].ni[45].y" 4960;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 2542.857177734375;
	setAttr ".tgi[0].ni[46].y" 2912.857177734375;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 5872.85693359375;
	setAttr ".tgi[0].ni[47].y" -6371.4287109375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 5872.85693359375;
	setAttr ".tgi[0].ni[48].y" -6241.4287109375;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[49].y" 2382.857177734375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 904.28570556640625;
	setAttr ".tgi[0].ni[50].y" 2468.571533203125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 5872.85693359375;
	setAttr ".tgi[0].ni[51].y" -6111.4287109375;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 4104.28564453125;
	setAttr ".tgi[0].ni[52].y" 3132.857177734375;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 4411.4287109375;
	setAttr ".tgi[0].ni[53].y" 3105.71435546875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" -2180;
	setAttr ".tgi[0].ni[54].y" 5302.85693359375;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 5872.85693359375;
	setAttr ".tgi[0].ni[55].y" -1171.4285888671875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 3797.142822265625;
	setAttr ".tgi[0].ni[56].y" 1740;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 34.285713195800781;
	setAttr ".tgi[0].ni[57].y" 5315.71435546875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 5395.71435546875;
	setAttr ".tgi[0].ni[58].y" 3017.142822265625;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -2831.428466796875;
	setAttr ".tgi[0].ni[59].y" 5618.5712890625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -1211.4285888671875;
	setAttr ".tgi[0].ni[60].y" 5425.71435546875;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 5794.28564453125;
	setAttr ".tgi[0].ni[61].y" 4572.85693359375;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -2180;
	setAttr ".tgi[0].ni[62].y" 4985.71435546875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 980;
	setAttr ".tgi[0].ni[63].y" 3484.28564453125;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -2520;
	setAttr ".tgi[0].ni[64].y" 5097.14306640625;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 5872.85693359375;
	setAttr ".tgi[0].ni[65].y" -1041.4285888671875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 1920;
	setAttr ".tgi[0].ni[66].y" 3312.857177734375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 5794.28564453125;
	setAttr ".tgi[0].ni[67].y" 4471.4287109375;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -2520;
	setAttr ".tgi[0].ni[68].y" 4792.85693359375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 5794.28564453125;
	setAttr ".tgi[0].ni[69].y" 4370;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 5395.71435546875;
	setAttr ".tgi[0].ni[70].y" 4718.5712890625;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -2831.428466796875;
	setAttr ".tgi[0].ni[71].y" 5111.4287109375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 5794.28564453125;
	setAttr ".tgi[0].ni[72].y" 4268.5712890625;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 5872.85693359375;
	setAttr ".tgi[0].ni[73].y" -5981.4287109375;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 5872.85693359375;
	setAttr ".tgi[0].ni[74].y" -911.4285888671875;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 5794.28564453125;
	setAttr ".tgi[0].ni[75].y" 4167.14306640625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 3797.142822265625;
	setAttr ".tgi[0].ni[76].y" 3108.571533203125;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 5395.71435546875;
	setAttr ".tgi[0].ni[77].y" 5701.4287109375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -2520;
	setAttr ".tgi[0].ni[78].y" 5255.71435546875;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -2831.428466796875;
	setAttr ".tgi[0].ni[79].y" 5517.14306640625;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 4718.5712890625;
	setAttr ".tgi[0].ni[80].y" 3000;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -2520;
	setAttr ".tgi[0].ni[81].y" 5357.14306640625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 5872.85693359375;
	setAttr ".tgi[0].ni[82].y" -5851.4287109375;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 2857.142822265625;
	setAttr ".tgi[0].ni[83].y" 3002.857177734375;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 5872.85693359375;
	setAttr ".tgi[0].ni[84].y" -5721.4287109375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 2857.142822265625;
	setAttr ".tgi[0].ni[85].y" 2255.71435546875;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 5872.85693359375;
	setAttr ".tgi[0].ni[86].y" -5591.4287109375;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 5025.71435546875;
	setAttr ".tgi[0].ni[87].y" 5802.85693359375;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -2180;
	setAttr ".tgi[0].ni[88].y" 4827.14306640625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 5794.28564453125;
	setAttr ".tgi[0].ni[89].y" 4065.71435546875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" -2520;
	setAttr ".tgi[0].ni[90].y" 4995.71435546875;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" -2520;
	setAttr ".tgi[0].ni[91].y" 4894.28564453125;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -2520;
	setAttr ".tgi[0].ni[92].y" 4691.4287109375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 5872.85693359375;
	setAttr ".tgi[0].ni[93].y" -5461.4287109375;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 980;
	setAttr ".tgi[0].ni[94].y" 5052.85693359375;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 661.4285888671875;
	setAttr ".tgi[0].ni[95].y" 5210;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 5794.28564453125;
	setAttr ".tgi[0].ni[96].y" 3964.28564453125;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 5872.85693359375;
	setAttr ".tgi[0].ni[97].y" -781.4285888671875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 5794.28564453125;
	setAttr ".tgi[0].ni[98].y" 3862.857177734375;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 5872.85693359375;
	setAttr ".tgi[0].ni[99].y" -5331.4287109375;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 5025.71435546875;
	setAttr ".tgi[0].ni[100].y" 2914.28564453125;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 5794.28564453125;
	setAttr ".tgi[0].ni[101].y" 3544.28564453125;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 5794.28564453125;
	setAttr ".tgi[0].ni[102].y" 3391.428466796875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 5794.28564453125;
	setAttr ".tgi[0].ni[103].y" 2887.142822265625;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 5395.71435546875;
	setAttr ".tgi[0].ni[104].y" 5802.85693359375;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" -2831.428466796875;
	setAttr ".tgi[0].ni[105].y" 5212.85693359375;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -2180;
	setAttr ".tgi[0].ni[106].y" 4725.71435546875;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -2180;
	setAttr ".tgi[0].ni[107].y" 5201.4287109375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 341.42855834960938;
	setAttr ".tgi[0].ni[108].y" 5295.71435546875;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -272.85714721679688;
	setAttr ".tgi[0].ni[109].y" 5392.85693359375;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" -580;
	setAttr ".tgi[0].ni[110].y" 5401.4287109375;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -887.14288330078125;
	setAttr ".tgi[0].ni[111].y" 5391.4287109375;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" -1565.7142333984375;
	setAttr ".tgi[0].ni[112].y" 5338.5712890625;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -1211.4285888671875;
	setAttr ".tgi[0].ni[113].y" 5152.85693359375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 980;
	setAttr ".tgi[0].ni[114].y" 4938.5712890625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 5872.85693359375;
	setAttr ".tgi[0].ni[115].y" -5201.4287109375;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 3797.142822265625;
	setAttr ".tgi[0].ni[116].y" 3540;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 5794.28564453125;
	setAttr ".tgi[0].ni[117].y" 2655.71435546875;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -2831.428466796875;
	setAttr ".tgi[0].ni[118].y" 5415.71435546875;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 5794.28564453125;
	setAttr ".tgi[0].ni[119].y" 2352.857177734375;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 5872.85693359375;
	setAttr ".tgi[0].ni[120].y" -5071.4287109375;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 5872.85693359375;
	setAttr ".tgi[0].ni[121].y" -4941.4287109375;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 5872.85693359375;
	setAttr ".tgi[0].ni[122].y" -4811.4287109375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 5794.28564453125;
	setAttr ".tgi[0].ni[123].y" 1975.7142333984375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 5872.85693359375;
	setAttr ".tgi[0].ni[124].y" -4681.4287109375;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 5395.71435546875;
	setAttr ".tgi[0].ni[125].y" 2237.142822265625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 4718.5712890625;
	setAttr ".tgi[0].ni[126].y" 630;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 5794.28564453125;
	setAttr ".tgi[0].ni[127].y" 1822.857177734375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 4718.5712890625;
	setAttr ".tgi[0].ni[128].y" 3695.71435546875;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 5872.85693359375;
	setAttr ".tgi[0].ni[129].y" -4551.4287109375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 5565.71435546875;
	setAttr ".tgi[0].ni[130].y" -651.4285888671875;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 5794.28564453125;
	setAttr ".tgi[0].ni[131].y" 1721.4285888671875;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 5395.71435546875;
	setAttr ".tgi[0].ni[132].y" -305.71429443359375;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 5872.85693359375;
	setAttr ".tgi[0].ni[133].y" -4421.4287109375;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 5395.71435546875;
	setAttr ".tgi[0].ni[134].y" 1822.857177734375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" -2831.428466796875;
	setAttr ".tgi[0].ni[135].y" 5314.28564453125;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 5794.28564453125;
	setAttr ".tgi[0].ni[136].y" 1620;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 5794.28564453125;
	setAttr ".tgi[0].ni[137].y" 1462.857177734375;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 4411.4287109375;
	setAttr ".tgi[0].ni[138].y" 1062.857177734375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 5794.28564453125;
	setAttr ".tgi[0].ni[139].y" 1160;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 5872.85693359375;
	setAttr ".tgi[0].ni[140].y" -4291.4287109375;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 5395.71435546875;
	setAttr ".tgi[0].ni[141].y" 2025.7142333984375;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 5872.85693359375;
	setAttr ".tgi[0].ni[142].y" -4161.4287109375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 5872.85693359375;
	setAttr ".tgi[0].ni[143].y" -4031.428466796875;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 4718.5712890625;
	setAttr ".tgi[0].ni[144].y" 1880;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 5794.28564453125;
	setAttr ".tgi[0].ni[145].y" 1058.5714111328125;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" -3752.857177734375;
	setAttr ".tgi[0].ni[146].y" 4530;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 5395.71435546875;
	setAttr ".tgi[0].ni[147].y" 1924.2857666015625;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 5872.85693359375;
	setAttr ".tgi[0].ni[148].y" -3901.428466796875;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 5395.71435546875;
	setAttr ".tgi[0].ni[149].y" 1317.142822265625;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 5025.71435546875;
	setAttr ".tgi[0].ni[150].y" 1398.5714111328125;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 34.285713195800781;
	setAttr ".tgi[0].ni[151].y" 3638.571533203125;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 5872.85693359375;
	setAttr ".tgi[0].ni[152].y" -3771.428466796875;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 2227.142822265625;
	setAttr ".tgi[0].ni[153].y" 3888.571533203125;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 2227.142822265625;
	setAttr ".tgi[0].ni[154].y" 2661.428466796875;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 4104.28564453125;
	setAttr ".tgi[0].ni[155].y" 1838.5714111328125;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 3174.28564453125;
	setAttr ".tgi[0].ni[156].y" 1691.4285888671875;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 3174.28564453125;
	setAttr ".tgi[0].ni[157].y" 4032.857177734375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 2227.142822265625;
	setAttr ".tgi[0].ni[158].y" 4637.14306640625;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 1920;
	setAttr ".tgi[0].ni[159].y" 4062.857177734375;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 5395.71435546875;
	setAttr ".tgi[0].ni[160].y" 567.14288330078125;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 2542.857177734375;
	setAttr ".tgi[0].ni[161].y" 2414.28564453125;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 4718.5712890625;
	setAttr ".tgi[0].ni[162].y" 947.14288330078125;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 5395.71435546875;
	setAttr ".tgi[0].ni[163].y" 972.85711669921875;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 5395.71435546875;
	setAttr ".tgi[0].ni[164].y" 770;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 4718.5712890625;
	setAttr ".tgi[0].ni[165].y" 1505.7142333984375;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 661.4285888671875;
	setAttr ".tgi[0].ni[166].y" 4994.28564453125;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 4104.28564453125;
	setAttr ".tgi[0].ni[167].y" 848.5714111328125;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" -1565.7142333984375;
	setAttr ".tgi[0].ni[168].y" 4894.28564453125;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 4411.4287109375;
	setAttr ".tgi[0].ni[169].y" 1164.2857666015625;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 4104.28564453125;
	setAttr ".tgi[0].ni[170].y" 1121.4285888671875;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" -887.14288330078125;
	setAttr ".tgi[0].ni[171].y" 4984.28564453125;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 661.4285888671875;
	setAttr ".tgi[0].ni[172].y" 3218.571533203125;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 3797.142822265625;
	setAttr ".tgi[0].ni[173].y" 3850;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 4411.4287109375;
	setAttr ".tgi[0].ni[174].y" 2141.428466796875;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 5395.71435546875;
	setAttr ".tgi[0].ni[175].y" 668.5714111328125;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 3174.28564453125;
	setAttr ".tgi[0].ni[176].y" 4248.5712890625;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 5025.71435546875;
	setAttr ".tgi[0].ni[177].y" 582.85711669921875;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 4411.4287109375;
	setAttr ".tgi[0].ni[178].y" 1265.7142333984375;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 3797.142822265625;
	setAttr ".tgi[0].ni[179].y" 1122.857177734375;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 5025.71435546875;
	setAttr ".tgi[0].ni[180].y" 1601.4285888671875;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" -580;
	setAttr ".tgi[0].ni[181].y" 4995.71435546875;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 2227.142822265625;
	setAttr ".tgi[0].ni[182].y" 4262.85693359375;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 341.42855834960938;
	setAttr ".tgi[0].ni[183].y" 5017.14306640625;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" -272.85714721679688;
	setAttr ".tgi[0].ni[184].y" 5005.71435546875;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 2227.142822265625;
	setAttr ".tgi[0].ni[185].y" 4421.4287109375;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 2542.857177734375;
	setAttr ".tgi[0].ni[186].y" 4545.71435546875;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 2857.142822265625;
	setAttr ".tgi[0].ni[187].y" 4371.4287109375;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 3174.28564453125;
	setAttr ".tgi[0].ni[188].y" 3931.428466796875;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 2227.142822265625;
	setAttr ".tgi[0].ni[189].y" 3990;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" -272.85714721679688;
	setAttr ".tgi[0].ni[190].y" 3424.28564453125;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" -1211.4285888671875;
	setAttr ".tgi[0].ni[191].y" 4937.14306640625;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 2542.857177734375;
	setAttr ".tgi[0].ni[192].y" 3942.857177734375;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" -580;
	setAttr ".tgi[0].ni[193].y" 3365.71435546875;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 2857.142822265625;
	setAttr ".tgi[0].ni[194].y" 2615.71435546875;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 4104.28564453125;
	setAttr ".tgi[0].ni[195].y" 2168.571533203125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1920;
	setAttr ".tgi[0].ni[196].y" 4507.14306640625;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 3174.28564453125;
	setAttr ".tgi[0].ni[197].y" 2522.857177734375;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 2857.142822265625;
	setAttr ".tgi[0].ni[198].y" 4098.5712890625;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2542.857177734375;
	setAttr ".tgi[0].ni[199].y" 4215.71435546875;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 4411.4287109375;
	setAttr ".tgi[0].ni[200].y" 1538.5714111328125;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 341.42855834960938;
	setAttr ".tgi[0].ni[201].y" 3291.428466796875;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1604.2857666015625;
	setAttr ".tgi[0].ni[202].y" 2845.71435546875;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 34.285713195800781;
	setAttr ".tgi[0].ni[203].y" 4984.28564453125;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 2857.142822265625;
	setAttr ".tgi[0].ni[204].y" 3940;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 1287.142822265625;
	setAttr ".tgi[0].ni[205].y" 2918.571533203125;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 3490;
	setAttr ".tgi[0].ni[206].y" 1854.2857666015625;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 5565.71435546875;
	setAttr ".tgi[0].ni[207].y" -521.4285888671875;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 5395.71435546875;
	setAttr ".tgi[0].ni[208].y" 81.428573608398438;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 5025.71435546875;
	setAttr ".tgi[0].ni[209].y" 68.571426391601563;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 5395.71435546875;
	setAttr ".tgi[0].ni[210].y" 871.4285888671875;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 5025.71435546875;
	setAttr ".tgi[0].ni[211].y" 855.71429443359375;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 4718.5712890625;
	setAttr ".tgi[0].ni[212].y" 1048.5714111328125;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 4411.4287109375;
	setAttr ".tgi[0].ni[213].y" 847.14288330078125;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 4718.5712890625;
	setAttr ".tgi[0].ni[214].y" 845.71429443359375;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 4411.4287109375;
	setAttr ".tgi[0].ni[215].y" 688.5714111328125;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 5025.71435546875;
	setAttr ".tgi[0].ni[216].y" 1702.857177734375;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 3797.142822265625;
	setAttr ".tgi[0].ni[217].y" 2905.71435546875;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 4718.5712890625;
	setAttr ".tgi[0].ni[218].y" 1404.2857666015625;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 5025.71435546875;
	setAttr ".tgi[0].ni[219].y" 2280;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 5565.71435546875;
	setAttr ".tgi[0].ni[220].y" -911.4285888671875;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 4104.28564453125;
	setAttr ".tgi[0].ni[221].y" 2930;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 4718.5712890625;
	setAttr ".tgi[0].ni[222].y" 2650;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 4411.4287109375;
	setAttr ".tgi[0].ni[223].y" 2902.857177734375;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 3490;
	setAttr ".tgi[0].ni[224].y" 3072.857177734375;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 5025.71435546875;
	setAttr ".tgi[0].ni[225].y" 2755.71435546875;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 5395.71435546875;
	setAttr ".tgi[0].ni[226].y" 2858.571533203125;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 5025.71435546875;
	setAttr ".tgi[0].ni[227].y" 2178.571533203125;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 5395.71435546875;
	setAttr ".tgi[0].ni[228].y" 2497.142822265625;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 5025.71435546875;
	setAttr ".tgi[0].ni[229].y" 3544.28564453125;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 3490;
	setAttr ".tgi[0].ni[230].y" 2971.428466796875;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 5025.71435546875;
	setAttr ".tgi[0].ni[231].y" 1500;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 5395.71435546875;
	setAttr ".tgi[0].ni[232].y" 3972.857177734375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 5565.71435546875;
	setAttr ".tgi[0].ni[233].y" -781.4285888671875;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" -3445.71435546875;
	setAttr ".tgi[0].ni[234].y" 4888.5712890625;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 4718.5712890625;
	setAttr ".tgi[0].ni[235].y" 3594.28564453125;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 5565.71435546875;
	setAttr ".tgi[0].ni[236].y" -1171.4285888671875;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 5395.71435546875;
	setAttr ".tgi[0].ni[237].y" 1074.2857666015625;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 3174.28564453125;
	setAttr ".tgi[0].ni[238].y" 1850;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 5395.71435546875;
	setAttr ".tgi[0].ni[239].y" 2655.71435546875;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 5565.71435546875;
	setAttr ".tgi[0].ni[240].y" -1041.4285888671875;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 4104.28564453125;
	setAttr ".tgi[0].ni[241].y" 3031.428466796875;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 4411.4287109375;
	setAttr ".tgi[0].ni[242].y" 3004.28564453125;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 4718.5712890625;
	setAttr ".tgi[0].ni[243].y" 2751.428466796875;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 5025.71435546875;
	setAttr ".tgi[0].ni[244].y" 2654.28564453125;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 5395.71435546875;
	setAttr ".tgi[0].ni[245].y" 2757.142822265625;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" -3138.571533203125;
	setAttr ".tgi[0].ni[246].y" 5118.5712890625;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 5025.71435546875;
	setAttr ".tgi[0].ni[247].y" 1014.2857055664063;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 5395.71435546875;
	setAttr ".tgi[0].ni[248].y" 3871.428466796875;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 3797.142822265625;
	setAttr ".tgi[0].ni[249].y" 3007.142822265625;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 5395.71435546875;
	setAttr ".tgi[0].ni[250].y" 1721.4285888671875;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 5395.71435546875;
	setAttr ".tgi[0].ni[251].y" 4174.28564453125;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 5395.71435546875;
	setAttr ".tgi[0].ni[252].y" 3544.28564453125;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 5395.71435546875;
	setAttr ".tgi[0].ni[253].y" 4275.71435546875;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[254].y" -3545.71435546875;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[255].y" 1672.857177734375;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 904.28570556640625;
	setAttr ".tgi[0].ni[256].y" 1657.142822265625;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[257].y" -3415.71435546875;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 904.28570556640625;
	setAttr ".tgi[0].ni[258].y" 1454.2857666015625;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[259].y" -3285.71435546875;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[260].y" 1470;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 904.28570556640625;
	setAttr ".tgi[0].ni[261].y" 1352.857177734375;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[262].y" -3155.71435546875;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[263].y" 1571.4285888671875;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 904.28570556640625;
	setAttr ".tgi[0].ni[264].y" 1555.7142333984375;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 904.28570556640625;
	setAttr ".tgi[0].ni[265].y" 1251.4285888671875;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[266].y" 1368.5714111328125;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[267].y" -3025.71435546875;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 5794.28564453125;
	setAttr ".tgi[0].ni[268].y" 957.14288330078125;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" -2520;
	setAttr ".tgi[0].ni[269].y" 3122.857177734375;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 5872.85693359375;
	setAttr ".tgi[0].ni[270].y" -3641.428466796875;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 5794.28564453125;
	setAttr ".tgi[0].ni[271].y" 718.5714111328125;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 4104.28564453125;
	setAttr ".tgi[0].ni[272].y" 632.85711669921875;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 3797.142822265625;
	setAttr ".tgi[0].ni[273].y" 2012.857177734375;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 5794.28564453125;
	setAttr ".tgi[0].ni[274].y" 81.428573608398438;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 5025.71435546875;
	setAttr ".tgi[0].ni[275].y" 481.42855834960938;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 4718.5712890625;
	setAttr ".tgi[0].ni[276].y" 185.71427917480469;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 5872.85693359375;
	setAttr ".tgi[0].ni[277].y" -3511.428466796875;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 4411.4287109375;
	setAttr ".tgi[0].ni[278].y" 2414.28564453125;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 5872.85693359375;
	setAttr ".tgi[0].ni[279].y" -3381.428466796875;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 5872.85693359375;
	setAttr ".tgi[0].ni[280].y" -3251.428466796875;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 5872.85693359375;
	setAttr ".tgi[0].ni[281].y" -3121.428466796875;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 5872.85693359375;
	setAttr ".tgi[0].ni[282].y" -2991.428466796875;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 4104.28564453125;
	setAttr ".tgi[0].ni[283].y" 3735.71435546875;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 5025.71435546875;
	setAttr ".tgi[0].ni[284].y" 1172.857177734375;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 5872.85693359375;
	setAttr ".tgi[0].ni[285].y" -2861.428466796875;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 5872.85693359375;
	setAttr ".tgi[0].ni[286].y" -651.4285888671875;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 5025.71435546875;
	setAttr ".tgi[0].ni[287].y" 2077.142822265625;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 5395.71435546875;
	setAttr ".tgi[0].ni[288].y" 4877.14306640625;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 2857.142822265625;
	setAttr ".tgi[0].ni[289].y" 2097.142822265625;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 4718.5712890625;
	setAttr ".tgi[0].ni[290].y" 3492.857177734375;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 5794.28564453125;
	setAttr ".tgi[0].ni[291].y" -32.857143402099609;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 5872.85693359375;
	setAttr ".tgi[0].ni[292].y" -2731.428466796875;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 5794.28564453125;
	setAttr ".tgi[0].ni[293].y" -134.28572082519531;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 5872.85693359375;
	setAttr ".tgi[0].ni[294].y" -2601.428466796875;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 5395.71435546875;
	setAttr ".tgi[0].ni[295].y" 1505.7142333984375;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 2542.857177734375;
	setAttr ".tgi[0].ni[296].y" 2687.142822265625;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 4718.5712890625;
	setAttr ".tgi[0].ni[297].y" 1778.5714111328125;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 5794.28564453125;
	setAttr ".tgi[0].ni[298].y" -235.71427917480469;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 4718.5712890625;
	setAttr ".tgi[0].ni[299].y" 2325.71435546875;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 5872.85693359375;
	setAttr ".tgi[0].ni[300].y" -2471.428466796875;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 5872.85693359375;
	setAttr ".tgi[0].ni[301].y" -2341.428466796875;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 5025.71435546875;
	setAttr ".tgi[0].ni[302].y" 2438.571533203125;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 5025.71435546875;
	setAttr ".tgi[0].ni[303].y" 5587.14306640625;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" -887.14288330078125;
	setAttr ".tgi[0].ni[304].y" 2835.71435546875;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 5025.71435546875;
	setAttr ".tgi[0].ni[305].y" 1804.2857666015625;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 5872.85693359375;
	setAttr ".tgi[0].ni[306].y" -521.4285888671875;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 5872.85693359375;
	setAttr ".tgi[0].ni[307].y" -2211.428466796875;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 4718.5712890625;
	setAttr ".tgi[0].ni[308].y" 27.142856597900391;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 1920;
	setAttr ".tgi[0].ni[309].y" 2714.28564453125;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 5872.85693359375;
	setAttr ".tgi[0].ni[310].y" -2081.428466796875;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 3797.142822265625;
	setAttr ".tgi[0].ni[311].y" 3324.28564453125;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 3490;
	setAttr ".tgi[0].ni[312].y" 2584.28564453125;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 5794.28564453125;
	setAttr ".tgi[0].ni[313].y" -391.42855834960938;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 5872.85693359375;
	setAttr ".tgi[0].ni[314].y" -1951.4285888671875;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 34.285713195800781;
	setAttr ".tgi[0].ni[315].y" 3411.428466796875;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 980;
	setAttr ".tgi[0].ni[316].y" 3087.142822265625;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 5025.71435546875;
	setAttr ".tgi[0].ni[317].y" 380;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 5395.71435546875;
	setAttr ".tgi[0].ni[318].y" 2395.71435546875;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[319].y" -2895.71435546875;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[320].y" -2765.71435546875;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 904.28570556640625;
	setAttr ".tgi[0].ni[321].y" 2265.71435546875;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 904.28570556640625;
	setAttr ".tgi[0].ni[322].y" 1961.4285888671875;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 904.28570556640625;
	setAttr ".tgi[0].ni[323].y" 2164.28564453125;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[324].y" 1128.5714111328125;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[325].y" 2281.428466796875;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[326].y" 954.28570556640625;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[327].y" 1774.2857666015625;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[328].y" 1977.142822265625;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[329].y" -2635.71435546875;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 904.28570556640625;
	setAttr ".tgi[0].ni[330].y" 1860;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[331].y" 852.85711669921875;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[332].y" -2505.71435546875;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[333].y" -2375.71435546875;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[334].y" -2245.71435546875;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[335].y" 1875.7142333984375;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 904.28570556640625;
	setAttr ".tgi[0].ni[336].y" 405.71429443359375;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[337].y" 2078.571533203125;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[338].y" -2115.71435546875;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[339].y" -1985.7142333984375;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[340].y" 2180;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[341].y" -1855.7142333984375;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 904.28570556640625;
	setAttr ".tgi[0].ni[342].y" 1758.5714111328125;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 904.28570556640625;
	setAttr ".tgi[0].ni[343].y" 2062.857177734375;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[344].y" 962.85711669921875;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[345].y" 455.71429443359375;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 904.28570556640625;
	setAttr ".tgi[0].ni[346].y" 608.5714111328125;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[347].y" 760;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[348].y" -1725.7142333984375;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" 904.28570556640625;
	setAttr ".tgi[0].ni[349].y" 947.14288330078125;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[350].y" -1595.7142333984375;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[351].y" 1064.2857666015625;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[352].y" 1165.7142333984375;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" 904.28570556640625;
	setAttr ".tgi[0].ni[353].y" 1150;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[354].y" -1465.7142333984375;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[355].y" -1335.7142333984375;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" 904.28570556640625;
	setAttr ".tgi[0].ni[356].y" 304.28570556640625;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[357].y" -1205.7142333984375;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[358].y" -1075.7142333984375;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" 904.28570556640625;
	setAttr ".tgi[0].ni[359].y" 845.71429443359375;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 904.28570556640625;
	setAttr ".tgi[0].ni[360].y" 1048.5714111328125;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[361].y" 1267.142822265625;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[362].y" 557.14288330078125;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[363].y" -945.71429443359375;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" 904.28570556640625;
	setAttr ".tgi[0].ni[364].y" 744.28570556640625;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[365].y" -815.71429443359375;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[366].y" 861.4285888671875;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" 904.28570556640625;
	setAttr ".tgi[0].ni[367].y" 507.14285278320313;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" 904.28570556640625;
	setAttr ".tgi[0].ni[368].y" 94.285713195800781;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[369].y" -1788.5714111328125;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[370].y" -1658.5714111328125;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[371].y" -1528.5714111328125;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[372].y" -685.71429443359375;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[373].y" -1398.5714111328125;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[374].y" -1268.5714111328125;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[375].y" -555.71429443359375;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[376].y" -425.71429443359375;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[377].y" 252.85714721679688;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" 904.28570556640625;
	setAttr ".tgi[0].ni[378].y" 202.85714721679688;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[379].y" -1138.5714111328125;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[380].y" -1008.5714111328125;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[381].y" -295.71429443359375;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[382].y" -165.71427917480469;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[383].y" 354.28570556640625;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[384].y" -878.5714111328125;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[385].y" -748.5714111328125;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[386].y" -618.5714111328125;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[387].y" -488.57144165039063;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[388].y" -358.57144165039063;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[389].y" -228.57142639160156;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[390].y" -98.571426391601563;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[391].y" 31.428571701049805;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[392].y" 161.42857360839844;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[393].y" 291.42855834960938;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[394].y" 421.42855834960938;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[395].y" 551.4285888671875;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[396].y" 658.5714111328125;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[397].y" 681.4285888671875;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[398].y" -35.714286804199219;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 1058.5714111328125;
	setAttr ".tgi[0].ni[399].y" 811.4285888671875;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 1211.4285888671875;
	setAttr ".tgi[0].ni[400].y" 94.285713195800781;
	setAttr ".tgi[0].ni[400].nvs" 18304;
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 195 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
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
	setAttr -s 6 ".sol";
connectAttr "modelRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn";
connectAttr "modelRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn";
connectAttr "modelRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn";
connectAttr "modelRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn";
connectAttr "modelRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn";
connectAttr "modelRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn";
connectAttr "modelRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn";
connectAttr "modelRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn";
connectAttr "modelRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn";
connectAttr "modelRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn";
connectAttr "modelRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn";
connectAttr "modelRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn";
connectAttr "modelRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn";
connectAttr "modelRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn";
connectAttr "modelRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn";
connectAttr "modelRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn";
connectAttr "modelRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn";
connectAttr "modelRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn";
connectAttr "modelRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn";
connectAttr "modelRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn";
connectAttr "modelRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn";
connectAttr "modelRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn";
connectAttr "modelRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn";
connectAttr "modelRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn";
connectAttr "modelRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn";
connectAttr "modelRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn";
connectAttr "modelRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn";
connectAttr "modelRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn";
connectAttr "modelRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn";
connectAttr "modelRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn";
connectAttr "modelRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn";
connectAttr "modelRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn";
connectAttr "modelRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn";
connectAttr "modelRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn";
connectAttr "modelRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn";
connectAttr "modelRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn";
connectAttr "modelRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn";
connectAttr "modelRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn";
connectAttr "modelRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn";
connectAttr "modelRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn";
connectAttr "modelRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn";
connectAttr "modelRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn";
connectAttr "modelRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn";
connectAttr "modelRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn";
connectAttr "modelRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn";
connectAttr "modelRN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn";
connectAttr "modelRN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn";
connectAttr "modelRN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn";
connectAttr "modelRN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn";
connectAttr "modelRN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn";
connectAttr "modelRN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn";
connectAttr "modelRN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn";
connectAttr "modelRN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn";
connectAttr "modelRN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn";
connectAttr "modelRN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn";
connectAttr "modelRN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn";
connectAttr "modelRN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn";
connectAttr "modelRN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn";
connectAttr "modelRN.phl[59]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn";
connectAttr "modelRN.phl[60]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn";
connectAttr "modelRN.phl[61]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn";
connectAttr "modelRN.phl[62]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn";
connectAttr "modelRN.phl[63]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn";
connectAttr "modelRN.phl[64]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn";
connectAttr "modelRN.phl[65]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn";
connectAttr "modelRN.phl[66]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn";
connectAttr "modelRN.phl[67]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn";
connectAttr "modelRN.phl[68]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn";
connectAttr "modelRN.phl[69]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn";
connectAttr "modelRN.phl[70]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn";
connectAttr "modelRN.phl[71]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn";
connectAttr "modelRN.phl[72]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn";
connectAttr "modelRN.phl[73]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn";
connectAttr "modelRN.phl[74]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn";
connectAttr "modelRN.phl[75]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn";
connectAttr "modelRN.phl[76]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "modelRN.phl[77]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "modelRN.phl[78]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "modelRN.phl[79]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "modelRN.phl[80]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "modelRN.phl[81]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "modelRN.phl[82]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "modelRN.phl[83]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "modelRN.phl[84]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "q_armRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "q_armRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "q_armRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "q_armRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "q_armRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "q_armRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "q_armRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "q_armRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "q_armRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "q_armRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "q_armRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "q_armRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "q_armRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "q_armRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "q_armRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "q_armRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "q_armRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "q_armRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "q_armRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "q_armRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "q_armRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "q_armRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "q_armRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "q_armRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "q_armRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "q_armRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "q_armRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "q_armRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "q_armRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "q_armRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "q_armRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "q_armRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "q_armRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "q_armRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "q_armRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "q_armRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "q_armRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "q_armRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "q_armRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "q_armRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "q_armRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "q_armRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "q_armRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn";
connectAttr "q_armRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn";
connectAttr "q_armRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn";
connectAttr "q_armRN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn";
connectAttr "q_armRN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn";
connectAttr "q_armRN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn";
connectAttr "q_armRN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn";
connectAttr "q_armRN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn";
connectAttr "q_armRN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn";
connectAttr "q_armRN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn";
connectAttr "q_armRN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn";
connectAttr "q_armRN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn";
connectAttr "q_armRN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn";
connectAttr "q_armRN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn";
connectAttr "q_armRN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn";
connectAttr "q_armRN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn";
connectAttr "q_armRN.phl[59]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn";
connectAttr "q_armRN.phl[60]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn";
connectAttr "q_armRN.phl[61]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn";
connectAttr "q_armRN.phl[62]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn";
connectAttr "q_armRN.phl[63]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn";
connectAttr "q_armRN.phl[64]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn";
connectAttr "q_armRN.phl[65]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn";
connectAttr "q_armRN.phl[66]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn";
connectAttr "q_armRN.phl[67]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn";
connectAttr "q_armRN.phl[68]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn";
connectAttr "q_armRN.phl[69]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn";
connectAttr "q_armRN.phl[70]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn";
connectAttr "q_armRN.phl[71]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn";
connectAttr "q_armRN.phl[72]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn";
connectAttr "q_armRN.phl[73]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn";
connectAttr "q_armRN.phl[74]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn";
connectAttr "q_armRN.phl[75]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn";
connectAttr "q_armRN.phl[76]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn";
connectAttr "q_armRN.phl[77]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn";
connectAttr "q_armRN.phl[78]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn";
connectAttr "q_armRN.phl[79]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn";
connectAttr "q_armRN.phl[80]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn";
connectAttr "q_armRN.phl[81]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn";
connectAttr "q_armRN.phl[82]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn";
connectAttr "q_armRN.phl[83]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn";
connectAttr "q_armRN.phl[84]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn";
connectAttr "q_armRN.phl[85]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn";
connectAttr "q_armRN.phl[86]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn";
connectAttr "q_armRN.phl[87]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn";
connectAttr "q_armRN.phl[88]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn";
connectAttr "q_armRN.phl[89]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn";
connectAttr "q_armRN.phl[90]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn";
connectAttr "q_armRN.phl[91]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn";
connectAttr "q_armRN.phl[92]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn";
connectAttr "q_armRN.phl[93]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn";
connectAttr "q_armRN.phl[94]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn";
connectAttr "q_armRN.phl[95]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn";
connectAttr "q_armRN.phl[96]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn";
connectAttr "q_armRN.phl[97]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn";
connectAttr "q_armRN.phl[98]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn";
connectAttr "q_armRN.phl[99]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn";
connectAttr "q_armRN.phl[100]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn";
connectAttr "q_armRN.phl[101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn";
connectAttr "q_armRN.phl[102]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn";
connectAttr "q_armRN.phl[103]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn";
connectAttr "q_armRN.phl[104]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn";
connectAttr "q_armRN.phl[105]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "q_armRN.phl[106]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn";
connectAttr "q_armRN.phl[107]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "q_armRN.phl[108]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn";
connectAttr "q_armRN.phl[109]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn";
connectAttr "q_armRN.phl[110]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn";
connectAttr "q_armRN.phl[111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn";
connectAttr "q_armRN.phl[112]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn";
connectAttr "q_armRN.phl[113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn";
connectAttr "q_armRN.phl[114]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn";
connectAttr "q_armRN.phl[115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn";
connectAttr "q_armRN.phl[116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn";
connectAttr "q_armRN.phl[117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn";
connectAttr "q_armRN.phl[118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn";
connectAttr "q_armRN.phl[119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn";
connectAttr "q_armRN.phl[120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn";
connectAttr "q_armRN.phl[121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn";
connectAttr "q_armRN.phl[122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn";
connectAttr "q_armRN.phl[123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn";
connectAttr "q_armRN.phl[124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn";
connectAttr "q_armRN.phl[125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn";
connectAttr "q_armRN.phl[126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn";
connectAttr "q_armRN.phl[127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn";
connectAttr "q_armRN.phl[128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "q_armRN.phl[129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn";
connectAttr "q_armRN.phl[130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn";
connectAttr "q_armRN.phl[131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn";
connectAttr "q_armRN.phl[132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "q_armRN.phl[133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn";
connectAttr "q_armRN.phl[134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn";
connectAttr "q_armRN.phl[135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "q_armRN.phl[136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn";
connectAttr "q_armRN.phl[137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn";
connectAttr "q_armRN.phl[138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn";
connectAttr "q_armRN.phl[139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "q_armRN.phl[140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn";
connectAttr "q_armRN.phl[141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn";
connectAttr "q_armRN.phl[142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "q_armRN.phl[143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn";
connectAttr "q_armRN.phl[144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn";
connectAttr "q_armRN.phl[145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn";
connectAttr "q_armRN.phl[146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn";
connectAttr "q_armRN.phl[147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "q_armRN.phl[148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "q_armRN.phl[149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn";
connectAttr "q_armRN.phl[150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "q_armRN.phl[151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "q_armRN.phl[152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "q_armRN.phl[153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn";
connectAttr "q_armRN.phl[154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn";
connectAttr "q_armRN.phl[155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn";
connectAttr "q_armRN.phl[156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn";
connectAttr "q_armRN.phl[157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "q_armRN.phl[158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "q_armRN.phl[159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "q_armRN.phl[160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn";
connectAttr "q_armRN.phl[161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn";
connectAttr "q_armRN.phl[162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn";
connectAttr "q_armRN.phl[163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "q_armRN.phl[164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "q_armRN.phl[165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "q_armRN.phl[166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn";
connectAttr "q_armRN.phl[167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn";
connectAttr "q_armRN.phl[168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn";
connectAttr "q_armRN.phl[169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "q_armRN.phl[170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "q_armRN.phl[171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn";
connectAttr "q_armRN.phl[172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "q_armRN.phl[173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "q_armRN.phl[174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "q_armRN.phl[175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn";
connectAttr "q_armRN.phl[176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn";
connectAttr "q_armRN.phl[177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn";
connectAttr "q_armRN.phl[178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn";
connectAttr "q_armRN.phl[179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn";
connectAttr "q_armRN.phl[180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn";
connectAttr "q_armRN.phl[181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn";
connectAttr "q_armRN.phl[182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn";
connectAttr "q_armRN.phl[183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn";
connectAttr "q_armRN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn";
connectAttr "q_armRN.phl[185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn";
connectAttr "q_armRN.phl[186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn";
connectAttr "q_armRN.phl[187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn";
connectAttr "q_armRN.phl[188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn";
connectAttr "q_armRN.phl[189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn";
connectAttr "q_armRN.phl[190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn";
connectAttr "q_armRN.phl[191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn";
connectAttr "q_armRN.phl[192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "q_armRN.phl[193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "q_armRN.phl[194]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn";
connectAttr "q_armRN.phl[195]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn";
connectAttr "q_armRN.phl[196]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn";
connectAttr "q_armRN.phl[197]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn";
connectAttr "q_armRN.phl[198]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn";
connectAttr "q_armRN.phl[199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn";
connectAttr "q_armRN.phl[200]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn";
connectAttr "q_armRN.phl[201]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn";
connectAttr "q_armRN.phl[202]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn";
connectAttr "q_armRN.phl[203]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn";
connectAttr "q_armRN.phl[204]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn";
connectAttr "q_armRN.phl[205]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn";
connectAttr "q_armRN.phl[206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn";
connectAttr "q_armRN.phl[207]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn";
connectAttr "q_armRN.phl[208]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn";
connectAttr "q_armRN.phl[209]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn";
connectAttr "q_armRN.phl[210]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn";
connectAttr "q_armRN.phl[211]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn";
connectAttr "q_armRN.phl[212]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn";
connectAttr "q_armRN.phl[213]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn";
connectAttr "q_armRN.phl[214]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn";
connectAttr "q_armRN.phl[215]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn";
connectAttr "q_armRN.phl[216]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn";
connectAttr "q_armRN.phl[217]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn";
connectAttr "q_armRN.phl[218]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn";
connectAttr "q_armRN.phl[219]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn";
connectAttr "q_armRN.phl[220]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn";
connectAttr "q_armRN.phl[221]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn";
connectAttr "q_armRN.phl[222]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn";
connectAttr "q_armRN.phl[223]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn";
connectAttr "q_armRN.phl[224]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn";
connectAttr "q_armRN.phl[225]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn";
connectAttr "q_armRN.phl[226]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn";
connectAttr "q_armRN.phl[227]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn";
connectAttr "q_armRN.phl[228]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn";
connectAttr "q_armRN.phl[229]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn";
connectAttr "q_armRN.phl[230]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn";
connectAttr "q_armRN.phl[231]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn";
connectAttr "q_armRN.phl[232]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn";
connectAttr "q_armRN.phl[233]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn";
connectAttr "q_armRN.phl[234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn";
connectAttr "q_armRN.phl[235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn";
connectAttr "q_armRN.phl[236]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn";
connectAttr "q_armRN.phl[237]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn";
connectAttr "q_armRN.phl[238]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn";
connectAttr "q_armRN.phl[239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn";
connectAttr "q_armRN.phl[240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn";
connectAttr "q_armRN.phl[241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn";
connectAttr "q_armRN.phl[242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn";
connectAttr "q_armRN.phl[243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn";
connectAttr "q_armRN.phl[244]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn";
connectAttr "q_armRN.phl[245]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn";
connectAttr "q_armRN.phl[246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "q_armRN.phl[247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn";
connectAttr "q_armRN.phl[248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn";
connectAttr "q_armRN.phl[249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn";
connectAttr "q_armRN.phl[250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn";
connectAttr "q_armRN.phl[251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn";
connectAttr "q_armRN.phl[252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn";
connectAttr "q_armRN.phl[253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn";
connectAttr "q_armRN.phl[254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn";
connectAttr "q_armRN.phl[255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn";
connectAttr "q_armRN.phl[256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn";
connectAttr "q_armRN.phl[257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn";
connectAttr "q_armRN.phl[258]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn";
connectAttr "q_armRN.phl[259]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn";
connectAttr "q_armRN.phl[260]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn";
connectAttr "q_armRN.phl[261]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn";
connectAttr "q_armRN.phl[262]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn";
connectAttr "q_armRN.phl[263]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn";
connectAttr "q_armRN.phl[264]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn";
connectAttr "q_armRN.phl[265]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn";
connectAttr "q_armRN.phl[266]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn";
connectAttr "q_armRN.phl[267]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn";
connectAttr "q_armRN.phl[268]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn";
connectAttr "q_armRN.phl[269]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn";
connectAttr "q_armRN.phl[270]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn";
connectAttr "q_armRN.phl[271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn";
connectAttr "q_armRN.phl[272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn";
connectAttr "q_armRN.phl[273]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn";
connectAttr "q_armRN.phl[274]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn";
connectAttr "q_armRN.phl[275]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn";
connectAttr "q_armRN.phl[276]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn";
connectAttr "q_armRN.phl[277]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn";
connectAttr "q_armRN.phl[278]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn";
connectAttr "q_armRN.phl[279]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn";
connectAttr "q_armRN.phl[280]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn";
connectAttr "q_armRN.phl[281]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn";
connectAttr "q_armRN.phl[282]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn";
connectAttr "q_armRN.phl[283]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn";
connectAttr "q_armRN.phl[284]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn";
connectAttr "q_armRN.phl[285]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn";
connectAttr "q_armRN.phl[286]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn";
connectAttr "q_armRN.phl[287]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn";
connectAttr "q_armRN.phl[288]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn";
connectAttr "q_armRN.phl[289]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn";
connectAttr "q_armRN.phl[290]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn";
connectAttr "q_armRN.phl[291]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn";
connectAttr "q_armRN.phl[292]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn";
connectAttr "q_armRN.phl[293]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn";
connectAttr "q_armRN.phl[294]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn";
connectAttr "q_armRN.phl[295]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn";
connectAttr "q_armRN.phl[296]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn";
connectAttr "input_hip.init" "leg_GRP.init" -na;
connectAttr "input_thigh.init" "leg_GRP.init" -na;
connectAttr "input_F_knee.init" "leg_GRP.init" -na;
connectAttr "input_B_knee.init" "leg_GRP.init" -na;
connectAttr "input_ankle.init" "leg_GRP.init" -na;
connectAttr "input_hind_toe.init" "leg_GRP.init" -na;
connectAttr "input_hind_tiptoe.init" "leg_GRP.init" -na;
connectAttr "|leg_GRP|output.init" "leg_GRP.init" -na;
connectAttr "input_hip.t" "|leg_GRP|leg_motion_GRP|motion_IK_GRP.t";
connectAttr "input_hip.r" "|leg_GRP|leg_motion_GRP|motion_IK_GRP.r";
connectAttr "input_hip.s" "|leg_GRP|leg_motion_GRP|motion_IK_GRP.s";
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
connectAttr "input_hip.t" "|leg_GRP|leg_motion_GRP|motion_FK_GRP.t";
connectAttr "input_hip.r" "|leg_GRP|leg_motion_GRP|motion_FK_GRP.r";
connectAttr "input_hip.s" "|leg_GRP|leg_motion_GRP|motion_FK_GRP.s";
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
connectAttr "input_hip.t" "|leg_GRP|output.t";
connectAttr "input_hip.r" "|leg_GRP|output.r";
connectAttr "input_hip.s" "|leg_GRP|output.s";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "modelRN.sr";
connectAttr "sharedReferenceNode.sr" "q_armRN.sr";
connectAttr "sharedReferenceNode.sr" "fit_q_legRN.sr";
connectAttr "fit_hip_translateX.o" "fit_q_legRN.phl[8]";
connectAttr "fit_hip_translateY.o" "fit_q_legRN.phl[9]";
connectAttr "fit_hip_translateZ.o" "fit_q_legRN.phl[10]";
connectAttr "fit_thigh_translateX.o" "fit_q_legRN.phl[11]";
connectAttr "fit_thigh_translateY.o" "fit_q_legRN.phl[12]";
connectAttr "fit_thigh_translateZ.o" "fit_q_legRN.phl[13]";
connectAttr "fit_F_knee_translateX.o" "fit_q_legRN.phl[14]";
connectAttr "fit_F_knee_translateY.o" "fit_q_legRN.phl[15]";
connectAttr "fit_F_knee_translateZ.o" "fit_q_legRN.phl[16]";
connectAttr "fit_B_knee_translateX.o" "fit_q_legRN.phl[17]";
connectAttr "fit_B_knee_translateY.o" "fit_q_legRN.phl[18]";
connectAttr "fit_B_knee_translateZ.o" "fit_q_legRN.phl[19]";
connectAttr "fit_ankle_translateX.o" "fit_q_legRN.phl[20]";
connectAttr "fit_ankle_translateY.o" "fit_q_legRN.phl[21]";
connectAttr "fit_ankle_translateZ.o" "fit_q_legRN.phl[22]";
connectAttr "fit_hind_toe_translateX.o" "fit_q_legRN.phl[23]";
connectAttr "fit_hind_toe_translateY.o" "fit_q_legRN.phl[24]";
connectAttr "fit_hind_toe_translateZ.o" "fit_q_legRN.phl[25]";
connectAttr "fit_hind_tiptoe_translateX.o" "fit_q_legRN.phl[26]";
connectAttr "fit_hind_tiptoe_translateY.o" "fit_q_legRN.phl[27]";
connectAttr "fit_hind_tiptoe_translateZ.o" "fit_q_legRN.phl[28]";
connectAttr "IK_thigh_space_MTMX.o" "IK_thigh_space_DCMX.imat";
connectAttr "input_thigh.wm" "IK_thigh_space_MTMX.i[0]";
connectAttr "|leg_GRP|leg_motion_GRP|motion_IK_GRP.wim" "IK_thigh_space_MTMX.i[1]"
		;
connectAttr "leg_stretchIK_output.upperStretched_len" "upperLeg_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "leg_stretchIK_output.stretch_ctrl_value" "upperLeg_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "IK_knee_space_MTMX.o" "IK_knee_space_DCMX.imat";
connectAttr "input_F_knee.wm" "IK_knee_space_MTMX.i[0]";
connectAttr "upperLeg_stretch_output_LOC.wim" "IK_knee_space_MTMX.i[1]";
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
connectAttr "input_F_knee.wm" "input_knee_local_dist_MTMX.i[0]";
connectAttr "input_thigh.wim" "input_knee_local_dist_MTMX.i[1]";
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
connectAttr "upper_poleVec_offGRP_space_MTMX1.o" "upper_poleVec_offGRP_space_DCMX1.imat"
		;
connectAttr "input_F_knee.wm" "upper_poleVec_offGRP_space_MTMX1.i[0]";
connectAttr "IK_leg_CTL_GRP.wim" "upper_poleVec_offGRP_space_MTMX1.i[1]";
connectAttr "lower_poleVec_spcGRP_space_MTMX.o" "lower_poleVec_spcGRP_space_DCMX.imat"
		;
connectAttr "input_B_knee.wm" "lower_poleVec_spcGRP_space_MTMX.i[0]";
connectAttr "leg_switch_CTL.FK_IK" "FK_IK_RVS.ix";
connectAttr "input_B_knee.wm" "IK_ankle_offGRP_space_MTMX.i[0]";
connectAttr "IK_leg_CTL_GRP.wim" "IK_ankle_offGRP_space_MTMX.i[1]";
connectAttr "IK_ankle_offGRP_space_MTMX.o" "IK_ankle_offGRP_space_DCMX.imat";
connectAttr "FK_ankle_CTL.wm" "leg_switch_CTL_CHOI.i[0]";
connectAttr "B_ankle.wm" "leg_switch_CTL_CHOI.i[1]";
connectAttr "leg_switch_CTL.FK_IK" "leg_switch_CTL_CHOI.s";
connectAttr "leg_switch_CTL_CHOI.o" "leg_switch_CTL_MTMX.i[0]";
connectAttr "leg_CTL_GRP.wim" "leg_switch_CTL_MTMX.i[1]";
connectAttr "leg_switch_CTL_MTMX.o" "leg_switch_CTL_DCMX.imat";
connectAttr "input_ankle.wm" "IK_ankle_local_space_MTMX.i[0]";
connectAttr "IK_ankle_local_space_MTMX.o" "IK_ankle_local_space_DCMX.imat";
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "surfaceShader1SG.msg" "materialInfo1.sg";
connectAttr "surfaceShader1.msg" "materialInfo1.m";
connectAttr "surfaceShader1.msg" "materialInfo1.t" -na;
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "lambert3.msg" "materialInfo3.m";
connectAttr "surfaceShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "surfaceShader1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "B_foot_CTL.roll" "ball_bk_condition1.ft";
connectAttr "B_foot_CTL.roll" "ball_bk_condition1.cfr";
connectAttr "ball_bk_condition1.ocr" "unitConversion9.i";
connectAttr "B_foot_CTL.roll" "ball_fn_condition1.ft";
connectAttr "B_foot_CTL.roll" "ball_fn_condition1.ctr";
connectAttr "after_ball_start1.o1" "ball_remap1.i";
connectAttr "B_foot_CTL.rollStartAngle" "ball_remap1.omx";
connectAttr "ball_fn_condition1.ocr" "ball_start_conditon1.ft";
connectAttr "B_foot_CTL.rollStartAngle" "ball_start_conditon1.st";
connectAttr "backto_zero_ball1.o1" "ball_start_conditon1.ctr";
connectAttr "ball_fn_condition1.ocr" "ball_start_conditon1.cfr";
connectAttr "ball_start_conditon1.ocr" "unitConversion10.i";
connectAttr "B_foot_CTL.rollStartAngle" "toe_fn_condition1.st";
connectAttr "B_foot_CTL.roll" "toe_fn_condition1.ft";
connectAttr "plusMinusAverage2.o1" "toe_fn_condition1.ctr";
connectAttr "B_foot_CTL.roll" "plusMinusAverage2.i1[0]";
connectAttr "B_foot_CTL.rollStartAngle" "plusMinusAverage2.i1[1]";
connectAttr "toe_fn_condition1.ocr" "unitConversion11.i";
connectAttr "B_foot_CTL.roll" "after_ball_start1.i1[0]";
connectAttr "B_foot_CTL.rollStartAngle" "after_ball_start1.i1[1]";
connectAttr "B_foot_CTL.rollStartAngle" "backto_zero_ball1.i1[0]";
connectAttr "ball_remap1.ov" "backto_zero_ball1.i1[1]";
connectAttr "B_foot_CTL.bank" "in_out_condition1.ft";
connectAttr "in_out_default_condition1.oc" "in_out_condition1.ct";
connectAttr "B_heel_out.t" "in_out_condition1.cf";
connectAttr "B_foot_CTL.bank" "unitConversion12.i";
connectAttr "B_foot_CTL.bank" "in_out_default_condition1.ft";
connectAttr "B_heel_in.t" "in_out_default_condition1.cf";
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
connectAttr "B_knee_space.wm" "B_knee_space_local_MTMX.i[0]";
connectAttr "input_hip.wim" "B_knee_space_local_MTMX.i[1]";
connectAttr "B_ankle.wm" "multMatrix4.i[0]";
connectAttr "input_F_knee.wim" "multMatrix4.i[1]";
connectAttr "input_B_knee.wm" "multMatrix5.i[0]";
connectAttr "input_F_knee.wim" "multMatrix5.i[1]";
connectAttr "input_B_knee.wm" "multMatrix6.i[0]";
connectAttr "upperLeg_stretch_output_LOC.wim" "multMatrix6.i[1]";
connectAttr "multMatrix6.o" "decomposeMatrix1.imat";
connectAttr "B_foot_CTL.toesAim" "unitConversion13.i";
connectAttr "unitConversion13.o" "toesAim_RVS1.ix";
connectAttr "B_poleVec_CTL.follow" "unitConversion14.i";
connectAttr "hip_CTL.wm" "multMatrix7.i[0]";
connectAttr "|leg_GRP|leg_motion_GRP|motion_IK_GRP.wim" "multMatrix7.i[1]";
connectAttr "multMatrix7.o" "decomposeMatrix2.imat";
connectAttr "IK_thigh_CTL.wm" "multMatrix8.i[0]";
connectAttr "IK_hip.wim" "multMatrix8.i[1]";
connectAttr "multMatrix8.o" "decomposeMatrix3.imat";
connectAttr "FK_hip_space.wim" "FK_hip_space_inverse_DCMX.imat";
connectAttr "FK_thigh_CTL.wim" "FK_thigh_CTL_inverse_DCMX.imat";
connectAttr "FK_F_knee_CTL.wim" "FK_F_knee_CTL_inverse_DCMX.imat";
connectAttr "FK_B_knee_CTL.wim" "FK_B_knee_CTL_inverse_DCMX.imat";
connectAttr "FK_ankle_CTL.wim" "FK_ankle_CTL_inverse_DCMX.imat";
connectAttr "FK_thigh_CTL.wm" "FK_thigh_local_MTMX.i[0]";
connectAttr "FK_thigh.pim" "FK_thigh_local_MTMX.i[1]";
connectAttr "FK_thigh_local_MTMX.o" "FK_thigh_local_DCMX.imat";
connectAttr "FK_F_knee_CTL.wm" "FK_F_knee_local_MTMX.i[0]";
connectAttr "FK_F_knee.pim" "FK_F_knee_local_MTMX.i[1]";
connectAttr "FK_F_knee_local_MTMX.o" "FK_F_knee_local_DCMX.imat";
connectAttr "FK_B_knee_CTL.wm" "FK_B_knee_local_MTMX.i[0]";
connectAttr "FK_B_knee.pim" "FK_B_knee_local_MTMX.i[1]";
connectAttr "FK_B_knee_local_MTMX.o" "FK_B_knee_local_DCMX.imat";
connectAttr "FK_ankle_CTL.wm" "FK_ankle_local_MTMX.i[0]";
connectAttr "FK_ankle.pim" "FK_ankle_local_MTMX.i[1]";
connectAttr "FK_ankle_local_MTMX.o" "FK_ankle_local_DCMX.imat";
connectAttr "FK_hind_toe_CTL.wm" "FK_hind_toe_local_MTMX.i[0]";
connectAttr "FK_hind_toe.pim" "FK_hind_toe_local_MTMX.i[1]";
connectAttr "FK_hind_toe_local_MTMX.o" "FK_hind_toe_local_DCMX.imat";
connectAttr "hip_CTL.wim" "hip_L_CTL_inverse_DCMX.imat";
connectAttr "B_knee_space.wm" "IK_B_knee_local_DCMX.imat";
connectAttr "B_ankle.wm" "IK_ankle_local_DCMX.imat";
connectAttr "B_ball.wm" "IK_hind_toe_local_DCMX.imat";
connectAttr "input_B_knee.wm" "B_knee_space_GRP_local_MTMX.i[0]";
connectAttr "B_ankle_aim_space.wim" "B_knee_space_GRP_local_MTMX.i[1]";
connectAttr "B_knee_space_GRP_local_MTMX.o" "B_knee_space_GRP_local_DCMX.imat";
connectAttr "input_ankle.wm" "B_ankle_local_MTMX.i[0]";
connectAttr "B_ball_CTL.wim" "B_ankle_local_MTMX.i[1]";
connectAttr "B_ankle_local_MTMX.o" "B_ankle_local_DCMX.imat";
connectAttr "input_hind_toe.wm" "B_ball_local_MTMX.i[0]";
connectAttr "B_toe_CTL.wim" "B_ball_local_MTMX.i[1]";
connectAttr "B_ball_local_MTMX.o" "B_ball_local_DCMX.imat";
connectAttr "input_hind_tiptoe.wm" "B_toe_local_MTMX.i[0]";
connectAttr "B_heel_CTL.wim" "B_toe_local_MTMX.i[1]";
connectAttr "B_toe_local_MTMX.o" "B_toe_local_DCMX.imat";
connectAttr "fit_hip_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "fit_B_knee_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn"
		;
connectAttr "fit_ankle_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "fit_F_knee_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "fit_thigh_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "fit_ankle_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "fit_hind_tiptoe_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "fit_F_knee_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "fit_B_knee_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "fit_B_knee_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "fit_thigh_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "fit_thigh_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "fit_ankle_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "fit_hind_toe_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "fit_hind_toe_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn"
		;
connectAttr "fit_hip_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "fit_hind_tiptoe_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "fit_hind_tiptoe_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "fit_hip_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "fit_hind_toe_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "fit_F_knee_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
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
connectAttr "multMatrix6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesAim_RVS1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of dog_V002_1.ma
