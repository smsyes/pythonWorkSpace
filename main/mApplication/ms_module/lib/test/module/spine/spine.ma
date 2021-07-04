//Maya ASCII 2019 scene
//Name: spine.ma
//Last modified: Tue, Jun 08, 2021 12:36:23 PM
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
	rename -uid "2EDD93CA-4884-A594-5190-8289EB9D2C6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 92.827890531905609 32.16411212646041 -20.749491883699804 ;
	setAttr ".r" -type "double3" -15.938352728379513 462.59999999903215 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DCF8CAB6-4BBC-35DE-2165-F78ABA7598D1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 98.921421652010693;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 5 4.4408920985006262e-15 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A150943F-4158-86AC-2BFA-1A8C7286380D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "79DC427C-48ED-2D08-0DBB-4A8EF720D7BD";
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
	rename -uid "5ED6F16A-4C49-1BBA-16C4-BDA07A9817AB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "341666D7-40A4-BD97-7D44-BD8BDF85563E";
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
	rename -uid "73DEDF2E-422E-898B-712C-7C916338CAF9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1124986720245 145.69190724528389 21.466040215040902 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3E0F22FF-46B7-B31C-CCF2-7D92EF3DE85D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1124986720245;
	setAttr ".ow" 434.51935467145637;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 5 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "spine_GRP";
	rename -uid "E1940F88-421F-FA6E-20EB-A991298F3EBA";
createNode transform -n "fit_spine_GRP" -p "spine_GRP";
	rename -uid "601CE7CA-4F5C-236A-77CC-9F861ABEE441";
createNode transform -n "fit_space" -p "fit_spine_GRP";
	rename -uid "EA703019-46C5-4E9B-F165-F1AFDAA40890";
	addAttr -ci true -sn "fitMode" -ln "fitMode" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k on ".fitMode" yes;
createNode locator -n "fit_spaceShape" -p "fit_space";
	rename -uid "F8F985E6-490B-4510-A8E8-6AAB9375BC33";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "fit_space_GRP" -p "fit_spine_GRP";
	rename -uid "CCF6DD22-4DBE-2045-F18F-A196D9D18680";
createNode transform -n "fit_root" -p "fit_space_GRP";
	rename -uid "D55AE785-48D2-A8D4-245D-4598A2307961";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 5 0 ;
createNode nurbsCurve -n "fit_rootShape" -p "fit_root";
	rename -uid "8501367A-4F3B-8A08-E51E-20A6D850F805";
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
createNode transform -n "fit_spine_01" -p "fit_root";
	rename -uid "F1B7E0FB-4554-C41D-1879-8BBA8BF8D802";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 4 0 ;
createNode nurbsCurve -n "fit_spine_01Shape" -p "fit_spine_01";
	rename -uid "A2BFF475-49CE-0AB9-67DB-32BDBE704510";
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
createNode transform -n "fit_chest" -p "fit_space_GRP";
	rename -uid "EA249F6B-4271-4357-D019-D6880A386BEA";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 17 0 ;
createNode nurbsCurve -n "fit_chestShape" -p "fit_chest";
	rename -uid "DDCB2235-4E70-25B9-3AE4-708A6D1C3DC9";
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
createNode transform -n "fit_spine_02" -p "fit_chest";
	rename -uid "AD1AA556-4C74-58CB-BA5D-78A18EC49BB2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 -4 0 ;
createNode nurbsCurve -n "fit_spine_02Shape" -p "fit_spine_02";
	rename -uid "37FAE763-47EB-6752-242F-01BC092299B1";
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
createNode transform -n "IK_space" -p "spine_GRP";
	rename -uid "3C515F6E-4404-E83B-A971-CB9B617FC725";
createNode transform -n "spine_crv" -p "IK_space";
	rename -uid "AD734936-4FFB-DF44-786A-EAA7D786F5DC";
	setAttr ".v" no;
createNode bezierCurve -n "bezierShape1" -p "spine_crv";
	rename -uid "434F0CF6-406A-4292-9E61-F39B42315150";
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
	rename -uid "AC1C047E-4C12-2BC5-A0C0-ECB2B25000CA";
createNode transform -n "M_spine_OS" -p "IK_CTL_space";
	rename -uid "6146BC85-4EB8-B65C-76BF-82AC40FFCC4B";
createNode transform -n "M_spine_CTL" -p "M_spine_OS";
	rename -uid "8B8EE11A-4E2A-F0D8-4954-25997951741F";
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
createNode transform -n "IK_spine_OS" -p "M_spine_CTL";
	rename -uid "8EBC0D50-4D76-CA45-914A-F59320C03979";
createNode transform -n "IK_spine_CTL" -p "IK_spine_OS";
	rename -uid "A216CA5E-490B-135D-F1B1-4C861F3A973C";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_spine_CTLShape" -p "IK_spine_CTL";
	rename -uid "555D702B-4B3E-C108-F3A1-2FAFB6DCBAF9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "IK_spine_01_OS" -p "M_spine_CTL";
	rename -uid "F8E8B4F3-4F03-6794-8F97-4A9BB6D7059A";
createNode transform -n "IK_spine_01_CTL" -p "IK_spine_01_OS";
	rename -uid "90363054-4EFC-6D60-0534-759FA9012E6A";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_spine_01_CTLShape" -p "IK_spine_01_CTL";
	rename -uid "638965EF-4AD2-E105-AF14-AFACD39D11FB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "M_spine_CTLShape" -p "M_spine_CTL";
	rename -uid "9B443326-4F7B-752A-2E71-39B362F81AA5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 7.4913271339601097 4.5871148979849805e-16 
		-7.4913271339601133 6.4871601008940362e-16 6.4871601008940362e-16 -10.594336433019951 
		-7.4913271339601097 4.5871148979849814e-16 -7.4913271339601115 -10.594336433019958 
		3.3629552517697639e-32 -5.4921227150737444e-16 -7.4913271339601097 -4.5871148979849814e-16 
		7.4913271339601097 -1.0612419262940688e-15 -6.4871601008940431e-16 10.594336433019958 
		7.4913271339601097 -4.5871148979849814e-16 7.4913271339601115 10.594336433019958 
		-8.8465173248652672e-32 1.4447459187456415e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "upVec_OS" -p "M_spine_OS";
	rename -uid "BDCEBE21-4439-263C-5279-A39F618AAA64";
	setAttr ".t" -type "double3" 0 6 -12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "upVec_CTL" -p "upVec_OS";
	rename -uid "51746B48-4334-1300-AAFA-A3B46779DD95";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "upVec_CTLShape" -p "upVec_CTL";
	rename -uid "9476822F-438D-4712-E3FA-60BCA64AFA80";
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
createNode transform -n "root_hip_CTL_OS" -p "M_spine_OS";
	rename -uid "F3EBE057-4DD7-B5B2-32DC-9FA3D6B419D7";
createNode transform -n "hip_CTL_OS" -p "root_hip_CTL_OS";
	rename -uid "8DB6F3AA-4323-BCF2-2EF7-6183209C9CAC";
	setAttr ".t" -type "double3" 0 3 0 ;
createNode transform -n "hip_CTL" -p "hip_CTL_OS";
	rename -uid "1A9EDC2A-4762-C74B-2F14-93B5BE314786";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
createNode nurbsCurve -n "hip_CTLShape" -p "hip_CTL";
	rename -uid "F3FA07CB-4C1D-379C-A5EB-8F9ACBDC2A5A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 4.2373359645934032 -6.2378535682506007 
		-6.4821456243689317 1.7914333333012822e-16 -9.1081941875543855 -7.7651166721935869 
		-4.2373359645934032 -6.2378535682505998 -6.4821456243689246 -8.8200684091933947 -3.0510625958442685 
		-5.2484734997168997e-16 -4.2373359645934032 -4.6706303184681515 6.4821456243689246 
		-2.9306262399752497e-16 -6.8918058124456101 7.7651166721936038 4.2373359645934032 
		-4.6706303184681515 6.4821456243689246 8.8200684091933947 -3.051062595844269 1.3806520833099841e-15 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "M_chest_OS" -p "IK_CTL_space";
	rename -uid "C590FEB8-497D-7127-FA76-8DB1BA9A4F0D";
createNode transform -n "M_chest_CTL" -p "M_chest_OS";
	rename -uid "CC892D4E-455C-37A2-4B3B-9B9782466E8B";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "IK_spine_02_OS" -p "M_chest_CTL";
	rename -uid "8C3BBBB9-44FC-C592-7375-91B3264F86DB";
createNode transform -n "IK_spine_02_CTL" -p "IK_spine_02_OS";
	rename -uid "5990BE73-4457-5876-23DC-16808A323AC3";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_spine_02_CTLShape" -p "IK_spine_02_CTL";
	rename -uid "228A1EA2-42FA-759B-6C75-399AC577B06F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "IK_chest_OS" -p "M_chest_CTL";
	rename -uid "6CF5FFCC-41AF-0069-DC88-BBB20648D0C4";
createNode transform -n "IK_chest_CTL" -p "IK_chest_OS";
	rename -uid "DFE3FF66-43C5-1F6B-1D18-D18E4208E21A";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_chest_CTLShape" -p "IK_chest_CTL";
	rename -uid "40EB27A8-49A3-D930-7510-00B3FCCE8EFC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.7562367408821515 -0.78361162489122438 
		-7.5398483657733673 3.5611523231686094e-16 -1.1081941875543873 -6.92399728383982 
		-6.7562367408821515 -0.78361162489122427 -7.5398483657733655 -5.8158030962854355 
		-5.7448982375248279e-17 -3.5894124188055136e-16 -6.7562367408821515 0.78361162489122438 
		7.5398483657733673 -5.8257297376477781e-16 1.1081941875543881 6.9239972838398227 
		6.7562367408821515 0.78361162489122427 7.5398483657733655 5.8158030962854355 1.511240500779959e-16 
		9.4422306488731795e-16 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "M_chest_CTLShape" -p "M_chest_CTL";
	rename -uid "8C7953AB-4101-52AD-CE06-9B9A4609643D";
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
createNode transform -n "twist_spine_OS" -p "IK_space";
	rename -uid "7E7FCDCC-45FE-FCD2-736B-92973972BE36";
createNode transform -n "twist_spine_CTL" -p "twist_spine_OS";
	rename -uid "5424D2E6-4ACB-D9DC-7446-6199B8C92098";
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
createNode nurbsCurve -n "twist_spine_CTLShape" -p "twist_spine_CTL";
	rename -uid "8531B351-4087-904C-B253-98969CB6A39C";
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
createNode transform -n "twist_chest_OS" -p "IK_space";
	rename -uid "BFEC4B08-436E-EB85-B385-318AD77C3665";
createNode transform -n "twist_chest_CTL" -p "twist_chest_OS";
	rename -uid "06E3A85D-4211-2DF1-D185-0DAB896394C0";
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
createNode nurbsCurve -n "twist_chest_CTLShape" -p "twist_chest_CTL";
	rename -uid "AB4B202E-4A35-D0EB-EED2-03BC53408235";
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
createNode transform -n "FK_space" -p "spine_GRP";
	rename -uid "092846A4-46CC-C853-104C-00BAB047C7BB";
createNode transform -n "on_curve_space" -p "FK_space";
	rename -uid "1E677196-4531-E0CC-CF2E-379492394692";
createNode transform -n "init_hip_space" -p "on_curve_space";
	rename -uid "F081A3D7-411E-0E0B-47DC-02A6CB5F2345";
createNode transform -n "init_root_space" -p "on_curve_space";
	rename -uid "4D9C0F8F-4B4B-9BF2-A576-A2A12688F27B";
createNode transform -n "twist_root_space" -p "init_root_space";
	rename -uid "4AC65B90-495B-6062-0762-50AC9670191D";
createNode aimConstraint -n "init_root_space_aimConstraint1" -p "init_root_space";
	rename -uid "A3BEED55-4D6E-5800-6FFE-9FB9CA49B7CC";
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
createNode transform -n "init_spine_01_space" -p "on_curve_space";
	rename -uid "441387A7-4385-D185-E7C5-D69D626AFD1F";
createNode transform -n "twist_spine_01_space" -p "init_spine_01_space";
	rename -uid "D6DD75D6-42F1-2A03-436F-6AAEEB6B46CD";
createNode aimConstraint -n "init_spine_01_space_aimConstraint1" -p "init_spine_01_space";
	rename -uid "50BD7959-403B-CC18-2B5E-9CB67F8B1951";
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
createNode transform -n "init_spine_02_space" -p "on_curve_space";
	rename -uid "860E305E-43D4-3726-AF4E-DC9AA8C4C473";
createNode transform -n "twist_spine_02_space" -p "init_spine_02_space";
	rename -uid "83058E15-40D7-D59C-0B0D-5D85DA06ACE0";
createNode aimConstraint -n "init_spine_02_space_aimConstraint1" -p "init_spine_02_space";
	rename -uid "DDDBDEDF-4A66-1237-6ABA-0EA87AA09EDE";
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
createNode transform -n "init_spine_03_space" -p "on_curve_space";
	rename -uid "8C758F1B-4290-71B9-0DC9-BAA2AB97E44E";
createNode transform -n "twist_spine_03_space" -p "init_spine_03_space";
	rename -uid "8EB2D761-493B-EBC7-92DB-88BBFE96BAE8";
createNode aimConstraint -n "init_spine_03_space_aimConstraint1" -p "init_spine_03_space";
	rename -uid "680A6B86-4CA2-125A-F2FA-4FB856C7578B";
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
createNode transform -n "init_chest_space" -p "on_curve_space";
	rename -uid "9FF9DA83-463A-D11F-C290-C0B55267B955";
createNode transform -n "twist_chest_space" -p "init_chest_space";
	rename -uid "669C70FF-4C80-F030-45A0-318B4B11634E";
createNode aimConstraint -n "init_chest_space_aimConstraint1" -p "init_chest_space";
	rename -uid "256E849F-4926-083E-B4DB-9E9D96D4EC56";
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
	rename -uid "1DBC6225-4CCE-044A-4DE6-3BB70A5BCE99";
createNode transform -n "FK_scale_space" -p "FK_space";
	rename -uid "F844CA8E-479E-B829-D299-6ABB490B6C8B";
createNode transform -n "FK_hip_local_space" -p "FK_scale_space";
	rename -uid "2EF3EA6E-45C7-1191-30A6-3085324356B8";
createNode transform -n "FK_root_local_space" -p "FK_scale_space";
	rename -uid "9958649F-4174-12CC-EE8A-7A97AB5363FB";
createNode transform -n "FK_spine_01_local_space" -p "FK_scale_space";
	rename -uid "AA897EF1-4453-17D4-24ED-13A484A323CA";
createNode transform -n "FK_spine_02_local_space" -p "FK_scale_space";
	rename -uid "E03BC187-42A7-ED9A-6D38-658D455171A8";
createNode transform -n "FK_spine_03_local_space" -p "FK_scale_space";
	rename -uid "F56B04E4-4DDF-A877-52BB-EB810C44C726";
createNode transform -n "FK_chest_local_space" -p "FK_scale_space";
	rename -uid "FD84C6F3-4A3C-13A9-AE91-D6AD638F4004";
createNode transform -n "fk_ctl_space" -p "FK_space";
	rename -uid "6C886398-4D39-9691-559E-B184B68AFB3B";
createNode transform -n "FK_root_CTL_OS" -p "fk_ctl_space";
	rename -uid "3BF99FBE-4CA0-FD38-4D5C-7394EE558DC3";
createNode transform -n "FK_root_CTL" -p "FK_root_CTL_OS";
	rename -uid "1910AD1F-4AD0-C7CF-8BBF-7AA684499934";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_spine_01_CTL_OS" -p "FK_root_CTL";
	rename -uid "4D75460C-4C77-2422-52E4-42A0C77482BF";
createNode transform -n "FK_spine_01_CTL" -p "FK_spine_01_CTL_OS";
	rename -uid "5115CA4A-4F73-04BB-2DB7-A08761356229";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_spine_02_CTL_OS" -p "FK_spine_01_CTL";
	rename -uid "03024D0C-4942-4C0F-1D20-6EA92E1C109F";
createNode transform -n "FK_spine_02_CTL" -p "FK_spine_02_CTL_OS";
	rename -uid "B523B89D-4D72-C637-7938-4FBBD2A9B17B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_spine_03_CTL_OS" -p "FK_spine_02_CTL";
	rename -uid "1EA707FA-487B-FEDA-0884-BDA172E92C49";
createNode transform -n "FK_spine_03_CTL" -p "FK_spine_03_CTL_OS";
	rename -uid "6B00C288-4BDC-7E0A-260B-82B33CC34BFB";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "FK_chest_CTL_OS" -p "FK_spine_03_CTL";
	rename -uid "D0A8FE38-4FE6-BBEB-EFEE-749A89AB0542";
createNode transform -n "FK_chest_CTL" -p "FK_chest_CTL_OS";
	rename -uid "E56E4672-47AF-2F88-05BC-02BD177AEF74";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_chest_CTLShape" -p "FK_chest_CTL";
	rename -uid "5142033A-4F85-B710-CCAD-868D05D63DF9";
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
createNode nurbsCurve -n "FK_spine_03_CTLShape" -p "FK_spine_03_CTL";
	rename -uid "761B6EAA-4E4E-657F-BFAA-A39037756D28";
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
createNode nurbsCurve -n "FK_spine_02_CTLShape" -p "FK_spine_02_CTL";
	rename -uid "C8B6C33B-4246-3929-8770-01A6C941D3FF";
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
createNode nurbsCurve -n "FK_spine_01_CTLShape" -p "FK_spine_01_CTL";
	rename -uid "15710325-4580-DB05-58BF-62857F100F4E";
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
	rename -uid "61EDB7B7-4A96-268D-6DB9-5E8FEA4D1F62";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 4.7408503305919059 2.9029335912980257e-16 
		-4.7408503305919059 4.1053680554821001e-16 4.1053680554821001e-16 -6.7045748347040437 
		-4.7408503305919059 2.9029335912980242e-16 -4.740850330591905 -6.704574834704049 
		2.1282300494986448e-32 -3.4756634337025209e-16 -4.7408503305919059 -2.9029335912980247e-16 
		4.7408503305919059 -6.7160184666099512e-16 -4.1053680554821055e-16 6.704574834704049 
		4.7408503305919059 -2.9029335912980242e-16 4.740850330591905 6.704574834704049 -5.5984759221166102e-32 
		9.1430050297187509e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "joint_space" -p "spine_GRP";
	rename -uid "1FCBA123-4E7F-E49F-4025-1B8E4643F678";
	setAttr ".v" no;
createNode transform -n "root_JNT_space" -p "joint_space";
	rename -uid "1BDD8267-4F61-DC85-A261-71B57158B334";
createNode transform -n "hip_local_space" -p "root_JNT_space";
	rename -uid "26925E74-41D3-64FD-4D34-2DBE85AD9A34";
createNode transform -n "hip_root_JNT_space" -p "hip_local_space";
	rename -uid "AABDF2FD-446B-C322-C4DE-C98D868F2541";
	setAttr ".t" -type "double3" 0 -3 0 ;
createNode transform -n "root_space" -p "root_JNT_space";
	rename -uid "E207126C-45CF-05FE-33E3-1DA711F38308";
createNode transform -n "spine_01_JNT_space" -p "root_space";
	rename -uid "2A44D1CB-4BE7-93BA-D19F-ECBA4866842C";
createNode transform -n "spine_02_JNT_space" -p "spine_01_JNT_space";
	rename -uid "EEE76E14-4153-C5C3-B3D6-4FA93C124458";
createNode transform -n "spine_03_JNT_space" -p "spine_02_JNT_space";
	rename -uid "08F09D1E-4145-F1FC-9C5E-E0870C9C7D37";
createNode transform -n "chest_JNT_space" -p "spine_03_JNT_space";
	rename -uid "C56688C0-4957-4E37-A5A9-92B6D1B8BA12";
createNode transform -n "output_space" -p "spine_GRP";
	rename -uid "BB0D8874-4CB3-A768-F10C-0D94BC214356";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode joint -n "root_JNT" -p "output_space";
	rename -uid "44E66AF4-4E41-71B8-22A0-0B93A82D189D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "spine_01_JNT" -p "root_JNT";
	rename -uid "4A4664CC-4E8D-4225-F8EC-5EAC5ED5500F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "spine_02_JNT" -p "spine_01_JNT";
	rename -uid "D9CE2731-49F5-FA2C-C30F-04A217159D72";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "spine_03_JNT" -p "spine_02_JNT";
	rename -uid "0FF6947E-4850-E6F1-6765-9794C51A0BC6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "chest_JNT" -p "spine_03_JNT";
	rename -uid "2B6F1CA8-47C1-664A-0D9E-409FEF6D467B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8BD0FB02-44B6-ECC4-CB26-2A8EF06D8594";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A4286983-441F-9A1A-B5D1-89A91783FE27";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9D940137-4EEC-A242-4C8D-9685AA0D3E9E";
createNode displayLayerManager -n "layerManager";
	rename -uid "16D3235D-4146-ED5C-8623-6BAD6F0AB195";
createNode displayLayer -n "defaultLayer";
	rename -uid "2F1D7CB2-48A7-669A-69F6-38ADF52EE26E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "04C2AA06-446B-CB46-7B12-83A8D5571024";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "99FD9D2B-4315-FD46-B49A-74863EEE0851";
	setAttr ".g" yes;
createNode decomposeMatrix -n "fit_space_local_DMTX";
	rename -uid "8A7FF3C7-4D4A-38EB-0FAF-A6A5F62ABD3B";
createNode decomposeMatrix -n "IK_spine_CTL_local_DMTX";
	rename -uid "6294CBFE-4F4D-9D63-F7B5-EF85D3A9022D";
createNode decomposeMatrix -n "IK_spine_01_CTL_local_DMTX";
	rename -uid "9F4DE213-49D7-D07F-D22D-55B91D77DFC7";
createNode decomposeMatrix -n "IK_spine_02_CTL_local_DMTX";
	rename -uid "247E9237-42A0-E710-328E-5989466B7B36";
createNode decomposeMatrix -n "IK_chest_CTL_local_DMTX";
	rename -uid "CE38CDD3-4828-A7E0-6D00-BA91277AF35F";
createNode multiplyDivide -n "spine_param_MULT";
	rename -uid "AC938511-4471-05BC-6C39-008A97696845";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "root_param_MULT";
	rename -uid "3CB07A3C-4102-7A0E-0B96-378B3A96E2B9";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode pointOnCurveInfo -n "root_poci";
	rename -uid "DF2F18E8-4E12-4072-90FE-8E9C1A6632E9";
	setAttr ".top" yes;
createNode plusMinusAverage -n "root_twist_PLS";
	rename -uid "80200365-4237-2D2D-82CB-76A135B12591";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion1";
	rename -uid "C5A99326-4312-252B-9DAE-82A783E56A7C";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_root_scaleSpaceMat_DMTX";
	rename -uid "6C9F9028-421F-5DFF-1D97-2CA3E65EBAA4";
createNode multMatrix -n "FK_root_scaleSpaceMat_MTMX";
	rename -uid "273F3D60-4D51-E742-B2B2-55B499BFD8CB";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "spine_01_param_MULT";
	rename -uid "2088E55D-4418-1714-CA8C-4E8E3B1AE2A4";
createNode pointOnCurveInfo -n "spine_01_poci";
	rename -uid "5FDBDF27-4FA7-53C9-4008-FB9BD0D301CE";
	setAttr ".top" yes;
createNode plusMinusAverage -n "spine_01_twist_PLS";
	rename -uid "7D194AA8-40E1-5756-5777-F48155534C9D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion2";
	rename -uid "4BE5DC08-4A98-E091-A66C-6C9D5909E221";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_spine_01_scaleSpaceMat_DMTX";
	rename -uid "FB1B70D1-4204-6D36-EED1-C29DE93C1AA6";
createNode multMatrix -n "FK_spine_01_scaleSpaceMat_MTMX";
	rename -uid "B0426DA8-4A57-9616-E8FB-BDA0C919B30C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_spine_01_localMat_DMTX";
	rename -uid "D8E005EA-4067-4748-B9AF-C0A5B2A9671A";
createNode multMatrix -n "FK_spine_01_localMat_MTMX";
	rename -uid "9DE536A8-4FE5-BC37-9F5E-A7A6A71FAF92";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "spine_02_param_MULT";
	rename -uid "E154F60B-4355-D6AA-6A28-4B8787AC3866";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode pointOnCurveInfo -n "spine_02_poci";
	rename -uid "EDA0CE71-4EF6-4E90-CC1E-AE874F98708C";
	setAttr ".top" yes;
createNode plusMinusAverage -n "spine_02_twist_PLS";
	rename -uid "8C064F83-47EE-2C9D-7B09-C580E3DF3DF2";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion3";
	rename -uid "705AE479-42D4-DDCB-60F1-66BC5D8C3DA9";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_spine_02_scaleSpaceMat_DMTX";
	rename -uid "89A2088B-4228-9A33-8434-8DBD9F0FF270";
createNode multMatrix -n "FK_spine_02_scaleSpaceMat_MTMX";
	rename -uid "570BAEF4-41BF-A7CD-07E0-3FB12B500EFC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_spine_02_localMat_DMTX";
	rename -uid "BE7CBE96-463B-C2F2-E074-9A9B081EAF2E";
createNode multMatrix -n "FK_spine_02_localMat_MTMX";
	rename -uid "69266A13-41A5-94B5-B509-7ABEFFC135D9";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "spine_03_param_MULT";
	rename -uid "1B83E441-482F-D66E-A682-60A2606EC6B7";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode pointOnCurveInfo -n "spine_03_poci";
	rename -uid "F4A229BA-49AB-48BE-EBB1-78BE1D29A1A4";
	setAttr ".top" yes;
createNode plusMinusAverage -n "spine_03_twist_PLS";
	rename -uid "CDF0C825-4A77-EEE4-EC94-82955ECA3F50";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion4";
	rename -uid "E64FCF67-45C8-788E-65F0-D1BC670E4CFE";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "FK_spine_03_scaleSpaceMat_DMTX";
	rename -uid "7D1080E3-4005-8D3B-17A7-DA928323AEB1";
createNode multMatrix -n "FK_spine_03_scaleSpaceMat_MTMX";
	rename -uid "658539D2-43A4-D472-8018-07B2970BA48E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_spine_03_localMat_DMTX";
	rename -uid "D629C07C-4FA1-972D-0A15-228DA3D4934B";
createNode multMatrix -n "FK_spine_03_localMat_MTMX";
	rename -uid "C24986E3-4662-A59B-2995-5F93CFA261EB";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "chest_param_MULT";
	rename -uid "FE64ABD0-4DDD-50AA-6B3C-37A4E8112E56";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode pointOnCurveInfo -n "chest_poci";
	rename -uid "557FAF0A-4048-0064-5BD4-61B84B11578D";
	setAttr ".top" yes;
createNode plusMinusAverage -n "chest_twist_PLS";
	rename -uid "36B0AC66-4FEF-4EFE-2B33-5D9703CF88E5";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion5";
	rename -uid "302735A4-4A98-74C3-1819-68B36CCC8F3C";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "fk_chest_scaleSpaceMat_DMTX";
	rename -uid "BA58659C-4667-127F-3CD2-079987063214";
createNode multMatrix -n "FK_chest_scaleSpaceMat_MTMX";
	rename -uid "2EA08013-459C-CBFD-ECD0-F59EAC22E0D5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_localMat_DMTX";
	rename -uid "41463AAD-4F19-FB44-8CE2-8CB74D1E127A";
createNode multMatrix -n "FK_chest_localMat_MTMX";
	rename -uid "5B3BFC36-421A-562F-ED38-4685025F6075";
	setAttr -s 2 ".i";
createNode pointOnCurveInfo -n "twist_spine_poci";
	rename -uid "1E3BBCA6-48D9-A5C2-07A7-70A0EFA96DDC";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_spine_CTL_localMat_DMTX";
	rename -uid "3C3F43A2-4DBB-B103-8D61-249D27F0E3BB";
createNode multMatrix -n "M_spine_CTL_localMat_MTMX";
	rename -uid "D38AEC60-4C0D-1178-3E5D-0F8E190A5296";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_spine_CTL_rotMat_DMTX";
	rename -uid "7AB6F4DC-498C-4EF7-9551-AA83B1F5A096";
createNode remapValue -n "spine_root_twist_RMAP";
	rename -uid "B590CE60-4793-0102-0BE2-7B9A8B6F74CB";
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
createNode multiplyDivide -n "spine_root_twist_MULT";
	rename -uid "B901335E-406B-67C4-1D15-0A97FF391763";
createNode unitConversion -n "unitConversion6";
	rename -uid "910E8F38-4FBC-B6D6-EEB3-3096D1DBA16F";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spine_spine_01_twist_RMAP";
	rename -uid "58660D2E-4EFD-92D4-EC9D-18B2977C466B";
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
createNode multiplyDivide -n "spine_spine_01_twist_MULT";
	rename -uid "AE1188F5-4FAD-7784-F81D-AF85B0B3A13D";
createNode unitConversion -n "unitConversion7";
	rename -uid "5EB27219-4180-6E8D-9DCF-B4B78ED5B2DB";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spine_spine_02_twist_RMAP";
	rename -uid "3AA6E795-41AF-405F-10F1-21B8FD88D5F9";
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
createNode multiplyDivide -n "spine_spine_02_twist_MULT";
	rename -uid "3C523C4B-4F5E-8586-41CF-18AC75CD8B20";
createNode unitConversion -n "unitConversion8";
	rename -uid "76940B9F-4039-0675-573F-37BA20DE96E1";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spine_spine_03_twist_RMAP";
	rename -uid "40ABB367-4231-D5F4-813A-E0AD066C0F16";
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
createNode multiplyDivide -n "spine_spine_03_twist_MULT";
	rename -uid "2C762A04-4D24-41AA-60AE-70B80428506F";
createNode unitConversion -n "unitConversion9";
	rename -uid "CD0EE50B-443C-5B0B-CB00-01A81D3249E6";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spine_chest_twist_RMAP";
	rename -uid "291E7B0E-4874-EF52-70B1-D7A736F6D608";
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
	rename -uid "E3856902-4622-108C-F92E-B8A942D090F8";
createNode unitConversion -n "unitConversion10";
	rename -uid "69DFDFC9-4130-552A-9FED-4B8A0550B641";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "twist_chest_poci";
	rename -uid "2ED701DB-44ED-A5CB-FB9C-DBBE6EA1A234";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_chest_CTL_localMat_DMTX";
	rename -uid "77F7F157-48B0-B7A5-AAAC-02B735A6AAB1";
createNode multMatrix -n "M_chest_CTL_localMat_MTMX";
	rename -uid "3F85FD27-4937-9C43-DE27-67B82E74FC44";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_chest_CTL_local_DMTX";
	rename -uid "A55F2B5B-4B39-A7C7-81D2-13979543E7E4";
createNode remapValue -n "chest_root_twist_RMAP";
	rename -uid "EDBC6806-459D-7D07-24CA-AF9AF47A32B7";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_root_twist_MULT";
	rename -uid "80DDC9DF-4B81-0BFE-3A2C-BDA82C46A363";
createNode unitConversion -n "unitConversion11";
	rename -uid "6CEA60E4-479E-60A1-38D5-21BC8E1AB613";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "chest_spine_01_twist_RMAP";
	rename -uid "2250F2CF-40E6-D937-6A4C-63BB5A434EB9";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_spine_01_twist_MULT";
	rename -uid "5A6F8D92-46AD-D6A5-F95E-DB8138CB87DF";
createNode unitConversion -n "unitConversion12";
	rename -uid "59B9DE9E-4D7C-A76F-A888-ECB4775398A7";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "chest_spine_02_twist_RMAP";
	rename -uid "7C85145B-4D1D-7D58-28DA-F586D12C1848";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_spine_02_twist_MULT";
	rename -uid "6DFDF1CB-405D-19CC-D4D6-309397068FB5";
createNode unitConversion -n "unitConversion13";
	rename -uid "7C85DB65-4B81-A765-7DA6-3D8A31CBDFC8";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "chest_spine_03_twist_RMAP";
	rename -uid "06CFFFD9-41EE-AFBD-1C81-C79C28769B63";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_spine_03_twist_MULT";
	rename -uid "D90F83CE-4E08-CA08-2E4B-7488ED3EFEC7";
createNode unitConversion -n "unitConversion14";
	rename -uid "3CBFA3A1-4440-4564-7B06-71A5FD714EB8";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "chest_chest_twist_RMAP";
	rename -uid "6201EE2F-4181-5670-E5C4-DB869FAF3D01";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_chest_twist_MULT";
	rename -uid "1B978B8C-411C-9FD9-AE36-548F00471021";
createNode unitConversion -n "unitConversion15";
	rename -uid "BFBD13B4-4772-983C-5F17-D9A95DF5B7B5";
	setAttr ".cf" 57.295779513082323;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "9E1995F7-4C62-D0E2-59C1-358B503C388E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "5F8B8411-48E0-CB53-4E9A-BE982266C085";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "fit_RVS";
	rename -uid "F41F4ADE-4997-C5F5-B207-5EA803DB2FBB";
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "F7F5A830-4F66-C010-D8C5-069D27999E4F";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "98D9D706-40F7-CA33-180E-D187142C394D";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "DD54AB5C-4E9F-D7D1-B29D-41A35452B0B6";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "6044B1BD-4BCB-B9BD-F054-98BEDB98B41A";
	setAttr ".nr" -type "double3" 0 0 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "46572513-40C5-248C-CBE9-B99008DD7E09";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 421\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 421\n            -height 329\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 421\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1053\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1053\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1053\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "78C64DE1-4B7A-EA96-9468-358ACCA2EB1E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "A1D63994-4182-F611-2D26-A8807401283B";
createNode multMatrix -n "hip_CTL_local_MTMX";
	rename -uid "349AF9B5-4025-5378-21EB-409F0BC899EE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hip_CTL_local_DCMX";
	rename -uid "C6C95CAF-4D40-BC22-7034-92B2FE31A31F";
createNode multMatrix -n "init_hip_space_local_MTMX";
	rename -uid "F75A2378-47EB-E25D-8D25-5AAA4F53656F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_hip_space_local_DCMX";
	rename -uid "3E1B3389-48B8-F260-8184-A1AD9C7BE2D2";
createNode decomposeMatrix -n "hip_root_JNT_space_local_DCMX";
	rename -uid "CBD91100-439C-FABA-CE58-7DAAA9795103";
createNode multMatrix -n "FK_spine_01_local_space_local_MTMX";
	rename -uid "EA450F8C-46FD-086E-8F78-B68A1936F240";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_spine_01_local_space_local_DCMX";
	rename -uid "F4EA2514-49B0-EA2E-0320-669BA1426B03";
createNode decomposeMatrix -n "FK_root_CTL_local_DCMX";
	rename -uid "B549EA55-4E46-7497-3672-F1AD3547D009";
createNode multMatrix -n "FK_root_CTL_local_MTMX";
	rename -uid "0E43EDEF-4B6E-CD75-4332-2589F9FDA371";
	setAttr -s 2 ".i";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "8C916F62-4AA7-9149-6619-378667D469B0";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/spine.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode multMatrix -n "init_hip_space_local_MTMX1";
	rename -uid "DAE86A65-4A2A-0049-D0C6-58AC31F238B5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_hip_space_local_DCMX1";
	rename -uid "3B6BA2F0-4140-C7CD-3BFC-DA9AB4D63A0D";
createNode multMatrix -n "hip_root_JNT_space_local_MTMX";
	rename -uid "BD7A3F4E-4938-1E2B-1659-D79F92CF2143";
	setAttr -s 2 ".i";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "0150A8FA-4F85-B4FC-31DA-7CA13B666C1C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -560.71426343350277 -548.8095020017937 ;
	setAttr ".tgi[0].vh" -type "double2" 560.71426343350277 547.61902585862265 ;
createNode objectSet -n "spine_SET";
	rename -uid "0D431931-4233-1A51-19F2-7DA869013D16";
	setAttr ".ihi" 0;
	setAttr -s 84 ".dsm";
	setAttr -s 88 ".dnsm";
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
	setAttr -s 42 ".u";
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
connectAttr "fit_space.fitMode" "fit_spine_GRP.v";
connectAttr "fit_space_local_DMTX.ot" "fit_space_GRP.t";
connectAttr "fit_space_local_DMTX.or" "fit_space_GRP.r";
connectAttr "fit_space_local_DMTX.os" "fit_space_GRP.s";
connectAttr "fit_RVS.ox" "IK_space.v";
connectAttr "IK_spine_CTL_local_DMTX.ot" "bezierShape1.cp[0]";
connectAttr "IK_spine_01_CTL_local_DMTX.ot" "bezierShape1.cp[1]";
connectAttr "IK_spine_02_CTL_local_DMTX.ot" "bezierShape1.cp[2]";
connectAttr "IK_chest_CTL_local_DMTX.ot" "bezierShape1.cp[3]";
connectAttr "fit_space_local_DMTX.ot" "IK_CTL_space.t";
connectAttr "fit_space_local_DMTX.or" "IK_CTL_space.r";
connectAttr "fit_space_local_DMTX.os" "IK_CTL_space.s";
connectAttr "M_spine_CTL_localMat_DMTX.ot" "M_spine_OS.t";
connectAttr "M_spine_CTL.IK_vis" "IK_spine_OS.v";
connectAttr "makeNurbCircle3.oc" "IK_spine_CTLShape.cr";
connectAttr "fit_spine_01.t" "IK_spine_01_OS.t";
connectAttr "M_spine_CTL.IK_vis" "IK_spine_01_OS.v";
connectAttr "makeNurbCircle4.oc" "IK_spine_01_CTLShape.cr";
connectAttr "makeNurbCircle1.oc" "M_spine_CTLShape.cr";
connectAttr "M_spine_CTL.upVec_vis" "upVec_OS.v";
connectAttr "FK_root_CTL_local_DCMX.ot" "root_hip_CTL_OS.t";
connectAttr "FK_root_CTL_local_DCMX.or" "root_hip_CTL_OS.r";
connectAttr "makeNurbCircle7.oc" "hip_CTLShape.cr";
connectAttr "M_chest_CTL_localMat_DMTX.ot" "M_chest_OS.t";
connectAttr "fit_spine_02.t" "IK_spine_02_OS.t";
connectAttr "M_spine_CTL.IK_vis" "IK_spine_02_OS.v";
connectAttr "makeNurbCircle5.oc" "IK_spine_02_CTLShape.cr";
connectAttr "M_spine_CTL.IK_vis" "IK_chest_OS.v";
connectAttr "makeNurbCircle6.oc" "IK_chest_CTLShape.cr";
connectAttr "twist_spine_poci.p" "twist_spine_OS.t";
connectAttr "M_spine_CTL_rotMat_DMTX.or" "twist_spine_OS.r";
connectAttr "fit_space_local_DMTX.os" "twist_spine_OS.s";
connectAttr "M_spine_CTL.twist_vis" "twist_spine_OS.v";
connectAttr "twist_chest_poci.p" "twist_chest_OS.t";
connectAttr "M_chest_CTL_local_DMTX.or" "twist_chest_OS.r";
connectAttr "fit_space_local_DMTX.os" "twist_chest_OS.s";
connectAttr "M_spine_CTL.twist_vis" "twist_chest_OS.v";
connectAttr "fit_RVS.ox" "FK_space.v";
connectAttr "hip_CTL_local_DCMX.ot" "init_hip_space.t";
connectAttr "hip_CTL_local_DCMX.or" "init_hip_space.r";
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
connectAttr "init_spine_01_space.t" "init_root_space_aimConstraint1.tg[0].tt";
connectAttr "init_spine_01_space.rp" "init_root_space_aimConstraint1.tg[0].trp";
connectAttr "init_spine_01_space.rpt" "init_root_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_spine_01_space.pm" "init_root_space_aimConstraint1.tg[0].tpm";
connectAttr "init_root_space_aimConstraint1.w0" "init_root_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_root_space_aimConstraint1.wum";
connectAttr "spine_01_poci.p" "init_spine_01_space.t";
connectAttr "init_spine_01_space_aimConstraint1.crx" "init_spine_01_space.rx";
connectAttr "init_spine_01_space_aimConstraint1.cry" "init_spine_01_space.ry";
connectAttr "init_spine_01_space_aimConstraint1.crz" "init_spine_01_space.rz";
connectAttr "unitConversion2.o" "twist_spine_01_space.ry";
connectAttr "init_spine_01_space.pim" "init_spine_01_space_aimConstraint1.cpim";
connectAttr "init_spine_01_space.t" "init_spine_01_space_aimConstraint1.ct";
connectAttr "init_spine_01_space.rp" "init_spine_01_space_aimConstraint1.crp";
connectAttr "init_spine_01_space.rpt" "init_spine_01_space_aimConstraint1.crt";
connectAttr "init_spine_01_space.ro" "init_spine_01_space_aimConstraint1.cro";
connectAttr "init_spine_02_space.t" "init_spine_01_space_aimConstraint1.tg[0].tt"
		;
connectAttr "init_spine_02_space.rp" "init_spine_01_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_spine_02_space.rpt" "init_spine_01_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_spine_02_space.pm" "init_spine_01_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_spine_01_space_aimConstraint1.w0" "init_spine_01_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_spine_01_space_aimConstraint1.wum";
connectAttr "spine_02_poci.p" "init_spine_02_space.t";
connectAttr "init_spine_02_space_aimConstraint1.crx" "init_spine_02_space.rx";
connectAttr "init_spine_02_space_aimConstraint1.cry" "init_spine_02_space.ry";
connectAttr "init_spine_02_space_aimConstraint1.crz" "init_spine_02_space.rz";
connectAttr "unitConversion3.o" "twist_spine_02_space.ry";
connectAttr "init_spine_02_space.pim" "init_spine_02_space_aimConstraint1.cpim";
connectAttr "init_spine_02_space.t" "init_spine_02_space_aimConstraint1.ct";
connectAttr "init_spine_02_space.rp" "init_spine_02_space_aimConstraint1.crp";
connectAttr "init_spine_02_space.rpt" "init_spine_02_space_aimConstraint1.crt";
connectAttr "init_spine_02_space.ro" "init_spine_02_space_aimConstraint1.cro";
connectAttr "init_spine_03_space.t" "init_spine_02_space_aimConstraint1.tg[0].tt"
		;
connectAttr "init_spine_03_space.rp" "init_spine_02_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_spine_03_space.rpt" "init_spine_02_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_spine_03_space.pm" "init_spine_02_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_spine_02_space_aimConstraint1.w0" "init_spine_02_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_spine_02_space_aimConstraint1.wum";
connectAttr "spine_03_poci.p" "init_spine_03_space.t";
connectAttr "init_spine_03_space_aimConstraint1.crx" "init_spine_03_space.rx";
connectAttr "init_spine_03_space_aimConstraint1.cry" "init_spine_03_space.ry";
connectAttr "init_spine_03_space_aimConstraint1.crz" "init_spine_03_space.rz";
connectAttr "unitConversion4.o" "twist_spine_03_space.ry";
connectAttr "init_spine_03_space.pim" "init_spine_03_space_aimConstraint1.cpim";
connectAttr "init_spine_03_space.t" "init_spine_03_space_aimConstraint1.ct";
connectAttr "init_spine_03_space.rp" "init_spine_03_space_aimConstraint1.crp";
connectAttr "init_spine_03_space.rpt" "init_spine_03_space_aimConstraint1.crt";
connectAttr "init_spine_03_space.ro" "init_spine_03_space_aimConstraint1.cro";
connectAttr "output_chest_end_space.t" "init_spine_03_space_aimConstraint1.tg[0].tt"
		;
connectAttr "output_chest_end_space.rp" "init_spine_03_space_aimConstraint1.tg[0].trp"
		;
connectAttr "output_chest_end_space.rpt" "init_spine_03_space_aimConstraint1.tg[0].trt"
		;
connectAttr "output_chest_end_space.pm" "init_spine_03_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_spine_03_space_aimConstraint1.w0" "init_spine_03_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_spine_03_space_aimConstraint1.wum";
connectAttr "chest_poci.p" "init_chest_space.t";
connectAttr "init_chest_space_aimConstraint1.crx" "init_chest_space.rx";
connectAttr "init_chest_space_aimConstraint1.cry" "init_chest_space.ry";
connectAttr "init_chest_space_aimConstraint1.crz" "init_chest_space.rz";
connectAttr "unitConversion5.o" "twist_chest_space.ry";
connectAttr "init_chest_space.pim" "init_chest_space_aimConstraint1.cpim";
connectAttr "init_chest_space.t" "init_chest_space_aimConstraint1.ct";
connectAttr "init_chest_space.rp" "init_chest_space_aimConstraint1.crp";
connectAttr "init_chest_space.rpt" "init_chest_space_aimConstraint1.crt";
connectAttr "init_chest_space.ro" "init_chest_space_aimConstraint1.cro";
connectAttr "init_spine_03_space.t" "init_chest_space_aimConstraint1.tg[0].tt";
connectAttr "init_spine_03_space.rp" "init_chest_space_aimConstraint1.tg[0].trp"
		;
connectAttr "init_spine_03_space.rpt" "init_chest_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_spine_03_space.pm" "init_chest_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_chest_space_aimConstraint1.w0" "init_chest_space_aimConstraint1.tg[0].tw"
		;
connectAttr "upVec_CTL.wm" "init_chest_space_aimConstraint1.wum";
connectAttr "chest_poci.p" "output_chest_end_space.t";
connectAttr "init_hip_space_local_DCMX1.ot" "FK_hip_local_space.t";
connectAttr "init_hip_space_local_DCMX1.or" "FK_hip_local_space.r";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "FK_root_local_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "FK_root_local_space.r";
connectAttr "FK_spine_01_scaleSpaceMat_DMTX.ot" "FK_spine_01_local_space.t";
connectAttr "FK_spine_01_scaleSpaceMat_DMTX.or" "FK_spine_01_local_space.r";
connectAttr "FK_spine_02_scaleSpaceMat_DMTX.ot" "FK_spine_02_local_space.t";
connectAttr "FK_spine_02_scaleSpaceMat_DMTX.or" "FK_spine_02_local_space.r";
connectAttr "FK_spine_03_scaleSpaceMat_DMTX.ot" "FK_spine_03_local_space.t";
connectAttr "FK_spine_03_scaleSpaceMat_DMTX.or" "FK_spine_03_local_space.r";
connectAttr "fk_chest_scaleSpaceMat_DMTX.ot" "FK_chest_local_space.t";
connectAttr "fk_chest_scaleSpaceMat_DMTX.or" "FK_chest_local_space.r";
connectAttr "fit_space_local_DMTX.ot" "fk_ctl_space.t";
connectAttr "fit_space_local_DMTX.or" "fk_ctl_space.r";
connectAttr "fit_space_local_DMTX.os" "fk_ctl_space.s";
connectAttr "M_spine_CTL.FK_vis" "fk_ctl_space.v";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "FK_root_CTL_OS.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "FK_root_CTL_OS.r";
connectAttr "FK_spine_01_local_space_local_DCMX.ot" "FK_spine_01_CTL_OS.t";
connectAttr "FK_spine_01_local_space_local_DCMX.or" "FK_spine_01_CTL_OS.r";
connectAttr "FK_spine_02_localMat_DMTX.ot" "FK_spine_02_CTL_OS.t";
connectAttr "FK_spine_02_localMat_DMTX.or" "FK_spine_02_CTL_OS.r";
connectAttr "FK_spine_03_localMat_DMTX.ot" "FK_spine_03_CTL_OS.t";
connectAttr "FK_spine_03_localMat_DMTX.or" "FK_spine_03_CTL_OS.r";
connectAttr "fk_chest_localMat_DMTX.ot" "FK_chest_CTL_OS.t";
connectAttr "fk_chest_localMat_DMTX.or" "FK_chest_CTL_OS.r";
connectAttr "makeNurbCircle2.oc" "FK_root_CTLShape.cr";
connectAttr "fit_space_local_DMTX.ot" "joint_space.t";
connectAttr "fit_space_local_DMTX.or" "joint_space.r";
connectAttr "fit_space_local_DMTX.os" "joint_space.s";
connectAttr "FK_root_scaleSpaceMat_DMTX.ot" "root_JNT_space.t";
connectAttr "FK_root_scaleSpaceMat_DMTX.or" "root_JNT_space.r";
connectAttr "init_hip_space_local_DCMX.ot" "hip_local_space.t";
connectAttr "init_hip_space_local_DCMX.or" "hip_local_space.r";
connectAttr "FK_spine_01_localMat_DMTX.ot" "spine_01_JNT_space.t";
connectAttr "FK_spine_01_localMat_DMTX.or" "spine_01_JNT_space.r";
connectAttr "FK_spine_02_localMat_DMTX.ot" "spine_02_JNT_space.t";
connectAttr "FK_spine_02_localMat_DMTX.or" "spine_02_JNT_space.r";
connectAttr "FK_spine_03_localMat_DMTX.ot" "spine_03_JNT_space.t";
connectAttr "FK_spine_03_localMat_DMTX.or" "spine_03_JNT_space.r";
connectAttr "fk_chest_localMat_DMTX.ot" "chest_JNT_space.t";
connectAttr "fk_chest_localMat_DMTX.or" "chest_JNT_space.r";
connectAttr "fit_space_local_DMTX.ot" "output_space.t";
connectAttr "fit_space_local_DMTX.or" "output_space.r";
connectAttr "fit_space_local_DMTX.os" "output_space.s";
connectAttr "FK_root_CTL.r" "root_JNT.r";
connectAttr "hip_root_JNT_space_local_DCMX.ot" "root_JNT.t";
connectAttr "hip_root_JNT_space_local_DCMX.or" "root_JNT.jo";
connectAttr "FK_spine_01_CTL.r" "spine_01_JNT.r";
connectAttr "root_JNT.s" "spine_01_JNT.is";
connectAttr "spine_01_JNT_space.t" "spine_01_JNT.t";
connectAttr "spine_01_JNT_space.r" "spine_01_JNT.jo";
connectAttr "FK_spine_02_CTL.r" "spine_02_JNT.r";
connectAttr "spine_01_JNT.s" "spine_02_JNT.is";
connectAttr "spine_02_JNT_space.t" "spine_02_JNT.t";
connectAttr "spine_02_JNT_space.r" "spine_02_JNT.jo";
connectAttr "FK_spine_03_CTL.r" "spine_03_JNT.r";
connectAttr "spine_02_JNT.s" "spine_03_JNT.is";
connectAttr "spine_03_JNT_space.t" "spine_03_JNT.t";
connectAttr "spine_03_JNT_space.r" "spine_03_JNT.jo";
connectAttr "FK_chest_CTL.r" "chest_JNT.r";
connectAttr "spine_03_JNT.s" "chest_JNT.is";
connectAttr "chest_JNT_space.t" "chest_JNT.t";
connectAttr "chest_JNT_space.r" "chest_JNT.jo";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "fit_space.wm" "fit_space_local_DMTX.imat";
connectAttr "IK_spine_CTL.wm" "IK_spine_CTL_local_DMTX.imat";
connectAttr "IK_spine_01_CTL.wm" "IK_spine_01_CTL_local_DMTX.imat";
connectAttr "IK_spine_02_CTL.wm" "IK_spine_02_CTL_local_DMTX.imat";
connectAttr "IK_chest_CTL.wm" "IK_chest_CTL_local_DMTX.imat";
connectAttr "spine_param_MULT.ox" "root_param_MULT.i1x";
connectAttr "bezierShape1.ws" "root_poci.ic";
connectAttr "root_param_MULT.ox" "root_poci.pr";
connectAttr "spine_root_twist_MULT.ox" "root_twist_PLS.i1[0]";
connectAttr "chest_root_twist_MULT.ox" "root_twist_PLS.i1[1]";
connectAttr "root_twist_PLS.o1" "unitConversion1.i";
connectAttr "FK_root_scaleSpaceMat_MTMX.o" "FK_root_scaleSpaceMat_DMTX.imat";
connectAttr "twist_root_space.wm" "FK_root_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_root_scaleSpaceMat_MTMX.i[1]";
connectAttr "spine_param_MULT.ox" "spine_01_param_MULT.i1x";
connectAttr "bezierShape1.ws" "spine_01_poci.ic";
connectAttr "spine_01_param_MULT.ox" "spine_01_poci.pr";
connectAttr "spine_spine_01_twist_MULT.ox" "spine_01_twist_PLS.i1[0]";
connectAttr "chest_spine_01_twist_MULT.ox" "spine_01_twist_PLS.i1[1]";
connectAttr "spine_01_twist_PLS.o1" "unitConversion2.i";
connectAttr "FK_spine_01_scaleSpaceMat_MTMX.o" "FK_spine_01_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_spine_01_space.wm" "FK_spine_01_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_spine_01_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_spine_01_localMat_MTMX.o" "FK_spine_01_localMat_DMTX.imat";
connectAttr "init_spine_01_space.wm" "FK_spine_01_localMat_MTMX.i[0]";
connectAttr "hip_root_JNT_space.wim" "FK_spine_01_localMat_MTMX.i[1]";
connectAttr "spine_param_MULT.ox" "spine_02_param_MULT.i1x";
connectAttr "bezierShape1.ws" "spine_02_poci.ic";
connectAttr "spine_02_param_MULT.ox" "spine_02_poci.pr";
connectAttr "spine_spine_02_twist_MULT.ox" "spine_02_twist_PLS.i1[0]";
connectAttr "chest_spine_02_twist_MULT.ox" "spine_02_twist_PLS.i1[1]";
connectAttr "spine_02_twist_PLS.o1" "unitConversion3.i";
connectAttr "FK_spine_02_scaleSpaceMat_MTMX.o" "FK_spine_02_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_spine_02_space.wm" "FK_spine_02_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_spine_02_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_spine_02_localMat_MTMX.o" "FK_spine_02_localMat_DMTX.imat";
connectAttr "FK_spine_02_local_space.wm" "FK_spine_02_localMat_MTMX.i[0]";
connectAttr "FK_spine_01_local_space.wim" "FK_spine_02_localMat_MTMX.i[1]";
connectAttr "spine_param_MULT.ox" "spine_03_param_MULT.i1x";
connectAttr "bezierShape1.ws" "spine_03_poci.ic";
connectAttr "spine_03_param_MULT.ox" "spine_03_poci.pr";
connectAttr "spine_spine_03_twist_MULT.ox" "spine_03_twist_PLS.i1[0]";
connectAttr "chest_spine_03_twist_MULT.ox" "spine_03_twist_PLS.i1[1]";
connectAttr "spine_03_twist_PLS.o1" "unitConversion4.i";
connectAttr "FK_spine_03_scaleSpaceMat_MTMX.o" "FK_spine_03_scaleSpaceMat_DMTX.imat"
		;
connectAttr "twist_spine_03_space.wm" "FK_spine_03_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_spine_03_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_spine_03_localMat_MTMX.o" "FK_spine_03_localMat_DMTX.imat";
connectAttr "FK_spine_03_local_space.wm" "FK_spine_03_localMat_MTMX.i[0]";
connectAttr "FK_spine_02_local_space.wim" "FK_spine_03_localMat_MTMX.i[1]";
connectAttr "spine_param_MULT.ox" "chest_param_MULT.i1x";
connectAttr "bezierShape1.ws" "chest_poci.ic";
connectAttr "chest_param_MULT.ox" "chest_poci.pr";
connectAttr "spine_chest_twist_MULT.ox" "chest_twist_PLS.i1[0]";
connectAttr "chest_chest_twist_MULT.ox" "chest_twist_PLS.i1[1]";
connectAttr "chest_twist_PLS.o1" "unitConversion5.i";
connectAttr "FK_chest_scaleSpaceMat_MTMX.o" "fk_chest_scaleSpaceMat_DMTX.imat";
connectAttr "twist_chest_space.wm" "FK_chest_scaleSpaceMat_MTMX.i[0]";
connectAttr "fit_space.wim" "FK_chest_scaleSpaceMat_MTMX.i[1]";
connectAttr "FK_chest_localMat_MTMX.o" "fk_chest_localMat_DMTX.imat";
connectAttr "FK_chest_local_space.wm" "FK_chest_localMat_MTMX.i[0]";
connectAttr "FK_spine_03_local_space.wim" "FK_chest_localMat_MTMX.i[1]";
connectAttr "bezierShape1.ws" "twist_spine_poci.ic";
connectAttr "twist_spine_CTL.end_uvalue" "twist_spine_poci.pr";
connectAttr "M_spine_CTL_localMat_MTMX.o" "M_spine_CTL_localMat_DMTX.imat";
connectAttr "fit_root.wm" "M_spine_CTL_localMat_MTMX.i[0]";
connectAttr "fit_space_GRP.wim" "M_spine_CTL_localMat_MTMX.i[1]";
connectAttr "M_spine_CTL.wm" "M_spine_CTL_rotMat_DMTX.imat";
connectAttr "root_param_MULT.ox" "spine_root_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_root_twist_RMAP.imn";
connectAttr "spine_root_twist_RMAP.ov" "spine_root_twist_MULT.i2x";
connectAttr "unitConversion6.o" "spine_root_twist_MULT.i1x";
connectAttr "M_spine_CTL.ry" "unitConversion6.i";
connectAttr "spine_01_param_MULT.ox" "spine_spine_01_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_spine_01_twist_RMAP.imn";
connectAttr "spine_spine_01_twist_RMAP.ov" "spine_spine_01_twist_MULT.i2x";
connectAttr "unitConversion7.o" "spine_spine_01_twist_MULT.i1x";
connectAttr "M_spine_CTL.ry" "unitConversion7.i";
connectAttr "spine_02_param_MULT.ox" "spine_spine_02_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_spine_02_twist_RMAP.imn";
connectAttr "spine_spine_02_twist_RMAP.ov" "spine_spine_02_twist_MULT.i2x";
connectAttr "unitConversion8.o" "spine_spine_02_twist_MULT.i1x";
connectAttr "M_spine_CTL.ry" "unitConversion8.i";
connectAttr "spine_03_param_MULT.ox" "spine_spine_03_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_spine_03_twist_RMAP.imn";
connectAttr "spine_spine_03_twist_RMAP.ov" "spine_spine_03_twist_MULT.i2x";
connectAttr "unitConversion9.o" "spine_spine_03_twist_MULT.i1x";
connectAttr "M_spine_CTL.ry" "unitConversion9.i";
connectAttr "chest_param_MULT.ox" "spine_chest_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_chest_twist_RMAP.imn";
connectAttr "spine_chest_twist_RMAP.ov" "spine_chest_twist_MULT.i2x";
connectAttr "unitConversion10.o" "spine_chest_twist_MULT.i1x";
connectAttr "M_spine_CTL.ry" "unitConversion10.i";
connectAttr "bezierShape1.ws" "twist_chest_poci.ic";
connectAttr "twist_chest_CTL.end_uvalue" "twist_chest_poci.pr";
connectAttr "M_chest_CTL_localMat_MTMX.o" "M_chest_CTL_localMat_DMTX.imat";
connectAttr "fit_chest.wm" "M_chest_CTL_localMat_MTMX.i[0]";
connectAttr "fit_space_GRP.wim" "M_chest_CTL_localMat_MTMX.i[1]";
connectAttr "M_chest_CTL.wm" "M_chest_CTL_local_DMTX.imat";
connectAttr "root_param_MULT.ox" "chest_root_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_root_twist_RMAP.imx";
connectAttr "chest_root_twist_RMAP.ov" "chest_root_twist_MULT.i2x";
connectAttr "unitConversion11.o" "chest_root_twist_MULT.i1x";
connectAttr "M_chest_CTL.ry" "unitConversion11.i";
connectAttr "spine_01_param_MULT.ox" "chest_spine_01_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_spine_01_twist_RMAP.imx";
connectAttr "chest_spine_01_twist_RMAP.ov" "chest_spine_01_twist_MULT.i2x";
connectAttr "unitConversion12.o" "chest_spine_01_twist_MULT.i1x";
connectAttr "M_chest_CTL.ry" "unitConversion12.i";
connectAttr "spine_02_param_MULT.ox" "chest_spine_02_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_spine_02_twist_RMAP.imx";
connectAttr "chest_spine_02_twist_RMAP.ov" "chest_spine_02_twist_MULT.i2x";
connectAttr "unitConversion13.o" "chest_spine_02_twist_MULT.i1x";
connectAttr "M_chest_CTL.ry" "unitConversion13.i";
connectAttr "spine_03_param_MULT.ox" "chest_spine_03_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_spine_03_twist_RMAP.imx";
connectAttr "chest_spine_03_twist_RMAP.ov" "chest_spine_03_twist_MULT.i2x";
connectAttr "unitConversion14.o" "chest_spine_03_twist_MULT.i1x";
connectAttr "M_chest_CTL.ry" "unitConversion14.i";
connectAttr "chest_param_MULT.ox" "chest_chest_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_chest_twist_RMAP.imx";
connectAttr "chest_chest_twist_RMAP.ov" "chest_chest_twist_MULT.i2x";
connectAttr "unitConversion15.o" "chest_chest_twist_MULT.i1x";
connectAttr "M_chest_CTL.ry" "unitConversion15.i";
connectAttr "fit_space.fitMode" "fit_RVS.ix";
connectAttr "hip_CTL.wm" "hip_CTL_local_MTMX.i[0]";
connectAttr "on_curve_space.wim" "hip_CTL_local_MTMX.i[1]";
connectAttr "hip_CTL_local_MTMX.o" "hip_CTL_local_DCMX.imat";
connectAttr "init_hip_space.wm" "init_hip_space_local_MTMX.i[0]";
connectAttr "root_JNT_space.wim" "init_hip_space_local_MTMX.i[1]";
connectAttr "init_hip_space_local_MTMX.o" "init_hip_space_local_DCMX.imat";
connectAttr "hip_root_JNT_space_local_MTMX.o" "hip_root_JNT_space_local_DCMX.imat"
		;
connectAttr "FK_spine_01_local_space.wm" "FK_spine_01_local_space_local_MTMX.i[0]"
		;
connectAttr "FK_root_local_space.wim" "FK_spine_01_local_space_local_MTMX.i[1]";
connectAttr "FK_spine_01_local_space_local_MTMX.o" "FK_spine_01_local_space_local_DCMX.imat"
		;
connectAttr "FK_root_CTL_local_MTMX.o" "FK_root_CTL_local_DCMX.imat";
connectAttr "IK_spine_CTL.wm" "FK_root_CTL_local_MTMX.i[0]";
connectAttr "M_spine_OS.wim" "FK_root_CTL_local_MTMX.i[1]";
connectAttr "init_hip_space.wm" "init_hip_space_local_MTMX1.i[0]";
connectAttr "fit_space.wim" "init_hip_space_local_MTMX1.i[1]";
connectAttr "init_hip_space_local_MTMX1.o" "init_hip_space_local_DCMX1.imat";
connectAttr "hip_root_JNT_space.wm" "hip_root_JNT_space_local_MTMX.i[0]";
connectAttr "output_space.wim" "hip_root_JNT_space_local_MTMX.i[1]";
connectAttr "fit_space_local_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "fk_chest_localMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "fk_chest_scaleSpaceMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_root_CTL_local_DCMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_root_scaleSpaceMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_01_local_space_local_DCMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_01_localMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_01_scaleSpaceMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_02_localMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_02_scaleSpaceMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_03_localMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_03_scaleSpaceMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "hip_CTL_local_DCMX.msg" "spine_SET.dnsm" -na;
connectAttr "hip_root_JNT_space_local_DCMX.msg" "spine_SET.dnsm" -na;
connectAttr "IK_chest_CTL_local_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "IK_spine_01_CTL_local_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "IK_spine_02_CTL_local_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "IK_spine_CTL_local_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "init_hip_space_local_DCMX.msg" "spine_SET.dnsm" -na;
connectAttr "init_hip_space_local_DCMX1.msg" "spine_SET.dnsm" -na;
connectAttr "M_chest_CTL_local_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "M_chest_CTL_localMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "M_spine_CTL_localMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "M_spine_CTL_rotMat_DMTX.msg" "spine_SET.dnsm" -na;
connectAttr "makeNurbCircle1.msg" "spine_SET.dnsm" -na;
connectAttr "makeNurbCircle2.msg" "spine_SET.dnsm" -na;
connectAttr "makeNurbCircle3.msg" "spine_SET.dnsm" -na;
connectAttr "makeNurbCircle4.msg" "spine_SET.dnsm" -na;
connectAttr "makeNurbCircle5.msg" "spine_SET.dnsm" -na;
connectAttr "makeNurbCircle6.msg" "spine_SET.dnsm" -na;
connectAttr "makeNurbCircle7.msg" "spine_SET.dnsm" -na;
connectAttr "FK_chest_localMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_chest_scaleSpaceMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_root_CTL_local_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_root_scaleSpaceMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_01_local_space_local_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_01_localMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_01_scaleSpaceMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_02_localMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_02_scaleSpaceMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_03_localMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "FK_spine_03_scaleSpaceMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "hip_CTL_local_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "hip_root_JNT_space_local_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "init_hip_space_local_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "init_hip_space_local_MTMX1.msg" "spine_SET.dnsm" -na;
connectAttr "M_chest_CTL_localMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "M_spine_CTL_localMat_MTMX.msg" "spine_SET.dnsm" -na;
connectAttr "chest_chest_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "chest_param_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "chest_root_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "chest_spine_01_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "chest_spine_02_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "chest_spine_03_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "root_param_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_01_param_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_02_param_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_03_param_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_chest_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_param_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_root_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_spine_01_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_spine_02_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "spine_spine_03_twist_MULT.msg" "spine_SET.dnsm" -na;
connectAttr "chest_twist_PLS.msg" "spine_SET.dnsm" -na;
connectAttr "root_twist_PLS.msg" "spine_SET.dnsm" -na;
connectAttr "spine_01_twist_PLS.msg" "spine_SET.dnsm" -na;
connectAttr "spine_02_twist_PLS.msg" "spine_SET.dnsm" -na;
connectAttr "spine_03_twist_PLS.msg" "spine_SET.dnsm" -na;
connectAttr "chest_poci.msg" "spine_SET.dnsm" -na;
connectAttr "root_poci.msg" "spine_SET.dnsm" -na;
connectAttr "spine_01_poci.msg" "spine_SET.dnsm" -na;
connectAttr "spine_02_poci.msg" "spine_SET.dnsm" -na;
connectAttr "spine_03_poci.msg" "spine_SET.dnsm" -na;
connectAttr "twist_chest_poci.msg" "spine_SET.dnsm" -na;
connectAttr "twist_spine_poci.msg" "spine_SET.dnsm" -na;
connectAttr "poseInterpolatorManager.msg" "spine_SET.dnsm" -na;
connectAttr "chest_chest_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "chest_root_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "chest_spine_01_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "chest_spine_02_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "chest_spine_03_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "spine_chest_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "spine_root_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "spine_spine_01_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "spine_spine_02_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "spine_spine_03_twist_RMAP.msg" "spine_SET.dnsm" -na;
connectAttr "fit_RVS.msg" "spine_SET.dnsm" -na;
connectAttr "spine_GRP.iog" "spine_SET.dsm" -na;
connectAttr "fit_spine_GRP.iog" "spine_SET.dsm" -na;
connectAttr "fit_space.iog" "spine_SET.dsm" -na;
connectAttr "fit_space_GRP.iog" "spine_SET.dsm" -na;
connectAttr "fit_root.iog" "spine_SET.dsm" -na;
connectAttr "fit_spine_01.iog" "spine_SET.dsm" -na;
connectAttr "fit_chest.iog" "spine_SET.dsm" -na;
connectAttr "fit_spine_02.iog" "spine_SET.dsm" -na;
connectAttr "IK_space.iog" "spine_SET.dsm" -na;
connectAttr "spine_crv.iog" "spine_SET.dsm" -na;
connectAttr "IK_CTL_space.iog" "spine_SET.dsm" -na;
connectAttr "M_spine_OS.iog" "spine_SET.dsm" -na;
connectAttr "M_spine_CTL.iog" "spine_SET.dsm" -na;
connectAttr "IK_spine_OS.iog" "spine_SET.dsm" -na;
connectAttr "IK_spine_CTL.iog" "spine_SET.dsm" -na;
connectAttr "IK_spine_01_OS.iog" "spine_SET.dsm" -na;
connectAttr "IK_spine_01_CTL.iog" "spine_SET.dsm" -na;
connectAttr "upVec_OS.iog" "spine_SET.dsm" -na;
connectAttr "upVec_CTL.iog" "spine_SET.dsm" -na;
connectAttr "root_hip_CTL_OS.iog" "spine_SET.dsm" -na;
connectAttr "hip_CTL_OS.iog" "spine_SET.dsm" -na;
connectAttr "hip_CTL.iog" "spine_SET.dsm" -na;
connectAttr "M_chest_OS.iog" "spine_SET.dsm" -na;
connectAttr "M_chest_CTL.iog" "spine_SET.dsm" -na;
connectAttr "IK_spine_02_OS.iog" "spine_SET.dsm" -na;
connectAttr "IK_spine_02_CTL.iog" "spine_SET.dsm" -na;
connectAttr "IK_chest_OS.iog" "spine_SET.dsm" -na;
connectAttr "IK_chest_CTL.iog" "spine_SET.dsm" -na;
connectAttr "twist_spine_OS.iog" "spine_SET.dsm" -na;
connectAttr "twist_spine_CTL.iog" "spine_SET.dsm" -na;
connectAttr "twist_chest_OS.iog" "spine_SET.dsm" -na;
connectAttr "twist_chest_CTL.iog" "spine_SET.dsm" -na;
connectAttr "FK_space.iog" "spine_SET.dsm" -na;
connectAttr "on_curve_space.iog" "spine_SET.dsm" -na;
connectAttr "init_hip_space.iog" "spine_SET.dsm" -na;
connectAttr "init_root_space.iog" "spine_SET.dsm" -na;
connectAttr "twist_root_space.iog" "spine_SET.dsm" -na;
connectAttr "init_root_space_aimConstraint1.iog" "spine_SET.dsm" -na;
connectAttr "init_spine_01_space.iog" "spine_SET.dsm" -na;
connectAttr "twist_spine_01_space.iog" "spine_SET.dsm" -na;
connectAttr "init_spine_01_space_aimConstraint1.iog" "spine_SET.dsm" -na;
connectAttr "init_spine_02_space.iog" "spine_SET.dsm" -na;
connectAttr "twist_spine_02_space.iog" "spine_SET.dsm" -na;
connectAttr "init_spine_02_space_aimConstraint1.iog" "spine_SET.dsm" -na;
connectAttr "init_spine_03_space.iog" "spine_SET.dsm" -na;
connectAttr "twist_spine_03_space.iog" "spine_SET.dsm" -na;
connectAttr "init_spine_03_space_aimConstraint1.iog" "spine_SET.dsm" -na;
connectAttr "init_chest_space.iog" "spine_SET.dsm" -na;
connectAttr "twist_chest_space.iog" "spine_SET.dsm" -na;
connectAttr "init_chest_space_aimConstraint1.iog" "spine_SET.dsm" -na;
connectAttr "output_chest_end_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_scale_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_hip_local_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_root_local_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_01_local_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_02_local_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_03_local_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_chest_local_space.iog" "spine_SET.dsm" -na;
connectAttr "fk_ctl_space.iog" "spine_SET.dsm" -na;
connectAttr "FK_root_CTL_OS.iog" "spine_SET.dsm" -na;
connectAttr "FK_root_CTL.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_01_CTL_OS.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_01_CTL.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_02_CTL_OS.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_02_CTL.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_03_CTL_OS.iog" "spine_SET.dsm" -na;
connectAttr "FK_spine_03_CTL.iog" "spine_SET.dsm" -na;
connectAttr "FK_chest_CTL_OS.iog" "spine_SET.dsm" -na;
connectAttr "FK_chest_CTL.iog" "spine_SET.dsm" -na;
connectAttr "joint_space.iog" "spine_SET.dsm" -na;
connectAttr "root_JNT_space.iog" "spine_SET.dsm" -na;
connectAttr "hip_local_space.iog" "spine_SET.dsm" -na;
connectAttr "hip_root_JNT_space.iog" "spine_SET.dsm" -na;
connectAttr "root_space.iog" "spine_SET.dsm" -na;
connectAttr "spine_01_JNT_space.iog" "spine_SET.dsm" -na;
connectAttr "spine_02_JNT_space.iog" "spine_SET.dsm" -na;
connectAttr "spine_03_JNT_space.iog" "spine_SET.dsm" -na;
connectAttr "chest_JNT_space.iog" "spine_SET.dsm" -na;
connectAttr "output_space.iog" "spine_SET.dsm" -na;
connectAttr "root_JNT.iog" "spine_SET.dsm" -na;
connectAttr "spine_01_JNT.iog" "spine_SET.dsm" -na;
connectAttr "spine_02_JNT.iog" "spine_SET.dsm" -na;
connectAttr "spine_03_JNT.iog" "spine_SET.dsm" -na;
connectAttr "chest_JNT.iog" "spine_SET.dsm" -na;
connectAttr "fit_space_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_spine_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_spine_01_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_spine_02_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_chest_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_spine_01_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "FK_spine_01_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "FK_spine_01_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_spine_01_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_spine_02_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "FK_spine_02_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "FK_spine_02_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_spine_02_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_spine_03_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "FK_spine_03_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "FK_spine_03_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_spine_03_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_chest_scaleSpaceMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_chest_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_chest_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_rotMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_chest_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_chest_CTL_localMat_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_chest_CTL_local_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_root_JNT_space_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_spine_01_local_space_local_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_spine_01_local_space_local_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_root_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_root_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hip_space_local_DCMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_root_JNT_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of spine.ma
