//Maya ASCII 2019 scene
//Name: Qarm.ma
//Last modified: Sun, Jul 18, 2021 02:53:03 PM
//Codeset: 949
requires maya "2019";
requires "mtoa" "3.2.2";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
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
	rename -uid "51B6351A-4D99-33D7-49D7-D184B7668C00";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "type" -ln "type" -dt "string";
	addAttr -ci true -sn "fileName" -ln "fileName" -dt "string";
	setAttr -s 9 ".reBuildMode";
	setAttr -s 7 ".input";
	setAttr -s 2 ".reBuildAttr";
	setAttr -l on -k on ".type" -type "string" "set";
	setAttr -l on -k on ".fileName" -type "string" "Qarm";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "E1621933-41EA-624C-6E3B-5CA344898B18";
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "E758D56A-4089-BB2E-F919-E8A875323423";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "A64F7BD3-4E7D-5F16-B325-008FD9F0D00B";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
	setAttr ".r" -type "double3" -0.87822632282824908 18.963366707434972 -90.051492328366749 ;
	setAttr ".s" -type "double3" 1.0000000596541891 0.99999997041493938 1.000000020322811 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "CB4C30B7-4470-07E0-BD90-658081980E03";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 11.152678498081166 -6.7629546407488306e-10 4.5920422131473515e-08 ;
	setAttr ".r" -type "double3" 6.8566897946502188e-08 -19.828083153045551 -4.6052495049693163e-08 ;
	setAttr ".s" -type "double3" 0.99999996654560874 0.99999999998459921 0.99999997179149047 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "B897E96C-44A5-06A0-BAD6-6293CDCF1F85";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 15.031986341669402 -8.7500264811524175e-09 -3.3928628795365512e-09 ;
	setAttr ".r" -type "double3" -0.013196246886768993 0.91878242726947013 -0.00021163387107903499 ;
	setAttr ".s" -type "double3" 0.99999996221579857 1.0000000122470938 1.0000000098297848 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "8D7123CE-4870-2168-115B-C689BF5E10C5";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.5795577284653248 -7.5485750983261823e-10 1.4719248042638355e-10 ;
	setAttr ".r" -type "double3" 1.4602709320101939 -39.558478476165973 -0.93011580036176145 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "3E4E3A10-4136-0EBB-CE66-9E817F98605D";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.9366106004663823 1.4245493673570309e-11 2.2318538128729415e-09 ;
	setAttr ".r" -type "double3" -0.42868454630810876 -31.493451577779997 0.22394830479530262 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "09F13A3F-4A6C-173C-2FF5-6C9A75401335";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.6141825737368265 6.3248428716633498e-10 5.9709609701030786e-08 ;
	setAttr ".r" -type "double3" 71.005082889498738 5.3992794259425524e-05 90.000000095998658 ;
createNode transform -n "motion_IK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "F9668835-4A72-1223-AD22-81B633F63E73";
createNode transform -n "IK_shoulder_space" -p "motion_IK_arm_GRP";
	rename -uid "ECB3671C-48A1-2F80-7241-119B52B44FB9";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "0F299588-4428-A79C-5797-439252DABF30";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "8EDFA8BE-4771-BB70-7F70-0A8B39C373D4";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "62B80095-4075-BB49-3E96-F483847552DF";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "A67C41E6-4710-B006-FBFF-80B4A78FD8BB";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "C1D1EB69-472F-DC0F-616E-8A9266E43CB4";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "E5AD0281-4DEC-89CB-9801-45BBE3BE1BED";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "5D42DDE3-488A-838C-E976-309C797886C9";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_space" -p "upper_stretch_output_LOC";
	rename -uid "3E189714-425B-85CC-175F-F28C07B2F5FC";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "C3182980-41C5-B420-A2A5-78BF54853A7D";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "79282ACE-4E64-4BB5-B944-EAB15A9A4928";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "081F3137-4A5A-7961-0A8C-EBACD19AB7A1";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "DDC1496E-4071-656E-1244-39A578CF825C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "91BC9996-47B0-7696-31BA-038B49E47748";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "B6E2BF6B-4394-0FE3-4861-E3A0BB7C83DB";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "2F68ACBB-461B-5883-D029-BBADEAC480BC";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "81B42A14-40D3-B6F7-F92A-97B7EBB2F346";
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
	rename -uid "1BC0F859-47C8-21F1-25E1-DAB7E0B91C10";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "4E779018-4FB5-147B-C708-81A67F43CCB6";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "DA2A0419-42EF-8D4E-CB04-22B1433A1715";
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
	rename -uid "AC1BBBB6-4836-905A-F7A2-D89CA2AE190A";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "117B3A7D-423D-0663-BE31-5DA9F8A44158";
	setAttr -k off ".v";
createNode transform -n "F_softIK_input" -p "motion_IK_arm_GRP";
	rename -uid "51D7A724-4D1A-ADDE-0EE9-E2B230CA61F6";
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
	rename -uid "12BA18F1-478F-E58B-40D5-5FA27E0F24E5";
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
	rename -uid "02C3A3AB-4714-D155-51CA-519AA13F2B6B";
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
	rename -uid "477E5909-48B5-B68C-6223-E7AAD3A75A79";
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
	rename -uid "9649F220-4BB3-21C6-D38E-57A911244221";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "D70BC2C5-4634-5AB8-12C7-A6A3776DD8BC";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" -0.00010944972383474994 0.0028068685275332021 0.00012348970563510775 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "2A37FE3D-40DD-2ED4-EF21-63B7B4CBB2E3";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.152679443359375 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" -2.0638220867410521e-12 0.012241999888936551 -3.6224648505731234e-11 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "9F2F9F56-42D8-F7DA-CDDF-3BBCD2D2E4F2";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.031987190246582 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" 0.30604380162574285 -0.070901180809401568 -0.00097264739516143991 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "64D8F1FE-461F-DEC1-4373-8FA7C7EAAC5D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795578956604004 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" -0.23479414420015199 0.058438604602052517 0.19444936942753915 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "6C5109F3-4980-4F68-7881-6EA679269104";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -0.0011320680876817696 -0.001444231668485538 0.00064440643334816034 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "760FFD1C-4455-5734-6D9E-3393E1FC9B2F";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "710B4A38-49F6-2C67-13CC-FCB482AEF439";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "58497055-477F-D411-6D8C-8AB830A6C5F5";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "7A7A09B3-4810-B2AC-3FA0-4EAE59AE8BFB";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "7EFE92D1-42DB-1F75-55B7-20BDFE4A8B2D";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "58DEB013-405C-02DD-35D5-9FAF011B63D3";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "382BB529-4864-7A6C-CF11-2F9AE436D83D";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "F_IK_scapula_aim_space" -p "motion_IK_arm_GRP";
	rename -uid "D3E47621-4E35-0783-BA02-E4B301988396";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode parentConstraint -n "F_IK_scapula_aim_space_parentConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "6A2E21EB-444D-D5AC-C4D1-B394019F9FFA";
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
	rename -uid "03901C20-4C17-4616-C96E-A590E7CDC0D1";
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
	rename -uid "22E015E7-428B-B9B5-4B0C-65BDE2C9D311";
	setAttr ".v" no;
	setAttr ".sh" -type "double3" -1.3407756635411868e-10 0 -1.1400404598915197e-08 ;
createNode transform -n "F_IK_foot_IKH_spcGRP" -p "F_IK_foot_IKH_offGRP";
	rename -uid "203F7A9A-4B80-4FB4-9875-06B9BCAF5890";
createNode transform -n "F_IK_foot_IKH_stretched_space" -p "F_IK_foot_IKH_spcGRP";
	rename -uid "2CA1CDD8-4BF5-B3C2-FBF4-B5B60DA58505";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" 0 4.5795574188232422 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode ikHandle -n "ikHandle1" -p "F_IK_foot_IKH_stretched_space";
	rename -uid "1F261A43-4B50-C406-0A03-BE8499F6DE58";
	setAttr ".t" -type "double3" -0.018615705346738842 7.8927061871958415e-05 2.1234761550914527e-05 ;
	setAttr ".r" -type "double3" 2.5882698378452331 -0.41960739676470571 -0.072194743298763853 ;
	setAttr ".s" -type "double3" 1.0000000000006601 0.99999999268661144 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484928169353064e-10 1.6005935782546354e-10 1.2770773227402367e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "5A2D539D-444E-10EF-0273-41879985B297";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "poleVec_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.37028779104066079 -10.925241539581762 -28.618754193004673 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_wrist_IKH_offGRP" -p "motion_IK_arm_GRP";
	rename -uid "185DD25E-4BB1-703F-6A01-928C2E5000EF";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.0000000000421587 1.0000000049107367 0.99999999504710524 ;
	setAttr ".sh" -type "double3" 2.4192292366149829e-10 2.7025974036510174e-10 -4.9077322426682531e-08 ;
createNode transform -n "F_IK_wrist_IKH_spcGRP" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "74631481-44B1-E0B6-8AC0-369F1CA1F56C";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode ikHandle -n "ikHandle2" -p "F_IK_wrist_IKH_spcGRP";
	rename -uid "42F1CDAE-4C35-8DAC-DD01-1FB9FF15528D";
	setAttr ".t" -type "double3" -4.7843769834798877e-07 0.00011821710214698911 6.4083167217177106e-07 ;
	setAttr ".r" -type "double3" -0.54547297245450888 0.15887274140822377 -89.766315359356682 ;
	setAttr ".s" -type "double3" 0.9999999952166112 0.99999999995787225 1.0000000048255155 ;
	setAttr ".sh" -type "double3" 7.4955236486562746e-10 -4.9127046391158295e-08 -1.6183015439831835e-10 ;
	setAttr ".pv" -type "double3" -1.1761283891172135e-05 -0.0027693946176213921 0.99999616997701735 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "F_IK_wrist_IKH_offGRP_aimConstraint1" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "9CFDC309-43B1-5958-9FD5-77B0F2CA7DD1";
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
	rename -uid "770DCD59-4B1E-E775-8A63-839F4658A1FD";
	setAttr ".sh" -type "double3" 0 5.0848239461121112e-09 0 ;
createNode transform -n "F_IK_B_elbow_upVec" -p "F_IK_B_elbow_aim_space";
	rename -uid "26D12DB7-4B6F-49BD-A681-379BA4A64BB1";
	setAttr ".t" -type "double3" -1.0310053158435474e-11 5 4.0902489728544822e-11 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "motion_FK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "3B2849BE-4A76-B6CF-1E44-8D9D9EE2DA99";
createNode joint -n "FK_scapula" -p "motion_FK_arm_GRP";
	rename -uid "F7250F55-4129-24B7-CBA0-70966CE27F3E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "EC8AEC89-4C85-1C14-BCF4-09BABD421DC0";
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
	rename -uid "4AF0FC4F-425F-3C1C-950C-749A2DDAE122";
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
	rename -uid "CE5ECC5A-4EBA-E116-363B-1BA779DBB59A";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "E396A40F-441C-08AC-D9AA-5F8B0EF9E785";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "8E32EFD3-456D-FC96-103F-D884C98A6457";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "EF655ACF-4C74-4B07-F6A7-3BA48A8A6B7C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "F6255746-433E-97D8-18D3-3D8D6BB40F43";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "D3B4F51C-48CA-5048-7F88-218F7A6510CA";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "E2850DBD-42E9-5DA3-872C-7F91325906DF";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "19A8BC19-4A13-F1B3-7CBF-33A1F17E0EC2";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "622B0956-4E2E-B40B-2AC3-E5ACF886F0AC";
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
	rename -uid "EB3BBD8D-42B6-81A7-B943-FD83A4616EB1";
createNode transform -n "IK_shoulder_CTL_offGRP" -p "scapula_CTL_ivsScale";
	rename -uid "E25C67B9-4CD5-B896-187A-83B7FA62F9DC";
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "1F9AB03E-44D0-1043-3B21-63835DDF1ABC";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "B5D25AC6-4785-DF8D-51CA-6886F7869554";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "BE7D3004-4F15-A308-7A66-D6A2B60E1606";
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
	rename -uid "3A83A6D7-4F29-DAF3-7D24-5DA6895C276C";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674386 1.0000000222718179 1.0000000028214373 ;
	setAttr ".sh" -type "double3" -8.0815278926231564e-10 3.4848956455488224e-08 -2.2852080175786929e-08 ;
createNode transform -n "F_input_F_toe_space" -p "IK_arm_CTL_GRP";
	rename -uid "CBBA64F7-408C-0F32-BDB1-BB8206D6FAE6";
	setAttr ".r" -type "double3" 1.6469325546113447 -67.218225318270896 -1.1283633139358367 ;
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_IK_foot_CTL_offGRP" -p "F_input_F_toe_space";
	rename -uid "B85332CF-4CBA-B94A-5A63-A9B46C46F57F";
	setAttr ".r" -type "double3" 39.512126764094496 0.36560916188151232 89.999999992268116 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_IK_foot_CTL_spcGRP" -p "F_IK_foot_CTL_offGRP";
	rename -uid "072BB49C-4E2A-9C23-8301-C4941C9ADBDE";
createNode transform -n "F_IK_foot_CTL" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "7EFCA1BF-4A92-25B8-6664-C5864F7D5950";
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
	rename -uid "A7271959-4107-AB3E-0275-D3AE92ECD1F5";
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
	rename -uid "0A3ABCB7-41B2-BA4D-2198-8CBC02F04C93";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00042915506789320546 -2.6714803804686604 -0.58180752943567171 ;
	setAttr ".s" -type "double3" 1.0000000000000189 1.0000000001270557 0.99999999987292476 ;
createNode locator -n "F_IK_heelShape" -p "F_IK_heel";
	rename -uid "4B8933C2-4260-5B56-9A6C-A3BCD16874FE";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_CTL" -p "F_IK_heel";
	rename -uid "92B77746-4707-1BB1-784A-32A0C0D77CA4";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_heel_CTLShape" -p "F_IK_heel_CTL";
	rename -uid "1A7E277F-49BD-578B-7F1B-F3B33FC8EB09";
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
	rename -uid "F2EEAA2B-4ABF-248B-F1B9-1DB3EFF2B3F6";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_outShape" -p "F_IK_heel_out";
	rename -uid "16129356-4C96-E48A-A57D-59B127F83574";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_in" -p "F_IK_heel_CTL";
	rename -uid "DB44C70D-45C8-9254-1181-978DDE0A44C5";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_inShape" -p "F_IK_heel_in";
	rename -uid "37AF71BA-48CE-27E3-D987-A5BFAFC33991";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_toe" -p "F_IK_heel_CTL";
	rename -uid "37D2D0DB-4BF6-DACB-A9F1-0998540564C1";
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
	rename -uid "5249B57D-4C9D-0A1F-F470-BEA90FF89AF0";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_toe_CTL" -p "F_IK_toe";
	rename -uid "C92760EA-491D-12A8-D4C9-C9842F30B1BF";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_toe_CTLShape" -p "F_IK_toe_CTL";
	rename -uid "BD7E5606-45A2-6CA9-DC95-1A9CF46C92A6";
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
	rename -uid "CA746296-4DF8-9D3C-2282-D2B3E05E754F";
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
	rename -uid "447EAF2B-4B80-7F9B-2308-47AE3F450DE2";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_ball_CTL" -p "F_IK_ball";
	rename -uid "142D6F6E-4649-1D58-4E32-63BF880CDEE2";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_ball_CTLShape" -p "F_IK_ball_CTL";
	rename -uid "A3D566F0-4008-F225-FAEC-19A8E9F577AD";
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
	rename -uid "BA71EAF5-4773-7A53-09CA-20BB3A1B38EA";
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
	rename -uid "0A768B90-4955-3442-F51D-A68A97CA8E23";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_wrist_CTL_offGRP" -p "F_IK_wrist";
	rename -uid "1E3A171B-4F73-F600-3432-8FBE70D4807A";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".r" -type "double3" -2.3854175277042937e-15 1.5530052155583574e-18 -2.4799552035947529e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_IK_wrist_CTL_spcGRP" -p "F_IK_wrist_CTL_offGRP";
	rename -uid "6CFF1D1C-438E-89B1-4959-3495E70D8D60";
	setAttr ".r" -type "double3" -2.3854190443109495e-15 3.1060104311167156e-18 -2.4702489209975132e-17 ;
createNode transform -n "F_IK_wrist_CTL" -p "F_IK_wrist_CTL_spcGRP";
	rename -uid "F724B005-43AA-561B-89EC-76A28A053727";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_IK_wrist_CTLShape" -p "F_IK_wrist_CTL";
	rename -uid "8F89B7D4-4AE6-1CB7-89E0-69B2FE134894";
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
	rename -uid "5D001B4F-4E55-8635-AFD1-E78D18657D40";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "F_IK_wrist_space_offGRP" -p "F_IK_wrist_aim_space";
	rename -uid "99D22E2B-4E7B-E14E-915E-F38C7D61C0D9";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" -0.018614775832398678 4.5795188274951375 0.0044852925735376914 ;
	setAttr ".r" -type "double3" -2.1699802898036298 0.42445712589591633 0.044864058968832513 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
createNode transform -n "F_IK_wrist_space_spcGRP" -p "F_IK_wrist_space_offGRP";
	rename -uid "6DB64D3E-44A5-FA07-F236-C5BFDCD370CF";
createNode transform -n "F_IK_wrist_space" -p "F_IK_wrist_space_spcGRP";
	rename -uid "39111C63-4BB9-5407-2A0B-99BE854C9CCD";
createNode locator -n "F_IK_wrist_spaceShape" -p "F_IK_wrist_space";
	rename -uid "F81B7CEA-44B8-B6AB-733B-D9954262675E";
	setAttr -k off ".v";
createNode transform -n "F_IK_ball_HIK_offGRP" -p "F_IK_wrist_space";
	rename -uid "73A6CD8E-4D43-2896-A8F8-42B694E3661C";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999989 ;
	setAttr ".offset" -type "matrix" 0.99999999999999978 4.9629248566405559e-18 -1.8965067689023785e-16 0
		 1.4420769014228965e-18 0.99999999999999989 -2.1033522146218786e-17 0 2.215499376838348e-17 1.1058862159352145e-16 0.99999999999999989 0
		 -1.7763568394002505e-15 -1.1102230246251565e-15 0 1;
createNode transform -n "F_IK_ball_HIK_spcGRP" -p "F_IK_ball_HIK_offGRP";
	rename -uid "6FD5448F-40AF-4439-D752-488398C43B5B";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode ikHandle -n "ikHandle3" -p "F_IK_ball_HIK_spcGRP";
	rename -uid "B096A5F5-4532-4594-74C4-9D86A61906ED";
	setAttr ".t" -type "double3" -2.7716673400846048e-10 7.13942862720085e-05 -5.8896800879892908e-05 ;
	setAttr ".r" -type "double3" 0.36682853681319 -39.407319203328051 -89.999981552702693 ;
	setAttr ".s" -type "double3" 0.99999997501724491 0.99999999994995847 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -1.6569485866874694e-05 -0.001936703931673155 0.99999812932350263 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_toes_offGRP" -p "F_IK_wrist_space";
	rename -uid "3EB82B7B-4F47-2315-E93F-529D05B58ACD";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000001123986972 0.99999991149429801 0.99999997610701563 ;
	setAttr ".offset" -type "matrix" -1.122524116587561e-05 -0.3271762692356654 0.94496344560011036 0
		 0.99999991126344923 1.3640862050561222e-05 1.6601918939111104e-05 0 -1.8321869029597954e-05 0.94496331677768519 0.32717622441561645 0
		 4.0569045308913587e-05 1.1824749912369799 -3.4152706560900619 1;
createNode transform -n "F_IK_toes_spcGRP" -p "F_IK_toes_offGRP";
	rename -uid "3D81FA4F-47D1-CFF8-9EC8-9BB4A407ABDF";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 0 ;
createNode ikHandle -n "ikHandle4" -p "F_IK_toes_spcGRP";
	rename -uid "5B3047FA-4DF2-007A-A0B5-7699BBA9F3AA";
	setAttr ".t" -type "double3" 3.6141828709296568 1.0266445471529551e-09 -1.3036567914070929e-07 ;
	setAttr ".r" -type "double3" -0.0010497036872594225 -0.10178956180527497 0.00064504591715971928 ;
	setAttr ".s" -type "double3" 0.99999987634694898 1.0000000884566962 1.0000000351963667 ;
	setAttr ".sh" -type "double3" -1.6375400185764307e-10 4.5122375985809187e-08 -2.7121353226259421e-10 ;
	setAttr ".pv" -type "double3" 0.94559510906539035 5.3060795854239578e-09 0.32534551405281276 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_wrist_upVec" -p "F_IK_wrist_space";
	rename -uid "938B0D38-4207-3B48-9D64-06A6CE5DCBD3";
	setAttr ".t" -type "double3" 5.0149187335882859 -4.5814882082128987 -0.14031934237416621 ;
	setAttr ".r" -type "double3" 2.0594095074060412 -0.42147551289646024 -0.061649804715152537 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
createNode orientConstraint -n "F_IK_wrist_aim_space_orientConstraint1" -p "F_IK_wrist_aim_space";
	rename -uid "1816C325-4F1E-893B-D304-95A4A578D1B3";
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
	setAttr ".rsrr" -type "double3" 0.11096697536063686 -0.00095087604771596033 0.00077931747371000055 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "F_IK_wrist_HIK_aim_space_01" -p "F_IK_wrist_CTL";
	rename -uid "C44E04CB-438A-1413-F5EA-E09E76683BC8";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -4.4408920985006262e-16 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999933 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_01_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_01";
	rename -uid "FF41691F-41C7-765E-D4E6-978A5BCB12D1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_wrist_HIK_aim_01W0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -0.052686036250518771 -0.84397623229445373 -0.23291910470378457 ;
	setAttr ".rsrr" -type "double3" -5.8237695583438427e-19 1.988089332979629e-16 -4.9599104071895052e-17 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_wrist_HIK_aim_space_02" -p "F_IK_wrist_CTL";
	rename -uid "89D6234D-468A-D4AA-B141-A2A12345AE71";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_02_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_02";
	rename -uid "6D4AF210-418C-35B9-B061-BE8A7E227EA1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_wrist_HIK_aim_02W0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -0.052686037209425066 -0.84397599641928267 -0.23291910468967891 ;
	setAttr ".rsrr" -type "double3" -4.2513517775910044e-17 -2.9827406421317714e-16 
		4.9890292549812244e-17 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_toes_CTL_offGRP" -p "F_IK_ball";
	rename -uid "65971F9A-4C01-17F5-BFC3-3C8187BE9A4E";
	setAttr ".t" -type "double3" -2.7219027032288068e-10 3.4425292410489305e-05 -2.8520831147460513e-05 ;
	setAttr ".r" -type "double3" 0.0018582069029984454 -70.902162945575128 -90.001965772588477 ;
	setAttr ".s" -type "double3" 0.99999998872355333 0.99999999995783906 1.0000000113186065 ;
	setAttr ".sh" -type "double3" -1.7648380828941762e-10 4.4669212600603299e-08 -3.1653020613024059e-10 ;
createNode transform -n "F_IK_toes_CTL_spcGRP" -p "F_IK_toes_CTL_offGRP";
	rename -uid "E65064F5-4F3E-D3F5-3CBB-9B9BFC2B4330";
createNode transform -n "F_IK_toes_CTL" -p "F_IK_toes_CTL_spcGRP";
	rename -uid "E81C0E69-406F-559E-64BF-66876FBDBCFC";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "F_IK_toes_CTLShape" -p "F_IK_toes_CTL";
	rename -uid "5F2D73C8-403A-3E4A-C1AB-429B8CF2DEF6";
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
	rename -uid "EE5A350C-409A-CFEF-62FD-239D1CDDA030";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.9999832928857222 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000191 1.0000000001270566 0.99999999987292443 ;
createNode transform -n "F_IK_wrist_HIK_aim_02" -p "F_IK_foot_CTL";
	rename -uid "0CACB1D7-4A6F-5DA8-81A2-4586A65C5C7F";
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
	setAttr ".t" -type "double3" -0.018614769996910141 4.5795176277955791 0.0044861075223394664 ;
	setAttr ".r" -type "double3" -0.84375201773198349 0.05612661677724818 -89.767106054986641 ;
	setAttr ".s" -type "double3" 1.0000000700823006 0.99999991128717614 0.99999999768729619 ;
	setAttr ".sh" -type "double3" 1.5655379779092779e-09 -4.2708689192483902e-08 2.2860027553626469e-09 ;
createNode transform -n "F_IK_wrist_HIK_upVec_02" -p "F_IK_wrist_HIK_aim_02";
	rename -uid "95FC983F-4B0F-FFFD-9C7B-1584E04A3170";
	setAttr ".t" -type "double3" -9.9193693353201921e-13 5 2.0584291599257173e-08 ;
	setAttr ".s" -type "double3" 1.0000000000068536 0.99999999991385691 1.0000000000792879 ;
createNode locator -n "F_IK_wrist_HIK_upVec_02Shape" -p "F_IK_wrist_HIK_upVec_02";
	rename -uid "8AF0730D-4210-A255-7F58-449E83702327";
	setAttr -k off ".v";
createNode transform -n "F_IK_wrist_shoulder_aim_01" -p "F_IK_foot_CTL";
	rename -uid "032D568A-4805-7EA8-D465-A191D2793F34";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 3.9968028886505635e-15 0 ;
	setAttr ".s" -type "double3" 0.99999993611096738 0.99999999034241616 1.0000000022114479 ;
	setAttr ".sh" -type "double3" -7.817330296817891e-10 -9.268601375083969e-10 6.165466216756867e-08 ;
createNode transform -n "F_IK_wrist_HIK_aim_01" -p "F_IK_wrist_shoulder_aim_01";
	rename -uid "33A1EA6F-401D-6BEE-E2F2-14B614D90DCF";
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
	setAttr ".t" -type "double3" -0.018614767602073812 4.5795176717460642 0.0044861075124238425 ;
	setAttr ".r" -type "double3" -0.84375196204423752 0.056126616114598078 -89.767106087183834 ;
	setAttr ".s" -type "double3" 1.0000002927086924 0.99999980904432084 0.99999994863898856 ;
	setAttr ".sh" -type "double3" 6.7645397130799897e-09 -8.0910856642373147e-08 2.1855511211729325e-08 ;
createNode transform -n "F_IK_wrist_HIK_upVec_01" -p "F_IK_wrist_HIK_aim_01";
	rename -uid "DFAB0992-452C-F397-E05D-61B3B2DEC2A0";
	setAttr ".t" -type "double3" 1.8511786260916553e-11 5 0 ;
	setAttr ".s" -type "double3" 1.0000000000068536 0.99999999991385691 1.0000000000792879 ;
createNode locator -n "F_IK_wrist_HIK_upVec_01Shape" -p "F_IK_wrist_HIK_upVec_01";
	rename -uid "013A1CB0-44D7-1D52-4D55-30B3CAB4C1F5";
	setAttr -k off ".v";
createNode aimConstraint -n "F_IK_wrist_shoulder_aim_01_aimConstraint1" -p "F_IK_wrist_shoulder_aim_01";
	rename -uid "E9A494E7-40B7-58B6-E752-12A3C45D1B58";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_wrist_aim_01_offGRPW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -6.4370661533318394 -2.7230753416185795e-05 -0.13929088124970626 ;
	setAttr ".rsrr" -type "double3" -1.5902818905517259e-15 3.1060104311167152e-18 -2.4751020622961327e-17 ;
	setAttr -k on ".w0";
createNode transform -n "IK_wrist_aim_01_offGRP" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "CB24D089-4C55-9EBF-EC59-77AB71A64236";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 4.1400102720045335e-06 0 0 ;
	setAttr ".s" -type "double3" 0.99999993653098629 0.99999997611884706 1.0000000160150011 ;
	setAttr ".sh" -type "double3" -1.374294140973877e-09 -1.6453843262042158e-09 2.0616827675848184e-07 ;
createNode transform -n "IK_wrist_aim_01_spcGRP" -p "IK_wrist_aim_01_offGRP";
	rename -uid "C7299C88-440E-4A52-3B60-17AE59C6AF8D";
	setAttr ".t" -type "double3" 4 -8.4523057846777332e-15 -3.5527136788004997e-15 ;
createNode transform -n "IK_wrist_aim_01" -p "IK_wrist_aim_01_spcGRP";
	rename -uid "E873F960-47A3-94AE-85EA-5083A8CD970C";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
createNode locator -n "IK_wrist_aim_01Shape" -p "IK_wrist_aim_01";
	rename -uid "C76E80FD-47E8-3D4B-4A2F-91B18AB9AB9D";
	setAttr -k off ".v";
createNode transform -n "poleVec_CTL_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "2106B931-4B27-C551-BEDF-398FE1488FF2";
	setAttr ".s" -type "double3" 1.0000000016926789 0.9999999998525736 0.99999999845474818 ;
	setAttr ".sh" -type "double3" 1.3697651388863182e-08 5.2127922059501322e-08 4.2221133955532042e-08 ;
createNode transform -n "poleVec_CTL_follow_GRP" -p "poleVec_CTL_offGRP";
	rename -uid "2F52DC82-4251-093F-45D1-37A9625D6BD5";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode transform -n "poleVec_CTL_spcGRP" -p "poleVec_CTL_follow_GRP";
	rename -uid "835F9591-45EB-1F08-6AE8-638ACDA47864";
	setAttr ".s" -type "double3" 1.0000000224337573 0.99999998888163488 0.99999998868460549 ;
	setAttr ".sh" -type "double3" 8.0067073892273867e-10 2.3049398956053739e-08 -8.4540291715809198e-08 ;
createNode transform -n "poleVec_CTL" -p "poleVec_CTL_spcGRP";
	rename -uid "55F47FE6-4DAC-D8D1-3428-A1B87B374066";
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
	rename -uid "3D37D113-4BD9-56AB-51FF-78AD953C16C2";
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
	rename -uid "3EBF08BE-455F-13C7-7C63-71AC03720998";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -8.8817841970012523e-16 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -1.9878468066601721e-16 1.4908849550211957e-15 -1.5530051614804122e-18 ;
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode transform -n "poleVec_shoulder_space" -p "poleVec_CTL_offGRP";
	rename -uid "03E0468F-4824-1DC9-CECB-67A53C8CD07C";
	setAttr ".s" -type "double3" 1.0000000097083486 1.0000000109591656 0.99999997933248741 ;
	setAttr ".sh" -type "double3" 6.3869163198686105e-09 -1.2552954657608961e-08 8.5535809812809098e-08 ;
createNode transform -n "poleVec_aim_space" -p "poleVec_shoulder_space";
	rename -uid "3D56CD2A-4DF8-25A4-E82C-0B9CA7B33F1F";
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
	setAttr ".t" -type "double3" 11.152668826586087 -0.015374690498712873 0.00059902268711198303 ;
	setAttr ".r" -type "double3" -0.41612182539463455 -19.830677406473008 0.062159086993996165 ;
	setAttr ".s" -type "double3" 0.99999997532390117 1.0000000007361156 1.000000023939984 ;
	setAttr ".sh" -type "double3" -3.6042864034426506e-08 5.6793844932891739e-09 5.8892091814765437e-09 ;
createNode aimConstraint -n "poleVec_shoulder_space_aimConstraint1" -p "poleVec_shoulder_space";
	rename -uid "779A695A-48AF-DD08-E5AB-3D916274CD39";
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
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -0.46335481866733619 12.530030512577174 -0.10829951760442351 ;
	setAttr ".rsrr" -type "double3" 0.41993759814857673 19.830599747479596 0.083985982153416169 ;
	setAttr -k on ".w0";
createNode transform -n "FK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "9BD46028-4469-3E66-7C76-7997144B4821";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "00CFE865-480A-5D8A-DB63-BC97F5F14F3E";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "CE4E4624-4E43-4F3E-7AE0-32B579729BF3";
createNode transform -n "FK_scapula_space_ivsScale" -p "FK_scapula_space";
	rename -uid "C3873756-4F88-9DF9-CA8C-808FE7C65CB2";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space_ivsScale";
	rename -uid "060BCB7B-4734-416E-BFAC-6E907B3806E6";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "A65C4FF5-487B-FA68-7029-328A85DF2C60";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "C54554A3-4EAA-0328-FDC8-7B876941426F";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "17371C3C-4C2F-38EA-8730-FDA94A93374E";
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
	rename -uid "59EF80DC-47EE-6B4D-7EAD-908B6B5E7C6A";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL_ivsScale";
	rename -uid "D83C1E60-4238-A614-8739-4A9C61477EF5";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "397DAAED-4904-F8BE-A566-8DAED7EF4A4B";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "043A56FD-4FCD-9918-F766-999477525E23";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "823E2D02-426F-CD38-D2F2-8F9E74BFD3F8";
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
	rename -uid "289009ED-414B-7B73-056D-9CA3CA1D6102";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL_ivsScale";
	rename -uid "3745D699-47EC-5AC5-3B9F-AC907359A9F1";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "EBE6D239-4CC0-F24D-2F61-3E901E104AC6";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "F2BDB2DF-43F7-EC3A-C5FF-DE8FF3C750D6";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "3EF735A7-44F2-8455-5407-ACA8795B2712";
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
	rename -uid "6CE307B9-4370-B15A-D1D1-3390FB80C05B";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL_ivsScale";
	rename -uid "DB2E8CF6-4A4A-32AC-3710-D9BF2AA7DD9C";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "BB181559-4A54-0FCD-D1D1-3F8DD71199D0";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "45F2BEA0-48A3-2AC2-2103-FC8EB04E4ADE";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "74BCC80D-4A67-1FAB-EBD7-B3B0A89CA66B";
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
	rename -uid "88DE2040-43A5-BE69-B9A0-AEB4315FF89F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 5.3290705182007514e-15 ;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL_ivsScale";
	rename -uid "0EA33815-4CEE-884D-C4BB-119662D9CBCF";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "03EE40B3-4D53-DBEC-AC80-73A45D76C558";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "BC1C0CEF-4193-391D-0DA6-FCA684A54C84";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "DD9C5331-44A9-6E71-E5F8-72BE79E3DB8E";
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
	rename -uid "DAB5CBDB-46A3-4B02-1379-8F953F92F282";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "B0B7CC0A-4342-910B-484C-2D8DABE9422D";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "C6F89595-4AD0-3B3E-1257-649B3DFE7F4E";
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
	rename -uid "417FB6FF-49AB-2DA7-FA81-5BB853697239";
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
	rename -uid "7C8F9AFC-4FD4-30E5-C597-AF8568600C8B";
createNode joint -n "scapula" -p "arm_output";
	rename -uid "377360A3-466D-4131-EFE9-EB9718E2EBB6";
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
	rename -uid "CD4CA7EB-43C9-43F9-02C5-789CF0178E4A";
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
	rename -uid "860C236F-4984-5D59-87A8-B282D73174A7";
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
	rename -uid "65BF5F90-427A-CC63-56E0-A3B21E0036D2";
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
	rename -uid "454EB1E2-4829-D8D6-5338-11A5C211AACA";
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
	rename -uid "328C8559-46C3-827B-5670-4D9F82251971";
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
	rename -uid "3B74F314-4BAA-DF53-1B6F-B68CBF58044A";
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
	rename -uid "38A8B018-497C-AA38-9190-D0B082AE2AC4";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "2138B9CD-4AB8-A493-CC3F-54AD9E39C39B";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_CTLVal_MULT";
	rename -uid "170CA0C8-4ADB-8316-7C22-33B958B2D8A6";
createNode multiplyDivide -n "loarm_stretch_output_mul_CTLlVal_MULT";
	rename -uid "C7EC71E4-4C0F-CDAC-1F62-82A61A7B8E99";
createNode plusMinusAverage -n "soft_armLen_PMA";
	rename -uid "5E1005F0-49CA-0186-157E-19BD0F432FA3";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "CBA98AD2-4D51-EE62-C99F-FCB736F7824B";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "18CD3A64-41F1-6108-7D5D-82BE5B2FB7C3";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "B662AF0B-4860-D34C-F58B-A088C6E8B12D";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midarmLen";
	rename -uid "A6C44039-46A1-163D-AE4F-5C99B5FF6D0C";
createNode multMatrix -n "input_F_elbow_local_MTMX1";
	rename -uid "ECD3BE43-4443-1573-B5CB-028AE8D91822";
	setAttr -s 2 ".i";
createNode distanceBetween -n "upIKLen";
	rename -uid "32038554-48E2-9712-14D4-7A806F36F498";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "85E600B8-45B2-0C4E-D908-DB9E8898A5BF";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "D00ED791-4509-D785-C3FD-699BD3A3BFEF";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val_MULT";
	rename -uid "99A9D1DC-4782-5F32-D808-02A06337E3C4";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "loIKLen";
	rename -uid "8E585563-40DA-D85C-EAC2-D59F91BB7392";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "08E1F3B0-4D56-BCF8-51BC-F6B92D2DB5D4";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "605EA842-433B-6B51-F007-649EB93021E3";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "loarm_soft_Len_PMA";
	rename -uid "BC60A004-444A-7FAE-1953-91BD716B76DC";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loarmLen";
	rename -uid "5616DD12-41D9-4242-A49F-C68426016D8C";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "C67F11A9-4011-8E52-E5A1-39A5B62F3509";
	setAttr -s 2 ".i";
createNode condition -n "CTLlen_COND";
	rename -uid "08621FAE-44F9-0421-BF21-E1B4A815BC20";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "7A6274DD-4058-42AD-DCF1-96970FA820E5";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len_SUBT";
	rename -uid "9453A06C-43AC-0EEF-EC0C-74BD605156C3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV_MULT";
	rename -uid "68397A33-4842-0C19-0FE6-DBBF5FD26468";
createNode multiplyDivide -n "power_val_POW";
	rename -uid "7EFBDA8D-4DB2-D42C-2E7A-97874C986D64";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val_MULT";
	rename -uid "1202B92E-45EA-D6C6-3471-94A5B897C677";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_uparm_softikV_DIVD";
	rename -uid "9E9627FE-4BC1-D4E9-B667-3B8D405C5F9C";
	setAttr ".op" 2;
createNode plusMinusAverage -n "CTLLen_minue_dif_SUBT";
	rename -uid "814D9404-4341-18EC-E21D-069149AF2643";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV_SUBT";
	rename -uid "12623603-4BB0-BF79-217C-5F842C843069";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "A7B9FD53-40F8-F04A-98A7-CFAE0E122A29";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_CTLlen_COND";
	rename -uid "70BCE96F-47E6-73B4-932E-11BB90368552";
	setAttr ".op" 2;
createNode condition -n "loarm_softikV_COND";
	rename -uid "9A645278-4B97-EC27-44CE-99B0D9BBEA44";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_result_softik_len_SUBT";
	rename -uid "BCAF78C8-434F-6E86-9257-7AA4311345D2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_mult_softikV_MULT";
	rename -uid "C1DA2BE6-4B6C-8ED0-4446-F2ACEDD36C7C";
createNode multiplyDivide -n "loarm_power_val_POW";
	rename -uid "B9ED47D5-4B3A-34FA-68E4-2EB93CEEC016";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "loarm_negate_val_MULT";
	rename -uid "CC28A758-4F20-61FF-2078-FABC5D4CAF3C";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_loarm_softikV_DIVD";
	rename -uid "5E11876A-4CDC-1112-7D7F-9482F78FF417";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_ctrlLen_minue_dif_SUBT";
	rename -uid "B50D58DA-411C-9DFF-ABED-4D84964CACCE";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_armlen_minus_softikV_SUBT";
	rename -uid "8893ADEA-4C63-A936-444D-A5990FA47D6B";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "midarm_plus_stretch_PMA";
	rename -uid "660F640D-4F8F-5DB2-75A1-0E9E3F61F649";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_midarm_MULT";
	rename -uid "223B9E42-425D-B3DE-67E8-60886B79A70B";
createNode multiplyDivide -n "stretched_midarmLen_MULT";
	rename -uid "E09ED02C-42F7-0EA7-07AB-8384F2AA2970";
createNode plusMinusAverage -n "stretchedLen_SUBT";
	rename -uid "4B6F9743-4DB0-EDB8-7580-4F844CFBD992";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "midarm_ratio3_DIVD";
	rename -uid "5D0FF98B-4160-72F4-18B9-9287625B074E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen_PMA";
	rename -uid "AFD5E34C-4F77-12CE-AC5F-199416E417B4";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch_PMA";
	rename -uid "9709760C-45E2-5A51-2008-61B01BCD9A99";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm_MULT";
	rename -uid "1D948A49-4C4D-287D-C672-AD8467D8E81D";
createNode multiplyDivide -n "stretched_uparmLen_MULT";
	rename -uid "C1176F3C-4E2A-0B7E-7989-08956A3EA106";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "052F865C-4E0D-5FDC-6647-5791421CBDFF";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_plus_stretch_PMA";
	rename -uid "DC278ECD-4DA0-7B1D-EFD5-9C8B663A7EE3";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_stretchCtrl_arm_MULT";
	rename -uid "4D74BD65-449D-8744-F666-C68757DF4554";
createNode multiplyDivide -n "loarm_stretched_arm_MULT";
	rename -uid "7EBA08A8-4CCE-873B-015F-E6B8F2000D35";
createNode plusMinusAverage -n "loarm_stretchedLen_SUBT";
	rename -uid "425C1954-4ABF-09BF-5500-B78F711D746F";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio_DIVD";
	rename -uid "737D9992-4930-03C3-2760-FF8A3908E1F4";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_stretch_armLen_PMA";
	rename -uid "4C32F9FF-4AF6-BB2F-8561-C3BECBE2C39A";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "029A5E22-459D-21DF-CDE2-23BDED54567A";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "D1415FC6-417D-62AF-99C6-648F799A1DDD";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "FBF96299-4195-C3EA-CACC-6ABEE4923ACC";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "7098786E-4394-688D-011A-68979A4FF771";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_wrist_space_scale_DCMX";
	rename -uid "01D5CF0C-4EE4-19C8-166B-F198F97A8D4A";
createNode decomposeMatrix -n "F_wrist_CTL_scale_DCMX";
	rename -uid "210D075E-4695-301D-8950-52AC581BB624";
createNode decomposeMatrix -n "F_ball_CTL_scale_DCMX";
	rename -uid "BFC1CAB5-49E9-2B5A-222F-3E9F1BE3706E";
createNode decomposeMatrix -n "F_IK_foot_IKH_offGRP_local_DCMX";
	rename -uid "ADB1E25C-4797-C3D2-B92B-9B8FB57A6EBA";
createNode multMatrix -n "F_IK_foot_IKH_offGRP_local_MTMX";
	rename -uid "BD510071-4DCE-4BA5-FECF-EEB5AB6C5258";
	setAttr -s 2 ".i";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "C6020993-447B-1CFB-2D80-32AC04FD3E15";
createNode decomposeMatrix -n "F_IK_wrist_IKH_offGRP_local_DCMX";
	rename -uid "8FD98237-4804-D59D-8173-28BE34039684";
createNode multMatrix -n "F_IK_wrist_IKH_offGRP_local_MTMX";
	rename -uid "AE82D478-4389-76A4-CD70-A79418C0E50C";
	setAttr -s 2 ".i";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "2A203F9C-4BF2-9413-47BF-079BE120E31E";
createNode decomposeMatrix -n "F_IK_B_elbow_aim_space_local_DCMX";
	rename -uid "C3F7D49C-41D7-9AD9-2726-4B9A4D5F6822";
createNode multMatrix -n "F_IK_B_elbow_aim_space_local_MTMX";
	rename -uid "0CCBE8BA-497D-F726-A4AF-F59692E335B5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_shoulder_CTL_local_DCMX";
	rename -uid "34105677-4B54-DA90-DCC4-CA9C4881FCFE";
createNode multMatrix -n "FK_shoulder_CTL_local_MTMX";
	rename -uid "013221B5-4755-F0A4-D20D-8188CDA767CF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_elbow_CTL_local_DCMX";
	rename -uid "6A7753D5-43BE-4B75-D543-1AA73611F349";
createNode multMatrix -n "FK_B_elbow_CTL_local_MTMX";
	rename -uid "CFAC6F7D-41E0-75B5-63F1-4D993ABDDD9B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_elbow_CTL_local_DCMX";
	rename -uid "0CE581C6-433B-1DF9-81E2-E5849DE2B5C4";
createNode multMatrix -n "FK_F_elbow_CTL_local_MTMX";
	rename -uid "52E73739-4C83-64F1-AFAB-899C8F99D4D4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_wrist_CTL_local_DCMX";
	rename -uid "E1120D87-47B3-85D4-BAFC-88956855F18A";
createNode multMatrix -n "FK_F_wrist_CTL_local_MTMX";
	rename -uid "A8774530-4820-C41B-9028-D6BB7F5D90DE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_toe_CTL_local_DCMX";
	rename -uid "06855D44-4821-269B-361E-F294FB720F90";
createNode multMatrix -n "FK_F_toe_CTL_local_MTMX";
	rename -uid "0F1CAA2A-4E4A-82F9-4843-0ABAAF89C597";
	setAttr -s 2 ".i";
createNode condition -n "arm_mirror_scale_COND";
	rename -uid "7406A33E-4ADA-3E64-E7A8-B1B3D1410368";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 1 1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "859B32CA-420F-6D65-94D1-5B8D20CD62D3";
createNode decomposeMatrix -n "scapula_CTL_inverse_DCMX";
	rename -uid "EB6D7A87-4595-2D5F-9157-C6AD850F1CA3";
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "558D6FF3-4643-A344-E5DD-DEAD43FA9A7D";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "81E2C0F2-43FF-E967-3760-DE853419999C";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion12";
	rename -uid "EF4FC8E9-40E8-C0E9-FAC2-C9AAA68834E5";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "arm_mirror_rotate_COND";
	rename -uid "06E73BA9-46F7-A56D-8ACD-64B711884011";
	setAttr ".cf" -type "float3" 0 -180 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "8C5511E0-4D9F-4E40-6E0C-6D8E3EEBEBF4";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition";
	rename -uid "AE6F26D1-462C-2E65-0FEF-76B2C8EA6EF6";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "D337E4AD-437B-AB95-103A-A49E82A16F29";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "BC8011F6-4CB8-391D-C53B-86B8665C5B54";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition";
	rename -uid "7D776496-4B94-549E-F255-AE852E816905";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition";
	rename -uid "471B315F-449A-1D28-B6ED-43A1B23F1025";
createNode unitConversion -n "unitConversion3";
	rename -uid "6D8B83FB-4D69-FD6A-4A05-699369AA31B8";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "A5A67DDE-4BD5-4025-6F76-96A4A56B1420";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "roll_angle_SUBT";
	rename -uid "ECE98CF7-427C-D56C-5FAD-C198870CBBA0";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion6";
	rename -uid "194D6D86-4225-FD0C-3752-6AA9E57A6FD8";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "E0B88A2A-44F2-AC9C-1A2F-B2821A2534B3";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "A0E81B35-4776-BC62-04AB-D19B2AFD330C";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "C56F8E36-4236-674C-1B4A-649B862D8D79";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon";
	rename -uid "8536171D-4E63-386B-79CA-568C5C4DAEE6";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition";
	rename -uid "E4A97FCB-49CB-AE80-3516-099789D579E5";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball_SUBT";
	rename -uid "5A5BD9D6-4566-5952-FC60-DBA38FB301F2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap";
	rename -uid "1B1EF3FE-483C-A2C9-C226-EBA558C6A38A";
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
	rename -uid "91FBCD62-4D34-8D88-290E-C093CC100671";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "2C930908-4FBD-2852-D909-DBAD87D0135C";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "D7BECBF8-41BB-363D-FF47-E895D9375DAE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_wrist_local_DCMX1";
	rename -uid "4640B575-464C-9D8A-6E6A-0790FCE8D39C";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "CBBB054F-42DA-0122-F4EE-AA8BB5021E61";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "9ECFE6A0-4461-E9AD-6DD5-DAB15EC7CF2A";
createNode multMatrix -n "input_F_elbow_local_MTMX2";
	rename -uid "4E0B74B8-4801-0D7F-C24F-B4BB668D9D02";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX";
	rename -uid "96C81543-40A6-983B-CCA5-9C9B5C7A29BA";
createNode multMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX";
	rename -uid "1E004053-4CAE-5F12-E1A7-BFAF8A0478DF";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "F_IK_toe2F_IK_toes_offGRP_DCMX";
	rename -uid "09DFF35D-4382-1847-14A0-CC801E133EE0";
createNode multMatrix -n "F_IK_toe2F_IK_toes_offGRP_MTMX";
	rename -uid "A8A2949B-43CB-BE41-DF56-8991E8855E8D";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion7";
	rename -uid "F2E92137-4CE8-1547-2D8C-39904A365D5A";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS";
	rename -uid "6E7CD6D3-4F3F-516E-6CE4-11B5F079C258";
createNode decomposeMatrix -n "F_IK_wrist_HIK_aim_02_local_DCMX";
	rename -uid "A7B8C8AD-444F-6E73-968C-15B442026C48";
createNode multMatrix -n "F_IK_wrist_HIK_aim_02_local_MTMX";
	rename -uid "B6F45E22-4443-092B-15C5-F4A47CED9F4F";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion13";
	rename -uid "C989CA7A-414C-CDB6-AACB-EF8356407063";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "null1_local_DCMX";
	rename -uid "55F9955E-41E6-AFD6-6ECC-ECB151CAFC94";
createNode multMatrix -n "null1_local_MTMX";
	rename -uid "B3C8D85B-49FB-6C42-7DE8-A282C52E19D8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_IK_wrist_HIK_aim_01_local_DCMX";
	rename -uid "FE0260D1-4B67-A5AD-C0C1-87B4415B348C";
createNode multMatrix -n "F_IK_wrist_HIK_aim_01_local_MTMX";
	rename -uid "69FC68E9-4256-3FC3-C0B5-ECA253E7CF71";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion14";
	rename -uid "DA57B8F3-4F23-1165-39D3-A2BD13303395";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "IK_wrist_aim_01_offGRP_local_DCMX";
	rename -uid "4C6B2641-4347-0918-BC9F-D29ECAF51953";
createNode multMatrix -n "IK_wrist_aim_01_offGRP_local_MTMX";
	rename -uid "C043C6E5-4220-324A-27D6-088BF3111454";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "poleVec_CTL_offGRP_local_DCMX";
	rename -uid "058A1DA1-4B31-CA28-9C24-ECAB3C86A8A3";
createNode multMatrix -n "poleVec_CTL_offGRP_local_MTMX";
	rename -uid "D3A83CA9-4F2F-026D-C8F3-DAAC13B57235";
	setAttr -s 2 ".i";
createNode pairBlend -n "poleVec_follow_PRBL";
	rename -uid "65DA6395-43EE-15F6-84AB-15AAE2A28350";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "8E46A75F-4CD1-CE65-2446-3EAD94624BDA";
createNode multMatrix -n "multMatrix1";
	rename -uid "8655638A-4D6B-A261-3547-079BB0ACCC0B";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion8";
	rename -uid "E4FEC07C-46D9-BE4A-3E83-348D9DE080AA";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "arm_mirror_trans_MULT";
	rename -uid "869BE663-4E4E-0323-0B7D-9FA45E26A605";
	setAttr ".i1" -type "float3" 0 0 25 ;
createNode condition -n "arm_mirror_trans_COND";
	rename -uid "76B51CA2-4033-1B0C-65AF-658658C71B31";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 1 1 -1 ;
createNode decomposeMatrix -n "poleVec_shoulder_space_local_DCMX";
	rename -uid "386BF70E-4151-5A3C-E525-978CF8EBC3BE";
createNode multMatrix -n "poleVec_shoulder_space_local_MTMX";
	rename -uid "A08100C6-4C7D-4F69-3F57-80B8163671AD";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "poleVec_aim_space_local_DCMX";
	rename -uid "2509CA64-4298-6A43-3A16-5485C978DE29";
createNode multMatrix -n "poleVec_aim_space_local_MTMX";
	rename -uid "7AB52D30-4AC4-B895-A5C8-50AA1C3D25BA";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion19";
	rename -uid "97F43665-4E7F-ADCA-A9AA-0887B1511D62";
	setAttr ".cf" 57.295779513082323;
createNode reverse -n "FKIK_RVS";
	rename -uid "050790B6-4342-0918-89F1-1595DB508534";
createNode decomposeMatrix -n "FK_scapula_space_inverse_DCMX";
	rename -uid "965CDA6D-4804-D499-9102-9E9DB6C02D7F";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "A2F1B26B-4970-A811-2822-A7BE0C87D94E";
createNode decomposeMatrix -n "FK_shoulder_CTL_inverse_DCMX";
	rename -uid "9B7909B1-4186-E01E-2C0E-43BF6C9AD0FD";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "8BD54064-49F5-0E6D-4972-76BBE87236AF";
createNode decomposeMatrix -n "FK_B_elbow_CTL_inverse_DCMX";
	rename -uid "98E98C03-48EC-914C-98DA-DE90F6F0F070";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "4C6D2CB5-49B2-C0E4-A0CC-218ACBCD3477";
createNode decomposeMatrix -n "FK_F_elbow_CTL_inverse_DCMX";
	rename -uid "937E3A15-40F5-CD89-A94B-6A9EE48236B3";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "0801F087-4885-4356-1E69-2AA6497BD9C9";
createNode decomposeMatrix -n "FK_F_wrist_CTL_inverse_DCMX";
	rename -uid "DD6975DD-43A9-A037-222C-44B45817FA39";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "7F8290FD-40BD-9B76-C8E7-819EB03DEBE6";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "FCDD3899-47F8-3AEE-8693-0D9FC0CBC746";
	setAttr -s 2 ".i";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "537B0E8A-4AAE-EE48-13ED-6693617935C6";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "04FAB2B5-45C1-0C6B-D7FE-75AFF138ABE1";
createNode blendColors -n "scapula_BLCL";
	rename -uid "82297FB1-4DFD-67D2-3615-9EAFBD35FBAE";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "85371061-4C3A-1C34-227F-24BDBAD0E6F6";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "7F48ECF3-44D0-3E58-9EF0-1FA0A55EF8DC";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "3839FFA3-447C-83DD-0FB0-FF95553BD9B7";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "BCC19711-4575-0DCA-2680-9E89D2C70E0C";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "9B822CA0-4488-CC9F-9DA3-C3B7892FABCE";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "EADB6D6B-450D-3F5F-3963-5D86212F97F7";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "4C9B729D-49E1-90DE-BD1D-519F0DA55BA7";
createNode blendColors -n "wrist_BLCL";
	rename -uid "35C7AF83-4A29-F4A7-2A8C-288193B35CAC";
createNode pairBlend -n "toe_PRBL";
	rename -uid "D4B64E0B-4650-C371-1F5E-B8991A8C0FA7";
createNode blendColors -n "toe_BLCL";
	rename -uid "1CE569F3-4CB6-D06C-EE52-CA95A7EFDA08";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "7DE97C9F-4295-1D24-09AE-BCB9C0869C44";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "6CEE6508-4BA0-4CAE-AC85-32ABDCDA5AC6";
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
	setAttr -s 111 ".u";
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
connectAttr "F_IK_wrist_HIK_aim_02.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "F_IK_wrist_HIK_aim_01.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "F_IK_wrist_shoulder_aim_01.reBuildMode" "arm_GRP.reBuildMode" -na;
connectAttr "poleVec_aim_space.reBuildMode" "arm_GRP.reBuildMode" -na;
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
connectAttr "F_IK_wrist_HIK_aim_01.t" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tt"
		;
connectAttr "F_IK_wrist_HIK_aim_01.rp" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_wrist_HIK_aim_01.rpt" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_wrist_HIK_aim_01.pm" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.w0" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_wrist_HIK_upVec_01.wm" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.wum"
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
connectAttr "F_IK_wrist_HIK_aim_02.t" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tt"
		;
connectAttr "F_IK_wrist_HIK_aim_02.rp" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_wrist_HIK_aim_02.rpt" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_wrist_HIK_aim_02.pm" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.w0" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_wrist_HIK_upVec_02.wm" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.wum"
		;
connectAttr "F_IK_wrist_HIK_aim_02_local_DCMX.ot" "F_IK_wrist_HIK_aim_02.rebuildTrans"
		;
connectAttr "unitConversion13.o" "F_IK_wrist_HIK_aim_02.rebuildRot";
connectAttr "F_IK_wrist_shoulder_aim_01_aimConstraint1.crx" "F_IK_wrist_shoulder_aim_01.rx"
		;
connectAttr "F_IK_wrist_shoulder_aim_01_aimConstraint1.cry" "F_IK_wrist_shoulder_aim_01.ry"
		;
connectAttr "F_IK_wrist_shoulder_aim_01_aimConstraint1.crz" "F_IK_wrist_shoulder_aim_01.rz"
		;
connectAttr "null1_local_DCMX.ot" "F_IK_wrist_shoulder_aim_01.rebuildTrans";
connectAttr "F_IK_wrist_HIK_aim_01_local_DCMX.ot" "F_IK_wrist_HIK_aim_01.rebuildTrans"
		;
connectAttr "unitConversion14.o" "F_IK_wrist_HIK_aim_01.rebuildRot";
connectAttr "F_IK_wrist_shoulder_aim_01.pim" "F_IK_wrist_shoulder_aim_01_aimConstraint1.cpim"
		;
connectAttr "F_IK_wrist_shoulder_aim_01.t" "F_IK_wrist_shoulder_aim_01_aimConstraint1.ct"
		;
connectAttr "F_IK_wrist_shoulder_aim_01.rp" "F_IK_wrist_shoulder_aim_01_aimConstraint1.crp"
		;
connectAttr "F_IK_wrist_shoulder_aim_01.rpt" "F_IK_wrist_shoulder_aim_01_aimConstraint1.crt"
		;
connectAttr "F_IK_wrist_shoulder_aim_01.ro" "F_IK_wrist_shoulder_aim_01_aimConstraint1.cro"
		;
connectAttr "IK_wrist_aim_01_offGRP.t" "F_IK_wrist_shoulder_aim_01_aimConstraint1.tg[0].tt"
		;
connectAttr "IK_wrist_aim_01_offGRP.rp" "F_IK_wrist_shoulder_aim_01_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_wrist_aim_01_offGRP.rpt" "F_IK_wrist_shoulder_aim_01_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_wrist_aim_01_offGRP.pm" "F_IK_wrist_shoulder_aim_01_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_shoulder_aim_01_aimConstraint1.w0" "F_IK_wrist_shoulder_aim_01_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_aim_01.wm" "F_IK_wrist_shoulder_aim_01_aimConstraint1.wum"
		;
connectAttr "IK_wrist_aim_01_offGRP_local_DCMX.ot" "IK_wrist_aim_01_offGRP.t";
connectAttr "poleVec_CTL_offGRP_local_DCMX.ot" "poleVec_CTL_offGRP.t";
connectAttr "poleVec_CTL_offGRP_local_DCMX.or" "poleVec_CTL_offGRP.r";
connectAttr "poleVec_follow_PRBL.ot" "poleVec_CTL_follow_GRP.t";
connectAttr "poleVec_follow_PRBL.or" "poleVec_CTL_follow_GRP.r";
connectAttr "arm_mirror_trans_MULT.o" "poleVec_CTL_spcGRP.t";
connectAttr "poleVec_shoulder_space_local_DCMX.ot" "poleVec_shoulder_space.t";
connectAttr "poleVec_shoulder_space_aimConstraint1.crx" "poleVec_shoulder_space.rx"
		;
connectAttr "poleVec_shoulder_space_aimConstraint1.cry" "poleVec_shoulder_space.ry"
		;
connectAttr "poleVec_shoulder_space_aimConstraint1.crz" "poleVec_shoulder_space.rz"
		;
connectAttr "poleVec_aim_space_local_DCMX.ot" "poleVec_aim_space.rebuildTrans";
connectAttr "unitConversion19.o" "poleVec_aim_space.rebuildRot";
connectAttr "poleVec_shoulder_space.pim" "poleVec_shoulder_space_aimConstraint1.cpim"
		;
connectAttr "poleVec_shoulder_space.t" "poleVec_shoulder_space_aimConstraint1.ct"
		;
connectAttr "poleVec_shoulder_space.rp" "poleVec_shoulder_space_aimConstraint1.crp"
		;
connectAttr "poleVec_shoulder_space.rpt" "poleVec_shoulder_space_aimConstraint1.crt"
		;
connectAttr "poleVec_shoulder_space.ro" "poleVec_shoulder_space_aimConstraint1.cro"
		;
connectAttr "F_IK_foot_CTL.t" "poleVec_shoulder_space_aimConstraint1.tg[0].tt";
connectAttr "F_IK_foot_CTL.rp" "poleVec_shoulder_space_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_foot_CTL.rpt" "poleVec_shoulder_space_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_foot_CTL.pm" "poleVec_shoulder_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "poleVec_shoulder_space_aimConstraint1.w0" "poleVec_shoulder_space_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_foot_upVec.wm" "poleVec_shoulder_space_aimConstraint1.wum";
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
connectAttr "F_IK_wrist_HIK_aim_02_local_MTMX.o" "F_IK_wrist_HIK_aim_02_local_DCMX.imat"
		;
connectAttr "input_F_elbow.wm" "F_IK_wrist_HIK_aim_02_local_MTMX.i[0]";
connectAttr "F_IK_foot_CTL.wim" "F_IK_wrist_HIK_aim_02_local_MTMX.i[1]";
connectAttr "F_IK_wrist_HIK_aim_02_local_DCMX.or" "unitConversion13.i";
connectAttr "null1_local_MTMX.o" "null1_local_DCMX.imat";
connectAttr "input_wrist.wm" "null1_local_MTMX.i[0]";
connectAttr "F_IK_foot_CTL.wim" "null1_local_MTMX.i[1]";
connectAttr "F_IK_wrist_HIK_aim_01_local_MTMX.o" "F_IK_wrist_HIK_aim_01_local_DCMX.imat"
		;
connectAttr "input_F_elbow.wm" "F_IK_wrist_HIK_aim_01_local_MTMX.i[0]";
connectAttr "F_IK_wrist_shoulder_aim_01.wim" "F_IK_wrist_HIK_aim_01_local_MTMX.i[1]"
		;
connectAttr "F_IK_wrist_HIK_aim_01_local_DCMX.or" "unitConversion14.i";
connectAttr "IK_wrist_aim_01_offGRP_local_MTMX.o" "IK_wrist_aim_01_offGRP_local_DCMX.imat"
		;
connectAttr "IK_shoulder_CTL.wm" "IK_wrist_aim_01_offGRP_local_MTMX.i[0]";
connectAttr "F_IK_foot_CTL_spcGRP.wim" "IK_wrist_aim_01_offGRP_local_MTMX.i[1]";
connectAttr "poleVec_CTL_offGRP_local_MTMX.o" "poleVec_CTL_offGRP_local_DCMX.imat"
		;
connectAttr "input_B_elbow.wm" "poleVec_CTL_offGRP_local_MTMX.i[0]";
connectAttr "IK_arm_CTL_GRP.wim" "poleVec_CTL_offGRP_local_MTMX.i[1]";
connectAttr "poleVec_input_space.t" "poleVec_follow_PRBL.it1";
connectAttr "decomposeMatrix1.ot" "poleVec_follow_PRBL.it2";
connectAttr "poleVec_input_space.r" "poleVec_follow_PRBL.ir1";
connectAttr "decomposeMatrix1.or" "poleVec_follow_PRBL.ir2";
connectAttr "unitConversion8.o" "poleVec_follow_PRBL.w";
connectAttr "multMatrix1.o" "decomposeMatrix1.imat";
connectAttr "poleVec_aim_space.wm" "multMatrix1.i[0]";
connectAttr "poleVec_CTL_offGRP.wim" "multMatrix1.i[1]";
connectAttr "poleVec_CTL.follow" "unitConversion8.i";
connectAttr "arm_mirror_trans_COND.oc" "arm_mirror_trans_MULT.i2";
connectAttr "arm_GRP.mirror" "arm_mirror_trans_COND.ft";
connectAttr "poleVec_shoulder_space_local_MTMX.o" "poleVec_shoulder_space_local_DCMX.imat"
		;
connectAttr "IK_shoulder_CTL.wm" "poleVec_shoulder_space_local_MTMX.i[0]";
connectAttr "poleVec_CTL_offGRP.wim" "poleVec_shoulder_space_local_MTMX.i[1]";
connectAttr "poleVec_aim_space_local_MTMX.o" "poleVec_aim_space_local_DCMX.imat"
		;
connectAttr "input_B_elbow.wm" "poleVec_aim_space_local_MTMX.i[0]";
connectAttr "poleVec_shoulder_space.wim" "poleVec_aim_space_local_MTMX.i[1]";
connectAttr "poleVec_aim_space_local_DCMX.or" "unitConversion19.i";
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
connectAttr "multMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_mirror_trans_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_mirror_trans_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikSCsolver1.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
// End of Qarm.ma
