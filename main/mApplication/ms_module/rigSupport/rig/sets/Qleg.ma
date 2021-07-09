//Maya ASCII 2019 scene
//Name: Qleg.ma
//Last modified: Fri, Jul 09, 2021 11:23:48 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
requires "RenderMan_for_Maya" "4.0.3";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "redshift4maya" "2.6.31";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "leg_GRP";
	rename -uid "F004B73D-4FFC-5476-C145-3DB393EDF5AE";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	addAttr -ci true -sn "type" -ln "type" -dt "string";
	setAttr -s 6 ".reBuildMode";
	setAttr -s 2 ".reBuildAttr";
	setAttr -s 7 ".input";
	setAttr -l on -k on ".type" -type "string" "Qleg";
createNode transform -n "leg_motion_GRP" -p "leg_GRP";
	rename -uid "4AE3E21D-4FF7-1FB2-5DBA-288BA13656BD";
createNode transform -n "input_hip" -p "leg_motion_GRP";
	rename -uid "5CE941C4-4E6B-2623-0FE7-D48AC573CCE1";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode transform -n "input_thigh" -p "input_hip";
	rename -uid "2BCEE288-4E44-289C-8DCD-E0A54AA349B0";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 2.0713150501251221 -2.5815353393554688 -3.8085823059082031 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "input_F_knee" -p "input_thigh";
	rename -uid "5D898525-4D24-05B9-9698-D18C32213BAD";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 15.556730270385742 0 0 ;
	setAttr ".r" -type "double3" 0 31.269647204474431 0 ;
	setAttr ".s" -type "double3" 1.0000000519103551 1 1.0000000519103551 ;
createNode transform -n "input_B_knee" -p "input_F_knee";
	rename -uid "4286B0D1-491A-3873-12E9-8DABD9E24A46";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 11.553379704806883 8.8817841970012523e-16 5.0302446652494837e-09 ;
	setAttr ".r" -type "double3" 0 -31.528018626149372 0 ;
	setAttr ".s" -type "double3" 0.99999994890369348 1 0.99999994890369348 ;
createNode transform -n "input_ankle" -p "input_B_knee";
	rename -uid "0B25617E-4AB5-55AF-029B-ADB70399A73D";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 10.44397827841934 0 5.5581494962098077e-10 ;
	setAttr ".r" -type "double3" 0 -48.499339376309685 0 ;
	setAttr ".s" -type "double3" 1 1.0000000142892349 1.0000000142892349 ;
createNode transform -n "input_hind_toe" -p "input_ankle";
	rename -uid "1DE8B7A7-4E17-4248-BA28-7F8F93FA4BC4";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.2635077050796788 -8.8817841970012523e-16 -2.890024575208372e-08 ;
	setAttr ".r" -type "double3" 6.1621956693690804e-09 -15.478215380223075 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "input_hind_tiptoe" -p "input_hind_toe";
	rename -uid "2AEAA587-48E3-8D61-02E6-BCA6D32EBCB9";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.6600728390644406 0 1.198605659169516e-09 ;
	setAttr ".r" -type "double3" 64.235926178207706 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "motion_IK_leg_GRP" -p "leg_motion_GRP";
	rename -uid "0E54E7B4-467E-50DF-DB6C-23A20EA4D931";
createNode transform -n "IK_thigh_space" -p "motion_IK_leg_GRP";
	rename -uid "CF04BFB0-4367-C31B-6975-9DB34844B434";
	setAttr ".v" no;
createNode locator -n "IK_thigh_spaceShape" -p "IK_thigh_space";
	rename -uid "56AE8950-44A7-2348-23F1-57BDAB8EC0F2";
	setAttr -k off ".v";
createNode transform -n "IK_upperLeg_CTLaim" -p "IK_thigh_space";
	rename -uid "BA3C80A6-46EC-5716-37B7-A6ACC2CA9A63";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "IK_upperLeg_CTLaimShape" -p "IK_upperLeg_CTLaim";
	rename -uid "82278262-4B04-021D-6E5D-E8AC524CDCA9";
	setAttr -k off ".v";
createNode transform -n "upperLeg_softIK_output_LOC" -p "IK_upperLeg_CTLaim";
	rename -uid "347D161A-4A87-120C-2ECE-5E94E1AD4CAD";
	setAttr ".t" -type "double3" 26.129291534423828 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_softIK_output_LOCShape" -p "upperLeg_softIK_output_LOC";
	rename -uid "D2360371-4AD0-7F98-46D7-86B059BD2BAE";
	setAttr -k off ".v";
createNode transform -n "upperLeg_stretch_output_LOC" -p "upperLeg_softIK_output_LOC";
	rename -uid "101DEBD4-4E70-0C69-514D-73A16CCD367C";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_stretch_output_LOCShape" -p "upperLeg_stretch_output_LOC";
	rename -uid "11ECEB59-43A9-EC83-CFCE-B2ADBB46AD50";
	setAttr -k off ".v";
createNode transform -n "IK_knee_space" -p "upperLeg_stretch_output_LOC";
	rename -uid "EBD18E05-4B03-5FCA-8106-1C8F6B327CDA";
	setAttr ".s" -type "double3" 1.0000000008140462 1 1.0000000008140462 ;
	setAttr ".sh" -type "double3" 0 -9.8073115450991193e-09 0 ;
createNode locator -n "IK_knee_spaceShape" -p "IK_knee_space";
	rename -uid "14CD6051-42B6-B126-29C3-0DA3AE8989C6";
	setAttr -k off ".v";
createNode transform -n "IK_lowerLeg_CTLaim" -p "IK_knee_space";
	rename -uid "7BA98FCA-406A-9A97-DEDD-0AB9AC723625";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "IK_lowerLeg_CTLaimShape" -p "IK_lowerLeg_CTLaim";
	rename -uid "224A5187-4F97-8DD2-4790-EFBA4C4A6C28";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_softIK_output_LOC" -p "IK_lowerLeg_CTLaim";
	rename -uid "49C5BACB-440E-5B1F-C409-8FAA045DDA3D";
	setAttr ".t" -type "double3" 10.443977355957031 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_softIK_output_LOCShape" -p "lowerLeg_softIK_output_LOC";
	rename -uid "742A364F-4562-8D1C-F8BF-36A0B98A8BFC";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_stretch_output_LOC" -p "lowerLeg_softIK_output_LOC";
	rename -uid "5891978B-4A8B-CA48-EF52-1C9B2344D58D";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_stretch_output_LOCShape" -p "lowerLeg_stretch_output_LOC";
	rename -uid "99190DAE-45C8-649A-148A-968769C670A6";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_lowerLeg_CTLaim_aimConstraint1" -p "IK_lowerLeg_CTLaim";
	rename -uid "E057E72F-4B14-9653-416C-8996D33A115B";
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
	rename -uid "E5081732-4E3C-4B1C-F355-D6A76FBC7B29";
	setAttr ".t" -type "double3" -1.6695378642591435e-15 1 8.3968127717560347e-15 ;
createNode locator -n "IK_knee_space_upVecShape" -p "IK_knee_space_upVec";
	rename -uid "D0A698D4-4E02-2B05-0D42-37A8D894DE5E";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upperLeg_CTLaim_aimConstraint1" -p "IK_upperLeg_CTLaim";
	rename -uid "5F8C6825-4BD2-B69C-DCA9-8E980BC90B85";
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
	rename -uid "FD0E97E3-4390-FFED-BC18-AE939026727A";
	setAttr ".t" -type "double3" 6.2325491732529114e-15 1 -6.0636337963556973e-15 ;
createNode locator -n "IK_thigh_space_upVecShape" -p "IK_thigh_space_upVec";
	rename -uid "3A25F3E6-4608-8456-A6CD-B0A417F82697";
	setAttr -k off ".v";
createNode transform -n "leg_softIK_input" -p "motion_IK_leg_GRP";
	rename -uid "5629FFA7-488A-CAD2-8985-1BAE85BCF11D";
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
	rename -uid "6530077B-4C96-F17D-BA26-C1A058BBDEA7";
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
	rename -uid "BE751A7B-45B1-D30C-0B13-32954373BF2C";
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
	rename -uid "AC969ED1-4B70-8FC5-1F10-549AE2E0A37E";
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
	rename -uid "F941B601-4E70-5984-622C-908075228711";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_thigh" -p "IK_hip";
	rename -uid "CE7E56FF-4B1F-D3AB-0A75-98BCDC5F05B2";
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
	rename -uid "49D4B94A-4158-DACA-91C8-ADA251603D3C";
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
	rename -uid "C173DF05-4F7D-5EC9-1025-00AA4DDD9653";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" 5.8422502059885328e-05 0.25841742637570059 -7.1091660071341293e-23 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_ankle" -p "IK_B_knee";
	rename -uid "2935B709-4BA6-F381-4EBD-9E901CE08E68";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -3.871282399863261e-05 -0.25992317145138022 4.3931041306673553e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_toe" -p "IK_ankle";
	rename -uid "0D7A4BEE-470F-47CE-CDA6-7582923D5A49";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" 5.0891578668281412e-14 0.0014856093232487055 2.0855850373204676e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_tiptoe" -p "IK_hind_toe";
	rename -uid "922B190A-4719-FF86-19DD-70838916E435";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999999258654459 0.99999999290083708 0.99999998828870273 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector8" -p "IK_hind_toe";
	rename -uid "DAE142A3-4438-A6F8-6D8E-FAAD7A872F17";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "IK_ankle";
	rename -uid "1933E315-439C-5B2F-06C7-178826BB035B";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector10" -p "IK_B_knee";
	rename -uid "E36D5A37-4393-5B90-293F-98846713FACE";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation2" -p "IK_F_knee";
	rename -uid "82826811-4E57-436B-6D83-1BB0BD5D9D78";
	setAttr ".r" -type "double3" -31.269644285477167 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000131119584 1.0000000131119584 ;
createNode annotationShape -n "annotationShape2" -p "annotation2";
	rename -uid "E4B3B005-43E7-3590-EB35-C2AEC006C96A";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector9" -p "IK_F_knee";
	rename -uid "8A182790-4A41-EEDB-9707-C99396CED7A0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IK_hip_aim_space" -p "motion_IK_leg_GRP";
	rename -uid "AC584C1E-4F02-4C86-ECA8-7AA0457AC6BF";
createNode parentConstraint -n "IK_hip_aim_space_parentConstraint1" -p "IK_hip_aim_space";
	rename -uid "C88E3FD7-46A9-B127-9DF8-45B2C134DEFD";
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
	rename -uid "F33D6DC0-4C29-6F9F-DE54-2CB3537468B6";
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
	rename -uid "A1D28931-4290-1E50-01A4-4DBB7FAD9209";
	setAttr ".v" no;
createNode transform -n "B_IK_foot_IKH_spcGRP" -p "B_IK_foot_IKH_offGRP";
	rename -uid "32E5B8A2-448E-7D44-1706-0CA37F193AA1";
createNode transform -n "B_IK_foot_IKH_stretched_space" -p "B_IK_foot_IKH_spcGRP";
	rename -uid "5CA05DF0-495A-24F3-86D7-7AB8425262AA";
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
	rename -uid "BC9E6EBF-4419-AB6F-038B-CA9B3F20D6D1";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -4.7077849769650015e-05 -1.1101343815766995e-05 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle9_poleVectorConstraint1" -p "ikHandle9";
	rename -uid "02643E94-4D83-294B-A1D2-14A0DA8152EA";
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
	rename -uid "1EE27293-4005-2AD9-3FD8-B1BCC24C162E";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "B_IK_ankle_IKH_spcGRP" -p "B_IK_ankle_IKH_offGRP";
	rename -uid "00B52626-4724-1246-3EE9-6A90DA7AC511";
createNode ikHandle -n "ikHandle10" -p "B_IK_ankle_IKH_spcGRP";
	rename -uid "DFB61AC6-40F3-655E-EC8A-5CA912A26D20";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".pv" -type "double3" 0.0045157158345056668 0.0045099670174206562 0.99997963404661605 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "B_IK_ankle_IKH_offGRP_aimConstraint1" -p "B_IK_ankle_IKH_offGRP";
	rename -uid "64BF0227-437A-06F8-EAA4-23ADD1F924E1";
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
	rename -uid "1C66A139-4B79-D08D-B1D1-C3870460D1FC";
	setAttr ".v" no;
createNode transform -n "input_F_knee_upVec" -p "input_F_knee_upVec_space";
	rename -uid "8E3DFD09-4E1E-8D04-C99C-E19EE6ACB1D4";
	setAttr ".t" -type "double3" 3.6204508598964065e-15 5 5.1608877638575004e-16 ;
	setAttr ".s" -type "double3" 0.9999999631929275 1 0.9999999631929275 ;
createNode locator -n "input_F_knee_upVecShape" -p "input_F_knee_upVec";
	rename -uid "109D944F-4785-0D32-DDDB-F6AC07D977F9";
	setAttr -k off ".v";
createNode transform -n "motion_FK_leg_GRP" -p "leg_motion_GRP";
	rename -uid "FCD8A87E-4688-9AE3-DD36-DF9F0EB3AB04";
createNode joint -n "FK_hip" -p "motion_FK_leg_GRP";
	rename -uid "C2980399-47B2-C2E6-6C59-8C862DF83E68";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_thigh" -p "FK_hip";
	rename -uid "435A1D2E-4464-1C2B-B2EC-E4B4992DD9DA";
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
	rename -uid "8F1AE55C-46A5-E432-138D-4A97E8AB054F";
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
	rename -uid "879BDEAC-43CA-E79E-324E-BF930C0B32E4";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_ankle" -p "FK_B_knee";
	rename -uid "6E608E50-4227-9961-023F-9BB686B3769F";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_toe" -p "FK_ankle";
	rename -uid "AE292DC0-4146-6F65-74B5-B39F8118D0CF";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_tiptoe" -p "FK_hind_toe";
	rename -uid "ABC8C0C7-415C-78B9-5AE2-97A1AAD328F0";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 3.6600722913155082 -8.8817841970012523e-16 -1.9375632120954833e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000184310067 1.0000000019227699 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "leg_CTL_GRP" -p "leg_GRP";
	rename -uid "6B7BCDE2-4EC7-F897-56B1-22976CC6D691";
createNode transform -n "hip_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "747FBA2B-4F3C-1281-D532-328708FCC26A";
createNode transform -n "hip_CTL_spcGRP" -p "hip_CTL_offGRP";
	rename -uid "83488BC5-4971-47CE-FD3F-49B56340199B";
createNode transform -n "hip_CTL" -p "hip_CTL_spcGRP";
	rename -uid "6CF2CBC8-411A-AEF2-B0A8-DBBA1699377D";
createNode nurbsCurve -n "hip_CTLShape" -p "hip_CTL";
	rename -uid "49B82492-4589-A0C4-8D2C-5CB17D819CD5";
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
	rename -uid "56FD0A56-45B7-CDC9-63C7-AD9D3B4A4C84";
createNode transform -n "IK_thigh_CTL_offGRP" -p "hip_CTL_ivsScale";
	rename -uid "3D51779C-4C60-AACF-7D6B-C08CFE26453B";
createNode transform -n "IK_thigh_CTL_spcGRP" -p "IK_thigh_CTL_offGRP";
	rename -uid "8C892B02-4124-036F-2471-FB8E650A87F6";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "IK_thigh_CTL" -p "IK_thigh_CTL_spcGRP";
	rename -uid "35391D6B-416A-3AE8-EFBA-C1B87C2703EC";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_thigh_CTLShape" -p "IK_thigh_CTL";
	rename -uid "094CBC68-4EB8-90D7-D620-B9B4893E7863";
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
	rename -uid "DA519163-4158-F47E-9404-0E9592116EF7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode locator -n "IK_B_ankle_upVecShape" -p "IK_B_ankle_upVec";
	rename -uid "9927FB01-4913-87E6-487C-8CAD912750DA";
	setAttr -k off ".v";
createNode transform -n "IK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "496342E2-417F-66DE-1EDB-6A89837146A5";
	setAttr ".r" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "B_input_ankle_space" -p "IK_leg_CTL_GRP";
	rename -uid "099F9678-42C3-EBD2-17C9-A887E051E330";
	setAttr ".r" -type "double3" 0 -58.372285091973481 0 ;
	setAttr ".s" -type "double3" 1.0000000008140459 1.0000000142892349 1.0000000151032808 ;
createNode transform -n "B_IK_foot_CTL_offGRP" -p "B_input_ankle_space";
	rename -uid "AB34878F-4C52-B093-F881-3DA998A15293";
	setAttr ".t" -type "double3" -7.1859985695255091e-07 -8.8817841970012523e-16 4.6649796203723781e-07 ;
	setAttr ".r" -type "double3" 48.757712960051755 0 90 ;
	setAttr ".s" -type "double3" 0.99999998571076532 1.0000000062101502 1.0000000080790838 ;
	setAttr ".sh" -type "double3" 0 0 -1.4166485592282508e-08 ;
createNode transform -n "B_IK_foot_CTL_spcGRP" -p "B_IK_foot_CTL_offGRP";
	rename -uid "47B38644-4D86-DFD3-B845-F0848ED67E71";
createNode transform -n "B_IK_foot_CTL" -p "B_IK_foot_CTL_spcGRP";
	rename -uid "0C6FE353-4DEE-1849-F073-9FB9B210170A";
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
	rename -uid "19129BA8-4036-382E-F134-24A94B5E49DD";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.0004753143805720228 -2.4238727097881774 -1.2490500892962473 ;
createNode locator -n "B_IK_heelShape" -p "B_IK_heel";
	rename -uid "BA85F360-4B32-2657-2462-54ADB37DEAB2";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_IK_heel_CTL" -p "B_IK_heel";
	rename -uid "785F4C30-4BD7-34F1-06E3-D487D8127E9A";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_heel_CTLShape" -p "B_IK_heel_CTL";
	rename -uid "483A226F-496E-2A75-CC64-1CB931672598";
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
	rename -uid "62115CCC-4AFC-9EB2-7B44-76B2B18074D4";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.6304045646172298 -1.1102230246251565e-15 0.0071562015207398133 ;
createNode locator -n "B_IK_heel_outShape" -p "B_IK_heel_out";
	rename -uid "7D21BEE4-4E26-3699-F005-1BBD742576DE";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_IK_heel_in" -p "B_IK_heel_CTL";
	rename -uid "CB6EA807-477A-84E7-E9B3-0CAEB08F3ECE";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.6293138535041081 -8.8817841970012484e-16 0.0071562015207398133 ;
createNode locator -n "B_IK_heel_inShape" -p "B_IK_heel_in";
	rename -uid "53A8521A-43B7-8570-3C87-0E936E98EEA6";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_IK_toe" -p "B_IK_heel_CTL";
	rename -uid "2369D9BE-452A-D043-D7EE-CF9BD31E0A50";
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
	rename -uid "79D043A6-4D0D-BA43-F6F8-D3A2DF7148E6";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_IK_toe_CTL" -p "B_IK_toe";
	rename -uid "22E0203C-445E-D7A5-2E01-A38C1410F3C3";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_toe_CTLShape" -p "B_IK_toe_CTL";
	rename -uid "5007743E-458F-4ABB-B1E2-7080E53BADF4";
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
	rename -uid "335A8885-42CB-F7A1-F689-5D8B7B6EE838";
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
	rename -uid "A03D69F9-49EC-C6E4-5FD1-97A7FFCEADFB";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_IK_ball_CTL" -p "B_IK_ball";
	rename -uid "1BE95F21-4C06-05FA-8C63-E49C76EA64F7";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_ball_CTLShape" -p "B_IK_ball_CTL";
	rename -uid "65CFF675-4998-1841-85FF-39A8320D9196";
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
	rename -uid "36CB3F50-41E5-3204-861F-5D9BB041C638";
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
	rename -uid "00A0C916-46BF-E869-45AC-A5892450843B";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_IK_ankle_CTL_offGRP" -p "B_IK_ankle";
	rename -uid "AF4FDC13-4140-9DEB-5330-6186CB4E2C33";
createNode transform -n "B_IK_ankle_CTL_spcGRP" -p "B_IK_ankle_CTL_offGRP";
	rename -uid "F3B2EDDF-4490-A3F6-54C1-DEBC10868BF5";
createNode transform -n "B_IK_ankle_CTL" -p "B_IK_ankle_CTL_spcGRP";
	rename -uid "BB48011F-486E-0706-A459-AA8110B0E52E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_IK_ankle_CTLShape" -p "B_IK_ankle_CTL";
	rename -uid "6C1B6098-4F18-EB6F-978C-1DAEAE6E5022";
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
	rename -uid "0FF2D210-4728-0E25-D9CD-B9A1095B65C3";
	setAttr ".v" no;
createNode transform -n "B_IK_B_knee_space_GRP" -p "B_IK_ankle_aim_space";
	rename -uid "3EA85900-49F0-F1E1-6AF3-79B36663B2BB";
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
	rename -uid "C9FD908F-45FC-2F44-C088-CC9A2A3DA675";
	setAttr ".s" -type "double3" 1.0000000142892349 1 1.0000000142892347 ;
createNode locator -n "B_IK_B_knee_spaceShape" -p "B_IK_B_knee_space";
	rename -uid "82210C4F-4ED7-5D6A-320A-B3991FEDD551";
	setAttr -k off ".v";
createNode transform -n "B_IK_ball_IKH_offGRP" -p "B_IK_B_knee_space";
	rename -uid "86032F37-4B2D-5B5A-B9AF-7D949C64580F";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".offset" -type "matrix" 2.0870210121026066e-17 -0.65924459372056121 0.75192856419357579 0
		 1.0000000000000002 4.4156655897181045e-17 -7.4874836273669869e-16 0 1.8297713170205599e-17 0.75192856419357568 0.65924459372056132 0
		 -1.7763568394002505e-15 7.196363227546243e-07 4.5919532354332659e-07 1;
createNode transform -n "B_IK_ball_IKH_spcGRP" -p "B_IK_ball_IKH_offGRP";
	rename -uid "26EAF0B9-4228-14C0-F89F-21B5E0A26CFC";
createNode ikHandle -n "ikHandle7" -p "B_IK_ball_IKH_spcGRP";
	rename -uid "C96113C5-466A-5E8F-686C-DAB7AEC96824";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr ".pv" -type "double3" 0.75192856419357579 0 0.65924459372056143 ;
	setAttr ".roc" yes;
createNode transform -n "B_IK_toe_IKH_offGRP" -p "B_IK_B_knee_space";
	rename -uid "05D37F70-43BE-56DA-07C1-3A9DF4CC66FC";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000007 ;
	setAttr ".offset" -type "matrix" 0 -0.43466847330406722 0.90059053865533867 -6.2491021985920551e-18
		 1.0000000000000002 0 0 0 0 0.90059053865533845 0.43466847330406733 -3.0161184196302535e-18
		 -2.3980817331903381e-14 1.5909309636812734 -3.2962516862117681 1;
createNode transform -n "B_IK_toe_IKH_spcGRP" -p "B_IK_toe_IKH_offGRP";
	rename -uid "0B18A8C1-4298-39C9-8AE2-54B05FC0B213";
createNode ikHandle -n "ikHandle8" -p "B_IK_toe_IKH_spcGRP";
	rename -uid "34E9707C-48A1-3D52-D079-5D9448DE174E";
	setAttr ".t" -type "double3" 3.6601003164920733 2.2204460492503131e-14 -4.2955207391059957e-08 ;
	setAttr ".r" -type "double3" 0 -0.00012637648910751947 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".pv" -type "double3" 0.90059053865533767 0 0.43466847330406688 ;
	setAttr ".roc" yes;
createNode transform -n "B_IK_ankle_upVec" -p "B_IK_B_knee_space";
	rename -uid "D1EEAB25-4C07-DD96-7BF0-0E96FD678A3B";
	setAttr ".t" -type "double3" 10.443978572904943 5 4.8194399226982596e-07 ;
	setAttr ".r" -type "double3" 0.25837142167493599 0 90 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode orientConstraint -n "B_IK_ankle_aim_space_orientConstraint1" -p "B_IK_ankle_aim_space";
	rename -uid "982081C9-4299-04A8-707E-788697A2EDB6";
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
	rename -uid "ECF82622-46AD-A07D-3BD5-3F97818060F5";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
createNode aimConstraint -n "B_IK_ankle_IKH_aim_space_01_aimConstraint1" -p "B_IK_ankle_IKH_aim_space_01";
	rename -uid "DCA3BA2D-4D55-8B9C-B81C-7FB6F6E611BF";
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
	rename -uid "544B5751-4C26-D6CF-10A0-E2A7A61B53E4";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
createNode aimConstraint -n "B_IK_ankle_IKH_aim_space_02_aimConstraint1" -p "B_IK_ankle_IKH_aim_space_02";
	rename -uid "43BA4E4E-45C6-8734-8468-C398347E1A12";
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
	rename -uid "E832486B-4F75-3B20-47A3-4FB7387BE34C";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 2.0057809046347685e-05 -2.182291980901141e-05 ;
	setAttr ".r" -type "double3" 0 -64.235799801718599 -90.000000000002515 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "B_IK_hind_toes_CTL_spcGRP" -p "B_IK_hind_toes_CTL_offGRP";
	rename -uid "349CBE11-4F6E-9683-62A3-80B9C5F56F46";
createNode transform -n "B_IK_hind_toes_CTL" -p "B_IK_hind_toes_CTL_spcGRP";
	rename -uid "73BAA4F0-4F36-72D1-5D34-F5854D44B51B";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "B_IK_hind_toes_CTLShape" -p "B_IK_hind_toes_CTL";
	rename -uid "39A49740-4308-DF2C-8BD4-898F1EFE92CC";
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
	rename -uid "43B0A8AE-4C7E-189B-A665-6AB231C0BB96";
	setAttr ".t" -type "double3" 5 -4.4408920985006262e-16 0 ;
createNode transform -n "B_IK_thigh_aim_space" -p "B_IK_foot_CTL";
	rename -uid "ADE03D71-44A4-94FA-FE35-00B66C8AAB5C";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 35.875667492361437 5.9498749290143031 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
createNode nurbsCurve -n "B_IK_foot_CTLShape" -p "B_IK_foot_CTL";
	rename -uid "ADB018B4-43EE-1F59-4800-5AA47064183F";
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
	rename -uid "DDB1AE69-4EB4-A76C-5C91-75B783ACD5B2";
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
	rename -uid "8B248945-4DD3-8FA2-FBBD-44B5CEDF4423";
createNode transform -n "IK_thigh_upVec_02" -p "IK_thigh_upVec_02_spcGRP";
	rename -uid "50AE5908-4ABB-31D1-0FAE-4C988692D883";
	setAttr ".t" -type "double3" -3.5686982231440999e-15 5 -7.0893705690289723e-15 ;
createNode locator -n "IK_thigh_upVec_02Shape" -p "IK_thigh_upVec_02";
	rename -uid "3778D64F-40DD-A832-CE2A-629639782C38";
	setAttr -k off ".v";
createNode transform -n "IK_thigh_upVec_01_offGRP" -p "B_IK_foot_CTL_spcGRP";
	rename -uid "03AA9B82-4B90-596E-5F44-DB940E814ED4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 35.875667492361444 5.9498749290143103 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "IK_thigh_upVec_01_spcGRP" -p "IK_thigh_upVec_01_offGRP";
	rename -uid "0A60F3E6-46CA-C1BB-B0C1-5792F402B289";
	setAttr ".t" -type "double3" 5 0 0 ;
createNode transform -n "IK_thigh_upVec_01" -p "IK_thigh_upVec_01_spcGRP";
	rename -uid "0F229808-4CF4-901D-DC6F-F59CFD3F6061";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
createNode locator -n "IK_thigh_upVec_01Shape" -p "IK_thigh_upVec_01";
	rename -uid "608FD41A-4240-E4F2-F05C-93AF9A85C555";
	setAttr -k off ".v";
createNode transform -n "B_poleVec_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "308F36F7-4571-C4F4-D9B8-C9B3BCA5AD71";
	setAttr ".t" -type "double3" 15.338212747365233 0 2.5982774231251398 ;
	setAttr ".r" -type "double3" 0 21.655069991488329 0 ;
	setAttr ".s" -type "double3" 1.0000000110780887 0.99999999999999967 1.0000000191284719 ;
	setAttr ".sh" -type "double3" 0 6.0830007089158456e-09 0 ;
createNode transform -n "B_poleVec_space_follow" -p "B_poleVec_offGRP";
	rename -uid "14A22109-4DFD-68A6-12E3-869ABBE3588E";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000007 ;
createNode transform -n "B_poleVec_space" -p "B_poleVec_space_follow";
	rename -uid "45611DCB-4FD7-3772-C6A0-E18B29C98F89";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 25 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "B_poleVec_CTL" -p "B_poleVec_space";
	rename -uid "717928DA-4455-6C5B-4A0D-ACB68B904D2F";
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
	rename -uid "0B8C4EA1-441A-2B08-168B-918C1DB8938F";
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
	rename -uid "5583A6BD-424B-19AC-5F24-4A8FBBEDD6F9";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode aimConstraint -n "B_poleVec_input_space_aimConstraint1" -p "B_poleVec_input_space";
	rename -uid "517EB433-4129-746D-6108-FAB9E60F3DD0";
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
	rename -uid "384EEB78-49CB-1E22-8416-DDA0CA465591";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".offset" -type "matrix" 0 -0.85473395170597644 -0.51906633848738626 0 0.99999999999999956 0 0 0
		 0 -0.51906634786541628 0.8547339554294312 0 2.0713150501251207 -18.138265332938907 -3.808582736261183 1;
createNode transform -n "FK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "370333B1-4028-E5CF-6326-90941D192161";
createNode transform -n "FK_hip_offGRP" -p "FK_leg_CTL_GRP";
	rename -uid "6EB45BE0-4690-1C30-F836-0F8C2827D43A";
createNode transform -n "FK_hip_space" -p "FK_hip_offGRP";
	rename -uid "4D9E3429-40FB-C262-03C0-0CA8849091FD";
createNode transform -n "FK_hip_space_ivsScale" -p "FK_hip_space";
	rename -uid "8ACC7609-4743-B24E-FA03-23A4D4E078AF";
createNode transform -n "FK_thigh_CTL_offGRP" -p "FK_hip_space_ivsScale";
	rename -uid "C6C6B08F-4F30-F17F-AF6A-56AF45A3C4D1";
createNode transform -n "FK_thigh_CTL_spcGRP" -p "FK_thigh_CTL_offGRP";
	rename -uid "9F78EC1A-4718-9793-1BE3-4F844E4764B8";
createNode transform -n "FK_thigh_CTL" -p "FK_thigh_CTL_spcGRP";
	rename -uid "12EB4C74-490F-B94D-942B-A18C95B6506D";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_thigh_CTLShape" -p "FK_thigh_CTL";
	rename -uid "977442AA-46B9-749F-E9F4-7DB1D0D73667";
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
	rename -uid "61B1FF2C-4F81-889C-08E7-A2A03F855457";
createNode transform -n "FK_F_knee_CTL_offGRP" -p "FK_thigh_CTL_ivsScale";
	rename -uid "F949FCA6-4D46-5A9E-6A3C-3EA80E47F2E9";
createNode transform -n "FK_F_knee_CTL_spcGRP" -p "FK_F_knee_CTL_offGRP";
	rename -uid "B15EE847-4ABC-6D79-AF53-B58624B87B5B";
createNode transform -n "FK_F_knee_CTL" -p "FK_F_knee_CTL_spcGRP";
	rename -uid "58EFB7D9-4D48-7EFF-7907-B4A3E18A01E9";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "FK_F_knee_CTLShape" -p "FK_F_knee_CTL";
	rename -uid "097A5AFE-4454-9376-BC6E-24AF5A2B1A10";
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
	rename -uid "F3B86A18-496C-682A-36EF-6A92DAD34389";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_B_knee_CTL_offGRP" -p "FK_F_knee_CTL_ivsScale";
	rename -uid "9F06BE94-4001-9957-FE27-329B59C04B28";
createNode transform -n "FK_B_knee_CTL_spcGRP" -p "FK_B_knee_CTL_offGRP";
	rename -uid "0BD68948-4FC9-064B-475A-3193EC396704";
createNode transform -n "FK_B_knee_CTL" -p "FK_B_knee_CTL_spcGRP";
	rename -uid "24E2951B-41B9-105B-1391-A19CA1FEAB42";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_knee_CTLShape" -p "FK_B_knee_CTL";
	rename -uid "E804BC75-4DEA-D670-3AD0-7E8CBFC8BA45";
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
	rename -uid "E6935C8B-4261-0817-2DF5-EC90208DFE2D";
createNode transform -n "FK_ankle_CTL_offGRP" -p "FK_B_knee_CTL_ivsScale";
	rename -uid "3DB6114A-453A-C1DE-8EED-38997A6120EF";
createNode transform -n "FK_ankle_CTL_spcGRP" -p "FK_ankle_CTL_offGRP";
	rename -uid "624AE657-4433-1908-9CB0-36A77C8109D4";
createNode transform -n "FK_ankle_CTL" -p "FK_ankle_CTL_spcGRP";
	rename -uid "F70EA081-431F-F721-549F-C4B0257EB981";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_ankle_CTLShape" -p "FK_ankle_CTL";
	rename -uid "00D62DCF-4D98-0EE7-1A0B-9684F12CC7DE";
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
	rename -uid "A2BF9222-4147-F6A2-0955-1798832B00E5";
createNode transform -n "FK_hind_toe_CTL_offGRP" -p "FK_ankle_CTL_ivsScale";
	rename -uid "D367A3D6-4445-0E14-5195-BEA0A6BEC168";
createNode transform -n "FK_hind_toe_CTL_spcGRP" -p "FK_hind_toe_CTL_offGRP";
	rename -uid "11E2007E-4537-E96D-9A0F-F488B5FA91A5";
createNode transform -n "FK_hind_toe_CTL" -p "FK_hind_toe_CTL_spcGRP";
	rename -uid "EDAFCC34-4F62-7E0A-C1E1-E7AAB3ACAF81";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_hind_toe_CTLShape" -p "FK_hind_toe_CTL";
	rename -uid "5F98A984-4180-4907-75B4-82BEB79DD128";
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
	rename -uid "9C57B294-4DC4-ED94-A79C-109B31AC21FB";
createNode transform -n "leg_switch_CTL_spcGRP" -p "leg_switch_CTL_offGRP";
	rename -uid "645F715A-4043-8210-ED3C-A9A71EC1A190";
createNode transform -n "leg_switch_CTL" -p "leg_switch_CTL_spcGRP";
	rename -uid "D04F6EB0-4E76-2202-86DF-ADB1055E063B";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "leg_switch_CTLShape" -p "leg_switch_CTL";
	rename -uid "26D2184E-42C3-62D3-1312-3C94A2079699";
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
	rename -uid "984EFC22-4C4E-2C34-F752-D0B0ED67DBE0";
createNode joint -n "hip" -p "leg_output";
	rename -uid "072EFAFD-4531-F9E0-0C75-098ECA32D3C5";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "thigh" -p "hip";
	rename -uid "6F4A20B6-4FF9-8667-E601-ABA32B91D9F3";
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
	rename -uid "0556DD59-478B-CDFD-2904-7EA30F10F3CA";
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
	rename -uid "6A4D84AC-4B39-9412-DCDA-42B20BBCE293";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "ankle" -p "B_knee";
	rename -uid "DDB704BB-41FE-8DFB-ECB6-07978DF9108E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_toe" -p "ankle";
	rename -uid "D69847F7-4EBF-E721-4522-3E9970B944D6";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_tiptoe" -p "hind_toe";
	rename -uid "B2A92788-4703-6F24-E86C-28BF5229D7F3";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "2DBB4651-4757-A779-4D6F-2AAA789C17E8";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "6A00DC41-4B6E-F658-E3E8-05BB0EB78588";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "25BA11AF-4714-21B7-0DD2-FF8830D30E3A";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "8E8AE3A7-46E0-D740-2E5D-46A800E0A11A";
createNode plusMinusAverage -n "softupperLegLen";
	rename -uid "1715006C-4E91-A3A9-12D3-3BA7CBB30264";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uplegLen";
	rename -uid "8F49DE65-4761-039E-E4E3-3690153073BA";
createNode multMatrix -n "input_thigh_local_MTMX";
	rename -uid "487345C6-4555-D21C-5BFC-84852C49F7FB";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_knee_local_MTMX";
	rename -uid "6A9C0529-44A8-E706-8B9F-609455402D90";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midlegLen";
	rename -uid "2CF4F387-405B-D45C-E924-D8A31685C969";
createNode multMatrix -n "input_ankle_local_MTMX";
	rename -uid "95C3A0BD-44F5-8A2F-0E2B-7A87F2491C0D";
	setAttr -s 2 ".i";
createNode distanceBetween -n "leg_ctrlLen";
	rename -uid "9156E4DF-4B1F-C4F1-42ED-4FBE29EA49EC";
createNode multMatrix -n "B_knee_space_local_MTMX";
	rename -uid "E610DA14-4F88-A39D-90B0-5A85E3FC3B59";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_thigh_local_dist_MTMX";
	rename -uid "845E907E-42F6-B31B-FEAC-2D87B6F80609";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "leg_IK_negate_val";
	rename -uid "DCEB38E1-4E88-5304-2C9B-0285D2843BD5";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "softlowerLegLen";
	rename -uid "2CCE5FBD-43CA-DB85-91E7-89BD91D95DFD";
	setAttr -s 3 ".i1[0:2]"  0 11.55338001 10.44397831;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loLegLen";
	rename -uid "7842BA62-4DF5-15EC-060F-43821ACA1935";
createNode multMatrix -n "input_B_toe_local_MTMX";
	rename -uid "1ECC478E-43E0-148A-07AF-358BD71D41C9";
	setAttr -s 2 ".i";
createNode distanceBetween -n "B_toe_ctrlLen";
	rename -uid "80953EF1-4530-4ED0-6D6F-FA977537758A";
createNode multMatrix -n "multMatrix5";
	rename -uid "51EBDB11-44A7-FF75-2CEC-AA961DE4821C";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "2F63973D-4BB4-9C82-E4D5-A1BC4007B2EA";
	setAttr -s 2 ".i";
createNode condition -n "upperLeg_ctrllen_COND";
	rename -uid "0C619E4F-47AC-3B9C-BC49-CDAAE718605F";
	setAttr ".op" 2;
createNode condition -n "upperLeg_softikV_COND";
	rename -uid "5EA742BB-4010-4F13-2FDA-9E98CDAD3996";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_result_softik_len";
	rename -uid "9036EC47-4F09-1863-3440-CFBEC7DF3503";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "upperLeg_mult_softikV";
	rename -uid "85F517B8-4FAE-5650-BA48-ECB19CF9B7A7";
createNode multiplyDivide -n "upperLeg_power_val";
	rename -uid "AC3E4764-4268-CEAB-CB6B-C483E3843067";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "upperLeg_negate_val";
	rename -uid "F2FA66C1-4523-9CDA-F9BE-E9BAC780433A";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "upperLeg_divide_softikV";
	rename -uid "2810E97D-482F-7C0E-6B11-C095FA1AAA39";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_ctrlLen_minue_dif";
	rename -uid "CD0FE469-4F34-74DF-601C-0F94FD640C63";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "upperLeglen_minus_softikV";
	rename -uid "C2B6BF42-4FFF-BB34-6913-88A913637CE5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "leg_for_zerodivide_COND";
	rename -uid "AABF41E8-4B7D-A35B-2586-36B3F5115B43";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "lowerLeg_ctrllen_COND";
	rename -uid "3A9CE673-4F8E-9BFC-0535-04A3AD5C4B07";
	setAttr ".op" 2;
createNode condition -n "lowerLeg_softikV_COND";
	rename -uid "367BEB4C-4D59-F1C7-7008-F1BF3839E8E2";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_result_softik_len";
	rename -uid "C075DA2B-4062-543D-B270-FE99AB7CCC3D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_mult_softikV";
	rename -uid "3A8E116A-4B86-D1DC-ED1A-EFB40DBFD693";
createNode multiplyDivide -n "lowerLeg_power_val";
	rename -uid "C30EB592-48CF-38DC-06D9-3287A06069BC";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "lowerLeg_negate_val";
	rename -uid "9D874FF0-4AFC-E671-18D0-BFB5B886ABC6";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lowerLeg_divide_softikV";
	rename -uid "2E266D39-4532-DBCE-7D69-2688F73B4E77";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_ctrlLen_minue_dif";
	rename -uid "637875F0-4604-0505-C61C-B78B776AE767";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "lowerLeglen_minus_softikV";
	rename -uid "C67828CF-43D3-F4E8-BC86-6F83C6B082BE";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loleg_plus_stretch";
	rename -uid "C8B0393B-4595-32DA-A9FD-F39753579B34";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loleg";
	rename -uid "FF38EC33-4509-A9C7-CCDA-E79C439C5154";
createNode multiplyDivide -n "stretched_lolegLen";
	rename -uid "E0993BF0-417A-95C5-D944-5092FEB047C3";
createNode plusMinusAverage -n "upperLeg_stretchedLen";
	rename -uid "C2128223-42D0-DDDA-A9BD-1FAF34C1466D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loleg_ratio";
	rename -uid "5E56AEDF-46A5-296E-B0AE-8B87C1DB626C";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_legLen";
	rename -uid "9FCA6295-43C8-8655-D284-6C823567430A";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upleg_plus_stretch";
	rename -uid "ACBD9C20-412D-07AC-1410-DFAF42A3961D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upleg";
	rename -uid "594E21A0-44B9-1632-AC6A-2881CD0FAE8D";
createNode multiplyDivide -n "stretched_uplegLen";
	rename -uid "7051B6A3-40B2-5ED2-1302-1E8F97603C1D";
createNode multiplyDivide -n "upleg_ratio";
	rename -uid "3650A4E1-434E-0E95-0EE4-A4991FC7175E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_plus_stretch";
	rename -uid "A847CE58-447F-4475-B97C-C990ACE7725E";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_lowerLeg";
	rename -uid "97FF1C82-4F78-E25D-D45F-1C9C5382614C";
createNode multiplyDivide -n "stretched_lowerLegLen";
	rename -uid "E952C2A4-41D8-E598-F6A0-12A2E7C741F6";
createNode plusMinusAverage -n "lowerLeg_stretchedLen";
	rename -uid "B75B2C5C-4C37-7CEB-2B9E-F395269C845D";
	setAttr ".op" 2;
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_ratio";
	rename -uid "0AEBCFBC-4A57-58ED-2357-61B360081F4F";
	setAttr ".op" 2;
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "82E00D37-4A72-2169-C13C-8686122D5905";
createNode multMatrix -n "multMatrix7";
	rename -uid "995C3DEF-4E1D-5D80-E272-379C37B7B3EB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "9B7471A5-492D-EEFE-649E-DCA5A0CF2293";
createNode multMatrix -n "multMatrix8";
	rename -uid "99EA14F4-444E-3F48-0A14-47853A3EFBAA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_B_knee_local_DCMX";
	rename -uid "DAE416FD-4C03-0BDE-A593-78A559390F0F";
createNode decomposeMatrix -n "IK_ankle_local_DCMX";
	rename -uid "91B3492A-4994-D80C-B42A-928EE0559F46";
createNode decomposeMatrix -n "IK_hind_toe_local_DCMX";
	rename -uid "082630B2-4518-F877-ECF8-64A2E812439B";
createNode decomposeMatrix -n "B_IK_foot_IKH_offGRP_local_DCMX";
	rename -uid "18241BE7-40C9-ABB8-FA6F-ABB34B837177";
createNode multMatrix -n "B_IK_foot_IKH_offGRP_local_MTMX";
	rename -uid "F66BD7BB-423C-64AA-8605-289F3C417720";
	setAttr -s 2 ".i";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "EB8734C7-40BD-461F-4769-D2AF3B56B0CD";
createNode decomposeMatrix -n "B_IK_ankle_IKH_offGRP_local_DCMX";
	rename -uid "68DA152F-4E1D-5FA1-D0B3-0C988E3A89E8";
createNode multMatrix -n "B_IK_ankle_IKH_offGRP_local_MTMX";
	rename -uid "F85FBADA-457D-6160-AB20-E9B68D33A2C1";
	setAttr -s 2 ".i";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "59F4B10D-497B-DE1A-AE32-A892A74A5915";
createNode decomposeMatrix -n "input_F_knee_upVec_space_local_DCMX";
	rename -uid "AA678FF9-4320-B29B-2004-5C905F1D7B1F";
createNode multMatrix -n "input_F_knee_upVec_space_local_MTMX";
	rename -uid "0193AAD3-439A-039E-E96C-1AA8AB43DAA5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_thigh_local_DCMX";
	rename -uid "233335F2-45F9-8F73-831C-B8B1DA6E3B29";
createNode multMatrix -n "FK_thigh_local_MTMX";
	rename -uid "626289BC-420A-864D-2A98-E2BFC3501BF0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_knee_local_DCMX";
	rename -uid "A86B260E-47FA-01B2-8EB4-BF861A86FF66";
createNode multMatrix -n "FK_F_knee_local_MTMX";
	rename -uid "C7DE413D-447B-2A7C-B2EA-8BAB4F5CD872";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_knee_local_DCMX";
	rename -uid "F7C237DF-47E8-83FA-14A1-9A8AAB5E80A7";
createNode multMatrix -n "FK_B_knee_local_MTMX";
	rename -uid "716D38E8-4304-1A64-4248-5AA44C3FBBF9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_ankle_local_DCMX";
	rename -uid "3750C8E2-4540-E14E-501F-F390856DE74C";
createNode multMatrix -n "FK_ankle_local_MTMX";
	rename -uid "6C37B86E-4A88-C6AE-DA4E-A497E50D56E4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_hind_toe_local_DCMX";
	rename -uid "101815AA-4C08-88E9-038F-4A98BAC7686A";
createNode multMatrix -n "FK_hind_toe_local_MTMX";
	rename -uid "D22C346A-4850-8D9D-71F4-20987701AD6F";
	setAttr -s 2 ".i";
createNode condition -n "leg_mirror_scale_COND";
	rename -uid "6164CF7A-4117-58A2-0223-018A40310BB6";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 1 1 -1 ;
createNode decomposeMatrix -n "hip_L_CTL_inverse_DCMX";
	rename -uid "6F5BB070-45D3-6B7C-3491-329F7ADC1102";
createNode decomposeMatrix -n "B_input_ankle_space_local_DCMX";
	rename -uid "6822CD84-434D-4E51-15C9-64A0DE7C6DF3";
createNode multMatrix -n "B_input_ankle_space_local_MTMX";
	rename -uid "B78A0E3C-45F9-4D1A-3BF1-5DA05642D653";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion19";
	rename -uid "A32C9E92-4ECD-86C0-F2A6-7AB2BC2AFDEF";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "leg_mirror_rotate_COND";
	rename -uid "D64270C4-4467-F1D4-C015-01A490F0A44E";
	setAttr ".cf" -type "float3" 0 -180 0 ;
createNode unitConversion -n "unitConversion9";
	rename -uid "976272F3-47EB-F3AA-26E5-67B85556251E";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition1";
	rename -uid "B7CB69F8-41C4-6CFD-1E89-D6A8163525A7";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion12";
	rename -uid "DD025861-4D25-E60C-4A0A-F09CDAAF8ADB";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition1";
	rename -uid "85561092-40DA-A7C4-A913-148D0205F45A";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition1";
	rename -uid "DAE5C337-4F1A-F618-F27B-8B829D8F8984";
createNode unitConversion -n "unitConversion11";
	rename -uid "4F0FE9DD-4BFA-AAC8-8957-608F4E84C2E6";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition1";
	rename -uid "B76AA817-495D-BEFF-A8F1-BBB0D2DDF3A5";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage2";
	rename -uid "5ED0390C-4C0E-D480-D188-C3A8B004E583";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_toe_local_DCMX";
	rename -uid "5AA5550D-49D1-3564-DE99-3BBF8EC0EC75";
createNode multMatrix -n "B_toe_local_MTMX";
	rename -uid "7CC463D6-4B83-FA6C-9F75-D4BAC42BA532";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion10";
	rename -uid "D635B298-47F0-F226-EA92-EBB8319968A1";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon1";
	rename -uid "BE59D80B-4B63-A76C-9473-15A4E9D420B3";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition1";
	rename -uid "4D2295DE-4B8F-F535-E9B6-28906E401022";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball1";
	rename -uid "71D85251-4E5C-3182-1BDE-4FB0DEBD007D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap1";
	rename -uid "85DF8460-4E40-BA0C-04EC-99A26BBBD562";
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
	rename -uid "6CD90458-462D-A35B-9C77-9DABEE905E60";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_ball_local_DCMX";
	rename -uid "2A216C6B-41F1-2B07-99AD-84B61AAC602C";
createNode multMatrix -n "B_ball_local_MTMX";
	rename -uid "0500EA0F-4E18-B821-8023-2BB7ED45F783";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_ankle_local_DCMX";
	rename -uid "96A57F9D-4E33-2164-0DBF-5999661A1059";
createNode multMatrix -n "B_ankle_local_MTMX";
	rename -uid "4D2B39C7-4D48-7D87-95E4-3994EE281DC9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_knee_space_GRP_local_DCMX";
	rename -uid "05D6FE6C-4270-75D1-32CB-2896C771B569";
createNode multMatrix -n "B_knee_space_GRP_local_MTMX";
	rename -uid "465CBFDA-4C98-A8A7-A79E-35968DD7F0A1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_IK_ball2B_IK_ball_IKH_offGRP_DCMX";
	rename -uid "9B823749-43D6-F39D-1744-849DC160D3D8";
createNode multMatrix -n "B_IK_ball2B_IK_ball_IKH_offGRP_MTMX";
	rename -uid "89A8B06E-4277-EE10-FC01-EFA1008572F5";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "B_IK_toe2B_IK_toe_IKH_offGRP_DCMX";
	rename -uid "B4354BF8-4E37-61C0-9D3B-5F8F3A2123C1";
createNode multMatrix -n "B_IK_toe2B_IK_toe_IKH_offGRP_MTMX";
	rename -uid "8EC3F59A-44B6-2F76-16B9-5CA65B91A22F";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion13";
	rename -uid "CF6912B6-47FB-8935-6A43-75B7DF96CEAF";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS1";
	rename -uid "3E575391-42C0-9928-D31B-F69FCCE38651";
createNode decomposeMatrix -n "IK_thigh_upVec_02_offGRP_local_DCMX";
	rename -uid "AC99F141-43A5-9119-5C51-E8B367C6C8D7";
createNode multMatrix -n "IK_thigh_upVec_02_offGRP_local_MTMX";
	rename -uid "F007C28D-42A9-B7FF-B001-8AB9A34EC520";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion18";
	rename -uid "C2F33576-417B-2403-32A5-B6A3734E5B0A";
	setAttr ".cf" 57.295779513082323;
createNode pairBlend -n "B_poleVec_follow_PRBL";
	rename -uid "D8C41EB9-454B-E3B8-6619-5B92D0B0726C";
createNode unitConversion -n "unitConversion14";
	rename -uid "44DE0BEC-4B4D-4A6B-C14D-7CAD898B5284";
	setAttr ".cf" 0.1;
createNode decomposeMatrix -n "B_poleVec_input_space_local_DCMX";
	rename -uid "3DECDB56-4CAC-B448-22AB-D88367F86186";
createNode multMatrix -n "B_poleVec_input_space_local_MTMX";
	rename -uid "72E9EA68-4643-E6D9-313E-BFAF8C766F07";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_hip_aim_space2B_poleVec_aim_space_DCMX";
	rename -uid "AD07FC10-4B64-5752-096F-338D6065D06F";
createNode multMatrix -n "IK_hip_aim_space2B_poleVec_aim_space_MTMX";
	rename -uid "2489FCD2-4B1A-E02C-2524-2BA43D8085D5";
	setAttr -s 3 ".i";
createNode reverse -n "FK_IK_RVS";
	rename -uid "27056F6F-4A0A-7C97-FC23-20820923EAD7";
createNode decomposeMatrix -n "FK_hip_space_inverse_DCMX";
	rename -uid "3966911E-4A2E-AD77-68D5-2985BE8A418F";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "3AA5340F-4383-5E82-2A5A-6F82EFE3EA01";
createNode decomposeMatrix -n "FK_thigh_CTL_inverse_DCMX";
	rename -uid "C002DC48-489F-68D8-69A4-E7BA32C1509E";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "DC29D4D0-4A46-C739-E8AA-558938B71694";
createNode decomposeMatrix -n "FK_F_knee_CTL_inverse_DCMX";
	rename -uid "11E1794E-4B4A-4E70-3869-BBBE9E9CE8FA";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "470B74F3-4303-0A2A-BE20-A085327A9E14";
createNode decomposeMatrix -n "FK_B_knee_CTL_inverse_DCMX";
	rename -uid "9D1F0AEA-4CC2-7D67-DE73-8CAB3E0DED5C";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "239157F0-4A67-BCB7-8981-B39CDD38494F";
createNode decomposeMatrix -n "FK_ankle_CTL_inverse_DCMX";
	rename -uid "2C8C7200-4622-4BC1-29D3-E48B2CB1FC48";
createNode decomposeMatrix -n "leg_switch_CTL_DCMX";
	rename -uid "FE4A5786-4E35-ECF0-177C-2C956D6DD3D3";
createNode multMatrix -n "leg_switch_CTL_MTMX";
	rename -uid "DF7802FF-4435-631A-CE87-23B01A7D019D";
	setAttr -s 2 ".i";
createNode choice -n "leg_switch_CTL_CHOI";
	rename -uid "E1E911AF-40E2-B150-93BF-568F9AC04787";
	setAttr -s 2 ".i";
createNode pairBlend -n "hip_PRBL";
	rename -uid "4FD2DC19-4E98-E2B8-99E2-2C9828AFA4CF";
createNode blendColors -n "hip_BLCL";
	rename -uid "1813D44F-4DC8-4D27-3B5E-13951D566C25";
createNode pairBlend -n "thigh_PRBL";
	rename -uid "13E46A67-4160-8E4E-9CC8-EC997EDB37AE";
createNode blendColors -n "thigh_BLCL";
	rename -uid "4C4D4E65-4C62-A1EB-72BF-98B65D93410F";
createNode pairBlend -n "F_knee_PRBL";
	rename -uid "A6795E05-4E9F-74A5-D74F-FAAEA2A21A44";
createNode blendColors -n "F_knee_BLCL";
	rename -uid "CA1AB09F-449D-DACE-F64C-1DBDBADAD015";
createNode pairBlend -n "B_knee_PRBL";
	rename -uid "A3D0B70E-4AA4-5D10-F11E-5FAA9B5B9EFC";
createNode blendColors -n "B_knee_BLCL";
	rename -uid "F247A95A-4B16-13B2-B48C-00BFE45F45A8";
createNode pairBlend -n "ankle_PRBL";
	rename -uid "8BC9E747-44B1-FFE3-7E86-9FB6AB6C7DD5";
createNode blendColors -n "ankle_BLCL";
	rename -uid "C1D016E3-479E-1C73-F7F8-44B367F37785";
createNode pairBlend -n "hind_toe_PRBL";
	rename -uid "00DA598A-46DD-BC5D-34F5-9FBE07B4C455";
createNode blendColors -n "hind_toe_BLCL";
	rename -uid "A82B92F9-4059-FBEB-3473-80B05AA1B2C5";
createNode pairBlend -n "hind_tiptoe_PRBL";
	rename -uid "12688905-43B7-C3B3-31D9-79B7D410CAFE";
createNode blendColors -n "hind_tiptoe_BLCL";
	rename -uid "8F935413-4C97-0D8D-045D-3A8065422E1C";
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
	setAttr -s 75 ".u";
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
	setAttr -s 2 ".sol";
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
// End of Qleg.ma
