//Maya ASCII 2019 scene
//Name: fit_q_arm.ma
//Last modified: Fri, Jun 18, 2021 12:03:26 PM
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
	rename -uid "7E94EDF9-4A3E-A71A-3F2C-89AF4CF6F2D3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 187.06194067413279 41.094804182483614 10.054557315231397 ;
	setAttr ".r" -type "double3" -4.5383527296027335 79.399999999999821 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "41A317AC-4D14-CA0D-63CF-148255F4DCA1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 197.44997043766529;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "8E7D322C-4305-F997-4672-32B2B1C8E146";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "791B9178-4526-DB39-F7A2-E1AEE35A2075";
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
	rename -uid "ACC24067-423C-500F-525B-B5B6EBB7841E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DC3C1175-4923-6C65-91B2-9CBCFF56A343";
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
	rename -uid "B37ACBE8-4163-AD33-85C8-E78BCD0F174A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1078D9CD-4DCD-55FE-7234-A29F0581F28C";
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
createNode transform -n "fit_arm";
	rename -uid "747AA247-4260-5B63-A997-B4B04E184014";
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
createNode transform -n "fit_arm_GRP" -p "fit_arm";
	rename -uid "AB42B763-4866-088A-2AD8-02814ED6D69D";
createNode transform -n "fit_scapula" -p "fit_arm_GRP";
	rename -uid "CF8F1A2D-4B60-1029-0ED5-B1AEFEFDCA6F";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_scapulaShape" -p "fit_scapula";
	rename -uid "004BF1E3-4074-E2A7-B54D-6E982520285B";
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
	rename -uid "5E701DFC-4AB6-B8FE-8FBA-2B9DFC3631CE";
createNode transform -n "fit_shoulder" -p "fit_arm_space";
	rename -uid "1B8F68D2-445F-F5C6-E5D3-81B239446BDC";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1.8925676345825195 -8.7011337280273438 4.9459066390991211 ;
createNode nurbsCurve -n "fit_shoulderShape" -p "fit_shoulder";
	rename -uid "8D928122-488A-830D-E37C-D99F50084304";
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
createNode transform -n "fit_B_elbow" -p "fit_shoulder";
	rename -uid "6574E360-429C-3851-B062-998B94A03129";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -0.0094790458679199219 -9.0674934387207031 -4.7627124786376953 ;
createNode nurbsCurve -n "fit_B_elbowShape" -p "fit_B_elbow";
	rename -uid "04159FE7-4E1C-7476-E922-5EB3E7036ECC";
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
createNode transform -n "fit_F_elbow" -p "fit_B_elbow";
	rename -uid "A2EFB338-494B-7C1F-3643-898DB560E560";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.064644813537597656 -15.753054141998291 1.7440681457519531 ;
createNode nurbsCurve -n "fit_F_elbowShape" -p "fit_F_elbow";
	rename -uid "31722786-4060-DA7D-C772-44AA6D0EB62C";
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
createNode transform -n "fit_wrist" -p "fit_F_elbow";
	rename -uid "27EBAA63-44B7-9F6E-4699-AB981120B66F";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.018614768981933594 -4.5795176029205322 -0.004486083984375 ;
createNode nurbsCurve -n "fit_wristShape" -p "fit_wrist";
	rename -uid "0571156C-4644-5F44-DE7D-C88D263B59F0";
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
createNode transform -n "fit_toe" -p "fit_wrist";
	rename -uid "03528A0C-4199-5DD0-DF28-65952AAF620D";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -1.4260031359391934 1.5508505321576038 ;
createNode nurbsCurve -n "fit_toeShape" -p "fit_toe";
	rename -uid "8A657996-44AD-8E6A-FCE5-269E2C33637D";
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
createNode transform -n "fit_tiptoe" -p "fit_toe";
	rename -uid "BA52D819-4F94-7286-5A52-D68697AA0FDF";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -1.2856298310560463 3.1793042105767029 ;
createNode nurbsCurve -n "fit_tiptoeShape" -p "fit_tiptoe";
	rename -uid "CDC57CB0-47AC-A3C5-45A1-5986DFCFC4F9";
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
createNode transform -n "init_scapula" -p "fit_arm";
	rename -uid "DA280FC1-435E-1378-8347-D9816009503D";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_shoulder" -p "init_scapula";
	rename -uid "11BD97E0-4222-F8DB-12B1-A7828369CE85";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_B_elbow" -p "init_shoulder";
	rename -uid "C38EBEB2-415B-36C7-CC45-5BBA2593E075";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_F_elbow" -p "init_B_elbow";
	rename -uid "96442C68-4247-8ED1-8BA9-D4AA6CA64A76";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_wrist" -p "init_F_elbow";
	rename -uid "7C8649D0-4ACE-1121-8A10-B68FDF7B75BD";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".sh" -type "double3" 4.0300449670852498e-10 0 0 ;
createNode transform -n "init_toe" -p "init_wrist";
	rename -uid "B103D080-4DB9-E2A4-8EF3-419175709C47";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_tiptoe" -p "init_toe";
	rename -uid "7966CF6A-481D-2265-535E-4FAA05953536";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_arm_GRP" -p "fit_arm";
	rename -uid "DD96B517-4C85-7BA5-5A25-73AF6A22A890";
createNode joint -n "temp_scapula" -p "temp_arm_GRP";
	rename -uid "D22C4907-49CF-03A1-D44B-6A860DCB4A54";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_shoulder" -p "temp_scapula";
	rename -uid "6EC26A51-4D64-DD31-9F51-8E8175546B73";
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
createNode joint -n "temp_B_elbow" -p "temp_shoulder";
	rename -uid "6B89B839-43D9-A199-5F44-909B043F6DAB";
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
createNode joint -n "temp_F_elbow" -p "temp_B_elbow";
	rename -uid "FCEC265B-4337-D445-CC13-1986B42227B8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_wrist" -p "temp_F_elbow";
	rename -uid "B3253A8E-4A08-FBC1-76EB-90948324C4B2";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_toe" -p "temp_wrist";
	rename -uid "2355BEF8-4B71-5549-25AD-A68F589F931D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_tiptoe" -p "temp_toe";
	rename -uid "83A54AB1-4E6E-CB58-3881-4382A676B0C1";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "25D1FDE4-4B7C-34EF-D1C6-458A5BAB963E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "4BF2D47F-4728-C867-F7CA-068504E7EBB0";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "88C4F766-4CD4-7A91-6866-1BBE032F39F7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FF8648DA-42CC-FF7C-4F4D-B0A69C210CD0";
createNode displayLayerManager -n "layerManager";
	rename -uid "F0F1C519-410C-CFEA-1C75-73BFF65EFDDE";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "09BBE578-4CAE-981B-7F17-5E8CD3295713";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AE97162A-4013-39AD-F136-01B728AFC51C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "37D0CFB8-480D-527F-278E-2C922C550A32";
	setAttr ".g" yes;
createNode condition -n "arm_mirror_COND";
	rename -uid "C12AD144-442E-7E1C-A8E7-2DA044134DA0";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_arm_local_DCMX";
	rename -uid "C3424ACA-4615-2007-81AD-BAB1EB805029";
createNode multMatrix -n "fit_arm_local_MTMX";
	rename -uid "B5243EDD-472E-8AF8-3CC0-889F74E8A87A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_shoulder_aligned_DCMX";
	rename -uid "E53EDC23-40A8-ED20-D432-D78F1E40369C";
createNode multMatrix -n "fit_shoulder_aligned_MTMX";
	rename -uid "26DBA45C-4D59-DD54-272F-7A8F7D4D2C74";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_shoulder_aligned_FBFM";
	rename -uid "3CF7EF3B-40CA-6870-1653-828F6CD3E199";
createNode vectorProduct -n "fit_shoulder_x_vec";
	rename -uid "DECD47F5-4FF2-3151-A4DD-F598C7E5468D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_shoulder2elbow_vec_rvsMULT";
	rename -uid "8D9DC03D-4610-B334-9985-E8BFE3A0076F";
createNode plusMinusAverage -n "fit_shoulder2elbow_vec";
	rename -uid "19BCA874-4327-B9E8-7F1D-26A4E7869596";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_B_elbow_DCMX";
	rename -uid "065D9DCD-4160-0ABB-1779-C586208E7203";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "8EB9FB9A-4F96-3838-A0EA-849ED59594CF";
createNode vectorProduct -n "fit_shoulder_y_vec";
	rename -uid "F2F88CDB-4813-1C0A-8ECD-308F9C882121";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_shoulder2wrist_vec_rvsMULT";
	rename -uid "E563DCF9-4E63-2EE7-E480-EC8D119F5029";
createNode plusMinusAverage -n "fit_shoulder2wrist_vec";
	rename -uid "C8E2C1A2-4448-DF7D-35F0-2D87A73F0C4C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_F_elbow_DCMX";
	rename -uid "0EAC3A66-4122-1664-3AFF-EB8347A49EC0";
createNode vectorProduct -n "fit_shoulder_z_vec";
	rename -uid "72B676FA-4FBC-5367-07B5-939571754FFC";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_B_elbow_aligned_DCMX";
	rename -uid "F3B41471-4E25-5F9B-6C96-C98D9DABE5E6";
createNode multMatrix -n "fit_B_elbow_aligned_MTMX";
	rename -uid "93216230-472A-4750-C33F-6BBFA6E0765D";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_B_elbow_aligned_FBFM";
	rename -uid "8B0E6DB1-452C-ADAA-AA69-0291E73163B6";
createNode vectorProduct -n "fit_B_elbow_x_vec";
	rename -uid "85B0010F-436E-8A81-C699-0789415392CE";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_elbow2F_elbow_vec_rvsMULT";
	rename -uid "715EBFE6-418F-1BC0-8154-B782F973A9FE";
createNode plusMinusAverage -n "fit_B_elbow2F_elbow_vec";
	rename -uid "13179735-40F0-2ADC-9BC8-82A8B97BDE37";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_elbow_y_vec";
	rename -uid "53EE5AB2-41E9-1FC1-AA43-DD8935ED73EA";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_elbow2shoulder_vec_rvsMULT";
	rename -uid "FD285892-4C40-EF89-36BE-C99DAE5BA08D";
createNode plusMinusAverage -n "fit_B_elbow2shoulder_vec";
	rename -uid "FCF34FD4-4F87-F54D-1CAD-4FBECB8E265E";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_elbow_z_vec";
	rename -uid "FFD86F16-40C8-004D-4CDD-7ABD9D10C552";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_F_elbow_aligned_DCMX";
	rename -uid "8F35D889-4C85-6166-1B07-51926E988E0C";
createNode multMatrix -n "fit_F_elbow_aligned_MTMX";
	rename -uid "886A8E65-4FA7-B7C8-1260-C5AF78001650";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_F_elbow_aligned_FBFM";
	rename -uid "4E6755AD-4014-0B30-D599-71A5BDCFDD01";
createNode vectorProduct -n "fit_F_elbow_x_vec";
	rename -uid "6430B46D-4C89-BD7B-73D7-45921B365A96";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_elbow2wrist_vec_rvsMULT";
	rename -uid "4D5AAB96-4F82-C2E2-CC24-B7BAA3E5D85B";
createNode plusMinusAverage -n "fit_F_elbow2wrist_vec";
	rename -uid "8CF31ECE-4B59-3F57-4910-089A67DFBC08";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "AAA131FF-4497-208B-5EE1-43AC33A9CA8E";
createNode vectorProduct -n "fit_F_elbow_y_vec";
	rename -uid "768182F3-41AD-8B20-147B-2EB1962D37E0";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_elbow2B_elbow_vec_rvsMULT";
	rename -uid "2950A58C-49F8-7E04-E351-C0875E34FC3E";
createNode plusMinusAverage -n "fit_F_elbow2B_elbow_vec";
	rename -uid "78A68F2B-4C66-34ED-CB25-1089D7FAC258";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_F_elbow_z_vec";
	rename -uid "A28D7A07-4C70-41E9-EBF2-BFBF7F5C9768";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_arm_space_local_DCMX";
	rename -uid "79E01097-466F-42B2-47F5-4B81DD5AD27E";
createNode multMatrix -n "fit_arm_space_local_MTMX";
	rename -uid "6AAC85E6-4383-B2BF-E6D9-67A4E56CDBA8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_shoulder_local_DCMX";
	rename -uid "038743B6-4C00-035B-2E06-DFB8EA4440DD";
createNode multMatrix -n "init_shoulder_local_MTMX";
	rename -uid "22FE804D-45B6-37F5-8CA7-BA823F79DC7E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_B_elbow_local_DCMX";
	rename -uid "FEC47A85-4D9D-8D28-7A71-B58FEEA93187";
createNode multMatrix -n "init_B_elbow_local_MTMX";
	rename -uid "BD3FC588-4B6E-B8C8-61D0-EBAFF66F92D2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_F_elbow_local_DCMX";
	rename -uid "56E6638A-42F6-4217-8DFE-E38EC71D087A";
createNode multMatrix -n "init_F_elbow_local_MTMX";
	rename -uid "396D98B5-4373-783D-9AF2-DAB82EE36529";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_wrist_local_DCMX";
	rename -uid "90E030E1-489A-90F1-2C37-D48E24AA8820";
createNode multMatrix -n "init_wrist_local_MTMX";
	rename -uid "E2AFC6F3-4245-0D3D-7B19-E5A14BDB4780";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_mir_offset_DCMX";
	rename -uid "F36AB35F-4BB8-BD3B-80D5-CA9EF4964EC9";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EACEBFE9-403E-7D94-679F-1698E86970F4";
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
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1133\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1133\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "04C70617-4C1A-8DA6-A515-93807A9C9F5D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer1";
	rename -uid "2A90ABCC-4DA6-AAC3-3C56-A296037E570F";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode decomposeMatrix -n "fit_toe_DCMX";
	rename -uid "D1BB849D-4C32-ADDF-FD83-239E303AEA94";
createNode decomposeMatrix -n "fit_tiptoe_DCMX";
	rename -uid "1F58A638-451B-A37F-6F90-C09BB6A437E7";
createNode plusMinusAverage -n "fit_wrist2F_toe_vec";
	rename -uid "9C049911-4249-AF9A-6C79-9D928E7E9B41";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "fit_wrist2F_elbow_vec";
	rename -uid "6CE69C4B-409E-BF0B-80EC-DD97B8067FD7";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "fit_wrist2F_elbow_vec_rvsMULT";
	rename -uid "AF2BCEE7-4B76-A3AA-00EF-EBB8FE2D1030";
createNode multiplyDivide -n "fit_wrist2F_toe_vec_rvsMULT";
	rename -uid "43E797F6-469B-7611-AA19-159BB212B55E";
createNode vectorProduct -n "fit_wrist_x_vec";
	rename -uid "3060DFD1-47DF-BCE9-AB6E-04989790AA36";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "fit_wrist_y_vec";
	rename -uid "35D1CE1B-4636-13F5-9E79-F199ADFAC419";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "fit_wrist_z_vec";
	rename -uid "3673B7D6-4621-F859-15F6-FA8AB50BD17E";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "fit_wrist_aligned_FBFM";
	rename -uid "693CDA91-4BB4-ABBA-B02C-F89C14497E12";
createNode multMatrix -n "fit_wrist_aligned_MTMX";
	rename -uid "84A14421-4801-8320-549F-77A0337DA4D1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_wrist_aligned_DCMX";
	rename -uid "9F4F23FB-4960-F4AB-05A0-D5A4A2BE0D35";
createNode vectorProduct -n "fit_toe_z_vec";
	rename -uid "7BF43973-453B-D683-C429-ACB112A1BC4D";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "fit_toe_y_vec";
	rename -uid "F2BEC4CB-4235-8D82-AB00-7A81D7761CED";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_toe2tiptoe_vec_rvsMULT";
	rename -uid "4CD5A2DA-4E06-E7A2-4CE0-A3AAC3B986A7";
createNode fourByFourMatrix -n "fit_toe_aligned_FBFM";
	rename -uid "00948865-4B86-3B5C-369A-C4963EB0CF59";
createNode vectorProduct -n "fit_toe_x_vec";
	rename -uid "FE841143-4D8A-EF2F-35CE-458767ADCE71";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode plusMinusAverage -n "fit_toe2tiptoe_vec";
	rename -uid "6ABB77EC-4013-0D18-A575-569A7F858A73";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "fir_toe2wrist_vec";
	rename -uid "E206992B-4D70-F28C-CE4B-E394E6AA621F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "fir_toe2wrist_vec_rvsMULT";
	rename -uid "51DB7789-4B16-B9C9-C3F1-B1AFA03C33B7";
createNode multMatrix -n "init_toe_local_MTMX";
	rename -uid "780EDC28-4874-E451-2F08-1380F53C5639";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_toe_local_DCMX";
	rename -uid "D700D733-4F2D-8F64-FD22-27B0E2E6B07D";
createNode multMatrix -n "fit_toe_aligned_MTMX";
	rename -uid "E7C4780A-4F51-29EF-8944-4ABC175B5486";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_toe_aligned_DCMX";
	rename -uid "74135190-42B1-4529-FA48-81B1EEA66527";
createNode multMatrix -n "fit_tiptoe_local_MTMX";
	rename -uid "FF87A534-423D-09AF-D10C-2A905438BE3F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_tiptoe_local_DCMX";
	rename -uid "CE2FA521-4A87-5C5E-2557-90B6D59EFEB6";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "3889D3F3-4886-71FD-E893-408B9DEC439F";
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
connectAttr "fit_scapula.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_shoulder.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_B_elbow.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_F_elbow.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_wrist.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_toe.fitControl" "fit_arm.fitControls" -na;
connectAttr "fit_tiptoe.fitControl" "fit_arm.fitControls" -na;
connectAttr "init_scapula.init" "fit_arm.init" -na;
connectAttr "init_shoulder.init" "fit_arm.init" -na;
connectAttr "init_B_elbow.init" "fit_arm.init" -na;
connectAttr "init_F_elbow.init" "fit_arm.init" -na;
connectAttr "init_wrist.init" "fit_arm.init" -na;
connectAttr "init_toe.init" "fit_arm.init" -na;
connectAttr "init_tiptoe.init" "fit_arm.init" -na;
connectAttr "temp_scapula.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_shoulder.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_B_elbow.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_F_elbow.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_wrist.tempJoints" "fit_arm.tempJoints" -na;
connectAttr "temp_toe.tempJoints" "fit_arm.tempJoints" -na;
connectAttr "temp_tiptoe.tempJoints" "fit_arm.tempJoints" -na;
connectAttr "arm_mirror_COND.ocr" "fit_arm_GRP.sx";
connectAttr "fit_scapula.t" "fit_arm_space.t";
connectAttr "fit_scapula.r" "fit_arm_space.r";
connectAttr "fit_scapula.s" "fit_arm_space.s";
connectAttr "fit_arm_local_DCMX.ot" "init_scapula.t";
connectAttr "fit_arm_local_DCMX.or" "init_scapula.r";
connectAttr "fit_arm_space.s" "init_scapula.s";
connectAttr "fit_shoulder_aligned_DCMX.ot" "init_shoulder.t";
connectAttr "fit_shoulder_aligned_DCMX.or" "init_shoulder.r";
connectAttr "fit_shoulder_aligned_DCMX.os" "init_shoulder.s";
connectAttr "fit_shoulder_aligned_DCMX.osh" "init_shoulder.sh";
connectAttr "fit_B_elbow_aligned_DCMX.ot" "init_B_elbow.t";
connectAttr "fit_B_elbow_aligned_DCMX.or" "init_B_elbow.r";
connectAttr "fit_B_elbow_aligned_DCMX.os" "init_B_elbow.s";
connectAttr "fit_B_elbow_aligned_DCMX.osh" "init_B_elbow.sh";
connectAttr "fit_F_elbow_aligned_DCMX.ot" "init_F_elbow.t";
connectAttr "fit_F_elbow_aligned_DCMX.os" "init_F_elbow.s";
connectAttr "fit_F_elbow_aligned_DCMX.or" "init_F_elbow.r";
connectAttr "fit_F_elbow_aligned_DCMX.osh" "init_F_elbow.sh";
connectAttr "fit_wrist_aligned_DCMX.ot" "init_wrist.t";
connectAttr "fit_wrist_aligned_DCMX.os" "init_wrist.s";
connectAttr "fit_wrist_aligned_DCMX.or" "init_wrist.r";
connectAttr "fit_toe_aligned_DCMX.ot" "init_toe.t";
connectAttr "fit_toe_aligned_DCMX.os" "init_toe.s";
connectAttr "fit_toe_aligned_DCMX.or" "init_toe.r";
connectAttr "fit_tiptoe_local_DCMX.ot" "init_tiptoe.t";
connectAttr "fit_tiptoe_local_DCMX.os" "init_tiptoe.s";
connectAttr "fit_tiptoe_local_DCMX.or" "init_tiptoe.r";
connectAttr "arm_mirror_COND.ocb" "temp_arm_GRP.sz";
connectAttr "fit_arm_space_local_DCMX.ot" "temp_scapula.t";
connectAttr "fit_arm_space_local_DCMX.or" "temp_scapula.jo";
connectAttr "init_shoulder_local_DCMX.ot" "temp_shoulder.t";
connectAttr "init_shoulder_local_DCMX.or" "temp_shoulder.jo";
connectAttr "temp_scapula.s" "temp_shoulder.is";
connectAttr "init_shoulder.s" "temp_shoulder.s";
connectAttr "init_B_elbow_local_DCMX.ot" "temp_B_elbow.t";
connectAttr "init_B_elbow_local_DCMX.or" "temp_B_elbow.jo";
connectAttr "init_B_elbow.s" "temp_B_elbow.s";
connectAttr "init_F_elbow_local_DCMX.ot" "temp_F_elbow.t";
connectAttr "init_F_elbow_local_DCMX.or" "temp_F_elbow.jo";
connectAttr "temp_B_elbow.s" "temp_F_elbow.is";
connectAttr "init_F_elbow.s" "temp_F_elbow.s";
connectAttr "temp_F_elbow.s" "temp_wrist.is";
connectAttr "init_wrist_local_DCMX.ot" "temp_wrist.t";
connectAttr "init_wrist_local_DCMX.or" "temp_wrist.jo";
connectAttr "init_wrist.s" "temp_wrist.s";
connectAttr "temp_wrist.s" "temp_toe.is";
connectAttr "init_toe_local_DCMX.ot" "temp_toe.t";
connectAttr "init_toe_local_DCMX.or" "temp_toe.jo";
connectAttr "init_toe.s" "temp_toe.s";
connectAttr "temp_toe.s" "temp_tiptoe.is";
connectAttr "init_tiptoe.t" "temp_tiptoe.t";
connectAttr "init_tiptoe.r" "temp_tiptoe.jo";
connectAttr "init_tiptoe.s" "temp_tiptoe.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_arm.mirror" "arm_mirror_COND.ft";
connectAttr "fit_arm.rightDirect" "arm_mirror_COND.ct";
connectAttr "fit_arm.leftDirect" "arm_mirror_COND.cf";
connectAttr "fit_arm_local_MTMX.o" "fit_arm_local_DCMX.imat";
connectAttr "fit_arm_space.wm" "fit_arm_local_MTMX.i[0]";
connectAttr "fit_arm.wim" "fit_arm_local_MTMX.i[1]";
connectAttr "fit_shoulder_aligned_MTMX.o" "fit_shoulder_aligned_DCMX.imat";
connectAttr "fit_shoulder_aligned_FBFM.o" "fit_shoulder_aligned_MTMX.i[0]";
connectAttr "init_scapula.wim" "fit_shoulder_aligned_MTMX.i[1]";
connectAttr "fit_shoulder_x_vec.ox" "fit_shoulder_aligned_FBFM.i00";
connectAttr "fit_shoulder_x_vec.oy" "fit_shoulder_aligned_FBFM.i01";
connectAttr "fit_shoulder_x_vec.oz" "fit_shoulder_aligned_FBFM.i02";
connectAttr "fit_shoulder_y_vec.ox" "fit_shoulder_aligned_FBFM.i10";
connectAttr "fit_shoulder_y_vec.oy" "fit_shoulder_aligned_FBFM.i11";
connectAttr "fit_shoulder_y_vec.oz" "fit_shoulder_aligned_FBFM.i12";
connectAttr "fit_shoulder_z_vec.oy" "fit_shoulder_aligned_FBFM.i21";
connectAttr "fit_shoulder_z_vec.ox" "fit_shoulder_aligned_FBFM.i20";
connectAttr "fit_shoulder_z_vec.oz" "fit_shoulder_aligned_FBFM.i22";
connectAttr "fit_shoulder_DCMX.otx" "fit_shoulder_aligned_FBFM.i30";
connectAttr "fit_shoulder_DCMX.oty" "fit_shoulder_aligned_FBFM.i31";
connectAttr "fit_shoulder_DCMX.otz" "fit_shoulder_aligned_FBFM.i32";
connectAttr "fit_shoulder2elbow_vec_rvsMULT.o" "fit_shoulder_x_vec.i1";
connectAttr "fit_shoulder2elbow_vec.o3" "fit_shoulder2elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_B_elbow_DCMX.ot" "fit_shoulder2elbow_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "fit_shoulder2elbow_vec.i3[1]";
connectAttr "fit_B_elbow.wm" "fit_B_elbow_DCMX.imat";
connectAttr "fit_shoulder.wm" "fit_shoulder_DCMX.imat";
connectAttr "fit_shoulder2wrist_vec_rvsMULT.o" "fit_shoulder_y_vec.i1";
connectAttr "fit_shoulder2elbow_vec_rvsMULT.o" "fit_shoulder_y_vec.i2";
connectAttr "fit_shoulder2wrist_vec.o3" "fit_shoulder2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_shoulder2wrist_vec_rvsMULT.i2";
connectAttr "fit_F_elbow_DCMX.ot" "fit_shoulder2wrist_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "fit_shoulder2wrist_vec.i3[1]";
connectAttr "fit_F_elbow.wm" "fit_F_elbow_DCMX.imat";
connectAttr "fit_shoulder2elbow_vec_rvsMULT.o" "fit_shoulder_z_vec.i1";
connectAttr "fit_shoulder_y_vec.o" "fit_shoulder_z_vec.i2";
connectAttr "fit_B_elbow_aligned_MTMX.o" "fit_B_elbow_aligned_DCMX.imat";
connectAttr "fit_B_elbow_aligned_FBFM.o" "fit_B_elbow_aligned_MTMX.i[0]";
connectAttr "init_shoulder.wim" "fit_B_elbow_aligned_MTMX.i[1]";
connectAttr "fit_B_elbow_x_vec.ox" "fit_B_elbow_aligned_FBFM.i00";
connectAttr "fit_B_elbow_x_vec.oy" "fit_B_elbow_aligned_FBFM.i01";
connectAttr "fit_B_elbow_x_vec.oz" "fit_B_elbow_aligned_FBFM.i02";
connectAttr "fit_B_elbow_y_vec.ox" "fit_B_elbow_aligned_FBFM.i10";
connectAttr "fit_B_elbow_y_vec.oy" "fit_B_elbow_aligned_FBFM.i11";
connectAttr "fit_B_elbow_y_vec.oz" "fit_B_elbow_aligned_FBFM.i12";
connectAttr "fit_B_elbow_z_vec.ox" "fit_B_elbow_aligned_FBFM.i20";
connectAttr "fit_B_elbow_z_vec.oy" "fit_B_elbow_aligned_FBFM.i21";
connectAttr "fit_B_elbow_z_vec.oz" "fit_B_elbow_aligned_FBFM.i22";
connectAttr "fit_B_elbow_DCMX.otx" "fit_B_elbow_aligned_FBFM.i30";
connectAttr "fit_B_elbow_DCMX.oty" "fit_B_elbow_aligned_FBFM.i31";
connectAttr "fit_B_elbow_DCMX.otz" "fit_B_elbow_aligned_FBFM.i32";
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.o" "fit_B_elbow_x_vec.i1";
connectAttr "fit_B_elbow2F_elbow_vec.o3" "fit_B_elbow2F_elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_B_elbow2F_elbow_vec_rvsMULT.i2";
connectAttr "fit_F_elbow_DCMX.ot" "fit_B_elbow2F_elbow_vec.i3[0]";
connectAttr "fit_B_elbow_DCMX.ot" "fit_B_elbow2F_elbow_vec.i3[1]";
connectAttr "fit_B_elbow2shoulder_vec_rvsMULT.o" "fit_B_elbow_y_vec.i1";
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.o" "fit_B_elbow_y_vec.i2";
connectAttr "fit_B_elbow2shoulder_vec.o3" "fit_B_elbow2shoulder_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_B_elbow2shoulder_vec_rvsMULT.i2";
connectAttr "fit_shoulder_DCMX.ot" "fit_B_elbow2shoulder_vec.i3[0]";
connectAttr "fit_B_elbow_DCMX.ot" "fit_B_elbow2shoulder_vec.i3[1]";
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.o" "fit_B_elbow_z_vec.i1";
connectAttr "fit_B_elbow_y_vec.o" "fit_B_elbow_z_vec.i2";
connectAttr "fit_F_elbow_aligned_MTMX.o" "fit_F_elbow_aligned_DCMX.imat";
connectAttr "fit_F_elbow_aligned_FBFM.o" "fit_F_elbow_aligned_MTMX.i[0]";
connectAttr "init_B_elbow.wim" "fit_F_elbow_aligned_MTMX.i[1]";
connectAttr "fit_F_elbow_x_vec.ox" "fit_F_elbow_aligned_FBFM.i00";
connectAttr "fit_F_elbow_x_vec.oy" "fit_F_elbow_aligned_FBFM.i01";
connectAttr "fit_F_elbow_x_vec.oz" "fit_F_elbow_aligned_FBFM.i02";
connectAttr "fit_F_elbow_y_vec.ox" "fit_F_elbow_aligned_FBFM.i10";
connectAttr "fit_F_elbow_y_vec.oy" "fit_F_elbow_aligned_FBFM.i11";
connectAttr "fit_F_elbow_y_vec.oz" "fit_F_elbow_aligned_FBFM.i12";
connectAttr "fit_F_elbow_z_vec.ox" "fit_F_elbow_aligned_FBFM.i20";
connectAttr "fit_F_elbow_z_vec.oy" "fit_F_elbow_aligned_FBFM.i21";
connectAttr "fit_F_elbow_z_vec.oz" "fit_F_elbow_aligned_FBFM.i22";
connectAttr "fit_F_elbow_DCMX.otx" "fit_F_elbow_aligned_FBFM.i30";
connectAttr "fit_F_elbow_DCMX.oty" "fit_F_elbow_aligned_FBFM.i31";
connectAttr "fit_F_elbow_DCMX.otz" "fit_F_elbow_aligned_FBFM.i32";
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.o" "fit_F_elbow_x_vec.i1";
connectAttr "fit_F_elbow2wrist_vec.o3" "fit_F_elbow2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_F_elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "fit_F_elbow2wrist_vec.i3[0]";
connectAttr "fit_F_elbow_DCMX.ot" "fit_F_elbow2wrist_vec.i3[1]";
connectAttr "fit_wrist.wm" "fit_wrist_DCMX.imat";
connectAttr "fit_F_elbow2B_elbow_vec_rvsMULT.o" "fit_F_elbow_y_vec.i1";
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.o" "fit_F_elbow_y_vec.i2";
connectAttr "fit_F_elbow2B_elbow_vec.o3" "fit_F_elbow2B_elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_F_elbow2B_elbow_vec_rvsMULT.i2";
connectAttr "fit_F_elbow_DCMX.ot" "fit_F_elbow2B_elbow_vec.i3[0]";
connectAttr "fit_B_elbow_DCMX.ot" "fit_F_elbow2B_elbow_vec.i3[1]";
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.o" "fit_F_elbow_z_vec.i1";
connectAttr "fit_F_elbow_y_vec.o" "fit_F_elbow_z_vec.i2";
connectAttr "fit_arm_space_local_MTMX.o" "fit_arm_space_local_DCMX.imat";
connectAttr "fit_arm_space.wm" "fit_arm_space_local_MTMX.i[0]";
connectAttr "temp_arm_GRP.wim" "fit_arm_space_local_MTMX.i[1]";
connectAttr "init_shoulder_local_MTMX.o" "init_shoulder_local_DCMX.imat";
connectAttr "init_shoulder.wm" "init_shoulder_local_MTMX.i[0]";
connectAttr "temp_scapula.wim" "init_shoulder_local_MTMX.i[1]";
connectAttr "init_B_elbow_local_MTMX.o" "init_B_elbow_local_DCMX.imat";
connectAttr "init_B_elbow.wm" "init_B_elbow_local_MTMX.i[0]";
connectAttr "temp_shoulder.wim" "init_B_elbow_local_MTMX.i[1]";
connectAttr "init_F_elbow_local_MTMX.o" "init_F_elbow_local_DCMX.imat";
connectAttr "init_F_elbow.wm" "init_F_elbow_local_MTMX.i[0]";
connectAttr "temp_B_elbow.wim" "init_F_elbow_local_MTMX.i[1]";
connectAttr "init_wrist_local_MTMX.o" "init_wrist_local_DCMX.imat";
connectAttr "init_wrist.wm" "init_wrist_local_MTMX.i[0]";
connectAttr "temp_F_elbow.wim" "init_wrist_local_MTMX.i[1]";
connectAttr "fit_arm.offsetMir" "fit_mir_offset_DCMX.imat";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "fit_toe.wm" "fit_toe_DCMX.imat";
connectAttr "fit_tiptoe.wm" "fit_tiptoe_DCMX.imat";
connectAttr "fit_toe_DCMX.ot" "fit_wrist2F_toe_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "fit_wrist2F_toe_vec.i3[1]";
connectAttr "fit_F_elbow_DCMX.ot" "fit_wrist2F_elbow_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "fit_wrist2F_elbow_vec.i3[1]";
connectAttr "fit_wrist2F_elbow_vec.o3" "fit_wrist2F_elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_wrist2F_elbow_vec_rvsMULT.i2";
connectAttr "fit_wrist2F_toe_vec.o3" "fit_wrist2F_toe_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_wrist2F_toe_vec_rvsMULT.i2";
connectAttr "fit_wrist2F_toe_vec_rvsMULT.o" "fit_wrist_x_vec.i1";
connectAttr "fit_wrist2F_elbow_vec_rvsMULT.o" "fit_wrist_y_vec.i1";
connectAttr "fit_wrist2F_toe_vec_rvsMULT.o" "fit_wrist_y_vec.i2";
connectAttr "fit_wrist2F_toe_vec_rvsMULT.o" "fit_wrist_z_vec.i1";
connectAttr "fit_wrist_y_vec.o" "fit_wrist_z_vec.i2";
connectAttr "fit_wrist_x_vec.ox" "fit_wrist_aligned_FBFM.i00";
connectAttr "fit_wrist_x_vec.oy" "fit_wrist_aligned_FBFM.i01";
connectAttr "fit_wrist_x_vec.oz" "fit_wrist_aligned_FBFM.i02";
connectAttr "fit_wrist_y_vec.ox" "fit_wrist_aligned_FBFM.i10";
connectAttr "fit_wrist_y_vec.oy" "fit_wrist_aligned_FBFM.i11";
connectAttr "fit_wrist_y_vec.oz" "fit_wrist_aligned_FBFM.i12";
connectAttr "fit_wrist_z_vec.ox" "fit_wrist_aligned_FBFM.i20";
connectAttr "fit_wrist_z_vec.oy" "fit_wrist_aligned_FBFM.i21";
connectAttr "fit_wrist_z_vec.oz" "fit_wrist_aligned_FBFM.i22";
connectAttr "fit_wrist_DCMX.otx" "fit_wrist_aligned_FBFM.i30";
connectAttr "fit_wrist_DCMX.oty" "fit_wrist_aligned_FBFM.i31";
connectAttr "fit_wrist_DCMX.otz" "fit_wrist_aligned_FBFM.i32";
connectAttr "fit_wrist_aligned_FBFM.o" "fit_wrist_aligned_MTMX.i[0]";
connectAttr "init_F_elbow.wim" "fit_wrist_aligned_MTMX.i[1]";
connectAttr "fit_wrist_aligned_MTMX.o" "fit_wrist_aligned_DCMX.imat";
connectAttr "fit_toe2tiptoe_vec_rvsMULT.o" "fit_toe_z_vec.i1";
connectAttr "fit_toe_y_vec.o" "fit_toe_z_vec.i2";
connectAttr "fit_toe2tiptoe_vec_rvsMULT.o" "fit_toe_y_vec.i1";
connectAttr "fir_toe2wrist_vec_rvsMULT.o" "fit_toe_y_vec.i2";
connectAttr "fit_toe2tiptoe_vec.o3" "fit_toe2tiptoe_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_toe2tiptoe_vec_rvsMULT.i2";
connectAttr "fit_toe_x_vec.ox" "fit_toe_aligned_FBFM.i00";
connectAttr "fit_toe_x_vec.oy" "fit_toe_aligned_FBFM.i01";
connectAttr "fit_toe_x_vec.oz" "fit_toe_aligned_FBFM.i02";
connectAttr "fit_toe_y_vec.ox" "fit_toe_aligned_FBFM.i10";
connectAttr "fit_toe_y_vec.oy" "fit_toe_aligned_FBFM.i11";
connectAttr "fit_toe_y_vec.oz" "fit_toe_aligned_FBFM.i12";
connectAttr "fit_toe_z_vec.ox" "fit_toe_aligned_FBFM.i20";
connectAttr "fit_toe_z_vec.oy" "fit_toe_aligned_FBFM.i21";
connectAttr "fit_toe_z_vec.oz" "fit_toe_aligned_FBFM.i22";
connectAttr "fit_toe_DCMX.otx" "fit_toe_aligned_FBFM.i30";
connectAttr "fit_toe_DCMX.oty" "fit_toe_aligned_FBFM.i31";
connectAttr "fit_toe_DCMX.otz" "fit_toe_aligned_FBFM.i32";
connectAttr "fit_toe2tiptoe_vec_rvsMULT.o" "fit_toe_x_vec.i1";
connectAttr "fit_tiptoe_DCMX.ot" "fit_toe2tiptoe_vec.i3[0]";
connectAttr "fit_toe_DCMX.ot" "fit_toe2tiptoe_vec.i3[1]";
connectAttr "fit_toe_DCMX.ot" "fir_toe2wrist_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "fir_toe2wrist_vec.i3[1]";
connectAttr "fir_toe2wrist_vec.o3" "fir_toe2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fir_toe2wrist_vec_rvsMULT.i2";
connectAttr "init_toe.wm" "init_toe_local_MTMX.i[0]";
connectAttr "temp_wrist.wim" "init_toe_local_MTMX.i[1]";
connectAttr "init_toe_local_MTMX.o" "init_toe_local_DCMX.imat";
connectAttr "fit_toe_aligned_FBFM.o" "fit_toe_aligned_MTMX.i[0]";
connectAttr "init_wrist.wim" "fit_toe_aligned_MTMX.i[1]";
connectAttr "fit_toe_aligned_MTMX.o" "fit_toe_aligned_DCMX.imat";
connectAttr "fit_tiptoe.wm" "fit_tiptoe_local_MTMX.i[0]";
connectAttr "temp_toe.wim" "fit_tiptoe_local_MTMX.i[1]";
connectAttr "fit_tiptoe_local_MTMX.o" "fit_tiptoe_local_DCMX.imat";
connectAttr "fit_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow2F_elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_elbow_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_shoulder2elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_B_elbow2shoulder_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_mir_offset_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow2B_elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow2B_elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_F_elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_elbow_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_wrist_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist2F_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist2F_elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist2F_elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_wrist2F_toe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_wrist_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe2tiptoe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe2tiptoe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_toe2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_toe2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_toe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of fit_q_arm.ma
