//Maya ASCII 2019 scene
//Name: Qarm_check01.ma
//Last modified: Thu, Jul 01, 2021 07:18:26 PM
//Codeset: 949
file -rdi 1 -ns "L" -rfn "LRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
file -rdi 1 -ns "L1" -rfn "LRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -rdi 1 -ns "R" -rfn "RRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -rdi 1 -ns "R1" -rfn "RRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
file -r -ns "L" -dr 1 -rfn "LRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
file -r -ns "L1" -dr 1 -rfn "LRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -r -ns "R" -dr 1 -rfn "RRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -r -ns "R1" -dr 1 -rfn "RRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
requires maya "2019";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires "mtoa" "4.0.3";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "RenderMan_for_Maya" "4.0.3";
requires "redshift4maya" "2.6.31";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "BF56B823-4EC4-B557-CF37-78BC26C2F810";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 50.336772312047792 25.372610698510496 108.80512652039312 ;
	setAttr ".r" -type "double3" -0.33835272958989021 27.000000000001553 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "55764B31-4844-E088-C420-B1B9FF9290B1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 118.48857059220316;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0233DE6D-4E20-C873-9A4F-FE96A1CA73AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A6E222B3-40DD-F64F-1E77-EE82BDE3F415";
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
	rename -uid "4FB9AAAB-4231-1399-2D9C-A19DDCDE072E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2D43FCE3-4999-783F-AE10-8EA9F6C87CA0";
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
	rename -uid "EC365784-4E82-CD72-FB06-99B8580710E9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B85B1A60-4937-5F3D-D19D-F79F21E15C71";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DCCBA404-47AF-D238-6CE7-879774D03E30";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "949A3D27-4D26-6B08-FEB6-F399CCCD0E46";
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
	rename -uid "A757BD0A-4C32-B2CD-CB4E-9084D5CD90BC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7AED984F-423B-E8F8-D0B3-22AA7FABD459";
createNode displayLayerManager -n "layerManager";
	rename -uid "00492C96-4BCB-00D1-D7D9-95B497705EF8";
createNode displayLayer -n "defaultLayer";
	rename -uid "79435F4C-4D52-F1FA-07AB-B4BD952E693B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E4F40FC4-4B7E-A4EE-7490-999BF895AACE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D4DF65D2-4C3E-FDE2-E83F-C6B575B77FAD";
	setAttr ".g" yes;
createNode reference -n "LRN";
	rename -uid "D81C005E-40AE-C46C-304B-938CD7062706";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
	setAttr -s 32 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN"
		"LRN" 0
		"LRN" 43
		2 "|L:arm_GRP" "visibility" " 1"
		2 "|L:arm_GRP" "mirror" " 0"
		2 "|L:arm_GRP|L:arm_CTL_GRP|L:scapula_CTL_offGRP|L:scapula_CTL_spcGRP|L:scapula_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|L:arm_GRP|L:arm_CTL_GRP|L:scapula_CTL_offGRP|L:scapula_CTL_spcGRP|L:scapula_CTL|L:scapula_CTL_ivsScale|L:IK_shoulder_CTL_offGRP|L:IK_shoulder_CTL_spcGRP|L:IK_shoulder_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL" 
		"toesAim" " -k 1 10"
		2 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:poleVec_CTL_offGRP|L:poleVec_CTL_follow_GRP|L:poleVec_CTL_spcGRP|L:poleVec_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:poleVec_CTL_offGRP|L:poleVec_CTL_follow_GRP|L:poleVec_CTL_spcGRP|L:poleVec_CTL" 
		"follow" " -k 1 10"
		2 "|L:arm_GRP|L:arm_CTL_GRP|L:arm_switch_CTL_offGRP|L:arm_switch_CTL_spcGRP|L:arm_switch_CTL" 
		"FK_IK" " -cb 1 1"
		2 "L:unitConversion11" "input" " -type \"double3\" -2.15909280400302794 -0.33005163280202332 0.044186160427490989"
		
		3 "|L:arm_GRP|L:arm_motion_GRP|L:motion_IK_arm_GRP|L:F_IK_foot_IKH_offGRP|L:F_IK_foot_IKH_spcGRP|L:F_IK_foot_IKH_stretched_space.rebuildTrans" 
		"|L:arm_GRP|L:arm_motion_GRP|L:motion_IK_arm_GRP|L:F_IK_foot_IKH_offGRP|L:F_IK_foot_IKH_spcGRP|L:F_IK_foot_IKH_stretched_space.translate" 
		""
		3 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist|L:F_IK_wrist_CTL_offGRP|L:F_IK_wrist_CTL_spcGRP|L:F_IK_wrist_CTL|L:F_IK_wrist_aim_space|L:F_IK_wrist_space_offGRP.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist|L:F_IK_wrist_CTL_offGRP|L:F_IK_wrist_CTL_spcGRP|L:F_IK_wrist_CTL|L:F_IK_wrist_aim_space|L:F_IK_wrist_space_offGRP.translate" 
		""
		3 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball.translate" 
		""
		3 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe.translate" 
		""
		3 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_shoulder_aim.rebuildRot" 
		"L:unitConversion11.input" ""
		3 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_shoulder_aim.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_shoulder_aim.translate" 
		""
		3 "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist.translate" 
		""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula.translate" "LRN.placeHolderList[1]" 
		""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula.rotate" "LRN.placeHolderList[2]" 
		""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder.rotate" 
		"LRN.placeHolderList[3]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder.translate" 
		"LRN.placeHolderList[4]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow.rotate" 
		"LRN.placeHolderList[5]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow.translate" 
		"LRN.placeHolderList[6]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow.rotate" 
		"LRN.placeHolderList[7]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow.translate" 
		"LRN.placeHolderList[8]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow|L:input_wrist.rotate" 
		"LRN.placeHolderList[9]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow|L:input_wrist.translate" 
		"LRN.placeHolderList[10]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow|L:input_wrist|L:input_toe.translate" 
		"LRN.placeHolderList[11]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow|L:input_wrist|L:input_toe.rotate" 
		"LRN.placeHolderList[12]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow|L:input_wrist|L:input_toe|L:input_tiptoe.translate" 
		"LRN.placeHolderList[13]" ""
		5 2 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:input_scapula|L:input_shoulder|L:input_B_elbow|L:input_F_elbow|L:input_wrist|L:input_toe|L:input_tiptoe.rotate" 
		"LRN.placeHolderList[14]" ""
		5 0 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:motion_IK_arm_GRP|L:F_IK_foot_IKH_offGRP|L:F_IK_foot_IKH_spcGRP|L:F_IK_foot_IKH_stretched_space.rebuildTrans" 
		"|L:arm_GRP|L:arm_motion_GRP|L:motion_IK_arm_GRP|L:F_IK_foot_IKH_offGRP|L:F_IK_foot_IKH_spcGRP|L:F_IK_foot_IKH_stretched_space.translate" 
		"LRN.placeHolderList[15]" "LRN.placeHolderList[16]" "L:F_IK_foot_IKH_stretched_space.t"
		
		5 3 "LRN" "|L:arm_GRP|L:arm_motion_GRP|L:motion_IK_arm_GRP|L:F_IK_foot_IKH_offGRP|L:F_IK_foot_IKH_spcGRP|L:F_IK_foot_IKH_stretched_space.message" 
		"LRN.placeHolderList[17]" ""
		5 0 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe.translate" 
		"LRN.placeHolderList[18]" "LRN.placeHolderList[19]" "L:F_IK_toe.t"
		5 3 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe.message" 
		"LRN.placeHolderList[20]" ""
		5 0 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball.translate" 
		"LRN.placeHolderList[21]" "LRN.placeHolderList[22]" "L:F_IK_ball.t"
		5 3 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball.message" 
		"LRN.placeHolderList[23]" ""
		5 0 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist.translate" 
		"LRN.placeHolderList[24]" "LRN.placeHolderList[25]" "L:F_IK_wrist.t"
		5 3 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist.message" 
		"LRN.placeHolderList[26]" ""
		5 0 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist|L:F_IK_wrist_CTL_offGRP|L:F_IK_wrist_CTL_spcGRP|L:F_IK_wrist_CTL|L:F_IK_wrist_aim_space|L:F_IK_wrist_space_offGRP.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist|L:F_IK_wrist_CTL_offGRP|L:F_IK_wrist_CTL_spcGRP|L:F_IK_wrist_CTL|L:F_IK_wrist_aim_space|L:F_IK_wrist_space_offGRP.translate" 
		"LRN.placeHolderList[27]" "LRN.placeHolderList[28]" "L:F_IK_wrist_space_offGRP.t"
		
		5 3 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_heel|L:F_IK_heel_CTL|L:F_IK_toe|L:F_IK_toe_CTL|L:F_IK_ball|L:F_IK_ball_CTL|L:F_IK_wrist|L:F_IK_wrist_CTL_offGRP|L:F_IK_wrist_CTL_spcGRP|L:F_IK_wrist_CTL|L:F_IK_wrist_aim_space|L:F_IK_wrist_space_offGRP.message" 
		"LRN.placeHolderList[29]" ""
		5 0 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_shoulder_aim.rebuildTrans" 
		"|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_shoulder_aim.translate" 
		"LRN.placeHolderList[30]" "LRN.placeHolderList[31]" "L:F_IK_shoulder_aim.t"
		5 3 "LRN" "|L:arm_GRP|L:arm_CTL_GRP|L:IK_arm_CTL_GRP|L:F_input_F_toe_space|L:F_IK_foot_CTL_offGRP|L:F_IK_foot_CTL_spcGRP|L:F_IK_foot_CTL|L:F_IK_shoulder_aim.message" 
		"LRN.placeHolderList[32]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "LRN1";
	rename -uid "D5471D5F-4C47-38B5-F934-A08997F3A898";
	setAttr -s 28 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN1"
		"LRN1" 0
		"LRN1" 42
		2 "|L1:fit_arm" "visibility" " 1"
		2 "|L1:fit_arm" "mirror" " -cb 1 0"
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_scapula" "translate" " -type \"double3\" 4.23935127258300781 40.81283187866210938 14.15216541290283203"
		
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder" "translate" 
		" -type \"double3\" 1.89256763458251953 -7.98529815673828125 5.43334865570068359"
		
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow" 
		"translate" " -type \"double3\" -0.0094628334045410156 -10.54684638977050781 -5.65032005310058594"
		
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow" 
		"translateX" " -av"
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow" 
		"translateY" " -av"
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow" 
		"translateZ" " -av"
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow" 
		"translate" " -type \"double3\" 0.064627647399902344 -15.0306782722473109 2.25239562988280539"
		
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist" 
		"translate" " -type \"double3\" 0.018614768981933594 -4.57951760292053223 -0.004486083984375"
		
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist|L1:fit_toe" 
		"translate" " -type \"double3\" 9.5367431640625e-07 -1.49410152435302734 1.23212051391601563"
		
		2 "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist|L1:fit_toe|L1:fit_tiptoe" 
		"translate" " -type \"double3\" 0 -1.17635951711781672 3.41738128662109375"
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula.translate" "LRN1.placeHolderList[1]" 
		""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula.rotate" "LRN1.placeHolderList[2]" 
		""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder.rotate" "LRN1.placeHolderList[3]" 
		""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder.translate" 
		"LRN1.placeHolderList[4]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow.rotate" 
		"LRN1.placeHolderList[5]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow.translate" 
		"LRN1.placeHolderList[6]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow.rotate" 
		"LRN1.placeHolderList[7]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow.translate" 
		"LRN1.placeHolderList[8]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow|L1:init_wrist.rotate" 
		"LRN1.placeHolderList[9]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow|L1:init_wrist.translate" 
		"LRN1.placeHolderList[10]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow|L1:init_wrist|L1:init_toe.translate" 
		"LRN1.placeHolderList[11]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow|L1:init_wrist|L1:init_toe.rotate" 
		"LRN1.placeHolderList[12]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow|L1:init_wrist|L1:init_toe|L1:init_tiptoe.translate" 
		"LRN1.placeHolderList[13]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:init_scapula|L1:init_shoulder|L1:init_B_elbow|L1:init_F_elbow|L1:init_wrist|L1:init_toe|L1:init_tiptoe.rotate" 
		"LRN1.placeHolderList[14]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_scapula.rotate" "LRN1.placeHolderList[15]" 
		""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_scapula.translate" "LRN1.placeHolderList[16]" 
		""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder.translate" 
		"LRN1.placeHolderList[17]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder.rotate" 
		"LRN1.placeHolderList[18]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow.translate" 
		"LRN1.placeHolderList[19]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow.rotate" 
		"LRN1.placeHolderList[20]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow.translate" 
		"LRN1.placeHolderList[21]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow.rotate" 
		"LRN1.placeHolderList[22]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist.translate" 
		"LRN1.placeHolderList[23]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist.rotate" 
		"LRN1.placeHolderList[24]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist|L1:fit_toe.translate" 
		"LRN1.placeHolderList[25]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist|L1:fit_toe.rotate" 
		"LRN1.placeHolderList[26]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist|L1:fit_toe|L1:fit_tiptoe.translate" 
		"LRN1.placeHolderList[27]" ""
		5 1 "LRN1" "|L1:fit_arm|L1:fit_arm_GRP|L1:fit_arm_space|L1:fit_shoulder|L1:fit_B_elbow|L1:fit_F_elbow|L1:fit_wrist|L1:fit_toe|L1:fit_tiptoe.rotate" 
		"LRN1.placeHolderList[28]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "RRN";
	rename -uid "0BD710A9-4501-1B56-939C-9ABD358DFDC3";
	setAttr -s 29 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RRN"
		"RRN" 0
		"RRN" 31
		2 "|R:fit_arm" "visibility" " 1"
		2 "|R:fit_arm" "mirror" " -cb 1 1"
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_scapula.rotate" "RRN.placeHolderList[1]" 
		""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_scapula.translate" "RRN.placeHolderList[2]" 
		""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder.translate" 
		"RRN.placeHolderList[3]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder.rotate" 
		"RRN.placeHolderList[4]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow.translate" 
		"RRN.placeHolderList[5]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow.rotate" 
		"RRN.placeHolderList[6]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow.translate" 
		"RRN.placeHolderList[7]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow.rotate" 
		"RRN.placeHolderList[8]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow|R:fit_wrist.translate" 
		"RRN.placeHolderList[9]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow|R:fit_wrist.rotate" 
		"RRN.placeHolderList[10]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow|R:fit_wrist|R:fit_toe.translate" 
		"RRN.placeHolderList[11]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow|R:fit_wrist|R:fit_toe.rotate" 
		"RRN.placeHolderList[12]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow|R:fit_wrist|R:fit_toe|R:fit_tiptoe.translate" 
		"RRN.placeHolderList[13]" ""
		5 2 "RRN" "|R:fit_arm|R:fit_arm_GRP|R:fit_arm_space|R:fit_shoulder|R:fit_B_elbow|R:fit_F_elbow|R:fit_wrist|R:fit_toe|R:fit_tiptoe.rotate" 
		"RRN.placeHolderList[14]" ""
		5 1 "RRN" "|R:fit_arm.mirror" "RRN.placeHolderList[15]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula.translate" "RRN.placeHolderList[16]" 
		""
		5 1 "RRN" "|R:fit_arm|R:init_scapula.rotate" "RRN.placeHolderList[17]" 
		""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder.rotate" "RRN.placeHolderList[18]" 
		""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder.translate" "RRN.placeHolderList[19]" 
		""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow.rotate" 
		"RRN.placeHolderList[20]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow.translate" 
		"RRN.placeHolderList[21]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow.rotate" 
		"RRN.placeHolderList[22]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow.translate" 
		"RRN.placeHolderList[23]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow|R:init_wrist.rotate" 
		"RRN.placeHolderList[24]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow|R:init_wrist.translate" 
		"RRN.placeHolderList[25]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow|R:init_wrist|R:init_toe.translate" 
		"RRN.placeHolderList[26]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow|R:init_wrist|R:init_toe.rotate" 
		"RRN.placeHolderList[27]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow|R:init_wrist|R:init_toe|R:init_tiptoe.translate" 
		"RRN.placeHolderList[28]" ""
		5 1 "RRN" "|R:fit_arm|R:init_scapula|R:init_shoulder|R:init_B_elbow|R:init_F_elbow|R:init_wrist|R:init_toe|R:init_tiptoe.rotate" 
		"RRN.placeHolderList[29]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "RRN1";
	rename -uid "B53D143B-41E7-C02A-A208-489B942620EB";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma{1}";
	setAttr -s 15 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RRN1"
		"RRN1" 0
		"RRN1" 36
		2 "|R1:arm_GRP" "visibility" " 1"
		2 "|R1:arm_GRP|R1:arm_motion_GRP|R1:motion_IK_arm_GRP|R1:F_IK_foot_IKH_offGRP|R1:F_IK_foot_IKH_spcGRP|R1:F_IK_foot_IKH_stretched_space" 
		"translate" " -type \"double3\" 0 4.57955741882324219 0"
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:scapula_CTL_offGRP|R1:scapula_CTL_spcGRP|R1:scapula_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:scapula_CTL_offGRP|R1:scapula_CTL_spcGRP|R1:scapula_CTL|R1:scapula_CTL_ivsScale|R1:IK_shoulder_CTL_offGRP|R1:IK_shoulder_CTL_spcGRP|R1:IK_shoulder_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL" 
		"toesAim" " -k 1 10"
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe" 
		"translate" " -type \"double3\" -0.00042971102354361079 0.0010181070108843315 5.23130979820203201"
		
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball" 
		"translate" " -type \"double3\" -2.9402234069664246e-07 1.17636039987754915 -3.41738162156541847"
		
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball|R1:F_IK_ball_CTL|R1:F_IK_wrist" 
		"translate" " -type \"double3\" 8.4997799110198002e-07 1.49410187324080956 -1.23212064712700808"
		
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball|R1:F_IK_ball_CTL|R1:F_IK_wrist|R1:F_IK_wrist_CTL_offGRP|R1:F_IK_wrist_CTL_spcGRP|R1:F_IK_wrist_CTL|R1:F_IK_wrist_aim_space|R1:F_IK_wrist_space_offGRP" 
		"translate" " -type \"double3\" -0.01861495794620982 4.57951938310636741 0.0038132332142772896"
		
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_shoulder_aim" 
		"translate" " -type \"double3\" 0.018614773698550025 4.57951757530451786 0.0044860637063202091"
		
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:poleVec_CTL_offGRP|R1:poleVec_CTL_follow_GRP|R1:poleVec_CTL_spcGRP|R1:poleVec_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:poleVec_CTL_offGRP|R1:poleVec_CTL_follow_GRP|R1:poleVec_CTL_spcGRP|R1:poleVec_CTL" 
		"follow" " -k 1 10"
		2 "R1:unitConversion11" "input" " -type \"double3\" 177.84090598433351715 0.33005664923452127 -0.044186102838712771"
		
		3 "|R1:arm_GRP|R1:arm_motion_GRP|R1:motion_IK_arm_GRP|R1:F_IK_foot_IKH_offGRP|R1:F_IK_foot_IKH_spcGRP|R1:F_IK_foot_IKH_stretched_space.rebuildTrans" 
		"|R1:arm_GRP|R1:arm_motion_GRP|R1:motion_IK_arm_GRP|R1:F_IK_foot_IKH_offGRP|R1:F_IK_foot_IKH_spcGRP|R1:F_IK_foot_IKH_stretched_space.translate" 
		""
		3 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball.rebuildTrans" 
		"|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball.translate" 
		""
		3 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball|R1:F_IK_ball_CTL|R1:F_IK_wrist|R1:F_IK_wrist_CTL_offGRP|R1:F_IK_wrist_CTL_spcGRP|R1:F_IK_wrist_CTL|R1:F_IK_wrist_aim_space|R1:F_IK_wrist_space_offGRP.rebuildTrans" 
		"|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball|R1:F_IK_ball_CTL|R1:F_IK_wrist|R1:F_IK_wrist_CTL_offGRP|R1:F_IK_wrist_CTL_spcGRP|R1:F_IK_wrist_CTL|R1:F_IK_wrist_aim_space|R1:F_IK_wrist_space_offGRP.translate" 
		""
		3 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe.rebuildTrans" 
		"|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe.translate" 
		""
		3 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_shoulder_aim.rebuildTrans" 
		"|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_shoulder_aim.translate" 
		""
		3 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball|R1:F_IK_ball_CTL|R1:F_IK_wrist.rebuildTrans" 
		"|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_heel|R1:F_IK_heel_CTL|R1:F_IK_toe|R1:F_IK_toe_CTL|R1:F_IK_ball|R1:F_IK_ball_CTL|R1:F_IK_wrist.translate" 
		""
		3 "|R1:arm_GRP|R1:arm_CTL_GRP|R1:IK_arm_CTL_GRP|R1:F_input_F_toe_space|R1:F_IK_foot_CTL_offGRP|R1:F_IK_foot_CTL_spcGRP|R1:F_IK_foot_CTL|R1:F_IK_shoulder_aim.rebuildRot" 
		"R1:unitConversion11.input" ""
		5 2 "RRN1" "|R1:arm_GRP.mirror" "RRN1.placeHolderList[1]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula.translate" 
		"RRN1.placeHolderList[2]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula.rotate" "RRN1.placeHolderList[3]" 
		""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder.rotate" 
		"RRN1.placeHolderList[4]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder.translate" 
		"RRN1.placeHolderList[5]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow.rotate" 
		"RRN1.placeHolderList[6]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow.translate" 
		"RRN1.placeHolderList[7]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow.rotate" 
		"RRN1.placeHolderList[8]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow.translate" 
		"RRN1.placeHolderList[9]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow|R1:input_wrist.rotate" 
		"RRN1.placeHolderList[10]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow|R1:input_wrist.translate" 
		"RRN1.placeHolderList[11]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow|R1:input_wrist|R1:input_toe.translate" 
		"RRN1.placeHolderList[12]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow|R1:input_wrist|R1:input_toe.rotate" 
		"RRN1.placeHolderList[13]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow|R1:input_wrist|R1:input_toe|R1:input_tiptoe.translate" 
		"RRN1.placeHolderList[14]" ""
		5 2 "RRN1" "|R1:arm_GRP|R1:arm_motion_GRP|R1:input_scapula|R1:input_shoulder|R1:input_B_elbow|R1:input_F_elbow|R1:input_wrist|R1:input_toe|R1:input_tiptoe.rotate" 
		"RRN1.placeHolderList[15]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "D295BB9C-450D-3465-4A0B-ED9CE9672D7A";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A8A33DE8-4200-4969-302D-BBB6C9BCD025";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1128\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1128\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1128\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6A762526-4594-4CDF-A435-03BF1083CB91";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D89AAEAF-42A1-B982-2AAF-E98D0B09BC08";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -4115.0675385318173 -4885.6265458394091 ;
	setAttr ".tgi[0].vh" -type "double2" -2704.6212022753898 -3506.6232807734118 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -3630.06982421875;
	setAttr ".tgi[0].ni[0].y" -4457.845703125;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" -3371.072265625;
	setAttr ".tgi[0].ni[1].y" -4369.98583984375;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" -3937.60107421875;
	setAttr ".tgi[0].ni[2].y" -4386.94140625;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" -3649.552978515625;
	setAttr ".tgi[0].ni[3].y" -3801.66259765625;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" -3443.16796875;
	setAttr ".tgi[0].ni[4].y" -3728.26171875;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" -3984.388671875;
	setAttr ".tgi[0].ni[5].y" -3811.874267578125;
	setAttr ".tgi[0].ni[5].nvs" 18306;
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
	setAttr -s 356 ".u";
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
connectAttr "LRN1.phl[1]" "LRN.phl[1]";
connectAttr "LRN1.phl[2]" "LRN.phl[2]";
connectAttr "LRN1.phl[3]" "LRN.phl[3]";
connectAttr "LRN1.phl[4]" "LRN.phl[4]";
connectAttr "LRN1.phl[5]" "LRN.phl[5]";
connectAttr "LRN1.phl[6]" "LRN.phl[6]";
connectAttr "LRN1.phl[7]" "LRN.phl[7]";
connectAttr "LRN1.phl[8]" "LRN.phl[8]";
connectAttr "LRN1.phl[9]" "LRN.phl[9]";
connectAttr "LRN1.phl[10]" "LRN.phl[10]";
connectAttr "LRN1.phl[11]" "LRN.phl[11]";
connectAttr "LRN1.phl[12]" "LRN.phl[12]";
connectAttr "LRN1.phl[13]" "LRN.phl[13]";
connectAttr "LRN1.phl[14]" "LRN.phl[14]";
connectAttr "LRN.phl[15]" "LRN.phl[16]";
connectAttr "LRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "LRN.phl[18]" "LRN.phl[19]";
connectAttr "LRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "LRN.phl[21]" "LRN.phl[22]";
connectAttr "LRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "LRN.phl[24]" "LRN.phl[25]";
connectAttr "LRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "LRN.phl[27]" "LRN.phl[28]";
connectAttr "LRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "LRN.phl[30]" "LRN.phl[31]";
connectAttr "LRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "LRN1.phl[15]" "RRN.phl[1]";
connectAttr "LRN1.phl[16]" "RRN.phl[2]";
connectAttr "LRN1.phl[17]" "RRN.phl[3]";
connectAttr "LRN1.phl[18]" "RRN.phl[4]";
connectAttr "LRN1.phl[19]" "RRN.phl[5]";
connectAttr "LRN1.phl[20]" "RRN.phl[6]";
connectAttr "LRN1.phl[21]" "RRN.phl[7]";
connectAttr "LRN1.phl[22]" "RRN.phl[8]";
connectAttr "LRN1.phl[23]" "RRN.phl[9]";
connectAttr "LRN1.phl[24]" "RRN.phl[10]";
connectAttr "LRN1.phl[25]" "RRN.phl[11]";
connectAttr "LRN1.phl[26]" "RRN.phl[12]";
connectAttr "LRN1.phl[27]" "RRN.phl[13]";
connectAttr "LRN1.phl[28]" "RRN.phl[14]";
connectAttr "RRN.phl[15]" "RRN1.phl[1]";
connectAttr "RRN.phl[16]" "RRN1.phl[2]";
connectAttr "RRN.phl[17]" "RRN1.phl[3]";
connectAttr "RRN.phl[18]" "RRN1.phl[4]";
connectAttr "RRN.phl[19]" "RRN1.phl[5]";
connectAttr "RRN.phl[20]" "RRN1.phl[6]";
connectAttr "RRN.phl[21]" "RRN1.phl[7]";
connectAttr "RRN.phl[22]" "RRN1.phl[8]";
connectAttr "RRN.phl[23]" "RRN1.phl[9]";
connectAttr "RRN.phl[24]" "RRN1.phl[10]";
connectAttr "RRN.phl[25]" "RRN1.phl[11]";
connectAttr "RRN.phl[26]" "RRN1.phl[12]";
connectAttr "RRN.phl[27]" "RRN1.phl[13]";
connectAttr "RRN.phl[28]" "RRN1.phl[14]";
connectAttr "RRN.phl[29]" "RRN1.phl[15]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "LRN.sr";
connectAttr "sharedReferenceNode.sr" "RRN1.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Qarm_check01.ma
