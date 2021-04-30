//Maya ASCII 2019 scene
//Name: fit_arm.ma
//Last modified: Fri, Apr 30, 2021 12:40:02 PM
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
createNode transform -n "fit_arm_GRP";
	rename -uid "C22A2269-4723-55C9-7A3E-BF8B59C5107E";
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
createNode transform -n "fit_scapula_space" -p "fit_arm_GRP";
	rename -uid "79259A3C-4173-01AA-A80A-CB8BCDF7BB79";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_scapula" -p "fit_scapula_space";
	rename -uid "F4D3F9AB-4935-93EA-CB5C-C2AA97A848B3";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 0 -3.6977854932234928e-32 ;
createNode nurbsCurve -n "fit_scapulaShape" -p "fit_scapula";
	rename -uid "6BCCB5BD-4FFF-AEBC-0F69-FA8C17E32C37";
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
createNode transform -n "fit_arm_space" -p "fit_scapula_space";
	rename -uid "D7CD9CE3-4D4E-AB95-BFB8-AF8D8D8B9AF8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_shoulder" -p "fit_arm_space";
	rename -uid "FB72DE0B-4C42-293F-BF9E-838341419241";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1 0 0 ;
createNode nurbsCurve -n "fit_shoulderShape" -p "fit_shoulder";
	rename -uid "7BB58A55-4C75-3391-8636-ED9733D68E3A";
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
	rename -uid "4B4178CA-4C6D-290D-3D69-2295F8CD19CC";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4 0 -0.99999994039535522 ;
createNode nurbsCurve -n "fit_elbowShape" -p "fit_elbow";
	rename -uid "0EA8AC1C-4DFA-0AD6-E36A-B5B90DE6D5D7";
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
	rename -uid "EAA13544-4D55-8133-7F73-3980A48C07E0";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4 0 0.999999940395355 ;
createNode nurbsCurve -n "fit_wristShape" -p "fit_wrist";
	rename -uid "3D51279F-4864-490A-761A-76BDCD6D538E";
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
createNode transform -n "fit_init_scapula" -p "fit_arm_GRP";
	rename -uid "23A853FD-42F2-BE39-940D-E09C1F582BBA";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_shoulder" -p "fit_init_scapula";
	rename -uid "BAD6DC4B-43D5-3D8D-7432-DA8AD13F67EA";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_elbow" -p "fit_init_shoulder";
	rename -uid "84B3B17E-48A4-81DE-7B4C-37844F679B2B";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_wrist" -p "fit_init_elbow";
	rename -uid "8B6C8EF2-4072-64CB-D288-95B08F203477";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "temp_arm_GRP" -p "fit_arm_GRP";
	rename -uid "F8E02FA8-4135-31F7-2797-9AB320F9FD25";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode joint -n "temp_scapula" -p "temp_arm_GRP";
	rename -uid "77FA7180-4258-57EA-8E96-4CAC960B44C5";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_shoulder" -p "temp_scapula";
	rename -uid "BE5C3700-45AB-29FD-4CA5-D79207BA1095";
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
	rename -uid "D2475E3F-4DB8-7F78-0128-988047E57284";
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
	rename -uid "ACE8789A-4621-9000-8BB5-CA9277406D0D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode decomposeMatrix -n "fit_arm_space_DCMX";
	rename -uid "12B74C42-47BA-B4C7-263A-A3A5553892A5";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "fit_arm_space_MTMX";
	rename -uid "C801EDE0-48BC-0594-9D36-A8A571C181A9";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "mir_offset_DCMX";
	rename -uid "6C281807-4CFD-C83A-AD17-DBBF2321BA65";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_elbow_DCMX";
	rename -uid "EB0DB69F-43D0-D54D-71DA-82BC5B85A1D5";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "48888951-476F-5C3B-B134-2998016B5C0B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "D378B5CC-4437-9A66-5195-29B8269497E1";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "shoulder2elbow_init_DCMX";
	rename -uid "D70FBE1F-479C-DC4A-3B30-31A993B72A1A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder2elbow_init_MTMX";
	rename -uid "1ED01392-40BB-10C6-B65F-E3B57B350618";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "elbow_aligned_FBFM";
	rename -uid "5E80101F-45FC-1F2F-F992-60A0DF2FD5D1";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "44301426-46E5-04AE-7103-C7983C0B45F8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2wrist_vec_rvsMULT";
	rename -uid "C705DBC9-4441-D7D5-C14B-278AEEE42E7B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "3AAD8213-4EE3-1DCE-7A80-D492A56FE578";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "1C0E4A0F-478A-15AE-B148-65858711A1B5";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2shoulder_vec_rvsMULT";
	rename -uid "99FDEB4A-4A7D-2F28-4925-CEA3C893F0F0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "EC3ADD57-4C2D-AC96-35CA-00801B5F58AA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "ED85832B-45C3-C59D-C47A-C2B7BB1592E6";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder2elbow_JNT_DCMX";
	rename -uid "429F2FCF-4659-D7BB-2DEC-7B980F5C6ABE";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder2elbow_JNT_MTMX";
	rename -uid "55AD206D-42F4-EFA0-8913-E89FE468EBEA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_aligned_DCMX";
	rename -uid "5D06C8F3-4D1D-855C-868E-CD801FCD2112";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder_aligned_MTMX";
	rename -uid "61C9C8C6-42A1-BAB7-68D4-0691E4EA1F67";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "shoulder_aligned_FBFM";
	rename -uid "F66F25E3-4DD7-17A0-9C5A-C9A1B003DE68";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "E30DD26D-42C7-FF7E-2416-C4BE62969214";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2elbow_vec_rvsMULT";
	rename -uid "88F211AC-4FED-7902-88D0-BDB8772C5197";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "shoulder2elbow_vec";
	rename -uid "732F5DE9-49ED-F13E-B746-A1A21F49CB29";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "BED4D3DD-4597-A261-262C-90A488494C69";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2wrist_vec_rvsMULT";
	rename -uid "D53979CF-4ED1-A387-C6F9-91AB9034526C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "shoulder2wrist_vec";
	rename -uid "758B4E8C-4ABF-CF09-2CA6-9582FC5D1D58";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_z_vec";
	rename -uid "40FB3231-4E58-9430-7A3D-8EA61ADBEF1C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder_JNT_DCMX";
	rename -uid "3E013DAC-423D-A3D0-D6F5-ACA82D0ED666";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder_JNT_MTMX";
	rename -uid "C681CF7C-42AC-5218-B700-AD9CB13F7BE8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_scapula_DCMX";
	rename -uid "0E4D4FC5-42EC-339D-E3E2-60BF47F7A87D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "temp_scapula_MTMX";
	rename -uid "0956E57B-4B17-10AF-192C-39A07341BD86";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_aligned_init_DCMX";
	rename -uid "DB261F43-4A0A-8DCE-4A84-3D85CA483A54";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "wrist_aligned_init_MTMX";
	rename -uid "1E69243F-4845-294B-7167-0CBD5FFAA297";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "fit_arm_space_scale_rvs_MULT";
	rename -uid "46A79C4C-4B1E-3FA7-6ED6-8A9E21571CA6";
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
connectAttr "fit_scapula.fitControl" "fit_arm_GRP.fitControls" -na;
connectAttr "fit_shoulder.fitControl" "fit_arm_GRP.fitControls" -na;
connectAttr "fit_elbow.fitControl" "fit_arm_GRP.fitControls" -na;
connectAttr "fit_wrist.fitControl" "fit_arm_GRP.fitControls" -na;
connectAttr "fit_init_scapula.init" "fit_arm_GRP.init" -na;
connectAttr "fit_init_shoulder.init" "fit_arm_GRP.init" -na;
connectAttr "fit_init_elbow.init" "fit_arm_GRP.init" -na;
connectAttr "fit_init_wrist.init" "fit_arm_GRP.init" -na;
connectAttr "temp_scapula.tempJoint" "fit_arm_GRP.tempJoints" -na;
connectAttr "temp_shoulder.tempJoint" "fit_arm_GRP.tempJoints" -na;
connectAttr "temp_elbow.tempJoint" "fit_arm_GRP.tempJoints" -na;
connectAttr "temp_wrist.tempJoint" "fit_arm_GRP.tempJoints" -na;
connectAttr "fit_scapula_space.package" "fit_arm_GRP.package" -na;
connectAttr "fit_scapula.package" "fit_arm_GRP.package" -na;
connectAttr "fit_arm_space.package" "fit_arm_GRP.package" -na;
connectAttr "fit_shoulder.package" "fit_arm_GRP.package" -na;
connectAttr "fit_elbow.package" "fit_arm_GRP.package" -na;
connectAttr "fit_wrist.package" "fit_arm_GRP.package" -na;
connectAttr "fit_init_scapula.package" "fit_arm_GRP.package" -na;
connectAttr "fit_init_shoulder.package" "fit_arm_GRP.package" -na;
connectAttr "fit_init_elbow.package" "fit_arm_GRP.package" -na;
connectAttr "fit_init_wrist.package" "fit_arm_GRP.package" -na;
connectAttr "temp_arm_GRP.package" "fit_arm_GRP.package" -na;
connectAttr "temp_scapula.package" "fit_arm_GRP.package" -na;
connectAttr "temp_shoulder.package" "fit_arm_GRP.package" -na;
connectAttr "temp_elbow.package" "fit_arm_GRP.package" -na;
connectAttr "temp_wrist.package" "fit_arm_GRP.package" -na;
connectAttr "fit_arm_space_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "mir_offset_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "fit_elbow_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "fit_shoulder_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "fit_wrist_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2elbow_init_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2elbow_JNT_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_aligned_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_JNT_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "temp_scapula_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "wrist_aligned_init_DCMX.package" "fit_arm_GRP.package" -na;
connectAttr "elbow_aligned_FBFM.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_aligned_FBFM.package" "fit_arm_GRP.package" -na;
connectAttr "fit_arm_space_MTMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2elbow_init_MTMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2elbow_JNT_MTMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_aligned_MTMX.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_JNT_MTMX.package" "fit_arm_GRP.package" -na;
connectAttr "temp_scapula_MTMX.package" "fit_arm_GRP.package" -na;
connectAttr "wrist_aligned_init_MTMX.package" "fit_arm_GRP.package" -na;
connectAttr "elbow2shoulder_vec_rvsMULT.package" "fit_arm_GRP.package" -na;
connectAttr "elbow2wrist_vec_rvsMULT.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2elbow_vec_rvsMULT.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2wrist_vec_rvsMULT.package" "fit_arm_GRP.package" -na;
connectAttr "elbow2shoulder_vec.package" "fit_arm_GRP.package" -na;
connectAttr "elbow2wrist_vec.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2elbow_vec.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder2wrist_vec.package" "fit_arm_GRP.package" -na;
connectAttr "elbow_x_vec.package" "fit_arm_GRP.package" -na;
connectAttr "elbow_y_vec.package" "fit_arm_GRP.package" -na;
connectAttr "elbow_z_vec.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_x_vec.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_y_vec.package" "fit_arm_GRP.package" -na;
connectAttr "shoulder_z_vec.package" "fit_arm_GRP.package" -na;
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
connectAttr "fit_arm_GRP.wim" "fit_arm_space_MTMX.i[1]";
connectAttr "fit_arm_GRP.offsetMir" "mir_offset_DCMX.imat";
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
connectAttr "fit_arm_GRP.leftDirect" "elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "elbow2wrist_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2wrist_vec.i3[1]";
connectAttr "elbow2shoulder_vec_rvsMULT.o" "elbow_y_vec.i1";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_y_vec.i2";
connectAttr "elbow2shoulder_vec.o3" "elbow2shoulder_vec_rvsMULT.i1";
connectAttr "fit_arm_GRP.leftDirect" "elbow2shoulder_vec_rvsMULT.i2";
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
connectAttr "fit_arm_GRP.leftDirect" "shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_elbow_DCMX.ot" "shoulder2elbow_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2elbow_vec.i3[1]";
connectAttr "shoulder2wrist_vec_rvsMULT.o" "shoulder_y_vec.i1";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_y_vec.i2";
connectAttr "shoulder2wrist_vec.o3" "shoulder2wrist_vec_rvsMULT.i1";
connectAttr "fit_arm_GRP.leftDirect" "shoulder2wrist_vec_rvsMULT.i2";
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
connectAttr "fit_arm_GRP.leftDirect" "fit_arm_space_scale_rvs_MULT.i2";
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
