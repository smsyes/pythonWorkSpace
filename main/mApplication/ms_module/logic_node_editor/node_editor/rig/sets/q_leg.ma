//Maya ASCII 2019 scene
//Name: q_leg.ma
//Last modified: Sat, Jul 03, 2021 05:56:36 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
requires "redshift4maya" "2.6.31";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "RenderMan_for_Maya" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "leg_GRP";
	rename -uid "6105BA7A-4D01-6931-C7B7-B69E9F735C7A";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr -s 6 ".reBuildMode";
	setAttr -s 2 ".reBuildAttr";
	setAttr -s 7 ".input";
createNode transform -n "leg_motion_GRP" -p "leg_GRP";
	rename -uid "D8361240-4634-D60D-2F92-9C98DD1EDB12";
createNode transform -n "input_hip" -p "leg_motion_GRP";
	rename -uid "54E7760D-478D-C8F9-3182-0C8F67351846";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode transform -n "input_thigh" -p "input_hip";
	rename -uid "6B2467CB-47CD-A072-27A9-EC997A8142E2";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 2.0713150501251221 -2.5815353393554688 -3.8085823059082031 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "input_F_knee" -p "input_thigh";
	rename -uid "CDDE5960-48F8-72C2-237B-2AB5D7BA32C6";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 15.556730270385742 0 0 ;
	setAttr ".r" -type "double3" 0 31.269647204474431 0 ;
	setAttr ".s" -type "double3" 1.0000000519103551 1 1.0000000519103551 ;
createNode transform -n "input_B_knee" -p "input_F_knee";
	rename -uid "DFCB6181-4D8C-CD9A-9A62-E59EEFBC10C2";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 11.553379704806883 8.8817841970012523e-16 5.0302446652494837e-09 ;
	setAttr ".r" -type "double3" 0 -31.528018626149372 0 ;
	setAttr ".s" -type "double3" 0.99999994890369348 1 0.99999994890369348 ;
createNode transform -n "input_ankle" -p "input_B_knee";
	rename -uid "60E9B049-4F73-D758-3E9F-E2A826535667";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 10.44397827841934 0 5.5581494962098077e-10 ;
	setAttr ".r" -type "double3" 0 -48.499339376309685 0 ;
	setAttr ".s" -type "double3" 1 1.0000000142892349 1.0000000142892349 ;
createNode transform -n "input_hind_toe" -p "input_ankle";
	rename -uid "A431CE7C-40AB-CBAA-6B09-0EA5E858F90D";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.2635077050796788 -8.8817841970012523e-16 -2.890024575208372e-08 ;
	setAttr ".r" -type "double3" 6.1621956693690804e-09 -15.478215380223075 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "input_hind_tiptoe" -p "input_hind_toe";
	rename -uid "CA292D5C-4DE0-B216-D715-48B843A50444";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.6600728390644406 0 1.198605659169516e-09 ;
	setAttr ".r" -type "double3" 64.235926178207706 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "motion_IK_leg_GRP" -p "leg_motion_GRP";
	rename -uid "B8DB920A-44C4-098E-3A01-3E91BA2A26EB";
createNode transform -n "IK_thigh_space" -p "motion_IK_leg_GRP";
	rename -uid "52E7A96B-40CC-507C-2788-648706CD356A";
	setAttr ".v" no;
createNode locator -n "IK_thigh_spaceShape" -p "IK_thigh_space";
	rename -uid "BC7617FD-4235-4808-4AE7-AF9E0AE847A9";
	setAttr -k off ".v";
createNode transform -n "IK_upperLeg_CTLaim" -p "IK_thigh_space";
	rename -uid "3A774F0F-4A84-AA3A-C200-DDBD7AF691D5";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "IK_upperLeg_CTLaimShape" -p "IK_upperLeg_CTLaim";
	rename -uid "DF53CD5E-4D07-7018-621E-5FBBC72AFA95";
	setAttr -k off ".v";
createNode transform -n "upperLeg_softIK_output_LOC" -p "IK_upperLeg_CTLaim";
	rename -uid "6C176E38-4631-2E06-3E62-D798C5CBC9F2";
	setAttr ".t" -type "double3" 26.129291534423828 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_softIK_output_LOCShape" -p "upperLeg_softIK_output_LOC";
	rename -uid "B25499D9-4844-0C9F-EEF7-53B84C6833EC";
	setAttr -k off ".v";
createNode transform -n "upperLeg_stretch_output_LOC" -p "upperLeg_softIK_output_LOC";
	rename -uid "B813F215-43B2-9DB8-74A4-F0B8FC0CB9DF";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_stretch_output_LOCShape" -p "upperLeg_stretch_output_LOC";
	rename -uid "3D278841-4E5D-EE72-BD09-B7B8894323D5";
	setAttr -k off ".v";
createNode transform -n "IK_knee_space" -p "upperLeg_stretch_output_LOC";
	rename -uid "ED8840F2-49A3-1FF2-8A64-89A4DA3CC3B1";
	setAttr ".s" -type "double3" 1.0000000008140462 1 1.0000000008140462 ;
	setAttr ".sh" -type "double3" 0 -9.8073115450991193e-09 0 ;
createNode locator -n "IK_knee_spaceShape" -p "IK_knee_space";
	rename -uid "354DD863-440C-6103-EEED-A3AA303F2D7E";
	setAttr -k off ".v";
createNode transform -n "IK_lowerLeg_CTLaim" -p "IK_knee_space";
	rename -uid "90217338-4F0C-44FD-CD94-FA9812FE9E5A";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "IK_lowerLeg_CTLaimShape" -p "IK_lowerLeg_CTLaim";
	rename -uid "7EC03432-4CDC-5C7A-13D5-869F47F1569D";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_softIK_output_LOC" -p "IK_lowerLeg_CTLaim";
	rename -uid "5ED40C28-479D-6DDC-10E2-13BC6FD5D483";
	setAttr ".t" -type "double3" 10.443977355957031 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_softIK_output_LOCShape" -p "lowerLeg_softIK_output_LOC";
	rename -uid "38659475-448C-2CD6-A9B1-13A68F689A9D";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_stretch_output_LOC" -p "lowerLeg_softIK_output_LOC";
	rename -uid "0E24A714-4A9D-AA28-D3F4-62803206D4C9";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_stretch_output_LOCShape" -p "lowerLeg_stretch_output_LOC";
	rename -uid "CF4E326F-4552-2051-6690-0DB28CE987AE";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_lowerLeg_CTLaim_aimConstraint1" -p "IK_lowerLeg_CTLaim";
	rename -uid "FE8433CB-4A0F-691B-8349-31AF32E34410";
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
	rename -uid "8881D176-4FD9-5C90-7BF3-3B9C162B99BB";
	setAttr ".t" -type "double3" -1.6695378642591435e-15 1 8.3968127717560347e-15 ;
createNode locator -n "IK_knee_space_upVecShape" -p "IK_knee_space_upVec";
	rename -uid "A7B031CD-41B9-36B9-3F69-EEA8F3D0A9B3";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upperLeg_CTLaim_aimConstraint1" -p "IK_upperLeg_CTLaim";
	rename -uid "D0493BFC-4B6F-E461-DA91-1C9951F1D453";
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
	rename -uid "5545B63B-4A5B-C6C4-3945-99992E1EEA66";
	setAttr ".t" -type "double3" 6.2325491732529114e-15 1 -6.0636337963556973e-15 ;
createNode locator -n "IK_thigh_space_upVecShape" -p "IK_thigh_space_upVec";
	rename -uid "6B779F19-45D5-A9D7-B0DB-D4A8792C90F8";
	setAttr -k off ".v";
createNode transform -n "leg_softIK_input" -p "motion_IK_leg_GRP";
	rename -uid "327D4321-4321-8D0D-58EF-D0A18CDFDD14";
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
createNode transform -n "leg_softIK_output" -p "motion_IK_leg_GRP";
	rename -uid "BE4B8837-435F-7C36-F944-0090D098F147";
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
createNode transform -n "leg_stretchIK_input" -p "motion_IK_leg_GRP";
	rename -uid "DCBEB059-4936-CA60-128C-859AE199782D";
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
createNode transform -n "leg_stretchIK_output" -p "motion_IK_leg_GRP";
	rename -uid "56708314-4423-0C8F-653A-9FAF63731CFE";
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
createNode joint -n "IK_hip" -p "motion_IK_leg_GRP";
	rename -uid "175B78C9-491F-A32A-42F0-BF872E01D6B4";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_thigh" -p "IK_hip";
	rename -uid "D5675FF6-4954-9211-E97F-D19D76308A61";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" 8.3132923069138813e-07 -0.17335078064134832 -1.9700808517891377e-07 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_knee" -p "IK_thigh";
	rename -uid "85FC03DD-4479-F3BD-F840-F6B731BC242C";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" 0 0.17324635343850806 0 ;
	setAttr ".s" -type "double3" 0.99999998688804204 1 0.99999998688804204 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_knee" -p "IK_F_knee";
	rename -uid "9B53FDCC-4AC3-8AF7-5422-B0B02E87617A";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" 5.8422502059885328e-05 0.25841742637570059 -7.1091660071341293e-23 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_ankle" -p "IK_B_knee";
	rename -uid "40D39BFC-4CFB-F087-8103-B69D30AC993A";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -3.871282399863261e-05 -0.25992317145138022 4.3931041306673553e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_toe" -p "IK_ankle";
	rename -uid "087D1A9F-4ED4-A655-6ED2-989195B1E96C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" 5.0891578668281412e-14 0.0014856093232487055 2.0855850373204676e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_tiptoe" -p "IK_hind_toe";
	rename -uid "09C57426-4870-6FDB-F34A-CFA17FA3E996";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999999258654459 0.99999999290083708 0.99999998828870273 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector8" -p "IK_hind_toe";
	rename -uid "86BA6EB2-4600-A8BC-9F6F-64A9317C3862";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "IK_ankle";
	rename -uid "76A433E4-4D5C-ED4E-16B3-8FBBFF69DC47";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector10" -p "IK_B_knee";
	rename -uid "919E5611-426B-2384-8219-E69205BE79A0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation2" -p "IK_F_knee";
	rename -uid "90C181D1-4DCB-EC37-1B4A-37929DEDF5B5";
	setAttr ".r" -type "double3" -31.269644285477167 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000131119584 1.0000000131119584 ;
createNode annotationShape -n "annotationShape2" -p "annotation2";
	rename -uid "229B4D21-48BC-2D08-BD4F-1B9E0DDE95C1";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector9" -p "IK_F_knee";
	rename -uid "62212820-4D54-674D-A4D2-4E857A4A69A1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IK_hip_aim_space" -p "motion_IK_leg_GRP";
	rename -uid "ECCEF0D3-4B7B-9B4A-C525-C7ADF16B2216";
createNode parentConstraint -n "IK_hip_aim_space_parentConstraint1" -p "IK_hip_aim_space";
	rename -uid "B73466DF-45ED-8981-FE55-0BAE2B1C63CD";
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IK_hip_aim_space_aimConstraint1" -p "IK_hip_aim_space";
	rename -uid "B6C361FF-411B-61A4-EDE4-51B3B8033C1E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "B_IK_foot_CTLW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -14.238203143281908 4.9696166897867462e-17 -2.9884566371216295 ;
	setAttr ".rsrr" -type "double3" -3.1836606918915268e-15 -1.1823215066671644e-12 
		-3.0109665119245435e-13 ;
	setAttr -k on ".w0";
createNode transform -n "B_IK_foot_IKH_offGRP" -p "motion_IK_leg_GRP";
	rename -uid "44997CF0-4CE7-872E-F130-63899B3CB10B";
	setAttr ".v" no;
createNode transform -n "B_IK_foot_IKH_spcGRP" -p "B_IK_foot_IKH_offGRP";
	rename -uid "098EE0C4-4D43-0130-1B63-A1816BDFA75B";
createNode transform -n "B_IK_foot_IKH_stretched_space" -p "B_IK_foot_IKH_spcGRP";
	rename -uid "D2FCB07C-4B1F-D7B4-222E-278B3F3735F2";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" 0 10.443977355957031 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".dla" yes;
createNode ikHandle -n "ikHandle9" -p "B_IK_foot_IKH_stretched_space";
	rename -uid "3C8A851B-4B88-1911-9D10-86A7AC331298";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -4.7077849769650015e-05 -1.1101343815766995e-05 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle9_poleVectorConstraint1" -p "ikHandle9";
	rename -uid "B0B40E32-4738-0D6F-05C6-9AA20B88BF34";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "B_poleVec_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -28.5333874189798 21.368348455382801 ;
	setAttr -k on ".w0";
createNode transform -n "B_IK_ankle_IKH_offGRP" -p "motion_IK_leg_GRP";
	rename -uid "F73C4B3C-4FEC-0B09-D26E-1BA781F4F129";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "B_IK_ankle_IKH_spcGRP" -p "B_IK_ankle_IKH_offGRP";
	rename -uid "BAA5003B-4FD7-D8D8-6BEC-FE88CBE7942A";
createNode ikHandle -n "ikHandle10" -p "B_IK_ankle_IKH_spcGRP";
	rename -uid "01CC20EB-414A-6503-298C-3CAFB2D64AFE";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".pv" -type "double3" 0.0045157158345056668 0.0045099670174206562 0.99997963404661605 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "B_IK_ankle_IKH_offGRP_aimConstraint1" -p "B_IK_ankle_IKH_offGRP";
	rename -uid "F69A4EBB-4FE5-73B0-8CB9-9FAE79927DA1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "B_IK_knee_spaceW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" 0.25837406562393445 0 0 ;
	setAttr ".rsrr" -type "double3" 9.9392333795734899e-17 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "input_F_knee_upVec_space" -p "motion_IK_leg_GRP";
	rename -uid "2780B1F9-4385-CB04-B943-CF84BB53E8A6";
	setAttr ".v" no;
createNode transform -n "input_F_knee_upVec" -p "input_F_knee_upVec_space";
	rename -uid "374DD5F8-4F49-9F8C-BDA7-F0942EBC9E5B";
	setAttr ".t" -type "double3" 3.6204508598964065e-15 5 5.1608877638575004e-16 ;
	setAttr ".s" -type "double3" 0.9999999631929275 1 0.9999999631929275 ;
createNode locator -n "input_F_knee_upVecShape" -p "input_F_knee_upVec";
	rename -uid "64400E6F-49B2-E8EC-77B3-7E9D4B0DA70F";
	setAttr -k off ".v";
createNode transform -n "motion_FK_leg_GRP" -p "leg_motion_GRP";
	rename -uid "7FC14296-47FC-B9BE-313A-39ACB62E353C";
createNode joint -n "FK_hip" -p "motion_FK_leg_GRP";
	rename -uid "1FA1FA7F-4F12-4E0A-2570-DA9902F2D92D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_thigh" -p "FK_hip";
	rename -uid "BD380E8C-472B-C1C3-022E-31A8A4153F44";
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
	rename -uid "5A1E4DCA-46CD-61F0-9A40-C18ABDA489FC";
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
	rename -uid "C8F9B4DA-4661-BDD4-515C-38A7973E5A8B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_ankle" -p "FK_B_knee";
	rename -uid "D6DDD0AD-49DB-6D67-5B95-F8B8A3776F6D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_toe" -p "FK_ankle";
	rename -uid "79CF06A8-43A1-F4D6-F796-0F8A98EFFBEE";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_tiptoe" -p "FK_hind_toe";
	rename -uid "6E0D7072-49D0-BE8C-FD4B-DBBD7D32C2B2";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 3.6600722913155082 -8.8817841970012523e-16 -1.9375632120954833e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000184310067 1.0000000019227699 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "leg_CTL_GRP" -p "leg_GRP";
	rename -uid "D514D324-4FEB-203B-9DF1-34BEE6E9DAE6";
createNode transform -n "hip_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "C78175B2-43E4-A741-261F-EDB017274E15";
createNode transform -n "hip_CTL_spcGRP" -p "hip_CTL_offGRP";
	rename -uid "2675BF54-4259-0B27-9210-0DBAD6680E95";
createNode transform -n "hip_CTL" -p "hip_CTL_spcGRP";
	rename -uid "BC10DE32-40C7-2DFB-BEC5-60AFF4197276";
createNode nurbsCurve -n "hip_CTLShape" -p "hip_CTL";
	rename -uid "3AA92F58-4B36-054D-900C-128D1EC794B9";
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
	rename -uid "97C107B2-43A2-A2EC-63E4-F480A0E53DE0";
createNode transform -n "IK_thigh_CTL_offGRP" -p "hip_CTL_ivsScale";
	rename -uid "E1A75263-4A7C-4201-23C2-D1A3ECFDC379";
createNode transform -n "IK_thigh_CTL_spcGRP" -p "IK_thigh_CTL_offGRP";
	rename -uid "10A6A69C-4D91-BAF3-6F9C-9FBE64AA98E2";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "IK_thigh_CTL" -p "IK_thigh_CTL_spcGRP";
	rename -uid "1383EC94-475F-C968-E4DC-F8A3ACE6BE13";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_thigh_CTLShape" -p "IK_thigh_CTL";
	rename -uid "D27C2063-442A-A6E4-27A4-39BC911059DA";
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
	rename -uid "3B1AC2FD-47FA-6185-EA12-B099033897DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode locator -n "IK_B_ankle_upVecShape" -p "IK_B_ankle_upVec";
	rename -uid "F2F4192F-4D45-2B84-379D-3E9CD7B39B3C";
	setAttr -k off ".v";
createNode transform -n "IK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "DDBE4F50-477D-C0B5-8F0A-F0AE4E5C5B46";
	setAttr ".r" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "B_input_ankle_space" -p "IK_leg_CTL_GRP";
	rename -uid "AA93F8DE-4237-F555-051C-4297EE6775AF";
	setAttr ".r" -type "double3" 0 -58.372285091973481 0 ;
	setAttr ".s" -type "double3" 1.0000000008140459 1.0000000142892349 1.0000000151032808 ;
createNode transform -n "B_IK_foot_CTL_offGRP" -p "B_input_ankle_space";
	rename -uid "84E8676D-4AC9-A25B-899E-40AFBBC10CC7";
	setAttr ".t" -type "double3" -7.1859985695255091e-07 -8.8817841970012523e-16 4.6649796203723781e-07 ;
	setAttr ".r" -type "double3" 48.757712960051755 0 90 ;
	setAttr ".s" -type "double3" 0.99999998571076532 1.0000000062101502 1.0000000080790838 ;
	setAttr ".sh" -type "double3" 0 0 -1.4166485592282508e-08 ;
createNode transform -n "B_IK_foot_CTL_spcGRP" -p "B_IK_foot_CTL_offGRP";
	rename -uid "9DE640BE-48AD-F06F-9FC2-3AB0FE17F50A";
createNode transform -n "B_IK_foot_CTL" -p "B_IK_foot_CTL_spcGRP";
	rename -uid "C2AB9F6F-4094-6A1F-1CD2-EB9307A11327";
	addAttr -ci true -sn "roll" -ln "roll" -at "double";
	addAttr -ci true -sn "rollStartAngle" -ln "rollStartAngle" -at "double";
	addAttr -ci true -sn "bank" -ln "bank" -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -at "double";
	addAttr -ci true -sn "stretch" -ln "stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "toesAim" -ln "toesAim" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "resetAttr" -ln "resetAttr" -dt "string";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
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
	setAttr ".resetAttr" -type "string" "toesAim";
createNode transform -n "B_IK_heel" -p "B_IK_foot_CTL";
	rename -uid "CB6109D0-4662-0616-CF9D-E5A3EB5A610C";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.0004753143805720228 -2.4238727097881774 -1.2490500892962473 ;
createNode locator -n "B_IK_heelShape" -p "B_IK_heel";
	rename -uid "6943BD2D-4C3E-5953-77F1-758905147AA1";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_IK_heel_CTL" -p "B_IK_heel";
	rename -uid "48531A43-45E1-9982-2621-BB8A787437DB";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_heel_CTLShape" -p "B_IK_heel_CTL";
	rename -uid "028568CE-45F7-1EA5-CBDB-B6A9E1F4F0FA";
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
createNode transform -n "B_IK_heel_out" -p "B_IK_heel_CTL";
	rename -uid "0ECD3277-420D-F792-4765-D39355B148D0";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.6304045646172298 -1.1102230246251565e-15 0.0071562015207398133 ;
createNode locator -n "B_IK_heel_outShape" -p "B_IK_heel_out";
	rename -uid "57A175F3-471D-309A-66D1-B08C0627FD1C";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_IK_heel_in" -p "B_IK_heel_CTL";
	rename -uid "40436C1B-4335-F574-8C7B-B7BE8FF1840C";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.6293138535041081 -8.8817841970012484e-16 0.0071562015207398133 ;
createNode locator -n "B_IK_heel_inShape" -p "B_IK_heel_in";
	rename -uid "83218CB5-4F96-6286-4759-5B8C594C9149";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_IK_toe" -p "B_IK_heel_CTL";
	rename -uid "B537F94C-4667-FBE0-4EB9-C694831F2656";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00047531438057291098 4.3110167732830127e-07 5.4953483366282398 ;
createNode locator -n "B_IK_toeShape" -p "B_IK_toe";
	rename -uid "D3320061-4503-FCC1-7E03-29B457698BCC";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_IK_toe_CTL" -p "B_IK_toe";
	rename -uid "C1764773-4ADD-E5D1-8E4D-73B8D05B3F31";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_toe_CTLShape" -p "B_IK_toe_CTL";
	rename -uid "C3F6476F-49B6-D0DE-5043-6F9C9A93A233";
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
createNode transform -n "B_IK_ball" -p "B_IK_toe_CTL";
	rename -uid "FFFC43C0-42BC-71B5-5780-EA9378D951C6";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 1.5909108206536893 -3.2962305126324942 ;
createNode locator -n "B_IK_ballShape" -p "B_IK_ball";
	rename -uid "743CFAA2-4A86-90E1-04C3-31B8F8BC9C9B";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_IK_ball_CTL" -p "B_IK_ball";
	rename -uid "7828626F-424E-A492-E9B0-6AB2AEFFFA8C";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_ball_CTLShape" -p "B_IK_ball_CTL";
	rename -uid "9F92BB1F-4097-ED60-67B3-9E9559345F10";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.2049751279383528e-15 1.0305064688242993e-06 1.6799994071297344
		1.3928498671192062e-15 0.64290847050646871 1.5521178071297359
		1.4595611961802803e-15 1.1879407905064683 1.1879391671297341
		1.7806540182830544e-15 1.5521194305064685 0.64290684712973323
		1.7887535128494909e-15 1.6800010305064679 -5.9287026660248543e-07
		2.4496641458955193e-15 1.5521194305064678 -0.64290803287026654
		2.4443513987584975e-15 1.1879407905064678 -1.1879403528702661
		2.5343774113367e-15 0.6429084705064676 -1.5521189928702666
		2.4657906318291413e-15 1.0305064677140763e-06 -1.6800005928702653
		2.3944893102339301e-15 -0.64290640949353128 -1.5521189928702666
		2.0246870954501882e-15 -1.1879387294935313 -1.1879403528702654
		1.8901117414844405e-15 -1.5521173694935326 -0.64290803287026543
		1.8820122469180036e-15 -1.679998969493532 -5.928702652702178e-07
		1.2211016138719752e-15 -1.5521173694935326 0.64290684712973412
		1.3663024621117669e-15 -1.1879387294935304 1.1879391671297348
		1.1363883484307947e-15 -0.64290640949353084 1.5521178071297359
		1.2049751279383528e-15 1.0305064688242993e-06 1.6799994071297344
		;
createNode transform -n "B_IK_ankle" -p "B_IK_ball_CTL";
	rename -uid "091729FC-4F04-5AEF-E979-29A43B24C65A";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0.83296063352660266 -0.95006750190000488 ;
createNode locator -n "B_IK_ankleShape" -p "B_IK_ankle";
	rename -uid "6773F868-44B3-DA34-B3F0-E8A265F8A13B";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_IK_ankle_CTL_offGRP" -p "B_IK_ankle";
	rename -uid "F9205449-4849-8D65-8013-B68C758F2B5B";
createNode transform -n "B_IK_ankle_CTL_spcGRP" -p "B_IK_ankle_CTL_offGRP";
	rename -uid "35A078A0-4FB1-10C6-38AB-14BEEB505B8A";
createNode transform -n "B_IK_ankle_CTL" -p "B_IK_ankle_CTL_spcGRP";
	rename -uid "FB161075-4588-87AD-1695-5FAF532749FF";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_ankle_CTLShape" -p "B_IK_ankle_CTL";
	rename -uid "593E8692-463D-A1F5-46C3-F6B232686A66";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.4538219479965823e-16 8.2399232936847255e-07 2.1839998182851228
		3.8961935573476756e-16 0.83578049599232784 2.0177537382851241
		4.7634408351416394e-16 1.5443225119923274 1.544321506285123
		8.9376475224777049e-16 2.0177547439923296 0.83577949028512299
		9.0429409518413788e-16 2.1840008239923288 -1.8171487736751146e-07
		1.7634779181439748e-15 2.0177547439923296 -0.83577985371487618
		1.7565713468658464e-15 1.544322511992327 -1.5443218697148773
		1.8736051632175098e-15 0.83578049599232784 -2.0177541017148783
		1.7844423498576834e-15 8.2399232781416032e-07 -2.1840001817148766
		1.6917506317839086e-15 -0.83577884800767177 -2.0177541017148783
		1.2110077525650441e-15 -1.5443208640076715 -1.5443218697148764
		1.036059792409572e-15 -2.0177530960076715 -0.83577985371487529
		1.0255304494732044e-15 -2.1839991760076707 -1.8171487559115462e-07
		1.6634662651336737e-16 -2.0177530960076706 0.83577949028512433
		3.5510772922509659e-16 -1.5443208640076711 1.5443215062851239
		5.6219381439832935e-17 -0.83577884800767044 2.0177537382851241
		1.4538219479965823e-16 8.2399232936847255e-07 2.1839998182851228
		;
createNode transform -n "B_IK_ankle_aim_space" -p "B_IK_ankle_CTL";
	rename -uid "897421A2-4AC4-8318-EC44-51A3DCFF99D7";
	setAttr ".v" no;
createNode transform -n "B_IK_B_knee_space_GRP" -p "B_IK_ankle_aim_space";
	rename -uid "CD021659-4CE8-AFD1-3CF6-5385250A72C2";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" 0 10.443871938222147 -0.047096718213019528 ;
	setAttr ".r" -type "double3" 0 -0.25837142167493932 -90 ;
	setAttr ".s" -type "double3" 0.99999998571076532 1 0.99999998571076565 ;
createNode transform -n "B_IK_B_knee_space" -p "B_IK_B_knee_space_GRP";
	rename -uid "522F368F-45BD-5D17-C3FD-87AAB43F3054";
	setAttr ".s" -type "double3" 1.0000000142892349 1 1.0000000142892347 ;
createNode locator -n "B_IK_B_knee_spaceShape" -p "B_IK_B_knee_space";
	rename -uid "37284AB7-495A-8C3D-8E5C-21B9488BA0DD";
	setAttr -k off ".v";
createNode transform -n "B_IK_ball_IKH_offGRP" -p "B_IK_B_knee_space";
	rename -uid "6059274D-4074-D17B-AE91-F79ABCA68B27";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".offset" -type "matrix" 2.0870210121026066e-17 -0.65924459372056121 0.75192856419357579 0
		 1.0000000000000002 4.4156655897181045e-17 -7.4874836273669869e-16 0 1.8297713170205599e-17 0.75192856419357568 0.65924459372056132 0
		 -1.7763568394002505e-15 7.196363227546243e-07 4.5919532354332659e-07 1;
createNode transform -n "B_IK_ball_IKH_spcGRP" -p "B_IK_ball_IKH_offGRP";
	rename -uid "5F12E68F-40BE-42EE-7CD5-0A89D5ECC775";
createNode ikHandle -n "ikHandle7" -p "B_IK_ball_IKH_spcGRP";
	rename -uid "31AA6628-45EC-3645-34CD-56A962CD7817";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr ".pv" -type "double3" 0.75192856419357579 0 0.65924459372056143 ;
	setAttr ".roc" yes;
createNode transform -n "B_IK_toe_IKH_offGRP" -p "B_IK_B_knee_space";
	rename -uid "7B69FEF6-4ABB-7BAB-AF07-6F890EFEFD7B";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000007 ;
	setAttr ".offset" -type "matrix" 0 -0.43466847330406722 0.90059053865533867 -6.2491021985920551e-18
		 1.0000000000000002 0 0 0 0 0.90059053865533845 0.43466847330406733 -3.0161184196302535e-18
		 -2.3980817331903381e-14 1.5909309636812734 -3.2962516862117681 1;
createNode transform -n "B_IK_toe_IKH_spcGRP" -p "B_IK_toe_IKH_offGRP";
	rename -uid "66C91A2C-49AC-379C-1A1D-279004B4E8CF";
createNode ikHandle -n "ikHandle8" -p "B_IK_toe_IKH_spcGRP";
	rename -uid "5F0C9F78-4921-E897-2312-68BAA86A1D02";
	setAttr ".t" -type "double3" 3.6601003164920733 2.2204460492503131e-14 -4.2955207391059957e-08 ;
	setAttr ".r" -type "double3" 0 -0.00012637648910751947 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".pv" -type "double3" 0.90059053865533767 0 0.43466847330406688 ;
	setAttr ".roc" yes;
createNode transform -n "B_IK_ankle_upVec" -p "B_IK_B_knee_space";
	rename -uid "7EDBA54B-424A-02C2-7F99-D6B442BA4FDB";
	setAttr ".t" -type "double3" 10.443978572904943 5 4.8194399226982596e-07 ;
	setAttr ".r" -type "double3" 0.25837142167493599 0 90 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode orientConstraint -n "B_IK_ankle_aim_space_orientConstraint1" -p "B_IK_ankle_aim_space";
	rename -uid "0245E0B0-4143-0990-FD2A-8DA0EEFCDE24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "B_IK_ankle_IKH_aim_space_01W0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "B_IK_ankle_IKH_aim_space_02W1" -dv 
		1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -2.0147016543815335e-06 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "B_IK_ankle_IKH_aim_space_01" -p "B_IK_ankle_CTL";
	rename -uid "7E566F5F-43A6-9850-E9F9-F184F49ECA3B";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
createNode aimConstraint -n "B_IK_ankle_IKH_aim_space_01_aimConstraint1" -p "B_IK_ankle_IKH_aim_space_01";
	rename -uid "D9D8836A-43F3-0899-D3ED-959BCF849F67";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_thighW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -9.4166262325946999 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "B_IK_ankle_IKH_aim_space_02" -p "B_IK_ankle_CTL";
	rename -uid "179E8DE8-4D6B-F6EE-D45A-DD87F3C7B38C";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
createNode aimConstraint -n "B_IK_ankle_IKH_aim_space_02_aimConstraint1" -p "B_IK_ankle_IKH_aim_space_02";
	rename -uid "C3774599-4E47-7B02-0178-16B20EE9CB4B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_thigh_upVec_02_spcGRPW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" 0.25837406562534487 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "B_IK_hind_toes_CTL_offGRP" -p "B_IK_ball";
	rename -uid "A254ADB3-42D6-0501-7A26-108421FC34FA";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 2.0057809046347685e-05 -2.182291980901141e-05 ;
	setAttr ".r" -type "double3" 0 -64.235799801718599 -90.000000000002515 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "B_IK_hind_toes_CTL_spcGRP" -p "B_IK_hind_toes_CTL_offGRP";
	rename -uid "9209E494-40D1-D9AF-90F1-4381AF8486D7";
createNode transform -n "B_IK_hind_toes_CTL" -p "B_IK_hind_toes_CTL_spcGRP";
	rename -uid "F485FEEF-4F24-37A5-51FE-CCA99D526496";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "B_IK_hind_toes_CTLShape" -p "B_IK_hind_toes_CTL";
	rename -uid "6781525C-4C0F-7350-E71A-AD8EDAC57D9E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		8.1229010054588594e-16 -2.1647058823529388 0.13529411764705904
		0.88017090000000064 -1.989629882352939 0.13529411764705959
		1.6263461000000001 -1.4910519823529413 0.13529411764705981
		2.1249239999999987 -0.74487678235293964 0.13529411764705973
		2.2999999999999998 0.13529411764705965 0.13529411764705968
		2.1249239999999983 1.0154650176470585 0.13529411764705959
		1.6263460999999995 1.7616402176470578 0.13529411764705968
		0.88017089999999876 2.2602181176470579 0.13529411764705906
		-9.1382636311412207e-16 2.4352941176470564 0.1352941176470589
		-8.801709000000008e-13 2.260218117647057 0.13529411764705868
		-1.6263461e-12 1.7616402176470565 0.13529411764705837
		-2.1249239999999993e-12 1.015465017647057 0.13529411764705832
		-2.3000000000000003e-12 0.13529411764705782 0.13529411764705795
		-2.1249239999999985e-12 -0.74487678235294219 0.13529411764705804
		-1.6263461e-12 -1.4910519823529416 0.13529411764705812
		-8.8017089999999918e-13 -1.9896298823529395 0.13529411764705832
		8.1229010054588594e-16 -2.1647058823529388 0.13529411764705904
		;
createNode transform -n "B_IK_foot_upVec" -p "B_IK_foot_CTL";
	rename -uid "07219CD5-47B0-5888-B450-60A860258DD4";
	setAttr ".t" -type "double3" 5 -4.4408920985006262e-16 0 ;
createNode transform -n "B_IK_thigh_aim_space" -p "B_IK_foot_CTL";
	rename -uid "DC27B617-44DC-9D27-BD6E-01893A249313";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 35.875667492361437 5.9498749290143031 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
createNode nurbsCurve -n "B_IK_foot_CTLShape" -p "B_IK_foot_CTL";
	rename -uid "006E9843-4246-0D26-18C1-BEB54D64E889";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 -2.4238727097881778 8.4654313432986772
		1.4603183280000001 -2.4238727097881778 8.1749574232986788
		2.6983203120000008 -2.4238727097881778 7.3477516552986781
		3.5255260799999975 -2.4238727097881778 6.1097496712986796
		3.8159999999999981 -2.4238727097881778 4.4638354123544453
		3.5255260799999975 -2.4238727097881778 2.1853674423809348
		2.6983203120000008 -2.4238727097881778 -0.44276769034261215
		1.4603183280000001 -2.4238727097881778 -2.6583587481527102
		0 -2.4238727097881778 -3.5387479512522266
		-1.4603183280000001 -2.4238727097881778 -2.6583587481527102
		-2.6983203120000008 -2.4238727097881778 -0.44276873275138784
		-3.5255260799999975 -2.4238727097881778 2.1853674423809348
		-3.8159999999999981 -2.4238727097881778 4.4638354123544453
		-3.5255260799999975 -2.4238727097881778 6.1097496712986796
		-2.6983203120000008 -2.4238727097881778 7.3477516552986781
		-1.4603183280000001 -2.4238727097881778 8.1749574232986788
		0 -2.4238727097881778 8.4654313432986772
		;
createNode transform -n "IK_thigh_upVec_02_offGRP" -p "B_IK_foot_CTL";
	rename -uid "4F9A7C08-421F-EA92-2FDD-CBA25945BA43";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildRot" -ln "rebuildRot" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildRotX" -ln "rebuildRotX" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "rebuildRotY" -ln "rebuildRotY" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "rebuildRotZ" -ln "rebuildRotZ" -at "double" -p "rebuildRot";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.443871113715939 -0.047096485413533173 ;
	setAttr ".r" -type "double3" 0 -0.25837398958196733 -90 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "IK_thigh_upVec_02_spcGRP" -p "IK_thigh_upVec_02_offGRP";
	rename -uid "ABF15CE6-4333-282D-B572-98B2CC6C47D2";
createNode transform -n "IK_thigh_upVec_02" -p "IK_thigh_upVec_02_spcGRP";
	rename -uid "3B7F79A3-46A1-43B1-FBBD-8E841FBAAF40";
	setAttr ".t" -type "double3" -3.5686982231440999e-15 5 -7.0893705690289723e-15 ;
createNode locator -n "IK_thigh_upVec_02Shape" -p "IK_thigh_upVec_02";
	rename -uid "E604D792-4E2E-8FD2-50EE-498E32D92DD3";
	setAttr -k off ".v";
createNode transform -n "IK_thigh_upVec_01_offGRP" -p "B_IK_foot_CTL_spcGRP";
	rename -uid "0D6736EF-4FFE-C6E7-4B94-75BBB0BD7160";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 35.875667492361444 5.9498749290143103 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "IK_thigh_upVec_01_spcGRP" -p "IK_thigh_upVec_01_offGRP";
	rename -uid "E9AE255F-48BF-B1A8-4D40-12AFC7319C67";
	setAttr ".t" -type "double3" 5 0 0 ;
createNode transform -n "IK_thigh_upVec_01" -p "IK_thigh_upVec_01_spcGRP";
	rename -uid "192EAB7A-4502-06B4-938D-F5B4C94B06D7";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
createNode locator -n "IK_thigh_upVec_01Shape" -p "IK_thigh_upVec_01";
	rename -uid "3EFF6282-41E5-A6C1-C85D-12A7CDE8C2C2";
	setAttr -k off ".v";
createNode transform -n "B_poleVec_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "7E428CD6-41D0-56A2-2516-AB94FBABC7C6";
	setAttr ".t" -type "double3" 15.338212747365233 0 2.5982774231251398 ;
	setAttr ".r" -type "double3" 0 21.655069991488329 0 ;
	setAttr ".s" -type "double3" 1.0000000110780887 0.99999999999999967 1.0000000191284719 ;
	setAttr ".sh" -type "double3" 0 6.0830007089158456e-09 0 ;
createNode transform -n "B_poleVec_space_follow" -p "B_poleVec_offGRP";
	rename -uid "054AEBA1-4CE2-A113-810F-7C86FE2FBE4E";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000007 ;
createNode transform -n "B_poleVec_space" -p "B_poleVec_space_follow";
	rename -uid "143D5FF1-422B-EC38-F681-A08CBBAAF167";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 25 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "B_poleVec_CTL" -p "B_poleVec_space";
	rename -uid "AF02D377-4C2B-7FEF-616D-82A8BB0FC430";
	addAttr -ci true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "resetAttr" -ln "resetAttr" -dt "string";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow" 10;
	setAttr ".resetAttr" -type "string" "follow";
createNode nurbsCurve -n "B_poleVec_CTLShape" -p "B_poleVec_CTL";
	rename -uid "F8ED5993-422A-5644-E96D-E1A69A9D7CD5";
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
createNode transform -n "B_poleVec_input_space" -p "B_poleVec_offGRP";
	rename -uid "F09E2A60-40F9-483E-D47B-BB938B1EE040";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode aimConstraint -n "B_poleVec_input_space_aimConstraint1" -p "B_poleVec_input_space";
	rename -uid "7EBB4A2F-47F6-0BF1-9CC5-69A035B57877";
	addAttr -dcb 0 -ci true -sn "w0" -ln "input_B_kneeW0" -dv 1 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "B_poleVec_aim_space" -p "B_poleVec_offGRP";
	rename -uid "630F60A6-4D90-E8D4-8AD8-D1A1B0D68734";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".offset" -type "matrix" 0 -0.85473395170597644 -0.51906633848738626 0 0.99999999999999956 0 0 0
		 0 -0.51906634786541628 0.8547339554294312 0 2.0713150501251207 -18.138265332938907 -3.808582736261183 1;
createNode transform -n "FK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "2887FA59-406F-9B9E-AF41-618066FE30E2";
createNode transform -n "FK_hip_offGRP" -p "FK_leg_CTL_GRP";
	rename -uid "CBDED587-4E27-DD50-4505-26BC29753A7B";
createNode transform -n "FK_hip_space" -p "FK_hip_offGRP";
	rename -uid "E4D521E5-41B1-F298-926E-C899CF900036";
createNode transform -n "FK_hip_space_ivsScale" -p "FK_hip_space";
	rename -uid "4648E81C-4F87-6DE8-DA57-DBA3C7B3D973";
createNode transform -n "FK_thigh_CTL_offGRP" -p "FK_hip_space_ivsScale";
	rename -uid "3F3415D4-4FCD-BE14-1546-6F84266AB44D";
createNode transform -n "FK_thigh_CTL_spcGRP" -p "FK_thigh_CTL_offGRP";
	rename -uid "98834464-42AF-CD63-5D79-07BC756A3A66";
createNode transform -n "FK_thigh_CTL" -p "FK_thigh_CTL_spcGRP";
	rename -uid "A17BA06A-4009-7D94-414D-48810DB8D1EE";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_thigh_CTLShape" -p "FK_thigh_CTL";
	rename -uid "9FAF38C3-4CF2-F1C9-BC6F-87B56E1F19FB";
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
	rename -uid "5F49DDD3-4CE4-CC1F-39B3-3EBD71259269";
createNode transform -n "FK_F_knee_CTL_offGRP" -p "FK_thigh_CTL_ivsScale";
	rename -uid "923EA8F2-4B93-B57D-4D09-03A9A67DFEA4";
createNode transform -n "FK_F_knee_CTL_spcGRP" -p "FK_F_knee_CTL_offGRP";
	rename -uid "77BFDCC3-4CEB-1058-E3D0-BC9A2FE4C96C";
createNode transform -n "FK_F_knee_CTL" -p "FK_F_knee_CTL_spcGRP";
	rename -uid "846DA07B-4D3C-8D60-7E13-3AA41727C02A";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "FK_F_knee_CTLShape" -p "FK_F_knee_CTL";
	rename -uid "FB66AE6D-4435-7987-676F-EFBD3C2B29FF";
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
	rename -uid "094905EA-40CF-5DA0-A52F-8292BF92F778";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_B_knee_CTL_offGRP" -p "FK_F_knee_CTL_ivsScale";
	rename -uid "BE3AE382-4342-96B6-3B5A-9DAE34D1A40C";
createNode transform -n "FK_B_knee_CTL_spcGRP" -p "FK_B_knee_CTL_offGRP";
	rename -uid "2FB0C8AC-47B2-B33B-9F59-EC904B0E2B02";
createNode transform -n "FK_B_knee_CTL" -p "FK_B_knee_CTL_spcGRP";
	rename -uid "4633DECE-43BF-197F-6C80-05A91F32D3F6";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_knee_CTLShape" -p "FK_B_knee_CTL";
	rename -uid "1DCC6035-4E43-405C-D9D9-A0935AD1ABAE";
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
	rename -uid "197E1547-4C24-5354-34DD-E7BF8D3B784E";
createNode transform -n "FK_ankle_CTL_offGRP" -p "FK_B_knee_CTL_ivsScale";
	rename -uid "AEDF6DB9-423D-1944-737B-3BA2AC817EBB";
createNode transform -n "FK_ankle_CTL_spcGRP" -p "FK_ankle_CTL_offGRP";
	rename -uid "1074247F-4C7C-1B03-6DFF-65B9B5326173";
createNode transform -n "FK_ankle_CTL" -p "FK_ankle_CTL_spcGRP";
	rename -uid "778AAFDB-4E23-2ADC-3124-0F8C974D14A9";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_ankle_CTLShape" -p "FK_ankle_CTL";
	rename -uid "C626D945-4394-EB10-895C-E6A5BEF2E954";
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
	rename -uid "1809EDA8-447F-8F07-73DD-2BAA1AD673AE";
createNode transform -n "FK_hind_toe_CTL_offGRP" -p "FK_ankle_CTL_ivsScale";
	rename -uid "F82FF01F-4FCF-9AE1-D021-15B818B088DF";
createNode transform -n "FK_hind_toe_CTL_spcGRP" -p "FK_hind_toe_CTL_offGRP";
	rename -uid "99F35291-4D1C-0F25-DFCB-CF9E9A059F45";
createNode transform -n "FK_hind_toe_CTL" -p "FK_hind_toe_CTL_spcGRP";
	rename -uid "E7C98D28-416D-71B8-5D72-52A81693BEA4";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_hind_toe_CTLShape" -p "FK_hind_toe_CTL";
	rename -uid "ACD4CA92-49DD-F624-CCAD-A5B159E968BA";
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
	rename -uid "BC686B59-4418-BDBE-DD71-06941D81BD49";
createNode transform -n "leg_switch_CTL_spcGRP" -p "leg_switch_CTL_offGRP";
	rename -uid "24030BC5-4E0C-C246-48A5-5988B2457796";
createNode transform -n "leg_switch_CTL" -p "leg_switch_CTL_spcGRP";
	rename -uid "3851E155-40F0-8A8B-6551-9DA2A68240EC";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "leg_switch_CTLShape" -p "leg_switch_CTL";
	rename -uid "55413B31-445F-25E3-D0AE-0C97A8A6C240";
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
createNode transform -n "leg_output" -p "leg_GRP";
	rename -uid "F2E67D4C-424C-8CBB-73C8-91868E2A2605";
createNode joint -n "hip" -p "leg_output";
	rename -uid "AD478484-48E4-B8DE-D49C-D39EF39D40F7";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "thigh" -p "hip";
	rename -uid "0D08F2AE-4177-2E98-37DA-19AD7D398CEA";
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
	rename -uid "0EDA0754-43BD-BFF9-7288-49A2C8C28D4F";
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
	rename -uid "B9E0098E-4ADF-2304-17A6-33A5C57AD3D6";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "ankle" -p "B_knee";
	rename -uid "7D3789D7-45D6-8A1B-933B-C9B95DF4D508";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_toe" -p "ankle";
	rename -uid "2F4A282F-46C5-C443-4CD7-C3BCD602EE50";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_tiptoe" -p "hind_toe";
	rename -uid "5463EF3E-4BCA-47B9-F87D-2F974F88B7F0";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "94F32C1B-40C9-4948-B433-ECACA4A165F5";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "DA2418D9-48E5-115D-3A5C-9D849EB5EB26";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "BE754395-4DB7-64AC-5850-5E97DDCED4A3";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "203150F2-4CAB-FEBD-192E-81A08A726710";
createNode plusMinusAverage -n "softupperLegLen";
	rename -uid "EED4A391-4CA4-684E-0527-43BC3DED0B0E";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uplegLen";
	rename -uid "47D4381E-4FFE-A702-51F5-8DB635DAB995";
createNode multMatrix -n "input_thigh_local_MTMX";
	rename -uid "8006486A-4FC2-E350-A158-8BBD95E3B9B5";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_knee_local_MTMX";
	rename -uid "7293E9D0-4051-EEFA-1210-E69240989016";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midlegLen";
	rename -uid "0E92FA60-4579-13AA-D467-ACAAC7FCF0F1";
createNode multMatrix -n "input_ankle_local_MTMX";
	rename -uid "67FF9227-4A47-0280-44A6-229559F0DD72";
	setAttr -s 2 ".i";
createNode distanceBetween -n "leg_ctrlLen";
	rename -uid "8C165EA3-4B01-E94A-A1BA-F19FE1101B4A";
createNode multMatrix -n "B_knee_space_local_MTMX";
	rename -uid "AAC300A5-4DE7-18A1-6746-2A9A248BCB75";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_thigh_local_dist_MTMX";
	rename -uid "5003B09A-4F1D-2DF2-8469-B381C3915312";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "leg_IK_negate_val";
	rename -uid "8BE41D8D-4024-1604-1DA0-70B68503A67F";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "softlowerLegLen";
	rename -uid "68A9E06B-4454-AACE-AC4F-6E87C330F381";
	setAttr -s 3 ".i1[0:2]"  0 11.55338001 10.44397831;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loLegLen";
	rename -uid "045EFD8F-4B8F-9E8E-3AF7-A6BFBE50956A";
createNode multMatrix -n "input_B_toe_local_MTMX";
	rename -uid "DB22179D-404B-6AA5-B56B-BB9DEA34247A";
	setAttr -s 2 ".i";
createNode distanceBetween -n "B_toe_ctrlLen";
	rename -uid "2C1B8DCF-4F3C-4556-B46B-1DB6204E5A46";
createNode multMatrix -n "multMatrix5";
	rename -uid "0AECA7EC-428E-F5E0-D895-DF94557DB6F0";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "49A8061E-4BF7-7451-9899-15BA574F96F1";
	setAttr -s 2 ".i";
createNode condition -n "upperLeg_ctrllen_COND";
	rename -uid "8E6D0C2C-4219-9FCD-CAA0-DABE16706803";
	setAttr ".op" 2;
createNode condition -n "upperLeg_softikV_COND";
	rename -uid "7001CC1D-40BC-46FD-0298-D58B5BD93F57";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_result_softik_len";
	rename -uid "880203AB-4E68-EA28-0EF5-B880EECC4294";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "upperLeg_mult_softikV";
	rename -uid "D8A40C95-4F37-6E70-F477-7EB4CDCCF77F";
createNode multiplyDivide -n "upperLeg_power_val";
	rename -uid "4F6E3089-4C1D-0A51-640F-328ACFA1FFBA";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "upperLeg_negate_val";
	rename -uid "1E24902D-4969-443A-8D30-54859A37C98B";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "upperLeg_divide_softikV";
	rename -uid "DEE53AA0-4A2C-2B9D-A280-6180A6D636DE";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_ctrlLen_minue_dif";
	rename -uid "F6B326A4-4D23-A4C6-6A1F-00895F9F242E";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "upperLeglen_minus_softikV";
	rename -uid "281A36BB-4F17-25A1-2165-BD9AC101DF55";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "leg_for_zerodivide_COND";
	rename -uid "E423FA95-43E1-1BA9-4B9F-C79D0F90635C";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "lowerLeg_ctrllen_COND";
	rename -uid "C00CFD10-4D3A-1F74-59AC-0AA3EEB71081";
	setAttr ".op" 2;
createNode condition -n "lowerLeg_softikV_COND";
	rename -uid "B3ED05D7-4424-3DF8-843F-82BB7DE263B7";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_result_softik_len";
	rename -uid "98270E59-4CDD-5A12-D998-6C87BF41E3EB";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_mult_softikV";
	rename -uid "5834E432-4CA9-50E2-00DB-DE94907E72BA";
createNode multiplyDivide -n "lowerLeg_power_val";
	rename -uid "3F4DEA9B-4FEA-E434-3F5F-D894FBE45EFE";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "lowerLeg_negate_val";
	rename -uid "BAE6C8C9-4868-7F50-E8F2-418E4FA8D078";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lowerLeg_divide_softikV";
	rename -uid "5BDEC289-4BD4-7638-6E8C-0792B3AA8B9E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_ctrlLen_minue_dif";
	rename -uid "AB16AB79-4DCB-9AC2-746E-6287B0B40196";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "lowerLeglen_minus_softikV";
	rename -uid "32868DDA-4424-E5FB-EE93-56ABD77D6E52";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loleg_plus_stretch";
	rename -uid "5647C4F6-47DB-8604-22AB-9689C0561ED2";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loleg";
	rename -uid "4316E888-401A-F308-1DD2-879D81930C83";
createNode multiplyDivide -n "stretched_lolegLen";
	rename -uid "C89A605A-4373-E42A-E7E6-EBA1AE77558F";
createNode plusMinusAverage -n "upperLeg_stretchedLen";
	rename -uid "14070DE1-4712-C50B-2716-4F9D43B9741E";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loleg_ratio";
	rename -uid "A0DD4E7C-4994-6FBA-0CF6-2CBD7A7D04FA";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_legLen";
	rename -uid "763E1041-4FC6-EF22-CE31-6B9D433B837F";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upleg_plus_stretch";
	rename -uid "492CD6D8-4155-CF5A-4BF2-808951135A1D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upleg";
	rename -uid "7733D7BF-4D5D-8665-6239-BFBC2D97B805";
createNode multiplyDivide -n "stretched_uplegLen";
	rename -uid "7E34E987-42CC-9168-DDC5-C8B55486C4B8";
createNode multiplyDivide -n "upleg_ratio";
	rename -uid "FF6F61EB-4DA3-6645-49F4-4198BF1F81E4";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_plus_stretch";
	rename -uid "6D5FBD79-42E6-44E7-92F8-0599011BA209";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_lowerLeg";
	rename -uid "93C9E4AC-457A-9119-8E4D-E68494268CDF";
createNode multiplyDivide -n "stretched_lowerLegLen";
	rename -uid "9738373A-4B9C-D1AA-8696-EA8C73242D6F";
createNode plusMinusAverage -n "lowerLeg_stretchedLen";
	rename -uid "084D459E-4A62-4543-B782-EF8F1F1B428B";
	setAttr ".op" 2;
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_ratio";
	rename -uid "860B5B3D-42F8-BF0C-A327-DB9CFF82B8F2";
	setAttr ".op" 2;
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "DBD3591F-4D32-E80F-0E57-4F8FEA0D05B2";
createNode multMatrix -n "multMatrix7";
	rename -uid "B40029D7-49AE-6D9D-8B1A-0A8A0D89C041";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "7A7B5CB1-4D34-64B9-F148-09B40319910B";
createNode multMatrix -n "multMatrix8";
	rename -uid "36EC72E8-42E0-AE02-274E-E9B4CA82FE50";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_B_knee_local_DCMX";
	rename -uid "F3629830-4170-2F1F-A44F-158A6E87531B";
createNode decomposeMatrix -n "IK_ankle_local_DCMX";
	rename -uid "309AEF44-4F9A-BC71-1311-C8B886644A5E";
createNode decomposeMatrix -n "IK_hind_toe_local_DCMX";
	rename -uid "1F9C556F-4BA9-BA51-CDD4-5692D9EBAB5B";
createNode decomposeMatrix -n "B_IK_foot_IKH_offGRP_local_DCMX";
	rename -uid "E930B37B-46DA-7E6D-3E67-4E91255D879F";
createNode multMatrix -n "B_IK_foot_IKH_offGRP_local_MTMX";
	rename -uid "F05967D2-4931-E92F-63A5-9780E09F1088";
	setAttr -s 2 ".i";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "312B54C6-4F2E-1E2E-2891-05AE8B5DE3F7";
createNode decomposeMatrix -n "B_IK_ankle_IKH_offGRP_local_DCMX";
	rename -uid "06833A6D-40BA-1314-DAB7-89A19414A9F9";
createNode multMatrix -n "B_IK_ankle_IKH_offGRP_local_MTMX";
	rename -uid "8395F2EF-47A1-569B-CEE4-49AAE8926633";
	setAttr -s 2 ".i";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "0F14AC3A-4D62-0B2E-D799-BAAA7A8DADC6";
createNode decomposeMatrix -n "input_F_knee_upVec_space_local_DCMX";
	rename -uid "B2B26765-42C0-4AC9-E989-E9A3D4AD4CDC";
createNode multMatrix -n "input_F_knee_upVec_space_local_MTMX";
	rename -uid "720BE99B-49DE-2185-84D1-DFB4D42CE451";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_thigh_local_DCMX";
	rename -uid "A4D919B0-4A94-5D4A-1FDE-9B8107DCA7B2";
createNode multMatrix -n "FK_thigh_local_MTMX";
	rename -uid "33ECF100-4098-66CF-95B7-3B951F24C018";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_knee_local_DCMX";
	rename -uid "4F36ADF1-403C-7FF2-95D6-8A92EE43049D";
createNode multMatrix -n "FK_F_knee_local_MTMX";
	rename -uid "CAFC507B-4B2B-BDCB-1F64-3393911985DC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_knee_local_DCMX";
	rename -uid "C9462E21-4378-0320-5224-95B864288E6E";
createNode multMatrix -n "FK_B_knee_local_MTMX";
	rename -uid "635172A4-47B0-8298-E9FD-C0B49A3CF0F3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_ankle_local_DCMX";
	rename -uid "2A069DAD-4D9D-7B80-EC0F-048066ED0F74";
createNode multMatrix -n "FK_ankle_local_MTMX";
	rename -uid "8A10D728-402B-6356-5707-D899C6BEE47D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_hind_toe_local_DCMX";
	rename -uid "9A60EE0A-4B13-DD75-10E3-C5BA3CD59809";
createNode multMatrix -n "FK_hind_toe_local_MTMX";
	rename -uid "951F362C-4E2D-A5A4-8D71-869EA0DD5506";
	setAttr -s 2 ".i";
createNode condition -n "leg_mirror_scale_COND";
	rename -uid "EEF047CA-42E8-B1AD-318F-88B3B7CB2170";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 1 1 -1 ;
createNode decomposeMatrix -n "hip_L_CTL_inverse_DCMX";
	rename -uid "DAB0D2B3-45B3-8518-D0FD-2F9468586388";
createNode decomposeMatrix -n "B_input_ankle_space_local_DCMX";
	rename -uid "5767B1C4-4302-3A11-F48F-329424359BC0";
createNode multMatrix -n "B_input_ankle_space_local_MTMX";
	rename -uid "247267C7-46E2-4499-F8C9-5E8A9D421D66";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion19";
	rename -uid "605A6403-4372-146C-A380-1587BEEAB556";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "leg_mirror_rotate_COND";
	rename -uid "FCBDA98A-4F22-FFBE-1272-3D9BDBAEA869";
	setAttr ".cf" -type "float3" 0 -180 0 ;
createNode unitConversion -n "unitConversion9";
	rename -uid "D7943712-4432-C242-80B3-C589EF552020";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition1";
	rename -uid "58A2170F-4A7F-CFD1-A3CE-05982D5204E9";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion12";
	rename -uid "08DADED7-4467-EF5A-3D35-2AB99D889FA7";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition1";
	rename -uid "396053EB-4B07-D5DC-1DAE-3FA594EE46C1";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition1";
	rename -uid "C2C2C571-4311-45B3-4F7B-A49BE92A540A";
createNode unitConversion -n "unitConversion11";
	rename -uid "7D26FA51-442C-DB42-79A6-5788C4E133DA";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition1";
	rename -uid "8ECAB867-47AC-F4BC-1514-6AB69D112ED9";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage2";
	rename -uid "14973B90-4E40-1329-32AA-0B89227D219D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_toe_local_DCMX";
	rename -uid "5C8E2367-43F5-2E55-30AF-2AB67615C549";
createNode multMatrix -n "B_toe_local_MTMX";
	rename -uid "16EBD030-4B98-6984-51E4-D3A00D77E84B";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion10";
	rename -uid "6DC973D3-47E8-5AA0-0E1C-EDAF3F8588FE";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon1";
	rename -uid "CFE67335-496C-2926-8929-729E9661F6FA";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition1";
	rename -uid "8D0E8B59-4650-5DFA-20C4-DFA5AD7360BA";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball1";
	rename -uid "16F4FA92-486E-CD10-024C-6FBCFB9C55E8";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap1";
	rename -uid "97072A59-4464-9A02-414E-C2B44613DEDD";
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
	rename -uid "AA5C6A63-4A75-3F16-62A4-D18C171A3BBA";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_ball_local_DCMX";
	rename -uid "208AD85D-4FBE-F2FF-4787-FF8F14FF3F0A";
createNode multMatrix -n "B_ball_local_MTMX";
	rename -uid "9E5B491D-43C3-8EF9-8E86-CB85C182AA14";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_ankle_local_DCMX";
	rename -uid "9C16802C-41E8-B081-1427-AB9DFA009814";
createNode multMatrix -n "B_ankle_local_MTMX";
	rename -uid "593C4BA8-41D1-2099-24D0-9182F4720912";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_knee_space_GRP_local_DCMX";
	rename -uid "CB2932E4-4A59-5D5D-1083-B684791E3885";
createNode multMatrix -n "B_knee_space_GRP_local_MTMX";
	rename -uid "BF42A347-492E-B9C8-15CF-F08109EAE635";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_IK_ball2B_IK_ball_IKH_offGRP_DCMX";
	rename -uid "A05AE6FD-4A5A-4C67-CBC4-7DB353659B2E";
createNode multMatrix -n "B_IK_ball2B_IK_ball_IKH_offGRP_MTMX";
	rename -uid "119F7633-4757-E431-0AB8-4F896A10C520";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "B_IK_toe2B_IK_toe_IKH_offGRP_DCMX";
	rename -uid "D287AECE-4211-6746-49AA-4E862A011B51";
createNode multMatrix -n "B_IK_toe2B_IK_toe_IKH_offGRP_MTMX";
	rename -uid "AF7A8A87-4EB7-741F-F3E6-6AA582EF6092";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion13";
	rename -uid "85DF8C38-455D-08C7-F6A5-FE9A82CBAB0F";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS1";
	rename -uid "A10878BD-48B3-2793-5E20-18B37707A39C";
createNode decomposeMatrix -n "IK_thigh_upVec_02_offGRP_local_DCMX";
	rename -uid "CDAD5450-4288-FECC-A15C-5D9680213E08";
createNode multMatrix -n "IK_thigh_upVec_02_offGRP_local_MTMX";
	rename -uid "F46AB2D0-40D1-4BCB-928F-CCA842AAC664";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion18";
	rename -uid "9B4D93D1-457B-9A3C-C362-E69F1DA5670E";
	setAttr ".cf" 57.295779513082323;
createNode pairBlend -n "B_poleVec_follow_PRBL";
	rename -uid "73F45866-4801-F5D5-4E3B-6DB0D4F5CEDB";
createNode unitConversion -n "unitConversion14";
	rename -uid "F54F17AB-4730-C24C-8C25-CB8A5EDCDB16";
	setAttr ".cf" 0.1;
createNode decomposeMatrix -n "B_poleVec_input_space_local_DCMX";
	rename -uid "762A186A-457E-DABB-1140-BDA9074B4DAD";
createNode multMatrix -n "B_poleVec_input_space_local_MTMX";
	rename -uid "357DAECE-4A3F-2268-6D0C-F6B5F0004E50";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_hip_aim_space2B_poleVec_aim_space_DCMX";
	rename -uid "D17545B5-4FFC-134C-FF16-138D0D14AB0B";
createNode multMatrix -n "IK_hip_aim_space2B_poleVec_aim_space_MTMX";
	rename -uid "4929E68B-4610-D529-3B7A-C9B57D0A5A54";
	setAttr -s 3 ".i";
createNode reverse -n "FK_IK_RVS";
	rename -uid "BF0EF025-4F6F-A499-A04C-1585B4837A79";
createNode decomposeMatrix -n "FK_hip_space_inverse_DCMX";
	rename -uid "69C16E6A-4F86-C448-C4D0-C7A18CAC22C3";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "C9EF2909-4A82-B777-FDB8-1C8B4858CEA4";
createNode decomposeMatrix -n "FK_thigh_CTL_inverse_DCMX";
	rename -uid "61D1A6AB-43BA-2D4C-121C-88BF8F38D577";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "78CA48CE-4B40-4E89-E9E9-249B28D2A225";
createNode decomposeMatrix -n "FK_F_knee_CTL_inverse_DCMX";
	rename -uid "718E2F99-41E6-6862-3F05-CBAC2CBE2F06";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "A802F2B2-4EEC-C0E6-4A19-0BBA21134B82";
createNode decomposeMatrix -n "FK_B_knee_CTL_inverse_DCMX";
	rename -uid "FF06A5EA-4069-1F33-A739-A6970B552C61";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "B88C3574-45BA-29E2-1E28-32BA9A18B6A5";
createNode decomposeMatrix -n "FK_ankle_CTL_inverse_DCMX";
	rename -uid "1ED1A923-4A51-C10C-F0F1-1A8E524338F1";
createNode decomposeMatrix -n "leg_switch_CTL_DCMX";
	rename -uid "DDDC51E8-475C-3078-7845-518B1B424CFF";
createNode multMatrix -n "leg_switch_CTL_MTMX";
	rename -uid "50A0EF87-4769-D8DE-D3FE-35A2E039C7C1";
	setAttr -s 2 ".i";
createNode choice -n "leg_switch_CTL_CHOI";
	rename -uid "73A53459-4C28-C343-4F8F-548D4F5D8F4C";
	setAttr -s 2 ".i";
createNode pairBlend -n "hip_PRBL";
	rename -uid "B10F8C4B-4296-9D44-16BB-CC8C06D2D1A1";
createNode blendColors -n "hip_BLCL";
	rename -uid "CBE9B689-42E4-48AD-EE5D-29A3DE31D481";
createNode pairBlend -n "thigh_PRBL";
	rename -uid "5759B0F7-41F8-ED24-EC8B-46AB4F526D3B";
createNode blendColors -n "thigh_BLCL";
	rename -uid "03EBA19C-490D-0494-0E4C-E696368BF0AE";
createNode pairBlend -n "F_knee_PRBL";
	rename -uid "EC4866D0-466D-4E44-8DD8-4A9BB46900BE";
createNode blendColors -n "F_knee_BLCL";
	rename -uid "074020A0-43F2-FA4C-32FD-EA84B3799A5B";
createNode pairBlend -n "B_knee_PRBL";
	rename -uid "D2EB4083-4B3E-3688-C4D7-608BE7685E5A";
createNode blendColors -n "B_knee_BLCL";
	rename -uid "EABF11C8-4027-5FDF-2B6B-FA882AE70C3B";
createNode pairBlend -n "ankle_PRBL";
	rename -uid "8ECE48AD-41A2-9D34-9BD4-0685D960A1A7";
createNode blendColors -n "ankle_BLCL";
	rename -uid "E7623D78-4EA2-EC72-D381-6892EC6F5ABC";
createNode pairBlend -n "hind_toe_PRBL";
	rename -uid "3D0424A8-4FFF-8F8B-D182-55BF8BA5221A";
createNode blendColors -n "hind_toe_BLCL";
	rename -uid "DD617C7F-4901-B2FC-2D71-C8AF639D2B2A";
createNode pairBlend -n "hind_tiptoe_PRBL";
	rename -uid "4472AB0A-40F2-ACD6-468D-5FB51CB7EE67";
createNode blendColors -n "hind_tiptoe_BLCL";
	rename -uid "A49D3118-4CC7-56BE-0931-2A8EFD85EF19";
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
	setAttr -s 253 ".u";
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
	setAttr -s 6 ".sol";
connectAttr "B_IK_foot_IKH_stretched_space.reBuildMode" "leg_GRP.reBuildMode" -na
		;
connectAttr "B_IK_ball.reBuildMode" "leg_GRP.reBuildMode" -na;
connectAttr "B_IK_ankle.reBuildMode" "leg_GRP.reBuildMode" -na;
connectAttr "B_IK_toe.reBuildMode" "leg_GRP.reBuildMode" -na;
connectAttr "IK_thigh_upVec_02_offGRP.reBuildMode" "leg_GRP.reBuildMode" -na;
connectAttr "B_IK_B_knee_space_GRP.reBuildMode" "leg_GRP.reBuildMode" -na;
connectAttr "B_poleVec_CTL.reBuildAttr" "leg_GRP.reBuildAttr" -na;
connectAttr "B_IK_foot_CTL.reBuildAttr" "leg_GRP.reBuildAttr" -na;
connectAttr "input_hip.input" "leg_GRP.input" -na;
connectAttr "input_thigh.input" "leg_GRP.input" -na;
connectAttr "input_F_knee.input" "leg_GRP.input" -na;
connectAttr "input_B_knee.input" "leg_GRP.input" -na;
connectAttr "input_ankle.input" "leg_GRP.input" -na;
connectAttr "input_hind_toe.input" "leg_GRP.input" -na;
connectAttr "input_hind_tiptoe.input" "leg_GRP.input" -na;
connectAttr "input_hip.t" "motion_IK_leg_GRP.t";
connectAttr "input_hip.r" "motion_IK_leg_GRP.r";
connectAttr "input_hip.s" "motion_IK_leg_GRP.s";
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
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crx" "IK_lowerLeg_CTLaim.rx";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.cry" "IK_lowerLeg_CTLaim.ry";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crz" "IK_lowerLeg_CTLaim.rz";
connectAttr "leg_softIK_output.output_lower_softik" "lowerLeg_softIK_output_LOC.tx"
		;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.ox" "lowerLeg_stretch_output_LOC.tx"
		;
connectAttr "IK_lowerLeg_CTLaim.pim" "IK_lowerLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lowerLeg_CTLaim.t" "IK_lowerLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_lowerLeg_CTLaim.rp" "IK_lowerLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_lowerLeg_CTLaim.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_lowerLeg_CTLaim.ro" "IK_lowerLeg_CTLaim_aimConstraint1.cro";
connectAttr "B_IK_ankle.t" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "B_IK_ankle.rp" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "B_IK_ankle.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "B_IK_ankle.pm" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.w0" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_knee_space_upVec.wm" "IK_lowerLeg_CTLaim_aimConstraint1.wum";
connectAttr "IK_upperLeg_CTLaim.pim" "IK_upperLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upperLeg_CTLaim.t" "IK_upperLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_upperLeg_CTLaim.rp" "IK_upperLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_upperLeg_CTLaim.rpt" "IK_upperLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_upperLeg_CTLaim.ro" "IK_upperLeg_CTLaim_aimConstraint1.cro";
connectAttr "B_IK_B_knee_space.t" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "B_IK_B_knee_space.rp" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trp"
		;
connectAttr "B_IK_B_knee_space.rpt" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trt"
		;
connectAttr "B_IK_B_knee_space.pm" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tpm"
		;
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
connectAttr "decomposeMatrix3.ot" "IK_thigh.t";
connectAttr "IK_hip.s" "IK_thigh.is";
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
connectAttr "IK_ankle.tx" "effector10.tx";
connectAttr "IK_ankle.ty" "effector10.ty";
connectAttr "IK_ankle.tz" "effector10.tz";
connectAttr "B_poleVec_CTLShape.wm" "annotationShape2.dom" -na;
connectAttr "IK_B_knee.tx" "effector9.tx";
connectAttr "IK_B_knee.ty" "effector9.ty";
connectAttr "IK_B_knee.tz" "effector9.tz";
connectAttr "IK_hip_aim_space_parentConstraint1.ctx" "IK_hip_aim_space.tx";
connectAttr "IK_hip_aim_space_parentConstraint1.cty" "IK_hip_aim_space.ty";
connectAttr "IK_hip_aim_space_parentConstraint1.ctz" "IK_hip_aim_space.tz";
connectAttr "IK_hip_aim_space_aimConstraint1.crx" "IK_hip_aim_space.rx";
connectAttr "IK_hip_aim_space_aimConstraint1.cry" "IK_hip_aim_space.ry";
connectAttr "IK_hip_aim_space_aimConstraint1.crz" "IK_hip_aim_space.rz";
connectAttr "IK_hip_aim_space.ro" "IK_hip_aim_space_parentConstraint1.cro";
connectAttr "IK_hip_aim_space.pim" "IK_hip_aim_space_parentConstraint1.cpim";
connectAttr "IK_hip_aim_space.rp" "IK_hip_aim_space_parentConstraint1.crp";
connectAttr "IK_hip_aim_space.rpt" "IK_hip_aim_space_parentConstraint1.crt";
connectAttr "IK_hip.t" "IK_hip_aim_space_parentConstraint1.tg[0].tt";
connectAttr "IK_hip.rp" "IK_hip_aim_space_parentConstraint1.tg[0].trp";
connectAttr "IK_hip.rpt" "IK_hip_aim_space_parentConstraint1.tg[0].trt";
connectAttr "IK_hip.r" "IK_hip_aim_space_parentConstraint1.tg[0].tr";
connectAttr "IK_hip.ro" "IK_hip_aim_space_parentConstraint1.tg[0].tro";
connectAttr "IK_hip.s" "IK_hip_aim_space_parentConstraint1.tg[0].ts";
connectAttr "IK_hip.pm" "IK_hip_aim_space_parentConstraint1.tg[0].tpm";
connectAttr "IK_hip.jo" "IK_hip_aim_space_parentConstraint1.tg[0].tjo";
connectAttr "IK_hip.ssc" "IK_hip_aim_space_parentConstraint1.tg[0].tsc";
connectAttr "IK_hip.is" "IK_hip_aim_space_parentConstraint1.tg[0].tis";
connectAttr "IK_hip_aim_space_parentConstraint1.w0" "IK_hip_aim_space_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_hip_aim_space.pim" "IK_hip_aim_space_aimConstraint1.cpim";
connectAttr "IK_hip_aim_space.t" "IK_hip_aim_space_aimConstraint1.ct";
connectAttr "IK_hip_aim_space.rp" "IK_hip_aim_space_aimConstraint1.crp";
connectAttr "IK_hip_aim_space.rpt" "IK_hip_aim_space_aimConstraint1.crt";
connectAttr "IK_hip_aim_space.ro" "IK_hip_aim_space_aimConstraint1.cro";
connectAttr "B_IK_foot_CTL.t" "IK_hip_aim_space_aimConstraint1.tg[0].tt";
connectAttr "B_IK_foot_CTL.rp" "IK_hip_aim_space_aimConstraint1.tg[0].trp";
connectAttr "B_IK_foot_CTL.rpt" "IK_hip_aim_space_aimConstraint1.tg[0].trt";
connectAttr "B_IK_foot_CTL.pm" "IK_hip_aim_space_aimConstraint1.tg[0].tpm";
connectAttr "IK_hip_aim_space_aimConstraint1.w0" "IK_hip_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "B_IK_foot_upVec.wm" "IK_hip_aim_space_aimConstraint1.wum";
connectAttr "B_IK_foot_IKH_offGRP_local_DCMX.ot" "B_IK_foot_IKH_offGRP.t";
connectAttr "B_IK_foot_IKH_offGRP_local_DCMX.or" "B_IK_foot_IKH_offGRP.r";
connectAttr "B_IK_foot_IKH_offGRP_local_DCMX.os" "B_IK_foot_IKH_offGRP.s";
connectAttr "B_IK_ankle_CTL.t" "B_IK_foot_IKH_spcGRP.t";
connectAttr "B_IK_ankle_CTL.r" "B_IK_foot_IKH_spcGRP.r";
connectAttr "B_IK_ankle_CTL.s" "B_IK_foot_IKH_spcGRP.s";
connectAttr "lowerLeg_softIK_output_LOC.tx" "B_IK_foot_IKH_stretched_space.rebuildTransY"
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
connectAttr "B_IK_ankle_IKH_offGRP_aimConstraint1.crx" "B_IK_ankle_IKH_offGRP.rx"
		;
connectAttr "B_IK_ankle_IKH_offGRP_aimConstraint1.cry" "B_IK_ankle_IKH_offGRP.ry"
		;
connectAttr "B_IK_ankle_IKH_offGRP_aimConstraint1.crz" "B_IK_ankle_IKH_offGRP.rz"
		;
connectAttr "B_IK_ankle_IKH_offGRP_local_DCMX.ot" "B_IK_ankle_IKH_offGRP.t";
connectAttr "IK_B_knee.msg" "ikHandle10.hsj";
connectAttr "effector10.hp" "ikHandle10.hee";
connectAttr "ikSCsolver.msg" "ikHandle10.hsv";
connectAttr "B_IK_ankle_IKH_offGRP.pim" "B_IK_ankle_IKH_offGRP_aimConstraint1.cpim"
		;
connectAttr "B_IK_ankle_IKH_offGRP.t" "B_IK_ankle_IKH_offGRP_aimConstraint1.ct";
connectAttr "B_IK_ankle_IKH_offGRP.rp" "B_IK_ankle_IKH_offGRP_aimConstraint1.crp"
		;
connectAttr "B_IK_ankle_IKH_offGRP.rpt" "B_IK_ankle_IKH_offGRP_aimConstraint1.crt"
		;
connectAttr "B_IK_ankle_IKH_offGRP.ro" "B_IK_ankle_IKH_offGRP_aimConstraint1.cro"
		;
connectAttr "B_IK_B_knee_space.t" "B_IK_ankle_IKH_offGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "B_IK_B_knee_space.rp" "B_IK_ankle_IKH_offGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "B_IK_B_knee_space.rpt" "B_IK_ankle_IKH_offGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "B_IK_B_knee_space.pm" "B_IK_ankle_IKH_offGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "B_IK_ankle_IKH_offGRP_aimConstraint1.w0" "B_IK_ankle_IKH_offGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "B_IK_ankle_upVec.wm" "B_IK_ankle_IKH_offGRP_aimConstraint1.wum";
connectAttr "input_F_knee_upVec_space_local_DCMX.ot" "input_F_knee_upVec_space.t"
		;
connectAttr "input_F_knee_upVec_space_local_DCMX.or" "input_F_knee_upVec_space.r"
		;
connectAttr "input_F_knee_upVec_space_local_DCMX.os" "input_F_knee_upVec_space.s"
		;
connectAttr "input_hip.t" "motion_FK_leg_GRP.t";
connectAttr "input_hip.r" "motion_FK_leg_GRP.r";
connectAttr "input_hip.s" "motion_FK_leg_GRP.s";
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
connectAttr "leg_mirror_scale_COND.oc" "hip_CTL_offGRP.s";
connectAttr "hip_L_CTL_inverse_DCMX.os" "hip_CTL_ivsScale.s";
connectAttr "input_thigh.t" "IK_thigh_CTL_offGRP.t";
connectAttr "leg_switch_CTL.FK_IK" "IK_thigh_CTL_offGRP.v";
connectAttr "leg_mirror_scale_COND.oc" "IK_thigh_CTL_offGRP.s";
connectAttr "leg_switch_CTL.FK_IK" "IK_leg_CTL_GRP.v";
connectAttr "input_thigh.t" "IK_leg_CTL_GRP.t";
connectAttr "B_input_ankle_space_local_DCMX.ot" "B_input_ankle_space.t";
connectAttr "unitConversion19.o" "B_IK_foot_CTL_spcGRP.r";
connectAttr "unitConversion9.o" "B_IK_heel.rx";
connectAttr "unitConversion12.o" "B_IK_heel.rz";
connectAttr "in_out_condition1.oc" "B_IK_heel.rp";
connectAttr "unitConversion11.o" "B_IK_toe.rx";
connectAttr "B_toe_local_DCMX.ot" "B_IK_toe.rebuildTrans";
connectAttr "unitConversion10.o" "B_IK_ball.rx";
connectAttr "B_ball_local_DCMX.ot" "B_IK_ball.rebuildTrans";
connectAttr "B_ankle_local_DCMX.ot" "B_IK_ankle.rebuildTrans";
connectAttr "B_IK_ankle_aim_space_orientConstraint1.crx" "B_IK_ankle_aim_space.rx"
		;
connectAttr "B_IK_ankle_aim_space_orientConstraint1.cry" "B_IK_ankle_aim_space.ry"
		;
connectAttr "B_IK_ankle_aim_space_orientConstraint1.crz" "B_IK_ankle_aim_space.rz"
		;
connectAttr "B_knee_space_GRP_local_DCMX.ot" "B_IK_B_knee_space_GRP.rebuildTrans"
		;
connectAttr "B_IK_ball2B_IK_ball_IKH_offGRP_DCMX.ot" "B_IK_ball_IKH_offGRP.t";
connectAttr "B_IK_ball2B_IK_ball_IKH_offGRP_DCMX.or" "B_IK_ball_IKH_offGRP.r";
connectAttr "IK_ankle.msg" "ikHandle7.hsj";
connectAttr "effector7.hp" "ikHandle7.hee";
connectAttr "ikSCsolver.msg" "ikHandle7.hsv";
connectAttr "B_IK_toe2B_IK_toe_IKH_offGRP_DCMX.ot" "B_IK_toe_IKH_offGRP.t";
connectAttr "B_IK_toe2B_IK_toe_IKH_offGRP_DCMX.or" "B_IK_toe_IKH_offGRP.r";
connectAttr "B_IK_hind_toes_CTL.r" "B_IK_toe_IKH_spcGRP.r";
connectAttr "IK_hind_toe.msg" "ikHandle8.hsj";
connectAttr "effector8.hp" "ikHandle8.hee";
connectAttr "ikSCsolver.msg" "ikHandle8.hsv";
connectAttr "B_IK_ankle_aim_space.ro" "B_IK_ankle_aim_space_orientConstraint1.cro"
		;
connectAttr "B_IK_ankle_aim_space.pim" "B_IK_ankle_aim_space_orientConstraint1.cpim"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.r" "B_IK_ankle_aim_space_orientConstraint1.tg[0].tr"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.ro" "B_IK_ankle_aim_space_orientConstraint1.tg[0].tro"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.pm" "B_IK_ankle_aim_space_orientConstraint1.tg[0].tpm"
		;
connectAttr "B_IK_ankle_aim_space_orientConstraint1.w0" "B_IK_ankle_aim_space_orientConstraint1.tg[0].tw"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.r" "B_IK_ankle_aim_space_orientConstraint1.tg[1].tr"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.ro" "B_IK_ankle_aim_space_orientConstraint1.tg[1].tro"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.pm" "B_IK_ankle_aim_space_orientConstraint1.tg[1].tpm"
		;
connectAttr "B_IK_ankle_aim_space_orientConstraint1.w1" "B_IK_ankle_aim_space_orientConstraint1.tg[1].tw"
		;
connectAttr "unitConversion13.o" "B_IK_ankle_aim_space_orientConstraint1.w0";
connectAttr "toesAim_RVS1.ox" "B_IK_ankle_aim_space_orientConstraint1.w1";
connectAttr "B_IK_ankle_IKH_aim_space_01_aimConstraint1.crx" "B_IK_ankle_IKH_aim_space_01.rx"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01_aimConstraint1.cry" "B_IK_ankle_IKH_aim_space_01.ry"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01_aimConstraint1.crz" "B_IK_ankle_IKH_aim_space_01.rz"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.pim" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.cpim"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.t" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.ct"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.rp" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.crp"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.rpt" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.crt"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01.ro" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.cro"
		;
connectAttr "IK_thigh.t" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.tg[0].tt";
connectAttr "IK_thigh.rp" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_thigh.rpt" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_thigh.pm" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.tg[0].tpm"
		;
connectAttr "B_IK_ankle_IKH_aim_space_01_aimConstraint1.w0" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_thigh_upVec_01.wm" "B_IK_ankle_IKH_aim_space_01_aimConstraint1.wum"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02_aimConstraint1.crx" "B_IK_ankle_IKH_aim_space_02.rx"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02_aimConstraint1.cry" "B_IK_ankle_IKH_aim_space_02.ry"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02_aimConstraint1.crz" "B_IK_ankle_IKH_aim_space_02.rz"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.pim" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.cpim"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.t" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.ct"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.rp" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.crp"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.rpt" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.crt"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02.ro" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.cro"
		;
connectAttr "IK_thigh_upVec_02_spcGRP.t" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.tg[0].tt"
		;
connectAttr "IK_thigh_upVec_02_spcGRP.rp" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_thigh_upVec_02_spcGRP.rpt" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_thigh_upVec_02_spcGRP.pm" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.tg[0].tpm"
		;
connectAttr "B_IK_ankle_IKH_aim_space_02_aimConstraint1.w0" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_thigh_upVec_02.wm" "B_IK_ankle_IKH_aim_space_02_aimConstraint1.wum"
		;
connectAttr "IK_thigh_upVec_02_offGRP_local_DCMX.ot" "IK_thigh_upVec_02_offGRP.rebuildTrans"
		;
connectAttr "unitConversion18.o" "IK_thigh_upVec_02_offGRP.rebuildRot";
connectAttr "B_poleVec_follow_PRBL.ot" "B_poleVec_space_follow.t";
connectAttr "B_poleVec_follow_PRBL.or" "B_poleVec_space_follow.r";
connectAttr "B_poleVec_input_space_aimConstraint1.crx" "B_poleVec_input_space.rx"
		;
connectAttr "B_poleVec_input_space_aimConstraint1.cry" "B_poleVec_input_space.ry"
		;
connectAttr "B_poleVec_input_space_aimConstraint1.crz" "B_poleVec_input_space.rz"
		;
connectAttr "B_poleVec_input_space_local_DCMX.ot" "B_poleVec_input_space.t";
connectAttr "B_poleVec_input_space.pim" "B_poleVec_input_space_aimConstraint1.cpim"
		;
connectAttr "B_poleVec_input_space.t" "B_poleVec_input_space_aimConstraint1.ct";
connectAttr "B_poleVec_input_space.rp" "B_poleVec_input_space_aimConstraint1.crp"
		;
connectAttr "B_poleVec_input_space.rpt" "B_poleVec_input_space_aimConstraint1.crt"
		;
connectAttr "B_poleVec_input_space.ro" "B_poleVec_input_space_aimConstraint1.cro"
		;
connectAttr "input_B_knee.t" "B_poleVec_input_space_aimConstraint1.tg[0].tt";
connectAttr "input_B_knee.rp" "B_poleVec_input_space_aimConstraint1.tg[0].trp";
connectAttr "input_B_knee.rpt" "B_poleVec_input_space_aimConstraint1.tg[0].trt";
connectAttr "input_B_knee.pm" "B_poleVec_input_space_aimConstraint1.tg[0].tpm";
connectAttr "B_poleVec_input_space_aimConstraint1.w0" "B_poleVec_input_space_aimConstraint1.tg[0].tw"
		;
connectAttr "input_F_knee_upVec.wm" "B_poleVec_input_space_aimConstraint1.wum";
connectAttr "IK_hip_aim_space2B_poleVec_aim_space_DCMX.ot" "B_poleVec_aim_space.t"
		;
connectAttr "IK_hip_aim_space2B_poleVec_aim_space_DCMX.or" "B_poleVec_aim_space.r"
		;
connectAttr "FK_IK_RVS.ox" "FK_leg_CTL_GRP.v";
connectAttr "hip_CTL.t" "FK_hip_space.t";
connectAttr "hip_CTL.s" "FK_hip_space.s";
connectAttr "hip_CTL.r" "FK_hip_space.r";
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
connectAttr "input_hip.t" "leg_output.t";
connectAttr "input_hip.r" "leg_output.r";
connectAttr "input_hip.s" "leg_output.s";
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
connectAttr "motion_IK_leg_GRP.wim" "IK_thigh_space_MTMX.i[1]";
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
connectAttr "B_IK_B_knee_space.wm" "B_knee_space_local_MTMX.i[0]";
connectAttr "input_hip.wim" "B_knee_space_local_MTMX.i[1]";
connectAttr "input_thigh.wm" "input_thigh_local_dist_MTMX.i[0]";
connectAttr "input_hip.wim" "input_thigh_local_dist_MTMX.i[1]";
connectAttr "B_IK_foot_CTL.softIK" "leg_IK_negate_val.i1x";
connectAttr "B_IK_foot_CTL.stretch" "leg_IK_negate_val.i1y";
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
connectAttr "B_IK_ankle.wm" "multMatrix4.i[0]";
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
connectAttr "motion_IK_leg_GRP.wim" "multMatrix7.i[1]";
connectAttr "multMatrix8.o" "decomposeMatrix3.imat";
connectAttr "IK_thigh_CTL.wm" "multMatrix8.i[0]";
connectAttr "IK_hip.wim" "multMatrix8.i[1]";
connectAttr "B_IK_B_knee_space.wm" "IK_B_knee_local_DCMX.imat";
connectAttr "B_IK_ankle.wm" "IK_ankle_local_DCMX.imat";
connectAttr "B_IK_ball.wm" "IK_hind_toe_local_DCMX.imat";
connectAttr "B_IK_foot_IKH_offGRP_local_MTMX.o" "B_IK_foot_IKH_offGRP_local_DCMX.imat"
		;
connectAttr "B_IK_ankle_aim_space.wm" "B_IK_foot_IKH_offGRP_local_MTMX.i[0]";
connectAttr "motion_IK_leg_GRP.wim" "B_IK_foot_IKH_offGRP_local_MTMX.i[1]";
connectAttr "B_IK_ankle_IKH_offGRP_local_MTMX.o" "B_IK_ankle_IKH_offGRP_local_DCMX.imat"
		;
connectAttr "B_IK_ankle.wm" "B_IK_ankle_IKH_offGRP_local_MTMX.i[0]";
connectAttr "motion_IK_leg_GRP.wim" "B_IK_ankle_IKH_offGRP_local_MTMX.i[1]";
connectAttr "input_F_knee_upVec_space_local_MTMX.o" "input_F_knee_upVec_space_local_DCMX.imat"
		;
connectAttr "input_F_knee.wm" "input_F_knee_upVec_space_local_MTMX.i[0]";
connectAttr "motion_IK_leg_GRP.wim" "input_F_knee_upVec_space_local_MTMX.i[1]";
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
connectAttr "leg_GRP.mirror" "leg_mirror_scale_COND.ft";
connectAttr "hip_CTL.wim" "hip_L_CTL_inverse_DCMX.imat";
connectAttr "B_input_ankle_space_local_MTMX.o" "B_input_ankle_space_local_DCMX.imat"
		;
connectAttr "input_ankle.wm" "B_input_ankle_space_local_MTMX.i[0]";
connectAttr "IK_leg_CTL_GRP.wim" "B_input_ankle_space_local_MTMX.i[1]";
connectAttr "leg_mirror_rotate_COND.oc" "unitConversion19.i";
connectAttr "leg_GRP.mirror" "leg_mirror_rotate_COND.ft";
connectAttr "ball_bk_condition1.ocr" "unitConversion9.i";
connectAttr "B_IK_foot_CTL.roll" "ball_bk_condition1.ft";
connectAttr "B_IK_foot_CTL.roll" "ball_bk_condition1.cfr";
connectAttr "B_IK_foot_CTL.bank" "unitConversion12.i";
connectAttr "B_IK_foot_CTL.bank" "in_out_condition1.ft";
connectAttr "in_out_default_condition1.oc" "in_out_condition1.ct";
connectAttr "B_IK_heel_out.t" "in_out_condition1.cf";
connectAttr "B_IK_foot_CTL.bank" "in_out_default_condition1.ft";
connectAttr "B_IK_heel_in.t" "in_out_default_condition1.cf";
connectAttr "toe_fn_condition1.ocr" "unitConversion11.i";
connectAttr "B_IK_foot_CTL.rollStartAngle" "toe_fn_condition1.st";
connectAttr "B_IK_foot_CTL.roll" "toe_fn_condition1.ft";
connectAttr "plusMinusAverage2.o1" "toe_fn_condition1.ctr";
connectAttr "B_IK_foot_CTL.roll" "plusMinusAverage2.i1[0]";
connectAttr "B_IK_foot_CTL.rollStartAngle" "plusMinusAverage2.i1[1]";
connectAttr "B_toe_local_MTMX.o" "B_toe_local_DCMX.imat";
connectAttr "input_hind_tiptoe.wm" "B_toe_local_MTMX.i[0]";
connectAttr "B_IK_heel_CTL.wim" "B_toe_local_MTMX.i[1]";
connectAttr "ball_start_conditon1.ocr" "unitConversion10.i";
connectAttr "ball_fn_condition1.ocr" "ball_start_conditon1.ft";
connectAttr "B_IK_foot_CTL.rollStartAngle" "ball_start_conditon1.st";
connectAttr "backto_zero_ball1.o1" "ball_start_conditon1.ctr";
connectAttr "ball_fn_condition1.ocr" "ball_start_conditon1.cfr";
connectAttr "B_IK_foot_CTL.roll" "ball_fn_condition1.ft";
connectAttr "B_IK_foot_CTL.roll" "ball_fn_condition1.ctr";
connectAttr "B_IK_foot_CTL.rollStartAngle" "backto_zero_ball1.i1[0]";
connectAttr "ball_remap1.ov" "backto_zero_ball1.i1[1]";
connectAttr "after_ball_start1.o1" "ball_remap1.i";
connectAttr "B_IK_foot_CTL.rollStartAngle" "ball_remap1.omx";
connectAttr "B_IK_foot_CTL.roll" "after_ball_start1.i1[0]";
connectAttr "B_IK_foot_CTL.rollStartAngle" "after_ball_start1.i1[1]";
connectAttr "B_ball_local_MTMX.o" "B_ball_local_DCMX.imat";
connectAttr "input_hind_toe.wm" "B_ball_local_MTMX.i[0]";
connectAttr "B_IK_toe_CTL.wim" "B_ball_local_MTMX.i[1]";
connectAttr "B_ankle_local_MTMX.o" "B_ankle_local_DCMX.imat";
connectAttr "input_ankle.wm" "B_ankle_local_MTMX.i[0]";
connectAttr "B_IK_ball_CTL.wim" "B_ankle_local_MTMX.i[1]";
connectAttr "B_knee_space_GRP_local_MTMX.o" "B_knee_space_GRP_local_DCMX.imat";
connectAttr "input_B_knee.wm" "B_knee_space_GRP_local_MTMX.i[0]";
connectAttr "B_IK_ankle_aim_space.wim" "B_knee_space_GRP_local_MTMX.i[1]";
connectAttr "B_IK_ball2B_IK_ball_IKH_offGRP_MTMX.o" "B_IK_ball2B_IK_ball_IKH_offGRP_DCMX.imat"
		;
connectAttr "B_IK_ball_IKH_offGRP.offset" "B_IK_ball2B_IK_ball_IKH_offGRP_MTMX.i[0]"
		;
connectAttr "B_IK_ball.wm" "B_IK_ball2B_IK_ball_IKH_offGRP_MTMX.i[1]";
connectAttr "B_IK_B_knee_space.wim" "B_IK_ball2B_IK_ball_IKH_offGRP_MTMX.i[2]";
connectAttr "B_IK_toe2B_IK_toe_IKH_offGRP_MTMX.o" "B_IK_toe2B_IK_toe_IKH_offGRP_DCMX.imat"
		;
connectAttr "B_IK_toe_IKH_offGRP.offset" "B_IK_toe2B_IK_toe_IKH_offGRP_MTMX.i[0]"
		;
connectAttr "B_IK_toe.wm" "B_IK_toe2B_IK_toe_IKH_offGRP_MTMX.i[1]";
connectAttr "B_IK_B_knee_space.wim" "B_IK_toe2B_IK_toe_IKH_offGRP_MTMX.i[2]";
connectAttr "B_IK_foot_CTL.toesAim" "unitConversion13.i";
connectAttr "unitConversion13.o" "toesAim_RVS1.ix";
connectAttr "IK_thigh_upVec_02_offGRP_local_MTMX.o" "IK_thigh_upVec_02_offGRP_local_DCMX.imat"
		;
connectAttr "input_B_knee.wm" "IK_thigh_upVec_02_offGRP_local_MTMX.i[0]";
connectAttr "B_IK_foot_CTL.wim" "IK_thigh_upVec_02_offGRP_local_MTMX.i[1]";
connectAttr "IK_thigh_upVec_02_offGRP_local_DCMX.or" "unitConversion18.i";
connectAttr "B_poleVec_input_space.t" "B_poleVec_follow_PRBL.it1";
connectAttr "B_poleVec_input_space.r" "B_poleVec_follow_PRBL.ir1";
connectAttr "B_poleVec_aim_space.t" "B_poleVec_follow_PRBL.it2";
connectAttr "B_poleVec_aim_space.r" "B_poleVec_follow_PRBL.ir2";
connectAttr "unitConversion14.o" "B_poleVec_follow_PRBL.w";
connectAttr "B_poleVec_CTL.follow" "unitConversion14.i";
connectAttr "B_poleVec_input_space_local_MTMX.o" "B_poleVec_input_space_local_DCMX.imat"
		;
connectAttr "input_F_knee.wm" "B_poleVec_input_space_local_MTMX.i[0]";
connectAttr "B_poleVec_offGRP.wim" "B_poleVec_input_space_local_MTMX.i[1]";
connectAttr "IK_hip_aim_space2B_poleVec_aim_space_MTMX.o" "IK_hip_aim_space2B_poleVec_aim_space_DCMX.imat"
		;
connectAttr "B_poleVec_aim_space.offset" "IK_hip_aim_space2B_poleVec_aim_space_MTMX.i[0]"
		;
connectAttr "IK_hip_aim_space.wm" "IK_hip_aim_space2B_poleVec_aim_space_MTMX.i[1]"
		;
connectAttr "B_poleVec_offGRP.wim" "IK_hip_aim_space2B_poleVec_aim_space_MTMX.i[2]"
		;
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
connectAttr "B_IK_ankle.wm" "leg_switch_CTL_CHOI.i[1]";
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
connectAttr "leg_mirror_rotate_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_mirror_scale_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of q_leg.ma
