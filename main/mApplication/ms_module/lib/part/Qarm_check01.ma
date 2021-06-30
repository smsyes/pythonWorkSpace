//Maya ASCII 2019 scene
//Name: Qarm_check01.ma
//Last modified: Wed, Jun 30, 2021 06:30:34 PM
//Codeset: 949
file -rdi 1 -ns "L" -rfn "LRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -rdi 1 -ns "re" -dr 1 -rfn "reRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/part/dog_V002_2.ma";
file -r -ns "L" -dr 1 -rfn "LRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -r -ns "re" -dr 1 -rfn "reRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/part/dog_V002_2.ma";
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires -nodeType "aiOptions" "mtoa" "4.0.3";
requires "RenderMan_for_Maya" "4.0.3";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "redshift4maya" "2.6.31";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "572DA748-467D-9114-A1C2-C9813BBE249A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 74.051380913310354 36.956775066664861 45.901715715530152 ;
	setAttr ".r" -type "double3" -14.738352729430593 61.79999999999599 1.6826523825141027e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AC246AD3-4C74-C2F5-D653-8D8A1DDFB46B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 80.549094180599695;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6.2056985091346242 -1.2203614933361505e-06 18.646445431531106 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "7E52B0B8-413D-9A8D-F088-26B0880664C4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "279FEB74-4435-BCF9-98FF-4EBF23496046";
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
	rename -uid "92958D22-423F-9C01-37C9-3E9D291760F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8366A970-4F2E-19D8-B74C-20AD1754E751";
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
	rename -uid "256CCA0D-4026-1E1D-B4AC-4586CA023488";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.4686543979237 12.959108419838532 11.558735349000514 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B9E3CE63-4965-98B7-DA55-42BECDC8CC71";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 994.34621453662612;
	setAttr ".ow" 84.641988396149571;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 6.1224398612976074 22.280153274536133 15.961299896240234 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "arm_GRP";
	rename -uid "A861DBA1-43BA-D0D9-8E43-D8899CF8421E";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	setAttr -s 6 ".reBuildMode";
	setAttr -s 7 ".input";
	setAttr -s 2 ".reBuildAttr";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "BE333125-423C-941B-1DD2-49AC2CAA5F3E";
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "981BB8AC-4485-20F9-35CA-C8A68465D8F9";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "718BBCBA-48AB-22ED-8BA7-32B315E93DF4";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
	setAttr ".r" -type "double3" -0.49307133573168316 28.174099053286564 -90.05149232822879 ;
	setAttr ".s" -type "double3" 1.0000000596541891 0.99999997041493938 1.000000020322811 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "AE9B3E20-4DF9-847D-8D93-32AA51EEC771";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 11.965038396666401 -1.0423564233974503e-09 1.2137989613414391e-07 ;
	setAttr ".r" -type "double3" -2.4491526309032384e-08 -36.694267501409016 4.3773196107553108e-08 ;
	setAttr ".s" -type "double3" 0.99999996654560874 0.99999999998459921 0.99999997179149047 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "EF745BC7-42AD-A990-047F-9394560B6BB0";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 15.197967377506039 7.4152772810975875e-09 -1.5239291784041598e-07 ;
	setAttr ".r" -type "double3" 0.35269657910588648 8.575012328732651 0.052589188350257506 ;
	setAttr ".s" -type "double3" 0.99999996221579857 1.0000000122470938 1.0000000098297848 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "FCDBDD10-4863-B0DE-8B65-CAA79DDEB01E";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.579557728465331 -7.5285555567461415e-10 1.5711520973127335e-10 ;
	setAttr ".r" -type "double3" 0.48227258916776627 -39.566622663354124 -0.30719988326506192 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "F3BD0CF4-4589-413D-7EB0-F599DD305BFE";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.9366106004663806 1.4247270030409709e-11 2.2318538128729415e-09 ;
	setAttr ".r" -type "double3" -0.42868456342079347 -31.493450150060763 0.2239483186844585 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "30E6B3C0-4AE3-6445-EA00-EBA7348E323F";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.6141827312609749 -4.4602721516184829e-10 8.7929674208453434e-08 ;
	setAttr ".r" -type "double3" 71.005082043159916 5.402070717041042e-05 89.999999945861276 ;
createNode transform -n "motion_IK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "FA294CAB-4B3A-105C-B184-259FA485A249";
createNode transform -n "IK_shoulder_space" -p "motion_IK_arm_GRP";
	rename -uid "9DEF33E7-4FBC-A197-34C6-E590F5A4A43F";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "C9D3A824-442B-1B21-BEC4-859A523B51E8";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "4A55B5F8-487E-172E-B458-C2AF32C983D0";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "8C457EAE-4D00-D6EC-9016-4299798A250F";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "50EBB832-416C-C733-9C7B-7499A7E3BA4F";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "D1281FBC-4687-8A43-2F67-6AA0135E5106";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "7E427AD1-48A7-88A6-4BBD-C3B2F562ECA5";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "68D1D1C9-4DE7-C7CB-EF03-92B201DCC7CA";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_space" -p "upper_stretch_output_LOC";
	rename -uid "C5B437A9-4019-E1CD-89A3-FB9652E4FD79";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "E4A16916-43B2-F759-249A-D5BE64312E2A";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "49978546-40DE-A405-8865-178C4B8E3169";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "ADFF98E6-41FA-B7F2-9138-178C051239B4";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "E410FB31-4838-A64E-79D1-00A4A1D63C60";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "93402807-4FBC-D0F2-CE84-DB9CFC79A011";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "BD5C3DF9-4CAD-72DB-8586-79BC55AB86C9";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "3B2B8E82-4DB4-4679-95C1-BC8E97B048E2";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "85145498-4D1A-56B3-FD73-459493995020";
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
	rename -uid "40D73BEE-462B-92E4-A4DE-BAAFD3907E34";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "70F5A145-47FD-D4CD-2383-42A7F8408540";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "FD54F67E-431C-B306-7985-929614AB48E7";
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
	rename -uid "EE810EF3-4E37-D6AC-289D-799A96EAEEBB";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "CBEA5698-4924-5943-AE2D-10A14CAFD31C";
	setAttr -k off ".v";
createNode transform -n "F_softIK_input" -p "motion_IK_arm_GRP";
	rename -uid "6D6DC612-45D0-24A5-B90E-5ABE2F63409A";
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
	rename -uid "F54B586C-439D-6DC4-565D-30BAAF6DB647";
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
	rename -uid "26826DC0-48ED-2AE2-06C7-26821B7D5E8C";
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
	rename -uid "FC5AFD30-4A0A-E47E-20B9-13AC88AF8186";
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
	rename -uid "8A9C6A71-4F43-1027-2B93-9DA59D0E1776";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "B5E4FC02-46AC-2E94-D6D8-C8B0DDE8E0E1";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" -0.37393705203839606 0.0049756041342777068 -0.14051369191033961 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "468A1111-4F57-5F8B-1963-A0B22F03F105";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.965039253234863 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" -8.6893189412625782e-13 0.0052111680722147303 -6.7412293951677639e-12 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "DC6A338A-47B6-F6C2-5DD3-0B948FF3D120";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.197967529296875 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" -0.059715826936157741 -0.058587340058231088 -0.052677024719260029 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "EF736E79-474C-92BA-4F2B-5F808126155B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795578956604004 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" 0.35241191084806478 0.050518606996371895 -0.29016767486159273 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "04430E10-43BD-657D-13BB-8F8D8E34F863";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -0.0011320662893069035 -0.0014433034963088006 0.00064437407322794342 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "39A9FE25-42D8-BD81-F17F-4D9F59CD3EC5";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "51112598-4141-9597-1AE0-02B0A6762795";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "ED5694EE-43F8-812A-54E4-8EB9806AB567";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "9E1C2B73-400A-2F1A-838F-8DAE98C185F8";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "2E147090-4140-A28C-44BC-E79D314A3A76";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "D15EA45B-4280-96AD-DA3C-6E90FEF46826";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "3D71EA45-44C4-7514-BAFD-A09519DE9188";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "F_IK_scapula_aim_space" -p "motion_IK_arm_GRP";
	rename -uid "A942C225-4682-15BC-0AD4-43ADBE39F773";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode aimConstraint -n "IK_scapula_aim_space_aimConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "62D41C7D-4C9B-FED4-390F-B9AF29CBD64D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_foot_CTLW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 4.5153380679406521 0 -2.7498099178733804 ;
	setAttr ".rsrr" -type "double3" -18.965937545513842 -0.86149816236375609 90.048731697747769 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "IK_scapula_aim_space_pointConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "5698F07D-40B0-C2DA-491F-E1A606D06BC7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_shoulderW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.8925676345825142 7.9852995953546824 -5.4333494218265663 ;
	setAttr ".rst" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_foot_IKH_offGRP" -p "motion_IK_arm_GRP";
	rename -uid "2073BA54-49EC-35B5-1281-BDA85A131B1A";
	setAttr ".v" no;
	setAttr ".sh" -type "double3" -1.3407756635411868e-10 0 -1.1400404598915197e-08 ;
createNode transform -n "F_IK_foot_IKH_spcGRP" -p "F_IK_foot_IKH_offGRP";
	rename -uid "895D7FA6-483C-2E80-67E4-7D95F4881D4A";
createNode transform -n "F_IK_foot_IKH_stretched_space" -p "F_IK_foot_IKH_spcGRP";
	rename -uid "21B27572-49AE-EC01-5F31-A5B978435D58";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode ikHandle -n "ikHandle1" -p "F_IK_foot_IKH_stretched_space";
	rename -uid "6213E240-4CDA-81DC-147B-20861710216C";
	setAttr ".t" -type "double3" -0.018615705346738842 7.8927061871958415e-05 2.1234761550914527e-05 ;
	setAttr ".r" -type "double3" 2.5882698378452331 -0.41960739676470571 -0.072194743298763853 ;
	setAttr ".s" -type "double3" 1.0000000000006601 0.99999999268661144 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484928169353064e-10 1.6005935782546354e-10 1.2770773227402367e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "86F1C92A-49C5-D42A-4822-448D13419B5A";
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
	rename -uid "EDA66414-4625-EAAA-BFFD-9EB6FE054D31";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.0000000000421587 1.0000000049107367 0.99999999504710524 ;
	setAttr ".sh" -type "double3" 2.4192292366149829e-10 2.7025974036510174e-10 -4.9077322426682531e-08 ;
createNode transform -n "F_IK_wrist_IKH_spcGRP" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "F4C9B6F6-4262-9854-E641-21B06C263DCE";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode ikHandle -n "ikHandle2" -p "F_IK_wrist_IKH_spcGRP";
	rename -uid "43833641-4F15-A01E-0E4B-BEA4CA9A1CEB";
	setAttr ".t" -type "double3" -4.7843769834798877e-07 0.00011821710214698911 6.4083167217177106e-07 ;
	setAttr ".r" -type "double3" -0.54547297245450888 0.15887274140822377 -89.766315359356682 ;
	setAttr ".s" -type "double3" 0.9999999952166112 0.99999999995787225 1.0000000048255155 ;
	setAttr ".sh" -type "double3" 7.4955236486562746e-10 -4.9127046391158295e-08 -1.6183015439831835e-10 ;
	setAttr ".pv" -type "double3" -1.1761283891172135e-05 -0.0027693946176213921 0.99999616997701735 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "F_IK_wrist_IKH_offGRP_aimConstraint1" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "E3FD02FF-4B3F-DAC4-7E9D-6EA26E3E525A";
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
createNode transform -n "motion_FK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "30D01D54-4C44-27EF-5C1B-7A87020A09C1";
createNode joint -n "FK_scapula" -p "motion_FK_arm_GRP";
	rename -uid "1F50A91F-46AC-9120-1E39-2CB0B8F03B4B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "82D6786F-415C-3390-4F32-6A98DE7291A8";
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
	rename -uid "2EC955DE-4CDB-0972-76C6-F29305E85CB7";
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
	rename -uid "473D0502-4BB2-674B-2CCC-ACBDE1C51B7A";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "5C9EEAEA-431D-69A5-4034-B5A36A2A739B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "0F63296A-4650-D8E2-E74E-D9B0CFE1F715";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "2B0C49A9-42E7-1696-349D-488B14934D47";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "B5A54407-4CB0-822B-C93B-0A98F3238780";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "5156EE70-4430-EA44-306E-258A3642B36E";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "A5D2D81E-4C0E-969E-A7F0-68A6DCB9C3C3";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "0A70C9AC-4F6E-825A-151D-5F99FA1CD5AC";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "C75AA6F4-46B0-2D92-9B74-A59C96E46FEB";
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
	rename -uid "22262A1E-4982-355E-1BA3-FD9EE0EE5BF7";
createNode transform -n "IK_shoulder_CTL_offGRP" -p "scapula_CTL_ivsScale";
	rename -uid "D0A8BAD4-4505-D029-5BC3-46A5D658EEDA";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "9F5B15E5-465B-D584-D924-C6ADA2080369";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "2C1D1B74-4F9C-E546-0636-FE89902A8534";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "CD056D7F-428E-6764-0C67-1F9811401B8C";
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
createNode transform -n "IK_wrist_aim_01" -p "IK_shoulder_CTL";
	rename -uid "708E0342-4C24-4B9C-A2B2-00811D9D652C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.9999999999999138 -2.7559110549191246e-09 -3.0676581275201897e-09 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "IK_wrist_aim_01Shape" -p "IK_wrist_aim_01";
	rename -uid "94C0D0FD-4813-051E-9BC0-13B89F7C99A5";
	setAttr -k off ".v";
createNode transform -n "IK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "14CD522B-40FF-3193-ABF7-23AE02318F25";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674408 1.0000000222718179 1.0000000028214378 ;
	setAttr ".sh" -type "double3" -8.0815271250080359e-10 3.4848956455488211e-08 -2.2852080187929983e-08 ;
createNode transform -n "F_input_F_toe_space" -p "IK_arm_CTL_GRP";
	rename -uid "8B634A7D-4BB6-9862-8E65-2A9AF964AF92";
	setAttr ".r" -type "double3" 1.6469325546113447 -67.218225318270896 -1.1283633139358367 ;
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_IK_foot_CTL_offGRP" -p "F_input_F_toe_space";
	rename -uid "B1D7E593-4B65-DAF9-7F4D-198DF268FA11";
	setAttr ".r" -type "double3" 39.512126764094496 0.36560916188151232 89.999999992268116 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_IK_foot_CTL_spcGRP" -p "F_IK_foot_CTL_offGRP";
	rename -uid "F6E2F618-4EEF-5B4E-380B-099EBE3976D1";
createNode transform -n "F_IK_foot_CTL" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "42133925-4FC6-995D-21EC-28B5A89641F5";
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
	rename -uid "3C0AEEB7-4CFF-7E68-0DA9-0EB8697C5824";
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
	rename -uid "06156A62-4C21-268A-58DB-AAA94F4B2F1D";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00042915506789320546 -2.6714803804686604 -0.58180752943567171 ;
	setAttr ".s" -type "double3" 1.0000000000000189 1.0000000001270557 0.99999999987292476 ;
createNode locator -n "F_IK_heelShape" -p "F_IK_heel";
	rename -uid "D4A70E67-4F48-5849-B684-2BA8445099E2";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_CTL" -p "F_IK_heel";
	rename -uid "8A56BA53-4AD4-13B0-E5D5-20AD83FF096A";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_heel_CTLShape" -p "F_IK_heel_CTL";
	rename -uid "364BFF6D-4443-3DE5-66DE-EA9CC7C4901D";
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
	rename -uid "E53E1CB8-49FF-29D8-221A-C4AF800BE002";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_outShape" -p "F_IK_heel_out";
	rename -uid "514DD75F-4EE0-300F-3E78-2ABCA9824999";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_in" -p "F_IK_heel_CTL";
	rename -uid "770F6CF6-46C4-2F50-F5AD-4583CB21FF1C";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_inShape" -p "F_IK_heel_in";
	rename -uid "812B1FA5-4C16-0315-549E-749C0173D6E3";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_toe" -p "F_IK_heel_CTL";
	rename -uid "0E733EB2-475C-7CB7-7E9E-4099913FC665";
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
	rename -uid "4DF2CBE7-48D1-5ABD-EFF4-7D82D8D8A315";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_toe_CTL" -p "F_IK_toe";
	rename -uid "2C78266B-4730-C2A9-C5C9-40B46CAB2222";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_toe_CTLShape" -p "F_IK_toe_CTL";
	rename -uid "159984F4-4319-B725-464F-DC92A97668AA";
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
	rename -uid "F66ED342-4D7F-6073-8E15-5CBB6CC16C95";
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
	rename -uid "8A09FDFD-42E2-7B8E-38B7-65A7E9444546";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_ball_CTL" -p "F_IK_ball";
	rename -uid "7CCD0D3F-4BC6-FAED-8D60-9280A191B8EE";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_ball_CTLShape" -p "F_IK_ball_CTL";
	rename -uid "CB140B0A-4C1E-5F9A-28DB-D6BC9BD85E24";
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
	rename -uid "7FC7105C-4B93-F0FD-969D-34A047D13146";
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
	rename -uid "CDA43918-40AB-FD6A-163E-C792D81C2B26";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_wrist_CTL_offGRP" -p "F_IK_wrist";
	rename -uid "F215932C-4476-9435-D2ED-5AADB1B6BA31";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".r" -type "double3" -2.3854175277042937e-15 1.5530052155583574e-18 -2.4799552035947529e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_IK_wrist_CTL_spcGRP" -p "F_IK_wrist_CTL_offGRP";
	rename -uid "B3A103CF-470F-969F-338B-0B96B08DA648";
	setAttr ".r" -type "double3" -2.3854190443109495e-15 3.1060104311167156e-18 -2.4702489209975132e-17 ;
createNode transform -n "F_IK_wrist_CTL" -p "F_IK_wrist_CTL_spcGRP";
	rename -uid "DF154531-4869-508F-1A4E-179CCFA81A21";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_IK_wrist_CTLShape" -p "F_IK_wrist_CTL";
	rename -uid "1C205F02-4848-1B7C-90F8-E1898EABA929";
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
	rename -uid "7777D0A2-40A0-053F-826F-AB83132CB537";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "F_IK_wrist_space_offGRP" -p "F_IK_wrist_aim_space";
	rename -uid "FDA7CDF6-4A94-28C3-AFCA-2F8680C6DEA9";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".r" -type "double3" -2.1699802898036298 0.42445712589591633 0.044864058968832513 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
createNode transform -n "F_IK_wrist_space_spcGRP" -p "F_IK_wrist_space_offGRP";
	rename -uid "FDA0DC17-41B6-B676-DEA7-BE9FFC70248D";
createNode transform -n "F_IK_wrist_space" -p "F_IK_wrist_space_spcGRP";
	rename -uid "C6AF9F78-4796-D035-5800-B88353285470";
createNode locator -n "F_IK_wrist_spaceShape" -p "F_IK_wrist_space";
	rename -uid "43973385-48C7-78AF-2393-77A78A1B2E31";
	setAttr -k off ".v";
createNode transform -n "F_IK_ball_HIK_offGRP" -p "F_IK_wrist_space";
	rename -uid "84F3A6BC-4265-CFBC-ABE8-4C831C36ECA0";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999989 ;
	setAttr ".offset" -type "matrix" 0.99999999999999978 4.9629248566405559e-18 -1.8965067689023785e-16 0
		 1.4420769014228965e-18 0.99999999999999989 -2.1033522146218786e-17 0 2.215499376838348e-17 1.1058862159352145e-16 0.99999999999999989 0
		 -1.7763568394002505e-15 -1.1102230246251565e-15 0 1;
createNode transform -n "F_IK_ball_HIK_spcGRP" -p "F_IK_ball_HIK_offGRP";
	rename -uid "40BF03EE-42E7-280D-F349-BDAD33405996";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode ikHandle -n "ikHandle3" -p "F_IK_ball_HIK_spcGRP";
	rename -uid "B941D9C1-4BF9-1ABE-FD0D-3EA243ADB9FC";
	setAttr ".t" -type "double3" -2.7716673400846048e-10 7.13942862720085e-05 -5.8896800879892908e-05 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.36682853681319 -39.407319203328051 -89.999981552702693 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999997501724491 0.99999999994995847 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -1.6569485866874694e-05 -0.001936703931673155 0.99999812932350263 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_toes_offGRP" -p "F_IK_wrist_space";
	rename -uid "6A427395-4F0A-ADB8-EB03-AAB479EB51A6";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000001123986972 0.99999991149429801 0.99999997610701563 ;
	setAttr ".offset" -type "matrix" -1.122524116587561e-05 -0.3271762692356654 0.94496344560011036 0
		 0.99999991126344923 1.3640862050561222e-05 1.6601918939111104e-05 0 -1.8321869029597954e-05 0.94496331677768519 0.32717622441561645 0
		 4.0569045308913587e-05 1.1824749912369799 -3.4152706560900619 1;
createNode transform -n "F_IK_toes_spcGRP" -p "F_IK_toes_offGRP";
	rename -uid "2EB1FF7E-4FDD-F554-064B-0298C894F0BC";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 0 ;
createNode ikHandle -n "ikHandle4" -p "F_IK_toes_spcGRP";
	rename -uid "572CF07F-4B5F-4F5D-9886-2E9E0F83FBE5";
	setAttr ".t" -type "double3" 3.6141828709296568 1.0266445471529551e-09 -1.3036567914070929e-07 ;
	setAttr ".r" -type "double3" -0.0010497036872594225 -0.10178956180527497 0.00064504591715971928 ;
	setAttr ".s" -type "double3" 0.99999987634694898 1.0000000884566962 1.0000000351963667 ;
	setAttr ".sh" -type "double3" -1.6375400185764307e-10 4.5122375985809187e-08 -2.7121353226259421e-10 ;
	setAttr ".pv" -type "double3" 0.94559510906539035 5.3060795854239578e-09 0.32534551405281276 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_wrist_upVec" -p "F_IK_wrist_space";
	rename -uid "5CB186E4-4DC2-52FE-7474-BCA28B9F032E";
	setAttr ".t" -type "double3" 5.0149187335882859 -4.5814882082128987 -0.14031934237416621 ;
	setAttr ".r" -type "double3" 2.0594095074060412 -0.42147551289646024 -0.061649804715152537 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
createNode orientConstraint -n "F_IK_wrist_aim_space_orientConstraint1" -p "F_IK_wrist_aim_space";
	rename -uid "85AD8D5F-4E8B-2AA5-4E0E-06BD89E29F75";
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
	setAttr ".lr" -type "double3" 0.0084050606813953991 -3.0810791681765859e-06 -4.1520224017719363e-06 ;
	setAttr ".rsrr" -type "double3" 0.11096697536063686 -0.00095087604771596033 0.00077931747371000055 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "F_IK_wrist_HIK_aim_space_01" -p "F_IK_wrist_CTL";
	rename -uid "2C851E27-4444-25C6-F077-138D9ACE8C69";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_01_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_01";
	rename -uid "509F4E27-4586-5C37-3E3E-469C44E25433";
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
	rename -uid "18A456B1-4795-F10E-FAC9-0A861FDA0B27";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_02_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_02";
	rename -uid "BC644168-4E74-EEA6-DDF9-5CB3FFB12DAB";
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
	rename -uid "B6393D09-4659-1CAF-E892-85AB67BD80BB";
	setAttr ".t" -type "double3" -2.7219027032288068e-10 3.4425292410489305e-05 -2.8520831147460513e-05 ;
	setAttr ".r" -type "double3" 0.0018582069029984454 -70.902162945575128 -90.001965772588477 ;
	setAttr ".s" -type "double3" 0.99999998872355333 0.99999999995783906 1.0000000113186065 ;
	setAttr ".sh" -type "double3" -1.7648380828941762e-10 4.4669212600603299e-08 -3.1653020613024059e-10 ;
createNode transform -n "F_IK_toes_CTL_spcGRP" -p "F_IK_toes_CTL_offGRP";
	rename -uid "836DEC5C-47C3-7C44-8937-E2803A9EC793";
createNode transform -n "F_IK_toes_CTL" -p "F_IK_toes_CTL_spcGRP";
	rename -uid "E780595F-4A40-930C-EAC6-F68865511D1C";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "F_IK_toes_CTLShape" -p "F_IK_toes_CTL";
	rename -uid "9A3721BF-453E-3FDA-1D2F-D4B724E9E243";
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
	rename -uid "D4FBB89F-4DCB-3143-8C56-1EAAA824F716";
	setAttr ".t" -type "double3" 4.9999832928857222 -2.6683729242695819 1.1923138536504041 ;
	setAttr ".r" -type "double3" -0.10255867442285503 0.00094975845450175165 -0.00078329912755447186 ;
	setAttr ".s" -type "double3" 1.0000000000000191 1.0000000001270566 0.99999999987292443 ;
createNode transform -n "F_IK_shoulder_aim" -p "F_IK_foot_CTL";
	rename -uid "ACDEAAA1-4060-F552-A46F-84BFA2800079";
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
	rename -uid "62412633-48D6-CA99-3F0D-C7BAFB97CC5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5 6.173900325234301e-09 0 ;
	setAttr ".s" -type "double3" 1.0000000000068536 0.99999999991385691 1.0000000000792879 ;
createNode locator -n "IK_wrist_aim_02Shape" -p "IK_wrist_aim_02";
	rename -uid "BA69FC9B-4AD5-DDF4-1BE9-34BB7CD4EFA7";
	setAttr -k off ".v";
createNode transform -n "poleVec_GRP" -p "IK_arm_CTL_GRP";
	rename -uid "28AE627D-457A-B7AD-7F90-D7A2F4AFE7B5";
	setAttr ".t" -type "double3" 37.979490170536849 -6.0674696538615542 -3.410347070883224 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "poleVec_CTL_offGRP" -p "poleVec_GRP";
	rename -uid "4072CA5B-467E-15D5-8CAE-9C98A2820FDE";
createNode transform -n "poleVec_CTL_spcGRP" -p "poleVec_CTL_offGRP";
	rename -uid "0DE3B29E-420E-8095-069B-2D94E2CA9221";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "poleVec_CTL" -p "poleVec_CTL_spcGRP";
	rename -uid "3938C4D3-4015-725A-B3B1-E6AB5CB882ED";
	addAttr -ci true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "resetAttr" -ln "resetAttr" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -8.8817841970012523e-16 8.8817841970012523e-16 ;
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
	rename -uid "90041B47-46F6-DFB5-81E4-95A197FAB1F8";
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
createNode parentConstraint -n "poleVec_CTL_spcGRP_parentConstraint1" -p "poleVec_CTL_spcGRP";
	rename -uid "D8DC3D33-4142-94E0-AC91-A1B26A919C87";
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
	setAttr ".tg[0].tot" -type "double3" -3.6491242939176987 -19.715189681623674 -22.259473453133857 ;
	setAttr ".tg[0].tor" -type "double3" -12.974720684718168 -2.9493146079282386 -90.351255728762496 ;
	setAttr ".lr" -type "double3" -0.38720100029833637 7.6562535050821685 0.059081991851285875 ;
	setAttr ".rst" -type "double3" -2.4868995751603507e-14 8.8817841970012523e-16 -24.999999999999996 ;
	setAttr ".rsrr" -type "double3" 3.9259971849315285e-15 7.9513867036587919e-16 -2.3537735298306331e-17 ;
	setAttr -k on ".w0";
createNode transform -n "FK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "3A05B6E6-4CB3-9E48-09A9-2C930868173D";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "6BF4FEAB-42FB-90A8-2BFE-308642EBF38F";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "F6EFAAFB-45E1-56F6-652C-2FB8020E2C11";
createNode transform -n "FK_scapula_space_ivsScale" -p "FK_scapula_space";
	rename -uid "771151FD-4C16-BA72-3663-0BA3496C6EC3";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space_ivsScale";
	rename -uid "FE4946CA-44B3-F94D-6280-DD8C77742E61";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "5E8220D7-405D-F5FD-C6FE-C69673B74B6D";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "4B4DDDCF-4DF6-FBF3-B1AB-759C2D987402";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "21F2E2F3-4A86-F6C9-FC99-55A548E59B59";
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
	rename -uid "00956F05-47ED-96AF-39FE-248B640C2905";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL_ivsScale";
	rename -uid "EBD6B39F-4F3E-215F-E9D3-7CABA64A2E48";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "3D4C53DC-4714-92D1-A466-418D374DD575";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "88AC334E-4CD8-BD40-31BA-C2BDBBC51791";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "65C112FC-4BC1-E491-5993-61A10F97658B";
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
	rename -uid "52D93C18-4301-023C-E775-4099E82F770B";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL_ivsScale";
	rename -uid "7FF3FEB4-43E2-9BF1-177E-9BB35DBAB037";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "0540C993-4DA0-E431-242A-CEB09DEC0805";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "B87D944C-4511-9D86-300C-73B74D03278B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "9006BFB7-4CD5-9A21-763D-6895CEED42C8";
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
	rename -uid "7A26FBCA-4CCB-3069-BB09-A4809B16EEBA";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL_ivsScale";
	rename -uid "B06703DE-4119-28D9-9766-84A87434C65B";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "008B0173-4B13-9F93-7D0F-0C80BD8294BF";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "FEAD645B-47AF-DBB0-D0B1-AA80C8832F52";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "050DBDCF-4A36-E4F2-A2BD-05A1B7D8BF03";
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
	rename -uid "D477FBE8-491C-7DA7-60DF-50BCE2DD143C";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 5.3290705182007514e-15 ;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL_ivsScale";
	rename -uid "DBD9CF74-48F8-0292-9B2A-3B82D7D9F0FE";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "D7E48B45-4A36-77DB-6939-7987FE5381F6";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "34966657-4AC3-0E7F-3A01-E1A9AA7A57B0";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "67C14CD3-4205-28D6-AA36-CE984E57083C";
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
	rename -uid "9CD8ABEF-48F8-E834-C01B-73855179EDE2";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "3B62372B-47E9-2139-C983-1992AC2C3E80";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "E70C4FF0-4A25-5ED8-1407-B29758DDD3F5";
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
	rename -uid "673EB11A-458E-AD54-76CB-96A80816927A";
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
	rename -uid "3F3CA4CA-4F94-EE37-1A63-B191F6C9D634";
createNode joint -n "scapula" -p "arm_output";
	rename -uid "C93CF039-4D6F-E81E-D09D-078FD58D4BC8";
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
	rename -uid "B0F81E71-46E4-41B2-79AF-AFB3881CF208";
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
	rename -uid "DC2C848C-4BC9-093E-A20B-FF86FD26D56A";
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
	rename -uid "0CF4D4FD-4CF5-3445-A93C-4B955684C025";
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
	rename -uid "97650869-4E46-9917-37EE-95A98FB114BE";
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
	rename -uid "BC75D529-439D-6728-59B6-BDB551D7AD70";
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
	rename -uid "98CB9729-426B-F542-E85B-B58ECEC6A0D8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999998623544251 -5.9477194556738798e-10 1.3626797335087274e-09 0
		 5.9477191898904237e-10 0.99999999693967512 -2.1310307796174044e-08 0 -1.3626798462024035e-09 2.1310307296573683e-08 0.99999999000123574 0
		 6.2056994334685038 1.4970899386845815e-07 20.832681790400944 1;
	setAttr ".liw" yes;
createNode transform -n "L:fit_F_elbow_offset_LOC";
	rename -uid "D9123652-42FA-D4A0-57E3-F0B8729DCD63";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.1870837211608887 7.2500090599060059 16.187589645385742 ;
createNode locator -n "L:fit_F_elbow_offset_LOCShape" -p "L:fit_F_elbow_offset_LOC";
	rename -uid "CF17D633-455F-FE25-D5B2-B1A303B9A0F4";
	setAttr -k off ".v";
createNode fosterParent -n "LRNfosterParent1";
	rename -uid "D6D5DCA4-4721-7269-F802-CB9CDEFCAA02";
createNode parentConstraint -n "fit_F_elbow_parentConstraint1" -p "LRNfosterParent1";
	rename -uid "5E96366F-4766-98CE-E768-029805579FFD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fit_F_elbow_offset_LOCW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 0 2.6645352591003757e-15 -3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 0.06464385986328125 -15.030144214630123 0.22628974914550426 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "418DD1BE-47ED-2E86-DF5B-B88093260AF3";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "263EF094-45D7-EF0A-8453-25AA1A171A92";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/part/Qarm_check01.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C576A5DC-44D1-8E80-4A96-E68299F6713B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DB6C1FF6-4DFC-2EED-BEFB-52A552AC4431";
createNode displayLayerManager -n "layerManager";
	rename -uid "A9838DC0-4FB7-40DF-5F45-1ABBC6560328";
createNode displayLayer -n "defaultLayer";
	rename -uid "C9E8B3A3-4FA1-64D4-F78B-26BB2D1FC176";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A0B94E4A-44DA-8053-A878-458467211A0C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9CCD45F2-4D13-2AC7-6C90-05AC52268829";
	setAttr ".g" yes;
createNode decomposeMatrix -n "IK_shoulder_space_DCMX";
	rename -uid "9A85948F-4E10-55DB-7322-27A358F20763";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "AD530AD6-46C0-1964-B890-4A9CCABC27DF";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_CTLVal_MULT";
	rename -uid "DCA8F125-4091-5F63-0A04-119FE58DF9DA";
createNode multiplyDivide -n "loarm_stretch_output_mul_CTLlVal_MULT";
	rename -uid "ADCAA31F-482C-F86D-D541-6BA2417F7F54";
createNode plusMinusAverage -n "soft_armLen_PMA";
	rename -uid "94F10B92-4124-9CAB-CB48-D6A09B5580B9";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "BE772922-44A8-DD1A-07E7-B7A5C8E49D0F";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "08EB1AC2-483B-AFCD-2F6F-5192857D468A";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "A8A8AF85-47BA-EB4C-B7EC-A58A6CDAAE1F";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midarmLen";
	rename -uid "F1791E99-42C4-72D2-5CB0-8F805CD70CE6";
createNode multMatrix -n "input_F_elbow_local_MTMX1";
	rename -uid "39391D36-4AD9-A01C-CA6A-75BE601E7788";
	setAttr -s 2 ".i";
createNode distanceBetween -n "upIKLen";
	rename -uid "5AB9CD49-48DE-8E0B-1959-0489910D76D1";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "13B430A6-429C-75BB-CEAD-07A4F6C7417D";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "ECCD9830-4700-BB03-7331-ED9CF3A01968";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val_MULT";
	rename -uid "EC954738-4EC6-DF88-854E-A58C22D2443D";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "loIKLen";
	rename -uid "A5650782-4C5C-58A0-B609-BD8526498A82";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "DC850A80-478C-8BEB-E4BF-4796572572BF";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "2E82AD24-4AA6-6D43-9355-AB997B535693";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "loarm_soft_Len_PMA";
	rename -uid "1A87E180-4D10-EBF6-2CCA-549FF7DCDA65";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loarmLen";
	rename -uid "AF2CF537-4AB5-3C63-BDF4-75B6360D33FE";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "4F534DD4-4D0C-E0AB-5654-37A202281597";
	setAttr -s 2 ".i";
createNode condition -n "CTLlen_COND";
	rename -uid "2875AEF1-40D8-C7FF-7DE1-D19DD9F4C4F4";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "7AB1088E-45CC-AEC2-3C4B-24A7065E5A6B";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len_SUBT";
	rename -uid "183780BC-41A4-1C06-359D-A38A38B014FF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV_MULT";
	rename -uid "7AB02622-4E44-3BEA-FB1E-8B95BEF9BF2C";
createNode multiplyDivide -n "power_val_POW";
	rename -uid "651BD9C1-449C-3C32-2765-58BBB219E429";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val_MULT";
	rename -uid "85603F2C-4FF2-0B38-FF5A-3681198C22D5";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_uparm_softikV_DIVD";
	rename -uid "78CC1AA2-440A-59F4-F075-24A393876C94";
	setAttr ".op" 2;
createNode plusMinusAverage -n "CTLLen_minue_dif_SUBT";
	rename -uid "C093FB7C-41E6-589A-D9BD-9F83F07FB6C6";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV_SUBT";
	rename -uid "9FA346BD-46E5-01BA-DF4D-CC8D3C960EC5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "9398EFF6-4F27-7495-D4BC-388EB0819B07";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_CTLlen_COND";
	rename -uid "A7FA40D0-474F-BD02-6E89-96AFFE8A5704";
	setAttr ".op" 2;
createNode condition -n "loarm_softikV_COND";
	rename -uid "D8D22460-4730-2D14-D86D-3AAEE4A0EA38";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_result_softik_len_SUBT";
	rename -uid "446926B0-4582-7A14-9C8F-08B1F41D4FDF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_mult_softikV_MULT";
	rename -uid "241A6468-4443-0B80-195E-AFB35EE1C4F0";
createNode multiplyDivide -n "loarm_power_val_POW";
	rename -uid "EABC7F03-4F07-EBD9-E6AC-9E83A0FFED53";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "loarm_negate_val_MULT";
	rename -uid "BF0D5EDB-4285-F746-9F0B-2AAC36682345";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_loarm_softikV_DIVD";
	rename -uid "787E190A-4AC3-63DD-285D-3CB7AC05893D";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_ctrlLen_minue_dif_SUBT";
	rename -uid "3EC2B741-4DA0-8B7C-96F1-B3A9AA1CF5D4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_armlen_minus_softikV_SUBT";
	rename -uid "4716D3F6-45D3-01D2-B1E2-8189EDC1B6CD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "midarm_plus_stretch_PMA";
	rename -uid "DB26426D-4FF1-EE6C-8F79-FA9B78857A6A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_midarm_MULT";
	rename -uid "BF2B2CE6-4945-82A9-E6F3-B293911687A9";
createNode multiplyDivide -n "stretched_midarmLen_MULT";
	rename -uid "E6E70B32-4BC4-3464-E50D-BFADB094C5A7";
createNode plusMinusAverage -n "stretchedLen_SUBT";
	rename -uid "7FF81D5D-4455-9795-FEA7-17B14C964EA9";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "midarm_ratio3_DIVD";
	rename -uid "0C026498-4E3A-3B2F-06B6-5DA87A90C60F";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen_PMA";
	rename -uid "8B149D4A-4DEA-3A15-0413-5E97E7840F6C";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch_PMA";
	rename -uid "3D4F38CA-4AB5-F391-041A-C1A6E9F4950A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm_MULT";
	rename -uid "E3A53A5F-4466-BDA1-1CF1-1A9B361EC574";
createNode multiplyDivide -n "stretched_uparmLen_MULT";
	rename -uid "17D17C69-47B9-9C69-A14D-5587DE3F07C8";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "8BE087CB-448E-6DA6-88D4-DB825328D352";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_plus_stretch_PMA";
	rename -uid "F0C3212E-4ACA-67F1-FD9C-FA8704B7DDEE";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_stretchCtrl_arm_MULT";
	rename -uid "348AB5AE-4B48-E104-C514-9DB9281BD297";
createNode multiplyDivide -n "loarm_stretched_arm_MULT";
	rename -uid "9DEA1824-4509-5204-9634-14B86B8779AD";
createNode plusMinusAverage -n "loarm_stretchedLen_SUBT";
	rename -uid "754705C2-4112-6D96-A208-46ABAE1C6242";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio_DIVD";
	rename -uid "C0A40F10-47D6-463F-0C49-DFA661A3B174";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_stretch_armLen_PMA";
	rename -uid "5251718C-402B-B520-9AC5-5EA916A08021";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "34F94116-4521-E42B-C111-2D8CCF111D7F";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "B43B7B78-4A13-A4E7-F8DA-BFB4B2132E58";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "42A7D3A4-46B9-78C7-0C27-528BE7D3463A";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "DC5453FA-468A-748C-063A-2BBD1442EF2F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_wrist_space_scale_DCMX";
	rename -uid "7C1BA41B-4855-6B04-0410-8B864D2E9B09";
createNode decomposeMatrix -n "F_wrist_CTL_scale_DCMX";
	rename -uid "8C796B9A-4CD9-B323-B91F-189A13BE55EE";
createNode decomposeMatrix -n "F_ball_CTL_scale_DCMX";
	rename -uid "1D9CBB4A-4F3E-7ECF-7737-E8AB077F3949";
createNode decomposeMatrix -n "F_IK_foot_IKH_offGRP_local_DCMX";
	rename -uid "ECE76448-4A9D-00CA-F2E5-28BC3A48977D";
createNode multMatrix -n "F_IK_foot_IKH_offGRP_local_MTMX";
	rename -uid "BB8CBAA6-4E8A-C9BE-D011-E789A1F7637A";
	setAttr -s 2 ".i";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "54426823-482C-1FC2-42D1-5A8B6BEA20A4";
createNode decomposeMatrix -n "F_IK_wrist_IKH_offGRP_local_DCMX";
	rename -uid "44DBB536-4AC7-0E6A-062E-8284900265CA";
createNode multMatrix -n "F_IK_wrist_IKH_offGRP_local_MTMX";
	rename -uid "397EF100-426C-00D1-8845-1790FCC25993";
	setAttr -s 2 ".i";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "F247B523-4E42-334B-5BE2-27B08FF374D5";
createNode decomposeMatrix -n "FK_shoulder_CTL_local_DCMX";
	rename -uid "CB6E22CA-478A-ED0D-AF7E-979CAC333934";
createNode multMatrix -n "FK_shoulder_CTL_local_MTMX";
	rename -uid "3AFBD657-4EDB-4FDC-5D8D-97B5D4660984";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_elbow_CTL_local_DCMX";
	rename -uid "08D2B73D-4659-C874-A7FE-FB96C4763F83";
createNode multMatrix -n "FK_B_elbow_CTL_local_MTMX";
	rename -uid "FAA23263-41DA-8F59-558B-89A2F33AE278";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_elbow_CTL_local_DCMX";
	rename -uid "EADCDA1C-4CB4-E24E-AB02-F48E50E95A7A";
createNode multMatrix -n "FK_F_elbow_CTL_local_MTMX";
	rename -uid "2EA6BD9D-400C-9E92-F0D7-01B91EE2808C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_wrist_CTL_local_DCMX";
	rename -uid "3F104635-4A59-49B4-6EE8-69BF3C3A1A27";
createNode multMatrix -n "FK_F_wrist_CTL_local_MTMX";
	rename -uid "C866E579-46CB-0638-C41D-7481B5960AD4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_toe_CTL_local_DCMX";
	rename -uid "726EF297-4571-C77C-8309-588FB1C9A34F";
createNode multMatrix -n "FK_F_toe_CTL_local_MTMX";
	rename -uid "0850A41C-426A-6326-12CF-F9AA3EE69200";
	setAttr -s 2 ".i";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "CF7AFAB5-4B2C-B325-B428-E0848A888D67";
createNode decomposeMatrix -n "scapula_CTL_inverse_DCMX";
	rename -uid "EE76DA10-494F-D4A4-B9ED-CA8C512A3D86";
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "34BAF394-4DDE-BF98-919D-4CB69F690A05";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "7070CD35-4729-5591-90EE-C48E7C11C1A9";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion1";
	rename -uid "4F4BA313-49E3-F058-AB36-8FAAE8FDD814";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition";
	rename -uid "C872BA2D-443F-112B-0553-B0AE23475CB2";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "906EC619-46B3-5472-5760-AE99E7C7BB9B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "18697C1B-4550-72FD-DB0C-65892D44F133";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition";
	rename -uid "C6B45C25-490A-9C12-7EDB-9FB4427C780F";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition";
	rename -uid "7B71B2AC-4882-04C9-9EA4-2783EA30A669";
createNode unitConversion -n "unitConversion3";
	rename -uid "617230FD-4D43-1FAC-1670-0FB6B4CC8156";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "093E4EDE-4114-E4E0-85FE-D7987836FAF0";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "roll_angle_SUBT";
	rename -uid "95CF9B4F-4EDF-586D-EAB6-BAB4C0F390BF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion6";
	rename -uid "1B9A6849-44C1-7117-47D0-79825EB16AEA";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "1D09A0E3-491B-1C38-8C49-2689C39AD0D3";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "D2F167F0-45D8-A923-28F1-22A0315FBC7B";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "AE21D3CD-4754-32E0-EC58-31A03DAA511A";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon";
	rename -uid "9C9D56D8-4D4C-395C-A031-C6A26EEF2642";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition";
	rename -uid "1BADA80E-4E77-5752-6466-F8B4E1529E6F";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball_SUBT";
	rename -uid "C2BEE360-4A03-6037-03BD-48857BBE1859";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap";
	rename -uid "CC6ABA9B-46E3-513C-B5AB-C5AF89A96ADD";
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
	rename -uid "58AB13B1-4314-F98A-6B7D-48A95FD5BE17";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "06F29875-4AF1-CCE7-B070-53ACABBB42AB";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "457CF74E-4600-BB60-7B79-B7A8ED4272B1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_wrist_local_DCMX1";
	rename -uid "9F212EE6-401C-5690-863F-9C8330CDB55A";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "F12B30AC-49C1-29A0-F642-BD8635DF6DFF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "D0555E0A-4902-37BB-4E3E-5AB2BD1877B6";
createNode multMatrix -n "input_F_elbow_local_MTMX2";
	rename -uid "2CF1E37B-4253-A515-AE6F-0288167B25AA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX";
	rename -uid "B97DFC1C-45BF-1FEF-BE25-A2865DB647DC";
createNode multMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX";
	rename -uid "6C0F6A86-49A8-96EB-0AB5-4AB15691872E";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "F_IK_toe2F_IK_toes_offGRP_DCMX";
	rename -uid "D9E0E0AC-493A-91BE-BDBB-9080EA51736E";
createNode multMatrix -n "F_IK_toe2F_IK_toes_offGRP_MTMX";
	rename -uid "6986FCCE-4353-D4F6-B647-7CA5954A8179";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion7";
	rename -uid "F01967DA-49DF-0CFF-18FE-76916B756C11";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS";
	rename -uid "5B6DBE8A-4106-82E4-CB2C-9EBD3080A6A8";
createNode decomposeMatrix -n "input_F_elbow2F_IK_shoulder_aim_DCMX";
	rename -uid "38F1D4D2-4B8B-E83C-51B2-539248773C82";
createNode multMatrix -n "input_F_elbow2F_IK_shoulder_aim_MTMX";
	rename -uid "D6F2EBC6-49C2-85E0-D7D2-70ACBB7833C3";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion9";
	rename -uid "E49B4486-4654-3EDD-F534-68AD2B579FDB";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX";
	rename -uid "4834D0DD-464F-208F-3496-6EA94DC9D9AB";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX";
	rename -uid "F921755E-438A-A4F0-59F6-E2873630EF0C";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion8";
	rename -uid "502DBFD6-4204-202F-9EE9-B28692A58374";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIK_RVS";
	rename -uid "570413A4-414E-44CD-E79B-8A99A4D62F7D";
createNode decomposeMatrix -n "FK_scapula_space_inverse_DCMX";
	rename -uid "2B5AAEDF-4B6F-87EE-A327-CEA0F2D3C670";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "4E19CD18-47E2-8BE4-3B2A-6F8333CD4B7B";
createNode decomposeMatrix -n "FK_shoulder_CTL_inverse_DCMX";
	rename -uid "3007D7E4-47DA-9041-9712-BF8348BD4794";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "F8E09CCC-4A4D-1A6A-6A30-9FB74628493F";
createNode decomposeMatrix -n "FK_B_elbow_CTL_inverse_DCMX";
	rename -uid "CDDF454E-4EE4-221C-74FF-03896CB783F0";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "26EAD975-47DA-49A0-4737-50BAF36D8535";
createNode decomposeMatrix -n "FK_F_elbow_CTL_inverse_DCMX";
	rename -uid "3D13078B-434C-0DC8-6F5D-1492995CE2AE";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "117793E2-47BF-CFAE-BD1E-9898E048D242";
createNode decomposeMatrix -n "FK_F_wrist_CTL_inverse_DCMX";
	rename -uid "E5476AA1-4BCE-0A8A-C99E-2EAA5772CA49";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "9984982F-4921-081A-F2D8-73A71B94FF1C";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "15A70EF6-45D7-2DD2-0CD7-FE9C6FD4C58F";
	setAttr -s 2 ".i";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "A7ACB3A9-4F7F-18B4-3F05-C287C9B45997";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "FD114B9A-436A-9317-C431-0D89580D6F57";
createNode blendColors -n "scapula_BLCL";
	rename -uid "34AA3F98-419F-0B4D-9491-ABBAE445DA12";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "2DE7E83C-4847-F4B5-2FEB-9388491B7D80";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "D780D7C1-4D85-F637-7B1E-E2BCEC2E77CA";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "02DF6711-4ECC-0F64-0D46-72B0FFB5EC92";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "20163AFE-4F45-8C1F-FD53-1495FF012151";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "71E0DD52-4510-36CC-B6AB-E1828A333A9F";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "72B80A43-43DE-4E3F-02FF-F2A61FBF04E5";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "E8CA3B7A-483D-D1F2-6FC5-059FBE0F1460";
createNode blendColors -n "wrist_BLCL";
	rename -uid "1AEE5568-4F11-E776-487F-A285ED3C851D";
createNode pairBlend -n "toe_PRBL";
	rename -uid "0BBE56A0-431D-6090-B5E0-919CBE3A49BF";
createNode blendColors -n "toe_BLCL";
	rename -uid "DC4B1B9B-41E4-A8D7-CD38-C3926DC152ED";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "6C91AB7C-4394-83C7-C21D-FE814F9A441B";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "E09E74C3-4B17-0EF6-90DA-36B6BFC14971";
createNode reference -n "LRN";
	rename -uid "250A6CF4-4ED3-737A-D7A3-10A03FBEE350";
	setAttr -s 10 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN"
		"LRN" 0
		"LRN" 13
		0 "|LRNfosterParent1|fit_F_elbow_parentConstraint1" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow" 
		"-s -r "
		2 "|L:fit_arm" "visibility" " 1"
		2 "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow" 
		"translate" " -type \"double3\" -0.0094790458679199219 -10.54738044738769531 -5.64932056115322645"
		
		5 4 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.translateX" 
		"LRN.placeHolderList[1]" ""
		5 4 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.translateY" 
		"LRN.placeHolderList[2]" ""
		5 4 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.translateZ" 
		"LRN.placeHolderList[3]" ""
		5 4 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.rotateX" 
		"LRN.placeHolderList[4]" ""
		5 4 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.rotateY" 
		"LRN.placeHolderList[5]" ""
		5 4 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.rotateZ" 
		"LRN.placeHolderList[6]" ""
		5 3 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.rotateOrder" 
		"LRN.placeHolderList[7]" ""
		5 3 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.parentInverseMatrix" 
		"LRN.placeHolderList[8]" ""
		5 3 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.rotatePivot" 
		"LRN.placeHolderList[9]" ""
		5 3 "LRN" "|L:fit_arm|L:fit_arm_GRP|L:fit_arm_space|L:fit_shoulder|L:fit_B_elbow|L:fit_F_elbow.rotatePivotTranslate" 
		"LRN.placeHolderList[10]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "reRN";
	rename -uid "4B728F65-4D91-5D14-A5F7-B289DE2027D1";
	setAttr ".ed" -type "dataReferenceEdits" 
		"reRN"
		"reRN" 20
		2 "|re:Geometry" "template" " 1"
		2 "|re:Geometry" "overrideDisplayType" " 0"
		2 "|re:Geometry" "overrideLevelOfDetail" " 0"
		2 "|re:Geometry" "overrideShading" " 1"
		2 "|re:Geometry" "overrideTexturing" " 1"
		2 "|re:Geometry" "overridePlayback" " 1"
		2 "|re:Geometry" "overrideEnabled" " 0"
		2 "|re:Geometry" "overrideVisibility" " 1"
		2 "|re:Geometry" "hideOnPlayback" " 0"
		2 "|re:Geometry" "overrideRGBColors" " 0"
		2 "|re:Geometry" "overrideColor" " 0"
		2 "|re:Geometry" "overrideColorRGB" " -type \"float3\" 0 0 0"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:spine_GRP|re:spine_output" "visibility" 
		" 1"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:tail_GRP|re:tail_output_GRP" "visibility" 
		" 1"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:neck_GRP|re:neck_output_GRP" "visibility" 
		" 1"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:L_arm_GRP|re:L_arm_output" "visibility" 
		" 1"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:L_leg_GRP|re:L_leg_output" "visibility" 
		" 1"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:R_leg_GRP|re:R_leg_output" "visibility" 
		" 1"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:R_arm_GRP|re:R_arm_output" "visibility" 
		" 1"
		2 "|re:RIG|re:SET_GRP|re:body_SET|re:head_GRP|re:head_output_GRP" "visibility" 
		" 1";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "564342DC-4E1E-AA89-2105-16BF42364F4A";
	setAttr ".version" -type "string" "4.0.3";
createNode objectSet -s -n "lightEditorRoot";
	rename -uid "664CC662-4245-C77A-0F1E-318621B9D3EA";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	addAttr -ci true -sn "lightGroup" -ln "lightGroup" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visibility" -ln "visibility" -dv 1 -min 0 -max 1 -at "bool";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "40CB281D-4D1A-B660-0F25-54B6331554A0";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode pointOnCurveInfo -n "pointOnCurveInfo1";
	rename -uid "B73076E7-47B6-2A75-9A54-3E923099B409";
createNode unitConversion -n "unitConversion10";
	rename -uid "977A02D4-49F7-B339-943B-5C945C592A9C";
	setAttr ".cf" 0.017453292519943295;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CB476323-4F60-A099-61C9-F68730489F54";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 302\n            -height 325\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 302\n            -height 324\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 302\n            -height 324\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1112\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1112\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1112\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "623C14A6-4ADE-7AA4-50EF-9B98EB8DD6E3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "178E8CCE-4001-06A2-E84F-06A1B88D15A5";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1140.3927225925979 -1443.6596725488466 ;
	setAttr ".tgi[0].vh" -type "double2" 29.480853868523617 -299.86608027634901 ;
	setAttr -s 17 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -831.4285888671875;
	setAttr ".tgi[0].ni[0].y" 145.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -831.4285888671875;
	setAttr ".tgi[0].ni[1].y" -158.57142639160156;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -831.4285888671875;
	setAttr ".tgi[0].ni[2].y" 44.285713195800781;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -831.4285888671875;
	setAttr ".tgi[0].ni[3].y" 247.14285278320313;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -831.4285888671875;
	setAttr ".tgi[0].ni[4].y" -260;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -831.4285888671875;
	setAttr ".tgi[0].ni[5].y" -1172.857177734375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -831.4285888671875;
	setAttr ".tgi[0].ni[6].y" -767.14288330078125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -831.4285888671875;
	setAttr ".tgi[0].ni[7].y" -57.142856597900391;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -507.14285278320313;
	setAttr ".tgi[0].ni[8].y" -25.714284896850586;
	setAttr ".tgi[0].ni[8].nvs" 18306;
	setAttr ".tgi[0].ni[9].x" -831.4285888671875;
	setAttr ".tgi[0].ni[9].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -871.8238525390625;
	setAttr ".tgi[0].ni[10].y" -550.23516845703125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -843.84759521484375;
	setAttr ".tgi[0].ni[11].y" -972.48382568359375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -831.4285888671875;
	setAttr ".tgi[0].ni[12].y" -665.71429443359375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -831.4285888671875;
	setAttr ".tgi[0].ni[13].y" -361.42855834960938;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -831.4285888671875;
	setAttr ".tgi[0].ni[14].y" -868.5714111328125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -831.4285888671875;
	setAttr ".tgi[0].ni[15].y" -462.85714721679688;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -402.75607299804688;
	setAttr ".tgi[0].ni[16].y" -666.20355224609375;
	setAttr ".tgi[0].ni[16].nvs" 18306;
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
connectAttr "fit_F_elbow_parentConstraint1.ctx" "LRN.phl[1]";
connectAttr "fit_F_elbow_parentConstraint1.cty" "LRN.phl[2]";
connectAttr "fit_F_elbow_parentConstraint1.ctz" "LRN.phl[3]";
connectAttr "fit_F_elbow_parentConstraint1.crx" "LRN.phl[4]";
connectAttr "fit_F_elbow_parentConstraint1.cry" "LRN.phl[5]";
connectAttr "fit_F_elbow_parentConstraint1.crz" "LRN.phl[6]";
connectAttr "LRN.phl[7]" "fit_F_elbow_parentConstraint1.cro";
connectAttr "LRN.phl[8]" "fit_F_elbow_parentConstraint1.cpim";
connectAttr "LRN.phl[9]" "fit_F_elbow_parentConstraint1.crp";
connectAttr "LRN.phl[10]" "fit_F_elbow_parentConstraint1.crt";
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
connectAttr "IK_scapula_aim_space_aimConstraint1.crx" "F_IK_scapula_aim_space.rx"
		;
connectAttr "IK_scapula_aim_space_aimConstraint1.cry" "F_IK_scapula_aim_space.ry"
		;
connectAttr "IK_scapula_aim_space_aimConstraint1.crz" "F_IK_scapula_aim_space.rz"
		;
connectAttr "IK_scapula_aim_space_pointConstraint1.ctx" "F_IK_scapula_aim_space.tx"
		;
connectAttr "IK_scapula_aim_space_pointConstraint1.cty" "F_IK_scapula_aim_space.ty"
		;
connectAttr "IK_scapula_aim_space_pointConstraint1.ctz" "F_IK_scapula_aim_space.tz"
		;
connectAttr "F_IK_scapula_aim_space.pim" "IK_scapula_aim_space_aimConstraint1.cpim"
		;
connectAttr "F_IK_scapula_aim_space.t" "IK_scapula_aim_space_aimConstraint1.ct";
connectAttr "F_IK_scapula_aim_space.rp" "IK_scapula_aim_space_aimConstraint1.crp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "IK_scapula_aim_space_aimConstraint1.crt"
		;
connectAttr "F_IK_scapula_aim_space.ro" "IK_scapula_aim_space_aimConstraint1.cro"
		;
connectAttr "F_IK_foot_CTL.t" "IK_scapula_aim_space_aimConstraint1.tg[0].tt";
connectAttr "F_IK_foot_CTL.rp" "IK_scapula_aim_space_aimConstraint1.tg[0].trp";
connectAttr "F_IK_foot_CTL.rpt" "IK_scapula_aim_space_aimConstraint1.tg[0].trt";
connectAttr "F_IK_foot_CTL.pm" "IK_scapula_aim_space_aimConstraint1.tg[0].tpm";
connectAttr "IK_scapula_aim_space_aimConstraint1.w0" "IK_scapula_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_foot_upVec.wm" "IK_scapula_aim_space_aimConstraint1.wum";
connectAttr "F_IK_scapula_aim_space.pim" "IK_scapula_aim_space_pointConstraint1.cpim"
		;
connectAttr "F_IK_scapula_aim_space.rp" "IK_scapula_aim_space_pointConstraint1.crp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "IK_scapula_aim_space_pointConstraint1.crt"
		;
connectAttr "IK_shoulder.t" "IK_scapula_aim_space_pointConstraint1.tg[0].tt";
connectAttr "IK_shoulder.rp" "IK_scapula_aim_space_pointConstraint1.tg[0].trp";
connectAttr "IK_shoulder.rpt" "IK_scapula_aim_space_pointConstraint1.tg[0].trt";
connectAttr "IK_shoulder.pm" "IK_scapula_aim_space_pointConstraint1.tg[0].tpm";
connectAttr "IK_scapula_aim_space_pointConstraint1.w0" "IK_scapula_aim_space_pointConstraint1.tg[0].tw"
		;
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
connectAttr "input_scapula.t" "motion_FK_arm_GRP.t";
connectAttr "input_scapula.r" "motion_FK_arm_GRP.r";
connectAttr "input_scapula.s" "motion_FK_arm_GRP.s";
connectAttr "scapula_CTL.t" "FK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "FK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "FK_scapula.r";
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
connectAttr "makeNurbCircle1.oc" "scapula_CTLShape.cr";
connectAttr "scapula_CTL_inverse_DCMX.os" "scapula_CTL_ivsScale.s";
connectAttr "input_shoulder.t" "IK_shoulder_CTL_offGRP.t";
connectAttr "arm_switch_CTL.FK_IK" "IK_shoulder_CTL_offGRP.v";
connectAttr "arm_switch_CTL.FK_IK" "IK_arm_CTL_GRP.v";
connectAttr "input_shoulder.t" "IK_arm_CTL_GRP.t";
connectAttr "input_wrist_local_DCMX.ot" "F_input_F_toe_space.t";
connectAttr "input_wrist_local_DCMX.os" "F_input_F_toe_space.s";
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
connectAttr "unitConversion10.o" "F_IK_shoulder_aim.r";
connectAttr "upper_poleVec_offGRP_space_DCMX.ot" "poleVec_CTL_offGRP.t";
connectAttr "upper_poleVec_offGRP_space_DCMX.or" "poleVec_CTL_offGRP.r";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.ctx" "poleVec_CTL_spcGRP.tx";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.cty" "poleVec_CTL_spcGRP.ty";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.ctz" "poleVec_CTL_spcGRP.tz";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.crx" "poleVec_CTL_spcGRP.rx";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.cry" "poleVec_CTL_spcGRP.ry";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.crz" "poleVec_CTL_spcGRP.rz";
connectAttr "poleVec_CTL_spcGRP.ro" "poleVec_CTL_spcGRP_parentConstraint1.cro";
connectAttr "poleVec_CTL_spcGRP.pim" "poleVec_CTL_spcGRP_parentConstraint1.cpim"
		;
connectAttr "poleVec_CTL_spcGRP.rp" "poleVec_CTL_spcGRP_parentConstraint1.crp";
connectAttr "poleVec_CTL_spcGRP.rpt" "poleVec_CTL_spcGRP_parentConstraint1.crt";
connectAttr "F_IK_scapula_aim_space.t" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tt"
		;
connectAttr "F_IK_scapula_aim_space.rp" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "F_IK_scapula_aim_space.r" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tr"
		;
connectAttr "F_IK_scapula_aim_space.ro" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "F_IK_scapula_aim_space.s" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].ts"
		;
connectAttr "F_IK_scapula_aim_space.pm" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.w0" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tw"
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
connectAttr "L:fit_F_elbow_offset_LOC.t" "fit_F_elbow_parentConstraint1.tg[0].tt"
		;
connectAttr "L:fit_F_elbow_offset_LOC.rp" "fit_F_elbow_parentConstraint1.tg[0].trp"
		;
connectAttr "L:fit_F_elbow_offset_LOC.rpt" "fit_F_elbow_parentConstraint1.tg[0].trt"
		;
connectAttr "L:fit_F_elbow_offset_LOC.r" "fit_F_elbow_parentConstraint1.tg[0].tr"
		;
connectAttr "L:fit_F_elbow_offset_LOC.ro" "fit_F_elbow_parentConstraint1.tg[0].tro"
		;
connectAttr "L:fit_F_elbow_offset_LOC.s" "fit_F_elbow_parentConstraint1.tg[0].ts"
		;
connectAttr "L:fit_F_elbow_offset_LOC.pm" "fit_F_elbow_parentConstraint1.tg[0].tpm"
		;
connectAttr "fit_F_elbow_parentConstraint1.w0" "fit_F_elbow_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
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
connectAttr "scapula_CTL.wim" "scapula_CTL_inverse_DCMX.imat";
connectAttr "input_wrist_local_MTMX1.o" "input_wrist_local_DCMX.imat";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX1.i[0]";
connectAttr "IK_arm_CTL_GRP.wim" "input_wrist_local_MTMX1.i[1]";
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
connectAttr "upper_poleVec_offGRP_space_MTMX.o" "upper_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "input_B_elbow.wm" "upper_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "poleVec_GRP.wim" "upper_poleVec_offGRP_space_MTMX.i[1]";
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
connectAttr "LRNfosterParent1.msg" "LRN.fp";
connectAttr "sharedReferenceNode.sr" "reRN.sr";
connectAttr "F_IK_shoulder_aim.rebuildRot" "unitConversion10.i";
connectAttr "input_F_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "F_IK_wrist_space_offGRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "input_wrist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "input_scapula.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "F_IK_toe.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "F_IK_wrist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "input_toe.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "F_IK_ball.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "arm_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "input_tiptoe.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "F_IK_shoulder_aim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "F_IK_foot_IKH_stretched_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "poleVec_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "input_B_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "F_IK_foot_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "input_shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "unitConversion10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
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
connectAttr "upper_poleVec_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "upper_poleVec_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver1.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
// End of Qarm_check01.ma
