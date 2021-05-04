//Maya ASCII 2019 scene
//Name: fit_quadruped_arm.ma
//Last modified: Tue, May 04, 2021 01:53:07 PM
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
	setAttr -s 2 ".iog";
	setAttr -s 5 ".fitControls";
	setAttr -s 5 ".init";
	setAttr -s 5 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -cb on ".mirror";
createNode transform -n "fit_arm_GRP" -p "fit_arm";
	rename -uid "77F03CFE-4E1C-37A8-8978-AEBED94F842C";
createNode transform -n "fit_scapula" -p "fit_arm_GRP";
	rename -uid "571B0438-437A-C9C6-900D-D48BF595C323";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_scapulaShape" -p "fit_scapula";
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
createNode transform -n "fit_arm_space" -p "fit_arm_GRP";
	rename -uid "D558200D-42CA-A421-9831-CCA1936B16D9";
createNode transform -n "fit_shoulder" -p "fit_arm_space";
	rename -uid "2E9EFB4C-4ABE-BD1B-DCAB-0EACECC31981";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1.8925676345825195 -8.7011337280273438 4.9459066390991211 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_shoulderShape" -p "fit_shoulder";
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
createNode transform -n "fit_elbow" -p "fit_shoulder";
	rename -uid "80C53CAC-4A63-0206-A375-DBA3F9FB2DAC";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -0.0094790458679199219 -9.0674934387207031 -4.7627124786376953 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_elbowShape" -p "fit_elbow";
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
createNode transform -n "fit_wrist" -p "fit_elbow";
	rename -uid "377694AE-4EBC-0A50-6427-0D82006E24E8";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.064644813537597656 -15.753054141998291 1.7440681457519531 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_wristShape" -p "fit_wrist";
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
createNode transform -n "fit_F_toe" -p "fit_wrist";
	rename -uid "EE16B882-42FC-12CC-6B44-A7ABE3314293";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.018614768981933594 -4.5795176029205322 -0.004486083984375 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_F_toeShape" -p "fit_F_toe";
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
createNode transform -n "fit_init_scapula" -p "fit_arm";
	rename -uid "713367F9-4C63-B60A-A57F-129B2C05A3D0";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_shoulder" -p "fit_init_scapula";
	rename -uid "1B0DBD91-4656-7279-0005-4ABD64510C92";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_elbow" -p "fit_init_shoulder";
	rename -uid "838578EC-4AAE-17C4-CF9C-A78B21C16F0E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_wrist" -p "fit_init_elbow";
	rename -uid "1634BB17-42D7-1183-7FA3-E3B880E36FE4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_F_toe" -p "fit_init_wrist";
	rename -uid "BBBD1976-43D6-451E-3A4D-0396EFAD868C";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_arm_GRP" -p "fit_arm";
	rename -uid "7F7E5F52-40D5-3DD8-A535-F2B3FBE82CC9";
createNode joint -n "temp_scapula" -p "temp_arm_GRP";
	rename -uid "21AA6548-4461-6597-9B8F-E3A88D8BEE84";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_shoulder" -p "temp_scapula";
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
createNode joint -n "temp_elbow" -p "temp_shoulder";
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
createNode joint -n "temp_wrist" -p "temp_elbow";
	rename -uid "12FC1772-4CD2-819A-2547-BEB34D1CBC6E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_F_toe" -p "temp_wrist";
	rename -uid "B2CFB710-40F3-B705-2494-5796DDCAAD56";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode objectSet -n "fit_arm_SET";
	rename -uid "83B9078F-467C-6F3A-A56C-C1BD0576841E";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr -s 50 ".dnsm";
createNode condition -n "arm_mirror_COND";
	rename -uid "CB063227-45B4-9B6F-8764-F4B9A283C2D0";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_arm_space2fir_init_DCMX";
	rename -uid "6F358843-4539-6B89-FFF2-949DFC5FD982";
createNode multMatrix -n "fit_arm_space2fir_init_MTMX";
	rename -uid "6D58D1F5-4147-70DA-6802-62A176BE08F5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_aligned_DCMX";
	rename -uid "A902E4A8-4F12-16B4-09EB-3A94AF838383";
createNode multMatrix -n "shoulder_aligned_MTMX";
	rename -uid "8ED0A34C-4B00-5FCB-21EE-209C2BDD1A0A";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "shoulder_aligned_FBFM";
	rename -uid "45FB4C9D-4710-E25D-8036-FBAFA6C824B2";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "43E000FB-47A5-6D77-DF3E-09B5B0187050";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2elbow_vec_rvsMULT";
	rename -uid "46288053-414D-AD6B-E8B0-D5BE5E2FBA0D";
createNode plusMinusAverage -n "shoulder2elbow_vec";
	rename -uid "7EB9845F-4C50-F7C9-F89C-9BAC79499320";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_elbow_DCMX";
	rename -uid "D5E74F50-4068-ABEF-5273-99861917BBF5";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "1AA191A4-4F0B-FFC7-3B28-37938D3DC239";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "F9F99A7B-4E0A-044A-D3C4-5A8E0DB706C5";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2wrist_vec_rvsMULT";
	rename -uid "82606F79-45C9-B077-EB71-0CBADDA509A4";
createNode plusMinusAverage -n "shoulder2wrist_vec";
	rename -uid "D2FEEFA4-4515-1DAB-797B-3CB6A13EAAD2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "FD434D16-4A9B-91F6-5701-A2819EDBD04A";
createNode vectorProduct -n "shoulder_z_vec";
	rename -uid "FB1465C6-415F-9E6F-E40B-59AA63E9DF3D";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "elbow_aligned_DCMX";
	rename -uid "7921FAB5-4DB9-428A-4FA8-AE96887BF491";
createNode multMatrix -n "elbow_aligned_MTMX";
	rename -uid "9B4B83A2-4150-9413-7D42-9B9D8318D36B";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "elbow_aligned_FBFM";
	rename -uid "634981F6-41DF-0518-063C-E3A622BC71A5";
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "CFB50713-4DBB-0D7D-2474-F9991C24B0A1";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2wrist_vec_rvsMULT";
	rename -uid "F6A4C831-4C4F-FE36-81A9-4A8290052D19";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "A5793F1B-4013-BADE-79E7-D589718A0203";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "1A19F82C-410F-06E8-CC2D-6D998687125B";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2shoulder_vec_rvsMULT";
	rename -uid "6AA1F0D6-4C59-6591-91B9-F4A7F67B2BE0";
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "C495B376-4A10-6F89-75D3-B9AF0AE8A223";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "BD17777F-433F-E244-BD1B-9D83BED56E2E";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "wrist_aligned_init_DCMX";
	rename -uid "F4E63683-4C0A-DA59-ACBF-25996956A1C6";
createNode multMatrix -n "wrist_aligned_init_MTMX";
	rename -uid "E8C876A2-4989-C4BB-5486-948A3DC35606";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "wrist_aligned_FBFM";
	rename -uid "D4664535-4917-3FAD-F878-7FB7DE02157D";
createNode vectorProduct -n "wrist_x_vec";
	rename -uid "769F347C-446C-7C50-556A-93B88812F933";
	setAttr ".op" 0;
	setAttr ".i2" -type "float3" 12.392784 10.002784 32.154369 ;
	setAttr ".no" yes;
createNode multiplyDivide -n "wrist2F_toe_vec_rvsMULT";
	rename -uid "E4ED13E8-45DC-7E24-DFF2-B4B4E76C3AB8";
createNode plusMinusAverage -n "wrist2F_toe_vec";
	rename -uid "8ECD8815-4BA5-A422-B5CE-3C8257446DB3";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_F_toe_DCMX";
	rename -uid "E0A066B0-4895-56A7-EF7C-2DAFE09CFB58";
createNode vectorProduct -n "wrist_y_vec";
	rename -uid "E3CA5492-4888-1A93-04EB-0DAED5B0B404";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "wrist2elbow_vec_rvsMULT";
	rename -uid "F583D160-4E94-9FC8-F67E-AFA6ADDEFC9E";
createNode plusMinusAverage -n "wrist2elbow_vec";
	rename -uid "206C6FE2-42F0-01FB-5809-A2AE455F4B8F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "wrist_z_vec";
	rename -uid "254A7073-4F8A-E7F0-13D6-7198291D8D4E";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_F_toe2fit_init_DCMX";
	rename -uid "ED436DB6-4266-AE42-AAFB-5C93D2E6FCC7";
createNode multMatrix -n "fit_F_toe2fit_init_MTMX";
	rename -uid "5D40BEA1-4790-4AE2-F93D-F2A5C5A7EC1C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_arm_space2temp_JNT_DCMX";
	rename -uid "38D46014-46D2-818E-9E33-889038FEE64C";
createNode multMatrix -n "fit_arm_space2temp_JNT_MTMX";
	rename -uid "D5B5E490-4F0E-DEC6-61C9-AE89AE257734";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_shoulder2temp_JNT_DCMX";
	rename -uid "F080135E-4872-E815-D020-F8BE190C0DF0";
createNode multMatrix -n "fit_init_shoulder2temp_JNT_MTMX";
	rename -uid "60BC98CD-4C4E-05F9-C1BD-55B42DD5B83B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_elbow2temp_elbow_DCMX";
	rename -uid "672188B4-4776-67D6-AA7D-6B9950AE039A";
createNode multMatrix -n "fit_init_elbow2temp_elbow_MTMX";
	rename -uid "34885C88-4B8E-EC6F-49DA-978B8C4883A1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_wrist2fit_init_DCMX";
	rename -uid "703B1BD7-4C6F-EBFD-7A58-75B21B8D4D3A";
createNode multMatrix -n "fit_init_wrist2fit_init_MTMX";
	rename -uid "E7AC507A-4414-14D8-4388-BDA02B6C1B3A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_init_F_toe2temp_JNT_DCMX";
	rename -uid "B8108A2B-4830-27A8-FF00-DD919F07C7FA";
createNode multMatrix -n "fit_init_F_toe2temp_JNT_MTMX";
	rename -uid "452B2059-4E9C-01DE-92DF-AFA0A348CCD8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "mir_offset_DCMX";
	rename -uid "EB5B3F7E-4515-CF6D-1FA5-31BC7214E355";
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
connectAttr "temp_F_toe.tempJoints" "fit_arm.tempJoints" -na;
connectAttr "arm_mirror_COND.ocr" "fit_arm_GRP.sx";
connectAttr "fit_scapula.t" "fit_arm_space.t";
connectAttr "fit_scapula.r" "fit_arm_space.r";
connectAttr "fit_scapula.s" "fit_arm_space.s";
connectAttr "fit_arm_space2fir_init_DCMX.ot" "fit_init_scapula.t";
connectAttr "fit_arm_space2fir_init_DCMX.or" "fit_init_scapula.r";
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
connectAttr "fit_F_toe2fit_init_DCMX.ot" "fit_init_F_toe.t";
connectAttr "fit_F_toe2fit_init_DCMX.os" "fit_init_F_toe.s";
connectAttr "fit_F_toe2fit_init_DCMX.osh" "fit_init_F_toe.sh";
connectAttr "fit_arm_space2temp_JNT_DCMX.ot" "temp_scapula.t";
connectAttr "fit_arm_space2temp_JNT_DCMX.or" "temp_scapula.jo";
connectAttr "fit_init_shoulder2temp_JNT_DCMX.ot" "temp_shoulder.t";
connectAttr "fit_init_shoulder2temp_JNT_DCMX.or" "temp_shoulder.jo";
connectAttr "temp_scapula.s" "temp_shoulder.is";
connectAttr "fit_init_shoulder.s" "temp_shoulder.s";
connectAttr "fit_init_elbow2temp_elbow_DCMX.ot" "temp_elbow.t";
connectAttr "fit_init_elbow2temp_elbow_DCMX.or" "temp_elbow.jo";
connectAttr "fit_init_elbow.s" "temp_elbow.s";
connectAttr "fit_init_wrist2fit_init_DCMX.ot" "temp_wrist.t";
connectAttr "fit_init_wrist2fit_init_DCMX.or" "temp_wrist.jo";
connectAttr "temp_elbow.s" "temp_wrist.is";
connectAttr "fit_init_wrist.s" "temp_wrist.s";
connectAttr "temp_wrist.s" "temp_F_toe.is";
connectAttr "fit_init_F_toe2temp_JNT_DCMX.ot" "temp_F_toe.t";
connectAttr "fit_init_F_toe2temp_JNT_DCMX.or" "temp_F_toe.jo";
connectAttr "fit_arm.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_arm_GRP.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_scapula.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_arm_space.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_shoulder.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_elbow.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_wrist.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_F_toe.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_init_scapula.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_init_shoulder.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_init_elbow.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_init_wrist.iog" "fit_arm_SET.dsm" -na;
connectAttr "fit_init_F_toe.iog" "fit_arm_SET.dsm" -na;
connectAttr "temp_arm_GRP.iog" "fit_arm_SET.dsm" -na;
connectAttr "temp_scapula.iog" "fit_arm_SET.dsm" -na;
connectAttr "temp_shoulder.iog" "fit_arm_SET.dsm" -na;
connectAttr "temp_elbow.iog" "fit_arm_SET.dsm" -na;
connectAttr "temp_wrist.iog" "fit_arm_SET.dsm" -na;
connectAttr "temp_F_toe.iog" "fit_arm_SET.dsm" -na;
connectAttr "arm_mirror_COND.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow_aligned_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_arm_space2fir_init_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_arm_space2temp_JNT_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_elbow_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_F_toe2fit_init_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_F_toe_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_elbow2temp_elbow_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_F_toe2temp_JNT_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_shoulder2temp_JNT_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_wrist2fit_init_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_shoulder_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_wrist_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "mir_offset_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder_aligned_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist_aligned_init_DCMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow_aligned_FBFM.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder_aligned_FBFM.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist_aligned_FBFM.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow_aligned_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_arm_space2fir_init_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_arm_space2temp_JNT_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_F_toe2fit_init_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_elbow2temp_elbow_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_F_toe2temp_JNT_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_shoulder2temp_JNT_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_init_wrist2fit_init_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder_aligned_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist_aligned_init_MTMX.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow2shoulder_vec_rvsMULT.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow2wrist_vec_rvsMULT.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder2elbow_vec_rvsMULT.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder2wrist_vec_rvsMULT.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist2elbow_vec_rvsMULT.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist2F_toe_vec_rvsMULT.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow2shoulder_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow2wrist_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder2elbow_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder2wrist_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist2elbow_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist2F_toe_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow_x_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow_y_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "elbow_z_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder_x_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder_y_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "shoulder_z_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist_x_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist_y_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "wrist_z_vec.msg" "fit_arm_SET.dnsm" -na;
connectAttr "fit_arm.mirror" "arm_mirror_COND.ft";
connectAttr "fit_arm.rightDirect" "arm_mirror_COND.ct";
connectAttr "fit_arm.leftDirect" "arm_mirror_COND.cf";
connectAttr "fit_arm_space2fir_init_MTMX.o" "fit_arm_space2fir_init_DCMX.imat";
connectAttr "fit_arm_space.wm" "fit_arm_space2fir_init_MTMX.i[0]";
connectAttr "fit_arm.wim" "fit_arm_space2fir_init_MTMX.i[1]";
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
connectAttr "arm_mirror_COND.oc" "shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_elbow_DCMX.ot" "shoulder2elbow_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2elbow_vec.i3[1]";
connectAttr "fit_elbow.wm" "fit_elbow_DCMX.imat";
connectAttr "fit_shoulder.wm" "fit_shoulder_DCMX.imat";
connectAttr "shoulder2wrist_vec_rvsMULT.o" "shoulder_y_vec.i1";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_y_vec.i2";
connectAttr "shoulder2wrist_vec.o3" "shoulder2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "shoulder2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "shoulder2wrist_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2wrist_vec.i3[1]";
connectAttr "fit_wrist.wm" "fit_wrist_DCMX.imat";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_z_vec.i1";
connectAttr "shoulder_y_vec.o" "shoulder_z_vec.i2";
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
connectAttr "arm_mirror_COND.oc" "elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "elbow2wrist_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2wrist_vec.i3[1]";
connectAttr "elbow2shoulder_vec_rvsMULT.o" "elbow_y_vec.i1";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_y_vec.i2";
connectAttr "elbow2shoulder_vec.o3" "elbow2shoulder_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "elbow2shoulder_vec_rvsMULT.i2";
connectAttr "fit_shoulder_DCMX.ot" "elbow2shoulder_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2shoulder_vec.i3[1]";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_z_vec.i1";
connectAttr "elbow_y_vec.o" "elbow_z_vec.i2";
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
connectAttr "arm_mirror_COND.oc" "wrist2F_toe_vec_rvsMULT.i2";
connectAttr "fit_F_toe_DCMX.ot" "wrist2F_toe_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "wrist2F_toe_vec.i3[1]";
connectAttr "fit_F_toe.wm" "fit_F_toe_DCMX.imat";
connectAttr "wrist2elbow_vec_rvsMULT.o" "wrist_y_vec.i1";
connectAttr "wrist2F_toe_vec_rvsMULT.o" "wrist_y_vec.i2";
connectAttr "wrist2elbow_vec.o3" "wrist2elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "wrist2elbow_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "wrist2elbow_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "wrist2elbow_vec.i3[1]";
connectAttr "wrist2F_toe_vec_rvsMULT.o" "wrist_z_vec.i1";
connectAttr "wrist_y_vec.o" "wrist_z_vec.i2";
connectAttr "fit_F_toe2fit_init_MTMX.o" "fit_F_toe2fit_init_DCMX.imat";
connectAttr "fit_F_toe.wm" "fit_F_toe2fit_init_MTMX.i[0]";
connectAttr "fit_init_wrist.wim" "fit_F_toe2fit_init_MTMX.i[1]";
connectAttr "fit_arm_space2temp_JNT_MTMX.o" "fit_arm_space2temp_JNT_DCMX.imat";
connectAttr "fit_arm_space.wm" "fit_arm_space2temp_JNT_MTMX.i[0]";
connectAttr "temp_arm_GRP.wim" "fit_arm_space2temp_JNT_MTMX.i[1]";
connectAttr "fit_init_shoulder2temp_JNT_MTMX.o" "fit_init_shoulder2temp_JNT_DCMX.imat"
		;
connectAttr "fit_init_shoulder.wm" "fit_init_shoulder2temp_JNT_MTMX.i[0]";
connectAttr "temp_scapula.wim" "fit_init_shoulder2temp_JNT_MTMX.i[1]";
connectAttr "fit_init_elbow2temp_elbow_MTMX.o" "fit_init_elbow2temp_elbow_DCMX.imat"
		;
connectAttr "fit_init_elbow.wm" "fit_init_elbow2temp_elbow_MTMX.i[0]";
connectAttr "temp_shoulder.wim" "fit_init_elbow2temp_elbow_MTMX.i[1]";
connectAttr "fit_init_wrist2fit_init_MTMX.o" "fit_init_wrist2fit_init_DCMX.imat"
		;
connectAttr "fit_init_wrist.wm" "fit_init_wrist2fit_init_MTMX.i[0]";
connectAttr "temp_elbow.wim" "fit_init_wrist2fit_init_MTMX.i[1]";
connectAttr "fit_init_F_toe2temp_JNT_MTMX.o" "fit_init_F_toe2temp_JNT_DCMX.imat"
		;
connectAttr "fit_init_F_toe.wm" "fit_init_F_toe2temp_JNT_MTMX.i[0]";
connectAttr "temp_wrist.wim" "fit_init_F_toe2temp_JNT_MTMX.i[1]";
connectAttr "fit_arm.offsetMir" "mir_offset_DCMX.imat";
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
connectAttr "fit_init_shoulder2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_init_shoulder2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_init_elbow2temp_elbow_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_init_elbow2temp_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "elbow_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space2fir_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_arm_space2fir_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
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
connectAttr "fit_F_toe2fit_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_toe2fit_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_init_wrist2fit_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_wrist2fit_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_F_toe2temp_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_init_F_toe2temp_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arm_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
// End of fit_quadruped_arm.ma
