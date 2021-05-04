//Maya ASCII 2019 scene
//Name: fit_quadruped_leg.ma
//Last modified: Tue, May 04, 2021 02:02:47 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "fit_leg";
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
createNode transform -n "fit_leg_GRP" -p "fit_leg";
	rename -uid "964BC915-4BEF-A90E-F50E-AC99622DD4D4";
createNode transform -n "fit_hip" -p "fit_leg_GRP";
	rename -uid "171F309C-4AE5-B83F-B522-CA950269C6D6";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_hipShape" -p "fit_hip";
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
createNode transform -n "fit_leg_space" -p "fit_leg_GRP";
	rename -uid "D27B7B97-4686-9015-DFE1-BC8376709708";
createNode transform -n "fit_thgih" -p "fit_leg_space";
	rename -uid "2FEC9387-4425-6E3C-7D6D-3D808C069F7B";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 2.0713150501251221 -2.4073028564453125 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_thgihShape" -p "fit_thgih";
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
createNode transform -n "fit_knee" -p "fit_thgih";
	rename -uid "79B89407-4679-638A-C457-A296F1F5981A";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -14.210855484008789 -2.4073047637939453 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_kneeShape" -p "fit_knee";
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
createNode transform -n "fit_ankle" -p "fit_knee";
	rename -uid "09F75EC0-4083-9414-011E-26975C6306D6";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -11.104657173156738 -7.6101837158203125 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_ankleShape" -p "fit_ankle";
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
createNode transform -n "fit_B_toe" -p "fit_ankle";
	rename -uid "242819C2-4ED0-1375-018A-4AA44B1957D3";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -10.645127058029175 0.25199317932128906 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_B_toeShape" -p "fit_B_toe";
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
createNode transform -n "fit_init_hip" -p "fit_leg";
	rename -uid "7A4AB902-4E88-87DE-67D6-42B3CA8C839A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_thgih" -p "fit_init_hip";
	rename -uid "3B694085-414B-0B31-3A80-DD862750A866";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_knee" -p "fit_init_thgih";
	rename -uid "9818D2AF-4FDA-BD0D-EBBB-16831ECA7119";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_ankle" -p "fit_init_knee";
	rename -uid "805CF258-4F79-8015-DE78-82973A3D471E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
createNode transform -n "fit_init_B_toe" -p "fit_init_ankle";
	rename -uid "D339A207-47E1-371D-B61E-6391BFEFF305";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
createNode transform -n "temp_Leg_GRP" -p "fit_leg";
	rename -uid "A926C1B2-40DA-AC98-2FD4-13B3DD08025B";
createNode joint -n "temp_hip" -p "temp_Leg_GRP";
	rename -uid "9E8F702E-467D-25C0-B577-91AA0D06575B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_thgih" -p "temp_hip";
	rename -uid "AC1294B8-4D12-42BD-5671-0B838F930AE9";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr -s 2 ".iog";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_knee" -p "temp_thgih";
	rename -uid "3E7E8F92-48A8-9700-C54B-2296BCBB96C4";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr -s 2 ".iog";
	setAttr ".s" -type "double3" 0.99999998554375258 1.0000000000000002 0.99999998554375258 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_ankle" -p "temp_knee";
	rename -uid "0C1C4F87-4077-86F8-F0EB-6EA08FDF9A6B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 1 -min 1 -at "long";
	setAttr -s 2 ".iog";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num" 2;
createNode joint -n "temp_B_toe" -p "temp_ankle";
	rename -uid "92B4BC57-48E0-BC3C-1224-FCB495CC4834";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode objectSet -n "fit_leg_SET";
	rename -uid "51E45480-48DF-5430-8E30-8CA7E6024B40";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr -s 46 ".dnsm";
createNode condition -n "leg_mirror_COND";
	rename -uid "1C59AC9A-48F1-BE9D-9B13-49B9B4EEAC9D";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_leg_space2fit_init_DCMX";
	rename -uid "D02D36FA-46CE-85E1-0AA0-4785D5168045";
createNode multMatrix -n "fit_leg_space2fit_init_MTMX";
	rename -uid "BA3AF668-4D8F-FDDD-6810-C881EA1F491B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "thigh_aligned_DCMX";
	rename -uid "15756655-4B06-9C78-54B1-00B1F15382B0";
createNode multMatrix -n "thigh_aligned_MTMX";
	rename -uid "1A0F8142-4AB9-26FF-29A0-AAB13B073DEA";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "thigh_aligned_FBFM";
	rename -uid "C00E1801-4991-62C2-5300-D3BF1DEA4ED8";
createNode vectorProduct -n "thigh_x_vec";
	rename -uid "84140B42-4960-ABCF-C9F5-9F96F80BD374";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "thigh2knee_vec_rvsMULT";
	rename -uid "6ABAFEDC-4D0B-FEB8-AA7B-97903A314422";
createNode plusMinusAverage -n "thigh2knee_vec";
	rename -uid "8B973B0A-4977-12D4-3220-B39DD68559BD";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_knee_DCMX";
	rename -uid "2F40C82D-4176-4E97-D399-2F81E0E86263";
createNode decomposeMatrix -n "fit_thigh_DCMX";
	rename -uid "AD92C18F-4F8F-DC3B-7AF3-D58C1766C8DF";
createNode vectorProduct -n "thigh_y_vec";
	rename -uid "7603B605-4BBE-18C0-1630-54B59EA5817B";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "thigh2ankle_vec_rvsMULT";
	rename -uid "F8B5ACE6-436B-EFEF-87A5-EE9790DDE3BD";
createNode plusMinusAverage -n "thigh2ankle_vec";
	rename -uid "9ED8EBC3-444F-DB57-99F8-CC9840850BC1";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_ankle_DCMX";
	rename -uid "B59E44A6-4288-D4A6-797F-B9801356EC57";
createNode vectorProduct -n "thigh_z_vec";
	rename -uid "55815A82-44F9-BED1-5F32-BD8190BE5F1A";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "knee_aligned_DCMX";
	rename -uid "BF2B1F05-4993-0666-0D23-9A910A0E09B9";
createNode multMatrix -n "knee_aligned_MTMX";
	rename -uid "B4091EF3-4FD5-34D2-0CAA-38A36AA9C198";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "knee_aligned_FBFM";
	rename -uid "6EE493CE-4C45-1449-A7BB-AAB02AE9EFEE";
createNode vectorProduct -n "knee_x_vec";
	rename -uid "01C98C3B-4B8C-44EE-D317-7DA5AC41080B";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "knee2ankle_vec_rvsMULT";
	rename -uid "CC12A2FD-4C5E-0662-A786-3FA30173F171";
createNode plusMinusAverage -n "knee2ankle_vec";
	rename -uid "CF5DCEA8-4E1B-F159-AD41-7490781E4DCE";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "knee_y_vec";
	rename -uid "75C1C258-4C98-DDC1-FC35-48A56A4FCAE0";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "knee2thigh_vec_rvsMULT";
	rename -uid "2521BA88-4367-956C-E563-84B719172487";
createNode plusMinusAverage -n "knee2thigh_vec";
	rename -uid "A686011C-49C6-D645-7B6B-55A1888FA588";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "knee_z_vec";
	rename -uid "EDFBA3D4-4414-684F-2C1F-6D8A3753F28E";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "ankle_aligned_init_DCMX";
	rename -uid "70EB9329-47C9-F520-AE62-5E843986DDB8";
createNode multMatrix -n "ankle_aligned_init_MTMX";
	rename -uid "F50D4726-412F-8308-B041-789F62E845E7";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "ankle_aligned_FBFM";
	rename -uid "2B7A3E40-439B-FC50-6CB2-24B9B1DE6E83";
createNode vectorProduct -n "ankle_x_vec";
	rename -uid "06951BF8-4D45-7FA0-CBA6-34AA2D1BCC31";
	setAttr ".op" 0;
	setAttr ".i2" -type "float3" 12.392784 10.002784 32.154369 ;
	setAttr ".no" yes;
createNode multiplyDivide -n "ankle2B_toe_vec_revMULT";
	rename -uid "2C1CE9D1-48C4-6127-6BFA-8F86513B9035";
createNode plusMinusAverage -n "ankle2B_toe_vec";
	rename -uid "37BE1660-4CEC-8C44-EB8A-D38940AA3DC0";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_B_toe_DCMX";
	rename -uid "9ADD621D-410D-6097-61C3-C9B25263297C";
createNode vectorProduct -n "ankle_y_vec";
	rename -uid "FB2ADAAF-4A03-583C-426A-878FCC75F058";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "ankle2knee_vec_rvsMULT";
	rename -uid "CD70B2B3-4342-4DF7-323E-27B8D25EBB30";
createNode plusMinusAverage -n "ankle2knee_vec";
	rename -uid "E74067C3-45EF-9D97-768A-0CA72DC956F6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "ankle_z_vec";
	rename -uid "5762308B-478C-169F-2DCE-D6A740306957";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "B_toe_aligned_init_DCMX";
	rename -uid "90018898-4555-349B-48E5-3190BE2E76EB";
createNode multMatrix -n "B_toe_aligned_init_MTMX";
	rename -uid "40F12506-4C4C-A0C2-7FEA-A28BB0D1CBEB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_hip2temp_JNT_DCMX";
	rename -uid "8025765B-45FB-FD6E-6E0C-D4A3F042B46F";
createNode multMatrix -n "fit_init_hip2temp_JNT_MTMX";
	rename -uid "321DACD0-497D-C319-4635-C9B24BE848AD";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_thgih2temp_JNT_DCMX";
	rename -uid "C5B34585-430D-D4A2-2CD8-19B71AE02DAB";
createNode multMatrix -n "fit_init_thgih2temp_JNT_MTMX";
	rename -uid "1DF3FAA5-4B10-1544-FA5C-B5BF546671EC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "thigh2knee_JNT_DCMX";
	rename -uid "D4E977AC-472D-30E9-211C-6A854DD4B03F";
createNode multMatrix -n "thigh2knee_JNT_MTMX";
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
createNode decomposeMatrix -n "mir_offset_DCMX";
	rename -uid "FFF205B3-4653-4D6C-7197-46ACFE516EE9";
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
connectAttr "fit_hip.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_thgih.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_knee.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_ankle.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_B_toe.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_init_hip.init" "fit_leg.init" -na;
connectAttr "fit_init_thgih.init" "fit_leg.init" -na;
connectAttr "fit_init_knee.init" "fit_leg.init" -na;
connectAttr "fit_init_ankle.init" "fit_leg.init" -na;
connectAttr "fit_init_B_toe.init" "fit_leg.init" -na;
connectAttr "temp_hip.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_thgih.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_knee.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_ankle.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_B_toe.tempJoints" "fit_leg.tempJoints" -na;
connectAttr "leg_mirror_COND.ocr" "fit_leg_GRP.sx";
connectAttr "fit_hip.t" "fit_leg_space.t";
connectAttr "fit_hip.r" "fit_leg_space.r";
connectAttr "fit_hip.s" "fit_leg_space.s";
connectAttr "fit_leg_space2fit_init_DCMX.ot" "fit_init_hip.t";
connectAttr "fit_leg_space2fit_init_DCMX.or" "fit_init_hip.r";
connectAttr "fit_leg_space.s" "fit_init_hip.s";
connectAttr "thigh_aligned_DCMX.ot" "fit_init_thgih.t";
connectAttr "thigh_aligned_DCMX.or" "fit_init_thgih.r";
connectAttr "thigh_aligned_DCMX.os" "fit_init_thgih.s";
connectAttr "thigh_aligned_DCMX.osh" "fit_init_thgih.sh";
connectAttr "knee_aligned_DCMX.ot" "fit_init_knee.t";
connectAttr "knee_aligned_DCMX.or" "fit_init_knee.r";
connectAttr "knee_aligned_DCMX.os" "fit_init_knee.s";
connectAttr "knee_aligned_DCMX.osh" "fit_init_knee.sh";
connectAttr "ankle_aligned_init_DCMX.ot" "fit_init_ankle.t";
connectAttr "ankle_aligned_init_DCMX.os" "fit_init_ankle.s";
connectAttr "ankle_aligned_init_DCMX.or" "fit_init_ankle.r";
connectAttr "ankle_aligned_init_DCMX.osh" "fit_init_ankle.sh";
connectAttr "B_toe_aligned_init_DCMX.ot" "fit_init_B_toe.t";
connectAttr "B_toe_aligned_init_DCMX.os" "fit_init_B_toe.s";
connectAttr "B_toe_aligned_init_DCMX.osh" "fit_init_B_toe.sh";
connectAttr "fit_init_hip2temp_JNT_DCMX.ot" "temp_hip.t";
connectAttr "fit_init_hip2temp_JNT_DCMX.or" "temp_hip.jo";
connectAttr "fit_init_thgih2temp_JNT_DCMX.ot" "temp_thgih.t";
connectAttr "fit_init_thgih2temp_JNT_DCMX.or" "temp_thgih.jo";
connectAttr "temp_hip.s" "temp_thgih.is";
connectAttr "thigh2knee_JNT_DCMX.ot" "temp_knee.t";
connectAttr "thigh2knee_JNT_DCMX.or" "temp_knee.jo";
connectAttr "fit_init_ankle2temp_JNT_DCMX.ot" "temp_ankle.t";
connectAttr "fit_init_ankle.r" "temp_ankle.jo";
connectAttr "temp_knee.s" "temp_ankle.is";
connectAttr "temp_ankle.s" "temp_B_toe.is";
connectAttr "fit_init_B_toe2temp_JNT_DCMX.ot" "temp_B_toe.t";
connectAttr "fit_init_B_toe.r" "temp_B_toe.jo";
connectAttr "fit_leg.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_leg_GRP.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_hip.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_leg_space.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_thgih.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_knee.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_ankle.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_B_toe.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_init_hip.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_init_thgih.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_init_knee.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_init_ankle.iog" "fit_leg_SET.dsm" -na;
connectAttr "fit_init_B_toe.iog" "fit_leg_SET.dsm" -na;
connectAttr "temp_Leg_GRP.iog" "fit_leg_SET.dsm" -na;
connectAttr "temp_hip.iog" "fit_leg_SET.dsm" -na;
connectAttr "temp_thgih.iog" "fit_leg_SET.dsm" -na;
connectAttr "temp_knee.iog" "fit_leg_SET.dsm" -na;
connectAttr "temp_ankle.iog" "fit_leg_SET.dsm" -na;
connectAttr "temp_B_toe.iog" "fit_leg_SET.dsm" -na;
connectAttr "ankle_aligned_init_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "B_toe_aligned_init_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_ankle_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_leg_space2fit_init_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_B_toe_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_knee_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_thigh_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee_aligned_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "mir_offset_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_init_hip2temp_JNT_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh2knee_JNT_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh_aligned_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_init_thgih2temp_JNT_DCMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle_aligned_FBFM.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee_aligned_FBFM.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh_aligned_FBFM.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle_aligned_init_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "B_toe_aligned_init_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_leg_space2fit_init_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee_aligned_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_init_hip2temp_JNT_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh2knee_JNT_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh_aligned_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_init_thgih2temp_JNT_MTMX.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle2B_toe_vec_revMULT.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle2knee_vec_rvsMULT.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee2ankle_vec_rvsMULT.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee2thigh_vec_rvsMULT.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh2ankle_vec_rvsMULT.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh2knee_vec_rvsMULT.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle2B_toe_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle2knee_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee2ankle_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee2thigh_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh2ankle_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh2knee_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle_x_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle_y_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "ankle_z_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee_x_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee_y_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "knee_z_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh_x_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh_y_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "thigh_z_vec.msg" "fit_leg_SET.dnsm" -na;
connectAttr "leg_mirror_COND.msg" "fit_leg_SET.dnsm" -na;
connectAttr "fit_leg.mirror" "leg_mirror_COND.ft";
connectAttr "fit_leg.leftDirect" "leg_mirror_COND.cf";
connectAttr "fit_leg.rightDirect" "leg_mirror_COND.ct";
connectAttr "fit_leg_space2fit_init_MTMX.o" "fit_leg_space2fit_init_DCMX.imat";
connectAttr "fit_leg_space.wm" "fit_leg_space2fit_init_MTMX.i[0]";
connectAttr "fit_leg.wim" "fit_leg_space2fit_init_MTMX.i[1]";
connectAttr "thigh_aligned_MTMX.o" "thigh_aligned_DCMX.imat";
connectAttr "thigh_aligned_FBFM.o" "thigh_aligned_MTMX.i[0]";
connectAttr "fit_init_hip.wim" "thigh_aligned_MTMX.i[1]";
connectAttr "thigh_x_vec.ox" "thigh_aligned_FBFM.i00";
connectAttr "thigh_x_vec.oy" "thigh_aligned_FBFM.i01";
connectAttr "thigh_x_vec.oz" "thigh_aligned_FBFM.i02";
connectAttr "thigh_y_vec.ox" "thigh_aligned_FBFM.i10";
connectAttr "thigh_y_vec.oy" "thigh_aligned_FBFM.i11";
connectAttr "thigh_y_vec.oz" "thigh_aligned_FBFM.i12";
connectAttr "thigh_z_vec.oy" "thigh_aligned_FBFM.i21";
connectAttr "thigh_z_vec.ox" "thigh_aligned_FBFM.i20";
connectAttr "thigh_z_vec.oz" "thigh_aligned_FBFM.i22";
connectAttr "fit_thigh_DCMX.otx" "thigh_aligned_FBFM.i30";
connectAttr "fit_thigh_DCMX.oty" "thigh_aligned_FBFM.i31";
connectAttr "fit_thigh_DCMX.otz" "thigh_aligned_FBFM.i32";
connectAttr "thigh2knee_vec_rvsMULT.o" "thigh_x_vec.i1";
connectAttr "thigh2knee_vec.o3" "thigh2knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "thigh2knee_vec_rvsMULT.i2";
connectAttr "fit_knee_DCMX.ot" "thigh2knee_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "thigh2knee_vec.i3[1]";
connectAttr "fit_knee.wm" "fit_knee_DCMX.imat";
connectAttr "fit_thgih.wm" "fit_thigh_DCMX.imat";
connectAttr "thigh2ankle_vec_rvsMULT.o" "thigh_y_vec.i1";
connectAttr "thigh2knee_vec_rvsMULT.o" "thigh_y_vec.i2";
connectAttr "thigh2ankle_vec.o3" "thigh2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "thigh2ankle_vec_rvsMULT.i2";
connectAttr "fit_thigh_DCMX.ot" "thigh2ankle_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "thigh2ankle_vec.i3[1]";
connectAttr "fit_ankle.wm" "fit_ankle_DCMX.imat";
connectAttr "thigh2knee_vec_rvsMULT.o" "thigh_z_vec.i1";
connectAttr "thigh_y_vec.o" "thigh_z_vec.i2";
connectAttr "knee_aligned_MTMX.o" "knee_aligned_DCMX.imat";
connectAttr "knee_aligned_FBFM.o" "knee_aligned_MTMX.i[0]";
connectAttr "fit_init_thgih.wim" "knee_aligned_MTMX.i[1]";
connectAttr "knee_x_vec.ox" "knee_aligned_FBFM.i00";
connectAttr "knee_x_vec.oy" "knee_aligned_FBFM.i01";
connectAttr "knee_x_vec.oz" "knee_aligned_FBFM.i02";
connectAttr "knee_y_vec.ox" "knee_aligned_FBFM.i10";
connectAttr "knee_y_vec.oy" "knee_aligned_FBFM.i11";
connectAttr "knee_y_vec.oz" "knee_aligned_FBFM.i12";
connectAttr "knee_z_vec.ox" "knee_aligned_FBFM.i20";
connectAttr "knee_z_vec.oy" "knee_aligned_FBFM.i21";
connectAttr "knee_z_vec.oz" "knee_aligned_FBFM.i22";
connectAttr "fit_knee_DCMX.otx" "knee_aligned_FBFM.i30";
connectAttr "fit_knee_DCMX.oty" "knee_aligned_FBFM.i31";
connectAttr "fit_knee_DCMX.otz" "knee_aligned_FBFM.i32";
connectAttr "knee2ankle_vec_rvsMULT.o" "knee_x_vec.i1";
connectAttr "knee2ankle_vec.o3" "knee2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "knee2ankle_vec_rvsMULT.i2";
connectAttr "fit_ankle_DCMX.ot" "knee2ankle_vec.i3[0]";
connectAttr "fit_knee_DCMX.ot" "knee2ankle_vec.i3[1]";
connectAttr "knee2thigh_vec_rvsMULT.o" "knee_y_vec.i1";
connectAttr "knee2ankle_vec_rvsMULT.o" "knee_y_vec.i2";
connectAttr "knee2thigh_vec.o3" "knee2thigh_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "knee2thigh_vec_rvsMULT.i2";
connectAttr "fit_knee_DCMX.ot" "knee2thigh_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "knee2thigh_vec.i3[1]";
connectAttr "knee2ankle_vec_rvsMULT.o" "knee_z_vec.i1";
connectAttr "knee_y_vec.o" "knee_z_vec.i2";
connectAttr "ankle_aligned_init_MTMX.o" "ankle_aligned_init_DCMX.imat";
connectAttr "ankle_aligned_FBFM.o" "ankle_aligned_init_MTMX.i[0]";
connectAttr "fit_init_knee.wim" "ankle_aligned_init_MTMX.i[1]";
connectAttr "ankle_x_vec.ox" "ankle_aligned_FBFM.i00";
connectAttr "ankle_x_vec.oy" "ankle_aligned_FBFM.i01";
connectAttr "ankle_x_vec.oz" "ankle_aligned_FBFM.i02";
connectAttr "ankle_y_vec.ox" "ankle_aligned_FBFM.i10";
connectAttr "ankle_y_vec.oy" "ankle_aligned_FBFM.i11";
connectAttr "ankle_y_vec.oz" "ankle_aligned_FBFM.i12";
connectAttr "ankle_z_vec.ox" "ankle_aligned_FBFM.i20";
connectAttr "ankle_z_vec.oy" "ankle_aligned_FBFM.i21";
connectAttr "ankle_z_vec.oz" "ankle_aligned_FBFM.i22";
connectAttr "fit_ankle_DCMX.otx" "ankle_aligned_FBFM.i30";
connectAttr "fit_ankle_DCMX.oty" "ankle_aligned_FBFM.i31";
connectAttr "fit_ankle_DCMX.otz" "ankle_aligned_FBFM.i32";
connectAttr "ankle2B_toe_vec_revMULT.o" "ankle_x_vec.i1";
connectAttr "ankle2B_toe_vec.o3" "ankle2B_toe_vec_revMULT.i1";
connectAttr "leg_mirror_COND.oc" "ankle2B_toe_vec_revMULT.i2";
connectAttr "fit_B_toe_DCMX.ot" "ankle2B_toe_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "ankle2B_toe_vec.i3[1]";
connectAttr "fit_B_toe.wm" "fit_B_toe_DCMX.imat";
connectAttr "ankle2knee_vec_rvsMULT.o" "ankle_y_vec.i1";
connectAttr "ankle2B_toe_vec_revMULT.o" "ankle_y_vec.i2";
connectAttr "ankle2knee_vec.o3" "ankle2knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "ankle2knee_vec_rvsMULT.i2";
connectAttr "fit_knee_DCMX.ot" "ankle2knee_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "ankle2knee_vec.i3[1]";
connectAttr "ankle2B_toe_vec_revMULT.o" "ankle_z_vec.i1";
connectAttr "ankle_y_vec.o" "ankle_z_vec.i2";
connectAttr "B_toe_aligned_init_MTMX.o" "B_toe_aligned_init_DCMX.imat";
connectAttr "fit_B_toe.wm" "B_toe_aligned_init_MTMX.i[0]";
connectAttr "fit_init_ankle.wim" "B_toe_aligned_init_MTMX.i[1]";
connectAttr "fit_init_hip2temp_JNT_MTMX.o" "fit_init_hip2temp_JNT_DCMX.imat";
connectAttr "fit_init_hip.wm" "fit_init_hip2temp_JNT_MTMX.i[0]";
connectAttr "temp_Leg_GRP.wim" "fit_init_hip2temp_JNT_MTMX.i[1]";
connectAttr "fit_init_thgih2temp_JNT_MTMX.o" "fit_init_thgih2temp_JNT_DCMX.imat"
		;
connectAttr "fit_init_thgih.wm" "fit_init_thgih2temp_JNT_MTMX.i[0]";
connectAttr "temp_hip.wim" "fit_init_thgih2temp_JNT_MTMX.i[1]";
connectAttr "thigh2knee_JNT_MTMX.o" "thigh2knee_JNT_DCMX.imat";
connectAttr "fit_init_knee.wm" "thigh2knee_JNT_MTMX.i[0]";
connectAttr "temp_thgih.wim" "thigh2knee_JNT_MTMX.i[1]";
connectAttr "fit_init_ankle2temp_JNT_MTMX.o" "fit_init_ankle2temp_JNT_DCMX.imat"
		;
connectAttr "fit_init_ankle.wm" "fit_init_ankle2temp_JNT_MTMX.i[0]";
connectAttr "temp_knee.wim" "fit_init_ankle2temp_JNT_MTMX.i[1]";
connectAttr "fit_init_B_toe2temp_JNT_MTMX.o" "fit_init_B_toe2temp_JNT_DCMX.imat"
		;
connectAttr "fit_init_B_toe.wm" "fit_init_B_toe2temp_JNT_MTMX.i[0]";
connectAttr "temp_ankle.wim" "fit_init_B_toe2temp_JNT_MTMX.i[1]";
connectAttr "fit_leg.offsetMir" "mir_offset_DCMX.imat";
connectAttr "fit_thigh_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_knee_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh2knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee2thigh_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_init_thgih2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_thgih2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "thigh2knee_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh2knee_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_leg_space2fit_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_leg_space2fit_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "thigh_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh2knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee2thigh_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mir_offset_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle2knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle2B_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle2knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle2B_toe_vec_revMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "B_toe_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "B_toe_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_init_ankle2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_ankle2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_B_toe2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_B_toe2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
// End of fit_quadruped_leg.ma
