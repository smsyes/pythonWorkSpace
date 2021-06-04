//Maya ASCII 2019 scene
//Name: quadruped_test_01.ma
//Last modified: Fri, Jun 04, 2021 07:49:37 PM
//Codeset: 949
file -rdi 1 -ns "L" -rfn "LRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_leg.ma";
file -rdi 1 -ns "L1" -rfn "LRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_arm.ma";
file -rdi 1 -ns "R" -rfn "RRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_leg.ma";
file -rdi 1 -ns "R1" -rfn "RRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_arm.ma";
file -rdi 1 -ns "L2" -rfn "LRN2" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_leg.ma";
file -rdi 1 -ns "L3" -rfn "LRN3" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_arm.ma";
file -rdi 1 -ns "R2" -rfn "RRN2" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_leg.ma";
file -rdi 1 -ns "R3" -rfn "RRN3" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_arm.ma";
file -r -ns "L" -dr 1 -rfn "LRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_leg.ma";
file -r -ns "L1" -dr 1 -rfn "LRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_arm.ma";
file -r -ns "R" -dr 1 -rfn "RRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_leg.ma";
file -r -ns "R1" -dr 1 -rfn "RRN1" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_quadruped_arm.ma";
file -r -ns "L2" -dr 1 -rfn "LRN2" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_leg.ma";
file -r -ns "L3" -dr 1 -rfn "LRN3" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_arm.ma";
file -r -ns "R2" -dr 1 -rfn "RRN2" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_leg.ma";
file -r -ns "R3" -dr 1 -rfn "RRN3" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_arm.ma";
requires maya "2019";
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
	rename -uid "550EE696-49E8-DFD0-8F62-339308DECEC1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 64.964637026247004 66.692811772843498 139.53331373463567 ;
	setAttr ".r" -type "double3" -18.338352729602292 21.399999999997839 1.7080365254563228e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0101F429-46DD-9F1A-ECAC-A19D02C81782";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 171.31060379526073;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A3FE12E2-4B3B-230B-3E64-03A5E1DCE504";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5A7B347F-4DF0-CDED-B66C-8297307BE96C";
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
	rename -uid "A2092663-4889-64F6-8288-7A88E89CB1D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D7A7A169-447B-9227-76A2-DA945BBD418A";
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
	rename -uid "8B726F6A-49E7-43F5-2CC8-78AB058DF4E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "73DAD370-438A-98EC-8E39-448652413458";
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
	rename -uid "5680B169-4FAE-8478-CCAF-5096AAAB77A9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "F200F2E9-4702-E8F9-8454-B9A3FF86CF31";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/rigLib/quadruped_test_01.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DC96C56B-4EAC-AC87-FFA1-71810B7EF027";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "13B8A9CD-4222-6F3D-B655-AD82F0009926";
createNode displayLayerManager -n "layerManager";
	rename -uid "F38BA4EC-4B5A-48CE-CDFA-FBA08FABE1AA";
createNode displayLayer -n "defaultLayer";
	rename -uid "590ECCED-42C2-31F0-10E1-28BAF1A8C06A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C1DBC17D-4AEB-B074-1FF8-078AB5D13658";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "27F5BCE6-4B62-A284-7F73-9492BD5F3EEB";
	setAttr ".g" yes;
createNode reference -n "LRN";
	rename -uid "133B76EC-41C8-6404-C983-D4B6A127D4DC";
	setAttr -s 20 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN"
		"LRN" 0
		"LRN" 26
		2 "|L:fit_quad_leg" "visibility" " 1"
		2 "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_hip" "translate" " -type \"double3\" 3.58036923408508301 40.88107681274414063 -18.16811370849609375"
		
		2 "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih" 
		"translate" " -type \"double3\" 2.07131505012512207 -2.4073028564453125 0"
		2 "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee" 
		"translate" " -type \"double3\" 0 -14.21085548400878906 -2.40730476379394531"
		2 "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee|L:fit_quad_ankle" 
		"translate" " -type \"double3\" 0 -11.10465717315673828 -7.6101837158203125"
		2 "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee|L:fit_quad_ankle|L:fit_quad_B_toe" 
		"translate" " -type \"double3\" 0 -10.6451270580291748 0.25199317932128906"
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_hip.rotate" 
		"LRN.placeHolderList[1]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_hip.translate" 
		"LRN.placeHolderList[2]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih.rotate" 
		"LRN.placeHolderList[3]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih.translate" 
		"LRN.placeHolderList[4]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee.rotate" 
		"LRN.placeHolderList[5]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee.translate" 
		"LRN.placeHolderList[6]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee|L:fit_quad_ankle.rotate" 
		"LRN.placeHolderList[7]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee|L:fit_quad_ankle.translate" 
		"LRN.placeHolderList[8]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee|L:fit_quad_ankle|L:fit_quad_B_toe.rotate" 
		"LRN.placeHolderList[9]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_leg_GRP|L:fit_quad_leg_space|L:fit_quad_thgih|L:fit_quad_knee|L:fit_quad_ankle|L:fit_quad_B_toe.translate" 
		"LRN.placeHolderList[10]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip.translate" "LRN.placeHolderList[11]" 
		""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip.rotate" "LRN.placeHolderList[12]" 
		""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih.translate" 
		"LRN.placeHolderList[13]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih.rotate" 
		"LRN.placeHolderList[14]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih|L:fit_quad_init_knee.translate" 
		"LRN.placeHolderList[15]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih|L:fit_quad_init_knee.rotate" 
		"LRN.placeHolderList[16]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih|L:fit_quad_init_knee|L:fit_quad_init_ankle.translate" 
		"LRN.placeHolderList[17]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih|L:fit_quad_init_knee|L:fit_quad_init_ankle.rotate" 
		"LRN.placeHolderList[18]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih|L:fit_quad_init_knee|L:fit_quad_init_ankle|L:fit_quad_init_B_toe.translate" 
		"LRN.placeHolderList[19]" ""
		5 1 "LRN" "|L:fit_quad_leg|L:fit_quad_init_hip|L:fit_quad_init_thgih|L:fit_quad_init_knee|L:fit_quad_init_ankle|L:fit_quad_init_B_toe.rotate" 
		"LRN.placeHolderList[20]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "LRN1";
	rename -uid "7B6F9719-4445-0CE4-4C2E-89985FDEE6B0";
	setAttr -s 20 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN1"
		"LRN1" 0
		"LRN1" 26
		2 "|L1:fit_quad_arm" "visibility" " 1"
		2 "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_scapula" "translate" 
		" -type \"double3\" 4.23935127258300781 40.81283187866210938 14.15216541290283203"
		
		2 "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder" 
		"translate" " -type \"double3\" 1.89256763458251953 -8.70113372802734375 4.94590663909912109"
		
		2 "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow" 
		"translate" " -type \"double3\" -0.0094790458679199219 -9.06749343872070313 -4.76271247863769531"
		
		2 "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow|L1:fit_quad_wrist" 
		"translate" " -type \"double3\" 0.064644813537597656 -15.75305414199829102 1.74406814575195313"
		
		2 "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow|L1:fit_quad_wrist|L1:fit_quad_F_toe" 
		"translate" " -type \"double3\" 0.018614768981933594 -4.57951760292053223 -0.004486083984375"
		
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_scapula.rotate" 
		"LRN1.placeHolderList[1]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_scapula.translate" 
		"LRN1.placeHolderList[2]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder.rotate" 
		"LRN1.placeHolderList[3]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder.translate" 
		"LRN1.placeHolderList[4]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow.rotate" 
		"LRN1.placeHolderList[5]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow.translate" 
		"LRN1.placeHolderList[6]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow|L1:fit_quad_wrist.rotate" 
		"LRN1.placeHolderList[7]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow|L1:fit_quad_wrist.translate" 
		"LRN1.placeHolderList[8]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow|L1:fit_quad_wrist|L1:fit_quad_F_toe.rotate" 
		"LRN1.placeHolderList[9]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_arm_GRP|L1:fit_quad_arm_space|L1:fit_quad_shoulder|L1:fit_quad_elbow|L1:fit_quad_wrist|L1:fit_quad_F_toe.translate" 
		"LRN1.placeHolderList[10]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula.translate" "LRN1.placeHolderList[11]" 
		""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula.rotate" "LRN1.placeHolderList[12]" 
		""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder.translate" 
		"LRN1.placeHolderList[13]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder.rotate" 
		"LRN1.placeHolderList[14]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder|L1:fit_quad_init_elbow.translate" 
		"LRN1.placeHolderList[15]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder|L1:fit_quad_init_elbow.rotate" 
		"LRN1.placeHolderList[16]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder|L1:fit_quad_init_elbow|L1:fit_quad_init_wrist.translate" 
		"LRN1.placeHolderList[17]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder|L1:fit_quad_init_elbow|L1:fit_quad_init_wrist.rotate" 
		"LRN1.placeHolderList[18]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder|L1:fit_quad_init_elbow|L1:fit_quad_init_wrist|L1:fit_quad_init_F_toe.translate" 
		"LRN1.placeHolderList[19]" ""
		5 1 "LRN1" "|L1:fit_quad_arm|L1:fit_quad_init_scapula|L1:fit_quad_init_shoulder|L1:fit_quad_init_elbow|L1:fit_quad_init_wrist|L1:fit_quad_init_F_toe.rotate" 
		"LRN1.placeHolderList[20]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "RRN";
	rename -uid "2A549F54-4E2C-5D8E-42E1-15A7607AD17D";
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
		"RRN"
		"RRN" 0
		"RRN" 12
		2 "|R:fit_quad_leg" "visibility" " 1"
		2 "|R:fit_quad_leg" "mirror" " -k 1 1"
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_hip.rotate" 
		"RRN.placeHolderList[1]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_hip.translate" 
		"RRN.placeHolderList[2]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih.rotate" 
		"RRN.placeHolderList[3]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih.translate" 
		"RRN.placeHolderList[4]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih|R:fit_quad_knee.rotate" 
		"RRN.placeHolderList[5]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih|R:fit_quad_knee.translate" 
		"RRN.placeHolderList[6]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih|R:fit_quad_knee|R:fit_quad_ankle.rotate" 
		"RRN.placeHolderList[7]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih|R:fit_quad_knee|R:fit_quad_ankle.translate" 
		"RRN.placeHolderList[8]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih|R:fit_quad_knee|R:fit_quad_ankle|R:fit_quad_B_toe.rotate" 
		"RRN.placeHolderList[9]" ""
		5 2 "RRN" "|R:fit_quad_leg|R:fit_quad_leg_GRP|R:fit_quad_leg_space|R:fit_quad_thgih|R:fit_quad_knee|R:fit_quad_ankle|R:fit_quad_B_toe.translate" 
		"RRN.placeHolderList[10]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "RRN1";
	rename -uid "4B811667-47D0-317B-22C3-C69AB60375B6";
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
		"RRN1"
		"RRN1" 0
		"RRN1" 12
		2 "|R1:fit_quad_arm" "visibility" " 1"
		2 "|R1:fit_quad_arm" "mirror" " -cb 1 1"
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_scapula.rotate" 
		"RRN1.placeHolderList[1]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_scapula.translate" 
		"RRN1.placeHolderList[2]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder.rotate" 
		"RRN1.placeHolderList[3]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder.translate" 
		"RRN1.placeHolderList[4]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder|R1:fit_quad_elbow.rotate" 
		"RRN1.placeHolderList[5]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder|R1:fit_quad_elbow.translate" 
		"RRN1.placeHolderList[6]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder|R1:fit_quad_elbow|R1:fit_quad_wrist.rotate" 
		"RRN1.placeHolderList[7]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder|R1:fit_quad_elbow|R1:fit_quad_wrist.translate" 
		"RRN1.placeHolderList[8]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder|R1:fit_quad_elbow|R1:fit_quad_wrist|R1:fit_quad_F_toe.rotate" 
		"RRN1.placeHolderList[9]" ""
		5 2 "RRN1" "|R1:fit_quad_arm|R1:fit_quad_arm_GRP|R1:fit_quad_arm_space|R1:fit_quad_shoulder|R1:fit_quad_elbow|R1:fit_quad_wrist|R1:fit_quad_F_toe.translate" 
		"RRN1.placeHolderList[10]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "LRN2";
	rename -uid "D101521A-494B-1BA3-82E8-20BC67EF99A5";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_leg.ma";
	setAttr -s 20 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN2"
		"LRN2" 0
		"LRN2" 25
		2 "|L2:leg_GRP" "visibility" " 1"
		2 "|L2:leg_GRP|L2:leg_CTL_GRP|L2:hip_L_CTL_offGRP|L2:hip_L_CTL_spcGRP|L2:hip_L_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|L2:leg_GRP|L2:leg_CTL_GRP|L2:IK_leg_CTL_GRP|L2:IK_ankle_offGRP|L2:IK_ankle_spcGRP|L2:IK_ankle_local_space|L2:IK_ankle_CTL_local_offGRP|L2:IK_ankle_CTL_local_spcGRP|L2:IK_ankle_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|L2:leg_GRP|L2:leg_CTL_GRP|L2:IK_leg_CTL_GRP|L2:IK_ankle_offGRP|L2:IK_ankle_spcGRP|L2:IK_ankle_local_space|L2:IK_ankle_CTL_local_offGRP|L2:IK_ankle_CTL_local_spcGRP|L2:IK_ankle_CTL|L2:IK_B_toe_flex_CTL_offGRP|L2:IK_B_toe_flex_CTL_spcGRP|L2:IK_B_toe_flex_CTL|L2:IK_ankle_flex_CTL_offGRP|L2:IK_ankle_flex_CTL_spcGRP|L2:IK_ankle_flex_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|L2:leg_GRP|L2:leg_CTL_GRP|L2:IK_leg_CTL_GRP|L2:IK_thigh_CTL_offGRP|L2:hip_L_space_offGRP|L2:hip_L_space_spcGRP|L2:IK_thigh_CTL_spcGRP|L2:IK_thigh_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip.translate" "LRN2.placeHolderList[1]" 
		""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip.rotate" "LRN2.placeHolderList[2]" 
		""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh.translate" 
		"LRN2.placeHolderList[3]" ""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh.rotate" 
		"LRN2.placeHolderList[4]" ""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee.translate" 
		"LRN2.placeHolderList[5]" ""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee.rotate" 
		"LRN2.placeHolderList[6]" ""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle.translate" 
		"LRN2.placeHolderList[7]" ""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle.rotate" 
		"LRN2.placeHolderList[8]" ""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle|L2:input_B_toe.translate" 
		"LRN2.placeHolderList[9]" ""
		5 2 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle|L2:input_B_toe.rotate" 
		"LRN2.placeHolderList[10]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip.translate" "LRN2.placeHolderList[11]" 
		""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip.rotate" "LRN2.placeHolderList[12]" 
		""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh.translate" 
		"LRN2.placeHolderList[13]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh.rotate" 
		"LRN2.placeHolderList[14]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee.translate" 
		"LRN2.placeHolderList[15]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee.rotate" 
		"LRN2.placeHolderList[16]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle.translate" 
		"LRN2.placeHolderList[17]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle.rotate" 
		"LRN2.placeHolderList[18]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle|L2:input_B_toe.translate" 
		"LRN2.placeHolderList[19]" ""
		5 1 "LRN2" "|L2:leg_GRP|L2:leg_motion_GRP|L2:input_hip|L2:input_thigh|L2:input_knee|L2:input_ankle|L2:input_B_toe.rotate" 
		"LRN2.placeHolderList[20]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "LRN3";
	rename -uid "5B1C1B20-4CA4-3853-4D88-34B408337B78";
	setAttr -s 20 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN3"
		"LRN3" 0
		"LRN3" 22
		2 "|L3:arm_GRP" "visibility" " 1"
		2 "|L3:arm_GRP|L3:arm_CTL_GRP|L3:IK_arm_CTL_GRP|L3:wrist_CTL_offGRP|L3:wrist_CTL_spcGRP|L3:wrist_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula.translate" 
		"LRN3.placeHolderList[1]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula.rotate" "LRN3.placeHolderList[2]" 
		""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder.translate" 
		"LRN3.placeHolderList[3]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder.rotate" 
		"LRN3.placeHolderList[4]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow.translate" 
		"LRN3.placeHolderList[5]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow.rotate" 
		"LRN3.placeHolderList[6]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist.translate" 
		"LRN3.placeHolderList[7]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist.rotate" 
		"LRN3.placeHolderList[8]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist|L3:input_F_toe.translate" 
		"LRN3.placeHolderList[9]" ""
		5 2 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist|L3:input_F_toe.rotate" 
		"LRN3.placeHolderList[10]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula.translate" 
		"LRN3.placeHolderList[11]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula.rotate" "LRN3.placeHolderList[12]" 
		""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder.translate" 
		"LRN3.placeHolderList[13]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder.rotate" 
		"LRN3.placeHolderList[14]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow.translate" 
		"LRN3.placeHolderList[15]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow.rotate" 
		"LRN3.placeHolderList[16]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist.translate" 
		"LRN3.placeHolderList[17]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist.rotate" 
		"LRN3.placeHolderList[18]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist|L3:input_F_toe.translate" 
		"LRN3.placeHolderList[19]" ""
		5 1 "LRN3" "|L3:arm_GRP|L3:arm_motion_GRP|L3:input_scapula|L3:input_shoulder|L3:input_elbow|L3:input_wrist|L3:input_F_toe.rotate" 
		"LRN3.placeHolderList[20]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "RRN2";
	rename -uid "BB322DA2-4785-8EBE-6A84-3C89E0087B33";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_leg.ma{1}";
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
		"RRN2"
		"RRN2" 0
		"RRN2" 16
		2 "|R2:leg_GRP" "visibility" " 1"
		2 "|R2:leg_GRP" "scale" " -type \"double3\" -1 1 1"
		2 "|R2:leg_GRP|R2:leg_CTL_GRP|R2:hip_L_CTL_offGRP|R2:hip_L_CTL_spcGRP|R2:hip_L_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|R2:leg_GRP|R2:leg_CTL_GRP|R2:IK_leg_CTL_GRP|R2:IK_ankle_offGRP|R2:IK_ankle_spcGRP|R2:IK_ankle_local_space|R2:IK_ankle_CTL_local_offGRP|R2:IK_ankle_CTL_local_spcGRP|R2:IK_ankle_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|R2:leg_GRP|R2:leg_CTL_GRP|R2:IK_leg_CTL_GRP|R2:IK_ankle_offGRP|R2:IK_ankle_spcGRP|R2:IK_ankle_local_space|R2:IK_ankle_CTL_local_offGRP|R2:IK_ankle_CTL_local_spcGRP|R2:IK_ankle_CTL|R2:IK_B_toe_flex_CTL_offGRP|R2:IK_B_toe_flex_CTL_spcGRP|R2:IK_B_toe_flex_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|R2:leg_GRP|R2:leg_CTL_GRP|R2:IK_leg_CTL_GRP|R2:IK_thigh_CTL_offGRP|R2:hip_L_space_offGRP|R2:hip_L_space_spcGRP|R2:IK_thigh_CTL_spcGRP|R2:IK_thigh_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip.translate" "RRN2.placeHolderList[1]" 
		""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip.rotate" "RRN2.placeHolderList[2]" 
		""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh.translate" 
		"RRN2.placeHolderList[3]" ""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh.rotate" 
		"RRN2.placeHolderList[4]" ""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh|R2:input_knee.translate" 
		"RRN2.placeHolderList[5]" ""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh|R2:input_knee.rotate" 
		"RRN2.placeHolderList[6]" ""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh|R2:input_knee|R2:input_ankle.translate" 
		"RRN2.placeHolderList[7]" ""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh|R2:input_knee|R2:input_ankle.rotate" 
		"RRN2.placeHolderList[8]" ""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh|R2:input_knee|R2:input_ankle|R2:input_B_toe.translate" 
		"RRN2.placeHolderList[9]" ""
		5 2 "RRN2" "|R2:leg_GRP|R2:leg_motion_GRP|R2:input_hip|R2:input_thigh|R2:input_knee|R2:input_ankle|R2:input_B_toe.rotate" 
		"RRN2.placeHolderList[10]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "RRN3";
	rename -uid "75C6198F-4CE4-56ED-7A72-F29270493456";
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
		"RRN3"
		"RRN3" 0
		"RRN3" 12
		2 "|R3:arm_GRP" "visibility" " 1"
		2 "|R3:arm_GRP" "scale" " -type \"double3\" -1 1 1"
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula.translate" 
		"RRN3.placeHolderList[1]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula.rotate" "RRN3.placeHolderList[2]" 
		""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder.translate" 
		"RRN3.placeHolderList[3]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder.rotate" 
		"RRN3.placeHolderList[4]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder|R3:input_elbow.translate" 
		"RRN3.placeHolderList[5]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder|R3:input_elbow.rotate" 
		"RRN3.placeHolderList[6]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder|R3:input_elbow|R3:input_wrist.translate" 
		"RRN3.placeHolderList[7]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder|R3:input_elbow|R3:input_wrist.rotate" 
		"RRN3.placeHolderList[8]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder|R3:input_elbow|R3:input_wrist|R3:input_F_toe.translate" 
		"RRN3.placeHolderList[9]" ""
		5 2 "RRN3" "|R3:arm_GRP|R3:arm_motion_GRP|R3:input_scapula|R3:input_shoulder|R3:input_elbow|R3:input_wrist|R3:input_F_toe.rotate" 
		"RRN3.placeHolderList[10]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A8D5D9A3-4369-6C48-3401-52B4F55572D2";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1074\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1074\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1074\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "05733E37-4F85-A842-CF97-DA8DBCC85BBB";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	rename -uid "27825ADD-4942-869E-FF57-33A008B73AA3";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
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
	setAttr -s 462 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 9 ".r";
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
connectAttr "LRN.phl[1]" "RRN.phl[1]";
connectAttr "LRN.phl[2]" "RRN.phl[2]";
connectAttr "LRN.phl[3]" "RRN.phl[3]";
connectAttr "LRN.phl[4]" "RRN.phl[4]";
connectAttr "LRN.phl[5]" "RRN.phl[5]";
connectAttr "LRN.phl[6]" "RRN.phl[6]";
connectAttr "LRN.phl[7]" "RRN.phl[7]";
connectAttr "LRN.phl[8]" "RRN.phl[8]";
connectAttr "LRN.phl[9]" "RRN.phl[9]";
connectAttr "LRN.phl[10]" "RRN.phl[10]";
connectAttr "LRN1.phl[1]" "RRN1.phl[1]";
connectAttr "LRN1.phl[2]" "RRN1.phl[2]";
connectAttr "LRN1.phl[3]" "RRN1.phl[3]";
connectAttr "LRN1.phl[4]" "RRN1.phl[4]";
connectAttr "LRN1.phl[5]" "RRN1.phl[5]";
connectAttr "LRN1.phl[6]" "RRN1.phl[6]";
connectAttr "LRN1.phl[7]" "RRN1.phl[7]";
connectAttr "LRN1.phl[8]" "RRN1.phl[8]";
connectAttr "LRN1.phl[9]" "RRN1.phl[9]";
connectAttr "LRN1.phl[10]" "RRN1.phl[10]";
connectAttr "LRN.phl[11]" "LRN2.phl[1]";
connectAttr "LRN.phl[12]" "LRN2.phl[2]";
connectAttr "LRN.phl[13]" "LRN2.phl[3]";
connectAttr "LRN.phl[14]" "LRN2.phl[4]";
connectAttr "LRN.phl[15]" "LRN2.phl[5]";
connectAttr "LRN.phl[16]" "LRN2.phl[6]";
connectAttr "LRN.phl[17]" "LRN2.phl[7]";
connectAttr "LRN.phl[18]" "LRN2.phl[8]";
connectAttr "LRN.phl[19]" "LRN2.phl[9]";
connectAttr "LRN.phl[20]" "LRN2.phl[10]";
connectAttr "LRN1.phl[11]" "LRN3.phl[1]";
connectAttr "LRN1.phl[12]" "LRN3.phl[2]";
connectAttr "LRN1.phl[13]" "LRN3.phl[3]";
connectAttr "LRN1.phl[14]" "LRN3.phl[4]";
connectAttr "LRN1.phl[15]" "LRN3.phl[5]";
connectAttr "LRN1.phl[16]" "LRN3.phl[6]";
connectAttr "LRN1.phl[17]" "LRN3.phl[7]";
connectAttr "LRN1.phl[18]" "LRN3.phl[8]";
connectAttr "LRN1.phl[19]" "LRN3.phl[9]";
connectAttr "LRN1.phl[20]" "LRN3.phl[10]";
connectAttr "LRN2.phl[11]" "RRN2.phl[1]";
connectAttr "LRN2.phl[12]" "RRN2.phl[2]";
connectAttr "LRN2.phl[13]" "RRN2.phl[3]";
connectAttr "LRN2.phl[14]" "RRN2.phl[4]";
connectAttr "LRN2.phl[15]" "RRN2.phl[5]";
connectAttr "LRN2.phl[16]" "RRN2.phl[6]";
connectAttr "LRN2.phl[17]" "RRN2.phl[7]";
connectAttr "LRN2.phl[18]" "RRN2.phl[8]";
connectAttr "LRN2.phl[19]" "RRN2.phl[9]";
connectAttr "LRN2.phl[20]" "RRN2.phl[10]";
connectAttr "LRN3.phl[11]" "RRN3.phl[1]";
connectAttr "LRN3.phl[12]" "RRN3.phl[2]";
connectAttr "LRN3.phl[13]" "RRN3.phl[3]";
connectAttr "LRN3.phl[14]" "RRN3.phl[4]";
connectAttr "LRN3.phl[15]" "RRN3.phl[5]";
connectAttr "LRN3.phl[16]" "RRN3.phl[6]";
connectAttr "LRN3.phl[17]" "RRN3.phl[7]";
connectAttr "LRN3.phl[18]" "RRN3.phl[8]";
connectAttr "LRN3.phl[19]" "RRN3.phl[9]";
connectAttr "LRN3.phl[20]" "RRN3.phl[10]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "LRN2.sr";
connectAttr "sharedReferenceNode.sr" "RRN2.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of quadruped_test_01.ma
