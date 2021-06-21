//Maya ASCII 2019 scene
//Name: dog_V002.ma
//Last modified: Fri, Jun 18, 2021 07:21:30 PM
//Codeset: 949
file -rdi 1 -ns ":" -dr 1 -rfn "fit_q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
file -rdi 1 -ns ":" -dr 1 -rfn "fit_q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -rdi 1 -ns ":" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "D:/rnd/quadruped/dog/data/model.ma";
file -r -ns ":" -dr 1 -rfn "fit_q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
file -r -ns ":" -dr 1 -rfn "fit_q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -r -ns ":" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "D:/rnd/quadruped/dog/data/model.ma";
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "4273EB1E-47EC-DDBF-B8E7-9A8C50984416";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 151.84103911256238 70.255473419263126 10.743258847337216 ;
	setAttr ".r" -type "double3" -15.338352727795346 1528.5999999993276 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E5E98FFB-403D-232F-6B29-E3ADE9E51F57";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 172.64661643145064;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.9776515586663743 -1.0332819074117126 75.420139680448528 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "FC51D406-4058-2521-371F-EDAA192B64C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D8994665-4013-E2E0-6A80-08BA5D165DA6";
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
	rename -uid "1CA344D8-4169-AC3F-0305-35AB49A15E99";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "22524EC4-4FCE-52B9-E347-A99210ED931C";
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
	rename -uid "EEEC51A4-4CDE-4D0D-0F36-6F881DD1F0A4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B8E41E98-4DC0-53CD-C526-1B83D9C26328";
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
createNode transform -n "arm_GRP";
	rename -uid "54D0E8A8-4B74-7C97-0D65-F0AFCCF386CC";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 5 ".init";
	setAttr -k on ".follow";
	setAttr -k on ".prefixType";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "BA90B732-4F6D-A2F4-134A-5195059FD451";
	setAttr ".v" no;
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "D46997B5-4BF6-ED56-2CDC-7D808FE662A2";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "B065051A-492A-91A3-470D-E684A0E79D5D";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852995953546682 5.4333494218265699 ;
	setAttr ".r" -type "double3" -0.87823511578999003 18.963375891580259 -90.051492328085615 ;
	setAttr ".s" -type "double3" 1.0000000429453995 1.0000000680434886 0.99999999181452848 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "54194578-459F-5FED-777E-E4AC706B0B00";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 11.152677681241606 1.9077782020815448e-08 -1.3571132999601332e-06 ;
	setAttr ".r" -type "double3" -4.3448559730052584e-08 -19.828059850672926 -2.8251354181454941e-08 ;
	setAttr ".s" -type "double3" 0.99999991550197298 0.99999999999999989 1.0000000147680039 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "7845D1C0-4CBB-141C-9732-0590F86DEEF4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 15.032044837389922 -1.508268177019545e-09 -5.2869918221176704e-08 ;
	setAttr ".r" -type "double3" -0.0683015927768027 0.86262954780907919 -0.0010282910203707016 ;
	setAttr ".s" -type "double3" 1.0000000201979447 0.99999985072677022 0.99999999767305114 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "FB9BCE0B-4BBB-1518-CBCF-E69A09733C91";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.5795552717763179 -1.5686074661402927e-09 8.8623401950371772e-09 ;
	setAttr ".r" -type "double3" 1.5300767850706973 -39.400120945286524 -0.9713268539366019 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "219FE6D1-4122-677A-68DB-2B97E48A667F";
	setAttr ".t" -type "double3" 1.9337219313120055 -2.3322810349668543e-09 -3.64267778607541e-07 ;
	setAttr ".r" -type "double3" -0.43067865543338923 -31.594788466966445 0.22563925839982277 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "09A34902-4093-13DF-2BC2-17BB12034E8E";
	setAttr ".t" -type "double3" 3.6142640355045756 6.6401995013620763e-10 2.6688912946326582e-07 ;
	setAttr ".r" -type "double3" 71.005077193748861 -1.7113551733261622e-08 89.99999999681603 ;
createNode transform -n "motion_IK_GRP" -p "arm_motion_GRP";
	rename -uid "BEEA9D01-4FC3-C2DB-1CA2-5B9F59C4D090";
createNode transform -n "IK_shoulder_space" -p "motion_IK_GRP";
	rename -uid "54FD938D-4148-CDE8-32DC-7594B2E737F1";
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "F54B033B-4E46-8891-6883-0FB240F6446C";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "814FA0F5-43AA-77A9-A342-C0BD3BC936A7";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "1AFAA6B9-4E0D-CF0D-AC94-CD8E15289EC6";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "13384CA2-49AE-A644-CBB9-4B8822377185";
	setAttr -s 2 ".iog";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "A08EA819-4E59-CF07-6AFB-409D788630F2";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "D85C7395-40DF-A32D-DFB1-60AFF61F645A";
	setAttr -s 2 ".iog";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "6FF23417-4477-AC13-0D9E-6683CEF983AE";
	setAttr -k off ".v";
createNode transform -n "ankle_offset_GRP" -p "upper_stretch_output_LOC";
	rename -uid "F8DDB20F-4F08-7226-128E-DA88EC1C8D7D";
	setAttr ".t" -type "double3" 4.5078143145167164 0.0027108481662523332 0.80741924590541814 ;
	setAttr ".r" -type "double3" -10.153476863512063 -0.42837352305053678 89.874579056846116 ;
	setAttr ".s" -type "double3" 0.99999993196110837 0.99999997181295508 0.99999999342252588 ;
	setAttr ".sh" -type "double3" -5.9993620639617081e-10 1.0180313195912592e-09 -4.6334934472047124e-08 ;
createNode transform -n "ankle_space" -p "ankle_offset_GRP";
	rename -uid "3867F47A-4AA1-9DCA-FAFD-18B498A5FE82";
createNode ikHandle -n "ikHandle1" -p "ankle_space";
	rename -uid "473CE9DB-465C-EC1E-7ADA-4B873AAD7172";
	setAttr ".t" -type "double3" -0.018615705346738842 4.5796363458851133 2.1234761561572668e-05 ;
	setAttr ".r" -type "double3" 2.588269837845218 -0.41960739676470471 -0.072194743298761438 ;
	setAttr ".s" -type "double3" 1.0000000000006599 0.99999999268661111 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484927334517397e-10 1.6005933006988813e-10 1.2770773040052234e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "4525DA48-497B-7081-5CDF-74AD2CFF6EA5";
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
createNode transform -n "IK_wrist_space" -p "upper_stretch_output_LOC";
	rename -uid "953E9F65-414D-DE26-2C24-5D9E2E8CCE32";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "CCE9C5A4-48BA-5F90-DDB1-8399325144E0";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "71FFF2DA-4F1A-5D0C-C7BB-3DB9D49CFBF8";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "3FC48BA0-4D7B-25DD-C13E-9BB7C6A53790";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "5184B8A0-48BA-5F4D-17E0-62A6662176E0";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "72946244-4978-E3B6-61CE-E38F74047355";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "1B20C5B0-481B-1B15-C722-6686551E7717";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "49D7A06D-4716-894F-D0E4-71863C01F903";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle2" -p "lower_stretch_output_LOC";
	rename -uid "8E2A889F-4FE5-1D05-AF07-70B1B2CDFD10";
	setAttr ".t" -type "double3" -0.00011817256893786876 7.2561956443450981e-10 3.1345864925924616e-07 ;
	setAttr ".r" -type "double3" -1.4463488157537345e-27 0.00019824970204960224 7.4521846946874758e-06 ;
	setAttr ".s" -type "double3" 1.0000000159603892 1.0000000812308731 1.0000000011375991 ;
	setAttr ".sh" -type "double3" -1.6019759401675542e-10 -1.0104766364969727e-08 0 ;
	setAttr ".pv" -type "double3" -2.5035693294182551e-08 -0.0095432113891717931 0.99995446366562979 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "4CF2AEAA-4899-6E66-C620-72B5B5FA4A06";
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
	rename -uid "98443028-4ECA-7108-F8ED-ACBCE5611D04";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "BBBEC1A6-48BB-CB4D-4CB7-E8B19D624D80";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "D440FC21-4BCA-B065-7AFF-BD93C6EDC8D1";
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
	rename -uid "94589FE8-4601-5292-FA0F-C7A3885F859D";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "B547A187-4C47-32C0-B61B-C6A96710A8BE";
	setAttr -k off ".v";
createNode transform -n "softIK_input" -p "motion_IK_GRP";
	rename -uid "8C0D5757-4F6F-38E5-E584-68B7A477E45F";
	addAttr -ci true -sn "armLen" -ln "armLen" -at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "extended_ctrl_len" -ln "extended_ctrl_len" -at "double";
	addAttr -ci true -sn "extended_len" -ln "extended_len" -at "double";
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
	setAttr -k on ".armLen";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".softik_ctrl_value";
	setAttr -k on ".extended_ctrl_len";
	setAttr -k on ".extended_len";
createNode transform -n "softIK_output" -p "motion_IK_GRP";
	rename -uid "0B5D7CA4-4C60-E1CF-7885-258D79B3201F";
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
createNode transform -n "stretchIK_input" -p "motion_IK_GRP";
	rename -uid "88756E08-4945-6145-FBEB-CBA75EA29B91";
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
	setAttr -k on ".softik_len";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".uparm_len";
	setAttr -k on ".ctrl_len";
	setAttr -k on ".loarm_len";
	setAttr -k on ".extendedarm_len";
	setAttr -k on ".extended_softik_len";
	setAttr -k on ".extended_ctrl_len";
createNode transform -n "stretchIK_output" -p "motion_IK_GRP";
	rename -uid "A3E88F49-41A3-4ED2-1122-89AFBA6B24D0";
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
createNode joint -n "IK_scapula" -p "motion_IK_GRP";
	rename -uid "B9F9E81C-416F-6579-9757-4BA61F7317B4";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "A01BA431-4E79-3D33-BFCF-7CA8EE0C07F5";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".jo" -type "double3" -0.87824312286570438 18.965197724056541 -90.051523048187704 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "F31EFB89-4934-5423-9212-2BA5A43179BF";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.152678489685059 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" -3.8221941587764362e-23 2.2672244320706222e-13 -6.7078511092575798e-22 ;
	setAttr ".jo" -type "double3" 0 -19.831211919824817 0 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "EAB8C932-4CD5-E886-9E52-2EBBC5727CF6";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.032044410705566 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" -4.2731388256398642e-10 1.5779795589106643e-19 5.040768393933342e-18 ;
	setAttr ".jo" -type "double3" 0.28375593604391397 0.86415918719472928 -0.0010177409688004351 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "D2EDBE18-4C07-F7E9-9905-35818805F454";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795550346374512 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" 2.6207770575258851e-12 -3.1595438268690977e-21 -5.2767812716584861e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0744729634291843 -39.403151800117712 -0.68209927816437554 ;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "CF734B9C-4D36-1FE0-4056-688D4E348C50";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 1.9337219230343514 -2.3312471952863234e-09 -3.8934359558595588e-07 ;
	setAttr ".r" -type "double3" 8.4464947453690899e-08 9.830231695780992e-18 5.9335765919686895e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.4306856278995439 -31.596273163438827 0.22563817969297301 ;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "AFF34A91-4CFF-531C-5476-DDB99F081C49";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 3.6142641859769533 4.2063685867788081e-10 2.5389838054223901e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 71.005076399722185 3.1805546814635176e-15 90.000000007127923 ;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "C756CE37-4679-EF01-4A2C-8597D02F42C9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "A10F34C5-4CF5-6E4F-35F8-19A1C5E78A66";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "AE1CA368-4A4B-E432-78E0-86A58C31BF56";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "B8474D0F-430F-6E00-D63A-F38FFF493CB2";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "9D46D1DC-4818-FCBC-46FB-42A9DA91DA49";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "952CBBD3-4C28-0538-F37A-6294DD5C82FF";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "motion_FK_GRP" -p "arm_motion_GRP";
	rename -uid "0FC415F3-4FBA-CB01-61DE-19ABE587FBCA";
createNode joint -n "FK_scapula" -p "motion_FK_GRP";
	rename -uid "6A8DA85B-49E8-915E-7216-C5A61B06A8F4";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "0250FF7C-40DF-AB32-27EC-F48B90D11508";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".s" -type "double3" 1.0000000271834264 1.0000000061505856 1.0000000056081169 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_B_elbow" -p "FK_shoulder";
	rename -uid "3C045CDE-4B0E-14B2-EFB0-478665C7B33F";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999997443905331 0.99999999999594447 1.0000000351070466 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_F_elbow" -p "FK_B_elbow";
	rename -uid "D372AC74-41CB-9B3D-BDC4-B0B3082B4CCC";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".s" -type "double3" 1.0000000055946909 0.99999998096072429 0.99999999879765833 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "6CDC8831-449E-11BA-302E-D3B6B8469AC2";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999996610895991 1.0000000052788129 0.99999996814868997 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "3BE852AF-48BC-C9DD-ACF7-6EB6678E5FC8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 1.0000000003213161 1.0000000076139905 0.99999997994621115 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "5D8CD323-45FC-5FDA-BDA0-F6BF7BFD7B1E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "E72659BD-4E90-0A2B-893A-F48ED53FBAF9";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "A33DE9CA-442D-A14C-46E1-91B561FB6A5F";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "166607AE-4F4F-DB71-64DC-31A8B5D99B48";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "A8B6EAC9-4B6B-800E-113C-848A27917BFD";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "2B12C826-4729-FEE5-533D-FFBFF76B04B1";
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
createNode transform -n "IK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "45985A52-4263-2C53-31D7-C392E36F958C";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674408 1.0000000222718179 1.0000000028214378 ;
	setAttr ".sh" -type "double3" -8.0815271250080359e-10 3.4848956455488211e-08 -2.2852080187929983e-08 ;
createNode transform -n "scapula_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "021C0FCD-4F33-3D99-6C08-139F9A64CF90";
	setAttr ".t" -type "double3" -4.7371485343050495 -1.8119642307906743 -9.8230416917541596 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "scapula_space" -p "scapula_offGRP";
	rename -uid "CEC67659-48CF-5564-8437-85AFE7EF2B4C";
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "scapula_space";
	rename -uid "7C581469-450D-1FD3-E7BD-E2A3D61EC1A8";
	setAttr ".t" -type "double3" 1.8925676345825106 -8.7557087982241413 6.4785563096523013 ;
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "13DAA28D-4189-CACE-3028-948013066BFA";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "0218D83A-4F1F-6A96-5558-5AB302788BFD";
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
createNode transform -n "IK_ankle_aim" -p "IK_shoulder_CTL";
	rename -uid "C0A8EDEF-4FE0-4395-AFFF-5685DB540410";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode locator -n "IK_ankle_aimShape" -p "IK_ankle_aim";
	rename -uid "3A335B83-4F72-E0B1-ABC0-D4A05F5B86AA";
	setAttr -k off ".v";
createNode transform -n "input_F_toe_space" -p "IK_arm_CTL_GRP";
	rename -uid "265A3C06-48A2-7BB6-EE56-BFA2E5D48764";
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_foot_CTL_offGRP" -p "input_F_toe_space";
	rename -uid "E755F554-48CA-3FF3-9CEE-6CA127E25D69";
	setAttr ".t" -type "double3" 2.817222294660148 -0.0049796501773071711 -0.77774806250817363 ;
	setAttr ".r" -type "double3" 39.409568096343335 0.3668402583336568 89.999999960581661 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_foot_CTL_spcGRP" -p "F_foot_CTL_offGRP";
	rename -uid "C13089C1-410A-47CF-2975-419B78D47F60";
createNode transform -n "F_foot_CTL" -p "F_foot_CTL_spcGRP";
	rename -uid "EF5717AF-45DE-AAA3-0E98-D3835041D699";
	addAttr -ci true -sn "roll" -ln "roll" -at "double";
	addAttr -ci true -sn "bank" -ln "bank" -at "double";
	addAttr -ci true -sn "rollStartAngle" -ln "rollStartAngle" -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -at "double";
	addAttr -ci true -sn "stretch" -ln "stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".roll";
	setAttr -k on ".bank";
	setAttr -k on ".rollStartAngle" 45;
	setAttr -k on ".heelTwist";
	setAttr -k on ".toeTwist";
	setAttr -k on ".stretch";
	setAttr -k on ".softIK";
createNode transform -n "F_heel" -p "F_foot_CTL";
	rename -uid "42CE0052-4449-534D-7949-7C9F9A18ED29";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00047531438057468733 1.0963452368173421e-15 -1.774207099174899 ;
createNode locator -n "F_heelShape" -p "F_heel";
	rename -uid "F0C016CB-49F1-3624-0FB8-799643AB5543";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_heel_CTL" -p "F_heel";
	rename -uid "E2293232-4DB3-988B-829C-E6986D0E4650";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_heel_CTLShape" -p "F_heel_CTL";
	rename -uid "CE120584-4C5D-1DFA-2255-FCBB7ABB8E3E";
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
createNode transform -n "F_heel_out" -p "F_heel_CTL";
	rename -uid "AE247B90-4108-2E6A-72E6-4D8CB8BFE9A6";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_heel_outShape" -p "F_heel_out";
	rename -uid "E2483B4C-425F-8EAA-5266-ADB856B695C1";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_heel_in" -p "F_heel_CTL";
	rename -uid "775EAD1F-4675-6403-73D5-1E9AB353AA13";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_heel_inShape" -p "F_heel_in";
	rename -uid "6A1E9F8B-4B47-94EC-D439-BA80A4DE61D8";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_toe" -p "F_heel_CTL";
	rename -uid "58D72DB5-47CD-8130-D54C-65ABA9D37B04";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00047531843421300124 1.0073012607249901e-06 5.2316885615937849 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_toeShape" -p "F_toe";
	rename -uid "51919262-4F0A-F0EF-2EE4-5780CAA44E94";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_toe_CTL" -p "F_toe";
	rename -uid "FA8E1441-4C85-DD7D-2D8C-0E8DD5B6E61A";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_toe_CTLShape" -p "F_toe_CTL";
	rename -uid "D6BC3690-4862-62BB-2226-77AA03FD2978";
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
createNode transform -n "F_ball" -p "F_toe_CTL";
	rename -uid "150189E0-4206-8B18-551A-ED9089EF7966";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.781849334747676e-09 1.1763864301246192 -3.417458473657323 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_ballShape" -p "F_ball";
	rename -uid "359C77D8-4823-0AF1-4052-54A86F490AC0";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_ball_CTL" -p "F_ball";
	rename -uid "49614AB5-41FE-9992-B743-0DBBB7862146";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_ball_CTLShape" -p "F_ball_CTL";
	rename -uid "0F52F490-4776-9199-AB69-3DA6DE5432D8";
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
createNode transform -n "F_ankle" -p "F_ball_CTL";
	rename -uid "E7D2D7DF-4565-55BB-BB33-2DB4F1A548D8";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.4940472841262815 -1.2276420593261719 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_ankleShape" -p "F_ankle";
	rename -uid "C900CBE3-461B-22F0-DCF0-92ABFA4144FE";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_ankle_CTL_offGRP" -p "F_ankle";
	rename -uid "4095077B-4A9E-0A56-16C6-41A9B7D7E352";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_ankle_CTL_spcGRP" -p "F_ankle_CTL_offGRP";
	rename -uid "7FC9D494-4DC6-4AA7-98E3-7183F1990850";
createNode transform -n "F_ankle_CTL" -p "F_ankle_CTL_spcGRP";
	rename -uid "E3EB6F34-430C-730E-CE55-C8BFECBFEC21";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_ankle_CTLShape" -p "F_ankle_CTL";
	rename -uid "E191548B-4271-336D-4426-F19FB0DDCF66";
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
createNode transform -n "F_wrist_space_offGRP" -p "F_ankle_CTL";
	rename -uid "50FE1AAC-4DC6-262D-BF86-F7B0EC856324";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.018614774662661482 4.5795184859433746 -2.3394827763922876e-07 ;
	setAttr ".r" -type "double3" -2.169980289803628 0.42445712589591611 0.044864058968832547 ;
createNode transform -n "F_wrist_space_spcGRP" -p "F_wrist_space_offGRP";
	rename -uid "076CB402-431D-CB7B-C6C5-78BDAF9E4B7C";
createNode transform -n "F_wrist_space" -p "F_wrist_space_spcGRP";
	rename -uid "5DE46F03-4A9B-1B2C-EB58-8F8001EC7245";
createNode locator -n "F_wrist_spaceShape" -p "F_wrist_space";
	rename -uid "146F290D-4AA0-9474-9E71-3D9ABE1E82D9";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle3" -p "F_wrist_space";
	rename -uid "5953F2F4-4596-2166-86B5-4381721239C3";
	setAttr ".s" -type "double3" 0.9999999750172448 0.99999999994995881 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -0.0074081065700528801 -0.037863174274077642 0.99925547771233592 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle3_parentConstraint1" -p "ikHandle3";
	rename -uid "CC9E4275-4C95-75DD-AE93-F58E856D8386";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_ballW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.7716762218688018e-10 7.1394286272230545e-05 
		-5.8896800879892908e-05 ;
	setAttr ".tg[0].tor" -type "double3" 0.36682853681318622 -39.407319203328072 -89.999981552702707 ;
	setAttr ".lr" -type "double3" 0.89745150128600548 -37.235764614615547 -90.381970469649829 ;
	setAttr ".rst" -type "double3" 0.00476462008062839 -6.1156346338057341 0.9968024784931373 ;
	setAttr ".rsrr" -type "double3" 0.89745150128600526 -37.235764614615547 -90.381970469649829 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle4" -p "F_wrist_space";
	rename -uid "EB094D5C-427B-BE36-3BA1-228C9F6AFA7C";
	setAttr ".s" -type "double3" 0.99999998874520257 0.99999999995098687 1.0000000113038114 ;
	setAttr ".sh" -type "double3" -1.6826897862024359e-10 4.4638121360922514e-08 -2.7357316883618989e-10 ;
	setAttr ".pv" -type "double3" -0.0074081065700528801 -0.037863174274077642 0.99925547771233592 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle4_parentConstraint1" -p "ikHandle4";
	rename -uid "94BE3171-4498-0196-BD75-C38AA0C3FE67";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_toeW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.5437785211579467e-10 2.618031522595941e-05 
		-7.4774193357995955e-05 ;
	setAttr ".tg[0].tor" -type "double3" -2.5975841781504691e-08 -71.004315935678548 
		-89.999999932595045 ;
	setAttr ".lr" -type "double3" 1.1698569609664258 -68.829922977737894 -91.151831128654294 ;
	setAttr ".rst" -type "double3" -0.021473307890486737 -7.4206173715559576 4.3671491872613508 ;
	setAttr ".rsrr" -type "double3" 1.1698569609664258 -68.829922977737894 -91.151831128654294 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "F_ankle_CTL_spcGRP_aimConstraint1" -p "F_ankle_CTL_spcGRP";
	rename -uid "666CA924-4B3B-E1DF-6616-CEA8E20A3B63";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_shoulder_CTLW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -6.4286389616203437 -0.0078227092062678246 -0.13929470811763134 ;
	setAttr ".rsrr" -type "double3" 1.590277340731758e-15 1.5530052155583574e-18 2.1552276845948029e-35 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "F_foot_CTL_CTLShape" -p "F_foot_CTL";
	rename -uid "1D26DA88-482B-8D6B-8F94-8290CB20C56E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0.3000000000000016 1.4988357199199225e-30 5.1699999999999964
		2.4197620230600871 1.4988357199199225e-30 4.6927275999999942
		3.5222814035563763 1.4988357199199225e-30 3.3335608899999931
		3.4685279612796598 1.4988357199199225e-30 1.32158307598892
		3.0063172066211714 1.4988357199199225e-30 -0.7421881854534188
		2.6170910400000009 1.4988357199199225e-30 -2.2825079529172569
		2.2045401111173426 1.4988357199199225e-30 -3.0448193872381597
		1.5971190923804535 1.4988357199199225e-30 -3.2081490131832124
		0.3000000000000016 1.4988357199199225e-30 -3.1900000000000031
		-0.99711909238045027 1.4988357199199225e-30 -3.2081490131832124
		-1.6045401111173394 1.4988357199199225e-30 -3.0448193872381597
		-2.0170910399999977 1.4988357199199225e-30 -2.2825079529172569
		-2.4063172066211682 1.4988357199199225e-30 -0.7421881854534188
		-2.8685279612796566 1.4988357199199225e-30 1.32158307598892
		-2.9222814035563731 1.4988357199199225e-30 3.3335608899999931
		-1.8197620230600839 1.4988357199199225e-30 4.6927275999999942
		0.3000000000000016 1.4988357199199225e-30 5.1699999999999964
		;
createNode transform -n "poleVec_GRP" -p "IK_arm_CTL_GRP";
	rename -uid "667A7DCC-40D4-F116-D871-BE85C9C6D516";
	setAttr ".t" -type "double3" 37.979490170536849 -6.0674696538615542 -3.410347070883224 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "poleVec_offGRP" -p "poleVec_GRP";
	rename -uid "13302C85-4C14-DF92-4D3E-3397331CD3EF";
createNode transform -n "poleVec_spcGRP" -p "poleVec_offGRP";
	rename -uid "BBEBE83A-487E-66C9-78CD-D49B683EE731";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-15 -10 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "poleVec" -p "poleVec_spcGRP";
	rename -uid "681F45D7-4F23-B110-D7CC-21A16E40CBF9";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "poleVecShape" -p "poleVec";
	rename -uid "8DE4FE9A-4384-1139-FC27-B285BF47DC25";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -1
		0 0 1
		0 0 0
		1 0 0
		-1 0 0
		;
createNode transform -n "FK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "1CFF96E4-4E61-72E6-ACB7-7785F02E7D2B";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "56E87ED8-4461-3BE3-C37B-99B0BAA28934";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "C64775F1-400E-2F95-5113-46AE58BDBD38";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space";
	rename -uid "3B460682-4D3A-C945-A14B-CE8AC6BC7714";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "B9431149-4DF6-1FAC-70FE-E0928CD43358";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "4A7AE17D-4337-113E-96F9-059DD3E067D9";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "BEAAFFE4-4125-9356-80B0-C3914FBB8BBA";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489120928 3.1657909645605455 
		-3.9494025894518061 1.5208811495611016e-14 4.4771045177197264 -4.0594246889894417e-14 
		0.78361162489123903 3.1657909645605447 3.949402589451728 1.1081941875544024 3.8203347043845097e-15 
		5.585298705274071 0.78361162489123903 -3.1657909645605424 3.949402589451728 1.5387677388538157e-14 
		-4.4771045177197291 -3.9692762789541649e-14 -0.78361162489120928 -3.1657909645605424 
		-3.9494025894518061 -1.1081941875543737 2.9776996532734011e-15 -5.5852987052741581 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL";
	rename -uid "56C12D4B-4AA6-C9D4-2C35-3FB6EF062A94";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "16493DA6-40FB-79C3-2FFA-679E3EA186C6";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "ADEBC509-4D32-714F-CE3C-26BACF2F2468";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "383D2F4F-49C0-0CE0-F055-8BA2DECEAEA2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122449 2.507557199651917 
		-3.2911688245431394 -6.7857323231109109e-17 3.5462214001740411 -2.8500075757065798e-16 
		0.78361162489122449 2.5075571996519166 3.2911688245431394 1.1081941875543877 3.0260076866411964e-15 
		4.6544155877284279 0.78361162489122449 -2.5075571996519148 3.2911688245431394 1.1100856969603222e-16 
		-3.546221400174042 4.662359927233347e-16 -0.78361162489122449 -2.5075571996519148 
		-3.2911688245431394 -1.1081941875543877 2.3585739827908124e-15 -4.6544155877284279 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL";
	rename -uid "EC706B1B-4E0D-EC95-0EA7-60B7FDB031FF";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "86F7A89E-462F-9C5F-DAD9-CEB1DEFE50CC";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "39DCC478-44E4-5AA1-FA85-8497A9A82763";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "845F0A45-4677-2CD1-C204-36ADB15BEF0C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122471 1.5202065522889727 
		-2.3038181771802 -9.560357429312334e-16 2.1498967238555124 -2.8107450842178277e-15 
		0.78361162489122382 1.5202065522889734 2.3038181771801942 1.1081941875543868 -1.6116151084102595e-15 
		3.2580909114098997 0.78361162489122382 -1.5202065522889747 2.3038181771801942 -7.771698500040926e-16 
		-2.1498967238555124 -2.2848793590120329e-15 -0.78361162489122471 -1.5202065522889738 
		-2.3038181771802 -1.1081941875543875 -2.0162467913695526e-15 -3.2580909114098984 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL";
	rename -uid "C55C2E56-4ACD-2BF5-082C-1C81BA9D9C2F";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "D36149B0-4240-7FDE-9F34-5183D012EDB6";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "71C4255B-4913-E52B-3548-3FA77071D936";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "8F0A1588-4028-837C-10BA-E6ACBEEA996D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489121816 1.5202065522889696 
		-2.3038181771801982 5.1546317846056251e-15 2.149896723855508 -1.9758573696997104e-15 
		0.78361162489122993 1.5202065522889703 2.3038181771801951 1.1081941875543933 -3.334681242628502e-15 
		3.2580909114098975 0.78361162489122993 -1.5202065522889763 2.3038181771801951 5.3334976775327602e-15 
		-2.1498967238555178 -1.4499916444939152e-15 -0.78361162489121816 -1.5202065522889761 
		-2.3038181771801982 -1.1081941875543815 -3.7393129255877975e-15 -3.258090911409901 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL";
	rename -uid "70227FFF-4460-C0E1-558F-5799BA344796";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "7789A24B-49C9-3745-0F7B-AAB94B18A69C";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "0B6901D4-4ED1-FC96-2980-00B6E0DB3DA2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "0E8F5C76-4DCE-1D0E-91A8-D19EFFE46FDD";
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
	rename -uid "9AE21DEC-4AD1-FD48-2DE6-AE8D436F209A";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "4B4118A1-4BF0-1DE7-5DFA-F38E1CB5CEDB";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "77F7EF9E-4DB5-C78A-221D-F8B4AF224CE2";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "arm_switch_CTLShape" -p "arm_switch_CTL";
	rename -uid "6DDE8397-4134-A652-776F-099AB934527F";
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
createNode transform -n "output" -p "arm_GRP";
	rename -uid "77D31CCF-4567-B401-D9A7-F1BD0200BE08";
createNode joint -n "scapula" -p "output";
	rename -uid "E75EA59D-4328-EF23-4023-10900D8EB03C";
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
	rename -uid "E3A724D9-4606-40AC-49CD-959A55368839";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1.0000000271834264 1.0000000061505856 1.0000000056081169 ;
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
	rename -uid "9DA5EDB1-4331-773F-DB17-67B77C50E1F6";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 0.99999997443905331 0.99999999999594447 1.0000000351070466 ;
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
	rename -uid "228296C1-43B2-99F3-D94C-F395C7663214";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1.0000000055946909 0.99999998096072429 0.99999999879765833 ;
	setAttr ".bps" -type "matrix" 0.0040647546198600846 -0.99999174444555394 1.0015585220554679e-08 0
		 0.99986866758645154 0.0040642541813794902 -0.015687298629525347 0 0.015687169273517574 6.37750346280299e-05 0.99987694555292417 0
		 6.1870846754343525 7.2499506264402154 16.187582038709117 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
	setAttr ".liw" yes;
createNode joint -n "wrist" -p "F_elbow";
	rename -uid "DDBF843F-4E54-515E-CF98-C5BDC29F8ACC";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 0.99999996610895991 1.0000000052788129 0.99999996814868997 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.2090216449517355e-09 -0.77262754525373967 0.63485951873867463 0
		 0.99997950889902987 0.0040647038035248667 0.0049467689121796971 0 -0.0064025258013377852 0.63484650771783435 0.77261171075722979 0
		 6.2056994403799308 2.6704333985583721 16.187582030586924 1;
	setAttr ".liw" yes;
createNode joint -n "toe" -p "wrist";
	rename -uid "A61E509B-4027-810E-93D7-C489EFFC25F0";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1.0000000003213161 1.0000000076139905 0.99999997994621115 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.4264964751965759e-09 -0.32548434718921404 0.94554742894126886 0
		 1.0000000076139905 -5.7668445366254595e-10 1.3101348764546494e-09 0 1.1885399088529258e-10 0.94554740967564044 0.32548434055743614 0
		 6.2056994382036024 1.1763863287781027 17.415223499195982 1;
	setAttr ".liw" yes;
createNode joint -n "tiptoe" -p "toe";
	rename -uid "1DC073F9-4A41-BBD5-C75D-7782F5C52B6B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999998623544251 -5.9477194556738798e-10 1.3626797335087274e-09 0
		 5.9477191898904237e-10 0.99999999693967512 -2.1310307796174044e-08 0 -1.3626798462024035e-09 2.1310307296573683e-08 0.99999999000123574 0
		 6.2056994334685038 1.4970899386845815e-07 20.832681790400944 1;
	setAttr ".liw" yes;
createNode joint -n "base_JNT";
	rename -uid "5908C3CC-456F-F1AE-E539-91A342458504";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "02500DBE-4E33-5A01-D2CF-A19F9F131579";
createNode mesh -n "bodyShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "84CD6BE1-4CD0-A1AB-E4FB-AAB37E2F682D";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AE516A7C-42F2-A5C0-6308-CDA9F3C6C6B6";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "90A13484-427A-16E0-77D2-55B79A328FCD";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/part/dog_V002.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "45A77CCE-4CBC-C375-76DD-D49FA47CB129";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DDC80A65-41ED-7C58-AB37-28AE9D08EFCA";
createNode displayLayerManager -n "layerManager";
	rename -uid "8FA08F8A-448B-6521-BDF8-DBA8F224912D";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "0F58B27B-451C-4DFE-023B-CEAD26521329";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9DF65FEF-4F1C-F01C-1BA1-998EFB4AA986";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "74ABDA3E-419E-91C8-B13F-35909FFA9178";
	setAttr ".g" yes;
createNode reference -n "fit_q_legRN";
	rename -uid "16341FE1-49EF-F056-0D21-03923D54DC11";
	setAttr ".ed" -type "dataReferenceEdits" 
		"fit_q_legRN"
		"fit_q_legRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "fit_q_armRN";
	rename -uid "F6EEE2A3-4AC8-749B-2192-F39C9E823BF6";
	setAttr ".ed" -type "dataReferenceEdits" 
		"fit_q_armRN"
		"fit_q_armRN" 33
		2 "layer2" "visibility" " 1"
		2 "|fit_arm" "visibility" " 1"
		2 "|fit_arm|fit_arm_GRP|fit_scapula" "translate" " -type \"double3\" 4.23935127258300781 40.81283187866210938 14.15216541290283203"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder" "translate" " -type \"double3\" 1.89256763458251953 -7.98529959535466816 5.43334942182656988"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow" "translate" 
		" -type \"double3\" -0.0094790458679216982 -10.5473785541484304 -3.62421689581531581"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow" 
		"translate" " -type \"double3\" 0.064644813537596768 -15.03020270391832724 0.22628205441888838"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist" 
		"translate" " -type \"double3\" 0.018614768981932706 -4.57951760292053223 8.8858467250929607e-09"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe" 
		"translate" " -type \"double3\" 0 -1.49404715081863371 1.22764146148026043"
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe|fit_tiptoe" 
		"translate" " -type \"double3\" 0 -1.17638627150151942 3.41745826265474761"
		2 "layer1" "visibility" " 1"
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[1]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[2]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[3]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[4]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[5]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[6]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[7]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[8]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[9]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[10]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[11]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[12]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[13]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[14]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[15]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[16]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[17]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[18]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[19]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[20]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[21]" 
		""
		"fit_q_armRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode decomposeMatrix -n "IK_shoulder_space_DCMX";
	rename -uid "0E986913-462D-B0EE-A95D-DF90721397D4";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "39A03EDA-43D3-7BBA-AF74-DCA626727AC2";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "F2201CE7-46F2-6ABC-93D2-2B9AAA39F642";
createNode plusMinusAverage -n "soft_armLen";
	rename -uid "ADC554FD-43AA-7E22-1874-09BE01D1AABD";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "E53E1213-4C23-F715-CFE3-989AD6E91049";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "86684282-49DB-8C50-4B61-1882CBDCF2A5";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "7F35E160-42A9-020C-122F-88995D29B07D";
	setAttr -s 2 ".i";
createNode distanceBetween -n "loarmLen";
	rename -uid "F02915BB-416E-1CA2-3630-3393C338038C";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "F2AFED7B-469E-8DA8-8C22-D39078109340";
	setAttr -s 2 ".i";
createNode distanceBetween -n "ctrlLen";
	rename -uid "A74C42D6-4849-CEF2-2731-23A9FC5ECBA1";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "060D3A1E-47F2-7043-8A0C-9080C74EA8EA";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val";
	rename -uid "5D9F4DF3-4584-5A02-B747-CE864FFE6426";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "F_toe01_ctrlLen";
	rename -uid "25904598-49A8-0983-5BC5-90AA643F9314";
createNode multMatrix -n "input_elbow_local_dist_MTMX";
	rename -uid "D9D6E59A-42BE-3751-81B8-B5A3F177EABA";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "5F681AE0-4EEE-43B2-0C88-0BB036C9F7F7";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "extended_soft_Len";
	rename -uid "D3189C80-48CB-81E0-1749-E5B25BB3506B";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode distanceBetween -n "expandarmLen";
	rename -uid "883636BA-48FB-3B86-1A0E-48B0948406D1";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "FE2C94AF-4121-106C-C3B7-4AA52F1FE162";
	setAttr -s 2 ".i";
createNode condition -n "ctrllen_COND";
	rename -uid "0DBDC031-4134-4209-C763-8EA4D344B0DB";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "9BE426A6-4B18-6CAB-92F0-839574565C2F";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "885E542D-428E-164F-EEF7-20AEA484A5C3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV";
	rename -uid "1A99C720-46C8-165A-B2F7-3BB652867B00";
createNode multiplyDivide -n "power_val";
	rename -uid "3CA9F8FB-4B6F-BC2B-79E9-CE868DB3F9C7";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val";
	rename -uid "8237C018-4E82-374B-1EFC-07B4487EB6C1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "72311FBF-4226-B2EB-C2AD-F7886BEFF127";
	setAttr ".op" 2;
createNode plusMinusAverage -n "ctrlLen_minue_dif";
	rename -uid "7641E2BB-40AF-258C-06DA-FA88D538AA81";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "07CD9206-4ED8-CA3A-F8C0-7DA741500E11";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "C1F3B20B-4FE7-0BBA-1677-5DBFC475FD24";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "extended_ctrllen_COND";
	rename -uid "32A25B4F-4919-A2CE-1EA0-EAA1BA37FE69";
	setAttr ".op" 2;
createNode condition -n "extended_softikV_COND";
	rename -uid "7924DD7B-4338-CDEE-430D-F99AA3142E0F";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extended_result_softik_len";
	rename -uid "645E35A3-4152-F997-4491-D8BB0F58D3C4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "extended_mult_softikV";
	rename -uid "7F014C66-44F6-16B0-AA24-08A9C5DF3FD1";
createNode multiplyDivide -n "extended_power_val";
	rename -uid "46888E6E-4F16-5EB5-7EC8-E7A0DA7B08BD";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "extended_negate_val";
	rename -uid "E1C02FD4-4EFC-8809-5FF7-5FAF8E14C5CD";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_expand_arm_softikV";
	rename -uid "C157943E-424D-1B71-6E10-78BAA0D5111D";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extended_ctrlLen_minue_dif";
	rename -uid "B2091EDB-4F01-A912-44B3-8A95D35E9A0C";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "extended_armlen_minus_softikV";
	rename -uid "5E172429-48F8-B7CB-367C-AB921BE9EA86";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_plus_stretch";
	rename -uid "35B48737-4619-874A-A83D-6682BDDF1252";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "4351FC06-4360-AAA8-2392-409529C867AB";
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "1F09984C-4E5A-1A04-35EA-06A917245BDA";
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "A9C9BE97-45E9-A258-45F3-B494D4D76C6C";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "D3B55EF8-4A62-B0F0-585C-EBB611513524";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen";
	rename -uid "09109F39-437F-D75B-6D2A-0CB356597BED";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch";
	rename -uid "345AA6E9-43B4-7106-DD1E-2FA283FFFBC9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "9DCECBDC-4C3F-986D-6ADC-0494FD062CA9";
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "E7EA5988-4A95-3C15-9920-96AC926F93D8";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "307BE37F-426C-AA34-2F8F-56B24565F81B";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extendedarm_plus_stretch";
	rename -uid "87CCC4E4-4D9F-8265-F401-F38C4179962A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "extended_stretchCtrl_arm";
	rename -uid "80397106-4D04-AEFE-6F0B-E0927885BAFA";
createNode multiplyDivide -n "extended_stretched_arm";
	rename -uid "0BC85D24-48B7-E146-B296-3FA50DA2F423";
createNode plusMinusAverage -n "extended_stretchedLen";
	rename -uid "3BAB1245-45CD-2150-520B-C08B88C77709";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "extendedarm_ratio";
	rename -uid "AD0D925B-48D6-0425-FC36-119B7509E8F7";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extended_stretch_armLen";
	rename -uid "0D67E4D8-4B20-CD54-8FDC-C2B77957F80E";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "IK_elbow_space_DCMX";
	rename -uid "717BB5B4-4C65-AE9E-F92F-BFA7764C05A3";
createNode multMatrix -n "IK_elbow_space_MTMX";
	rename -uid "0956DA0B-49E5-BCBF-520A-378DCAFDA966";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "extendedarm_stretch_output_mul_ctrlVal";
	rename -uid "EEFEA7EB-49CA-220A-9D22-C384A3852662";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "CD9DBFF4-4B5E-983B-A723-5C81F1E4DF4B";
createNode decomposeMatrix -n "wrist_CTL_offGRP_space_DCMX";
	rename -uid "1469DA32-4A01-142E-B57F-59BF5C0B4E9E";
createNode multMatrix -n "wrist_CTL_offGRP_space_MTMX";
	rename -uid "9A90C897-46EE-60DC-45A1-BE88AF1603B4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX";
	rename -uid "1B371E1F-4B4B-BCD6-444C-A9BD6A1956CF";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX";
	rename -uid "7B9024ED-412F-8C8E-DB42-2AA629D1BE33";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "lower_poleVec_offGRP_space_DCMX";
	rename -uid "355CD39B-4C13-2BF6-A4B8-A3B092804F2F";
createNode multMatrix -n "lower_poleVec_offGRP_space_MTMX";
	rename -uid "385E2A41-483D-FDFF-24F8-4DBE0ABF8D25";
createNode reverse -n "FKIK_RVS";
	rename -uid "835127BC-4C4E-0530-E34A-96BC79A100F8";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "46710588-4409-7756-2D92-F3B88D8B0483";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "9955D92D-446E-E7F2-5A32-2CBFD35DF048";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "6589F362-4253-CDD1-FA05-3CA66F7DABDC";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "BFD74471-47E2-60AC-13DB-108AB8D9CFB6";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "EBD405D8-4E93-86FF-39ED-B49EC3F7ACB2";
	setAttr -s 2 ".i";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "91F565E4-43B7-D80A-E128-41A91CF9DDDB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "D337D929-4B1C-F68B-A099-12A72A159789";
createNode objectSet -n "arm_SET";
	rename -uid "700ED58E-40CA-9BE2-9E7B-69A727A1D77F";
	setAttr ".ihi" 0;
	setAttr -s 55 ".dsm";
	setAttr -s 66 ".dnsm";
createNode script -n "uiConfigurationScriptNode2";
	rename -uid "6FA7087E-416F-BB02-E442-25ABC5E704D8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode2";
	rename -uid "F8023578-44C3-C9A7-97DE-8CBE4DB2F007";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "modelRN";
	rename -uid "C549634B-45AE-5F99-10C1-4194479ACBD2";
	setAttr -s 8 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 19
		0 "|modelRNfosterParent1|bodyShapeDeformed" "|Geometry|body" "-s -r "
		2 "|Geometry|body|bodyShape" "intermediateObject" " 1"
		2 "|Geometry|body|bodyShape" "vertexColorSource" " 2"
		5 4 "modelRN" "|Geometry.drawOverride" "modelRN.placeHolderList[1]" 
		""
		5 3 "modelRN" "|Geometry|body|bodyShape.worldMesh" "modelRN.placeHolderList[2]" 
		""
		5 3 "modelRN" "tweakSet1.memberWireframeColor" "modelRN.placeHolderList[3]" 
		""
		5 0 "modelRN" "groupId4.message" "tweakSet1.groupNodes" "modelRN.placeHolderList[4]" 
		"modelRN.placeHolderList[5]" ""
		5 4 "modelRN" "tweakSet1.dagSetMembers" "modelRN.placeHolderList[6]" 
		""
		5 3 "modelRN" "groupId4.groupId" "modelRN.placeHolderList[7]" ""
		5 4 "modelRN" "Dog_blinnSG.dagSetMembers" "modelRN.placeHolderList[8]" 
		""
		8 "|Geometry|body" "translateX"
		8 "|Geometry|body" "translateY"
		8 "|Geometry|body" "translateZ"
		8 "|Geometry|body" "rotateX"
		8 "|Geometry|body" "rotateY"
		8 "|Geometry|body" "rotateZ"
		8 "|Geometry|body" "scaleX"
		8 "|Geometry|body" "scaleY"
		8 "|Geometry|body" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode displayLayer -n "layer3";
	rename -uid "608814F1-4361-44EA-CE9F-25B9BD46EAF7";
	setAttr ".do" 1;
createNode reference -n "sharedReferenceNode";
	rename -uid "66A990E2-4039-56AC-0C4E-EA9B4467F4BA";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "703C7161-44C9-C47A-125F-60A9548B5626";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "85CA4A49-48F8-76C0-EC94-E5BC65A86984";
createNode surfaceShader -n "surfaceShader1";
	rename -uid "FF17CA3C-447A-7005-2985-FA852BB2E524";
createNode shadingEngine -n "surfaceShader1SG";
	rename -uid "EE97BDAE-4CFB-390A-D694-7392D60FB73D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "AFFF8C17-4DCE-8BAF-4A00-68BB233320C9";
createNode lambert -n "lambert2";
	rename -uid "0B8ED637-4404-A47B-8BD3-4D945AEEC7DD";
	setAttr ".c" -type "float3" 0 1 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "EF322F19-4E0C-88AE-C7B0-AD8F8423683C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "6F9866AA-4CC0-AA77-F216-608814A1AA0F";
createNode lambert -n "lambert3";
	rename -uid "AB1BF6D8-4B22-26ED-DD6C-5C9ABE49B8CF";
	setAttr ".c" -type "float3" 0 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "A7BA0D78-4360-EA79-8494-E49D2D7BFDE0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "9D63E79A-4605-532D-B9B5-74867B562204";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4CCD1FAB-4243-497B-4A9F-999C745536BD";
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
createNode condition -n "ball_bk_condition";
	rename -uid "49D865A8-4771-1F09-1F1E-398BBC4FC736";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion1";
	rename -uid "39584617-4E9D-E96B-1F1A-56A74E79F6F6";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_fn_condition";
	rename -uid "AA0DBD2D-4747-9A2C-E411-28B54A2C28B7";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode remapValue -n "ball_remap";
	rename -uid "51C77363-49BD-DBBA-D456-EC9E0C2174CB";
	setAttr ".imx" 90;
	setAttr -s 3 ".vl[0:2]"  0 0 2 1 1 3 1 1 2;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode condition -n "ball_start_conditon";
	rename -uid "318FBA41-4A81-D838-37F3-638BBA972344";
	setAttr ".op" 2;
createNode unitConversion -n "unitConversion2";
	rename -uid "C67D5B69-49B1-0EE9-340C-A68843A0A1E8";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "0D4BAE57-457D-4264-7C9A-9A976BA75294";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage1";
	rename -uid "6752D04B-48C5-3262-A26A-09B6B34CF5AC";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion3";
	rename -uid "3E4AE62A-4067-B196-8157-B2A77851EEF4";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "after_ball_start";
	rename -uid "7106D865-47A4-5F2A-5972-C28B16C4F6E2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "backto_zero_ball";
	rename -uid "39CDB938-4B59-E4F6-5155-1084424D1FE9";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "in_out_condition";
	rename -uid "8EB24B71-4AEB-051C-5BFA-A4AC40ED6FF4";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "B0D59100-439A-0A66-AAD7-B383AAE74484";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_default_condition";
	rename -uid "8729C9A9-4E47-DFCD-D4CC-84A2BE23460E";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "9AB014ED-4336-120F-F9EA-A0903CE3A045";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix2";
	rename -uid "10987CB5-41E6-813B-3021-E9A3B9578D01";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion5";
	rename -uid "2DF54599-474D-2C68-77C2-3A9FFEC81F93";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	rename -uid "B60A6CAC-4633-5E25-9600-9EB9CDF4ADC1";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "E8C82847-4C6C-B743-4D44-60970A5198AC";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "A2EE0752-4155-75DB-A4E9-C2A0959AAA1F";
	setAttr -s 2 ".i";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "99AB64F1-49FE-7BD0-C2A4-40A6542FD0C8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "3AA0B7FB-4055-3A6B-8AB8-7E8BE9922506";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "9F67810D-4A5B-6D44-F365-93A2F4BE6D07";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "2CE0E704-468F-9CD1-F62E-1F8B4BE95CC2";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "FB6F2052-4B65-4A1E-9BFF-2A8C50E336EF";
createNode blendColors -n "scapula_BLCL";
	rename -uid "CB984474-4BF8-A2C3-454B-5B916CA74B92";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "37FBC57B-40C4-8B1B-87B5-CDA067C9F197";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "37D9D3A9-4CE7-FDD2-53B3-BDA9DB763F3D";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "667BE9E7-471A-8D9E-22B9-77A05480CD23";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "7BF7E931-484B-9B10-854D-F08180773EE4";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "3FCC3C3B-40C0-9B7E-C749-8F8C2CCD56EF";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "8E727735-4E5D-080C-F920-548102FB9118";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "20FBFBF9-4723-D614-E892-538D51603348";
createNode blendColors -n "wrist_BLCL";
	rename -uid "4F74CAA3-4D88-2539-E5A0-9BB2D9FCC7AE";
createNode pairBlend -n "toe_PRBL";
	rename -uid "66D18A1F-4048-C07F-3363-EAA51E547646";
createNode blendColors -n "toe_BLCL";
	rename -uid "2E5F4A00-4E9B-40B3-D79B-5786728BD500";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "8FEE40FB-4793-E0DB-8DE0-308F8DD49907";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "6E45D545-421A-1750-BFD2-ADB14925C663";
createNode multMatrix -n "multMatrix5";
	rename -uid "BF1922F0-4CC6-F626-B9BE-15ACAE211301";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "5ADF1DB0-49EF-C4EA-BB12-5A903F871B9D";
	setAttr ".version" -type "string" "4.0.3";
createNode decomposeMatrix -n "decomposeMatrix4";
	rename -uid "4FE52262-4748-90B8-C114-01A78D3B9FDC";
createNode multMatrix -n "multMatrix6";
	rename -uid "0C9A2AC3-4875-D457-E461-8C90B3D956F5";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix7";
	rename -uid "9E7700EA-42E9-54C6-530A-58BF7B475814";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix5";
	rename -uid "66F6B905-4651-AA19-612F-B983D90F853D";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "400ECFC5-42EE-97D8-8631-26A1A9B9E7D6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "1D00AB2D-48AD-6247-12DF-AD9E835880A2";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "E7D9BF70-4D16-4FF4-9956-758C8D819699";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "22ADF027-4222-7577-5969-C38C5B77696E";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "40AEE762-4CCC-B185-6654-B3AB585D1010";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "D6E789DA-443F-6CE6-7325-9AB94D0FF45D";
createNode multMatrix -n "multMatrix9";
	rename -uid "5798DFDF-43CC-8406-E821-61A3CD17A70B";
createNode skinCluster -n "skinCluster1";
	rename -uid "D05D9BC8-442C-B90C-9EE1-8C8E60AB7A49";
	setAttr -s 9613 ".wl";
	setAttr ".wl[0:497].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 1.2965844543855187e-11 7 0.99999999998703415
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 9.252417408622815e-12 7 0.99999999999074762
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[498:997].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[998:1421].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 3.1971124966195807e-12 7 0.99999999999680289
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.017820417881011963 7 0.98217958211898804
		2 0 0.0079332590103149414 7 0.99206674098968506
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.001394808292388916 7 0.99860519170761108
		2 0 0.033927261829376221 7 0.96607273817062378
		2 0 0.011746704578399658 7 0.98825329542160034
		1 7 1
		2 0 0.0025642514228820801 7 0.99743574857711792
		2 0 0.067807972431182861 7 0.93219202756881714
		2 0 0.086574912071228027 7 0.91342508792877197
		2 0 0.036335110664367676 7 0.96366488933563232
		2 0 0.16207156678220902 7 0.83792843321779098
		1 7 1
		2 0 0.029107868671417236 7 0.97089213132858276
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0054445266723632813 7 0.99455547332763672
		2 0 0.021872758865356445 7 0.97812724113464355
		2 0 0.0033474564552307129 7 0.99665254354476929
		1 7 1
		1 7 1
		2 0 0.11851315945386887 7 0.88148684054613113
		2 0 0.098164260387420654 7 0.90183573961257935
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 0.078871823847293854 7 0.92112817615270615
		2 1 0.088224038481712341 7 0.91177596151828766
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 0.068260751664638519 7 0.93173924833536148
		2 1 0.18559078872203827 7 0.81440921127796173
		2 1 0.21712195873260498 7 0.78287804126739502
		2 1 0.35287907719612122 7 0.64712092280387878
		2 1 0.38256111741065979 7 0.61743888258934021
		2 1 0.14634504914283752 7 0.85365495085716248
		2 1 0.2918241024017334 7 0.7081758975982666
		2 1 0.047636982053518295 7 0.9523630179464817
		2 1 0.22057214379310608 7 0.77942785620689392
		2 1 0.076566621661186218 7 0.92343337833881378
		2 1 0.18351374566555023 7 0.81648625433444977
		2 1 0.035233616828918457 7 0.96476638317108154
		2 1 0.21423162519931793 7 0.78576837480068207
		2 1 0.17803020775318146 7 0.82196979224681854
		2 1 0.045486390590667725 7 0.95451360940933228
		1 7 1
		1 7 1
		2 1 0.17631092667579651 7 0.82368907332420349
		2 1 0.024269580841064453 7 0.97573041915893555
		2 1 0.36581629514694214 7 0.63418370485305786
		2 1 0.36800631880760193 7 0.63199368119239807
		2 1 0.38424676656723022 7 0.61575323343276978
		2 1 0.38707688450813293 7 0.61292311549186707
		2 1 0.3895774781703949 7 0.6104225218296051
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 1.7821788787841797e-05 7 0.99998217821121216
		2 1 0.0045220255851745605 7 0.99547797441482544
		2 1 0.035328924655914307 7 0.96467107534408569
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 0.029490411281585693 7 0.97050958871841431
		2 1 0.037528574466705322 7 0.96247142553329468
		3 0 0.031783420592546463 1 0.14077262207865715 7 0.82744395732879639
		3 0 0.0096970945596694946 1 0.12999515235424042 7 0.86030775308609009
		3 0 0.024924803525209427 1 0.32609642669558525 7 0.64897876977920532
		3 0 0.064234368503093719 1 0.28830171376466751 7 0.64746391773223877
		3 0 0.00052029028302058578 1 0.15672719344729558 7 0.84275251626968384
		3 0 0.0058099613524973392 1 0.34870666405186057 7 0.64548337459564209
		2 1 0.021704792976379395 7 0.97829520702362061
		3 0 0.10364580497353015 1 0.19518469274044037 7 0.70116950228602948
		3 0 0.064070805907249451 1 0.089810803532600403 7 0.84611839056015015
		3 0 0.083947733044624329 1 0.45343752205371857 7 0.4626147449016571
		3 0 0.13171058893203735 1 0.30560454406502102 7 0.56268486700294162
		3 0 0.038262061774730682 1 0.50648743659257889 7 0.45525050163269043
		2 1 0.017608225345611572 7 0.98239177465438843
		1 7 1
		2 0 0.016735315322875977 7 0.98326468467712402
		1 7 1
		3 0 0.058359719812870026 1 0.042406819760799408 7 0.89923346042633057
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		2 0 4.4845971534097448e-11 7 0.99999999995515398
		1 7 1
		1 7 1
		2 0 5.9546041281211345e-11 7 0.99999999994045397
		2 0 1.920481428233121e-12 7 0.99999999999807954
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[1422:1914].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 4.4040609375496642e-13 7 0.99999999999955957
		2 2 3.7766634437830238e-12 7 0.99999999999622335
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 4.3959436785145911e-11 7 0.99999999995604061
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 1.3259873884660656e-12 7 0.99999999999867406
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 8.9492829813409003e-11 7 0.99999999991050714
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 1.4927203570436198e-11 7 0.99999999998507283
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 4.6235300310559779e-11 7 0.99999999995376465
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[1915:2408].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 2.0977000831301548e-15 7 0.99999999999999789
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 2.4383444915954122e-11 7 0.9999999999756165
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 8.5236907809704832e-11 7 0.99999999991476307
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 1.0039933715605823e-07 7 0.99999989960066282
		1 7 1
		1 7 1
		2 2 2.0287441431648956e-12 7 0.99999999999797129
		1 7 1
		1 7 1
		2 1 4.7050624164659468e-08 7 0.99999995294937583
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[2409:2761].w"
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0049233157187700272 7 0.99507668428122997
		2 0 0.0036362768150866032 7 0.9963637231849134
		1 7 1
		2 0 0.0082531562075018883 7 0.99174684379249811
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0054911943152546883 7 0.99450880568474531
		2 0 0.0039765383116900921 7 0.99602346168830991
		1 7 1
		2 0 0.04484422905184493 7 0.95515577094815507
		2 0 0.034679073389165205 7 0.9653209266108348
		2 0 0.0025526750832796097 7 0.99744732491672039
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0012738032964989543 7 0.99872619670350105
		1 7 1
		2 0 0.018609624356031418 7 0.98139037564396858
		2 0 0.01166609713982325 7 0.98833390286017675
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0003031800442840904 7 0.99969681995571591
		1 7 1
		1 7 1
		2 0 0.055106150054716641 7 0.94489384994528336
		2 0 0.0059165013954043388 7 0.99408349860459566
		2 0 0.13404637070901526 7 0.86595362929098474
		2 0 0.11794931801187336 7 0.88205068198812664
		2 0 0.2600749318306349 7 0.7399250681693651
		2 0 0.23235159796369376 7 0.76764840203630624
		3 0 0.42025117081518237 1 0.00030164190684445202 7 0.57944718727797317
		2 0 0.38966745618863663 7 0.61033254381136337
		2 0 0.27437797729573143 7 0.72562202270426857
		3 0 0.443294111973495 1 0.015037409961223602 7 0.5416684780652814
		2 0 0.14859843415826335 7 0.85140156584173665
		2 0 0.20030613743887016 7 0.79969386256112984
		2 0 0.095117080372010721 7 0.90488291962798928
		2 0 0.062149643441036906 7 0.93785035655896309
		2 0 0.061245152659195501 7 0.9387548473408045
		2 0 0.14744836755126578 7 0.85255163244873422
		2 0 0.0088325357064604759 7 0.99116746429353952
		2 0 0.006518765352666378 7 0.99348123464733362
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0046478202566504478 7 0.99535217974334955
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 3.5221554839370839e-11 7 0.9999999999647784
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.013301082886755466 7 0.98669891711324453
		2 0 0.0097944289445877075 7 0.99020557105541229
		2 0 0.07108560960316801 7 0.92891439039683199
		2 0 0.078112837052859985 7 0.92188716294714002
		2 0 0.014651263132691383 7 0.98534873686730862
		2 0 0.061274944513832863 7 0.93872505548616714
		2 0 0.13362742083781565 7 0.86637257916218435
		2 0 0.15375713358123178 7 0.84624286641876822
		2 0 0.047760627673779421 7 0.95223937232622058
		2 0 0.0059701208956539631 7 0.99402987910434604
		2 0 0.10790038238656185 7 0.89209961761343815
		3 0 0.18805378038903509 1 0.0077747241593897343 7 0.80417149545157518
		3 0 0.22885368863424327 1 0.0086475806310772896 7 0.76249873073467944
		3 0 0.14249453627489317 1 0.0059264609590172768 7 0.85157900276608955
		2 0 0.081277431385708088 7 0.91872256861429191
		2 0 0.035685918575611653 7 0.96431408142438835
		2 0 0.16742545193671532 7 0.83257454806328468
		3 0 0.27505029830316907 1 0.018996639177203178 7 0.70595306251962775
		3 0 0.28966793315289951 1 0.020497698336839676 7 0.68983436851026081
		2 0 0.17594907636934431 7 0.82405092363065569
		3 0 0.25438296974299301 1 0.015001565217971802 7 0.73061546503903518
		2 0 0.079972990763150564 7 0.92002700923684944
		2 0 0.0099850064143538475 7 0.99001499358564615
		1 7 1
		2 0 0.078949967686935629 7 0.92105003231306437
		2 0 0.065709796179638236 7 0.93429020382036176
		2 0 0.17678639159040466 7 0.82321360840959534
		2 0 0.16199657408457979 7 0.83800342591542021
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 3.7927577745122676e-11 7 0.99999999996207245
		1 7 1
		2 2 2.2119195364211919e-11 7 0.9999999999778808
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		3 0 0.29854065179824829 1 0.2560771107673645 7 0.44538223743438721
		3 0 0.37673678994178772 1 0.3208935558795929 7 0.30236965417861938
		3 0 0.23251475393772125 1 0.46864213049411774 7 0.29884311556816101
		3 0 0.21709552407264709 1 0.35572227835655212 7 0.42718219757080078
		3 0 0.2613225132226944 1 0.10535405576229095 7 0.63332343101501465
		3 0 0.36272223293781281 1 0.13058470189571381 7 0.50669306516647339
		3 0 0.22080200910568237 1 0.18560469150543213 7 0.5935932993888855
		3 0 0.14888820052146912 1 0.10725434124469757 7 0.74385745823383331
		3 0 0.17699895799160004 1 0.053707707673311234 7 0.76929333433508873
		3 0 0.1658603847026825 1 0.24481847882270813 7 0.58932113647460938
		3 0 0.13697069883346558 1 0.40259602665901184 7 0.46043327450752258
		3 0 0.1234784722328186 1 0.25229832530021667 7 0.62422320246696472
		3 0 0.11375224590301514 1 0.12990997731685638 7 0.75633777678012848
		3 0 0.078260697424411774 1 0.10822992771863937 7 0.81350937485694885
		3 0 0.10038957744836807 1 0.37785482406616211 7 0.52175559848546982
		3 0 0.075941212475299835 1 0.21723167598247528 7 0.70682711154222488
		3 0 0.16185635328292847 1 0.50343787670135498 7 0.33470577001571655
		3 0 0.10843348503112793 1 0.51442652940750122 7 0.37713998556137085
		3 0 0.052627798169851303 1 0.50733435153961182 7 0.44003785029053688
		3 0 0.046725105494260788 1 0.31451210379600525 7 0.63876279070973396
		3 0 0.058302462100982666 1 0.65704983472824097 7 0.28464770317077637
		3 0 0.10595706105232239 1 0.63682669401168823 7 0.25721624493598938
		3 0 0.16721022129058838 1 0.61059999465942383 7 0.22218978404998779
		3 0 0.24487830698490143 1 0.57234698534011841 7 0.18277470767498016
		3 0 0.20637555420398712 1 0.68067097663879395 7 0.11295346915721893
		3 0 0.14314880967140198 1 0.70802396535873413 7 0.14882722496986389
		3 0 0.28070845454931259 1 0.63425100594758987 7 0.085040539503097534
		3 0 0.33964509516954422 1 0.50465718656778336 7 0.15569771826267242
		3 0 0.035787720233201981 1 0.16944317519664764 7 0.79476910457015038
		3 0 0.021578658372163773 1 0.072768315672874451 7 0.90565302595496178
		3 0 0.046517282724380493 1 0.09539370983839035 7 0.85808900743722916
		2 1 0.12015453726053238 7 0.87984546273946762
		2 1 0.050575286149978638 7 0.94942471385002136
		2 1 0.067905008792877197 7 0.9320949912071228
		2 1 0.027407091110944748 7 0.97259290888905525
		3 0 0.011892708018422127 1 0.23583506047725677 7 0.7522722315043211
		2 1 0.13457797467708588 7 0.86542202532291412
		3 0 0.0090100271627306938 1 0.027354475110769272 7 0.96363549772650003
		3 0 0.018409835174679756 1 0.032165665179491043 7 0.9494244996458292
		2 1 0.015692180022597313 7 0.98430781997740269
		3 0 0.035902306437492371 1 0.036184828728437424 7 0.92791286483407021
		3 0 0.056533705443143845 1 0.046766560524702072 7 0.89669973403215408
		1 0 0.0061121820472180843;
	setAttr ".wl[2761:2936].w"
		1 7 0.99388781795278192
		2 0 0.011245190165936947 7 0.98875480983406305
		1 7 1
		3 0 0.070824779570102692 1 0.036638442426919937 7 0.89253677800297737
		2 0 0.012694583274424076 7 0.98730541672557592
		2 0 0.025682143867015839 7 0.97431785613298416
		3 0 0.086912631988525391 1 0.015712276101112366 7 0.89737509191036224
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.032362282276153564 7 0.96763771772384644
		1 7 1
		3 0 0.19480842351913452 1 0.015975959599018097 7 0.78921561688184738
		2 0 0.09476703405380249 7 0.90523296594619751
		2 0 0.30588006973266602 7 0.69411993026733398
		3 0 0.29237280413508415 1 0.038476306945085526 7 0.66915088891983032
		2 0 0.19794543087482452 7 0.80205456912517548
		2 0 0.41496437788009644 7 0.58503562211990356
		2 0 0.28754639625549316 7 0.71245360374450684
		2 0 0.3925250768661499 7 0.6074749231338501
		2 0 0.17577707767486572 7 0.82422292232513428
		3 0 0.38932157680392265 1 0.049790311604738235 7 0.56088811159133911
		2 0 0.096053421497344971 7 0.90394657850265503
		2 0 0.020738381892442703 7 0.9792616181075573
		3 0 0.45949277281761169 1 0.13720926642417908 7 0.40329796075820923
		3 0 0.49712193384766579 1 0.039612021297216415 7 0.4632660448551178
		3 0 0.57085223868489265 1 0.035627614706754684 7 0.39352014660835266
		3 0 0.55328766256570816 1 0.11206700652837753 7 0.33464533090591431
		2 0 0.50757735967636108 7 0.49242264032363892
		2 0 0.57864397764205933 7 0.42135602235794067
		2 0 0.49153357744216919 7 0.50846642255783081
		2 0 0.55254527926445007 7 0.44745472073554993
		2 0 0.4529164731502533 7 0.5470835268497467
		2 0 0.50545716285705566 7 0.49454283714294434
		2 0 0.60753437876701355 7 0.39246562123298645
		2 0 0.59055054187774658 7 0.40944945812225342
		3 0 0.62060870043933392 1 0.021473037078976631 7 0.35791826248168945
		2 0 0.597613126039505 7 0.402386873960495
		3 0 0.6120158713310957 1 0.014765175059437752 7 0.37321895360946655
		3 0 0.61014891043305397 1 0.054006632417440414 7 0.33584445714950562
		3 0 0.61048117280006409 1 0.081109762191772461 7 0.30840906500816345
		2 0 0.52199682464746955 7 0.47800317535253045
		2 0 0.56111624836921692 7 0.43888375163078308
		2 0 0.43245622708877518 7 0.56754377291122482
		2 0 0.53853195905685425 7 0.46146804094314575
		2 0 0.50336825847625732 7 0.49663174152374268
		2 0 0.38305698687955225 7 0.61694301312044775
		2 0 0.38991131214325014 7 0.61008868785674986
		2 0 0.24155204581253487 7 0.75844795418746513
		2 0 0.20862478396270434 7 0.79137521603729566
		2 0 0.33317110077085477 7 0.66682889922914523
		2 0 0.24467313138955937 7 0.75532686861044063
		2 0 0.45762113486130773 7 0.54237886513869227
		2 0 0.33673387765884399 7 0.66326612234115601
		2 0 0.34938487410545349 7 0.65061512589454651
		2 0 0.26355552673339844 7 0.73644447326660156
		3 0 0.51172351837158203 1 0.25055158138275146 7 0.2377249002456665
		3 0 0.46260461211204529 1 0.40650917589664459 7 0.13088621199131012
		3 0 0.37987926043570042 1 0.56031881086528301 7 0.059801928699016571
		3 0 0.31196662317961454 1 0.66303510311990976 7 0.024998273700475693
		3 0 0.20923076011240482 1 0.75015431456267834 7 0.04061492532491684
		3 0 0.49670834094285965 1 0.41851382702589035 7 0.08477783203125
		3 0 0.39477064087986946 1 0.54316530376672745 7 0.062064055353403091
		3 0 0.54163305461406708 1 0.2648785412311554 7 0.19348840415477753
		3 0 0.48057545721530914 1 0.34748393297195435 7 0.17194060981273651
		3 0 0.52939960559547461 1 0.14902991056442261 7 0.32157048384010284
		3 0 0.48126749129587942 1 0.19430077075958252 7 0.32443173794453806
		3 0 0.57625593245029449 1 0.18206006288528442 7 0.24168400466442108
		3 0 0.55046392977237701 1 0.097162529826164246 7 0.35237354040145874
		3 0 0.53757908940315247 1 0.30432997643947601 7 0.15809093415737152
		3 0 0.32962378486990929 1 0.63158845901489258 7 0.038787756115198135
		3 0 0.23605132102966309 1 0.75302037317305803 7 0.010928305797278881
		3 0 0.39412329504304738 1 0.43265870213508606 7 0.17321800282186656
		3 0 0.1443764774594456 1 0.8376458843704313 7 0.0179776381701231
		3 0 0.15555769205093384 1 0.77948999404907227 7 0.064952313899993896
		3 0 0.10308030247688293 1 0.86240595579147339 7 0.034513741731643677
		3 0 0.068087328225374222 1 0.87851589918136597 7 0.053396772593259811
		3 0 0.10889661312103271 1 0.79436928033828735 7 0.096734106540679932
		3 0 0.057714790105819702 1 0.94055180088616908 7 0.0017334090080112219
		3 0 0.10023193806409836 1 0.89788084232714027 7 0.0018872196087613702
		3 0 0.0037517338212797037 1 0.99426313854899973 7 0.0019851276297206239
		3 0 0.028371140360832214 1 0.96970405383035541 7 0.0019248058088123798
		3 0 0.029342062771320343 1 0.9700956488240563 7 0.00056228840462334046
		2 0 0.062893889844417572 1 0.93710611015558243
		3 0 0.15227293968200684 1 0.84190615732222795 7 0.0058209029957652092
		3 0 0.11872488260269165 1 0.87259052041918039 7 0.0086845969781279564
		3 0 0.25013874098658562 1 0.70310729742050171 7 0.046753961592912674
		3 0 0.19041123613715172 1 0.75647169351577759 7 0.053117070347070694
		3 0 0.57447239756584167 1 0.18288224935531616 7 0.24264535307884216
		3 0 0.60050889849662781 1 0.11123198270797729 7 0.2882591187953949
		3 0 0.56494895741343498 1 0.052025366574525833 7 0.38302567601203918
		3 0 0.44708093286042383 1 0.034729253500699997 7 0.51818981363887617
		2 0 0.29339728051865255 7 0.70660271948134745
		3 0 0.2839676491208788 1 0.017344431951642036 7 0.69868791892747917
		3 0 0.42544025376632411 1 0.065065480768680573 7 0.50949426546499532
		3 0 0.55934277176856995 1 0.021413862705230713 7 0.41924336552619934
		4 0 0.0001053461674018763 1 0.68546664714813232 2 0.068198792636394501 
		7 0.2462292140480713
		2 1 0.64172029495239258 7 0.35827970504760742
		3 0 0.007697167806327343 1 0.66772031784057617 7 0.32458251435309649
		4 0 0.0026955443900078535 1 0.70046013593673706 2 0.06723196804523468 
		7 0.22961235162802041
		4 0 0.00037654311745427549 1 0.65965646505355835 2 0.20848743617534637 
		7 0.131479555653641
		4 0 6.9762409182771989e-09 1 0.64011579751968384 2 0.23627941310405731 
		7 0.12360478240001793
		4 0 0.0070894621312618256 1 0.73016941547393799 2 0.049880966544151306 
		7 0.21286015585064888
		4 0 0.0027902880683541298 1 0.68618738651275635 2 0.2015831470489502 
		7 0.10943917836993933
		4 0 0.013950171880424023 1 0.75031208992004395 2 0.054379962384700775 
		7 0.18135777581483126
		4 0 0.0073423022404313087 1 0.71138215065002441 2 0.17945334315299988 
		7 0.1018222039565444
		4 0 0.032192409038543701 1 0.76654571294784546 2 0.047685086727142334 
		7 0.15357679128646851
		4 0 0.014046560972929001 1 0.75648128986358643 2 0.1575796902179718 
		7 0.071892458945512772
		4 0 0.052702313289046288 1 0.78311038017272949 2 0.030765200033783913 
		7 0.13342210650444031
		4 0 0.0079388618469238281 1 0.81181049346923828 2 0.12389904260635376 
		7 0.056351602077484131
		4 0 0.0057391100563108921 1 0.66485707508400083 2 0.32194685935974121 
		7 0.0074569554999470711
		4 0 0.002957256743684411 1 0.62137466832064092 2 0.36875024437904358 
		7 0.0069178305566310883
		3 0 0.001708398456685245 1 0.4570162195013836 2 0.54127538204193115
		3 0 0.00087903434177860618 1 0.44472743576625362 2 0.55439352989196777
		4 0 8.5440602560993284e-05 1 0.38152390934288205 2 0.61839050054550171 
		7 1.49509055219995e-07
		4 0 3.1742853025207296e-05 1 0.36714021186763013 2 0.63282710313796997 
		7 9.4214137467942016e-07
		4 0 8.5459333831749973e-07 1 0.31141428928181625 2 0.68858391046524048 
		7 9.4565960500104419e-07
		4 0 1.3810012564107047e-08 1 0.30627342693294973 2 0.69372045993804932 
		7 6.0993189883709192e-06
		4 0 0.00069390970747917891 1 0.42135723790583446 2 0.57794868946075439 
		7 1.6292593196192092e-07
		4 0 5.9059631894342601e-05 1 0.36882108410268211 2 0.63111871480941772 
		7 1.14145600582065e-06
		4 0 1.1173899789184645e-07 1 0.27779004251786837 2 0.72220855951309204 
		7 1.2862300416767421e-06
		4 0 9.3330587665529921e-09 1 0.24976165579521201 2 0.75023072957992554 
		7 7.6052918037013304e-06
		4 0 4.3696031752915587e-06 1 0.35865165574649593 2 0.6413421630859375 
		7 1.8115643912460106e-06
		4 0 0.00020807942200917751 1 0.46414803071820643 2 0.53521513938903809 
		7 0.00042875047074630857
		4 0 2.1600208732187769e-10 1 0.39324617520660332 2 0.60674834251403809 
		7 5.4820633564835932e-06
		4 0 1.2741733133500079e-09 1 0.3311663360349778 2 0.66879928112030029 
		7 3.4381570548608347e-05
		3 0 0.0026046703569591045 1 0.45119725959375501 2 0.54619807004928589
		4 0 0.0074302889406681061 1 0.67189783742651343 2 0.31663015484809875 
		7 0.0040417187847197056
		4 0 0.0035152898635715246 1 0.62080426339525729 2 0.37442311644554138 
		7 0.0012573302956297994
		4 0 0.00089592236327007413 1 0.61046448553679511 2 0.38290020823478699 
		7 0.0057393838651478291
		4 0 8.7575768702663481e-05 1 0.60319393196550664 2 0.38920724391937256 
		7 0.0075112483464181423
		4 0 8.9039864370477062e-10 1 0.56334269330272613 2 0.42651450634002686 
		7 0.010142799466848373
		4 0 2.9416123652481474e-05 1 0.49009383558677655 2 0.50986725091934204 
		7 9.4973702289280482e-06
		4 0 1.4189570352041159e-10 1 0.44695114915155865 2 0.55290526151657104 
		7 0.00014358918997459114
		4 0 0.006429990753531456 1 0.83188656903803349 2 0.15760420262813568 
		7 0.0040792375802993774
		4 0 0.0016663024434819818 1 0.83827191684395075 2 0.15935823321342468 
		7 0.00070354749914258718
		4 0 0.00083315052324905992 1 0.58932056502271735 2 0.40983244776725769 
		7 1.3836686775903217e-05
		4 0 5.2861101721646264e-05 1 0.78906679129450441 2 0.21076717873419887 
		7 0.00011316886957501993
		4 0 7.2247632488142699e-05 1 0.56386781461878854 2 0.43604066967964172 
		7 1.9268069081590511e-05
		4 0 0.00023331427581558482 1 0.90135876669109549 2 0.098006322979927063 
		7 0.00040159605316183571
		4 0 0.0010018684657842549 1 0.93826601610414817 2 0.060395698994398117 
		7 0.00033641643566946808
		4 0 0.0049421849377977323 1 0.94548976265857343 2 0.044613942503929138 
		7 0.004954109899699688
		4 0 0.048519015312194824 1 0.8668663501739502 2 0.023635398596525192 
		7 0.060979235917329788
		3 0 0.08122570812702179 1 0.79699069261550903 7 0.12178359925746918
		3 0 0.05458773672580719 1 0.74243253469467163 7 0.20297972857952118
		3 0 0.033535942435264587 1 0.75549775362014771 7 0.21096630394458771
		3 0 0.089982464909553528 1 0.73064279556274414 7 0.17937473952770233
		3 0 0.033293545246124268 1 0.71137255430221558 7 0.25533390045166016
		3 0 0.020132353529334068 1 0.76261043548583984 7 0.21725721098482609
		3 0 0.015986589714884758 1 0.75133472681045532 7 0.23267868347465992
		3 0 0.024166397750377655 1 0.5988960862159729 7 0.37693751603364944
		3 0 0.0083869751542806625 1 0.46221014857292175 7 0.52940287627279758
		3 0 0.014062799513339996 1 0.3867760465427541 7 0.5991611539439059
		2 1 0.51961290836334229 7 0.48038709163665771
		4 0 3.6437317117642321e-09 1 0.66081398725509644 2 0.075780868530273438 
		7 0.26340514057089842
		2 1 0.61912113428115845 7 0.38087886571884155
		4 0 8.6087069917084591e-08 1 0.62603014707565308 2 0.25293856859207153 
		7 0.12103119824520547
		4 0 4.7820871133234375e-08 1 0.67308968305587769 2 0.0057674748823046684 
		7 0.32114279424094649
		4 0 4.3093381304164641e-07 1 0.69659912586212158 2 0.12967458367347717 
		7 0.17372585953058819
		3 0 3.6988020827954834e-07 1 0.70562189817428589 7 0.29437773194550582
		2 1 0.64563900232315063 7 0.35436099767684937
		2 1 0.62136328220367432 7 0.37863671779632568
		3 0 3.5203375503075583e-08 1 0.59190764985303734 7 0.40809231494358716
		2 1 0.56644648313522339 7 0.43355351686477661
		2 1 0.52991616725921631 7 0.47008383274078369
		2 1 0.52811449766159058 7 0.47188550233840942
		2 1 0.54322224855422974 7 0.45677775144577026
		3 0 2.96276204396701e-07 1 0.57604253456133603 7 0.42395716916245962
		3 0 4.6195155756185025e-06 1 0.81076902135547235 7 0.18922635912895203;
	setAttr ".wl[2937:3287].w"
		3 0 5.6130686938376708e-07 1 0.74920241810434773 7 0.25079702058878289
		3 0 1.8030830517545837e-07 1 0.56222444041393627 7 0.43777537927775861
		3 0 8.7916847135716125e-09 1 0.35802554205060044 7 0.64197444915771484
		4 0 5.092232754666498e-07 1 0.65954290444559538 2 0.28246027231216431 
		7 0.057996314018964767
		4 0 3.7806588749979401e-06 1 0.82722665793117478 2 0.10506679117679596 
		7 0.067702770233154297
		4 0 1.2063010501606186e-07 1 0.55920242189840508 2 0.41213405132293701 
		7 0.028663406148552895
		4 0 1.0232424652909198e-08 1 0.4113184720304266 2 0.58583682775497437 
		7 0.0028446899821743831
		4 0 9.8347181957343724e-08 1 0.5538741456349543 2 0.43271830677986145 
		7 0.0134074492380023
		4 0 8.093396206770136e-10 1 0.30403327730450369 2 0.69520097970962524 
		7 0.0007657421765314195
		4 0 5.4747557397363805e-11 1 0.11125782810643119 2 0.88853675127029419 
		7 0.00020542056852707293
		4 0 5.7696698423315284e-10 1 0.11905195537189762 2 0.88036298751831055 
		7 0.00058505653282484255
		4 0 1.0900301106175903e-08 1 0.40997954532121383 2 0.58829158544540405 
		7 0.001728858333081007
		4 0 6.2340480223031514e-11 1 0.2472784157898392 2 0.75257194042205811 
		7 0.0001496437257622236
		4 0 5.1009870119357509e-12 1 0.10121822953685812 2 0.89873051643371582 
		7 5.1254024325078851e-05
		4 0 2.5157080178072334e-10 1 0.31971789443381471 2 0.680023193359375 
		7 0.00025891195523950942
		4 0 5.3183870790785915e-11 1 0.038634291207790064 2 0.96129190921783447 
		7 7.3799521191595838e-05
		4 0 4.2800006281099141e-10 1 0.07209797203540802 2 0.92775583387645044 
		7 0.00014619366014152321
		4 0 4.9438487224159122e-09 1 0.13228238912290219 2 0.86653261640756851 
		7 0.0011849895256805904
		4 0 5.6349826453035785e-12 1 0.045486279265251582 2 0.95448595285415649 
		7 2.7767874956939959e-05
		4 0 7.6547790328618248e-09 1 0.50397593880141489 2 0.482564777135849 
		7 0.013459276407957077
		4 0 2.2474405769984893e-10 1 0.39081726010151024 2 0.60897630453109741 
		7 0.00020643514264830548
		4 0 8.3624422821883408e-10 1 0.26567027361432605 2 0.73428636789321899 
		7 4.3357656210728556e-05
		4 0 6.5766063715860799e-07 1 0.70258936506829905 2 0.27844434368501469 
		7 0.01896563358604908
		4 0 3.0973608788377627e-08 1 0.28649893403053284 2 0.71204159166782433 
		7 0.0014594433280340296
		4 0 1.5292425043773763e-07 1 0.36262437701225281 2 0.63619952536240931 
		7 0.0011759447010874897
		4 0 3.2100026805402251e-06 1 0.81305265426635742 2 0.17901348933262248 
		7 0.0079306463983395657
		4 0 2.6137956783997955e-09 1 0.12622179090976715 2 0.87359932445717536 
		7 0.00017888201926179301
		4 0 1.2831556411581668e-08 1 0.15578693151473999 2 0.84407048816253261 
		7 0.00014256749117096977
		2 1 0.045796219259500504 2 0.9542037807404995
		2 1 0.059659786522388458 2 0.94034021347761154
		2 1 0.01241198368370533 2 0.98758801631629467
		4 0 1.3239820041275165e-05 1 0.84180182218551636 2 0.15398524034145872 
		7 0.0041996976529836512
		4 0 5.9392503510066469e-07 1 0.38862162828445435 2 0.61069874940475377 
		7 0.00067902838575681032
		4 0 4.9518968340878971e-08 1 0.17380484938621521 2 0.82611294426049564 
		7 8.2156834320843049e-05
		4 0 1.8449037923673112e-05 1 0.94465267148254894 2 0.025481522083282471 
		7 0.029847357396244906
		3 0 0.00020575355702894205 1 0.97100227484135693 7 0.028791971601614133
		3 0 4.1348806052148094e-05 1 0.91905410831013534 7 0.08090454288381245
		4 0 7.7018236373494685e-05 1 0.96683051058750846 2 0.018983017653226852 
		7 0.014109453522891186
		3 0 0.00017625530017539859 1 0.96602550250995645 7 0.033798242189868141
		3 0 2.0058765585417859e-05 1 0.88647430964119533 7 0.11350563159321929
		3 0 0.00085097088691455291 1 0.99019273617334869 7 0.0089562929397367791
		3 0 0.011210326105356216 1 0.98326000719678486 7 0.0055296666978589069
		4 0 0.00024157797829927089 1 0.98035493651164396 2 0.014073456637561321 
		7 0.0053300288724954428
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 5 4.5336237480174721e-11 7 0.99999999995466371
		1 7 1
		2 5 3.5001762865435955e-12 7 0.9999999999964998
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		3 4 7.44232502223604e-12 5 6.150317806865188e-15 7 0.99999999999255151
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 5 2.6247563826592346e-12 7 0.99999999999737521
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 4.5565302711837969e-12 7 0.99999999999544342
		2 2 1.4874046834357053e-11 7 0.9999999999851259
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 4.000827739354425e-12 7 0.9999999999959992
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 4.0239739839663956e-11 7 0.9999999999597603
		2 2 4.9897282082456393e-11 7 0.99999999995010269
		3 3 3.221624333670669e-12 4 2.6894265899624971e-11 7 0.99999999996988398
		2 2 8.4689394460619039e-12 7 0.99999999999153111
		2 2 3.2607490551705173e-11 7 0.99999999996739253
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 3.0763303644411281e-11 7 0.99999999996923672
		2 2 2.7204068478009103e-11 7 0.99999999997279598
		2 2 2.6590505598651262e-11 7 0.99999999997340949
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		3 3 1.4309912338028955e-12 4 8.1259336717030376e-11 7 0.9999999999173097
		3 3 2.2822204331598764e-13 4 2.2583916152106204e-11 7 0.99999999997718791
		3 3 1.5741537681136839e-12 4 3.0925133399815828e-11 7 0.99999999996750077
		2 2 1.5221954166507312e-12 7 0.99999999999847777
		2 2 2.4391323888942111e-13 7 0.99999999999975608
		1 7 1
		1 7 1
		2 4 6.2439101277383033e-12 7 0.99999999999375611
		1 7 1
		2 2 2.3244881951885047e-14 7 0.9999999999999768
		2 2 4.8234039206916049e-14 7 0.99999999999995182
		2 2 1.8285391356627045e-13 7 0.99999999999981715
		1 7 1
		2 2 3.0906109872461566e-12 7 0.99999999999690936
		2 2 7.7268504468203676e-12 7 0.99999999999227318
		1 7 1
		1 7 0.99999999999999989
		3 3 2.3549355618274165e-14 4 8.7870218682531411e-14 7 0.99999999999988842
		3 3 3.2029462620929166e-15 4 6.8490083004158538e-11 7 0.99999999993150668
		1 7 1;
	setAttr ".wl[3288:3555].w"
		1 7 1
		1 7 1
		2 3 8.5630766314407905e-12 7 0.99999999999143696
		2 2 6.7919059212811942e-14 7 0.99999999999993205
		2 2 3.0526411238017712e-14 7 0.99999999999996947
		1 7 1
		2 2 1.3376476029120014e-14 7 0.99999999999998668
		3 3 2.1198059615887049e-14 4 6.6108683676552769e-11 7 0.99999999993387001
		1 7 1
		2 3 2.9544991827448271e-11 7 0.99999999997045497
		2 2 5.9672483350840428e-12 7 0.99999999999403277
		3 3 2.0344592627683545e-12 4 7.4552926538894414e-12 7 0.99999999999051026
		3 3 1.4064562269395694e-12 4 5.1539703785720509e-12 7 0.99999999999343958
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		2 2 6.6713101754431514e-12 7 0.99999999999332867
		1 7 1
		3 3 2.274998852028397e-13 4 8.4887522983906321e-13 7 0.99999999999892364
		2 2 5.4497546428183882e-12 7 0.99999999999455025
		1 7 1
		3 3 2.6587074341984642e-13 4 9.920492409338042e-13 7 0.99999999999874212
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 3.2691272441375604e-12 7 0.99999999999673084
		2 2 3.2931011832423665e-12 7 0.99999999999670686
		1 7 1
		3 2 5.7998478232053353e-15 3 3.6286287485683924e-11 7 0.99999999996370792
		2 2 2.2153197846984554e-11 7 0.99999999997784683
		2 2 4.3846078597202101e-11 7 0.99999999995615396
		2 2 4.7738183082835973e-12 7 0.99999999999522615
		1 7 1
		1 7 1
		1 7 1
		2 2 1.8739311509911027e-12 7 0.99999999999812605
		3 3 1.3351164851832083e-12 4 5.0603786033500075e-12 7 0.99999999999360456
		1 7 1
		1 7 1
		3 2 7.4926482407943544e-14 3 2.4045153021456933e-11 7 0.99999999997587996
		3 3 2.0355229232631979e-13 4 2.0855169269487045e-11 7 0.99999999997894129
		1 7 1
		2 2 1.2580078001984056e-13 7 0.99999999999987421
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 6.9114469185359939e-13 7 0.99999999999930889
		3 3 2.074030225918713e-14 4 2.1249699984820234e-12 7 0.99999999999785416
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 1.6548427726970661e-11 7 0.99999999998345157
		2 2 4.8503346172630952e-12 7 0.99999999999514966
		2 2 2.101686621786311e-11 7 0.99999999997898315
		3 3 5.6525924280389049e-13 4 2.106894349708747e-12 7 0.9999999999973278
		2 2 2.2356392009988224e-11 7 0.99999999997764366
		2 2 6.0545486653332102e-12 7 0.9999999999939454
		3 3 3.2895961722100873e-12 4 1.2261332612048096e-11 7 0.99999999998444911
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 2.7001529127135956e-12 7 0.99999999999729983
		1 7 1
		1 7 1
		1 7 1
		2 2 1.6031374602878615e-12 7 0.99999999999839684
		3 3 1.4259738576783257e-12 4 5.3150413758332475e-12 7 0.99999999999325906
		3 3 7.2035937886331334e-13 4 2.6410295471062317e-12 7 0.99999999999663869
		2 2 0.62053178773062523 3 0.37946821226937494
		2 2 0.62795432733709733 3 0.37204567266290267
		2 2 0.047194069280044597 3 0.95280593071995534
		2 2 0.060157777126941279 3 0.93984222287305874
		2 2 0.61541392836713271 3 0.38458607163286751
		2 2 0.99997831359907674 3 2.1686400923297937e-05
		2 2 0.99999646034262935 3 3.5396573706388732e-06
		2 2 0.61202913789649427 3 0.38797086210350556
		2 2 0.99996876413685143 3 3.1235863148529845e-05
		2 2 0.6109827127632006 3 0.38901728723679946
		2 2 0.99997839257899912 3 2.1607421000884773e-05
		2 2 0.068010555588569652 3 0.93198944441143061
		2 2 0.60891331532748894 3 0.39108668467251112
		4 2 0.068059692167510483 3 0.93193850707035408 4 1.7523527217585064e-06 
		5 4.8409413546123801e-08
		2 2 0.066178583829582624 3 0.93382141617041747
		2 2 0.60807749533466948 3 0.39192250466533046
		2 2 0.99999091117718308 3 9.088822816906005e-06
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.60975415601409366 3 0.39024584398590634
		1 2 1
		2 2 0.062480055323743497 3 0.93751994467625654
		4 2 0.01926862756338682 3 0.97307545813369389 4 0.0074448295518409931 
		5 0.00021108475107831865
		4 2 0.018365553655824807 3 0.97381401336682494 4 0.0076151292906401812 
		5 0.00020530368670993406
		4 2 0.019196730296910294 3 0.97332192838919762 4 0.0072780206940748207 
		5 0.00020332061981705114
		4 2 0.0070982308092171018 3 0.90982566151436706 4 0.080555897171353849 
		5 0.0025202105050619603
		4 2 0.0072168688311098437 3 0.90917572247929557 4 0.081027315122744303 
		5 0.0025800935668502077
		4 2 0.0068974061647296145 3 0.90804422386788441 4 0.082550189802803389 
		5 0.0025081801645825933
		4 2 0.016495061075172752 3 0.97581568685223974 4 0.0075274241536636526 
		5 0.00016182791892389842
		2 2 0.61403138229644372 3 0.38596861770355628
		4 2 0.056769702002434426 3 0.94322877469423472 4 1.4913037345725106e-06 
		5 3.1999596274566437e-08
		4 2 0.014135510202323622 3 0.97865738660457713 4 0.0071150077786046942 
		5 9.2095414494413393e-05
		1 2 1
		2 2 0.99999296086281797 3 7.039137182070361e-06
		2 2 0.62190255682432727 3 0.37809744317567273
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99994948227932379 3 5.0517720676234229e-05
		2 2 0.63020779147570938 3 0.36979220852429073
		1 2 1
		1 2 1
		1 2 1
		4 2 0.066347449372738565 3 0.93365106222069938 4 1.4489900520165692e-06 
		5 3.941651004136687e-08
		4 2 0.017962372915008608 3 0.97471414112401711 4 0.0071266281791877795 
		5 0.00019685778178646956
		4 2 0.016074762210886415 3 0.97682807937759597 4 0.0069092689242608247 
		5 0.00018788948725674307
		4 2 0.0057215339367502468 3 0.91027319636618498 4 0.081517357533487253 
		5 0.0024879121635776012
		4 2 0.0065603639164303279 3 0.90996523694426223 4 0.080968413105938053 
		5 0.0025059860333693802
		4 2 0.014031764465281434 3 0.97944008590834175 4 0.0063654031810120278 
		5 0.00016274644536472217
		4 2 0.0043880982960737497 3 0.91670460099506601 4 0.076710056695237186 
		5 0.0021972440136230121
		4 2 0.0090592781109956975 3 0.98779216237322343 4 0.0030906197631227266 
		5 5.7939752658214598e-05
		4 2 0.0014884327641494872 3 0.95686126769619484 4 0.040840393999593265 
		5 0.00080990554006240873
		4 2 0.00077347544777593724 3 0.76076175325140372 4 0.23188020918881649 
		5 0.0065845621120040124
		4 2 0.0015382831869521433 3 0.74405690132466551 4 0.2432757878803152 
		5 0.011129027608067247
		4 2 0.00025682912260839558 3 0.77986206535608937 4 0.21738224689415658 
		5 0.0024988586271457698
		4 2 0.00018741730127535677 3 0.96735674574059771 4 0.032204274617291313 
		5 0.00025156234083562978
		4 2 4.738327903788383e-07 3 0.99997237729319577 4 2.6896589607421251e-05 
		5 2.5228440651187056e-07
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 0.99999999999999989
		2 2 5.1211469230852082e-06 3 0.99999487885307692
		1 3 1
		2 2 0.053697178435644255 3 0.94630282156435575
		2 2 0.063020224630759625 3 0.93697977536924038
		4 2 0.0022394712418722855 3 0.74068450023635013 4 0.24404625152448128 
		5 0.013029776997296317
		4 2 0.001988571232001338 3 0.74032566244063469 4 0.24487695321346034 
		5 0.012808813113903738
		4 2 0.0024341002384740897 3 0.74273743100434919 4 0.24188475902925127 
		5 0.01294370972792561
		4 2 0.00058025600823881644 3 0.47112557296137186 4 0.47835968278317731 
		5 0.049934488247212097
		4 2 0.00059298071107031136 3 0.46688291085172012 4 0.48004170848901256 
		5 0.052482399948196992
		4 2 0.0025023379610999998 3 0.74146680561473377 4 0.24267083396530181 
		5 0.013360022458864444
		4 2 0.00053897866664213046 3 0.47205080924752318 4 0.47752028899431803 
		5 0.04988992309151663
		4 2 0.00050399601545524054 3 0.48091251856794731 4 0.47054273213651665 
		5 0.048040753280080777
		4 2 0.00041618720848537083 3 0.49588308146056681 4 0.46359715051674483 
		5 0.040103580814202899
		2 2 0.62387915086895596 3 0.37612084913104404
		2 2 0.62195592174752645 3 0.37804407825247349
		2 2 0.042561424077214312 3 0.9574385759227857
		2 2 0.61336137374503741 3 0.38663862625496265
		2 2 0.07930277639525897 3 0.92069722360474104
		2 2 0.60453212141743029 3 0.39546787858256965
		2 2 0.10433550810688733 3 0.89566449189311259
		2 2 0.60665876472817604 3 0.39334123527182402
		2 2 0.092729801948500445 3 0.90727019805149955
		2 2 0.61425606363536656 3 0.38574393636463339
		2 2 0.088435321006647721 3 0.91156467899335225
		2 2 0.036609653629116612 3 0.9633903463708835
		2 2 0.012316032713071051 3 0.98768396728692887
		2 2 0.025781223955469758 3 0.97421877604453022
		4 2 6.0238149078171447e-05 3 0.9999343581875636 4 5.3992014722918098e-06 
		5 4.4618858836014799e-09
		4 2 1.6039396356068626e-05 3 0.9999816571551009 4 2.2993078699774042e-06 
		5 4.1406730069693644e-09
		4 2 0.0056295658078376765 3 0.99131180556320286 4 0.0030533497161252462 
		5 5.2789128343017074e-06
		4 2 1.2733773044632224e-05 3 0.99996773512799508 4 1.9491202308897896e-05 
		5 3.9896651395299855e-08
		4 2 0.0032837912595446344 3 0.99020802746615744 4 0.006504009324487612 
		5 4.171949810311514e-06
		2 2 0.081948176138288115 3 0.91805182386171191
		2 2 0.61866473263395538 3 0.38133526736604484
		2 2 0.62268953268236971 3 0.37731046731763024
		2 2 0.083347221008538211 3 0.91665277899146191
		2 2 0.99995903617311499 3 4.0963826885052685e-05
		2 2 0.99903301250485188 3 0.0009669874951481576
		2 2 0.63024782659922118 3 0.36975217340077882
		2 2 0.060395952835808175 3 0.93960404716419188
		2 2 0.99955005773851813 3 0.0004499422614818802
		2 2 0.029830110488969226 3 0.97016988951103089
		4 2 0.0113931579857536 3 0.98858936382378859 4 1.7436245874607692e-05 
		5 4.1944583253182468e-08
		4 2 0.042306876502889661 3 0.95768870820179541 4 4.3883790712398782e-06 
		5 2.6916243644151704e-08
		2 2 0.99984254087350788 3 0.00015745912649212706
		1 2 1
		2 2 0.99980516691515364 3 0.00019483308484630909
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99983975881039855 3 0.00016024118960145754
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		4 2 0.00069800128293078336 3 0.95897059818008734 4 0.04024123602816268 
		5 9.0164508819208812e-05
		4 2 0.00028284731594895344 3 0.75930828386495774 4 0.23951725582990413 
		5 0.00089161298918914343
		3 2 8.1585696111569509e-05 3 0.48789888388618752 4 0.50900092511458772;
	setAttr ".wl[3555:3723].w"
		1 5 0.0030186053031131558
		4 2 0.00010581956068596776 3 0.51175636479602993 4 0.47943172814829355 
		5 0.0087060874949904509
		4 2 8.3616698824036419e-05 3 0.47168037002467228 4 0.52731155207461866 
		5 0.00092446120188504114
		4 2 1.1530758502618244e-05 3 0.22153214537528634 4 0.77568838873319168 
		5 0.0027679351330195589
		4 2 1.1696675592079394e-05 3 0.22535887511925548 4 0.76412223012574165 
		5 0.010507198079410722
		4 2 1.3873779728047256e-05 3 0.21697060938994756 4 0.78196373354393711 
		5 0.001051783286387152
		4 2 0.00010216456842890173 3 0.46348528390371713 4 0.53600928423087668 
		5 0.00040326729697722424
		4 2 2.1634857179541814e-05 3 0.21752472347189206 4 0.78007851258868499 
		5 0.0023751290822435064
		4 2 6.589056038482465e-06 3 0.10715324094249122 4 0.88871031696552982 
		5 0.0041298530359402917
		4 2 3.8767919871541487e-06 3 0.098327549188239133 4 0.90015969424249864 
		5 0.0015088797772749019
		4 2 3.3005828252351334e-05 3 0.21751853942874413 4 0.77381541308145685 
		5 0.0086330416615467871
		4 2 0.00016329141525749243 3 0.45931871542212949 4 0.53967505659247006 
		5 0.00084293657014294031
		4 2 0.0002617698601815342 3 0.46199080004322768 4 0.53486546139274171 
		5 0.0028819687038492193
		4 2 1.247739423189362e-05 3 0.1361814410487163 4 0.8499254421100868 
		5 0.013880639446965002
		4 2 3.0216715923673812e-05 3 0.14090596739608724 4 0.80251176396167445 
		5 0.056552051926314371
		4 2 8.875639414860905e-06 3 0.071143546618886985 4 0.90402804214052512 
		5 0.024819535601173125
		4 2 7.7462452114550535e-05 3 0.24371831028713151 4 0.71792833155744584 
		5 0.038275895703308263
		4 2 0.00037923357043804319 3 0.47693832719504342 4 0.51397438186994415 
		5 0.0087080573645744019
		4 2 0.0004906316607517909 3 0.48758833154967463 4 0.49099060570646391 
		5 0.020930431083109585
		4 2 0.00010894818909902362 3 0.25529119681547258 4 0.6402045747980204 
		5 0.10439528019740787
		4 2 0.0018857909764018509 3 0.74368213009854323 4 0.24852923069391658 
		5 0.0059028482311384283
		4 2 0.0015161326064751701 3 0.74239203668262554 4 0.25344481662866308 
		5 0.0026470140822362157
		4 2 0.0011101972632262297 3 0.73926902007917072 4 0.25865889058520219 
		5 0.0009618920724011093
		4 2 0.00012535356928242212 3 0.25060304293447055 4 0.5479173910294638 
		5 0.20135421246678314
		4 2 5.6253456972392372e-05 3 0.14134916124042149 4 0.44402150837739807 
		5 0.41457307692520801
		4 2 3.2036074750021375e-05 3 0.10253301675286369 4 0.65351555576239018 
		5 0.24391939140999599
		4 2 0.00057341163098177151 3 0.48240536456715277 4 0.4774151334505875 
		5 0.039606090351278184
		4 2 6.7899266512017711e-06 3 0.037266470334579152 4 0.90497985258651792 
		5 0.057746887152251777
		4 2 5.8877860128917989e-06 3 0.02266936288952609 4 0.70261190037747168 
		5 0.27471284894698944
		4 2 2.0508678105292893e-06 3 0.010912502685135009 4 0.91973140019423305 
		5 0.069354046252821475
		4 2 8.1733945957138984e-06 3 0.029973073646412555 4 0.23210186636974925 
		5 0.73791688658924259
		4 2 2.138876042236426e-06 3 0.0090779792856894269 4 0.2388283441616878 
		5 0.75209153767658066
		4 2 1.1225085361295172e-06 3 0.0049570957974789196 4 0.73523779269457723 
		5 0.25980398899940776
		4 2 4.3320884858349352e-07 3 0.0023823154338865654 4 0.92732872479354944 
		5 0.070288526563715384
		4 2 4.4939310243444744e-07 3 0.0021307213056069693 4 0.22841094104774409 
		5 0.76945788825354666
		4 2 6.4213973684438597e-07 3 0.017354886865112079 4 0.98183637332818052 
		5 0.00080809766697060334
		1 4 1
		4 2 3.3852684685610018e-06 3 0.10788278494246649 4 0.88735317850895179 
		5 0.0047606512801131292
		4 2 3.7549514477355259e-06 3 0.07185889237060758 4 0.90183614041594118 
		5 0.026301212262003663
		4 2 3.3646968073835925e-06 3 0.037670811093752046 4 0.90260631228956056 
		5 0.059719511919879995
		1 4 1
		4 2 4.0493272301689961e-14 3 3.2521972694537459e-10 4 0.99999965644417754 
		5 3.4323056223409874e-07
		4 2 1.0229379333862966e-06 3 0.010797414817575263 4 0.91765412991542838 
		5 0.071547432329063076
		4 2 2.0973349150429755e-07 3 0.0022585948073143274 4 0.92575400287921461 
		5 0.071987192579979667
		4 2 0.00068546444362065843 3 0.739527310711103 4 0.25947605582752742 
		5 0.00031116901774900753
		4 2 0.00040402073632724966 3 0.74262438479292125 4 0.25681383767761523 
		5 0.00015775679313633981
		4 2 0.0003354702541891362 3 0.74866762256095265 4 0.25068130901479918 
		5 0.00031559817005880612
		4 2 0.00086328228417235974 3 0.91961971764927797 4 0.079481451134804829 
		5 3.554893174497705e-05
		4 2 0.00095594018736390267 3 0.9270736307982077 4 0.071916958881435122 
		5 5.347013299328319e-05
		4 2 0.0017728163552902213 3 0.91654143431096124 4 0.081611889790775244 
		5 7.3859542973398487e-05
		4 2 0.0038193696408537463 3 0.98853541292785307 4 0.0076387179749142419 
		5 6.4994563788035676e-06
		4 2 0.00088170415110328632 3 0.9916059850012463 4 0.0075092281829538159 
		5 3.082664696628102e-06
		4 2 0.0032009329196570112 3 0.91415236282827972 4 0.082430077581375411 
		5 0.00021662667068792239
		4 2 0.0042893693828274229 3 0.9128970712035559 4 0.082257910457372782 
		5 0.00055564895624389554
		4 2 0.0052338006407661175 3 0.91102741543116861 4 0.082556279191996151 
		5 0.0011825047360689309
		4 2 0.0061710555252862259 3 0.90869650578675898 4 0.083120388278447671 
		5 0.0020120504095069917
		4 2 0.0022251648918030216 3 0.7411246206134342 4 0.24623848037176785 
		5 0.010411734122994988
		4 2 0.011969583630109734 3 0.98094853343130772 4 0.007038193399322947 
		5 4.3689539259608825e-05
		4 2 0.0092270863330111818 3 0.98322010768742141 4 0.0075343210580153296 
		5 1.8484921552045782e-05
		4 2 0.05068067637914514 3 0.94931598039591114 4 3.3007817022884187e-06 
		5 4.2443241327542366e-08
		4 2 4.5621947705684061e-06 3 0.13887797751198871 4 0.84375029737845342 
		5 0.017367162914787571
		4 2 2.952202881424938e-05 3 0.25466381980341873 4 0.70291071364377899 
		5 0.042395944523987983
		4 2 1.1706934853221542e-05 3 0.14391272766955213 4 0.79314050815016013 
		5 0.062935057245434467
		4 2 5.7540394818243191e-05 3 0.26230305801435017 4 0.6285022560882314 
		5 0.10913714550260023
		4 2 1.744287975597051e-05 3 0.10514416817271122 4 0.64231915610680401 
		5 0.25251923284072897
		4 2 0.00024554075763974389 3 0.51347821262141569 4 0.46486207487320413 
		5 0.021414171747740362
		4 2 8.9420251336803415e-05 3 0.25368572996178018 4 0.53658462435968424 
		5 0.20964022542719871
		4 2 0.00010575809024758135 3 0.24532871123071678 4 0.5120389204028799 
		5 0.24252661027615577
		4 2 4.992775613620306e-05 3 0.14745665871683031 4 0.39387665072208217 
		5 0.45861676280495134
		4 2 4.1461573861416071e-05 3 0.14433645094269734 4 0.43303989749474692 
		5 0.42258218998869435
		4 2 2.0253907237788024e-06 3 0.99993456606006625 4 6.3276608384675614e-05 
		5 1.3194082531531252e-07
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 0.99999999999999989
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 0.99999999999999989
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		4 2 2.3708139305328758e-07 3 0.0020276401928289154 4 0.25500389184649558 
		5 0.74296823087928254
		4 2 4.9301888581405021e-08 3 0.00043188933453059612 4 0.040604670264588971 
		5 0.95896339109899198
		4 2 3.3181433685673572e-07 3 0.0025738272845726418 4 0.063113170968233337 
		5 0.93431266993285722
		4 2 1.298027128618891e-06 3 0.0096925829706931144 4 0.27031143896673987 
		5 0.71999468003543832
		4 2 4.7919071858787647e-08 3 0.00044925545601689294 4 0.25159580497800899 
		5 0.74795489164690232
		4 2 8.214808182587616e-09 3 7.8880348066038574e-05 4 0.042376856626681871 
		5 0.95754425481044392
		4 2 1.0135360239662353e-08 3 0.00010179679804890962 4 0.27747468400692726 
		5 0.72242350905966379
		4 2 1.8968772800126121e-09 3 1.936651132466256e-05 4 0.050399222539827454 
		5 0.94958140905197075
		4 2 9.7922249944453729e-10 3 9.7826209034955925e-06 4 0.0055178739083372366 
		5 0.9944723424915366
		4 2 4.7373916369582292e-09 3 4.4414160647553859e-05 4 0.0057024579408888774 
		5 0.99425312316107195
		4 2 1.722352710186354e-15 3 1.7206661773462556e-11 4 9.705355120037139e-09 
		5 0.99999999027743647
		4 2 9.6718050045089309e-14 3 4.5693210373373663e-10 4 1.6752349207786055e-09 
		5 0.9999999978677363
		1 5 1
		4 2 1.4276386388559313e-15 3 1.4956842606640343e-11 4 4.1966532921523272e-08 
		5 0.99999995801850883
		3 3 2.5806572296557138e-12 4 5.56386402669403e-08 5 0.99999994435877881
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 0.99999999999999989
		1 5 1
		1 5 1
		1 5 1
		4 2 1.0232776015488724e-13 3 5.0855231445771573e-10 4 1.895530257139022e-09 
		5 0.99999999759581515
		1 5 1
		1 5 1
		1 5 0.99999999999999989
		4 2 8.0420607339064368e-14 3 4.0539443571794644e-10 4 1.5365320937841171e-09 
		5 0.999999998057993
		4 2 8.7473493355887653e-10 3 8.3605660021942367e-06 4 0.00085659079134789049 
		5 0.99913504776791495
		1 5 1
		4 2 8.7924696849667565e-15 3 8.40369125586188e-11 4 8.6100923564419167e-09 
		5 0.99999999130586192
		1 5 1
		1 5 1
		4 2 5.2846578748270065e-08 3 0.00026639543772679703 4 0.0010096961875745675 
		5 0.99872385552811982
		4 2 4.1547435344574795e-13 3 2.0943760143502692e-09 4 7.9381355020369172e-09 
		5 0.99999998996707296
		4 2 1.4751558674970758e-07 3 0.00069691883482074946 4 0.0025550919350460564 
		5 0.99674784171454656
		4 2 5.6648896710504009e-09 3 5.0295927654382637e-05 4 0.0030688491539508913 
		5 0.99688084925350517
		4 2 4.6400335272040059e-08 3 0.00023060175187895136 4 0.00085952294081618737 
		5 0.99890982890696955
		1 5 1
		1 5 1
		4 2 2.4345136943302782e-07 3 0.0011378583180523798 4 0.0041528909609769042 
		5 0.99470900726960121
		4 2 2.0041166265419596e-06 3 0.0086374455665472021 4 0.03062787648842968 
		5 0.96073267382839667
		4 2 2.7300859128220182e-13 3 1.1395002108622629e-09 4 4.0625666354937631e-09 
		5 0.99999999479766011
		1 5 1
		1 5 0.99999999999999989
		1 5 1
		1 5 1
		4 2 9.7262122370239008e-14 3 4.2895403685834193e-10 4 1.571905586103811e-09 
		5 0.99999999799904316
		1 5 1
		1 5 1
		4 2 4.9452034591654717e-13 3 2.1809774814701622e-09 4 7.9922098679810995e-09 
		5 0.9999999898263181
		1 5 0.99999999999999989
		1 5 1
		4 2 5.5399550789119487e-08 3 0.00024432801148089066 4 0.00089534200191075598 
		5 0.99886027458705773
		4 2 1.8287483163722863e-07 3 0.00076329432796720968 4 0.0027213106590956524 
		5 0.99651521213810557
		4 2 5.3867184269787611e-08 3 0.00023976572687057246 4 0.00087899429358090613 
		5 0.99888118611236432
		4 2 2.1204212821159321e-06 3 0.0080869607460357321 4 0.027562141544242101 
		5 0.96434877728844015
		4 2 2.513314913418e-07 3 0.0010643353618267754 4 0.0038010142307118703 
		5 0.99513439907597012
		4 2 2.8229270479727938e-07 3 0.0011703088109555563 4 0.0041742912477095015 
		5 0.99465511764863024
		1 5 1
		1 5 1
		3 3 7.6626482601028406e-13 4 8.7883427026645546e-08 5 0.99999991211580663
		1 5 1
		1 5 1
		1 5 0.99999999999999989
		4 2 1.9749487159884471e-07 3 0.00075929717430645103 4 0.0027850666224134169 
		5 0.99645543870840858
		4 2 6.3825224672388911e-08 3 0.00026100141483353538 4 0.00097388021012668406 
		5 0.99876505454981512
		4 2 2.4278555249024794e-15 3 1.3327240938509856e-11 4 1.3188090314198811e-09 
		5 0.99999999866786127
		4 2 6.6792179572566884e-08 3 0.00027210260246609218 4 0.0010274209876017721 
		5 0.99870040961775253
		4 2 5.8592967781847194e-09 3 3.1252952352317888e-05 4 0.0039195589190664619 
		5 0.99604918226928452
		4 2 1.3139566631639444e-09 3 7.2127096744975028e-06 4 0.00071374012848006874 
		5 0.99927904584788874
		4 2 1.7432013461139019e-15 3 1.010760033200499e-11 4 2.5441030496718304e-08 
		5 0.99999997454886014
		4 2 1.7091454793711791e-09 3 9.559481011821148e-06 4 0.0047794108006878749 
		5 0.99521102800915484
		1 2 2.1774365285483593e-10;
	setAttr ".wl[3723:3988].w"
		3 3 2.2812198099055278e-06 4 0.0064007417054137003 5 0.99359697685703274
		4 2 4.0275928910592788e-10 3 4.3465342444012022e-06 4 0.069054175938553661 
		5 0.93094147712444275
		4 2 3.6339892625423707e-16 3 4.8782428389513829e-07 4 0.010517357855038533 
		5 0.98948215427597208
		4 2 2.3036708169488882e-09 3 2.4937218689598177e-05 4 0.30962402333805944 
		5 0.69035103713958024
		4 2 9.0229246476729187e-08 3 0.00083748671069716781 4 0.74143894844662328 
		5 0.25772347461343315
		4 2 2.2060099676011607e-08 3 0.00021946475322926048 4 0.69521631443161014 
		5 0.30456419875506102
		4 2 4.2805798476028653e-08 3 0.00047234924615458218 4 0.88092306879265381 
		5 0.11860453915539319
		4 2 8.793024748936317e-09 3 9.7477988899469489e-05 4 0.72746329697584555 
		5 0.27243921624223039
		4 2 5.2756633525092641e-07 3 0.0044202820628860343 4 0.73648258272650968 
		5 0.25909660764426906
		4 2 8.0598094571837132e-10 3 6.5750728332310926e-06 4 0.3332251227128662 
		5 0.66676830140831966
		4 2 1.313556240104634e-10 3 1.0679759544708341e-06 4 0.083931471395225138 
		5 0.91606746049746468
		4 2 3.3091674625150128e-09 3 2.7137779521611158e-05 4 0.72716292233308388 
		5 0.27280993657822711
		4 2 9.5740571041876414e-16 3 1.3153790926435383e-07 4 0.015085861059590209 
		5 0.98491400738638213
		4 2 4.8307006350504603e-15 3 5.7590540491184714e-07 4 0.01192981849148163 
		5 0.98806960550762413
		4 2 8.270215999612926e-10 3 4.8948248606475288e-06 4 0.07215219869727843 
		5 0.92784290565083949
		4 2 4.6876966946894891e-10 3 2.7180660899103186e-06 4 0.0068414262549088443 
		5 0.99315585521023153
		4 2 2.4867356170854838e-15 3 1.4418833375097415e-11 4 3.6292489569597667e-08 
		5 0.99999996369308908
		4 2 3.9797250552321332e-09 3 2.2403680682819878e-05 4 0.052027888815227963 
		5 0.94794970352436425
		4 2 3.0554853150528811e-06 3 0.022242553727493668 4 0.69285489615046392 
		5 0.28489949463672731
		4 2 5.4954513282519887e-06 3 0.033409464680222906 4 0.24638276938541334 
		5 0.72020227048303564
		4 2 1.2494106440187344e-06 3 0.0080492600610199555 4 0.06304760031089704 
		5 0.92890189021743896
		4 2 1.3195025203396392e-05 3 0.055595123289341866 4 0.2087426860647075 
		5 0.73564899562074726
		4 2 1.6590314288668999e-05 3 0.0608285911054171 4 0.19341816933243994 
		5 0.74573664924785443
		4 2 2.5739526241714555e-06 3 0.012542896791247215 4 0.053751587313220647 
		5 0.93370294194290804
		4 2 1.7195199644173122e-05 3 0.059121812325291623 4 0.18431236179587213 
		5 0.7565486306791922
		4 2 5.4691529875086281e-05 3 0.14917178658728492 4 0.39388458766192663 
		5 0.45688893422091342
		4 2 1.8276510348281673e-05 3 0.059592483421304326 4 0.18635610950667295 
		5 0.75403313056167431
		4 2 5.5174699249236425e-05 3 0.14286979667805141 4 0.38240809740085091 
		5 0.47466693122184861
		4 2 0.00011174704202941208 3 0.24058008767631239 4 0.51217307810976087 
		5 0.24713508717189733
		4 2 0.00011954056810901091 3 0.23962862907371307 4 0.51061283535489121 
		5 0.24963899500328671
		4 2 0.00012598702304368229 3 0.24078512555277184 4 0.50889317751711605 
		5 0.25019570990706852
		4 2 5.8350595415008586e-05 3 0.14345754073987421 4 0.38111061282468101 
		5 0.47537349584002975
		4 2 0.00012750499511464598 3 0.24156911243193968 4 0.51172168426808151 
		5 0.24658169830486407
		4 2 0.00061016373211994631 3 0.47435808127009388 4 0.47538241619532295 
		5 0.049649338802463382
		4 2 6.0589842189054917e-05 3 0.14608050868409841 4 0.39579107934287289 
		5 0.45806782213083957
		4 2 2.0400461671159026e-05 3 0.062617847403134849 4 0.19442904595106483 
		5 0.74293270618412932
		4 2 2.1110382396062975e-05 3 0.063170081180921517 4 0.20279364796135638 
		5 0.73401516047532611
		4 2 1.7929430265228706e-05 3 0.05540200867173984 4 0.2161469112727426 
		5 0.72843315062525238
		4 2 2.3580845752550827e-06 3 0.0082672779955591386 4 0.029303471302875337 
		5 0.96242689261699033
		4 2 3.3871843491164956e-06 3 0.012106808547263233 4 0.053631240229095739 
		5 0.93425856403929197
		4 2 1.5822687596950866e-06 3 0.0064824279872807604 4 0.05360689523798335 
		5 0.93990909450597626
		4 2 3.7507669088642391e-06 3 0.01327570762798305 4 0.044716431016201395 
		5 0.94200411058890665
		4 2 3.3668429115061339e-07 3 0.001297070474530766 4 0.0049088409197443755 
		5 0.9937937519214336
		4 2 4.4394498881619087e-07 3 0.001753644097825651 4 0.008256612858424205 
		5 0.98998929909876132
		4 2 2.8955441679735883e-07 3 0.0011241587922873868 4 0.0041040280874667882 
		5 0.9947715235658291
		4 2 4.5832315965446929e-07 3 0.001793512396708318 4 0.0063490010502338283 
		5 0.9918570282298983
		4 2 3.1092616983605665e-06 3 0.012350080432963024 4 0.041808922497991785 
		5 0.9458378878073469
		4 2 3.6593905336012083e-07 3 0.0016052132942909211 4 0.0057055970905830174 
		5 0.99268882367607258
		1 5 1
		1 5 1
		4 2 4.2060635465266136e-13 3 1.8721414478357838e-09 4 6.8633731388650858e-09 
		5 0.9999999912640648
		1 5 1
		4 2 3.5151280527841466e-07 3 0.0018886391324740505 4 0.0086482705895071319 
		5 0.98946273876521362
		4 2 2.7556296049741253e-07 3 0.001330600064220668 4 0.005077331008840595 
		5 0.99359179336397829
		4 2 1.7605226469072408e-07 3 0.0011917609199201457 4 0.0094798837595914762 
		5 0.9893281792682237
		1 5 1
		4 2 2.329163957054105e-12 3 1.2273341720092813e-08 4 5.4568201734672383e-08 
		5 0.99999993315612734
		4 2 5.0145145331559156e-08 3 0.00040210040329777551 4 0.0089510355098649259 
		5 0.99064681394169196
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		4 2 5.2594323648351887e-15 3 5.0268749690127092e-11 4 5.1503388724918774e-09 
		5 0.99999999479938717
		4 2 2.7530962403994683e-12 3 1.3300666674809214e-08 4 5.0748480189134489e-08 
		5 0.99999993594809999
		1 5 0.99999999999999989
		4 2 9.5772281245521485e-09 3 4.9813511559835419e-05 4 0.0028286776419595432 
		5 0.99712149926925242
		4 2 6.6873469847634049e-08 3 0.00032407958677854455 4 0.0063667026066470001 
		5 0.99330915093310457
		4 2 1.0915991474716625e-12 3 4.8250991896823417e-09 4 4.0280146646249969e-08 
		5 0.99999995489366256
		1 5 1
		1 5 1
		4 2 1.5209631182275494e-12 3 6.7229787841942121e-09 4 5.6123731488470881e-08 
		5 0.99999993715176871
		4 2 1.0502891655020051e-12 3 4.0462210506958074e-09 4 1.5313165979799299e-08 
		5 0.99999998063956275
		4 2 2.0414451004667525e-07 3 0.00090235810110111101 4 0.0075328461087152254 
		5 0.99156459164567357
		4 2 4.7676779801519631e-07 3 0.0021881688483193695 4 0.049052772850805219 
		5 0.94875858153307735
		4 2 7.9467098809701139e-08 3 0.00039872667039011014 4 0.033871310939503053 
		5 0.96572988292300788
		4 2 1.6885579990183667e-08 3 9.0605601451728568e-05 4 0.04019966611031707 
		5 0.95970971140265116
		4 2 9.5946097679699734e-08 3 0.00049278327982359886 4 0.23416093269342905 
		5 0.76534618808064969
		4 2 2.0459302597657615e-08 3 0.00011146831070667572 4 0.26830031645605501 
		5 0.73158819477393566
		4 2 1.9506738741197809e-07 3 0.00095393998581609824 4 0.73036830789234219 
		5 0.2686775570544544
		4 2 9.0258049180114044e-08 3 0.00051687693002865943 4 0.87658247994009653 
		5 0.12290055287182573
		4 2 1.0574341442600166e-08 3 8.4809875376504933e-05 4 0.90993566583563057 
		5 0.089979513714651529
		4 2 1.863815954236841e-08 3 0.00010872268940807373 4 0.71219559243162711 
		5 0.28769566624080528
		4 2 4.8283931990144761e-08 3 0.00025320020340828422 4 0.67919483906875777 
		5 0.32055191244390202
		4 2 4.7174216395462715e-09 3 2.7538910413559885e-05 4 0.30337077985458022 
		5 0.69660167651758453
		4 2 3.3237927061874817e-12 3 1.2804854565453762e-08 4 4.84607392555246e-08 
		5 0.99999993873108239
		4 2 6.2105536540272442e-13 3 2.5300983181423175e-09 4 9.5532938281224043e-09 
		5 0.99999998791598677
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		4 2 1.6681716993684779e-14 3 9.1571042577503209e-11 4 9.0614943126591833e-09 
		5 0.99999999084691793
		4 2 7.5968382553400157e-15 3 4.1701366807595356e-11 4 4.1265960015396277e-09 
		5 0.99999999583169508
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 1.2902462952213423e-11 7 0.99999999998709754
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 5.5549093103124392e-11 7 0.99999999994445088
		1 7 1
		1 7 1
		1 7 1
		2 1 1.6650640284956997e-12 7 0.99999999999833489
		2 1 6.4819915927827321e-12 7 0.99999999999351796
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989;
	setAttr ".wl[3989:4487].w"
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 1.0351711600940161e-11 7 0.99999999998964828
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989;
	setAttr ".wl[4488:4984].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 5.0637009185146335e-11 7 0.99999999994936128
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 3.3757508135825316e-11 7 0.99999999996624245
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 1.1918648900002163e-11 7 0.99999999998808131
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999978
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[4985:5484].w"
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 0.99999999998523048
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 0.99999999999999634
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999978
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 0.99999999999998002
		1 7 1
		1 7 1
		1 7 0.99999999992258182
		1 7 1
		1 7 0.99999999999999711
		1 7 0.99999999998916245
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999978
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999993638855
		1 7 0.99999999999994416
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999833
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[5485:5983].w"
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 3.2703607183437455e-11 7 0.99999999996729638
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[5984:6459].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 0.02872830256819725 7 0.97127169743180275
		2 1 0.097255200147628784 7 0.90274479985237122
		2 1 0.013409076258540154 7 0.98659092374145985
		2 1 0.055743690580129623 7 0.94425630941987038
		2 1 0.0041909576393663883 7 0.99580904236063361
		1 7 1
		1 7 1
		2 1 0.00086066592484712601 7 0.99913933407515287
		2 1 0.0080127706751227379 7 0.99198722932487726
		2 1 0.025581073015928268 7 0.97441892698407173
		1 7 1
		2 1 0.0016244078287854791 7 0.99837559217121452
		1 7 1
		1 7 1
		2 1 0.0038662324659526348 7 0.99613376753404737
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 0.21914425492286682 7 0.78085574507713318
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 1.9561533713532347e-11 7 0.99999999998043843
		1 7 1
		2 0 2.7857247453697147e-13 7 0.99999999999972145
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 7.1437189497203235e-11 7 0.99999999992856281
		2 1 1.2863518410177743e-11 7 0.99999999998713651
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		2 1 1.4409727990521738e-08 7 0.99999998559027203
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0041048834100365639 7 0.99589511658996344
		1 7 1
		1 7 1
		2 0 6.9856643676757813e-05 7 0.99993014335632324
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.006699979305267334 7 0.99330002069473267
		2 0 0.034032078459858894 7 0.96596792154014111
		2 0 0.025943290106393846 7 0.97405670989360615
		2 0 0.0015726344427093863 7 0.99842736555729061
		2 0 0.0033406056463718414 7 0.99665939435362816
		2 0 0.054966337489907979 7 0.94503366251009202
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[6460:6759].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.24203976988792419 7 0.75796023011207581
		2 0 0.17119652032852173 7 0.82880347967147827
		2 0 0.1369602233171463 7 0.8630397766828537
		2 0 0.085488937795162201 7 0.9145110622048378
		2 0 0.055783018469810486 7 0.94421698153018951
		2 0 0.028093047440052032 7 0.97190695255994797
		2 0 0.012181072495877743 7 0.98781892750412226
		2 0 0.00037241351760228074 7 0.99962758648239769
		1 7 1
		1 7 1
		2 0 0.00024018071526362133 7 0.99975981928473634
		2 0 0.0045506807649084878 7 0.9954493192350915
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.021602746099233627 7 0.97839725390076637
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.080531902611255646 7 0.91946809738874435
		4 0 0.00053106589486716209 1 0.96442303454650569 2 0.033355835825204849 
		7 0.0016900637334223063
		4 0 7.1293274777630062e-05 1 0.7823367714881897 2 0.21700848921646712 
		7 0.00058344602056555961
		4 0 3.8265927124447981e-05 1 0.68511247634887695 2 0.31468937112320533 
		7 0.00015988660079326971
		4 0 2.9066808926516362e-06 1 0.29056544734625456 2 0.70932251214981079 
		7 0.00010913382304197236
		4 0 1.8051472099535409e-06 1 0.25258505344390869 2 0.74738018842396647 
		7 3.2952984914888137e-05
		4 0 2.4753283023698901e-07 1 0.14520743489265442 2 0.8547792481883868 
		7 1.3069386128598013e-05
		4 0 1.5679634103636947e-07 1 0.11817265301942825 2 0.88182327719651332 
		7 3.9129877173837456e-06
		4 0 5.9513750656603985e-07 1 0.18218520283699036 2 0.81780626750325358 
		7 7.9345222494528921e-06
		4 0 1.071927592180137e-05 1 0.55177485942840576 2 0.44818061242571938 
		7 3.3808869953027861e-05
		4 0 1.3562615974805076e-07 1 0.14394870381119715 2 0.85604947805404663 
		7 1.682508596476138e-06
		4 0 4.484818873606855e-06 1 0.41925145698590305 2 0.58073794841766357 
		7 6.1097775597988604e-06
		4 0 2.9695480623899457e-07 1 0.29876317375927419 2 0.70123553276062012 
		7 9.9652529945107203e-07
		4 0 2.1878813573824939e-08 1 0.11213649054767873 2 0.8878631591796875 
		7 3.2839382019785597e-07
		4 0 2.8254698040349354e-08 1 0.22854963442033527 2 0.77144956588745117 
		7 7.7143751550651042e-07
		4 0 2.3321461858806913e-09 1 0.20422527486197598 2 0.79577022790908813 
		7 4.4948967897099687e-06
		4 0 1.6920277339715862e-11 1 0.092354252714393487 2 0.90763562917709351 
		7 1.0118091592729963e-05
		4 0 1.949361111583625e-10 1 0.21220094152188834 2 0.78777313232421875 
		7 2.5925958956802566e-05
		4 0 2.0783119064731455e-10 1 0.088152481671892505 2 0.91184568405151367 
		7 1.8340687626342408e-06
		4 0 2.2560741009074014e-12 1 0.049248388297291015 2 0.95074999332427979 
		7 1.6183761731241677e-06
		4 0 6.3455005511683707e-13 1 0.050869837377349625 2 0.94912242889404297 
		7 7.7337279728553944e-06
		4 0 2.643333910402174e-11 1 0.048193102682693376 2 0.95180660486221313 
		7 2.9242866014970655e-07
		4 0 2.3440626013042995e-09 1 0.098115767822023817 2 0.90188390016555786 
		7 3.2966835572613067e-07
		4 0 2.7347758763075195e-10 1 0.046675451312101157 2 0.95332449674606323 
		7 5.1668358019865985e-08
		4 0 2.2636835820662132e-09 1 0.045754266511678965 2 0.95424568653106689 
		7 4.4693570558182971e-08
		4 0 1.2477794419948739e-08 1 0.0503363830819855 2 0.94966340065002441 
		7 2.0379019566270367e-07
		2 1 0.011961221694946289 2 0.98803877830505371
		2 1 0.010514020919799805 2 0.9894859790802002
		2 1 0.017681419849395752 2 0.98231858015060425
		2 1 0.0022858977317810059 2 0.99771410226821899
		2 1 0.0044682621955871582 2 0.99553173780441284
		2 1 0.019860744476318359 2 0.98013925552368164
		2 1 0.0030168890953063969 2 0.9969831109046936
		2 1 0.0042691826820373535 2 0.99573081731796265
		2 1 0.020015537738800049 2 0.97998446226119995
		1 2 1
		1 2 1
		1 2 1
		2 1 0.00078511238098144531 2 0.99921488761901855
		2 1 0.009103238582611084 2 0.99089676141738892
		2 1 0.00062513351440429688 2 0.9993748664855957
		4 0 5.2030531285330709e-08 1 0.048582883848145055 2 0.95141613483428955 
		7 9.2928703411006761e-07
		2 1 0.036675494164228439 2 0.96332450583577156
		2 1 0.010863657109439373 2 0.98913634289056063
		1 2 1
		1 2 1
		2 1 0.056433834135532379 2 0.94356616586446762
		2 1 0.019878357648849487 2 0.98012164235115051
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 1 0.024192310869693756 2 0.97580768913030624
		2 1 0.01844986155629158 2 0.98155013844370842
		2 1 0.019720222800970078 2 0.98027977719902992
		2 1 0.077013172209262848 2 0.92298682779073715
		2 1 0.073136977851390839 2 0.92686302214860916
		4 0 1.4105120100222923e-07 1 0.18063302338123322 2 0.8193300532453045 
		7 3.6782322261250747e-05
		4 0 1.6530263298021798e-06 1 0.37105265259742737 2 0.62864125499611212 
		7 0.00030443938013068186
		4 0 3.8025558297391441e-05 1 0.82556158304214478 2 0.1726613899412707 
		7 0.0017390014582871303
		3 0 0.039912469685077667 1 0.95035114139318466 7 0.0097363889217376709
		3 0 0.020575398579239845 1 0.92532099969685078 7 0.054103601723909378
		3 0 0.079756610095500946 1 0.88971260748803616 7 0.030530782416462898
		3 0 0.058564811944961548 1 0.86541919410228729 7 0.07601599395275116
		3 0 0.14900055527687073 1 0.77409559488296509 7 0.076903849840164185
		3 0 0.11649748682975769 1 0.74805516004562378 7 0.13544735312461853
		3 0 0.17845398143373953 1 0.52851766347885132 7 0.29302835508740915
		3 0 0.16021952033042908 1 0.47983712577692589 7 0.35994335389264503
		3 0 0.094492308795452118 1 0.66420599562510851 7 0.24130169557943931
		3 0 0.24851131199559762 1 0.2448192834854126 7 0.50666940451898979
		3 0 0.2729749968286167 1 0.27662116289138794 7 0.45040384027999536
		3 0 0.24314860126526183 1 0.06125212088227272 7 0.69559927785246545
		3 0 0.21435316904295099 1 0.2049848735332489 7 0.58066195742380011
		3 0 0.28739834571832401 1 0.075158171355724335 7 0.63744348292595165
		3 0 0.18844438895933746 1 0.046683389693498611 7 0.76487222134716393
		3 0 0.17540529948402972 1 0.15257583558559418 7 0.6720188649303761
		3 0 0.095957877610380105 1 0.0034773279912769794 7 0.90056479439834292
		3 0 0.13138807867711977 1 0.026738811284303665 7 0.84187311003857657
		2 0 0.058983354985364667 7 0.94101664501463533
		3 0 0.076343193022971323 1 0.010586963035166264 7 0.91306984394186241
		3 0 0.12776237261712964 1 0.096463799476623535 7 0.77577382790624683
		2 0 0.007175445556640625 7 0.99282455444335938
		3 0 0.14750802516937256 1 0.40009438680322246 7 0.45239758802740498
		3 0 0.087993405759334564 1 0.56182417472761115 7 0.35018241951305429
		3 0 0.039668150246143341 1 0.79421820491552353 7 0.16611364483833313
		3 0 0.03726670891046524 1 0.67218931764364243 7 0.29054397344589233
		3 0 0.31860789262954625 1 0.089028917253017426 7 0.59236319011743632
		3 0 0.30126508995991963 1 0.29158169031143188 7 0.40715321972864849
		3 0 0.3353109695237575 1 0.10553070902824402 7 0.55915832144799849
		3 0 0.20644731351757589 1 0.54693758487701416 7 0.24661510160540995
		3 0 0.36303023305987514 1 0.10442685335874557 7 0.53254291358137928
		3 0 0.32342653072933047 1 0.2986239492893219 7 0.37794951998134763
		3 0 0.25172256237185231 1 0.53817462921142578 7 0.21010280841672191
		3 0 0.011078353971242905 1 0.84807406738400459 7 0.1408475786447525
		3 0 0.0050131729803979397 1 0.73276763642206788 7 0.26221919059753418
		3 0 0.0091648008674383163 1 0.54460222460329533 7 0.44623297452926636
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 5 6.2799328852084286e-11 7 0.99999999993720068
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 2.7830406281391342e-14 7 0.99999999999997213
		1 7 1
		1 7 1
		1 7 1
		2 2 1.5915964648662422e-14 7 0.99999999999998412
		2 2 1.2358700090463323e-14 7 0.99999999999998768
		1 2 1
		1 2 0.99999999999999989
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		4 2 1.9216480343709281e-12 3 8.0109678676658236e-09 4 2.8645947927933925e-08 
		5 0.99999996334116259
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		4 2 0.0024555818567333749 3 0.74036233229364534 4 0.24425882697643791 
		5 0.012923258873183406
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1;
	setAttr ".wl[6760:7226].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 9.8375356472057973e-11 7 0.99999999990162469
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		2 1 1.5954878043733522e-11 7 0.9999999999840451
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		3 0 0.3030419110886563 1 0.015951305627822876 7 0.68100678328352082
		3 0 0.3728096280853701 1 0.11585783213376999 7 0.51133253978085991
		3 0 0.38819585759995678 1 0.10516858845949173 7 0.50663555394055149
		3 0 0.28633394998270101 1 0.028719257563352585 7 0.68494679245394641
		3 0 0.38028696799486494 1 0.27207893133163452 7 0.34763410067350053
		3 0 0.43828842461640227 1 0.2277795672416687 7 0.33393200814192903
		3 0 0.31486458277928958 1 0.49661949276924133 7 0.18851592445146909
		3 0 0.40519794927035613 1 0.087585955858230591 7 0.50721609487141328
		3 0 0.28667583083289461 1 0.019863175228238106 7 0.69346099393886729
		2 0 0.15458763204210912 7 0.84541236795789088
		2 0 0.059827713120224724 7 0.94017228687977528
		2 0 0.15025338919111209 7 0.84974661080888791
		2 0 0.059128992975197248 7 0.94087100702480275
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 0.16403669118881226 7 0.83596330881118774
		1 7 1
		1 7 1
		2 1 0.004441678524017334 2 0.99555832147598267
		2 1 0.0036853551864624023 2 0.9963146448135376
		2 1 0.0013442635536193848 2 0.99865573644638062
		1 2 1
		2 1 0.0043767518363893032 2 0.9956232481636107
		2 1 0.0049182772636413574 2 0.99508172273635864
		2 1 0.012924371287226677 2 0.98707562871277332
		1 2 1
		1 2 1
		1 2 0.99999999999999989
		2 1 0.016651272773742676 2 0.98334872722625732
		2 1 0.02064889669418335 2 0.97935110330581665
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[7227:7693].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.0057503581047058105 7 0.99424964189529419
		2 0 0.01102215051651001 7 0.98897784948348999
		1 7 1
		2 0 0.0034600258804857731 7 0.99653997411951423
		1 7 1
		2 0 0.014782954007387161 7 0.98521704599261284
		2 0 0.025886297225952148 7 0.97411370277404785
		2 0 0.043717134384620437 7 0.95628286561537956
		2 0 0.092661098481665483 7 0.90733890151833452
		2 0 0.030186595330461308 7 0.96981340466953869
		2 0 0.079644147708597401 7 0.9203558522914026
		2 0 0.013199941255152225 7 0.98680005874484777
		2 0 0.04941920917120779 7 0.95058079082879221
		2 0 0.12063631935464414 7 0.87936368064535586
		2 0 0.072024508498917283 7 0.92797549150108272
		2 0 0.16199721251327426 7 0.83800278748672574
		2 0 0.29134077992580898 7 0.70865922007419102
		2 0 0.34726231269612651 7 0.65273768730387349
		2 0 0.22716844339329856 7 0.77283155660670144
		2 0 0.34319627022158283 7 0.65680372977841717
		2 0 0.0078657180692330853 7 0.99213428193076691
		1 7 1
		2 0 0.0020330499392002821 7 0.99796695006079972
		2 0 0.00048724413500167429 7 0.99951275586499833
		1 7 1
		2 0 3.9339064983323624e-07 7 0.99999960660935017
		2 0 0.0041715381667017937 7 0.99582846183329821
		2 0 0.00084316730499267578 7 0.99915683269500732
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 0 0.15823867780222589 7 0.84176132219777411
		2 0 0.15346037007649771 7 0.84653962992350229
		2 0 0.06626582145690918 7 0.93373417854309082
		2 0 0.096799850463867188 7 0.90320014953613281
		2 0 0.11413439363241196 7 0.88586560636758804
		2 0 0.25014281645916692 7 0.74985718354083308
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		2 1 6.5209881765226907e-12 7 0.99999999999347899
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 1 3.6688232313286662e-11 7 0.99999999996331179
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		2 0 0.21668699943795444 7 0.78331300056204556
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[7694:8193].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[8194:8693].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[8694:9193].w"
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1;
	setAttr ".wl[9194:9496].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 0.38155573424783712 3 0.61844426575216305
		2 2 0.37987591234527812 3 0.62012408765472182
		2 2 0.3692568399195974 3 0.63074316008040265
		2 2 0.37309294530064147 3 0.62690705469935848
		2 2 0.36510240465899207 3 0.63489759534100798
		2 2 0.36445181027363005 3 0.63554818972636995
		2 2 0.36429745186536938 3 0.63570254813463056
		2 2 0.37339258546341297 3 0.62660741453658708
		2 2 0.37568799356209598 3 0.62431200643790408
		2 2 0.38012106052872568 3 0.61987893947127415
		2 2 0.3798079272516327 3 0.62019207274836741
		2 2 0.38472862556264675 3 0.61527137443735325
		2 2 0.39005499636071272 3 0.60994500363928716
		2 2 0.38894049676326575 3 0.61105950323673419
		2 2 0.39249313278421372 3 0.60750686721578617
		2 2 0.38936901427464615 3 0.61063098572535379
		2 2 0.38257840095923928 3 0.61742159904076077
		2 2 0.36999284193760063 3 0.63000715806239926
		1 7 1
		1 7 1
		1 7 1
		2 2 0.35973912266297731 3 0.64026087733702264
		2 2 0.36138363260991546 3 0.63861636739008454
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 5 6.8325452527214142e-12 7 0.99999999999316747
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 0.16003730306974473 3 0.83996269693025538
		2 2 0.16142603618218362 3 0.83857396381781624
		2 2 0.15651986928868089 3 0.84348013071131911
		2 2 0.1584159320090843 3 0.84158406799091567
		2 2 0.16149208731197678 3 0.83850791268802327
		2 2 0.1607891296927676 3 0.8392108703072324
		2 2 0.16037497891503988 3 0.83962502108496029
		2 2 0.1568511137460803 3 0.8431488862539197
		2 2 0.19118295395297827 3 0.80881704604702176
		2 2 0.19161213496557339 3 0.8083878650344265
		2 2 0.18223965223514177 3 0.81776034776485829
		1 7 1
		1 7 1
		1 7 1
		2 2 0.13953641902901978 3 0.8604635809709803
		2 2 0.14337281250005759 3 0.85662718749994238
		1 7 1
		2 2 0.16070003410411354 3 0.8392999658958864
		2 2 0.1514732902291348 3 0.8485267097708652
		2 2 0.16368519976808735 3 0.83631480023191263
		2 2 0.17276165004151614 3 0.82723834995848389
		2 2 0.18659478585747485 3 0.81340521414252498
		2 2 0.165895278454602 3 0.83410472154539794
		2 2 0.14789464747594275 3 0.85210535252405728
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 0.94657475306979399 3 0.053425246930206026
		2 2 0.94985869553660873 3 0.050141304463391344
		2 2 0.94438981667457755 3 0.055610183325422599
		2 2 0.94415271597184069 3 0.055847284028159271
		2 2 0.94483803004394662 3 0.055161969956053554
		2 2 0.94699943252657581 3 0.053000567473424187
		2 2 0.95020348622484574 3 0.049796513775154233
		2 2 0.95343852501734372 3 0.04656147498265633
		2 2 0.95612905648070368 3 0.043870943519296268
		2 2 0.95584603066977647 3 0.044153969330223648
		2 2 0.95125436143189945 3 0.048745638568100456
		2 2 0.94813908816855419 3 0.051860911831445811
		2 2 0.94251745881669813 3 0.057482541183302011
		2 2 0.95449172096511459 3 0.045508279034885496
		2 2 0.93775929259133661 3 0.062240707408663318
		2 2 0.93618627702853807 3 0.063813722971461997
		2 2 0.93770087537642777 3 0.062299124623572122
		2 2 0.94393718110358371 3 0.056062818896416233
		2 2 0.94640932601009864 3 0.053590673989901347
		2 2 0.95057400474824116 3 0.049425995251759003
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 0.84000602430453375 3 0.15999397569546628
		2 2 0.84649293428411476 3 0.15350706571588524
		2 2 0.83585970514183505 3 0.16414029485816509
		2 2 0.83474760361711253 3 0.16525239638288755
		2 2 0.8508135783359575 3 0.14918642166404239
		2 2 0.84420403000715483 3 0.15579596999284526
		2 2 0.86254405422032177 3 0.13745594577967835
		2 2 0.85859716711365508 3 0.14140283288634489
		2 2 0.82578359253122446 3 0.1742164074687757
		2 2 0.82949829214931292 3 0.17050170785068711
		2 2 0.83156249473270283 3 0.16843750526729726
		2 2 0.82232686522979903 3 0.17767313477020102
		2 2 0.8513356130231492 3 0.14866438697685061
		2 2 0.85059490393137116 3 0.14940509606862892
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 2 0.8352935361212207 3 0.16470646387877944
		2 2 0.83886059386920031 3 0.16113940613079977
		2 2 0.84113202288729705 3 0.1588679771127029
		2 2 0.83573286655445689 3 0.1642671334455432
		2 2 0.8537466501350528 3 0.14625334986494715
		2 2 0.84511859566909708 3 0.15488140433090311
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		4 2 2.9901117404972592e-05 3 0.33130706514598396 4 0.66707656982850894 
		5 0.0015864639081022457
		4 2 3.0481344267489555e-05 3 0.34003952627586703 4 0.65415575214656707 
		5 0.0057742402332983693
		4 2 3.6202254264364083e-05 3 0.32560013533310533 4 0.67372704113963011 
		5 0.00063662127300027796
		4 2 5.6899015375328457e-05 3 0.32305647005499327 4 0.67550013475551696 
		5 0.0013864961741143612
		4 2 9.0483058156744944e-05 3 0.32394609472195973 4 0.67095419153901381 
		5 0.0050092306808697746
		4 2 0.00013271613339144503 3 0.33560611180813243 4 0.64787038542461095 
		5 0.016390786633865149
		4 2 0.0001750706158426132 3 0.34719664808973899 4 0.60957574807915937 
		5 0.043052533215259189
		4 2 0.0002039645047489272 3 0.3411417574600204 4 0.57288158846498727 
		5 0.085772689570243643
		4 2 4.3361339319326679e-05 3 0.35476270862311199 4 0.62755817255967439 
		5 0.017635757477894413
		4 2 9.1638936798569726e-05 3 0.36210020555661887 4 0.59312716873893967 
		5 0.044680986767642948
		4 2 0.00015039068543225796 3 0.3504252187284001 4 0.56139173467386427 
		5 0.08803265591230347
		4 2 0.00017360838700117301 3 0.33369576392502637 4 0.56133403428452955 
		5 0.10479659340344309
		4 2 0.00019401183446850329 3 0.3243095200238677 4 0.56821275933408932 
		5 0.10728370880757446
		4 2 0.00017874205899066117 3 0.32316344288293508 4 0.56843424583518287 
		5 0.1082235692228912
		4 2 0.00019975205956543292 3 0.32179153022102858 4 0.56592833740287174 
		5 0.11208038031653428
		4 2 0.00021132431009765433 3 0.3305565136923363 4 0.56238615180899953 
		5 0.1068460101885664
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		4 2 0.00034235643809322987 3 0.9931721041051228 4 0.0063738238801506362 
		5 0.00011171557663322569
		4 2 3.5675240041131354e-05 3 0.99487214162834237 4 0.0050568067585568133 
		5 3.5376373059717532e-05
		4 2 0.0030950853986820353 3 0.99639760495953245 4 0.00049872199223137653 
		5 8.5876495543048062e-06
		2 2 0.0092665494226163853 3 0.99073345057738371
		2 2 0.01158604669154974 3 0.98841395330845028
		4 2 0.008634948463008876 3 0.99135216174533658 4 1.286728331915496e-05 
		5 2.2508335497958027e-08
		4 2 0.0023215986842269401 3 0.99701948558932851 4 0.00065766908150069372 
		5 1.2466449438678379e-06
		4 2 0.00019584232090179185 3 0.99343960426828848 4 0.0063512201833999951 
		5 1.3333227409841945e-05
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 7 1
		1 7 1
		1 3 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		4 0 2.090297631263614e-10 1 0.20378341902880112 2 0.79579657316207886 
		7 0.00042000760009025024
		4 0 2.5027794265877543e-09 1 0.25692391168879031 2 0.74168998003005981 
		7 0.0013861057783704281
		4 0 1.6793914597732409e-11 1 0.17101654177020306 2 0.82889246940612793 
		7 9.0988806875106121e-05
		4 0 2.3044034643401064e-08 1 0.29711514000644801 2 0.6997685432434082 
		7 0.0031162937061091256
		4 0 1.5122355659305455e-07 1 0.49543705582618713 2 0.50051432692387177 
		7 0.0040484660263844837
		4 0 7.5218556183914877e-07 1 0.59961414337158203 2 0.39715261682336772 
		7 0.003232487619488392
		4 0 3.0532926362701887e-06 1 0.63184881210327148 2 0.36635803362947561 
		7 0.0017901009746166077
		4 0 1.5567153955986226e-05 1 0.55536377429962158 2 0.44435435632908943 
		7 0.00026630221733298809
		4 0 9.0349516028371602e-06 1 0.46118715405464172 2 0.53872741201606433 
		7 7.6398977691124521e-05
		4 0 2.7619531600927437e-06 1 0.34871357679367065 2 0.65126643857095801 
		7 1.7222682211291696e-05
		4 0 5.7253034111962061e-07 1 0.2737029734513331 2 0.72629314661026001 
		7 3.3074080657891165e-06
		4 0 8.3641548384873352e-08 1 0.20597654812469662 2 0.79402279853820801 
		7 5.6969554698040862e-07
		4 0 5.3453033322593795e-11 1 0.15076343855136692 2 0.8492201566696167 
		7 1.6404725563354157e-05
		4 0 6.7124760028818889e-10 1 0.14503462254768812 2 0.85496252775192261 
		7 2.8490291416616478e-06
		4 0 8.1187874193861537e-09 1 0.16335049909917729 2 0.83664900064468384 
		7 4.9213735144937966e-07
		4 0 8.6226283348475021e-06 1 0.60714203119277954 2 0.39207761332218211 
		7 0.00077173285670349158
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002;
	setAttr ".wl[9497:9612].w"
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999978
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 0.99999999999999978
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 0.99999999999999989
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999978
		1 7 1.0000000000000002
		1 7 0.99999999999999989
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 0.99999999999999989
		1 7 1
		1 7 1
		1 7 1.0000000000000002
		1 7 1
		1 7 1;
	setAttr -s 8 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2393512725830087 -40.812831878662109 -14.152165412902832 1;
	setAttr ".pm[1]" -type "matrix" -0.0008499343441825117 0.99988659348727826 0.01503547388881242 0
		 -0.94572608162522775 0.0040822722363795527 -0.32493916934883366 0 -0.32496369301593303 -0.014495617152221736 0.94561538668297673 0
		 37.415646434504957 -5.9813303064815706 -7.9456094185348789 1;
	setAttr ".pm[2]" -type "matrix" 0.0043004669795836843 0.99988659964122129 0.014432388440700123 0
		 -0.99987746974085867 0.0040822722615044722 0.015113955508986336 0 0.015053325555204243 -0.014495617241437053 0.99978157829531922 0
		 22.0108224030899 -5.9813303343202966 -16.382916545608971 1;
	setAttr ".pm[3]" -type "matrix" 0.0040647545743779058 0.9998687056600033 0.01568716931124034 0
		 -0.99999173325626445 0.0040642543361404946 6.3775034781445768e-05 0 1.0015585053091089e-08 -0.015687299226874889 0.99987694795731197 0
		 7.224741550091653 -5.9617985463048866 -16.283110334372953 0.99999999999999989;
	setAttr ".pm[4]" -type "matrix" -1.2090217380027858e-09 0.99997949834162059 -0.0064025262091953481 0
		 -0.77262759762404454 0.0040647037606113372 0.6348465481592227 0 0.6348595617707754 0.004946768859953655 0.77261175997462284 0
		 -8.2135906852209022 -6.2965029606344327 -14.162299514235803 1;
	setAttr ".pm[5]" -type "matrix" -1.4264964151544595e-09 0.99999999238600967 1.1885410891868887e-10 0
		 -0.32548434698004708 -5.766843570264012e-10 0.94554744759925802 0 0.94554742833362926 1.3101349492762687e-09 0.32548435361182515 0
		 -16.084024448649146 -6.2056994130913559 -6.7807118549456415 1;
	setAttr ".pm[6]" -type "matrix" 1.0000000137645575 5.9477198461348048e-10 -1.3626797532157509e-09 0
		 -5.9477189995688206e-10 1.0000000030603244 2.131030807527773e-08 0 1.3626798912589757e-09 -2.1310307574056392e-08 1.0000000099987638 0
		 -6.2056995472754872 2.9055088605131294e-07 -20.832681990245629 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 8 ".dpf[0:7]"  4 4 4 4 4 4 4 4;
	setAttr -s 8 ".lw";
	setAttr -s 8 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
	setAttr -s 8 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "282571F9-41A8-91C3-FC1E-948FFDC19C7A";
createNode objectSet -n "skinCluster1Set";
	rename -uid "FAA601E8-463F-A663-6A36-21AB8D0D7D0F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "3FAF4132-48C4-9BB1-E7F1-789D5E3C77E1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "89E44533-4848-6BC6-BAEE-70B1F84BCA2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "09AE47DE-4F17-9570-6800-C9A056213575";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId52";
	rename -uid "B2C4087D-40B3-A9E2-32EF-0C8621281D4B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "09A8B0F0-4DBA-F679-C8AF-3CAB180787D2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "58AB327C-4A55-2C6B-731F-A1AD34269A12";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2393512725830078 40.812831878662109 14.152165412902832 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2393512725830078 40.812831878662109
		 14.152165412902832 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8817841970012523e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000000271834264 1.0000000061505856 1.0000000056081169 0
		 0 0 0 1.8925676345825133 -7.9852995953546682 5.4333494218265663 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0.1111894794766207 0.12177521776071307 -0.69684701586716602 0.69800568226202486 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 0.99999997443905331 0.99999999999594447 1.0000000351070466 -1.0006480908170657e-24
		 5.9355796831930874e-15 -1.7561113173365082e-23 0 11.152678489685059 -8.9742142606041853e-09
		 1.1936795782929721e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.17217031725810492 0 0.98506719661921716 0.99999997281657438
		 0.9999999938494144 0.99999999439188314 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1.0000000055946909 0.99999998096072429 0.99999999879765833 -7.4575901010121015e-12
		 2.7539298904873255e-21 8.7972766647624411e-20 0 15.032044410705566 2.5341719833704701e-09
		 -3.8560166970569298e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00059595936453055599 0.0075277958292419584 -4.4863824650420435e-06 0.99997148814466763 1.0000000255609474
		 1.0000000000040556 0.99999996489295462 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 0.99999996610895991 1.0000000052788129 0.99999996814868997 4.6185277824405584e-14
		 -5.5679825578177104e-23 -9.2991354739742214e-21 0 4.5795550346374512 -1.6911325673163446e-09
		 -5.4022294193600828e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0097130155414127724 -0.33716064555588432 -0.0034787336611823809 0.94139059631459354 0.99999999440530907
		 1.0000000190392762 1.0000000012023418 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1.0000000003213161 1.0000000076139905 0.99999997994621115 1.4741918796801166e-09
		 1.7156996100942051e-19 1.0356047914593276e-16 0 1.9337219230343514 -2.3312471952863234e-09
		 -3.8934359558595588e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0030803624903901969 -0.27224115635537827 0.0008715243523734202 0.96222372897290243 1.0000000338910413
		 0.99999999472118706 1.0000000318513111 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 0.9999999862354424 0.99999999693967534 0.99999999000123585 0
		 0 0 0 3.6142641859769533 4.2063685867788081e-10 2.5389838054223901e-07 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.41064450343421932 0.41064450341139946 0.57564840987378718 0.57564840990577648 0.99999999967868392
		 0.99999999238600956 1.0000000200537893 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes no no no no no no no no;
	setAttr ".bp" yes;
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "837C27E2-42E6-5DE5-699B-6493725D4CA9";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "C46A975B-417A-8223-D3DB-7F9F320776DE";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "0168D39E-4E95-F07D-A7E1-7A9A2A681BC4";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "26185023-4A15-9374-EC3C-629EE2E29DE3";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -17467.36756981396 -1134.6709715396673 ;
	setAttr ".tgi[0].vh" -type "double2" -15727.259994690738 -284.72346898473211 ;
	setAttr -s 33 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -14344.5087890625;
	setAttr ".tgi[0].ni[0].y" -458.49261474609375;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" -10485.7138671875;
	setAttr ".tgi[0].ni[1].y" -345.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -10485.7138671875;
	setAttr ".tgi[0].ni[2].y" -447.14285278320313;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -13338.5712890625;
	setAttr ".tgi[0].ni[3].y" -488.57144165039063;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -13645.7138671875;
	setAttr ".tgi[0].ni[4].y" -527.14288330078125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -16717.142578125;
	setAttr ".tgi[0].ni[5].y" -471.42855834960938;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" -10881.4287109375;
	setAttr ".tgi[0].ni[6].y" -475.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -16410;
	setAttr ".tgi[0].ni[7].y" -631.4285888671875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -17320.396484375;
	setAttr ".tgi[0].ni[8].y" -452.387939453125;
	setAttr ".tgi[0].ni[8].nvs" 18306;
	setAttr ".tgi[0].ni[9].x" -10881.4287109375;
	setAttr ".tgi[0].ni[9].y" -697.14288330078125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -15795.7138671875;
	setAttr ".tgi[0].ni[10].y" -492.85714721679688;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -11802.857421875;
	setAttr ".tgi[0].ni[11].y" -491.42855834960938;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -14567.142578125;
	setAttr ".tgi[0].ni[12].y" -484.28570556640625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -12110;
	setAttr ".tgi[0].ni[13].y" -470;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -12417.142578125;
	setAttr ".tgi[0].ni[14].y" -445.71429443359375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -12724.2861328125;
	setAttr ".tgi[0].ni[15].y" -431.42855834960938;
	setAttr ".tgi[0].ni[15].nvs" 18305;
	setAttr ".tgi[0].ni[16].x" -14260;
	setAttr ".tgi[0].ni[16].y" -485.71429443359375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -17024.28515625;
	setAttr ".tgi[0].ni[17].y" -768.5714111328125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -10485.7138671875;
	setAttr ".tgi[0].ni[18].y" -548.5714111328125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -17024.28515625;
	setAttr ".tgi[0].ni[19].y" -667.14288330078125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -16717.142578125;
	setAttr ".tgi[0].ni[20].y" -738.5714111328125;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -16102.857421875;
	setAttr ".tgi[0].ni[21].y" -491.42855834960938;
	setAttr ".tgi[0].ni[21].nvs" 18305;
	setAttr ".tgi[0].ni[22].x" -11495.7138671875;
	setAttr ".tgi[0].ni[22].y" -565.71429443359375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -15181.4287109375;
	setAttr ".tgi[0].ni[23].y" -492.85714721679688;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -10485.7138671875;
	setAttr ".tgi[0].ni[24].y" -650;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -13031.4287109375;
	setAttr ".tgi[0].ni[25].y" -434.28570556640625;
	setAttr ".tgi[0].ni[25].nvs" 18305;
	setAttr ".tgi[0].ni[26].x" -15488.5712890625;
	setAttr ".tgi[0].ni[26].y" -492.85714721679688;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -13952.857421875;
	setAttr ".tgi[0].ni[27].y" -484.28570556640625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -10511.4287109375;
	setAttr ".tgi[0].ni[28].y" -898.5714111328125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -17074.181640625;
	setAttr ".tgi[0].ni[29].y" -48.8487548828125;
	setAttr ".tgi[0].ni[29].nvs" 18306;
	setAttr ".tgi[0].ni[30].x" -10485.7138671875;
	setAttr ".tgi[0].ni[30].y" -751.4285888671875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -11188.5712890625;
	setAttr ".tgi[0].ni[31].y" -585.71429443359375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -14874.2861328125;
	setAttr ".tgi[0].ni[32].y" -487.14285278320313;
	setAttr ".tgi[0].ni[32].nvs" 18304;
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
	setAttr -s 100 ".u";
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
	setAttr -s 2 ".sol";
connectAttr "layer3.di" "modelRN.phl[1]";
connectAttr "modelRN.phl[2]" "groupParts50.ig";
connectAttr "modelRN.phl[3]" "bodyShapeDeformed.iog.og[2].gco";
connectAttr "modelRN.phl[4]" "modelRN.phl[5]";
connectAttr "bodyShapeDeformed.iog.og[2]" "modelRN.phl[6]";
connectAttr "modelRN.phl[7]" "bodyShapeDeformed.iog.og[2].gid";
connectAttr "bodyShapeDeformed.iog" "modelRN.phl[8]";
connectAttr "input_scapula.init" "arm_GRP.init" -na;
connectAttr "input_shoulder.init" "arm_GRP.init" -na;
connectAttr "input_B_elbow.init" "arm_GRP.init" -na;
connectAttr "input_F_elbow.init" "arm_GRP.init" -na;
connectAttr "input_wrist.init" "arm_GRP.init" -na;
connectAttr "input_scapula.t" "motion_IK_GRP.t";
connectAttr "input_scapula.r" "motion_IK_GRP.r";
connectAttr "input_scapula.s" "motion_IK_GRP.s";
connectAttr "IK_shoulder_space_DCMX.ot" "IK_shoulder_space.t";
connectAttr "IK_shoulder_space_DCMX.or" "IK_shoulder_space.r";
connectAttr "IK_shoulder_space_DCMX.os" "IK_shoulder_space.s";
connectAttr "IK_upper_CTLaim_aimConstraint1.crx" "IK_upper_CTLaim.rx";
connectAttr "IK_upper_CTLaim_aimConstraint1.cry" "IK_upper_CTLaim.ry";
connectAttr "IK_upper_CTLaim_aimConstraint1.crz" "IK_upper_CTLaim.rz";
connectAttr "softIK_output.output_softik" "upper_softIK_output_LOC.tx";
connectAttr "stretch_output_mul_ctrlVal.ox" "upper_stretch_output_LOC.tx";
connectAttr "F_ankle_CTL.r" "ankle_space.r";
connectAttr "F_ankle_CTL.t" "ankle_space.t";
connectAttr "IK_shoulder.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "IK_shoulder.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "IK_shoulder.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "poleVec.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "poleVec.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "poleVec.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "poleVec.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_lower_CTLaim_aimConstraint1.crx" "IK_lower_CTLaim.rx";
connectAttr "IK_lower_CTLaim_aimConstraint1.cry" "IK_lower_CTLaim.ry";
connectAttr "IK_lower_CTLaim_aimConstraint1.crz" "IK_lower_CTLaim.rz";
connectAttr "softIK_output.output_extended_softik" "lower_softIK_output_LOC.tx";
connectAttr "extendedarm_stretch_output_mul_ctrlVal.ox" "lower_stretch_output_LOC.tx"
		;
connectAttr "IK_F_elbow.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikSCsolver.msg" "ikHandle2.hsv";
connectAttr "IK_lower_CTLaim.pim" "IK_lower_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lower_CTLaim.t" "IK_lower_CTLaim_aimConstraint1.ct";
connectAttr "IK_lower_CTLaim.rp" "IK_lower_CTLaim_aimConstraint1.crp";
connectAttr "IK_lower_CTLaim.rpt" "IK_lower_CTLaim_aimConstraint1.crt";
connectAttr "IK_lower_CTLaim.ro" "IK_lower_CTLaim_aimConstraint1.cro";
connectAttr "F_ankle.t" "IK_lower_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_ankle.rp" "IK_lower_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_ankle.rpt" "IK_lower_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_ankle.pm" "IK_lower_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lower_CTLaim_aimConstraint1.w0" "IK_lower_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_space_upVec.wm" "IK_lower_CTLaim_aimConstraint1.wum";
connectAttr "IK_upper_CTLaim.pim" "IK_upper_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upper_CTLaim.t" "IK_upper_CTLaim_aimConstraint1.ct";
connectAttr "IK_upper_CTLaim.rp" "IK_upper_CTLaim_aimConstraint1.crp";
connectAttr "IK_upper_CTLaim.rpt" "IK_upper_CTLaim_aimConstraint1.crt";
connectAttr "IK_upper_CTLaim.ro" "IK_upper_CTLaim_aimConstraint1.cro";
connectAttr "F_wrist_space.t" "IK_upper_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_wrist_space.rp" "IK_upper_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_wrist_space.rpt" "IK_upper_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_wrist_space.pm" "IK_upper_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upper_CTLaim_aimConstraint1.w0" "IK_upper_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_shoulder_space_upVec.wm" "IK_upper_CTLaim_aimConstraint1.wum";
connectAttr "soft_armLen.o1" "softIK_input.armLen";
connectAttr "ctrlLen.d" "softIK_input.ctrlLen";
connectAttr "IK_negate_val.ox" "softIK_input.softik_ctrl_value";
connectAttr "F_toe01_ctrlLen.d" "softIK_input.extended_ctrl_len";
connectAttr "extended_soft_Len.o1" "softIK_input.extended_len";
connectAttr "ctrllen_COND.ocr" "softIK_output.output_softik";
connectAttr "extended_ctrllen_COND.ocr" "softIK_output.output_extended_softik";
connectAttr "softIK_output.output_softik" "stretchIK_input.softik_len";
connectAttr "IK_negate_val.oy" "stretchIK_input.stretch_ctrl_value";
connectAttr "uparmLen.d" "stretchIK_input.uparm_len";
connectAttr "ctrlLen.d" "stretchIK_input.ctrl_len";
connectAttr "loarmLen.d" "stretchIK_input.loarm_len";
connectAttr "expandarmLen.d" "stretchIK_input.extendedarm_len";
connectAttr "softIK_output.output_extended_softik" "stretchIK_input.extended_softik_len"
		;
connectAttr "F_toe01_ctrlLen.d" "stretchIK_input.extended_ctrl_len";
connectAttr "loarm_plus_stretch.o1" "stretchIK_output.loarm_stretched";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchIK_output.stretch_ctrl_value"
		;
connectAttr "stretchedLen.o1" "stretchIK_output.stretched_len";
connectAttr "uparm_plus_stretch.o1" "stretchIK_output.uparm_stretched";
connectAttr "extendedarm_plus_stretch.o1" "stretchIK_output.extendedarm_stretched"
		;
connectAttr "extended_stretchedLen.o1" "stretchIK_output.expand_stretched_len";
connectAttr "scapula_CTL_local_DCMX.ot" "IK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "IK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "IK_scapula.r";
connectAttr "IK_shoulder_CTL_local_DCMX.ot" "IK_shoulder.t";
connectAttr "IK_scapula.s" "IK_shoulder.is";
connectAttr "stretchIK_output.uparm_stretched" "IK_B_elbow.tx";
connectAttr "stretchIK_output.loarm_stretched" "IK_F_elbow.tx";
connectAttr "IK_B_elbow.s" "IK_F_elbow.is";
connectAttr "IK_F_elbow.s" "IK_wrist.is";
connectAttr "stretchIK_output.extendedarm_stretched" "IK_wrist.tx";
connectAttr "IK_wrist.s" "IK_toe.is";
connectAttr "IK_toe.s" "IK_tiptoe.is";
connectAttr "IK_tiptoe.tx" "effector4.tx";
connectAttr "IK_tiptoe.ty" "effector4.ty";
connectAttr "IK_tiptoe.tz" "effector4.tz";
connectAttr "IK_toe.tx" "effector3.tx";
connectAttr "IK_toe.ty" "effector3.ty";
connectAttr "IK_toe.tz" "effector3.tz";
connectAttr "IK_wrist.tx" "effector2.tx";
connectAttr "IK_wrist.ty" "effector2.ty";
connectAttr "IK_wrist.tz" "effector2.tz";
connectAttr "poleVecShape.wm" "annotationShape1.dom" -na;
connectAttr "IK_F_elbow.tx" "effector1.tx";
connectAttr "IK_F_elbow.ty" "effector1.ty";
connectAttr "IK_F_elbow.tz" "effector1.tz";
connectAttr "input_scapula.t" "motion_FK_GRP.t";
connectAttr "input_scapula.r" "motion_FK_GRP.r";
connectAttr "input_scapula.s" "motion_FK_GRP.s";
connectAttr "scapula_CTL_local_DCMX.ot" "FK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "FK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "FK_scapula.r";
connectAttr "FK_scapula.s" "FK_shoulder.is";
connectAttr "input_shoulder.t" "FK_shoulder.t";
connectAttr "FK_shoulder_CTL.r" "FK_shoulder.r";
connectAttr "input_shoulder.r" "FK_shoulder.jo";
connectAttr "input_B_elbow.t" "FK_B_elbow.t";
connectAttr "FK_B_elbow_CTL.r" "FK_B_elbow.r";
connectAttr "input_B_elbow.r" "FK_B_elbow.jo";
connectAttr "input_F_elbow.t" "FK_F_elbow.t";
connectAttr "input_F_elbow.r" "FK_F_elbow.jo";
connectAttr "FK_B_elbow.s" "FK_F_elbow.is";
connectAttr "FK_F_elbow_CTL.r" "FK_F_elbow.r";
connectAttr "FK_F_elbow.s" "FK_wrist.is";
connectAttr "input_wrist.t" "FK_wrist.t";
connectAttr "input_wrist.r" "FK_wrist.jo";
connectAttr "FK_F_wrist_CTL.r" "FK_wrist.r";
connectAttr "FK_wrist.s" "FK_toe.is";
connectAttr "input_toe.t" "FK_toe.t";
connectAttr "input_toe.r" "FK_toe.jo";
connectAttr "FK_F_toe_CTL.r" "FK_toe.r";
connectAttr "FK_toe.s" "FK_tiptoe.is";
connectAttr "input_tiptoe.t" "FK_tiptoe.t";
connectAttr "input_tiptoe.r" "FK_tiptoe.jo";
connectAttr "input_scapula.t" "arm_CTL_GRP.t";
connectAttr "input_scapula.r" "arm_CTL_GRP.r";
connectAttr "input_scapula.s" "arm_CTL_GRP.s";
connectAttr "makeNurbCircle1.oc" "scapula_CTLShape.cr";
connectAttr "arm_switch_CTL.FK_IK" "IK_arm_CTL_GRP.v";
connectAttr "input_shoulder.t" "IK_arm_CTL_GRP.t";
connectAttr "scapula_CTL.t" "scapula_space.t";
connectAttr "scapula_CTL.r" "scapula_space.r";
connectAttr "scapula_CTL.s" "scapula_space.s";
connectAttr "decomposeMatrix5.ot" "input_F_toe_space.t";
connectAttr "decomposeMatrix5.or" "input_F_toe_space.r";
connectAttr "decomposeMatrix5.os" "input_F_toe_space.s";
connectAttr "unitConversion1.o" "F_heel.rx";
connectAttr "unitConversion4.o" "F_heel.rz";
connectAttr "unitConversion5.o" "F_heel.ry";
connectAttr "in_out_condition.oc" "F_heel.rp";
connectAttr "unitConversion3.o" "F_toe.rx";
connectAttr "unitConversion6.o" "F_toe.ry";
connectAttr "unitConversion2.o" "F_ball.rx";
connectAttr "F_ankle_CTL_spcGRP_aimConstraint1.crx" "F_ankle_CTL_spcGRP.rx";
connectAttr "F_ankle_CTL_spcGRP_aimConstraint1.cry" "F_ankle_CTL_spcGRP.ry";
connectAttr "F_ankle_CTL_spcGRP_aimConstraint1.crz" "F_ankle_CTL_spcGRP.rz";
connectAttr "IK_wrist.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikSCsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_parentConstraint1.ctx" "ikHandle3.tx";
connectAttr "ikHandle3_parentConstraint1.cty" "ikHandle3.ty";
connectAttr "ikHandle3_parentConstraint1.ctz" "ikHandle3.tz";
connectAttr "ikHandle3_parentConstraint1.crx" "ikHandle3.rx";
connectAttr "ikHandle3_parentConstraint1.cry" "ikHandle3.ry";
connectAttr "ikHandle3_parentConstraint1.crz" "ikHandle3.rz";
connectAttr "ikHandle3.ro" "ikHandle3_parentConstraint1.cro";
connectAttr "ikHandle3.pim" "ikHandle3_parentConstraint1.cpim";
connectAttr "ikHandle3.rp" "ikHandle3_parentConstraint1.crp";
connectAttr "ikHandle3.rpt" "ikHandle3_parentConstraint1.crt";
connectAttr "F_ball.t" "ikHandle3_parentConstraint1.tg[0].tt";
connectAttr "F_ball.rp" "ikHandle3_parentConstraint1.tg[0].trp";
connectAttr "F_ball.rpt" "ikHandle3_parentConstraint1.tg[0].trt";
connectAttr "F_ball.r" "ikHandle3_parentConstraint1.tg[0].tr";
connectAttr "F_ball.ro" "ikHandle3_parentConstraint1.tg[0].tro";
connectAttr "F_ball.s" "ikHandle3_parentConstraint1.tg[0].ts";
connectAttr "F_ball.pm" "ikHandle3_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle3_parentConstraint1.w0" "ikHandle3_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_toe.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikSCsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_parentConstraint1.ctx" "ikHandle4.tx";
connectAttr "ikHandle4_parentConstraint1.cty" "ikHandle4.ty";
connectAttr "ikHandle4_parentConstraint1.ctz" "ikHandle4.tz";
connectAttr "ikHandle4_parentConstraint1.crx" "ikHandle4.rx";
connectAttr "ikHandle4_parentConstraint1.cry" "ikHandle4.ry";
connectAttr "ikHandle4_parentConstraint1.crz" "ikHandle4.rz";
connectAttr "ikHandle4.ro" "ikHandle4_parentConstraint1.cro";
connectAttr "ikHandle4.pim" "ikHandle4_parentConstraint1.cpim";
connectAttr "ikHandle4.rp" "ikHandle4_parentConstraint1.crp";
connectAttr "ikHandle4.rpt" "ikHandle4_parentConstraint1.crt";
connectAttr "F_toe.t" "ikHandle4_parentConstraint1.tg[0].tt";
connectAttr "F_toe.rp" "ikHandle4_parentConstraint1.tg[0].trp";
connectAttr "F_toe.rpt" "ikHandle4_parentConstraint1.tg[0].trt";
connectAttr "F_toe.r" "ikHandle4_parentConstraint1.tg[0].tr";
connectAttr "F_toe.ro" "ikHandle4_parentConstraint1.tg[0].tro";
connectAttr "F_toe.s" "ikHandle4_parentConstraint1.tg[0].ts";
connectAttr "F_toe.pm" "ikHandle4_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle4_parentConstraint1.w0" "ikHandle4_parentConstraint1.tg[0].tw"
		;
connectAttr "F_ankle_CTL_spcGRP.pim" "F_ankle_CTL_spcGRP_aimConstraint1.cpim";
connectAttr "F_ankle_CTL_spcGRP.t" "F_ankle_CTL_spcGRP_aimConstraint1.ct";
connectAttr "F_ankle_CTL_spcGRP.rp" "F_ankle_CTL_spcGRP_aimConstraint1.crp";
connectAttr "F_ankle_CTL_spcGRP.rpt" "F_ankle_CTL_spcGRP_aimConstraint1.crt";
connectAttr "F_ankle_CTL_spcGRP.ro" "F_ankle_CTL_spcGRP_aimConstraint1.cro";
connectAttr "IK_shoulder_CTL.t" "F_ankle_CTL_spcGRP_aimConstraint1.tg[0].tt";
connectAttr "IK_shoulder_CTL.rp" "F_ankle_CTL_spcGRP_aimConstraint1.tg[0].trp";
connectAttr "IK_shoulder_CTL.rpt" "F_ankle_CTL_spcGRP_aimConstraint1.tg[0].trt";
connectAttr "IK_shoulder_CTL.pm" "F_ankle_CTL_spcGRP_aimConstraint1.tg[0].tpm";
connectAttr "F_ankle_CTL_spcGRP_aimConstraint1.w0" "F_ankle_CTL_spcGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_ankle_aim.wm" "F_ankle_CTL_spcGRP_aimConstraint1.wum";
connectAttr "upper_poleVec_offGRP_space_DCMX.ot" "poleVec_offGRP.t";
connectAttr "upper_poleVec_offGRP_space_DCMX.or" "poleVec_offGRP.r";
connectAttr "FKIK_RVS.ox" "FK_arm_CTL_GRP.v";
connectAttr "scapula_CTL.t" "FK_scapula_space.t";
connectAttr "scapula_CTL.r" "FK_scapula_space.r";
connectAttr "scapula_CTL.s" "FK_scapula_space.s";
connectAttr "input_shoulder.t" "FK_shoulder_CTL_offGRP.t";
connectAttr "input_shoulder.r" "FK_shoulder_CTL_offGRP.r";
connectAttr "input_shoulder.s" "FK_shoulder_CTL_offGRP.s";
connectAttr "makeNurbCircle7.oc" "FK_shoulder_CTLShape.cr";
connectAttr "input_B_elbow.t" "FK_B_elbow_CTL_offGRP.t";
connectAttr "input_B_elbow.r" "FK_B_elbow_CTL_offGRP.r";
connectAttr "input_B_elbow.s" "FK_B_elbow_CTL_offGRP.s";
connectAttr "makeNurbCircle8.oc" "FK_B_elbow_CTLShape.cr";
connectAttr "input_F_elbow.t" "FK_F_elbow_CTL_offGRP.t";
connectAttr "input_F_elbow.r" "FK_F_elbow_CTL_offGRP.r";
connectAttr "input_F_elbow.s" "FK_F_elbow_CTL_offGRP.s";
connectAttr "makeNurbCircle9.oc" "FK_F_elbow_CTLShape.cr";
connectAttr "input_wrist.t" "FK_F_wrist_CTL_offGRP.t";
connectAttr "input_wrist.r" "FK_F_wrist_CTL_offGRP.r";
connectAttr "input_wrist.s" "FK_F_wrist_CTL_offGRP.s";
connectAttr "makeNurbCircle10.oc" "FK_F_wrist_CTLShape.cr";
connectAttr "input_toe.t" "FK_F_toe_CTL_offGRP.t";
connectAttr "input_toe.r" "FK_F_toe_CTL_offGRP.r";
connectAttr "input_toe.s" "FK_F_toe_CTL_offGRP.s";
connectAttr "arm_switch_CTL_space_DCMX.ot" "arm_switch_CTL_offGRP.t";
connectAttr "arm_switch_CTL_space_DCMX.os" "arm_switch_CTL_offGRP.s";
connectAttr "input_scapula.t" "output.t";
connectAttr "input_scapula.r" "output.r";
connectAttr "input_scapula.s" "output.s";
connectAttr "scapula_PRBL.ot" "scapula.t";
connectAttr "input_scapula.r" "scapula.jo";
connectAttr "scapula_PRBL.or" "scapula.r";
connectAttr "shoulder_PRBL.ot" "shoulder.t";
connectAttr "input_shoulder.r" "shoulder.jo";
connectAttr "scapula.s" "shoulder.is";
connectAttr "shoulder_PRBL.or" "shoulder.r";
connectAttr "B_elbow_PRBL.ot" "B_elbow.t";
connectAttr "input_B_elbow.r" "B_elbow.jo";
connectAttr "B_elbow_PRBL.or" "B_elbow.r";
connectAttr "shoulder.s" "B_elbow.is";
connectAttr "F_elbow_PRBL.ot" "F_elbow.t";
connectAttr "input_F_elbow.r" "F_elbow.jo";
connectAttr "B_elbow.s" "F_elbow.is";
connectAttr "F_elbow_PRBL.or" "F_elbow.r";
connectAttr "F_elbow.s" "wrist.is";
connectAttr "wrist_PRBL.ot" "wrist.t";
connectAttr "input_wrist.r" "wrist.jo";
connectAttr "wrist_PRBL.or" "wrist.r";
connectAttr "wrist.s" "toe.is";
connectAttr "toe_PRBL.ot" "toe.t";
connectAttr "input_toe.r" "toe.jo";
connectAttr "toe_PRBL.or" "toe.r";
connectAttr "toe.s" "tiptoe.is";
connectAttr "tiptoe_PRBL.ot" "tiptoe.t";
connectAttr "input_tiptoe.r" "tiptoe.jo";
connectAttr "tiptoe_PRBL.or" "tiptoe.r";
connectAttr "skinCluster1GroupId.id" "bodyShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster1Set.mwc" "bodyShapeDeformed.iog.og[3].gco";
connectAttr "groupId52.id" "bodyShapeDeformed.iog.og[4].gid";
connectAttr "tweakSet2.mwc" "bodyShapeDeformed.iog.og[4].gco";
connectAttr "skinCluster1.og[0]" "bodyShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "bodyShapeDeformed.twl";
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
connectAttr "sharedReferenceNode.sr" "fit_q_legRN.sr";
connectAttr "sharedReferenceNode.sr" "fit_q_armRN.sr";
connectAttr "IK_shoulder_space_MTMX.o" "IK_shoulder_space_DCMX.imat";
connectAttr "input_shoulder.wm" "IK_shoulder_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_shoulder_space_MTMX.i[1]";
connectAttr "stretchIK_output.stretched_len" "stretch_output_mul_ctrlVal.i1x";
connectAttr "stretchIK_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "uparmLen.d" "soft_armLen.i1[0]";
connectAttr "loarmLen.d" "soft_armLen.i1[1]";
connectAttr "input_shoulder_local_MTMX.o" "uparmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "uparmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "input_B_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "loarmLen.im1";
connectAttr "input_wrist_local_MTMX.o" "loarmLen.im2";
connectAttr "input_F_elbow.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "input_shoulder_local_dist_MTMX.o" "ctrlLen.im1";
connectAttr "wrist_space_local_MTMX.o" "ctrlLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_dist_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_dist_MTMX.i[1]";
connectAttr "F_foot_CTL.softIK" "IK_negate_val.i1x";
connectAttr "F_foot_CTL.stretch" "IK_negate_val.i1y";
connectAttr "multMatrix2.o" "F_toe01_ctrlLen.im1";
connectAttr "F_toe_CTL_local_MTMX.o" "F_toe01_ctrlLen.im2";
connectAttr "input_B_elbow.wm" "input_elbow_local_dist_MTMX.i[0]";
connectAttr "input_shoulder.wim" "input_elbow_local_dist_MTMX.i[1]";
connectAttr "F_ankle.wm" "F_toe_CTL_local_MTMX.i[0]";
connectAttr "input_B_elbow.wim" "F_toe_CTL_local_MTMX.i[1]";
connectAttr "loarmLen.d" "extended_soft_Len.i1[0]";
connectAttr "expandarmLen.d" "extended_soft_Len.i1[1]";
connectAttr "uparmLen.d" "extended_soft_Len.i1[2]";
connectAttr "input_wrist_local_MTMX.o" "expandarmLen.im1";
connectAttr "input_F_toe01_local_MTMX.o" "expandarmLen.im2";
connectAttr "input_wrist.wm" "input_F_toe01_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_F_toe01_local_MTMX.i[1]";
connectAttr "softikV_COND.ocr" "ctrllen_COND.ctr";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.cfr";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.ft";
connectAttr "armlen_minus_softikV.o1" "ctrllen_COND.st";
connectAttr "result_softik_len.o1" "softikV_COND.ctr";
connectAttr "softIK_input.armLen" "softikV_COND.cfr";
connectAttr "softIK_input.softik_ctrl_value" "softikV_COND.ft";
connectAttr "softIK_input.armLen" "result_softik_len.i1[0]";
connectAttr "mult_softikV.ox" "result_softik_len.i1[1]";
connectAttr "power_val.ox" "mult_softikV.i2x";
connectAttr "softIK_input.softik_ctrl_value" "mult_softikV.i1x";
connectAttr "negate_val.ox" "power_val.i2x";
connectAttr "divide_softikV.ox" "negate_val.i1x";
connectAttr "ctrlLen_minue_dif.o1" "divide_softikV.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_softikV.i2x";
connectAttr "softIK_input.ctrlLen" "ctrlLen_minue_dif.i1[0]";
connectAttr "armlen_minus_softikV.o1" "ctrlLen_minue_dif.i1[1]";
connectAttr "softIK_input.armLen" "armlen_minus_softikV.i1[0]";
connectAttr "softIK_input.softik_ctrl_value" "armlen_minus_softikV.i1[1]";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.ft";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.cfr";
connectAttr "extended_softikV_COND.ocr" "extended_ctrllen_COND.ctr";
connectAttr "softIK_input.extended_ctrl_len" "extended_ctrllen_COND.cfr";
connectAttr "softIK_input.extended_ctrl_len" "extended_ctrllen_COND.ft";
connectAttr "extended_armlen_minus_softikV.o1" "extended_ctrllen_COND.st";
connectAttr "extended_result_softik_len.o1" "extended_softikV_COND.ctr";
connectAttr "softIK_input.extended_len" "extended_softikV_COND.cfr";
connectAttr "softIK_input.softik_ctrl_value" "extended_softikV_COND.ft";
connectAttr "softIK_input.extended_len" "extended_result_softik_len.i1[0]";
connectAttr "extended_mult_softikV.ox" "extended_result_softik_len.i1[1]";
connectAttr "extended_power_val.ox" "extended_mult_softikV.i2x";
connectAttr "softIK_input.softik_ctrl_value" "extended_mult_softikV.i1x";
connectAttr "extended_negate_val.ox" "extended_power_val.i2x";
connectAttr "divide_expand_arm_softikV.ox" "extended_negate_val.i1x";
connectAttr "extended_ctrlLen_minue_dif.o1" "divide_expand_arm_softikV.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_expand_arm_softikV.i2x";
connectAttr "softIK_input.extended_ctrl_len" "extended_ctrlLen_minue_dif.i1[0]";
connectAttr "extended_armlen_minus_softikV.o1" "extended_ctrlLen_minue_dif.i1[1]"
		;
connectAttr "softIK_input.extended_len" "extended_armlen_minus_softikV.i1[0]";
connectAttr "softIK_input.softik_ctrl_value" "extended_armlen_minus_softikV.i1[1]"
		;
connectAttr "stretchIK_input.loarm_len" "loarm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch.i1[1]";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_loarm.i2x";
connectAttr "stretchedLen.o1" "stretched_loarmLen.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretchIK_input.ctrl_len" "stretchedLen.i1[0]";
connectAttr "stretchIK_input.softik_len" "stretchedLen.i1[1]";
connectAttr "stretch_armLen.o1" "loarm_ratio3.i2x";
connectAttr "stretchIK_input.loarm_len" "loarm_ratio3.i1x";
connectAttr "stretchIK_input.uparm_len" "stretch_armLen.i1[0]";
connectAttr "stretchIK_input.loarm_len" "stretch_armLen.i1[1]";
connectAttr "stretchIK_input.extendedarm_len" "stretch_armLen.i1[2]";
connectAttr "stretchIK_input.uparm_len" "uparm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch.i1[1]";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_uparm.i2x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "stretchedLen.o1" "stretched_uparmLen.i1x";
connectAttr "stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_armLen.o1" "uparm_ratio.i2x";
connectAttr "stretchIK_input.extendedarm_len" "extendedarm_plus_stretch.i1[0]";
connectAttr "extended_stretchCtrl_arm.ox" "extendedarm_plus_stretch.i1[1]";
connectAttr "stretchIK_input.stretch_ctrl_value" "extended_stretchCtrl_arm.i1x";
connectAttr "extended_stretched_arm.ox" "extended_stretchCtrl_arm.i2x";
connectAttr "extended_stretchedLen.o1" "extended_stretched_arm.i1x";
connectAttr "extendedarm_ratio.ox" "extended_stretched_arm.i2x";
connectAttr "stretchIK_input.extended_ctrl_len" "extended_stretchedLen.i1[0]";
connectAttr "stretchIK_input.extended_softik_len" "extended_stretchedLen.i1[1]";
connectAttr "extended_stretch_armLen.o1" "extendedarm_ratio.i2x";
connectAttr "stretchIK_input.extendedarm_len" "extendedarm_ratio.i1x";
connectAttr "stretchIK_input.loarm_len" "extended_stretch_armLen.i1[0]";
connectAttr "stretchIK_input.extendedarm_len" "extended_stretch_armLen.i1[1]";
connectAttr "stretchIK_input.uparm_len" "extended_stretch_armLen.i1[2]";
connectAttr "IK_elbow_space_MTMX.o" "IK_elbow_space_DCMX.imat";
connectAttr "input_B_elbow.wm" "IK_elbow_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_elbow_space_MTMX.i[1]";
connectAttr "stretchIK_output.expand_stretched_len" "extendedarm_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "stretchIK_output.stretch_ctrl_value" "extendedarm_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "wrist_CTL_offGRP_space_MTMX.o" "wrist_CTL_offGRP_space_DCMX.imat";
connectAttr "input_F_elbow.wm" "wrist_CTL_offGRP_space_MTMX.i[0]";
connectAttr "IK_arm_CTL_GRP.wim" "wrist_CTL_offGRP_space_MTMX.i[1]";
connectAttr "upper_poleVec_offGRP_space_MTMX.o" "upper_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "input_B_elbow.wm" "upper_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "poleVec_GRP.wim" "upper_poleVec_offGRP_space_MTMX.i[1]";
connectAttr "lower_poleVec_offGRP_space_MTMX.o" "lower_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "input_F_elbow.wm" "lower_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "arm_switch_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "FK_F_wrist_CTL.wm" "arm_switch_space_CHOI.i[0]";
connectAttr "F_ankle_CTL.wm" "arm_switch_space_CHOI.i[1]";
connectAttr "arm_switch_CTL.FK_IK" "arm_switch_space_CHOI.s";
connectAttr "arm_switch_space_CHOI.o" "arm_switch_CTL_space_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "arm_switch_CTL_space_MTMX.i[1]";
connectAttr "arm_switch_CTL_space_MTMX.o" "arm_switch_CTL_space_DCMX.imat";
connectAttr "arm_GRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_motion_GRP.iog" "arm_SET.dsm" -na;
connectAttr "input_scapula.iog" "arm_SET.dsm" -na;
connectAttr "input_shoulder.iog" "arm_SET.dsm" -na;
connectAttr "input_B_elbow.iog" "arm_SET.dsm" -na;
connectAttr "input_F_elbow.iog" "arm_SET.dsm" -na;
connectAttr "input_wrist.iog" "arm_SET.dsm" -na;
connectAttr "motion_IK_GRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_space.iog" "arm_SET.dsm" -na;
connectAttr "IK_upper_CTLaim.iog" "arm_SET.dsm" -na;
connectAttr "upper_softIK_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "upper_stretch_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_space_upVec.iog" "arm_SET.dsm" -na;
connectAttr "softIK_input.iog" "arm_SET.dsm" -na;
connectAttr "softIK_output.iog" "arm_SET.dsm" -na;
connectAttr "stretchIK_input.iog" "arm_SET.dsm" -na;
connectAttr "stretchIK_output.iog" "arm_SET.dsm" -na;
connectAttr "IK_wrist_space.iog" "arm_SET.dsm" -na;
connectAttr "IK_lower_CTLaim.iog" "arm_SET.dsm" -na;
connectAttr "lower_softIK_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "lower_stretch_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "IK_wrist_space_upVec.iog" "arm_SET.dsm" -na;
connectAttr "motion_FK_GRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_CTL_GRP.iog" "arm_SET.dsm" -na;
connectAttr "scapula_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "scapula_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "scapula_CTL.iog" "arm_SET.dsm" -na;
connectAttr "IK_arm_CTL_GRP.iog" "arm_SET.dsm" -na;
connectAttr "scapula_space.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_CTL.iog" "arm_SET.dsm" -na;
connectAttr "poleVec_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "poleVec_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "poleVec.iog" "arm_SET.dsm" -na;
connectAttr "FK_arm_CTL_GRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_scapula_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_scapula_space.iog" "arm_SET.dsm" -na;
connectAttr "FK_shoulder_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_shoulder_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_shoulder_CTL.iog" "arm_SET.dsm" -na;
connectAttr "FK_B_elbow_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_B_elbow_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_B_elbow_CTL.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_elbow_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_elbow_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_elbow_CTL.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_wrist_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_wrist_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_wrist_CTL.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_CTL.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_toe_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_toe_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_toe_CTL.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_space_CHOI.msg" "arm_SET.dnsm" -na;
connectAttr "ctrllen_COND.msg" "arm_SET.dnsm" -na;
connectAttr "extended_ctrllen_COND.msg" "arm_SET.dnsm" -na;
connectAttr "extended_softikV_COND.msg" "arm_SET.dnsm" -na;
connectAttr "for_zerodivide_COND.msg" "arm_SET.dnsm" -na;
connectAttr "softikV_COND.msg" "arm_SET.dnsm" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_elbow_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_shoulder_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "wrist_CTL_offGRP_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "lower_poleVec_offGRP_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "ctrlLen.msg" "arm_SET.dnsm" -na;
connectAttr "expandarmLen.msg" "arm_SET.dnsm" -na;
connectAttr "F_toe01_ctrlLen.msg" "arm_SET.dnsm" -na;
connectAttr "loarmLen.msg" "arm_SET.dnsm" -na;
connectAttr "uparmLen.msg" "arm_SET.dnsm" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "F_toe_CTL_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_elbow_local_dist_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_shoulder_local_dist_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_elbow_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_elbow_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_F_toe01_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_shoulder_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_shoulder_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "wrist_CTL_offGRP_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "lower_poleVec_offGRP_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_wrist_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "divide_expand_arm_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "divide_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "extended_mult_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "extended_negate_val.msg" "arm_SET.dnsm" -na;
connectAttr "extended_power_val.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretchCtrl_arm.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretched_arm.msg" "arm_SET.dnsm" -na;
connectAttr "extendedarm_ratio.msg" "arm_SET.dnsm" -na;
connectAttr "extendedarm_stretch_output_mul_ctrlVal.msg" "arm_SET.dnsm" -na;
connectAttr "IK_negate_val.msg" "arm_SET.dnsm" -na;
connectAttr "loarm_ratio3.msg" "arm_SET.dnsm" -na;
connectAttr "mult_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "negate_val.msg" "arm_SET.dnsm" -na;
connectAttr "power_val.msg" "arm_SET.dnsm" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" "arm_SET.dnsm" -na;
connectAttr "stretchCtrl_loarm.msg" "arm_SET.dnsm" -na;
connectAttr "stretchCtrl_uparm.msg" "arm_SET.dnsm" -na;
connectAttr "stretched_loarmLen.msg" "arm_SET.dnsm" -na;
connectAttr "stretched_uparmLen.msg" "arm_SET.dnsm" -na;
connectAttr "uparm_ratio.msg" "arm_SET.dnsm" -na;
connectAttr "armlen_minus_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "ctrlLen_minue_dif.msg" "arm_SET.dnsm" -na;
connectAttr "extended_armlen_minus_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "extended_ctrlLen_minue_dif.msg" "arm_SET.dnsm" -na;
connectAttr "extended_result_softik_len.msg" "arm_SET.dnsm" -na;
connectAttr "extended_soft_Len.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretch_armLen.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretchedLen.msg" "arm_SET.dnsm" -na;
connectAttr "extendedarm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "loarm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "result_softik_len.msg" "arm_SET.dnsm" -na;
connectAttr "soft_armLen.msg" "arm_SET.dnsm" -na;
connectAttr "stretch_armLen.msg" "arm_SET.dnsm" -na;
connectAttr "stretchedLen.msg" "arm_SET.dnsm" -na;
connectAttr "uparm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "FKIK_RVS.msg" "arm_SET.dnsm" -na;
connectAttr "modelRNfosterParent1.msg" "modelRN.fp";
connectAttr "layerManager.dli[1]" "layer3.id";
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
connectAttr "F_foot_CTL.roll" "ball_bk_condition.ft";
connectAttr "F_foot_CTL.roll" "ball_bk_condition.cfr";
connectAttr "ball_bk_condition.ocr" "unitConversion1.i";
connectAttr "F_foot_CTL.roll" "ball_fn_condition.ft";
connectAttr "F_foot_CTL.roll" "ball_fn_condition.ctr";
connectAttr "after_ball_start.o1" "ball_remap.i";
connectAttr "F_foot_CTL.rollStartAngle" "ball_remap.omx";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.ft";
connectAttr "F_foot_CTL.rollStartAngle" "ball_start_conditon.st";
connectAttr "backto_zero_ball.o1" "ball_start_conditon.ctr";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.cfr";
connectAttr "ball_start_conditon.ocr" "unitConversion2.i";
connectAttr "F_foot_CTL.rollStartAngle" "toe_fn_condition.st";
connectAttr "F_foot_CTL.roll" "toe_fn_condition.ft";
connectAttr "plusMinusAverage1.o1" "toe_fn_condition.ctr";
connectAttr "F_foot_CTL.roll" "plusMinusAverage1.i1[0]";
connectAttr "F_foot_CTL.rollStartAngle" "plusMinusAverage1.i1[1]";
connectAttr "toe_fn_condition.ocr" "unitConversion3.i";
connectAttr "F_foot_CTL.roll" "after_ball_start.i1[0]";
connectAttr "F_foot_CTL.rollStartAngle" "after_ball_start.i1[1]";
connectAttr "F_foot_CTL.rollStartAngle" "backto_zero_ball.i1[0]";
connectAttr "ball_remap.ov" "backto_zero_ball.i1[1]";
connectAttr "F_foot_CTL.bank" "in_out_condition.ft";
connectAttr "in_out_default_condition.oc" "in_out_condition.ct";
connectAttr "F_heel_out.t" "in_out_condition.cf";
connectAttr "F_foot_CTL.bank" "unitConversion4.i";
connectAttr "F_foot_CTL.bank" "in_out_default_condition.ft";
connectAttr "F_heel_in.t" "in_out_default_condition.cf";
connectAttr "F_wrist_space.wm" "wrist_space_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "wrist_space_local_MTMX.i[1]";
connectAttr "upper_stretch_output_LOC.wm" "multMatrix2.i[0]";
connectAttr "input_B_elbow.wim" "multMatrix2.i[1]";
connectAttr "F_foot_CTL.heelTwist" "unitConversion5.i";
connectAttr "F_foot_CTL.toeTwist" "unitConversion6.i";
connectAttr "input_wrist_local_MTMX1.o" "input_wrist_local_DCMX.imat";
connectAttr "input_F_elbow.wm" "input_wrist_local_MTMX1.i[0]";
connectAttr "motion_IK_GRP.wim" "input_wrist_local_MTMX1.i[1]";
connectAttr "IK_shoulder_CTL.wm" "IK_shoulder_CTL_local_MTMX.i[0]";
connectAttr "IK_scapula.wim" "IK_shoulder_CTL_local_MTMX.i[1]";
connectAttr "IK_shoulder_CTL_local_MTMX.o" "IK_shoulder_CTL_local_DCMX.imat";
connectAttr "scapula_CTL.wm" "scapula_CTL_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "scapula_CTL_local_MTMX.i[1]";
connectAttr "scapula_CTL_local_MTMX.o" "scapula_CTL_local_DCMX.imat";
connectAttr "IK_scapula.t" "scapula_PRBL.it1";
connectAttr "IK_scapula.r" "scapula_PRBL.ir1";
connectAttr "FK_scapula.t" "scapula_PRBL.it2";
connectAttr "FK_scapula.r" "scapula_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "scapula_PRBL.w";
connectAttr "IK_scapula.s" "scapula_BLCL.c1";
connectAttr "FK_scapula.s" "scapula_BLCL.c2";
connectAttr "IK_shoulder.t" "shoulder_PRBL.it1";
connectAttr "IK_shoulder.r" "shoulder_PRBL.ir1";
connectAttr "FK_shoulder.t" "shoulder_PRBL.it2";
connectAttr "FK_shoulder.r" "shoulder_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "shoulder_PRBL.w";
connectAttr "IK_shoulder.s" "shoulder_BLCL.c1";
connectAttr "FK_shoulder.s" "shoulder_BLCL.c2";
connectAttr "IK_B_elbow.t" "B_elbow_PRBL.it1";
connectAttr "IK_B_elbow.r" "B_elbow_PRBL.ir1";
connectAttr "FK_B_elbow.t" "B_elbow_PRBL.it2";
connectAttr "FK_B_elbow.r" "B_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "B_elbow_PRBL.w";
connectAttr "IK_B_elbow.s" "B_elbow_BLCL.c1";
connectAttr "FK_B_elbow.s" "B_elbow_BLCL.c2";
connectAttr "IK_F_elbow.t" "F_elbow_PRBL.it1";
connectAttr "IK_F_elbow.r" "F_elbow_PRBL.ir1";
connectAttr "FK_F_elbow.t" "F_elbow_PRBL.it2";
connectAttr "FK_F_elbow.r" "F_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "F_elbow_PRBL.w";
connectAttr "IK_F_elbow.s" "F_elbow_BLCL.c1";
connectAttr "FK_F_elbow.s" "F_elbow_BLCL.c2";
connectAttr "IK_wrist.t" "wrist_PRBL.it1";
connectAttr "IK_wrist.r" "wrist_PRBL.ir1";
connectAttr "FK_wrist.t" "wrist_PRBL.it2";
connectAttr "FK_wrist.r" "wrist_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "wrist_PRBL.w";
connectAttr "IK_wrist.s" "wrist_BLCL.c1";
connectAttr "FK_wrist.s" "wrist_BLCL.c2";
connectAttr "IK_toe.t" "toe_PRBL.it1";
connectAttr "IK_toe.r" "toe_PRBL.ir1";
connectAttr "FK_toe.t" "toe_PRBL.it2";
connectAttr "FK_toe.r" "toe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "toe_PRBL.w";
connectAttr "IK_toe.s" "toe_BLCL.c1";
connectAttr "FK_toe.s" "toe_BLCL.c2";
connectAttr "IK_tiptoe.t" "tiptoe_PRBL.it1";
connectAttr "IK_tiptoe.r" "tiptoe_PRBL.ir1";
connectAttr "FK_tiptoe.t" "tiptoe_PRBL.it2";
connectAttr "FK_tiptoe.r" "tiptoe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "tiptoe_PRBL.w";
connectAttr "IK_tiptoe.s" "tiptoe_BLCL.c1";
connectAttr "FK_tiptoe.s" "tiptoe_BLCL.c2";
connectAttr "B_elbow.wm" "multMatrix5.i[0]";
connectAttr "multMatrix6.o" "decomposeMatrix4.imat";
connectAttr "input_F_elbow.wm" "multMatrix6.i[0]";
connectAttr "motion_IK_GRP.wim" "multMatrix6.i[1]";
connectAttr "input_wrist.wm" "multMatrix7.i[0]";
connectAttr "IK_arm_CTL_GRP.wim" "multMatrix7.i[1]";
connectAttr "multMatrix7.o" "decomposeMatrix5.imat";
connectAttr "input_toe.wm" "input_toe_local_MTMX.i[0]";
connectAttr "F_toe_CTL.wim" "input_toe_local_MTMX.i[1]";
connectAttr "input_toe_local_MTMX.o" "input_toe_local_DCMX.imat";
connectAttr "input_tiptoe.wm" "input_tiptoe_local_MTMX.i[0]";
connectAttr "F_heel_CTL.wim" "input_tiptoe_local_MTMX.i[1]";
connectAttr "input_tiptoe_local_MTMX.o" "input_tiptoe_local_DCMX.imat";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX.i[0]";
connectAttr "F_ankle_CTL.wim" "input_F_elbow_local_MTMX.i[1]";
connectAttr "input_F_elbow_local_MTMX.o" "input_F_elbow_local_DCMX.imat";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "scapula.wm" "skinCluster1.ma[0]";
connectAttr "shoulder.wm" "skinCluster1.ma[1]";
connectAttr "B_elbow.wm" "skinCluster1.ma[2]";
connectAttr "F_elbow.wm" "skinCluster1.ma[3]";
connectAttr "wrist.wm" "skinCluster1.ma[4]";
connectAttr "toe.wm" "skinCluster1.ma[5]";
connectAttr "tiptoe.wm" "skinCluster1.ma[6]";
connectAttr "base_JNT.wm" "skinCluster1.ma[7]";
connectAttr "scapula.liw" "skinCluster1.lw[0]";
connectAttr "shoulder.liw" "skinCluster1.lw[1]";
connectAttr "B_elbow.liw" "skinCluster1.lw[2]";
connectAttr "F_elbow.liw" "skinCluster1.lw[3]";
connectAttr "wrist.liw" "skinCluster1.lw[4]";
connectAttr "toe.liw" "skinCluster1.lw[5]";
connectAttr "tiptoe.liw" "skinCluster1.lw[6]";
connectAttr "base_JNT.liw" "skinCluster1.lw[7]";
connectAttr "scapula.obcc" "skinCluster1.ifcl[0]";
connectAttr "shoulder.obcc" "skinCluster1.ifcl[1]";
connectAttr "B_elbow.obcc" "skinCluster1.ifcl[2]";
connectAttr "F_elbow.obcc" "skinCluster1.ifcl[3]";
connectAttr "wrist.obcc" "skinCluster1.ifcl[4]";
connectAttr "toe.obcc" "skinCluster1.ifcl[5]";
connectAttr "tiptoe.obcc" "skinCluster1.ifcl[6]";
connectAttr "base_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "base_JNT.msg" "skinCluster1.ptt";
connectAttr "groupParts50.og" "tweak2.ip[0].ig";
connectAttr "groupId52.id" "tweak2.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "bodyShapeDeformed.iog.og[3]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId52.msg" "tweakSet2.gn" -na;
connectAttr "bodyShapeDeformed.iog.og[4]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupId52.id" "groupParts50.gi";
connectAttr "arm_GRP.msg" "bindPose1.m[0]";
connectAttr "output.msg" "bindPose1.m[1]";
connectAttr "scapula.msg" "bindPose1.m[2]";
connectAttr "shoulder.msg" "bindPose1.m[3]";
connectAttr "B_elbow.msg" "bindPose1.m[4]";
connectAttr "F_elbow.msg" "bindPose1.m[5]";
connectAttr "wrist.msg" "bindPose1.m[6]";
connectAttr "toe.msg" "bindPose1.m[7]";
connectAttr "tiptoe.msg" "bindPose1.m[8]";
connectAttr "base_JNT.msg" "bindPose1.m[9]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.w" "bindPose1.p[9]";
connectAttr "scapula.bps" "bindPose1.wm[2]";
connectAttr "shoulder.bps" "bindPose1.wm[3]";
connectAttr "B_elbow.bps" "bindPose1.wm[4]";
connectAttr "F_elbow.bps" "bindPose1.wm[5]";
connectAttr "wrist.bps" "bindPose1.wm[6]";
connectAttr "toe.bps" "bindPose1.wm[7]";
connectAttr "tiptoe.bps" "bindPose1.wm[8]";
connectAttr "base_JNT.bps" "bindPose1.wm[9]";
connectAttr "ankle_offset_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "arm_SET.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "lower_stretch_output_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "softIK_output.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "extended_ctrllen_COND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "multMatrix2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "extendedarm_stretch_output_mul_ctrlVal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "F_toe01_ctrlLen.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "upper_stretch_output_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "wrist_PRBL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "extended_ctrlLen_minue_dif.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "extendedarm_plus_stretch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "extended_mult_softikV.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "extended_stretchCtrl_arm.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "extended_stretched_arm.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "extended_stretchedLen.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "extended_result_softik_len.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "F_ankle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "effector2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "input_B_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "F_toe_CTL_local_MTMX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "softIK_input.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "stretchIK_output.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "extended_negate_val.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "lower_softIK_output_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "stretchIK_input.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "divide_expand_arm_softikV.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "extended_softikV_COND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "upper_softIK_output_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "upper_softIK_output_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "wrist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "IK_wrist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "extended_power_val.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_toe01_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "expandarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "soft_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armlen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extendedarm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretched_arm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretchCtrl_arm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extendedarm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upper_poleVec_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "upper_poleVec_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lower_poleVec_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lower_poleVec_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wrist_CTL_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wrist_CTL_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "IK_elbow_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_elbow_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "F_toe01_ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_soft_Len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_armlen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "extended_ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_expand_arm_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretch_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extendedarm_stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arm_switch_space_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_bk_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_fn_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_start_conditon.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toe_fn_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "after_ball_start.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "backto_zero_ball.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_default_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_toe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_tiptoe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_tiptoe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of dog_V002.ma
