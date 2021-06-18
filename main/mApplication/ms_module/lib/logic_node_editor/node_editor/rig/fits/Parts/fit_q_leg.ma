//Maya ASCII 2019 scene
//Name: fit_q_leg.ma
//Last modified: Fri, Jun 18, 2021 11:59:44 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
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
	rename -uid "D3A10D1C-4598-B36B-52AD-C3BCE93C92EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 204.28512663235185 6.5009897429880255 -19.047210919332592 ;
	setAttr ".r" -type "double3" 5.6616472702744636 441.39999999997769 5.3173962225401856e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2DC77FED-4D23-793A-2463-158390B7B06A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 212.95674920625981;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "D6B988CB-4CDF-5486-2957-44A8B3665CA3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E4DD6F67-44CA-BBE6-A231-4AB8331A485F";
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
	rename -uid "5EA70266-4BBC-5AB1-38E2-4382BE492A2D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3931AC46-4316-3CDE-A1A6-E88B9AB7A4B1";
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
	rename -uid "8CEED8F4-487A-E1AF-2A45-5F88ED0BF912";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.4505003414305 15.272147542196794 -4.5115333607534254 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "01AAC2E6-4D8B-246E-F518-0D872F175D31";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 994.79881605722028;
	setAttr ".ow" 89.584213715995915;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 5.6516842842102051 1.0871311051649326 -26.382758476631459 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "fit_leg";
	rename -uid "D048DE8C-4A17-7965-959E-98BDDD82898E";
	addAttr -r false -s false -ci true -m -im false -sn "fitControls" -ln "fitControls" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "leftDirect" -ln "leftDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "leftDirectX" -ln "leftDirectX" -at "double" -p "leftDirect";
	addAttr -ci true -sn "leftDirectY" -ln "leftDirectY" -at "double" -p "leftDirect";
	addAttr -ci true -sn "leftDirectZ" -ln "leftDirectZ" -at "double" -p "leftDirect";
	addAttr -ci true -sn "rightDirect" -ln "rightDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "rightDirectX" -ln "rightDirectX" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectY" -ln "rightDirectY" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectZ" -ln "rightDirectZ" -at "double" -p "rightDirect";
	addAttr -ci true -sn "offsetMir" -ln "offsetMir" -at "matrix";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	setAttr -s 7 ".fitControls";
	setAttr -s 7 ".init";
	setAttr -s 7 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -cb on ".mirror";
createNode transform -n "fit_leg_GRP" -p "fit_leg";
	rename -uid "D19E7411-4E2C-9FAB-1D2A-5EB02E9439A6";
createNode transform -n "fit_hip" -p "fit_leg_GRP";
	rename -uid "C65B57FA-430F-9391-E0F3-B8A467D96B09";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_hipShape" -p "fit_hip";
	rename -uid "AE3D94CE-4FDA-66ED-20FE-17A80A3E51BD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_leg_space" -p "fit_leg_GRP";
	rename -uid "FB4D9A95-482B-1734-8E11-E389932BC832";
createNode transform -n "fit_thigh" -p "fit_leg_space";
	rename -uid "E1BE9329-4D1E-8A27-B7CB-DE92F3BE39B1";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 2.0713150501251221 -2.5815366105945401 -2.9619738205368371 ;
createNode nurbsCurve -n "fit_thighShape" -p "fit_thigh";
	rename -uid "06E027B7-49EC-6DA2-B9DC-1ABED7CA2A39";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_F_knee" -p "fit_thigh";
	rename -uid "4B0227E3-425B-E9F5-DA67-418D5E2EFCF9";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -14.701115021644725 6.3022921992228476e-07 ;
createNode nurbsCurve -n "fit_F_kneeShape" -p "fit_F_knee";
	rename -uid "1DBAC96B-452D-E428-6F3F-A997614D3556";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_B_knee" -p "fit_F_knee";
	rename -uid "EAB1CF2E-497C-E213-992E-6BAAE6F07833";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -11.100926985788057 -6.7964834437800619 ;
createNode nurbsCurve -n "fit_B_kneeShape" -p "fit_B_knee";
	rename -uid "357C8D36-4F7F-ADC8-E625-E698109FEF70";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_ankle" -p "fit_B_knee";
	rename -uid "CE1C3E26-4FD2-8A1A-8F6B-01A958C065C0";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -10.073626562888036 -6.6365977602345083e-08 ;
createNode nurbsCurve -n "fit_ankleShape" -p "fit_ankle";
	rename -uid "B559768E-478F-CE47-BEF9-4CA9EDC8092D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_hind_toe" -p "fit_ankle";
	rename -uid "9603FA32-4370-0A63-356B-D6B9E8C6F515";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -0.83296070891929075 0.95006794953859242 ;
createNode nurbsCurve -n "fit_hind_toeShape" -p "fit_hind_toe";
	rename -uid "5846709E-4A63-518C-ABBB-94954A3AF47A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_hind_tiptoe" -p "fit_hind_toe";
	rename -uid "F842D441-46D8-7E77-1067-E6A9776ABEF1";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -1.5909109229094924 3.2962298676459127 ;
createNode nurbsCurve -n "fit_hind_tiptoeShape" -p "fit_hind_tiptoe";
	rename -uid "62D6B878-4A6A-B6B5-6D49-19AA32B0D372";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "init_hip" -p "fit_leg";
	rename -uid "003A9D20-4B79-AAA7-FF28-6FA85118E7A6";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_thigh" -p "init_hip";
	rename -uid "2DF1F11D-4571-2AED-1DA9-718DC94DC4BB";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_F_knee" -p "init_thigh";
	rename -uid "81A1F329-4A6E-BB07-0C39-F094DBFE63DF";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_B_knee" -p "init_F_knee";
	rename -uid "E6547008-4789-2109-8591-14A18F35ADA3";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_ankle" -p "init_B_knee";
	rename -uid "9E3E8D57-4793-2AE9-269D-9D89CE89B826";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".sh" -type "double3" 4.0300449670852498e-10 0 0 ;
createNode transform -n "init_hind_toe" -p "init_ankle";
	rename -uid "E19B9DA8-4051-DED7-1C03-1DA169DC2FD5";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_hind_tiptoe" -p "init_hind_toe";
	rename -uid "62140DF0-4448-F561-B4DD-FBA7A61E127F";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_leg_GRP" -p "fit_leg";
	rename -uid "A2C75F9C-4300-A929-AFA0-4285E8E1B47F";
createNode joint -n "temp_hip" -p "temp_leg_GRP";
	rename -uid "8CA5E010-44DE-B60C-669F-D8943EB496AF";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_thigh" -p "temp_hip";
	rename -uid "3F18A83F-4159-47BF-9A45-5EA297D9FD5E";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_F_knee" -p "temp_thigh";
	rename -uid "DBFFA7C7-4637-9A20-2B9B-718FED45452C";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_B_knee" -p "temp_F_knee";
	rename -uid "D5C7EE9B-470C-6B58-5673-C5A1B2B16FBE";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_ankle" -p "temp_B_knee";
	rename -uid "0D1F075F-4037-485D-8829-D4A470C244FC";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_hind_toe" -p "temp_ankle";
	rename -uid "7C4F7E94-41F9-2D51-0398-E9B21918A541";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_hind_tiptoe" -p "temp_hind_toe";
	rename -uid "57466781-4769-5645-43D7-A0B8A20A1BE0";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1C765B94-48A3-F5DA-C31A-70B252BE2271";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "4EFBEC8B-4944-0B4B-E9EC-9C91013657DF";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "179ADBE8-49FE-A344-85D2-5AAC10FE2159";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F8FDFBC5-4144-13C3-B412-5CAD3550B3C4";
createNode displayLayerManager -n "layerManager";
	rename -uid "75BCDD4B-48BD-67DB-660A-2CBA25D51FCC";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "FE00BEA8-491E-F7D6-8D41-37AE7B9D0CF3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8DC25474-4F2B-1FD1-858C-A4A054612C50";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2C9DF026-4E49-096A-3185-DF9CB3A52F2F";
	setAttr ".g" yes;
createNode condition -n "leg_mirror_COND";
	rename -uid "3344D500-42E3-DD04-F9CA-5AB199B4C0FA";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_leg_space_local_DCMX";
	rename -uid "4AF40438-488E-CE84-620D-88A0762AE4C3";
createNode multMatrix -n "fit_leg_space_local_MTMX";
	rename -uid "9425FEC5-4A97-F4EA-33BA-F7AB7468711F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_thigh_aligned_DCMX";
	rename -uid "46136B32-43DF-2453-DF3D-AAAFFBC0FF00";
createNode multMatrix -n "fit_thigh_aligned_MTMX";
	rename -uid "BD1795E1-4797-BCD2-D657-BFBDBA41C188";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_thigh_aligned_FBFM";
	rename -uid "487FFCA6-4040-FA6E-9C9C-AC84E5D1D3D8";
createNode vectorProduct -n "fit_thigh_x_vec";
	rename -uid "2E72F65A-4210-091F-D9EF-FA8925AE8443";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_thigh2knee_vec_rvsMULT";
	rename -uid "C3F43DBE-4B5C-0AFF-D07C-5F97F8BCD11E";
createNode plusMinusAverage -n "fit_thigh2knee_vec";
	rename -uid "025D44FD-4A2A-593E-2E57-B8B21559DBD5";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_F_knee_DCMX";
	rename -uid "9438BD85-4624-90F0-1C37-0EA154B3931E";
createNode decomposeMatrix -n "fit_thigh_DCMX";
	rename -uid "54724548-4847-4783-4877-31824ADADF3F";
createNode vectorProduct -n "fit_thigh_y_vec";
	rename -uid "A20C3C6B-49C2-F9AF-E885-EDA8137A3651";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_thigh2ankle_vec_rvsMULT";
	rename -uid "4C980360-4E48-2B12-FFBA-9595FCC694A2";
createNode plusMinusAverage -n "fit_thigh2ankle_vec";
	rename -uid "26020192-4E0E-D11C-89E6-30BE52FA2181";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_B_knee_DCMX";
	rename -uid "3029E5B3-49F1-748E-A5B5-2C893C959910";
createNode vectorProduct -n "fit_thigh_z_vec";
	rename -uid "C8B45D56-4E57-ED8C-0833-CCAFBB3EA7AB";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_F_knee_aligned_DCMX";
	rename -uid "16FC6DE9-4323-F4A1-EF8C-60AE9689F43F";
createNode multMatrix -n "fit_F_knee_aligned_MTMX";
	rename -uid "B591C072-4406-24E5-2282-CCBF2074EFDA";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_F_knee_aligned_FBFM";
	rename -uid "429F4B5B-4DF0-DE68-C5E8-5293B9DA32C1";
createNode vectorProduct -n "fit_F_knee_x_vec";
	rename -uid "A09BF67F-489A-8212-1207-EF8E5A5BE999";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_knee2F_knee_vec_rvsMULT";
	rename -uid "54F89C0A-4327-41C8-8DD6-CDBFD9B9CA13";
createNode plusMinusAverage -n "fit_F_knee2F_knee_vec";
	rename -uid "C581B91A-4BF1-33BA-C781-E1A0F822045F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_F_knee_y_vec";
	rename -uid "556F7F9D-4F16-B29E-F3B9-779691ED1EB0";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_knee2shoulder_vec_rvsMULT";
	rename -uid "8B4B403E-45DC-3A20-BC03-C1858BE4A013";
createNode plusMinusAverage -n "fit_F_knee2shoulder_vec";
	rename -uid "679F9C69-4F82-1E11-B3E6-83AF24BACA96";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_F_knee_z_vec";
	rename -uid "2376003A-4F0C-48D1-D9F9-7E849F17C39F";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_B_knee_aligned_DCMX";
	rename -uid "24E158DB-486E-AA90-B6BB-90A49B7E31ED";
createNode multMatrix -n "fit_B_knee_aligned_MTMX";
	rename -uid "27B104D2-4C53-5617-D1F1-2B9F0FA4340B";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_B_knee_aligned_FBFM1";
	rename -uid "EEB82B23-4888-3C9A-287D-79BDFF3F0747";
createNode vectorProduct -n "fit_B_knee_x_vec";
	rename -uid "E245A45C-43FD-DB44-A562-D2973E7B2BE7";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_knee2ankle_vec_rvsMULT";
	rename -uid "0B8DE891-41F0-93B7-EEC0-10812748AB0F";
createNode plusMinusAverage -n "fit_B_knee2ankle_vec";
	rename -uid "0E214514-4EC6-DF73-995E-62A3FEFEC3D9";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_ankle_DCMX";
	rename -uid "937B0A73-4D5A-99D9-C77C-E3A17896949A";
createNode vectorProduct -n "fit_B_knee_y_vec";
	rename -uid "0938FA26-4B4B-7E4C-D851-4D92953F10DF";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_knee2B_knee_vec_rvsMULT";
	rename -uid "37995F95-49DB-8C01-9021-3FBD79720F2A";
createNode plusMinusAverage -n "fit_B_knee2F_knee_vec";
	rename -uid "3998DA40-441C-7CCA-12B7-40BEA0DA4D4A";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_knee_z_vec";
	rename -uid "D1262E07-4B37-BCF2-6B1F-1EB5BD49E0CC";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_leg_space_local_DCMX1";
	rename -uid "2F37300F-4E46-59A1-041E-20839BF40451";
createNode multMatrix -n "fit_leg_space_local_MTMX1";
	rename -uid "F95B6785-431D-DC68-DEA6-1C8D6BA4624B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_hip_local_DCMX";
	rename -uid "9B616A88-425F-496E-6E08-7FAEFF8F6AAB";
createNode multMatrix -n "temp_hip_local_MTMX";
	rename -uid "4ED1AA82-400E-A35B-B55F-869F665D24B2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_F_knee_local_DCMX";
	rename -uid "9296F23D-46F5-C8CB-7D08-E1BD08F48323";
createNode multMatrix -n "init_F_knee_local_MTMX";
	rename -uid "9A13AE33-45D4-02BB-BD30-57A032644411";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_B_knee_local_DCMX";
	rename -uid "78DCE824-41B4-8CF8-76F5-DB96D5F5538B";
createNode multMatrix -n "init_B_knee_local_MTMX";
	rename -uid "1649B48D-4A0B-2527-8994-88A40F41B3A8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_B_knee_local_DCMX";
	rename -uid "C1BCE30C-4FB7-347F-E780-E1808CAEE2D5";
createNode multMatrix -n "temp_B_knee_local_MTMX";
	rename -uid "36E5925A-499B-8304-0C35-9A80D759FD14";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_mir_offset_DCMX";
	rename -uid "64BB7979-44F5-719A-D648-F88DE7ABCB98";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D2C6DCAC-48FE-E00B-8B45-948F9B8BD81F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 561\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 561\n            -height 329\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 561\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1133\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1133\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1133\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AF1FE8B0-4C6C-7B6B-AC53-2CB25178ED3A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer1";
	rename -uid "A9EE196E-486D-2545-F7D0-EA87B7D881FA";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode decomposeMatrix -n "fit_hind_toe_DCMX";
	rename -uid "A5C85041-4AE5-C5CD-6777-6AAA30490B87";
createNode decomposeMatrix -n "fit_tiptoe_DCMX";
	rename -uid "2184250E-47C5-B102-AEFC-B19BC0093253";
createNode plusMinusAverage -n "fit_ankle2F_hind_toe_vec";
	rename -uid "49D63CDF-4426-4EBF-DDD2-89A93526CCF0";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "fit_ankle2F_knee_vec";
	rename -uid "1B82C79D-4353-C3AB-078A-7D9067D7EC55";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "fit_ankle2F_knee_vec_rvsMULT";
	rename -uid "D808C4FE-415C-3343-DED8-E59E9E6EE9DC";
createNode multiplyDivide -n "fit_ankle2F_hind_toe_vec_rvsMULT";
	rename -uid "94C480A3-4F9E-BD70-01F5-90AC5660196A";
createNode vectorProduct -n "fit_ankle_x_vec";
	rename -uid "E990E631-4C25-FDDB-CC29-34A3DC61F95D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "fit_ankle_y_vec";
	rename -uid "68A4BF88-448C-EBC4-BDA7-85AE8E600FCA";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "fit_ankle_z_vec";
	rename -uid "ABA141DF-4F92-6FF6-0E1C-B18D41224109";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "fit_ankle_aligned_FBFM";
	rename -uid "CEE1AC44-4F19-F8A5-D9D0-2085A686B9B3";
createNode multMatrix -n "fit_ankle_aligned_MTMX";
	rename -uid "DAC0A600-4A6A-FA9A-E342-468EF1ABBCEF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_ankle_aligned_DCMX";
	rename -uid "32DA55CD-45F1-3577-D452-84B3C129C97E";
createNode vectorProduct -n "fit_hind_toe_z_vec";
	rename -uid "8B976489-4FD6-DA0A-DEEC-349CF8548877";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "fit_hind_toe_y_vec";
	rename -uid "91A888AD-4541-55AC-B8B1-1AB4C8596C91";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_hind_toe2tiptoe_vec_rvsMULT";
	rename -uid "ACFE1744-494B-33D2-45C5-C581F4DCAD02";
createNode fourByFourMatrix -n "fit_hind_toe_aligned_FBFM";
	rename -uid "DD2E49F6-4C57-924D-7D2D-97B7B28DF063";
createNode vectorProduct -n "fit_hind_toe_x_vec";
	rename -uid "A0C7FD95-4C0F-0DDB-79FB-BBBCE7438BBF";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode plusMinusAverage -n "fit_hind_toe2tiptoe_vec";
	rename -uid "7932C7F0-43DC-8C94-732E-12BB18BE7E34";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "fir_hind_toe2ankle_vec";
	rename -uid "10AFCFB1-43BB-927E-FA9B-72B506B5AF60";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "fir_hind_toe2ankle_vec_rvsMULT";
	rename -uid "0F0EEBD1-408C-CB79-67F0-998E06C996D4";
createNode multMatrix -n "init_hind_toe_local_MTMX";
	rename -uid "B0875FED-4652-8B95-5C39-BE892EEDCBE0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_hind_toe_local_DCMX";
	rename -uid "C7CD1ECA-4F4C-A04E-FB17-0EBFA1CB7D47";
createNode multMatrix -n "fit_hind_toe_aligned_MTMX";
	rename -uid "A18C6380-423D-C8B6-5C90-B699ABB87B99";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_hind_toe_aligned_DCMX";
	rename -uid "51AB8EA8-4A2D-82C5-C896-E39B51DECC4F";
createNode multMatrix -n "fit_tiptoe_local_MTMX";
	rename -uid "4C60DB59-435B-782E-4FC9-DEB1BBD28931";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_tiptoe_local_DCMX";
	rename -uid "0BEE3D27-4C27-19CC-FC87-7A8E5F27AE65";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "1F6B3D43-45AB-13F4-FE85-1496DF28717E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1133.3332882987147 -553.57140657447724 ;
	setAttr ".tgi[0].vh" -type "double2" 1133.3332882987147 553.57140657447724 ;
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
	setAttr -s 72 ".u";
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
connectAttr "fit_hip.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_thigh.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_F_knee.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_B_knee.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_ankle.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_hind_toe.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_hind_tiptoe.fitControl" "fit_leg.fitControls" -na;
connectAttr "init_hip.init" "fit_leg.init" -na;
connectAttr "init_thigh.init" "fit_leg.init" -na;
connectAttr "init_F_knee.init" "fit_leg.init" -na;
connectAttr "init_B_knee.init" "fit_leg.init" -na;
connectAttr "init_ankle.init" "fit_leg.init" -na;
connectAttr "init_hind_toe.init" "fit_leg.init" -na;
connectAttr "init_hind_tiptoe.init" "fit_leg.init" -na;
connectAttr "temp_hip.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_thigh.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_F_knee.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_B_knee.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_ankle.tempJoints" "fit_leg.tempJoints" -na;
connectAttr "temp_hind_toe.tempJoints" "fit_leg.tempJoints" -na;
connectAttr "temp_hind_tiptoe.tempJoints" "fit_leg.tempJoints" -na;
connectAttr "leg_mirror_COND.ocr" "fit_leg_GRP.sx";
connectAttr "fit_hip.t" "fit_leg_space.t";
connectAttr "fit_hip.r" "fit_leg_space.r";
connectAttr "fit_hip.s" "fit_leg_space.s";
connectAttr "fit_leg_space_local_DCMX.ot" "init_hip.t";
connectAttr "fit_leg_space_local_DCMX.or" "init_hip.r";
connectAttr "fit_leg_space.s" "init_hip.s";
connectAttr "fit_thigh_aligned_DCMX.ot" "init_thigh.t";
connectAttr "fit_thigh_aligned_DCMX.or" "init_thigh.r";
connectAttr "fit_thigh_aligned_DCMX.os" "init_thigh.s";
connectAttr "fit_thigh_aligned_DCMX.osh" "init_thigh.sh";
connectAttr "fit_F_knee_aligned_DCMX.ot" "init_F_knee.t";
connectAttr "fit_F_knee_aligned_DCMX.or" "init_F_knee.r";
connectAttr "fit_F_knee_aligned_DCMX.os" "init_F_knee.s";
connectAttr "fit_F_knee_aligned_DCMX.osh" "init_F_knee.sh";
connectAttr "fit_B_knee_aligned_DCMX.ot" "init_B_knee.t";
connectAttr "fit_B_knee_aligned_DCMX.os" "init_B_knee.s";
connectAttr "fit_B_knee_aligned_DCMX.or" "init_B_knee.r";
connectAttr "fit_B_knee_aligned_DCMX.osh" "init_B_knee.sh";
connectAttr "fit_ankle_aligned_DCMX.ot" "init_ankle.t";
connectAttr "fit_ankle_aligned_DCMX.os" "init_ankle.s";
connectAttr "fit_ankle_aligned_DCMX.or" "init_ankle.r";
connectAttr "fit_hind_toe_aligned_DCMX.ot" "init_hind_toe.t";
connectAttr "fit_hind_toe_aligned_DCMX.os" "init_hind_toe.s";
connectAttr "fit_hind_toe_aligned_DCMX.or" "init_hind_toe.r";
connectAttr "fit_tiptoe_local_DCMX.ot" "init_hind_tiptoe.t";
connectAttr "fit_tiptoe_local_DCMX.os" "init_hind_tiptoe.s";
connectAttr "fit_tiptoe_local_DCMX.or" "init_hind_tiptoe.r";
connectAttr "leg_mirror_COND.ocb" "temp_leg_GRP.sz";
connectAttr "fit_leg_space_local_DCMX1.ot" "temp_hip.t";
connectAttr "fit_leg_space_local_DCMX1.or" "temp_hip.jo";
connectAttr "temp_hip_local_DCMX.ot" "temp_thigh.t";
connectAttr "temp_hip_local_DCMX.or" "temp_thigh.jo";
connectAttr "temp_hip.s" "temp_thigh.is";
connectAttr "init_thigh.s" "temp_thigh.s";
connectAttr "init_F_knee_local_DCMX.ot" "temp_F_knee.t";
connectAttr "init_F_knee_local_DCMX.or" "temp_F_knee.jo";
connectAttr "init_F_knee.s" "temp_F_knee.s";
connectAttr "init_B_knee_local_DCMX.ot" "temp_B_knee.t";
connectAttr "init_B_knee_local_DCMX.or" "temp_B_knee.jo";
connectAttr "temp_F_knee.s" "temp_B_knee.is";
connectAttr "init_B_knee.s" "temp_B_knee.s";
connectAttr "temp_B_knee.s" "temp_ankle.is";
connectAttr "temp_B_knee_local_DCMX.ot" "temp_ankle.t";
connectAttr "temp_B_knee_local_DCMX.or" "temp_ankle.jo";
connectAttr "init_ankle.s" "temp_ankle.s";
connectAttr "temp_ankle.s" "temp_hind_toe.is";
connectAttr "init_hind_toe_local_DCMX.ot" "temp_hind_toe.t";
connectAttr "init_hind_toe_local_DCMX.or" "temp_hind_toe.jo";
connectAttr "init_hind_toe.s" "temp_hind_toe.s";
connectAttr "temp_hind_toe.s" "temp_hind_tiptoe.is";
connectAttr "init_hind_tiptoe.t" "temp_hind_tiptoe.t";
connectAttr "init_hind_tiptoe.r" "temp_hind_tiptoe.jo";
connectAttr "init_hind_tiptoe.s" "temp_hind_tiptoe.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_leg.mirror" "leg_mirror_COND.ft";
connectAttr "fit_leg.rightDirect" "leg_mirror_COND.ct";
connectAttr "fit_leg.leftDirect" "leg_mirror_COND.cf";
connectAttr "fit_leg_space_local_MTMX.o" "fit_leg_space_local_DCMX.imat";
connectAttr "fit_leg_space.wm" "fit_leg_space_local_MTMX.i[0]";
connectAttr "fit_leg.wim" "fit_leg_space_local_MTMX.i[1]";
connectAttr "fit_thigh_aligned_MTMX.o" "fit_thigh_aligned_DCMX.imat";
connectAttr "fit_thigh_aligned_FBFM.o" "fit_thigh_aligned_MTMX.i[0]";
connectAttr "init_hip.wim" "fit_thigh_aligned_MTMX.i[1]";
connectAttr "fit_thigh_x_vec.ox" "fit_thigh_aligned_FBFM.i00";
connectAttr "fit_thigh_x_vec.oy" "fit_thigh_aligned_FBFM.i01";
connectAttr "fit_thigh_x_vec.oz" "fit_thigh_aligned_FBFM.i02";
connectAttr "fit_thigh_y_vec.ox" "fit_thigh_aligned_FBFM.i10";
connectAttr "fit_thigh_y_vec.oy" "fit_thigh_aligned_FBFM.i11";
connectAttr "fit_thigh_y_vec.oz" "fit_thigh_aligned_FBFM.i12";
connectAttr "fit_thigh_z_vec.oy" "fit_thigh_aligned_FBFM.i21";
connectAttr "fit_thigh_z_vec.ox" "fit_thigh_aligned_FBFM.i20";
connectAttr "fit_thigh_z_vec.oz" "fit_thigh_aligned_FBFM.i22";
connectAttr "fit_thigh_DCMX.otx" "fit_thigh_aligned_FBFM.i30";
connectAttr "fit_thigh_DCMX.oty" "fit_thigh_aligned_FBFM.i31";
connectAttr "fit_thigh_DCMX.otz" "fit_thigh_aligned_FBFM.i32";
connectAttr "fit_thigh2knee_vec_rvsMULT.o" "fit_thigh_x_vec.i1";
connectAttr "fit_thigh2knee_vec.o3" "fit_thigh2knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_thigh2knee_vec_rvsMULT.i2";
connectAttr "fit_F_knee_DCMX.ot" "fit_thigh2knee_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "fit_thigh2knee_vec.i3[1]";
connectAttr "fit_F_knee.wm" "fit_F_knee_DCMX.imat";
connectAttr "fit_thigh.wm" "fit_thigh_DCMX.imat";
connectAttr "fit_thigh2ankle_vec_rvsMULT.o" "fit_thigh_y_vec.i1";
connectAttr "fit_thigh2knee_vec_rvsMULT.o" "fit_thigh_y_vec.i2";
connectAttr "fit_thigh2ankle_vec.o3" "fit_thigh2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_thigh2ankle_vec_rvsMULT.i2";
connectAttr "fit_thigh_DCMX.ot" "fit_thigh2ankle_vec.i3[0]";
connectAttr "fit_B_knee_DCMX.ot" "fit_thigh2ankle_vec.i3[1]";
connectAttr "fit_B_knee.wm" "fit_B_knee_DCMX.imat";
connectAttr "fit_thigh2knee_vec_rvsMULT.o" "fit_thigh_z_vec.i1";
connectAttr "fit_thigh_y_vec.o" "fit_thigh_z_vec.i2";
connectAttr "fit_F_knee_aligned_MTMX.o" "fit_F_knee_aligned_DCMX.imat";
connectAttr "fit_F_knee_aligned_FBFM.o" "fit_F_knee_aligned_MTMX.i[0]";
connectAttr "init_thigh.wim" "fit_F_knee_aligned_MTMX.i[1]";
connectAttr "fit_F_knee_x_vec.ox" "fit_F_knee_aligned_FBFM.i00";
connectAttr "fit_F_knee_x_vec.oy" "fit_F_knee_aligned_FBFM.i01";
connectAttr "fit_F_knee_x_vec.oz" "fit_F_knee_aligned_FBFM.i02";
connectAttr "fit_F_knee_y_vec.ox" "fit_F_knee_aligned_FBFM.i10";
connectAttr "fit_F_knee_y_vec.oy" "fit_F_knee_aligned_FBFM.i11";
connectAttr "fit_F_knee_y_vec.oz" "fit_F_knee_aligned_FBFM.i12";
connectAttr "fit_F_knee_z_vec.ox" "fit_F_knee_aligned_FBFM.i20";
connectAttr "fit_F_knee_z_vec.oy" "fit_F_knee_aligned_FBFM.i21";
connectAttr "fit_F_knee_z_vec.oz" "fit_F_knee_aligned_FBFM.i22";
connectAttr "fit_F_knee_DCMX.otx" "fit_F_knee_aligned_FBFM.i30";
connectAttr "fit_F_knee_DCMX.oty" "fit_F_knee_aligned_FBFM.i31";
connectAttr "fit_F_knee_DCMX.otz" "fit_F_knee_aligned_FBFM.i32";
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.o" "fit_F_knee_x_vec.i1";
connectAttr "fit_F_knee2F_knee_vec.o3" "fit_F_knee2F_knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_F_knee2F_knee_vec_rvsMULT.i2";
connectAttr "fit_B_knee_DCMX.ot" "fit_F_knee2F_knee_vec.i3[0]";
connectAttr "fit_F_knee_DCMX.ot" "fit_F_knee2F_knee_vec.i3[1]";
connectAttr "fit_F_knee2shoulder_vec_rvsMULT.o" "fit_F_knee_y_vec.i1";
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.o" "fit_F_knee_y_vec.i2";
connectAttr "fit_F_knee2shoulder_vec.o3" "fit_F_knee2shoulder_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_F_knee2shoulder_vec_rvsMULT.i2";
connectAttr "fit_F_knee_DCMX.ot" "fit_F_knee2shoulder_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "fit_F_knee2shoulder_vec.i3[1]";
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.o" "fit_F_knee_z_vec.i1";
connectAttr "fit_F_knee_y_vec.o" "fit_F_knee_z_vec.i2";
connectAttr "fit_B_knee_aligned_MTMX.o" "fit_B_knee_aligned_DCMX.imat";
connectAttr "fit_B_knee_aligned_FBFM1.o" "fit_B_knee_aligned_MTMX.i[0]";
connectAttr "init_F_knee.wim" "fit_B_knee_aligned_MTMX.i[1]";
connectAttr "fit_B_knee_x_vec.ox" "fit_B_knee_aligned_FBFM1.i00";
connectAttr "fit_B_knee_x_vec.oy" "fit_B_knee_aligned_FBFM1.i01";
connectAttr "fit_B_knee_x_vec.oz" "fit_B_knee_aligned_FBFM1.i02";
connectAttr "fit_B_knee_y_vec.ox" "fit_B_knee_aligned_FBFM1.i10";
connectAttr "fit_B_knee_y_vec.oy" "fit_B_knee_aligned_FBFM1.i11";
connectAttr "fit_B_knee_y_vec.oz" "fit_B_knee_aligned_FBFM1.i12";
connectAttr "fit_B_knee_z_vec.ox" "fit_B_knee_aligned_FBFM1.i20";
connectAttr "fit_B_knee_z_vec.oy" "fit_B_knee_aligned_FBFM1.i21";
connectAttr "fit_B_knee_z_vec.oz" "fit_B_knee_aligned_FBFM1.i22";
connectAttr "fit_B_knee_DCMX.otx" "fit_B_knee_aligned_FBFM1.i30";
connectAttr "fit_B_knee_DCMX.oty" "fit_B_knee_aligned_FBFM1.i31";
connectAttr "fit_B_knee_DCMX.otz" "fit_B_knee_aligned_FBFM1.i32";
connectAttr "fit_B_knee2ankle_vec_rvsMULT.o" "fit_B_knee_x_vec.i1";
connectAttr "fit_B_knee2ankle_vec.o3" "fit_B_knee2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_B_knee2ankle_vec_rvsMULT.i2";
connectAttr "fit_ankle_DCMX.ot" "fit_B_knee2ankle_vec.i3[0]";
connectAttr "fit_B_knee_DCMX.ot" "fit_B_knee2ankle_vec.i3[1]";
connectAttr "fit_ankle.wm" "fit_ankle_DCMX.imat";
connectAttr "fit_B_knee2B_knee_vec_rvsMULT.o" "fit_B_knee_y_vec.i1";
connectAttr "fit_B_knee2ankle_vec_rvsMULT.o" "fit_B_knee_y_vec.i2";
connectAttr "fit_B_knee2F_knee_vec.o3" "fit_B_knee2B_knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_B_knee2B_knee_vec_rvsMULT.i2";
connectAttr "fit_F_knee_DCMX.ot" "fit_B_knee2F_knee_vec.i3[0]";
connectAttr "fit_B_knee_DCMX.ot" "fit_B_knee2F_knee_vec.i3[1]";
connectAttr "fit_B_knee2ankle_vec_rvsMULT.o" "fit_B_knee_z_vec.i1";
connectAttr "fit_B_knee_y_vec.o" "fit_B_knee_z_vec.i2";
connectAttr "fit_leg_space_local_MTMX1.o" "fit_leg_space_local_DCMX1.imat";
connectAttr "fit_leg_space.wm" "fit_leg_space_local_MTMX1.i[0]";
connectAttr "temp_leg_GRP.wim" "fit_leg_space_local_MTMX1.i[1]";
connectAttr "temp_hip_local_MTMX.o" "temp_hip_local_DCMX.imat";
connectAttr "init_thigh.wm" "temp_hip_local_MTMX.i[0]";
connectAttr "temp_hip.wim" "temp_hip_local_MTMX.i[1]";
connectAttr "init_F_knee_local_MTMX.o" "init_F_knee_local_DCMX.imat";
connectAttr "init_F_knee.wm" "init_F_knee_local_MTMX.i[0]";
connectAttr "temp_thigh.wim" "init_F_knee_local_MTMX.i[1]";
connectAttr "init_B_knee_local_MTMX.o" "init_B_knee_local_DCMX.imat";
connectAttr "init_B_knee.wm" "init_B_knee_local_MTMX.i[0]";
connectAttr "temp_F_knee.wim" "init_B_knee_local_MTMX.i[1]";
connectAttr "temp_B_knee_local_MTMX.o" "temp_B_knee_local_DCMX.imat";
connectAttr "init_ankle.wm" "temp_B_knee_local_MTMX.i[0]";
connectAttr "temp_B_knee.wim" "temp_B_knee_local_MTMX.i[1]";
connectAttr "fit_leg.offsetMir" "fit_mir_offset_DCMX.imat";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "fit_hind_toe.wm" "fit_hind_toe_DCMX.imat";
connectAttr "fit_hind_tiptoe.wm" "fit_tiptoe_DCMX.imat";
connectAttr "fit_hind_toe_DCMX.ot" "fit_ankle2F_hind_toe_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "fit_ankle2F_hind_toe_vec.i3[1]";
connectAttr "fit_B_knee_DCMX.ot" "fit_ankle2F_knee_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "fit_ankle2F_knee_vec.i3[1]";
connectAttr "fit_ankle2F_knee_vec.o3" "fit_ankle2F_knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_ankle2F_knee_vec_rvsMULT.i2";
connectAttr "fit_ankle2F_hind_toe_vec.o3" "fit_ankle2F_hind_toe_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_ankle2F_hind_toe_vec_rvsMULT.i2";
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.o" "fit_ankle_x_vec.i1";
connectAttr "fit_ankle2F_knee_vec_rvsMULT.o" "fit_ankle_y_vec.i1";
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.o" "fit_ankle_y_vec.i2";
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.o" "fit_ankle_z_vec.i1";
connectAttr "fit_ankle_y_vec.o" "fit_ankle_z_vec.i2";
connectAttr "fit_ankle_x_vec.ox" "fit_ankle_aligned_FBFM.i00";
connectAttr "fit_ankle_x_vec.oy" "fit_ankle_aligned_FBFM.i01";
connectAttr "fit_ankle_x_vec.oz" "fit_ankle_aligned_FBFM.i02";
connectAttr "fit_ankle_y_vec.ox" "fit_ankle_aligned_FBFM.i10";
connectAttr "fit_ankle_y_vec.oy" "fit_ankle_aligned_FBFM.i11";
connectAttr "fit_ankle_y_vec.oz" "fit_ankle_aligned_FBFM.i12";
connectAttr "fit_ankle_z_vec.ox" "fit_ankle_aligned_FBFM.i20";
connectAttr "fit_ankle_z_vec.oy" "fit_ankle_aligned_FBFM.i21";
connectAttr "fit_ankle_z_vec.oz" "fit_ankle_aligned_FBFM.i22";
connectAttr "fit_ankle_DCMX.otx" "fit_ankle_aligned_FBFM.i30";
connectAttr "fit_ankle_DCMX.oty" "fit_ankle_aligned_FBFM.i31";
connectAttr "fit_ankle_DCMX.otz" "fit_ankle_aligned_FBFM.i32";
connectAttr "fit_ankle_aligned_FBFM.o" "fit_ankle_aligned_MTMX.i[0]";
connectAttr "init_B_knee.wim" "fit_ankle_aligned_MTMX.i[1]";
connectAttr "fit_ankle_aligned_MTMX.o" "fit_ankle_aligned_DCMX.imat";
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.o" "fit_hind_toe_z_vec.i1";
connectAttr "fit_hind_toe_y_vec.o" "fit_hind_toe_z_vec.i2";
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.o" "fit_hind_toe_y_vec.i1";
connectAttr "fir_hind_toe2ankle_vec_rvsMULT.o" "fit_hind_toe_y_vec.i2";
connectAttr "fit_hind_toe2tiptoe_vec.o3" "fit_hind_toe2tiptoe_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_hind_toe2tiptoe_vec_rvsMULT.i2";
connectAttr "fit_hind_toe_x_vec.ox" "fit_hind_toe_aligned_FBFM.i00";
connectAttr "fit_hind_toe_x_vec.oy" "fit_hind_toe_aligned_FBFM.i01";
connectAttr "fit_hind_toe_x_vec.oz" "fit_hind_toe_aligned_FBFM.i02";
connectAttr "fit_hind_toe_y_vec.ox" "fit_hind_toe_aligned_FBFM.i10";
connectAttr "fit_hind_toe_y_vec.oy" "fit_hind_toe_aligned_FBFM.i11";
connectAttr "fit_hind_toe_y_vec.oz" "fit_hind_toe_aligned_FBFM.i12";
connectAttr "fit_hind_toe_z_vec.ox" "fit_hind_toe_aligned_FBFM.i20";
connectAttr "fit_hind_toe_z_vec.oy" "fit_hind_toe_aligned_FBFM.i21";
connectAttr "fit_hind_toe_z_vec.oz" "fit_hind_toe_aligned_FBFM.i22";
connectAttr "fit_hind_toe_DCMX.otx" "fit_hind_toe_aligned_FBFM.i30";
connectAttr "fit_hind_toe_DCMX.oty" "fit_hind_toe_aligned_FBFM.i31";
connectAttr "fit_hind_toe_DCMX.otz" "fit_hind_toe_aligned_FBFM.i32";
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.o" "fit_hind_toe_x_vec.i1";
connectAttr "fit_tiptoe_DCMX.ot" "fit_hind_toe2tiptoe_vec.i3[0]";
connectAttr "fit_hind_toe_DCMX.ot" "fit_hind_toe2tiptoe_vec.i3[1]";
connectAttr "fit_hind_toe_DCMX.ot" "fir_hind_toe2ankle_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "fir_hind_toe2ankle_vec.i3[1]";
connectAttr "fir_hind_toe2ankle_vec.o3" "fir_hind_toe2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fir_hind_toe2ankle_vec_rvsMULT.i2";
connectAttr "init_hind_toe.wm" "init_hind_toe_local_MTMX.i[0]";
connectAttr "temp_ankle.wim" "init_hind_toe_local_MTMX.i[1]";
connectAttr "init_hind_toe_local_MTMX.o" "init_hind_toe_local_DCMX.imat";
connectAttr "fit_hind_toe_aligned_FBFM.o" "fit_hind_toe_aligned_MTMX.i[0]";
connectAttr "init_ankle.wim" "fit_hind_toe_aligned_MTMX.i[1]";
connectAttr "fit_hind_toe_aligned_MTMX.o" "fit_hind_toe_aligned_DCMX.imat";
connectAttr "fit_hind_tiptoe.wm" "fit_tiptoe_local_MTMX.i[0]";
connectAttr "temp_hind_toe.wim" "fit_tiptoe_local_MTMX.i[1]";
connectAttr "fit_tiptoe_local_MTMX.o" "fit_tiptoe_local_DCMX.imat";
connectAttr "fit_thigh_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh2knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee2F_knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_hip_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_hip_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_knee_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_leg_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_leg_space_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_thigh2knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee2shoulder_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_mir_offset_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee2F_knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee2B_knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_B_knee2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_B_knee_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_aligned_FBFM1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_knee_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_B_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_B_knee_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle2F_hind_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle2F_knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle2F_knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_ankle_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_hind_toe_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe2tiptoe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_hind_toe2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_hind_toe2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "init_hind_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hind_toe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of fit_q_leg.ma
