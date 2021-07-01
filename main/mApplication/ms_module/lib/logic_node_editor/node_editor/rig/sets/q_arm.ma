//Maya ASCII 2019 scene
//Name: q_arm.ma
//Last modified: Thu, Jul 01, 2021 11:58:34 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
requires "RenderMan_for_Maya" "4.0.3";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "redshift4maya" "2.6.31";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "arm_GRP";
	rename -uid "089D63CC-4B9E-11B4-2DB5-B0AC6EE922A6";
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
	rename -uid "1CD55A42-40AC-FBD2-8E8D-759BCE71E0AD";
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "0E28D84C-4237-1D76-B86C-55B5BC9C284B";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "4270E9D0-420C-B4F5-BA5A-73972C74B576";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
	setAttr ".r" -type "double3" -0.49307133573168316 28.174099053286564 -90.05149232822879 ;
	setAttr ".s" -type "double3" 1.0000000596541891 0.99999997041493938 1.000000020322811 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "4FD04C48-467E-3471-CC0F-1E8BC209BB64";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 11.965038396666401 -1.0423564233974503e-09 1.2137989613414391e-07 ;
	setAttr ".r" -type "double3" -2.4491526309032384e-08 -36.694267501409016 4.3773196107553108e-08 ;
	setAttr ".s" -type "double3" 0.99999996654560874 0.99999999998459921 0.99999997179149047 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "AE842899-477A-2981-0A68-B495CA40DA42";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 15.197967377506039 7.4152772810975875e-09 -1.5239291784041598e-07 ;
	setAttr ".r" -type "double3" 0.35269657910588653 8.575012328732651 0.052589188350257506 ;
	setAttr ".s" -type "double3" 0.99999996221579857 1.0000000122470938 1.0000000098297848 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "85804F0C-4027-8A81-BCEF-AE9624D8423D";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.579557728465331 -7.5285555567461415e-10 1.5711520973127335e-10 ;
	setAttr ".r" -type "double3" 0.48227258916776627 -39.566622663354124 -0.30719988326506192 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "8EAD5585-4CE3-DBC3-38B5-CDA26D853114";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.9366106004663806 1.4247270030409709e-11 2.2318538128729415e-09 ;
	setAttr ".r" -type "double3" -0.42868456342079347 -31.493450150060763 0.2239483186844585 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "EA1FEE9F-4C40-233B-A311-649C0D948683";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.6141827312609749 -4.4602721516184829e-10 8.7929674208453434e-08 ;
	setAttr ".r" -type "double3" 71.005082043159916 5.402070717041042e-05 89.999999945861276 ;
createNode transform -n "motion_IK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "EBCA356A-4D8D-850A-D337-29BFF6BFD481";
createNode transform -n "IK_shoulder_space" -p "motion_IK_arm_GRP";
	rename -uid "DCBC53E9-400C-E960-E68A-7B90FFC26D40";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "F727BF4C-481D-54F7-E515-34AE97DC918F";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "D1B3E855-4D1C-0E9A-B70F-B1BF1F325340";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "E7E211A6-4054-701A-9F8A-588F4550E5A7";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "EF8E996D-40D9-6ED0-DB16-A992262F2324";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "933481AC-4E4E-4846-9B2E-BEB1958B6E1C";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "D0A7DC04-47FF-904A-9B44-7E811AF7A152";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "EFBFD975-4438-CA16-42D5-A5AAA8A3ED10";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_space" -p "upper_stretch_output_LOC";
	rename -uid "5B40D237-4FD3-A389-3120-7CA462769C09";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "657A3B10-4A7D-2528-DEEC-6286DC049814";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "3F7223BF-42D1-C930-8AE6-E59C64F4578E";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "428D61BB-405F-6287-D5A2-2E8E5F6D7808";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "8D9AAF33-42C6-24BA-DBE8-CC9937C363C5";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "26D83303-46A4-3225-E550-04AF0F5CBCBB";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "2B353434-4FC0-3BBA-818B-6182D3C23B81";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "02A465AF-4D6C-3145-3F53-F99DC00DC8C0";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "551489FB-40C6-8F95-360C-B8BAFE8C78EF";
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
	rename -uid "CE5028C0-4B44-07A8-0A59-B499F2721610";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "C1002337-4088-C8D0-0A5B-4F94BBF0B7E6";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "804F0767-4842-D777-A8FB-80B30B2A4192";
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
	rename -uid "B3A2B323-405B-B62E-8B0C-9DAC4226A972";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "53537172-4835-D9E7-EAF8-A5A31D5FC958";
	setAttr -k off ".v";
createNode transform -n "F_softIK_input" -p "motion_IK_arm_GRP";
	rename -uid "B2EBCDA6-4C58-12A9-723A-1483C6C4ED74";
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
	rename -uid "F50390CB-4DA0-AB43-DCB8-4B91703E95D2";
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
	rename -uid "3E00C9F7-4A9F-A93A-53DF-6E9D1D019631";
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
	rename -uid "1CEC3330-4537-A9E3-DF5D-26BFDEFC9228";
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
	rename -uid "9CC01C30-4A73-641B-0B85-B0B343FEBD32";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "8BC5C108-471A-75EE-574C-D889B67AB54A";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" -0.00016671528499253712 0.0054337873463145324 0.00012306966322047459 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "4D9A7D90-4442-DB04-9B27-95ADDF1A8E38";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.965039253234863 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" -8.6860076780830283e-13 0.0052091822377578973 -6.7386604959442452e-12 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "C567B6FC-4781-B582-E3EC-E0AD640CC871";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.197967529296875 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" 0.29835861665403668 -0.058088347106305387 -0.00081845768563316643 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "58597084-48F1-330B-47BF-AE92AF889776";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795578956604004 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" -0.22843206855367607 0.050008623918001434 0.19009935198061745 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "C505DB3F-496D-9B78-B528-CF94EA0F2C6E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -0.001132171085173944 -0.001443301819281686 0.00064419737556050077 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "AF395DF6-4807-F649-F46A-6EB6D09B5E59";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "B0441378-4758-74AF-B644-CFB46F5AE488";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "7845881B-4AB1-966E-4C91-9594BED0BF4F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "BF311D91-4624-2EEC-7E89-6ABBF4162545";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "B3739A44-402E-47EF-2586-5596F47D0630";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "E386B68A-4809-DFF3-8318-83884138ECD4";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "1FB0656C-4753-838F-70A2-C8B9B3454A94";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "F_IK_scapula_aim_space" -p "motion_IK_arm_GRP";
	rename -uid "6473E632-4758-BC98-AEB6-8481D8542848";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode parentConstraint -n "F_IK_scapula_aim_space_parentConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "BBC2A0AE-486C-BC4D-0778-55AF2AE79A6D";
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
	rename -uid "B79E1B2E-40ED-D197-8A8F-B88FE9CC7A17";
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
	rename -uid "CBF778AD-413B-E934-BE8F-AABA804FB494";
	setAttr ".v" no;
	setAttr ".sh" -type "double3" -1.3407756635411868e-10 0 -1.1400404598915197e-08 ;
createNode transform -n "F_IK_foot_IKH_spcGRP" -p "F_IK_foot_IKH_offGRP";
	rename -uid "F41466B1-4471-BA1D-7541-DDAB1DFEE909";
createNode transform -n "F_IK_foot_IKH_stretched_space" -p "F_IK_foot_IKH_spcGRP";
	rename -uid "FB89BDB9-4825-0469-8208-FEA924E853E7";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode ikHandle -n "ikHandle1" -p "F_IK_foot_IKH_stretched_space";
	rename -uid "86B7DA0A-49E4-8C55-38C9-B7853A567E58";
	setAttr ".t" -type "double3" -0.018615705346738842 7.8927061871958415e-05 2.1234761550914527e-05 ;
	setAttr ".r" -type "double3" 2.5882698378452331 -0.41960739676470571 -0.072194743298763853 ;
	setAttr ".s" -type "double3" 1.0000000000006601 0.99999999268661144 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484928169353064e-10 1.6005935782546354e-10 1.2770773227402367e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "C276C2F2-4361-DAF1-4CF2-528F28431673";
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
	rename -uid "910A7448-4116-0E11-EA3E-71AD50998D57";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.0000000000421587 1.0000000049107367 0.99999999504710524 ;
	setAttr ".sh" -type "double3" 2.4192292366149829e-10 2.7025974036510174e-10 -4.9077322426682531e-08 ;
createNode transform -n "F_IK_wrist_IKH_spcGRP" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "71E73F3A-48FA-1077-507D-42ACA0044543";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode ikHandle -n "ikHandle2" -p "F_IK_wrist_IKH_spcGRP";
	rename -uid "24D91C29-4E81-0D24-591C-74AEDBD3909B";
	setAttr ".t" -type "double3" -4.7843769834798877e-07 0.00011821710214698911 6.4083167217177106e-07 ;
	setAttr ".r" -type "double3" -0.54547297245450888 0.15887274140822377 -89.766315359356682 ;
	setAttr ".s" -type "double3" 0.9999999952166112 0.99999999995787225 1.0000000048255155 ;
	setAttr ".sh" -type "double3" 7.4955236486562746e-10 -4.9127046391158295e-08 -1.6183015439831835e-10 ;
	setAttr ".pv" -type "double3" -1.1761283891172135e-05 -0.0027693946176213921 0.99999616997701735 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "F_IK_wrist_IKH_offGRP_aimConstraint1" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "07FDE1F8-419D-695A-2946-06A7772CE1B2";
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
	rename -uid "10D79081-490A-D5A9-5ED1-F8B079ACEFDC";
	setAttr ".sh" -type "double3" 0 5.0848239461121112e-09 0 ;
createNode transform -n "F_IK_B_elbow_upVec" -p "F_IK_B_elbow_aim_space";
	rename -uid "1C05007C-40C6-9090-A408-B89F602A24DD";
	setAttr ".t" -type "double3" -1.0310053158435474e-11 5 4.0902489728544822e-11 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "motion_FK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "42FDE16C-4239-638D-C400-E08F89E98710";
createNode joint -n "FK_scapula" -p "motion_FK_arm_GRP";
	rename -uid "780E6E16-4FB6-E917-C0B6-B9AD4E40FF15";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "E5DED6C1-4360-91A1-CF6B-1E83DA40464C";
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
	rename -uid "100B9CA7-4997-D3FC-B328-BF875EB5D8D1";
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
	rename -uid "3350E587-42D1-EBC2-C95A-93A0AEC86BE2";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "400AD23F-46A4-DFDA-5D7E-2DB8F0E35269";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "6823B500-4B03-BF80-8CCA-9E9730C4180C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "2CD22F1C-4AD1-DA57-77BD-D08DD7637C07";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "D8A66DC1-4422-51F4-D3B3-BE824EEE40B9";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "8D4DC231-4AE6-4EFE-EE3F-6FA213E352B0";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "F4E5B4A1-4836-8ACA-E2FC-B685A5080F06";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "BFE1EFDB-41BD-18C1-46F2-F2BD6952DC33";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "01B0AB1B-4736-D171-2F11-1E9067DDEFEA";
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
	rename -uid "B52D2131-4D6D-4298-846B-B3B723E862CD";
createNode transform -n "IK_shoulder_CTL_offGRP" -p "scapula_CTL_ivsScale";
	rename -uid "1B4BE7CD-4EBA-AD95-8CCE-1B835D08F475";
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "FE3D7957-4430-79E5-50DE-6DA8F7546DA5";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "8EAA42DA-46E3-77F2-5BE7-7FB8362ECF96";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "5B988E67-4D60-2D1D-5F79-1AABB33F8DD3";
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
	rename -uid "0BE185DE-4108-3E64-2AE5-36B0D1E732A3";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674386 1.0000000222718179 1.0000000028214373 ;
	setAttr ".sh" -type "double3" -8.0815278926231564e-10 3.4848956455488224e-08 -2.2852080175786929e-08 ;
createNode transform -n "F_input_F_toe_space" -p "IK_arm_CTL_GRP";
	rename -uid "C4C4D643-4801-FA08-5F95-4EA948DF7214";
	setAttr ".r" -type "double3" 1.6469325546113447 -67.218225318270896 -1.1283633139358367 ;
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_IK_foot_CTL_offGRP" -p "F_input_F_toe_space";
	rename -uid "BEEDA4FF-46EA-657F-7E1D-F68F5FB00E53";
	setAttr ".r" -type "double3" 39.512126764094496 0.36560916188151232 89.999999992268116 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_IK_foot_CTL_spcGRP" -p "F_IK_foot_CTL_offGRP";
	rename -uid "FE03D10D-44D4-DCEF-D301-01B5BDFE9EFE";
createNode transform -n "F_IK_foot_CTL" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "7CB038F0-43C5-0C4B-73F0-BE830C32770E";
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
	setAttr -k on ".toesAim";
	setAttr -k on ".resetAttr" -type "string" "toesAim";
createNode nurbsCurve -n "F_IK_foot_CTLShape" -p "F_IK_foot_CTL";
	rename -uid "A4D81DFD-4AE8-6ACB-2585-AC9DDB716CD6";
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
	rename -uid "78647C60-49AF-BD89-A0FC-9782B1D03916";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00042915506789320546 -2.6714803804686604 -0.58180752943567171 ;
	setAttr ".s" -type "double3" 1.0000000000000189 1.0000000001270557 0.99999999987292476 ;
createNode locator -n "F_IK_heelShape" -p "F_IK_heel";
	rename -uid "A816C91B-49BD-D62D-DB01-1C972CD3881E";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_CTL" -p "F_IK_heel";
	rename -uid "BC20DF5A-4C0E-2E54-B246-4185A3910795";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_heel_CTLShape" -p "F_IK_heel_CTL";
	rename -uid "2AB543C3-4886-945A-D5A6-A89C41537C03";
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
	rename -uid "5D2A464E-4213-53DB-9ED0-3286AC5E0EA2";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_outShape" -p "F_IK_heel_out";
	rename -uid "6C40FFAE-4BB7-9ED9-3A66-D09861480DD9";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_in" -p "F_IK_heel_CTL";
	rename -uid "6C76D331-4FC7-CFAB-2BDF-FBB9138406BB";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_inShape" -p "F_IK_heel_in";
	rename -uid "F9948ECB-48B5-3F12-C5B1-51AF13EE4EE0";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_toe" -p "F_IK_heel_CTL";
	rename -uid "29C3C651-4981-4712-887E-59AC56A24CFD";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_toeShape" -p "F_IK_toe";
	rename -uid "8AC5B5F0-4E15-11B3-6179-2BAC23C01243";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_toe_CTL" -p "F_IK_toe";
	rename -uid "7A921AF6-4D2C-0D1A-81EB-F18527E691E7";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_toe_CTLShape" -p "F_IK_toe_CTL";
	rename -uid "F771DAC9-4D61-7C0E-CE7B-4188A6C83DDF";
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
	rename -uid "A485EC1C-4810-304B-8C9C-8EB09CFD2EDA";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_ballShape" -p "F_IK_ball";
	rename -uid "89A1E1BD-47A1-DA04-5787-5BAF95EA91B0";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_ball_CTL" -p "F_IK_ball";
	rename -uid "C12C3385-4DC1-B478-CF65-BC9F01BF5379";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_ball_CTLShape" -p "F_IK_ball_CTL";
	rename -uid "9930F06F-4F60-E4D6-656E-B8BC5C33158E";
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
	rename -uid "957FC0FE-4C58-3027-0317-92AE2CF7F889";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_wristShape" -p "F_IK_wrist";
	rename -uid "651AE6A7-4D45-3B5D-E842-F19F41FC1B32";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_wrist_CTL_offGRP" -p "F_IK_wrist";
	rename -uid "F9ED0817-4FB5-A549-243F-C4BE5CBF0567";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".r" -type "double3" -2.3854175277042937e-15 1.5530052155583574e-18 -2.4799552035947529e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_IK_wrist_CTL_spcGRP" -p "F_IK_wrist_CTL_offGRP";
	rename -uid "D578AC94-4E49-8A80-D6EC-74B3791080B7";
	setAttr ".r" -type "double3" -2.3854190443109495e-15 3.1060104311167156e-18 -2.4702489209975132e-17 ;
createNode transform -n "F_IK_wrist_CTL" -p "F_IK_wrist_CTL_spcGRP";
	rename -uid "5A983D87-4985-0513-5DD0-838753332876";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_IK_wrist_CTLShape" -p "F_IK_wrist_CTL";
	rename -uid "F405CB71-4F76-BCEC-60C0-C9ADF0198DBC";
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
	rename -uid "3AA5994F-489B-7D89-B998-BAA0D788AD1B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "F_IK_wrist_space_offGRP" -p "F_IK_wrist_aim_space";
	rename -uid "82E4D7EA-43A9-5F51-A76C-269AC025CD28";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".r" -type "double3" -2.1699802898036298 0.42445712589591633 0.044864058968832513 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
createNode transform -n "F_IK_wrist_space_spcGRP" -p "F_IK_wrist_space_offGRP";
	rename -uid "E2ADFCCB-4503-E74E-98F5-E3AFF9DEDF30";
createNode transform -n "F_IK_wrist_space" -p "F_IK_wrist_space_spcGRP";
	rename -uid "28CFD470-41DE-AD79-8DFC-0F8ED2A685F2";
createNode locator -n "F_IK_wrist_spaceShape" -p "F_IK_wrist_space";
	rename -uid "3FD907AC-40F2-4DC4-E2A3-44946C3C26F4";
	setAttr -k off ".v";
createNode transform -n "F_IK_ball_HIK_offGRP" -p "F_IK_wrist_space";
	rename -uid "B40E955D-48B7-A4A4-C682-2FA0C47E2A4E";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999989 ;
	setAttr ".offset" -type "matrix" 0.99999999999999978 4.9629248566405559e-18 -1.8965067689023785e-16 0
		 1.4420769014228965e-18 0.99999999999999989 -2.1033522146218786e-17 0 2.215499376838348e-17 1.1058862159352145e-16 0.99999999999999989 0
		 -1.7763568394002505e-15 -1.1102230246251565e-15 0 1;
createNode transform -n "F_IK_ball_HIK_spcGRP" -p "F_IK_ball_HIK_offGRP";
	rename -uid "BE2FA111-4B17-2A2C-12F4-CD99E793C49D";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode ikHandle -n "ikHandle3" -p "F_IK_ball_HIK_spcGRP";
	rename -uid "2923F24B-424C-CAC6-6D40-23B65FCF3A7E";
	setAttr ".t" -type "double3" -2.7716673400846048e-10 7.13942862720085e-05 -5.8896800879892908e-05 ;
	setAttr ".r" -type "double3" 0.36682853681319 -39.407319203328051 -89.999981552702693 ;
	setAttr ".s" -type "double3" 0.99999997501724491 0.99999999994995847 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -1.6569485866874694e-05 -0.001936703931673155 0.99999812932350263 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_toes_offGRP" -p "F_IK_wrist_space";
	rename -uid "68ADCC70-4937-9B54-614D-B9A5A7AB1CE9";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000001123986972 0.99999991149429801 0.99999997610701563 ;
	setAttr ".offset" -type "matrix" -1.122524116587561e-05 -0.3271762692356654 0.94496344560011036 0
		 0.99999991126344923 1.3640862050561222e-05 1.6601918939111104e-05 0 -1.8321869029597954e-05 0.94496331677768519 0.32717622441561645 0
		 4.0569045308913587e-05 1.1824749912369799 -3.4152706560900619 1;
createNode transform -n "F_IK_toes_spcGRP" -p "F_IK_toes_offGRP";
	rename -uid "F1C214BF-42A5-39D6-2570-AF909C862A5F";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 0 ;
createNode ikHandle -n "ikHandle4" -p "F_IK_toes_spcGRP";
	rename -uid "97CBF862-4455-5E88-5424-1EBE8F90237F";
	setAttr ".t" -type "double3" 3.6141828709296568 1.0266445471529551e-09 -1.3036567914070929e-07 ;
	setAttr ".r" -type "double3" -0.0010497036872594225 -0.10178956180527497 0.00064504591715971928 ;
	setAttr ".s" -type "double3" 0.99999987634694898 1.0000000884566962 1.0000000351963667 ;
	setAttr ".sh" -type "double3" -1.6375400185764307e-10 4.5122375985809187e-08 -2.7121353226259421e-10 ;
	setAttr ".pv" -type "double3" 0.94559510906539035 5.3060795854239578e-09 0.32534551405281276 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_wrist_upVec" -p "F_IK_wrist_space";
	rename -uid "6A3A78FD-4ABD-E1FE-9536-CDB299544212";
	setAttr ".t" -type "double3" 5.0149187335882859 -4.5814882082128987 -0.14031934237416621 ;
	setAttr ".r" -type "double3" 2.0594095074060412 -0.42147551289646024 -0.061649804715152537 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
createNode orientConstraint -n "F_IK_wrist_aim_space_orientConstraint1" -p "F_IK_wrist_aim_space";
	rename -uid "BD23AAE3-4B19-3474-A1E5-3297C348EE81";
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
	setAttr ".lr" -type "double3" 0.011475869316733589 -0.75400243104057552 -0.00076088524509537118 ;
	setAttr ".rsrr" -type "double3" 0.11096697536063686 -0.00095087604771596033 0.00077931747371000055 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "F_IK_wrist_HIK_aim_space_01" -p "F_IK_wrist_CTL";
	rename -uid "70C4BE45-4103-550B-0493-189879CB9204";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_01_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_01";
	rename -uid "57F662ED-4082-22FD-99A7-148E2FEBCAC2";
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
	rename -uid "3A0D019E-48E3-75C9-B942-17B541B8DDBB";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_02_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_02";
	rename -uid "594FAA75-4D2D-012D-2AF4-9785CB1D3E92";
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
	rename -uid "39526840-4FEE-20D4-B38B-68874BFA13C4";
	setAttr ".t" -type "double3" -2.7219027032288068e-10 3.4425292410489305e-05 -2.8520831147460513e-05 ;
	setAttr ".r" -type "double3" 0.0018582069029984454 -70.902162945575128 -90.001965772588477 ;
	setAttr ".s" -type "double3" 0.99999998872355333 0.99999999995783906 1.0000000113186065 ;
	setAttr ".sh" -type "double3" -1.7648380828941762e-10 4.4669212600603299e-08 -3.1653020613024059e-10 ;
createNode transform -n "F_IK_toes_CTL_spcGRP" -p "F_IK_toes_CTL_offGRP";
	rename -uid "B5B55330-4E48-5FC8-A258-E597A7CF8410";
createNode transform -n "F_IK_toes_CTL" -p "F_IK_toes_CTL_spcGRP";
	rename -uid "257D0521-4F59-8CB3-03E5-8EA812143A62";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "F_IK_toes_CTLShape" -p "F_IK_toes_CTL";
	rename -uid "6907E7BF-40EC-B539-B143-B0A0B9A8AE5C";
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
	rename -uid "EF05F982-465D-60FD-565D-A5B62B4E6AA7";
	setAttr ".t" -type "double3" 4.9999832928857222 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000191 1.0000000001270566 0.99999999987292443 ;
createNode transform -n "F_IK_shoulder_aim" -p "F_IK_foot_CTL";
	rename -uid "871B1B24-4E5E-58C3-CB94-148ED503F11E";
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
	setAttr ".s" -type "double3" 1.0000000701013958 0.9999999066744627 1.0000000022809146 ;
	setAttr ".sh" -type "double3" 9.6455228632383525e-10 -4.4653706036239818e-08 1.348710029468594e-10 ;
	setAttr ".offset" -type "matrix" 0.0032878678346197044 0.99996794608163686 0.007321160260186671 0
		 -0.99924647245587694 0.0035684486658097052 -0.038647106489732172 0 -0.038671977810439989 -0.0071886205031055197 0.99922610484524432 0
		 -2.6645352591003757e-15 0 7.1054273576010019e-15 1;
createNode transform -n "IK_wrist_aim_02" -p "F_IK_shoulder_aim";
	rename -uid "E82FBB52-4470-01AB-2E82-BCA119BD1F85";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5 6.173900325234301e-09 0 ;
	setAttr ".s" -type "double3" 1.0000000000068536 0.99999999991385691 1.0000000000792879 ;
createNode locator -n "IK_wrist_aim_02Shape" -p "IK_wrist_aim_02";
	rename -uid "A13D00C2-4304-A1EA-C130-46B1129471F3";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_aim_01_offGRP" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "99AD72F1-4F91-D541-A9A0-6DAF83E8E0FD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.073779620813175129 30.157042877318151 3.4024093980083592 ;
	setAttr ".r" -type "double3" 4.1400102720045335e-06 0 0 ;
	setAttr ".s" -type "double3" 0.99999993653098629 0.99999997611884706 1.0000000160150011 ;
	setAttr ".sh" -type "double3" -1.374294140973877e-09 -1.6453843262042158e-09 2.0616827675848184e-07 ;
createNode transform -n "IK_wrist_aim_01_spcGRP" -p "IK_wrist_aim_01_offGRP";
	rename -uid "20032196-4A1D-6980-C2AB-D1926BC78663";
	setAttr ".t" -type "double3" 4 -8.4523057846777332e-15 -3.5527136788004997e-15 ;
createNode transform -n "IK_wrist_aim_01" -p "IK_wrist_aim_01_spcGRP";
	rename -uid "266D185A-4230-89A7-80F3-9F8875B0BB9E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
createNode locator -n "IK_wrist_aim_01Shape" -p "IK_wrist_aim_01";
	rename -uid "CAB28943-4630-43DD-DFE5-8D88EA293975";
	setAttr -k off ".v";
createNode transform -n "poleVec_CTL_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "6F3A7F0F-4FE2-00C7-D277-7AB0104D2466";
	setAttr ".t" -type "double3" 11.964648055106839 0.0024318457687506623 -0.09674286897485862 ;
	setAttr ".r" -type "double3" 0.033486879914301423 -36.230992471850698 -0.0083644218628579556 ;
	setAttr ".sh" -type "double3" 1.6378709506112675e-08 4.3758846258862413e-08 4.1213463893951901e-08 ;
createNode transform -n "poleVec_CTL_follow_GRP" -p "poleVec_CTL_offGRP";
	rename -uid "CEE00E4B-4C91-8293-D031-CF9B9891260A";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode transform -n "poleVec_CTL_spcGRP" -p "poleVec_CTL_follow_GRP";
	rename -uid "306C28C2-40AB-21C1-8E78-10AE7C0A9439";
	setAttr ".t" -type "double3" -5.7623499216674645e-07 2.1135072643119202e-06 -24.999999717115145 ;
	setAttr ".s" -type "double3" 1.0000000224337573 0.99999998888163488 0.99999998868460549 ;
	setAttr ".sh" -type "double3" 8.0067073892273867e-10 2.3049398956053739e-08 -8.4540291715809198e-08 ;
createNode transform -n "poleVec_CTL" -p "poleVec_CTL_spcGRP";
	rename -uid "5E8DB029-45E6-6D3B-01B5-1E8932926858";
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
	setAttr -k on ".follow";
	setAttr -k on ".resetAttr" -type "string" "follow";
createNode nurbsCurve -n "poleVec_CTLShape" -p "poleVec_CTL";
	rename -uid "AFB6F049-402D-1A8E-664F-BBAB280CDDDC";
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
	rename -uid "3176C69C-49FD-5302-52C5-63B7EA6F35D0";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode parentConstraint -n "poleVec_input_space_parentConstraint1" -p "poleVec_input_space";
	rename -uid "F561E0F5-4C1B-8800-B8EF-C09C674FCC35";
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
	rename -uid "C648EA1B-4024-15B4-B8F0-5C90832074EA";
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
	rename -uid "015B9663-4500-59E2-3CC4-41BA58D0E5B5";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode parentConstraint -n "poleVec_aim_space_parentConstraint1" -p "poleVec_aim_space";
	rename -uid "F3108E8F-4140-2DBF-EEFF-9BA5AE16B7BF";
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
	rename -uid "071896A8-400D-4764-05EB-338994F0461E";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "1626DD8C-414C-4D0D-2463-8390AB7762D9";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "46F798C8-4030-4479-16FE-CF8436821FD2";
createNode transform -n "FK_scapula_space_ivsScale" -p "FK_scapula_space";
	rename -uid "D654E051-4C84-E433-7DE1-999711DD8001";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space_ivsScale";
	rename -uid "8882F6E8-428B-8ACE-9B3A-3BAD527A3882";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "79D6D588-4A87-413F-B036-B98BE6D17C3E";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "D8C1F6A9-4A66-8C15-68B4-0CA160C08241";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "E32B71FD-4D03-CEBA-8E3C-C988CEB88DC0";
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
	rename -uid "DB764CE6-4DA0-3855-FEAD-49A28543F0F4";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL_ivsScale";
	rename -uid "3540B2EC-445A-98A5-963A-C3BA4D071C81";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "2CDDDA8C-4288-B16C-B926-8CA2A931D2B0";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "BFF35CB6-46ED-BBA6-29AF-11B75D131B9F";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "F6911190-4AD2-6A63-39AF-E296F7D01DB5";
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
	rename -uid "2601A763-4DCB-FD41-3D6C-C7AFB9CDD3D1";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL_ivsScale";
	rename -uid "8C6D1550-4663-B020-9912-D29C580A3058";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "4900528B-4092-DF6E-413D-40A1660D2153";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "F5E9A8A8-4682-DED6-CAB3-13ACE75F40D4";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "19987BC1-435D-2722-8A96-DE8EE861AC96";
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
	rename -uid "54BE5387-4926-9A16-1DBC-49A6B8C3C67A";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL_ivsScale";
	rename -uid "E5895B4D-47F0-A6F6-89EF-348C2C5C2C3E";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "3BD061E6-4B7A-FB9E-B576-748F2C3ED853";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "C20FB57E-4DEB-9FA6-6DAE-199C9394881C";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "8734132D-4069-4EAD-FE82-BB8B84393087";
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
	rename -uid "468A7665-4011-43B1-FEA3-779FD3C0041E";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 5.3290705182007514e-15 ;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL_ivsScale";
	rename -uid "2E5C2415-413B-CFED-D0B8-AF8BCA6A83B1";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "740DB796-4148-E6CA-12C9-FE9A304E5BD5";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "04103A75-4061-752C-16B7-96B839777AAA";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "59A1CA81-4896-7987-3C0B-3E8C90D2A2F6";
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
	rename -uid "989C662A-455C-9B16-BD85-CC9DDDBCEFB1";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "90744F73-4F72-8FC3-5516-C690C2382417";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "9DCE1735-4243-3EE3-3FBB-7BB87F2A710A";
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
	rename -uid "E1DD9101-45B6-B9AB-DC02-2E8BD679DA99";
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
	rename -uid "CFEFD7B8-4BB9-28B3-CB77-CE803305A0D7";
createNode joint -n "scapula" -p "arm_output";
	rename -uid "4CBD57D9-4B13-E51F-7083-7DB7EAC7834E";
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
	rename -uid "0060E76E-46D2-247E-B274-52B02A6C17DA";
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
	rename -uid "C9D7D337-4874-7B09-D72A-41BAE7FA2F9A";
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
	rename -uid "69E3EE4D-4982-6670-71C4-51849884A925";
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
	rename -uid "123688ED-4379-CDB9-5034-E4B568623B05";
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
	rename -uid "EA061B97-45AE-55A4-6ADB-29ABB65EA9C7";
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
	rename -uid "CE92817A-4F02-E03E-56D8-4396F988927B";
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
	rename -uid "85D81DA7-4AF4-6F13-55C7-FB87D97706EE";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "BFAA0EF1-46E6-7AB5-4415-DDA2D93C51AB";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_CTLVal_MULT";
	rename -uid "2956CEB4-4C52-A031-82F9-7081966B82EA";
createNode multiplyDivide -n "loarm_stretch_output_mul_CTLlVal_MULT";
	rename -uid "F6DAF7BD-4C23-C083-CD32-E6817EED306A";
createNode plusMinusAverage -n "soft_armLen_PMA";
	rename -uid "1A085511-4E77-8D96-66FA-17A38E87FBBA";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "50DF9D8C-492B-64A6-03F5-339A53915E28";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "EC72A3E0-43D1-43A1-3C19-249B23D30227";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "54CC86C0-4E26-D4CF-F795-1C9325848AD4";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midarmLen";
	rename -uid "29B18F06-43BC-C9B6-05B9-98A30BA28A9C";
createNode multMatrix -n "input_F_elbow_local_MTMX1";
	rename -uid "D5957E02-4AFA-40B0-9944-43B69F7181EA";
	setAttr -s 2 ".i";
createNode distanceBetween -n "upIKLen";
	rename -uid "D9FAB343-4513-4566-7C00-B28AEBD301EF";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "E939EB92-48C7-1F3D-D0DD-898AF2AC7550";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "BC60029C-4E8E-660F-DF1E-25BA79231AFF";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val_MULT";
	rename -uid "303C2139-4893-109B-8A15-7D8D97EC97B5";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "loIKLen";
	rename -uid "C3E0261E-4FCE-2C88-0A52-2D9CE2800A0B";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "49B8D3AE-46B7-05DC-54E7-2AA1E6D413F7";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "90810EB4-4061-C358-64C2-3F957BCE909D";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "loarm_soft_Len_PMA";
	rename -uid "8627068C-4465-5660-573E-E6811EC9E0AC";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loarmLen";
	rename -uid "E9FC42E5-4D07-FE71-0105-D58A3A552603";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "32432674-43A8-C299-E90D-9FA7F825C440";
	setAttr -s 2 ".i";
createNode condition -n "CTLlen_COND";
	rename -uid "FF63A106-41BF-887D-4639-CFAB707E189F";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "34689B93-45D3-DF6D-5709-F9B0AB92A134";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len_SUBT";
	rename -uid "EFF30A9E-44C9-CBCF-A65E-FA9881946136";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV_MULT";
	rename -uid "384A17A7-4862-36A0-9C54-EAA7548F4D55";
createNode multiplyDivide -n "power_val_POW";
	rename -uid "9B563EBE-4DF2-FD9F-F65A-48903867E944";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val_MULT";
	rename -uid "62F7EFA9-4198-EB72-1266-F19A3A9A32A4";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_uparm_softikV_DIVD";
	rename -uid "5881488E-4FFC-B6E8-A364-E6868CE72973";
	setAttr ".op" 2;
createNode plusMinusAverage -n "CTLLen_minue_dif_SUBT";
	rename -uid "11A734E3-4CBD-F43D-3D23-2D93734333AF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV_SUBT";
	rename -uid "1C0D3304-43FE-404C-8F33-46A72224E2E6";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "A32D25D8-4259-5630-5EF2-C1BC7AA56838";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_CTLlen_COND";
	rename -uid "F7D5383D-4ED7-75CD-ECF5-4A9E60D736C5";
	setAttr ".op" 2;
createNode condition -n "loarm_softikV_COND";
	rename -uid "3C5298AD-4FB1-F695-8FA6-4A9F997CEE9F";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_result_softik_len_SUBT";
	rename -uid "8E1FA03C-4C3E-8E3A-0AE8-249E072A0FA7";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_mult_softikV_MULT";
	rename -uid "06C8921E-4B1C-36CB-F6A0-E39D0881C3E6";
createNode multiplyDivide -n "loarm_power_val_POW";
	rename -uid "9892A193-46BF-C59F-8932-5EBBB64B26DA";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "loarm_negate_val_MULT";
	rename -uid "67DDDFA6-46AC-81E0-8B52-F9B05DC27E55";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_loarm_softikV_DIVD";
	rename -uid "838D9792-48E2-4745-829A-52B07404F72B";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_ctrlLen_minue_dif_SUBT";
	rename -uid "317827E9-4E37-C536-AD89-ACB218D31285";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_armlen_minus_softikV_SUBT";
	rename -uid "DD9E398A-4E5F-310A-8A57-4BAB7A438EDD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "midarm_plus_stretch_PMA";
	rename -uid "9B03611C-4A08-0895-B321-F3BE604D5E37";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_midarm_MULT";
	rename -uid "4D751981-48F2-8CEE-9354-B48F48792CC0";
createNode multiplyDivide -n "stretched_midarmLen_MULT";
	rename -uid "56F6F411-4CD3-6A3B-1C0D-A1872438E396";
createNode plusMinusAverage -n "stretchedLen_SUBT";
	rename -uid "C5A11B95-40F1-8717-6222-988659E48BAF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "midarm_ratio3_DIVD";
	rename -uid "7A3D6984-4B6C-F7C3-D502-4692E0B26C3E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen_PMA";
	rename -uid "37B95772-4625-9F18-CB52-5EBEBD497952";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch_PMA";
	rename -uid "D98C7827-4EAE-A944-6E1B-D9AF81FF344C";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm_MULT";
	rename -uid "C917767B-4089-033F-272D-5193FD7E9A7A";
createNode multiplyDivide -n "stretched_uparmLen_MULT";
	rename -uid "C2E8C10D-4486-8536-EF49-EFA1C9320318";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "389C107F-4AA2-DC04-6265-4EB3C7C94DB5";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_plus_stretch_PMA";
	rename -uid "765A0926-4B48-CB23-1756-9DA01BB25560";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_stretchCtrl_arm_MULT";
	rename -uid "5DE371C3-400D-998B-98B6-F99D1CD8A461";
createNode multiplyDivide -n "loarm_stretched_arm_MULT";
	rename -uid "17C14DC1-44F6-C0E8-C5B3-7F8A58196B90";
createNode plusMinusAverage -n "loarm_stretchedLen_SUBT";
	rename -uid "9749B233-4E0B-1C38-F11F-97B70FE429E5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio_DIVD";
	rename -uid "FA424491-47E4-27ED-0558-9E80650BEF12";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_stretch_armLen_PMA";
	rename -uid "9B66A2C6-4D1E-856D-5C08-D382C773070B";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "5201A134-4DFF-054E-F9F3-C9955544CC2C";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "47EE0564-45A2-479F-E57B-E0B1C3D3B4A1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "938D60CB-4923-BAD9-4F01-68835F64915D";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "0AD385B6-4DF7-F360-33A1-8F9B0DDA01DB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_wrist_space_scale_DCMX";
	rename -uid "B4A6E398-41D8-6BAB-B6A0-BBAACE38B635";
createNode decomposeMatrix -n "F_wrist_CTL_scale_DCMX";
	rename -uid "9018E462-4D2B-2CD7-1861-3B92CF805B31";
createNode decomposeMatrix -n "F_ball_CTL_scale_DCMX";
	rename -uid "239125CF-4E74-1ECA-87D9-15AEF630CB47";
createNode decomposeMatrix -n "F_IK_foot_IKH_offGRP_local_DCMX";
	rename -uid "63C37817-4F5B-2CC6-4DB2-4B994E1306E7";
createNode multMatrix -n "F_IK_foot_IKH_offGRP_local_MTMX";
	rename -uid "66ECC8D3-4A36-D0CD-35AF-CF864E09A630";
	setAttr -s 2 ".i";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "EFE74443-44E8-707B-9DD1-EDBF762BBDB9";
createNode decomposeMatrix -n "F_IK_wrist_IKH_offGRP_local_DCMX";
	rename -uid "79BB56E0-4907-A65D-F8BC-F99599ECF7C7";
createNode multMatrix -n "F_IK_wrist_IKH_offGRP_local_MTMX";
	rename -uid "E658E0BE-46CE-871A-BF2A-62B155D9CCBE";
	setAttr -s 2 ".i";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "0455E7FA-4A6F-A1F9-0F79-2580C6A28C22";
createNode decomposeMatrix -n "F_IK_B_elbow_aim_space_local_DCMX";
	rename -uid "BC81CCC4-486F-595A-2415-BC9A72EF0C7D";
createNode multMatrix -n "F_IK_B_elbow_aim_space_local_MTMX";
	rename -uid "FA0F1018-4942-B66A-94EC-288E7808B348";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_shoulder_CTL_local_DCMX";
	rename -uid "924C2F65-4221-6D09-44DC-EDB216B13CDB";
createNode multMatrix -n "FK_shoulder_CTL_local_MTMX";
	rename -uid "4B0E8419-4E4E-8E65-3857-5596FD009B91";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_elbow_CTL_local_DCMX";
	rename -uid "2672FCF0-40BC-37F0-3993-778FEE7CFC16";
createNode multMatrix -n "FK_B_elbow_CTL_local_MTMX";
	rename -uid "93AA34F4-4CE6-FAD3-7EB9-CDA0A2995996";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_elbow_CTL_local_DCMX";
	rename -uid "DB53AEE2-4E38-1381-32EA-DC9411B531FB";
createNode multMatrix -n "FK_F_elbow_CTL_local_MTMX";
	rename -uid "69916C0D-4C24-DF6E-44E0-7C9A07673D4F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_wrist_CTL_local_DCMX";
	rename -uid "59AA1DC2-47EC-D19C-EB0B-6D82F1682F32";
createNode multMatrix -n "FK_F_wrist_CTL_local_MTMX";
	rename -uid "4C4402C5-4B5E-CADA-620C-BE9A42912831";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_toe_CTL_local_DCMX";
	rename -uid "45DD8D73-4D2E-A963-9353-C095DD39D509";
createNode multMatrix -n "FK_F_toe_CTL_local_MTMX";
	rename -uid "24FB9A7D-4CCA-0BBB-4D7C-81981F4322AC";
	setAttr -s 2 ".i";
createNode condition -n "arm_mirror_scale_COND";
	rename -uid "F8650E27-47AD-C095-7961-F8985A7DD6F0";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 1 1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "CDA16BFA-425F-BCA1-CD5D-D38758986FB8";
createNode decomposeMatrix -n "scapula_CTL_inverse_DCMX";
	rename -uid "1217F1FA-4688-8E2D-6441-459B2D7E745C";
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "647188B1-4085-EC5D-CC71-F3A067B270C8";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "4E5ABC68-4C98-CC62-E4EF-7E9B66971F4F";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion12";
	rename -uid "473A3E48-4F99-36D4-A1FA-8DA714758EF9";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "arm_mirror_rotate_COND";
	rename -uid "D33A6C7B-4AE8-2443-6858-A0A329DB3040";
	setAttr ".cf" -type "float3" 0 -180 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "19AD3FF8-42F1-C430-423F-DBAF04038873";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition";
	rename -uid "33DB6DB3-4C4C-AFEC-0B3C-7B9F2366A24B";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "6D655451-43F2-A25D-BCB1-9D9C5F3439D9";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "3B6D4593-44C5-1860-345B-CBBFB34AC95E";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition";
	rename -uid "792BD59A-4FEC-6797-0EDB-1A9D1C55538C";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition";
	rename -uid "83B0AE2F-491C-EA82-3D49-C890C640D655";
createNode unitConversion -n "unitConversion3";
	rename -uid "9852799B-424E-D5A9-5CA1-26994C0C43C3";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "01C98689-4A5C-1CE0-0208-5AA99614DB80";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "roll_angle_SUBT";
	rename -uid "3D5DC303-47B0-A616-E0BA-CB98429CB52F";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion6";
	rename -uid "1FFCDEFC-41CF-D790-8B07-9B88B122C3E0";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "9E99DF64-4EF7-4BC4-6DFB-F19A8CCA3667";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "563506EC-4440-EBF4-C0C5-31BD9C8CA6FF";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "C952DC9A-4EA2-A1AD-D44E-C98A29A4EB9C";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon";
	rename -uid "C665B6D5-4A67-54EC-5A90-688B60E93566";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition";
	rename -uid "FECC4F0E-44F2-8193-7595-D0AF386A67A9";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball_SUBT";
	rename -uid "EC227053-4E72-ED0A-7241-258C2EBA7E15";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap";
	rename -uid "0D5D3C5D-45D4-3B43-1078-3087716F1936";
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
	rename -uid "7A731C12-4A81-6342-950F-B5AA1B38EC7D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "ED2F6C27-486C-02E5-D396-D3AACF1F96C8";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "9E962DBD-4331-B0DE-0F5F-15B5DF05D70C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_wrist_local_DCMX1";
	rename -uid "91944232-4931-2F03-B70E-53889C3E8D70";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "0413FB30-41F8-1347-7234-C7B7F15D1DCB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "43100AFC-4BC4-D28F-C59E-81AF356BDAD1";
createNode multMatrix -n "input_F_elbow_local_MTMX2";
	rename -uid "30DE4B7E-449E-A5D9-9E4C-B082E23D1FDE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX";
	rename -uid "CBD27FCD-4125-E1EE-7DDA-DDBF000DF74D";
createNode multMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX";
	rename -uid "969DD6C2-416A-ED2D-EFD8-ACB395FB56F6";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "F_IK_toe2F_IK_toes_offGRP_DCMX";
	rename -uid "C41B78D9-4199-1A08-7D11-E298BE003CCB";
createNode multMatrix -n "F_IK_toe2F_IK_toes_offGRP_MTMX";
	rename -uid "95702258-40F2-9DDD-A206-BC959AFA0902";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion7";
	rename -uid "DADE4D1F-4850-3ADB-0AC9-05839D34789C";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS";
	rename -uid "E5FEF8BD-4D4E-BBD9-7280-B6B7FB760476";
createNode decomposeMatrix -n "input_F_elbow2F_IK_shoulder_aim_DCMX";
	rename -uid "A85256BD-45C8-27A1-49AC-969F1CAB8D34";
createNode multMatrix -n "input_F_elbow2F_IK_shoulder_aim_MTMX";
	rename -uid "5B463FD5-4FF3-0773-098E-41AF76589E31";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion9";
	rename -uid "AA00F113-48B6-7503-8F37-E19A4B1C07CB";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	rename -uid "99810A9A-472C-BF0C-F8DC-15B80F983721";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "poleVec_follow_PRBL";
	rename -uid "35DE3202-463C-ACC9-B94E-0688D85DA954";
createNode unitConversion -n "unitConversion8";
	rename -uid "FB7DCE17-439B-E82C-FFC9-BAB914172A93";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIK_RVS";
	rename -uid "B4435319-49D6-99BC-A6A1-FFAB39710211";
createNode decomposeMatrix -n "FK_scapula_space_inverse_DCMX";
	rename -uid "A2FD5038-46B5-0962-339F-39B378C114C2";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "3D1960EF-45AF-E2E8-1523-CC8C7DE81A83";
createNode decomposeMatrix -n "FK_shoulder_CTL_inverse_DCMX";
	rename -uid "30C5332A-4F7E-7D26-6DB3-F1A0BA82C7E0";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "38977463-42BF-9A74-C6B9-3E9CC144CCD5";
createNode decomposeMatrix -n "FK_B_elbow_CTL_inverse_DCMX";
	rename -uid "87A42362-4658-D4EB-ADAA-71A5F2D60A83";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "66289876-4520-7A77-CEC3-C5AE39258195";
createNode decomposeMatrix -n "FK_F_elbow_CTL_inverse_DCMX";
	rename -uid "642D0C26-4608-ED00-F6F8-C19F13DBA8F8";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "05F3A5BE-4FE1-FD10-2EDD-22BEFB796FB7";
createNode decomposeMatrix -n "FK_F_wrist_CTL_inverse_DCMX";
	rename -uid "8D369FC2-4C7A-ED92-BB71-5687D33F0F6A";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "13EBC624-41FD-4577-77D7-6CA65535EE7C";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "D3E0AE55-454F-B372-FB91-698A63534115";
	setAttr -s 2 ".i";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "11DA311C-455E-CFC0-6D6F-51B16AD82859";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "C4793D65-4EA7-58D5-6686-CABC40A914E2";
createNode blendColors -n "scapula_BLCL";
	rename -uid "75C7FC2E-4F06-B1DD-8630-499A1B629B5A";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "6EAA4690-43B4-D190-8AED-F1A80619D914";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "05DB217E-4131-A230-3D61-E783D93940A0";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "A48ED6F5-4C6C-1DB0-35A5-79B247F6036C";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "0D8EF8B6-44A8-B507-1868-2F91789ACB9C";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "3FF7E5D3-4910-8487-2529-C0931D0DA30A";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "985699C3-4122-51A7-4498-4C862045A7F9";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "8559A692-4EBA-7B8A-BEAE-319E7040F833";
createNode blendColors -n "wrist_BLCL";
	rename -uid "4FAC5506-4CC9-BCB5-4F72-C383D17E6AD6";
createNode pairBlend -n "toe_PRBL";
	rename -uid "2E38B32B-4016-0F15-A1AF-0E8D9D373946";
createNode blendColors -n "toe_BLCL";
	rename -uid "49DE9F52-46B4-3135-EED2-BE8029105E18";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "95D8F2EB-449F-2C40-ACCA-0682F10F3317";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "7A96A4DB-49A4-2037-D974-E1BD1BB9D84C";
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
	setAttr -s 107 ".u";
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
connectAttr "F_IK_foot_IKH_stretched_space.rebuildTrans" "F_IK_foot_IKH_stretched_space.t"
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
connectAttr "F_IK_toe.rebuildTrans" "F_IK_toe.t";
connectAttr "unitConversion2.o" "F_IK_ball.rx";
connectAttr "input_toe_local_DCMX.ot" "F_IK_ball.rebuildTrans";
connectAttr "F_IK_ball.rebuildTrans" "F_IK_ball.t";
connectAttr "F_IK_wrist.rebuildTrans" "F_IK_wrist.t";
connectAttr "input_wrist_local_DCMX1.ot" "F_IK_wrist.rebuildTrans";
connectAttr "F_IK_wrist_aim_space_orientConstraint1.crx" "F_IK_wrist_aim_space.rx"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.cry" "F_IK_wrist_aim_space.ry"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.crz" "F_IK_wrist_aim_space.rz"
		;
connectAttr "input_F_elbow_local_DCMX.ot" "F_IK_wrist_space_offGRP.rebuildTrans"
		;
connectAttr "F_IK_wrist_space_offGRP.rebuildTrans" "F_IK_wrist_space_offGRP.t";
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
connectAttr "F_IK_shoulder_aim.rebuildTrans" "F_IK_shoulder_aim.t";
connectAttr "input_F_elbow2F_IK_shoulder_aim_DCMX.ot" "F_IK_shoulder_aim.rebuildTrans"
		;
connectAttr "unitConversion9.o" "F_IK_shoulder_aim.rebuildRot";
connectAttr "unitConversion11.o" "F_IK_shoulder_aim.r";
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
connectAttr "F_IK_shoulder_aim.rebuildRot" "unitConversion11.i";
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
