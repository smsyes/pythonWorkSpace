//Maya ASCII 2019 scene
//Name: tail.ma
//Last modified: Mon, Jun 14, 2021 11:27:48 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires "mtoa" "4.0.3";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "9937FEA8-477D-4EF5-B74B-83808CEEEF55";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -41.758204007629104 9.0086417138579034 50.277227071853808 ;
	setAttr ".r" -type "double3" 0.2616472703972853 -41.000000000000135 3.2924033429652795e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FEEE455F-4F6C-8930-FEB5-03BF9531AB2E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 68.46688503924932;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "E120CDD8-49DD-36D9-1117-3DB20119F9F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "203A7C1A-4AA4-A748-A7C8-BE94B5DFDEA6";
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
	rename -uid "02172BF3-44AA-D322-C34E-1B8D8FE0A128";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B5A6F665-4A1B-461E-B2D6-57A65E8FDA06";
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
	rename -uid "0348D909-4962-DB60-3B5B-38A8D8DB90CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CD43B3BA-4A91-09AD-A89D-D18ED6CA2B7D";
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
createNode transform -n "tail_GRP";
	rename -uid "FCEBFDA9-4172-5336-102E-29B9C621A9B8";
createNode transform -n "fit_tail_GRP" -p "tail_GRP";
	rename -uid "CB9C4400-48EF-E170-1F25-469EDFE612B3";
createNode transform -n "fit_tail_space" -p "fit_tail_GRP";
	rename -uid "45066F4F-42B3-9EA8-FA07-769ECB73C3B6";
	addAttr -ci true -sn "fitMode" -ln "fitMode" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k on ".fitMode" yes;
createNode locator -n "fit_tail_spaceShape" -p "fit_tail_space";
	rename -uid "85F7079E-42AE-F970-C9A1-0D979EFB9083";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "fit_tail_space_GRP" -p "fit_tail_GRP";
	rename -uid "7DCC7820-4E34-F4A9-32CA-CCB9AF430408";
createNode transform -n "fit_tail_root" -p "fit_tail_space_GRP";
	rename -uid "B3B01A60-4368-40A9-4FEC-38A4AC5F4687";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 5 0 ;
createNode nurbsCurve -n "fit_tail_rootShape" -p "fit_tail_root";
	rename -uid "7DED04F1-4371-8BF3-D627-A294145B39CE";
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
createNode transform -n "fit_tail_01" -p "fit_tail_root";
	rename -uid "F1F36AE8-443B-4FD5-8900-CCACB98446CE";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 4 0 ;
createNode nurbsCurve -n "fit_tail_01Shape" -p "fit_tail_01";
	rename -uid "D40E0274-4CF7-DD36-BFA2-1FBF9AD93ABD";
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
createNode transform -n "fit_tail_st" -p "fit_tail_space_GRP";
	rename -uid "3844A5D7-47CF-DC1C-46FC-079361AF6A86";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 17 0 ;
createNode nurbsCurve -n "fit_tail_stShape" -p "fit_tail_st";
	rename -uid "A084FD1F-48C8-1FDB-EDF4-36B10628DF6E";
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
createNode transform -n "fit_tail_02" -p "fit_tail_st";
	rename -uid "F81B9C6F-4170-57C6-9A85-C7B9FE1AA76B";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 -4 0 ;
createNode nurbsCurve -n "fit_tail_02Shape" -p "fit_tail_02";
	rename -uid "469CF35C-444C-470E-91BE-DBB901294137";
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
createNode transform -n "IK_space" -p "tail_GRP";
	rename -uid "85B65698-4AAF-2E06-525D-01911B72FE2A";
createNode transform -n "tail_crv" -p "IK_space";
	rename -uid "C75C6BFC-4C80-2C5C-2A41-C1845C14C7F1";
	setAttr ".v" no;
createNode bezierCurve -n "bezierShape1" -p "tail_crv";
	rename -uid "45466380-47D6-981B-0818-7C95BC3C534F";
	setAttr -k off ".v";
	setAttr -s 4 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0 5 0
		0 9 0
		0 13 0
		0 17 0
		;
createNode transform -n "IK_CTL_space" -p "IK_space";
	rename -uid "0785B6DA-44C6-E858-2756-69AC10EA9EC0";
createNode transform -n "M_tail_OS" -p "IK_CTL_space";
	rename -uid "4ACAD9B1-4757-40CF-08DE-D3B6350062E2";
createNode transform -n "M_tail_CTL" -p "M_tail_OS";
	rename -uid "0E9C0BFF-4A09-3CC7-B9C3-73B024EA27B3";
	addAttr -ci true -k true -sn "FK_vis" -ln "FK_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IK_vis" -ln "IK_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "upVec_vis" -ln "upVec_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twist_vis" -ln "twist_vis" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k on ".FK_vis";
	setAttr -k on ".IK_vis";
	setAttr -k on ".upVec_vis";
	setAttr -k on ".twist_vis";
createNode transform -n "IK_tail_OS" -p "M_tail_CTL";
	rename -uid "85537902-4137-521D-084F-B4B2798D0672";
createNode transform -n "IK_tail_CTL" -p "IK_tail_OS";
	rename -uid "8BFCEC31-4248-5335-D6B4-B3B933626EA2";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_tail_CTLShape" -p "IK_tail_CTL";
	rename -uid "37BA5A79-4C75-8B9B-2B08-909B03816729";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "IK_tail_01_OS" -p "M_tail_CTL";
	rename -uid "2218517F-4D2C-322A-9104-949804678347";
createNode transform -n "IK_tail_01_CTL" -p "IK_tail_01_OS";
	rename -uid "8E3783FE-4D98-108C-0F3D-32BC85B42DCE";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_tail_01_CTLShape" -p "IK_tail_01_CTL";
	rename -uid "FED29530-4DBF-DB8B-A684-F6B9DC0D9E74";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "M_tail_CTLShape" -p "M_tail_CTL";
	rename -uid "FDE95AB6-42CB-6816-C634-0DB76F71462D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 7.4913271339601097 4.5871148979849805e-16 
		-7.4913271339601133 6.4871601008940362e-16 6.4871601008940362e-16 -10.594336433019951 
		-7.4913271339601097 4.5871148979849814e-16 -7.4913271339601115 -10.594336433019958 
		3.3629552517697639e-32 -5.4921227150737444e-16 -7.4913271339601097 -4.5871148979849814e-16 
		7.4913271339601097 -1.0612419262940688e-15 -6.4871601008940431e-16 10.594336433019958 
		7.4913271339601097 -4.5871148979849814e-16 7.4913271339601115 10.594336433019958 
		-8.8465173248652672e-32 1.4447459187456415e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "upVec_OS" -p "M_tail_OS";
	rename -uid "AD8B5165-452E-748D-CC02-B99BE3D101CE";
	setAttr ".t" -type "double3" 0 6 -12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "upVec_CTL" -p "upVec_OS";
	rename -uid "F271052D-46A8-68BA-5A54-CDAE5E0986B2";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "upVec_CTLShape" -p "upVec_CTL";
	rename -uid "640854A3-4595-9D43-6BF6-E48CEF9C3814";
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
createNode transform -n "M_tail_st_OS" -p "IK_CTL_space";
	rename -uid "77BF96EA-4355-E3DB-B17F-CAB083A47A3D";
createNode transform -n "M_tail_st_CTL" -p "M_tail_st_OS";
	rename -uid "BFE12845-4598-7E0A-18E2-2B9FD3248DE5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "IK_tail_02_OS" -p "M_tail_st_CTL";
	rename -uid "466B9B4E-4BFA-6302-2F34-70BF7C5EF549";
createNode transform -n "IK_tail_02_CTL" -p "IK_tail_02_OS";
	rename -uid "395F1D96-41F6-AA08-F4EE-A4BDEBD75D59";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_tail_02_CTLShape" -p "IK_tail_02_CTL";
	rename -uid "E549C78D-4286-836F-F6A0-9D8E2478AF8A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "IK_tail_st_OS" -p "M_tail_st_CTL";
	rename -uid "65E63FF3-45E6-A75E-6D48-43B7C25205E8";
createNode transform -n "IK_tail_st_CTL" -p "IK_tail_st_OS";
	rename -uid "B5CD6DDA-462F-8621-142C-D2A0EA2688BC";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_tail_st_CTLShape" -p "IK_tail_st_CTL";
	rename -uid "FE76CA43-41F2-0027-DBE9-4A83AEA33E0A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "M_tail_st_CTLShape" -p "M_tail_st_CTL";
	rename -uid "CC4C4EF4-4058-528B-F5CA-FD89F0222C10";
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
createNode transform -n "twist_tail_OS" -p "IK_space";
	rename -uid "FDDDF9CF-46F9-33FE-42D9-5689CEBD9B4C";
createNode transform -n "twist_tail_CTL" -p "twist_tail_OS";
	rename -uid "7F76DFFD-4C84-711F-AD36-ADA2B4AC20EA";
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
createNode nurbsCurve -n "twist_tail_CTLShape" -p "twist_tail_CTL";
	rename -uid "DE94273E-4F10-740A-3E57-26B2B1573556";
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
createNode transform -n "twist_tail_st_OS" -p "IK_space";
	rename -uid "61ED4FA7-459A-1315-2F68-F18AA0E865A0";
createNode transform -n "twist_tail_st_CTL" -p "twist_tail_st_OS";
	rename -uid "64BC8695-4520-2B2A-E305-4E88F27EFBF9";
	addAttr -ci true -k true -sn "end_uvalue" -ln "end_uvalue" -dv 1 -min 0 -max 1 
		-at "float";
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
createNode nurbsCurve -n "twist_tail_st_CTLShape" -p "twist_tail_st_CTL";
	rename -uid "69B0FA05-4CCC-F4B7-C97B-2289AF539135";
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
createNode transform -n "FK_space" -p "tail_GRP";
	rename -uid "EE37DDA9-4EBD-AD35-D87E-898EA1D27C06";
createNode transform -n "on_curve_space" -p "FK_space";
	rename -uid "A641299A-4B9F-20A2-9D59-6F80CA90264F";
createNode transform -n "init_root_space" -p "on_curve_space";
	rename -uid "FF65103D-4D01-3418-37B6-7485E65D7BB3";
createNode transform -n "twist_root_space" -p "init_root_space";
	rename -uid "484960B9-409C-B8FF-08E0-5193C398CED7";
createNode aimConstraint -n "init_root_space_aimConstraint1" -p "init_root_space";
	rename -uid "A6BA0BF4-4DC3-8ACC-3450-1D9FF476F036";
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
createNode transform -n "init_tail_01_space" -p "on_curve_space";
	rename -uid "88C3C35B-4A8C-BAE4-14AB-2FA729AF2BBB";
createNode transform -n "twist_tail_01_space" -p "init_tail_01_space";
	rename -uid "B0EF9640-439F-CCFC-206D-D1A674B768F1";
createNode aimConstraint -n "init_tail_01_space_aimConstraint1" -p "init_tail_01_space";
	rename -uid "89BBB619-429C-F879-E8ED-FD9768C3DCC2";
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
createNode transform -n "init_tail_02_space" -p "on_curve_space";
	rename -uid "1400670F-4297-6D00-43B1-8A993BD3EDF0";
createNode transform -n "twist_tail_02_space" -p "init_tail_02_space";
	rename -uid "8CE54A7A-4D69-6639-5E4D-D8900F83C648";
createNode aimConstraint -n "init_tail_02_space_aimConstraint1" -p "init_tail_02_space";
	rename -uid "7725FB17-4FF5-FAD7-7F85-BFBA289EC397";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineD_spaceW0" -dv 1 -at "double";
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
createNode transform -n "init_tail_03_space" -p "on_curve_space";
	rename -uid "B2D4174D-4B80-54D5-B006-06806FB1A2E3";
createNode transform -n "twist_tail_03_space" -p "init_tail_03_space";
	rename -uid "51453285-424F-CB9B-EFDB-BA97F2495312";
createNode aimConstraint -n "init_tail_03_space_aimConstraint1" -p "init_tail_03_space";
	rename -uid "A19091A5-47F7-266E-552E-868D1786137E";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr -k on ".w0";
createNode transform -n "init_tail_st_space" -p "on_curve_space";
	rename -uid "6EBDA6D7-43E1-96AB-512F-AFB48C09D4B3";
createNode transform -n "twist_tail_st_space" -p "init_tail_st_space";
	rename -uid "FA8E239E-46B3-E029-A293-D6BA2AE1CA26";
createNode aimConstraint -n "init_tail_st_space_aimConstraint1" -p "init_tail_st_space";
	rename -uid "B84B31C9-4CA9-AF71-2CFB-B3997BF1D30F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineD_spaceW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode transform -n "output_tail_st_end_space" -p "on_curve_space";
	rename -uid "7B44E50F-46F0-A3E5-F420-1B89DE5753CE";
createNode transform -n "FK_scale_space" -p "FK_space";
	rename -uid "D9479618-422B-0B01-AF18-FEBEA525AE01";
createNode transform -n "FK_root_local_space" -p "FK_scale_space";
	rename -uid "FD669C67-4A65-BC73-09A5-2DB2066F79A2";
createNode transform -n "FK_tail_01_local_space" -p "FK_scale_space";
	rename -uid "51380619-4B93-9DB2-A5E9-97A32EB836EB";
createNode transform -n "FK_tail_02_local_space" -p "FK_scale_space";
	rename -uid "171E2C8A-472B-40BD-BA0F-0F827C56BD18";
createNode transform -n "FK_tail_03_local_space" -p "FK_scale_space";
	rename -uid "7A1BC740-459E-DC80-8A23-CF9206D0A273";
createNode transform -n "FK_tail_st_local_space" -p "FK_scale_space";
	rename -uid "D4220726-4865-9B17-1260-D2BE2997AC3E";
createNode transform -n "fk_ctl_space" -p "FK_space";
	rename -uid "6CBBCE14-4E24-70EE-3BD0-4BB51A181D91";
createNode transform -n "FK_root_CTL_OS" -p "fk_ctl_space";
	rename -uid "315BE30D-4879-8AA2-6702-1CACC80EDECA";
createNode transform -n "FK_root_CTL" -p "FK_root_CTL_OS";
	rename -uid "8A81B9FE-477D-B264-8B32-35BFE6BA8897";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_tail_01_CTL_OS" -p "FK_root_CTL";
	rename -uid "44B68704-4700-B305-E79F-12BCF44A5286";
createNode transform -n "FK_tail_01_CTL" -p "FK_tail_01_CTL_OS";
	rename -uid "769BB0B1-44AF-C0B9-D8A5-78AC3CE18A82";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_tail_02_CTL_OS" -p "FK_tail_01_CTL";
	rename -uid "71C27B36-448D-795F-84AA-86B8857F5D26";
createNode transform -n "FK_tail_02_CTL" -p "FK_tail_02_CTL_OS";
	rename -uid "DCC92935-4336-FC74-2542-B197EACB95A1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_tail_03_CTL_OS" -p "FK_tail_02_CTL";
	rename -uid "E90C2F59-481D-D2A5-8B31-C5B7C5E4F3B8";
createNode transform -n "FK_tail_03_CTL" -p "FK_tail_03_CTL_OS";
	rename -uid "4E113D2D-4121-053D-B10D-1C893859B940";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_tail_st_CTL_OS" -p "FK_tail_03_CTL";
	rename -uid "553BCB8B-4AE7-2FE2-2D6E-228F2D862ABF";
createNode transform -n "FK_tail_st_CTL" -p "FK_tail_st_CTL_OS";
	rename -uid "0CB4D2B6-4497-A86B-7927-739BF8851C49";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_tail_st_CTLShape" -p "FK_tail_st_CTL";
	rename -uid "E891A696-49AA-6850-2AAA-0881D3E095B3";
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
createNode nurbsCurve -n "FK_tail_03_CTLShape" -p "FK_tail_03_CTL";
	rename -uid "FB7D91EB-43A1-2D55-B0EB-15AD0935CA5E";
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
createNode nurbsCurve -n "FK_tail_02_CTLShape" -p "FK_tail_02_CTL";
	rename -uid "AB230401-472F-6614-E814-F398D8354512";
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
createNode nurbsCurve -n "FK_tail_01_CTLShape" -p "FK_tail_01_CTL";
	rename -uid "228F8ECB-495A-1658-9C2B-F28FA60C4DC4";
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
	rename -uid "7BAA698C-4F34-B612-D50D-C5821A80EB82";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 4.7408503305919059 2.9029335912980257e-16 
		-4.7408503305919059 4.1053680554821001e-16 4.1053680554821001e-16 -6.7045748347040437 
		-4.7408503305919059 2.9029335912980242e-16 -4.740850330591905 -6.704574834704049 
		2.1282300494986448e-32 -3.4756634337025209e-16 -4.7408503305919059 -2.9029335912980247e-16 
		4.7408503305919059 -6.7160184666099512e-16 -4.1053680554821055e-16 6.704574834704049 
		4.7408503305919059 -2.9029335912980242e-16 4.740850330591905 6.704574834704049 -5.5984759221166102e-32 
		9.1430050297187509e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "joint_space" -p "tail_GRP";
	rename -uid "457D401E-4000-83E1-F541-CC924F06ADC6";
	setAttr ".v" no;
createNode transform -n "root_JNT_space" -p "joint_space";
	rename -uid "5A42F23F-453B-0214-03AE-9597C224BFAB";
	setAttr -s 2 ".iog";
createNode transform -n "tail_01_JNT_space" -p "root_JNT_space";
	rename -uid "6C17A1CF-4198-3986-39AD-52A03AFE184B";
createNode transform -n "tail_02_JNT_space" -p "tail_01_JNT_space";
	rename -uid "89F93C5C-4465-FA6E-F3D7-898F44CEB4D0";
createNode transform -n "tail_03_JNT_space" -p "tail_02_JNT_space";
	rename -uid "7A7ED86A-4CB5-1353-86EB-EFBC0DF5C9E2";
createNode transform -n "tail_st_JNT_space" -p "tail_03_JNT_space";
	rename -uid "276F64C4-4D8B-0757-2E51-B09D8D67E367";
createNode transform -n "output_space" -p "tail_GRP";
	rename -uid "6F6D8B0E-4F14-A924-2131-1E9E84A67ABD";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode joint -n "root_JNT" -p "output_space";
	rename -uid "05A2480D-42A5-8AEF-AAB3-8EAAC31F899E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "tail_01_JNT" -p "root_JNT";
	rename -uid "3F7DA8A0-4DF1-277F-ECBC-B4836D965580";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "tail_02_JNT" -p "tail_01_JNT";
	rename -uid "05AFF349-4D52-48C0-691A-84B40EAC81D5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "tail_03_JNT" -p "tail_02_JNT";
	rename -uid "C7F7676C-4328-899A-ACA1-929B41E5486F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "tail_st_JNT" -p "tail_03_JNT";
	rename -uid "0902B063-48E2-CC9D-081D-508FC583BDE1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5A4395EC-4164-73CD-66F0-9199497EEC1F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "576F9F7E-4BB2-4CBE-F9B2-1F81CB0D5977";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6C7F228A-40B9-42C2-953F-2FB643BC5009";
createNode displayLayerManager -n "layerManager";
	rename -uid "B2D6607F-4122-9948-FE7B-0E8BBBDCBA75";
createNode displayLayer -n "defaultLayer";
	rename -uid "5FF2A37E-4812-EFF9-E634-9EB39BC43258";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DCB0792A-446E-3A85-8401-82A668BCABD4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CD415079-45C0-4A0D-CDE4-71A4D128F691";
	setAttr ".g" yes;
createNode decomposeMatrix -n "fit_space_local_DMTX";
	rename -uid "40D960B1-4308-D51B-E238-B4B10C31FFB6";
createNode decomposeMatrix -n "IK_tail_CTL_local_DMTX";
	rename -uid "9B38590F-42BB-3559-3260-34B926AE30B2";
createNode decomposeMatrix -n "IK_tail_01_CTL_local_DMTX";
	rename -uid "1616A827-4B8E-361F-BA19-D7AB5AE611BA";
createNode decomposeMatrix -n "IK_tail_02_CTL_local_DMTX";
	rename -uid "A55DBAAA-4CED-7949-1EC8-8F92D568D2A1";
createNode decomposeMatrix -n "IK_tail_st_CTL_local_DMTX";
	rename -uid "D0187A48-417D-D056-A67C-A79023B7ACEC";
createNode multiplyDivide -n "tail_param_MULT";
	rename -uid "AF91EDEB-4DDB-AFD1-49E6-0488F1AFE498";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "root_param_MULT";
	rename -uid "840DB2FF-4AD6-D1EF-981D-C49E75218DF6";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode pointOnCurveInfo -n "root_poci";
	rename -uid "7DD08157-4B92-B377-C514-E7B6A5397C85";
	setAttr ".top" yes;
createNode plusMinusAverage -n "root_twist_PLS";
	rename -uid "09F55764-4E74-568C-4B55-F59E422F877A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion1";
	rename -uid "8F485B6F-4FA5-E533-541E-579694037606";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_root_scaleSpaceMat_DMTX";
	rename -uid "17FB1068-41CE-826C-72E4-9C8B322B9518";
createNode multMatrix -n "FK_root_scaleSpaceMat_MTMX";
	rename -uid "005B8FC0-4E4F-8799-B2BF-08AA6B81CB71";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "tail_01_param_MULT";
	rename -uid "62EDCBC2-4A5C-BF5A-532F-11AF58547375";
createNode pointOnCurveInfo -n "tail_01_poci";
	rename -uid "6DAAEB88-4D19-BAC5-5A26-129949DFB388";
	setAttr ".top" yes;
createNode plusMinusAverage -n "tail_01_twist_PLS";
	rename -uid "7072294F-4E02-8A2A-6081-65B135826340";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion2";
	rename -uid "61B8C168-461F-1E57-D5F0-70B641EB9648";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_tail_01_scaleSpaceMat_DMTX";
	rename -uid "88A67BBF-496C-6C8F-BAA3-9287361FE068";
createNode multMatrix -n "FK_tail_01_scaleSpaceMat_MTMX";
	rename -uid "8718F606-47D3-CA08-A91E-4589549AB72E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_tail_01_localMat_DMTX";
	rename -uid "EA4F1EA7-4DC6-622E-E675-E49A72249739";
createNode multMatrix -n "FK_tail_01_localMat_MTMX";
	rename -uid "2DDA25B6-4AB8-7EF1-AA35-4CBBB300ECF7";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "tail_02_param_MULT";
	rename -uid "D7637C99-43E0-7538-5A38-5186A59337DB";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode pointOnCurveInfo -n "tail_02_poci";
	rename -uid "1987300F-4EF3-C516-60C5-4F8BC4223D46";
	setAttr ".top" yes;
createNode plusMinusAverage -n "tail_02_twist_PLS";
	rename -uid "B2FE319A-416A-E81F-99E7-62A322E70C7F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion3";
	rename -uid "79F935D2-4CE0-EB9C-6124-B69732EBC339";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_tail_02_scaleSpaceMat_DMTX";
	rename -uid "2384C251-4C52-F0DF-FDB5-A1BBB1D7651B";
createNode multMatrix -n "FK_tail_02_scaleSpaceMat_MTMX";
	rename -uid "21D41D76-4E9F-F2D1-FC4E-94B74AB70AD3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_tail_02_localMat_DMTX";
	rename -uid "59251991-4FF0-05BB-A29C-FBA08530AC71";
createNode multMatrix -n "FK_tail_02_localMat_MTMX";
	rename -uid "E393B462-4569-8113-B1AE-A698A9A34D80";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "tail_03_param_MULT";
	rename -uid "E156A560-47C8-71BA-9ECA-4CAFFF05EDCF";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode pointOnCurveInfo -n "tail_03_poci";
	rename -uid "CD3004EF-4E45-2689-610D-C897BFF5924C";
	setAttr ".top" yes;
createNode plusMinusAverage -n "tail_03_twist_PLS";
	rename -uid "D7D4E51F-4AA1-7AC8-70A1-BE8F6E483488";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion4";
	rename -uid "74EA059C-4CC5-155E-53D3-F1859E8ABEA3";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_tail_03_scaleSpaceMat_DMTX";
	rename -uid "03DD9A52-4F0C-A2C3-8842-ACB525CAD466";
createNode multMatrix -n "FK_tail_03_scaleSpaceMat_MTMX";
	rename -uid "CC1ED628-49D3-42F2-A46D-788BE28D9A64";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_tail_03_localMat_DMTX";
	rename -uid "D8799AD8-4429-66D0-70A7-FF890409936A";
createNode multMatrix -n "FK_tail_03_localMat_MTMX";
	rename -uid "A6A0AC3F-4F00-C1EF-C4F2-7EB43B327F8A";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "tail_st_param_MULT";
	rename -uid "66FA7FED-45FB-AE81-CCD3-3B9439C195FC";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode pointOnCurveInfo -n "tail_st_poci";
	rename -uid "DCA2F1EF-4E8D-DF1F-73FF-6B83FFD9C038";
	setAttr ".top" yes;
createNode plusMinusAverage -n "tail_st_twist_PLS";
	rename -uid "B14E2BC2-4B5E-2BB0-9112-E59806032E08";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion5";
	rename -uid "5346311A-4E47-17C3-8AB9-9592EE522C08";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_tail_st_scaleSpaceMat_DMTX";
	rename -uid "B99D2B3C-4BF1-234B-0847-10AA52DF1AEB";
createNode multMatrix -n "FK_tail_st_scaleSpaceMat_MTMX";
	rename -uid "CC30FA98-4A10-6ACD-950B-5BADDC3D0356";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_tail_st_localMat_DMTX";
	rename -uid "9AD98970-44ED-4CD8-34AE-C5AA0ED3404D";
createNode multMatrix -n "FK_tail_st_localMat_MTMX";
	rename -uid "2AAF3E12-401E-80D4-307F-76921436F91E";
	setAttr -s 2 ".i";
createNode pointOnCurveInfo -n "twist_tail_poci";
	rename -uid "BB125720-4F1D-AA8D-83D6-C08E567CF2DD";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_tail_CTL_localMat_DMTX";
	rename -uid "56E750B4-467D-D3B9-8E93-1A8D1B6AA5AC";
createNode multMatrix -n "M_tail_CTL_localMat_MTMX";
	rename -uid "D1227AC4-4A8D-A827-BF9D-BA80576EC894";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_tail_CTL_rotMat_DMTX";
	rename -uid "D1D3DAE5-4B7E-7C1E-8D89-E1BFB8966162";
createNode remapValue -n "tail_root_twist_RMAP";
	rename -uid "0C0D244D-4003-2B7D-6D5E-119D28302C81";
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
createNode multiplyDivide -n "tail_root_twist_MULT";
	rename -uid "7C779608-4D2F-06AB-8B1F-2FBF8B0D5943";
createNode unitConversion -n "unitConversion6";
	rename -uid "4548A357-4368-864B-DBAF-75AC2B06DF0F";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_tail_01_twist_RMAP";
	rename -uid "AB225BBD-4235-9491-E6A7-83BE5B98A361";
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
createNode multiplyDivide -n "tail_tail_01_twist_MULT";
	rename -uid "A761D4C3-4182-D495-C4B1-B28ABB435D5C";
createNode unitConversion -n "unitConversion7";
	rename -uid "E4174B3C-407B-AE5E-2359-9F9B30C8BF47";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_tail_02_twist_RMAP";
	rename -uid "9D79E003-4DF8-13EA-0CFE-F184F8FD3B5E";
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
createNode multiplyDivide -n "tail_tail_02_twist_MULT";
	rename -uid "F8A01466-4DAA-C653-2362-4C844ABA6893";
createNode unitConversion -n "unitConversion8";
	rename -uid "D2301D14-4092-0AFC-B6AB-56A84B490E56";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_tail_03_twist_RMAP";
	rename -uid "433F60E9-4B63-A7D7-955C-7EB8539C1C77";
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
createNode multiplyDivide -n "tail_tail_03_twist_MULT";
	rename -uid "8B85DA74-49BF-C537-8645-3591AF92483E";
createNode unitConversion -n "unitConversion9";
	rename -uid "8AF899E1-4CD2-6DB1-93CA-A49BA7DE33DC";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_tail_st_twist_RMAP";
	rename -uid "B532321E-40F7-2A85-3B8E-A6921A7C4BEE";
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
createNode multiplyDivide -n "tail_tail_st_twist_MULT";
	rename -uid "F8F7A9F4-41B8-3792-F7F6-1C9C5364D114";
createNode unitConversion -n "unitConversion10";
	rename -uid "8867E1B1-42F7-F794-AE8A-7BACEE594F42";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "twist_chest_poci";
	rename -uid "D176FD78-4FFF-3E79-971E-03B8D7788313";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_tail_st_CTL_localMat_DMTX";
	rename -uid "41BC9DA5-45FF-4650-3414-4BB17F1CAE0A";
createNode multMatrix -n "M_tail_st_CTL_localMat_MTMX";
	rename -uid "79EE496C-47BB-9D29-56F3-99BA664D4468";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_tail_st_CTL_local_DMTX";
	rename -uid "5A614DC1-4790-20C6-DA00-8EB626E38FA2";
createNode remapValue -n "tail_st_root_twist_RMAP";
	rename -uid "F8638F2B-4343-0647-1492-6C8AF5262BE5";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "tail_st_root_twist_MULT";
	rename -uid "1ECBB12A-422E-C357-B8E0-018D1BBCFC38";
createNode unitConversion -n "unitConversion11";
	rename -uid "DDDB87B7-4EBA-3A5B-5CFC-ACA77828879F";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_st_tail_01_twist_RMAP";
	rename -uid "E271A6FC-420C-CEC7-BDFE-1E9B567BEAAE";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "tail_st_tail_01_twist_MULT";
	rename -uid "2C9E7825-4E60-D4E0-44FA-FCB238278E0D";
createNode unitConversion -n "unitConversion12";
	rename -uid "0B6A0EF4-4EA3-A57D-3215-E9A0CA91B93F";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_st_tail_02_twist_RMAP";
	rename -uid "EEF683F0-445A-05F4-6F8C-A7B523147412";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "tail_st_tail_02_twist_MULT";
	rename -uid "4D439525-4CFC-D9C6-5D16-D480A1AA13F6";
createNode unitConversion -n "unitConversion13";
	rename -uid "6D89EEBC-4D7A-2991-7A90-0E9FC7927CC7";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_st_tail_03_twist_RMAP";
	rename -uid "B518CA61-446F-0744-08C6-41AD1AFA479C";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "tail_st_tail_03_twist_MULT";
	rename -uid "DE833E5D-46C7-1FC6-5CCD-9FAE08BA2852";
createNode unitConversion -n "unitConversion14";
	rename -uid "36C7D539-464A-35A5-BDEB-C7863D929A75";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "tail_st_tail_st_twist_RMAP";
	rename -uid "51C0F1FA-4100-3232-1A83-69B95A174ED6";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "tail_st_tail_st_twist_MULT";
	rename -uid "9C03BE67-4504-4740-B977-19845DE90344";
createNode unitConversion -n "unitConversion15";
	rename -uid "5AA5CB64-478B-E1FE-7CDC-41AA2A8A7E45";
	setAttr ".cf" 57.295779513082323;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "B02EA542-477C-7EE9-BDC2-BCB999A0CB6C";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "6BD55CB8-4E78-B35A-3902-12B40683F874";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "fit_RVS";
	rename -uid "21DAD680-4805-88F0-EC3C-92A7420A2F0F";
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "7953124B-4BAF-B3EF-C486-35AB69D0B22A";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "FCDF8AE8-4B12-D0EE-A599-DFBAB3B2A46E";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "4737BE15-415C-3016-8122-4AAACF12D3E6";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "3F76CE2A-4331-6E6F-0481-34B1263E8DA9";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7B22A1FF-4745-5184-5E4C-61B0C71F8301";
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1133\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1133\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "31564CA0-4C60-4D34-B655-A88E9D247D59";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "CC5188F9-4C02-885B-D125-21B04E6F3A95";
createNode multMatrix -n "root_JNT_local_MTMX";
	rename -uid "EF12EA2E-455A-EC55-B023-9C8091B614B3";
createNode decomposeMatrix -n "root_JNT_local_DCMX";
	rename -uid "889C4C57-4827-E798-3643-209EBF8370BB";
createNode decomposeMatrix -n "root_JNT_local_DCMX1";
	rename -uid "C8AAD0C7-455F-E8EA-C4D0-91A242E45B12";
createNode multMatrix -n "FK_tail_01_local_space_local_MTMX";
	rename -uid "CE9F5C4A-4346-43F8-D934-4386CA7E4E4B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_tail_01_local_space_local_DCMX";
	rename -uid "92AA71D8-40F0-3C92-5F8B-67B01B7435B6";
createNode decomposeMatrix -n "FK_root_CTL_local_DCMX";
	rename -uid "B6AD39DC-49BD-CA5B-B317-81A82297463E";
createNode multMatrix -n "FK_root_CTL_local_MTMX";
	rename -uid "0CCBDC44-4869-D58A-1E4A-48BC1664706A";
	setAttr -s 2 ".i";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "CDE74092-441F-AA12-AA93-7FA45E505C0E";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/tail.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode multMatrix -n "root_JNT_space_local_MTMX";
	rename -uid "623610F8-4433-3169-6FB2-80A8C8608984";
	setAttr -s 2 ".i";
createNode objectSet -n "tail_SET";
	rename -uid "CA09F0C3-4D4A-9970-BEEE-31AD119A9321";
	setAttr ".ihi" 0;
	setAttr -s 76 ".dsm";
	setAttr -s 83 ".dnsm";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "47CC9907-4B52-7ABD-54AD-02B22EB6C233";
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
	setAttr -s 38 ".u";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "fit_tail_space.fitMode" "fit_tail_GRP.v";
connectAttr "fit_space_local_DMTX.ot" "fit_tail_space_GRP.t";
connectAttr "fit_space_local_DMTX.or" "fit_tail_space_GRP.r";
connectAttr "fit_space_local_DMTX.os" "fit_tail_space_GRP.s";
connectAttr "fit_RVS.ox" "IK_space.v";
connectAttr "IK_tail_CTL_local_DMTX.ot" "bezierShape1.cp[0]";
connectAttr "IK_tail_01_CTL_local_DMTX.ot" "bezierShape1.cp[1]";
connectAttr "IK_tail_02_CTL_local_DMTX.ot" "bezierShape1.cp[2]";
connectAttr "IK_tail_st_CTL_local_DMTX.ot" "bezierShape1.cp[3]";
connectAttr "fit_space_local_DMTX.ot" "IK_CTL_space.t";
connectAttr "fit_space_local_DMTX.or" "IK_CTL_space.r";
connectAttr "fit_space_local_DMTX.os" "IK_CTL_space.s";
connectAttr "M_tail_CTL_localMat_DMTX.ot" "M_tail_OS.t";
connectAttr "M_tail_CTL.IK_vis" "IK_tail_OS.v";
connectAttr "makeNurbCircle3.oc" "IK_tail_CTLShape.cr";
connectAttr "fit_tail_01.t" "IK_tail_01_OS.t";
connectAttr "M_tail_CTL.IK_vis" "IK_tail_01_OS.v";
connectAttr "makeNurbCircle4.oc" "IK_tail_01_CTLShape.cr";
connectAttr "makeNurbCircle1.oc" "M_tail_CTLShape.cr";
connectAttr "M_tail_CTL.upVec_vis" "upVec_OS.v";
connectAttr "M_tail_st_CTL_localMat_DMTX.ot" "M_tail_st_OS.t";
connectAttr "fit_tail_02.t" "IK_tail_02_OS.t";
connectAttr "M_tail_CTL.IK_vis" "IK_tail_02_OS.v";
connectAttr "makeNurbCircle5.oc" "IK_tail_02_CTLShape.cr";
connectAttr "M_tail_CTL.IK_vis" "IK_tail_st_OS.v";
connectAttr "makeNurbCircle6.oc" "IK_tail_st_CTLShape.cr";
connectAttr "twist_tail_poci.p" "twist_tail_OS.t";
connectAttr "M_tail_CTL_rotMat_DMTX.or" "twist_tail_OS.r";
connectAttr "fit_space_local_DMTX.os" "twist_tail_OS.s";
connectAttr "M_tail_CTL.twist_vis" "twist_tail_OS.v";
connectAttr "twist_chest_poci.p" "twist_tail_st_OS.t";
connectAttr "M_tail_st_CTL_local_DMTX.or" "twist_tail_st_OS.r";
connectAttr "fit_space_local_DMTX.os" "twist_tail_st_OS.s";
connectAttr "M_tail_CTL.twist_vis" "twist_tail_st_OS.v";
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
connectAttr "init_tail_01_space.t" "init_root_space_aimConstraint1.tg[0].tt";
connectAttr "init_tail_01_space.rp" "init_root_space_aimConstraint1.tg[0].trp";
connectAttr "init_tail_01_space.rpt" "init_root_space_aimConstraint1.tg[0].trt";
connectAttr "init_tail_01_space.pm" "init_root_space_aimConstraint1.tg[0].tpm";
connectAttr "init_root_space_aimConstraint1.w0" "init_root_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_root_space_aimConstraint1.wum";
connectAttr "tail_01_poci.p" "init_tail_01_space.t";
connectAttr "init_tail_01_space_aimConstraint1.crx" "init_tail_01_space.rx";
connectAttr "init_tail_01_space_aimConstraint1.cry" "init_tail_01_space.ry";
connectAttr "init_tail_01_space_aimConstraint1.crz" "init_tail_01_space.rz";
connectAttr "unitConversion2.o" "twist_tail_01_space.ry";
connectAttr "init_tail_01_space.pim" "init_tail_01_space_aimConstraint1.cpim";
connectAttr "init_tail_01_space.t" "init_tail_01_space_aimConstraint1.ct";
connectAttr "init_tail_01_space.rp" "init_tail_01_space_aimConstraint1.crp";
connectAttr "init_tail_01_space.rpt" "init_tail_01_space_aimConstraint1.crt";
connectAttr "init_tail_01_space.ro" "init_tail_01_space_aimConstraint1.cro";
connectAttr "init_tail_02_space.t" "init_tail_01_space_aimConstraint1.tg[0].tt";
connectAttr "init_tail_02_space.rp" "init_tail_01_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_tail_02_space.rpt" "init_tail_01_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_tail_02_space.pm" "init_tail_01_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_tail_01_space_aimConstraint1.w0" "init_tail_01_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_tail_01_space_aimConstraint1.wum";
connectAttr "tail_02_poci.p" "init_tail_02_space.t";
connectAttr "init_tail_02_space_aimConstraint1.crx" "init_tail_02_space.rx";
connectAttr "init_tail_02_space_aimConstraint1.cry" "init_tail_02_space.ry";
connectAttr "init_tail_02_space_aimConstraint1.crz" "init_tail_02_space.rz";
connectAttr "unitConversion3.o" "twist_tail_02_space.ry";
connectAttr "init_tail_02_space.pim" "init_tail_02_space_aimConstraint1.cpim";
connectAttr "init_tail_02_space.t" "init_tail_02_space_aimConstraint1.ct";
connectAttr "init_tail_02_space.rp" "init_tail_02_space_aimConstraint1.crp";
connectAttr "init_tail_02_space.rpt" "init_tail_02_space_aimConstraint1.crt";
connectAttr "init_tail_02_space.ro" "init_tail_02_space_aimConstraint1.cro";
connectAttr "init_tail_03_space.t" "init_tail_02_space_aimConstraint1.tg[0].tt";
connectAttr "init_tail_03_space.rp" "init_tail_02_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_tail_03_space.rpt" "init_tail_02_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_tail_03_space.pm" "init_tail_02_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_tail_02_space_aimConstraint1.w0" "init_tail_02_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_tail_02_space_aimConstraint1.wum";
connectAttr "tail_03_poci.p" "init_tail_03_space.t";
connectAttr "init_tail_03_space_aimConstraint1.crx" "init_tail_03_space.rx";
connectAttr "init_tail_03_space_aimConstraint1.cry" "init_tail_03_space.ry";
connectAttr "init_tail_03_space_aimConstraint1.crz" "init_tail_03_space.rz";
connectAttr "unitConversion4.o" "twist_tail_03_space.ry";
connectAttr "init_tail_03_space.pim" "init_tail_03_space_aimConstraint1.cpim";
connectAttr "init_tail_03_space.t" "init_tail_03_space_aimConstraint1.ct";
connectAttr "init_tail_03_space.rp" "init_tail_03_space_aimConstraint1.crp";
connectAttr "init_tail_03_space.rpt" "init_tail_03_space_aimConstraint1.crt";
connectAttr "init_tail_03_space.ro" "init_tail_03_space_aimConstraint1.cro";
connectAttr "output_tail_st_end_space.t" "init_tail_03_space_aimConstraint1.tg[0].tt"
		;
connectAttr "output_tail_st_end_space.rp" "init_tail_03_space_aimConstraint1.tg[0].trp"
		;
connectAttr "output_tail_st_end_space.rpt" "init_tail_03_space_aimConstraint1.tg[0].trt"
		;
connectAttr "output_tail_st_end_space.pm" "init_tail_03_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_tail_03_space_aimConstraint1.w0" "init_tail_03_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_tail_03_space_aimConstraint1.wum";
connectAttr "tail_st_poci.p" "init_tail_st_space.t";
connectAttr "init_tail_st_space_aimConstraint1.crx" "init_tail_st_space.rx";
connectAttr "init_tail_st_space_aimConstraint1.cry" "init_tail_st_space.ry";
connectAttr "init_tail_st_space_aimConstraint1.crz" "init_tail_st_space.rz";
connectAttr "unitConversion5.o" "twist_tail_st_space.ry";
connectAttr "init_tail_st_space.pim" "init_tail_st_space_aimConstraint1.cpim";
connectAttr "init_tail_st_space.t" "init_tail_st_space_aimConstraint1.ct";
connectAttr "init_tail_st_space.rp" "init_tail_st_space_aimConstraint1.crp";
connectAttr "init_tail_st_space.rpt" "init_tail_st_space_aimConstraint1.crt";
connectAttr "init_tail_st_space.ro" "init_tail_st_space_aimConstraint1.cro";
connectAttr "init_tail_03_space.t" "init_tail_st_space_aimConstraint1.tg[0].tt";
connectAttr "init_tail_03_space.rp" "init_tail_st_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_tail_03_space.rpt" "init_tail_st_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_tail_03_space.pm" "init_tail_st_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_tail_st_space_aimConstraint1.w0" "init_tail_st_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_tail_st_space_aimConstraint1.wum";
connectAttr "tail_st_poci.p" "output_tail_st_end_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "FK_root_local_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "FK_root_local_space.r";
connectAttr "FK_tail_01_scaleSpaceMat_DMTX.ot" "FK_tail_01_local_space.t";
connectAttr "FK_tail_01_scaleSpaceMat_DMTX.or" "FK_tail_01_local_space.r";
connectAttr "FK_tail_02_scaleSpaceMat_DMTX.ot" "FK_tail_02_local_space.t";
connectAttr "FK_tail_02_scaleSpaceMat_DMTX.or" "FK_tail_02_local_space.r";
connectAttr "FK_tail_03_scaleSpaceMat_DMTX.ot" "FK_tail_03_local_space.t";
connectAttr "FK_tail_03_scaleSpaceMat_DMTX.or" "FK_tail_03_local_space.r";
connectAttr "fk_tail_st_scaleSpaceMat_DMTX.ot" "FK_tail_st_local_space.t";
connectAttr "fk_tail_st_scaleSpaceMat_DMTX.or" "FK_tail_st_local_space.r";
connectAttr "fit_space_local_DMTX.ot" "fk_ctl_space.t";
connectAttr "fit_space_local_DMTX.or" "fk_ctl_space.r";
connectAttr "fit_space_local_DMTX.os" "fk_ctl_space.s";
connectAttr "M_tail_CTL.FK_vis" "fk_ctl_space.v";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "FK_root_CTL_OS.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "FK_root_CTL_OS.r";
connectAttr "FK_tail_01_local_space_local_DCMX.ot" "FK_tail_01_CTL_OS.t";
connectAttr "FK_tail_01_local_space_local_DCMX.or" "FK_tail_01_CTL_OS.r";
connectAttr "FK_tail_02_localMat_DMTX.ot" "FK_tail_02_CTL_OS.t";
connectAttr "FK_tail_02_localMat_DMTX.or" "FK_tail_02_CTL_OS.r";
connectAttr "FK_tail_03_localMat_DMTX.ot" "FK_tail_03_CTL_OS.t";
connectAttr "FK_tail_03_localMat_DMTX.or" "FK_tail_03_CTL_OS.r";
connectAttr "fk_tail_st_localMat_DMTX.ot" "FK_tail_st_CTL_OS.t";
connectAttr "fk_tail_st_localMat_DMTX.or" "FK_tail_st_CTL_OS.r";
connectAttr "makeNurbCircle2.oc" "FK_root_CTLShape.cr";
connectAttr "fit_space_local_DMTX.ot" "joint_space.t";
connectAttr "fit_space_local_DMTX.or" "joint_space.r";
connectAttr "fit_space_local_DMTX.os" "joint_space.s";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "root_JNT_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "root_JNT_space.r";
connectAttr "FK_tail_01_localMat_DMTX.ot" "tail_01_JNT_space.t";
connectAttr "FK_tail_01_localMat_DMTX.or" "tail_01_JNT_space.r";
connectAttr "FK_tail_02_localMat_DMTX.ot" "tail_02_JNT_space.t";
connectAttr "FK_tail_02_localMat_DMTX.or" "tail_02_JNT_space.r";
connectAttr "FK_tail_03_localMat_DMTX.ot" "tail_03_JNT_space.t";
connectAttr "FK_tail_03_localMat_DMTX.or" "tail_03_JNT_space.r";
connectAttr "fk_tail_st_localMat_DMTX.ot" "tail_st_JNT_space.t";
connectAttr "fk_tail_st_localMat_DMTX.or" "tail_st_JNT_space.r";
connectAttr "fit_space_local_DMTX.ot" "output_space.t";
connectAttr "fit_space_local_DMTX.or" "output_space.r";
connectAttr "fit_space_local_DMTX.os" "output_space.s";
connectAttr "FK_root_CTL.r" "root_JNT.r";
connectAttr "root_JNT_local_DCMX1.ot" "root_JNT.t";
connectAttr "root_JNT_local_DCMX1.or" "root_JNT.jo";
connectAttr "FK_tail_01_CTL.r" "tail_01_JNT.r";
connectAttr "root_JNT.s" "tail_01_JNT.is";
connectAttr "tail_01_JNT_space.t" "tail_01_JNT.t";
connectAttr "tail_01_JNT_space.r" "tail_01_JNT.jo";
connectAttr "FK_tail_02_CTL.r" "tail_02_JNT.r";
connectAttr "tail_01_JNT.s" "tail_02_JNT.is";
connectAttr "tail_02_JNT_space.t" "tail_02_JNT.t";
connectAttr "tail_02_JNT_space.r" "tail_02_JNT.jo";
connectAttr "FK_tail_03_CTL.r" "tail_03_JNT.r";
connectAttr "tail_02_JNT.s" "tail_03_JNT.is";
connectAttr "tail_03_JNT_space.t" "tail_03_JNT.t";
connectAttr "tail_03_JNT_space.r" "tail_03_JNT.jo";
connectAttr "FK_tail_st_CTL.r" "tail_st_JNT.r";
connectAttr "tail_03_JNT.s" "tail_st_JNT.is";
connectAttr "tail_st_JNT_space.t" "tail_st_JNT.t";
connectAttr "tail_st_JNT_space.r" "tail_st_JNT.jo";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_tail_space.wm" "fit_space_local_DMTX.imat";
connectAttr "IK_tail_CTL.wm" "IK_tail_CTL_local_DMTX.imat";
connectAttr "IK_tail_01_CTL.wm" "IK_tail_01_CTL_local_DMTX.imat";
connectAttr "IK_tail_02_CTL.wm" "IK_tail_02_CTL_local_DMTX.imat";
connectAttr "IK_tail_st_CTL.wm" "IK_tail_st_CTL_local_DMTX.imat";
connectAttr "tail_param_MULT.ox" "root_param_MULT.i1x";
connectAttr "bezierShape1.ws" "root_poci.ic";
connectAttr "root_param_MULT.ox" "root_poci.pr";
connectAttr "tail_root_twist_MULT.ox" "root_twist_PLS.i1[0]";
connectAttr "tail_st_root_twist_MULT.ox" "root_twist_PLS.i1[1]";
connectAttr "root_twist_PLS.o1" "unitConversion1.i";
connectAttr "FK_root_scaleSpaceMat_MTMX.o" "FK_root_scaleSpaceMat_DMTX.imat";
connectAttr "twist_root_space.wm" "FK_root_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_tail_space.wim" "FK_root_scaleSpaceMat_MTMX.i[1]";
connectAttr "tail_param_MULT.ox" "tail_01_param_MULT.i1x";
connectAttr "bezierShape1.ws" "tail_01_poci.ic";
connectAttr "tail_01_param_MULT.ox" "tail_01_poci.pr";
connectAttr "tail_tail_01_twist_MULT.ox" "tail_01_twist_PLS.i1[0]";
connectAttr "tail_st_tail_01_twist_MULT.ox" "tail_01_twist_PLS.i1[1]";
connectAttr "tail_01_twist_PLS.o1" "unitConversion2.i";
connectAttr "FK_tail_01_scaleSpaceMat_MTMX.o" "FK_tail_01_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_tail_01_space.wm" "FK_tail_01_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_tail_space.wim" "FK_tail_01_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_tail_01_localMat_MTMX.o" "FK_tail_01_localMat_DMTX.imat";
connectAttr "init_tail_01_space.wm" "FK_tail_01_localMat_MTMX.i[0]";
connectAttr "root_JNT_space.wim" "FK_tail_01_localMat_MTMX.i[1]";
connectAttr "tail_param_MULT.ox" "tail_02_param_MULT.i1x";
connectAttr "bezierShape1.ws" "tail_02_poci.ic";
connectAttr "tail_02_param_MULT.ox" "tail_02_poci.pr";
connectAttr "tail_tail_02_twist_MULT.ox" "tail_02_twist_PLS.i1[0]";
connectAttr "tail_st_tail_02_twist_MULT.ox" "tail_02_twist_PLS.i1[1]";
connectAttr "tail_02_twist_PLS.o1" "unitConversion3.i";
connectAttr "FK_tail_02_scaleSpaceMat_MTMX.o" "FK_tail_02_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_tail_02_space.wm" "FK_tail_02_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_tail_space.wim" "FK_tail_02_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_tail_02_localMat_MTMX.o" "FK_tail_02_localMat_DMTX.imat";
connectAttr "FK_tail_02_local_space.wm" "FK_tail_02_localMat_MTMX.i[0]";
connectAttr "FK_tail_01_local_space.wim" "FK_tail_02_localMat_MTMX.i[1]";
connectAttr "tail_param_MULT.ox" "tail_03_param_MULT.i1x";
connectAttr "bezierShape1.ws" "tail_03_poci.ic";
connectAttr "tail_03_param_MULT.ox" "tail_03_poci.pr";
connectAttr "tail_tail_03_twist_MULT.ox" "tail_03_twist_PLS.i1[0]";
connectAttr "tail_st_tail_03_twist_MULT.ox" "tail_03_twist_PLS.i1[1]";
connectAttr "tail_03_twist_PLS.o1" "unitConversion4.i";
connectAttr "FK_tail_03_scaleSpaceMat_MTMX.o" "FK_tail_03_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_tail_03_space.wm" "FK_tail_03_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_tail_space.wim" "FK_tail_03_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_tail_03_localMat_MTMX.o" "FK_tail_03_localMat_DMTX.imat";
connectAttr "FK_tail_03_local_space.wm" "FK_tail_03_localMat_MTMX.i[0]";
connectAttr "FK_tail_02_local_space.wim" "FK_tail_03_localMat_MTMX.i[1]";
connectAttr "tail_param_MULT.ox" "tail_st_param_MULT.i1x";
connectAttr "bezierShape1.ws" "tail_st_poci.ic";
connectAttr "tail_st_param_MULT.ox" "tail_st_poci.pr";
connectAttr "tail_tail_st_twist_MULT.ox" "tail_st_twist_PLS.i1[0]";
connectAttr "tail_st_tail_st_twist_MULT.ox" "tail_st_twist_PLS.i1[1]";
connectAttr "tail_st_twist_PLS.o1" "unitConversion5.i";
connectAttr "FK_tail_st_scaleSpaceMat_MTMX.o" "fk_tail_st_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_tail_st_space.wm" "FK_tail_st_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_tail_space.wim" "FK_tail_st_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_tail_st_localMat_MTMX.o" "fk_tail_st_localMat_DMTX.imat";
connectAttr "FK_tail_st_local_space.wm" "FK_tail_st_localMat_MTMX.i[0]";
connectAttr "FK_tail_03_local_space.wim" "FK_tail_st_localMat_MTMX.i[1]";
connectAttr "bezierShape1.ws" "twist_tail_poci.ic";
connectAttr "twist_tail_CTL.end_uvalue" "twist_tail_poci.pr";
connectAttr "M_tail_CTL_localMat_MTMX.o" "M_tail_CTL_localMat_DMTX.imat";
connectAttr "fit_tail_root.wm" "M_tail_CTL_localMat_MTMX.i[0]";
connectAttr "fit_tail_space_GRP.wim" "M_tail_CTL_localMat_MTMX.i[1]";
connectAttr "M_tail_CTL.wm" "M_tail_CTL_rotMat_DMTX.imat";
connectAttr "root_param_MULT.ox" "tail_root_twist_RMAP.i";
connectAttr "twist_tail_CTL.end_uvalue" "tail_root_twist_RMAP.imn";
connectAttr "tail_root_twist_RMAP.ov" "tail_root_twist_MULT.i2x";
connectAttr "unitConversion6.o" "tail_root_twist_MULT.i1x";
connectAttr "M_tail_CTL.ry" "unitConversion6.i";
connectAttr "tail_01_param_MULT.ox" "tail_tail_01_twist_RMAP.i";
connectAttr "twist_tail_CTL.end_uvalue" "tail_tail_01_twist_RMAP.imn";
connectAttr "tail_tail_01_twist_RMAP.ov" "tail_tail_01_twist_MULT.i2x";
connectAttr "unitConversion7.o" "tail_tail_01_twist_MULT.i1x";
connectAttr "M_tail_CTL.ry" "unitConversion7.i";
connectAttr "tail_02_param_MULT.ox" "tail_tail_02_twist_RMAP.i";
connectAttr "twist_tail_CTL.end_uvalue" "tail_tail_02_twist_RMAP.imn";
connectAttr "tail_tail_02_twist_RMAP.ov" "tail_tail_02_twist_MULT.i2x";
connectAttr "unitConversion8.o" "tail_tail_02_twist_MULT.i1x";
connectAttr "M_tail_CTL.ry" "unitConversion8.i";
connectAttr "tail_03_param_MULT.ox" "tail_tail_03_twist_RMAP.i";
connectAttr "twist_tail_CTL.end_uvalue" "tail_tail_03_twist_RMAP.imn";
connectAttr "tail_tail_03_twist_RMAP.ov" "tail_tail_03_twist_MULT.i2x";
connectAttr "unitConversion9.o" "tail_tail_03_twist_MULT.i1x";
connectAttr "M_tail_CTL.ry" "unitConversion9.i";
connectAttr "tail_st_param_MULT.ox" "tail_tail_st_twist_RMAP.i";
connectAttr "twist_tail_CTL.end_uvalue" "tail_tail_st_twist_RMAP.imn";
connectAttr "tail_tail_st_twist_RMAP.ov" "tail_tail_st_twist_MULT.i2x";
connectAttr "unitConversion10.o" "tail_tail_st_twist_MULT.i1x";
connectAttr "M_tail_CTL.ry" "unitConversion10.i";
connectAttr "bezierShape1.ws" "twist_chest_poci.ic";
connectAttr "twist_tail_st_CTL.end_uvalue" "twist_chest_poci.pr";
connectAttr "M_tail_st_CTL_localMat_MTMX.o" "M_tail_st_CTL_localMat_DMTX.imat";
connectAttr "fit_tail_st.wm" "M_tail_st_CTL_localMat_MTMX.i[0]";
connectAttr "fit_tail_space_GRP.wim" "M_tail_st_CTL_localMat_MTMX.i[1]";
connectAttr "M_tail_st_CTL.wm" "M_tail_st_CTL_local_DMTX.imat";
connectAttr "root_param_MULT.ox" "tail_st_root_twist_RMAP.i";
connectAttr "twist_tail_st_CTL.end_uvalue" "tail_st_root_twist_RMAP.imx";
connectAttr "tail_st_root_twist_RMAP.ov" "tail_st_root_twist_MULT.i2x";
connectAttr "unitConversion11.o" "tail_st_root_twist_MULT.i1x";
connectAttr "M_tail_st_CTL.ry" "unitConversion11.i";
connectAttr "tail_01_param_MULT.ox" "tail_st_tail_01_twist_RMAP.i";
connectAttr "twist_tail_st_CTL.end_uvalue" "tail_st_tail_01_twist_RMAP.imx";
connectAttr "tail_st_tail_01_twist_RMAP.ov" "tail_st_tail_01_twist_MULT.i2x";
connectAttr "unitConversion12.o" "tail_st_tail_01_twist_MULT.i1x";
connectAttr "M_tail_st_CTL.ry" "unitConversion12.i";
connectAttr "tail_02_param_MULT.ox" "tail_st_tail_02_twist_RMAP.i";
connectAttr "twist_tail_st_CTL.end_uvalue" "tail_st_tail_02_twist_RMAP.imx";
connectAttr "tail_st_tail_02_twist_RMAP.ov" "tail_st_tail_02_twist_MULT.i2x";
connectAttr "unitConversion13.o" "tail_st_tail_02_twist_MULT.i1x";
connectAttr "M_tail_st_CTL.ry" "unitConversion13.i";
connectAttr "tail_03_param_MULT.ox" "tail_st_tail_03_twist_RMAP.i";
connectAttr "twist_tail_st_CTL.end_uvalue" "tail_st_tail_03_twist_RMAP.imx";
connectAttr "tail_st_tail_03_twist_RMAP.ov" "tail_st_tail_03_twist_MULT.i2x";
connectAttr "unitConversion14.o" "tail_st_tail_03_twist_MULT.i1x";
connectAttr "M_tail_st_CTL.ry" "unitConversion14.i";
connectAttr "tail_st_param_MULT.ox" "tail_st_tail_st_twist_RMAP.i";
connectAttr "twist_tail_st_CTL.end_uvalue" "tail_st_tail_st_twist_RMAP.imx";
connectAttr "tail_st_tail_st_twist_RMAP.ov" "tail_st_tail_st_twist_MULT.i2x";
connectAttr "unitConversion15.o" "tail_st_tail_st_twist_MULT.i1x";
connectAttr "M_tail_st_CTL.ry" "unitConversion15.i";
connectAttr "fit_tail_space.fitMode" "fit_RVS.ix";
connectAttr "root_JNT_space.wim" "root_JNT_local_MTMX.i[1]";
connectAttr "root_JNT_local_MTMX.o" "root_JNT_local_DCMX.imat";
connectAttr "root_JNT_space_local_MTMX.o" "root_JNT_local_DCMX1.imat";
connectAttr "FK_tail_01_local_space.wm" "FK_tail_01_local_space_local_MTMX.i[0]"
		;
connectAttr "FK_root_local_space.wim" "FK_tail_01_local_space_local_MTMX.i[1]";
connectAttr "FK_tail_01_local_space_local_MTMX.o" "FK_tail_01_local_space_local_DCMX.imat"
		;
connectAttr "FK_root_CTL_local_MTMX.o" "FK_root_CTL_local_DCMX.imat";
connectAttr "IK_tail_CTL.wm" "FK_root_CTL_local_MTMX.i[0]";
connectAttr "M_tail_OS.wim" "FK_root_CTL_local_MTMX.i[1]";
connectAttr "root_JNT_space.wm" "root_JNT_space_local_MTMX.i[0]";
connectAttr "output_space.wim" "root_JNT_space_local_MTMX.i[1]";
connectAttr "fit_space_local_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "fk_tail_st_localMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "fk_tail_st_scaleSpaceMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_root_CTL_local_DCMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_root_scaleSpaceMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_01_local_space_local_DCMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_01_localMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_01_scaleSpaceMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_02_localMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_02_scaleSpaceMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_03_localMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_03_scaleSpaceMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "root_JNT_local_DCMX1.msg" "tail_SET.dnsm" -na;
connectAttr "IK_tail_st_CTL_local_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "IK_tail_01_CTL_local_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "IK_tail_02_CTL_local_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "IK_tail_CTL_local_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "root_JNT_local_DCMX.msg" "tail_SET.dnsm" -na;
connectAttr "M_tail_st_CTL_local_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "M_tail_st_CTL_localMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "M_tail_CTL_localMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "M_tail_CTL_rotMat_DMTX.msg" "tail_SET.dnsm" -na;
connectAttr "makeNurbCircle1.msg" "tail_SET.dnsm" -na;
connectAttr "makeNurbCircle2.msg" "tail_SET.dnsm" -na;
connectAttr "makeNurbCircle3.msg" "tail_SET.dnsm" -na;
connectAttr "makeNurbCircle4.msg" "tail_SET.dnsm" -na;
connectAttr "makeNurbCircle5.msg" "tail_SET.dnsm" -na;
connectAttr "makeNurbCircle6.msg" "tail_SET.dnsm" -na;
connectAttr "makeNurbCircle7.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_st_localMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_st_scaleSpaceMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_root_CTL_local_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_root_scaleSpaceMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_01_local_space_local_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_01_localMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_01_scaleSpaceMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_02_localMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_02_scaleSpaceMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_03_localMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "FK_tail_03_scaleSpaceMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "root_JNT_space_local_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "root_JNT_local_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "M_tail_st_CTL_localMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "M_tail_CTL_localMat_MTMX.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_st_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_param_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_root_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_01_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_02_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_03_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "root_param_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_01_param_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_02_param_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_03_param_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_st_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_param_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_root_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_01_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_02_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_03_twist_MULT.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_twist_PLS.msg" "tail_SET.dnsm" -na;
connectAttr "root_twist_PLS.msg" "tail_SET.dnsm" -na;
connectAttr "tail_01_twist_PLS.msg" "tail_SET.dnsm" -na;
connectAttr "tail_02_twist_PLS.msg" "tail_SET.dnsm" -na;
connectAttr "tail_03_twist_PLS.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_poci.msg" "tail_SET.dnsm" -na;
connectAttr "root_poci.msg" "tail_SET.dnsm" -na;
connectAttr "tail_01_poci.msg" "tail_SET.dnsm" -na;
connectAttr "tail_02_poci.msg" "tail_SET.dnsm" -na;
connectAttr "tail_03_poci.msg" "tail_SET.dnsm" -na;
connectAttr "twist_chest_poci.msg" "tail_SET.dnsm" -na;
connectAttr "twist_tail_poci.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_st_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_root_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_01_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_02_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_st_tail_03_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_st_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_root_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_01_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_02_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "tail_tail_03_twist_RMAP.msg" "tail_SET.dnsm" -na;
connectAttr "fit_RVS.msg" "tail_SET.dnsm" -na;
connectAttr "tail_GRP.iog" "tail_SET.dsm" -na;
connectAttr "fit_tail_GRP.iog" "tail_SET.dsm" -na;
connectAttr "fit_tail_space.iog" "tail_SET.dsm" -na;
connectAttr "fit_tail_space_GRP.iog" "tail_SET.dsm" -na;
connectAttr "fit_tail_root.iog" "tail_SET.dsm" -na;
connectAttr "fit_tail_01.iog" "tail_SET.dsm" -na;
connectAttr "fit_tail_st.iog" "tail_SET.dsm" -na;
connectAttr "fit_tail_02.iog" "tail_SET.dsm" -na;
connectAttr "IK_space.iog" "tail_SET.dsm" -na;
connectAttr "tail_crv.iog" "tail_SET.dsm" -na;
connectAttr "IK_CTL_space.iog" "tail_SET.dsm" -na;
connectAttr "M_tail_OS.iog" "tail_SET.dsm" -na;
connectAttr "M_tail_CTL.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_OS.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_CTL.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_01_OS.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_01_CTL.iog" "tail_SET.dsm" -na;
connectAttr "upVec_OS.iog" "tail_SET.dsm" -na;
connectAttr "upVec_CTL.iog" "tail_SET.dsm" -na;
connectAttr "M_tail_st_OS.iog" "tail_SET.dsm" -na;
connectAttr "M_tail_st_CTL.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_02_OS.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_02_CTL.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_st_OS.iog" "tail_SET.dsm" -na;
connectAttr "IK_tail_st_CTL.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_OS.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_CTL.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_st_OS.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_st_CTL.iog" "tail_SET.dsm" -na;
connectAttr "FK_space.iog" "tail_SET.dsm" -na;
connectAttr "on_curve_space.iog" "tail_SET.dsm" -na;
connectAttr "init_root_space.iog" "tail_SET.dsm" -na;
connectAttr "twist_root_space.iog" "tail_SET.dsm" -na;
connectAttr "init_root_space_aimConstraint1.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_01_space.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_01_space.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_01_space_aimConstraint1.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_02_space.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_02_space.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_02_space_aimConstraint1.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_03_space.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_03_space.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_03_space_aimConstraint1.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_st_space.iog" "tail_SET.dsm" -na;
connectAttr "twist_tail_st_space.iog" "tail_SET.dsm" -na;
connectAttr "init_tail_st_space_aimConstraint1.iog" "tail_SET.dsm" -na;
connectAttr "output_tail_st_end_space.iog" "tail_SET.dsm" -na;
connectAttr "FK_scale_space.iog" "tail_SET.dsm" -na;
connectAttr "FK_root_local_space.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_01_local_space.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_02_local_space.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_03_local_space.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_st_local_space.iog" "tail_SET.dsm" -na;
connectAttr "fk_ctl_space.iog" "tail_SET.dsm" -na;
connectAttr "FK_root_CTL_OS.iog" "tail_SET.dsm" -na;
connectAttr "FK_root_CTL.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_01_CTL_OS.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_01_CTL.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_02_CTL_OS.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_02_CTL.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_03_CTL_OS.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_03_CTL.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_st_CTL_OS.iog" "tail_SET.dsm" -na;
connectAttr "FK_tail_st_CTL.iog" "tail_SET.dsm" -na;
connectAttr "joint_space.iog" "tail_SET.dsm" -na;
connectAttr "root_JNT_space.iog" "tail_SET.dsm" -na;
connectAttr "tail_01_JNT_space.iog" "tail_SET.dsm" -na;
connectAttr "tail_02_JNT_space.iog" "tail_SET.dsm" -na;
connectAttr "tail_03_JNT_space.iog" "tail_SET.dsm" -na;
connectAttr "tail_st_JNT_space.iog" "tail_SET.dsm" -na;
connectAttr "output_space.iog" "tail_SET.dsm" -na;
connectAttr "root_JNT.iog" "tail_SET.dsm" -na;
connectAttr "tail_01_JNT.iog" "tail_SET.dsm" -na;
connectAttr "tail_02_JNT.iog" "tail_SET.dsm" -na;
connectAttr "tail_03_JNT.iog" "tail_SET.dsm" -na;
connectAttr "tail_st_JNT.iog" "tail_SET.dsm" -na;
connectAttr "fit_space_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_tail_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_tail_01_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_tail_02_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_tail_st_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_01_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_tail_01_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_tail_01_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_01_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_02_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_tail_02_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_tail_02_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_02_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_03_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_tail_03_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_tail_03_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_03_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_tail_st_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_tail_st_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_tail_st_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_st_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_tail_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_tail_CTL_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_tail_CTL_rotMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_tail_st_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "M_tail_st_CTL_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "M_tail_st_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "root_JNT_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "root_JNT_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "root_JNT_local_DCMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_tail_01_local_space_local_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_tail_01_local_space_local_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_root_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "root_JNT_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of tail.ma
