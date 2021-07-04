//Maya ASCII 2019 scene
//Name: Mir_bend.ma
//Last modified: Wed, May 12, 2021 07:34:23 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires -nodeType "aiOptions" "mtoa" "4.0.3";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "redshift4maya" "2.6.31";
requires "RenderMan_for_Maya" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "BA230622-488A-B3A3-8451-EB8748948DA9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1545219474915207 3.5949241402685739 11.779769283919011 ;
	setAttr ".r" -type "double3" 359.06164726517096 -1071.4000000000233 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F7C218C8-4757-9DD5-864C-49AA7284D757";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 11.684273301592485;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.3813083230954517 15.36793213160362 -1.2347371512298491 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "08788D2A-4E20-3012-D1DB-E1A0836A4542";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6BAC5396-4AF5-6EEA-B7AD-BA8344AC64DD";
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
	rename -uid "0B7B547C-420C-3772-5C14-538CF294C242";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CD17A42D-42DB-219E-95C1-D48967459E38";
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
	rename -uid "991FE637-44FB-6A43-F1BF-A9B1ADDEE458";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "97FD5275-4154-6BC3-AC6D-F3BFA90D7075";
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
createNode transform -n "bend_SET";
	rename -uid "E2C5EAFB-4045-75C5-F376-41B7A8D4B111";
createNode transform -n "armUpper_TGET_RIG_L_GRP" -p "bend_SET";
	rename -uid "F8A98948-4E5B-D22C-02CC-1BB2782EB040";
createNode transform -n "armUpper_TGET_L_GRP" -p "armUpper_TGET_RIG_L_GRP";
	rename -uid "60487F35-413A-4CCF-B7DC-98B6664C7024";
createNode transform -n "armUpper_TGET_joint_L_spcGRP" -p "armUpper_TGET_L_GRP";
	rename -uid "0EBBB865-40E7-EB51-6D8E-5FAF1AC93B2E";
createNode transform -n "armUpper_TGET_joint_L_offGRP" -p "armUpper_TGET_joint_L_spcGRP";
	rename -uid "552A5F9C-467D-5307-5D6E-41A623102EDB";
createNode joint -n "armUpper_TGET_L_JNT" -p "armUpper_TGET_joint_L_offGRP";
	rename -uid "698BFA3D-470F-DFF2-1D9A-7A89A28ADB24";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_01_L_spcGRP" -p "armUpper_TGET_L_GRP";
	rename -uid "46443C28-4B73-A746-EA15-32B4AEE590D4";
createNode transform -n "armUpper_TGET_joint_01_L_offGRP" -p "armUpper_TGET_joint_01_L_spcGRP";
	rename -uid "E92B4013-4E1A-A8DF-7CA5-B680203EB871";
createNode joint -n "armUpper_TGET_01_L_JNT" -p "armUpper_TGET_joint_01_L_offGRP";
	rename -uid "CD15D03E-4867-777D-6E61-669F7B42B956";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_02_L_spcGRP" -p "armUpper_TGET_L_GRP";
	rename -uid "240FD367-42BB-2D2A-7AF9-008AB8DA1057";
createNode transform -n "armUpper_TGET_joint_02_L_offGRP" -p "armUpper_TGET_joint_02_L_spcGRP";
	rename -uid "9474436E-4991-36DA-54D7-4E946C1B937A";
createNode joint -n "armUpper_TGET_02_L_JNT" -p "armUpper_TGET_joint_02_L_offGRP";
	rename -uid "A3A94195-4EF1-1040-068E-6E93A02218F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_03_L_spcGRP" -p "armUpper_TGET_L_GRP";
	rename -uid "8187623E-4AD5-E82A-D0F3-989F9177C67A";
createNode transform -n "armUpper_TGET_joint_03_L_offGRP" -p "armUpper_TGET_joint_03_L_spcGRP";
	rename -uid "700927F5-4B7A-3E50-E0BD-94BD3E600420";
createNode joint -n "armUpper_TGET_03_L_JNT" -p "armUpper_TGET_joint_03_L_offGRP";
	rename -uid "68B699D6-4DAF-9B1F-DCA1-CAB578EC3C59";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_04_L_spcGRP" -p "armUpper_TGET_L_GRP";
	rename -uid "A6C7509B-40FD-B21F-31CF-A0B7A3CFA6A6";
createNode transform -n "armUpper_TGET_joint_04_L_offGRP" -p "armUpper_TGET_joint_04_L_spcGRP";
	rename -uid "B198807F-4CBB-47E7-49AB-C789FBA2E695";
createNode joint -n "armUpper_TGET_04_L_JNT" -p "armUpper_TGET_joint_04_L_offGRP";
	rename -uid "B7FCFE96-4838-5CBB-8718-0C88B6C0001B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_L_SRF" -p "armUpper_TGET_L_GRP";
	rename -uid "FE2A2460-4126-CF65-4DEF-F19779E1234E";
	setAttr ".t" -type "double3" 1.01269 10.115800000000002 -0.055927399999999988 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -88.635706915699473 -1.4625692094542828 136.98258531687821 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.87498758631988216 0 0 ;
	setAttr ".rpt" -type "double3" -0.23544258631988077 -0.5967300000000012 -0.022333299999999622 ;
	setAttr ".sp" -type "double3" 0.87498758631988216 0 0 ;
createNode nurbsSurface -n "armUpper_TGET_L_SRFShape" -p "armUpper_TGET_L_SRF";
	rename -uid "F4906941-4814-36E9-E81D-3B8DB9178D5E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "armUpper_TGET_L_SRFShapeOrig" -p "armUpper_TGET_L_SRF";
	rename -uid "ECF18219-4D0C-F4BA-C52A-A7B4E225F52A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		5 1 0 0 no 
		10 0 0 0 0 0 1 1 1 1 1
		2 0 1
		
		12
		-1.7763568394002505e-15 2.7755575615628914e-17 0.17499751726397861
		-2.6645352591003757e-15 2.7755575615628914e-17 -0.17499751726397328
		0.34999503452795189 -2.4980018054066022e-16 0.1749975172639795
		0.34999503452795366 -3.0531133177191805e-16 -0.17499751726397328
		0.69999006905590466 2.4980018054066022e-16 0.17499751726398216
		0.69999006905590289 1.9428902930940239e-16 -0.17499751726397328
		1.0499851035838557 -7.2164496600635175e-16 0.17499751726397772
		1.0499851035838592 -7.2164496600635175e-16 -0.17499751726396795
		1.3999801381118155 4.7184478546569153e-16 0.17499751726398127
		1.3999801381118155 4.7184478546569153e-16 -0.17499751726397328
		1.7499751726397657 -2.7755575615628914e-17 0.17499751726397772
		1.7499751726397639 -5.5511151231257827e-17 -0.1749975172639715
		
		;
createNode transform -n "armUpper_TWST_control_L_GRP" -p "armUpper_TGET_RIG_L_GRP";
	rename -uid "7EDDA6BC-4805-03CB-1467-4C9937B155DB";
createNode transform -n "armUpper_TWST_control_L_spcGRP" -p "armUpper_TWST_control_L_GRP";
	rename -uid "32FF0454-4BE2-D452-E76A-0C888D10BC47";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "armUpper_TWST_control_L_offGRP" -p "armUpper_TWST_control_L_spcGRP";
	rename -uid "BF2A6FDF-4815-A57F-3238-D1A6D25E5482";
createNode transform -n "armUpper_TWST_control_start_L_GRP" -p "armUpper_TWST_control_L_offGRP";
	rename -uid "3D9E8CF6-400A-3604-7248-BAAC093EC81B";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.4286128663675299e-17 0 ;
createNode transform -n "armUpper_TWST_control_start_L_oriGRP" -p "armUpper_TWST_control_start_L_GRP";
	rename -uid "02172D25-43A0-FB2E-F517-929C204E6C06";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -4.5102810375396984e-17 0 ;
createNode transform -n "armUpper_TWST_control_start_L_aimGRP" -p "armUpper_TWST_control_start_L_oriGRP";
	rename -uid "7C02743A-4E72-B9EE-0E7D-4FBAEE996FE3";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.4286128663675299e-17 0 ;
createNode transform -n "armUpper_TWST_start_L_CTL" -p "armUpper_TWST_control_start_L_aimGRP";
	rename -uid "A7C7877B-4887-FF4B-BE84-7DBC9BB95564";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armUpper_TWST_start_L_CTLShape" -p "armUpper_TWST_start_L_CTL";
	rename -uid "7E31A9F9-46FD-67D5-48AC-A3A6ADF2B518";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9021345524485225e-17 0.24265155106379302 -0.24265155106379252
		-2.1012558019862742e-17 -3.9150579967210164e-17 -0.34316111444528324
		-6.8737590056326664e-17 -0.24265155106379263 -0.24265155106379252
		-7.6197074082636372e-17 -0.34316111444528324 -9.9439505753011378e-17
		-3.9021345524485188e-17 -0.24265155106379274 0.24265155106379252
		2.1012558019862723e-17 -1.0340114095528511e-16 0.34316111444528324
		6.8737590056326603e-17 0.24265155106379252 0.24265155106379263
		7.6197074082636372e-17 0.34316111444528324 1.8431250398477474e-16
		3.9021345524485225e-17 0.24265155106379302 -0.24265155106379252
		-2.1012558019862742e-17 -3.9150579967210164e-17 -0.34316111444528324
		-6.8737590056326664e-17 -0.24265155106379263 -0.24265155106379252
		;
createNode joint -n "armUpper_TWST_start_L_JNT" -p "armUpper_TWST_start_L_CTL";
	rename -uid "9B0B1DDE-495E-D1C2-8A56-ACA04FBDD72E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.9936057773011271e-15 9.0205620750793969e-17 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -1.6101558074909054e-14 -1.5530052155559277e-18 1.7294266080457874e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -0.73090818070466046 0.68199836006249814 0.025523876098019829 0
		 -0.034899496702499248 1.5113976234966848e-15 -0.99939082701909554 0 -0.68158290508852692 -0.7313537016191709 0.023801399518110087 0
		 1.0126899999999979 10.115800000000014 -0.0559273999999979 1;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode aimConstraint -n "armUpper_TWST_control_start_L_aimGRP_aimConstraint1" 
		-p "armUpper_TWST_control_start_L_aimGRP";
	rename -uid "4B3911E0-4139-06F4-CD75-15BB1A013C4A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armMid_L_CTLW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" 539.99996443737177 -0.0011956720943590306 1.061471345062698e-05 ;
	setAttr ".rsrr" -type "double3" 359.99999999999886 -5.8237695583438417e-19 5.5775681410733647e-33 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "armUpper_TWST_control_start_L_oriGRP_orientConstraint1" 
		-p "armUpper_TWST_control_start_L_oriGRP";
	rename -uid "3C147DD4-431B-07B8-7548-6B9302F5F472";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_IK_TWST_start_L_JNTW0" -dv 
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
	setAttr ".lr" -type "double3" 0.00044039946591696832 0.0015349727813059441 90.000026945383041 ;
	setAttr ".o" -type "double3" 3.5975981088853042e-05 0 0 ;
	setAttr ".rsrr" -type "double3" 3.5975981088853049e-05 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_control_end_L_GRP" -p "armUpper_TWST_control_L_offGRP";
	rename -uid "C86B4562-4B3D-4808-A33B-5AB45236D873";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.9919368736586529 -3.1168766007061421e-07 -1.7561407668953422e-05 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "armUpper_TWST_control_end_L_conGRP" -p "armUpper_TWST_control_end_L_GRP";
	rename -uid "59450FE3-410C-0635-DBF3-DAB06CC71C04";
createNode transform -n "armUpper_TWST_control_end_L_offGRP" -p "armUpper_TWST_control_end_L_conGRP";
	rename -uid "F4F337EA-41C3-4AF4-13EE-138CAC34A865";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -2.7755575615628914e-17 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "armUpper_TWST_end_L_CTL" -p "armUpper_TWST_control_end_L_offGRP";
	rename -uid "F00DF8F0-43AE-A3FE-6A63-DF9BE6450E6C";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armUpper_TWST_end_L_CTLShape" -p "armUpper_TWST_end_L_CTL";
	rename -uid "0A7011DA-4D43-0987-73B5-81AE24A5CD0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.5087602097527047e-16 0.24265155106379302 -0.24265155106379252
		-9.1090992451961887e-16 -1.1899857994658205e-17 -0.34316111444528324
		-9.5863495655608203e-16 -0.24265155106379252 -0.24265155106379252
		-9.6609444058239143e-16 -0.34316111444528324 -9.9439505753011378e-17
		-9.289187120242407e-16 -0.24265155106379269 0.24265155106379252
		-8.6888480847989309e-16 -7.6150418982733209e-17 0.34316111444528324
		-8.2115977644342934e-16 0.24265155106379252 0.24265155106379263
		-8.1370029241711915e-16 0.3431611144452833 1.8431250398477474e-16
		-8.5087602097527047e-16 0.24265155106379302 -0.24265155106379252
		-9.1090992451961887e-16 -1.1899857994658205e-17 -0.34316111444528324
		-9.5863495655608203e-16 -0.24265155106379252 -0.24265155106379252
		;
createNode joint -n "armUpper_TWST_end_L_JNT" -p "armUpper_TWST_end_L_CTL";
	rename -uid "4A8D382D-46C0-895F-39DB-AA8539293C8F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".is" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".bps" -type "matrix" -0.73173299497772959 0.68106370501259472 -0.026815178079572795 0
		 0.0034011104077834868 -0.035693036329989818 -0.99935701308668512 0 -0.68158290508852692 -0.7313537016191709 0.023801399518110583 0
		 2.2917799999999975 8.9223400000000126 -0.1005939999999976 1;
	setAttr ".ds" 2;
	setAttr ".radi" 0.57376969512723575;
createNode pointConstraint -n "armUpper_TWST_control_end_L_conGRP_pointConstraint1" 
		-p "armUpper_TWST_control_end_L_conGRP";
	rename -uid "2BE9E970-4E0C-504B-D7D8-39BBD7B7E30B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armMid_L_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.3671216418108543e-06 4.2776172559655379e-07 6.5744032043291156e-05 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "armUpper_TWST_control_end_L_conGRP_aimConstraint1" -p
		 "armUpper_TWST_control_end_L_conGRP";
	rename -uid "323CF5B6-4348-1DCA-BA6D-5D9AFA8E49A4";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armStart_L_CTLW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -179.99997532908313 -0.00050411345540932499 8.9471208404696811e-06 ;
	setAttr ".rsrr" -type "double3" -3.4325388774030054e-15 4.5429273779556799e-38 1.5166066558187088e-21 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_locator_start_L_GRP" -p "armUpper_TGET_RIG_L_GRP";
	rename -uid "C6D28EA8-4C54-B0F6-63D8-22AA0C519F59";
	setAttr ".t" -type "double3" 2.0930842166197725 15.549703249612737 -0.5562577204028174 ;
	setAttr ".r" -type "double3" -133.55943661897757 -10.075397377387064 113.77115174552605 ;
createNode transform -n "armUpper_TWST_locator_start_L_offGRP" -p "armUpper_TWST_locator_start_L_GRP";
	rename -uid "290DB318-43C5-F8A8-9E43-DA80967CC087";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "armUpper_TWST_start_L_LOC" -p "armUpper_TWST_locator_start_L_offGRP";
	rename -uid "0859D12D-456D-FC38-BB3F-A488652A3FCB";
	setAttr ".t" -type "double3" 0 -1.7347234759768071e-17 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "armUpper_TWST_start_L_LOCShape" -p "armUpper_TWST_start_L_LOC";
	rename -uid "D7D3765A-41BE-9B73-F752-A9AA7DFEE757";
	setAttr -k off ".v";
createNode transform -n "armUpper_TWST_start_L_vecLOC" -p "armUpper_TWST_start_L_LOC";
	rename -uid "E5AFA826-4F3D-77E0-8BB1-E9A94955FE16";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "armUpper_TWST_start_L_vecLOCShape" -p "armUpper_TWST_start_L_vecLOC";
	rename -uid "92339ADA-46A5-0AAC-79E5-038716D1524F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode parentConstraint -n "armUpper_TWST_locator_start_L_offGRP_parentConstraint1" 
		-p "armUpper_TWST_locator_start_L_offGRP";
	rename -uid "68D9FA2E-4C47-34E1-28F2-49AE4FAF896D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_IK_TWST_start_L_JNTW0" -dv 
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
	setAttr ".tg[0].tot" -type "double3" -2.360394210043637e-05 -7.0619385894588049e-09 
		2.5870332645006044e-05 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.8768773075407074e-05 0 ;
	setAttr ".lr" -type "double3" 133.62869848145112 10.47187266531153 23.608034794339485 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 8.8817841970012523e-16 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 0 3.8768773075407081e-05 0 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_locator_end_L_GRP" -p "armUpper_TGET_RIG_L_GRP";
	rename -uid "A173F0D6-455E-E53E-E364-53A1FDAC453E";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
createNode transform -n "armUpper_TWST_locator_end_L_conGRP" -p "armUpper_TWST_locator_end_L_GRP";
	rename -uid "8A194C85-40DA-A3FF-19FD-C4A65E3A66B7";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "armUpper_TWST_locator_end_L_offGRP" -p "armUpper_TWST_locator_end_L_conGRP";
	rename -uid "8FC01B05-462E-E329-791D-8399C5A460AE";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "armUpper_TWST_end_L_LOC" -p "armUpper_TWST_locator_end_L_offGRP";
	rename -uid "9C9B13F0-4535-D079-2D71-7983EB36DB0A";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999944 ;
createNode locator -n "armUpper_TWST_end_L_LOCShape" -p "armUpper_TWST_end_L_LOC";
	rename -uid "F5DF2CAD-4DE2-038F-E743-4A8FAB3C8EA9";
	setAttr -k off ".v";
createNode transform -n "armUpper_TWST_end_L_vecLOC" -p "armUpper_TWST_end_L_LOC";
	rename -uid "F5688ECE-42F3-1634-5670-B582BD3B0310";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "armUpper_TWST_end_L_vecLOCShape" -p "armUpper_TWST_end_L_vecLOC";
	rename -uid "78101740-4C15-92BA-0BDE-67AFAA902BF2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode pointConstraint -n "armUpper_TWST_locator_end_L_conGRP_pointConstraint1" 
		-p "armUpper_TWST_locator_end_L_conGRP";
	rename -uid "C8736594-4A1E-60C9-4859-03B76766E4BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armMid_L_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.4435264087685482e-06 -1.3026258605108865e-07 6.5744032050396584e-05 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "armUpper_TWST_locator_end_L_conGRP_orientConstraint1" 
		-p "armUpper_TWST_locator_end_L_conGRP";
	rename -uid "E53869ED-4B86-7C69-E9DD-9C871F279388";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armStart_L_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -4.2062600183098704e-06 ;
	setAttr ".o" -type "double3" 0 0 23.592170523526871 ;
	setAttr -k on ".w0";
createNode transform -n "bend_shoulder_control_L_GRP" -p "bend_SET";
	rename -uid "4E47AFAE-404F-A90C-C1C1-51923F04E48C";
	setAttr ".t" -type "double3" 2.8721907904818211 13.741712261320112 -0.88916730617351003 ;
	setAttr ".r" -type "double3" -135.11875915456534 -11.159582969056839 114.82494740369648 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "bend_shoulder_control_L_offGRP" -p "bend_shoulder_control_L_GRP";
	rename -uid "FBD4C38B-45E1-B7B5-D841-01B7D7C843D0";
createNode transform -n "bend_shoulder_L_CTL" -p "bend_shoulder_control_L_offGRP";
	rename -uid "5A31169D-4DDE-65D3-1EF6-ADB710593BF6";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 1.3322676295501878e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "bend_shoulder_L_CTLShape" -p "bend_shoulder_L_CTL";
	rename -uid "C2CB4A7C-479C-E752-084E-73B662D8FCB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		-9.1593399531575415e-16 -0.99999999999999911 0
		-9.1593399531575415e-16 -0.29160023273973823 -0.29160026651639392
		-9.1593399531575415e-16 -1.3533172194078288e-08 -0.99999986407963004
		-9.1593399531575415e-16 0.29160029025577061 -0.29160027543842054
		-9.1593399531575415e-16 0.99999985819564552 3.8177201209262268e-16
		-9.1593399531575415e-16 0.29160029025576906 0.29160027543842199
		-9.1593399531575415e-16 -1.3533172685983406e-08 0.9999998640796306
		-9.1593399531575415e-16 -0.29160023273973867 0.29160026651639326
		-9.1593399531575415e-16 -0.99999999999999911 0
		;
createNode joint -n "bend_shoulder_L_JNT" -p "bend_shoulder_L_CTL";
	rename -uid "D520E94F-452B-C8D8-4AD1-FCB8F2DC69C9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -0.73090843674792061 0.68197701719282777 0.02553103017528818 0
		 -0.018667460009585028 0.017417747635455453 -0.999674020870853 0 -0.68220907771260919 -0.7311571474631916 2.7755575615628921e-15 0
		 1.6522349999999952 9.5190697742330155 -0.07826069403953502 1;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode pointConstraint -n "bend_shoulder_control_L_offGRP_pointConstraint1" -p
		 "bend_shoulder_control_L_offGRP";
	rename -uid "87FE06F3-4A87-D832-834C-ABAAF9D6B928";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_TWST_start_L_CTLW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "armUpper_TWST_end_L_CTLW1" -dv 1 -min 
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
	setAttr -s 2 ".tg";
	setAttr ".o" -type "double3" 1.2019537667384839e-05 -0.022913689876553178 -0.00054647291881426696 ;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode orientConstraint -n "bend_shoulder_control_L_offGRP_orientConstraint1" 
		-p "bend_shoulder_control_L_offGRP";
	rename -uid "AB8347EF-44F9-60F1-0875-23831776090A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_TWST_start_L_CTLW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "armUpper_TWST_end_L_CTLW1" -dv 1 -min 
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 134.88365488724432 9.8913171764154484 25.329097969305003 ;
	setAttr ".o" -type "double3" -1.3651509051418576 -0.0009415622506170711 -1.4994022119085115 ;
	setAttr ".rsrr" -type "double3" 5.9640253418739549e-16 -1.0348460634850763e-33 1.9883319900445594e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode transform -n "armStart_controlJoint_L_GRP" -p "bend_SET";
	rename -uid "CA2EA683-4A9D-9590-AF36-6F95C3774CEE";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 5 0 ;
createNode transform -n "armStart_controlJoint_L_offGRP" -p "armStart_controlJoint_L_GRP";
	rename -uid "45855583-4C6B-9E75-8FBF-DBA14A59E45F";
createNode joint -n "armStart_control_L_JNT" -p "armStart_controlJoint_L_offGRP";
	rename -uid "ACB154E7-4EB9-38BF-6390-A5A23748FD82";
	addAttr -s false -ci true -sn "cgmMatchTarget" -ln "cgmMatchTarget" -at "message";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 8.7134398661347224e-09 -2.6356553040927512e-09 -4.2062600183098729e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73090818070466024 0.68199836006249792 0.025523876098019815 0
		 -0.034899496702499422 1.3322676295501878e-15 -0.99939082701909565 0 -0.68158290508852692 -0.7313537016191709 0.023801399518110333 0
		 1.0126899999999992 10.115800000000011 -0.055927399999997865 1;
	setAttr ".ds" 2;
createNode transform -n "armStart_control_L_GRP" -p "armStart_control_L_JNT";
	rename -uid "150DF4CA-4301-3F45-6F72-D7A209FF2CEB";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 5.2041704279304213e-17 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "armStart_control_L_offGRP" -p "armStart_control_L_GRP";
	rename -uid "6194429F-4C04-1220-93E3-E68EC6280464";
createNode transform -n "armStart_L_CTL" -p "armStart_control_L_offGRP";
	rename -uid "67DC3A46-4DE3-0872-FDAD-F78F34653CC8";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armStart_L_CTL_Shape" -p "armStart_L_CTL";
	rename -uid "56051BAA-408C-EA40-8884-3B8D79D47E4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		1.575393352564469e-15 0.56566192776793833 -8.6173240636698328e-18
		1.575393352564469e-15 0.52260374182624236 0.21646920350401774
		1.575393352564469e-15 0.39998350875820354 0.39998350875820354
		1.575393352564469e-15 0.21646920350401774 0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 0.56566192776793833
		1.575393352564469e-15 -0.21646920350401774 0.52260374182624236
		1.575393352564469e-15 -0.39998350875820354 0.39998350875820354
		1.575393352564469e-15 -0.52260374182624236 0.21646920350401774
		1.575393352564469e-15 -0.56566192776793833 -8.6173240636698328e-18
		1.575393352564469e-15 -0.52260374182624236 -0.21646920350401774
		1.575393352564469e-15 -0.39998350875820354 -0.39998350875820354
		1.575393352564469e-15 -0.21646920350401774 -0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 -0.56566192776793833
		1.575393352564469e-15 0.21646920350401774 -0.52260374182624236
		1.575393352564469e-15 0.39998350875820354 -0.39998350875820354
		1.575393352564469e-15 0.52260374182624236 -0.21646920350401774
		1.575393352564469e-15 0.56566192776793833 -8.6173240636698328e-18
		0.21646920350401927 0.52260374182624236 -8.6173240636698328e-18
		0.39998350875820537 0.39998350875820354 -8.6173240636698328e-18
		0.52260374182624403 0.21646920350401774 -8.6173240636698328e-18
		0.56566192776794 4.0000221842457109e-17 -8.6173240636698328e-18
		0.52260374182624403 -0.21646920350401774 -8.6173240636698328e-18
		0.39998350875820537 -0.39998350875820354 -8.6173240636698328e-18
		0.21646920350401927 -0.52260374182624236 -8.6173240636698328e-18
		1.575393352564469e-15 -0.56566192776793833 -8.6173240636698328e-18
		-0.21646920350401613 -0.52260374182624236 -8.6173240636698328e-18
		-0.39998350875820149 -0.39998350875820354 -8.6173240636698328e-18
		-0.52260374182624136 -0.21646920350401774 -8.6173240636698328e-18
		-0.56566192776793667 4.0000221842457109e-17 -8.6173240636698328e-18
		-0.52260374182624136 0.21646920350401774 -8.6173240636698328e-18
		-0.39998350875820149 0.39998350875820354 -8.6173240636698328e-18
		-0.21646920350401613 0.52260374182624236 -8.6173240636698328e-18
		1.575393352564469e-15 0.56566192776793833 -8.6173240636698328e-18
		1.575393352564469e-15 0.52260374182624236 -0.21646920350401774
		1.575393352564469e-15 0.39998350875820354 -0.39998350875820354
		1.575393352564469e-15 0.21646920350401774 -0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 -0.56566192776793833
		-0.21646920350401613 4.0000221842457109e-17 -0.52260374182624236
		-0.39998350875820149 4.0000221842457109e-17 -0.39998350875820354
		-0.52260374182624136 4.0000221842457109e-17 -0.21646920350401774
		-0.56566192776793667 4.0000221842457109e-17 -8.6173240636698328e-18
		-0.52260374182624136 4.0000221842457109e-17 0.21646920350401774
		-0.39998350875820149 4.0000221842457109e-17 0.39998350875820354
		-0.21646920350401613 4.0000221842457109e-17 0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 0.56566192776793833
		0.21646920350401927 4.0000221842457109e-17 0.52260374182624236
		0.39998350875820537 4.0000221842457109e-17 0.39998350875820354
		0.52260374182624403 4.0000221842457109e-17 0.21646920350401774
		0.56566192776794 4.0000221842457109e-17 -8.6173240636698328e-18
		0.52260374182624403 4.0000221842457109e-17 -0.21646920350401774
		0.39998350875820537 4.0000221842457109e-17 -0.39998350875820354
		0.21646920350401927 4.0000221842457109e-17 -0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 -0.56566192776793833
		;
createNode joint -n "armStart_L_JNT" -p "armStart_L_CTL";
	rename -uid "68F0D82D-489E-92B7-E709-22A02A806C0D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 4.5102810375396984e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73090818070466024 0.68199836006249792 0.025523876098019815 0
		 -0.034899496702499422 1.3322676295501878e-15 -0.99939082701909565 0 -0.68158290508852681 -0.73135370161917079 0.02380139951811033 0
		 1.0126899999999952 10.115800000000014 -0.055927399999997823 1;
	setAttr ".ds" 2;
createNode transform -n "armMid_controlJoint_L_GRP" -p "bend_SET";
	rename -uid "BBF11853-4B36-E2B2-A991-B1B3E39C5B60";
	setAttr ".ove" yes;
createNode transform -n "armMid_controlJoint_L_offGRP" -p "armMid_controlJoint_L_GRP";
	rename -uid "263BC008-4C6F-E37B-8EAB-81928609F7BC";
createNode joint -n "armMid_control_L_JNT" -p "armMid_controlJoint_L_offGRP";
	rename -uid "B668EC3F-4596-B8A9-A093-DE86135DC9FF";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73173299497772959 0.68106370501259506 -0.026815178079570852 0
		 0.0034010928164205376 -0.035693055205913149 -0.99935701247238062 0 -0.68158290517630815 -0.73135370069794869 0.023801425311084978 0
		 2.2917799999999988 8.9223400000000002 -0.10059399999999792 1;
	setAttr ".ds" 2;
createNode transform -n "armMid_control_L_GRP" -p "armMid_control_L_JNT";
	rename -uid "05753A53-49F1-8376-3DDB-919B94656AA1";
	setAttr ".ove" yes;
createNode transform -n "armMid_control_L_offGRP" -p "armMid_control_L_GRP";
	rename -uid "6E8F6AF3-4C8C-69F4-7F75-E4B85042F6C0";
createNode transform -n "armMid_L_CTL" -p "armMid_control_L_offGRP";
	rename -uid "7426B53F-4019-72DF-6713-55A44669CC57";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
	setAttr ".ro" 5;
createNode nurbsCurve -n "armMid_L_CTL_Shape" -p "armMid_L_CTL";
	rename -uid "20FB4968-41CB-DD2E-D012-1D9742CA4DB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0 0.46907832721577525 0
		0 0.43337208494811003 0.17950830149391442
		0 0.33168856872256525 0.33168856872256525
		0 0.17950830149391442 0.43337208494811003
		0 0 0.46907832721577525
		0 -0.17950830149391442 0.43337208494811003
		0 -0.33168856872256525 0.33168856872256525
		0 -0.43337208494811003 0.17950830149391442
		0 -0.46907832721577525 0
		0 -0.43337208494811003 -0.17950830149391442
		0 -0.33168856872256525 -0.33168856872256525
		0 -0.17950830149391442 -0.43337208494811003
		0 0 -0.46907832721577525
		0 0.17950830149391442 -0.43337208494811003
		0 0.33168856872256525 -0.33168856872256525
		0 0.43337208494811003 -0.17950830149391442
		0 0.46907832721577525 0
		0.17950830149391442 0.43337208494811003 0
		0.33168856872256525 0.33168856872256525 0
		0.43337208494811003 0.17950830149391442 0
		0.46907832721577525 0 0
		0.43337208494811003 -0.17950830149391442 0
		0.33168856872256525 -0.33168856872256525 0
		0.17950830149391442 -0.43337208494811003 0
		0 -0.46907832721577525 0
		-0.17950830149391442 -0.43337208494811003 0
		-0.33168856872256525 -0.33168856872256525 0
		-0.43337208494811003 -0.17950830149391442 0
		-0.46907832721577525 0 0
		-0.43337208494811003 0.17950830149391442 0
		-0.33168856872256525 0.33168856872256525 0
		-0.17950830149391442 0.43337208494811003 0
		0 0.46907832721577525 0
		0 0.43337208494811003 -0.17950830149391442
		0 0.33168856872256525 -0.33168856872256525
		0 0.17950830149391442 -0.43337208494811003
		0 0 -0.46907832721577525
		-0.17950830149391442 0 -0.43337208494811003
		-0.33168856872256525 0 -0.33168856872256525
		-0.43337208494811003 0 -0.17950830149391442
		-0.46907832721577525 0 0
		-0.43337208494811003 0 0.17950830149391442
		-0.33168856872256525 0 0.33168856872256525
		-0.17950830149391442 0 0.43337208494811003
		0 0 0.46907832721577525
		0.17950830149391442 0 0.43337208494811003
		0.33168856872256525 0 0.33168856872256525
		0.43337208494811003 0 0.17950830149391442
		0.46907832721577525 0 0
		0.43337208494811003 0 -0.17950830149391442
		0.33168856872256525 0 -0.33168856872256525
		0.17950830149391442 0 -0.43337208494811003
		0 0 -0.46907832721577525
		;
createNode joint -n "armMid_L_JNT" -p "armMid_L_CTL";
	rename -uid "AA3CEDC3-4719-7216-C110-3E83D484D078";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73173299497772959 0.68106370501259506 -0.026815178079570852 0
		 0.0034010928164205376 -0.035693055205913149 -0.99935701247238062 0 -0.68158290517630815 -0.73135370069794869 0.023801425311084978 0
		 2.2917799999999988 8.9223400000000002 -0.10059399999999792 1;
	setAttr ".ds" 2;
createNode transform -n "armUpper_IK_TWST_joint_L_GRP" -p "bend_SET";
	rename -uid "2751E331-462F-068D-6447-238E1D78E194";
	setAttr ".t" -type "double3" 2.6268357813817773e-16 5 1.755219026322401e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode joint -n "armUpper_IK_TWST_start_L_JNT" -p "armUpper_IK_TWST_joint_L_GRP";
	rename -uid "97B7FB0B-4BEF-197C-8DA6-CDBEE821E757";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0.00044039946591696832 0.0015349727813059445 90.000022739123025 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode joint -n "armUpper_IK_TWST_end_L_JNT" -p "armUpper_IK_TWST_start_L_JNT";
	rename -uid "0C9C199C-4449-161E-32AA-8E80830D3296";
	setAttr ".t" -type "double3" -3.9919380972947263 -3.0462571931622051e-07 -4.3431740309962663e-05 ;
	setAttr ".r" -type "double3" 0 0 20.592170523526839 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.0000000000000453 ;
	setAttr ".ds" 2;
	setAttr ".radi" 0.57376969512723575;
createNode ikEffector -n "armUpper_IK_TWST_L_effector" -p "armUpper_IK_TWST_start_L_JNT";
	rename -uid "73C2F953-48DF-A2AA-966B-0EA30BBAB940";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "armUpper_IK_TWST_ikHandle_L_GRP" -p "armUpper_IK_TWST_joint_L_GRP";
	rename -uid "73B42A87-4286-0907-3926-818833A68703";
	setAttr ".t" -type "double3" 2.2636670562052822e-06 -4.9999995720444028 7.9552497480172061e-05 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "armUpper_IK_TWST_ikHandle_L_offGRP" -p "armUpper_IK_TWST_ikHandle_L_GRP";
	rename -uid "5AEA4D41-4CF3-EE91-CA2E-8F87EE80E02E";
	setAttr ".t" -type "double3" 1.0182846210682328e-07 2.7531809854153266e-07 -1.8266499424157701e-10 ;
createNode ikHandle -n "armUpper_IK_TWST_L_IKH" -p "armUpper_IK_TWST_ikHandle_L_offGRP";
	rename -uid "0FE4623A-43C7-FF27-4FD6-04BA85B3F437";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 0 0 -23.592170523526878 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -0.12523177629085266 -0.72386635750118011 -0.67847954920175113 ;
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4F2E21B8-426B-CCAD-1990-67B918D09776";
	setAttr -s 25 ".lnk";
	setAttr -s 25 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "C05E3CEA-4138-4502-675C-CA8F6D9840D9";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/rigLib/Mir_bend.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A679DA06-45BD-1A22-E7DD-39815D5DC633";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B66EBA0C-4D15-6BCB-AF41-D69C00ECC689";
createNode displayLayerManager -n "layerManager";
	rename -uid "F308D271-427A-84EE-7753-91B2BC00C97C";
createNode displayLayer -n "defaultLayer";
	rename -uid "C3284418-42D5-2985-D639-E191501A15F7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0AD38EC0-4674-A8B3-887D-C782CBF6EF5D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E83CF7BE-4656-70D7-C033-88BAA6FFB667";
	setAttr ".g" yes;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "BD6A7AEB-4378-A35A-BCFF-2E96CA18E380";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "838C0023-4FEB-1ECB-ACAD-BD81FE6EA2FF";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -621.42854673521958 -384.52379424420673 ;
	setAttr ".tgi[0].vh" -type "double2" 591.66664315594664 401.19046024859961 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "118217EB-480C-78D4-FB25-9EB994700A9F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 431\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 431\n            -height 329\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 431\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 701\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 701\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 701\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4E5BFE63-416A-4F91-0188-EAB3AEB58DA4";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 250 ";
	setAttr ".st" 6;
createNode groupId -n "groupId36";
	rename -uid "0F5E89BD-41B2-E371-2E23-8487ACFF9744";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	rename -uid "0FBA95F5-4816-5B81-7F03-A4A80B76EA7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "143C48B9-40C3-31C5-ADDA-22994AA144FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	rename -uid "C379A6BC-41BC-703A-3442-0296249DB12D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "55E14CE4-4532-3789-2D53-77874B7DFABF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	rename -uid "EC9B72A0-4EFF-A867-74B6-9F8BE2E255DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "CA43160C-4432-83E1-D5BF-0EA2255E3116";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	rename -uid "62FA4573-42F2-FD43-42D7-D7A4F2AB3BD2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "AEBF3E58-4E9F-3AD9-6885-4D942886282F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	rename -uid "77BD925A-48BB-321B-14CE-B6B97D5E952D";
	setAttr ".ihi" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DFBC4225-4D05-F5C6-3822-238228567CE1";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "4.0.2.1";
createNode polyUnite -n "polyUnite1";
	rename -uid "7824FEF5-406F-A7DB-B7A8-80A441CFBE2E";
createNode materialInfo -n "materialInfo28";
	rename -uid "7494ACC1-435B-4893-BB41-EA99415F182B";
createNode materialInfo -n "materialInfo36";
	rename -uid "C44AF0F6-467C-C898-FD70-E4880D96AAD9";
createNode materialInfo -n "materialInfo39";
	rename -uid "E548B8F2-4BFD-B1B9-75E5-40955076BDC8";
createNode objectSet -s -n "lightEditorRoot";
	rename -uid "664CC662-4245-C77A-0F1E-318621B9D3EA";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	addAttr -ci true -sn "lightGroup" -ln "lightGroup" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visibility" -ln "visibility" -dv 1 -min 0 -max 1 -at "bool";
lockNode -l 1 ;
createNode materialInfo -n "materialInfo47";
	rename -uid "CD96B284-4ADF-55E8-1E87-B0BD8FD3BBAC";
createNode materialInfo -n "materialInfo66";
	rename -uid "7B9BBCD1-4C10-A77F-906F-7AB8F3247D83";
createNode decomposeMatrix -n "armUpper_TGET_joint_L_DCMX";
	rename -uid "2C28125E-48A6-A2B9-CDF1-B387B06BFD5E";
createNode fourByFourMatrix -n "armUpper_TGET_joint_L_FFMX";
	rename -uid "8D71F42D-49FE-7F1F-06DB-08AC464E66D0";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_L_POSI";
	rename -uid "825CF7D6-4C6A-55F6-42B5-62A04B243FB4";
	setAttr ".u" 1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_01_L_DCMX";
	rename -uid "F907AFCD-47F2-7A1B-0FE9-08974708B3A5";
createNode fourByFourMatrix -n "armUpper_TGET_joint_01_L_FFMX";
	rename -uid "E7049BE3-4C8B-D446-F30A-98B3F222B0EC";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_01_L_POSI";
	rename -uid "ADC77271-4EB7-A5E1-F28F-82AE30ACED4B";
	setAttr ".u" 0.75;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_02_L_DCMX";
	rename -uid "89364A39-440D-CE02-6CB3-B5AD90E81880";
createNode fourByFourMatrix -n "armUpper_TGET_joint_02_L_FFMX";
	rename -uid "19777D2D-4013-8B9F-CF8E-52969228C348";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_02_L_POSI";
	rename -uid "EF74002B-4411-F0FE-EF4C-37862412C311";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_03_L_DCMX";
	rename -uid "A2225F51-485B-266A-CBCF-98AA59A69526";
createNode fourByFourMatrix -n "armUpper_TGET_joint_03_L_FFMX";
	rename -uid "5C5278EA-4977-2704-D7CC-D2ADB64928FA";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_03_L_POSI";
	rename -uid "EEAB5CA4-43CF-FA0C-03E3-F0A595859730";
	setAttr ".u" 0.25;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_04_L_DCMX";
	rename -uid "7592393D-431E-E673-D93C-969845770758";
createNode fourByFourMatrix -n "armUpper_TGET_joint_04_L_FFMX";
	rename -uid "74DDF509-4B0A-D968-8B0F-96A4B968C128";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_04_L_POSI";
	rename -uid "2716AF6C-4A6F-9392-4BBB-6497634FA0E6";
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TWST_control_L_DCMX";
	rename -uid "2F93A696-4374-1C5A-911C-9BA905259115";
createNode skinCluster -n "skinCluster3";
	rename -uid "291930FC-4A8A-90E5-1C2E-23873DDDEE22";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 1 1
		1 1 1
		2 1 0.5 2 0.5
		2 1 0.5 2 0.5
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 0 0.5 2 0.5
		2 0 0.5 2 0.5
		1 0 1
		1 0 1;
	setAttr -k off ".wl[0].w";
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.73090818070465957 -0.034899924667924992 -0.68158288317502302 0
		 0.68199836006249792 -4.5921647971042225e-07 -0.73135370161902646 0 0.025523876098019746 -0.99939081207401659 0.023802027034911528 0
		 -6.1573717251164375 -0.020545886694858281 8.0898170006197088 1;
	setAttr ".pm[1]" -type "matrix" -0.7309081807046599 -0.034899496702500386 -0.68158290508852715 0
		 0.68199836006249825 2.3592239273284557e-16 -0.73135370161917079 0 0.02552387609801976 -0.99939082701909521 0.023801399518111888 0
		 -4.4073729487525117 -0.02055075230030241 8.0898187343117112 1;
	setAttr ".pm[2]" -type "matrix" -0.72976626537635358 -0.037759923071437614 -0.6826642627813102 0
		 0.68176250121854831 0.035264356105407783 -0.73073216998291668 0 0.051666839128430675 -0.99866441480514834 8.5620215961063479e-06 0
		 -5.2799799415040933 -0.32853871449472349 8.0843725327717966 0.99999999999999989;
	setAttr ".gm" -type "matrix" -0.73090818070466024 0.68199836006249837 0.025523876098019878 0
		 -0.034899496702500483 0 -0.99939082701909587 0 -0.68158290508852726 -0.73135370161917079 0.023801399518111666 0
		 2.2917705848562284 8.9223299010547983 -0.10059377474053376 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "D8E9970F-4FEF-C632-B832-52B5BFA3EBB5";
createNode objectSet -n "skinCluster3Set";
	rename -uid "DB170469-4CE3-AB29-8E3B-B68E05CBDD3E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "8C1B334E-4A22-4217-4BFF-1F9DC4870446";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "7FA7C5DB-4E0F-8F66-DC6D-AC8601011683";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet3";
	rename -uid "0AC261A9-410D-DEDC-BE32-7AA5CAB96F60";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "1D5FFAEE-4BBA-9AB8-1263-53B4741A1822";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "59EE7F85-43DD-84D8-9920-82B0371BEA11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode dagPose -n "bindPose3";
	rename -uid "ECD76A4E-4A80-083C-C8C3-E0A9C2C9C31F";
	setAttr -s 21 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[4]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899496702500483 0 -0.99939082701909587 0 -0.68158290508852726 -0.73135370161917079 0.023801399518111666 0
		 1.0126903802156411 10.115835018213351 -0.055927420343667614 1;
	setAttr ".wm[5]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899496702500483 0 -0.99939082701909587 0 -0.68158290508852726 -0.73135370161917079 0.023801399518111666 0
		 1.0126903802156411 10.115835018213351 -0.055927420343667614 1;
	setAttr ".wm[6]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899496702500483 0 -0.99939082701909587 0 -0.68158290508852726 -0.73135370161917079 0.023801399518111666 0
		 1.0126903802156424 10.11583501821335 -0.055927420343667635 1;
	setAttr ".wm[7]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899924667937343 -4.5921649312240536e-07 -0.99939081207401614 0 -0.68158288317502258 -0.73135370161902657 0.023802027034929306 0
		 1.0126903802156451 10.115835018213348 -0.055927420343667683 1;
	setAttr ".wm[8]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899924667925068 -4.5921647995182388e-07 -0.99939081207401659 0 -0.68158288317502325 -0.73135370161902657 0.02380202703491131 0
		 1.0126903802156464 10.115835018213346 -0.055927420343667704 1;
	setAttr ".wm[9]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899924667925068 -4.5921647995182388e-07 -0.99939081207401659 0 -0.68158288317502325 -0.73135370161902657 0.02380202703491131 0
		 1.0126903802156464 10.115835018213346 -0.055927420343667704 1;
	setAttr ".wm[10]" -type "matrix" -0.73090818070466046 0.68199836006249859 0.025523876098019892 0
		 -0.034899924667925061 -4.5921647995182383e-07 -0.99939081207401648 0 -0.68158288317502325 -0.73135370161902657 0.02380202703491131 0
		 1.0126903802156417 10.115835018213353 -0.055927420343667635 1;
	setAttr ".wm[11]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.03489949670250049 0 -0.9993908270190961 0 -0.68158290508852737 -0.7313537016191709 0.023801399518111672 0
		 2.2917799999999984 8.9223400000000144 -0.10059399999999771 1;
	setAttr ".wm[12]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.03489949670250049 0 -0.9993908270190961 0 -0.68158290508852737 -0.7313537016191709 0.023801399518111672 0
		 2.2917799999999984 8.9223400000000144 -0.10059399999999771 1;
	setAttr ".wm[13]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899496702500483 0 -0.99939082701909598 0 -0.68158290508852737 -0.7313537016191709 0.023801399518111672 0
		 2.2917799999999988 8.9223400000000144 -0.10059399999999771 1;
	setAttr ".wm[14]" -type "matrix" -0.73090818070466035 0.68199836006249848 0.025523876098019885 0
		 -0.034899496702500483 0 -0.99939082701909598 0 -0.68158290508852737 -0.7313537016191709 0.023801399518111672 0
		 2.2917799999999988 8.9223400000000144 -0.10059399999999771 1;
	setAttr ".wm[15]" -type "matrix" -0.73090818070466024 0.68199836006249837 0.025523876098019878 0
		 -0.034899496702500497 0 -0.99939082701909643 0 -0.68158290508852726 -0.73135370161917079 0.023801399518111669 0
		 2.2917799999999988 8.9223400000000144 -0.10059399999999771 1;
	setAttr ".wm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[17]" -type "matrix" -0.72975591298110698 0.68175282980016183 0.0516661061875354 0
		 -0.0377599230714376 0.035264356105408012 -0.99866441480514867 0 -0.68266426278130987 -0.73073216998291657 8.5620215962700624e-06 0
		 1.6534646954784069 9.5186869922828059 -0.055377007156445598 1;
	setAttr ".wm[18]" -type "matrix" -0.72975591298110698 0.68175282980016183 0.0516661061875354 0
		 -0.0377599230714376 0.035264356105408012 -0.99866441480514867 0 -0.68266426278130987 -0.73073216998291657 8.5620215962700624e-06 0
		 1.6534646954784069 9.5186869922828059 -0.055377007156445598 1;
	setAttr ".wm[19]" -type "matrix" -0.72975591298110698 0.68175282980016183 0.0516661061875354 0
		 -0.037759923071437607 0.035264356105408019 -0.99866441480514889 0 -0.68266426278130987 -0.73073216998291657 8.5620215962700624e-06 0
		 1.6534646954784058 9.5186869922828041 -0.055377007156445654 1;
	setAttr ".wm[20]" -type "matrix" -0.72974556073271912 0.6817431585189736 0.051665373257037718 0
		 -0.037759923071437607 0.035264356105408019 -0.99866441480514889 0 -0.68266426278130987 -0.73073216998291657 8.5620215962700624e-06 0
		 1.6534646954784058 9.5186869922828041 -0.055377007156445654 1;
	setAttr -s 21 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1.0000000000000002 1 1 -1.5469849205116637
		 -0.025526648243267815 2.3907971316735646 0 1.0126903802156411 10.115835018213351
		 -0.055927420343667614 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 -2.4286128663675299e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 6.2789932163569995e-07 3.3588978511976401e-10
		 4.6014648509882834e-09 0 -3.5527136788005009e-15 -4.5102810375396984e-17 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 6.2831853071795685 3.3968694804417575e-10
		 2.3005784177189336e-09 0 -1.7763568394002505e-15 -2.4286128663675299e-17 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999989 1 -2.8102520310824275e-16
		 -2.7105054312095198e-20 3.0184188481996448e-16 0 7.9936057773011271e-15 9.0205620750793969e-17
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1.0000000000000002 1.0000000000000002 0
		 0 0 0 -1.7499987763639266 -2.1398501290695315e-07 -1.7465943464856082e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 0.99999999999999989 1 0 0 0 0 -8.8817841970012523e-16
		 -2.7755575615628914e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999989 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999978 -1.5707877533226982
		 -0.051689119977623176 2.3901897381733344 0 1.6534646954784069 9.5186869922828059
		 -0.055377007156445598 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1.0000000000000002 1 0 0 0 0 0 5.5511151231257827e-17
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 0.99998581409454346 1 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 21 ".m";
	setAttr -s 21 ".p";
	setAttr -s 21 ".g[0:20]" yes yes yes yes yes yes yes yes yes yes no 
		yes yes yes yes no yes yes yes yes no;
	setAttr ".bp" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo4";
	rename -uid "650398FB-407D-4391-B8A3-95867035E7A0";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -247.61903777955112 -97.619043740015343 ;
	setAttr ".tgi[0].vh" -type "double2" 236.90475249101286 258.33332306808938 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo5";
	rename -uid "632BAB8E-4EF6-6845-DD9E-458A9B81E91A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -247.61903777955112 -97.619043740015343 ;
	setAttr ".tgi[0].vh" -type "double2" 236.90475249101286 258.33332306808938 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo6";
	rename -uid "FB85B7C9-4FAB-7069-662B-428B36AB2DF4";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -247.61903777955112 -174.99999304612504 ;
	setAttr ".tgi[0].vh" -type "double2" 236.90475249101286 180.95237376197966 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo7";
	rename -uid "AEC15D52-4D50-04F1-7441-98A84D5D9BE3";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -621.42854673521958 -384.52379424420673 ;
	setAttr ".tgi[0].vh" -type "double2" 591.66664315594664 401.19046024859961 ;
createNode groupId -n "groupId50";
	rename -uid "5ECFF69B-48E8-7DDE-32CA-94ABF9D764CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	rename -uid "63492408-47D9-3543-72C2-1DB97C7E2F73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "ADECE0AA-4BF0-19FB-201B-21B4BE277B22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	rename -uid "4059FAE3-45E3-9681-5CF3-968C69917E73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "4E4183CB-4A79-171A-BB8F-0F85E71A5473";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	rename -uid "C70E106F-4103-D1F8-3EBE-C9B45DB0E0D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "F3C2CE40-463C-465D-7D17-9484C9BBC9F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "3FF1CCA9-456B-787C-AB49-F38CE3247C9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "CA9F7479-46AC-E9E1-C169-F6A4C4522758";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "214AEB3C-4C99-AC69-0A29-F1ACC1C7D20C";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite2";
	rename -uid "801D8B18-4195-3389-894E-AFA3E64D4AEF";
createNode materialInfo -n "materialInfo67";
	rename -uid "5D5BA02D-40D1-2755-04F5-27969631333E";
createNode materialInfo -n "materialInfo68";
	rename -uid "EEBD8E0D-4854-AB1D-CBE1-1FB1F0E60CEF";
createNode materialInfo -n "materialInfo69";
	rename -uid "107EDEB6-492D-5941-BDC5-E5A61243B7C8";
createNode materialInfo -n "materialInfo70";
	rename -uid "B0B8E7D2-4CA1-4242-3AF8-E789860AA9A1";
createNode materialInfo -n "materialInfo71";
	rename -uid "0304E654-4C37-2920-7973-D3BE65952016";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo8";
	rename -uid "A1151D4E-4521-82A5-F68C-308235BBE66F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -247.61903777955112 -97.619043740015343 ;
	setAttr ".tgi[0].vh" -type "double2" 236.90475249101286 258.33332306808938 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "1734A52C-483D-21A6-1E8B-598E0E78E542";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 4361.7789791218993 60.934888678591186 ;
	setAttr ".tgi[0].vh" -type "double2" 5961.7789342431097 842.44747179977048 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 5072.85693359375;
	setAttr ".tgi[0].ni[0].y" 351.42855834960938;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 5072.85693359375;
	setAttr ".tgi[0].ni[1].y" 250;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 4267.14306640625;
	setAttr ".tgi[0].ni[2].y" 502.85714721679688;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 5564.28564453125;
	setAttr ".tgi[0].ni[3].y" 655.71429443359375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 4574.28564453125;
	setAttr ".tgi[0].ni[4].y" 395.71429443359375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 5072.85693359375;
	setAttr ".tgi[0].ni[5].y" 655.71429443359375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 5750;
	setAttr ".tgi[0].ni[6].y" 120;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 5564.28564453125;
	setAttr ".tgi[0].ni[7].y" 351.42855834960938;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 5564.28564453125;
	setAttr ".tgi[0].ni[8].y" 250;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" 8494.4938070435455 -336.32389082576111 ;
	setAttr ".tgi[1].vh" -type "double2" 10094.493762164755 445.18869229541821 ;
	setAttr ".tgi[1].ni[0].x" 9200;
	setAttr ".tgi[1].ni[0].y" 87.142860412597656;
	setAttr ".tgi[1].ni[0].nvs" 18304;
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
	setAttr -s 11 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 20 ".gn";
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
	setAttr -s 5 ".sol";
connectAttr "armUpper_TGET_joint_L_DCMX.or" "armUpper_TGET_joint_L_spcGRP.r";
connectAttr "armUpper_TGET_joint_L_DCMX.ot" "armUpper_TGET_joint_L_spcGRP.t";
connectAttr "armUpper_TGET_joint_01_L_DCMX.or" "armUpper_TGET_joint_01_L_spcGRP.r"
		;
connectAttr "armUpper_TGET_joint_01_L_DCMX.ot" "armUpper_TGET_joint_01_L_spcGRP.t"
		;
connectAttr "armUpper_TGET_joint_02_L_DCMX.or" "armUpper_TGET_joint_02_L_spcGRP.r"
		;
connectAttr "armUpper_TGET_joint_02_L_DCMX.ot" "armUpper_TGET_joint_02_L_spcGRP.t"
		;
connectAttr "armUpper_TGET_joint_03_L_DCMX.or" "armUpper_TGET_joint_03_L_spcGRP.r"
		;
connectAttr "armUpper_TGET_joint_03_L_DCMX.ot" "armUpper_TGET_joint_03_L_spcGRP.t"
		;
connectAttr "armUpper_TGET_joint_04_L_DCMX.or" "armUpper_TGET_joint_04_L_spcGRP.r"
		;
connectAttr "armUpper_TGET_joint_04_L_DCMX.ot" "armUpper_TGET_joint_04_L_spcGRP.t"
		;
connectAttr "skinCluster3.og[0]" "armUpper_TGET_L_SRFShape.cr";
connectAttr "skinCluster3GroupId.id" "armUpper_TGET_L_SRFShape.iog.og[0].gid";
connectAttr "skinCluster3Set.mwc" "armUpper_TGET_L_SRFShape.iog.og[0].gco";
connectAttr "groupId6.id" "armUpper_TGET_L_SRFShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "armUpper_TGET_L_SRFShape.iog.og[1].gco";
connectAttr "tweak3.pl[0].cp[0]" "armUpper_TGET_L_SRFShape.twl";
connectAttr "armUpper_TWST_control_L_DCMX.ot" "armUpper_TWST_control_L_spcGRP.t"
		;
connectAttr "armUpper_TWST_control_L_DCMX.or" "armUpper_TWST_control_L_spcGRP.r"
		;
connectAttr "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.crx" "armUpper_TWST_control_start_L_oriGRP.rx"
		;
connectAttr "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.cry" "armUpper_TWST_control_start_L_oriGRP.ry"
		;
connectAttr "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.crz" "armUpper_TWST_control_start_L_oriGRP.rz"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.crx" "armUpper_TWST_control_start_L_aimGRP.rx"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.cry" "armUpper_TWST_control_start_L_aimGRP.ry"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.crz" "armUpper_TWST_control_start_L_aimGRP.rz"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP.pim" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP.t" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.ct"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP.rp" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP.rpt" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.crt"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP.ro" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.cro"
		;
connectAttr "armMid_L_CTL.t" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "armMid_L_CTL.rp" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "armMid_L_CTL.rpt" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "armMid_L_CTL.pm" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.w0" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_start_L_vecLOC.wm" "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.wum"
		;
connectAttr "armUpper_TWST_control_start_L_oriGRP.ro" "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.cro"
		;
connectAttr "armUpper_TWST_control_start_L_oriGRP.pim" "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.cpim"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.r" "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.ro" "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.pm" "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.jo" "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.tg[0].tjo"
		;
connectAttr "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.w0" "armUpper_TWST_control_start_L_oriGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_pointConstraint1.ctx" "armUpper_TWST_control_end_L_conGRP.tx"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_pointConstraint1.cty" "armUpper_TWST_control_end_L_conGRP.ty"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_pointConstraint1.ctz" "armUpper_TWST_control_end_L_conGRP.tz"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_aimConstraint1.crx" "armUpper_TWST_control_end_L_conGRP.rx"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_aimConstraint1.cry" "armUpper_TWST_control_end_L_conGRP.ry"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_aimConstraint1.crz" "armUpper_TWST_control_end_L_conGRP.rz"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.pim" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.rp" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.rpt" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.crt"
		;
connectAttr "armMid_L_CTL.t" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armMid_L_CTL.rp" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armMid_L_CTL.rpt" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armMid_L_CTL.pm" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_pointConstraint1.w0" "armUpper_TWST_control_end_L_conGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.pim" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.t" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.ct"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.rp" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.rpt" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.crt"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP.ro" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.cro"
		;
connectAttr "armStart_L_CTL.t" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "armStart_L_CTL.rp" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "armStart_L_CTL.rpt" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "armStart_L_CTL.pm" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_aimConstraint1.w0" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_L_vecLOC.wm" "armUpper_TWST_control_end_L_conGRP_aimConstraint1.wum"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.ctx" "armUpper_TWST_locator_start_L_offGRP.tx"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.cty" "armUpper_TWST_locator_start_L_offGRP.ty"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.ctz" "armUpper_TWST_locator_start_L_offGRP.tz"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.crx" "armUpper_TWST_locator_start_L_offGRP.rx"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.cry" "armUpper_TWST_locator_start_L_offGRP.ry"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.crz" "armUpper_TWST_locator_start_L_offGRP.rz"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP.ro" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.cro"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP.pim" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.cpim"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP.rp" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.crp"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP.rpt" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.crt"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.t" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.rp" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.rpt" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.r" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.ro" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.s" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.pm" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.jo" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tjo"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.ssc" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tsc"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.is" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tis"
		;
connectAttr "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.w0" "armUpper_TWST_locator_start_L_offGRP_parentConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.ctx" "armUpper_TWST_locator_end_L_conGRP.tx"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.cty" "armUpper_TWST_locator_end_L_conGRP.ty"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.ctz" "armUpper_TWST_locator_end_L_conGRP.tz"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.crx" "armUpper_TWST_locator_end_L_conGRP.rx"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.cry" "armUpper_TWST_locator_end_L_conGRP.ry"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.crz" "armUpper_TWST_locator_end_L_conGRP.rz"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP.pim" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.cpim"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP.rp" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.crp"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP.rpt" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.crt"
		;
connectAttr "armMid_L_CTL.t" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armMid_L_CTL.rp" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armMid_L_CTL.rpt" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armMid_L_CTL.pm" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.w0" "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP.ro" "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.cro"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP.pim" "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.cpim"
		;
connectAttr "armStart_L_CTL.r" "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armStart_L_CTL.ro" "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armStart_L_CTL.pm" "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.w0" "armUpper_TWST_locator_end_L_conGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "bend_shoulder_control_L_offGRP_pointConstraint1.ctx" "bend_shoulder_control_L_offGRP.tx"
		;
connectAttr "bend_shoulder_control_L_offGRP_pointConstraint1.cty" "bend_shoulder_control_L_offGRP.ty"
		;
connectAttr "bend_shoulder_control_L_offGRP_pointConstraint1.ctz" "bend_shoulder_control_L_offGRP.tz"
		;
connectAttr "bend_shoulder_control_L_offGRP_orientConstraint1.crx" "bend_shoulder_control_L_offGRP.rx"
		;
connectAttr "bend_shoulder_control_L_offGRP_orientConstraint1.cry" "bend_shoulder_control_L_offGRP.ry"
		;
connectAttr "bend_shoulder_control_L_offGRP_orientConstraint1.crz" "bend_shoulder_control_L_offGRP.rz"
		;
connectAttr "bend_shoulder_control_L_offGRP.pim" "bend_shoulder_control_L_offGRP_pointConstraint1.cpim"
		;
connectAttr "bend_shoulder_control_L_offGRP.rp" "bend_shoulder_control_L_offGRP_pointConstraint1.crp"
		;
connectAttr "bend_shoulder_control_L_offGRP.rpt" "bend_shoulder_control_L_offGRP_pointConstraint1.crt"
		;
connectAttr "armUpper_TWST_start_L_CTL.t" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armUpper_TWST_start_L_CTL.rp" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armUpper_TWST_start_L_CTL.rpt" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armUpper_TWST_start_L_CTL.pm" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "bend_shoulder_control_L_offGRP_pointConstraint1.w0" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_L_CTL.t" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[1].tt"
		;
connectAttr "armUpper_TWST_end_L_CTL.rp" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[1].trp"
		;
connectAttr "armUpper_TWST_end_L_CTL.rpt" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[1].trt"
		;
connectAttr "armUpper_TWST_end_L_CTL.pm" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[1].tpm"
		;
connectAttr "bend_shoulder_control_L_offGRP_pointConstraint1.w1" "bend_shoulder_control_L_offGRP_pointConstraint1.tg[1].tw"
		;
connectAttr "bend_shoulder_control_L_offGRP.ro" "bend_shoulder_control_L_offGRP_orientConstraint1.cro"
		;
connectAttr "bend_shoulder_control_L_offGRP.pim" "bend_shoulder_control_L_offGRP_orientConstraint1.cpim"
		;
connectAttr "armUpper_TWST_start_L_CTL.r" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armUpper_TWST_start_L_CTL.ro" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armUpper_TWST_start_L_CTL.pm" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "bend_shoulder_control_L_offGRP_orientConstraint1.w0" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_L_CTL.r" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[1].tr"
		;
connectAttr "armUpper_TWST_end_L_CTL.ro" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[1].tro"
		;
connectAttr "armUpper_TWST_end_L_CTL.pm" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[1].tpm"
		;
connectAttr "bend_shoulder_control_L_offGRP_orientConstraint1.w1" "bend_shoulder_control_L_offGRP_orientConstraint1.tg[1].tw"
		;
connectAttr "armUpper_IK_TWST_start_L_JNT.s" "armUpper_IK_TWST_end_L_JNT.is";
connectAttr "armUpper_IK_TWST_end_L_JNT.tx" "armUpper_IK_TWST_L_effector.tx";
connectAttr "armUpper_IK_TWST_end_L_JNT.ty" "armUpper_IK_TWST_L_effector.ty";
connectAttr "armUpper_IK_TWST_end_L_JNT.tz" "armUpper_IK_TWST_L_effector.tz";
connectAttr "armUpper_IK_TWST_start_L_JNT.msg" "armUpper_IK_TWST_L_IKH.hsj";
connectAttr "armUpper_IK_TWST_L_effector.hp" "armUpper_IK_TWST_L_IKH.hee";
connectAttr "ikSCsolver.msg" "armUpper_IK_TWST_L_IKH.hsv";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "armUpper_TGET_joint_L_FFMX.o" "armUpper_TGET_joint_L_DCMX.imat";
connectAttr "armUpper_TGET_joint_L_POSI.px" "armUpper_TGET_joint_L_FFMX.i30";
connectAttr "armUpper_TGET_joint_L_POSI.py" "armUpper_TGET_joint_L_FFMX.i31";
connectAttr "armUpper_TGET_joint_L_POSI.pz" "armUpper_TGET_joint_L_FFMX.i32";
connectAttr "armUpper_TGET_joint_L_POSI.nx" "armUpper_TGET_joint_L_FFMX.i10";
connectAttr "armUpper_TGET_joint_L_POSI.ny" "armUpper_TGET_joint_L_FFMX.i11";
connectAttr "armUpper_TGET_joint_L_POSI.nz" "armUpper_TGET_joint_L_FFMX.i12";
connectAttr "armUpper_TGET_joint_L_POSI.tux" "armUpper_TGET_joint_L_FFMX.i00";
connectAttr "armUpper_TGET_joint_L_POSI.tuy" "armUpper_TGET_joint_L_FFMX.i01";
connectAttr "armUpper_TGET_joint_L_POSI.tuz" "armUpper_TGET_joint_L_FFMX.i02";
connectAttr "armUpper_TGET_joint_L_POSI.tvx" "armUpper_TGET_joint_L_FFMX.i20";
connectAttr "armUpper_TGET_joint_L_POSI.tvy" "armUpper_TGET_joint_L_FFMX.i21";
connectAttr "armUpper_TGET_joint_L_POSI.tvz" "armUpper_TGET_joint_L_FFMX.i22";
connectAttr "armUpper_TGET_L_SRFShape.ws" "armUpper_TGET_joint_L_POSI.is";
connectAttr "armUpper_TGET_joint_01_L_FFMX.o" "armUpper_TGET_joint_01_L_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.px" "armUpper_TGET_joint_01_L_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.py" "armUpper_TGET_joint_01_L_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.pz" "armUpper_TGET_joint_01_L_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.nx" "armUpper_TGET_joint_01_L_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.ny" "armUpper_TGET_joint_01_L_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.nz" "armUpper_TGET_joint_01_L_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.tux" "armUpper_TGET_joint_01_L_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.tuy" "armUpper_TGET_joint_01_L_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.tuz" "armUpper_TGET_joint_01_L_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.tvx" "armUpper_TGET_joint_01_L_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.tvy" "armUpper_TGET_joint_01_L_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_01_L_POSI.tvz" "armUpper_TGET_joint_01_L_FFMX.i22"
		;
connectAttr "armUpper_TGET_L_SRFShape.ws" "armUpper_TGET_joint_01_L_POSI.is";
connectAttr "armUpper_TGET_joint_02_L_FFMX.o" "armUpper_TGET_joint_02_L_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.px" "armUpper_TGET_joint_02_L_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.py" "armUpper_TGET_joint_02_L_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.pz" "armUpper_TGET_joint_02_L_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.nx" "armUpper_TGET_joint_02_L_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.ny" "armUpper_TGET_joint_02_L_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.nz" "armUpper_TGET_joint_02_L_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.tux" "armUpper_TGET_joint_02_L_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.tuy" "armUpper_TGET_joint_02_L_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.tuz" "armUpper_TGET_joint_02_L_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.tvx" "armUpper_TGET_joint_02_L_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.tvy" "armUpper_TGET_joint_02_L_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_02_L_POSI.tvz" "armUpper_TGET_joint_02_L_FFMX.i22"
		;
connectAttr "armUpper_TGET_L_SRFShape.ws" "armUpper_TGET_joint_02_L_POSI.is";
connectAttr "armUpper_TGET_joint_03_L_FFMX.o" "armUpper_TGET_joint_03_L_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.px" "armUpper_TGET_joint_03_L_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.py" "armUpper_TGET_joint_03_L_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.pz" "armUpper_TGET_joint_03_L_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.nx" "armUpper_TGET_joint_03_L_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.ny" "armUpper_TGET_joint_03_L_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.nz" "armUpper_TGET_joint_03_L_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.tux" "armUpper_TGET_joint_03_L_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.tuy" "armUpper_TGET_joint_03_L_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.tuz" "armUpper_TGET_joint_03_L_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.tvx" "armUpper_TGET_joint_03_L_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.tvy" "armUpper_TGET_joint_03_L_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_03_L_POSI.tvz" "armUpper_TGET_joint_03_L_FFMX.i22"
		;
connectAttr "armUpper_TGET_L_SRFShape.ws" "armUpper_TGET_joint_03_L_POSI.is";
connectAttr "armUpper_TGET_joint_04_L_FFMX.o" "armUpper_TGET_joint_04_L_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.px" "armUpper_TGET_joint_04_L_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.py" "armUpper_TGET_joint_04_L_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.pz" "armUpper_TGET_joint_04_L_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.nx" "armUpper_TGET_joint_04_L_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.ny" "armUpper_TGET_joint_04_L_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.nz" "armUpper_TGET_joint_04_L_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.tux" "armUpper_TGET_joint_04_L_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.tuy" "armUpper_TGET_joint_04_L_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.tuz" "armUpper_TGET_joint_04_L_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.tvx" "armUpper_TGET_joint_04_L_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.tvy" "armUpper_TGET_joint_04_L_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_04_L_POSI.tvz" "armUpper_TGET_joint_04_L_FFMX.i22"
		;
connectAttr "armUpper_TGET_L_SRFShape.ws" "armUpper_TGET_joint_04_L_POSI.is";
connectAttr "armStart_L_CTL.wm" "armUpper_TWST_control_L_DCMX.imat";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster3.bp";
connectAttr "armUpper_TWST_start_L_JNT.wm" "skinCluster3.ma[0]";
connectAttr "armUpper_TWST_end_L_JNT.wm" "skinCluster3.ma[1]";
connectAttr "bend_shoulder_L_JNT.wm" "skinCluster3.ma[2]";
connectAttr "armUpper_TWST_start_L_JNT.liw" "skinCluster3.lw[0]";
connectAttr "armUpper_TWST_end_L_JNT.liw" "skinCluster3.lw[1]";
connectAttr "bend_shoulder_L_JNT.liw" "skinCluster3.lw[2]";
connectAttr "armUpper_TWST_start_L_JNT.obcc" "skinCluster3.ifcl[0]";
connectAttr "armUpper_TWST_end_L_JNT.obcc" "skinCluster3.ifcl[1]";
connectAttr "bend_shoulder_L_JNT.obcc" "skinCluster3.ifcl[2]";
connectAttr "groupParts8.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "armUpper_TGET_L_SRFShape.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "armUpper_TGET_L_SRFShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "armUpper_TGET_L_SRFShapeOrig.ws" "groupParts8.ig";
connectAttr "groupId6.id" "groupParts8.gi";
connectAttr "armUpper_TGET_RIG_L_GRP.msg" "bindPose3.m[2]";
connectAttr "armUpper_TWST_control_L_GRP.msg" "bindPose3.m[3]";
connectAttr "armUpper_TWST_control_L_spcGRP.msg" "bindPose3.m[4]";
connectAttr "armUpper_TWST_control_L_offGRP.msg" "bindPose3.m[5]";
connectAttr "armUpper_TWST_control_start_L_GRP.msg" "bindPose3.m[6]";
connectAttr "armUpper_TWST_control_start_L_oriGRP.msg" "bindPose3.m[7]";
connectAttr "armUpper_TWST_control_start_L_aimGRP.msg" "bindPose3.m[8]";
connectAttr "armUpper_TWST_start_L_CTL.msg" "bindPose3.m[9]";
connectAttr "armUpper_TWST_start_L_JNT.msg" "bindPose3.m[10]";
connectAttr "armUpper_TWST_control_end_L_GRP.msg" "bindPose3.m[11]";
connectAttr "armUpper_TWST_control_end_L_conGRP.msg" "bindPose3.m[12]";
connectAttr "armUpper_TWST_control_end_L_offGRP.msg" "bindPose3.m[13]";
connectAttr "armUpper_TWST_end_L_CTL.msg" "bindPose3.m[14]";
connectAttr "armUpper_TWST_end_L_JNT.msg" "bindPose3.m[15]";
connectAttr "bend_shoulder_control_L_GRP.msg" "bindPose3.m[17]";
connectAttr "bend_shoulder_control_L_offGRP.msg" "bindPose3.m[18]";
connectAttr "bend_shoulder_L_CTL.msg" "bindPose3.m[19]";
connectAttr "bend_shoulder_L_JNT.msg" "bindPose3.m[20]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "bindPose3.m[4]" "bindPose3.p[5]";
connectAttr "bindPose3.m[5]" "bindPose3.p[6]";
connectAttr "bindPose3.m[6]" "bindPose3.p[7]";
connectAttr "bindPose3.m[7]" "bindPose3.p[8]";
connectAttr "bindPose3.m[8]" "bindPose3.p[9]";
connectAttr "bindPose3.m[9]" "bindPose3.p[10]";
connectAttr "bindPose3.m[5]" "bindPose3.p[11]";
connectAttr "bindPose3.m[11]" "bindPose3.p[12]";
connectAttr "bindPose3.m[12]" "bindPose3.p[13]";
connectAttr "bindPose3.m[13]" "bindPose3.p[14]";
connectAttr "bindPose3.m[14]" "bindPose3.p[15]";
connectAttr "bindPose3.w" "bindPose3.p[16]";
connectAttr "bindPose3.m[16]" "bindPose3.p[17]";
connectAttr "bindPose3.m[17]" "bindPose3.p[18]";
connectAttr "bindPose3.m[18]" "bindPose3.p[19]";
connectAttr "bindPose3.m[19]" "bindPose3.p[20]";
connectAttr "armUpper_TWST_control_end_L_conGRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "armMid_L_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "armUpper_TWST_control_start_L_aimGRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "armUpper_TWST_control_start_L_aimGRP_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "armMid_L_CTL_Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "armUpper_TWST_control_end_L_conGRP_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "armUpper_TWST_locator_end_L_conGRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "bend_SET.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn";
connectAttr "armUpper_TGET_joint_L_FFMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armUpper_TGET_joint_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armUpper_TGET_joint_01_L_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_02_L_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_03_L_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_04_L_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_01_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_02_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_03_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_04_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TWST_control_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "armUpper_TGET_L_SRFShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of Mir_bend.ma
