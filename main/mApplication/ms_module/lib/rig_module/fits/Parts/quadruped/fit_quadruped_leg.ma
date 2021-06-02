//Maya ASCII 2019 scene
//Name: fit_quadruped_leg.ma
//Last modified: Tue, Jun 01, 2021 11:39:31 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
fileInfo "vrayBuild" "5.00.20 c176659";
createNode transform -n "fit_quad_leg";
	rename -uid "72147526-4C7E-D8F0-8870-45A5B13DC96D";
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
	setAttr -s 5 ".fitControls";
	setAttr -s 5 ".init";
	setAttr -s 5 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -k on ".mirror";
createNode transform -n "fit_quad_leg_GRP" -p "fit_quad_leg";
	rename -uid "964BC915-4BEF-A90E-F50E-AC99622DD4D4";
createNode transform -n "fit_quad_hip" -p "fit_quad_leg_GRP";
	rename -uid "171F309C-4AE5-B83F-B522-CA950269C6D6";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_hipShape" -p "fit_quad_hip";
	rename -uid "1E74649D-4D16-6A37-C20C-69B3BA9C905E";
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
createNode transform -n "fit_quad_leg_space" -p "fit_quad_leg_GRP";
	rename -uid "D27B7B97-4686-9015-DFE1-BC8376709708";
createNode transform -n "fit_quad_thgih" -p "fit_quad_leg_space";
	rename -uid "2FEC9387-4425-6E3C-7D6D-3D808C069F7B";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 2.0713150501251221 -2.4073028564453125 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_thgihShape" -p "fit_quad_thgih";
	rename -uid "78B6B288-40B8-3D3E-A806-09BD48E03F18";
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
createNode transform -n "fit_quad_knee" -p "fit_quad_thgih";
	rename -uid "79B89407-4679-638A-C457-A296F1F5981A";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -14.210855484008789 -2.4073047637939453 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_kneeShape" -p "fit_quad_knee";
	rename -uid "9106AA4C-4761-9837-476A-BDB981C13B40";
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
createNode transform -n "fit_quad_ankle" -p "fit_quad_knee";
	rename -uid "09F75EC0-4083-9414-011E-26975C6306D6";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -11.104657173156738 -7.6101837158203125 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_ankleShape" -p "fit_quad_ankle";
	rename -uid "D34AA471-4293-32A1-A875-24828734BEDC";
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
createNode transform -n "fit_quad_B_toe" -p "fit_quad_ankle";
	rename -uid "242819C2-4ED0-1375-018A-4AA44B1957D3";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -10.645127058029175 0.25199317932128906 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_B_toeShape" -p "fit_quad_B_toe";
	rename -uid "1B1E3691-48C3-3B2F-5539-2489E8978C6F";
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
createNode transform -n "fit_quad_init_hip" -p "fit_quad_leg";
	rename -uid "7A4AB902-4E88-87DE-67D6-42B3CA8C839A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_thgih" -p "fit_quad_init_hip";
	rename -uid "3B694085-414B-0B31-3A80-DD862750A866";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_knee" -p "fit_quad_init_thgih";
	rename -uid "9818D2AF-4FDA-BD0D-EBBB-16831ECA7119";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_ankle" -p "fit_quad_init_knee";
	rename -uid "805CF258-4F79-8015-DE78-82973A3D471E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_B_toe" -p "fit_quad_init_ankle";
	rename -uid "D339A207-47E1-371D-B61E-6391BFEFF305";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_quad_Leg_GRP" -p "fit_quad_leg";
	rename -uid "A926C1B2-40DA-AC98-2FD4-13B3DD08025B";
createNode joint -n "temp_quad_hip" -p "temp_quad_Leg_GRP";
	rename -uid "9E8F702E-467D-25C0-B577-91AA0D06575B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_quad_thgih" -p "temp_quad_hip";
	rename -uid "AC1294B8-4D12-42BD-5671-0B838F930AE9";
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
createNode joint -n "temp_quad_knee" -p "temp_quad_thgih";
	rename -uid "3E7E8F92-48A8-9700-C54B-2296BCBB96C4";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".s" -type "double3" 0.99999998554375258 1.0000000000000002 0.99999998554375258 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_quad_ankle" -p "temp_quad_knee";
	rename -uid "0C1C4F87-4077-86F8-F0EB-6EA08FDF9A6B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 1 -min 1 -at "long";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num" 2;
createNode joint -n "temp_quad_B_toe" -p "temp_quad_ankle";
	rename -uid "92B4BC57-48E0-BC3C-1224-FCB495CC4834";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode transform -s -n "persp";
	rename -uid "77DABBF1-499D-8CA4-2CD7-A1BCB6DD8B39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 148.9284819269937 40.484808471881792 49.552259104578937 ;
	setAttr ".r" -type "double3" -5.1383527297635547 426.19999999995315 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AE8A6781-4998-2D49-E098-31A14ECB1236";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 166.96173852834653;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "6260005F-4648-F3D5-0F55-8188AC41AE61";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "491B163F-4C3C-474C-98ED-41AB204B9534";
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
	rename -uid "D7A4E9BE-42BA-89FC-74EF-028A329AD3F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CB491BCF-4D72-4703-5A58-7EBC32AFDC21";
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
	rename -uid "B9B920A6-41F3-0EF5-88F5-439E0A57C1A6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "032EBA1A-4890-695A-DEF8-6A8AD026EDCF";
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
createNode objectSet -n "fit_quad_leg_SET";
	rename -uid "51E45480-48DF-5430-8E30-8CA7E6024B40";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr -s 46 ".dnsm";
createNode condition -n "quad_leg_mirror_COND";
	rename -uid "1C59AC9A-48F1-BE9D-9B13-49B9B4EEAC9D";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_quad_leg_space2fit_quad_init_DCMX";
	rename -uid "D02D36FA-46CE-85E1-0AA0-4785D5168045";
createNode multMatrix -n "fit_quad_leg_space2fit_quad_init_MTMX";
	rename -uid "BA3AF668-4D8F-FDDD-6810-C881EA1F491B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_thigh_aligned_DCMX";
	rename -uid "15756655-4B06-9C78-54B1-00B1F15382B0";
createNode multMatrix -n "fit_quad_thigh_aligned_MTMX";
	rename -uid "1A0F8142-4AB9-26FF-29A0-AAB13B073DEA";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_quad_thigh_aligned_FBFM";
	rename -uid "C00E1801-4991-62C2-5300-D3BF1DEA4ED8";
createNode vectorProduct -n "fit_quad_thigh_x_vec";
	rename -uid "84140B42-4960-ABCF-C9F5-9F96F80BD374";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_thigh2knee_vec_rvsMULT";
	rename -uid "6ABAFEDC-4D0B-FEB8-AA7B-97903A314422";
createNode plusMinusAverage -n "fit_quad_thigh2knee_vec";
	rename -uid "8B973B0A-4977-12D4-3220-B39DD68559BD";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_quad_knee_DCMX";
	rename -uid "2F40C82D-4176-4E97-D399-2F81E0E86263";
createNode decomposeMatrix -n "fit_quad_thigh_DCMX";
	rename -uid "AD92C18F-4F8F-DC3B-7AF3-D58C1766C8DF";
createNode vectorProduct -n "fit_quad_thigh_y_vec";
	rename -uid "7603B605-4BBE-18C0-1630-54B59EA5817B";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_thigh2ankle_vec_rvsMULT";
	rename -uid "F8B5ACE6-436B-EFEF-87A5-EE9790DDE3BD";
createNode plusMinusAverage -n "fit_quad_thigh2ankle_vec";
	rename -uid "9ED8EBC3-444F-DB57-99F8-CC9840850BC1";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_quad_ankle_DCMX";
	rename -uid "B59E44A6-4288-D4A6-797F-B9801356EC57";
createNode vectorProduct -n "fit_quad_thigh_z_vec";
	rename -uid "55815A82-44F9-BED1-5F32-BD8190BE5F1A";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_quad_knee_aligned_DCMX";
	rename -uid "BF2B1F05-4993-0666-0D23-9A910A0E09B9";
createNode multMatrix -n "fit_quad_knee_aligned_MTMX";
	rename -uid "B4091EF3-4FD5-34D2-0CAA-38A36AA9C198";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_quad_knee_aligned_FBFM";
	rename -uid "6EE493CE-4C45-1449-A7BB-AAB02AE9EFEE";
createNode vectorProduct -n "fit_quad_knee_x_vec";
	rename -uid "01C98C3B-4B8C-44EE-D317-7DA5AC41080B";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_knee2ankle_vec_rvsMULT";
	rename -uid "CC12A2FD-4C5E-0662-A786-3FA30173F171";
createNode plusMinusAverage -n "fit_quad_knee2ankle_vec";
	rename -uid "CF5DCEA8-4E1B-F159-AD41-7490781E4DCE";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_quad_knee_y_vec";
	rename -uid "75C1C258-4C98-DDC1-FC35-48A56A4FCAE0";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_knee2thigh_vec_rvsMULT";
	rename -uid "2521BA88-4367-956C-E563-84B719172487";
createNode plusMinusAverage -n "fit_quad_knee2thigh_vec";
	rename -uid "A686011C-49C6-D645-7B6B-55A1888FA588";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_quad_knee_z_vec";
	rename -uid "EDFBA3D4-4414-684F-2C1F-6D8A3753F28E";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_quad_ankle_aligned_init_DCMX";
	rename -uid "70EB9329-47C9-F520-AE62-5E843986DDB8";
createNode multMatrix -n "fit_quad_ankle_aligned_init_MTMX";
	rename -uid "F50D4726-412F-8308-B041-789F62E845E7";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_quad_ankle_aligned_FBFM";
	rename -uid "2B7A3E40-439B-FC50-6CB2-24B9B1DE6E83";
createNode vectorProduct -n "fit_quad_ankle_x_vec";
	rename -uid "06951BF8-4D45-7FA0-CBA6-34AA2D1BCC31";
	setAttr ".op" 0;
	setAttr ".i2" -type "float3" 12.392784 10.002784 32.154369 ;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_ankle2B_toe_vec_revMULT";
	rename -uid "2C1CE9D1-48C4-6127-6BFA-8F86513B9035";
createNode plusMinusAverage -n "fit_quad_ankle2B_toe_vec";
	rename -uid "37BE1660-4CEC-8C44-EB8A-D38940AA3DC0";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_quad_B_toe_DCMX";
	rename -uid "9ADD621D-410D-6097-61C3-C9B25263297C";
createNode vectorProduct -n "fit_quad_ankle_y_vec";
	rename -uid "FB2ADAAF-4A03-583C-426A-878FCC75F058";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_ankle2knee_vec_rvsMULT";
	rename -uid "CD70B2B3-4342-4DF7-323E-27B8D25EBB30";
createNode plusMinusAverage -n "fit_quad_ankle2knee_vec";
	rename -uid "E74067C3-45EF-9D97-768A-0CA72DC956F6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_quad_ankle_z_vec";
	rename -uid "5762308B-478C-169F-2DCE-D6A740306957";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_quad_B_toe_aligned_init_DCMX";
	rename -uid "90018898-4555-349B-48E5-3190BE2E76EB";
createNode multMatrix -n "fit_quad_B_toe_aligned_init_MTMX";
	rename -uid "40F12506-4C4C-A0C2-7FEA-A28BB0D1CBEB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_init_hip2temp_JNT_DCMX";
	rename -uid "8025765B-45FB-FD6E-6E0C-D4A3F042B46F";
createNode multMatrix -n "fit_quad_init_hip2temp_JNT_MTMX";
	rename -uid "321DACD0-497D-C319-4635-C9B24BE848AD";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_init_thgih2temp_JNT_DCMX";
	rename -uid "C5B34585-430D-D4A2-2CD8-19B71AE02DAB";
createNode multMatrix -n "fit_quad_init_thgih2temp_JNT_MTMX";
	rename -uid "1DF3FAA5-4B10-1544-FA5C-B5BF546671EC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_thigh2knee_JNT_DCMX";
	rename -uid "D4E977AC-472D-30E9-211C-6A854DD4B03F";
createNode multMatrix -n "fit_quad_thigh2knee_JNT_MTMX";
	rename -uid "3C819C6B-4B4B-1339-27EC-1385C92D847F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_ankle2temp_JNT_DCMX";
	rename -uid "D7321A10-42F4-AEDB-379C-A4A5B9B6F70D";
createNode multMatrix -n "fit_init_ankle2temp_JNT_MTMX";
	rename -uid "FB3F242B-49DB-36D3-61E1-B99DA5F75192";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_B_toe2temp_JNT_DCMX";
	rename -uid "FD62015A-4C54-3446-AF99-BFB90DB4C0D3";
createNode multMatrix -n "fit_init_B_toe2temp_JNT_MTMX";
	rename -uid "EAF21415-4F5D-44CB-38AC-D99CCCAA370B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "quad_mir_offset_DCMX";
	rename -uid "FFF205B3-4653-4D6C-7197-46ACFE516EE9";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "837A58E6-4845-25ED-5109-88A5F46C2285";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "24216678-4CEF-5F25-2EE1-CDA263B6571A";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/parts/PartsFit/fit_quadruped_leg.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3EAF184B-40E8-E47F-1254-FC91121601A3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "71777183-4EBC-FDD4-10F7-28ACA959E992";
createNode displayLayerManager -n "layerManager";
	rename -uid "34AF2A14-4A5B-536A-99C8-329EB02DD03F";
createNode displayLayer -n "defaultLayer";
	rename -uid "75786E3F-4694-417D-532A-BA97F89D703D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3DF9DFB1-452D-860D-E736-B7904FBE267F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "19D19484-4FC1-50F1-99F9-138F227A7CD9";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0D20B73E-430B-00C1-CD70-01B9906C6EF4";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1095\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1095\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1095\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1C0F19F7-4C93-312A-C083-49B54057B3B5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "65F95AA8-4B73-D6AB-8675-62AB2C888448";
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
	setAttr -s 48 ".u";
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
connectAttr "fit_quad_hip.fitControl" "fit_quad_leg.fitControls" -na;
connectAttr "fit_quad_thgih.fitControl" "fit_quad_leg.fitControls" -na;
connectAttr "fit_quad_knee.fitControl" "fit_quad_leg.fitControls" -na;
connectAttr "fit_quad_ankle.fitControl" "fit_quad_leg.fitControls" -na;
connectAttr "fit_quad_B_toe.fitControl" "fit_quad_leg.fitControls" -na;
connectAttr "fit_quad_init_hip.init" "fit_quad_leg.init" -na;
connectAttr "fit_quad_init_thgih.init" "fit_quad_leg.init" -na;
connectAttr "fit_quad_init_knee.init" "fit_quad_leg.init" -na;
connectAttr "fit_quad_init_ankle.init" "fit_quad_leg.init" -na;
connectAttr "fit_quad_init_B_toe.init" "fit_quad_leg.init" -na;
connectAttr "temp_quad_hip.tempJoint" "fit_quad_leg.tempJoints" -na;
connectAttr "temp_quad_thgih.tempJoint" "fit_quad_leg.tempJoints" -na;
connectAttr "temp_quad_knee.tempJoint" "fit_quad_leg.tempJoints" -na;
connectAttr "temp_quad_ankle.tempJoint" "fit_quad_leg.tempJoints" -na;
connectAttr "temp_quad_B_toe.tempJoints" "fit_quad_leg.tempJoints" -na;
connectAttr "quad_leg_mirror_COND.ocr" "fit_quad_leg_GRP.sx";
connectAttr "fit_quad_hip.t" "fit_quad_leg_space.t";
connectAttr "fit_quad_hip.r" "fit_quad_leg_space.r";
connectAttr "fit_quad_hip.s" "fit_quad_leg_space.s";
connectAttr "fit_quad_leg_space2fit_quad_init_DCMX.ot" "fit_quad_init_hip.t";
connectAttr "fit_quad_leg_space2fit_quad_init_DCMX.or" "fit_quad_init_hip.r";
connectAttr "fit_quad_leg_space.s" "fit_quad_init_hip.s";
connectAttr "fit_quad_thigh_aligned_DCMX.ot" "fit_quad_init_thgih.t";
connectAttr "fit_quad_thigh_aligned_DCMX.or" "fit_quad_init_thgih.r";
connectAttr "fit_quad_thigh_aligned_DCMX.os" "fit_quad_init_thgih.s";
connectAttr "fit_quad_thigh_aligned_DCMX.osh" "fit_quad_init_thgih.sh";
connectAttr "fit_quad_knee_aligned_DCMX.ot" "fit_quad_init_knee.t";
connectAttr "fit_quad_knee_aligned_DCMX.or" "fit_quad_init_knee.r";
connectAttr "fit_quad_knee_aligned_DCMX.os" "fit_quad_init_knee.s";
connectAttr "fit_quad_knee_aligned_DCMX.osh" "fit_quad_init_knee.sh";
connectAttr "fit_quad_ankle_aligned_init_DCMX.ot" "fit_quad_init_ankle.t";
connectAttr "fit_quad_ankle_aligned_init_DCMX.os" "fit_quad_init_ankle.s";
connectAttr "fit_quad_ankle_aligned_init_DCMX.or" "fit_quad_init_ankle.r";
connectAttr "fit_quad_ankle_aligned_init_DCMX.osh" "fit_quad_init_ankle.sh";
connectAttr "fit_quad_B_toe_aligned_init_DCMX.ot" "fit_quad_init_B_toe.t";
connectAttr "fit_quad_B_toe_aligned_init_DCMX.os" "fit_quad_init_B_toe.s";
connectAttr "fit_quad_B_toe_aligned_init_DCMX.osh" "fit_quad_init_B_toe.sh";
connectAttr "quad_leg_mirror_COND.ocb" "temp_quad_Leg_GRP.sz";
connectAttr "fit_quad_init_hip2temp_JNT_DCMX.ot" "temp_quad_hip.t";
connectAttr "fit_quad_init_hip2temp_JNT_DCMX.or" "temp_quad_hip.jo";
connectAttr "fit_quad_init_thgih2temp_JNT_DCMX.ot" "temp_quad_thgih.t";
connectAttr "fit_quad_init_thgih2temp_JNT_DCMX.or" "temp_quad_thgih.jo";
connectAttr "temp_quad_hip.s" "temp_quad_thgih.is";
connectAttr "fit_quad_thigh2knee_JNT_DCMX.ot" "temp_quad_knee.t";
connectAttr "fit_quad_thigh2knee_JNT_DCMX.or" "temp_quad_knee.jo";
connectAttr "fit_init_ankle2temp_JNT_DCMX.ot" "temp_quad_ankle.t";
connectAttr "fit_init_ankle2temp_JNT_DCMX.or" "temp_quad_ankle.jo";
connectAttr "temp_quad_knee.s" "temp_quad_ankle.is";
connectAttr "temp_quad_ankle.s" "temp_quad_B_toe.is";
connectAttr "fit_init_B_toe2temp_JNT_DCMX.ot" "temp_quad_B_toe.t";
connectAttr "fit_quad_init_B_toe.r" "temp_quad_B_toe.jo";
connectAttr "fit_quad_leg.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_leg_GRP.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_hip.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_leg_space.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_thgih.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_knee.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_ankle.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_B_toe.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_init_hip.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_init_thgih.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_init_knee.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_init_ankle.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_init_B_toe.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "temp_quad_Leg_GRP.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "temp_quad_hip.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "temp_quad_thgih.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "temp_quad_knee.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "temp_quad_ankle.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "temp_quad_B_toe.iog" "fit_quad_leg_SET.dsm" -na;
connectAttr "fit_quad_ankle_aligned_init_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_B_toe_aligned_init_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_leg_space2fit_quad_init_DCMX.msg" "fit_quad_leg_SET.dnsm" 
		-na;
connectAttr "fit_quad_B_toe_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee_aligned_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "quad_mir_offset_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_init_hip2temp_JNT_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh2knee_JNT_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh_aligned_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_init_thgih2temp_JNT_DCMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle_aligned_FBFM.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee_aligned_FBFM.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh_aligned_FBFM.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle_aligned_init_MTMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_B_toe_aligned_init_MTMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_leg_space2fit_quad_init_MTMX.msg" "fit_quad_leg_SET.dnsm" 
		-na;
connectAttr "fit_quad_knee_aligned_MTMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_init_hip2temp_JNT_MTMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh2knee_JNT_MTMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh_aligned_MTMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_init_thgih2temp_JNT_MTMX.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle2B_toe_vec_revMULT.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle2knee_vec_rvsMULT.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee2ankle_vec_rvsMULT.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee2thigh_vec_rvsMULT.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh2ankle_vec_rvsMULT.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh2knee_vec_rvsMULT.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle2B_toe_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle2knee_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee2ankle_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee2thigh_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh2ankle_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh2knee_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle_x_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle_y_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_ankle_z_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee_x_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee_y_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_knee_z_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh_x_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh_y_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_thigh_z_vec.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "quad_leg_mirror_COND.msg" "fit_quad_leg_SET.dnsm" -na;
connectAttr "fit_quad_leg.mirror" "quad_leg_mirror_COND.ft";
connectAttr "fit_quad_leg.leftDirect" "quad_leg_mirror_COND.cf";
connectAttr "fit_quad_leg.rightDirect" "quad_leg_mirror_COND.ct";
connectAttr "fit_quad_leg_space2fit_quad_init_MTMX.o" "fit_quad_leg_space2fit_quad_init_DCMX.imat"
		;
connectAttr "fit_quad_leg_space.wm" "fit_quad_leg_space2fit_quad_init_MTMX.i[0]"
		;
connectAttr "fit_quad_leg.wim" "fit_quad_leg_space2fit_quad_init_MTMX.i[1]";
connectAttr "fit_quad_thigh_aligned_MTMX.o" "fit_quad_thigh_aligned_DCMX.imat";
connectAttr "fit_quad_thigh_aligned_FBFM.o" "fit_quad_thigh_aligned_MTMX.i[0]";
connectAttr "fit_quad_init_hip.wim" "fit_quad_thigh_aligned_MTMX.i[1]";
connectAttr "fit_quad_thigh_x_vec.ox" "fit_quad_thigh_aligned_FBFM.i00";
connectAttr "fit_quad_thigh_x_vec.oy" "fit_quad_thigh_aligned_FBFM.i01";
connectAttr "fit_quad_thigh_x_vec.oz" "fit_quad_thigh_aligned_FBFM.i02";
connectAttr "fit_quad_thigh_y_vec.ox" "fit_quad_thigh_aligned_FBFM.i10";
connectAttr "fit_quad_thigh_y_vec.oy" "fit_quad_thigh_aligned_FBFM.i11";
connectAttr "fit_quad_thigh_y_vec.oz" "fit_quad_thigh_aligned_FBFM.i12";
connectAttr "fit_quad_thigh_z_vec.oy" "fit_quad_thigh_aligned_FBFM.i21";
connectAttr "fit_quad_thigh_z_vec.ox" "fit_quad_thigh_aligned_FBFM.i20";
connectAttr "fit_quad_thigh_z_vec.oz" "fit_quad_thigh_aligned_FBFM.i22";
connectAttr "fit_quad_thigh_DCMX.otx" "fit_quad_thigh_aligned_FBFM.i30";
connectAttr "fit_quad_thigh_DCMX.oty" "fit_quad_thigh_aligned_FBFM.i31";
connectAttr "fit_quad_thigh_DCMX.otz" "fit_quad_thigh_aligned_FBFM.i32";
connectAttr "fit_quad_thigh2knee_vec_rvsMULT.o" "fit_quad_thigh_x_vec.i1";
connectAttr "fit_quad_thigh2knee_vec.o3" "fit_quad_thigh2knee_vec_rvsMULT.i1";
connectAttr "quad_leg_mirror_COND.oc" "fit_quad_thigh2knee_vec_rvsMULT.i2";
connectAttr "fit_quad_knee_DCMX.ot" "fit_quad_thigh2knee_vec.i3[0]";
connectAttr "fit_quad_thigh_DCMX.ot" "fit_quad_thigh2knee_vec.i3[1]";
connectAttr "fit_quad_knee.wm" "fit_quad_knee_DCMX.imat";
connectAttr "fit_quad_thgih.wm" "fit_quad_thigh_DCMX.imat";
connectAttr "fit_quad_thigh2ankle_vec_rvsMULT.o" "fit_quad_thigh_y_vec.i1";
connectAttr "fit_quad_thigh2knee_vec_rvsMULT.o" "fit_quad_thigh_y_vec.i2";
connectAttr "fit_quad_thigh2ankle_vec.o3" "fit_quad_thigh2ankle_vec_rvsMULT.i1";
connectAttr "quad_leg_mirror_COND.oc" "fit_quad_thigh2ankle_vec_rvsMULT.i2";
connectAttr "fit_quad_thigh_DCMX.ot" "fit_quad_thigh2ankle_vec.i3[0]";
connectAttr "fit_quad_ankle_DCMX.ot" "fit_quad_thigh2ankle_vec.i3[1]";
connectAttr "fit_quad_ankle.wm" "fit_quad_ankle_DCMX.imat";
connectAttr "fit_quad_thigh2knee_vec_rvsMULT.o" "fit_quad_thigh_z_vec.i1";
connectAttr "fit_quad_thigh_y_vec.o" "fit_quad_thigh_z_vec.i2";
connectAttr "fit_quad_knee_aligned_MTMX.o" "fit_quad_knee_aligned_DCMX.imat";
connectAttr "fit_quad_knee_aligned_FBFM.o" "fit_quad_knee_aligned_MTMX.i[0]";
connectAttr "fit_quad_init_thgih.wim" "fit_quad_knee_aligned_MTMX.i[1]";
connectAttr "fit_quad_knee_x_vec.ox" "fit_quad_knee_aligned_FBFM.i00";
connectAttr "fit_quad_knee_x_vec.oy" "fit_quad_knee_aligned_FBFM.i01";
connectAttr "fit_quad_knee_x_vec.oz" "fit_quad_knee_aligned_FBFM.i02";
connectAttr "fit_quad_knee_y_vec.ox" "fit_quad_knee_aligned_FBFM.i10";
connectAttr "fit_quad_knee_y_vec.oy" "fit_quad_knee_aligned_FBFM.i11";
connectAttr "fit_quad_knee_y_vec.oz" "fit_quad_knee_aligned_FBFM.i12";
connectAttr "fit_quad_knee_z_vec.ox" "fit_quad_knee_aligned_FBFM.i20";
connectAttr "fit_quad_knee_z_vec.oy" "fit_quad_knee_aligned_FBFM.i21";
connectAttr "fit_quad_knee_z_vec.oz" "fit_quad_knee_aligned_FBFM.i22";
connectAttr "fit_quad_knee_DCMX.otx" "fit_quad_knee_aligned_FBFM.i30";
connectAttr "fit_quad_knee_DCMX.oty" "fit_quad_knee_aligned_FBFM.i31";
connectAttr "fit_quad_knee_DCMX.otz" "fit_quad_knee_aligned_FBFM.i32";
connectAttr "fit_quad_knee2ankle_vec_rvsMULT.o" "fit_quad_knee_x_vec.i1";
connectAttr "fit_quad_knee2ankle_vec.o3" "fit_quad_knee2ankle_vec_rvsMULT.i1";
connectAttr "quad_leg_mirror_COND.oc" "fit_quad_knee2ankle_vec_rvsMULT.i2";
connectAttr "fit_quad_ankle_DCMX.ot" "fit_quad_knee2ankle_vec.i3[0]";
connectAttr "fit_quad_knee_DCMX.ot" "fit_quad_knee2ankle_vec.i3[1]";
connectAttr "fit_quad_knee2thigh_vec_rvsMULT.o" "fit_quad_knee_y_vec.i1";
connectAttr "fit_quad_knee2ankle_vec_rvsMULT.o" "fit_quad_knee_y_vec.i2";
connectAttr "fit_quad_knee2thigh_vec.o3" "fit_quad_knee2thigh_vec_rvsMULT.i1";
connectAttr "quad_leg_mirror_COND.oc" "fit_quad_knee2thigh_vec_rvsMULT.i2";
connectAttr "fit_quad_knee_DCMX.ot" "fit_quad_knee2thigh_vec.i3[0]";
connectAttr "fit_quad_thigh_DCMX.ot" "fit_quad_knee2thigh_vec.i3[1]";
connectAttr "fit_quad_knee2ankle_vec_rvsMULT.o" "fit_quad_knee_z_vec.i1";
connectAttr "fit_quad_knee_y_vec.o" "fit_quad_knee_z_vec.i2";
connectAttr "fit_quad_ankle_aligned_init_MTMX.o" "fit_quad_ankle_aligned_init_DCMX.imat"
		;
connectAttr "fit_quad_ankle_aligned_FBFM.o" "fit_quad_ankle_aligned_init_MTMX.i[0]"
		;
connectAttr "fit_quad_init_knee.wim" "fit_quad_ankle_aligned_init_MTMX.i[1]";
connectAttr "fit_quad_ankle_x_vec.ox" "fit_quad_ankle_aligned_FBFM.i00";
connectAttr "fit_quad_ankle_x_vec.oy" "fit_quad_ankle_aligned_FBFM.i01";
connectAttr "fit_quad_ankle_x_vec.oz" "fit_quad_ankle_aligned_FBFM.i02";
connectAttr "fit_quad_ankle_y_vec.ox" "fit_quad_ankle_aligned_FBFM.i10";
connectAttr "fit_quad_ankle_y_vec.oy" "fit_quad_ankle_aligned_FBFM.i11";
connectAttr "fit_quad_ankle_y_vec.oz" "fit_quad_ankle_aligned_FBFM.i12";
connectAttr "fit_quad_ankle_z_vec.ox" "fit_quad_ankle_aligned_FBFM.i20";
connectAttr "fit_quad_ankle_z_vec.oy" "fit_quad_ankle_aligned_FBFM.i21";
connectAttr "fit_quad_ankle_z_vec.oz" "fit_quad_ankle_aligned_FBFM.i22";
connectAttr "fit_quad_ankle_DCMX.otx" "fit_quad_ankle_aligned_FBFM.i30";
connectAttr "fit_quad_ankle_DCMX.oty" "fit_quad_ankle_aligned_FBFM.i31";
connectAttr "fit_quad_ankle_DCMX.otz" "fit_quad_ankle_aligned_FBFM.i32";
connectAttr "fit_quad_ankle2B_toe_vec_revMULT.o" "fit_quad_ankle_x_vec.i1";
connectAttr "fit_quad_ankle2B_toe_vec.o3" "fit_quad_ankle2B_toe_vec_revMULT.i1";
connectAttr "quad_leg_mirror_COND.oc" "fit_quad_ankle2B_toe_vec_revMULT.i2";
connectAttr "fit_quad_B_toe_DCMX.ot" "fit_quad_ankle2B_toe_vec.i3[0]";
connectAttr "fit_quad_ankle_DCMX.ot" "fit_quad_ankle2B_toe_vec.i3[1]";
connectAttr "fit_quad_B_toe.wm" "fit_quad_B_toe_DCMX.imat";
connectAttr "fit_quad_ankle2knee_vec_rvsMULT.o" "fit_quad_ankle_y_vec.i1";
connectAttr "fit_quad_ankle2B_toe_vec_revMULT.o" "fit_quad_ankle_y_vec.i2";
connectAttr "fit_quad_ankle2knee_vec.o3" "fit_quad_ankle2knee_vec_rvsMULT.i1";
connectAttr "quad_leg_mirror_COND.oc" "fit_quad_ankle2knee_vec_rvsMULT.i2";
connectAttr "fit_quad_knee_DCMX.ot" "fit_quad_ankle2knee_vec.i3[0]";
connectAttr "fit_quad_ankle_DCMX.ot" "fit_quad_ankle2knee_vec.i3[1]";
connectAttr "fit_quad_ankle2B_toe_vec_revMULT.o" "fit_quad_ankle_z_vec.i1";
connectAttr "fit_quad_ankle_y_vec.o" "fit_quad_ankle_z_vec.i2";
connectAttr "fit_quad_B_toe_aligned_init_MTMX.o" "fit_quad_B_toe_aligned_init_DCMX.imat"
		;
connectAttr "fit_quad_B_toe.wm" "fit_quad_B_toe_aligned_init_MTMX.i[0]";
connectAttr "fit_quad_init_ankle.wim" "fit_quad_B_toe_aligned_init_MTMX.i[1]";
connectAttr "fit_quad_init_hip2temp_JNT_MTMX.o" "fit_quad_init_hip2temp_JNT_DCMX.imat"
		;
connectAttr "fit_quad_init_hip.wm" "fit_quad_init_hip2temp_JNT_MTMX.i[0]";
connectAttr "temp_quad_Leg_GRP.wim" "fit_quad_init_hip2temp_JNT_MTMX.i[1]";
connectAttr "fit_quad_init_thgih2temp_JNT_MTMX.o" "fit_quad_init_thgih2temp_JNT_DCMX.imat"
		;
connectAttr "fit_quad_init_thgih.wm" "fit_quad_init_thgih2temp_JNT_MTMX.i[0]";
connectAttr "temp_quad_hip.wim" "fit_quad_init_thgih2temp_JNT_MTMX.i[1]";
connectAttr "fit_quad_thigh2knee_JNT_MTMX.o" "fit_quad_thigh2knee_JNT_DCMX.imat"
		;
connectAttr "fit_quad_init_knee.wm" "fit_quad_thigh2knee_JNT_MTMX.i[0]";
connectAttr "temp_quad_thgih.wim" "fit_quad_thigh2knee_JNT_MTMX.i[1]";
connectAttr "fit_init_ankle2temp_JNT_MTMX.o" "fit_init_ankle2temp_JNT_DCMX.imat"
		;
connectAttr "fit_quad_init_ankle.wm" "fit_init_ankle2temp_JNT_MTMX.i[0]";
connectAttr "temp_quad_knee.wim" "fit_init_ankle2temp_JNT_MTMX.i[1]";
connectAttr "fit_init_B_toe2temp_JNT_MTMX.o" "fit_init_B_toe2temp_JNT_DCMX.imat"
		;
connectAttr "fit_quad_init_B_toe.wm" "fit_init_B_toe2temp_JNT_MTMX.i[0]";
connectAttr "temp_quad_ankle.wim" "fit_init_B_toe2temp_JNT_MTMX.i[1]";
connectAttr "fit_quad_leg.offsetMir" "quad_mir_offset_DCMX.imat";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_quad_thigh_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_knee_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_thigh2knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_thigh2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_thigh_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_thigh_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_thigh_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_thigh_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_thigh_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_knee2thigh_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_knee2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_knee_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_knee_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_knee_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_knee_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_knee_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_init_thgih2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_thgih2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_thigh2knee_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_thigh2knee_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_knee_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_ankle_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_leg_space2fit_quad_init_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_leg_space2fit_quad_init_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_thigh_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_thigh2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_thigh2knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_knee2thigh_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_knee2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "quad_mir_offset_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_B_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle2knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle2B_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle2knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_ankle2B_toe_vec_revMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_ankle_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_ankle_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_B_toe_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_B_toe_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "quad_leg_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_init_ankle2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_ankle2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_B_toe2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_B_toe2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of fit_quadruped_leg.ma
