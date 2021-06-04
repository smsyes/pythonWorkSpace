//Maya ASCII 2019 scene
//Name: fit_quadruped_arm.ma
//Last modified: Tue, Jun 01, 2021 11:41:08 AM
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
createNode transform -n "fit_quad_arm";
	rename -uid "EFD34CB9-4D99-344E-7349-DDA41790A0DE";
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
	setAttr -cb on ".mirror";
createNode transform -n "fit_quad_arm_GRP" -p "fit_quad_arm";
	rename -uid "77F03CFE-4E1C-37A8-8978-AEBED94F842C";
createNode transform -n "fit_quad_scapula" -p "fit_quad_arm_GRP";
	rename -uid "571B0438-437A-C9C6-900D-D48BF595C323";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_scapulaShape" -p "fit_quad_scapula";
	rename -uid "6A1ACD95-4C99-A605-B5DC-61BCA6564D9D";
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
createNode transform -n "fit_quad_arm_space" -p "fit_quad_arm_GRP";
	rename -uid "D558200D-42CA-A421-9831-CCA1936B16D9";
createNode transform -n "fit_quad_shoulder" -p "fit_quad_arm_space";
	rename -uid "2E9EFB4C-4ABE-BD1B-DCAB-0EACECC31981";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1.8925676345825195 -8.7011337280273438 4.9459066390991211 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_shoulderShape" -p "fit_quad_shoulder";
	rename -uid "58DEFA27-46DE-37CE-F9B9-268FF000E95C";
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
createNode transform -n "fit_quad_elbow" -p "fit_quad_shoulder";
	rename -uid "80C53CAC-4A63-0206-A375-DBA3F9FB2DAC";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -0.0094790458679199219 -9.0674934387207031 -4.7627124786376953 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_elbowShape" -p "fit_quad_elbow";
	rename -uid "D71EAE57-44A5-8990-8A55-6EB228540CFC";
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
createNode transform -n "fit_quad_wrist" -p "fit_quad_elbow";
	rename -uid "377694AE-4EBC-0A50-6427-0D82006E24E8";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.064644813537597656 -15.753054141998291 1.7440681457519531 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_wristShape" -p "fit_quad_wrist";
	rename -uid "4F4569AE-4240-5030-A1FD-A3AAB8AE0465";
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
createNode transform -n "fit_quad_F_toe" -p "fit_quad_wrist";
	rename -uid "EE16B882-42FC-12CC-6B44-A7ABE3314293";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.018614768981933594 -4.5795176029205322 -0.004486083984375 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_quad_F_toeShape" -p "fit_quad_F_toe";
	rename -uid "451DF33E-4F59-344F-CFA3-3F832B2C3531";
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
createNode transform -n "fit_quad_init_scapula" -p "fit_quad_arm";
	rename -uid "713367F9-4C63-B60A-A57F-129B2C05A3D0";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_shoulder" -p "fit_quad_init_scapula";
	rename -uid "1B0DBD91-4656-7279-0005-4ABD64510C92";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_elbow" -p "fit_quad_init_shoulder";
	rename -uid "838578EC-4AAE-17C4-CF9C-A78B21C16F0E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_wrist" -p "fit_quad_init_elbow";
	rename -uid "1634BB17-42D7-1183-7FA3-E3B880E36FE4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_quad_init_F_toe" -p "fit_quad_init_wrist";
	rename -uid "BBBD1976-43D6-451E-3A4D-0396EFAD868C";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_quad_arm_GRP" -p "fit_quad_arm";
	rename -uid "7F7E5F52-40D5-3DD8-A535-F2B3FBE82CC9";
createNode joint -n "temp_quad_scapula" -p "temp_quad_arm_GRP";
	rename -uid "21AA6548-4461-6597-9B8F-E3A88D8BEE84";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_quad_shoulder" -p "temp_quad_scapula";
	rename -uid "2EB0DD29-4ADF-490F-0480-5F84917DBFF2";
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
createNode joint -n "temp_quad_elbow" -p "temp_quad_shoulder";
	rename -uid "D131FA39-427C-720C-40AD-57839F4F1564";
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
createNode joint -n "temp_quad_wrist" -p "temp_quad_elbow";
	rename -uid "12FC1772-4CD2-819A-2547-BEB34D1CBC6E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_quad_F_toe" -p "temp_quad_wrist";
	rename -uid "B2CFB710-40F3-B705-2494-5796DDCAAD56";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode transform -s -n "persp";
	rename -uid "7C55C695-460D-8AA1-99DC-5B93A93AE315";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 75.575254572370184 31.032195626398028 89.848069986700224 ;
	setAttr ".r" -type "double3" -5.1383527296068632 43.800000000001539 -2.7541648854110079e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "291B7419-46A7-B2EE-1CEA-10B9AAAD47F9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 107.70634662616196;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "371DDB27-4253-BCB0-2C25-1A9B1B03B196";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "212F08E5-4A0E-1E18-05FA-4CBF328CE542";
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
	rename -uid "77EE348C-4B21-FDEA-4B3A-4982A676F3D2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "85D75A15-4CAE-BD72-BE52-B8870F0752F8";
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
	rename -uid "89432742-4F6E-7E99-1489-19923E40D18C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D4278081-48DB-173E-0B68-9E982EF439A9";
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
createNode objectSet -n "fit_quad_arm_SET";
	rename -uid "83B9078F-467C-6F3A-A56C-C1BD0576841E";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr -s 50 ".dnsm";
createNode condition -n "quad_arm_mirror_COND";
	rename -uid "CB063227-45B4-9B6F-8764-F4B9A283C2D0";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_quad_arm_space2fir_init_DCMX";
	rename -uid "6F358843-4539-6B89-FFF2-949DFC5FD982";
createNode multMatrix -n "fit_quad_arm_space2fir_init_MTMX";
	rename -uid "6D58D1F5-4147-70DA-6802-62A176BE08F5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_shoulder_aligned_DCMX";
	rename -uid "A902E4A8-4F12-16B4-09EB-3A94AF838383";
createNode multMatrix -n "fit_quad_shoulder_aligned_MTMX";
	rename -uid "8ED0A34C-4B00-5FCB-21EE-209C2BDD1A0A";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_quad_shoulder_aligned_FBFM";
	rename -uid "45FB4C9D-4710-E25D-8036-FBAFA6C824B2";
createNode vectorProduct -n "fit_quad_shoulder_x_vec";
	rename -uid "43E000FB-47A5-6D77-DF3E-09B5B0187050";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_shoulder2elbow_vec_rvsMULT";
	rename -uid "46288053-414D-AD6B-E8B0-D5BE5E2FBA0D";
createNode plusMinusAverage -n "fit_quad_shoulder2elbow_vec";
	rename -uid "7EB9845F-4C50-F7C9-F89C-9BAC79499320";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_quad_elbow_DCMX";
	rename -uid "D5E74F50-4068-ABEF-5273-99861917BBF5";
createNode decomposeMatrix -n "fit_quad_shoulder_DCMX";
	rename -uid "1AA191A4-4F0B-FFC7-3B28-37938D3DC239";
createNode vectorProduct -n "fit_quad_shoulder_y_vec";
	rename -uid "F9F99A7B-4E0A-044A-D3C4-5A8E0DB706C5";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_shoulder2wrist_vec_rvsMULT";
	rename -uid "82606F79-45C9-B077-EB71-0CBADDA509A4";
createNode plusMinusAverage -n "fit_quad_shoulder2wrist_vec";
	rename -uid "D2FEEFA4-4515-1DAB-797B-3CB6A13EAAD2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_quad_wrist_DCMX";
	rename -uid "FD434D16-4A9B-91F6-5701-A2819EDBD04A";
createNode vectorProduct -n "fit_quad_shoulder_z_vec";
	rename -uid "FB1465C6-415F-9E6F-E40B-59AA63E9DF3D";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_quad_elbow_aligned_DCMX";
	rename -uid "7921FAB5-4DB9-428A-4FA8-AE96887BF491";
createNode multMatrix -n "fit_quad_elbow_aligned_MTMX";
	rename -uid "9B4B83A2-4150-9413-7D42-9B9D8318D36B";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_quad_elbow_aligned_FBFM";
	rename -uid "634981F6-41DF-0518-063C-E3A622BC71A5";
createNode vectorProduct -n "fit_quad_elbow_x_vec";
	rename -uid "CFB50713-4DBB-0D7D-2474-F9991C24B0A1";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_elbow2wrist_vec_rvsMULT";
	rename -uid "F6A4C831-4C4F-FE36-81A9-4A8290052D19";
createNode plusMinusAverage -n "fit_quad_elbow2wrist_vec";
	rename -uid "A5793F1B-4013-BADE-79E7-D589718A0203";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_quad_elbow_y_vec";
	rename -uid "1A19F82C-410F-06E8-CC2D-6D998687125B";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_elbow2shoulder_vec_rvsMULT";
	rename -uid "6AA1F0D6-4C59-6591-91B9-F4A7F67B2BE0";
createNode plusMinusAverage -n "fit_quad_elbow2shoulder_vec";
	rename -uid "C495B376-4A10-6F89-75D3-B9AF0AE8A223";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_quad_elbow_z_vec";
	rename -uid "BD17777F-433F-E244-BD1B-9D83BED56E2E";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_quad_wrist_aligned_init_DCMX";
	rename -uid "F4E63683-4C0A-DA59-ACBF-25996956A1C6";
createNode multMatrix -n "fit_quad_wrist_aligned_init_MTMX";
	rename -uid "E8C876A2-4989-C4BB-5486-948A3DC35606";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_quad_wrist_aligned_FBFM";
	rename -uid "D4664535-4917-3FAD-F878-7FB7DE02157D";
createNode vectorProduct -n "fit_quad_wrist_x_vec";
	rename -uid "769F347C-446C-7C50-556A-93B88812F933";
	setAttr ".op" 0;
	setAttr ".i2" -type "float3" 12.392784 10.002784 32.154369 ;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_wrist2F_toe_vec_rvsMULT";
	rename -uid "E4ED13E8-45DC-7E24-DFF2-B4B4E76C3AB8";
createNode plusMinusAverage -n "fit_quad_wrist2F_toe_vec";
	rename -uid "8ECD8815-4BA5-A422-B5CE-3C8257446DB3";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_quad_F_toe_DCMX";
	rename -uid "E0A066B0-4895-56A7-EF7C-2DAFE09CFB58";
createNode vectorProduct -n "fit_quad_wrist_y_vec";
	rename -uid "E3CA5492-4888-1A93-04EB-0DAED5B0B404";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_quad_wrist2elbow_vec_rvsMULT";
	rename -uid "F583D160-4E94-9FC8-F67E-AFA6ADDEFC9E";
createNode plusMinusAverage -n "fit_quad_wrist2elbow_vec";
	rename -uid "206C6FE2-42F0-01FB-5809-A2AE455F4B8F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_quad_wrist_z_vec";
	rename -uid "254A7073-4F8A-E7F0-13D6-7198291D8D4E";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_quad_F_toe2fit_quad_init_DCMX";
	rename -uid "ED436DB6-4266-AE42-AAFB-5C93D2E6FCC7";
createNode multMatrix -n "fit_quad_F_toe2fit_quad_init_MTMX";
	rename -uid "5D40BEA1-4790-4AE2-F93D-F2A5C5A7EC1C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_arm_space2temp_JNT_DCMX";
	rename -uid "38D46014-46D2-818E-9E33-889038FEE64C";
createNode multMatrix -n "fit_quad_arm_space2temp_JNT_MTMX";
	rename -uid "D5B5E490-4F0E-DEC6-61C9-AE89AE257734";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_init_shoulder2temp_JNT_DCMX";
	rename -uid "F080135E-4872-E815-D020-F8BE190C0DF0";
createNode multMatrix -n "fit_quad_init_shoulder2temp_JNT_MTMX";
	rename -uid "60BC98CD-4C4E-05F9-C1BD-55B42DD5B83B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_init_elbow2temp_elbow_DCMX";
	rename -uid "672188B4-4776-67D6-AA7D-6B9950AE039A";
createNode multMatrix -n "fit_quad_init_elbow2temp_elbow_MTMX";
	rename -uid "34885C88-4B8E-EC6F-49DA-978B8C4883A1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_init_wrist2fit_quad_init_DCMX";
	rename -uid "703B1BD7-4C6F-EBFD-7A58-75B21B8D4D3A";
createNode multMatrix -n "fit_quad_init_wrist2fit_quad_init_MTMX";
	rename -uid "E7AC507A-4414-14D8-4388-BDA02B6C1B3A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_init_F_toe2temp_JNT_DCMX";
	rename -uid "B8108A2B-4830-27A8-FF00-DD919F07C7FA";
createNode multMatrix -n "fit_quad_init_F_toe2temp_JNT_MTMX";
	rename -uid "452B2059-4E9C-01DE-92DF-AFA0A348CCD8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_quad_mir_offset_DCMX";
	rename -uid "EB5B3F7E-4515-CF6D-1FA5-31BC7214E355";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "05D0B6D5-46FF-738B-C1EF-3EAB57FF2518";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "0D9245DB-4D28-D177-4D01-A0B88C38CC9D";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/parts/PartsFit/fit_quadruped_arm.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7BF1C50A-41CE-30C7-6894-9FBC0EE90782";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "93E47A52-43B1-B5EC-BD4C-FC830B16DF60";
createNode displayLayerManager -n "layerManager";
	rename -uid "2061D883-411E-8862-0E33-B7AD2AD71F0F";
createNode displayLayer -n "defaultLayer";
	rename -uid "B2880A86-4681-F9D3-57B2-8FA877A70C48";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "501A6F43-4FBC-C030-1650-7EAE913F6ADA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FAEBF37B-43A0-E0A9-2CFB-0D900B5B930A";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C6AF118D-46EF-7722-AB41-1C957C9CD805";
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
	rename -uid "14961111-421E-962C-0570-FE9D644DCEBF";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "686CF3CD-4D3C-7933-0B39-0982D2A4A390";
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
connectAttr "fit_quad_scapula.fitControl" "fit_quad_arm.fitControls" -na;
connectAttr "fit_quad_shoulder.fitControl" "fit_quad_arm.fitControls" -na;
connectAttr "fit_quad_elbow.fitControl" "fit_quad_arm.fitControls" -na;
connectAttr "fit_quad_wrist.fitControl" "fit_quad_arm.fitControls" -na;
connectAttr "fit_quad_F_toe.fitControl" "fit_quad_arm.fitControls" -na;
connectAttr "fit_quad_init_scapula.init" "fit_quad_arm.init" -na;
connectAttr "fit_quad_init_shoulder.init" "fit_quad_arm.init" -na;
connectAttr "fit_quad_init_elbow.init" "fit_quad_arm.init" -na;
connectAttr "fit_quad_init_wrist.init" "fit_quad_arm.init" -na;
connectAttr "fit_quad_init_F_toe.init" "fit_quad_arm.init" -na;
connectAttr "temp_quad_scapula.tempJoint" "fit_quad_arm.tempJoints" -na;
connectAttr "temp_quad_shoulder.tempJoint" "fit_quad_arm.tempJoints" -na;
connectAttr "temp_quad_elbow.tempJoint" "fit_quad_arm.tempJoints" -na;
connectAttr "temp_quad_wrist.tempJoint" "fit_quad_arm.tempJoints" -na;
connectAttr "temp_quad_F_toe.tempJoints" "fit_quad_arm.tempJoints" -na;
connectAttr "quad_arm_mirror_COND.ocr" "fit_quad_arm_GRP.sx";
connectAttr "fit_quad_scapula.t" "fit_quad_arm_space.t";
connectAttr "fit_quad_scapula.r" "fit_quad_arm_space.r";
connectAttr "fit_quad_scapula.s" "fit_quad_arm_space.s";
connectAttr "fit_quad_arm_space2fir_init_DCMX.ot" "fit_quad_init_scapula.t";
connectAttr "fit_quad_arm_space2fir_init_DCMX.or" "fit_quad_init_scapula.r";
connectAttr "fit_quad_arm_space.s" "fit_quad_init_scapula.s";
connectAttr "fit_quad_shoulder_aligned_DCMX.ot" "fit_quad_init_shoulder.t";
connectAttr "fit_quad_shoulder_aligned_DCMX.or" "fit_quad_init_shoulder.r";
connectAttr "fit_quad_shoulder_aligned_DCMX.os" "fit_quad_init_shoulder.s";
connectAttr "fit_quad_shoulder_aligned_DCMX.osh" "fit_quad_init_shoulder.sh";
connectAttr "fit_quad_elbow_aligned_DCMX.ot" "fit_quad_init_elbow.t";
connectAttr "fit_quad_elbow_aligned_DCMX.or" "fit_quad_init_elbow.r";
connectAttr "fit_quad_elbow_aligned_DCMX.os" "fit_quad_init_elbow.s";
connectAttr "fit_quad_elbow_aligned_DCMX.osh" "fit_quad_init_elbow.sh";
connectAttr "fit_quad_wrist_aligned_init_DCMX.ot" "fit_quad_init_wrist.t";
connectAttr "fit_quad_wrist_aligned_init_DCMX.os" "fit_quad_init_wrist.s";
connectAttr "fit_quad_wrist_aligned_init_DCMX.or" "fit_quad_init_wrist.r";
connectAttr "fit_quad_wrist_aligned_init_DCMX.osh" "fit_quad_init_wrist.sh";
connectAttr "fit_quad_F_toe2fit_quad_init_DCMX.ot" "fit_quad_init_F_toe.t";
connectAttr "fit_quad_F_toe2fit_quad_init_DCMX.os" "fit_quad_init_F_toe.s";
connectAttr "fit_quad_F_toe2fit_quad_init_DCMX.osh" "fit_quad_init_F_toe.sh";
connectAttr "quad_arm_mirror_COND.ocb" "temp_quad_arm_GRP.sz";
connectAttr "fit_quad_arm_space2temp_JNT_DCMX.ot" "temp_quad_scapula.t";
connectAttr "fit_quad_arm_space2temp_JNT_DCMX.or" "temp_quad_scapula.jo";
connectAttr "fit_quad_init_shoulder2temp_JNT_DCMX.ot" "temp_quad_shoulder.t";
connectAttr "fit_quad_init_shoulder2temp_JNT_DCMX.or" "temp_quad_shoulder.jo";
connectAttr "temp_quad_scapula.s" "temp_quad_shoulder.is";
connectAttr "fit_quad_init_shoulder.s" "temp_quad_shoulder.s";
connectAttr "fit_quad_init_elbow2temp_elbow_DCMX.ot" "temp_quad_elbow.t";
connectAttr "fit_quad_init_elbow2temp_elbow_DCMX.or" "temp_quad_elbow.jo";
connectAttr "fit_quad_init_elbow.s" "temp_quad_elbow.s";
connectAttr "fit_quad_init_wrist2fit_quad_init_DCMX.ot" "temp_quad_wrist.t";
connectAttr "fit_quad_init_wrist2fit_quad_init_DCMX.or" "temp_quad_wrist.jo";
connectAttr "temp_quad_elbow.s" "temp_quad_wrist.is";
connectAttr "fit_quad_init_wrist.s" "temp_quad_wrist.s";
connectAttr "temp_quad_wrist.s" "temp_quad_F_toe.is";
connectAttr "fit_quad_init_F_toe2temp_JNT_DCMX.ot" "temp_quad_F_toe.t";
connectAttr "fit_quad_init_F_toe2temp_JNT_DCMX.or" "temp_quad_F_toe.jo";
connectAttr "fit_quad_arm.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_arm_GRP.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_scapula.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_arm_space.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_shoulder.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_elbow.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_wrist.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_F_toe.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_init_scapula.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_init_shoulder.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_init_elbow.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_init_wrist.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "fit_quad_init_F_toe.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "temp_quad_arm_GRP.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "temp_quad_scapula.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "temp_quad_shoulder.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "temp_quad_elbow.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "temp_quad_wrist.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "temp_quad_F_toe.iog" "fit_quad_arm_SET.dsm" -na;
connectAttr "quad_arm_mirror_COND.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow_aligned_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_arm_space2fir_init_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_arm_space2temp_JNT_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_F_toe2fit_quad_init_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_F_toe_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_init_elbow2temp_elbow_DCMX.msg" "fit_quad_arm_SET.dnsm" -na
		;
connectAttr "fit_quad_init_F_toe2temp_JNT_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_init_shoulder2temp_JNT_DCMX.msg" "fit_quad_arm_SET.dnsm" -na
		;
connectAttr "fit_quad_init_wrist2fit_quad_init_DCMX.msg" "fit_quad_arm_SET.dnsm"
		 -na;
connectAttr "fit_quad_shoulder_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_mir_offset_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder_aligned_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist_aligned_init_DCMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow_aligned_FBFM.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder_aligned_FBFM.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist_aligned_FBFM.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow_aligned_MTMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_arm_space2fir_init_MTMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_arm_space2temp_JNT_MTMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_F_toe2fit_quad_init_MTMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_init_elbow2temp_elbow_MTMX.msg" "fit_quad_arm_SET.dnsm" -na
		;
connectAttr "fit_quad_init_F_toe2temp_JNT_MTMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_init_shoulder2temp_JNT_MTMX.msg" "fit_quad_arm_SET.dnsm" -na
		;
connectAttr "fit_quad_init_wrist2fit_quad_init_MTMX.msg" "fit_quad_arm_SET.dnsm"
		 -na;
connectAttr "fit_quad_shoulder_aligned_MTMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist_aligned_init_MTMX.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow2shoulder_vec_rvsMULT.msg" "fit_quad_arm_SET.dnsm" -na
		;
connectAttr "fit_quad_elbow2wrist_vec_rvsMULT.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder2elbow_vec_rvsMULT.msg" "fit_quad_arm_SET.dnsm" -na
		;
connectAttr "fit_quad_shoulder2wrist_vec_rvsMULT.msg" "fit_quad_arm_SET.dnsm" -na
		;
connectAttr "fit_quad_wrist2elbow_vec_rvsMULT.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist2F_toe_vec_rvsMULT.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow2shoulder_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow2wrist_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder2elbow_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder2wrist_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist2elbow_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist2F_toe_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow_x_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow_y_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_elbow_z_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder_x_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder_y_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_shoulder_z_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist_x_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist_y_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_wrist_z_vec.msg" "fit_quad_arm_SET.dnsm" -na;
connectAttr "fit_quad_arm.mirror" "quad_arm_mirror_COND.ft";
connectAttr "fit_quad_arm.rightDirect" "quad_arm_mirror_COND.ct";
connectAttr "fit_quad_arm.leftDirect" "quad_arm_mirror_COND.cf";
connectAttr "fit_quad_arm_space2fir_init_MTMX.o" "fit_quad_arm_space2fir_init_DCMX.imat"
		;
connectAttr "fit_quad_arm_space.wm" "fit_quad_arm_space2fir_init_MTMX.i[0]";
connectAttr "fit_quad_arm.wim" "fit_quad_arm_space2fir_init_MTMX.i[1]";
connectAttr "fit_quad_shoulder_aligned_MTMX.o" "fit_quad_shoulder_aligned_DCMX.imat"
		;
connectAttr "fit_quad_shoulder_aligned_FBFM.o" "fit_quad_shoulder_aligned_MTMX.i[0]"
		;
connectAttr "fit_quad_init_scapula.wim" "fit_quad_shoulder_aligned_MTMX.i[1]";
connectAttr "fit_quad_shoulder_x_vec.ox" "fit_quad_shoulder_aligned_FBFM.i00";
connectAttr "fit_quad_shoulder_x_vec.oy" "fit_quad_shoulder_aligned_FBFM.i01";
connectAttr "fit_quad_shoulder_x_vec.oz" "fit_quad_shoulder_aligned_FBFM.i02";
connectAttr "fit_quad_shoulder_y_vec.ox" "fit_quad_shoulder_aligned_FBFM.i10";
connectAttr "fit_quad_shoulder_y_vec.oy" "fit_quad_shoulder_aligned_FBFM.i11";
connectAttr "fit_quad_shoulder_y_vec.oz" "fit_quad_shoulder_aligned_FBFM.i12";
connectAttr "fit_quad_shoulder_z_vec.oy" "fit_quad_shoulder_aligned_FBFM.i21";
connectAttr "fit_quad_shoulder_z_vec.ox" "fit_quad_shoulder_aligned_FBFM.i20";
connectAttr "fit_quad_shoulder_z_vec.oz" "fit_quad_shoulder_aligned_FBFM.i22";
connectAttr "fit_quad_shoulder_DCMX.otx" "fit_quad_shoulder_aligned_FBFM.i30";
connectAttr "fit_quad_shoulder_DCMX.oty" "fit_quad_shoulder_aligned_FBFM.i31";
connectAttr "fit_quad_shoulder_DCMX.otz" "fit_quad_shoulder_aligned_FBFM.i32";
connectAttr "fit_quad_shoulder2elbow_vec_rvsMULT.o" "fit_quad_shoulder_x_vec.i1"
		;
connectAttr "fit_quad_shoulder2elbow_vec.o3" "fit_quad_shoulder2elbow_vec_rvsMULT.i1"
		;
connectAttr "quad_arm_mirror_COND.oc" "fit_quad_shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_quad_elbow_DCMX.ot" "fit_quad_shoulder2elbow_vec.i3[0]";
connectAttr "fit_quad_shoulder_DCMX.ot" "fit_quad_shoulder2elbow_vec.i3[1]";
connectAttr "fit_quad_elbow.wm" "fit_quad_elbow_DCMX.imat";
connectAttr "fit_quad_shoulder.wm" "fit_quad_shoulder_DCMX.imat";
connectAttr "fit_quad_shoulder2wrist_vec_rvsMULT.o" "fit_quad_shoulder_y_vec.i1"
		;
connectAttr "fit_quad_shoulder2elbow_vec_rvsMULT.o" "fit_quad_shoulder_y_vec.i2"
		;
connectAttr "fit_quad_shoulder2wrist_vec.o3" "fit_quad_shoulder2wrist_vec_rvsMULT.i1"
		;
connectAttr "quad_arm_mirror_COND.oc" "fit_quad_shoulder2wrist_vec_rvsMULT.i2";
connectAttr "fit_quad_wrist_DCMX.ot" "fit_quad_shoulder2wrist_vec.i3[0]";
connectAttr "fit_quad_shoulder_DCMX.ot" "fit_quad_shoulder2wrist_vec.i3[1]";
connectAttr "fit_quad_wrist.wm" "fit_quad_wrist_DCMX.imat";
connectAttr "fit_quad_shoulder2elbow_vec_rvsMULT.o" "fit_quad_shoulder_z_vec.i1"
		;
connectAttr "fit_quad_shoulder_y_vec.o" "fit_quad_shoulder_z_vec.i2";
connectAttr "fit_quad_elbow_aligned_MTMX.o" "fit_quad_elbow_aligned_DCMX.imat";
connectAttr "fit_quad_elbow_aligned_FBFM.o" "fit_quad_elbow_aligned_MTMX.i[0]";
connectAttr "fit_quad_init_shoulder.wim" "fit_quad_elbow_aligned_MTMX.i[1]";
connectAttr "fit_quad_elbow_x_vec.ox" "fit_quad_elbow_aligned_FBFM.i00";
connectAttr "fit_quad_elbow_x_vec.oy" "fit_quad_elbow_aligned_FBFM.i01";
connectAttr "fit_quad_elbow_x_vec.oz" "fit_quad_elbow_aligned_FBFM.i02";
connectAttr "fit_quad_elbow_y_vec.ox" "fit_quad_elbow_aligned_FBFM.i10";
connectAttr "fit_quad_elbow_y_vec.oy" "fit_quad_elbow_aligned_FBFM.i11";
connectAttr "fit_quad_elbow_y_vec.oz" "fit_quad_elbow_aligned_FBFM.i12";
connectAttr "fit_quad_elbow_z_vec.ox" "fit_quad_elbow_aligned_FBFM.i20";
connectAttr "fit_quad_elbow_z_vec.oy" "fit_quad_elbow_aligned_FBFM.i21";
connectAttr "fit_quad_elbow_z_vec.oz" "fit_quad_elbow_aligned_FBFM.i22";
connectAttr "fit_quad_elbow_DCMX.otx" "fit_quad_elbow_aligned_FBFM.i30";
connectAttr "fit_quad_elbow_DCMX.oty" "fit_quad_elbow_aligned_FBFM.i31";
connectAttr "fit_quad_elbow_DCMX.otz" "fit_quad_elbow_aligned_FBFM.i32";
connectAttr "fit_quad_elbow2wrist_vec_rvsMULT.o" "fit_quad_elbow_x_vec.i1";
connectAttr "fit_quad_elbow2wrist_vec.o3" "fit_quad_elbow2wrist_vec_rvsMULT.i1";
connectAttr "quad_arm_mirror_COND.oc" "fit_quad_elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_quad_wrist_DCMX.ot" "fit_quad_elbow2wrist_vec.i3[0]";
connectAttr "fit_quad_elbow_DCMX.ot" "fit_quad_elbow2wrist_vec.i3[1]";
connectAttr "fit_quad_elbow2shoulder_vec_rvsMULT.o" "fit_quad_elbow_y_vec.i1";
connectAttr "fit_quad_elbow2wrist_vec_rvsMULT.o" "fit_quad_elbow_y_vec.i2";
connectAttr "fit_quad_elbow2shoulder_vec.o3" "fit_quad_elbow2shoulder_vec_rvsMULT.i1"
		;
connectAttr "quad_arm_mirror_COND.oc" "fit_quad_elbow2shoulder_vec_rvsMULT.i2";
connectAttr "fit_quad_shoulder_DCMX.ot" "fit_quad_elbow2shoulder_vec.i3[0]";
connectAttr "fit_quad_elbow_DCMX.ot" "fit_quad_elbow2shoulder_vec.i3[1]";
connectAttr "fit_quad_elbow2wrist_vec_rvsMULT.o" "fit_quad_elbow_z_vec.i1";
connectAttr "fit_quad_elbow_y_vec.o" "fit_quad_elbow_z_vec.i2";
connectAttr "fit_quad_wrist_aligned_init_MTMX.o" "fit_quad_wrist_aligned_init_DCMX.imat"
		;
connectAttr "fit_quad_wrist_aligned_FBFM.o" "fit_quad_wrist_aligned_init_MTMX.i[0]"
		;
connectAttr "fit_quad_init_elbow.wim" "fit_quad_wrist_aligned_init_MTMX.i[1]";
connectAttr "fit_quad_wrist_x_vec.ox" "fit_quad_wrist_aligned_FBFM.i00";
connectAttr "fit_quad_wrist_x_vec.oy" "fit_quad_wrist_aligned_FBFM.i01";
connectAttr "fit_quad_wrist_x_vec.oz" "fit_quad_wrist_aligned_FBFM.i02";
connectAttr "fit_quad_wrist_y_vec.ox" "fit_quad_wrist_aligned_FBFM.i10";
connectAttr "fit_quad_wrist_y_vec.oy" "fit_quad_wrist_aligned_FBFM.i11";
connectAttr "fit_quad_wrist_y_vec.oz" "fit_quad_wrist_aligned_FBFM.i12";
connectAttr "fit_quad_wrist_z_vec.ox" "fit_quad_wrist_aligned_FBFM.i20";
connectAttr "fit_quad_wrist_z_vec.oy" "fit_quad_wrist_aligned_FBFM.i21";
connectAttr "fit_quad_wrist_z_vec.oz" "fit_quad_wrist_aligned_FBFM.i22";
connectAttr "fit_quad_wrist_DCMX.otx" "fit_quad_wrist_aligned_FBFM.i30";
connectAttr "fit_quad_wrist_DCMX.oty" "fit_quad_wrist_aligned_FBFM.i31";
connectAttr "fit_quad_wrist_DCMX.otz" "fit_quad_wrist_aligned_FBFM.i32";
connectAttr "fit_quad_wrist2F_toe_vec_rvsMULT.o" "fit_quad_wrist_x_vec.i1";
connectAttr "fit_quad_wrist2F_toe_vec.o3" "fit_quad_wrist2F_toe_vec_rvsMULT.i1";
connectAttr "quad_arm_mirror_COND.oc" "fit_quad_wrist2F_toe_vec_rvsMULT.i2";
connectAttr "fit_quad_F_toe_DCMX.ot" "fit_quad_wrist2F_toe_vec.i3[0]";
connectAttr "fit_quad_wrist_DCMX.ot" "fit_quad_wrist2F_toe_vec.i3[1]";
connectAttr "fit_quad_F_toe.wm" "fit_quad_F_toe_DCMX.imat";
connectAttr "fit_quad_wrist2elbow_vec_rvsMULT.o" "fit_quad_wrist_y_vec.i1";
connectAttr "fit_quad_wrist2F_toe_vec_rvsMULT.o" "fit_quad_wrist_y_vec.i2";
connectAttr "fit_quad_wrist2elbow_vec.o3" "fit_quad_wrist2elbow_vec_rvsMULT.i1";
connectAttr "quad_arm_mirror_COND.oc" "fit_quad_wrist2elbow_vec_rvsMULT.i2";
connectAttr "fit_quad_wrist_DCMX.ot" "fit_quad_wrist2elbow_vec.i3[0]";
connectAttr "fit_quad_elbow_DCMX.ot" "fit_quad_wrist2elbow_vec.i3[1]";
connectAttr "fit_quad_wrist2F_toe_vec_rvsMULT.o" "fit_quad_wrist_z_vec.i1";
connectAttr "fit_quad_wrist_y_vec.o" "fit_quad_wrist_z_vec.i2";
connectAttr "fit_quad_F_toe2fit_quad_init_MTMX.o" "fit_quad_F_toe2fit_quad_init_DCMX.imat"
		;
connectAttr "fit_quad_F_toe.wm" "fit_quad_F_toe2fit_quad_init_MTMX.i[0]";
connectAttr "fit_quad_init_wrist.wim" "fit_quad_F_toe2fit_quad_init_MTMX.i[1]";
connectAttr "fit_quad_arm_space2temp_JNT_MTMX.o" "fit_quad_arm_space2temp_JNT_DCMX.imat"
		;
connectAttr "fit_quad_arm_space.wm" "fit_quad_arm_space2temp_JNT_MTMX.i[0]";
connectAttr "temp_quad_arm_GRP.wim" "fit_quad_arm_space2temp_JNT_MTMX.i[1]";
connectAttr "fit_quad_init_shoulder2temp_JNT_MTMX.o" "fit_quad_init_shoulder2temp_JNT_DCMX.imat"
		;
connectAttr "fit_quad_init_shoulder.wm" "fit_quad_init_shoulder2temp_JNT_MTMX.i[0]"
		;
connectAttr "temp_quad_scapula.wim" "fit_quad_init_shoulder2temp_JNT_MTMX.i[1]";
connectAttr "fit_quad_init_elbow2temp_elbow_MTMX.o" "fit_quad_init_elbow2temp_elbow_DCMX.imat"
		;
connectAttr "fit_quad_init_elbow.wm" "fit_quad_init_elbow2temp_elbow_MTMX.i[0]";
connectAttr "temp_quad_shoulder.wim" "fit_quad_init_elbow2temp_elbow_MTMX.i[1]";
connectAttr "fit_quad_init_wrist2fit_quad_init_MTMX.o" "fit_quad_init_wrist2fit_quad_init_DCMX.imat"
		;
connectAttr "fit_quad_init_wrist.wm" "fit_quad_init_wrist2fit_quad_init_MTMX.i[0]"
		;
connectAttr "temp_quad_elbow.wim" "fit_quad_init_wrist2fit_quad_init_MTMX.i[1]";
connectAttr "fit_quad_init_F_toe2temp_JNT_MTMX.o" "fit_quad_init_F_toe2temp_JNT_DCMX.imat"
		;
connectAttr "fit_quad_init_F_toe.wm" "fit_quad_init_F_toe2temp_JNT_MTMX.i[0]";
connectAttr "temp_quad_wrist.wim" "fit_quad_init_F_toe2temp_JNT_MTMX.i[1]";
connectAttr "fit_quad_arm.offsetMir" "fit_quad_mir_offset_DCMX.imat";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_quad_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_wrist_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_shoulder2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_shoulder2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_shoulder_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_shoulder_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_shoulder_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_quad_shoulder_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_shoulder_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_quad_elbow2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_elbow2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_elbow_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_elbow_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_init_shoulder2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_shoulder2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_elbow2temp_elbow_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_elbow2temp_elbow_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_elbow_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_wrist_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_wrist_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_arm_space2fir_init_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_arm_space2fir_init_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_shoulder_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_quad_shoulder2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_shoulder2elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_elbow2shoulder_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_elbow2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_mir_offset_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_F_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_wrist2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_wrist2F_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_wrist2elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_wrist2F_toe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_wrist_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_wrist_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_wrist_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_quad_wrist_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_quad_F_toe2fit_quad_init_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_F_toe2fit_quad_init_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_wrist2fit_quad_init_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_wrist2fit_quad_init_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_F_toe2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_quad_init_F_toe2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "quad_arm_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of fit_quadruped_arm.ma
