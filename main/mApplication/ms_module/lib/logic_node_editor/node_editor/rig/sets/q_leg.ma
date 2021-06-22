//Maya ASCII 2019 scene
//Name: q_leg.ma
//Last modified: Tue, Jun 22, 2021 06:09:54 PM
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
	rename -uid "253E077E-406F-6E16-145C-A49AC1542D00";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 8 ".init";
	setAttr -k on ".prefixType";
createNode transform -n "leg_motion_GRP" -p "leg_GRP";
	rename -uid "29366BD6-4636-6C26-59CE-F68786CC40EF";
createNode transform -n "input_hip" -p "leg_motion_GRP";
	rename -uid "B2F53BCB-4B7B-CDA4-5EF5-00BC9191047E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode transform -n "input_thigh" -p "input_hip";
	rename -uid "0B60EED9-4AD6-85A7-2097-14AC5B380407";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 2.0713150501251221 -2.5815366105945259 -3.808582305908196 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "input_F_knee" -p "input_thigh";
	rename -uid "20EE0287-4B07-952F-B814-FFAF05A4F645";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 15.556728957302013 0 -4.3035299768234836e-07 ;
	setAttr ".r" -type "double3" 0 31.269644285477174 0 ;
	setAttr ".s" -type "double3" 1.0000000519103551 1 1.0000000519103551 ;
createNode transform -n "input_B_knee" -p "input_F_knee";
	rename -uid "79B9D85D-4C40-DC40-8475-5DBC9604447A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 11.553380621947188 -8.8817841970012523e-16 2.5981660556340103e-07 ;
	setAttr ".r" -type "double3" 0 -31.528015707152111 0 ;
	setAttr ".s" -type "double3" 0.99999994890369348 1 0.99999994890369348 ;
createNode transform -n "input_ankle" -p "input_B_knee";
	rename -uid "943D505D-4035-DD7C-F468-76A3C322EC95";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 10.443978722141399 1.7763568394002505e-15 4.8194399582257574e-07 ;
	setAttr ".r" -type "double3" 0 -48.499341944216738 0 ;
	setAttr ".s" -type "double3" 1 1.0000000142892349 1.0000000142892349 ;
createNode transform -n "input_hind_toe" -p "input_ankle";
	rename -uid "F2FBAD7B-4565-C840-8C65-B7B4DA5B62D5";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 1.2635080671143939 -1.7763568394002505e-15 2.0951314638750773e-07 ;
	setAttr ".r" -type "double3" 6.1621949141614935e-09 -15.478212812316018 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "input_hind_tiptoe" -p "input_hind_toe";
	rename -uid "A018F358-465C-7ACA-4C53-BBB518B2833E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 3.6600722913155082 -8.8817841970012523e-16 -1.9375632120954833e-07 ;
	setAttr ".r" -type "double3" 64.235926178207706 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "motion_IK_leg_GRP" -p "leg_motion_GRP";
	rename -uid "66DD52FC-4390-4DBC-DFC7-239CB71E9706";
createNode transform -n "IK_thigh_space" -p "motion_IK_leg_GRP";
	rename -uid "8486DEF8-446D-A15E-19DD-B4AAE3DE2BBC";
	setAttr ".v" no;
createNode locator -n "IK_thigh_spaceShape" -p "IK_thigh_space";
	rename -uid "FBA6292C-4A9B-CCD7-328B-69AE3404254F";
	setAttr -k off ".v";
createNode transform -n "IK_upperLeg_CTLaim" -p "IK_thigh_space";
	rename -uid "A62DA810-4CB9-FE0E-62AF-EC83ADBC765F";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "IK_upperLeg_CTLaimShape" -p "IK_upperLeg_CTLaim";
	rename -uid "58A70BCF-4351-6608-839C-F0967282AC9E";
	setAttr -k off ".v";
createNode transform -n "upperLeg_softIK_output_LOC" -p "IK_upperLeg_CTLaim";
	rename -uid "EB6BF26B-41A5-4DB6-E275-7F86F133787B";
	setAttr ".t" -type "double3" 26.129291534423828 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_softIK_output_LOCShape" -p "upperLeg_softIK_output_LOC";
	rename -uid "300931D6-4E38-E9A6-D77E-5FADD0307B00";
	setAttr -k off ".v";
createNode transform -n "upperLeg_stretch_output_LOC" -p "upperLeg_softIK_output_LOC";
	rename -uid "B6FBD0A5-4C13-41B0-E992-FB8F7506E2D9";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_stretch_output_LOCShape" -p "upperLeg_stretch_output_LOC";
	rename -uid "FF1148B9-4AA3-CE50-FD6C-1CB0C650F144";
	setAttr -k off ".v";
createNode transform -n "B_ankle_space_GRP" -p "upperLeg_stretch_output_LOC";
	rename -uid "06E093A7-4145-84D0-05B3-A3A9FB766E54";
	setAttr ".t" -type "double3" 1.0589691576967653e-06 2.6645352591003757e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 -13.526681204479067 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "B_ankle_space" -p "B_ankle_space_GRP";
	rename -uid "D907F829-4D72-06EE-EF29-68B327FD8389";
createNode ikHandle -n "ikHandle9" -p "B_ankle_space";
	rename -uid "031F42D3-41FD-B57D-16B6-0BA8DB36EEB6";
	setAttr ".t" -type "double3" -6.9139960423569846e-07 0 3.3208003102913608e-07 ;
	setAttr ".r" -type "double3" 0.25837142167494115 0 90 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000151032806 1.0000000151032806 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle9_poleVectorConstraint1" -p "ikHandle9";
	rename -uid "DBC0EECC-4408-4770-6994-C7BD9B7F5080";
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
	rename -uid "963C5A37-495A-2426-4635-DEBADBDDCF1A";
	setAttr ".s" -type "double3" 1.0000000008140462 1 1.0000000008140462 ;
	setAttr ".sh" -type "double3" 0 -9.8073115450991193e-09 0 ;
createNode locator -n "IK_knee_spaceShape" -p "IK_knee_space";
	rename -uid "1717217B-49AE-EA88-AB35-5BAD789D0803";
	setAttr -k off ".v";
createNode transform -n "IK_lowerLeg_CTLaim" -p "IK_knee_space";
	rename -uid "E151BCA7-4558-9FFD-CE01-929FDF0E521A";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "IK_lowerLeg_CTLaimShape" -p "IK_lowerLeg_CTLaim";
	rename -uid "0902BDD6-4135-A45D-92CB-7E88DC896EE1";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_softIK_output_LOC" -p "IK_lowerLeg_CTLaim";
	rename -uid "3F19DFFB-41E7-AD7E-D894-9C8F451428C1";
	setAttr ".t" -type "double3" 10.443978309631348 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_softIK_output_LOCShape" -p "lowerLeg_softIK_output_LOC";
	rename -uid "18846EB1-4ACB-99ED-D2B0-71ABEE5DC275";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_stretch_output_LOC" -p "lowerLeg_softIK_output_LOC";
	rename -uid "91271583-43F5-C44D-C536-FE8891F4D728";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_stretch_output_LOCShape" -p "lowerLeg_stretch_output_LOC";
	rename -uid "F8B6F0BF-4094-7A91-3360-3885E7AD1A1B";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle6" -p "lowerLeg_stretch_output_LOC";
	rename -uid "23B9A201-4C97-45D0-8141-0597F079C49C";
	setAttr ".t" -type "double3" 1.0098834462013428e-06 -8.8817841970012523e-16 3.3508985808339276e-08 ;
	setAttr ".s" -type "double3" 1.000000016519516 1 1.0000000120589532 ;
	setAttr ".sh" -type "double3" 0 8.734228007183687e-09 0 ;
	setAttr ".pv" -type "double3" 0.0045094303984040763 5.5511151231257827e-17 0.99998984456560447 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "IK_lowerLeg_CTLaim_aimConstraint1" -p "IK_lowerLeg_CTLaim";
	rename -uid "A2593B95-4EC4-C5BB-8A3E-4CBAC342D5B1";
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
	rename -uid "D0AFE870-443B-F13C-3E84-8C808288AFBE";
	setAttr ".t" -type "double3" -1.6695378642591435e-15 1 8.3968127717560347e-15 ;
createNode locator -n "IK_knee_space_upVecShape" -p "IK_knee_space_upVec";
	rename -uid "B12EE9FE-4AAD-D432-8926-CF82A6401AB4";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upperLeg_CTLaim_aimConstraint1" -p "IK_upperLeg_CTLaim";
	rename -uid "DB3A40CF-4975-EE8E-51DA-059298AA3EDE";
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
	rename -uid "CA362860-4D2E-916E-167D-F6B8D2450002";
	setAttr ".t" -type "double3" 6.2325491732529114e-15 1 -6.0636337963556973e-15 ;
createNode locator -n "IK_thigh_space_upVecShape" -p "IK_thigh_space_upVec";
	rename -uid "BF7935CC-42B5-37A8-0CBF-4DAA3BAD430D";
	setAttr -k off ".v";
createNode transform -n "leg_softIK_input" -p "motion_IK_leg_GRP";
	rename -uid "776B2FA5-4EEC-55CA-7772-C58528B18ECB";
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
	rename -uid "7A567826-4286-DCC1-0BF8-179F24BDDCC1";
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
	rename -uid "23A0F9D2-4BBF-3F36-1BEA-A480CFBB954E";
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
	rename -uid "73911768-4698-D20F-DDFF-DEA8931D3EF8";
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
	rename -uid "86078638-4979-282F-84C8-61BDC562B8A5";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_thigh" -p "IK_hip";
	rename -uid "E48B5D92-4218-B02E-19EF-20B3136607F2";
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
	rename -uid "A4CAD87A-4198-BE4D-B124-19A628906010";
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
	rename -uid "FC704F4C-468C-7DEE-51CB-A18FE59A3DC3";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_ankle" -p "IK_B_knee";
	rename -uid "AD4F633C-4AF7-8CC8-4F42-7E9348403B94";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -2.5444437451707787e-14 3.5772149371036417e-29 -4.2191611492772445e-21 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_toe" -p "IK_ankle";
	rename -uid "B1D11733-4D27-6F11-5CD0-91A888F7CF19";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_hind_tiptoe" -p "IK_hind_toe";
	rename -uid "3C053CE5-4BDB-4D9A-160A-649847252975";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999999258654459 0.99999999290083708 0.99999998828870273 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector8" -p "IK_hind_toe";
	rename -uid "A36E93DA-4ED1-2F1B-EE17-7B8F6790C177";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "IK_ankle";
	rename -uid "1D78DD02-457B-8635-4F4C-269174CE85B9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector6" -p "IK_B_knee";
	rename -uid "C2BFF670-471E-4519-0C47-31B0BED93943";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector9" -p "IK_F_knee";
	rename -uid "40C2CAFB-47CB-3720-B9AD-3797E38514F5";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation2" -p "IK_F_knee";
	rename -uid "415200BF-4CC9-7B66-3A50-CEBB9C344204";
	setAttr ".r" -type "double3" -31.269644285477167 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000131119584 1.0000000131119584 ;
createNode annotationShape -n "annotationShape2" -p "annotation2";
	rename -uid "BC3BBA09-41CC-456F-8D2A-678C586E3FEB";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode transform -n "IK_hip_aim_space" -p "motion_IK_leg_GRP";
	rename -uid "0E017D16-4D5D-0A24-7C13-C78B44102A12";
createNode pointConstraint -n "IK_hip_aim_space_pointConstraint1" -p "IK_hip_aim_space";
	rename -uid "83BF5A93-4620-0C06-6492-4E8F2DFFC737";
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
	rename -uid "910E14C7-454C-7E0E-3437-5DB6177026CC";
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
createNode transform -n "motion_FK_leg_GRP" -p "leg_motion_GRP";
	rename -uid "855464EB-4625-E105-775E-F180BBC5F57B";
createNode joint -n "FK_hip" -p "motion_FK_leg_GRP";
	rename -uid "55E79A1D-45C2-1FCA-D41C-E8BC5F6FCCF9";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_thigh" -p "FK_hip";
	rename -uid "A00B427B-4798-AA49-115C-22A695669FDD";
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
	rename -uid "97FBEC50-4C21-0ADE-2B22-14ABB2E63290";
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
	rename -uid "DE4D36E9-436B-780E-DFDC-F79947E6F36C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_ankle" -p "FK_B_knee";
	rename -uid "F92E3FA7-4D7F-2F89-765B-A0B187C99B35";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_toe" -p "FK_ankle";
	rename -uid "CBD3245E-4707-C71A-E31E-23AD02311097";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_hind_tiptoe" -p "FK_hind_toe";
	rename -uid "45975617-41B1-2083-5757-A09B604F3C86";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 3.6600722913155082 -8.8817841970012523e-16 -1.9375632120954833e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000184310067 1.0000000019227699 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "leg_CTL_GRP" -p "leg_GRP";
	rename -uid "09D59073-4DD0-271E-F923-8DAEFE550C4F";
createNode transform -n "hip_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "4ED05CDA-4768-8A36-DB93-16A04362D9FA";
createNode transform -n "hip_CTL_spcGRP" -p "hip_CTL_offGRP";
	rename -uid "F21815CB-42E8-7024-80F9-65839A5BDB69";
createNode transform -n "hip_CTL" -p "hip_CTL_spcGRP";
	rename -uid "69652ADB-4F45-E83E-971D-318471689C9C";
createNode nurbsCurve -n "hip_CTLShape" -p "hip_CTL";
	rename -uid "78CD605B-46E1-F4F7-030C-779DA894A142";
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
	rename -uid "524BD588-46D0-2D7E-2CF6-B2BC9685397F";
createNode transform -n "IK_thigh_CTL_offGRP" -p "hip_CTL_ivsScale";
	rename -uid "4B4DED4C-4084-709B-F853-8EA3506A54AA";
createNode transform -n "IK_thigh_CTL_spcGRP" -p "IK_thigh_CTL_offGRP";
	rename -uid "69262705-4DEF-85FB-F3AB-F7A52A69DF04";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "IK_thigh_CTL" -p "IK_thigh_CTL_spcGRP";
	rename -uid "4710E08D-4FC7-4614-A259-0B9FC643E306";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_thigh_CTLShape" -p "IK_thigh_CTL";
	rename -uid "55E5535C-4966-6583-08DD-B6BABEF8332C";
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
	rename -uid "72FC78C9-4E18-C7B7-6626-1483BBABFC78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode locator -n "IK_B_ankle_upVecShape" -p "IK_B_ankle_upVec";
	rename -uid "1BEC3865-470A-6463-579F-A8B70A1F8B2F";
	setAttr -k off ".v";
createNode transform -n "IK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "E038DD7C-4F97-D40E-02F4-7FA3736989AD";
	setAttr ".r" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "B_foot_CTL_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "55A71677-4309-D8B1-C70B-B7960013274A";
	setAttr ".t" -type "double3" 38.596635090173251 0 1.4671939513296905 ;
	setAttr ".r" -type "double3" -9.6145742939888379 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000151032806 1.0000000151032806 ;
createNode transform -n "B_foot_CTL_spcGRP" -p "B_foot_CTL_offGRP";
	rename -uid "616A6705-4DAC-2BE7-A4CE-27BAE71AEF02";
createNode transform -n "B_foot_CTL" -p "B_foot_CTL_spcGRP";
	rename -uid "2CD9EA72-46F8-9D5B-DFF5-BBA6A86B0580";
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
	rename -uid "FC31E1BE-4C75-0658-3271-E0A732AE7DB0";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00047531438057291098 1.1102230246251565e-15 -2.1991176605224583 ;
createNode locator -n "B_heelShape" -p "B_heel";
	rename -uid "AC9A6B2E-4593-CEA4-1897-11A4492B8786";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_heel_CTL" -p "B_heel";
	rename -uid "283007FA-4298-D7AD-02ED-E8BC62B3A15C";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_heel_CTLShape" -p "B_heel_CTL";
	rename -uid "73A9BE79-491F-D22F-316F-F1A4DC872027";
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
	rename -uid "B1DB4936-422C-EF55-3F4A-CD9B4875B1AF";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.6304045646172298 -1.1102230246251565e-15 0.0071562015207398133 ;
createNode locator -n "B_heel_outShape" -p "B_heel_out";
	rename -uid "CD30DAD3-46A2-B59F-3E57-72BDD9D42A7D";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_heel_in" -p "B_heel_CTL";
	rename -uid "DCC51DB3-4ECC-A0D6-E2B8-70807E5B0A67";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.6293138535041081 -8.8817841970012484e-16 0.0071562015207398133 ;
createNode locator -n "B_heel_inShape" -p "B_heel_in";
	rename -uid "72107A16-48E4-8206-3192-618C87FAA1C9";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "B_toe" -p "B_heel_CTL";
	rename -uid "5FFACABC-4B0F-C7A3-5405-94B137DBC3F1";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00047531438057557551 2.8648354982420945e-07 5.4953481166846885 ;
createNode locator -n "B_toeShape" -p "B_toe";
	rename -uid "240CDC70-42BE-38C3-E90D-49BA9DD79D44";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_toe_CTL" -p "B_toe";
	rename -uid "4C7673A1-43E1-4B37-76DB-548C1CA01BAB";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_toe_CTLShape" -p "B_toe_CTL";
	rename -uid "39C0DB15-4C1D-AFED-3B71-EF85FA2B2E82";
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
	rename -uid "D5C91429-4DB0-A8B8-0EDD-62BCF5977245";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.5909109058722251 -3.2962298632919591 ;
createNode locator -n "B_ballShape" -p "B_ball";
	rename -uid "D176A7A2-48C6-2800-A16F-39BE32FD46B5";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_ball_CTL" -p "B_ball";
	rename -uid "AD270FE2-4FAE-1C9B-430B-4293E0B0D22E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_ball_CTLShape" -p "B_ball_CTL";
	rename -uid "11111A21-4A08-C911-CD50-C492CC3DD4BD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-5.7138171146189772e-16 -0.28320660591125441 2.0030229568481448
		-3.8350697228104436e-16 0.35970083408874542 1.8751413568481463
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
	rename -uid "16342797-4558-5955-5466-E9BD099A817C";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0.83296069292618813 -0.95006793129699574 ;
createNode locator -n "B_ankleShape" -p "B_ankle";
	rename -uid "B003A9CA-4648-996F-47BA-7990633A98BC";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "B_ankle_CTL_offGRP" -p "B_ankle";
	rename -uid "287F7F26-4F7B-93FB-A8EA-41B6EBE66ADA";
createNode transform -n "B_ankle_CTL_spcGRP" -p "B_ankle_CTL_offGRP";
	rename -uid "FB808759-4AAC-2CBA-D29F-298640C06AF8";
createNode transform -n "B_ankle_CTL" -p "B_ankle_CTL_spcGRP";
	rename -uid "6E247CFE-406D-E697-F3A6-8DA2CC99A7E6";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "B_ankle_CTLShape" -p "B_ankle_CTL";
	rename -uid "45813FCE-4730-5B10-32B8-E492C4826655";
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
	rename -uid "4CB75147-447B-4D3B-E138-C38AF1497F5F";
	setAttr ".v" no;
createNode transform -n "B_knee_space_GRP" -p "B_ankle_aim_space";
	rename -uid "E98AE845-4280-6DA6-BC1A-E09E3E781D6F";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 10.443872381879702 -0.047096733519250478 ;
	setAttr ".r" -type "double3" 0 -0.25837142167493932 -90 ;
	setAttr ".s" -type "double3" 0.99999998571076532 1 0.99999998571076565 ;
createNode transform -n "B_knee_space" -p "B_knee_space_GRP";
	rename -uid "118CC8E1-4AF8-8FA9-028D-45BDCFCD03F8";
	setAttr ".s" -type "double3" 1.0000000142892349 1 1.0000000142892347 ;
createNode locator -n "B_knee_spaceShape" -p "B_knee_space";
	rename -uid "E56883AA-4A46-2126-2BB5-1793C5A49F6F";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle7" -p "B_knee_space";
	rename -uid "83B5E1EE-48FE-72E6-5BBC-87868A6E58B1";
	setAttr ".r" -type "double3" 0 -48.499341944216738 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".pv" -type "double3" 0.0045094167181025544 0 0.99998983252874252 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle7_pointConstraint1" -p "ikHandle7";
	rename -uid "F80894C1-47A4-1439-3F70-15A62AF9A48A";
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
	rename -uid "4437810C-46DC-34E7-D4AC-528B0717D0DB";
	setAttr ".r" -type "double3" 0 -63.977554756532754 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".pv" -type "double3" 0.0045094167181025544 0 0.99998983252874252 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle8_pointConstraint1" -p "ikHandle8";
	rename -uid "AB7114A2-448E-4AD8-BCF9-E4A515E1FC7F";
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
	rename -uid "942D4A87-4421-0EEA-4100-97967C786308";
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
	rename -uid "F15DB72D-4B70-952C-7A56-C08116195FE8";
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
	rename -uid "E3D51D22-4BFC-EC3D-1A04-ABA405B0D4F7";
	setAttr ".t" -type "double3" 5 0 0 ;
createNode transform -n "IK_thigh_aim_space" -p "B_foot_CTL";
	rename -uid "61006394-46A3-D718-D8A9-29831648C77B";
	setAttr ".t" -type "double3" 0 38.299540202149615 4.999807357788093 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
createNode transform -n "B_poleVec_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "D2E44CC2-4754-0888-DC32-3C95F25019B1";
	setAttr ".s" -type "double3" 1.0000000110780887 0.99999999999999967 1.0000000191284719 ;
	setAttr ".sh" -type "double3" 0 6.0830007089158456e-09 0 ;
createNode transform -n "B_poleVec_space" -p "B_poleVec_offGRP";
	rename -uid "87425AF3-4B89-B7E8-CCFB-C48029C78B95";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
createNode transform -n "B_poleVec_CTL" -p "B_poleVec_space";
	rename -uid "C4EAD1BB-43FB-F904-B415-F9A8FE5F08AA";
	addAttr -ci true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".follow" 10;
createNode nurbsCurve -n "B_poleVec_CTLShape" -p "B_poleVec_CTL";
	rename -uid "4FE48AC5-4BB0-C1D2-E71B-84AFDAF4C480";
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
	rename -uid "779A457C-44A5-F24D-0046-538081EBDF25";
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
	rename -uid "8809E37D-4978-9515-64CD-1BAC95ED00DE";
createNode transform -n "FK_hip_offGRP" -p "FK_leg_CTL_GRP";
	rename -uid "8C3FF5A9-4560-2B97-E0B5-5093B4868B66";
createNode transform -n "FK_hip_space" -p "FK_hip_offGRP";
	rename -uid "27EBBFA0-44D4-49DE-C0B0-EBA945913D0D";
createNode transform -n "FK_hip_space_ivsScale" -p "FK_hip_space";
	rename -uid "BCCECF5B-46D2-A852-55B4-1DB1EC118779";
createNode transform -n "FK_thigh_CTL_offGRP" -p "FK_hip_space_ivsScale";
	rename -uid "95543D39-4D54-4D67-0CDB-BF9AB826C0AA";
createNode transform -n "FK_thigh_CTL_spcGRP" -p "FK_thigh_CTL_offGRP";
	rename -uid "8F596C6A-4D40-3A6B-020C-DEB67D78FFB7";
createNode transform -n "FK_thigh_CTL" -p "FK_thigh_CTL_spcGRP";
	rename -uid "4251FD0A-4BC3-24D9-6CD2-30BF42E1C689";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_thigh_CTLShape" -p "FK_thigh_CTL";
	rename -uid "EC45C252-4157-0243-F1A8-15B0FCDDC978";
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
	rename -uid "5A654498-4207-12F0-B4F6-7E861D57EF22";
createNode transform -n "FK_F_knee_CTL_offGRP" -p "FK_thigh_CTL_ivsScale";
	rename -uid "1072D8CF-4612-B520-2154-7286A939811D";
createNode transform -n "FK_F_knee_CTL_spcGRP" -p "FK_F_knee_CTL_offGRP";
	rename -uid "BA9F920F-43EA-2D39-ED9E-EABFCDCBBC98";
createNode transform -n "FK_F_knee_CTL" -p "FK_F_knee_CTL_spcGRP";
	rename -uid "DFDB37D2-4BA2-BDAB-A1BB-219EC64B4665";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "FK_F_knee_CTLShape" -p "FK_F_knee_CTL";
	rename -uid "80E1947B-41FA-5AAC-071F-2BA3EA045790";
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
	rename -uid "5710E2BA-4026-9322-8EC9-24A234F558A9";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_B_knee_CTL_offGRP" -p "FK_F_knee_CTL_ivsScale";
	rename -uid "E8713034-449E-FABD-2CDF-CC92F9FCB9F2";
createNode transform -n "FK_B_knee_CTL_spcGRP" -p "FK_B_knee_CTL_offGRP";
	rename -uid "A27B8180-43B8-4DFD-0BB0-1199D9A94836";
createNode transform -n "FK_B_knee_CTL" -p "FK_B_knee_CTL_spcGRP";
	rename -uid "FDD0876D-4F86-328A-5443-8BB23E7E377A";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_knee_CTLShape" -p "FK_B_knee_CTL";
	rename -uid "4DD4C978-457C-E650-E3C0-19BECF926AEB";
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
	rename -uid "EEDEE401-46EB-65DB-CA9F-E5B83ACBA91C";
createNode transform -n "FK_ankle_CTL_offGRP" -p "FK_B_knee_CTL_ivsScale";
	rename -uid "D07E9A09-4D38-62B6-5822-C4BA7AAB22EA";
createNode transform -n "FK_ankle_CTL_spcGRP" -p "FK_ankle_CTL_offGRP";
	rename -uid "26474E33-4073-E497-8BB8-E3A2FC486986";
createNode transform -n "FK_ankle_CTL" -p "FK_ankle_CTL_spcGRP";
	rename -uid "9746FD4A-431D-3DBB-1CBC-58B1F10EFD31";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_ankle_CTLShape" -p "FK_ankle_CTL";
	rename -uid "BFC15231-4A5B-48C4-E74D-0DA8F6FEB6A5";
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
	rename -uid "6CF39950-4A0E-64A0-6B70-09A90926E9DE";
createNode transform -n "FK_hind_toe_CTL_offGRP" -p "FK_ankle_CTL_ivsScale";
	rename -uid "573C23F8-4526-0951-619F-7F9475DC6DB5";
createNode transform -n "FK_hind_toe_CTL_spcGRP" -p "FK_hind_toe_CTL_offGRP";
	rename -uid "C4B0CD90-493D-943F-C307-A9A418CC9F47";
createNode transform -n "FK_hind_toe_CTL" -p "FK_hind_toe_CTL_spcGRP";
	rename -uid "EDED5EC6-449F-1651-A748-34807EC46D10";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_hind_toe_CTLShape" -p "FK_hind_toe_CTL";
	rename -uid "6DB4C73F-448A-C3D8-FC1A-4381EC7D8C37";
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
	rename -uid "5945951B-48FE-6B4D-149F-7BABEDAE549D";
createNode transform -n "leg_switch_CTL_spcGRP" -p "leg_switch_CTL_offGRP";
	rename -uid "AABD9CB5-4C6B-3BD5-441F-3BA6460A97E4";
createNode transform -n "leg_switch_CTL" -p "leg_switch_CTL_spcGRP";
	rename -uid "A3B603A9-4F89-C529-10A8-3289B3670E70";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "leg_switch_CTLShape" -p "leg_switch_CTL";
	rename -uid "A79FBC0A-4979-B3E1-49E8-F2AD263AC25D";
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
	rename -uid "43384506-4674-2DCF-CC3E-B0B11F64DCB0";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode joint -n "hip" -p "leg_output";
	rename -uid "B50922C2-4FD5-2590-AC0F-D1B8BC1D3C51";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "thigh" -p "hip";
	rename -uid "B730FBA6-4D17-B023-6F10-0ABB4D6AB3DA";
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
	rename -uid "34457546-44DB-C445-00E7-8BBC85819282";
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
	rename -uid "908C4220-4577-C88B-67A1-58986FDA5B7D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "ankle" -p "B_knee";
	rename -uid "3E0F18AA-4A6D-B891-F0F5-F294930DBD1E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_toe" -p "ankle";
	rename -uid "B51316D3-4F48-B340-0BD5-179770727448";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "hind_tiptoe" -p "hind_toe";
	rename -uid "E69C4FCE-484A-6890-72CC-8B9B7BDA26CC";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "0B0E81EB-4C9E-429E-D1AC-4086F5F01257";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "D59407BB-4546-77F9-1C5F-34A73EB0814B";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "0157D27D-44EE-3B5D-4C4E-96B5465CD726";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "77484460-48FD-546C-283F-898EB1723B91";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "3503E3F3-4D93-7BE2-026E-C8928EEFBB63";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "32493113-4091-771B-FC5D-1991D62A0BCE";
createNode plusMinusAverage -n "softupperLegLen";
	rename -uid "F3274F0F-4E8B-FFA9-7D92-BCA692008926";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uplegLen";
	rename -uid "F9EADC89-4054-95B3-305E-A2B79D000F98";
createNode multMatrix -n "input_thigh_local_MTMX";
	rename -uid "804AB6DD-4512-E751-4878-02A22358E4E2";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_knee_local_MTMX";
	rename -uid "971B6D1D-4593-C95A-60D0-928006EC1E1B";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midlegLen";
	rename -uid "80A3982E-4B12-F76D-F1A6-B4B9F00CCDC3";
createNode multMatrix -n "input_ankle_local_MTMX";
	rename -uid "D6364D02-4448-1F03-FCCF-2682245929AE";
	setAttr -s 2 ".i";
createNode distanceBetween -n "leg_ctrlLen";
	rename -uid "39E17B59-4931-6239-C531-FFB96227EEED";
createNode multMatrix -n "B_knee_space_local_MTMX";
	rename -uid "C53EEBDA-43B0-CC06-8E2A-2B8FF6001138";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_thigh_local_dist_MTMX";
	rename -uid "8EE2702F-422F-1CB9-402A-74B6A666C040";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "leg_IK_negate_val";
	rename -uid "35975E0F-436E-6235-D4D4-A897C77DC6D1";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "softlowerLegLen";
	rename -uid "F2AAE561-4CBF-A3BB-BC08-4EB853D5A6FD";
	setAttr -s 3 ".i1[0:2]"  0 11.55338097 10.44397831;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loLegLen";
	rename -uid "0470DBD2-4E19-AEAA-8920-2188666F7CD9";
createNode multMatrix -n "input_B_toe_local_MTMX";
	rename -uid "01D5ACD6-4A74-9568-2376-E1B1EDBCA3D6";
	setAttr -s 2 ".i";
createNode distanceBetween -n "B_toe_ctrlLen";
	rename -uid "29AF0237-4A8C-D4FC-B316-FDB42A494DCE";
createNode multMatrix -n "multMatrix5";
	rename -uid "F37C08CF-4522-3239-1F75-339D94A8ECCC";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "E62A3305-4EA0-20B0-E1C1-E99C2C935A03";
	setAttr -s 2 ".i";
createNode condition -n "upperLeg_ctrllen_COND";
	rename -uid "F0497E23-4AAE-B6FB-03F9-27B592B7C7D4";
	setAttr ".op" 2;
createNode condition -n "upperLeg_softikV_COND";
	rename -uid "FE729D48-48EA-A0DD-8B3D-17927C5667EE";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_result_softik_len";
	rename -uid "7895E90C-4B2D-F8CE-481F-868B46536F07";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "upperLeg_mult_softikV";
	rename -uid "98254133-4D1E-6408-CAE8-7085DBAF7E2A";
createNode multiplyDivide -n "upperLeg_power_val";
	rename -uid "164F5906-4D87-1996-4288-A5BD95C69C36";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "upperLeg_negate_val";
	rename -uid "2CA00B10-49D9-1F01-1B2B-41A8AD48E060";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "upperLeg_divide_softikV";
	rename -uid "5958016C-4E34-4973-259F-DB8BA0EC7AC0";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_ctrlLen_minue_dif";
	rename -uid "AE324DA9-43EA-B53C-A434-DEB8F78AADD2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "upperLeglen_minus_softikV";
	rename -uid "AC517489-4312-941B-EE1D-3AAAF8A5F27D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "leg_for_zerodivide_COND";
	rename -uid "9138034B-40CC-5C8C-8CE3-0CA9462C8548";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "lowerLeg_ctrllen_COND";
	rename -uid "D5817EEA-4FEF-CF11-8F8A-A5830B4234C2";
	setAttr ".op" 2;
createNode condition -n "lowerLeg_softikV_COND";
	rename -uid "9069B103-4038-F50D-C11C-79869622C85B";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_result_softik_len";
	rename -uid "762F00FD-4226-118A-83A1-DFA75418A322";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_mult_softikV";
	rename -uid "4CBFD0D8-4DD9-EAD7-49C1-5BAD37E402EE";
createNode multiplyDivide -n "lowerLeg_power_val";
	rename -uid "6ADE35D6-46E5-E1E5-F021-AF9FACC5CEDB";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "lowerLeg_negate_val";
	rename -uid "4955FD1F-4E4E-9C95-5370-83AE44FED033";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lowerLeg_divide_softikV";
	rename -uid "CFC5905B-466B-6A51-5236-599036AA0E54";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_ctrlLen_minue_dif";
	rename -uid "C90BAAD6-4536-6270-F918-90AFB62C7EA5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "lowerLeglen_minus_softikV";
	rename -uid "93827527-457F-800E-4FE0-FFB6B3084D7F";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loleg_plus_stretch";
	rename -uid "E285C629-4FD2-CBA2-2C94-20A6CA2F2771";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loleg";
	rename -uid "764304DD-4A28-4B0E-9C62-C18CDB844BEE";
createNode multiplyDivide -n "stretched_lolegLen";
	rename -uid "CAF5C3F5-456F-45B5-7206-739422309A79";
createNode plusMinusAverage -n "upperLeg_stretchedLen";
	rename -uid "28D9D830-4EE9-771C-A994-029B55D4DC88";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loleg_ratio";
	rename -uid "ACF8763D-4375-20A5-1B91-B09E291E8D58";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_legLen";
	rename -uid "0CBC058E-4639-E11E-0265-8DA191208E55";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upleg_plus_stretch";
	rename -uid "12EFB730-4415-D503-9DEE-94BE7E44E46E";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upleg";
	rename -uid "541F1F7E-4991-31A7-AD76-DFB3140EA483";
createNode multiplyDivide -n "stretched_uplegLen";
	rename -uid "C7702D9D-46EA-0287-A2A4-BA8BDDF157AA";
createNode multiplyDivide -n "upleg_ratio";
	rename -uid "94D0DA62-4AC6-0C90-9106-AC9EAAA47365";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_plus_stretch";
	rename -uid "AC53B74A-4E47-EAA8-79D3-5DBE737F99D9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_lowerLeg";
	rename -uid "22CAAF66-493A-C510-8065-21A845C50B6C";
createNode multiplyDivide -n "stretched_lowerLegLen";
	rename -uid "7FAEEB3F-4FDA-ECC8-4836-2EAD7CBE49A7";
createNode plusMinusAverage -n "lowerLeg_stretchedLen";
	rename -uid "2ADD5072-4BA5-6F06-1530-4D8012635A68";
	setAttr ".op" 2;
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_ratio";
	rename -uid "51E3579A-497C-90BF-D1FF-C8BB2035A4D0";
	setAttr ".op" 2;
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "2341DBBC-478C-1B7A-5F9B-75925B1A580C";
createNode multMatrix -n "multMatrix7";
	rename -uid "305615B1-43E4-0D4A-5578-1BADDE53BF29";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "B91E653E-4B4F-AA3F-9FC7-5F99B7FEADC4";
createNode multMatrix -n "multMatrix8";
	rename -uid "A4C25622-4843-73C1-EBDB-1B8631CCE380";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_B_knee_local_DCMX";
	rename -uid "4FFBF10D-4D75-33CF-2492-46A8A87D6115";
createNode decomposeMatrix -n "IK_ankle_local_DCMX";
	rename -uid "EFFEB6CD-4247-D3A3-B0CE-E9B50A0556F0";
createNode decomposeMatrix -n "IK_hind_toe_local_DCMX";
	rename -uid "AEDEB9A8-4270-A882-7479-83A985AA591B";
createNode decomposeMatrix -n "FK_thigh_local_DCMX";
	rename -uid "081159AA-472A-E1E2-9AAF-7AA451EAFAF3";
createNode multMatrix -n "FK_thigh_local_MTMX";
	rename -uid "2B3E144B-46F8-1AFA-3C76-5CB8ADDCA3FA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_knee_local_DCMX";
	rename -uid "6FEC2CFE-4895-AA91-923A-05A677141CC9";
createNode multMatrix -n "FK_F_knee_local_MTMX";
	rename -uid "63C4C619-4DFC-E68D-6515-F7B4C5D4521D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_knee_local_DCMX";
	rename -uid "EF846AF0-461B-5D56-A636-95BC2040C327";
createNode multMatrix -n "FK_B_knee_local_MTMX";
	rename -uid "4BD3F9EA-4D7A-FA30-9D9F-38B99AEE026F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_ankle_local_DCMX";
	rename -uid "C62BCF5B-4510-F81B-30A0-158391D63490";
createNode multMatrix -n "FK_ankle_local_MTMX";
	rename -uid "DB5C7EE2-4E0A-5F71-F678-72B28415FC80";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_hind_toe_local_DCMX";
	rename -uid "9F65F149-4EC0-7BD4-7490-8EA94C755A2B";
createNode multMatrix -n "FK_hind_toe_local_MTMX";
	rename -uid "B78200D9-42A2-A3FA-4489-18854C79D194";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hip_L_CTL_inverse_DCMX";
	rename -uid "D7C3FC74-48F7-9936-D276-52BEE027F5D4";
createNode unitConversion -n "unitConversion9";
	rename -uid "EEF16029-417D-EB8C-C099-E0A1E8511B5C";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition1";
	rename -uid "79D47F42-405E-0946-EC8E-5E8558A8879C";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion12";
	rename -uid "083C2A1A-43B6-CA23-3CCB-41977054117D";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition1";
	rename -uid "E268E350-4E65-D500-6635-2FA4123FBD75";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition1";
	rename -uid "C4FBC3E6-46E8-9CDF-FC0C-F6ABACAEBC45";
createNode unitConversion -n "unitConversion11";
	rename -uid "BF3A95D4-4796-5C30-609F-1A905A5FF1CB";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition1";
	rename -uid "08B80DCC-49F6-34D0-2448-30809E8CBBBE";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage2";
	rename -uid "82B0A1F8-4E10-5512-D6E7-4DAEF5C1A57E";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_toe_local_DCMX";
	rename -uid "FF5B93FB-476A-AC05-A07E-6D8D43A58612";
createNode multMatrix -n "B_toe_local_MTMX";
	rename -uid "19BCEBA3-49EC-F541-7C48-35BED56E9DF9";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion10";
	rename -uid "BB2CBA5B-49B6-044E-7098-C6ABB617A0B0";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon1";
	rename -uid "874F293C-4F2A-4B52-D4BA-D1BA54D71B17";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition1";
	rename -uid "9766801C-4636-FAC8-764D-A2846E718F9F";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball1";
	rename -uid "EA86ACA5-409B-1F65-DE4D-9CAC8C45FBFF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap1";
	rename -uid "805A247A-478F-52A2-12FF-1580C0F16A40";
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
	rename -uid "C9B21489-4386-ECC9-744E-1D89CFB4DF44";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "B_ball_local_DCMX";
	rename -uid "A6E914E9-413A-A15D-7519-4EABC2FB67E8";
createNode multMatrix -n "B_ball_local_MTMX";
	rename -uid "09F86600-4480-805F-9D37-E8B913893809";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_ankle_local_DCMX";
	rename -uid "0CBE27F7-4F43-0307-C4D7-7E8BDD96D95E";
createNode multMatrix -n "B_ankle_local_MTMX";
	rename -uid "94E41E59-43A2-DF0B-CD21-FDAE7D790BF3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "B_knee_space_GRP_local_DCMX";
	rename -uid "80C9CD12-4EE9-4DC4-0182-BDB6091E32B5";
createNode multMatrix -n "B_knee_space_GRP_local_MTMX";
	rename -uid "89CBD989-4D22-5C4C-A38E-DCB8990335A3";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion13";
	rename -uid "F122CDA9-4125-7FF8-A103-1B86AEC45EB9";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS1";
	rename -uid "7C290DE8-4F33-E4F6-B3FB-988A86A15783";
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX1";
	rename -uid "3D6F754C-42AE-AE3C-8641-1094B1644DA2";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX1";
	rename -uid "92C4957B-4863-95FD-2ECA-0B960C0F8409";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion14";
	rename -uid "D613D200-485F-D09E-992D-098C707C651B";
	setAttr ".cf" 0.1;
createNode reverse -n "FK_IK_RVS";
	rename -uid "2C453C5F-4142-E608-E920-3D90642A6E28";
createNode decomposeMatrix -n "FK_hip_space_inverse_DCMX";
	rename -uid "B98885AB-4473-A8B3-DD9A-C7BE28C2EE59";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "03755F46-4FF8-B928-AD36-7E872915CF82";
createNode decomposeMatrix -n "FK_thigh_CTL_inverse_DCMX";
	rename -uid "EE1E9BED-4D70-1A4B-2D07-40BBF476ABCF";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "6D7089CA-43C6-E716-157A-38B3571EACED";
createNode decomposeMatrix -n "FK_F_knee_CTL_inverse_DCMX";
	rename -uid "CD24A045-400F-D651-380C-049445A30E5D";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "9E70E931-4F45-DBB6-565C-1A91AD682D1F";
createNode decomposeMatrix -n "FK_B_knee_CTL_inverse_DCMX";
	rename -uid "2AEBBEF5-418B-2557-B46C-0B98210E49CE";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "01C48D8D-40C6-28AB-57C6-CEB87146B204";
createNode decomposeMatrix -n "FK_ankle_CTL_inverse_DCMX";
	rename -uid "E3795323-42EE-B7B4-8495-86A303EA2ED7";
createNode decomposeMatrix -n "leg_switch_CTL_DCMX";
	rename -uid "6579E276-4F46-B79E-22E6-DBA641E46CAB";
createNode multMatrix -n "leg_switch_CTL_MTMX";
	rename -uid "A8289B4D-4DF0-E717-89D1-C5981A5BE599";
	setAttr -s 2 ".i";
createNode choice -n "leg_switch_CTL_CHOI";
	rename -uid "37693890-4A72-C082-E65C-849F6BC2D3A7";
	setAttr -s 2 ".i";
createNode pairBlend -n "hip_PRBL";
	rename -uid "165D5820-4ADC-C147-C5BD-AEA2346A2C48";
createNode blendColors -n "hip_BLCL";
	rename -uid "24B447E6-4EBA-4FED-3034-16B2FC3D5B45";
createNode pairBlend -n "thigh_PRBL";
	rename -uid "74012EEB-406B-5EB2-CD50-FFB62392F2F7";
createNode blendColors -n "thigh_BLCL";
	rename -uid "8E28E9F2-43BF-86F8-9DFA-5CAD792ECD12";
createNode pairBlend -n "F_knee_PRBL";
	rename -uid "836949EE-49D8-A9F8-78BA-8A9E11993D97";
createNode blendColors -n "F_knee_BLCL";
	rename -uid "DEB466AE-4424-4E08-A699-7D9C1B19625F";
createNode pairBlend -n "B_knee_PRBL";
	rename -uid "C92EFC10-4247-69D4-7D31-EB8DBACA028E";
createNode blendColors -n "B_knee_BLCL";
	rename -uid "6761F056-4BF6-F0AF-8817-73B477AA19A3";
createNode pairBlend -n "ankle_PRBL";
	rename -uid "05857DFF-4C1B-38AF-E7DD-CBBA8C450B3A";
createNode blendColors -n "ankle_BLCL";
	rename -uid "1D11959F-4774-F949-1C78-1EAED31FD125";
createNode pairBlend -n "hind_toe_PRBL";
	rename -uid "DFE6F1B0-4563-CDCC-42F2-6FB919B9AAE7";
createNode blendColors -n "hind_toe_BLCL";
	rename -uid "9EC2EBC1-4137-ED3F-2EA9-AEB42D7E57C9";
createNode pairBlend -n "hind_tiptoe_PRBL";
	rename -uid "28B7223B-4DA9-F9BA-726C-1DB91693E184";
createNode blendColors -n "hind_tiptoe_BLCL";
	rename -uid "9C102C78-4F28-49F5-CDC9-93B1267D2CE5";
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
	setAttr -s 73 ".u";
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
connectAttr "input_hip.init" "leg_GRP.init" -na;
connectAttr "input_thigh.init" "leg_GRP.init" -na;
connectAttr "input_F_knee.init" "leg_GRP.init" -na;
connectAttr "input_B_knee.init" "leg_GRP.init" -na;
connectAttr "input_ankle.init" "leg_GRP.init" -na;
connectAttr "input_hind_toe.init" "leg_GRP.init" -na;
connectAttr "input_hind_tiptoe.init" "leg_GRP.init" -na;
connectAttr "leg_output.init" "leg_GRP.init" -na;
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
connectAttr "unitConversion13.o" "B_ankle_aim_space_aimConstraint1.w0";
connectAttr "toesAim_RVS1.ox" "B_ankle_aim_space_aimConstraint1.w1";
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
connectAttr "motion_IK_leg_GRP.wim" "multMatrix7.i[1]";
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
