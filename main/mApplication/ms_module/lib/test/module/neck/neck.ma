//Maya ASCII 2019 scene
//Name: neck.ma
//Last modified: Fri, Jun 11, 2021 07:10:33 PM
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
	rename -uid "61C2FD73-4A38-094B-1176-0FBB7810E3D7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -92.006562442367141 15.045715500795735 8.0045858202688684 ;
	setAttr ".r" -type "double3" -0.33835272962554747 -84.199999999998667 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C1FB541E-40D9-D717-3CE2-7E99C72E7F6F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 96.724764200685527;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "4702C557-4B5B-C8FB-16D3-C6AF3CB0C558";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D48AEEBF-4375-58C7-D9A1-1FB2829E0A61";
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
	rename -uid "23E6428A-45A3-DC11-D136-C0B8CC3C1D26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "826205EC-47F7-1305-257E-DFB96B79249D";
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
	rename -uid "629FA57E-47B1-48DD-70EA-9B8E57FE54C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1175983298164 7.99017978650381 1.0890951810902516 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F6CEBA4E-4FCD-2D1A-5C46-CC8D297F0202";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1175983298164;
	setAttr ".ow" 37.392267884098665;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 5.933 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "neck_GRP";
	rename -uid "4CE05DE8-4D8C-628A-54BB-77A4E1E88A63";
createNode transform -n "fit_neck_GRP" -p "neck_GRP";
	rename -uid "4C05B652-4825-A22E-1FEF-B5AB8B816209";
createNode transform -n "fit_space" -p "fit_neck_GRP";
	rename -uid "1518B27A-4DC7-3121-0B62-31910CB5F395";
	addAttr -ci true -sn "fitMode" -ln "fitMode" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k on ".fitMode" yes;
createNode locator -n "fit_spaceShape" -p "fit_space";
	rename -uid "2BF45100-49DF-17FD-4E28-13BF153C7122";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "fit_space_GRP" -p "fit_neck_GRP";
	rename -uid "C85B04F8-4B9F-48A0-6FB8-E2BFCDB4F216";
createNode transform -n "fit_root" -p "fit_space_GRP";
	rename -uid "181EF976-478D-1975-E7C0-33BF2C5D94FD";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 5 0 ;
createNode nurbsCurve -n "fit_rootShape" -p "fit_root";
	rename -uid "4B8D4F21-4A68-3E97-4340-239FFB55BAA6";
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
createNode transform -n "fit_neck_01" -p "fit_root";
	rename -uid "5036D15E-4AC9-B009-15E6-B9A77270CFF7";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 4 0 ;
createNode nurbsCurve -n "fit_neck_01Shape" -p "fit_neck_01";
	rename -uid "F09C88F3-4217-F770-5B4F-3283637397EC";
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
createNode transform -n "fit_neckEnd" -p "fit_space_GRP";
	rename -uid "B9885D78-4E71-1F49-301F-FDBF35200C03";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 13 0 ;
createNode nurbsCurve -n "fit_neckEndShape" -p "fit_neckEnd";
	rename -uid "6574732D-40D7-2968-C8E1-A38EA238C1D8";
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
createNode transform -n "IK_space" -p "neck_GRP";
	rename -uid "81C049C4-4BD4-535A-BB1E-A082C4F60471";
createNode transform -n "bezier1" -p "IK_space";
	rename -uid "C9ABC0E5-442C-38F0-147A-84A8CBA1D9CB";
	setAttr ".v" no;
createNode bezierCurve -n "bezierShape1" -p "bezier1";
	rename -uid "FDDDF80C-45AC-31DC-AE16-3E847ED18C65";
	setAttr -k off ".v";
	setAttr -s 4 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0 5 0
		0 9 0
		0 9 0
		0 13 0
		;
createNode transform -n "IK_CTL_space" -p "IK_space";
	rename -uid "AB07B1B9-49E2-6844-BA04-E694A91117A9";
createNode transform -n "M_neck_OS" -p "IK_CTL_space";
	rename -uid "C8C2CB8A-46AC-8A28-39BE-27BE3AED0549";
createNode transform -n "M_neck_CTL" -p "M_neck_OS";
	rename -uid "48993A90-4C68-5950-0275-9F8302F42EC1";
	addAttr -ci true -k true -sn "FK_vis" -ln "FK_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IK_vis" -ln "IK_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "upVec_vis" -ln "upVec_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twist_vis" -ln "twist_vis" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k on ".FK_vis" yes;
	setAttr -k on ".IK_vis" yes;
	setAttr -k on ".upVec_vis" yes;
	setAttr -k on ".twist_vis" yes;
createNode transform -n "IK_neck_OS" -p "M_neck_CTL";
	rename -uid "F7323379-4305-C2B9-441D-CCAB6A28E661";
createNode transform -n "IK_neck_CTL" -p "IK_neck_OS";
	rename -uid "400CB5B5-4235-5620-94E9-89B5E8E107DA";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_neck_CTLShape" -p "IK_neck_CTL";
	rename -uid "5A757FCB-4C95-176D-F7E6-5AA4A1D91609";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "IK_neck_01_OS" -p "M_neck_CTL";
	rename -uid "E85534AB-43C9-2031-B600-7AA43CEEBED6";
createNode transform -n "IK_neck_01_CTL" -p "IK_neck_01_OS";
	rename -uid "E3FFD907-4514-2998-CE3B-1095F8E63F0B";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_neck_01_CTLShape" -p "IK_neck_01_CTL";
	rename -uid "123048F8-442F-D279-1266-18AC65CA920C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "M_neck_CTLShape" -p "M_neck_CTL";
	rename -uid "A4ACE529-4B31-B03D-A4E2-3482C9F844D9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 7.4913271339601097 4.5871148979849805e-16 
		-7.4913271339601133 6.4871601008940362e-16 6.4871601008940362e-16 -10.594336433019951 
		-7.4913271339601097 4.5871148979849814e-16 -7.4913271339601115 -10.594336433019958 
		3.3629552517697639e-32 -5.4921227150737444e-16 -7.4913271339601097 -4.5871148979849814e-16 
		7.4913271339601097 -1.0612419262940688e-15 -6.4871601008940431e-16 10.594336433019958 
		7.4913271339601097 -4.5871148979849814e-16 7.4913271339601115 10.594336433019958 
		-8.8465173248652672e-32 1.4447459187456415e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "upVec_OS" -p "M_neck_OS";
	rename -uid "3B40BC5C-41E0-0C12-3CD7-1E8E6DE57B97";
	setAttr ".t" -type "double3" 0 6 -12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "upVec_CTL" -p "upVec_OS";
	rename -uid "F695E9EB-4767-F3D9-DD6F-70973330D625";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "upVec_CTLShape" -p "upVec_CTL";
	rename -uid "1D6E5222-4A61-080E-6A19-85BDB14A261E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0 2
		0 0 -2
		0 0 0
		0 -2 0
		0 2 0
		0 0 0
		-2 0 0
		2 0 0
		;
createNode transform -n "M_neckEnd_OS" -p "IK_CTL_space";
	rename -uid "83B84899-4C1E-781B-7689-E6A831B0F42A";
createNode transform -n "M_neckEnd_CTL" -p "M_neckEnd_OS";
	rename -uid "8DEBB62D-4B29-0E2F-C281-6D9FE8972F58";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "IK_neckEnd_OS" -p "M_neckEnd_CTL";
	rename -uid "1E7DEA0C-4DAC-26C8-F868-BDB537C8E8BD";
createNode transform -n "IK_neckEnd_CTL" -p "IK_neckEnd_OS";
	rename -uid "81781ECA-4DB5-4A7B-F9BE-6DB55E102C11";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_neckEnd_CTLShape" -p "IK_neckEnd_CTL";
	rename -uid "9B5843F2-40D4-3CE8-0898-CDA42B3F7485";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "M_neckEnd_CTLShape" -p "M_neckEnd_CTL";
	rename -uid "C4062DF7-4603-E43E-C969-E4A82901C744";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.2749387588513343 5.0669386320838284e-16 -8.2749387588513379
		7.1657333332051278e-16 7.1657333332051278e-16 -11.702530620574338
		-8.2749387588513343 5.0669386320838284e-16 -8.2749387588513361
		-11.702530620574347 3.7147288136703665e-32 -6.0666125388262276e-16
		-8.2749387588513343 -5.0669386320838284e-16 8.2749387588513343
		-1.1722504959901011e-15 -7.1657333332051347e-16 11.702530620574347
		8.2749387588513343 -5.0669386320838284e-16 8.2749387588513361
		11.702530620574347 -9.7718852458762772e-32 1.5958699688236374e-15
		8.2749387588513343 5.0669386320838284e-16 -8.2749387588513379
		7.1657333332051278e-16 7.1657333332051278e-16 -11.702530620574338
		-8.2749387588513343 5.0669386320838284e-16 -8.2749387588513361
		;
createNode transform -n "twist_neck_OS" -p "IK_space";
	rename -uid "07929C69-490D-C110-6FC1-54BCA8452D58";
	setAttr -s 2 ".iog";
createNode transform -n "twist_neck_CTL" -p "twist_neck_OS";
	rename -uid "0046F55D-41DF-0D0A-FC2E-2EB461FA23F1";
	addAttr -ci true -k true -sn "end_uvalue" -ln "end_uvalue" -min 0 -max 1 -at "float";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".end_uvalue";
createNode nurbsCurve -n "twist_neck_CTLShape" -p "twist_neck_CTL";
	rename -uid "F70EA4C9-458B-267C-F6B6-AA8ECE64A914";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-5.3290705182007522e-16 0 10.560000228881837
		5.3290705182007522e-16 0 -10.560000228881837
		0 0 0
		10.560000228881837 0 2.6645352591003761e-16
		-10.560000228881837 0 -7.9936057773011293e-16
		;
createNode transform -n "twist_neckEnd_OS" -p "IK_space";
	rename -uid "3B39A1D4-4243-E048-0CDD-B18E003C46F6";
	setAttr -s 2 ".iog";
createNode transform -n "twist_neckEnd_CTL" -p "twist_neckEnd_OS";
	rename -uid "94CB763F-40AF-981E-245C-3F84D574D321";
	addAttr -ci true -k true -sn "end_uvalue" -ln "end_uvalue" -dv 1 -min 0 -max 1 
		-at "float";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".end_uvalue";
createNode nurbsCurve -n "twist_neckEnd_CTLShape" -p "twist_neckEnd_CTL";
	rename -uid "6058C54F-417B-E052-46B3-1E943815B0E8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-5.3290705182007522e-16 0 10.560000228881837
		5.3290705182007522e-16 0 -10.560000228881837
		0 0 0
		10.560000228881837 0 2.6645352591003761e-16
		-10.560000228881837 0 -7.9936057773011293e-16
		;
createNode transform -n "FK_space" -p "neck_GRP";
	rename -uid "CD159E27-4FEC-5B7C-7BC1-CDB354AF8AAE";
createNode transform -n "on_curve_space" -p "FK_space";
	rename -uid "5DCDA0B6-4860-D0C7-77D8-3CB738D57010";
createNode transform -n "init_root_space" -p "on_curve_space";
	rename -uid "A0551634-49A0-0765-6368-70A272255FCE";
	setAttr -s 2 ".iog";
createNode transform -n "twist_root_space" -p "init_root_space";
	rename -uid "553A1468-4AB7-03A4-0BE7-CA9431868DA4";
createNode aimConstraint -n "init_root_space_aimConstraint1" -p "init_root_space";
	rename -uid "5A8F1646-424F-E05B-02F6-D9AEF3B09A48";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineB_spaceW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "init_neck_01_space" -p "on_curve_space";
	rename -uid "03593C3B-4101-6FBD-5D78-2F98C2855738";
createNode transform -n "twist_neck_01_space" -p "init_neck_01_space";
	rename -uid "A13B3781-4973-5EAF-71A1-E1B9D0C548E9";
createNode aimConstraint -n "init_neck_01_space_aimConstraint1" -p "init_neck_01_space";
	rename -uid "FEDA84C0-4334-8F6A-1B7F-D0BDD36E268E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineC_spaceW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "init_neck_02_space" -p "on_curve_space";
	rename -uid "7CF67FF4-476F-1D3C-D3FB-3CB1AFB47E59";
createNode transform -n "twist_neck_02_space" -p "init_neck_02_space";
	rename -uid "DE0EF412-4057-6347-138D-EE935E654731";
createNode aimConstraint -n "init_neck_02_space_aimConstraint1" -p "init_neck_02_space";
	rename -uid "0C3748AF-40EC-7645-CB4E-49B2EB311AA8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "output_chest_end_spaceW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "init_neckEnd_space" -p "on_curve_space";
	rename -uid "D09A460E-4082-111B-D28A-A3847D9B2AF7";
createNode transform -n "twist_neckEnd_space" -p "init_neckEnd_space";
	rename -uid "55DBB04E-4CB8-3EE6-0778-80A66E30992F";
createNode aimConstraint -n "init_neckEnd_space_aimConstraint1" -p "init_neckEnd_space";
	rename -uid "E85CD7AF-49B4-7C78-34ED-1D95D60C680D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spine_02_spaceW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "output_neckEnd_end_space" -p "on_curve_space";
	rename -uid "24512133-4010-9789-F02D-37AF5237A387";
createNode transform -n "FK_scale_space" -p "FK_space";
	rename -uid "22980D94-49A0-11E4-6E17-E9B7B545C1EF";
createNode transform -n "FK_root_local_space" -p "FK_scale_space";
	rename -uid "619946DA-4E2E-E7F2-20C5-BCA1ADB0ECCD";
createNode transform -n "FK_neck_01_local_space" -p "FK_scale_space";
	rename -uid "29E6C8FB-44C4-6D0E-87ED-27962B808FA9";
	setAttr -s 2 ".iog";
createNode transform -n "FK_neck_02_local_space" -p "FK_scale_space";
	rename -uid "346C9BF4-4AD7-AB63-B6D2-72AC1279AFD8";
	setAttr -s 2 ".iog";
createNode transform -n "FK_neckEnd_local_space" -p "FK_scale_space";
	rename -uid "537E81E0-4D07-7347-7116-0DA430D2E16F";
	setAttr -s 2 ".iog";
createNode transform -n "fk_ctl_space" -p "FK_space";
	rename -uid "A2B9B6C5-4B18-0B77-6ED8-36AC4E5EF14C";
createNode transform -n "FK_root_CTL_OS" -p "fk_ctl_space";
	rename -uid "286B4F29-4B4B-451B-4048-0C884274C2D6";
createNode transform -n "FK_root_CTL" -p "FK_root_CTL_OS";
	rename -uid "F9BCFA69-4D3C-1C2E-EDA8-648CF8B0CA3E";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_neck_01_CTL_OS" -p "FK_root_CTL";
	rename -uid "940DEFF6-4B10-2DEB-EA1C-6FA1845817AE";
createNode transform -n "FK_neck_01_CTL" -p "FK_neck_01_CTL_OS";
	rename -uid "9AD3229E-448B-4A0D-EA34-C0B171076A52";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_neck_02_CTL_OS" -p "FK_neck_01_CTL";
	rename -uid "416E1B5C-4097-8738-D551-25A81670F9FE";
createNode transform -n "FK_neck_02_CTL" -p "FK_neck_02_CTL_OS";
	rename -uid "5ADCA249-41E3-5CA1-72C2-698F37EA07D8";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_neck_02_CTLShape" -p "FK_neck_02_CTL";
	rename -uid "05CAD196-4604-C9E6-7DA6-158AF7FEB37A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5244619554831305 3.3827573253968732e-16 -5.5244619554831305
		4.7839412877931912e-16 4.7839412877931912e-16 -7.812769022258431
		-5.5244619554831305 3.3827573253968722e-16 -5.5244619554831296
		-7.8127690222584372 2.4800036113992477e-32 -4.0501532574550035e-16
		-5.5244619554831305 -3.3827573253968722e-16 5.5244619554831305
		-7.8261041635702736e-16 -4.7839412877931971e-16 7.8127690222584372
		5.5244619554831305 -3.3827573253968722e-16 5.5244619554831296
		7.8127690222584372 -6.5238438431276203e-32 1.065424553049871e-15
		5.5244619554831305 3.3827573253968732e-16 -5.5244619554831305
		4.7839412877931912e-16 4.7839412877931912e-16 -7.812769022258431
		-5.5244619554831305 3.3827573253968722e-16 -5.5244619554831296
		;
createNode transform -n "FK_neckEnd_CTL_OS" -p "FK_neck_02_CTL";
	rename -uid "A2FBA169-460F-BCBB-DF0C-00A5A6E49EE8";
createNode transform -n "FK_neckEnd_CTL" -p "FK_neckEnd_CTL_OS";
	rename -uid "456DC985-458B-7D30-80EB-7D9819039A32";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_neckEnd_CTLShape" -p "FK_neckEnd_CTL";
	rename -uid "4B0C048E-499B-E585-A70D-9BB6BE99DCCD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5244619554831305 3.3827573253968732e-16 -5.5244619554831305
		4.7839412877931912e-16 4.7839412877931912e-16 -7.812769022258431
		-5.5244619554831305 3.3827573253968722e-16 -5.5244619554831296
		-7.8127690222584372 2.4800036113992477e-32 -4.0501532574550035e-16
		-5.5244619554831305 -3.3827573253968722e-16 5.5244619554831305
		-7.8261041635702736e-16 -4.7839412877931971e-16 7.8127690222584372
		5.5244619554831305 -3.3827573253968722e-16 5.5244619554831296
		7.8127690222584372 -6.5238438431276203e-32 1.065424553049871e-15
		5.5244619554831305 3.3827573253968732e-16 -5.5244619554831305
		4.7839412877931912e-16 4.7839412877931912e-16 -7.812769022258431
		-5.5244619554831305 3.3827573253968722e-16 -5.5244619554831296
		;
createNode nurbsCurve -n "FK_neck_01_CTLShape" -p "FK_neck_01_CTL";
	rename -uid "53B26639-48CF-FB5B-2049-688957080B56";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5244619554831305 3.3827573253968732e-16 -5.5244619554831305
		4.7839412877931912e-16 4.7839412877931912e-16 -7.812769022258431
		-5.5244619554831305 3.3827573253968722e-16 -5.5244619554831296
		-7.8127690222584372 2.4800036113992477e-32 -4.0501532574550035e-16
		-5.5244619554831305 -3.3827573253968722e-16 5.5244619554831305
		-7.8261041635702736e-16 -4.7839412877931971e-16 7.8127690222584372
		5.5244619554831305 -3.3827573253968722e-16 5.5244619554831296
		7.8127690222584372 -6.5238438431276203e-32 1.065424553049871e-15
		5.5244619554831305 3.3827573253968732e-16 -5.5244619554831305
		4.7839412877931912e-16 4.7839412877931912e-16 -7.812769022258431
		-5.5244619554831305 3.3827573253968722e-16 -5.5244619554831296
		;
createNode nurbsCurve -n "FK_root_CTLShape" -p "FK_root_CTL";
	rename -uid "63953811-4E51-20F0-D222-D6820BDD13F9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 4.7408503305919059 2.9029335912980257e-16 
		-4.7408503305919059 4.1053680554821001e-16 4.1053680554821001e-16 -6.7045748347040437 
		-4.7408503305919059 2.9029335912980242e-16 -4.740850330591905 -6.704574834704049 
		2.1282300494986448e-32 -3.4756634337025209e-16 -4.7408503305919059 -2.9029335912980247e-16 
		4.7408503305919059 -6.7160184666099512e-16 -4.1053680554821055e-16 6.704574834704049 
		4.7408503305919059 -2.9029335912980242e-16 4.740850330591905 6.704574834704049 -5.5984759221166102e-32 
		9.1430050297187509e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "joint_space" -p "neck_GRP";
	rename -uid "39771EDD-45C5-EB87-4F43-B1A375D530FE";
	setAttr ".v" no;
createNode transform -n "root_JNT_space" -p "joint_space";
	rename -uid "4601DEE2-4862-7EFD-49F9-D8BBC3EF1448";
	setAttr -s 2 ".iog";
createNode transform -n "neck_01_JNT_space" -p "root_JNT_space";
	rename -uid "D4516C32-417D-CD49-FD98-4FA4D485D80C";
createNode transform -n "neck_02_JNT_space" -p "neck_01_JNT_space";
	rename -uid "6AE163B6-4F15-DEF8-FDFF-6BA69EB71FC6";
createNode transform -n "neckEnd_JNT_space" -p "neck_02_JNT_space";
	rename -uid "5792A41E-41A6-5DC1-E3D9-7A8FDEF26676";
createNode transform -n "output_space" -p "neck_GRP";
	rename -uid "B23989A0-42F3-3A68-D9C6-DF8FB2E98B01";
	setAttr -s 2 ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode joint -n "root_JNT" -p "output_space";
	rename -uid "5D416DE1-4959-4E42-B9BD-C28E1258E08B";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "neck_01_JNT" -p "root_JNT";
	rename -uid "9F35AFC7-47FE-A302-CEB3-36BD78669DCF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "neck_02_JNT" -p "neck_01_JNT";
	rename -uid "9FFD0BE0-45DD-0D42-362A-A0A661E54FEA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "neckEnd_JNT" -p "neck_02_JNT";
	rename -uid "26CB0926-448D-B4BF-56B5-6DAF1D3F1E33";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E5856509-487B-9682-25AE-FD8D9EF1594A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "ED8E8C88-48C3-0102-D1BD-32982EC5FDC8";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/neck.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C1A980AD-4FE8-5A9E-CCD4-A0A9EDE4D6EA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3853B660-4348-ACB5-0CA3-AEA106D08EB1";
createNode displayLayerManager -n "layerManager";
	rename -uid "860ECABA-4A18-2189-4F09-2C86B87445A7";
createNode displayLayer -n "defaultLayer";
	rename -uid "71CA8724-4688-6215-8D50-3C8C48731EEF";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "85CC51C3-48CB-5A88-D6E2-D8B2F470FEFC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CC70F3F2-43CE-831A-2EBF-1EBA2C5FEACF";
	setAttr ".g" yes;
createNode decomposeMatrix -n "fit_space_local_DMTX";
	rename -uid "22A74C24-447F-88CB-F49C-C59936B0036F";
createNode decomposeMatrix -n "IK_neck_CTL_local_DMTX";
	rename -uid "91E76BAE-4D44-FEDF-8513-9EBCEAC2C2DC";
createNode decomposeMatrix -n "IK_neck_01_CTL_local_DMTX";
	rename -uid "B1A7FFC0-415D-DC9A-9F09-ECAFD0396CF4";
createNode decomposeMatrix -n "IK_neckEnd_CTL_local_DMTX";
	rename -uid "A6A4B898-4FED-D47F-21FD-79BA1D9E188F";
createNode multiplyDivide -n "neck_param_MULT";
	rename -uid "1BBFF087-42C9-5094-9B56-B79C10E0EB84";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode multiplyDivide -n "root_param_MULT";
	rename -uid "55F7214B-4D36-B919-F545-3D9D66E66EC2";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode pointOnCurveInfo -n "root_poci";
	rename -uid "4B6F81AF-4536-200D-F09D-3C8A7A072432";
	setAttr ".top" yes;
createNode plusMinusAverage -n "root_twist_PLS";
	rename -uid "2DE5B461-4A5F-EBD2-FF71-5D9B6EE1A4EB";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion1";
	rename -uid "359C9265-4977-79FB-F93C-7E80C0CAB19E";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_root_scaleSpaceMat_DMTX";
	rename -uid "849A472C-477E-26CE-32DE-729A1CDAD7E6";
createNode multMatrix -n "FK_root_scaleSpaceMat_MTMX";
	rename -uid "DB78BDB1-461D-7C5C-4EA8-3FB7173030C2";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "neck_01_param_MULT";
	rename -uid "DB3BF8DA-441B-A475-4FDD-CE986A362E67";
createNode pointOnCurveInfo -n "neck_01_poci";
	rename -uid "F27AA9E9-422E-B665-130F-7193D5D15994";
	setAttr ".top" yes;
createNode plusMinusAverage -n "neck_01_twist_PLS";
	rename -uid "DB173F2E-405D-85A4-1457-D8829B2E812F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion2";
	rename -uid "4AA77055-4ADD-EFD0-E99E-F4A18C977DA7";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_neck_01_scaleSpaceMat_DMTX";
	rename -uid "6F4BFA08-4F93-85B9-DCAD-0CB08392597B";
createNode multMatrix -n "FK_neck_01_scaleSpaceMat_MTMX";
	rename -uid "C7715700-4F77-50CB-BA86-0BB00782B615";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_neck_01_localMat_DMTX";
	rename -uid "5DABCE81-46C7-5CAB-4A29-6EA44820DCAC";
createNode multMatrix -n "FK_neck_01_localMat_MTMX";
	rename -uid "43C8331C-4C5B-C3B4-11C5-9EA884824406";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "neck_02_param_MULT";
	rename -uid "300E57B2-4850-B023-BF55-04860E24713C";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode pointOnCurveInfo -n "neck_02_poci";
	rename -uid "0E3CBAAB-4A5B-09F7-E475-3A87CE4F7166";
	setAttr ".top" yes;
createNode plusMinusAverage -n "neck_02_twist_PLS";
	rename -uid "20FA3F57-4B16-27F3-792A-63B8E3277AB7";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion3";
	rename -uid "972BAF11-4FA0-2A6D-AEC1-538AE057E0BA";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_neck_02_scaleSpaceMat_DMTX";
	rename -uid "27B67BF2-48F0-2A8D-11CB-FD94A2A9908B";
createNode multMatrix -n "FK_neck_02_scaleSpaceMat_MTMX";
	rename -uid "5C75A918-4717-51DA-9E13-D9BA656EA62A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_neck_02_localMat_DMTX";
	rename -uid "AD86EBD3-4A0E-3043-2F73-89A92EDB477A";
createNode multMatrix -n "FK_neck_02_localMat_MTMX";
	rename -uid "CA4467F8-4921-EE18-E3A0-0CB578B3C7BE";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "neck_03_param_MULT";
	rename -uid "8C48B8E8-43A9-312F-7767-D29F1E4B5C91";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode pointOnCurveInfo -n "neck_03_poci";
	rename -uid "54CFDBDB-4D72-C6AA-30E4-F8BBCF514473";
	setAttr ".top" yes;
createNode plusMinusAverage -n "neck_03_twist_PLS";
	rename -uid "1498D0B9-43EF-C6AF-EFED-9EA99EF531D5";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "FK_neck_03_scaleSpaceMat_DMTX";
	rename -uid "BB0C62CC-483C-DFC6-030A-0B83AD39E7E2";
createNode multMatrix -n "FK_neck_03_scaleSpaceMat_MTMX";
	rename -uid "211500B7-4B56-EF52-C62C-B58B128D0EA2";
createNode multiplyDivide -n "neckEnd_param_MULT";
	rename -uid "5238DEF6-4A03-5C31-2E42-1AA597C7D589";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode pointOnCurveInfo -n "neckEnd_poci";
	rename -uid "CAC3A061-42D6-A200-FB7D-858E705E5B48";
	setAttr ".top" yes;
createNode plusMinusAverage -n "neckEnd_twist_PLS";
	rename -uid "C3C2732A-4793-D911-D0B8-9A9BC572AE30";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion5";
	rename -uid "2E87D839-4A4D-0AC5-96BE-67996A3086A6";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_neckEnd_scaleSpaceMat_DMTX";
	rename -uid "5E379ACD-4A14-E9F2-66BC-91989F73162B";
createNode multMatrix -n "FK_neckEnd_scaleSpaceMat_MTMX";
	rename -uid "344F557D-4EDE-382C-1BA6-BC8FA36C3B0A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_neckEnd_localMat_DMTX";
	rename -uid "EB4CA074-4AD5-DDC5-4C17-6A86DCFC25BB";
createNode multMatrix -n "FK_neckEnd_localMat_MTMX";
	rename -uid "14E6FBB4-42BC-BCDC-9041-87B594561BE5";
	setAttr -s 2 ".i";
createNode pointOnCurveInfo -n "twist_neck_poci";
	rename -uid "28AB2EB7-4B67-DCDF-39EE-238D5D5DFA0C";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_neck_CTL_localMat_DMTX";
	rename -uid "0BBF847F-4C1D-8426-F8E7-9D831FDCFA0A";
createNode multMatrix -n "M_neck_CTL_localMat_MTMX";
	rename -uid "2565C78A-4C73-BEBC-1DBD-32A552EA6AAE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_neck_CTL_rotMat_DMTX";
	rename -uid "8191B46C-4A40-2AAB-61F1-E3B3E734401E";
createNode remapValue -n "neck_root_twist_RMAP";
	rename -uid "46D4D637-45B3-A79B-2A00-2E924520CABF";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neck_root_twist_MULT";
	rename -uid "6A63EF14-40C0-369A-1631-C19B80EB37DF";
createNode unitConversion -n "unitConversion6";
	rename -uid "3B3933E2-4526-2180-241F-4EA43831A6B6";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neck_neck_01_twist_RMAP";
	rename -uid "1660623A-4725-9ADA-BD87-7087DBD906A1";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neck_neck_01_twist_MULT";
	rename -uid "746C9D23-43B3-85B2-10A9-169049D7F7C5";
createNode unitConversion -n "unitConversion7";
	rename -uid "403CFEE0-4F71-C815-9648-088B87C621EE";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neck_neck_02_twist_RMAP";
	rename -uid "7ACD928C-49AD-BC55-4140-B9A36C6E1981";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neck_neck_02_twist_MULT";
	rename -uid "87B989EF-495A-425E-0371-B6BA635AF947";
createNode unitConversion -n "unitConversion8";
	rename -uid "1F9FC50E-46C6-EAC1-2E06-7F8EB1B240BB";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neck_neck_03_twist_RMAP";
	rename -uid "CB026450-4477-8DA4-4B63-E1954C3D729E";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neck_neck_03_twist_MULT";
	rename -uid "A00BAF8F-4A9E-889B-705E-84A33A575603";
createNode unitConversion -n "unitConversion9";
	rename -uid "50758E22-4C2D-DBF9-E156-AE9EDDCA42B1";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neck_neckEnd_twist_RMAP";
	rename -uid "11B165A8-4EA9-E5CE-C9C6-A98CDE941153";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neck_neckEnd_twist_MULT";
	rename -uid "9B47BED2-4399-AE47-61F3-92AD4009CFEF";
createNode unitConversion -n "unitConversion10";
	rename -uid "4C743B5A-4329-A011-5C4D-0DB83BDF72EE";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "twist_neckEnd_poci";
	rename -uid "BEBD9F16-41A9-F33C-7BDD-5EACAC038E60";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_neckEnd_CTL_localMat_DMTX";
	rename -uid "B8D78B64-405A-C91E-9E07-6CB87C16D007";
createNode multMatrix -n "M_neckEnd_CTL_localMat_MTMX";
	rename -uid "7E565614-467C-7938-9520-00B9B2FE1FFC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_neckEnd_CTL_local_DMTX";
	rename -uid "5CFCE5CE-4D51-027E-CC3B-9FB2DCBE2C65";
createNode remapValue -n "neckEnd_root_twist_RMAP";
	rename -uid "1D7CFE0D-436D-8134-240A-30B4C14E74C7";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neckEnd_root_twist_MULT";
	rename -uid "63E2EF18-4928-7B43-46CD-A7BDAC048833";
createNode unitConversion -n "unitConversion11";
	rename -uid "7374C4A7-4BA5-C411-8F2C-5C92EBBAB48D";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neckEnd_neck_01_twist_RMAP";
	rename -uid "4F390ACA-4596-5E12-BCE5-4C92DC8B27CB";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neckEnd_neck_01_twist_MULT";
	rename -uid "7BAF459D-4F64-97C0-9AC6-CCBEA919C748";
createNode unitConversion -n "unitConversion12";
	rename -uid "179F71D5-48EA-A467-4D03-2D8C46EF3027";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neckEnd_neck_02_twist_RMAP";
	rename -uid "511695B3-44BC-1EA1-E57C-CB8E4B81B62F";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neckEnd_neck_02_twist_MULT";
	rename -uid "E1408687-4755-2F72-6887-C8880A8135F3";
createNode unitConversion -n "unitConversion13";
	rename -uid "034B9999-44FC-A2FD-7C6F-5A9110579B5A";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neckEnd_neck_03_twist_RMAP";
	rename -uid "3BFAB194-4045-BBE6-3D9A-47A7A40B61E8";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neckEnd_neck_03_twist_MULT";
	rename -uid "8EC21E03-4D1E-E3A0-D5BE-8CB5A28D891A";
createNode unitConversion -n "unitConversion14";
	rename -uid "C0855C71-403C-FA4D-6BBA-0B8512491B4B";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "neckEnd_neckEnd_twist_RMAP";
	rename -uid "3493AC3D-4941-61BF-EAF1-57AD9E1A2375";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "neckEnd_neckEnd_twist_MULT";
	rename -uid "375B275B-4265-53F3-8B48-7B84FD746E6B";
createNode unitConversion -n "unitConversion15";
	rename -uid "10A675A9-40D3-80B2-BA95-1FAEBB747056";
	setAttr ".cf" 57.295779513082323;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "BAA86E52-4F68-E396-D6E3-369F5CDA7059";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "FC2B1E80-4F0F-33CA-279E-6283D563F97B";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "fit_RVS";
	rename -uid "69E358B2-432B-F032-5BBF-33B6B0218B14";
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "484BB088-449B-D0E4-F3F6-E88C3403BA4F";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "E77A115B-4C1F-8035-A46E-4FBBEE068A7C";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "7B620421-4628-DE6F-D46B-C8A94CD4AF64";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "3B981BAE-40E3-FE4D-6535-4085D632CDBB";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "33651563-47B1-E689-1418-CDBA0198BAD5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 613\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 612\n            -height 329\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 613\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1236\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1236\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1236\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F758BE2A-40AF-AA5F-BC23-2E91D5035E54";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "887E2EC8-44D6-01B7-3736-04AB1D516774";
createNode multMatrix -n "hip_CTL_local_MTMX";
	rename -uid "ACA93E17-435B-1279-BCFD-5B8914AAF974";
createNode decomposeMatrix -n "hip_CTL_local_DCMX";
	rename -uid "A79C83CC-4BD3-9479-B9C7-AA9A85CD82C2";
createNode multMatrix -n "init_hip_space_local_MTMX";
	rename -uid "208C3ECC-45A8-B4D0-6A58-77ACB04F2D9F";
createNode decomposeMatrix -n "init_hip_space_local_DCMX";
	rename -uid "D62441DE-40D4-52D3-79DE-E990D8C17783";
createNode decomposeMatrix -n "hip_root_JNT_space_local_DCMX";
	rename -uid "1857BD1E-4BEB-75F5-2FE2-44B80E9AC1C4";
createNode multMatrix -n "FK_neck_01_local_space_local_MTMX";
	rename -uid "E6441083-4721-266A-72F7-CBA35D8C3A53";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_neck_01_local_space_local_DCMX";
	rename -uid "D33FDC4B-4873-4504-4A36-55A6E8BB51D5";
createNode decomposeMatrix -n "FK_root_CTL_local_DCMX";
	rename -uid "CEDE72B5-4B47-C460-BCDE-9BA68300870E";
createNode multMatrix -n "FK_root_CTL_local_MTMX";
	rename -uid "E5C4A9FB-4DFD-AC16-CED0-AEAE53FD4901";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_hip_space_local_MTMX1";
	rename -uid "0C11BF75-4E1C-EF08-26E5-A189BD1E1E5A";
createNode decomposeMatrix -n "init_hip_space_local_DCMX1";
	rename -uid "28BBB55B-43F0-22D9-3158-25A562E6CF59";
createNode multMatrix -n "hip_root_JNT_space_local_MTMX";
	rename -uid "8B41C352-47F3-A009-FDD8-B780E5414C89";
	setAttr -s 2 ".i";
createNode objectSet -n "neck_SET";
	rename -uid "B869437C-4A3B-49AF-7C8D-4CBB861DBB64";
	setAttr ".ihi" 0;
	setAttr -s 62 ".dsm";
	setAttr -s 84 ".dnsm";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9D8B34FB-4F65-8BE7-9AD8-9DBF2CE9D704";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -720.23806661840592 -417.85712625299243 ;
	setAttr ".tgi[0].vh" -type "double2" 720.23806661840592 416.6666501098216 ;
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
	setAttr -s 39 ".u";
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
connectAttr "fit_space.fitMode" "fit_neck_GRP.v";
connectAttr "fit_space_local_DMTX.ot" "fit_space_GRP.t";
connectAttr "fit_space_local_DMTX.or" "fit_space_GRP.r";
connectAttr "fit_space_local_DMTX.os" "fit_space_GRP.s";
connectAttr "fit_RVS.ox" "IK_space.v";
connectAttr "IK_neck_CTL_local_DMTX.ot" "bezierShape1.cp[0]";
connectAttr "IK_neck_01_CTL_local_DMTX.ot" "bezierShape1.cp[1]";
connectAttr "IK_neck_01_CTL_local_DMTX.ot" "bezierShape1.cp[2]";
connectAttr "IK_neckEnd_CTL_local_DMTX.ot" "bezierShape1.cp[3]";
connectAttr "fit_space_local_DMTX.ot" "IK_CTL_space.t";
connectAttr "fit_space_local_DMTX.or" "IK_CTL_space.r";
connectAttr "fit_space_local_DMTX.os" "IK_CTL_space.s";
connectAttr "M_neck_CTL_localMat_DMTX.ot" "M_neck_OS.t";
connectAttr "M_neck_CTL.IK_vis" "IK_neck_OS.v";
connectAttr "makeNurbCircle3.oc" "IK_neck_CTLShape.cr";
connectAttr "fit_neck_01.t" "IK_neck_01_OS.t";
connectAttr "M_neck_CTL.IK_vis" "IK_neck_01_OS.v";
connectAttr "makeNurbCircle4.oc" "IK_neck_01_CTLShape.cr";
connectAttr "makeNurbCircle1.oc" "M_neck_CTLShape.cr";
connectAttr "M_neck_CTL.upVec_vis" "upVec_OS.v";
connectAttr "M_neckEnd_CTL_localMat_DMTX.ot" "M_neckEnd_OS.t";
connectAttr "M_neck_CTL.IK_vis" "IK_neckEnd_OS.v";
connectAttr "makeNurbCircle6.oc" "IK_neckEnd_CTLShape.cr";
connectAttr "twist_neck_poci.p" "twist_neck_OS.t";
connectAttr "M_neck_CTL_rotMat_DMTX.or" "twist_neck_OS.r";
connectAttr "fit_space_local_DMTX.os" "twist_neck_OS.s";
connectAttr "M_neck_CTL.twist_vis" "twist_neck_OS.v";
connectAttr "twist_neckEnd_poci.p" "twist_neckEnd_OS.t";
connectAttr "M_neckEnd_CTL_local_DMTX.or" "twist_neckEnd_OS.r";
connectAttr "fit_space_local_DMTX.os" "twist_neckEnd_OS.s";
connectAttr "M_neck_CTL.twist_vis" "twist_neckEnd_OS.v";
connectAttr "fit_RVS.ox" "FK_space.v";
connectAttr "root_poci.p" "init_root_space.t";
connectAttr "init_root_space_aimConstraint1.crx" "init_root_space.rx";
connectAttr "init_root_space_aimConstraint1.cry" "init_root_space.ry";
connectAttr "init_root_space_aimConstraint1.crz" "init_root_space.rz";
connectAttr "unitConversion1.o" "twist_root_space.ry";
connectAttr "init_root_space.pim" "init_root_space_aimConstraint1.cpim";
connectAttr "init_root_space.t" "init_root_space_aimConstraint1.ct";
connectAttr "init_root_space.rp" "init_root_space_aimConstraint1.crp";
connectAttr "init_root_space.rpt" "init_root_space_aimConstraint1.crt";
connectAttr "init_root_space.ro" "init_root_space_aimConstraint1.cro";
connectAttr "init_neck_01_space.t" "init_root_space_aimConstraint1.tg[0].tt";
connectAttr "init_neck_01_space.rp" "init_root_space_aimConstraint1.tg[0].trp";
connectAttr "init_neck_01_space.rpt" "init_root_space_aimConstraint1.tg[0].trt";
connectAttr "init_neck_01_space.pm" "init_root_space_aimConstraint1.tg[0].tpm";
connectAttr "init_root_space_aimConstraint1.w0" "init_root_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_root_space_aimConstraint1.wum";
connectAttr "neck_01_poci.p" "init_neck_01_space.t";
connectAttr "init_neck_01_space_aimConstraint1.crx" "init_neck_01_space.rx";
connectAttr "init_neck_01_space_aimConstraint1.cry" "init_neck_01_space.ry";
connectAttr "init_neck_01_space_aimConstraint1.crz" "init_neck_01_space.rz";
connectAttr "unitConversion2.o" "twist_neck_01_space.ry";
connectAttr "init_neck_01_space.pim" "init_neck_01_space_aimConstraint1.cpim";
connectAttr "init_neck_01_space.t" "init_neck_01_space_aimConstraint1.ct";
connectAttr "init_neck_01_space.rp" "init_neck_01_space_aimConstraint1.crp";
connectAttr "init_neck_01_space.rpt" "init_neck_01_space_aimConstraint1.crt";
connectAttr "init_neck_01_space.ro" "init_neck_01_space_aimConstraint1.cro";
connectAttr "init_neck_02_space.t" "init_neck_01_space_aimConstraint1.tg[0].tt";
connectAttr "init_neck_02_space.rp" "init_neck_01_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_neck_02_space.rpt" "init_neck_01_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_neck_02_space.pm" "init_neck_01_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_neck_01_space_aimConstraint1.w0" "init_neck_01_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_neck_01_space_aimConstraint1.wum";
connectAttr "neck_02_poci.p" "init_neck_02_space.t";
connectAttr "init_neck_02_space_aimConstraint1.crx" "init_neck_02_space.rx";
connectAttr "init_neck_02_space_aimConstraint1.cry" "init_neck_02_space.ry";
connectAttr "init_neck_02_space_aimConstraint1.crz" "init_neck_02_space.rz";
connectAttr "unitConversion3.o" "twist_neck_02_space.ry";
connectAttr "init_neck_02_space.pim" "init_neck_02_space_aimConstraint1.cpim";
connectAttr "init_neck_02_space.t" "init_neck_02_space_aimConstraint1.ct";
connectAttr "init_neck_02_space.rp" "init_neck_02_space_aimConstraint1.crp";
connectAttr "init_neck_02_space.rpt" "init_neck_02_space_aimConstraint1.crt";
connectAttr "init_neck_02_space.ro" "init_neck_02_space_aimConstraint1.cro";
connectAttr "output_neckEnd_end_space.t" "init_neck_02_space_aimConstraint1.tg[0].tt"
		;
connectAttr "output_neckEnd_end_space.rp" "init_neck_02_space_aimConstraint1.tg[0].trp"
		;
connectAttr "output_neckEnd_end_space.rpt" "init_neck_02_space_aimConstraint1.tg[0].trt"
		;
connectAttr "output_neckEnd_end_space.pm" "init_neck_02_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_neck_02_space_aimConstraint1.w0" "init_neck_02_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_neck_02_space_aimConstraint1.wum";
connectAttr "neckEnd_poci.p" "init_neckEnd_space.t";
connectAttr "init_neckEnd_space_aimConstraint1.crx" "init_neckEnd_space.rx";
connectAttr "init_neckEnd_space_aimConstraint1.cry" "init_neckEnd_space.ry";
connectAttr "init_neckEnd_space_aimConstraint1.crz" "init_neckEnd_space.rz";
connectAttr "unitConversion5.o" "twist_neckEnd_space.ry";
connectAttr "init_neckEnd_space.pim" "init_neckEnd_space_aimConstraint1.cpim";
connectAttr "init_neckEnd_space.t" "init_neckEnd_space_aimConstraint1.ct";
connectAttr "init_neckEnd_space.rp" "init_neckEnd_space_aimConstraint1.crp";
connectAttr "init_neckEnd_space.rpt" "init_neckEnd_space_aimConstraint1.crt";
connectAttr "init_neckEnd_space.ro" "init_neckEnd_space_aimConstraint1.cro";
connectAttr "init_neck_02_space.t" "init_neckEnd_space_aimConstraint1.tg[0].tt";
connectAttr "init_neck_02_space.rp" "init_neckEnd_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_neck_02_space.rpt" "init_neckEnd_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_neck_02_space.pm" "init_neckEnd_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_neckEnd_space_aimConstraint1.w0" "init_neckEnd_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_neckEnd_space_aimConstraint1.wum";
connectAttr "neckEnd_poci.p" "output_neckEnd_end_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "FK_root_local_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "FK_root_local_space.r";
connectAttr "FK_neck_01_scaleSpaceMat_DMTX.ot" "FK_neck_01_local_space.t";
connectAttr "FK_neck_01_scaleSpaceMat_DMTX.or" "FK_neck_01_local_space.r";
connectAttr "FK_neck_02_scaleSpaceMat_DMTX.ot" "FK_neck_02_local_space.t";
connectAttr "FK_neck_02_scaleSpaceMat_DMTX.or" "FK_neck_02_local_space.r";
connectAttr "fk_neckEnd_scaleSpaceMat_DMTX.ot" "FK_neckEnd_local_space.t";
connectAttr "fk_neckEnd_scaleSpaceMat_DMTX.or" "FK_neckEnd_local_space.r";
connectAttr "fit_space_local_DMTX.ot" "fk_ctl_space.t";
connectAttr "fit_space_local_DMTX.or" "fk_ctl_space.r";
connectAttr "fit_space_local_DMTX.os" "fk_ctl_space.s";
connectAttr "M_neck_CTL.FK_vis" "fk_ctl_space.v";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "FK_root_CTL_OS.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "FK_root_CTL_OS.r";
connectAttr "FK_neck_01_local_space_local_DCMX.ot" "FK_neck_01_CTL_OS.t";
connectAttr "FK_neck_01_local_space_local_DCMX.or" "FK_neck_01_CTL_OS.r";
connectAttr "FK_neck_02_localMat_DMTX.ot" "FK_neck_02_CTL_OS.t";
connectAttr "FK_neck_02_localMat_DMTX.or" "FK_neck_02_CTL_OS.r";
connectAttr "fk_neckEnd_localMat_DMTX.ot" "FK_neckEnd_CTL_OS.t";
connectAttr "fk_neckEnd_localMat_DMTX.or" "FK_neckEnd_CTL_OS.r";
connectAttr "makeNurbCircle2.oc" "FK_root_CTLShape.cr";
connectAttr "fit_space_local_DMTX.ot" "joint_space.t";
connectAttr "fit_space_local_DMTX.or" "joint_space.r";
connectAttr "fit_space_local_DMTX.os" "joint_space.s";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "root_JNT_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "root_JNT_space.r";
connectAttr "FK_neck_01_localMat_DMTX.ot" "neck_01_JNT_space.t";
connectAttr "FK_neck_01_localMat_DMTX.or" "neck_01_JNT_space.r";
connectAttr "FK_neck_02_localMat_DMTX.ot" "neck_02_JNT_space.t";
connectAttr "FK_neck_02_localMat_DMTX.or" "neck_02_JNT_space.r";
connectAttr "fk_neckEnd_localMat_DMTX.ot" "neckEnd_JNT_space.t";
connectAttr "fk_neckEnd_localMat_DMTX.or" "neckEnd_JNT_space.r";
connectAttr "fit_space_local_DMTX.ot" "output_space.t";
connectAttr "fit_space_local_DMTX.or" "output_space.r";
connectAttr "fit_space_local_DMTX.os" "output_space.s";
connectAttr "FK_root_CTL.r" "root_JNT.r";
connectAttr "hip_root_JNT_space_local_DCMX.ot" "root_JNT.t";
connectAttr "hip_root_JNT_space_local_DCMX.or" "root_JNT.jo";
connectAttr "FK_neck_01_CTL.r" "neck_01_JNT.r";
connectAttr "root_JNT.s" "neck_01_JNT.is";
connectAttr "neck_01_JNT_space.t" "neck_01_JNT.t";
connectAttr "neck_01_JNT_space.r" "neck_01_JNT.jo";
connectAttr "FK_neck_02_CTL.r" "neck_02_JNT.r";
connectAttr "neck_01_JNT.s" "neck_02_JNT.is";
connectAttr "neck_02_JNT_space.t" "neck_02_JNT.t";
connectAttr "neck_02_JNT_space.r" "neck_02_JNT.jo";
connectAttr "FK_neckEnd_CTL.r" "neckEnd_JNT.r";
connectAttr "neck_02_JNT.s" "neckEnd_JNT.is";
connectAttr "neckEnd_JNT_space.t" "neckEnd_JNT.t";
connectAttr "neckEnd_JNT_space.r" "neckEnd_JNT.jo";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_space.wm" "fit_space_local_DMTX.imat";
connectAttr "IK_neck_CTL.wm" "IK_neck_CTL_local_DMTX.imat";
connectAttr "IK_neck_01_CTL.wm" "IK_neck_01_CTL_local_DMTX.imat";
connectAttr "IK_neckEnd_CTL.wm" "IK_neckEnd_CTL_local_DMTX.imat";
connectAttr "neck_param_MULT.ox" "root_param_MULT.i1x";
connectAttr "bezierShape1.ws" "root_poci.ic";
connectAttr "root_param_MULT.ox" "root_poci.pr";
connectAttr "neck_root_twist_MULT.ox" "root_twist_PLS.i1[0]";
connectAttr "neckEnd_root_twist_MULT.ox" "root_twist_PLS.i1[1]";
connectAttr "root_twist_PLS.o1" "unitConversion1.i";
connectAttr "FK_root_scaleSpaceMat_MTMX.o" "FK_root_scaleSpaceMat_DMTX.imat";
connectAttr "twist_root_space.wm" "FK_root_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_root_scaleSpaceMat_MTMX.i[1]";
connectAttr "neck_param_MULT.ox" "neck_01_param_MULT.i1x";
connectAttr "bezierShape1.ws" "neck_01_poci.ic";
connectAttr "neck_01_param_MULT.ox" "neck_01_poci.pr";
connectAttr "neck_neck_01_twist_MULT.ox" "neck_01_twist_PLS.i1[0]";
connectAttr "neckEnd_neck_01_twist_MULT.ox" "neck_01_twist_PLS.i1[1]";
connectAttr "neck_01_twist_PLS.o1" "unitConversion2.i";
connectAttr "FK_neck_01_scaleSpaceMat_MTMX.o" "FK_neck_01_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_neck_01_space.wm" "FK_neck_01_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_neck_01_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_neck_01_localMat_MTMX.o" "FK_neck_01_localMat_DMTX.imat";
connectAttr "init_neck_01_space.wm" "FK_neck_01_localMat_MTMX.i[0]";
connectAttr "init_root_space.wim" "FK_neck_01_localMat_MTMX.i[1]";
connectAttr "neck_param_MULT.ox" "neck_02_param_MULT.i1x";
connectAttr "bezierShape1.ws" "neck_02_poci.ic";
connectAttr "neck_02_param_MULT.ox" "neck_02_poci.pr";
connectAttr "neck_neck_02_twist_MULT.ox" "neck_02_twist_PLS.i1[0]";
connectAttr "neckEnd_neck_02_twist_MULT.ox" "neck_02_twist_PLS.i1[1]";
connectAttr "neck_02_twist_PLS.o1" "unitConversion3.i";
connectAttr "FK_neck_02_scaleSpaceMat_MTMX.o" "FK_neck_02_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_neck_02_space.wm" "FK_neck_02_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_neck_02_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_neck_02_localMat_MTMX.o" "FK_neck_02_localMat_DMTX.imat";
connectAttr "FK_neck_02_local_space.wm" "FK_neck_02_localMat_MTMX.i[0]";
connectAttr "FK_neck_01_local_space.wim" "FK_neck_02_localMat_MTMX.i[1]";
connectAttr "neck_param_MULT.ox" "neck_03_param_MULT.i1x";
connectAttr "neck_03_param_MULT.ox" "neck_03_poci.pr";
connectAttr "neck_neck_03_twist_MULT.ox" "neck_03_twist_PLS.i1[0]";
connectAttr "neckEnd_neck_03_twist_MULT.ox" "neck_03_twist_PLS.i1[1]";
connectAttr "FK_neck_03_scaleSpaceMat_MTMX.o" "FK_neck_03_scaleSpaceMat_DMTX.imat"
		;
connectAttr "fit_space.wim" "FK_neck_03_scaleSpaceMat_MTMX.i[1]";
connectAttr "neck_param_MULT.ox" "neckEnd_param_MULT.i1x";
connectAttr "bezierShape1.ws" "neckEnd_poci.ic";
connectAttr "neckEnd_param_MULT.ox" "neckEnd_poci.pr";
connectAttr "neck_neckEnd_twist_MULT.ox" "neckEnd_twist_PLS.i1[0]";
connectAttr "neckEnd_neckEnd_twist_MULT.ox" "neckEnd_twist_PLS.i1[1]";
connectAttr "neckEnd_twist_PLS.o1" "unitConversion5.i";
connectAttr "FK_neckEnd_scaleSpaceMat_MTMX.o" "fk_neckEnd_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_neckEnd_space.wm" "FK_neckEnd_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_neckEnd_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_neckEnd_localMat_MTMX.o" "fk_neckEnd_localMat_DMTX.imat";
connectAttr "FK_neckEnd_local_space.wm" "FK_neckEnd_localMat_MTMX.i[0]";
connectAttr "FK_neck_02_local_space.wim" "FK_neckEnd_localMat_MTMX.i[1]";
connectAttr "bezierShape1.ws" "twist_neck_poci.ic";
connectAttr "twist_neck_CTL.end_uvalue" "twist_neck_poci.pr";
connectAttr "M_neck_CTL_localMat_MTMX.o" "M_neck_CTL_localMat_DMTX.imat";
connectAttr "fit_root.wm" "M_neck_CTL_localMat_MTMX.i[0]";
connectAttr "fit_space_GRP.wim" "M_neck_CTL_localMat_MTMX.i[1]";
connectAttr "M_neck_CTL.wm" "M_neck_CTL_rotMat_DMTX.imat";
connectAttr "root_param_MULT.ox" "neck_root_twist_RMAP.i";
connectAttr "twist_neck_CTL.end_uvalue" "neck_root_twist_RMAP.imn";
connectAttr "neck_root_twist_RMAP.ov" "neck_root_twist_MULT.i2x";
connectAttr "unitConversion6.o" "neck_root_twist_MULT.i1x";
connectAttr "M_neck_CTL.ry" "unitConversion6.i";
connectAttr "neck_01_param_MULT.ox" "neck_neck_01_twist_RMAP.i";
connectAttr "twist_neck_CTL.end_uvalue" "neck_neck_01_twist_RMAP.imn";
connectAttr "neck_neck_01_twist_RMAP.ov" "neck_neck_01_twist_MULT.i2x";
connectAttr "unitConversion7.o" "neck_neck_01_twist_MULT.i1x";
connectAttr "M_neck_CTL.ry" "unitConversion7.i";
connectAttr "neck_02_param_MULT.ox" "neck_neck_02_twist_RMAP.i";
connectAttr "twist_neck_CTL.end_uvalue" "neck_neck_02_twist_RMAP.imn";
connectAttr "neck_neck_02_twist_RMAP.ov" "neck_neck_02_twist_MULT.i2x";
connectAttr "unitConversion8.o" "neck_neck_02_twist_MULT.i1x";
connectAttr "M_neck_CTL.ry" "unitConversion8.i";
connectAttr "neck_03_param_MULT.ox" "neck_neck_03_twist_RMAP.i";
connectAttr "twist_neck_CTL.end_uvalue" "neck_neck_03_twist_RMAP.imn";
connectAttr "neck_neck_03_twist_RMAP.ov" "neck_neck_03_twist_MULT.i2x";
connectAttr "unitConversion9.o" "neck_neck_03_twist_MULT.i1x";
connectAttr "M_neck_CTL.ry" "unitConversion9.i";
connectAttr "neckEnd_param_MULT.ox" "neck_neckEnd_twist_RMAP.i";
connectAttr "twist_neck_CTL.end_uvalue" "neck_neckEnd_twist_RMAP.imn";
connectAttr "neck_neckEnd_twist_RMAP.ov" "neck_neckEnd_twist_MULT.i2x";
connectAttr "unitConversion10.o" "neck_neckEnd_twist_MULT.i1x";
connectAttr "M_neck_CTL.ry" "unitConversion10.i";
connectAttr "bezierShape1.ws" "twist_neckEnd_poci.ic";
connectAttr "twist_neckEnd_CTL.end_uvalue" "twist_neckEnd_poci.pr";
connectAttr "M_neckEnd_CTL_localMat_MTMX.o" "M_neckEnd_CTL_localMat_DMTX.imat";
connectAttr "fit_neckEnd.wm" "M_neckEnd_CTL_localMat_MTMX.i[0]";
connectAttr "fit_space_GRP.wim" "M_neckEnd_CTL_localMat_MTMX.i[1]";
connectAttr "M_neckEnd_CTL.wm" "M_neckEnd_CTL_local_DMTX.imat";
connectAttr "root_param_MULT.ox" "neckEnd_root_twist_RMAP.i";
connectAttr "twist_neckEnd_CTL.end_uvalue" "neckEnd_root_twist_RMAP.imx";
connectAttr "neckEnd_root_twist_RMAP.ov" "neckEnd_root_twist_MULT.i2x";
connectAttr "unitConversion11.o" "neckEnd_root_twist_MULT.i1x";
connectAttr "M_neckEnd_CTL.ry" "unitConversion11.i";
connectAttr "neck_01_param_MULT.ox" "neckEnd_neck_01_twist_RMAP.i";
connectAttr "twist_neckEnd_CTL.end_uvalue" "neckEnd_neck_01_twist_RMAP.imx";
connectAttr "neckEnd_neck_01_twist_RMAP.ov" "neckEnd_neck_01_twist_MULT.i2x";
connectAttr "unitConversion12.o" "neckEnd_neck_01_twist_MULT.i1x";
connectAttr "M_neckEnd_CTL.ry" "unitConversion12.i";
connectAttr "neck_02_param_MULT.ox" "neckEnd_neck_02_twist_RMAP.i";
connectAttr "twist_neckEnd_CTL.end_uvalue" "neckEnd_neck_02_twist_RMAP.imx";
connectAttr "neckEnd_neck_02_twist_RMAP.ov" "neckEnd_neck_02_twist_MULT.i2x";
connectAttr "unitConversion13.o" "neckEnd_neck_02_twist_MULT.i1x";
connectAttr "M_neckEnd_CTL.ry" "unitConversion13.i";
connectAttr "neck_03_param_MULT.ox" "neckEnd_neck_03_twist_RMAP.i";
connectAttr "twist_neckEnd_CTL.end_uvalue" "neckEnd_neck_03_twist_RMAP.imx";
connectAttr "neckEnd_neck_03_twist_RMAP.ov" "neckEnd_neck_03_twist_MULT.i2x";
connectAttr "unitConversion14.o" "neckEnd_neck_03_twist_MULT.i1x";
connectAttr "M_neckEnd_CTL.ry" "unitConversion14.i";
connectAttr "neckEnd_param_MULT.ox" "neckEnd_neckEnd_twist_RMAP.i";
connectAttr "twist_neckEnd_CTL.end_uvalue" "neckEnd_neckEnd_twist_RMAP.imx";
connectAttr "neckEnd_neckEnd_twist_RMAP.ov" "neckEnd_neckEnd_twist_MULT.i2x";
connectAttr "unitConversion15.o" "neckEnd_neckEnd_twist_MULT.i1x";
connectAttr "M_neckEnd_CTL.ry" "unitConversion15.i";
connectAttr "fit_space.fitMode" "fit_RVS.ix";
connectAttr "on_curve_space.wim" "hip_CTL_local_MTMX.i[1]";
connectAttr "hip_CTL_local_MTMX.o" "hip_CTL_local_DCMX.imat";
connectAttr "root_JNT_space.wim" "init_hip_space_local_MTMX.i[1]";
connectAttr "init_hip_space_local_MTMX.o" "init_hip_space_local_DCMX.imat";
connectAttr "hip_root_JNT_space_local_MTMX.o" "hip_root_JNT_space_local_DCMX.imat"
		;
connectAttr "FK_neck_01_local_space.wm" "FK_neck_01_local_space_local_MTMX.i[0]"
		;
connectAttr "FK_root_local_space.wim" "FK_neck_01_local_space_local_MTMX.i[1]";
connectAttr "FK_neck_01_local_space_local_MTMX.o" "FK_neck_01_local_space_local_DCMX.imat"
		;
connectAttr "FK_root_CTL_local_MTMX.o" "FK_root_CTL_local_DCMX.imat";
connectAttr "IK_neck_CTL.wm" "FK_root_CTL_local_MTMX.i[0]";
connectAttr "M_neck_OS.wim" "FK_root_CTL_local_MTMX.i[1]";
connectAttr "fit_space.wim" "init_hip_space_local_MTMX1.i[1]";
connectAttr "init_hip_space_local_MTMX1.o" "init_hip_space_local_DCMX1.imat";
connectAttr "root_JNT_space.wm" "hip_root_JNT_space_local_MTMX.i[0]";
connectAttr "output_space.wim" "hip_root_JNT_space_local_MTMX.i[1]";
connectAttr "fit_space_local_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "fk_neckEnd_localMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "fk_neckEnd_scaleSpaceMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_root_CTL_local_DCMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_root_scaleSpaceMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_01_local_space_local_DCMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_01_localMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_01_scaleSpaceMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_02_localMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_02_scaleSpaceMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_03_scaleSpaceMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "hip_CTL_local_DCMX.msg" "neck_SET.dnsm" -na;
connectAttr "hip_root_JNT_space_local_DCMX.msg" "neck_SET.dnsm" -na;
connectAttr "IK_neckEnd_CTL_local_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "IK_neck_01_CTL_local_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "IK_neck_CTL_local_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "init_hip_space_local_DCMX.msg" "neck_SET.dnsm" -na;
connectAttr "init_hip_space_local_DCMX1.msg" "neck_SET.dnsm" -na;
connectAttr "M_neckEnd_CTL_local_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "M_neckEnd_CTL_localMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "M_neck_CTL_localMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "M_neck_CTL_rotMat_DMTX.msg" "neck_SET.dnsm" -na;
connectAttr "makeNurbCircle1.msg" "neck_SET.dnsm" -na;
connectAttr "makeNurbCircle2.msg" "neck_SET.dnsm" -na;
connectAttr "makeNurbCircle3.msg" "neck_SET.dnsm" -na;
connectAttr "makeNurbCircle4.msg" "neck_SET.dnsm" -na;
connectAttr "makeNurbCircle5.msg" "neck_SET.dnsm" -na;
connectAttr "makeNurbCircle6.msg" "neck_SET.dnsm" -na;
connectAttr "makeNurbCircle7.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neckEnd_localMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neckEnd_scaleSpaceMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_root_CTL_local_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_root_scaleSpaceMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_01_local_space_local_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_01_localMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_01_scaleSpaceMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_02_localMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_02_scaleSpaceMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "FK_neck_03_scaleSpaceMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "hip_CTL_local_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "hip_root_JNT_space_local_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "init_hip_space_local_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "init_hip_space_local_MTMX1.msg" "neck_SET.dnsm" -na;
connectAttr "M_neckEnd_CTL_localMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "M_neck_CTL_localMat_MTMX.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neckEnd_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_param_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_root_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neck_01_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neck_02_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neck_03_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "root_param_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_01_param_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_02_param_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_03_param_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neckEnd_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_param_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_root_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neck_01_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neck_02_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neck_03_twist_MULT.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_twist_PLS.msg" "neck_SET.dnsm" -na;
connectAttr "root_twist_PLS.msg" "neck_SET.dnsm" -na;
connectAttr "neck_01_twist_PLS.msg" "neck_SET.dnsm" -na;
connectAttr "neck_02_twist_PLS.msg" "neck_SET.dnsm" -na;
connectAttr "neck_03_twist_PLS.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_poci.msg" "neck_SET.dnsm" -na;
connectAttr "root_poci.msg" "neck_SET.dnsm" -na;
connectAttr "neck_01_poci.msg" "neck_SET.dnsm" -na;
connectAttr "neck_02_poci.msg" "neck_SET.dnsm" -na;
connectAttr "neck_03_poci.msg" "neck_SET.dnsm" -na;
connectAttr "twist_neckEnd_poci.msg" "neck_SET.dnsm" -na;
connectAttr "twist_neck_poci.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neckEnd_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_root_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neck_01_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neck_02_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neckEnd_neck_03_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neckEnd_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neck_root_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neck_01_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neck_02_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "neck_neck_03_twist_RMAP.msg" "neck_SET.dnsm" -na;
connectAttr "fit_RVS.msg" "neck_SET.dnsm" -na;
connectAttr "neck_GRP.iog" "neck_SET.dsm" -na;
connectAttr "fit_neck_GRP.iog" "neck_SET.dsm" -na;
connectAttr "fit_space.iog" "neck_SET.dsm" -na;
connectAttr "fit_space_GRP.iog" "neck_SET.dsm" -na;
connectAttr "fit_root.iog" "neck_SET.dsm" -na;
connectAttr "fit_neck_01.iog" "neck_SET.dsm" -na;
connectAttr "fit_neckEnd.iog" "neck_SET.dsm" -na;
connectAttr "IK_space.iog" "neck_SET.dsm" -na;
connectAttr "IK_CTL_space.iog" "neck_SET.dsm" -na;
connectAttr "M_neck_OS.iog" "neck_SET.dsm" -na;
connectAttr "M_neck_CTL.iog" "neck_SET.dsm" -na;
connectAttr "IK_neck_OS.iog" "neck_SET.dsm" -na;
connectAttr "IK_neck_CTL.iog" "neck_SET.dsm" -na;
connectAttr "IK_neck_01_OS.iog" "neck_SET.dsm" -na;
connectAttr "IK_neck_01_CTL.iog" "neck_SET.dsm" -na;
connectAttr "upVec_OS.iog" "neck_SET.dsm" -na;
connectAttr "upVec_CTL.iog" "neck_SET.dsm" -na;
connectAttr "M_neckEnd_OS.iog" "neck_SET.dsm" -na;
connectAttr "M_neckEnd_CTL.iog" "neck_SET.dsm" -na;
connectAttr "IK_neckEnd_OS.iog" "neck_SET.dsm" -na;
connectAttr "IK_neckEnd_CTL.iog" "neck_SET.dsm" -na;
connectAttr "twist_neck_OS.iog" "neck_SET.dsm" -na;
connectAttr "twist_neck_CTL.iog" "neck_SET.dsm" -na;
connectAttr "twist_neckEnd_OS.iog" "neck_SET.dsm" -na;
connectAttr "twist_neckEnd_CTL.iog" "neck_SET.dsm" -na;
connectAttr "FK_space.iog" "neck_SET.dsm" -na;
connectAttr "on_curve_space.iog" "neck_SET.dsm" -na;
connectAttr "init_root_space.iog" "neck_SET.dsm" -na;
connectAttr "twist_root_space.iog" "neck_SET.dsm" -na;
connectAttr "init_root_space_aimConstraint1.iog" "neck_SET.dsm" -na;
connectAttr "init_neck_01_space.iog" "neck_SET.dsm" -na;
connectAttr "twist_neck_01_space.iog" "neck_SET.dsm" -na;
connectAttr "init_neck_01_space_aimConstraint1.iog" "neck_SET.dsm" -na;
connectAttr "init_neck_02_space.iog" "neck_SET.dsm" -na;
connectAttr "twist_neck_02_space.iog" "neck_SET.dsm" -na;
connectAttr "init_neckEnd_space.iog" "neck_SET.dsm" -na;
connectAttr "twist_neckEnd_space.iog" "neck_SET.dsm" -na;
connectAttr "output_neckEnd_end_space.iog" "neck_SET.dsm" -na;
connectAttr "FK_scale_space.iog" "neck_SET.dsm" -na;
connectAttr "FK_root_local_space.iog" "neck_SET.dsm" -na;
connectAttr "FK_neck_01_local_space.iog" "neck_SET.dsm" -na;
connectAttr "FK_neck_02_local_space.iog" "neck_SET.dsm" -na;
connectAttr "FK_neckEnd_local_space.iog" "neck_SET.dsm" -na;
connectAttr "fk_ctl_space.iog" "neck_SET.dsm" -na;
connectAttr "FK_root_CTL_OS.iog" "neck_SET.dsm" -na;
connectAttr "FK_root_CTL.iog" "neck_SET.dsm" -na;
connectAttr "FK_neck_01_CTL_OS.iog" "neck_SET.dsm" -na;
connectAttr "FK_neck_01_CTL.iog" "neck_SET.dsm" -na;
connectAttr "FK_neck_02_CTL_OS.iog" "neck_SET.dsm" -na;
connectAttr "FK_neck_02_CTL.iog" "neck_SET.dsm" -na;
connectAttr "FK_neckEnd_CTL_OS.iog" "neck_SET.dsm" -na;
connectAttr "FK_neckEnd_CTL.iog" "neck_SET.dsm" -na;
connectAttr "joint_space.iog" "neck_SET.dsm" -na;
connectAttr "root_JNT_space.iog" "neck_SET.dsm" -na;
connectAttr "neck_01_JNT_space.iog" "neck_SET.dsm" -na;
connectAttr "neck_02_JNT_space.iog" "neck_SET.dsm" -na;
connectAttr "neckEnd_JNT_space.iog" "neck_SET.dsm" -na;
connectAttr "output_space.iog" "neck_SET.dsm" -na;
connectAttr "root_JNT.iog" "neck_SET.dsm" -na;
connectAttr "neck_01_JNT.iog" "neck_SET.dsm" -na;
connectAttr "neck_02_JNT.iog" "neck_SET.dsm" -na;
connectAttr "neckEnd_JNT.iog" "neck_SET.dsm" -na;
connectAttr "fit_space_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_neck_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_neck_01_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_neckEnd_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_neck_01_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_neck_01_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_neck_01_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_neck_01_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_neck_02_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_neck_02_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_neck_02_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_neck_02_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_neck_03_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_neck_03_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_neckEnd_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_neckEnd_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_neckEnd_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_neckEnd_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_neck_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_neck_CTL_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_neck_CTL_rotMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_neckEnd_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "M_neckEnd_CTL_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "M_neckEnd_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_root_JNT_space_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_neck_01_local_space_local_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_neck_01_local_space_local_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_root_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_DCMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_root_JNT_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of neck.ma
