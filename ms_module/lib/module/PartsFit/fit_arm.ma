//Maya ASCII 2019 scene
//Name: fit_arm.ma
//Last modified: Thu, Apr 29, 2021 04:33:03 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "arm_GRP";
	rename -uid "C8E0E62E-4C3E-337A-4C81-AEBB00234499";
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
	setAttr -s 4 ".fitControls";
	setAttr -s 4 ".init";
	setAttr -s 4 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 49 ".package";
createNode transform -n "fit_arm_GRP" -p "arm_GRP";
	rename -uid "538A8F95-41CE-4E34-A4DC-16A7121CFCBE";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_scapula" -p "fit_arm_GRP";
	rename -uid "82E74BA9-4F52-912C-4615-809835E02782";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 0 -3.6977854932234928e-32 ;
createNode nurbsCurve -n "fit_scapulaShape" -p "fit_scapula";
	rename -uid "6BC8D99C-4270-CFBB-567C-69AED73F2422";
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
createNode transform -n "fit_arm_space" -p "fit_arm_GRP";
	rename -uid "76BAB8C0-42F0-9A03-59FB-5BAEDBC284B5";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_shoulder" -p "fit_arm_space";
	rename -uid "576261CA-42D2-924F-727C-44A0608C18C2";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1 0 0 ;
createNode nurbsCurve -n "fit_shoulderShape" -p "fit_shoulder";
	rename -uid "3FFFCFBC-4C65-A1FA-A08B-AB9D1E06DDBD";
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
createNode transform -n "fit_elbow" -p "fit_shoulder";
	rename -uid "F4653BE6-4CEB-56A0-8416-1197ADE9F827";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4 0 -0.99999994039535522 ;
createNode nurbsCurve -n "fit_elbowShape" -p "fit_elbow";
	rename -uid "99A981E4-4638-5CFF-CE4E-82A8389D4993";
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
createNode transform -n "fit_wrist" -p "fit_elbow";
	rename -uid "C6B2D317-4139-0BB8-F82B-09905B254CA3";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4 0 0.999999940395355 ;
createNode nurbsCurve -n "fit_wristShape" -p "fit_wrist";
	rename -uid "B3988F38-4201-C69C-3228-DFB0FFE3ADA6";
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
createNode transform -n "fit_init_scapula" -p "arm_GRP";
	rename -uid "FDEE392D-46A1-E0D1-6B19-858694D3747D";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_shoulder" -p "fit_init_scapula";
	rename -uid "2DAC849F-4E55-1DA5-17AB-2B9DFE06C05B";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_elbow" -p "fit_init_shoulder";
	rename -uid "798307D1-46D6-EE9F-3A42-4494B652CB95";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_wrist" -p "fit_init_elbow";
	rename -uid "F504B749-4FEE-BF53-9300-F39248171016";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "temp_arm_GRP" -p "arm_GRP";
	rename -uid "E54F5B89-4862-6830-DAD4-A3B536B4D1AA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode joint -n "temp_scapula" -p "temp_arm_GRP";
	rename -uid "1AF02B66-4A33-AE4E-4DA2-6BA80075EFC6";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_shoulder" -p "temp_scapula";
	rename -uid "08CAC3E0-4A8D-94BD-2A45-F681CB7DE87C";
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
createNode joint -n "temp_elbow" -p "temp_shoulder";
	rename -uid "1F8BE6E8-419F-988E-EFDE-AEB26FD80479";
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
createNode joint -n "temp_wrist" -p "temp_elbow";
	rename -uid "E984BC05-48C5-861A-D255-468F0F27DB61";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode decomposeMatrix -n "fit_arm_space_DCMX";
	rename -uid "EAD25076-44AD-0720-7BD5-858E3DEA4C06";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "fit_arm_space_MTMX";
	rename -uid "C63B3CFC-46B0-6CEE-474F-8A976D272DB7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "mir_offset_DCMX";
	rename -uid "5F3FE865-4857-7982-BECC-D6BF4AF0DFCE";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_elbow_DCMX";
	rename -uid "C4EC5B24-4452-F7C9-95DA-BF8D369311C3";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "31CA77DB-4A28-DDF9-C075-A598991D6BEB";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "BAE2BC1F-4CAD-85FB-E371-0DB678E7C32B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "shoulder2elbow_init_DCMX";
	rename -uid "D228238E-4C54-68D8-728E-66BE9C32D1D0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder2elbow_init_MTMX";
	rename -uid "469A08D9-4C79-B3F1-3CFC-48BD6378E653";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "elbow_aligned_FBFM";
	rename -uid "5D2A0855-40CD-3253-DD8E-E7A2FBE1ACC6";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "AE921C78-4587-83BA-9EEB-D7B3182BCD0C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2wrist_vec_rvsMULT";
	rename -uid "324B590B-4A07-DB19-DE2A-F5B3F66137EA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "558B249F-42B1-24B4-8E60-018269F61DD7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "114343AE-4F66-773A-69E8-4FBA0F54ED56";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2shoulder_vec_rvsMULT";
	rename -uid "2FA4D811-451C-F62C-5E2C-6FA651AD81A1";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "BD506D0C-4E6E-35B9-9102-2B9B2DCAFB23";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "2B780692-49B3-FA82-14CB-909D0031715F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder2elbow_JNT_DCMX";
	rename -uid "74C17FE5-4C34-03C4-118E-FB9C4E914439";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder2elbow_JNT_MTMX";
	rename -uid "0C64F132-42D7-7879-E231-9D8B49D3067B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_aligned_DCMX";
	rename -uid "C653D919-40BB-9270-4D2D-FCAA8B024DD4";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder_aligned_MTMX";
	rename -uid "AEA684D1-41E2-4E13-89A1-D18AC89CDBAD";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "shoulder_aligned_FBFM";
	rename -uid "E85FBDCB-4CED-C0D0-20ED-B0B1369AA23E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "5C649E67-46B0-97C8-E216-4FBBA16DFCBB";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2elbow_vec_rvsMULT";
	rename -uid "0644B521-4DC6-9BA7-D25C-5A8E01483037";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "shoulder2elbow_vec";
	rename -uid "1EFC97FB-4A50-AF8E-D327-63B2296719BF";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "00BAE682-4E18-1587-836A-86885F6F2F7B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2wrist_vec_rvsMULT";
	rename -uid "B2FF8147-49C2-2C90-CF08-C59407EC5763";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "shoulder2wrist_vec";
	rename -uid "B7F12223-4A80-1467-9384-8F803B97EA02";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_z_vec";
	rename -uid "C1DD5570-4505-5BAF-76D6-409ED13FA49D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder_JNT_DCMX";
	rename -uid "2B919376-48FD-FBC7-CCD7-C7AAE0D4BBF0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder_JNT_MTMX";
	rename -uid "D9D5D51C-45A5-04C1-45E7-C583315298B3";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_scapula_DCMX";
	rename -uid "E4B8639E-4DA6-D782-BC65-A69417AD3D30";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "temp_scapula_MTMX";
	rename -uid "06656881-492B-59F3-03CE-1088BBA50C86";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_aligned_init_DCMX";
	rename -uid "97BADEFD-4828-5DDA-5ED0-88ADA1AD7489";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "wrist_aligned_init_MTMX";
	rename -uid "5BEF6950-4BFD-4704-41EA-219C7A08E44A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "fit_arm_space_scale_rvs_MULT";
	rename -uid "09FA6B60-4C6B-EB13-762E-B9A15674650A";
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
	setAttr -s 33 ".u";
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
connectAttr "fit_scapula.fitControl" "arm_GRP.fitControls" -na;
connectAttr "fit_shoulder.fitControl" "arm_GRP.fitControls" -na;
connectAttr "fit_elbow.fitControl" "arm_GRP.fitControls" -na;
connectAttr "fit_wrist.fitControl" "arm_GRP.fitControls" -na;
connectAttr "fit_init_scapula.init" "arm_GRP.init" -na;
connectAttr "fit_init_shoulder.init" "arm_GRP.init" -na;
connectAttr "fit_init_elbow.init" "arm_GRP.init" -na;
connectAttr "fit_init_wrist.init" "arm_GRP.init" -na;
connectAttr "temp_scapula.tempJoint" "arm_GRP.tempJoints" -na;
connectAttr "temp_shoulder.tempJoint" "arm_GRP.tempJoints" -na;
connectAttr "temp_elbow.tempJoint" "arm_GRP.tempJoints" -na;
connectAttr "temp_wrist.tempJoint" "arm_GRP.tempJoints" -na;
connectAttr "fit_arm_GRP.package" "arm_GRP.package" -na;
connectAttr "fit_scapula.package" "arm_GRP.package" -na;
connectAttr "fit_arm_space.package" "arm_GRP.package" -na;
connectAttr "fit_shoulder.package" "arm_GRP.package" -na;
connectAttr "fit_elbow.package" "arm_GRP.package" -na;
connectAttr "fit_wrist.package" "arm_GRP.package" -na;
connectAttr "fit_init_scapula.package" "arm_GRP.package" -na;
connectAttr "fit_init_shoulder.package" "arm_GRP.package" -na;
connectAttr "fit_init_elbow.package" "arm_GRP.package" -na;
connectAttr "fit_init_wrist.package" "arm_GRP.package" -na;
connectAttr "temp_arm_GRP.package" "arm_GRP.package" -na;
connectAttr "temp_scapula.package" "arm_GRP.package" -na;
connectAttr "temp_shoulder.package" "arm_GRP.package" -na;
connectAttr "temp_elbow.package" "arm_GRP.package" -na;
connectAttr "temp_wrist.package" "arm_GRP.package" -na;
connectAttr "fit_arm_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "mir_offset_DCMX.package" "arm_GRP.package" -na;
connectAttr "fit_elbow_DCMX.package" "arm_GRP.package" -na;
connectAttr "fit_shoulder_DCMX.package" "arm_GRP.package" -na;
connectAttr "fit_wrist_DCMX.package" "arm_GRP.package" -na;
connectAttr "shoulder2elbow_init_DCMX.package" "arm_GRP.package" -na;
connectAttr "shoulder2elbow_JNT_DCMX.package" "arm_GRP.package" -na;
connectAttr "shoulder_aligned_DCMX.package" "arm_GRP.package" -na;
connectAttr "shoulder_JNT_DCMX.package" "arm_GRP.package" -na;
connectAttr "temp_scapula_DCMX.package" "arm_GRP.package" -na;
connectAttr "wrist_aligned_init_DCMX.package" "arm_GRP.package" -na;
connectAttr "elbow_aligned_FBFM.package" "arm_GRP.package" -na;
connectAttr "shoulder_aligned_FBFM.package" "arm_GRP.package" -na;
connectAttr "fit_arm_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "shoulder2elbow_init_MTMX.package" "arm_GRP.package" -na;
connectAttr "shoulder2elbow_JNT_MTMX.package" "arm_GRP.package" -na;
connectAttr "shoulder_aligned_MTMX.package" "arm_GRP.package" -na;
connectAttr "shoulder_JNT_MTMX.package" "arm_GRP.package" -na;
connectAttr "temp_scapula_MTMX.package" "arm_GRP.package" -na;
connectAttr "wrist_aligned_init_MTMX.package" "arm_GRP.package" -na;
connectAttr "elbow2shoulder_vec_rvsMULT.package" "arm_GRP.package" -na;
connectAttr "elbow2wrist_vec_rvsMULT.package" "arm_GRP.package" -na;
connectAttr "shoulder2elbow_vec_rvsMULT.package" "arm_GRP.package" -na;
connectAttr "shoulder2wrist_vec_rvsMULT.package" "arm_GRP.package" -na;
connectAttr "elbow2shoulder_vec.package" "arm_GRP.package" -na;
connectAttr "elbow2wrist_vec.package" "arm_GRP.package" -na;
connectAttr "shoulder2elbow_vec.package" "arm_GRP.package" -na;
connectAttr "shoulder2wrist_vec.package" "arm_GRP.package" -na;
connectAttr "elbow_x_vec.package" "arm_GRP.package" -na;
connectAttr "elbow_y_vec.package" "arm_GRP.package" -na;
connectAttr "elbow_z_vec.package" "arm_GRP.package" -na;
connectAttr "shoulder_x_vec.package" "arm_GRP.package" -na;
connectAttr "shoulder_y_vec.package" "arm_GRP.package" -na;
connectAttr "shoulder_z_vec.package" "arm_GRP.package" -na;
connectAttr "fit_scapula.t" "fit_arm_space.t";
connectAttr "fit_scapula.r" "fit_arm_space.r";
connectAttr "fit_scapula.s" "fit_arm_space.s";
connectAttr "fit_arm_space_DCMX.ot" "fit_init_scapula.t";
connectAttr "fit_arm_space_DCMX.or" "fit_init_scapula.r";
connectAttr "fit_arm_space_scale_rvs_MULT.ox" "fit_init_scapula.sx";
connectAttr "shoulder_aligned_DCMX.ot" "fit_init_shoulder.t";
connectAttr "shoulder_aligned_DCMX.or" "fit_init_shoulder.r";
connectAttr "shoulder_aligned_DCMX.os" "fit_init_shoulder.s";
connectAttr "shoulder_aligned_DCMX.osh" "fit_init_shoulder.sh";
connectAttr "shoulder2elbow_init_DCMX.ot" "fit_init_elbow.t";
connectAttr "shoulder2elbow_init_DCMX.or" "fit_init_elbow.r";
connectAttr "shoulder2elbow_init_DCMX.os" "fit_init_elbow.s";
connectAttr "shoulder2elbow_init_DCMX.osh" "fit_init_elbow.sh";
connectAttr "wrist_aligned_init_DCMX.ot" "fit_init_wrist.t";
connectAttr "wrist_aligned_init_DCMX.os" "fit_init_wrist.s";
connectAttr "temp_scapula_DCMX.ot" "temp_scapula.t";
connectAttr "temp_scapula_DCMX.or" "temp_scapula.jo";
connectAttr "shoulder_JNT_DCMX.ot" "temp_shoulder.t";
connectAttr "shoulder_JNT_DCMX.or" "temp_shoulder.jo";
connectAttr "temp_scapula.s" "temp_shoulder.is";
connectAttr "shoulder2elbow_JNT_DCMX.ot" "temp_elbow.t";
connectAttr "shoulder2elbow_JNT_DCMX.or" "temp_elbow.jo";
connectAttr "fit_init_wrist.t" "temp_wrist.t";
connectAttr "fit_init_wrist.r" "temp_wrist.jo";
connectAttr "temp_elbow.s" "temp_wrist.is";
connectAttr "fit_arm_space_MTMX.o" "fit_arm_space_DCMX.imat";
connectAttr "fit_arm_space.wm" "fit_arm_space_MTMX.i[0]";
connectAttr "arm_GRP.wim" "fit_arm_space_MTMX.i[1]";
connectAttr "arm_GRP.offsetMir" "mir_offset_DCMX.imat";
connectAttr "fit_elbow.wm" "fit_elbow_DCMX.imat";
connectAttr "fit_shoulder.wm" "fit_shoulder_DCMX.imat";
connectAttr "fit_wrist.wm" "fit_wrist_DCMX.imat";
connectAttr "shoulder2elbow_init_MTMX.o" "shoulder2elbow_init_DCMX.imat";
connectAttr "elbow_aligned_FBFM.o" "shoulder2elbow_init_MTMX.i[0]";
connectAttr "fit_init_shoulder.wim" "shoulder2elbow_init_MTMX.i[1]";
connectAttr "elbow_x_vec.ox" "elbow_aligned_FBFM.i00";
connectAttr "elbow_x_vec.oy" "elbow_aligned_FBFM.i01";
connectAttr "elbow_x_vec.oz" "elbow_aligned_FBFM.i02";
connectAttr "elbow_y_vec.ox" "elbow_aligned_FBFM.i10";
connectAttr "elbow_y_vec.oy" "elbow_aligned_FBFM.i11";
connectAttr "elbow_y_vec.oz" "elbow_aligned_FBFM.i12";
connectAttr "elbow_z_vec.ox" "elbow_aligned_FBFM.i20";
connectAttr "elbow_z_vec.oy" "elbow_aligned_FBFM.i21";
connectAttr "elbow_z_vec.oz" "elbow_aligned_FBFM.i22";
connectAttr "fit_elbow_DCMX.otx" "elbow_aligned_FBFM.i30";
connectAttr "fit_elbow_DCMX.oty" "elbow_aligned_FBFM.i31";
connectAttr "fit_elbow_DCMX.otz" "elbow_aligned_FBFM.i32";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_x_vec.i1";
connectAttr "elbow2wrist_vec.o3" "elbow2wrist_vec_rvsMULT.i1";
connectAttr "arm_GRP.leftDirect" "elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "elbow2wrist_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2wrist_vec.i3[1]";
connectAttr "elbow2shoulder_vec_rvsMULT.o" "elbow_y_vec.i1";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_y_vec.i2";
connectAttr "elbow2shoulder_vec.o3" "elbow2shoulder_vec_rvsMULT.i1";
connectAttr "arm_GRP.leftDirect" "elbow2shoulder_vec_rvsMULT.i2";
connectAttr "fit_shoulder_DCMX.ot" "elbow2shoulder_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2shoulder_vec.i3[1]";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_z_vec.i1";
connectAttr "elbow_y_vec.o" "elbow_z_vec.i2";
connectAttr "shoulder2elbow_JNT_MTMX.o" "shoulder2elbow_JNT_DCMX.imat";
connectAttr "fit_init_elbow.wm" "shoulder2elbow_JNT_MTMX.i[0]";
connectAttr "fit_init_shoulder.wim" "shoulder2elbow_JNT_MTMX.i[1]";
connectAttr "shoulder_aligned_MTMX.o" "shoulder_aligned_DCMX.imat";
connectAttr "shoulder_aligned_FBFM.o" "shoulder_aligned_MTMX.i[0]";
connectAttr "fit_init_scapula.wim" "shoulder_aligned_MTMX.i[1]";
connectAttr "shoulder_x_vec.ox" "shoulder_aligned_FBFM.i00";
connectAttr "shoulder_x_vec.oy" "shoulder_aligned_FBFM.i01";
connectAttr "shoulder_x_vec.oz" "shoulder_aligned_FBFM.i02";
connectAttr "shoulder_y_vec.ox" "shoulder_aligned_FBFM.i10";
connectAttr "shoulder_y_vec.oy" "shoulder_aligned_FBFM.i11";
connectAttr "shoulder_y_vec.oz" "shoulder_aligned_FBFM.i12";
connectAttr "shoulder_z_vec.oy" "shoulder_aligned_FBFM.i21";
connectAttr "shoulder_z_vec.ox" "shoulder_aligned_FBFM.i20";
connectAttr "shoulder_z_vec.oz" "shoulder_aligned_FBFM.i22";
connectAttr "fit_shoulder_DCMX.otx" "shoulder_aligned_FBFM.i30";
connectAttr "fit_shoulder_DCMX.oty" "shoulder_aligned_FBFM.i31";
connectAttr "fit_shoulder_DCMX.otz" "shoulder_aligned_FBFM.i32";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_x_vec.i1";
connectAttr "shoulder2elbow_vec.o3" "shoulder2elbow_vec_rvsMULT.i1";
connectAttr "arm_GRP.leftDirect" "shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_elbow_DCMX.ot" "shoulder2elbow_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2elbow_vec.i3[1]";
connectAttr "shoulder2wrist_vec_rvsMULT.o" "shoulder_y_vec.i1";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_y_vec.i2";
connectAttr "shoulder2wrist_vec.o3" "shoulder2wrist_vec_rvsMULT.i1";
connectAttr "arm_GRP.leftDirect" "shoulder2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "shoulder2wrist_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2wrist_vec.i3[1]";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_z_vec.i1";
connectAttr "shoulder_y_vec.o" "shoulder_z_vec.i2";
connectAttr "shoulder_JNT_MTMX.o" "shoulder_JNT_DCMX.imat";
connectAttr "fit_init_shoulder.wm" "shoulder_JNT_MTMX.i[0]";
connectAttr "temp_scapula.wim" "shoulder_JNT_MTMX.i[1]";
connectAttr "temp_scapula_MTMX.o" "temp_scapula_DCMX.imat";
connectAttr "fit_arm_space.wm" "temp_scapula_MTMX.i[0]";
connectAttr "temp_scapula.pim" "temp_scapula_MTMX.i[1]";
connectAttr "wrist_aligned_init_MTMX.o" "wrist_aligned_init_DCMX.imat";
connectAttr "fit_wrist.wm" "wrist_aligned_init_MTMX.i[0]";
connectAttr "fit_init_elbow.wim" "wrist_aligned_init_MTMX.i[1]";
connectAttr "fit_arm_space.s" "fit_arm_space_scale_rvs_MULT.i1";
connectAttr "arm_GRP.leftDirect" "fit_arm_space_scale_rvs_MULT.i2";
connectAttr "fit_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mir_offset_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_scale_rvs_MULT.msg" ":defaultRenderUtilityList1.u" -na
		;
// End of fit_arm.ma
