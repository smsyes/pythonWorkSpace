//Maya ASCII 2019 scene
//Name: parts_arm.ma
//Last modified: Tue, Apr 27, 2021 12:17:16 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "arm_GRP";
	rename -uid "D46347A7-445A-FA50-6456-D3B5877E008D";
	addAttr -ci true -sn "rightDirect" -ln "rightDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "rightDirectX" -ln "rightDirectX" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectY" -ln "rightDirectY" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectZ" -ln "rightDirectZ" -at "double" -p "rightDirect";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "mirror" -ln "mirror" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr -s 4 ".init";
	setAttr -s 104 ".package";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "F869EF64-4EC3-8253-3F1B-A89B0F97E4B5";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".v" no;
createNode transform -n "input_space" -p "arm_motion_GRP";
	rename -uid "1783D627-49AC-23F1-0239-0A9D0D745C52";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".t" -type "double3" 0 0 -3.6977854932234928e-32 ;
createNode transform -n "input_shoulder" -p "input_space";
	rename -uid "75DDB603-4D30-552D-AC5D-2FB8BBC5887A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 14.036242639644414 0 ;
	setAttr ".s" -type "double3" 1.0000000408851277 1 1.0000000408851277 ;
createNode transform -n "input_elbow" -p "input_shoulder";
	rename -uid "A6D3375C-48B4-5318-7A9E-FEA23B69807B";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".t" -type "double3" 4.1231054425877183 0 -1.7796428497529604e-09 ;
	setAttr ".r" -type "double3" 0 -28.072485279288827 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "input_wrist" -p "input_elbow";
	rename -uid "9C0BEC2F-49EB-56F7-6EBE-FEBEF251313A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".t" -type "double3" 4.1231054425877192 0 1.7796426554639311e-09 ;
	setAttr ".s" -type "double3" 0.99999995911487394 1 0.99999995911487394 ;
createNode transform -n "motion_IK_GRP" -p "arm_motion_GRP";
	rename -uid "F5BF13F9-496B-89F8-1BD3-03B0A943E42A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "softIK_input" -p "motion_IK_GRP";
	rename -uid "DE52E17B-4186-CE1B-05AE-C285785F8097";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "armLen" -ln "armLen" -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".softik_ctrl_value";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".armLen";
createNode transform -n "softIK_output" -p "motion_IK_GRP";
	rename -uid "A136ED22-4E62-3C98-7FF1-918D87BB7F20";
	addAttr -ci true -sn "output_softik" -ln "output_softik" -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".output_softik";
createNode transform -n "IK_shoulder_space" -p "motion_IK_GRP";
	rename -uid "09B89B13-492B-FD52-2808-76BD142FC3D0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "1D52A866-4409-943F-44DB-01ADC00C14E7";
	setAttr -k off ".v";
createNode transform -n "IK_CTLaim" -p "IK_shoulder_space";
	rename -uid "E06BE0B5-4EDC-1A39-7451-348F52021159";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode locator -n "IK_CTLaimShape" -p "IK_CTLaim";
	rename -uid "3D549072-4677-0D24-8509-0AA86BF62129";
	setAttr -k off ".v";
createNode transform -n "softIK_output_LOC" -p "IK_CTLaim";
	rename -uid "0949B035-4C91-CDC4-2AD8-77AFA97167F2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode locator -n "softIK_output_LOCShape" -p "softIK_output_LOC";
	rename -uid "A535269F-4D1B-19F4-31F0-FA83F61EBB89";
	setAttr -k off ".v" no;
createNode transform -n "stretch_output_LOC" -p "softIK_output_LOC";
	rename -uid "5D1BFF54-42AF-DECF-F073-82A2A1592510";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "stretch_output_LOCShape" -p "stretch_output_LOC";
	rename -uid "D5ED3641-45E1-F012-3083-0BA127AB0A80";
	setAttr -k off ".v" no;
createNode ikHandle -n "IKHandle4" -p "stretch_output_LOC";
	rename -uid "5121E54B-43DC-86AE-987C-AAB1DBCCF30C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".pv" -type "double3" 2.9999999999999982 -5.5552531578749917e-25 -7 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "IK_CTLaim_aimConstraint" -p "IK_CTLaim";
	rename -uid "76262172-434C-3E73-098A-72835CED9C01";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ik_ctrl_CTLW0" -dv 1 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 0 -42.847913159681212 0 ;
	setAttr -k on ".w0";
createNode transform -n "IK_shoulder_space_upVec" -p "IK_shoulder_space";
	rename -uid "39C0E43D-4CD6-FE3F-9A99-D2BC6EFD6DC2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "5802F061-46BD-82F3-18A7-9383A9F7DBCB";
	setAttr -k off ".v";
createNode transform -n "stretchIK_input" -p "motion_IK_GRP";
	rename -uid "739FB0E6-4581-93F7-D684-B581C23F0AE8";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "uparm_len" -ln "uparm_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "softikLen" -ln "softikLen" -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".uparm_len";
	setAttr -k on ".loarm_len";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".softikLen";
createNode transform -n "stretchIK_output" -p "motion_IK_GRP";
	rename -uid "FA980F9F-4B32-0FD4-5FD7-328305D4C4F3";
	addAttr -ci true -sn "uparm_stretched" -ln "uparm_stretched" -at "double";
	addAttr -ci true -sn "loarm_stretched" -ln "loarm_stretched" -at "double";
	addAttr -ci true -sn "stretched_len" -ln "stretched_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".uparm_stretched";
	setAttr -k on ".loarm_stretched";
	setAttr -k on ".stretched_len";
	setAttr -k on ".stretch_ctrl_value";
createNode transform -n "IK_scapula_space" -p "motion_IK_GRP";
	rename -uid "6FA91DDC-4640-8205-E80B-D1AC55CA62A2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode joint -n "IK_shoulder_JNT" -p "IK_scapula_space";
	rename -uid "0AF39484-48BE-F847-C646-1A9C038E5A0C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".r" -type "double3" -1.4000101194148056e-14 -3.2217937879139246e-05 -1.8608523691676999e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "IK_elbow_JNT" -p "IK_shoulder_JNT";
	rename -uid "29A9246B-47F7-BB60-2257-A5B832F5B53B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".t" -type "double3" 4.123105525970459 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 6.8068876163148245e-05 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "IK_wrist_JNT" -p "IK_elbow_JNT";
	rename -uid "0294FC76-4CE5-C9B1-FC4F-FEA183E9C928";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".t" -type "double3" 4.123105525970459 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "effector4" -p "IK_elbow_JNT";
	rename -uid "042FAE0B-4A2A-ACB7-3700-5E9B74CDABE7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "motion_fk_GRP" -p "arm_motion_GRP";
	rename -uid "70F8EA02-41A7-F776-B087-7B83E09E2313";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "fk_scapula_space" -p "motion_fk_GRP";
	rename -uid "BBB7F654-41EA-FD99-C6B4-B393F987E19F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode joint -n "fk_shoulder_JNT" -p "fk_scapula_space";
	rename -uid "984F1460-4A1A-D6E2-01BB-5897B51663D8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "fk_elbow_JNT" -p "fk_shoulder_JNT";
	rename -uid "E3274E45-4E9C-7C4E-1201-A0BFAF31D5AC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "fk_wrist_JNT" -p "fk_elbow_JNT";
	rename -uid "2766713D-4A3D-277B-5F1B-DC868197A158";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "output_GRP" -p "arm_GRP";
	rename -uid "E436714E-44E9-30DC-F45A-7F8D3A9A56D6";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode joint -n "output_scapula_JNT" -p "output_GRP";
	rename -uid "63150263-4F94-93D9-DBCC-CDA68A3D22E1";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "output_shoulder_JNT" -p "output_scapula_JNT";
	rename -uid "FAAC6A2F-4FD9-0E32-5BE5-61BA408CD219";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "output_elbow_JNT" -p "output_shoulder_JNT";
	rename -uid "9A92450D-475E-A348-B809-C3A56C1A7DF7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "output_wrist_JNT" -p "output_elbow_JNT";
	rename -uid "AC6BEF85-4EC8-F4E3-35B3-E3929A6E3514";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "A7724DA7-4EEB-8840-A8E1-3EA7EA92C2D4";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode transform -n "IK_shoulder_CTL_space" -p "arm_CTL_GRP";
	rename -uid "F506A535-4EC6-52A7-9640-33B9E8BD08E0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode transform -n "IK_elbow_polevector_space" -p "IK_shoulder_CTL_space";
	rename -uid "D031082E-4F1C-6657-7F3E-23A0949EE907";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
createNode transform -n "IK_polevector_space" -p "IK_elbow_polevector_space";
	rename -uid "03425FB4-456C-3A44-D589-74A4975CB0EC";
	addAttr -r false -s false -ci true -m -im false -sn "mirror" -ln "mirror" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".t" -type "double3" -3 -5.5552531578749917e-25 -4 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "IK_polevector" -p "IK_polevector_space";
	rename -uid "3C8D9C5D-4CD1-A33E-46D4-84980C631B30";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode nurbsCurve -n "IK_polevectorShape" -p "IK_polevector";
	rename -uid "5CF30BF5-4683-5401-F906-C48757CDC121";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 1 0
		0 0 0
		-1 0 0
		1 0 0
		0 0 0
		0 -1 0
		0 0 0
		0 0 -1
		0 0 1
		0 0 0
		-9.3711387547656955e-06 5.5552531578749917e-25 5.0000022799043622
		;
createNode transform -n "IK_CTL_space" -p "IK_shoulder_CTL_space";
	rename -uid "58EE6306-4140-3863-5508-D0A838651681";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "IK_CTL" -p "IK_CTL_space";
	rename -uid "ED8551D9-4E84-8C78-5A36-DF8E55EFB22D";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -min 0 -max 10 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2.2884747604976158e-17 0 0 ;
	setAttr -k on ".softIK";
	setAttr -k on ".stretchIK";
createNode nurbsCurve -n "IK_CTLShape" -p "IK_CTL";
	rename -uid "9E8D88B8-4774-7EBA-87B5-A0B9A21C9A09";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1 -1 1
		1 1 1
		1 1 -1
		1 -1 -1
		1 -1 1
		-1 -1 1
		-1 1 1
		-1 1 -1
		-1 -1 -1
		1 -1 -1
		1 1 -1
		-1 1 -1
		-1 -1 -1
		-1 -1 1
		-1 1 1
		1 1 1
		;
createNode transform -n "IK_fk_blend_CTL_space" -p "arm_CTL_GRP";
	rename -uid "BA392C83-4A08-BAA3-0641-099C429BED44";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "IK_fk_blend_CTL" -p "IK_fk_blend_CTL_space";
	rename -uid "9D6D9385-4CF6-EC0F-6FFB-65AAA10391A0";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "IK_fk_blend_CTLShape" -p "IK_fk_blend_CTL";
	rename -uid "5EF3C047-4412-714B-0E1E-F1A3EEAB459D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 0
		0 -6.6613381477509392e-16 -2.0000000000000004
		1 -6.6613381477509392e-16 -3
		0 -1.3322676295501878e-15 -4.0000000000000009
		-1 -6.6613381477509392e-16 -3
		0 -6.6613381477509392e-16 -2.0000000000000004
		0 0.99999999999999911 -3.0000000000000009
		0 -1.3322676295501878e-15 -4.0000000000000009
		0 -1.0000000000000009 -3
		1 -6.6613381477509392e-16 -3
		0 0.99999999999999911 -3.0000000000000009
		-1 -6.6613381477509392e-16 -3
		0 -1.0000000000000009 -3
		0 -6.6613381477509392e-16 -2.0000000000000004
		;
createNode transform -n "scapula_CTL_space" -p "arm_CTL_GRP";
	rename -uid "2C93F1DF-4856-16FF-5D16-339962A37B7E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode transform -n "scapula_CTL" -p "scapula_CTL_space";
	rename -uid "9CB98009-4988-FC0F-FF0E-E59A4AD2655A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "DE3F2E45-4427-5267-6C14-38A6322A2F23";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 26 0 no 3
		31 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		 26 26 26
		29
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0.40000000000000002 1.6000000000000001
		-0.40000000000000002 1.2000000000000004 1.2000000000000004
		-0.40000000000000002 1.6000000000000001 0.40000000000000002
		-0.40000000000000002 1.6000000000000001 -0.40000000000000002
		-0.40000000000000002 1.2000000000000004 -1.2000000000000004
		-0.40000000000000002 0.40000000000000002 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0.40000000000000002 -1.6000000000000001
		0.40000000000000002 1.2000000000000004 -1.2000000000000004
		0.40000000000000002 1.6000000000000001 -0.40000000000000002
		0.40000000000000002 1.6000000000000001 0.40000000000000002
		0.40000000000000002 1.2000000000000004 1.2000000000000004
		0.40000000000000002 0.40000000000000002 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		;
createNode transform -n "fk_shoulder_CTL_space" -p "scapula_CTL";
	rename -uid "3F54E639-4F96-8F80-0F19-15BBA418309B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "fk_shoulder_CTL" -p "fk_shoulder_CTL_space";
	rename -uid "5592885B-4D36-C6E5-9E90-33B4834A2330";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_shoulder_CTLShape" -p "fk_shoulder_CTL";
	rename -uid "920D0730-4C05-F76F-41B0-E58D313D9CE3";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		-4.4408920985006262e-16 1.1081941875543879 -3.2112695072372299e-16
		-3.3306690738754696e-16 0.7836116248912246 0.78361162489122405
		-1.7887962569362486e-16 2.2289823389653639e-16 1.1081941875543881
		0 -0.78361162489122416 0.78361162489122438
		2.2204460492503131e-16 -1.1081941875543884 5.9521325992805852e-16
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		;
createNode transform -n "fk_elbow_CTL_space" -p "fk_shoulder_CTL";
	rename -uid "6CAFD8BA-489E-2852-A7B9-63B0B1295094";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "fk_elbow_CTL" -p "fk_elbow_CTL_space";
	rename -uid "F3DB2F29-4212-2670-6195-998C78E7D46F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_elbow_CTLShape" -p "fk_elbow_CTL";
	rename -uid "ADDCC017-4971-C2FA-9CDD-0ABA6B38365B";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		-2.4606854055573011e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910707351847e-16 0.78361162489122471 0.78361162489122405
		-6.785732323110922e-17 3.3392053635905205e-16 1.1081941875543881
		1.260143602537489e-16 -0.78361162489122405 0.78361162489122438
		2.4606854055573006e-16 -1.1081941875543881 5.9521325992805852e-16
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "fk_wrist_CTL_space" -p "fk_elbow_CTL";
	rename -uid "E677A78F-47C1-E147-2EF1-099C682E6996";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "fk_wrist_CTL" -p "fk_wrist_CTL_space";
	rename -uid "233044FD-4AC9-50D1-DB55-689D62B75CA3";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_wrist_CTLShape" -p "fk_wrist_CTL";
	rename -uid "B67EB583-4C89-7806-7992-83A5709E16AC";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		-2.4606853890136889e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910541915725e-16 0.78361162489122471 0.78361162489122405
		-6.7857321576748008e-17 3.3392053470469082e-16 1.1081941875543881
		1.2601436190811012e-16 -0.78361162489122405 0.78361162489122438
		2.4606854221009129e-16 -1.1081941875543881 5.9521325992805852e-16
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		;
createNode condition -n "ctrllen_COND";
	rename -uid "A833E9D5-4487-201A-EF23-489744BBDC21";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "2BCAE0CE-4EE2-6468-B238-019E61B3C1E0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "23FBF13E-4468-340E-7BAD-978225314B35";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV";
	rename -uid "02C3B07A-43FD-6F97-68D0-C69CB0229BB5";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multiplyDivide -n "power_val";
	rename -uid "CE9BFDBF-4E28-EAFE-BDA7-0480DA03E082";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "negate_val";
	rename -uid "E2FFE857-488D-1811-7335-3887DE9CA019";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "8BA6DF4F-42E3-DCBA-733A-FD834AFDB860";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "ctrlLen_minus_dif";
	rename -uid "1095A918-439D-74E0-D1B6-EDB7C5AD6D67";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "569A46F0-48FE-0222-D8ED-57881C842E49";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "08EB6356-47B8-BF87-FFC2-6C8DA965F9B0";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_COND";
	rename -uid "8914EAD5-40CD-BA68-34F3-7C827454FD39";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen";
	rename -uid "8FA5EF94-4312-F6BE-BAE4-76824F399199";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_plus_stretch";
	rename -uid "02087F94-4DA7-232C-9D09-CE8730DA4E07";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "CD866952-4D9D-0356-F1CA-81896BC3E994";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "F8797532-4332-21E6-E322-72B3FB91783A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "175F5165-4D2E-95EB-3AD0-3BB5B7494998";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "CFFB6023-461E-05B7-65A2-33956090ABF9";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode condition -n "uparm_COND";
	rename -uid "71B7CE78-4D10-4BA9-F8EA-E1B5C5263687";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "uparm_plus_stretch";
	rename -uid "EC23E360-407D-8DEB-F702-6DBA6477262A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "9479367B-48DE-DB56-E4AA-BD87BA88E0EB";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "5E5A6D65-4EE9-B0D3-5985-3787DECDA525";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "00C33175-489C-19E4-41B8-6A93833BB3C3";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode decomposeMatrix -n "input_shoulder_DCMX";
	rename -uid "7A24C706-44B2-A96E-1C6F-54AC93280C76";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode multMatrix -n "input_shoulder_MTMX";
	rename -uid "3775F629-434F-4848-AA1B-90A8798A11AC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_scapula_space_DCMX";
	rename -uid "106ED387-431E-F7CC-285E-92B2AD5B823F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode multMatrix -n "fk_scapula_space_MTMX";
	rename -uid "2D37A132-4AA8-C74B-FD6C-92883AF29B82";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_CTL_space_DCMX";
	rename -uid "E679D5A9-49FD-6E2C-CD77-768E27CD1592";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "IK_CTL_space_MTMX";
	rename -uid "AEB6D182-4328-8B0F-A163-178AC2A80C3B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_elbow_polevector_space_DCMX";
	rename -uid "C9885C0C-4A42-9176-A02F-C6AD6DD5EF45";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
createNode multMatrix -n "IK_elbow_polevector_space_MTMX";
	rename -uid "50F23CB4-4178-1389-A828-1EB2B2CFDBF6";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_fk_blend_CTL_space_DCMX";
	rename -uid "E503358A-418F-2808-FA87-139B00E13392";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "IK_fk_blend_CTL_space_MTMX";
	rename -uid "D58BF364-497A-92E7-FE7D-5FAC5A66DB65";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_polevector_DCMX";
	rename -uid "70F39176-4867-02D8-FE22-7CBFCAAC603C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "IK_polevector_MTMX";
	rename -uid "EAA06244-430B-CC26-E7F8-01A337D3D149";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_scapula_space_DCMX";
	rename -uid "50FC4770-45D5-FA26-C1EF-64B6D161853F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode multMatrix -n "IK_scapula_space_MTMX";
	rename -uid "F89A45A0-46DA-4D64-096D-B298D201C861";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_JNT_DCMX";
	rename -uid "F597ED75-4746-6B5C-CB36-86BFCDABE1FA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode multMatrix -n "IK_shoulder_JNT_MTMX";
	rename -uid "5221D064-4E22-378C-FC21-EE8C0933C8CF";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "output_scapula_JNT_DCMX";
	rename -uid "264BF321-42CD-9695-94A8-D4B105256FDC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode multMatrix -n "output_scapula_JNT_MTMX";
	rename -uid "77689AAB-4DB4-F8B9-E571-45ADACC8C4A7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr -s 2 ".i";
createNode distanceBetween -n "ctrlLen";
	rename -uid "D7F520C9-454C-EB06-2E2D-A89DF76F0492";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "ik_space_local_MTMX";
	rename -uid "6179D2A9-4653-56F1-AFC2-BE8C07359E4A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local_MTMX";
	rename -uid "E6606B15-4885-72CC-5E7D-3B9490177D40";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode distanceBetween -n "loarmLen";
	rename -uid "98709750-4F65-A24C-172D-6BA0324AA91B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "26A10857-4120-1617-7663-96AD6F0AA2D1";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "0169A21A-406D-47DC-8BC8-D7B4B6981D9B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -s 2 ".i";
createNode distanceBetween -n "uparmLen";
	rename -uid "B62DB35E-4129-E1AD-2BF3-3D933D2675C4";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "B4949FB8-4D32-86A6-F221-0D83A3BA3967";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val";
	rename -uid "DF6DD445-4617-B48C-7F59-9EA53BFDE15D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "3714368B-41EE-192B-A88B-55A4981B6CB8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode pairBlend -n "ikfk_blend_elbow";
	rename -uid "A5BC8C75-4E31-D30B-B340-5483F89E8EBC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
createNode pairBlend -n "ikfk_blend_wrist";
	rename -uid "7F5E45BF-4551-8296-8514-B4B9358E9043";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
createNode plusMinusAverage -n "soft_armLen";
	rename -uid "4088852C-403A-4E8F-B461-F7A014FC091E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode reverse -n "FKIK_RVS";
	rename -uid "68BFDB8B-4582-7DA0-6598-7C80AD8AC6E9";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode pairBlend -n "ikfk_blend_shoulder";
	rename -uid "4B5E6EC7-4E80-1E9C-AF63-14BAB9F10563";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "41C741A5-442C-BDCD-24FF-F29E637D5893";
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
	setAttr -s 56 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "input_space.init" "arm_GRP.init" -na;
connectAttr "input_shoulder.init" "arm_GRP.init" -na;
connectAttr "input_elbow.init" "arm_GRP.init" -na;
connectAttr "input_wrist.init" "arm_GRP.init" -na;
connectAttr "IK_polevector_space.mirror" "arm_GRP.mirror" -na;
connectAttr "arm_motion_GRP.package" "arm_GRP.package" -na;
connectAttr "input_space.package" "arm_GRP.package" -na;
connectAttr "input_shoulder.package" "arm_GRP.package" -na;
connectAttr "input_elbow.package" "arm_GRP.package" -na;
connectAttr "input_wrist.package" "arm_GRP.package" -na;
connectAttr "motion_IK_GRP.package" "arm_GRP.package" -na;
connectAttr "softIK_input.package" "arm_GRP.package" -na;
connectAttr "softIK_output.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_space.package" "arm_GRP.package" -na;
connectAttr "IK_CTLaim.package" "arm_GRP.package" -na;
connectAttr "softIK_output_LOC.package" "arm_GRP.package" -na;
connectAttr "stretch_output_LOC.package" "arm_GRP.package" -na;
connectAttr "IKHandle4.package" "arm_GRP.package" -na;
connectAttr "IK_CTLaim_aimConstraint.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_space_upVec.package" "arm_GRP.package" -na;
connectAttr "stretchIK_input.package" "arm_GRP.package" -na;
connectAttr "stretchIK_output.package" "arm_GRP.package" -na;
connectAttr "IK_scapula_space.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_JNT.package" "arm_GRP.package" -na;
connectAttr "IK_elbow_JNT.package" "arm_GRP.package" -na;
connectAttr "IK_wrist_JNT.package" "arm_GRP.package" -na;
connectAttr "effector4.package" "arm_GRP.package" -na;
connectAttr "motion_fk_GRP.package" "arm_GRP.package" -na;
connectAttr "fk_scapula_space.package" "arm_GRP.package" -na;
connectAttr "fk_shoulder_JNT.package" "arm_GRP.package" -na;
connectAttr "fk_elbow_JNT.package" "arm_GRP.package" -na;
connectAttr "fk_wrist_JNT.package" "arm_GRP.package" -na;
connectAttr "output_GRP.package" "arm_GRP.package" -na;
connectAttr "output_scapula_JNT.package" "arm_GRP.package" -na;
connectAttr "output_shoulder_JNT.package" "arm_GRP.package" -na;
connectAttr "output_elbow_JNT.package" "arm_GRP.package" -na;
connectAttr "output_wrist_JNT.package" "arm_GRP.package" -na;
connectAttr "arm_CTL_GRP.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_CTL_space.package" "arm_GRP.package" -na;
connectAttr "IK_elbow_polevector_space.package" "arm_GRP.package" -na;
connectAttr "IK_polevector_space.package" "arm_GRP.package" -na;
connectAttr "IK_polevector.package" "arm_GRP.package" -na;
connectAttr "IK_CTL_space.package" "arm_GRP.package" -na;
connectAttr "IK_CTL.package" "arm_GRP.package" -na;
connectAttr "IK_fk_blend_CTL_space.package" "arm_GRP.package" -na;
connectAttr "IK_fk_blend_CTL.package" "arm_GRP.package" -na;
connectAttr "scapula_CTL_space.package" "arm_GRP.package" -na;
connectAttr "scapula_CTL.package" "arm_GRP.package" -na;
connectAttr "fk_shoulder_CTL_space.package" "arm_GRP.package" -na;
connectAttr "fk_shoulder_CTL.package" "arm_GRP.package" -na;
connectAttr "fk_elbow_CTL_space.package" "arm_GRP.package" -na;
connectAttr "fk_elbow_CTL.package" "arm_GRP.package" -na;
connectAttr "fk_wrist_CTL_space.package" "arm_GRP.package" -na;
connectAttr "fk_wrist_CTL.package" "arm_GRP.package" -na;
connectAttr "ctrllen_COND.package" "arm_GRP.package" -na;
connectAttr "for_zerodivide_COND.package" "arm_GRP.package" -na;
connectAttr "loarm_COND.package" "arm_GRP.package" -na;
connectAttr "softikV_COND.package" "arm_GRP.package" -na;
connectAttr "uparm_COND.package" "arm_GRP.package" -na;
connectAttr "input_shoulder_DCMX.package" "arm_GRP.package" -na;
connectAttr "fk_scapula_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_CTL_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_elbow_polevector_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_fk_blend_CTL_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_polevector_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_scapula_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_JNT_DCMX.package" "arm_GRP.package" -na;
connectAttr "output_scapula_JNT_DCMX.package" "arm_GRP.package" -na;
connectAttr "ctrlLen.package" "arm_GRP.package" -na;
connectAttr "loarmLen.package" "arm_GRP.package" -na;
connectAttr "uparmLen.package" "arm_GRP.package" -na;
connectAttr "fk_scapula_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_CTL_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "ik_ctrl_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_elbow_polevector_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_fk_blend_CTL_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_polevector_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_scapula_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_JNT_MTMX.package" "arm_GRP.package" -na;
connectAttr "ik_space_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_elbow_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_shoulder_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_wrist_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_shoulder_MTMX.package" "arm_GRP.package" -na;
connectAttr "output_scapula_JNT_MTMX.package" "arm_GRP.package" -na;
connectAttr "divide_softikV.package" "arm_GRP.package" -na;
connectAttr "IK_negate_val.package" "arm_GRP.package" -na;
connectAttr "loarm_ratio3.package" "arm_GRP.package" -na;
connectAttr "mult_softikV.package" "arm_GRP.package" -na;
connectAttr "negate_val.package" "arm_GRP.package" -na;
connectAttr "power_val.package" "arm_GRP.package" -na;
connectAttr "stretch_output_mul_ctrlVal.package" "arm_GRP.package" -na;
connectAttr "stretchCtrl_loarm.package" "arm_GRP.package" -na;
connectAttr "stretchCtrl_uparm.package" "arm_GRP.package" -na;
connectAttr "stretched_loarmLen.package" "arm_GRP.package" -na;
connectAttr "stretched_uparmLen.package" "arm_GRP.package" -na;
connectAttr "uparm_ratio.package" "arm_GRP.package" -na;
connectAttr "ikfk_blend_elbow.package" "arm_GRP.package" -na;
connectAttr "ikfk_blend_wrist.package" "arm_GRP.package" -na;
connectAttr "armlen_minus_softikV.package" "arm_GRP.package" -na;
connectAttr "ctrlLen_minus_dif.package" "arm_GRP.package" -na;
connectAttr "loarm_plus_stretch.package" "arm_GRP.package" -na;
connectAttr "result_softik_len.package" "arm_GRP.package" -na;
connectAttr "soft_armLen.package" "arm_GRP.package" -na;
connectAttr "stretch_armLen.package" "arm_GRP.package" -na;
connectAttr "stretchedLen.package" "arm_GRP.package" -na;
connectAttr "uparm_plus_stretch.package" "arm_GRP.package" -na;
connectAttr "FKIK_RVS.package" "arm_GRP.package" -na;
connectAttr "ikfk_blend_shoulder.package" "arm_GRP.package" -na;
connectAttr "input_space.t" "motion_IK_GRP.t";
connectAttr "input_space.r" "motion_IK_GRP.r";
connectAttr "input_space.s" "motion_IK_GRP.s";
connectAttr "IK_negate_val.ox" "softIK_input.softik_ctrl_value";
connectAttr "ctrlLen.d" "softIK_input.ctrlLen";
connectAttr "soft_armLen.o1" "softIK_input.armLen";
connectAttr "ctrllen_COND.ocr" "softIK_output.output_softik";
connectAttr "input_shoulder_DCMX.ot" "IK_shoulder_space.t";
connectAttr "input_shoulder_DCMX.or" "IK_shoulder_space.r";
connectAttr "input_shoulder_DCMX.os" "IK_shoulder_space.s";
connectAttr "IK_CTLaim_aimConstraint.crx" "IK_CTLaim.rx";
connectAttr "IK_CTLaim_aimConstraint.cry" "IK_CTLaim.ry";
connectAttr "IK_CTLaim_aimConstraint.crz" "IK_CTLaim.rz";
connectAttr "softIK_output.output_softik" "softIK_output_LOC.tx";
connectAttr "stretch_output_mul_ctrlVal.ox" "stretch_output_LOC.tx";
connectAttr "IK_shoulder_JNT.msg" "IKHandle4.hsj";
connectAttr "effector4.hp" "IKHandle4.hee";
connectAttr "ikRPsolver.msg" "IKHandle4.hsv";
connectAttr "IK_CTLaim.pim" "IK_CTLaim_aimConstraint.cpim";
connectAttr "IK_CTLaim.t" "IK_CTLaim_aimConstraint.ct";
connectAttr "IK_CTLaim.rp" "IK_CTLaim_aimConstraint.crp";
connectAttr "IK_CTLaim.rpt" "IK_CTLaim_aimConstraint.crt";
connectAttr "IK_CTLaim.ro" "IK_CTLaim_aimConstraint.cro";
connectAttr "IK_CTL.t" "IK_CTLaim_aimConstraint.tg[0].tt";
connectAttr "IK_CTL.rp" "IK_CTLaim_aimConstraint.tg[0].trp";
connectAttr "IK_CTL.rpt" "IK_CTLaim_aimConstraint.tg[0].trt";
connectAttr "IK_CTL.pm" "IK_CTLaim_aimConstraint.tg[0].tpm";
connectAttr "IK_CTLaim_aimConstraint.w0" "IK_CTLaim_aimConstraint.tg[0].tw";
connectAttr "IK_shoulder_space_upVec.wm" "IK_CTLaim_aimConstraint.wum";
connectAttr "IK_negate_val.oy" "stretchIK_input.stretch_ctrl_value";
connectAttr "uparmLen.d" "stretchIK_input.uparm_len";
connectAttr "loarmLen.d" "stretchIK_input.loarm_len";
connectAttr "ctrlLen.d" "stretchIK_input.ctrlLen";
connectAttr "softIK_output.output_softik" "stretchIK_input.softikLen";
connectAttr "uparm_plus_stretch.o1" "stretchIK_output.uparm_stretched";
connectAttr "loarm_plus_stretch.o1" "stretchIK_output.loarm_stretched";
connectAttr "stretchedLen.o1" "stretchIK_output.stretched_len";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchIK_output.stretch_ctrl_value"
		;
connectAttr "IK_scapula_space_DCMX.ot" "IK_scapula_space.t";
connectAttr "IK_scapula_space_DCMX.or" "IK_scapula_space.r";
connectAttr "IK_scapula_space_DCMX.os" "IK_scapula_space.s";
connectAttr "IK_shoulder_JNT_DCMX.ot" "IK_shoulder_JNT.t";
connectAttr "input_shoulder.r" "IK_shoulder_JNT.jo";
connectAttr "IK_shoulder_JNT.s" "IK_elbow_JNT.is";
connectAttr "stretchIK_output.uparm_stretched" "IK_elbow_JNT.tx";
connectAttr "input_elbow.r" "IK_elbow_JNT.jo";
connectAttr "IK_elbow_JNT.s" "IK_wrist_JNT.is";
connectAttr "stretchIK_output.loarm_stretched" "IK_wrist_JNT.tx";
connectAttr "input_wrist.r" "IK_wrist_JNT.jo";
connectAttr "IK_wrist_JNT.tx" "effector4.tx";
connectAttr "IK_wrist_JNT.ty" "effector4.ty";
connectAttr "IK_wrist_JNT.tz" "effector4.tz";
connectAttr "input_space.t" "motion_fk_GRP.t";
connectAttr "input_space.r" "motion_fk_GRP.r";
connectAttr "input_space.s" "motion_fk_GRP.s";
connectAttr "fk_scapula_space_DCMX.ot" "fk_scapula_space.t";
connectAttr "fk_scapula_space_DCMX.or" "fk_scapula_space.r";
connectAttr "fk_scapula_space_DCMX.os" "fk_scapula_space.s";
connectAttr "fk_shoulder_CTL.r" "fk_shoulder_JNT.r";
connectAttr "input_shoulder.t" "fk_shoulder_JNT.t";
connectAttr "input_shoulder.r" "fk_shoulder_JNT.jo";
connectAttr "fk_shoulder_JNT.s" "fk_elbow_JNT.is";
connectAttr "input_elbow.t" "fk_elbow_JNT.t";
connectAttr "fk_elbow_CTL.r" "fk_elbow_JNT.r";
connectAttr "input_elbow.r" "fk_elbow_JNT.jo";
connectAttr "fk_elbow_JNT.s" "fk_wrist_JNT.is";
connectAttr "input_wrist.t" "fk_wrist_JNT.t";
connectAttr "fk_wrist_CTL.r" "fk_wrist_JNT.r";
connectAttr "input_wrist.r" "fk_wrist_JNT.jo";
connectAttr "input_space.t" "output_GRP.t";
connectAttr "input_space.r" "output_GRP.r";
connectAttr "input_space.s" "output_GRP.s";
connectAttr "scapula_CTL.s" "output_scapula_JNT.s";
connectAttr "scapula_CTL.t" "output_scapula_JNT.t";
connectAttr "scapula_CTL.r" "output_scapula_JNT.r";
connectAttr "ikfk_blend_shoulder.ot" "output_shoulder_JNT.t";
connectAttr "ikfk_blend_shoulder.or" "output_shoulder_JNT.r";
connectAttr "input_shoulder.r" "output_shoulder_JNT.jo";
connectAttr "output_scapula_JNT.s" "output_shoulder_JNT.is";
connectAttr "output_shoulder_JNT.s" "output_elbow_JNT.is";
connectAttr "ikfk_blend_elbow.ot" "output_elbow_JNT.t";
connectAttr "ikfk_blend_elbow.or" "output_elbow_JNT.r";
connectAttr "input_elbow.r" "output_elbow_JNT.jo";
connectAttr "output_elbow_JNT.s" "output_wrist_JNT.is";
connectAttr "ikfk_blend_wrist.ot" "output_wrist_JNT.t";
connectAttr "ikfk_blend_wrist.or" "output_wrist_JNT.r";
connectAttr "input_wrist.r" "output_wrist_JNT.jo";
connectAttr "input_space.t" "arm_CTL_GRP.t";
connectAttr "input_space.r" "arm_CTL_GRP.r";
connectAttr "input_space.s" "arm_CTL_GRP.s";
connectAttr "IK_fk_blend_CTL.FK_IK" "IK_shoulder_CTL_space.v";
connectAttr "input_shoulder.t" "IK_shoulder_CTL_space.t";
connectAttr "IK_elbow_polevector_space_DCMX.ot" "IK_elbow_polevector_space.t";
connectAttr "IK_elbow_polevector_space_DCMX.or" "IK_elbow_polevector_space.r";
connectAttr "IK_polevector_DCMX.ot" "IK_polevectorShape.cp[10]";
connectAttr "IK_CTL_space_DCMX.ot" "IK_CTL_space.t";
connectAttr "IK_fk_blend_CTL_space_DCMX.ot" "IK_fk_blend_CTL_space.t";
connectAttr "FKIK_RVS.ox" "fk_shoulder_CTL_space.v";
connectAttr "input_shoulder.t" "fk_shoulder_CTL_space.t";
connectAttr "input_shoulder.r" "fk_shoulder_CTL_space.r";
connectAttr "input_shoulder.s" "fk_shoulder_CTL_space.s";
connectAttr "input_elbow.t" "fk_elbow_CTL_space.t";
connectAttr "input_elbow.r" "fk_elbow_CTL_space.r";
connectAttr "input_elbow.s" "fk_elbow_CTL_space.s";
connectAttr "input_wrist.t" "fk_wrist_CTL_space.t";
connectAttr "input_wrist.r" "fk_wrist_CTL_space.r";
connectAttr "input_wrist.s" "fk_wrist_CTL_space.s";
connectAttr "softikV_COND.ocr" "ctrllen_COND.ctr";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.ft";
connectAttr "armlen_minus_softikV.o1" "ctrllen_COND.st";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.cfr";
connectAttr "softIK_input.softik_ctrl_value" "softikV_COND.ft";
connectAttr "result_softik_len.o1" "softikV_COND.ctr";
connectAttr "softIK_input.armLen" "softikV_COND.cfr";
connectAttr "softIK_input.armLen" "result_softik_len.i1[0]";
connectAttr "mult_softikV.ox" "result_softik_len.i1[1]";
connectAttr "softIK_input.softik_ctrl_value" "mult_softikV.i1x";
connectAttr "power_val.ox" "mult_softikV.i2x";
connectAttr "negate_val.ox" "power_val.i2x";
connectAttr "divide_softikV.ox" "negate_val.i1x";
connectAttr "ctrlLen_minus_dif.o1" "divide_softikV.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_softikV.i2x";
connectAttr "softIK_input.ctrlLen" "ctrlLen_minus_dif.i1[0]";
connectAttr "armlen_minus_softikV.o1" "ctrlLen_minus_dif.i1[1]";
connectAttr "softIK_input.armLen" "armlen_minus_softikV.i1[0]";
connectAttr "softIK_input.softik_ctrl_value" "armlen_minus_softikV.i1[1]";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.ft";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.cfr";
connectAttr "stretchIK_input.ctrlLen" "loarm_COND.ft";
connectAttr "stretch_armLen.o1" "loarm_COND.st";
connectAttr "loarm_plus_stretch.o1" "loarm_COND.ctr";
connectAttr "stretchIK_input.loarm_len" "loarm_COND.cfr";
connectAttr "stretchIK_input.uparm_len" "stretch_armLen.i1[0]";
connectAttr "stretchIK_input.loarm_len" "stretch_armLen.i1[1]";
connectAttr "stretchIK_input.loarm_len" "loarm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch.i1[1]";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_loarm.i2x";
connectAttr "stretchedLen.o1" "stretched_loarmLen.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretchIK_input.ctrlLen" "stretchedLen.i1[0]";
connectAttr "stretchIK_input.softikLen" "stretchedLen.i1[1]";
connectAttr "stretchIK_input.loarm_len" "loarm_ratio3.i1x";
connectAttr "stretch_armLen.o1" "loarm_ratio3.i2x";
connectAttr "stretchIK_input.ctrlLen" "uparm_COND.ft";
connectAttr "stretch_armLen.o1" "uparm_COND.st";
connectAttr "uparm_plus_stretch.o1" "uparm_COND.ctr";
connectAttr "stretchIK_input.uparm_len" "uparm_COND.cfr";
connectAttr "stretchIK_input.uparm_len" "uparm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch.i1[1]";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_uparm.i2x";
connectAttr "stretchedLen.o1" "stretched_uparmLen.i1x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_armLen.o1" "uparm_ratio.i2x";
connectAttr "input_shoulder_MTMX.o" "input_shoulder_DCMX.imat";
connectAttr "input_shoulder.wm" "input_shoulder_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "input_shoulder_MTMX.i[1]";
connectAttr "fk_scapula_space_MTMX.o" "fk_scapula_space_DCMX.imat";
connectAttr "scapula_CTL.wm" "fk_scapula_space_MTMX.i[0]";
connectAttr "fk_scapula_space.pim" "fk_scapula_space_MTMX.i[1]";
connectAttr "IK_CTL_space_MTMX.o" "IK_CTL_space_DCMX.imat";
connectAttr "input_wrist.wm" "IK_CTL_space_MTMX.i[0]";
connectAttr "IK_shoulder_CTL_space.wim" "IK_CTL_space_MTMX.i[1]";
connectAttr "IK_elbow_polevector_space_MTMX.o" "IK_elbow_polevector_space_DCMX.imat"
		;
connectAttr "input_elbow.wm" "IK_elbow_polevector_space_MTMX.i[0]";
connectAttr "IK_shoulder_CTL_space.wim" "IK_elbow_polevector_space_MTMX.i[1]";
connectAttr "IK_fk_blend_CTL_space_MTMX.o" "IK_fk_blend_CTL_space_DCMX.imat";
connectAttr "output_wrist_JNT.wm" "IK_fk_blend_CTL_space_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "IK_fk_blend_CTL_space_MTMX.i[1]";
connectAttr "IK_polevector_MTMX.o" "IK_polevector_DCMX.imat";
connectAttr "output_elbow_JNT.wm" "IK_polevector_MTMX.i[0]";
connectAttr "IK_polevectorShape.pim" "IK_polevector_MTMX.i[1]";
connectAttr "IK_scapula_space_MTMX.o" "IK_scapula_space_DCMX.imat";
connectAttr "scapula_CTL.wm" "IK_scapula_space_MTMX.i[0]";
connectAttr "IK_scapula_space.pim" "IK_scapula_space_MTMX.i[1]";
connectAttr "IK_shoulder_JNT_MTMX.o" "IK_shoulder_JNT_DCMX.imat";
connectAttr "input_shoulder.wm" "IK_shoulder_JNT_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_shoulder_JNT_MTMX.i[1]";
connectAttr "output_scapula_JNT_MTMX.o" "output_scapula_JNT_DCMX.imat";
connectAttr "scapula_CTL.wm" "output_scapula_JNT_MTMX.i[0]";
connectAttr "output_GRP.wm" "output_scapula_JNT_MTMX.i[1]";
connectAttr "ik_space_local_MTMX.o" "ctrlLen.im1";
connectAttr "ik_ctrl_local_MTMX.o" "ctrlLen.im2";
connectAttr "input_shoulder.wm" "ik_space_local_MTMX.i[0]";
connectAttr "input_space.wim" "ik_space_local_MTMX.i[1]";
connectAttr "IK_CTL.wm" "ik_ctrl_local_MTMX.i[0]";
connectAttr "input_space.wim" "ik_ctrl_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "loarmLen.im1";
connectAttr "input_wrist_local_MTMX.o" "loarmLen.im2";
connectAttr "input_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "input_shoulder_local_MTMX.o" "uparmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "uparmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "IK_CTL.softIK" "IK_negate_val.i1x";
connectAttr "IK_CTL.stretchIK" "IK_negate_val.i1y";
connectAttr "stretchIK_output.stretched_len" "stretch_output_mul_ctrlVal.i1x";
connectAttr "stretchIK_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "IK_elbow_JNT.r" "ikfk_blend_elbow.ir2";
connectAttr "fk_elbow_JNT.r" "ikfk_blend_elbow.ir1";
connectAttr "fk_elbow_JNT.t" "ikfk_blend_elbow.it1";
connectAttr "IK_elbow_JNT.t" "ikfk_blend_elbow.it2";
connectAttr "IK_fk_blend_CTL.FK_IK" "ikfk_blend_elbow.w";
connectAttr "IK_wrist_JNT.t" "ikfk_blend_wrist.it2";
connectAttr "IK_wrist_JNT.r" "ikfk_blend_wrist.ir2";
connectAttr "fk_wrist_JNT.t" "ikfk_blend_wrist.it1";
connectAttr "fk_wrist_JNT.r" "ikfk_blend_wrist.ir1";
connectAttr "IK_fk_blend_CTL.FK_IK" "ikfk_blend_wrist.w";
connectAttr "uparmLen.d" "soft_armLen.i1[0]";
connectAttr "loarmLen.d" "soft_armLen.i1[1]";
connectAttr "IK_fk_blend_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "IK_fk_blend_CTL.FK_IK" "ikfk_blend_shoulder.w";
connectAttr "fk_shoulder_JNT.t" "ikfk_blend_shoulder.it1";
connectAttr "IK_shoulder_JNT.t" "ikfk_blend_shoulder.it2";
connectAttr "fk_shoulder_JNT.r" "ikfk_blend_shoulder.ir1";
connectAttr "IK_shoulder_JNT.r" "ikfk_blend_shoulder.ir2";
connectAttr "armlen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minus_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "soft_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_fk_blend_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_fk_blend_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_elbow_polevector_space_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_elbow_polevector_space_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fk_scapula_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_scapula_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_scapula_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_scapula_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "output_scapula_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "output_scapula_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_polevector_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_polevector_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of parts_arm.ma
