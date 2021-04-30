//Maya ASCII 2019 scene
//Name: fit_quadruped_arm.ma
//Last modified: Mon, Apr 26, 2021 07:00:33 PM
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
createNode transform -n "fit_arm";
	rename -uid "493E3973-41EE-E272-39A9-6C954215A995";
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
createNode transform -n "fit_arm_GRP" -p "fit_arm";
	rename -uid "A7AE6ABB-43BA-9D2F-7508-0DAB9EEE5C89";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_scapula" -p "fit_arm_GRP";
	rename -uid "B9524A80-4651-3900-9D37-829485F27517";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode nurbsCurve -n "fit_scapulaShape" -p "fit_scapula";
	rename -uid "1D682126-445B-E07E-B062-8B8ABE21F745";
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
	rename -uid "45C52FF4-462C-8B28-507C-B586417BE453";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_shoulder" -p "fit_arm_space";
	rename -uid "07364120-42A6-5EA2-90B3-84A0B0FE156C";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1.8925676345825195 -8.7011337280273438 4.9459066390991211 ;
createNode nurbsCurve -n "fit_shoulderShape" -p "fit_shoulder";
	rename -uid "B56F1E5D-4117-E3F2-C0A1-4688DB94BC47";
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
	rename -uid "36C9555B-4C31-BAAB-BD06-58825741CCAE";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -0.0094790458679199219 -9.0674934387207031 -4.7627124786376953 ;
createNode nurbsCurve -n "fit_elbowShape" -p "fit_elbow";
	rename -uid "FBA030FD-430E-9FD7-8FC7-DF8646C91A11";
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
	rename -uid "3BBF616D-4D8F-E474-70DF-4184BE185FA3";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.064644813537597656 -15.753054141998291 1.7440681457519531 ;
createNode nurbsCurve -n "fit_wristShape" -p "fit_wrist";
	rename -uid "C0E5AAFF-4828-C07F-453E-9DBDB5CE9116";
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
createNode transform -n "fit_F_toe" -p "fit_wrist";
	rename -uid "ABC2756B-4517-00FF-9F20-768C8EF200FB";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.018614768981933594 -4.5795176029205322 -0.004486083984375 ;
createNode nurbsCurve -n "fit_F_toeShape" -p "fit_F_toe";
	rename -uid "207C3D47-445B-6D2F-B16A-1FB550E7BF13";
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
createNode transform -n "fit_init_scapula" -p "fit_arm";
	rename -uid "D9C98A06-4327-3F56-7597-669CC57537BE";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_shoulder" -p "fit_init_scapula";
	rename -uid "BA2CA2A0-478F-2322-4148-FB95F7088257";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_elbow" -p "fit_init_shoulder";
	rename -uid "092DC893-407E-F4E7-A17A-579D16BF4D80";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_wrist" -p "fit_init_elbow";
	rename -uid "CA756AA3-40ED-2842-6953-F8B549E25452";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fit_init_F_toe" -p "fit_init_wrist";
	rename -uid "4636AC7E-45BD-13E3-03E9-D49FF7C26D20";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "temp_arm_GRP" -p "fit_arm";
	rename -uid "8F21461B-4487-B78C-B728-DBA12B378C84";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode joint -n "temp_scapula" -p "temp_arm_GRP";
	rename -uid "CD6CE1F7-4BAB-FB57-340D-77B9E292DFC0";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_shoulder" -p "temp_scapula";
	rename -uid "AABE0B0D-47BB-2031-EFD2-BFB21B98BA9D";
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
	rename -uid "EA16AFD4-4F44-037C-0CF1-C89D6E3A4B67";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_wrist" -p "temp_elbow";
	rename -uid "134E2502-4A05-E2D9-17C7-48B6599F465A";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_F_toe" -p "temp_wrist";
	rename -uid "489ADFB3-48C4-35D6-167E-23A824189CD3";
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode decomposeMatrix -n "fit_arm_space_DCMX";
	rename -uid "08421816-4F6B-5D98-A7F6-9B8CA60CD001";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "fit_arm_space_MTMX";
	rename -uid "1CC8CE18-4BC9-A4C6-F364-52A96B99003C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "mir_offset_DCMX";
	rename -uid "023196A7-4E3C-B893-6EE1-AC82CF4AFE31";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_elbow_DCMX";
	rename -uid "AEF818DD-43F8-07B9-345B-919580C685AC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "40C4A0C4-46DF-C721-5837-1FA062299EB0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "D1484AD9-4520-29CA-5755-0C85C6DBA94D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode decomposeMatrix -n "elbow_aligned_DCMX";
	rename -uid "2468B603-43C7-4B5A-9ACE-10BB538B4810";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "elbow_aligned_MTMX";
	rename -uid "3CFAE841-4C13-0C66-5214-AFB17910F5EA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "elbow_aligned_FBFM";
	rename -uid "758436A2-4BCC-1225-338D-FAAAA6FB2B33";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "665D2858-40CF-0CFA-FF14-029FFF8C5CFA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2wrist_vec_rvsMULT";
	rename -uid "F2417F58-4DE2-D19E-4A8C-B1BAE93E9E24";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "F9360FE5-4860-6BD9-DCDB-AF84F1CD9C4A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "74526304-4E46-2A49-6221-1EB0C57FA296";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2shoulder_vec_rvsMULT";
	rename -uid "1E7EF2DF-420D-74B0-019F-7C97F5881409";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "9CC7E5F3-4A23-6BDD-DD68-378D1461716B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "A383976E-4BDB-2165-453B-C280AC118998";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder2elbow_JNT_DCMX";
	rename -uid "AA5F3F51-4836-D451-BE54-D4BCB81EBB9E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder2elbow_JNT_MTMX";
	rename -uid "72549A57-42CD-F4B7-34B4-3D9578BBBD7F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_aligned_DCMX";
	rename -uid "82708247-4A9A-B090-1A41-3E939717FC88";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder_aligned_MTMX";
	rename -uid "69FAD018-40C7-9F64-4245-1FA0C7EF46A2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "shoulder_aligned_FBFM";
	rename -uid "B7A0BE1D-4F3D-9120-A9CF-05A3EEA370D0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "A506C97F-4048-3D92-2D8A-CFA2DAA68C27";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2elbow_vec_rvsMULT";
	rename -uid "CAC5B9F9-46BC-554B-39E9-93AA385CAFED";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "shoulder2elbow_vec";
	rename -uid "9189B1E5-4BB4-3BFD-F239-5CA02FE88BB7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "573E7D63-49D9-86D2-2C23-C2BEE24AE14B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2wrist_vec_rvsMULT";
	rename -uid "6BECE904-4359-8B03-179D-F6A06D8813F2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "shoulder2wrist_vec";
	rename -uid "13DBDDB0-48F0-B05F-03CD-C88BF644D0FF";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_z_vec";
	rename -uid "C4EA244D-440B-66D9-2EC1-8AB379B632D0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder_JNT_DCMX";
	rename -uid "16D8246E-49B7-B28F-B6B7-FCB744BDA05D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "shoulder_JNT_MTMX";
	rename -uid "413EBBFB-4EE9-DF28-64A6-E8837D5C88DB";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_scapula_DCMX";
	rename -uid "732869B0-4ECC-4DE2-51E3-D096777B1268";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "temp_scapula_MTMX";
	rename -uid "CADB4CAB-4478-97F1-4A93-0B84A88CDFD7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_aligned_init_DCMX";
	rename -uid "07E81B51-416E-1205-4D21-309E412291DB";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "wrist_aligned_init_MTMX";
	rename -uid "C8A8A146-471C-5AEA-CF10-A88B712F0F22";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "wrist_aligned_FBFM";
	rename -uid "EDE78578-4EB7-6685-EE02-EEACCBA0B3F1";
createNode vectorProduct -n "wrist_x_vec";
	rename -uid "EFA4D472-4BC7-3377-8A69-4E8E94A8CDC4";
	setAttr ".op" 0;
	setAttr ".i2" -type "float3" 12.392784 10.002784 32.154369 ;
	setAttr ".no" yes;
createNode multiplyDivide -n "wrist2F_toe_vec_rvsMULT";
	rename -uid "B00B30A0-4C9C-3B43-C35D-85844DFDC1D8";
createNode plusMinusAverage -n "wrist2F_toe_vec";
	rename -uid "77758F7B-4F43-59F2-DBD6-8BA206544187";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_F_toe_DCMX";
	rename -uid "EBB8A58F-435A-02E1-1452-D3BA5B049607";
createNode vectorProduct -n "wrist_y_vec";
	rename -uid "B26CCC8F-4BF2-DC95-59AF-ADB188770F67";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "wrist2elbow_vec_rvsMULT";
	rename -uid "6C3B9DF4-4F5A-7F3C-1F75-1390E46F09AD";
createNode plusMinusAverage -n "wrist2elbow_vec";
	rename -uid "46B77891-4F69-E6B8-70A0-679EFB9BB29C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "wrist_z_vec";
	rename -uid "BF292CCC-41F9-9CFF-472A-54AADBAF0CC4";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "F_toe_aligned_init_DCMX";
	rename -uid "E9302203-42FB-02AC-CCD4-F893889453C3";
createNode multMatrix -n "F_toe_aligned_init_MTMX";
	rename -uid "6C537D3A-4CAB-46EC-625D-A18EFA839B3C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_wrist_DCMX";
	rename -uid "439B16ED-4818-F606-03E5-EF9B6D27C804";
createNode multMatrix -n "fit_init_wrist_MTMX";
	rename -uid "92C0E77F-4CB9-F344-2C90-8C9BC2C2515E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_toe_aligned_init_DCMX1";
	rename -uid "92165EA4-45E8-8506-7637-2EBF0EBE2F53";
createNode multMatrix -n "F_toe_aligned_init_MTMX1";
	rename -uid "D467082F-485E-EEB3-9D38-828181681BBA";
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
	setAttr -s 47 ".u";
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
connectAttr "fit_scapula.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_shoulder.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_elbow.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_wrist.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_F_toe.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_init_scapula.init" "fit_arm.init" -na;
connectAttr "fit_init_shoulder.init" "fit_arm.init" -na;
connectAttr "fit_init_elbow.init" "fit_arm.init" -na;
connectAttr "fit_init_wrist.init" "fit_arm.init" -na;
connectAttr "fit_init_F_toe.init" "fit_arm.init" -na;
connectAttr "temp_scapula.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_shoulder.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_elbow.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_wrist.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "fit_arm_GRP.package" "fit_arm.package" -na;
connectAttr "fit_scapula.package" "fit_arm.package" -na;
connectAttr "fit_arm_space.package" "fit_arm.package" -na;
connectAttr "fit_shoulder.package" "fit_arm.package" -na;
connectAttr "fit_elbow.package" "fit_arm.package" -na;
connectAttr "fit_wrist.package" "fit_arm.package" -na;
connectAttr "fit_init_scapula.package" "fit_arm.package" -na;
connectAttr "fit_init_shoulder.package" "fit_arm.package" -na;
connectAttr "fit_init_elbow.package" "fit_arm.package" -na;
connectAttr "fit_init_wrist.package" "fit_arm.package" -na;
connectAttr "temp_arm_GRP.package" "fit_arm.package" -na;
connectAttr "temp_scapula.package" "fit_arm.package" -na;
connectAttr "temp_shoulder.package" "fit_arm.package" -na;
connectAttr "temp_elbow.package" "fit_arm.package" -na;
connectAttr "temp_wrist.package" "fit_arm.package" -na;
connectAttr "fit_arm_space_DCMX.package" "fit_arm.package" -na;
connectAttr "mir_offset_DCMX.package" "fit_arm.package" -na;
connectAttr "fit_elbow_DCMX.package" "fit_arm.package" -na;
connectAttr "fit_shoulder_DCMX.package" "fit_arm.package" -na;
connectAttr "fit_wrist_DCMX.package" "fit_arm.package" -na;
connectAttr "elbow_aligned_DCMX.package" "fit_arm.package" -na;
connectAttr "shoulder2elbow_JNT_DCMX.package" "fit_arm.package" -na;
connectAttr "shoulder_aligned_DCMX.package" "fit_arm.package" -na;
connectAttr "shoulder_JNT_DCMX.package" "fit_arm.package" -na;
connectAttr "temp_scapula_DCMX.package" "fit_arm.package" -na;
connectAttr "wrist_aligned_init_DCMX.package" "fit_arm.package" -na;
connectAttr "elbow_aligned_FBFM.package" "fit_arm.package" -na;
connectAttr "shoulder_aligned_FBFM.package" "fit_arm.package" -na;
connectAttr "fit_arm_space_MTMX.package" "fit_arm.package" -na;
connectAttr "elbow_aligned_MTMX.package" "fit_arm.package" -na;
connectAttr "shoulder2elbow_JNT_MTMX.package" "fit_arm.package" -na;
connectAttr "shoulder_aligned_MTMX.package" "fit_arm.package" -na;
connectAttr "shoulder_JNT_MTMX.package" "fit_arm.package" -na;
connectAttr "temp_scapula_MTMX.package" "fit_arm.package" -na;
connectAttr "wrist_aligned_init_MTMX.package" "fit_arm.package" -na;
connectAttr "elbow2shoulder_vec_rvsMULT.package" "fit_arm.package" -na;
connectAttr "elbow2wrist_vec_rvsMULT.package" "fit_arm.package" -na;
connectAttr "shoulder2elbow_vec_rvsMULT.package" "fit_arm.package" -na;
connectAttr "shoulder2wrist_vec_rvsMULT.package" "fit_arm.package" -na;
connectAttr "elbow2shoulder_vec.package" "fit_arm.package" -na;
connectAttr "elbow2wrist_vec.package" "fit_arm.package" -na;
connectAttr "shoulder2elbow_vec.package" "fit_arm.package" -na;
connectAttr "shoulder2wrist_vec.package" "fit_arm.package" -na;
connectAttr "elbow_x_vec.package" "fit_arm.package" -na;
connectAttr "elbow_y_vec.package" "fit_arm.package" -na;
connectAttr "elbow_z_vec.package" "fit_arm.package" -na;
connectAttr "shoulder_x_vec.package" "fit_arm.package" -na;
connectAttr "shoulder_y_vec.package" "fit_arm.package" -na;
connectAttr "shoulder_z_vec.package" "fit_arm.package" -na;
connectAttr "fit_F_toe.package" "fit_arm.package" -na;
connectAttr "fit_init_F_toe.package" "fit_arm.package" -na;
connectAttr "fit_scapula.t" "fit_arm_space.t";
connectAttr "fit_scapula.r" "fit_arm_space.r";
connectAttr "fit_scapula.s" "fit_arm_space.s";
connectAttr "fit_arm_space_DCMX.ot" "fit_init_scapula.t";
connectAttr "fit_arm_space_DCMX.or" "fit_init_scapula.r";
connectAttr "fit_arm_space.s" "fit_init_scapula.s";
connectAttr "shoulder_aligned_DCMX.ot" "fit_init_shoulder.t";
connectAttr "shoulder_aligned_DCMX.or" "fit_init_shoulder.r";
connectAttr "shoulder_aligned_DCMX.os" "fit_init_shoulder.s";
connectAttr "shoulder_aligned_DCMX.osh" "fit_init_shoulder.sh";
connectAttr "elbow_aligned_DCMX.ot" "fit_init_elbow.t";
connectAttr "elbow_aligned_DCMX.or" "fit_init_elbow.r";
connectAttr "elbow_aligned_DCMX.os" "fit_init_elbow.s";
connectAttr "elbow_aligned_DCMX.osh" "fit_init_elbow.sh";
connectAttr "wrist_aligned_init_DCMX.ot" "fit_init_wrist.t";
connectAttr "wrist_aligned_init_DCMX.os" "fit_init_wrist.s";
connectAttr "wrist_aligned_init_DCMX.or" "fit_init_wrist.r";
connectAttr "wrist_aligned_init_DCMX.osh" "fit_init_wrist.sh";
connectAttr "F_toe_aligned_init_DCMX.ot" "fit_init_F_toe.t";
connectAttr "F_toe_aligned_init_DCMX.os" "fit_init_F_toe.s";
connectAttr "F_toe_aligned_init_DCMX.osh" "fit_init_F_toe.sh";
connectAttr "temp_scapula_DCMX.ot" "temp_scapula.t";
connectAttr "temp_scapula_DCMX.or" "temp_scapula.jo";
connectAttr "shoulder_JNT_DCMX.ot" "temp_shoulder.t";
connectAttr "shoulder_JNT_DCMX.or" "temp_shoulder.jo";
connectAttr "temp_scapula.s" "temp_shoulder.is";
connectAttr "fit_init_shoulder.s" "temp_shoulder.s";
connectAttr "shoulder2elbow_JNT_DCMX.ot" "temp_elbow.t";
connectAttr "shoulder2elbow_JNT_DCMX.or" "temp_elbow.jo";
connectAttr "fit_init_elbow.s" "temp_elbow.s";
connectAttr "fit_init_wrist_DCMX.ot" "temp_wrist.t";
connectAttr "fit_init_wrist_DCMX.or" "temp_wrist.jo";
connectAttr "temp_elbow.s" "temp_wrist.is";
connectAttr "fit_init_wrist.s" "temp_wrist.s";
connectAttr "temp_wrist.s" "temp_F_toe.is";
connectAttr "F_toe_aligned_init_DCMX1.ot" "temp_F_toe.t";
connectAttr "F_toe_aligned_init_DCMX1.or" "temp_F_toe.jo";
connectAttr "fit_arm_space_MTMX.o" "fit_arm_space_DCMX.imat";
connectAttr "fit_arm_space.wm" "fit_arm_space_MTMX.i[0]";
connectAttr "fit_arm.wim" "fit_arm_space_MTMX.i[1]";
connectAttr "fit_arm.offsetMir" "mir_offset_DCMX.imat";
connectAttr "fit_elbow.wm" "fit_elbow_DCMX.imat";
connectAttr "fit_shoulder.wm" "fit_shoulder_DCMX.imat";
connectAttr "fit_wrist.wm" "fit_wrist_DCMX.imat";
connectAttr "elbow_aligned_MTMX.o" "elbow_aligned_DCMX.imat";
connectAttr "elbow_aligned_FBFM.o" "elbow_aligned_MTMX.i[0]";
connectAttr "fit_init_shoulder.wim" "elbow_aligned_MTMX.i[1]";
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
connectAttr "fit_arm.leftDirect" "elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "elbow2wrist_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2wrist_vec.i3[1]";
connectAttr "elbow2shoulder_vec_rvsMULT.o" "elbow_y_vec.i1";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_y_vec.i2";
connectAttr "elbow2shoulder_vec.o3" "elbow2shoulder_vec_rvsMULT.i1";
connectAttr "fit_arm.leftDirect" "elbow2shoulder_vec_rvsMULT.i2";
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
connectAttr "fit_arm.leftDirect" "shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_elbow_DCMX.ot" "shoulder2elbow_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2elbow_vec.i3[1]";
connectAttr "shoulder2wrist_vec_rvsMULT.o" "shoulder_y_vec.i1";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_y_vec.i2";
connectAttr "shoulder2wrist_vec.o3" "shoulder2wrist_vec_rvsMULT.i1";
connectAttr "fit_arm.leftDirect" "shoulder2wrist_vec_rvsMULT.i2";
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
connectAttr "wrist_aligned_FBFM.o" "wrist_aligned_init_MTMX.i[0]";
connectAttr "fit_init_elbow.wim" "wrist_aligned_init_MTMX.i[1]";
connectAttr "wrist_x_vec.ox" "wrist_aligned_FBFM.i00";
connectAttr "wrist_x_vec.oy" "wrist_aligned_FBFM.i01";
connectAttr "wrist_x_vec.oz" "wrist_aligned_FBFM.i02";
connectAttr "wrist_y_vec.ox" "wrist_aligned_FBFM.i10";
connectAttr "wrist_y_vec.oy" "wrist_aligned_FBFM.i11";
connectAttr "wrist_y_vec.oz" "wrist_aligned_FBFM.i12";
connectAttr "wrist_z_vec.ox" "wrist_aligned_FBFM.i20";
connectAttr "wrist_z_vec.oy" "wrist_aligned_FBFM.i21";
connectAttr "wrist_z_vec.oz" "wrist_aligned_FBFM.i22";
connectAttr "fit_wrist_DCMX.otx" "wrist_aligned_FBFM.i30";
connectAttr "fit_wrist_DCMX.oty" "wrist_aligned_FBFM.i31";
connectAttr "fit_wrist_DCMX.otz" "wrist_aligned_FBFM.i32";
connectAttr "wrist2F_toe_vec_rvsMULT.o" "wrist_x_vec.i1";
connectAttr "wrist2F_toe_vec.o3" "wrist2F_toe_vec_rvsMULT.i1";
connectAttr "fit_arm.leftDirect" "wrist2F_toe_vec_rvsMULT.i2";
connectAttr "fit_F_toe_DCMX.ot" "wrist2F_toe_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "wrist2F_toe_vec.i3[1]";
connectAttr "fit_F_toe.wm" "fit_F_toe_DCMX.imat";
connectAttr "wrist2elbow_vec_rvsMULT.o" "wrist_y_vec.i1";
connectAttr "wrist2F_toe_vec_rvsMULT.o" "wrist_y_vec.i2";
connectAttr "wrist2elbow_vec.o3" "wrist2elbow_vec_rvsMULT.i1";
connectAttr "fit_arm.leftDirect" "wrist2elbow_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "wrist2elbow_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "wrist2elbow_vec.i3[1]";
connectAttr "wrist2F_toe_vec_rvsMULT.o" "wrist_z_vec.i1";
connectAttr "wrist_y_vec.o" "wrist_z_vec.i2";
connectAttr "F_toe_aligned_init_MTMX.o" "F_toe_aligned_init_DCMX.imat";
connectAttr "fit_F_toe.wm" "F_toe_aligned_init_MTMX.i[0]";
connectAttr "fit_init_wrist.wim" "F_toe_aligned_init_MTMX.i[1]";
connectAttr "fit_init_wrist_MTMX.o" "fit_init_wrist_DCMX.imat";
connectAttr "fit_init_wrist.wm" "fit_init_wrist_MTMX.i[0]";
connectAttr "temp_elbow.wim" "fit_init_wrist_MTMX.i[1]";
connectAttr "F_toe_aligned_init_MTMX1.o" "F_toe_aligned_init_DCMX1.imat";
connectAttr "fit_init_F_toe.wm" "F_toe_aligned_init_MTMX1.i[0]";
connectAttr "temp_wrist.wim" "F_toe_aligned_init_MTMX1.i[1]";
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
connectAttr "elbow_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
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
connectAttr "fit_F_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist2F_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist2elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist2F_toe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_init_wrist_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_init_wrist_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_aligned_init_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_aligned_init_DCMX1.msg" ":defaultRenderUtilityList1.u" -na;
// End of fit_quadruped_arm.ma
