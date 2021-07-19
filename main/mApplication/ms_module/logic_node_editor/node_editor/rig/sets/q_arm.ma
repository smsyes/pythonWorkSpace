//Maya ASCII 2019 scene
//Name: q_arm.ma
//Last modified: Sat, Jul 03, 2021 05:58:32 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "RenderMan_for_Maya" "4.0.3";
requires "redshift4maya" "2.6.31";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "arm_GRP";
	rename -uid "7E89760E-4B54-9196-BC58-E98D4DB85904";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	setAttr -s 6 ".reBuildMode";
	setAttr -s 7 ".input";
	setAttr -s 2 ".reBuildAttr";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "0903A643-42AC-9749-1226-A1B620EBD369";
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "C7314D3B-4983-3A77-B71F-21BE823E70F8";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "CDBF9226-437B-E046-3D33-63A88849E8D2";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
	setAttr ".r" -type "double3" -0.87822632282824908 18.963366707434972 -90.051492328366749 ;
	setAttr ".s" -type "double3" 1.0000000596541891 0.99999997041493938 1.000000020322811 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "7AF2C3AB-4111-97D6-6197-27A5262B4505";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 11.152678498081166 -6.7629546407488306e-10 4.5920422131473515e-08 ;
	setAttr ".r" -type "double3" 6.8566897946502188e-08 -19.828083153045551 -4.6052495049693163e-08 ;
	setAttr ".s" -type "double3" 0.99999996654560874 0.99999999998459921 0.99999997179149047 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "B576423B-4ECC-DDBC-A18C-92B8F867064F";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 15.031986341669402 -8.7500264811524175e-09 -3.3928628795365512e-09 ;
	setAttr ".r" -type "double3" -0.013196246886768993 0.91878242726947013 -0.00021163387107903496 ;
	setAttr ".s" -type "double3" 0.99999996221579857 1.0000000122470938 1.0000000098297848 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "9F44CE66-4F61-A579-AC22-23A7ED6BE04E";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.5795577284653248 -7.5485750983261823e-10 1.4719248042638355e-10 ;
	setAttr ".r" -type "double3" 1.4602709320101939 -39.558478476165973 -0.93011580036176145 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "073678B4-44F3-3B19-F899-CCB8B8C4C35E";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.9366106004663823 1.4245493673570309e-11 2.2318538128729415e-09 ;
	setAttr ".r" -type "double3" -0.42868454630810876 -31.493451577779997 0.22394830479530262 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "AFC367E2-4F29-4BA3-D984-2E81DB3072F8";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.6141825737368265 6.3248428716633498e-10 5.9709609701030786e-08 ;
	setAttr ".r" -type "double3" 71.005082889498738 5.3992794259425517e-05 90.000000095998658 ;
createNode transform -n "motion_IK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "979E2877-46D3-4294-FE03-96BCA1C251D7";
createNode transform -n "IK_shoulder_space" -p "motion_IK_arm_GRP";
	rename -uid "055EF9A5-43AD-3C19-7FC7-DEB375B6528F";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "CBCDE1B3-49B0-B22D-4D84-D5B9F6D44623";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "1FE3C088-4930-56B2-0D48-1BB12C724FB3";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "3CC32A92-44E8-E8B6-0EB3-4886725B78D4";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "9C5AC415-42B2-59BA-8FA5-498753FB03BD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "A785D824-4D24-F121-1A47-16805A617082";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "CF3106D9-4BB3-F49F-005A-E4B4AAE37887";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "CB954C65-4B84-19DB-7F1A-FF92CFC11596";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_space" -p "upper_stretch_output_LOC";
	rename -uid "AB617BDA-4A38-8043-77CD-E5818167FF5F";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "ABFA8081-4652-6C84-04B8-178028EF69D5";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "239A686C-4B9A-823A-7270-9FA79D6403C1";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "DF239D73-402F-8204-664E-D181BBBC0303";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "46806449-468A-B670-6DE7-9D997666957C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "C2802167-470C-D129-FCEF-2A94CE4D5C8B";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "4CD339F2-4A21-19C7-5F46-70B850682179";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "8FF8D15D-4D30-6EE0-9A75-8588464C7418";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "7413DC09-4B9A-F36B-C157-5BBDB0F79602";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ankleW0" -dv 1 -at "double";
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
createNode transform -n "IK_wrist_space_upVec" -p "IK_wrist_space";
	rename -uid "F29ABB27-4229-7470-53C8-8D96CEA7D8FA";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "9B0CFF6A-44E3-9957-E00D-23B527E03D70";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "3D239CBD-4632-B8B6-76B6-7CA8EAA05B4D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "wrist_spaceW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 0.014163495766354091 -22.049766855648084 -0.037727887064269272 ;
	setAttr -k on ".w0";
createNode transform -n "IK_shoulder_space_upVec" -p "IK_shoulder_space";
	rename -uid "EF9BF0A0-4CE2-F019-2286-1A93932C4318";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "625A1571-4DF2-68DE-B06C-C4B805901424";
	setAttr -k off ".v";
createNode transform -n "F_softIK_input" -p "motion_IK_arm_GRP";
	rename -uid "892ACF5B-4CA2-AD03-C05D-9C95EFD0C5F7";
	addAttr -ci true -sn "uparmLen" -ln "uparmLen" -at "double";
	addAttr -ci true -sn "CTLLen" -ln "CTLLen" -at "double";
	addAttr -ci true -sn "softik_CTL_value" -ln "softik_CTL_value" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "loarmIK_len" -ln "loarmIK_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
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
	setAttr -k on ".uparmLen";
	setAttr -k on ".CTLLen";
	setAttr -k on ".softik_CTL_value";
	setAttr -k on ".loarmIK_len";
	setAttr -k on ".loarm_len";
createNode transform -n "F_softIK_output" -p "motion_IK_arm_GRP";
	rename -uid "7AFAE12A-4860-015A-48CE-FB883C619C00";
	addAttr -ci true -sn "output_softik" -ln "output_softik" -at "double";
	addAttr -ci true -sn "output_extended_softik" -ln "output_extended_softik" -at "double";
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
	setAttr -k on ".output_softik";
	setAttr -k on ".output_extended_softik";
createNode transform -n "F_stretchIK_input" -p "motion_IK_arm_GRP";
	rename -uid "C4549C5F-4499-5C54-3ED4-94BCC4D685C1";
	addAttr -ci true -sn "softik_len" -ln "softik_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "uparm_len" -ln "uparm_len" -at "double";
	addAttr -ci true -sn "ctrl_len" -ln "ctrl_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
	addAttr -ci true -sn "extendedarm_len" -ln "extendedarm_len" -at "double";
	addAttr -ci true -sn "extended_softik_len" -ln "extended_softik_len" -at "double";
	addAttr -ci true -sn "extended_ctrl_len" -ln "extended_ctrl_len" -at "double";
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
	setAttr -k on ".softik_len";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".uparm_len";
	setAttr -k on ".ctrl_len";
	setAttr -k on ".loarm_len";
	setAttr -k on ".extendedarm_len";
	setAttr -k on ".extended_softik_len";
	setAttr -k on ".extended_ctrl_len";
createNode transform -n "F_stretchIK_output" -p "motion_IK_arm_GRP";
	rename -uid "72BC9709-427B-8BCE-FBB0-C7981D154AFF";
	addAttr -ci true -sn "loarm_stretched" -ln "loarm_stretched" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "stretched_len" -ln "stretched_len" -at "double";
	addAttr -ci true -sn "uparm_stretched" -ln "uparm_stretched" -at "double";
	addAttr -ci true -sn "extendedarm_stretched" -ln "extendedarm_stretched" -at "double";
	addAttr -ci true -sn "expand_stretched_len" -ln "expand_stretched_len" -at "double";
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
	setAttr -k on ".loarm_stretched";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".stretched_len";
	setAttr -k on ".uparm_stretched";
	setAttr -k on ".extendedarm_stretched";
	setAttr -k on ".expand_stretched_len";
createNode joint -n "IK_scapula" -p "motion_IK_arm_GRP";
	rename -uid "F6D18314-466B-C225-F539-84BE9E3A859A";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "C28EF52B-4F3B-A0C9-B928-2084D8F431FC";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" 0.39145884555219101 0.0023851288477121273 0.078994649378657508 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "FBF64909-4FE1-8ED9-8B16-2381063F7DBA";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.152679443359375 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" -1.675750149133489e-12 0.009940068609291676 -2.9413126512113831e-11 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "0ACC59E0-4B8A-42DD-DA2F-339B6AE8E6A9";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.031987190246582 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" -0.097682455878760829 -0.05987868606890203 0.051775805443055802 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "088A4E7C-4FC4-D8EF-038C-6196A9A88F0D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795578956604004 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" -0.22881291921951583 0.050011529546828824 0.18960223366970042 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "4E73EBDC-4E26-3A5E-EEE9-D8994F262031";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -0.0011320641480348673 -0.0014436551676369764 0.00064441265035417386 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "AB04D468-48DE-41AD-BCA5-80AFF157CF12";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "5DC80C91-4AC6-021E-2D97-8CB19F4EDDE6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "EB5EC752-4CE6-5E8F-E925-AF97220BC8E8";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "85C563D7-4E48-A44D-CEA7-DB94C9EB7969";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "68189D8D-4F66-F877-2E09-E4BE1080FF79";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "83960C6E-4F1F-B579-A664-DBBD8FE3B1E6";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "5EEA15DC-4CC7-0382-4697-39A8F032B561";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "F_IK_scapula_aim_space" -p "motion_IK_arm_GRP";
	rename -uid "C113E811-40B4-2C3B-F42E-44A6D9C4A2DA";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode parentConstraint -n "F_IK_scapula_aim_space_parentConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "A22391EA-42D6-F7AE-D977-72B537E2840A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_scapulaW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-15 1.438616408222515e-06 
		-7.6612588273405891e-07 ;
	setAttr ".tg[0].tor" -type "double3" 1.9914476863012003 -12.155108259981747 0.79110438969324093 ;
	setAttr ".lr" -type "double3" 1.9914476863012003 -12.15510825998175 0.79110438969324115 ;
	setAttr ".rst" -type "double3" 6.2172489379008766e-15 1.438616408222515e-06 -7.6612588273405891e-07 ;
	setAttr ".rsrr" -type "double3" 1.9914476863012003 -12.15510825998175 0.79110438969324115 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "F_IK_scapula_aim_space_aimConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "5B5E85E1-441F-8091-B9E2-D7A22986DE45";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_foot_CTLW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 3.0479106891216277 0 -2.9469819946213933 ;
	setAttr ".rsrr" -type "double3" -5.086530654884583e-17 3.0722192615296335e-09 -1.6358490790857892e-10 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_foot_IKH_offGRP" -p "motion_IK_arm_GRP";
	rename -uid "AEDC77C9-4363-4815-4C74-6E9D8F1C70DB";
	setAttr ".v" no;
	setAttr ".sh" -type "double3" -1.3407756635411868e-10 0 -1.1400404598915197e-08 ;
createNode transform -n "F_IK_foot_IKH_spcGRP" -p "F_IK_foot_IKH_offGRP";
	rename -uid "6583075A-4669-7E07-91FD-EA805BBFC5E2";
createNode transform -n "F_IK_foot_IKH_stretched_space" -p "F_IK_foot_IKH_spcGRP";
	rename -uid "B1C0F43D-429D-349C-365B-33BE96583C15";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" 0 4.5795574188232422 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode ikHandle -n "ikHandle1" -p "F_IK_foot_IKH_stretched_space";
	rename -uid "95D6EA6B-45D4-20BB-E756-958CA1E0CA2A";
	setAttr ".t" -type "double3" -0.018615705346738842 7.8927061871958415e-05 2.1234761550914527e-05 ;
	setAttr ".r" -type "double3" 2.5882698378452331 -0.41960739676470571 -0.072194743298763853 ;
	setAttr ".s" -type "double3" 1.0000000000006601 0.99999999268661144 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484928169353064e-10 1.6005935782546354e-10 1.2770773227402367e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "E6AF9D90-4ADC-E52A-756C-3D84FDE74997";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "poleVecW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.063293536694878583 -10.072381771421131 -14.092013557910745 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_wrist_IKH_offGRP" -p "motion_IK_arm_GRP";
	rename -uid "7F8212A6-4271-A727-1E3A-E6A0E7F4C81F";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.0000000000421587 1.0000000049107367 0.99999999504710524 ;
	setAttr ".sh" -type "double3" 2.4192292366149829e-10 2.7025974036510174e-10 -4.9077322426682531e-08 ;
createNode transform -n "F_IK_wrist_IKH_spcGRP" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "8EA9E914-46DB-ED59-D8A1-2EB97E86CD50";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode ikHandle -n "ikHandle2" -p "F_IK_wrist_IKH_spcGRP";
	rename -uid "181726B4-4C3C-4167-8F89-3A8E33CA200C";
	setAttr ".t" -type "double3" -4.7843769834798877e-07 0.00011821710214698911 6.4083167217177106e-07 ;
	setAttr ".r" -type "double3" -0.54547297245450888 0.15887274140822377 -89.766315359356682 ;
	setAttr ".s" -type "double3" 0.9999999952166112 0.99999999995787225 1.0000000048255155 ;
	setAttr ".sh" -type "double3" 7.4955236486562746e-10 -4.9127046391158295e-08 -1.6183015439831835e-10 ;
	setAttr ".pv" -type "double3" -1.1761283891172135e-05 -0.0027693946176213921 0.99999616997701735 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "F_IK_wrist_IKH_offGRP_aimConstraint1" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "9EF028B6-4E7D-AC27-6234-C8A0F56AC2C6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_wrist_spaceW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -0.056123258466719964 -0.00093961681351428209 -0.23289379168730068 ;
	setAttr ".rsrr" -type "double3" 1.2424800027794772e-17 -3.6398559739649008e-19 -2.8436374796600794e-22 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_B_elbow_aim_space" -p "motion_IK_arm_GRP";
	rename -uid "BE41122B-4F5B-75AB-B349-17BEF0948A20";
	setAttr ".sh" -type "double3" 0 5.0848239461121112e-09 0 ;
createNode transform -n "F_IK_B_elbow_upVec" -p "F_IK_B_elbow_aim_space";
	rename -uid "8397DDB3-4D0F-D4EB-BCC2-6196ED2D3567";
	setAttr ".t" -type "double3" -1.0310053158435474e-11 5 4.0902489728544822e-11 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "motion_FK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "E636C8E9-4FAB-CAF4-B5D2-67B7A5F30325";
createNode joint -n "FK_scapula" -p "motion_FK_arm_GRP";
	rename -uid "968BE8D7-4DE0-A794-3B02-348372331FA8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "9BCDF76C-4406-B00F-4CF2-4FB6D48E78C7";
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
createNode joint -n "FK_B_elbow" -p "FK_shoulder";
	rename -uid "3D45EF94-41E8-CBE2-79F2-59B6E13BC20C";
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
createNode joint -n "FK_F_elbow" -p "FK_B_elbow";
	rename -uid "13AD8586-497A-0FE1-BBDA-01AF14DDCD5C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "B5FDAF0E-43ED-A9A1-CB28-38BE6A86C33E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "1839B3E1-4C81-5887-377D-97850351C3DE";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "B5E4E550-41FF-9631-A3DD-7292FED4B4EE";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "76FA515D-4E2A-0DEA-3D0D-C39ACB6B32C0";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "D0FA948F-43E0-6F8C-5912-C68BF6AAFEAD";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "7FBEDEF7-406D-7676-0E55-A4AB44F1BEEA";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "45E35417-496F-F3F4-F7A5-829FF20F1D1A";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "3ECBC3B6-488F-5AE0-8188-5AADC6CE54A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.6163883751087735 2.1806013529783206 
		3.6334503822956314 2.4 -1.7774315919804762 5.1384748088521937 3.1836116248912267 
		-0.10046776481173492 3.633450382295631 3.5081941875543894 2.0135310202211683 1.1559789466492041e-15 
		3.1836116248912263 1.4667554849707138 -3.633450382295635 2.399999999999999 0.43895678312829944 
		-5.1384748088521883 1.6163883751087718 3.7478246027607689 -3.6334503822956354 1.2918058124456091 
		4.4692374044260985 1.8886750976999804e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "scapula_CTL_ivsScale" -p "scapula_CTL";
	rename -uid "21438CE4-413D-3B92-0BB6-92A98B6E6849";
createNode transform -n "IK_shoulder_CTL_offGRP" -p "scapula_CTL_ivsScale";
	rename -uid "955F1C5D-4C89-94D6-B57F-7A95DE021A4E";
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "FE07DA18-45F0-2DC5-A2B8-608A149FCA67";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "438FCFF9-436D-386B-8BB7-78B12506AA41";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "1C4131CB-4DE0-AD52-DEE8-FF871FFB4C78";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.9999999999999982 -8.502704039611569e-16 2.5
		3.9999999999999982 -0.95670750000000038 2.3096999999999985
		3.9999999999999982 -1.7677674999999997 1.767767499999999
		3.9999999999999982 -2.3096999999999999 0.9567074999999986
		3.9999999999999991 -2.5000000000000004 -9.3675067702747544e-16
		3.9999999999999991 -2.309699999999999 -0.9567075000000006
		4.0000000000000009 -1.767767499999999 -1.7677674999999997
		4.0000000000000009 -0.9567074999999986 -2.309699999999999
		4.0000000000000009 1.0259431434953739e-15 -2.5
		4.0000000000000009 0.95670750000000082 -2.3096999999999985
		4.0000000000000009 1.7677674999999997 -1.767767499999999
		4.0000000000000009 2.3096999999999999 -0.9567074999999986
		3.9999999999999991 2.5000000000000004 9.3675067702747544e-16
		3.9999999999999991 2.309699999999999 0.9567075000000006
		3.9999999999999982 1.7677674999999993 1.7677674999999997
		3.9999999999999982 0.9567074999999986 2.309699999999999
		3.9999999999999982 -8.502704039611569e-16 2.5
		;
createNode transform -n "IK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "239ADCCE-4CD6-325F-B065-0D913FF67541";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674386 1.0000000222718179 1.0000000028214373 ;
	setAttr ".sh" -type "double3" -8.0815278926231564e-10 3.4848956455488224e-08 -2.2852080175786929e-08 ;
createNode transform -n "F_input_F_toe_space" -p "IK_arm_CTL_GRP";
	rename -uid "46B8ACC7-4BD6-7BD9-0E8E-3D8631A22F37";
	setAttr ".r" -type "double3" 1.6469325546113447 -67.218225318270896 -1.1283633139358367 ;
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_IK_foot_CTL_offGRP" -p "F_input_F_toe_space";
	rename -uid "E4454D1A-4754-49DF-DFCA-93957E9329B5";
	setAttr ".r" -type "double3" 39.512126764094496 0.36560916188151232 89.999999992268116 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_IK_foot_CTL_spcGRP" -p "F_IK_foot_CTL_offGRP";
	rename -uid "601F158F-46E2-7C66-2F27-7B90D2BBE7A6";
createNode transform -n "F_IK_foot_CTL" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "CA05D060-4ABF-9626-3FFF-BDABF1715588";
	addAttr -ci true -sn "roll" -ln "roll" -at "double";
	addAttr -ci true -sn "rollStartAngle" -ln "rollStartAngle" -at "double";
	addAttr -ci true -sn "bank" -ln "bank" -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -at "double";
	addAttr -ci true -sn "stretch" -ln "stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "toesAim" -ln "toesAim" -min 0 -max 10 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "resetAttr" -ln "resetAttr" -dt "string";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".roll";
	setAttr -k on ".rollStartAngle" 45;
	setAttr -k on ".bank";
	setAttr -k on ".heelTwist";
	setAttr -k on ".toeTwist";
	setAttr -k on ".stretch";
	setAttr -k on ".softIK";
	setAttr -k on ".toesAim" 10;
	setAttr -k on ".resetAttr" -type "string" "toesAim";
createNode nurbsCurve -n "F_IK_foot_CTLShape" -p "F_IK_foot_CTL";
	rename -uid "1300E38D-44A3-186F-7199-6098E5AC8C26";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 -2.6704911268714313 8.4654313432986772
		1.4603183280000001 -2.6704911268714313 8.1749574232986788
		2.6983203120000008 -2.6704911268714313 7.3477516552986781
		3.5255260799999975 -2.6704911268714313 6.1097496712986796
		3.8159999999999981 -2.6704911268714313 4.4638354123544453
		3.5255260799999975 -2.6704911268714313 2.1853674423809348
		2.6983203120000008 -2.6704911268714313 -0.44276769034261215
		1.4603183280000001 -2.6704911268714313 -2.6583587481527102
		0 -2.6704911268714313 -3.5387479512522266
		-1.4603183280000001 -2.6704911268714313 -2.6583587481527102
		-2.6983203120000008 -2.6704911268714313 -0.44276873275138784
		-3.5255260799999975 -2.6704911268714313 2.1853674423809348
		-3.8159999999999981 -2.6704911268714313 4.4638354123544453
		-3.5255260799999975 -2.6704911268714313 6.1097496712986796
		-2.6983203120000008 -2.6704911268714313 7.3477516552986781
		-1.4603183280000001 -2.6704911268714313 8.1749574232986788
		0 -2.6704911268714313 8.4654313432986772
		;
createNode transform -n "F_IK_heel" -p "F_IK_foot_CTL";
	rename -uid "696E0E13-42DF-3023-EE65-67AD72475093";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00042915506789320546 -2.6714803804686604 -0.58180752943567171 ;
	setAttr ".s" -type "double3" 1.0000000000000189 1.0000000001270557 0.99999999987292476 ;
createNode locator -n "F_IK_heelShape" -p "F_IK_heel";
	rename -uid "A3345617-4899-D8EC-A604-51B7D1C8F349";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_CTL" -p "F_IK_heel";
	rename -uid "B631124D-45CE-56BF-CDD7-A8ADB1A3D694";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_heel_CTLShape" -p "F_IK_heel_CTL";
	rename -uid "14E8AD78-4706-9EDD-FA80-9AB7A3AE44EF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		-1.5449383168448908e-16 -0.38268299999999988 0.92387999999999959
		-1.4061604387667462e-16 -0.70710700000000004 0.70710700000000026
		-5.7349317029787868e-17 -0.92387999999999937 0.38268299999999977
		5.3672985432727786e-17 -0.999999999999999 -2.2204460492503131e-16
		4.7000661966716148e-16 -0.92388000000000026 -0.38268300000000022
		5.255177708984193e-16 -0.7071069999999996 -0.70710699999999982
		4.8388440747497593e-16 -0.38268299999999955 -0.92388000000000048
		3.8902874612075654e-16 2.4737610236096238e-16 -1
		3.7286210501246028e-16 0.38268299999999961 -0.92387999999999959
		1.3693971227961451e-16 0.70710699999999982 -0.70710700000000026
		1.6469528789524343e-16 0.92387999999999937 -0.38268299999999977
		2.5917409817098869e-17 0.999999999999999 2.2204460492503131e-16
		-3.9041622441733484e-16 0.92388000000000026 0.38268300000000022
		-2.3776055853137582e-16 0.70710699999999926 0.70710699999999982
		-3.7653843660952039e-16 0.38268299999999905 0.92388000000000048
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		;
createNode transform -n "F_IK_heel_out" -p "F_IK_heel_CTL";
	rename -uid "30B93381-4C72-28AD-A6E0-888286B6ADF0";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_outShape" -p "F_IK_heel_out";
	rename -uid "FA2AB1A3-408C-F037-074C-ACBCF6A1AE81";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_in" -p "F_IK_heel_CTL";
	rename -uid "6B2A6904-4EED-4BA5-3B7D-4E9D9BD8BB4A";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_inShape" -p "F_IK_heel_in";
	rename -uid "AFD15E00-4FE4-5B31-A3E9-E8A2D7E6DFF9";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_toe" -p "F_IK_heel_CTL";
	rename -uid "578B4221-46CA-1715-DC22-618FE8743461";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00042819718444597754 0.0010189729279164424 5.2313096535730192 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_toeShape" -p "F_IK_toe";
	rename -uid "8F7DA30C-4A12-67AA-E04D-76933B77020A";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_toe_CTL" -p "F_IK_toe";
	rename -uid "4B69E8BA-4A8E-5E57-60CC-03ADCE2BA989";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_toe_CTLShape" -p "F_IK_toe_CTL";
	rename -uid "C3C51FE0-4FE0-5D42-554F-62B51247AF6F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		-1.5449383168448908e-16 -0.38268299999999988 0.92387999999999959
		-1.4061604387667462e-16 -0.70710700000000004 0.70710700000000026
		-5.7349317029787868e-17 -0.92387999999999937 0.38268299999999977
		5.3672985432727786e-17 -0.999999999999999 -2.2204460492503131e-16
		4.7000661966716148e-16 -0.92388000000000026 -0.38268300000000022
		5.255177708984193e-16 -0.7071069999999996 -0.70710699999999982
		4.8388440747497593e-16 -0.38268299999999955 -0.92388000000000048
		3.8902874612075654e-16 2.4737610236096238e-16 -1
		3.7286210501246028e-16 0.38268299999999961 -0.92387999999999959
		1.3693971227961451e-16 0.70710699999999982 -0.70710700000000026
		1.6469528789524343e-16 0.92387999999999937 -0.38268299999999977
		2.5917409817098869e-17 0.999999999999999 2.2204460492503131e-16
		-3.9041622441733484e-16 0.92388000000000026 0.38268300000000022
		-2.3776055853137582e-16 0.70710699999999926 0.70710699999999982
		-3.7653843660952039e-16 0.38268299999999905 0.92388000000000048
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		;
createNode transform -n "F_IK_ball" -p "F_IK_toe_CTL";
	rename -uid "21FEAE52-4393-D7E5-5750-D5830895B29F";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.0279733448091974e-09 1.1763597177972938 -3.417381495211341 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_ballShape" -p "F_IK_ball";
	rename -uid "852DC493-432D-7053-9F2D-5CB95438101F";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_ball_CTL" -p "F_IK_ball";
	rename -uid "96D57A8B-4EB1-280F-06F5-759E6ECD3D68";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_ball_CTLShape" -p "F_IK_ball_CTL";
	rename -uid "9FC95722-43D5-5D36-4A9D-F6A430C6A51B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-5.2911087238126586e-16 -3.4802502405122981e-16 1.8
		-2.7808889703208035e-16 -0.68882939999999981 1.6629839999999989
		-2.5310887897801422e-16 -1.2727925999999998 1.2727926000000001
		-1.0322877065361816e-16 -1.6629839999999985 0.68882939999999948
		9.6611373778910007e-17 -1.7999999999999978 -3.9968028886505636e-16
		8.460119154008906e-16 -1.6629840000000005 -0.68882940000000037
		9.4593198761715453e-16 -1.2727925999999994 -1.2727925999999996
		8.7099193345495648e-16 -0.68882939999999893 -1.6629840000000009
		7.0025174301736168e-16 4.452769842497323e-16 -1.8
		6.7115178902242832e-16 0.68882939999999893 -1.6629839999999989
		2.4649148210330603e-16 1.2727925999999996 -1.2727926000000001
		2.9645151821143804e-16 1.6629839999999985 -0.68882939999999948
		4.6651337670777961e-17 1.7999999999999978 3.9968028886505636e-16
		-7.027492039512027e-16 1.6629840000000005 0.68882940000000037
		-4.2796900535647644e-16 1.2727925999999987 1.2727925999999996
		-6.7776918589713652e-16 0.68882939999999826 1.6629840000000009
		-5.2911087238126586e-16 -3.4802502405122981e-16 1.8
		;
createNode transform -n "F_IK_wrist" -p "F_IK_ball_CTL";
	rename -uid "65E45682-417C-7691-6FA7-B1AEF4759605";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -9.5585547388310488e-07 1.494101689404028 -1.2321206288520727 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_wristShape" -p "F_IK_wrist";
	rename -uid "01969352-4627-0A0E-2D06-B195643A28E9";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_wrist_CTL_offGRP" -p "F_IK_wrist";
	rename -uid "206EBDDA-4EE7-5ECA-09C4-FCBAABE43A71";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".r" -type "double3" -2.3854175277042937e-15 1.5530052155583574e-18 -2.4799552035947529e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_IK_wrist_CTL_spcGRP" -p "F_IK_wrist_CTL_offGRP";
	rename -uid "3DE41584-4E43-C5BF-FC6E-9CB276E60CF8";
	setAttr ".r" -type "double3" -2.3854190443109495e-15 3.1060104311167156e-18 -2.4702489209975132e-17 ;
createNode transform -n "F_IK_wrist_CTL" -p "F_IK_wrist_CTL_spcGRP";
	rename -uid "39172894-40F9-9CB1-5F1D-76A11AA4A084";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_IK_wrist_CTLShape" -p "F_IK_wrist_CTL";
	rename -uid "F2B09272-41A4-D939-3D40-17A9DC389215";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-6.4669106624376994e-16 -4.2536391828483644e-16 2.2000000000000002
		-3.3988642970587606e-16 -0.84190259999999995 2.0325359999999995
		-3.0935529652868417e-16 -1.5556354000000003 1.555635400000001
		-1.2616849746553335e-16 -2.0325359999999986 0.84190259999999972
		1.1808056795200114e-16 -2.199999999999998 -4.8849813083506892e-16
		1.0340145632677555e-15 -2.0325360000000008 -0.84190260000000061
		1.1561390959765225e-15 -1.5556353999999994 -1.5556353999999999
		1.0645456964449473e-15 -0.84190259999999928 -2.0325360000000012
		8.5586324146566429e-16 5.4422742519411721e-16 -2.2000000000000002
		8.202966310274125e-16 0.8419025999999995 -2.0325359999999995
		3.0126736701515193e-16 1.5556353999999999 -1.555635400000001
		3.6232963336953557e-16 2.0325359999999986 -0.84190259999999972
		5.7018301597617521e-17 2.199999999999998 4.8849813083506892e-16
		-8.5891569371813658e-16 2.0325360000000008 0.84190260000000061
		-5.2307322876902678e-16 1.5556353999999988 1.5556353999999999
		-8.2838456054094473e-16 0.84190259999999806 2.0325360000000012
		-6.4669106624376994e-16 -4.2536391828483644e-16 2.2000000000000002
		;
createNode transform -n "F_IK_wrist_aim_space" -p "F_IK_wrist_CTL";
	rename -uid "B4E72B1B-4BA2-5147-4C9D-7C9B3CA4E72C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "F_IK_wrist_space_offGRP" -p "F_IK_wrist_aim_space";
	rename -uid "AD4F75D6-46C3-30D4-A684-7098FC8EBEB7";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" -0.018614958138226889 4.5795194356718429 0.0038132333483460457 ;
	setAttr ".r" -type "double3" -2.1699802898036298 0.42445712589591633 0.044864058968832513 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
createNode transform -n "F_IK_wrist_space_spcGRP" -p "F_IK_wrist_space_offGRP";
	rename -uid "822B1F01-43E7-AB16-30AD-B88787B1993E";
createNode transform -n "F_IK_wrist_space" -p "F_IK_wrist_space_spcGRP";
	rename -uid "84534591-45E3-F1A6-5678-85BBC35A3043";
createNode locator -n "F_IK_wrist_spaceShape" -p "F_IK_wrist_space";
	rename -uid "8DE11C04-4E10-E97B-1085-65811EE41019";
	setAttr -k off ".v";
createNode transform -n "F_IK_ball_HIK_offGRP" -p "F_IK_wrist_space";
	rename -uid "D1E4C6D5-4EBD-DE32-426C-CEAD68C56183";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999989 ;
	setAttr ".offset" -type "matrix" 0.99999999999999978 4.9629248566405559e-18 -1.8965067689023785e-16 0
		 1.4420769014228965e-18 0.99999999999999989 -2.1033522146218786e-17 0 2.215499376838348e-17 1.1058862159352145e-16 0.99999999999999989 0
		 -1.7763568394002505e-15 -1.1102230246251565e-15 0 1;
createNode transform -n "F_IK_ball_HIK_spcGRP" -p "F_IK_ball_HIK_offGRP";
	rename -uid "163748F3-480F-2D78-8A0A-6CAD9993469C";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode ikHandle -n "ikHandle3" -p "F_IK_ball_HIK_spcGRP";
	rename -uid "D4AE2AE5-4BB5-6711-C7A0-6286E7F973C3";
	setAttr ".t" -type "double3" -2.7716673400846048e-10 7.13942862720085e-05 -5.8896800879892908e-05 ;
	setAttr ".r" -type "double3" 0.36682853681319 -39.407319203328051 -89.999981552702693 ;
	setAttr ".s" -type "double3" 0.99999997501724491 0.99999999994995847 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -1.6569485866874694e-05 -0.001936703931673155 0.99999812932350263 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_toes_offGRP" -p "F_IK_wrist_space";
	rename -uid "CC368B8B-46ED-B2DA-EDFF-30B6B11042B2";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000001123986972 0.99999991149429801 0.99999997610701563 ;
	setAttr ".offset" -type "matrix" -1.122524116587561e-05 -0.3271762692356654 0.94496344560011036 0
		 0.99999991126344923 1.3640862050561222e-05 1.6601918939111104e-05 0 -1.8321869029597954e-05 0.94496331677768519 0.32717622441561645 0
		 4.0569045308913587e-05 1.1824749912369799 -3.4152706560900619 1;
createNode transform -n "F_IK_toes_spcGRP" -p "F_IK_toes_offGRP";
	rename -uid "9D7A7626-47D9-2342-41E8-509DD621BFFD";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 0 ;
createNode ikHandle -n "ikHandle4" -p "F_IK_toes_spcGRP";
	rename -uid "946108BF-4919-F720-6D16-8EA8407928DE";
	setAttr ".t" -type "double3" 3.6141828709296568 1.0266445471529551e-09 -1.3036567914070929e-07 ;
	setAttr ".r" -type "double3" -0.0010497036872594225 -0.10178956180527497 0.00064504591715971928 ;
	setAttr ".s" -type "double3" 0.99999987634694898 1.0000000884566962 1.0000000351963667 ;
	setAttr ".sh" -type "double3" -1.6375400185764307e-10 4.5122375985809187e-08 -2.7121353226259421e-10 ;
	setAttr ".pv" -type "double3" 0.94559510906539035 5.3060795854239578e-09 0.32534551405281276 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_wrist_upVec" -p "F_IK_wrist_space";
	rename -uid "F18FE1A2-4DB5-1F89-FCFE-28AF2C7A6E11";
	setAttr ".t" -type "double3" 5.0149187335882859 -4.5814882082128987 -0.14031934237416621 ;
	setAttr ".r" -type "double3" 2.0594095074060412 -0.42147551289646024 -0.061649804715152537 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
createNode orientConstraint -n "F_IK_wrist_aim_space_orientConstraint1" -p "F_IK_wrist_aim_space";
	rename -uid "1A311DCA-4D57-7434-B5E2-F6953734F49E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_IK_wrist_HIK_aim_space_01W0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "F_IK_wrist_HIK_aim_space_02W1" -dv 
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
	setAttr ".lr" -type "double3" 0.0084064051117150856 2.220111288918422e-05 -1.3390259105972162e-06 ;
	setAttr ".rsrr" -type "double3" 0.11096697536063686 -0.00095087604771596033 0.00077931747371000055 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "F_IK_wrist_HIK_aim_space_01" -p "F_IK_wrist_CTL";
	rename -uid "0A533EE0-4210-00DA-ACF4-699DDD3193AF";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_01_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_01";
	rename -uid "69C0AAFC-447D-5E24-A02B-399DA74DE26C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_shoulderW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -6.42865792700022 -2.1738628133563444e-05 -0.13929470681936479 ;
	setAttr ".rsrr" -type "double3" 0.11096697535925171 -0.0009508760477166862 0.0007793174737012119 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_wrist_HIK_aim_space_02" -p "F_IK_wrist_CTL";
	rename -uid "A72DF625-4C80-F16B-5597-37BCDC33AEE7";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_02_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_02";
	rename -uid "63DDE6D3-4C9F-9E8A-0D85-7E944D5DE7DF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_shoulder_aimW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -0.045982967612595613 -0.42450193417577486 -0.23290250936992599 ;
	setAttr ".rsrr" -type "double3" 0.11096697536202153 -0.00095087604771484815 0.0007793174737184865 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_toes_CTL_offGRP" -p "F_IK_ball";
	rename -uid "1DD9E41D-484D-44F8-0622-5594F0D7E977";
	setAttr ".t" -type "double3" -2.7219027032288068e-10 3.4425292410489305e-05 -2.8520831147460513e-05 ;
	setAttr ".r" -type "double3" 0.0018582069029984454 -70.902162945575128 -90.001965772588477 ;
	setAttr ".s" -type "double3" 0.99999998872355333 0.99999999995783906 1.0000000113186065 ;
	setAttr ".sh" -type "double3" -1.7648380828941762e-10 4.4669212600603299e-08 -3.1653020613024059e-10 ;
createNode transform -n "F_IK_toes_CTL_spcGRP" -p "F_IK_toes_CTL_offGRP";
	rename -uid "D3E1C748-4058-0F44-C4CE-E1A08480B5DE";
createNode transform -n "F_IK_toes_CTL" -p "F_IK_toes_CTL_spcGRP";
	rename -uid "8630F4CC-40C5-438A-F663-B2B49C68E3EE";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "F_IK_toes_CTLShape" -p "F_IK_toes_CTL";
	rename -uid "FA3920C0-4E84-DA2F-D0D6-EDA6311B84BA";
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
createNode transform -n "F_IK_foot_upVec" -p "F_IK_foot_CTL";
	rename -uid "DD4B26DE-4876-94D0-C0F2-4BB0787E26BC";
	setAttr ".t" -type "double3" 4.9999832928857222 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000191 1.0000000001270566 0.99999999987292443 ;
createNode transform -n "F_IK_shoulder_aim" -p "F_IK_foot_CTL";
	rename -uid "B9342E9A-488A-4B27-45E9-6984163F8E74";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildRot" -ln "rebuildRot" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildRotX" -ln "rebuildRotX" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "rebuildRotY" -ln "rebuildRotY" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "rebuildRotZ" -ln "rebuildRotZ" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" -0.018614769996910141 4.5795176277955818 0.0044861075223465718 ;
	setAttr ".r" -type "double3" -2.1615736153574381 0.4244564942249095 0.044923164098840028 ;
	setAttr ".s" -type "double3" 1.0000000701013958 0.9999999066744627 1.0000000022809146 ;
	setAttr ".sh" -type "double3" 9.6455228632383525e-10 -4.4653706036239818e-08 1.348710029468594e-10 ;
	setAttr ".offset" -type "matrix" 0.0032878678346197044 0.99996794608163686 0.007321160260186671 0
		 -0.99924647245587694 0.0035684486658097052 -0.038647106489732172 0 -0.038671977810439989 -0.0071886205031055197 0.99922610484524432 0
		 -2.6645352591003757e-15 0 7.1054273576010019e-15 1;
createNode transform -n "IK_wrist_aim_02" -p "F_IK_shoulder_aim";
	rename -uid "17F72202-4367-437B-7124-30AE4549F019";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5 6.173900325234301e-09 0 ;
	setAttr ".s" -type "double3" 1.0000000000068536 0.99999999991385691 1.0000000000792879 ;
createNode locator -n "IK_wrist_aim_02Shape" -p "IK_wrist_aim_02";
	rename -uid "DE37BE1F-4868-0599-27DC-84A1F47F18CD";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_aim_01_offGRP" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "2DD2BDF0-4FDA-5456-01C7-A6B840C647FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.073779620813175129 30.157042877318151 3.4024093980083592 ;
	setAttr ".r" -type "double3" 4.1400102720045335e-06 0 0 ;
	setAttr ".s" -type "double3" 0.99999993653098629 0.99999997611884706 1.0000000160150011 ;
	setAttr ".sh" -type "double3" -1.374294140973877e-09 -1.6453843262042158e-09 2.0616827675848184e-07 ;
createNode transform -n "IK_wrist_aim_01_spcGRP" -p "IK_wrist_aim_01_offGRP";
	rename -uid "38AF4303-407B-0698-31B0-7296AB7CA584";
	setAttr ".t" -type "double3" 4 -8.4523057846777332e-15 -3.5527136788004997e-15 ;
createNode transform -n "IK_wrist_aim_01" -p "IK_wrist_aim_01_spcGRP";
	rename -uid "7DC2C965-4788-BBF0-6504-ADBA9DCFD724";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
createNode locator -n "IK_wrist_aim_01Shape" -p "IK_wrist_aim_01";
	rename -uid "40B7E51E-48E8-5119-7E8A-33BEC35749C5";
	setAttr -k off ".v";
createNode transform -n "poleVec_CTL_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "BC77D99B-4DC0-0E69-BEE9-EEB9710D7F00";
	setAttr ".t" -type "double3" 11.964648055106839 0.0024318457687506623 -0.09674286897485862 ;
	setAttr ".r" -type "double3" 0.033486879914301423 -36.230992471850698 -0.0083644218628579556 ;
	setAttr ".sh" -type "double3" 1.6378709506112675e-08 4.3758846258862413e-08 4.1213463893951901e-08 ;
createNode transform -n "poleVec_CTL_follow_GRP" -p "poleVec_CTL_offGRP";
	rename -uid "B8635381-496F-F8CC-3029-E69AF6043A6C";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode transform -n "poleVec_CTL_spcGRP" -p "poleVec_CTL_follow_GRP";
	rename -uid "DC2D1D2F-4EBF-DE15-E50D-B28ED2121CDD";
	setAttr ".t" -type "double3" -5.7623499216674645e-07 2.1135072643119202e-06 -24.999999717115145 ;
	setAttr ".s" -type "double3" 1.0000000224337573 0.99999998888163488 0.99999998868460549 ;
	setAttr ".sh" -type "double3" 8.0067073892273867e-10 2.3049398956053739e-08 -8.4540291715809198e-08 ;
createNode transform -n "poleVec_CTL" -p "poleVec_CTL_spcGRP";
	rename -uid "1367DB39-4905-B146-6853-248AB5B09D02";
	addAttr -ci true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "resetAttr" -ln "resetAttr" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.7763568394002505e-14 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow" 10;
	setAttr -k on ".resetAttr" -type "string" "follow";
createNode nurbsCurve -n "poleVec_CTLShape" -p "poleVec_CTL";
	rename -uid "75BFDD6E-4B14-E61B-DC40-38AD58A6B714";
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
createNode transform -n "poleVec_input_space" -p "poleVec_CTL_offGRP";
	rename -uid "716B369A-4C7E-A993-1A29-3994E6A725FA";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode parentConstraint -n "poleVec_input_space_parentConstraint1" -p "poleVec_input_space";
	rename -uid "ADF673AC-42A0-17E9-E4FB-05BA1ADFC5CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "input_B_elbowW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.8364553535701838e-31 2.7432512904921081e-06 
		0 ;
	setAttr ".rst" -type "double3" -1.0658141036401503e-14 -2.6645352591003757e-15 3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "poleVec_input_space_aimConstraint1" -p "poleVec_input_space";
	rename -uid "2F836D17-429C-CE19-E46F-4185287854A1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "input_F_elbowW0" -dv 1 -at "double";
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
createNode transform -n "poleVec_aim_space" -p "poleVec_CTL_offGRP";
	rename -uid "93E3A204-4715-31E4-DE92-90BB23206C59";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode parentConstraint -n "poleVec_aim_space_parentConstraint1" -p "poleVec_aim_space";
	rename -uid "214E27D6-4983-A4E6-8265-15B22CD1D314";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_IK_scapula_aim_spaceW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.8830885882525248 -18.53268055688741 -0.21597141470972936 ;
	setAttr ".tg[0].tor" -type "double3" -0.4394987622572657 -8.5190367710687376 -89.753575520729413 ;
	setAttr ".lr" -type "double3" 7.9513867036587919e-16 -7.9513867036587919e-16 -4.9696166897867449e-17 ;
	setAttr ".rst" -type "double3" 0 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-16 -7.9513867036587919e-16 -4.9696166897867449e-17 ;
	setAttr -k on ".w0";
createNode transform -n "FK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "595ADA21-4ABF-D52E-49D5-4AB4F7CC3DA4";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "B5320EF9-4009-2A18-234E-7682C8FBF7A2";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "D86A3949-4627-137D-6B9D-0B9AAB75578B";
createNode transform -n "FK_scapula_space_ivsScale" -p "FK_scapula_space";
	rename -uid "0800DC25-48F1-6A5C-24BE-BA8DF254CCD3";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space_ivsScale";
	rename -uid "A96700F8-45CF-88F1-4B62-23B41880B8E5";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "DD3ADAE4-407A-BBD0-9EDC-DBA4436E5EFD";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "CC586BD0-4BBD-DB04-28F2-41A065AB7783";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "39B4542E-4511-55AE-1C79-EDB01736EFEB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489120928 3.1657909645605455 
		-3.9494025894518061 1.5208811495611016e-14 4.4771045177197264 -4.0594246889894417e-14 
		0.78361162489123903 3.1657909645605447 3.949402589451728 1.1081941875544024 3.8203347043845097e-15 
		5.585298705274071 0.78361162489123903 -3.1657909645605424 3.949402589451728 1.5387677388538157e-14 
		-4.4771045177197291 -3.9692762789541649e-14 -0.78361162489120928 -3.1657909645605424 
		-3.9494025894518061 -1.1081941875543737 2.9776996532734011e-15 -5.5852987052741581 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_shoulder_CTL_ivsScale" -p "FK_shoulder_CTL";
	rename -uid "225551AC-4541-599E-F1EA-1486E5BA7330";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL_ivsScale";
	rename -uid "C2BA3523-4B3A-F9EF-342F-E08352637923";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "DAD55CA6-4C8F-6FAB-6922-C78F1BAEE038";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "63703518-4B80-74C5-AC73-B9912B0F57FF";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "5878F17C-4E21-4360-491E-F694B8A43F76";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122449 2.507557199651917 
		-3.2911688245431394 -6.7857323231109109e-17 3.5462214001740411 -2.8500075757065798e-16 
		0.78361162489122449 2.5075571996519166 3.2911688245431394 1.1081941875543877 3.0260076866411964e-15 
		4.6544155877284279 0.78361162489122449 -2.5075571996519148 3.2911688245431394 1.1100856969603222e-16 
		-3.546221400174042 4.662359927233347e-16 -0.78361162489122449 -2.5075571996519148 
		-3.2911688245431394 -1.1081941875543877 2.3585739827908124e-15 -4.6544155877284279 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_B_elbow_CTL_ivsScale" -p "FK_B_elbow_CTL";
	rename -uid "6BF040F7-4871-AD05-FF69-58837DF7F06F";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL_ivsScale";
	rename -uid "E69C9D1A-4AF9-866C-0204-79A249510D41";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "90553897-4CB6-42BE-33BD-B2A82F3FB279";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "0D5C6EAF-40EF-6460-3756-E581153A37B4";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "85A2A7A9-4D25-55DB-4242-49A441D02A82";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122471 1.5202065522889727 
		-2.3038181771802 -9.560357429312334e-16 2.1498967238555124 -2.8107450842178277e-15 
		0.78361162489122382 1.5202065522889734 2.3038181771801942 1.1081941875543868 -1.6116151084102595e-15 
		3.2580909114098997 0.78361162489122382 -1.5202065522889747 2.3038181771801942 -7.771698500040926e-16 
		-2.1498967238555124 -2.2848793590120329e-15 -0.78361162489122471 -1.5202065522889738 
		-2.3038181771802 -1.1081941875543875 -2.0162467913695526e-15 -3.2580909114098984 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_elbow_CTL_ivsScale" -p "FK_F_elbow_CTL";
	rename -uid "1D4787F7-44CC-072C-D91C-F1B178F2BAFF";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL_ivsScale";
	rename -uid "9DD228DC-46D9-6BA9-6ACD-9B93D764E541";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "11F55ED2-4753-9035-D0D2-F3A480E1648D";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "FDFAB1BB-4059-FFF3-F58A-C1BF6E0891D8";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "DD447564-43B3-5CA4-E2EF-029A7E0A114F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489121816 1.5202065522889696 
		-2.3038181771801982 5.1546317846056251e-15 2.149896723855508 -1.9758573696997104e-15 
		0.78361162489122993 1.5202065522889703 2.3038181771801951 1.1081941875543933 -3.334681242628502e-15 
		3.2580909114098975 0.78361162489122993 -1.5202065522889763 2.3038181771801951 5.3334976775327602e-15 
		-2.1498967238555178 -1.4499916444939152e-15 -0.78361162489121816 -1.5202065522889761 
		-2.3038181771801982 -1.1081941875543815 -3.7393129255877975e-15 -3.258090911409901 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_wrist_CTL_ivsScale" -p "FK_F_wrist_CTL";
	rename -uid "CB9F4112-469A-6DC7-9E3C-28A747F56CBC";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 5.3290705182007514e-15 ;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL_ivsScale";
	rename -uid "74394F06-4320-0F8F-41A2-84ABEEF52162";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "2E5C890C-4427-E6B9-F2F1-1AA9A1524451";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "854C5689-4AE5-864E-FE0D-4A9A667BE3E4";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "66074577-4088-08BB-801C-9EA4126AF0B2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.3282712403633923e-15 2.3038181771801942 -2.3038181771801982
		5.2224891078367339e-15 3.2580909114098957 -1.9758573696997104e-15
		5.440092820663267e-15 2.3038181771801947 2.3038181771801951
		5.1070259132757201e-15 -3.2772322602532537e-15 3.2580909114098975
		5.440092820663267e-15 -2.3038181771802009 2.3038181771801951
		5.2224891078367276e-15 -3.2580909114099059 -1.4499916444939152e-15
		6.3282712403633923e-15 -2.3038181771802004 -2.3038181771801982
		6.6613381477509392e-15 -3.890436975665793e-15 -3.258090911409901
		6.3282712403633923e-15 2.3038181771801942 -2.3038181771801982
		5.2224891078367339e-15 3.2580909114098957 -1.9758573696997104e-15
		5.440092820663267e-15 2.3038181771801947 2.3038181771801951
		;
createNode transform -n "arm_switch_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "8C480CCD-4750-1727-AE36-94B7F1D9153F";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "DD89C2ED-4E1B-46A6-FE85-E593D5BDEA07";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "B1C99AA2-4E65-8D18-10DC-3685E4363DEB";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "arm_switch_CTLShape" -p "arm_switch_CTL";
	rename -uid "6F370B0C-49D4-8AEC-AFDD-6B99DB06FB2B";
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
createNode transform -n "arm_output" -p "arm_GRP";
	rename -uid "CA8E5909-495D-0A38-6AC8-14AA3BC0CB7C";
createNode joint -n "scapula" -p "arm_output";
	rename -uid "0AE3268F-4E70-BEBF-9154-47AF7501AFB5";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2393512725830087 40.812831878662109 14.152165412902832 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "shoulder" -p "scapula";
	rename -uid "E30D41BF-4610-31ED-29E7-6EAE6B143DBD";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" -0.00084993439039065947 -0.94572613304137876 -0.32496371068318641 0
		 0.99988660578705413 0.0040822722865961943 -0.014495617330534881 0 0.015035474057453759 -0.32493917299342728 0.94561539728921973 0
		 6.131918907165522 32.827532283307441 19.585514834729398 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
	setAttr ".liw" yes;
createNode joint -n "B_elbow" -p "shoulder";
	rename -uid "02273616-4C7B-A77F-1AFA-7A9EB926B813";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.0043004667597357589 -0.99987741862522994 0.015053324785649802 0
		 0.99988659963311088 0.0040822722614712731 -0.014495617241319559 0 0.014432389454057127 0.015113956570198983 0.99978164849407736 0
		 6.1224398711465104 22.280152394293935 15.961300177556662 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
	setAttr ".liw" yes;
createNode joint -n "F_elbow" -p "B_elbow";
	rename -uid "81BD73D2-4647-A49A-5549-BA898A2416CA";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.0040647546198600846 -0.99999174444555394 1.0015585220554679e-08 0
		 0.99986866758645154 0.0040642541813794902 -0.015687298629525347 0 0.015687169273517574 6.37750346280299e-05 0.99987694555292417 0
		 6.1870846754343525 7.2499506264402154 16.187582038709117 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
	setAttr ".liw" yes;
createNode joint -n "wrist" -p "F_elbow";
	rename -uid "B3CDA079-4CF3-EE5A-E074-178812CA2163";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.2090216449517355e-09 -0.77262754525373967 0.63485951873867463 0
		 0.99997950889902987 0.0040647038035248667 0.0049467689121796971 0 -0.0064025258013377852 0.63484650771783435 0.77261171075722979 0
		 6.2056994403799308 2.6704333985583721 16.187582030586924 1;
	setAttr ".liw" yes;
createNode joint -n "toe" -p "wrist";
	rename -uid "A1389049-4361-8083-C88D-00ACDC0260A0";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.4264964751965759e-09 -0.32548434718921404 0.94554742894126886 0
		 1.0000000076139905 -5.7668445366254595e-10 1.3101348764546494e-09 0 1.1885399088529258e-10 0.94554740967564044 0.32548434055743614 0
		 6.2056994382036024 1.1763863287781027 17.415223499195982 1;
	setAttr ".liw" yes;
createNode joint -n "tiptoe" -p "toe";
	rename -uid "73CBC0DF-4CE5-5B25-865A-7CB5074CE41C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999998623544251 -5.9477194556738798e-10 1.3626797335087274e-09 0
		 5.9477191898904237e-10 0.99999999693967512 -2.1310307796174044e-08 0 -1.3626798462024035e-09 2.1310307296573683e-08 0.99999999000123574 0
		 6.2056994334685038 1.4970899386845815e-07 20.832681790400944 1;
	setAttr ".liw" yes;
createNode decomposeMatrix -n "IK_shoulder_space_DCMX";
	rename -uid "FDD6C189-4CDF-A440-11F4-E7B05DF9B7B7";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "FA4CD2D5-4C20-985C-BAA3-B999FD02839A";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_CTLVal_MULT";
	rename -uid "EC30E7CD-4580-432A-AE2D-F280E3C996E0";
createNode multiplyDivide -n "loarm_stretch_output_mul_CTLlVal_MULT";
	rename -uid "4F778981-4F3F-3AE3-EACE-2CAAF4650E7F";
createNode plusMinusAverage -n "soft_armLen_PMA";
	rename -uid "B46F0F3B-4D9C-D36D-B669-D18DAC1A20D3";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "327572A2-4828-B4B9-2A1E-6599B2618DB0";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "55FF4700-4CFE-EA9A-0617-069FFAE93136";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "8C660401-4643-A8F5-C1EE-CCA35D97196D";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midarmLen";
	rename -uid "69D3518D-4460-269F-02FB-BEB300587106";
createNode multMatrix -n "input_F_elbow_local_MTMX1";
	rename -uid "0E8A6533-4EB3-E74B-60D0-168752887D5D";
	setAttr -s 2 ".i";
createNode distanceBetween -n "upIKLen";
	rename -uid "BA82153B-44A6-17D8-7881-D8B0FAD0B626";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "FAB8BFE0-4A04-77F6-DDE9-5E8A9E2EF03B";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "7AC22C32-4171-9770-CF2C-8DB335CC5379";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val_MULT";
	rename -uid "12AA0A7D-4257-E117-F048-22B6C52C85EF";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "loIKLen";
	rename -uid "F8E31C23-4A30-64E4-D452-399046D39740";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "A1462200-41DF-4B37-A033-689ABB56F270";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "F06E1B79-4A91-6C59-C8FD-70844AA84DCA";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "loarm_soft_Len_PMA";
	rename -uid "59C4D996-41F3-7AA2-C84A-E58F270D3281";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loarmLen";
	rename -uid "EC157243-4C2A-0DF2-8D31-DBB05B517430";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "522117D9-4147-6C18-C54A-F5A36E87A519";
	setAttr -s 2 ".i";
createNode condition -n "CTLlen_COND";
	rename -uid "8DF05EAC-4D7F-B1C2-1997-7B9E324CE2C6";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "A1E1767A-4D09-984B-A91B-128CDB89901A";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len_SUBT";
	rename -uid "540CB7FC-40A0-1C4F-599B-708C06A980A9";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV_MULT";
	rename -uid "3BB545F2-4531-0774-3B67-DF89FBFE3B55";
createNode multiplyDivide -n "power_val_POW";
	rename -uid "FEAE0850-48B5-7AA9-041D-6BAA76700644";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val_MULT";
	rename -uid "6E868BF2-4BB1-5718-557B-538D3F687763";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_uparm_softikV_DIVD";
	rename -uid "688998F3-4A0A-00E5-97FE-3F8076C13700";
	setAttr ".op" 2;
createNode plusMinusAverage -n "CTLLen_minue_dif_SUBT";
	rename -uid "8523DAE3-4A88-4F7A-0CF9-6682369A5C6E";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV_SUBT";
	rename -uid "B673E9E1-48BA-E864-6516-1194AA4C2FB4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "8D875153-45EA-818D-C7A5-EE85E4C2E043";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_CTLlen_COND";
	rename -uid "14AF5280-41D4-D6B5-C67B-3B80FFAE5FE9";
	setAttr ".op" 2;
createNode condition -n "loarm_softikV_COND";
	rename -uid "5B0B5DF8-4362-3971-5EDD-CB910F98AFB0";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_result_softik_len_SUBT";
	rename -uid "2B4B892A-47FB-0866-1D4B-CCA08E90297C";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_mult_softikV_MULT";
	rename -uid "10F9448A-4F9E-7C72-B711-2BB78623A8DD";
createNode multiplyDivide -n "loarm_power_val_POW";
	rename -uid "BF7DD8F7-49E1-05E7-4CC9-5294582A5E29";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "loarm_negate_val_MULT";
	rename -uid "9A24478B-4542-2CF2-B1D9-5E8FDE313BBF";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_loarm_softikV_DIVD";
	rename -uid "A475C496-4746-A93B-7564-EEB780289B22";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_ctrlLen_minue_dif_SUBT";
	rename -uid "58D0D730-478A-971C-9A03-5FBA9709927A";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_armlen_minus_softikV_SUBT";
	rename -uid "0C991445-48FC-AD09-CA00-9E8D7FAA1AF3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "midarm_plus_stretch_PMA";
	rename -uid "6575AB5D-4BA1-6DE4-C41B-4F8B42FA1740";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_midarm_MULT";
	rename -uid "02B6C530-4DF0-E91E-4019-5EB91F64070A";
createNode multiplyDivide -n "stretched_midarmLen_MULT";
	rename -uid "592C6AA5-4A96-FEDE-B2B8-2E92DBF79017";
createNode plusMinusAverage -n "stretchedLen_SUBT";
	rename -uid "6EBF9D09-4AE1-5D82-1122-FE820BDC622C";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "midarm_ratio3_DIVD";
	rename -uid "353903C5-4BC2-DCEB-6E27-0DB9CE46102D";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen_PMA";
	rename -uid "2671D029-4642-E506-5D2C-37BCD3451AEA";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch_PMA";
	rename -uid "7F2C1C2D-417C-DB02-E901-19ABD51BCC68";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm_MULT";
	rename -uid "425F4FDA-4671-9149-A209-7F920535F59E";
createNode multiplyDivide -n "stretched_uparmLen_MULT";
	rename -uid "831E7523-486E-CD72-F754-308F236CF3ED";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "ACE3DC9B-43E9-A59F-549C-E78BE85AE531";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_plus_stretch_PMA";
	rename -uid "EC152403-49AC-C726-0B0D-A2BCC511BC3D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_stretchCtrl_arm_MULT";
	rename -uid "208E9495-4AF1-B626-FF28-9F8A0B251120";
createNode multiplyDivide -n "loarm_stretched_arm_MULT";
	rename -uid "8866EC45-4DC4-748E-33B5-0B8FFF5A9514";
createNode plusMinusAverage -n "loarm_stretchedLen_SUBT";
	rename -uid "D98E8DDF-4FC6-FB90-4B84-94BE248C3318";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio_DIVD";
	rename -uid "BE2114B2-40BA-8346-F3AB-A490672D577E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_stretch_armLen_PMA";
	rename -uid "9CDF9703-4E96-A20C-6593-DB8E123574DA";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "C703D1B0-4A2A-FE8E-7D23-9CA58D4BFD23";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "76CEDF05-4292-1A37-FF55-078D26FC2CD2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "DED0E35B-4534-B9FF-FC85-C4874B70BF30";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "C6866E75-416F-7404-09C4-F58F72CC8A0A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_wrist_space_scale_DCMX";
	rename -uid "699B7F35-469F-B74E-BFB8-008E26B47FCF";
createNode decomposeMatrix -n "F_wrist_CTL_scale_DCMX";
	rename -uid "29C9F2A7-41EC-4143-9E3B-389FFB6470CC";
createNode decomposeMatrix -n "F_ball_CTL_scale_DCMX";
	rename -uid "8426FFA0-4033-549B-E04E-D28F17C47A22";
createNode decomposeMatrix -n "F_IK_foot_IKH_offGRP_local_DCMX";
	rename -uid "FB3788CA-4267-FB3F-77F1-8EAA3FB05263";
createNode multMatrix -n "F_IK_foot_IKH_offGRP_local_MTMX";
	rename -uid "B4E480F6-4C6C-9E00-471E-FB812EE1F801";
	setAttr -s 2 ".i";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "208BF788-43DB-2A1B-E998-7FB73FAF7AF2";
createNode decomposeMatrix -n "F_IK_wrist_IKH_offGRP_local_DCMX";
	rename -uid "456865F6-434B-A783-5C62-F9AA1099AB66";
createNode multMatrix -n "F_IK_wrist_IKH_offGRP_local_MTMX";
	rename -uid "42F2257E-46DB-F4D1-B2ED-A6B0E2955584";
	setAttr -s 2 ".i";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "D95A8A7E-4DF2-BD6F-B356-97A8D1D250B1";
createNode decomposeMatrix -n "F_IK_B_elbow_aim_space_local_DCMX";
	rename -uid "2AF219CE-4867-E5EB-34EF-FDA99A4CAEF2";
createNode multMatrix -n "F_IK_B_elbow_aim_space_local_MTMX";
	rename -uid "AE90542C-4309-6C80-895A-8C9F9238B38A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_shoulder_CTL_local_DCMX";
	rename -uid "FD88C98E-4EC3-AC99-70A0-D19FB6074068";
createNode multMatrix -n "FK_shoulder_CTL_local_MTMX";
	rename -uid "08886837-4CB2-158A-E1D6-418B1E4F8FA8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_elbow_CTL_local_DCMX";
	rename -uid "977F27B4-4013-8F90-F8FC-F28F684C9831";
createNode multMatrix -n "FK_B_elbow_CTL_local_MTMX";
	rename -uid "A5FC41A9-4750-903D-4828-25A3691CB61E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_elbow_CTL_local_DCMX";
	rename -uid "B28B7AD5-4597-5987-5188-2FA773D58045";
createNode multMatrix -n "FK_F_elbow_CTL_local_MTMX";
	rename -uid "232E3542-4409-92D0-0CE0-B1AECF00AF79";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_wrist_CTL_local_DCMX";
	rename -uid "FB55CC0D-4A5F-5570-6149-BF9BFDAF096E";
createNode multMatrix -n "FK_F_wrist_CTL_local_MTMX";
	rename -uid "0BD7906D-4BB5-67DA-1BD1-03BE99B974A4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_toe_CTL_local_DCMX";
	rename -uid "16C18A09-495D-0510-DA29-E29F4A3219DF";
createNode multMatrix -n "FK_F_toe_CTL_local_MTMX";
	rename -uid "668151BE-4757-0406-5875-63BAE77E0AF8";
	setAttr -s 2 ".i";
createNode condition -n "arm_mirror_scale_COND";
	rename -uid "3C2C22E1-4AA7-3D9E-7EB7-68A45071B487";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 1 1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "BD34DFD2-42F6-5D14-63AE-D4A32B731828";
createNode decomposeMatrix -n "scapula_CTL_inverse_DCMX";
	rename -uid "18CB3816-484D-5AD7-E78A-4AA8A0776012";
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "655D0F3B-4BD7-1B1B-E86A-B1AA023B495C";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "3BB3D450-47BC-26B4-EA9A-21AAAEB886F5";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion12";
	rename -uid "75A82F10-4010-AE6B-FC13-1687C9B8BE69";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "arm_mirror_rotate_COND";
	rename -uid "E4DE2C65-4FDF-B94B-5C57-2A80F22413FF";
	setAttr ".cf" -type "float3" 0 -180 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "168EF79F-422B-ADD1-C056-FAB2239D53E2";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition";
	rename -uid "FE8F9ABD-413E-9498-D969-24874A902F5D";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "39096AD0-46C6-1DF1-5731-B9862B55C067";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "A9C8C8C0-4580-6CAE-FFFF-09938933131D";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition";
	rename -uid "282619E1-42DA-9EE9-CAD6-9BB4F3E3D2C6";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition";
	rename -uid "E5BD63ED-4AB8-8655-7B1D-819C716A406D";
createNode unitConversion -n "unitConversion3";
	rename -uid "969BE2AE-4FFA-0592-6D73-3FBA8D864C56";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "38CFC6A2-40F3-3333-30ED-5F93E98FDFD1";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "roll_angle_SUBT";
	rename -uid "C9273FDF-4CA4-49AF-8C11-D0AD7975E66D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion6";
	rename -uid "C2185A68-4B97-AB79-8690-6A9960D4769D";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "E72BE210-44ED-7C13-73AF-FA982148591D";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "023A07A6-4810-5196-C109-5AAFFFDD6412";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "895F7E59-4711-2155-F3BB-69A1F2CDC104";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon";
	rename -uid "B74A6D87-439B-831C-C0EC-D79EBC61AAA5";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition";
	rename -uid "8CDE9892-400D-4D87-8FA5-4E984C7EEA1B";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball_SUBT";
	rename -uid "9E30EFDF-4867-285E-D94E-FD9FE06E7F9A";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap";
	rename -uid "AE966889-46BC-DC66-19E3-E08AC59F4ECA";
	setAttr ".imx" 90;
	setAttr -s 3 ".vl[0:2]"  0 0 2 1 1 3 1 1 2;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "after_ball_start_SUBT";
	rename -uid "4F6C22FB-4407-EC8D-CFD9-4DBD9D4C860A";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "1AC5C897-41B5-0F18-E36E-4CBC90961698";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "E2730E2B-4D1F-7FB7-FE79-2E8B0E04FF04";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_wrist_local_DCMX1";
	rename -uid "B345E991-45BF-0E6E-A78B-5C8C0E80364D";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "E165DD82-472E-F961-C8E6-5E9F39BBC7D1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "3989E96D-4E5D-A708-3D0A-CAB3894BCD37";
createNode multMatrix -n "input_F_elbow_local_MTMX2";
	rename -uid "A55905B1-4A68-517C-DB8F-96A2770DC6FA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX";
	rename -uid "C527BDB8-4B07-C5DB-FAC7-ED89499D69F6";
createNode multMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX";
	rename -uid "CF72A00A-41BC-4E0B-7C23-4BB8F25C2361";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "F_IK_toe2F_IK_toes_offGRP_DCMX";
	rename -uid "3DBA7A1F-45A9-6ADE-9205-59B3D15F4B8D";
createNode multMatrix -n "F_IK_toe2F_IK_toes_offGRP_MTMX";
	rename -uid "8D18F3CE-4BDD-1E98-E67C-2692FB826BD1";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion7";
	rename -uid "168DB9C5-498C-D918-EC37-289D62E3D7D4";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS";
	rename -uid "F95B2996-4216-9B7F-42AB-FEB500D80845";
createNode decomposeMatrix -n "input_F_elbow2F_IK_shoulder_aim_DCMX";
	rename -uid "45D3FCB8-4903-6FB2-FB2B-7C9DDD23055F";
createNode multMatrix -n "input_F_elbow2F_IK_shoulder_aim_MTMX";
	rename -uid "51730B1B-4D16-BE03-1112-90AC9025BC2E";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion9";
	rename -uid "B40DC564-4364-A779-C19D-DF9F119C2765";
	setAttr ".cf" 57.295779513082323;
createNode pairBlend -n "poleVec_follow_PRBL";
	rename -uid "8E246552-4D6D-1B48-C70D-E4AAD484E28B";
createNode unitConversion -n "unitConversion8";
	rename -uid "884BB9B4-4260-4F3E-86CA-81BBD78A765F";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIK_RVS";
	rename -uid "173DDA9F-4F17-5527-5071-6784701B6853";
createNode decomposeMatrix -n "FK_scapula_space_inverse_DCMX";
	rename -uid "3ADF42C8-47A5-C09E-D340-9CA5488A3C72";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "A467ADB0-484D-61CF-FC1B-F89A50D78720";
createNode decomposeMatrix -n "FK_shoulder_CTL_inverse_DCMX";
	rename -uid "3BDD5151-42A5-CFE2-7B5A-19A820F56C53";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "96B3B3E4-4F30-98B0-0717-04A64B346C85";
createNode decomposeMatrix -n "FK_B_elbow_CTL_inverse_DCMX";
	rename -uid "5F19AFBF-45DB-F6A1-A22E-DDBA8AF6B625";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "84A0DF69-4952-C8EE-BFB7-209BDEF74001";
createNode decomposeMatrix -n "FK_F_elbow_CTL_inverse_DCMX";
	rename -uid "6E857793-4F6E-9262-ED0C-87A3B0FA9F64";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "EB1141BC-4AF8-8239-953D-C8BE5143E7BD";
createNode decomposeMatrix -n "FK_F_wrist_CTL_inverse_DCMX";
	rename -uid "99A50C3A-466D-F7FE-CC48-65BADB2706BD";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "ABC67F63-4CA4-56B2-D486-17894A121CC3";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "399D1AE6-4088-60CC-8871-8997AE437FA0";
	setAttr -s 2 ".i";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "2BADFB9F-46E9-E1FB-0FA0-D0BD02F5567C";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "DD4FD304-4F5A-8339-9919-1DBE4AB0222A";
createNode blendColors -n "scapula_BLCL";
	rename -uid "7E70311E-4029-BA69-C222-DE93C62DF28E";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "702A955A-4E38-38CD-4BBA-6492D185F9A3";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "94049FAD-4B12-A1FE-8323-9EB2DF67B15C";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "134D81B8-444D-013A-248C-24B48629AECB";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "805FDFC0-4BD3-64E4-13E7-4694F5EEA204";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "342459C0-45A4-253A-F04B-7DA6D67A95A3";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "A76527C8-4637-9242-605C-849325D57A9E";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "60678686-4790-8C58-4992-BD8F52738C16";
createNode blendColors -n "wrist_BLCL";
	rename -uid "65403654-4DF7-54F5-13D0-32914B530452";
createNode pairBlend -n "toe_PRBL";
	rename -uid "B3A308C4-4BB2-ED7F-C6E6-45A493B98E1C";
createNode blendColors -n "toe_BLCL";
	rename -uid "6680851C-4035-8CEA-4C99-199BBC298C41";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "ACA06FB7-4E36-93F1-C8D7-FEA7A9E0292C";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "E60E812E-4BEB-63C1-BC76-BE87E173ECAE";
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
	setAttr -s 178 ".u";
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
connectAttr "F_IK_foot_IKH_stretched_space.reBuildMode" "arm_GRP.reBuildMode" -na
		;
connectAttr "F_IK_toe.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "F_IK_ball.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "F_IK_wrist.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "F_IK_wrist_space_offGRP.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "F_IK_shoulder_aim.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "input_scapula.input" "arm_GRP.input" -na;
connectAttr "input_shoulder.input" "arm_GRP.input" -na;
connectAttr "input_B_elbow.input" "arm_GRP.input" -na;
connectAttr "input_F_elbow.input" "arm_GRP.input" -na;
connectAttr "input_wrist.input" "arm_GRP.input" -na;
connectAttr "input_toe.input" "arm_GRP.input" -na;
connectAttr "input_tiptoe.input" "arm_GRP.input" -na;
connectAttr "poleVec_CTL.reBuildAttr" "arm_GRP.reBuildAttr" -na;
connectAttr "F_IK_foot_CTL.reBuildAttr" "arm_GRP.reBuildAttr" -na;
connectAttr "input_scapula.t" "motion_IK_arm_GRP.t";
connectAttr "input_scapula.r" "motion_IK_arm_GRP.r";
connectAttr "input_scapula.s" "motion_IK_arm_GRP.s";
connectAttr "arm_switch_CTL.FK_IK" "motion_IK_arm_GRP.v";
connectAttr "IK_shoulder_space_DCMX.ot" "IK_shoulder_space.t";
connectAttr "IK_shoulder_space_DCMX.or" "IK_shoulder_space.r";
connectAttr "IK_shoulder_space_DCMX.os" "IK_shoulder_space.s";
connectAttr "IK_upper_CTLaim_aimConstraint1.crx" "IK_upper_CTLaim.rx";
connectAttr "IK_upper_CTLaim_aimConstraint1.cry" "IK_upper_CTLaim.ry";
connectAttr "IK_upper_CTLaim_aimConstraint1.crz" "IK_upper_CTLaim.rz";
connectAttr "F_softIK_output.output_softik" "upper_softIK_output_LOC.tx";
connectAttr "stretch_output_mul_CTLVal_MULT.ox" "upper_stretch_output_LOC.tx";
connectAttr "IK_lower_CTLaim_aimConstraint1.crx" "IK_lower_CTLaim.rx";
connectAttr "IK_lower_CTLaim_aimConstraint1.cry" "IK_lower_CTLaim.ry";
connectAttr "IK_lower_CTLaim_aimConstraint1.crz" "IK_lower_CTLaim.rz";
connectAttr "F_softIK_output.output_extended_softik" "lower_softIK_output_LOC.tx"
		;
connectAttr "loarm_stretch_output_mul_CTLlVal_MULT.ox" "lower_stretch_output_LOC.tx"
		;
connectAttr "IK_lower_CTLaim.pim" "IK_lower_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lower_CTLaim.t" "IK_lower_CTLaim_aimConstraint1.ct";
connectAttr "IK_lower_CTLaim.rp" "IK_lower_CTLaim_aimConstraint1.crp";
connectAttr "IK_lower_CTLaim.rpt" "IK_lower_CTLaim_aimConstraint1.crt";
connectAttr "IK_lower_CTLaim.ro" "IK_lower_CTLaim_aimConstraint1.cro";
connectAttr "F_IK_wrist.t" "IK_lower_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_IK_wrist.rp" "IK_lower_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_IK_wrist.rpt" "IK_lower_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_IK_wrist.pm" "IK_lower_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lower_CTLaim_aimConstraint1.w0" "IK_lower_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_space_upVec.wm" "IK_lower_CTLaim_aimConstraint1.wum";
connectAttr "IK_upper_CTLaim.pim" "IK_upper_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upper_CTLaim.t" "IK_upper_CTLaim_aimConstraint1.ct";
connectAttr "IK_upper_CTLaim.rp" "IK_upper_CTLaim_aimConstraint1.crp";
connectAttr "IK_upper_CTLaim.rpt" "IK_upper_CTLaim_aimConstraint1.crt";
connectAttr "IK_upper_CTLaim.ro" "IK_upper_CTLaim_aimConstraint1.cro";
connectAttr "F_IK_wrist_space.t" "IK_upper_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_IK_wrist_space.rp" "IK_upper_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_IK_wrist_space.rpt" "IK_upper_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_IK_wrist_space.pm" "IK_upper_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upper_CTLaim_aimConstraint1.w0" "IK_upper_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_shoulder_space_upVec.wm" "IK_upper_CTLaim_aimConstraint1.wum";
connectAttr "soft_armLen_PMA.o1" "F_softIK_input.uparmLen";
connectAttr "upIKLen.d" "F_softIK_input.CTLLen";
connectAttr "IK_negate_val_MULT.ox" "F_softIK_input.softik_CTL_value";
connectAttr "loIKLen.d" "F_softIK_input.loarmIK_len";
connectAttr "loarm_soft_Len_PMA.o1" "F_softIK_input.loarm_len";
connectAttr "CTLlen_COND.ocr" "F_softIK_output.output_softik";
connectAttr "loarm_CTLlen_COND.ocr" "F_softIK_output.output_extended_softik";
connectAttr "F_softIK_output.output_softik" "F_stretchIK_input.softik_len";
connectAttr "IK_negate_val_MULT.oy" "F_stretchIK_input.stretch_ctrl_value";
connectAttr "uparmLen.d" "F_stretchIK_input.uparm_len";
connectAttr "upIKLen.d" "F_stretchIK_input.ctrl_len";
connectAttr "midarmLen.d" "F_stretchIK_input.loarm_len";
connectAttr "loarmLen.d" "F_stretchIK_input.extendedarm_len";
connectAttr "F_softIK_output.output_extended_softik" "F_stretchIK_input.extended_softik_len"
		;
connectAttr "loIKLen.d" "F_stretchIK_input.extended_ctrl_len";
connectAttr "midarm_plus_stretch_PMA.o1" "F_stretchIK_output.loarm_stretched";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "F_stretchIK_output.stretch_ctrl_value"
		;
connectAttr "stretchedLen_SUBT.o1" "F_stretchIK_output.stretched_len";
connectAttr "uparm_plus_stretch_PMA.o1" "F_stretchIK_output.uparm_stretched";
connectAttr "loarm_plus_stretch_PMA.o1" "F_stretchIK_output.extendedarm_stretched"
		;
connectAttr "loarm_stretchedLen_SUBT.o1" "F_stretchIK_output.expand_stretched_len"
		;
connectAttr "scapula_CTL_local_DCMX.ot" "IK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "IK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "IK_scapula.r";
connectAttr "input_scapula.r" "IK_scapula.jo";
connectAttr "IK_shoulder_CTL_local_DCMX.ot" "IK_shoulder.t";
connectAttr "IK_scapula.s" "IK_shoulder.is";
connectAttr "IK_shoulder_CTL.s" "IK_shoulder.s";
connectAttr "input_shoulder.r" "IK_shoulder.jo";
connectAttr "F_stretchIK_output.uparm_stretched" "IK_B_elbow.tx";
connectAttr "IK_shoulder.s" "IK_B_elbow.is";
connectAttr "input_B_elbow.r" "IK_B_elbow.jo";
connectAttr "F_stretchIK_output.loarm_stretched" "IK_F_elbow.tx";
connectAttr "IK_B_elbow.s" "IK_F_elbow.is";
connectAttr "F_wrist_space_scale_DCMX.os" "IK_F_elbow.s";
connectAttr "input_F_elbow.r" "IK_F_elbow.jo";
connectAttr "IK_F_elbow.s" "IK_wrist.is";
connectAttr "F_stretchIK_output.extendedarm_stretched" "IK_wrist.tx";
connectAttr "F_wrist_CTL_scale_DCMX.os" "IK_wrist.s";
connectAttr "input_wrist.r" "IK_wrist.jo";
connectAttr "IK_wrist.s" "IK_toe.is";
connectAttr "F_ball_CTL_scale_DCMX.os" "IK_toe.s";
connectAttr "input_toe.t" "IK_toe.t";
connectAttr "input_toe.r" "IK_toe.jo";
connectAttr "IK_toe.s" "IK_tiptoe.is";
connectAttr "input_tiptoe.t" "IK_tiptoe.t";
connectAttr "input_tiptoe.r" "IK_tiptoe.jo";
connectAttr "IK_tiptoe.tx" "effector4.tx";
connectAttr "IK_tiptoe.ty" "effector4.ty";
connectAttr "IK_tiptoe.tz" "effector4.tz";
connectAttr "IK_toe.tx" "effector3.tx";
connectAttr "IK_toe.ty" "effector3.ty";
connectAttr "IK_toe.tz" "effector3.tz";
connectAttr "IK_wrist.tx" "effector2.tx";
connectAttr "IK_wrist.ty" "effector2.ty";
connectAttr "IK_wrist.tz" "effector2.tz";
connectAttr "poleVec_CTLShape.wm" "annotationShape1.dom" -na;
connectAttr "IK_F_elbow.tx" "effector1.tx";
connectAttr "IK_F_elbow.ty" "effector1.ty";
connectAttr "IK_F_elbow.tz" "effector1.tz";
connectAttr "F_IK_scapula_aim_space_aimConstraint1.crx" "F_IK_scapula_aim_space.rx"
		;
connectAttr "F_IK_scapula_aim_space_aimConstraint1.cry" "F_IK_scapula_aim_space.ry"
		;
connectAttr "F_IK_scapula_aim_space_aimConstraint1.crz" "F_IK_scapula_aim_space.rz"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.ctx" "F_IK_scapula_aim_space.tx"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.cty" "F_IK_scapula_aim_space.ty"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.ctz" "F_IK_scapula_aim_space.tz"
		;
connectAttr "F_IK_scapula_aim_space.ro" "F_IK_scapula_aim_space_parentConstraint1.cro"
		;
connectAttr "F_IK_scapula_aim_space.pim" "F_IK_scapula_aim_space_parentConstraint1.cpim"
		;
connectAttr "F_IK_scapula_aim_space.rp" "F_IK_scapula_aim_space_parentConstraint1.crp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "F_IK_scapula_aim_space_parentConstraint1.crt"
		;
connectAttr "IK_scapula.t" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tt";
connectAttr "IK_scapula.rp" "F_IK_scapula_aim_space_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_scapula.rpt" "F_IK_scapula_aim_space_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_scapula.r" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tr";
connectAttr "IK_scapula.ro" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_scapula.s" "F_IK_scapula_aim_space_parentConstraint1.tg[0].ts";
connectAttr "IK_scapula.pm" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_scapula.jo" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tjo"
		;
connectAttr "IK_scapula.ssc" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tsc"
		;
connectAttr "IK_scapula.is" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tis"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.w0" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tw"
		;
connectAttr "F_IK_scapula_aim_space.pim" "F_IK_scapula_aim_space_aimConstraint1.cpim"
		;
connectAttr "F_IK_scapula_aim_space.t" "F_IK_scapula_aim_space_aimConstraint1.ct"
		;
connectAttr "F_IK_scapula_aim_space.rp" "F_IK_scapula_aim_space_aimConstraint1.crp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "F_IK_scapula_aim_space_aimConstraint1.crt"
		;
connectAttr "F_IK_scapula_aim_space.ro" "F_IK_scapula_aim_space_aimConstraint1.cro"
		;
connectAttr "F_IK_foot_CTL.t" "F_IK_scapula_aim_space_aimConstraint1.tg[0].tt";
connectAttr "F_IK_foot_CTL.rp" "F_IK_scapula_aim_space_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_foot_CTL.rpt" "F_IK_scapula_aim_space_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_foot_CTL.pm" "F_IK_scapula_aim_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_scapula_aim_space_aimConstraint1.w0" "F_IK_scapula_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_foot_upVec.wm" "F_IK_scapula_aim_space_aimConstraint1.wum";
connectAttr "F_IK_foot_IKH_offGRP_local_DCMX.ot" "F_IK_foot_IKH_offGRP.t";
connectAttr "F_IK_foot_IKH_offGRP_local_DCMX.or" "F_IK_foot_IKH_offGRP.r";
connectAttr "F_IK_foot_IKH_offGRP_local_DCMX.os" "F_IK_foot_IKH_offGRP.s";
connectAttr "F_IK_wrist_CTL.r" "F_IK_foot_IKH_spcGRP.r";
connectAttr "F_IK_wrist_CTL.t" "F_IK_foot_IKH_spcGRP.t";
connectAttr "lower_softIK_output_LOC.tx" "F_IK_foot_IKH_stretched_space.rebuildTransY"
		;
connectAttr "IK_shoulder.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver1.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "IK_shoulder.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "IK_shoulder.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "poleVec_CTL.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "poleVec_CTL.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "poleVec_CTL.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "poleVec_CTL.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "F_IK_wrist_IKH_offGRP_local_DCMX.ot" "F_IK_wrist_IKH_offGRP.t";
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.crx" "F_IK_wrist_IKH_offGRP.rx"
		;
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.cry" "F_IK_wrist_IKH_offGRP.ry"
		;
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.crz" "F_IK_wrist_IKH_offGRP.rz"
		;
connectAttr "IK_F_elbow.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikSCsolver1.msg" "ikHandle2.hsv";
connectAttr "F_IK_wrist_IKH_offGRP.pim" "F_IK_wrist_IKH_offGRP_aimConstraint1.cpim"
		;
connectAttr "F_IK_wrist_IKH_offGRP.t" "F_IK_wrist_IKH_offGRP_aimConstraint1.ct";
connectAttr "F_IK_wrist_IKH_offGRP.rp" "F_IK_wrist_IKH_offGRP_aimConstraint1.crp"
		;
connectAttr "F_IK_wrist_IKH_offGRP.rpt" "F_IK_wrist_IKH_offGRP_aimConstraint1.crt"
		;
connectAttr "F_IK_wrist_IKH_offGRP.ro" "F_IK_wrist_IKH_offGRP_aimConstraint1.cro"
		;
connectAttr "F_IK_wrist_space.t" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "F_IK_wrist_space.rp" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_wrist_space.rpt" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_wrist_space.pm" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.w0" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_wrist_upVec.wm" "F_IK_wrist_IKH_offGRP_aimConstraint1.wum";
connectAttr "F_IK_B_elbow_aim_space_local_DCMX.ot" "F_IK_B_elbow_aim_space.t";
connectAttr "F_IK_B_elbow_aim_space_local_DCMX.or" "F_IK_B_elbow_aim_space.r";
connectAttr "F_IK_B_elbow_aim_space_local_DCMX.os" "F_IK_B_elbow_aim_space.s";
connectAttr "input_scapula.t" "motion_FK_arm_GRP.t";
connectAttr "input_scapula.r" "motion_FK_arm_GRP.r";
connectAttr "input_scapula.s" "motion_FK_arm_GRP.s";
connectAttr "scapula_CTL.t" "FK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "FK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "FK_scapula.r";
connectAttr "input_scapula.r" "FK_scapula.jo";
connectAttr "FK_scapula.s" "FK_shoulder.is";
connectAttr "FK_shoulder_CTL_local_DCMX.ot" "FK_shoulder.t";
connectAttr "FK_shoulder_CTL.r" "FK_shoulder.r";
connectAttr "input_shoulder.r" "FK_shoulder.jo";
connectAttr "FK_shoulder_CTL.s" "FK_shoulder.s";
connectAttr "FK_B_elbow_CTL_local_DCMX.ot" "FK_B_elbow.t";
connectAttr "FK_B_elbow_CTL.r" "FK_B_elbow.r";
connectAttr "input_B_elbow.r" "FK_B_elbow.jo";
connectAttr "FK_B_elbow_CTL.s" "FK_B_elbow.s";
connectAttr "FK_shoulder.s" "FK_B_elbow.is";
connectAttr "FK_F_elbow_CTL_local_DCMX.ot" "FK_F_elbow.t";
connectAttr "input_F_elbow.r" "FK_F_elbow.jo";
connectAttr "FK_B_elbow.s" "FK_F_elbow.is";
connectAttr "FK_F_elbow_CTL.r" "FK_F_elbow.r";
connectAttr "FK_F_elbow_CTL.s" "FK_F_elbow.s";
connectAttr "FK_F_elbow.s" "FK_wrist.is";
connectAttr "FK_F_wrist_CTL_local_DCMX.ot" "FK_wrist.t";
connectAttr "input_wrist.r" "FK_wrist.jo";
connectAttr "FK_F_wrist_CTL.r" "FK_wrist.r";
connectAttr "FK_F_wrist_CTL.s" "FK_wrist.s";
connectAttr "FK_wrist.s" "FK_toe.is";
connectAttr "FK_F_toe_CTL_local_DCMX.ot" "FK_toe.t";
connectAttr "input_toe.r" "FK_toe.jo";
connectAttr "FK_F_toe_CTL.r" "FK_toe.r";
connectAttr "FK_F_toe_CTL.s" "FK_toe.s";
connectAttr "FK_toe.s" "FK_tiptoe.is";
connectAttr "input_tiptoe.t" "FK_tiptoe.t";
connectAttr "input_tiptoe.r" "FK_tiptoe.jo";
connectAttr "input_scapula.t" "arm_CTL_GRP.t";
connectAttr "input_scapula.r" "arm_CTL_GRP.r";
connectAttr "input_scapula.s" "arm_CTL_GRP.s";
connectAttr "arm_mirror_scale_COND.oc" "scapula_CTL_offGRP.s";
connectAttr "makeNurbCircle1.oc" "scapula_CTLShape.cr";
connectAttr "scapula_CTL_inverse_DCMX.os" "scapula_CTL_ivsScale.s";
connectAttr "input_shoulder.t" "IK_shoulder_CTL_offGRP.t";
connectAttr "arm_switch_CTL.FK_IK" "IK_shoulder_CTL_offGRP.v";
connectAttr "arm_mirror_scale_COND.oc" "IK_shoulder_CTL_offGRP.s";
connectAttr "arm_switch_CTL.FK_IK" "IK_arm_CTL_GRP.v";
connectAttr "input_shoulder.t" "IK_arm_CTL_GRP.t";
connectAttr "input_wrist_local_DCMX.ot" "F_input_F_toe_space.t";
connectAttr "input_wrist_local_DCMX.os" "F_input_F_toe_space.s";
connectAttr "unitConversion12.o" "F_IK_foot_CTL_spcGRP.r";
connectAttr "unitConversion1.o" "F_IK_heel.rx";
connectAttr "unitConversion4.o" "F_IK_heel.rz";
connectAttr "unitConversion5.o" "F_IK_heel.ry";
connectAttr "in_out_condition.oc" "F_IK_heel.rp";
connectAttr "unitConversion3.o" "F_IK_toe.rx";
connectAttr "unitConversion6.o" "F_IK_toe.ry";
connectAttr "input_tiptoe_local_DCMX.ot" "F_IK_toe.rebuildTrans";
connectAttr "unitConversion2.o" "F_IK_ball.rx";
connectAttr "input_toe_local_DCMX.ot" "F_IK_ball.rebuildTrans";
connectAttr "input_wrist_local_DCMX1.ot" "F_IK_wrist.rebuildTrans";
connectAttr "F_IK_wrist_aim_space_orientConstraint1.crx" "F_IK_wrist_aim_space.rx"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.cry" "F_IK_wrist_aim_space.ry"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.crz" "F_IK_wrist_aim_space.rz"
		;
connectAttr "input_F_elbow_local_DCMX.ot" "F_IK_wrist_space_offGRP.rebuildTrans"
		;
connectAttr "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX.ot" "F_IK_ball_HIK_offGRP.t";
connectAttr "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX.or" "F_IK_ball_HIK_offGRP.r";
connectAttr "IK_wrist.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikSCsolver1.msg" "ikHandle3.hsv";
connectAttr "F_IK_toe2F_IK_toes_offGRP_DCMX.ot" "F_IK_toes_offGRP.t";
connectAttr "F_IK_toe2F_IK_toes_offGRP_DCMX.or" "F_IK_toes_offGRP.r";
connectAttr "F_IK_toes_CTL.r" "F_IK_toes_spcGRP.r";
connectAttr "IK_toe.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikSCsolver1.msg" "ikHandle4.hsv";
connectAttr "F_IK_wrist_aim_space.ro" "F_IK_wrist_aim_space_orientConstraint1.cro"
		;
connectAttr "F_IK_wrist_aim_space.pim" "F_IK_wrist_aim_space_orientConstraint1.cpim"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.r" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tr"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.ro" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tro"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.pm" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.w0" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tw"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.r" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tr"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.ro" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tro"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.pm" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tpm"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.w1" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tw"
		;
connectAttr "unitConversion7.o" "F_IK_wrist_aim_space_orientConstraint1.w0";
connectAttr "toesAim_RVS.ox" "F_IK_wrist_aim_space_orientConstraint1.w1";
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crx" "F_IK_wrist_HIK_aim_space_01.rx"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.cry" "F_IK_wrist_HIK_aim_space_01.ry"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crz" "F_IK_wrist_HIK_aim_space_01.rz"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.pim" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.cpim"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.t" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.ct"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.rp" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crp"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.rpt" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crt"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.ro" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.cro"
		;
connectAttr "IK_shoulder.t" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tt"
		;
connectAttr "IK_shoulder.rp" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_shoulder.rpt" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_shoulder.pm" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.w0" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_aim_01.wm" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.wum"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crx" "F_IK_wrist_HIK_aim_space_02.rx"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.cry" "F_IK_wrist_HIK_aim_space_02.ry"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crz" "F_IK_wrist_HIK_aim_space_02.rz"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.pim" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.cpim"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.t" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.ct"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.rp" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crp"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.rpt" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crt"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.ro" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.cro"
		;
connectAttr "F_IK_shoulder_aim.t" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tt"
		;
connectAttr "F_IK_shoulder_aim.rp" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_shoulder_aim.rpt" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_shoulder_aim.pm" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.w0" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_aim_02.wm" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.wum"
		;
connectAttr "input_F_elbow2F_IK_shoulder_aim_DCMX.ot" "F_IK_shoulder_aim.rebuildTrans"
		;
connectAttr "unitConversion9.o" "F_IK_shoulder_aim.rebuildRot";
connectAttr "poleVec_follow_PRBL.ot" "poleVec_CTL_follow_GRP.t";
connectAttr "poleVec_follow_PRBL.or" "poleVec_CTL_follow_GRP.r";
connectAttr "poleVec_input_space_aimConstraint1.crx" "poleVec_input_space.rx";
connectAttr "poleVec_input_space_aimConstraint1.cry" "poleVec_input_space.ry";
connectAttr "poleVec_input_space_aimConstraint1.crz" "poleVec_input_space.rz";
connectAttr "poleVec_input_space_parentConstraint1.ctx" "poleVec_input_space.tx"
		;
connectAttr "poleVec_input_space_parentConstraint1.cty" "poleVec_input_space.ty"
		;
connectAttr "poleVec_input_space_parentConstraint1.ctz" "poleVec_input_space.tz"
		;
connectAttr "poleVec_input_space.ro" "poleVec_input_space_parentConstraint1.cro"
		;
connectAttr "poleVec_input_space.pim" "poleVec_input_space_parentConstraint1.cpim"
		;
connectAttr "poleVec_input_space.rp" "poleVec_input_space_parentConstraint1.crp"
		;
connectAttr "poleVec_input_space.rpt" "poleVec_input_space_parentConstraint1.crt"
		;
connectAttr "input_B_elbow.t" "poleVec_input_space_parentConstraint1.tg[0].tt";
connectAttr "input_B_elbow.rp" "poleVec_input_space_parentConstraint1.tg[0].trp"
		;
connectAttr "input_B_elbow.rpt" "poleVec_input_space_parentConstraint1.tg[0].trt"
		;
connectAttr "input_B_elbow.r" "poleVec_input_space_parentConstraint1.tg[0].tr";
connectAttr "input_B_elbow.ro" "poleVec_input_space_parentConstraint1.tg[0].tro"
		;
connectAttr "input_B_elbow.s" "poleVec_input_space_parentConstraint1.tg[0].ts";
connectAttr "input_B_elbow.pm" "poleVec_input_space_parentConstraint1.tg[0].tpm"
		;
connectAttr "poleVec_input_space_parentConstraint1.w0" "poleVec_input_space_parentConstraint1.tg[0].tw"
		;
connectAttr "poleVec_input_space.pim" "poleVec_input_space_aimConstraint1.cpim";
connectAttr "poleVec_input_space.t" "poleVec_input_space_aimConstraint1.ct";
connectAttr "poleVec_input_space.rp" "poleVec_input_space_aimConstraint1.crp";
connectAttr "poleVec_input_space.rpt" "poleVec_input_space_aimConstraint1.crt";
connectAttr "poleVec_input_space.ro" "poleVec_input_space_aimConstraint1.cro";
connectAttr "input_F_elbow.t" "poleVec_input_space_aimConstraint1.tg[0].tt";
connectAttr "input_F_elbow.rp" "poleVec_input_space_aimConstraint1.tg[0].trp";
connectAttr "input_F_elbow.rpt" "poleVec_input_space_aimConstraint1.tg[0].trt";
connectAttr "input_F_elbow.pm" "poleVec_input_space_aimConstraint1.tg[0].tpm";
connectAttr "poleVec_input_space_aimConstraint1.w0" "poleVec_input_space_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_B_elbow_upVec.wm" "poleVec_input_space_aimConstraint1.wum";
connectAttr "poleVec_aim_space_parentConstraint1.ctx" "poleVec_aim_space.tx";
connectAttr "poleVec_aim_space_parentConstraint1.cty" "poleVec_aim_space.ty";
connectAttr "poleVec_aim_space_parentConstraint1.ctz" "poleVec_aim_space.tz";
connectAttr "poleVec_aim_space_parentConstraint1.crx" "poleVec_aim_space.rx";
connectAttr "poleVec_aim_space_parentConstraint1.cry" "poleVec_aim_space.ry";
connectAttr "poleVec_aim_space_parentConstraint1.crz" "poleVec_aim_space.rz";
connectAttr "poleVec_aim_space.ro" "poleVec_aim_space_parentConstraint1.cro";
connectAttr "poleVec_aim_space.pim" "poleVec_aim_space_parentConstraint1.cpim";
connectAttr "poleVec_aim_space.rp" "poleVec_aim_space_parentConstraint1.crp";
connectAttr "poleVec_aim_space.rpt" "poleVec_aim_space_parentConstraint1.crt";
connectAttr "F_IK_scapula_aim_space.t" "poleVec_aim_space_parentConstraint1.tg[0].tt"
		;
connectAttr "F_IK_scapula_aim_space.rp" "poleVec_aim_space_parentConstraint1.tg[0].trp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "poleVec_aim_space_parentConstraint1.tg[0].trt"
		;
connectAttr "F_IK_scapula_aim_space.r" "poleVec_aim_space_parentConstraint1.tg[0].tr"
		;
connectAttr "F_IK_scapula_aim_space.ro" "poleVec_aim_space_parentConstraint1.tg[0].tro"
		;
connectAttr "F_IK_scapula_aim_space.s" "poleVec_aim_space_parentConstraint1.tg[0].ts"
		;
connectAttr "F_IK_scapula_aim_space.pm" "poleVec_aim_space_parentConstraint1.tg[0].tpm"
		;
connectAttr "poleVec_aim_space_parentConstraint1.w0" "poleVec_aim_space_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIK_RVS.ox" "FK_arm_CTL_GRP.v";
connectAttr "scapula_CTL.t" "FK_scapula_space.t";
connectAttr "scapula_CTL.r" "FK_scapula_space.r";
connectAttr "scapula_CTL.s" "FK_scapula_space.s";
connectAttr "FK_scapula_space_inverse_DCMX.os" "FK_scapula_space_ivsScale.s";
connectAttr "input_shoulder.t" "FK_shoulder_CTL_offGRP.t";
connectAttr "input_shoulder.r" "FK_shoulder_CTL_offGRP.r";
connectAttr "input_shoulder.s" "FK_shoulder_CTL_offGRP.s";
connectAttr "makeNurbCircle7.oc" "FK_shoulder_CTLShape.cr";
connectAttr "FK_shoulder_CTL_inverse_DCMX.os" "FK_shoulder_CTL_ivsScale.s";
connectAttr "input_B_elbow.t" "FK_B_elbow_CTL_offGRP.t";
connectAttr "input_B_elbow.r" "FK_B_elbow_CTL_offGRP.r";
connectAttr "input_B_elbow.s" "FK_B_elbow_CTL_offGRP.s";
connectAttr "makeNurbCircle8.oc" "FK_B_elbow_CTLShape.cr";
connectAttr "FK_B_elbow_CTL_inverse_DCMX.os" "FK_B_elbow_CTL_ivsScale.s";
connectAttr "input_F_elbow.t" "FK_F_elbow_CTL_offGRP.t";
connectAttr "input_F_elbow.r" "FK_F_elbow_CTL_offGRP.r";
connectAttr "input_F_elbow.s" "FK_F_elbow_CTL_offGRP.s";
connectAttr "makeNurbCircle9.oc" "FK_F_elbow_CTLShape.cr";
connectAttr "FK_F_elbow_CTL_inverse_DCMX.os" "FK_F_elbow_CTL_ivsScale.s";
connectAttr "input_wrist.t" "FK_F_wrist_CTL_offGRP.t";
connectAttr "input_wrist.r" "FK_F_wrist_CTL_offGRP.r";
connectAttr "input_wrist.s" "FK_F_wrist_CTL_offGRP.s";
connectAttr "makeNurbCircle10.oc" "FK_F_wrist_CTLShape.cr";
connectAttr "FK_F_wrist_CTL_inverse_DCMX.os" "FK_F_wrist_CTL_ivsScale.s";
connectAttr "input_toe.t" "FK_F_toe_CTL_offGRP.t";
connectAttr "input_toe.r" "FK_F_toe_CTL_offGRP.r";
connectAttr "input_toe.s" "FK_F_toe_CTL_offGRP.s";
connectAttr "arm_switch_CTL_space_DCMX.ot" "arm_switch_CTL_offGRP.t";
connectAttr "arm_switch_CTL_space_DCMX.os" "arm_switch_CTL_offGRP.s";
connectAttr "input_scapula.t" "arm_output.t";
connectAttr "input_scapula.r" "arm_output.r";
connectAttr "input_scapula.s" "arm_output.s";
connectAttr "scapula_PRBL.ot" "scapula.t";
connectAttr "input_scapula.r" "scapula.jo";
connectAttr "scapula_PRBL.or" "scapula.r";
connectAttr "scapula_BLCL.op" "scapula.s";
connectAttr "shoulder_PRBL.ot" "shoulder.t";
connectAttr "input_shoulder.r" "shoulder.jo";
connectAttr "scapula.s" "shoulder.is";
connectAttr "shoulder_PRBL.or" "shoulder.r";
connectAttr "shoulder_BLCL.op" "shoulder.s";
connectAttr "B_elbow_PRBL.ot" "B_elbow.t";
connectAttr "input_B_elbow.r" "B_elbow.jo";
connectAttr "B_elbow_PRBL.or" "B_elbow.r";
connectAttr "shoulder.s" "B_elbow.is";
connectAttr "B_elbow_BLCL.op" "B_elbow.s";
connectAttr "F_elbow_PRBL.ot" "F_elbow.t";
connectAttr "input_F_elbow.r" "F_elbow.jo";
connectAttr "B_elbow.s" "F_elbow.is";
connectAttr "F_elbow_PRBL.or" "F_elbow.r";
connectAttr "F_elbow_BLCL.op" "F_elbow.s";
connectAttr "F_elbow.s" "wrist.is";
connectAttr "wrist_PRBL.ot" "wrist.t";
connectAttr "input_wrist.r" "wrist.jo";
connectAttr "wrist_PRBL.or" "wrist.r";
connectAttr "wrist_BLCL.op" "wrist.s";
connectAttr "wrist.s" "toe.is";
connectAttr "toe_PRBL.ot" "toe.t";
connectAttr "input_toe.r" "toe.jo";
connectAttr "toe_PRBL.or" "toe.r";
connectAttr "toe_BLCL.op" "toe.s";
connectAttr "toe.s" "tiptoe.is";
connectAttr "tiptoe_PRBL.ot" "tiptoe.t";
connectAttr "input_tiptoe.r" "tiptoe.jo";
connectAttr "tiptoe_PRBL.or" "tiptoe.r";
connectAttr "tiptoe_BLCL.op" "tiptoe.s";
connectAttr "IK_shoulder_space_MTMX.o" "IK_shoulder_space_DCMX.imat";
connectAttr "input_shoulder.wm" "IK_shoulder_space_MTMX.i[0]";
connectAttr "motion_IK_arm_GRP.wim" "IK_shoulder_space_MTMX.i[1]";
connectAttr "F_stretchIK_output.stretched_len" "stretch_output_mul_CTLVal_MULT.i1x"
		;
connectAttr "F_stretchIK_output.stretch_ctrl_value" "stretch_output_mul_CTLVal_MULT.i2x"
		;
connectAttr "F_stretchIK_output.expand_stretched_len" "loarm_stretch_output_mul_CTLlVal_MULT.i1x"
		;
connectAttr "F_stretchIK_output.stretch_ctrl_value" "loarm_stretch_output_mul_CTLlVal_MULT.i2x"
		;
connectAttr "uparmLen.d" "soft_armLen_PMA.i1[0]";
connectAttr "midarmLen.d" "soft_armLen_PMA.i1[1]";
connectAttr "input_shoulder_local_MTMX.o" "uparmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "uparmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "input_B_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "midarmLen.im1";
connectAttr "input_F_elbow_local_MTMX1.o" "midarmLen.im2";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX1.i[0]";
connectAttr "input_scapula.wim" "input_F_elbow_local_MTMX1.i[1]";
connectAttr "input_shoulder_local_dist_MTMX.o" "upIKLen.im1";
connectAttr "wrist_space_local_MTMX.o" "upIKLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_dist_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_dist_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wm" "wrist_space_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "wrist_space_local_MTMX.i[1]";
connectAttr "F_IK_foot_CTL.softIK" "IK_negate_val_MULT.i1x";
connectAttr "F_IK_foot_CTL.stretch" "IK_negate_val_MULT.i1y";
connectAttr "input_F_elbow_local_MTMX.o" "loIKLen.im1";
connectAttr "F_toe_CTL_local_MTMX.o" "loIKLen.im2";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX.i[0]";
connectAttr "input_B_elbow.wim" "input_F_elbow_local_MTMX.i[1]";
connectAttr "F_IK_wrist.wm" "F_toe_CTL_local_MTMX.i[0]";
connectAttr "input_B_elbow.wim" "F_toe_CTL_local_MTMX.i[1]";
connectAttr "midarmLen.d" "loarm_soft_Len_PMA.i1[0]";
connectAttr "loarmLen.d" "loarm_soft_Len_PMA.i1[1]";
connectAttr "input_F_elbow_local_MTMX1.o" "loarmLen.im1";
connectAttr "input_F_toe01_local_MTMX.o" "loarmLen.im2";
connectAttr "input_wrist.wm" "input_F_toe01_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_F_toe01_local_MTMX.i[1]";
connectAttr "softikV_COND.ocr" "CTLlen_COND.ctr";
connectAttr "F_softIK_input.CTLLen" "CTLlen_COND.cfr";
connectAttr "F_softIK_input.CTLLen" "CTLlen_COND.ft";
connectAttr "armlen_minus_softikV_SUBT.o1" "CTLlen_COND.st";
connectAttr "result_softik_len_SUBT.o1" "softikV_COND.ctr";
connectAttr "F_softIK_input.uparmLen" "softikV_COND.cfr";
connectAttr "F_softIK_input.softik_CTL_value" "softikV_COND.ft";
connectAttr "F_softIK_input.uparmLen" "result_softik_len_SUBT.i1[0]";
connectAttr "mult_softikV_MULT.ox" "result_softik_len_SUBT.i1[1]";
connectAttr "power_val_POW.ox" "mult_softikV_MULT.i2x";
connectAttr "F_softIK_input.softik_CTL_value" "mult_softikV_MULT.i1x";
connectAttr "negate_val_MULT.ox" "power_val_POW.i2x";
connectAttr "divide_uparm_softikV_DIVD.ox" "negate_val_MULT.i1x";
connectAttr "CTLLen_minue_dif_SUBT.o1" "divide_uparm_softikV_DIVD.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_uparm_softikV_DIVD.i2x";
connectAttr "F_softIK_input.CTLLen" "CTLLen_minue_dif_SUBT.i1[0]";
connectAttr "armlen_minus_softikV_SUBT.o1" "CTLLen_minue_dif_SUBT.i1[1]";
connectAttr "F_softIK_input.uparmLen" "armlen_minus_softikV_SUBT.i1[0]";
connectAttr "F_softIK_input.softik_CTL_value" "armlen_minus_softikV_SUBT.i1[1]";
connectAttr "F_softIK_input.softik_CTL_value" "for_zerodivide_COND.ft";
connectAttr "F_softIK_input.softik_CTL_value" "for_zerodivide_COND.cfr";
connectAttr "loarm_softikV_COND.ocr" "loarm_CTLlen_COND.ctr";
connectAttr "F_softIK_input.loarmIK_len" "loarm_CTLlen_COND.cfr";
connectAttr "F_softIK_input.loarmIK_len" "loarm_CTLlen_COND.ft";
connectAttr "loarm_armlen_minus_softikV_SUBT.o1" "loarm_CTLlen_COND.st";
connectAttr "loarm_result_softik_len_SUBT.o1" "loarm_softikV_COND.ctr";
connectAttr "F_softIK_input.loarm_len" "loarm_softikV_COND.cfr";
connectAttr "F_softIK_input.softik_CTL_value" "loarm_softikV_COND.ft";
connectAttr "F_softIK_input.loarm_len" "loarm_result_softik_len_SUBT.i1[0]";
connectAttr "loarm_mult_softikV_MULT.ox" "loarm_result_softik_len_SUBT.i1[1]";
connectAttr "loarm_power_val_POW.ox" "loarm_mult_softikV_MULT.i2x";
connectAttr "F_softIK_input.softik_CTL_value" "loarm_mult_softikV_MULT.i1x";
connectAttr "loarm_negate_val_MULT.ox" "loarm_power_val_POW.i2x";
connectAttr "divide_loarm_softikV_DIVD.ox" "loarm_negate_val_MULT.i1x";
connectAttr "loarm_ctrlLen_minue_dif_SUBT.o1" "divide_loarm_softikV_DIVD.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_loarm_softikV_DIVD.i2x";
connectAttr "F_softIK_input.loarmIK_len" "loarm_ctrlLen_minue_dif_SUBT.i1[0]";
connectAttr "loarm_armlen_minus_softikV_SUBT.o1" "loarm_ctrlLen_minue_dif_SUBT.i1[1]"
		;
connectAttr "F_softIK_input.loarm_len" "loarm_armlen_minus_softikV_SUBT.i1[0]";
connectAttr "F_softIK_input.softik_CTL_value" "loarm_armlen_minus_softikV_SUBT.i1[1]"
		;
connectAttr "F_stretchIK_input.loarm_len" "midarm_plus_stretch_PMA.i1[0]";
connectAttr "stretchCtrl_midarm_MULT.ox" "midarm_plus_stretch_PMA.i1[1]";
connectAttr "stretched_midarmLen_MULT.ox" "stretchCtrl_midarm_MULT.i1x";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "stretchCtrl_midarm_MULT.i2x"
		;
connectAttr "stretchedLen_SUBT.o1" "stretched_midarmLen_MULT.i1x";
connectAttr "midarm_ratio3_DIVD.ox" "stretched_midarmLen_MULT.i2x";
connectAttr "F_stretchIK_input.ctrl_len" "stretchedLen_SUBT.i1[0]";
connectAttr "F_stretchIK_input.softik_len" "stretchedLen_SUBT.i1[1]";
connectAttr "stretch_armLen_PMA.o1" "midarm_ratio3_DIVD.i2x";
connectAttr "F_stretchIK_input.loarm_len" "midarm_ratio3_DIVD.i1x";
connectAttr "F_stretchIK_input.uparm_len" "stretch_armLen_PMA.i1[0]";
connectAttr "F_stretchIK_input.loarm_len" "stretch_armLen_PMA.i1[1]";
connectAttr "F_stretchIK_input.extendedarm_len" "stretch_armLen_PMA.i1[2]";
connectAttr "F_stretchIK_input.uparm_len" "uparm_plus_stretch_PMA.i1[0]";
connectAttr "stretchCtrl_uparm_MULT.ox" "uparm_plus_stretch_PMA.i1[1]";
connectAttr "stretched_uparmLen_MULT.ox" "stretchCtrl_uparm_MULT.i1x";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "stretchCtrl_uparm_MULT.i2x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen_MULT.i2x";
connectAttr "stretchedLen_SUBT.o1" "stretched_uparmLen_MULT.i1x";
connectAttr "F_stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_armLen_PMA.o1" "uparm_ratio.i2x";
connectAttr "F_stretchIK_input.extendedarm_len" "loarm_plus_stretch_PMA.i1[0]";
connectAttr "loarm_stretchCtrl_arm_MULT.ox" "loarm_plus_stretch_PMA.i1[1]";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "loarm_stretchCtrl_arm_MULT.i1x"
		;
connectAttr "loarm_stretched_arm_MULT.ox" "loarm_stretchCtrl_arm_MULT.i2x";
connectAttr "loarm_stretchedLen_SUBT.o1" "loarm_stretched_arm_MULT.i1x";
connectAttr "loarm_ratio_DIVD.ox" "loarm_stretched_arm_MULT.i2x";
connectAttr "F_stretchIK_input.extended_ctrl_len" "loarm_stretchedLen_SUBT.i1[0]"
		;
connectAttr "F_stretchIK_input.extended_softik_len" "loarm_stretchedLen_SUBT.i1[1]"
		;
connectAttr "loarm_stretch_armLen_PMA.o1" "loarm_ratio_DIVD.i2x";
connectAttr "F_stretchIK_input.extendedarm_len" "loarm_ratio_DIVD.i1x";
connectAttr "F_stretchIK_input.loarm_len" "loarm_stretch_armLen_PMA.i1[0]";
connectAttr "F_stretchIK_input.extendedarm_len" "loarm_stretch_armLen_PMA.i1[1]"
		;
connectAttr "F_stretchIK_input.uparm_len" "loarm_stretch_armLen_PMA.i1[2]";
connectAttr "scapula_CTL_local_MTMX.o" "scapula_CTL_local_DCMX.imat";
connectAttr "scapula_CTL.wm" "scapula_CTL_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "scapula_CTL_local_MTMX.i[1]";
connectAttr "IK_shoulder_CTL_local_MTMX.o" "IK_shoulder_CTL_local_DCMX.imat";
connectAttr "IK_shoulder_CTL.wm" "IK_shoulder_CTL_local_MTMX.i[0]";
connectAttr "IK_scapula.wim" "IK_shoulder_CTL_local_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wm" "F_wrist_space_scale_DCMX.imat";
connectAttr "F_IK_wrist_CTL.wm" "F_wrist_CTL_scale_DCMX.imat";
connectAttr "F_IK_ball_CTL.wm" "F_ball_CTL_scale_DCMX.imat";
connectAttr "F_IK_foot_IKH_offGRP_local_MTMX.o" "F_IK_foot_IKH_offGRP_local_DCMX.imat"
		;
connectAttr "F_IK_wrist_aim_space.wm" "F_IK_foot_IKH_offGRP_local_MTMX.i[0]";
connectAttr "motion_IK_arm_GRP.wim" "F_IK_foot_IKH_offGRP_local_MTMX.i[1]";
connectAttr "F_IK_wrist_IKH_offGRP_local_MTMX.o" "F_IK_wrist_IKH_offGRP_local_DCMX.imat"
		;
connectAttr "F_IK_wrist.wm" "F_IK_wrist_IKH_offGRP_local_MTMX.i[0]";
connectAttr "motion_IK_arm_GRP.wim" "F_IK_wrist_IKH_offGRP_local_MTMX.i[1]";
connectAttr "F_IK_B_elbow_aim_space_local_MTMX.o" "F_IK_B_elbow_aim_space_local_DCMX.imat"
		;
connectAttr "input_B_elbow.wm" "F_IK_B_elbow_aim_space_local_MTMX.i[0]";
connectAttr "motion_IK_arm_GRP.wim" "F_IK_B_elbow_aim_space_local_MTMX.i[1]";
connectAttr "FK_shoulder_CTL_local_MTMX.o" "FK_shoulder_CTL_local_DCMX.imat";
connectAttr "FK_shoulder_CTL.wm" "FK_shoulder_CTL_local_MTMX.i[0]";
connectAttr "FK_scapula.wim" "FK_shoulder_CTL_local_MTMX.i[1]";
connectAttr "FK_B_elbow_CTL_local_MTMX.o" "FK_B_elbow_CTL_local_DCMX.imat";
connectAttr "FK_B_elbow_CTL.wm" "FK_B_elbow_CTL_local_MTMX.i[0]";
connectAttr "FK_shoulder.wim" "FK_B_elbow_CTL_local_MTMX.i[1]";
connectAttr "FK_F_elbow_CTL_local_MTMX.o" "FK_F_elbow_CTL_local_DCMX.imat";
connectAttr "FK_F_elbow_CTL.wm" "FK_F_elbow_CTL_local_MTMX.i[0]";
connectAttr "FK_B_elbow.wim" "FK_F_elbow_CTL_local_MTMX.i[1]";
connectAttr "FK_F_wrist_CTL_local_MTMX.o" "FK_F_wrist_CTL_local_DCMX.imat";
connectAttr "FK_F_wrist_CTL.wm" "FK_F_wrist_CTL_local_MTMX.i[0]";
connectAttr "FK_F_elbow.wim" "FK_F_wrist_CTL_local_MTMX.i[1]";
connectAttr "FK_F_toe_CTL_local_MTMX.o" "FK_F_toe_CTL_local_DCMX.imat";
connectAttr "FK_F_toe_CTL.wm" "FK_F_toe_CTL_local_MTMX.i[0]";
connectAttr "FK_wrist.wim" "FK_F_toe_CTL_local_MTMX.i[1]";
connectAttr "arm_GRP.mirror" "arm_mirror_scale_COND.ft";
connectAttr "scapula_CTL.wim" "scapula_CTL_inverse_DCMX.imat";
connectAttr "input_wrist_local_MTMX1.o" "input_wrist_local_DCMX.imat";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX1.i[0]";
connectAttr "IK_arm_CTL_GRP.wim" "input_wrist_local_MTMX1.i[1]";
connectAttr "arm_mirror_rotate_COND.oc" "unitConversion12.i";
connectAttr "arm_GRP.mirror" "arm_mirror_rotate_COND.ft";
connectAttr "ball_bk_condition.ocr" "unitConversion1.i";
connectAttr "F_IK_foot_CTL.roll" "ball_bk_condition.ft";
connectAttr "F_IK_foot_CTL.roll" "ball_bk_condition.cfr";
connectAttr "F_IK_foot_CTL.bank" "unitConversion4.i";
connectAttr "F_IK_foot_CTL.heelTwist" "unitConversion5.i";
connectAttr "F_IK_foot_CTL.bank" "in_out_condition.ft";
connectAttr "in_out_default_condition.oc" "in_out_condition.ct";
connectAttr "F_IK_heel_out.t" "in_out_condition.cf";
connectAttr "F_IK_foot_CTL.bank" "in_out_default_condition.ft";
connectAttr "F_IK_heel_in.t" "in_out_default_condition.cf";
connectAttr "toe_fn_condition.ocr" "unitConversion3.i";
connectAttr "F_IK_foot_CTL.rollStartAngle" "toe_fn_condition.st";
connectAttr "F_IK_foot_CTL.roll" "toe_fn_condition.ft";
connectAttr "roll_angle_SUBT.o1" "toe_fn_condition.ctr";
connectAttr "F_IK_foot_CTL.roll" "roll_angle_SUBT.i1[0]";
connectAttr "F_IK_foot_CTL.rollStartAngle" "roll_angle_SUBT.i1[1]";
connectAttr "F_IK_foot_CTL.toeTwist" "unitConversion6.i";
connectAttr "input_tiptoe_local_MTMX.o" "input_tiptoe_local_DCMX.imat";
connectAttr "input_tiptoe.wm" "input_tiptoe_local_MTMX.i[0]";
connectAttr "F_IK_heel_CTL.wim" "input_tiptoe_local_MTMX.i[1]";
connectAttr "ball_start_conditon.ocr" "unitConversion2.i";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.ft";
connectAttr "F_IK_foot_CTL.rollStartAngle" "ball_start_conditon.st";
connectAttr "backto_zero_ball_SUBT.o1" "ball_start_conditon.ctr";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.cfr";
connectAttr "F_IK_foot_CTL.roll" "ball_fn_condition.ft";
connectAttr "F_IK_foot_CTL.roll" "ball_fn_condition.ctr";
connectAttr "F_IK_foot_CTL.rollStartAngle" "backto_zero_ball_SUBT.i1[0]";
connectAttr "ball_remap.ov" "backto_zero_ball_SUBT.i1[1]";
connectAttr "after_ball_start_SUBT.o1" "ball_remap.i";
connectAttr "F_IK_foot_CTL.rollStartAngle" "ball_remap.omx";
connectAttr "F_IK_foot_CTL.roll" "after_ball_start_SUBT.i1[0]";
connectAttr "F_IK_foot_CTL.rollStartAngle" "after_ball_start_SUBT.i1[1]";
connectAttr "input_toe_local_MTMX.o" "input_toe_local_DCMX.imat";
connectAttr "input_toe.wm" "input_toe_local_MTMX.i[0]";
connectAttr "F_IK_toe_CTL.wim" "input_toe_local_MTMX.i[1]";
connectAttr "input_wrist_local_MTMX.o" "input_wrist_local_DCMX1.imat";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "F_IK_ball_CTL.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "input_F_elbow_local_MTMX2.o" "input_F_elbow_local_DCMX.imat";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX2.i[0]";
connectAttr "F_IK_wrist_aim_space.wim" "input_F_elbow_local_MTMX2.i[1]";
connectAttr "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.o" "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX.imat"
		;
connectAttr "F_IK_ball_HIK_offGRP.offset" "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.i[0]"
		;
connectAttr "F_IK_ball.wm" "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wim" "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.i[2]";
connectAttr "F_IK_toe2F_IK_toes_offGRP_MTMX.o" "F_IK_toe2F_IK_toes_offGRP_DCMX.imat"
		;
connectAttr "F_IK_toes_offGRP.offset" "F_IK_toe2F_IK_toes_offGRP_MTMX.i[0]";
connectAttr "F_IK_toe.wm" "F_IK_toe2F_IK_toes_offGRP_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wim" "F_IK_toe2F_IK_toes_offGRP_MTMX.i[2]";
connectAttr "F_IK_foot_CTL.toesAim" "unitConversion7.i";
connectAttr "unitConversion7.o" "toesAim_RVS.ix";
connectAttr "input_F_elbow2F_IK_shoulder_aim_MTMX.o" "input_F_elbow2F_IK_shoulder_aim_DCMX.imat"
		;
connectAttr "F_IK_shoulder_aim.offset" "input_F_elbow2F_IK_shoulder_aim_MTMX.i[0]"
		;
connectAttr "input_F_elbow.wm" "input_F_elbow2F_IK_shoulder_aim_MTMX.i[1]";
connectAttr "F_IK_foot_CTL.wim" "input_F_elbow2F_IK_shoulder_aim_MTMX.i[2]";
connectAttr "input_F_elbow2F_IK_shoulder_aim_DCMX.or" "unitConversion9.i";
connectAttr "poleVec_input_space.t" "poleVec_follow_PRBL.it1";
connectAttr "poleVec_aim_space.t" "poleVec_follow_PRBL.it2";
connectAttr "poleVec_input_space.r" "poleVec_follow_PRBL.ir1";
connectAttr "poleVec_aim_space.r" "poleVec_follow_PRBL.ir2";
connectAttr "unitConversion8.o" "poleVec_follow_PRBL.w";
connectAttr "poleVec_CTL.follow" "unitConversion8.i";
connectAttr "arm_switch_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "FK_scapula_space.wim" "FK_scapula_space_inverse_DCMX.imat";
connectAttr "FK_shoulder_CTL.wim" "FK_shoulder_CTL_inverse_DCMX.imat";
connectAttr "FK_B_elbow_CTL.wim" "FK_B_elbow_CTL_inverse_DCMX.imat";
connectAttr "FK_F_elbow_CTL.wim" "FK_F_elbow_CTL_inverse_DCMX.imat";
connectAttr "FK_F_wrist_CTL.wim" "FK_F_wrist_CTL_inverse_DCMX.imat";
connectAttr "arm_switch_CTL_space_MTMX.o" "arm_switch_CTL_space_DCMX.imat";
connectAttr "arm_switch_space_CHOI.o" "arm_switch_CTL_space_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "arm_switch_CTL_space_MTMX.i[1]";
connectAttr "FK_F_wrist_CTL.wm" "arm_switch_space_CHOI.i[0]";
connectAttr "F_IK_wrist_CTL.wm" "arm_switch_space_CHOI.i[1]";
connectAttr "arm_switch_CTL.FK_IK" "arm_switch_space_CHOI.s";
connectAttr "IK_scapula.t" "scapula_PRBL.it1";
connectAttr "IK_scapula.r" "scapula_PRBL.ir1";
connectAttr "FK_scapula.t" "scapula_PRBL.it2";
connectAttr "FK_scapula.r" "scapula_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "scapula_PRBL.w";
connectAttr "IK_scapula.s" "scapula_BLCL.c1";
connectAttr "FK_scapula.s" "scapula_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "scapula_BLCL.b";
connectAttr "IK_shoulder.t" "shoulder_PRBL.it1";
connectAttr "IK_shoulder.r" "shoulder_PRBL.ir1";
connectAttr "FK_shoulder.t" "shoulder_PRBL.it2";
connectAttr "FK_shoulder.r" "shoulder_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "shoulder_PRBL.w";
connectAttr "IK_shoulder.s" "shoulder_BLCL.c1";
connectAttr "FK_shoulder.s" "shoulder_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "shoulder_BLCL.b";
connectAttr "IK_B_elbow.t" "B_elbow_PRBL.it1";
connectAttr "IK_B_elbow.r" "B_elbow_PRBL.ir1";
connectAttr "FK_B_elbow.t" "B_elbow_PRBL.it2";
connectAttr "FK_B_elbow.r" "B_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "B_elbow_PRBL.w";
connectAttr "IK_B_elbow.s" "B_elbow_BLCL.c1";
connectAttr "FK_B_elbow.s" "B_elbow_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "B_elbow_BLCL.b";
connectAttr "IK_F_elbow.t" "F_elbow_PRBL.it1";
connectAttr "IK_F_elbow.r" "F_elbow_PRBL.ir1";
connectAttr "FK_F_elbow.t" "F_elbow_PRBL.it2";
connectAttr "FK_F_elbow.r" "F_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "F_elbow_PRBL.w";
connectAttr "IK_F_elbow.s" "F_elbow_BLCL.c1";
connectAttr "FK_F_elbow.s" "F_elbow_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "F_elbow_BLCL.b";
connectAttr "IK_wrist.t" "wrist_PRBL.it1";
connectAttr "IK_wrist.r" "wrist_PRBL.ir1";
connectAttr "FK_wrist.t" "wrist_PRBL.it2";
connectAttr "FK_wrist.r" "wrist_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "wrist_PRBL.w";
connectAttr "IK_wrist.s" "wrist_BLCL.c1";
connectAttr "FK_wrist.s" "wrist_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "wrist_BLCL.b";
connectAttr "IK_toe.t" "toe_PRBL.it1";
connectAttr "IK_toe.r" "toe_PRBL.ir1";
connectAttr "FK_toe.t" "toe_PRBL.it2";
connectAttr "FK_toe.r" "toe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "toe_PRBL.w";
connectAttr "IK_toe.s" "toe_BLCL.c1";
connectAttr "FK_toe.s" "toe_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "toe_BLCL.b";
connectAttr "IK_tiptoe.t" "tiptoe_PRBL.it1";
connectAttr "IK_tiptoe.r" "tiptoe_PRBL.ir1";
connectAttr "FK_tiptoe.t" "tiptoe_PRBL.it2";
connectAttr "FK_tiptoe.r" "tiptoe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "tiptoe_PRBL.w";
connectAttr "IK_tiptoe.s" "tiptoe_BLCL.c1";
connectAttr "FK_tiptoe.s" "tiptoe_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "tiptoe_BLCL.b";
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_toe01_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "soft_armLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "upIKLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armlen_minus_softikV_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CTLLen_minue_dif_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_uparm_softikV_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val_POW.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CTLlen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midarm_ratio3_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_armLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_midarmLen_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_midarm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midarm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_CTLVal_MULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "loarm_ratio_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretched_arm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretchCtrl_arm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loIKLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_soft_Len_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_armlen_minus_softikV_SUBT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "loarm_ctrlLen_minue_dif_SUBT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "divide_loarm_softikV_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_power_val_POW.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_mult_softikV_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_result_softik_len_SUBT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "loarm_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_CTLlen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretch_armLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretchedLen_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretch_output_mul_CTLlVal_MULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arm_switch_space_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_bk_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_fn_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_start_conditon.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toe_fn_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "roll_angle_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "after_ball_start_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "backto_zero_ball_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_default_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesAim_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_B_elbow_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_shoulder_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_F_elbow_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_F_wrist_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_shoulder_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_B_elbow_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_shoulder_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_B_elbow_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_scapula_space_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_F_elbow_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_elbow_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_wrist_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_wrist_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_toe_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_toe_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_wrist_CTL_scale_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_ball_CTL_scale_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_wrist_space_scale_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_tiptoe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_tiptoe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_toe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_DCMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_mirror_rotate_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_mirror_scale_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikSCsolver1.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
// End of q_arm.ma
