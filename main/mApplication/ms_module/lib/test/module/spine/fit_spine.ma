//Maya ASCII 2019 scene
//Name: fit_spine.ma
//Last modified: Mon, Jun 07, 2021 06:40:55 PM
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
	rename -uid "76B2A7F7-460D-4CB3-1919-93AA65B135CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 41.851930117643299 32.134824045207836 51.903503544316955 ;
	setAttr ".r" -type "double3" -19.538352729591203 40.599999999982835 1.0472391919519416e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5DF575A2-43DB-1D6C-65A0-FF9859006D0F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 75.122630589645368;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -3.1179074093343628e-16 2.6645352591003757e-15 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C62B85F5-4C32-321A-933F-22AABC9E02F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6E646318-4A69-C091-2C7E-9EA24A3E5DFF";
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
	rename -uid "3764B4E7-4050-566C-5DAF-0B84F2433605";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "04569E57-4ECA-43D1-0E97-C8B416224C72";
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
	rename -uid "13C3BDAE-46CA-F247-00E4-CC8D4E03113B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8388DB8E-4DF4-AF62-6D21-3784277AC53F";
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
createNode transform -n "fit_spine_GRP";
	rename -uid "872B6660-41B3-AD52-E910-E49EF87BEFF7";
createNode transform -n "fit_space" -p "fit_spine_GRP";
	rename -uid "13924859-4593-1CFE-1992-C6AACA9E852C";
createNode transform -n "fit_space_CTL" -p "fit_space";
	rename -uid "C57FFBD9-4F49-76C3-8099-6EA59EE48988";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "fit_space_CTLShape" -p "fit_space_CTL";
	rename -uid "5A80040E-4C4D-7D33-06A3-65ACBCE8B758";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 2.9777241745866561 -0.78361162489122482 
		-3.7613357994778767 2.5785782827821469e-16 -1.1081941875543877 -5.3193321002610601 
		-2.9777241745866561 -0.78361162489122438 -3.7613357994778767 -4.2111379127066773 
		-6.8103046424212088e-16 -8.993365972680642e-16 -2.9777241745866561 0.78361162489122427 
		3.7613357994778767 -4.2183256484492289e-16 1.1081941875543881 5.3193321002610654 
		2.9777241745866561 0.78361162489122416 3.7613357994778767 4.2111379127066773 -4.7245743178887646e-16 
		1.0181395850750748e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "fit_root_CTL" -p "fit_space_CTL";
	rename -uid "4FEF74F7-42C4-1C6A-A111-819F9B22EE7F";
	setAttr ".t" -type "double3" 0 5 0 ;
createNode nurbsCurve -n "fit_root_CTLShape" -p "fit_root_CTL";
	rename -uid "4D8D31D1-4285-F5E3-7509-7C8D7AA14795";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 2.0373902247171847 -0.78361162489122482 
		-2.8210018496084075 1.7642904040088384e-16 -1.1081941875543877 -3.9894990751957953 
		-2.0373902247171847 -0.78361162489122438 -2.8210018496084075 -2.8813048876414129 
		-5.2513509377540308e-16 -6.7450244795104845e-16 -2.0373902247171847 0.78361162489122316 
		2.8210018496084071 -2.8862228120968401e-16 1.1081941875543881 3.9894990751957962 
		2.0373902247171847 0.78361162489122294 2.8210018496084071 2.8813048876414129 -3.1656206132215877e-16 
		7.6360468880630669e-17 0 0 0 0 0 0 0 0 0;
createNode transform -n "fit_root" -p "fit_space";
	rename -uid "72B94D8E-4D1B-B2E0-0494-5089C3BF9FA0";
createNode transform -n "fit_spine_01_CTL" -p "fit_root";
	rename -uid "D1310A16-4AB6-110C-8FD3-11B69923CD1B";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "fit_spine_01_CTLShape" -p "fit_spine_01_CTL";
	rename -uid "CB9FA331-43F5-1223-BE10-D5927EA0B856";
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
createNode transform -n "fit_spine_02_CTL" -p "fit_spine_01_CTL";
	rename -uid "EB859715-4A28-2781-98C3-0BB0928E41AE";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 4 0 ;
createNode nurbsCurve -n "fit_spine_02_CTLShape" -p "fit_spine_02_CTL";
	rename -uid "FAB36B73-40F5-74B6-59A2-86A648B53FFD";
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
createNode transform -n "fit_chest_CTL" -p "fit_root";
	rename -uid "6B6D3BD9-43C7-87D1-7624-20BCF3BC87BC";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 12 0 ;
createNode nurbsCurve -n "fit_chest_CTLShape" -p "fit_chest_CTL";
	rename -uid "DEBC5F99-4305-689E-5937-8C94BCDED254";
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
createNode transform -n "fit_spine_03_CTL" -p "fit_chest_CTL";
	rename -uid "37686AD7-475C-E541-A14F-8A81C401A576";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 -4 0 ;
createNode nurbsCurve -n "fit_spine_03_CTLShape" -p "fit_spine_03_CTL";
	rename -uid "03F15AFB-421D-2D9D-2FBA-00A4E62E3AF7";
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
createNode transform -n "fit_spine_space" -p "fit_spine_GRP";
	rename -uid "BEE2FDBD-480A-CABE-9AE7-EF843F46D3E5";
createNode transform -n "spine_crv" -p "fit_spine_space";
	rename -uid "70EDA61E-4FBA-F5CC-2ADD-85B6125B3FDC";
	setAttr ".v" no;
createNode bezierCurve -n "bezierShape1" -p "spine_crv";
	rename -uid "7ACC4AA9-4BA8-2697-A35D-53AE355B655E";
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
createNode transform -n "fit_upVec_root_offGRP" -p "fit_spine_space";
	rename -uid "807383BC-4C43-E294-703C-3686511F11DA";
createNode transform -n "fit_upVec_root_spcGRP" -p "fit_upVec_root_offGRP";
	rename -uid "46E28052-4268-F676-EAEE-1E9042B4BEA2";
createNode transform -n "fit_upVec_space" -p "fit_upVec_root_spcGRP";
	rename -uid "CF4CE74F-4FF8-486A-9532-3299C17B56EA";
	setAttr ".t" -type "double3" 0 6 -12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "fit_upVec_CTL" -p "fit_upVec_space";
	rename -uid "8A0755C7-4B16-B585-0C7B-BCA76A0BEDF0";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "fit_upVec_CTLShape" -p "fit_upVec_CTL";
	rename -uid "B134B647-4092-00D2-1840-F58AC00C789B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-2 0 0
		2 0 0
		0 0 0
		0 2 0
		0 -2 0
		0 0 0
		0 0 2
		0 0 -2
		;
createNode transform -n "fit_space_GRP" -p "fit_spine_GRP";
	rename -uid "9E738BED-4264-7ED0-6F38-A0ADD5963CFD";
createNode transform -n "on_curve_space" -p "fit_space_GRP";
	rename -uid "1C3ABBE4-45D2-3CF8-A377-DDA1A4BD33E8";
createNode transform -n "spine_01_space" -p "on_curve_space";
	rename -uid "C5010447-4402-AA1D-E300-978A83F4D8EE";
createNode transform -n "twist_spine_01_space" -p "spine_01_space";
	rename -uid "456EC1F7-4192-97D7-2E1E-A684B239DFB3";
createNode aimConstraint -n "spine_01_space_aimConstraint1" -p "spine_01_space";
	rename -uid "B21E83BB-438C-B91C-9B3A-CD9063B8A50C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "spine_02_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 -1 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -90 -90 0 ;
	setAttr -k on ".w0";
createNode transform -n "spine_02_space" -p "on_curve_space";
	rename -uid "98835805-4C81-9238-3EF6-E0A96CE508BE";
createNode transform -n "twist_spine_02_space" -p "spine_02_space";
	rename -uid "534CB820-4258-C6D3-476E-F0B6F5A7DF11";
createNode aimConstraint -n "spine_02_space_aimConstraint1" -p "spine_02_space";
	rename -uid "8579B383-4ABC-FF27-4B0B-AD8C80074FEB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "spine_03_spaceW0" -dv 1 -at "double";
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
createNode transform -n "spine_03_space" -p "on_curve_space";
	rename -uid "1600ACC9-46EA-07E0-4E17-5385615EE4DB";
createNode transform -n "twist_spine_03_space" -p "spine_03_space";
	rename -uid "7F0780CA-47F2-1600-39D9-088301AFFAF5";
createNode aimConstraint -n "spine_03_space_aimConstraint1" -p "spine_03_space";
	rename -uid "61A19B95-43C0-CB1A-CBB1-47B1D8DF0EE0";
	addAttr -dcb 0 -ci true -sn "w0" -ln "spine_04_spaceW0" -dv 1 -at "double";
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
createNode transform -n "spine_04_space" -p "on_curve_space";
	rename -uid "9EAFB26B-4FC3-8BBC-5462-24892ED77C3D";
createNode transform -n "twist_spine_04_space" -p "spine_04_space";
	rename -uid "FAA019E2-46AF-26C1-8652-F4ACBC5AE1F4";
createNode aimConstraint -n "spine_04_space_aimConstraint1" -p "spine_04_space";
	rename -uid "71CF2C27-4917-E777-6159-4386E2BCB650";
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
createNode transform -n "chest_space" -p "on_curve_space";
	rename -uid "A15F0DCD-4CCC-C1FB-284C-269DEE9F9885";
createNode transform -n "twist_chest_space" -p "chest_space";
	rename -uid "4DC24B52-4D1D-180A-C834-21B5EC6F75ED";
createNode aimConstraint -n "chest_space_aimConstraint1" -p "chest_space";
	rename -uid "A95199A0-4AE8-B5BC-1C82-D3A562BFF838";
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
createNode transform -n "output_chest_end_space" -p "on_curve_space";
	rename -uid "52F473ED-4257-6A69-8C74-20B08627666B";
createNode transform -n "fit_spine_local_GRP" -p "fit_space_GRP";
	rename -uid "666B0AAE-448C-FECD-6535-CDA63F8A8C7C";
createNode transform -n "fit_spine_01_local_space" -p "fit_spine_local_GRP";
	rename -uid "536A8679-4E37-DC17-C2FA-1F8E7A60ABE4";
createNode transform -n "fit_spine_02_local_space" -p "fit_spine_local_GRP";
	rename -uid "7ECEECA6-417E-CF66-5ECD-ACBBD91417BE";
createNode transform -n "fit_spine_03_local_space" -p "fit_spine_local_GRP";
	rename -uid "E0BB2CDE-4F70-AC13-068A-BB870D811CA7";
createNode transform -n "fit_spine_04_local_space" -p "fit_spine_local_GRP";
	rename -uid "8961922C-4F07-9596-6BEE-CAA097F3A1A9";
createNode transform -n "fit_chest_local_space" -p "fit_spine_local_GRP";
	rename -uid "0807F5CB-4A44-8581-06E0-FBBA7075DABD";
createNode transform -n "fit_JNT_GRP" -p "fit_space_GRP";
	rename -uid "24602212-4E9C-5A14-72B5-98B4E5D02293";
createNode transform -n "fit_spine_01_JNT_space" -p "fit_JNT_GRP";
	rename -uid "49610BDB-420A-4AA2-8B1A-DEB1E02976A9";
createNode transform -n "fit_spine_02_JNT_space" -p "fit_spine_01_JNT_space";
	rename -uid "3148CC7A-46F2-B495-6BE3-5DA47C010189";
createNode transform -n "fit_spine_03_JNT_space" -p "fit_spine_02_JNT_space";
	rename -uid "8596D713-4FFF-928D-5858-0E830E4CE478";
createNode transform -n "fit_spine_04_JNT_space" -p "fit_spine_03_JNT_space";
	rename -uid "B1C2A557-4C47-F1B4-DF63-BE9241319085";
createNode transform -n "fit_chest_JNT_space" -p "fit_spine_04_JNT_space";
	rename -uid "D366187F-46C8-AC72-EA4B-08A67B0A85E6";
createNode transform -n "fit_output_space" -p "fit_spine_GRP";
	rename -uid "DBE4DC4B-4A3A-2B6D-4624-5BA46F050F27";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode joint -n "fit_spine_01_JNT" -p "fit_output_space";
	rename -uid "7144A2A4-41FC-982D-904B-938DFE876B6C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "fit_spine_02_JNT" -p "fit_spine_01_JNT";
	rename -uid "DCB691B9-41C7-1133-0C6F-53A5287B6DD0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "fit_spine_03_JNT" -p "fit_spine_02_JNT";
	rename -uid "FE5DFF94-4D1B-FAFB-E645-97B5F6311FCD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "fit_spine_04_JNT" -p "fit_spine_03_JNT";
	rename -uid "4316B9EF-4502-470A-AB27-B7B0F2A43801";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "fit_chest_JNT" -p "fit_spine_04_JNT";
	rename -uid "33DC70A9-4596-6F3F-4D72-FBAB1FB635E3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "62E8E58D-4B28-BF16-14CB-388BECABBFF9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "990B7DAC-47CE-E163-C331-BFA9F166C9AE";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/parts/PartsFit/fit_spine.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "913A98A5-47FE-9FAE-5704-7DB0339C95E2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DAB69746-41C6-70E4-6E07-76B1E16A987D";
createNode displayLayerManager -n "layerManager";
	rename -uid "827AD61B-45B1-5BC0-DD73-2987D1CAFA3F";
createNode displayLayer -n "defaultLayer";
	rename -uid "72FE3D8F-464E-B79D-E34C-39AF9992C545";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "733276B2-4148-4B92-E428-8D8EFBC88E66";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "43ED51D4-45F4-C05E-217A-1EB385814AEB";
	setAttr ".g" yes;
createNode decomposeMatrix -n "fit_root_local_DMTX";
	rename -uid "3631C7D4-4DEA-8D09-9D49-148F9CFE1C0B";
createNode decomposeMatrix -n "fk_joint_DMTX";
	rename -uid "AC0BF19A-466F-6EA2-04FD-B0B82828F42F";
createNode multiplyDivide -n "spine_param_MULT";
	rename -uid "14922D7C-4804-70C8-3547-73B05E1B620B";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "spineA_param_MULT";
	rename -uid "44537688-4486-ACF7-BC09-07AF495E24AC";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode pointOnCurveInfo -n "spineA_poci";
	rename -uid "5B9AB539-4DC4-C07E-C1E3-A48F86C98683";
	setAttr ".top" yes;
createNode plusMinusAverage -n "spineA_twist_PLS";
	rename -uid "3E0D1278-4157-92DF-8716-02967441E9CD";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion1";
	rename -uid "C4531E13-4B52-1F7E-9308-CEACB4A96D8A";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_spineA_scaleSpaceMat_DMTX";
	rename -uid "7A3ED0D4-49DE-A09C-7AAE-548610BB3EBD";
createNode multMatrix -n "fk_spineA_scaleSpaceMat_MAT";
	rename -uid "7DABB47E-43E3-BCE8-5F84-31ACEFE8B1A2";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "spineB_param_MULT";
	rename -uid "32CBF422-4ACD-71D9-B642-24B574D9B3E6";
createNode pointOnCurveInfo -n "spineB_poci";
	rename -uid "E435E5E8-4494-7FE5-FAD1-E8BFD5A55A82";
	setAttr ".top" yes;
createNode plusMinusAverage -n "spineB_twist_PLS";
	rename -uid "13E91CAC-45B5-BFFD-A8AE-E1A455E2F399";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion2";
	rename -uid "E15599F3-4C97-88AA-C068-DCA2B4CA3177";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_spineB_scaleSpaceMat_DMTX";
	rename -uid "117DC6CE-4571-8F20-508B-6BAD0B7FD638";
createNode multMatrix -n "fk_spineB_scaleSpaceMat_MAT";
	rename -uid "DAA18201-4A32-A292-D431-47B953705EF1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineB_localMat_DMTX";
	rename -uid "06818495-4982-3A90-6AFB-BE9651DDD0EE";
createNode multMatrix -n "fk_spineB_localMat_MAT";
	rename -uid "4A0BC726-4F01-7428-4FF3-21858437446F";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "spineC_param_MULT";
	rename -uid "E1D7AED4-43FA-3735-F5D6-0EBEBE4370DC";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode pointOnCurveInfo -n "spineC_poci";
	rename -uid "062BB726-43E5-4020-A87F-97871ADC03EC";
	setAttr ".top" yes;
createNode plusMinusAverage -n "spineC_twist_PLS";
	rename -uid "E2B66FA5-4FA7-4378-9B3A-B79C59861975";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion3";
	rename -uid "639413F6-483A-94FF-07BD-4F80496F9D26";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_spineC_scaleSpaceMat_DMTX";
	rename -uid "14A2298A-4F94-CA44-0AB1-789E9C06DDFD";
createNode multMatrix -n "fk_spineC_scaleSpaceMat_MAT";
	rename -uid "59313E22-462B-2979-12E9-FDB724107E6C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_spineC_JNT_DMTX";
	rename -uid "7255324B-459D-4E37-150A-BDBE355BAF98";
createNode decomposeMatrix -n "fk_spineC_localMat_DMTX";
	rename -uid "ABAEA63F-4E15-7F97-6495-998B5CF73D3B";
createNode multMatrix -n "fk_spineC_localMat_MAT";
	rename -uid "2264C71A-4C92-263B-A6B0-B6B55A974920";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "spineD_param_MULT";
	rename -uid "C16BFF40-4956-3DBC-EF71-03A0BA437251";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode pointOnCurveInfo -n "spineD_poci";
	rename -uid "07AC36D2-4155-18A0-DF18-E0AE318242D8";
	setAttr ".top" yes;
createNode plusMinusAverage -n "spineD_twist_PLS";
	rename -uid "870FBA13-4483-A22F-900C-86B351B6B5D1";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion4";
	rename -uid "5CAA5DC2-4CA1-2ABE-D1D8-72B265F590DC";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_spineD_scaleSpaceMat_DMTX";
	rename -uid "2B805CFD-4743-A01E-7AD4-D188F942827A";
createNode multMatrix -n "fk_spineD_scaleSpaceMat_MAT";
	rename -uid "2A6D54A3-4991-CB2E-60BB-C5B083A0AA0C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_localMat_DMTX";
	rename -uid "2C25AA07-43E0-295F-1E5C-EFA948022FA2";
createNode multMatrix -n "fk_spineD_localMat_MAT";
	rename -uid "6835F251-44D9-2999-80E5-DC9E54C02DB9";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "chest_param_MULT";
	rename -uid "4208780D-41F6-D9A1-B808-B29A2FDCF4EA";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode pointOnCurveInfo -n "chest_poci";
	rename -uid "FC69D2CB-4736-E9FD-CC60-038518154E75";
	setAttr ".top" yes;
createNode plusMinusAverage -n "chest_twist_PLS";
	rename -uid "A2482474-4105-3427-BE28-469BBC334A15";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion5";
	rename -uid "58AAC1C2-427A-FD20-EE06-17AC443B1084";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_chest_scaleSpaceMat_DMTX";
	rename -uid "458FE088-468E-C826-66A8-BB8E3F74173B";
createNode multMatrix -n "fk_chest_scaleSpaceMat_MAT";
	rename -uid "6883100A-4692-AE15-9AEA-4EB81DB221BC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_localMat_DMTX";
	rename -uid "D7A0D76F-4B4B-34CA-EE3C-12896C009557";
createNode multMatrix -n "fk_chest_localMat_MAT";
	rename -uid "331DDD79-4369-03FD-5699-BC9B47791BD8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_spine_CTL_localMat_DMTX";
	rename -uid "7F41A159-4035-664E-6E11-2E9A548D9A2F";
createNode multMatrix -n "M_spine_CTL_localMat_MAT";
	rename -uid "2CDA77BA-44BB-5E7C-4DF6-A8B70291C92D";
	setAttr -s 2 ".i";
createNode remapValue -n "spine_spineA_twist_RMAP";
	rename -uid "A24C08B4-49D0-56FE-457A-79A8A5E4BE4B";
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
createNode multiplyDivide -n "spine_spineA_twist_MULT";
	rename -uid "C3043DB0-47CF-2100-B286-8BB1AB13194A";
createNode remapValue -n "spine_spineB_twist_RMAP";
	rename -uid "38C9138B-4FA7-C3CF-7DFE-36B4A92B4108";
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
createNode multiplyDivide -n "spine_spineB_twist_MULT";
	rename -uid "83C81ACB-4FEB-5810-1527-ECA1889049CA";
createNode remapValue -n "spine_spineC_twist_RMAP";
	rename -uid "E31E26B7-444F-D2A8-6FCE-C7ADBEFB8EAD";
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
createNode multiplyDivide -n "spine_spineC_twist_MULT";
	rename -uid "9A49204A-47A1-DCE5-81F9-9B92F038E61E";
createNode remapValue -n "spine_spineD_twist_RMAP";
	rename -uid "370CEDA8-4F68-B1AA-0599-2CA9E3D0FD47";
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
createNode multiplyDivide -n "spine_spineD_twist_MULT";
	rename -uid "00E61A93-4E53-CCAD-35A9-29B9740A82F6";
createNode remapValue -n "spine_chest_twist_RMAP";
	rename -uid "4E785F6E-4C18-50DF-D229-25B8AC27BB6C";
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
createNode multiplyDivide -n "spine_chest_twist_MULT";
	rename -uid "C60EAADB-4270-F10C-F3B4-CDA0DF7AE24E";
createNode remapValue -n "chest_spineA_twist_RMAP";
	rename -uid "9431F821-42E4-5A73-3E18-93BF540E5899";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_spineA_twist_MULT";
	rename -uid "A4A77613-49B4-7DB7-5837-0BA750D94AD3";
createNode remapValue -n "chest_spineB_twist_RMAP";
	rename -uid "DB555CC3-409A-B5AE-8077-5D93FB9F79C0";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_spineB_twist_MULT";
	rename -uid "B0C1F8E7-4E66-E2F1-386B-39BEA1471C11";
createNode remapValue -n "chest_spineC_twist_RMAP";
	rename -uid "47B5ABA8-43C2-0860-7CED-838285468A0F";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_spineC_twist_MULT";
	rename -uid "A0775F87-4790-EFBB-67BE-F593CFE35F09";
createNode remapValue -n "chest_spineD_twist_RMAP";
	rename -uid "ADEB1C5C-4C0D-45E7-9B50-A18450D033D3";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_spineD_twist_MULT";
	rename -uid "402BDC80-4E38-9533-086E-7281ACFBBE97";
createNode remapValue -n "chest_chest_twist_RMAP";
	rename -uid "1EE1C577-41B2-9084-99B4-37AF1053A409";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_chest_twist_MULT";
	rename -uid "E6DF792F-45B3-4242-53C3-29884E401D0C";
createNode decomposeMatrix -n "fit_spine_CTL_local_DCMX";
	rename -uid "D77B564A-45E5-F56E-926F-D9BC6A254D95";
createNode decomposeMatrix -n "fit_spine_sub_000_CTL_local_DCMX";
	rename -uid "EF55A9CB-4D80-57C9-8FF8-F9B0242A3F17";
createNode decomposeMatrix -n "fit_chest_sub_001_CTL_local_DCMX";
	rename -uid "D5F3DAA1-4446-03A6-2F74-7B84779BAB7B";
createNode decomposeMatrix -n "fit_chest_CTL_local_DCMX";
	rename -uid "58D1B58F-442A-531F-5EDE-ADBD9FCB82EE";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "684545AF-4320-1197-3D28-288E4AA5F3F4";
createNode multMatrix -n "fit_spineA_JNT_MTMX";
	rename -uid "A6E1B16A-4EE5-9246-ECAE-00A25BA68EA0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_spineA_JNT_DCMX";
	rename -uid "C47AFB99-4334-625F-2A0E-68B6B77B9DD8";
createNode multMatrix -n "fit_spineB_JNT_MTMX";
	rename -uid "0214080F-4EE4-66AC-4B34-668F0C78F66A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_spineB_JNT_DCMX";
	rename -uid "61F39641-4C73-4912-FCD8-18BBB031CA57";
createNode multMatrix -n "fit_spineC_JNT_MTMX";
	rename -uid "69FC2724-43B0-EAE4-6F5D-4B8F48F6022C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_spineC_JNT_DCMX";
	rename -uid "97431690-4710-AA9C-6931-2780778696BA";
createNode multMatrix -n "fit_spineD_JNT_MTMX";
	rename -uid "FB304754-4378-D4D7-4881-D688BBFDB62E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_spineD_JNT_DCMX";
	rename -uid "C1FDBCC1-43CA-E930-6814-AC94EC1886AD";
createNode multMatrix -n "fit_chest_JNT_MTMX";
	rename -uid "EC031EBE-4082-A029-C773-7BBC15D0625B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_chest_JNT_DCMX";
	rename -uid "C49B5E51-4E4E-CB7D-E9C7-B4B137BC4C63";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2254537A-4BE2-7A1D-460C-2AB41CC96F3C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 602\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 601\n            -height 329\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 602\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1214\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1214\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1214\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B14D9F53-44CB-821D-0D54-7DBAFAE1DC44";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "BB16A974-45F9-BB71-9E39-F3984AB7DB6D";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "857DB8DC-480A-F7FB-3230-7EBCEDD2D5BB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -560.71426343350277 -548.8095020017937 ;
	setAttr ".tgi[0].vh" -type "double2" 560.71426343350277 547.61902585862265 ;
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
	setAttr -s 27 ".u";
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
connectAttr "makeNurbCircle1.oc" "fit_space_CTLShape.cr";
connectAttr "makeNurbCircle2.oc" "fit_root_CTLShape.cr";
connectAttr "fit_root_local_DMTX.ot" "fit_root.t";
connectAttr "fit_root_local_DMTX.or" "fit_root.r";
connectAttr "fit_root_local_DMTX.os" "fit_root.s";
connectAttr "fit_spine_CTL_local_DCMX.ot" "bezierShape1.cp[0]";
connectAttr "fit_spine_sub_000_CTL_local_DCMX.ot" "bezierShape1.cp[1]";
connectAttr "fit_chest_sub_001_CTL_local_DCMX.ot" "bezierShape1.cp[2]";
connectAttr "fit_chest_CTL_local_DCMX.ot" "bezierShape1.cp[3]";
connectAttr "fit_root_local_DMTX.ot" "fit_upVec_root_offGRP.t";
connectAttr "fit_root_local_DMTX.or" "fit_upVec_root_offGRP.r";
connectAttr "fit_root_local_DMTX.os" "fit_upVec_root_offGRP.s";
connectAttr "M_spine_CTL_localMat_DMTX.ot" "fit_upVec_root_spcGRP.t";
connectAttr "spineA_poci.p" "spine_01_space.t";
connectAttr "spine_01_space_aimConstraint1.crx" "spine_01_space.rx";
connectAttr "spine_01_space_aimConstraint1.cry" "spine_01_space.ry";
connectAttr "spine_01_space_aimConstraint1.crz" "spine_01_space.rz";
connectAttr "unitConversion1.o" "twist_spine_01_space.ry";
connectAttr "spine_01_space.pim" "spine_01_space_aimConstraint1.cpim";
connectAttr "spine_01_space.t" "spine_01_space_aimConstraint1.ct";
connectAttr "spine_01_space.rp" "spine_01_space_aimConstraint1.crp";
connectAttr "spine_01_space.rpt" "spine_01_space_aimConstraint1.crt";
connectAttr "spine_01_space.ro" "spine_01_space_aimConstraint1.cro";
connectAttr "spine_02_space.t" "spine_01_space_aimConstraint1.tg[0].tt";
connectAttr "spine_02_space.rp" "spine_01_space_aimConstraint1.tg[0].trp";
connectAttr "spine_02_space.rpt" "spine_01_space_aimConstraint1.tg[0].trt";
connectAttr "spine_02_space.pm" "spine_01_space_aimConstraint1.tg[0].tpm";
connectAttr "spine_01_space_aimConstraint1.w0" "spine_01_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fit_upVec_CTL.wm" "spine_01_space_aimConstraint1.wum";
connectAttr "spineB_poci.p" "spine_02_space.t";
connectAttr "spine_02_space_aimConstraint1.crx" "spine_02_space.rx";
connectAttr "spine_02_space_aimConstraint1.cry" "spine_02_space.ry";
connectAttr "spine_02_space_aimConstraint1.crz" "spine_02_space.rz";
connectAttr "unitConversion2.o" "twist_spine_02_space.ry";
connectAttr "spine_02_space.pim" "spine_02_space_aimConstraint1.cpim";
connectAttr "spine_02_space.t" "spine_02_space_aimConstraint1.ct";
connectAttr "spine_02_space.rp" "spine_02_space_aimConstraint1.crp";
connectAttr "spine_02_space.rpt" "spine_02_space_aimConstraint1.crt";
connectAttr "spine_02_space.ro" "spine_02_space_aimConstraint1.cro";
connectAttr "spine_03_space.t" "spine_02_space_aimConstraint1.tg[0].tt";
connectAttr "spine_03_space.rp" "spine_02_space_aimConstraint1.tg[0].trp";
connectAttr "spine_03_space.rpt" "spine_02_space_aimConstraint1.tg[0].trt";
connectAttr "spine_03_space.pm" "spine_02_space_aimConstraint1.tg[0].tpm";
connectAttr "spine_02_space_aimConstraint1.w0" "spine_02_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fit_upVec_CTL.wm" "spine_02_space_aimConstraint1.wum";
connectAttr "spineC_poci.p" "spine_03_space.t";
connectAttr "spine_03_space_aimConstraint1.crx" "spine_03_space.rx";
connectAttr "spine_03_space_aimConstraint1.cry" "spine_03_space.ry";
connectAttr "spine_03_space_aimConstraint1.crz" "spine_03_space.rz";
connectAttr "unitConversion3.o" "twist_spine_03_space.ry";
connectAttr "spine_03_space.pim" "spine_03_space_aimConstraint1.cpim";
connectAttr "spine_03_space.t" "spine_03_space_aimConstraint1.ct";
connectAttr "spine_03_space.rp" "spine_03_space_aimConstraint1.crp";
connectAttr "spine_03_space.rpt" "spine_03_space_aimConstraint1.crt";
connectAttr "spine_03_space.ro" "spine_03_space_aimConstraint1.cro";
connectAttr "spine_04_space.t" "spine_03_space_aimConstraint1.tg[0].tt";
connectAttr "spine_04_space.rp" "spine_03_space_aimConstraint1.tg[0].trp";
connectAttr "spine_04_space.rpt" "spine_03_space_aimConstraint1.tg[0].trt";
connectAttr "spine_04_space.pm" "spine_03_space_aimConstraint1.tg[0].tpm";
connectAttr "spine_03_space_aimConstraint1.w0" "spine_03_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fit_upVec_CTL.wm" "spine_03_space_aimConstraint1.wum";
connectAttr "spineD_poci.p" "spine_04_space.t";
connectAttr "spine_04_space_aimConstraint1.crx" "spine_04_space.rx";
connectAttr "spine_04_space_aimConstraint1.cry" "spine_04_space.ry";
connectAttr "spine_04_space_aimConstraint1.crz" "spine_04_space.rz";
connectAttr "unitConversion4.o" "twist_spine_04_space.ry";
connectAttr "spine_04_space.pim" "spine_04_space_aimConstraint1.cpim";
connectAttr "spine_04_space.t" "spine_04_space_aimConstraint1.ct";
connectAttr "spine_04_space.rp" "spine_04_space_aimConstraint1.crp";
connectAttr "spine_04_space.rpt" "spine_04_space_aimConstraint1.crt";
connectAttr "spine_04_space.ro" "spine_04_space_aimConstraint1.cro";
connectAttr "output_chest_end_space.t" "spine_04_space_aimConstraint1.tg[0].tt";
connectAttr "output_chest_end_space.rp" "spine_04_space_aimConstraint1.tg[0].trp"
		;
connectAttr "output_chest_end_space.rpt" "spine_04_space_aimConstraint1.tg[0].trt"
		;
connectAttr "output_chest_end_space.pm" "spine_04_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "spine_04_space_aimConstraint1.w0" "spine_04_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fit_upVec_CTL.wm" "spine_04_space_aimConstraint1.wum";
connectAttr "chest_poci.p" "chest_space.t";
connectAttr "chest_space_aimConstraint1.crx" "chest_space.rx";
connectAttr "chest_space_aimConstraint1.cry" "chest_space.ry";
connectAttr "chest_space_aimConstraint1.crz" "chest_space.rz";
connectAttr "unitConversion5.o" "twist_chest_space.ry";
connectAttr "chest_space.pim" "chest_space_aimConstraint1.cpim";
connectAttr "chest_space.t" "chest_space_aimConstraint1.ct";
connectAttr "chest_space.rp" "chest_space_aimConstraint1.crp";
connectAttr "chest_space.rpt" "chest_space_aimConstraint1.crt";
connectAttr "chest_space.ro" "chest_space_aimConstraint1.cro";
connectAttr "spine_04_space.t" "chest_space_aimConstraint1.tg[0].tt";
connectAttr "spine_04_space.rp" "chest_space_aimConstraint1.tg[0].trp";
connectAttr "spine_04_space.rpt" "chest_space_aimConstraint1.tg[0].trt";
connectAttr "spine_04_space.pm" "chest_space_aimConstraint1.tg[0].tpm";
connectAttr "chest_space_aimConstraint1.w0" "chest_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fit_upVec_CTL.wm" "chest_space_aimConstraint1.wum";
connectAttr "chest_poci.p" "output_chest_end_space.t";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.ot" "fit_spine_01_local_space.t";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.or" "fit_spine_01_local_space.r";
connectAttr "fk_spineB_scaleSpaceMat_DMTX.ot" "fit_spine_02_local_space.t";
connectAttr "fk_spineB_scaleSpaceMat_DMTX.or" "fit_spine_02_local_space.r";
connectAttr "fk_spineC_scaleSpaceMat_DMTX.ot" "fit_spine_03_local_space.t";
connectAttr "fk_spineC_scaleSpaceMat_DMTX.or" "fit_spine_03_local_space.r";
connectAttr "fk_spineD_scaleSpaceMat_DMTX.ot" "fit_spine_04_local_space.t";
connectAttr "fk_spineD_scaleSpaceMat_DMTX.or" "fit_spine_04_local_space.r";
connectAttr "fk_chest_scaleSpaceMat_DMTX.ot" "fit_chest_local_space.t";
connectAttr "fk_chest_scaleSpaceMat_DMTX.or" "fit_chest_local_space.r";
connectAttr "fk_joint_DMTX.ot" "fit_JNT_GRP.t";
connectAttr "fk_joint_DMTX.or" "fit_JNT_GRP.r";
connectAttr "fk_joint_DMTX.os" "fit_JNT_GRP.s";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.ot" "fit_spine_01_JNT_space.t";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.or" "fit_spine_01_JNT_space.r";
connectAttr "fk_spineB_localMat_DMTX.ot" "fit_spine_02_JNT_space.t";
connectAttr "fk_spineB_localMat_DMTX.or" "fit_spine_02_JNT_space.r";
connectAttr "fk_spineC_localMat_DMTX.ot" "fit_spine_03_JNT_space.t";
connectAttr "fk_spineC_localMat_DMTX.or" "fit_spine_03_JNT_space.r";
connectAttr "fk_spineD_localMat_DMTX.ot" "fit_spine_04_JNT_space.t";
connectAttr "fk_spineD_localMat_DMTX.or" "fit_spine_04_JNT_space.r";
connectAttr "fk_chest_localMat_DMTX.ot" "fit_chest_JNT_space.t";
connectAttr "fk_chest_localMat_DMTX.or" "fit_chest_JNT_space.r";
connectAttr "fit_spineA_JNT_DCMX.ot" "fit_spine_01_JNT.t";
connectAttr "fit_spineA_JNT_DCMX.or" "fit_spine_01_JNT.jo";
connectAttr "fit_spine_01_JNT.s" "fit_spine_02_JNT.is";
connectAttr "fit_spineB_JNT_DCMX.ot" "fit_spine_02_JNT.t";
connectAttr "fit_spineB_JNT_DCMX.or" "fit_spine_02_JNT.jo";
connectAttr "fit_spine_02_JNT.s" "fit_spine_03_JNT.is";
connectAttr "fit_spineC_JNT_DCMX.ot" "fit_spine_03_JNT.t";
connectAttr "fit_spineC_JNT_DCMX.or" "fit_spine_03_JNT.jo";
connectAttr "fit_spine_03_JNT.s" "fit_spine_04_JNT.is";
connectAttr "fit_spineD_JNT_DCMX.ot" "fit_spine_04_JNT.t";
connectAttr "fit_spineD_JNT_DCMX.or" "fit_spine_04_JNT.jo";
connectAttr "fit_spine_04_JNT.s" "fit_chest_JNT.is";
connectAttr "fit_chest_JNT_DCMX.ot" "fit_chest_JNT.t";
connectAttr "fit_chest_JNT_DCMX.or" "fit_chest_JNT.jo";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_root_CTL.wm" "fit_root_local_DMTX.imat";
connectAttr "fit_space_CTL.wm" "fk_joint_DMTX.imat";
connectAttr "spine_param_MULT.ox" "spineA_param_MULT.i1x";
connectAttr "bezierShape1.ws" "spineA_poci.ic";
connectAttr "spineA_param_MULT.ox" "spineA_poci.pr";
connectAttr "spine_spineA_twist_MULT.ox" "spineA_twist_PLS.i1[0]";
connectAttr "chest_spineA_twist_MULT.ox" "spineA_twist_PLS.i1[1]";
connectAttr "spineA_twist_PLS.o1" "unitConversion1.i";
connectAttr "fk_spineA_scaleSpaceMat_MAT.o" "fk_spineA_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spine_01_space.wm" "fk_spineA_scaleSpaceMat_MAT.i[0]";
connectAttr "fit_space_CTL.wim" "fk_spineA_scaleSpaceMat_MAT.i[1]";
connectAttr "spine_param_MULT.ox" "spineB_param_MULT.i1x";
connectAttr "bezierShape1.ws" "spineB_poci.ic";
connectAttr "spineB_param_MULT.ox" "spineB_poci.pr";
connectAttr "spine_spineB_twist_MULT.ox" "spineB_twist_PLS.i1[0]";
connectAttr "chest_spineB_twist_MULT.ox" "spineB_twist_PLS.i1[1]";
connectAttr "spineB_twist_PLS.o1" "unitConversion2.i";
connectAttr "fk_spineB_scaleSpaceMat_MAT.o" "fk_spineB_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spine_02_space.wm" "fk_spineB_scaleSpaceMat_MAT.i[0]";
connectAttr "fit_space_CTL.wim" "fk_spineB_scaleSpaceMat_MAT.i[1]";
connectAttr "fk_spineB_localMat_MAT.o" "fk_spineB_localMat_DMTX.imat";
connectAttr "fit_spine_02_local_space.wm" "fk_spineB_localMat_MAT.i[0]";
connectAttr "fit_spine_01_local_space.wim" "fk_spineB_localMat_MAT.i[1]";
connectAttr "spine_param_MULT.ox" "spineC_param_MULT.i1x";
connectAttr "bezierShape1.ws" "spineC_poci.ic";
connectAttr "spineC_param_MULT.ox" "spineC_poci.pr";
connectAttr "spine_spineC_twist_MULT.ox" "spineC_twist_PLS.i1[0]";
connectAttr "chest_spineC_twist_MULT.ox" "spineC_twist_PLS.i1[1]";
connectAttr "spineC_twist_PLS.o1" "unitConversion3.i";
connectAttr "fk_spineC_scaleSpaceMat_MAT.o" "fk_spineC_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spine_03_space.wm" "fk_spineC_scaleSpaceMat_MAT.i[0]";
connectAttr "fit_space_CTL.wim" "fk_spineC_scaleSpaceMat_MAT.i[1]";
connectAttr "fit_spine_03_JNT.wm" "FK_spineC_JNT_DMTX.imat";
connectAttr "fk_spineC_localMat_MAT.o" "fk_spineC_localMat_DMTX.imat";
connectAttr "fit_spine_03_local_space.wm" "fk_spineC_localMat_MAT.i[0]";
connectAttr "fit_spine_02_local_space.wim" "fk_spineC_localMat_MAT.i[1]";
connectAttr "spine_param_MULT.ox" "spineD_param_MULT.i1x";
connectAttr "bezierShape1.ws" "spineD_poci.ic";
connectAttr "spineD_param_MULT.ox" "spineD_poci.pr";
connectAttr "spine_spineD_twist_MULT.ox" "spineD_twist_PLS.i1[0]";
connectAttr "chest_spineD_twist_MULT.ox" "spineD_twist_PLS.i1[1]";
connectAttr "spineD_twist_PLS.o1" "unitConversion4.i";
connectAttr "fk_spineD_scaleSpaceMat_MAT.o" "fk_spineD_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spine_04_space.wm" "fk_spineD_scaleSpaceMat_MAT.i[0]";
connectAttr "fit_space_CTL.wim" "fk_spineD_scaleSpaceMat_MAT.i[1]";
connectAttr "fk_spineD_localMat_MAT.o" "fk_spineD_localMat_DMTX.imat";
connectAttr "fit_spine_04_local_space.wm" "fk_spineD_localMat_MAT.i[0]";
connectAttr "fit_spine_03_local_space.wim" "fk_spineD_localMat_MAT.i[1]";
connectAttr "spine_param_MULT.ox" "chest_param_MULT.i1x";
connectAttr "bezierShape1.ws" "chest_poci.ic";
connectAttr "chest_param_MULT.ox" "chest_poci.pr";
connectAttr "spine_chest_twist_MULT.ox" "chest_twist_PLS.i1[0]";
connectAttr "chest_chest_twist_MULT.ox" "chest_twist_PLS.i1[1]";
connectAttr "chest_twist_PLS.o1" "unitConversion5.i";
connectAttr "fk_chest_scaleSpaceMat_MAT.o" "fk_chest_scaleSpaceMat_DMTX.imat";
connectAttr "twist_chest_space.wm" "fk_chest_scaleSpaceMat_MAT.i[0]";
connectAttr "fit_space_CTL.wim" "fk_chest_scaleSpaceMat_MAT.i[1]";
connectAttr "fk_chest_localMat_MAT.o" "fk_chest_localMat_DMTX.imat";
connectAttr "fit_chest_local_space.wm" "fk_chest_localMat_MAT.i[0]";
connectAttr "fit_spine_04_local_space.wim" "fk_chest_localMat_MAT.i[1]";
connectAttr "M_spine_CTL_localMat_MAT.o" "M_spine_CTL_localMat_DMTX.imat";
connectAttr "fit_spine_01_CTL.wm" "M_spine_CTL_localMat_MAT.i[0]";
connectAttr "fit_root.wim" "M_spine_CTL_localMat_MAT.i[1]";
connectAttr "spineA_param_MULT.ox" "spine_spineA_twist_RMAP.i";
connectAttr "spine_spineA_twist_RMAP.ov" "spine_spineA_twist_MULT.i2x";
connectAttr "spineB_param_MULT.ox" "spine_spineB_twist_RMAP.i";
connectAttr "spine_spineB_twist_RMAP.ov" "spine_spineB_twist_MULT.i2x";
connectAttr "spineC_param_MULT.ox" "spine_spineC_twist_RMAP.i";
connectAttr "spine_spineC_twist_RMAP.ov" "spine_spineC_twist_MULT.i2x";
connectAttr "spineD_param_MULT.ox" "spine_spineD_twist_RMAP.i";
connectAttr "spine_spineD_twist_RMAP.ov" "spine_spineD_twist_MULT.i2x";
connectAttr "chest_param_MULT.ox" "spine_chest_twist_RMAP.i";
connectAttr "spine_chest_twist_RMAP.ov" "spine_chest_twist_MULT.i2x";
connectAttr "spineA_param_MULT.ox" "chest_spineA_twist_RMAP.i";
connectAttr "chest_spineA_twist_RMAP.ov" "chest_spineA_twist_MULT.i2x";
connectAttr "spineB_param_MULT.ox" "chest_spineB_twist_RMAP.i";
connectAttr "chest_spineB_twist_RMAP.ov" "chest_spineB_twist_MULT.i2x";
connectAttr "spineC_param_MULT.ox" "chest_spineC_twist_RMAP.i";
connectAttr "chest_spineC_twist_RMAP.ov" "chest_spineC_twist_MULT.i2x";
connectAttr "spineD_param_MULT.ox" "chest_spineD_twist_RMAP.i";
connectAttr "chest_spineD_twist_RMAP.ov" "chest_spineD_twist_MULT.i2x";
connectAttr "chest_param_MULT.ox" "chest_chest_twist_RMAP.i";
connectAttr "chest_chest_twist_RMAP.ov" "chest_chest_twist_MULT.i2x";
connectAttr "fit_spine_01_CTL.wm" "fit_spine_CTL_local_DCMX.imat";
connectAttr "fit_spine_02_CTL.wm" "fit_spine_sub_000_CTL_local_DCMX.imat";
connectAttr "fit_spine_03_CTL.wm" "fit_chest_sub_001_CTL_local_DCMX.imat";
connectAttr "fit_chest_CTL.wm" "fit_chest_CTL_local_DCMX.imat";
connectAttr "fit_spine_01_JNT_space.wm" "fit_spineA_JNT_MTMX.i[0]";
connectAttr "fit_spine_01_JNT.pim" "fit_spineA_JNT_MTMX.i[1]";
connectAttr "fit_spineA_JNT_MTMX.o" "fit_spineA_JNT_DCMX.imat";
connectAttr "fit_spine_02_JNT_space.wm" "fit_spineB_JNT_MTMX.i[0]";
connectAttr "fit_spine_02_JNT.pim" "fit_spineB_JNT_MTMX.i[1]";
connectAttr "fit_spineB_JNT_MTMX.o" "fit_spineB_JNT_DCMX.imat";
connectAttr "fit_spine_03_JNT_space.wm" "fit_spineC_JNT_MTMX.i[0]";
connectAttr "fit_spine_03_JNT.pim" "fit_spineC_JNT_MTMX.i[1]";
connectAttr "fit_spineC_JNT_MTMX.o" "fit_spineC_JNT_DCMX.imat";
connectAttr "fit_spine_04_JNT_space.wm" "fit_spineD_JNT_MTMX.i[0]";
connectAttr "fit_spine_04_JNT.pim" "fit_spineD_JNT_MTMX.i[1]";
connectAttr "fit_spineD_JNT_MTMX.o" "fit_spineD_JNT_DCMX.imat";
connectAttr "fit_chest_JNT_space.wm" "fit_chest_JNT_MTMX.i[0]";
connectAttr "fit_chest_JNT.pim" "fit_chest_JNT_MTMX.i[1]";
connectAttr "fit_chest_JNT_MTMX.o" "fit_chest_JNT_DCMX.imat";
connectAttr "fit_root_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_joint_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineA_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineA_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineB_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineC_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_spineC_JNT_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineD_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineD_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_chest_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_spine_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_spine_sub_000_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_chest_sub_001_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_chest_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of fit_spine.ma
