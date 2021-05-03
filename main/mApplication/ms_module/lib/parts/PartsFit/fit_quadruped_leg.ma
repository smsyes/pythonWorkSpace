//Maya ASCII 2019 scene
//Name: fit_quadruped_leg.ma
//Last modified: Tue, Apr 27, 2021 11:21:58 AM
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
	rename -uid "20AE19B4-4E3C-CFD8-48F9-22A9B7DCCF80";
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
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 5 ".fitControls";
	setAttr -s 5 ".init";
	setAttr -s 4 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 51 ".package";
createNode transform -n "fit_leg_GRP" -p "fit_leg";
	rename -uid "0CA4A1FD-4AB1-D450-8959-81A5752AAB31";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_hip" -p "fit_leg_GRP";
	rename -uid "72D438E0-4E19-0EA1-56DA-B6819C425647";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode nurbsCurve -n "fit_hipShape" -p "fit_hip";
	rename -uid "1C3B20D1-4732-8F1F-5E2E-539B4C09BFDE";
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
	rename -uid "2E62AF73-40DA-CE8F-5748-09A1326A5A75";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_thgih" -p "fit_leg_space";
	rename -uid "357F619F-4903-6B03-0596-8F8CF0277937";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 2.0713150501251221 -2.4073028564453125 0 ;
createNode nurbsCurve -n "fit_thgihShape" -p "fit_thgih";
	rename -uid "E2D9449C-4424-AAF2-5474-A29B806FF155";
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
	rename -uid "458E4817-4227-37AD-C7E1-8992444F3849";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -14.210855484008789 -2.4073047637939453 ;
createNode nurbsCurve -n "fit_kneeShape" -p "fit_knee";
	rename -uid "36B5E80E-4977-E60E-F998-DE9BD40C4862";
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
	rename -uid "B01FE72A-4E3B-8AAA-B4CE-EBB2A607DEE5";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -11.104657173156738 -7.6101837158203125 ;
createNode nurbsCurve -n "fit_ankleShape" -p "fit_ankle";
	rename -uid "620E15F8-4A26-A427-403E-028C57834F16";
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
	rename -uid "686DE707-4746-B149-A080-04BC8DC1BCA0";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -10.645127058029175 0.25199317932128906 ;
createNode nurbsCurve -n "fit_B_toeShape" -p "fit_B_toe";
	rename -uid "47018E4B-4DAF-E11C-B0A6-F09CE16E9012";
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
	rename -uid "D2F278DB-4DCF-F182-27EB-7CB8CBAF2E87";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_thgih" -p "fit_init_hip";
	rename -uid "D5FA7BBE-4A61-9A01-0E97-B982A5E53AE2";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_knee" -p "fit_init_thgih";
	rename -uid "81B4B16D-4625-9FDA-FBDB-22B1E41A3069";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_ankle" -p "fit_init_knee";
	rename -uid "D8452283-438A-56CC-DEF0-44B80F79067E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_B_toe" -p "fit_init_ankle";
	rename -uid "F7976D7B-42DB-A237-9989-ECB45EAFA4E9";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "temp_Leg_GRP" -p "fit_leg";
	rename -uid "CC25BF7A-4A7B-439E-C282-17994DD36691";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode joint -n "temp_hip" -p "temp_Leg_GRP";
	rename -uid "E4E0BB2E-4FE2-C47E-8272-8DB23181C3CC";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_thgih" -p "temp_hip";
	rename -uid "C0110FB8-4CC7-A7D9-2987-EDBC979D1A3F";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_knee" -p "temp_thgih";
	rename -uid "1048E692-443F-EF91-878A-42B680D479E3";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".s" -type "double3" 0.99999998554375258 1.0000000000000002 0.99999998554375258 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_ankle" -p "temp_knee";
	rename -uid "18363F3D-4B04-FDB6-D31E-EBA3E869F679";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_B_toe" -p "temp_ankle";
	rename -uid "A18F0ACB-4659-AE59-6EDC-D78A0C7A1430";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode decomposeMatrix -n "fit_arm_space_DCMX";
	rename -uid "C3FCFD63-4260-C6BF-0968-8B804B60342B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "fit_arm_space_MTMX";
	rename -uid "C7207C08-4001-A116-6461-689819848CC7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "mir_offset_DCMX";
	rename -uid "3CF09D23-4E01-A896-0F4F-71B087AA29BB";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_knee_DCMX";
	rename -uid "2A7D9CEE-4B62-C3CF-82DB-32945C2B25C5";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_thigh_DCMX";
	rename -uid "0BB671A3-4398-62B8-0F19-6C916D079668";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_ankle_DCMX";
	rename -uid "C6EC9A29-4770-58F2-5FB7-3F86D711693D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "knee_aligned_DCMX";
	rename -uid "AA550F9C-4521-FD21-696B-6B86453AA35E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "knee_aligned_MTMX";
	rename -uid "144C585A-4FC7-1615-7151-D8814B3B583C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "knee_aligned_FBFM";
	rename -uid "631EF7F6-48B7-33A8-C941-80AD4C5E9256";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "knee_x_vec";
	rename -uid "F20E25FF-4B11-7CA9-A0CE-61A6470A73F6";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "knee2ankle_vec_rvsMULT";
	rename -uid "B0F5D042-4AA2-2D5E-5053-E59427FA68DF";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "knee2ankle_vec";
	rename -uid "FB9F145A-4B4A-A8DE-5F2A-C7BC2EF398A8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "knee_y_vec";
	rename -uid "1C18F9EA-408F-9244-BC63-2F8E0F7CA280";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "knee2thigh_vec_rvsMULT";
	rename -uid "111C73EA-4DB1-6AC5-E12F-72BDDB06C45C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "knee2thigh_vec";
	rename -uid "6A4A7DD7-4CDC-0C33-72DC-9FBEFCCED612";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "knee_z_vec";
	rename -uid "E37B187E-4077-E511-B755-C6A04B5B8EA9";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "thigh2knee_JNT_DCMX";
	rename -uid "056C14D6-4DC4-EBAF-1227-8CAAD1439915";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "thigh2knee_JNT_MTMX";
	rename -uid "42AE4738-4F15-6662-B2BF-6E9E64A8D0AC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "thigh_aligned_DCMX";
	rename -uid "A573F869-4094-CCE0-3695-CDB925238201";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "thigh_aligned_MTMX";
	rename -uid "E949BD20-4A52-7E18-E9D7-0C97C2B0A3DD";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "thigh_aligned_FBFM";
	rename -uid "8C9FBA80-4DFC-4149-E2EA-D7AFA060D156";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "thigh_x_vec";
	rename -uid "4C3390B3-4F5B-CA2A-7928-B9BB10BD0B37";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "thigh2knee_vec_rvsMULT";
	rename -uid "05E517FE-4FEA-B373-D0AE-B484EF2BE076";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "thigh2knee_vec";
	rename -uid "DD228B68-4A3F-6635-8EA5-D3BA6479E3F7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "thigh_y_vec";
	rename -uid "A5B29CC5-4301-2969-4483-06BCEF7B76CC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "thigh2ankle_vec_rvsMULT";
	rename -uid "ACF6297D-4978-09DA-7825-57884774E940";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "thigh2ankle_vec";
	rename -uid "4F7EAB2B-495A-0157-1A3C-2B9C8FDAF427";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "thigh_z_vec";
	rename -uid "7A05FDCE-4DFC-295B-D64B-80B26848583A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "thigh_JNT_DCMX";
	rename -uid "0297E589-4CED-7586-5497-04B40FD346A8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "thigh_JNT_MTMX";
	rename -uid "C107E003-4B27-F5B9-08A7-3F8D4BF682F8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_scapula_DCMX";
	rename -uid "B17993CE-49A0-62A6-2485-AAB6CFCFDE88";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "temp_scapula_MTMX";
	rename -uid "9D1AFF6C-48EE-98C7-6E2B-95A3D6113732";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankle_aligned_init_DCMX";
	rename -uid "1744E7DB-4A9E-942C-252E-C9928792F317";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "ankle_aligned_init_MTMX";
	rename -uid "6AC762CA-40EC-EB39-89BE-EB891EE6F0AA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "ankle_aligned_FBFM";
	rename -uid "B26F7D9F-4502-7CC6-0148-C491AEC9281B";
createNode vectorProduct -n "ankle_x_vec";
	rename -uid "9131EE28-42C2-C826-6C6C-FE84F94DE909";
	setAttr ".op" 0;
	setAttr ".i2" -type "float3" 12.392784 10.002784 32.154369 ;
	setAttr ".no" yes;
createNode multiplyDivide -n "ankle2B_toe_vec_revMULT";
	rename -uid "18FBE6B1-46C3-6D46-478C-49AD08400E67";
createNode plusMinusAverage -n "ankle2B_toe_vec";
	rename -uid "1BCFC390-4A5B-B530-30F1-C4852753B390";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_B_toe_DCMX";
	rename -uid "8413CA07-421C-E9E9-C5DD-B58D11473B28";
createNode vectorProduct -n "ankle_y_vec";
	rename -uid "024CC604-4B62-0824-AD6A-6CBA54460B31";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "ankle2knee_vec_rvsMULT";
	rename -uid "F2F84118-4B55-344E-293C-97B7D813ABA9";
createNode plusMinusAverage -n "ankle2knee_vec";
	rename -uid "1E516A8B-4403-7C58-7264-5D803A2AF2F6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "ankle_z_vec";
	rename -uid "BF2DF3A4-4C50-DD7F-F26F-EDAC562A0D93";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "B_toe_aligned_init_DCMX";
	rename -uid "ED68F319-4BBA-24E2-A1CD-2C85A3F18E7F";
createNode multMatrix -n "B_toe_aligned_init_MTMX";
	rename -uid "47C7093F-4AD7-5B62-6F5B-868B98673395";
	setAttr -s 2 ".i";
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
	setAttr -s 43 ".u";
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
connectAttr "fit_leg_GRP.package" "fit_leg.package" -na;
connectAttr "fit_hip.package" "fit_leg.package" -na;
connectAttr "fit_leg_space.package" "fit_leg.package" -na;
connectAttr "fit_thgih.package" "fit_leg.package" -na;
connectAttr "fit_knee.package" "fit_leg.package" -na;
connectAttr "fit_ankle.package" "fit_leg.package" -na;
connectAttr "fit_init_hip.package" "fit_leg.package" -na;
connectAttr "fit_init_thgih.package" "fit_leg.package" -na;
connectAttr "fit_init_knee.package" "fit_leg.package" -na;
connectAttr "fit_init_ankle.package" "fit_leg.package" -na;
connectAttr "temp_Leg_GRP.package" "fit_leg.package" -na;
connectAttr "temp_hip.package" "fit_leg.package" -na;
connectAttr "temp_thgih.package" "fit_leg.package" -na;
connectAttr "temp_knee.package" "fit_leg.package" -na;
connectAttr "temp_ankle.package" "fit_leg.package" -na;
connectAttr "fit_arm_space_DCMX.package" "fit_leg.package" -na;
connectAttr "mir_offset_DCMX.package" "fit_leg.package" -na;
connectAttr "fit_knee_DCMX.package" "fit_leg.package" -na;
connectAttr "fit_thigh_DCMX.package" "fit_leg.package" -na;
connectAttr "fit_ankle_DCMX.package" "fit_leg.package" -na;
connectAttr "knee_aligned_DCMX.package" "fit_leg.package" -na;
connectAttr "thigh2knee_JNT_DCMX.package" "fit_leg.package" -na;
connectAttr "thigh_aligned_DCMX.package" "fit_leg.package" -na;
connectAttr "thigh_JNT_DCMX.package" "fit_leg.package" -na;
connectAttr "temp_scapula_DCMX.package" "fit_leg.package" -na;
connectAttr "ankle_aligned_init_DCMX.package" "fit_leg.package" -na;
connectAttr "knee_aligned_FBFM.package" "fit_leg.package" -na;
connectAttr "thigh_aligned_FBFM.package" "fit_leg.package" -na;
connectAttr "fit_arm_space_MTMX.package" "fit_leg.package" -na;
connectAttr "knee_aligned_MTMX.package" "fit_leg.package" -na;
connectAttr "thigh2knee_JNT_MTMX.package" "fit_leg.package" -na;
connectAttr "thigh_aligned_MTMX.package" "fit_leg.package" -na;
connectAttr "thigh_JNT_MTMX.package" "fit_leg.package" -na;
connectAttr "temp_scapula_MTMX.package" "fit_leg.package" -na;
connectAttr "ankle_aligned_init_MTMX.package" "fit_leg.package" -na;
connectAttr "knee2thigh_vec_rvsMULT.package" "fit_leg.package" -na;
connectAttr "knee2ankle_vec_rvsMULT.package" "fit_leg.package" -na;
connectAttr "thigh2knee_vec_rvsMULT.package" "fit_leg.package" -na;
connectAttr "thigh2ankle_vec_rvsMULT.package" "fit_leg.package" -na;
connectAttr "knee2thigh_vec.package" "fit_leg.package" -na;
connectAttr "knee2ankle_vec.package" "fit_leg.package" -na;
connectAttr "thigh2knee_vec.package" "fit_leg.package" -na;
connectAttr "thigh2ankle_vec.package" "fit_leg.package" -na;
connectAttr "knee_x_vec.package" "fit_leg.package" -na;
connectAttr "knee_y_vec.package" "fit_leg.package" -na;
connectAttr "knee_z_vec.package" "fit_leg.package" -na;
connectAttr "thigh_x_vec.package" "fit_leg.package" -na;
connectAttr "thigh_y_vec.package" "fit_leg.package" -na;
connectAttr "thigh_z_vec.package" "fit_leg.package" -na;
connectAttr "fit_B_toe.package" "fit_leg.package" -na;
connectAttr "fit_init_B_toe.package" "fit_leg.package" -na;
connectAttr "fit_hip.t" "fit_leg_space.t";
connectAttr "fit_hip.r" "fit_leg_space.r";
connectAttr "fit_hip.s" "fit_leg_space.s";
connectAttr "fit_arm_space_DCMX.ot" "fit_init_hip.t";
connectAttr "fit_arm_space_DCMX.or" "fit_init_hip.r";
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
connectAttr "temp_scapula_DCMX.ot" "temp_hip.t";
connectAttr "temp_scapula_DCMX.or" "temp_hip.jo";
connectAttr "thigh_JNT_DCMX.ot" "temp_thgih.t";
connectAttr "thigh_JNT_DCMX.or" "temp_thgih.jo";
connectAttr "temp_hip.s" "temp_thgih.is";
connectAttr "thigh2knee_JNT_DCMX.ot" "temp_knee.t";
connectAttr "thigh2knee_JNT_DCMX.or" "temp_knee.jo";
connectAttr "fit_init_ankle.t" "temp_ankle.t";
connectAttr "fit_init_ankle.r" "temp_ankle.jo";
connectAttr "temp_knee.s" "temp_ankle.is";
connectAttr "temp_ankle.s" "temp_B_toe.is";
connectAttr "fit_init_B_toe.t" "temp_B_toe.t";
connectAttr "fit_init_B_toe.r" "temp_B_toe.jo";
connectAttr "fit_arm_space_MTMX.o" "fit_arm_space_DCMX.imat";
connectAttr "fit_leg_space.wm" "fit_arm_space_MTMX.i[0]";
connectAttr "fit_leg.wim" "fit_arm_space_MTMX.i[1]";
connectAttr "fit_leg.offsetMir" "mir_offset_DCMX.imat";
connectAttr "fit_knee.wm" "fit_knee_DCMX.imat";
connectAttr "fit_thgih.wm" "fit_thigh_DCMX.imat";
connectAttr "fit_ankle.wm" "fit_ankle_DCMX.imat";
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
connectAttr "fit_leg.leftDirect" "knee2ankle_vec_rvsMULT.i2";
connectAttr "fit_ankle_DCMX.ot" "knee2ankle_vec.i3[0]";
connectAttr "fit_knee_DCMX.ot" "knee2ankle_vec.i3[1]";
connectAttr "knee2thigh_vec_rvsMULT.o" "knee_y_vec.i1";
connectAttr "knee2ankle_vec_rvsMULT.o" "knee_y_vec.i2";
connectAttr "knee2thigh_vec.o3" "knee2thigh_vec_rvsMULT.i1";
connectAttr "fit_leg.leftDirect" "knee2thigh_vec_rvsMULT.i2";
connectAttr "fit_knee_DCMX.ot" "knee2thigh_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "knee2thigh_vec.i3[1]";
connectAttr "knee2ankle_vec_rvsMULT.o" "knee_z_vec.i1";
connectAttr "knee_y_vec.o" "knee_z_vec.i2";
connectAttr "thigh2knee_JNT_MTMX.o" "thigh2knee_JNT_DCMX.imat";
connectAttr "fit_init_knee.wm" "thigh2knee_JNT_MTMX.i[0]";
connectAttr "fit_init_thgih.wim" "thigh2knee_JNT_MTMX.i[1]";
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
connectAttr "fit_leg.leftDirect" "thigh2knee_vec_rvsMULT.i2";
connectAttr "fit_knee_DCMX.ot" "thigh2knee_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "thigh2knee_vec.i3[1]";
connectAttr "thigh2ankle_vec_rvsMULT.o" "thigh_y_vec.i1";
connectAttr "thigh2knee_vec_rvsMULT.o" "thigh_y_vec.i2";
connectAttr "thigh2ankle_vec.o3" "thigh2ankle_vec_rvsMULT.i1";
connectAttr "fit_leg.leftDirect" "thigh2ankle_vec_rvsMULT.i2";
connectAttr "fit_thigh_DCMX.ot" "thigh2ankle_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "thigh2ankle_vec.i3[1]";
connectAttr "thigh2knee_vec_rvsMULT.o" "thigh_z_vec.i1";
connectAttr "thigh_y_vec.o" "thigh_z_vec.i2";
connectAttr "thigh_JNT_MTMX.o" "thigh_JNT_DCMX.imat";
connectAttr "fit_init_thgih.wm" "thigh_JNT_MTMX.i[0]";
connectAttr "temp_hip.wim" "thigh_JNT_MTMX.i[1]";
connectAttr "temp_scapula_MTMX.o" "temp_scapula_DCMX.imat";
connectAttr "fit_init_hip.wm" "temp_scapula_MTMX.i[0]";
connectAttr "temp_hip.pim" "temp_scapula_MTMX.i[1]";
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
connectAttr "fit_B_toe_DCMX.ot" "ankle2B_toe_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "ankle2B_toe_vec.i3[1]";
connectAttr "fit_B_toe.wm" "fit_B_toe_DCMX.imat";
connectAttr "ankle2knee_vec_rvsMULT.o" "ankle_y_vec.i1";
connectAttr "ankle2B_toe_vec_revMULT.o" "ankle_y_vec.i2";
connectAttr "ankle2knee_vec.o3" "ankle2knee_vec_rvsMULT.i1";
connectAttr "fit_knee_DCMX.ot" "ankle2knee_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "ankle2knee_vec.i3[1]";
connectAttr "ankle2B_toe_vec_revMULT.o" "ankle_z_vec.i1";
connectAttr "ankle_y_vec.o" "ankle_z_vec.i2";
connectAttr "B_toe_aligned_init_MTMX.o" "B_toe_aligned_init_DCMX.imat";
connectAttr "fit_B_toe.wm" "B_toe_aligned_init_MTMX.i[0]";
connectAttr "fit_init_ankle.wim" "B_toe_aligned_init_MTMX.i[1]";
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
connectAttr "thigh_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh2knee_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh2knee_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
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
// End of fit_quadruped_leg.ma
