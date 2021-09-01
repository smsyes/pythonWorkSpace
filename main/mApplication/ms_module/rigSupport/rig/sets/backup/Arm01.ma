//Maya ASCII 2018ff09 scene
//Name: Arm01.ma
//Last modified: Wed, Aug 25, 2021 05:52:31 PM
//Codeset: 949
file -rdi 1 -ns "Left" -rfn "LeftRN" -typ "mayaAscii" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitArm.ma";
file -r -ns "Left" -dr 1 -rfn "LeftRN" -typ "mayaAscii" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitArm.ma";
requires maya "2018ff09";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.0.30";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" -nodeType "quatInvert" -nodeType "quatProd"
		 "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "87D2370A-4AE1-4AA0-60F6-4D881D4E9184";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.408317916882353 33.135977694349641 22.659557681905319 ;
	setAttr ".r" -type "double3" -52.538352729720351 -335.79999999975314 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F077168C-4FA2-EBB0-16F5-7089A9120783";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 41.745553196008494;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 7.0000000000000071 -1.6431300764452317e-14 -0.49999999999999822 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "2086337A-49DB-175B-AFE4-3E82291A8950";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AF7FC6A6-4E24-DDD9-565A-889F2F86E178";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B69FEFBA-4422-B61D-61B1-FFBAE6AD4C9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.548045208701922 188.2540424992151 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8B4F4AB1-4E3D-6645-BB56-068C4087D7FD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 178.03999056310025;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "02D8445C-4226-EA94-7293-10B25A8830FE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "73142428-4269-BA75-8EA6-CBBB75FCA0DA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "LeftArmRigGrp";
	rename -uid "A77452BC-477E-B0E5-5FCE-F2834A211460";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "OrgJnt" -ln "OrgJnt" -at "message";
	addAttr -s false -ci true -m -sn "DrvJnt" -ln "DrvJnt" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -s false -ci true -m -sn "FKJnt" -ln "FKJnt" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "Pos" -ln "Pos" -at "message";
	addAttr -s false -ci true -m -sn "AnimCrv" -ln "AnimCrv" -at "message";
	addAttr -s false -ci true -m -sn "Arc" -ln "Arc" -at "message";
	addAttr -s false -ci true -m -sn "ScaleFix" -ln "ScaleFix" -at "message";
	addAttr -s false -ci true -m -sn "ScaleBlend" -ln "ScaleBlend" -at "message";
	setAttr ".t" -type "double3" 0 0 -1.1102230246251565e-15 ;
	setAttr -s 3 ".Grp";
	setAttr -s 3 ".DrvJnt";
	setAttr -s 3 ".IKJnt";
	setAttr -s 3 ".FKJnt";
	setAttr -s 7 ".Ctrl";
	setAttr -s 6 ".Pos";
	setAttr -s 2 ".AnimCrv";
	setAttr -s 3 ".Arc";
	setAttr -s 2 ".ScaleBlend";
createNode transform -n "LeftArmCtrlGrp" -p "LeftArmRigGrp";
	rename -uid "9FFC1800-4845-5105-A8AE-AFA761028195";
createNode transform -n "LeftClavicleCtrlGrp" -p "LeftArmCtrlGrp";
	rename -uid "0C589F48-43E4-0D47-17F7-729C9DBD90FD";
createNode transform -n "LeftClavicleCtrl" -p "LeftClavicleCtrlGrp";
	rename -uid "EE0E8963-4FDC-2A82-D0FF-E990055E933C";
	addAttr -ci true -sn "SubCtrlVis" -ln "SubCtrlVis" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -cb on ".SubCtrlVis";
createNode nurbsCurve -n "LeftClavicleCtrlShape" -p "LeftClavicleCtrl";
	rename -uid "0FB91AF7-40E2-508A-FCF6-4686828C6FDB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8710947257063504 2.582065341523466 -1.9684008293346051
		1.8710947257063499 0.17010876010827675 -2.9674659572118189
		1.8710947257063493 -2.2418478213069135 -1.9684008293346038
		1.8710947257063493 -3.2409129491841275 0.44355575208058501
		1.8710947257063499 -2.2418478213069135 2.8555123334957746
		1.8710947257063499 0.17010876010827616 3.854577461372994
		1.8710947257063504 2.582065341523466 2.8555123334957742
		1.8710947257063504 3.581130469400684 0.44355575208058556
		1.8710947257063504 2.582065341523466 -1.9684008293346051
		1.8710947257063499 0.17010876010827675 -2.9674659572118189
		1.8710947257063493 -2.2418478213069135 -1.9684008293346038
		;
createNode transform -n "LeftClavicleSubCtrlGrp" -p "LeftClavicleCtrl";
	rename -uid "1B824966-479A-4A5F-DB38-BBBC9B9A85BD";
	setAttr ".t" -type "double3" 7.7962285006136121 0.37304552655331236 0.97270998292319899 ;
createNode transform -n "LeftClavicleSubCtrl" -p "LeftClavicleSubCtrlGrp";
	rename -uid "2F49E641-48A6-F1B3-15DD-5B9EAE2BD491";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode nurbsCurve -n "LeftClavicleSubCtrlShape" -p "LeftClavicleSubCtrl";
	rename -uid "DCE4A7BB-4924-3145-79FF-5087367B1665";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0706469902160843e-15 12.8217653861825 -1.0065678569928903e-15
		-1.7763568394002503e-15 7.6978898240736014e-16 -12.821765386182499
		-4.6233606690165848e-15 -12.821765386182497 1.0065678569928903e-15
		-1.7763568394002499e-15 2.7829246963931408e-15 12.821765386182499
		1.0706469902160843e-15 12.8217653861825 -1.0065678569928903e-15
		;
createNode transform -n "LeftClavicleFWGrp" -p "LeftClavicleSubCtrl";
	rename -uid "CAE0BC74-43DB-C36C-9B9F-1AAFC220B55E";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode transform -n "LeftShoulderToLeftClavicleFW" -p "LeftClavicleFWGrp";
	rename -uid "F7CCCC63-409C-A85F-5796-BF9B0500DE23";
	setAttr ".t" -type "double3" 7.7962285006136227 0.37304552655325551 0.97270998292320165 ;
	setAttr ".r" -type "double3" 3.1063039304001194e-18 -0.78763063429540026 2.7394841251856619 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftClavicleCtrlConsGrp" -p "LeftArmCtrlGrp";
	rename -uid "5EEB6F50-4F33-3173-FBFB-37B671EC1DAB";
createNode transform -n "LeftArmIKCtrlGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "D58BFE75-4B14-54A8-7212-64A2A0D493A6";
createNode transform -n "LeftArmIKConstCtrl" -p "LeftArmIKCtrlGrp";
	rename -uid "A9E36C8B-4945-2939-579D-88B34B1504BD";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode nurbsCurve -n "LeftArmIKConstCtrlShape" -p "LeftArmIKConstCtrl";
	rename -uid "69FA8DDB-459D-BBD2-6350-529150A4E70E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -15.248751103760236
		-2.3941942977559285e-15 -10.782492547226166 -10.782492547226166
		-3.3859029144345768e-15 -15.248751103760236 -1.1378399449047109e-15
		-2.3941942977559285e-15 -10.782492547226166 10.782492547226166
		0 0 15.248751103760236
		2.3941942977559285e-15 10.782492547226166 10.782492547226166
		3.3859029144345768e-15 15.248751103760236 -1.1378399449047109e-15
		2.3941942977559285e-15 10.782492547226166 -10.782492547226166
		0 0 -15.248751103760236
		;
createNode transform -n "LeftArmIKCtrl" -p "LeftArmIKConstCtrl";
	rename -uid "CF7963E5-4F06-E93E-0678-DCB997B4CEA9";
	addAttr -ci true -sn "Twist" -ln "Twist" -at "double";
	addAttr -ci true -sn "Stretch" -ln "Stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Squash" -ln "Squash" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "UpVolume" -ln "UpVolume" -at "double";
	addAttr -ci true -sn "DnVolume" -ln "DnVolume" -at "double";
	addAttr -ci true -sn "UpSlide" -ln "UpSlide" -at "double";
	addAttr -ci true -sn "DnSlide" -ln "DnSlide" -at "double";
	addAttr -ci true -sn "PVCtrlVis" -ln "PVCtrlVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "PVStretch" -ln "PVStretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 4 -en "Head:Chest:Hip:Root:Fly" 
		-at "enum";
	addAttr -ci true -sn "ConstCtrlVis" -ln "ConstCtrlVis" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -4.2188474935755917e-15 -2.9490299091605721e-17 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -k on ".Twist";
	setAttr -k on ".Stretch";
	setAttr -k on ".Squash";
	setAttr -k on ".UpSlide";
	setAttr -k on ".DnSlide";
	setAttr -cb on ".PVCtrlVis" yes;
	setAttr -k on ".PVStretch";
	setAttr -k on ".Follow" 1;
	setAttr -cb on ".ConstCtrlVis";
createNode nurbsCurve -n "LeftArmIKCtrlShape" -p "LeftArmIKCtrl";
	rename -uid "006476A6-4150-7ED7-2D7E-7C949EA07C28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.7559340587494913e-16 1.7137586236371065 -1.7137586236371081
		-1.4840396590643563e-16 -1.3920526852214614e-15 -2.4236206881814448
		-4.8546830716978498e-16 -1.7137586236371103 -1.7137586236371081
		-5.3815189819538171e-16 -2.4236206881814479 5.42535700685736e-16
		-2.7559340587494913e-16 -1.7137586236371103 1.7137586236371085
		1.4840396590643567e-16 -1.7832323930531188e-15 2.4236206881814462
		4.8546830716978498e-16 1.7137586236371065 1.7137586236371085
		5.3815189819538171e-16 2.4236206881814444 9.9868492266098086e-16
		2.7559340587494913e-16 1.7137586236371065 -1.7137586236371081
		-1.4840396590643563e-16 -1.3920526852214614e-15 -2.4236206881814448
		-4.8546830716978498e-16 -1.7137586236371103 -1.7137586236371081
		;
createNode transform -n "LeftArmIKCtrlPosGrp" -p "LeftArmIKCtrl";
	rename -uid "78FCB557-46C2-B435-3282-06B5C9D686E1";
	setAttr ".t" -type "double3" 0 0 -1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 179.99999999998309 -1.0492451109480595e-11 -2.9419743468173e-13 ;
createNode transform -n "LeftArmIKCtrlPos" -p "LeftArmIKCtrlPosGrp";
	rename -uid "77448672-4D44-209D-256A-AAA933DC0351";
createNode parentConstraint -n "LeftArmIKCtrlGrp_parentConstraint1" -p "LeftArmIKCtrlGrp";
	rename -uid "81F466B3-4548-317C-F532-9C8502FB0DEB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "WristJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.6441431774392186e-06 -4.8517638049361267e-06 
		9.0595418722472232e-08 ;
	setAttr ".tg[0].tor" -type "double3" 179.99975411133036 -0.99583849738931107 -3.7277415049601162e-06 ;
	setAttr ".lr" -type "double3" 179.99975336825273 10.314093809192089 -3.7883950451454471e-06 ;
	setAttr ".rst" -type "double3" 72.84709806898023 3.4856961997565463 0.82266885546901014 ;
	setAttr ".rsrr" -type "double3" -179.99999999998309 0.041200385844096472 2.7394841251851862 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "LeftArmIKCtrlGrp_scaleConstraint1" -p "LeftArmIKCtrlGrp";
	rename -uid "AE9683ED-4ED5-1717-0875-E39AB9F066EE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "WristJntW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "LeftArmPoleVectorCtrlGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "7E7AEEEE-4763-1D12-DF3D-D28F0A5EC712";
createNode transform -n "LeftArmPVOff" -p "LeftArmPoleVectorCtrlGrp";
	rename -uid "84ECDA00-4BA1-2342-EDE0-3EB764FC8F30";
createNode transform -n "LeftArmPoleVectorCtrl" -p "LeftArmPVOff";
	rename -uid "68569631-4F10-4DC3-6693-DCB664F24A80";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 4 -en "Auto:Chest:Root:Fly:World" 
		-at "enum";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "LeftArmPoleVectorCtrlShape" -p "LeftArmPoleVectorCtrl";
	rename -uid "0821EF75-4E92-27F4-980A-26977100706E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-7.1054273576010013e-16 0 -3.5527136788005006e-16
		-1.5467565006588304e-15 -3.765972000000001 -3.765972000000001
		-1.1286496182094652e-15 -1.8829860000000005 -5.6489579999999986
		-7.1054273576010013e-16 0 -3.765972000000001
		-2.9243585331073516e-16 1.8829860000000005 -5.6489579999999986
		1.2567102913862963e-16 3.765972000000001 -3.765972000000001
		-7.1054273576010013e-16 0 -3.5527136788005006e-16
		;
createNode parentConstraint -n "LeftArmPoleVectorCtrlGrp_parentConstraint1" -p "LeftArmPoleVectorCtrlGrp";
	rename -uid "B3D25A39-4692-7B26-CCE0-438E1838A126";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ElbowJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.00031749043923667841 -2.8518212786821096e-06 
		0.0099949698789330021 ;
	setAttr ".tg[0].tor" -type "double3" 179.99975487751911 -1.8246695175219458 -1.6907689594540774e-07 ;
	setAttr ".lr" -type "double3" 179.99975487751911 9.4852627890594796 -6.1505163519753563e-21 ;
	setAttr ".rst" -type "double3" 40.062475478984247 1.9169688597182528 1.426802350155792 ;
	setAttr ".rsrr" -type "double3" -179.99999914316598 -0.78763063429608904 2.739484294192772 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "LeftArmPoleVectorCtrlGrp_scaleConstraint1" -p "LeftArmPoleVectorCtrlGrp";
	rename -uid "26A6A826-4956-F989-C974-AD910C22C854";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ElbowJntW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "LeftShoulderFKCtrlOffGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "ACB8FC7E-4D2B-DF58-1AA6-B09E14DDD57B";
	setAttr ".t" -type "double3" -5.7962285006136138 -0.37304552655331236 -0.97270998292320088 ;
	setAttr ".r" -type "double3" 0 -11.309932306581425 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "LeftShoulderFKCtrlGrp" -p "LeftShoulderFKCtrlOffGrp";
	rename -uid "813F5834-422C-604A-5538-F29FB21A0802";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftShoulderFKCtrl" -p "LeftShoulderFKCtrlGrp";
	rename -uid "41D22F13-4C17-1689-5922-C6BD2F98C0C9";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 2 -en "Clavicle:Root:World" 
		-at "enum";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "LeftShoulderFKCtrlShape" -p "LeftShoulderFKCtrl";
	rename -uid "4036F467-459B-D339-3DF9-9FB6BA04AF47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -3.1361609664000007
		-6.9636762276559255e-16 -3.1361609664000007 0
		0 0 3.1361609664000007
		6.9636762276559255e-16 3.1361609664000007 0
		0 0 -3.1361609664000007
		;
createNode transform -n "LeftElbowFKCtrlOffGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "1529EF55-42C1-C3B7-5DE6-61A97A0A6C95";
	setAttr ".t" -type "double3" -0.79622850061361383 -0.37304552655331247 0.027290017076799122 ;
	setAttr ".r" -type "double3" 0 11.309932306581423 0 ;
createNode transform -n "LeftElbowFKCtrlGrp" -p "LeftElbowFKCtrlOffGrp";
	rename -uid "A3ABEC20-4DAA-F6B5-CB38-DD8D456C6855";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftElbowFKCtrl" -p "LeftElbowFKCtrlGrp";
	rename -uid "69457266-4EFF-EBDA-1120-8A9F5DE722E6";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftElbowFKCtrlShape" -p "LeftElbowFKCtrl";
	rename -uid "0F3711C3-4136-2078-5584-54BF4EED8B95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -3.1361609664000007
		-6.9636762276559255e-16 -3.1361609664000007 0
		0 0 3.1361609664000007
		6.9636762276559255e-16 3.1361609664000007 0
		0 0 -3.1361609664000007
		;
createNode transform -n "LeftWristFKCtrlOffGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "1E57F74C-4731-EFE7-4A26-198BEBD0DFCE";
	setAttr ".t" -type "double3" 4.2037714993863862 -0.37304552655331236 -0.97270998292320066 ;
	setAttr ".r" -type "double3" 0 11.309932306581423 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftWristFKCtrlGrp" -p "LeftWristFKCtrlOffGrp";
	rename -uid "B2FCCBDE-409E-82CE-E489-DE8BD3D081A5";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftWristFKCtrl" -p "LeftWristFKCtrlGrp";
	rename -uid "21CB8338-47DC-D38E-2ECF-4796DA3F2722";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftWristFKCtrlShape" -p "LeftWristFKCtrl";
	rename -uid "0A71FC8B-4971-54F1-61E3-49911C950458";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 -4.9780278563066719e-30 -3.1361609664000007
		-6.9636762276559255e-16 -3.1361609664000007 3.5029756872972932e-16
		0 -4.9780278563066719e-30 3.1361609664000007
		6.9636762276559255e-16 3.1361609664000007 3.5029756872972932e-16
		0 -4.9780278563066719e-30 -3.1361609664000007
		;
createNode transform -n "LeftWristFKCtrlPosGrp" -p "LeftWristFKCtrl";
	rename -uid "B9B0B9D4-4ED2-6F52-163F-9D9B02E2E2BE";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 0 -5.9635400277440939e-16 0 ;
createNode transform -n "LeftWristFKCtrlPos" -p "LeftWristFKCtrlPosGrp";
	rename -uid "32F5B8D4-4056-38DB-EBC8-02AA814E0A7D";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftArmIKFKCtrlGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "E9C3BE41-4CD9-E10E-0CE0-B99F13CA2DC6";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "LeftArmIKFKCtrl" -p "LeftArmIKFKCtrlGrp";
	rename -uid "E67F6A83-45B8-193B-B4F9-7F85C31AECD0";
	addAttr -ci true -sn "IKFK" -ln "IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Arc" -ln "Arc" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "UpTwistFix" -ln "UpTwistFix" -at "double";
	addAttr -ci true -sn "DnTwistFix" -ln "DnTwistFix" -at "double";
	addAttr -ci true -sn "AutoHideIKFK" -ln "AutoHideIKFK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ArcCtrlVis" -ln "ArcCtrlVis" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".IKFK";
	setAttr -k on ".Arc";
	setAttr -k on ".UpTwistFix";
	setAttr -k on ".DnTwistFix";
	setAttr -cb on ".AutoHideIKFK" yes;
	setAttr -cb on ".ArcCtrlVis" yes;
createNode nurbsCurve -n "LeftArmIKFKCtrlShape" -p "LeftArmIKFKCtrl";
	rename -uid "CE03860C-49A2-7DC5-5064-168303DF2608";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-0.47223095024037137 3.8851495484448511 -4.5246410790549118e-16
		-0.47223095024037137 4.2990478212183136 -5.4436798636262762e-16
		-1.7246461990287807 3.1260014346420673 -2.8389936489656964e-16
		0.4722309502403686 3.1260014346420673 -2.8389936489656964e-16
		0.4722309502403686 2.7121031618686033 -1.9199548643943335e-16
		1.7246461990287785 3.8851495484448511 -4.5246410790549118e-16
		-0.47223095024037137 3.8851495484448511 -4.5246410790549118e-16
		;
createNode transform -n "LeftArmIKFKWristScale" -p "LeftArmIKFKCtrl";
	rename -uid "00D9288E-4AC0-1295-8376-A1AD5D929F29";
	addAttr -ci true -sn "FKScale" -ln "FKScale" -at "double3" -nc 3;
	addAttr -ci true -sn "FKScaleX" -ln "FKScaleX" -at "double" -p "FKScale";
	addAttr -ci true -sn "FKScaleY" -ln "FKScaleY" -at "double" -p "FKScale";
	addAttr -ci true -sn "FKScaleZ" -ln "FKScaleZ" -at "double" -p "FKScale";
	addAttr -ci true -sn "IKScale" -ln "IKScale" -at "double3" -nc 3;
	addAttr -ci true -sn "IKScaleX" -ln "IKScaleX" -at "double" -p "IKScale";
	addAttr -ci true -sn "IKScaleY" -ln "IKScaleY" -at "double" -p "IKScale";
	addAttr -ci true -sn "IKScaleZ" -ln "IKScaleZ" -at "double" -p "IKScale";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.2204460492503131e-16 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftArmUpArcCtrlGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "BD295739-45C1-1A61-4BA2-82BE7BB3339D";
createNode transform -n "LeftArmUpArcCtrl" -p "LeftArmUpArcCtrlGrp";
	rename -uid "A5DF5BBA-4EF2-9C69-0CE3-2FA360F98454";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftArmUpArcCtrlShape" -p "LeftArmUpArcCtrl";
	rename -uid "3F8241B3-4A61-6782-B786-F2B573B98DE8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 -1.6940658945086005e-22 -1.9999999999999998
		-3.1401841127376425e-16 -1.4142131999999998 -1.4142131999999998
		-4.4408920985006257e-16 -1.9999999999999998 -8.8817841970012516e-17
		-3.1401841127376425e-16 -1.4142131999999998 1.4142131999999998
		0 -1.6940658945086005e-22 1.9999999999999998
		3.1401841127376425e-16 1.4142131999999998 1.4142131999999998
		4.4408920985006257e-16 1.9999999999999998 -8.8817841970012516e-17
		3.1401841127376425e-16 1.4142131999999998 -1.4142131999999998
		0 -1.6940658945086005e-22 -1.9999999999999998
		;
createNode tangentConstraint -n "LeftArmUpArcCtrlGrp_tangentConstraint1" -p "LeftArmUpArcCtrlGrp";
	rename -uid "43A02325-4FB8-F081-03E5-EFB1C0EC772C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArmUpIKCrvW0" -dv 1 -min 0 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 179.99999999996413 0.78763063429634028 -2.7394841251864879 ;
	setAttr -k on ".w0";
createNode transform -n "LeftArm1CsHandleGrp" -p "LeftArmUpArcCtrlGrp";
	rename -uid "2EF53FB5-4C56-B9E6-CD62-259E0E7E6DD4";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "LeftArm1CsHandleZeroMtx" -p "LeftArm1CsHandleGrp";
	rename -uid "AE1BB308-4A13-67EA-4CD0-6098E96E516B";
createNode transform -n "LeftArm1CsHandle" -p "LeftArm1CsHandleGrp";
	rename -uid "14031714-4F98-5D80-8FA7-FEA3B7E64CEE";
createNode clusterHandle -n "LeftArm1CsHandleShape" -p "LeftArm1CsHandle";
	rename -uid "F7B29EF1-4E0A-3083-A001-41A80A466151";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftArmMidArcCtrlGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "F74F8577-488A-D5FA-1357-ED85A9075C58";
createNode transform -n "LeftArmMidArcCtrlPBGrp" -p "LeftArmMidArcCtrlGrp";
	rename -uid "D6F96F16-4ABC-E3A8-FD95-69A724754F75";
	addAttr -ci true -k true -sn "pbw" -ln "pbw" -min 0 -max 1 -at "double";
	setAttr -k on ".pbw" 0.5;
createNode transform -n "LeftArmMidArcCtrl" -p "LeftArmMidArcCtrlPBGrp";
	rename -uid "E75A4CF5-4415-9CC8-6DEA-5099EBAFAF29";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftArmMidArcCtrlShape" -p "LeftArmMidArcCtrl";
	rename -uid "842CB732-415A-0EA6-EA92-B4BAB11AEC95";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		7.1054273576010013e-16 0 -1.9999999999999998
		3.9652432448633583e-16 -1.4142131999999998 -1.4142131999999998
		2.6645352591003761e-16 -1.9999999999999998 0
		3.9652432448633583e-16 -1.4142131999999998 1.4142131999999998
		7.1054273576010013e-16 0 1.9999999999999998
		1.0245611470338645e-15 1.4142131999999998 1.4142131999999998
		1.154631945610163e-15 1.9999999999999998 0
		1.0245611470338645e-15 1.4142131999999998 -1.4142131999999998
		7.1054273576010013e-16 0 -1.9999999999999998
		;
createNode orientConstraint -n "LeftArmMidArcCtrlPBGrp_orientConstraint1" -p "LeftArmMidArcCtrlPBGrp";
	rename -uid "ED99C389-4D62-BC91-4D67-9EB128BDE982";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArm1DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 9.0744056318057672e-15 -22.620128873286113 -1.8142749256894539e-15 ;
	setAttr ".rsrr" -type "double3" -1.0210471866899002e-14 -1.824669314338242 9.5783705831193581e-16 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "LeftArmMidArcCtrlPBGrp_pointConstraint1" -p "LeftArmMidArcCtrlPBGrp";
	rename -uid "7B8C12B7-45C3-307B-8877-6881D20B6F2B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArmArcPointPosW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 0.001883035498224217 -2.8421709430404007e-14 -0.11961395871957969 ;
	setAttr -k on ".w0";
createNode transform -n "LeftArm2UpCsHandleGrp" -p "LeftArmMidArcCtrlPBGrp";
	rename -uid "9672EA89-4F57-A7FC-BBB6-B2B9A27C3710";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftArm2UpCsHandleZeroMtx" -p "LeftArm2UpCsHandleGrp";
	rename -uid "3CA29764-4A8F-016E-2048-6A863BACC4C3";
createNode transform -n "LeftArm2UpCsHandle" -p "LeftArm2UpCsHandleGrp";
	rename -uid "E1FF2C88-4C19-99E0-F560-91AE2F62B987";
createNode clusterHandle -n "LeftArm2UpCsHandleShape" -p "LeftArm2UpCsHandle";
	rename -uid "032FBDC3-422D-CBE7-5112-B5BF2F098637";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftArm2DnCsHandleGrp" -p "LeftArmMidArcCtrlPBGrp";
	rename -uid "818277D9-4721-1287-06AA-C2A4A1A70A4E";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftArm2DnCsHandleZeroMtx" -p "LeftArm2DnCsHandleGrp";
	rename -uid "8989CA16-4388-A57F-4ADC-269BF1F555B5";
createNode transform -n "LeftArm2DnCsHandle" -p "LeftArm2DnCsHandleGrp";
	rename -uid "9483154E-4E0F-9873-60C0-C794535A0129";
createNode clusterHandle -n "LeftArm2DnCsHandleShape" -p "LeftArm2DnCsHandle";
	rename -uid "9854153C-429C-0A6F-C35F-B2BA1ECDC64C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "LeftArmMidArcCtrlGrp_parentConstraint1" -p "LeftArmMidArcCtrlGrp";
	rename -uid "7410D905-4382-7EC7-0666-65B97E46C862";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArm2DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 2.4598486508966601e-05 11.310059832859263 -2.2974347964056244e-05 ;
	setAttr ".rst" -type "double3" 51.590176551017358 153.091720694933 -1.2348856685805438 ;
	setAttr ".rsrr" -type "double3" 179.99999999998309 -1.0370386800436493 -2.7394841251853523 ;
	setAttr -k on ".w0";
createNode transform -n "LeftArmDnArcCtrlGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "21571DA7-4470-78B6-2F89-71B573D859DB";
createNode transform -n "LeftArmDnArcCtrl" -p "LeftArmDnArcCtrlGrp";
	rename -uid "ACAA4586-4864-BB46-340D-43AD71FEF923";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftArmDnArcCtrlShape" -p "LeftArmDnArcCtrl";
	rename -uid "9822DA6D-401B-3DCB-F12D-9EA838BB6938";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 3.3881317890172011e-22 -1.9999999999999996
		-3.1401841127376425e-16 -1.4142131999999998 -1.4142131999999996
		-4.4408920985006257e-16 -1.9999999999999998 3.5527136788005006e-16
		-3.1401841127376425e-16 -1.4142131999999998 1.4142132000000001
		0 3.3881317890172011e-22 1.9999999999999998
		3.1401841127376425e-16 1.4142131999999998 1.4142132000000001
		4.4408920985006257e-16 1.9999999999999998 3.5527136788005006e-16
		3.1401841127376425e-16 1.4142131999999998 -1.4142131999999996
		0 3.3881317890172011e-22 -1.9999999999999996
		;
createNode tangentConstraint -n "LeftArmDnArcCtrlGrp_tangentConstraint1" -p "LeftArmDnArcCtrlGrp";
	rename -uid "A4E56488-4848-EA03-7494-1DB3045E7964";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArmDnIKCrvW0" -dv 1 -min 0 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -179.99999999999693 -1.0370386800441196 -2.739484125185434 ;
	setAttr -k on ".w0";
createNode transform -n "LeftArm3CsHandleGrp" -p "LeftArmDnArcCtrlGrp";
	rename -uid "31168DC5-4B62-602D-F3E6-60B6CC61A011";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftArm3CsHandleZeroMtx" -p "LeftArm3CsHandleGrp";
	rename -uid "1C87C0CF-4294-13A8-D49B-AD8ED356555B";
createNode transform -n "LeftArm3CsHandle" -p "LeftArm3CsHandleGrp";
	rename -uid "689C358C-430B-6BC1-C73B-B480E2196C1E";
createNode clusterHandle -n "LeftArm3CsHandleShape" -p "LeftArm3CsHandle";
	rename -uid "5CCEE849-4DF6-E9D2-31DA-46A14878AA3D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftArmSysGrp" -p "LeftArmRigGrp";
	rename -uid "2F6A8520-4964-983C-DAAF-EDA5D056DD2D";
	setAttr ".v" no;
createNode transform -n "LeftClavicleSysConsGrp" -p "LeftArmSysGrp";
	rename -uid "CE99B083-44AA-0B77-5C25-E38D19051E9B";
createNode transform -n "LeftArmJntGrp" -p "LeftClavicleSysConsGrp";
	rename -uid "72327E47-404A-8E90-5B0E-40815B4F98CC";
	setAttr ".t" -type "double3" -11.527563956966947 155.00869616131905 0.18191763638761141 ;
	setAttr ".r" -type "double3" -179.99999999998306 0 0 ;
createNode joint -n "LeftArm1DrvJnt" -p "LeftArmJntGrp";
	rename -uid "57B1C735-46CD-4405-9073-D8991A274B04";
	addAttr -ci true -sn "fksy" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "fksz" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 179.99999999998309 0.78763063429459357 -2.7394841251858919 ;
	setAttr -k on ".fksy";
	setAttr -k on ".fksz";
	setAttr -k on ".IKSquash";
createNode joint -n "LeftArm2DrvJnt" -p "LeftArm1DrvJnt";
	rename -uid "45EC3C70-4587-4294-5745-099AB20AC8A2";
	addAttr -ci true -sn "fksy" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "fksz" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 1.8246693143382424 0 ;
	setAttr -k on ".fksy";
	setAttr -k on ".fksz";
	setAttr -k on ".IKSquash";
createNode joint -n "LeftArm3DrvJnt" -p "LeftArm2DrvJnt";
	rename -uid "EE48666D-4B83-63EF-432C-659E0004F52A";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 -0.99583829418825331 0 ;
createNode orientConstraint -n "LeftArm3DrvJntORCons" -p "LeftArm3DrvJnt";
	rename -uid "FC858DEE-492E-55D7-9F7B-4CB9E1EC1276";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArmIKCtrlPosW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftWristFKCtrlPosW1" -dv 1 -min 0 
		-at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.00027466171159402615 -0.00012772947016841417 1.930349876245995e-05 ;
	setAttr ".rsrr" -type "double3" 0 -5.245927377738888e-12 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "LeftArm3AssiAPos" -p "LeftArm3DrvJnt";
	rename -uid "3753B123-4AE3-C857-2C0E-E8A3FA551784";
	setAttr ".t" -type "double3" 0.99984896018260372 0 -0.017379781985127463 ;
	setAttr ".r" -type "double3" 0 0.99583829418825331 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftArm2AssiAPos" -p "LeftArm2DrvJnt";
	rename -uid "D5F244EA-4132-1886-FFEC-2B9CB57B7299";
	setAttr ".t" -type "double3" 0.99949294348030548 0 0.031841104456996394 ;
	setAttr ".r" -type "double3" 0 -1.8246693143382431 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftArm3TwistFixGrp" -p "LeftArm2DrvJnt";
	rename -uid "B7BEE5FC-44CF-6FB9-0706-6385C17FD497";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftArm3AimGrp" -p "LeftArm3TwistFixGrp";
	rename -uid "60CF1F09-4AA0-5959-70C3-27A5E02B0AE8";
createNode transform -n "LeftArm3TwistFixPos" -p "LeftArm3AimGrp";
	rename -uid "96E7F0D3-47A6-6453-04B2-9AB1199AE762";
createNode orientConstraint -n "LeftArm3TwistFixPosORCons" -p "LeftArm3TwistFixPos";
	rename -uid "20F628E0-4D04-0FD1-841D-DD96B48EC05D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArm3AimGrpW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftArm3TwistFixSubPosW1" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1";
createNode aimConstraint -n "LeftArm3AimGrpAMCons" -p "LeftArm3AimGrp";
	rename -uid "C909091E-4CC4-CCC9-36F2-BE840C492220";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftArm3TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "LeftArm3TwistFixSubPos" -p "LeftArm3AimGrp";
	rename -uid "8CE84926-4DA9-2A11-A23E-40B22EF4B090";
createNode aimConstraint -n "LeftArm3TwistFixSubPosAMCons" -p "LeftArm3TwistFixSubPos";
	rename -uid "6EFE431D-484F-FF1B-1D59-FEA69754E93B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftArm3TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "LeftArm3AssiBPos" -p "LeftArm3TwistFixGrp";
	rename -uid "31525202-4341-11E0-47C9-53933D96756F";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode transform -n "LeftArm3TwsitFixTgPos" -p "LeftArm3TwistFixGrp";
	rename -uid "7890C535-4B89-5970-7417-FEB4FE868041";
createNode transform -n "LeftArm2TwistFixGrp" -p "LeftArm1DrvJnt";
	rename -uid "CCFB715C-4663-0696-71F4-A0BE2088F6D7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "LeftArm2AimGrp" -p "LeftArm2TwistFixGrp";
	rename -uid "8D9BCC3F-4604-2DB0-E1BC-0D863BEC9ECC";
createNode transform -n "LeftArm2TwistFixPos" -p "LeftArm2AimGrp";
	rename -uid "86BB31C3-471E-B3C2-8646-F7A337F89C8D";
createNode aimConstraint -n "LeftArm2AimGrpAMCons" -p "LeftArm2AimGrp";
	rename -uid "90D4C06A-4AC4-9533-C854-73AD2C3F6076";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftArm2TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "LeftArm2AssiBPos" -p "LeftArm2TwistFixGrp";
	rename -uid "F156F6C2-4877-C7C2-9DB2-91ADD1065283";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode transform -n "LeftArm2TwsitFixTgPos" -p "LeftArm2TwistFixGrp";
	rename -uid "2B4DEE7E-4ACD-08E1-2502-EEBFB9631013";
createNode joint -n "LeftArm1IKJnt" -p "LeftArmJntGrp";
	rename -uid "99927DB9-41D6-A64C-FF88-F2BF01379358";
	setAttr ".r" -type "double3" -0.03826329649073356 -10.523336140866022 -2.7322655505209932 ;
	setAttr ".jo" -type "double3" 179.99999999998309 0.78763063429459335 -2.7394841251858919 ;
createNode joint -n "LeftArm2IKJnt" -p "LeftArm1IKJnt";
	rename -uid "E4182A61-4922-E635-B9B1-B6A1B76287D1";
	setAttr ".t" -type "double3" 5.0990195135927845 2.2737367544323206e-13 -1.0547118733938987e-14 ;
	setAttr ".r" -type "double3" -4.636518903138538e-13 20.795459558947865 -1.4568809591835768e-11 ;
	setAttr ".jo" -type "double3" 0 1.8246693143382415 0 ;
createNode joint -n "LeftArm3IKJnt" -p "LeftArm2IKJnt";
	rename -uid "57A0249F-4C3A-57A4-EE87-81A0A02C8D80";
	setAttr ".t" -type "double3" 5.0990195135927845 1.1368683772161603e-13 8.8817841970012523e-16 ;
	setAttr ".jo" -type "double3" 0 -0.99583829418825254 0 ;
createNode ikEffector -n "effector6" -p "LeftArm2IKJnt";
	rename -uid "1F7FAC0C-4D1A-09FF-D2E8-868B3695FEBA";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "LeftArm1FKJnt" -p "LeftArmJntGrp";
	rename -uid "2FF6BA1F-4F35-71D9-9C94-4590D98FE287";
	setAttr ".v" no;
	setAttr ".jo" -type "double3" 179.99999999998309 0.7876306342945939 -2.7394841251858919 ;
createNode joint -n "LeftArm2FKJnt" -p "LeftArm1FKJnt";
	rename -uid "10DAC1F4-4DE0-5BC9-AA80-82B10CAF8965";
	setAttr ".jo" -type "double3" 0 1.8246693143382415 0 ;
createNode joint -n "LeftArm3FKJnt" -p "LeftArm2FKJnt";
	rename -uid "5FBAC4C2-45D7-F36A-A1B3-0690CC679F90";
	setAttr ".jo" -type "double3" 0 -0.99583829418825254 0 ;
createNode joint -n "LeftArmUp1ArcJnt" -p "LeftArmJntGrp";
	rename -uid "5095473B-4FFA-985C-1A33-3FBA7585C55B";
	setAttr ".t" -type "double3" 5.7313356399536133 155.38174438476563 1.1546275615692139 ;
	setAttr ".r" -type "double3" -0.30585422937247858 -10.52333614086591 -2.7322655505193416 ;
	setAttr ".jo" -type "double3" 179.99999999998309 0.78763063429459645 -2.7394841251859097 ;
createNode joint -n "LeftArmUp2ArcJnt" -p "LeftArmUp1ArcJnt";
	rename -uid "22B924DF-4AAF-FEB7-57C6-65A9DBD26E5D";
	setAttr ".t" -type "double3" 1.274754911354486 2.8421709430404007e-14 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0.089196977633454841 7.9549040315007645e-15 -9.3448553468334197e-18 ;
createNode joint -n "LeftArmUp3ArcJnt" -p "LeftArmUp2ArcJnt";
	rename -uid "2B8F36AB-4CF1-D0F4-D37F-A5BE7E1F4682";
	setAttr ".t" -type "double3" 1.2747549113544894 1.1368683772161603e-13 -1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 0.089196977629368762 -1.3921046765100642e-14 -1.1182571995515051e-16 ;
createNode joint -n "LeftArmUp4ArcJnt" -p "LeftArmUp3ArcJnt";
	rename -uid "BE755225-45D5-1744-434A-A5806796DC6C";
	setAttr ".t" -type "double3" 1.2747549113544927 -1.9895196601282805e-13 -1.6653345369377348e-15 ;
	setAttr ".r" -type "double3" 0.089196977629368762 1.7898983570484313e-14 -6.8134289366536264e-16 ;
createNode joint -n "LeftArmUp5ArcJnt" -p "LeftArmUp4ArcJnt";
	rename -uid "F9DDE26C-4218-6BDA-335B-9D962420C576";
	setAttr ".t" -type "double3" 1.2747549113544805 2.5579538487363607e-13 -1.021405182655144e-14 ;
createNode joint -n "LeftArmDn1ArcJnt" -p "LeftArmUp5ArcJnt";
	rename -uid "9FCE6EA5-450C-8584-BA2A-70889185CF0A";
	setAttr ".t" -type "double3" -1.1798265120432916e-07 -1.3514463401243328e-13 1.3711254354120683e-14 ;
	setAttr ".r" -type "double3" -1.7075526088612648e-06 20.795459558947666 -1.1088516763448797e-11 ;
	setAttr ".jo" -type "double3" 0 1.8246693143382455 0 ;
createNode joint -n "LeftArmDn2ArcJnt" -p "LeftArmDn1ArcJnt";
	rename -uid "0FE098F5-4589-8AE9-EE3C-4BAC09EFFF68";
	setAttr ".t" -type "double3" 1.2747467525168013 1.9895196601282805e-13 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 2.258872743922551e-06 -4.5327373522195121e-19 7.8692463426400233e-22 ;
createNode joint -n "LeftArmDn3ArcJnt" -p "LeftArmDn2ArcJnt";
	rename -uid "0C4412DC-4DF1-EAFE-C8B7-D8B890150766";
	setAttr ".t" -type "double3" 1.2747467525167935 -2.5579538487363607e-13 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -2.0913097891518726e-06 -2.3313885305320936e-19 -1.4571135766041357e-21 ;
createNode joint -n "LeftArmDn4ArcJnt" -p "LeftArmDn3ArcJnt";
	rename -uid "7A1E2A59-4A2F-48CF-12F4-0FA7B3D8F408";
	setAttr ".t" -type "double3" 1.2747467525167946 1.4210854715202004e-13 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 2.5613209387547816e-06 -1.7131699931044217e-19 1.7845482465016088e-21 ;
createNode joint -n "LeftArmDn5ArcJnt" -p "LeftArmDn4ArcJnt";
	rename -uid "3C0979A4-4C19-C73C-668F-3FAFC34CED29";
	setAttr ".t" -type "double3" 1.2747792651504291 -8.5265128291212022e-14 4.4408920985006262e-16 ;
createNode ikEffector -n "effector8" -p "LeftArmDn4ArcJnt";
	rename -uid "4D6D0013-4C79-8A1A-DCB3-5D85DDB1F21B";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "LeftArmUp4ArcJnt";
	rename -uid "7129F4FE-4974-6C37-7AC7-CDA2085FF215";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftArm1TwistFixGrp" -p "LeftArmJntGrp";
	rename -uid "729B4B20-44EB-BA8B-28A5-6DBDC476A5B7";
	setAttr ".r" -type "double3" 179.99999999996413 0.78763063429623748 -2.7394841251863045 ;
createNode transform -n "LeftArm1AimGrp" -p "LeftArm1TwistFixGrp";
	rename -uid "8F01315A-4876-E2E4-6077-FB9F7303405E";
createNode transform -n "LeftArm1TwistFixPos" -p "LeftArm1AimGrp";
	rename -uid "F790D1F7-4380-5E50-C7EA-23ABC37BEC16";
createNode aimConstraint -n "LeftArm1AimGrpAMCons" -p "LeftArm1AimGrp";
	rename -uid "BC56B380-4EF4-0ACE-5E00-9D89129E554F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftArm1TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "LeftArm1TwistFixUpvec" -p "LeftArm1TwistFixGrp";
	rename -uid "83855881-4135-836B-A024-5EA75F4EAA10";
createNode transform -n "LeftArm1TwsitFixTgPos" -p "LeftArm1TwistFixGrp";
	rename -uid "A9FCCE5E-47D1-4D40-FB66-C7BAC65D056A";
	setAttr ".r" -type "double3" 0 1.8246693143382424 0 ;
createNode ikHandle -n "LeftArmIKh" -p "LeftClavicleSysConsGrp";
	rename -uid "EE796E9F-4514-7E62-06DE-3FAF5C5DF896";
	setAttr ".r" -type "double3" -179.99999999998306 0 0 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftArmIKhPVCons" -p "LeftArmIKh";
	rename -uid "94D6A5D8-44D8-0FD4-4F97-CCBA3B38B2F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArmPoleVectorCtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 32.266246978363505 -1.5439233333140123 -0.45409236723213575 ;
	setAttr -k on ".w0";
createNode transform -n "LeftArmPVSysGrp" -p "LeftClavicleSysConsGrp";
	rename -uid "66C25519-4E65-7E06-11E0-0DAEEAA13CF4";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 7.7962285006136192 0.37304552655325551 0.97270998292319977 ;
createNode transform -n "LeftArmPVAmGrp" -p "LeftArmPVSysGrp";
	rename -uid "0FBC2BAB-403F-7A66-E018-18B06C5419A6";
createNode aimConstraint -n "LeftArmPVAmGrpAMCons" -p "LeftArmPVAmGrp";
	rename -uid "E77610FA-471E-430C-C57C-9D9EE878960C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftArmPVTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 1.8063078423748369e-15 0.91963322970881534 2.2507145382313203e-13 ;
	setAttr -k on ".w0";
createNode transform -n "LeftArmPVPosGrp" -p "LeftArmPVAmGrp";
	rename -uid "65479EB8-48B5-1EBF-6872-0BB642B20814";
	setAttr ".t" -type "double3" 32.302192424141992 2.2737367544323206e-13 0.51851499456199723 ;
	setAttr ".r" -type "double3" -179.99999914622634 -0.91963322970877859 3.5288960692114852e-13 ;
createNode transform -n "LeftArmPVPos" -p "LeftArmPVPosGrp";
	rename -uid "38DE45E5-4ECA-2AD4-FE77-3CB98E6014B3";
	addAttr -s false -ci true -m -sn "ag" -ln "AimGrp" -at "message";
createNode transform -n "LeftArmPVPosFWGrp" -p "LeftArmPVPos";
	rename -uid "A62F68EF-4593-FBF6-9F92-1DB5BF39962E";
createNode transform -n "LeftArmPoleVectorToLeftArmPVPosFW" -p "LeftArmPVPosFWGrp";
	rename -uid "A177A288-4F42-B398-8292-7899D31C1E7E";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 -0.010000000000000009 ;
createNode transform -n "LeftArmPVUpvec" -p "LeftArmPVSysGrp";
	rename -uid "1A7E4C73-48E4-95C2-791B-7AB2B608E021";
createNode transform -n "LeftArmPVTgPos" -p "LeftArmPVSysGrp";
	rename -uid "905C719D-4627-D0F3-77C0-F8874E3D0511";
	setAttr ".r" -type "double3" 0 0.82883102013949717 0 ;
createNode transform -n "LeftArmPosGrp" -p "LeftClavicleSysConsGrp";
	rename -uid "20ED0B1E-4BE4-04EA-A515-7BADEA135A4D";
	setAttr ".t" -type "double3" -11.527563956966947 155.00869616131905 0.18191763638761141 ;
	setAttr ".r" -type "double3" -179.99999999998306 0 0 ;
createNode transform -n "LeftArmIK1Pos" -p "LeftArmPosGrp";
	rename -uid "5025760E-4374-0B81-23C4-24A6146A0256";
createNode transform -n "LeftArmIK2Pos" -p "LeftArmPosGrp";
	rename -uid "D14BAACF-4F18-B0FB-9143-9087A2365759";
createNode transform -n "LeftArmIK3Pos" -p "LeftArmPosGrp";
	rename -uid "C8F0AB0A-4A68-5F4D-62D3-6F8938ABF604";
createNode transform -n "LeftArmIKMovePos" -p "LeftArmPosGrp";
	rename -uid "05EC053E-406A-F546-2CE7-58939ECCD34B";
createNode transform -n "LeftArmPVStretchPos" -p "LeftArmPosGrp";
	rename -uid "4643F2A7-4D82-B7BB-3B2B-FB832869233B";
	setAttr ".r" -type "double3" -3.1063039304001191e-18 0.78763063429455371 -2.7394841251858928 ;
createNode transform -n "LeftArmArcPosGrp" -p "LeftClavicleSysConsGrp";
	rename -uid "E8A99540-472B-55A9-9510-EA808189A24D";
	setAttr ".t" -type "double3" -11.527563956966947 155.00869616131905 0.18191763638761141 ;
	setAttr ".r" -type "double3" -179.99999999998306 0 0 ;
createNode transform -n "LeftArm1ArcPos" -p "LeftArmArcPosGrp";
	rename -uid "78781018-4FD5-53C4-E2BB-9CBA4BC42BA7";
	setAttr ".r" -type "double3" 179.99999999998309 0.78763063429459057 -2.7394841251858919 ;
createNode transform -n "LeftArm2ArcPos" -p "LeftArmArcPosGrp";
	rename -uid "C8674758-42B2-80E6-95B9-37939608864A";
	setAttr ".r" -type "double3" 179.99999999998309 -1.0370386800436515 -2.7394841251853523 ;
createNode transform -n "LeftArm3ArcPos" -p "LeftArmArcPosGrp";
	rename -uid "265D2D46-450E-C9FE-BF09-82BCCFFCFD8B";
	setAttr ".r" -type "double3" 179.99999999998309 -0.041200385855399237 -2.7394841251856463 ;
createNode transform -n "LeftArmArcPointPos" -p "LeftArmArcPosGrp";
	rename -uid "0DBAFB05-4FA5-BC84-46FA-6BBBFA617398";
createNode pointConstraint -n "LeftArmArcPointPosPTCons" -p "LeftArmArcPointPos";
	rename -uid "1BC021B6-4F8F-19D0-E758-8DBF73D01AD8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftArm1ArcPosW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftArm2ArcPosW1" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "LeftArm3ArcPosW2" -dv 1 -min 0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr ".o" -type "double3" 0 0 -0.01 ;
	setAttr ".rst" -type "double3" 51.762877113142601 153.08345706180219 -0.88880973911829519 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "LeftArmArcCrvGrp" -p "LeftClavicleSysConsGrp";
	rename -uid "3D8D68F1-4469-7EF1-1BD2-29BF5C38EEEB";
	setAttr ".t" -type "double3" -11.527563956966947 155.00869616131905 0.18191763638761141 ;
	setAttr ".r" -type "double3" -179.99999999998306 0 0 ;
createNode transform -n "LeftArmUpArcCrv" -p "LeftArmArcCrvGrp";
	rename -uid "E5477C4F-4680-6C49-FA29-1E953F67FA83";
	setAttr -l on ".v";
	setAttr ".s" -type "double3" 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 ;
createNode nurbsCurve -n "LeftArmUpArcCrvShape" -p "LeftArmUpArcCrv";
	rename -uid "F221BD88-4358-6797-BC50-0EA0939697BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "LeftArmDnArcCrv" -p "LeftArmArcCrvGrp";
	rename -uid "134F606F-41A4-AFE7-FB15-FEB6C3E017F5";
	setAttr -l on ".v";
	setAttr ".s" -type "double3" 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 ;
createNode nurbsCurve -n "LeftArmDnArcCrvShape" -p "LeftArmDnArcCrv";
	rename -uid "82AA8CA4-46EA-D844-A217-F2A7A16B3C86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "LeftArmIKCrvGrp" -p "LeftClavicleSysConsGrp";
	rename -uid "DD88439F-4C6B-1AA7-560B-80A08EA7BEAE";
	setAttr ".t" -type "double3" -11.527563956966947 155.00869616131905 0.18191763638761141 ;
	setAttr ".r" -type "double3" -179.99999999998306 0 0 ;
createNode transform -n "LeftArmUpIKCrv" -p "LeftArmIKCrvGrp";
	rename -uid "643DF31E-4A57-30AE-A0E7-00BE6587E961";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftArmUpIKCrvShape" -p "LeftArmUpIKCrv";
	rename -uid "9078C01F-4798-1B4F-10ED-6F89AB69952D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "LeftArmUpIKCrvShapeOrig" -p "LeftArmUpIKCrv";
	rename -uid "01BE4523-4954-4575-95FE-8DAC8DFD759D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		5.7313356399536133 155.38174438476563 1.1546275615692139
		10.731333269978887 155.38174723163831 0.15461564119025062
		;
createNode transform -n "LeftArmDnIKCrv" -p "LeftArmIKCrvGrp";
	rename -uid "0211A556-4B7A-2E46-B583-D1A1AFEC332E";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftArmDnIKCrvShape" -p "LeftArmDnIKCrv";
	rename -uid "4ACE2AAC-4DB8-B94B-8FBF-AF9FCF5BEA73";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "LeftArmDnIKCrvShapeOrig" -p "LeftArmDnIKCrv";
	rename -uid "7A748E44-40FB-EBC7-6C9E-45A5E5F10724";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10.731333269978887 155.38174723163831 0.15461564119025062
		15.731331060708779 155.38174923652772 1.1546267580579188
		;
createNode transform -n "LeftArmUpIKChkCrv" -p "LeftArmIKCrvGrp";
	rename -uid "2131B806-4816-F412-C7E2-3A9FD0522165";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftArmUpIKChkCrvShape" -p "LeftArmUpIKChkCrv";
	rename -uid "B7C0F15B-475E-6DA8-8E21-3D99139A1196";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "cv[*]";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		19.323791503906246 154.6356506347656 -0.79079234600067139
		24.701522354095662 154.3783289776961 -0.86480789988791118
		35.45698402746212 153.86368566484913 -1.0128390072906102
		46.212445700827601 153.34904235200264 -1.1608701146932967
		51.590176551017343 153.09172069493303 -1.2348856685805414
		;
createNode transform -n "LeftArmDnIKChkCrv" -p "LeftArmIKCrvGrp";
	rename -uid "4582DDA9-4A04-6369-D4A2-BAB84ECB8A58";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftArmDnIKChkCrvShape" -p "LeftArmDnIKChkCrv";
	rename -uid "F537C419-4D6D-2E1D-DC4E-0981C870DAE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		51.59017655101735 153.09172069493303 -1.2348856685805414
		57.054257682414189 152.83026722129102 -1.1358632574469272
		67.982419917760723 152.30736027532035 -0.9378184356771071
		78.910582153107399 151.78445332934993 -0.73977361390728635
		84.374663284504194 151.52299985570798 -0.64075120277367292
		;
createNode ikHandle -n "LeftArmUpArcIKh" -p "LeftClavicleSysConsGrp";
	rename -uid "C501DBB1-4348-D3EB-9340-8BB3C0015244";
	setAttr ".t" -type "double3" -0.79623057129660424 -0.37305107031916596 0.027302018289949714 ;
	setAttr ".r" -type "double3" 2.4598497723887923e-05 -11.310069040424711 -3.2622777763018513e-05 ;
	setAttr ".pv" -type "double3" 0 2.9588587844005646e-13 -1 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode ikHandle -n "LeftArmDnArcIKh" -p "LeftClavicleSysConsGrp";
	rename -uid "E5910898-45FA-0265-5226-CBBAD62FB615";
	setAttr ".t" -type "double3" 4.2037670990992719 -0.37305307520792197 -0.97270912078775174 ;
	setAttr ".r" -type "double3" 2.5619828217935456e-05 11.310059832859171 -2.2974342201192008e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".pv" -type "double3" 0 2.9588587844005646e-13 -1 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode blendColors -n "LeftArmFKScaleBC";
	rename -uid "612316A7-4135-CE5E-1C3D-F79C00C74101";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "LeftArmIKScaleBC";
	rename -uid "1B330C9D-440F-9DD8-0051-98AB95050BA5";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "6542E7D2-4E36-B869-A857-98A9C86815A9";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "F0D1C847-4F42-F239-807A-EB82694E63E0";
createNode animCurveUU -n "LeftArmIKUU";
	rename -uid "A0083C2C-419F-E39B-CC9A-608D040A6957";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "LeftArmFKUU";
	rename -uid "2C5BE4C5-43AE-9B7E-C373-C98FBFA9AD1C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode decomposeMatrix -n "LeftClavicleCtrlConsGrpDM";
	rename -uid "FC0C28A0-4FA1-D719-B1FF-14BE80CF40A0";
createNode multMatrix -n "LeftClavicleCtrlConsGrpMM";
	rename -uid "18E4A160-4470-77D7-E545-29AB39E44AD2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 -1 2.9588587844005646e-13 0 0 -2.9588587844005646e-13 -1 0
		 11.527563956966947 155.00869616131911 0.18191763634174563 1;
	setAttr ".i[1]" -type "matrix" 1 -2.1511777936927691e-15 -2.5246143562864322e-18 1.5407439555097887e-33
		 -1.3877787807814457e-17 -0.99999999999999989 -2.9588592860563256e-13 8.6736173798840355e-19
		 6.3108872417680944e-30 2.9588587844005641e-13 -1.0000000000000002 -3.944304526105059e-31
		 -11.527563956966944 155.00869616131905 0.18191763638761249 0.99999999999999989;
createNode condition -n "LeftArmAutoHideCD";
	rename -uid "4AA0B872-4E2B-0F3D-27D0-4D998B93FFB6";
	setAttr ".st" 1;
createNode reverse -n "LeftArmAutoHideRV";
	rename -uid "90C4E9DB-4A8F-BF0A-FAA0-69B724F91927";
createNode decomposeMatrix -n "LeftArmIKFKCtrlGrpDM";
	rename -uid "B5E72D27-483D-9CE8-B9FA-4EAF1EE98618";
createNode multMatrix -n "LeftArmIKFKCtrlGrpMM";
	rename -uid "F86FDC82-49F1-EEF5-602E-27A75851D20B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 84.374662025947174 151.52299996156211 -0.64075121912623212 1;
	setAttr ".i[1]" -type "matrix" 0.99885691716165192 -0.047794802438321314 0.00071826053931884639 0
		 -0.047794790081466088 -0.99885717540591457 -3.4368397922007743e-05 0 0.00071908232429834524 2.9564520746381598e-13 -0.99999974146027237 0
		 -77.035744069241105 155.38250605296693 -0.69614644096117351 1;
createNode decomposeMatrix -n "LeftArmUpArcDM";
	rename -uid "55FF4CE2-4469-F168-2AC1-22AB1BB9848B";
createNode multMatrix -n "LeftArmUpArcMM";
	rename -uid "5D3F141D-4A81-21A1-7E94-8CB69D328BA9";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LeftArmUpArcCM";
	rename -uid "2394A443-47E4-B1AB-F3A0-E78FCA976515";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4999989986129219 4.1203294287583958e-06 -0.50000601788510601 1;
createNode pointOnCurveInfo -n "LeftArmUpArcPC";
	rename -uid "09313116-445A-CD2A-6A08-289BA6C553A4";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode blendShape -n "LeftArmArcBlendShape";
	rename -uid "5250FC37-492F-0A62-CFEB-C8835D968167";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".og";
	setAttr -s 2 ".it";
	setAttr ".mlid" 0;
	setAttr ".mlpr" 0;
	setAttr ".pndr[0]"  0;
	setAttr ".tgvs[0]" yes;
	setAttr ".tpvs[0]" yes;
	setAttr ".tgdt[0].cid" -type "Int32Array" 1 0 ;
	setAttr ".dfo" 1;
	setAttr ".aal" -type "attributeAlias" {"LeftArmArcCrvGrp","weight[0]"} ;
createNode objectSet -n "LeftArmArcBlendShapeSet";
	rename -uid "0B84C6AD-4232-E3A1-06D8-8DA0D9419D3A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "LeftArmArcBlendShapeGroupId";
	rename -uid "97F27DD4-4791-E013-5A3C-77B62EFADD6B";
	setAttr ".ihi" 0;
createNode groupId -n "LeftArmArcBlendShapeGroupId1";
	rename -uid "B2D4C7A8-4E2E-5E17-0CDB-B4ACE6F919B8";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftArmArcBlendShapeGroupParts";
	rename -uid "AAD814FD-4319-FD87-C493-D68A69B076FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "rebuildCurve1";
	rename -uid "74607605-40A4-BEE5-351D-998646C57D28";
	setAttr ".s" 2;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode groupParts -n "LeftArmArcBlendShapeGroupParts1";
	rename -uid "513AF34A-4186-B380-E429-47A2B7451327";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "rebuildCurve2";
	rename -uid "B0A36FD6-46B6-8327-1804-008FA0B04165";
	setAttr ".s" 2;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode animCurveUU -n "LeftArmArcBlendShape_LeftArmArcCrvGrp";
	rename -uid "22058044-4CC8-71C2-F16C-B495ACC9AA54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 1;
createNode cluster -n "LeftArm1Cs";
	rename -uid "4865BFFE-466D-06D1-4F8E-2B8C478215CD";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftArm1CsSet";
	rename -uid "06FC53D2-4359-2D59-C082-B1849C2437F2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftArm1CsGroupId";
	rename -uid "1DDBF4FA-40A3-11FF-B76B-40B9133D292D";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftArm1CsGroupParts";
	rename -uid "1A53B876-4822-6590-E9CA-C580ECE3A02C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode pairBlend -n "LeftArmMidArcCtrlPBGrpPB";
	rename -uid "293DA955-4624-7348-A990-0EAD34DC0604";
	setAttr ".it1" -type "double3" 0.0018830354982313224 -2.8421709430404007e-14 -0.11961395871957992 ;
	setAttr ".ir1" -type "double3" 1.5237432230707119e-14 -1.8246693143382429 5.5258963034496793e-16 ;
	setAttr ".ri" 1;
createNode cluster -n "LeftArm2UpCs";
	rename -uid "4FF5F30E-4277-2F59-6DE2-098740FA8193";
	setAttr ".wl[0].w[3]"  0.5;
createNode objectSet -n "LeftArm2UpCsSet";
	rename -uid "1D684DF0-43F5-2B58-156D-40AA588D2BE8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftArm2UpCsGroupId";
	rename -uid "6FD680D9-452A-B380-9A6A-EEB92C44468E";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftArm2UpCsGroupParts";
	rename -uid "721E6FE9-4B36-3786-12D5-68B97CCE461E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[3:4]";
createNode cluster -n "LeftArm2DnCs";
	rename -uid "BF2D385B-4731-3D95-2EEA-5EA2826B280A";
	setAttr ".wl[0].w[1]"  0.5;
createNode objectSet -n "LeftArm2DnCsSet";
	rename -uid "9FC1B5D1-4332-5FDF-B229-2FA36A77614D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftArm2DnCsGroupId";
	rename -uid "35175B46-4821-4817-039C-A68182A98473";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftArm2DnCsGroupParts";
	rename -uid "50AAA424-4E1F-50E5-4270-96BD9A15B2DF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode decomposeMatrix -n "LeftArmDnArcDM";
	rename -uid "AB6AA7BC-4463-9385-9C68-EFB28DE14548";
createNode multMatrix -n "LeftArmDnArcMM";
	rename -uid "A4CA5717-44D2-3638-8D63-B291A2C44720";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LeftArmDnArcCM";
	rename -uid "640553D3-402E-0364-5669-F1AE20722FAA";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.4999967089904871 6.5462104004154753e-06 -0.5000064196407541 1;
createNode pointOnCurveInfo -n "LeftArmDnArcPC";
	rename -uid "940A5DAD-4766-2853-6646-7C91C972B17C";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode cluster -n "LeftArm3Cs";
	rename -uid "EB9B01F5-4DEB-1CBF-9058-2896CE1C11FC";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftArm3CsSet";
	rename -uid "D526F092-40C8-E72B-9509-6484E7574093";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftArm3CsGroupId";
	rename -uid "D338467B-488D-2638-9D89-C38A9E45BC7C";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftArm3CsGroupParts";
	rename -uid "E2AEA135-47C6-0D4B-C1C5-20BA8C176465";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode decomposeMatrix -n "LeftClavicleSysConsGrpDM";
	rename -uid "1D5CBD4B-484A-AB25-B6FD-EB9B0F194348";
createNode multMatrix -n "LeftClavicleSysConsGrpMM";
	rename -uid "601947DC-4EEF-49D6-9B18-8193D738E233";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 -1 2.9588587844005646e-13 0 0 -2.9588587844005646e-13 -1 0
		 11.527563956966947 155.00869616131911 0.18191763634174563 1;
	setAttr ".i[1]" -type "matrix" 1 -2.1511777936927691e-15 -2.5246143562864322e-18 1.5407439555097887e-33
		 -1.3877787807814457e-17 -0.99999999999999989 -2.9588592860563256e-13 8.6736173798840355e-19
		 6.3108872417680944e-30 2.9588587844005641e-13 -1.0000000000000002 -3.944304526105059e-31
		 -11.527563956966944 155.00869616131905 0.18191763638761249 0.99999999999999989;
createNode blendTwoAttr -n "LeftArmSquashBA";
	rename -uid "CF7D61B2-4DCF-CADB-70B9-42A3A04E9347";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode setRange -n "LeftArmStretchSR";
	rename -uid "626A9718-4ED7-2972-EC30-0E80C4604EE2";
	setAttr ".m" -type "float3" 1 1 1 ;
	setAttr ".om" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "LeftArmSquashPowMD";
	rename -uid "93E11A24-409C-A094-ECC6-C2A59CAD377F";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multDoubleLinear -n "LeftArmUpSlideML";
	rename -uid "8E334A43-4C75-6C02-66B8-13A8958E085D";
createNode blendTwoAttr -n "LeftArmPVStretch1BA";
	rename -uid "148D2B8F-4215-7AC1-4A58-D4A79EE618D7";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LeftArmStretchDvMD";
	rename -uid "36540FE7-4ABE-71A2-887F-36905C8209C8";
	setAttr ".op" 2;
createNode condition -n "LeftArmCD";
	rename -uid "3A8FB4F6-43CD-E6D2-9FC1-A9AA7864D3D0";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmAllDB";
	rename -uid "FACB6151-472E-FA85-70FE-60BD9EBDAF7B";
createNode addDoubleLinear -n "LeftArmSumDistAL";
	rename -uid "8BD2A11F-47C0-74A9-D7D3-B39222DF6C56";
createNode distanceBetween -n "LeftArm1DB";
	rename -uid "45EC22D0-4CE3-B787-8FC4-DCA07624FFD3";
createNode distanceBetween -n "LeftArm2DB";
	rename -uid "4A2E7662-4D03-2ACB-1053-35A33F3C1676";
createNode blendTwoAttr -n "LeftArmStretchBA";
	rename -uid "85CCB5BD-4990-CD29-2367-DA8ABA2772D2";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LeftArmPvStretch1DvMD";
	rename -uid "19285BCF-405B-CBF4-8A71-49908B253CB3";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmPVStretch1DB";
	rename -uid "6F4A33E0-4686-4C79-4095-EBBF96DA16C2";
createNode addDoubleLinear -n "LeftArmUpSlideAL";
	rename -uid "9E44D339-4AB8-A443-2A2C-77A5125CAA36";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LeftArmUpSlideFilterML";
	rename -uid "38BD3C2D-4AD8-BE5B-A3C3-42AB07791B54";
	setAttr ".i2" 0.1;
createNode blendColors -n "LeftArm1DrvJntTrsBC";
	rename -uid "409F2C5A-42AC-B641-9FE3-72B0D6B25580";
createNode pairBlend -n "LeftArm1DrvJntRotPB";
	rename -uid "94E3CBF9-4260-02C9-F5B0-2598A05FE6A1";
	setAttr ".ri" 1;
createNode blendColors -n "LeftArm2DrvJntTrsBC";
	rename -uid "C0998ADE-42D2-511E-2DC9-D0BFCF40D631";
createNode pairBlend -n "LeftArm2DrvJntRotPB";
	rename -uid "EEFBD3F7-4F99-3C89-8B16-03B12D848169";
	setAttr ".ri" 1;
createNode blendColors -n "LeftArm3DrvJntTrsBC";
	rename -uid "AEE30B88-4AF9-ADAA-2EE9-0881B980507B";
createNode decomposeMatrix -n "LeftArm3TwistFixGrpDM";
	rename -uid "88748285-49D2-84CF-2754-11AA9E1F6E67";
createNode multMatrix -n "LeftArm3TwistFixGrpMM";
	rename -uid "D1505997-4E4D-DF73-C0CB-F5B134B43D0A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99885691716165204 -0.047794790081465845 0.00071908232429835836 0
		 -0.047794802438321266 -0.99885717540591445 2.9541386697973233e-13 0 0.00071826053931885181 -3.4368397921804889e-05 -0.99999974146027204 0
		 84.374663284504209 151.52299985570798 -0.64075120277367303 1;
	setAttr ".i[1]" -type "matrix" 0.99885691716165204 -0.047794802438321078 0.00071826053931885376 0
		 -0.047794790081465865 -0.99885717540591445 -3.436839792180478e-05 0 0.00071908232429835131 2.9541382984556732e-13 -0.99999974146027193 0
		 -77.035745331430547 155.38250600738618 -0.69614642551625905 1;
createNode pairBlend -n "LeftArm3TwsitFixTgPosPB";
	rename -uid "67540ECE-4A18-F82A-A357-6290AB392F1B";
	setAttr ".w" 0.5;
createNode decomposeMatrix -n "LeftArm3TwsitFixTgPosDM";
	rename -uid "C58321E7-4DCE-743B-DA06-4C8417D1993F";
createNode multMatrix -n "LeftArm3TwsitFixTgPosMM";
	rename -uid "D09E05E7-4B38-8096-ECBD-A984990475BD";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99869356678365484 -0.047786973849834359 0.018098751205999332 0
		 -0.047794802438321266 -0.99885717540591445 2.9541386697973233e-13 0 0.018078067507984758 -0.00086502623856609469 -0.99983620418785768 0
		 85.373356851287923 151.47521288185817 -0.62265245156767357 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365495 -0.047794802438321522 0.018078067507984765 0
		 -0.047786973849834435 -0.99885717540591445 -0.00086502623856609707 0 0.018098751205999328 2.9541157605157173e-13 -0.99983620418785768 0
		 -78.012010993414307 155.38250600738627 -2.0349057386093508 1;
createNode decomposeMatrix -n "LeftArm3TwsitFixTgPosDM1";
	rename -uid "A440B12D-40A7-A8A2-0C48-B78CB407CA0B";
createNode multMatrix -n "LeftArm3TwsitFixTgPosMM1";
	rename -uid "222A22B4-4F3B-03B8-5B29-DFBC93654432";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99869356678365484 -0.047786973849834359 0.018098751205999332 0
		 -0.047794802438321266 -0.99885717540591445 2.9541386697973233e-13 0 0.018078067507984758 -0.00086502623856609469 -0.99983620418785768 0
		 85.373356851287923 151.47521288185817 -0.62265245156767357 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365495 -0.047794802438321522 0.018078067507984765 0
		 -0.047786973849834435 -0.99885717540591445 -0.00086502623856609707 0 0.018098751205999328 2.9541157605157173e-13 -0.99983620418785768 0
		 -78.012010993414307 155.38250600738627 -2.0349057386093508 1;
createNode decomposeMatrix -n "LeftArm2TwistFixGrpDM";
	rename -uid "295C91A2-4F7C-3382-3035-798D8D16879D";
createNode multMatrix -n "LeftArm2TwistFixGrpMM";
	rename -uid "0D9E115B-4827-D347-FE8F-219B0AE9CA4D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99869356678365495 -0.047786973849834366 0.018098751205999335 0
		 -0.047794802438321259 -0.99885717540591434 2.9541386697973233e-13 0 0.018078067507984762 -0.00086502623856609447 -0.99983620418785757 0
		 51.590176551017358 153.091720694933 -1.2348856685805416 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365495 -0.047794802438320995 0.018078067507984769 0
		 -0.04778697384983438 -0.99885717540591434 -0.00086502623856609534 0 0.018098751205999325 2.9541578701298531e-13 -0.99983620418785746 0
		 -44.1846374887756 155.3825060073863 -2.034905738609349 1;
createNode unitConversion -n "unitConversion7";
	rename -uid "70B4362F-4AA7-798D-056A-B88FFFD6426E";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "LeftArm2TwsitFixTgPosPB";
	rename -uid "99552E5B-4445-A276-B4DA-568389433B2D";
	setAttr ".w" 0.5;
createNode decomposeMatrix -n "LeftArm2TwsitFixTgPosDM";
	rename -uid "64420DE8-4B85-417D-D42F-70ACCFFA8B74";
createNode multMatrix -n "LeftArm2TwsitFixTgPosMM";
	rename -uid "0FCC836A-4759-C984-93A8-239533B9293A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99876279833535941 -0.04779028654400836 -0.013746314901230022 0
		 -0.047794802438321259 -0.99885717540591434 2.9541386697973233e-13 0 -0.013730605274496965 0.00065700240466419219 -0.99990551494960567 0
		 52.588939349352707 153.04393040838897 -1.2486319834817716 1;
	setAttr ".i[1]" -type "matrix" 0.99876279833535953 -0.047794802438321987 -0.013730605274496972 0
		 -0.047790286544008354 -0.99885717540591457 0.00065700240466419219 0 -0.013746314901230017 2.9541099834060766e-13 -0.99990551494960578 0
		 -45.227027026450507 155.38250600738635 -0.62698626871303564 1;
createNode decomposeMatrix -n "LeftArm2TwsitFixTgPosDM1";
	rename -uid "4977C027-48C1-53DD-5D3E-3D9FA21C27EF";
createNode multMatrix -n "LeftArm2TwsitFixTgPosMM1";
	rename -uid "9BA54309-41C1-9603-B63B-EA8ACA0AABA5";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99876279833535941 -0.04779028654400836 -0.013746314901230022 0
		 -0.047794802438321259 -0.99885717540591434 2.9541386697973233e-13 0 -0.013730605274496965 0.00065700240466419219 -0.99990551494960567 0
		 52.588939349352707 153.04393040838897 -1.2486319834817716 1;
	setAttr ".i[1]" -type "matrix" 0.99876279833535953 -0.047794802438321987 -0.013730605274496972 0
		 -0.047790286544008354 -0.99885717540591457 0.00065700240466419219 0 -0.013746314901230017 2.9541099834060766e-13 -0.99990551494960578 0
		 -45.227027026450507 155.38250600738635 -0.62698626871303564 1;
createNode multDoubleLinear -n "LeftArmUpTxML";
	rename -uid "4106A94D-4CFE-B332-0FA7-FFBB0F8C98CC";
createNode multDoubleLinear -n "LeftArmDnTxML";
	rename -uid "43B2F262-4FF4-C0AA-9D87-B2A22847092C";
createNode multDoubleLinear -n "LeftArmDnSlideML";
	rename -uid "E8192324-4CA7-CCC9-4687-E2A549B676B5";
createNode blendTwoAttr -n "LeftArmPVStretch2BA";
	rename -uid "7D9FFE57-46E2-589E-47B1-FF9705931D6B";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LeftArmsPvStretch2DvMD";
	rename -uid "25CF41BF-49EA-E278-F7C2-79849A8C91C7";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmPVStretch2DB";
	rename -uid "EE7ECCA8-46EA-81CE-6C1E-60ABF759B4E1";
createNode addDoubleLinear -n "LeftArmDnSlideAL";
	rename -uid "8DE18C0C-428F-76EF-5398-DAA119800D0E";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LeftArmDnSlideFilterML";
	rename -uid "686CE5BE-46CD-4EF8-5B58-909837397D4E";
	setAttr ".i2" 0.1;
createNode quatToEuler -n "LeftArm3IKJntQE";
	rename -uid "FD74925F-4FF1-14C8-61D7-009B82804867";
	setAttr ".ort" -type "double3" -0.00027466171159269475 -0.0001277294596731789 1.9303499252459498e-05 ;
createNode quatProd -n "LeftArm3IKJntQP";
	rename -uid "590061E0-475E-E7A4-A761-79B6A2407E7A";
createNode decomposeMatrix -n "LeftArm3IKJntDM";
	rename -uid "EF71DB32-4E12-2533-99E3-3AAC7EF7D0A2";
createNode multMatrix -n "LeftArm3IKJntMM";
	rename -uid "3E6037E8-4D4E-5ADD-B873-19A5BDA5A318";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99885691716165215 -0.047794790081465845 0.00071908232429834795 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 0.00071826053931884487 -3.4368397921804455e-05 -0.99999974146027215 0
		 84.374662025947146 151.52299996156205 -0.64075121912623278 1;
	setAttr ".i[1]" -type "matrix" 0.9988569171616527 -0.047794802438312738 0.0007182605391359404 5.4210108624275222e-20
		 -0.047794790081457483 -0.9988571754059149 -3.4368397913073917e-05 8.6736173798840355e-19
		 0.00071908232411523076 2.9544199534278195e-13 -0.99999974146027215 -3.944304526105059e-31
		 -77.035744069242568 155.38250605296622 -0.69614644094709432 0.99999999999999989;
createNode quatInvert -n "LeftArm3IKJntQI";
	rename -uid "45888505-4FCF-ECDC-CF60-F9A06EA79315";
createNode eulerToQuat -n "LeftArm3IKJntEQ";
	rename -uid "DBF149ED-41C8-7CE0-C679-D496781A57E3";
createNode decomposeMatrix -n "LeftArm1FKJntDM";
	rename -uid "87CA8F0E-4841-88C2-31EF-1AB1D6BCAC8A";
createNode multMatrix -n "LeftArm1FKJntMM";
	rename -uid "D74DE38E-4896-1116-E6DB-FB9269DA1499";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99876279833535941 -0.04779028654400836 -0.013746314901230029 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 -0.013730605274496975 0.00065700240466419263 -0.99990551494960589 0
		 19.323792457580566 154.63565063476557 -0.7907923465813429 1;
	setAttr ".i[1]" -type "matrix" 0.99876279833535919 -0.047794802438321703 -0.013730605274496972 0
		 -0.047790286544008354 -0.99885717540591457 0.00065700240466419306 0 -0.013746314901230024 2.9541099842726523e-13 -0.99990551494960578 0
		 -11.920673456247853 155.38250605296716 -0.62698625619913717 1;
createNode quatToEuler -n "LeftArm1FKJntQE";
	rename -uid "0BF5A34A-4203-4118-075E-ABAF60B61AAF";
	setAttr ".ort" -type "double3" -0.038287422408970193 -10.523199385676476 -2.7322331069698693 ;
createNode quatProd -n "LeftArm1FKJntQP";
	rename -uid "38EF1AFE-474A-6030-6464-409663BB605D";
createNode quatInvert -n "LeftArm1FKJntQI";
	rename -uid "18CE2EDB-4C28-3DE1-60E2-C7B0CC0B96E2";
createNode eulerToQuat -n "LeftArm1FKJntEQ";
	rename -uid "3B2CCA3D-4526-2ACA-3544-0E974EA6B878";
createNode decomposeMatrix -n "LeftArm2FKJntDM";
	rename -uid "67AA6E70-4B9D-9438-4EE4-DD8DCC41DD81";
createNode multMatrix -n "LeftArm2FKJntMM";
	rename -uid "A8744620-4332-43A4-6105-B0BA792C1DFB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99869356678365495 -0.047786973849834366 0.018098751205999315 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 0.018078067507984741 -0.00086502623856609382 -0.99983620418785779 0
		 51.590176741996785 153.0917207314275 -1.2348856586639823 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365473 -0.047794802438321196 0.018078067507984748 5.4210108624275222e-20
		 -0.04778697384983438 -0.99885717540591445 -0.00086502623856607279 8.6736173798840355e-19
		 0.018098751205999321 2.9539052133115476e-13 -0.99983620418785768 -3.944304526105059e-31
		 -44.184637677941069 155.38250605296693 -2.0349057321153876 0.99999999999999989;
createNode quatToEuler -n "LeftArm2FKJntQE";
	rename -uid "4B3D2EF3-41E8-B2BA-6D16-58AFA09C2CE5";
	setAttr ".ort" -type "double3" 0 20.795195298824602 0 ;
createNode quatProd -n "LeftArm2FKJntQP";
	rename -uid "89CC2018-4A6B-4517-9545-738032D70CCB";
createNode quatInvert -n "LeftArm2FKJntQI";
	rename -uid "CCAE25E2-45E0-05E8-8E15-7CA17CB3C5B4";
createNode eulerToQuat -n "LeftArm2FKJntEQ";
	rename -uid "25E54927-4E84-0F08-71F0-94AB7345ABE2";
createNode decomposeMatrix -n "LeftArm3FKJntDM";
	rename -uid "0CDA4BCE-4878-4439-1987-0EBF2604FD9C";
createNode multMatrix -n "LeftArm3FKJntMM";
	rename -uid "BB6B9C20-460A-9C23-4321-7BA99C7EA9F7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99885691716165215 -0.047794790081465845 0.00071908232429834795 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 0.00071826053931884487 -3.4368397921804455e-05 -0.99999974146027215 0
		 84.374662025947117 151.52299996156211 -0.64075121912623323 1;
	setAttr ".i[1]" -type "matrix" 0.99885691716165215 -0.047794802438321293 0.00071826053931886048 0
		 -0.047794790081465754 -0.99885717540591434 -3.4368397921832536e-05 0 0.00071908232429836096 2.9544146888651094e-13 -0.99999974146027171 0
		 -77.035744069241161 155.38250605296687 -0.69614644096120071 1;
createNode quatToEuler -n "LeftArm3FKJntQE";
	rename -uid "812700D6-4540-D60D-2A52-90880FA64BEE";
	setAttr ".ort" -type "double3" 0 0.99583829418825232 0 ;
createNode quatProd -n "LeftArm3FKJntQP";
	rename -uid "EC5C0A92-4FEE-9967-F2EF-DA9EC095C0AE";
createNode quatInvert -n "LeftArm3FKJntQI";
	rename -uid "EF52EC54-4F8F-C8F6-80AD-9E8752D401B1";
createNode eulerToQuat -n "LeftArm3FKJntEQ";
	rename -uid "C6945AF9-4DAA-2261-6100-079DC2F4E177";
createNode multDoubleLinear -n "LeftArmUpIK1CrvPointMD";
	rename -uid "1B795EA4-42A9-9B09-281F-4E83869D84E0";
	setAttr ".i2" 8.0765884397663541;
createNode multiplyDivide -n "LeftArmUpIK1DvdMD";
	rename -uid "2631FF5E-4ADA-43D8-B25E-86BBC2B25910";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmUpIK1DB";
	rename -uid "A3C04AC7-4966-5A13-2CB7-A396379CDE9D";
createNode pointOnCurveInfo -n "LeftArmUpIK1PC";
	rename -uid "77C5E54B-47AE-B61F-74C0-5D91E3E78713";
createNode pointOnCurveInfo -n "LeftArmUpIK2PC";
	rename -uid "635093F5-4E8E-2180-A91F-80977E82EDC1";
	setAttr ".pr" 0.24999999999999978;
createNode distanceBetween -n "LeftArmUpIK1ChkDB";
	rename -uid "16578A29-4F67-026A-78F9-9D9E622B4459";
createNode pointOnCurveInfo -n "LeftArmUpIK1ChkPC";
	rename -uid "BE76B839-4CAC-EB8C-9354-6BB773B9384C";
createNode pointOnCurveInfo -n "LeftArmUpIK2ChkPC";
	rename -uid "93FBBCAC-4EFA-729A-E62C-0E94FE7E2EA4";
	setAttr ".pr" 0.24999999999999978;
createNode multDoubleLinear -n "LeftArmUpIK2CrvPointMD";
	rename -uid "8F04EEA2-4360-F560-A598-3D92DF4050B3";
	setAttr ".i2" 8.0765884397663754;
createNode multiplyDivide -n "LeftArmUpIK2DvdMD";
	rename -uid "410C5B00-4E56-1A54-03E4-EC8A37B9418B";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmUpIK2DB";
	rename -uid "79EE71DE-40B0-0D55-A4BE-3A9C14710747";
createNode pointOnCurveInfo -n "LeftArmUpIK3PC";
	rename -uid "43EF1142-4A22-F8EE-A3DD-3D9121D938E8";
	setAttr ".pr" 0.50000000000000022;
createNode distanceBetween -n "LeftArmUpIK2ChkDB";
	rename -uid "C3D13701-4FD2-7D7C-5AEA-3A8E0664B06B";
createNode pointOnCurveInfo -n "LeftArmUpIK3ChkPC";
	rename -uid "946E39D7-4298-CCDD-6EEE-18A0B8F2325B";
	setAttr ".pr" 0.50000000000000022;
createNode multDoubleLinear -n "LeftArmUpIK3CrvPointMD";
	rename -uid "C24C3E44-4312-F3D5-4A74-04B699719A23";
	setAttr ".i2" 8.0765884397663967;
createNode multiplyDivide -n "LeftArmUpIK3DvdMD";
	rename -uid "BBF090B5-449C-E225-02B8-9FB600FCEE7E";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmUpIK3DB";
	rename -uid "8471E0BE-426D-8524-437A-A0B9ABBC2A4E";
createNode pointOnCurveInfo -n "LeftArmUpIK4PC";
	rename -uid "15FE587A-4776-660B-3A2E-6DAA42A64747";
	setAttr ".pr" 0.75000000000000133;
createNode distanceBetween -n "LeftArmUpIK3ChkDB";
	rename -uid "0C4DFA57-4725-07FB-CDA5-94AD09FB1827";
createNode pointOnCurveInfo -n "LeftArmUpIK4ChkPC";
	rename -uid "5AD70ABF-46B5-4ADB-833F-418F6E753C1C";
	setAttr ".pr" 0.75000000000000133;
createNode multDoubleLinear -n "LeftArmUpIK4CrvPointMD";
	rename -uid "A08C3F04-4E6D-41B6-DAF5-6FA0019221B5";
	setAttr ".i2" 8.0765884397663186;
createNode multiplyDivide -n "LeftArmUpIK4DvdMD";
	rename -uid "B2D5EEEA-4515-0286-5F54-A9ADC788D077";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmUpIK4DB";
	rename -uid "5442A0E2-45D4-6BE4-B0DA-A88F2D51C7B5";
createNode pointOnCurveInfo -n "LeftArmUpIK5PC";
	rename -uid "8B5170F7-428C-B4EF-45B8-3194BE38D9E4";
	setAttr ".pr" 1;
createNode distanceBetween -n "LeftArmUpIK4ChkDB";
	rename -uid "990EFC60-4030-58B1-30FF-9EB3968007C3";
createNode pointOnCurveInfo -n "LeftArmUpIK5ChkPC";
	rename -uid "7DC63E44-4966-EBD4-C095-D583145B3188";
	setAttr ".pr" 1;
createNode multDoubleLinear -n "LeftArmDnIK1CrvPointMD";
	rename -uid "95E5A4BB-42A0-5886-8184-008E69F10F63";
	setAttr ".i2" 8.2067906844020229;
createNode multiplyDivide -n "LeftArmDnIK1DvdMD";
	rename -uid "5561B88D-4E96-0D65-28FB-1BBCAE549E4B";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmDnIK1DB";
	rename -uid "3494E656-4762-1517-B605-AE9FF6026290";
createNode pointOnCurveInfo -n "LeftArmDnIK1PC";
	rename -uid "5F9F782E-40A4-B9CF-C2EC-688833ACA70F";
createNode pointOnCurveInfo -n "LeftArmDnIK2PC";
	rename -uid "4266A4C8-4CDC-D289-27C1-2D827E081497";
	setAttr ".pr" 0.24999840593699099;
createNode distanceBetween -n "LeftArmDnIK1ChkDB";
	rename -uid "71506A3C-4D74-F78B-2327-F3BB4C2F3D52";
createNode pointOnCurveInfo -n "LeftArmDnIK1ChkPC";
	rename -uid "80B4BA57-41CB-7F7A-A1E7-98B9CBBD4CA1";
createNode pointOnCurveInfo -n "LeftArmDnIK2ChkPC";
	rename -uid "B2EC0B2F-473A-9224-2087-C7A30E2449A1";
	setAttr ".pr" 0.24999840593699099;
createNode multDoubleLinear -n "LeftArmDnIK2CrvPointMD";
	rename -uid "0EA81DBF-4EC9-365A-5EDD-CC9654AA8362";
	setAttr ".i2" 8.2067906844019731;
createNode multiplyDivide -n "LeftArmDnIK2DvdMD";
	rename -uid "A4C87689-4715-606D-707A-AB81BD0B3300";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmDnIK2DB";
	rename -uid "305644B0-4491-6732-7733-90ACCD6D1E88";
createNode pointOnCurveInfo -n "LeftArmDnIK3PC";
	rename -uid "ACC9A8E7-4FE1-E647-5860-70A572DE541D";
	setAttr ".pr" 0.49999681187398048;
createNode distanceBetween -n "LeftArmDnIK2ChkDB";
	rename -uid "027683CB-4765-D081-C364-84A1180FBA71";
createNode pointOnCurveInfo -n "LeftArmDnIK3ChkPC";
	rename -uid "433B9F24-4F0D-8DD5-6D65-F7847441BA60";
	setAttr ".pr" 0.49999681187398048;
createNode multDoubleLinear -n "LeftArmDnIK3CrvPointMD";
	rename -uid "20106CFC-451F-5A5A-3EEC-A4A7A64C0129";
	setAttr ".i2" 8.2067906844019802;
createNode multiplyDivide -n "LeftArmDnIK3DvdMD";
	rename -uid "DFD53238-4E0A-9254-BFAE-42A6A4192214";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmDnIK3DB";
	rename -uid "9045B1CE-461A-DFF7-DCE4-E188A511D23D";
createNode pointOnCurveInfo -n "LeftArmDnIK4PC";
	rename -uid "23B08282-4610-6FAD-13AC-DF911814C015";
	setAttr ".pr" 0.74999521781097012;
createNode distanceBetween -n "LeftArmDnIK3ChkDB";
	rename -uid "C396E975-41F2-99BD-D040-87A130B66D85";
createNode pointOnCurveInfo -n "LeftArmDnIK4ChkPC";
	rename -uid "6140AD80-4C30-0BEF-9CFE-0190594C584A";
	setAttr ".pr" 0.74999521781097012;
createNode multDoubleLinear -n "LeftArmDnIK4CrvPointMD";
	rename -uid "CCDE2DA4-42C0-2618-167F-5299528B08F8";
	setAttr ".i2" 8.2070000000000078;
createNode multiplyDivide -n "LeftArmDnIK4DvdMD";
	rename -uid "FDBFA684-4F13-38DD-9F22-D2822DA92144";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftArmDnIK4DB";
	rename -uid "8F8166D3-46A5-0036-49D2-999E3C0EFBEF";
createNode pointOnCurveInfo -n "LeftArmDnIK5PC";
	rename -uid "4A703DEC-4CE9-1613-0963-FEA9726BE41C";
	setAttr ".pr" 1;
createNode distanceBetween -n "LeftArmDnIK4ChkDB";
	rename -uid "32A3080A-4C80-BFDA-477E-FD8432CA385E";
createNode pointOnCurveInfo -n "LeftArmDnIK5ChkPC";
	rename -uid "E4D30EFE-45A1-B65D-3F68-10B6D9B2971D";
	setAttr ".pr" 1;
createNode decomposeMatrix -n "LeftArm1TwistFixGrpDM";
	rename -uid "8D269E30-439A-4145-FB23-6DB7E07CD5A3";
createNode multMatrix -n "LeftArm1TwistFixGrpMM";
	rename -uid "90EB480F-4014-39A6-1232-9E9838140582";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99876279833535941 -0.04779028654400836 -0.013746314901230025 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 -0.013730605274496972 0.00065700240466419241 -0.99990551494960589 0
		 19.32379150390625 154.63565063476563 -0.79079234600067139 1;
	setAttr ".i[1]" -type "matrix" 0.9987627983353593 -0.04779480243832205 -0.013730605274496975 5.4210108624275222e-20
		 -0.04779028654400834 -0.99885717540591445 0.00065700240466419219 8.6736173798840355e-19
		 -0.013746314901230015 2.9542784335391357e-13 -0.99990551494960556 -3.944304526105059e-31
		 -11.92067250374544 155.38250600738655 -0.62698626871304597 0.99999999999999989;
createNode unitConversion -n "unitConversion6";
	rename -uid "1BDC802A-4008-005E-0B85-7593E4A2BD13";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "LeftArm1TwistFixUpvec_rotateZ";
	rename -uid "2B31DF7A-4859-25A5-8255-BFB61E5E6A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LeftArmtwistFixVectorProduct";
	rename -uid "BFD5834F-421D-E1B4-89DA-E48A90E99912";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode decomposeMatrix -n "LeftArm1TwsitFixTgPosDM";
	rename -uid "E4031407-4A46-E599-E598-BB973E4570C5";
createNode multMatrix -n "LeftArm1TwsitFixTgPosMM";
	rename -uid "0306A481-4CD9-C0F5-63CA-15A2531CD4E2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99869356678365495 -0.047786973849834366 0.018098751205999332 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 0.018078067507984762 -0.00086502623856609469 -0.99983620418785779 0
		 51.590176551017358 153.091720694933 -1.2348856685805416 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365495 -0.047794802438320995 0.018078067507984769 0
		 -0.04778697384983438 -0.99885717540591434 -0.00086502623856609534 0 0.018098751205999325 2.9541578701298531e-13 -0.99983620418785746 0
		 -44.1846374887756 155.3825060073863 -2.034905738609349 1;
createNode decomposeMatrix -n "LeftArmIKhDM";
	rename -uid "6225EA24-4B78-E040-7525-0BB917E997BF";
createNode multMatrix -n "LeftArmIKhMM";
	rename -uid "84723B38-4C62-2CD6-94BF-6DBE55934FD5";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 84.374662025947146 151.52299996156205 -0.64075121912623278 1;
	setAttr ".i[1]" -type "matrix" 0.9988569171616527 -0.047794802438312738 0.0007182605391359404 5.4210108624275222e-20
		 -0.047794790081457483 -0.9988571754059149 -3.4368397913073917e-05 8.6736173798840355e-19
		 0.00071908232411523076 2.9544199534278195e-13 -0.99999974146027215 -3.944304526105059e-31
		 -77.035744069242568 155.38250605296622 -0.69614644094709432 0.99999999999999989;
createNode decomposeMatrix -n "LeftArmPVSysGrpDM";
	rename -uid "BE8EED02-494D-8D66-E662-E7B7A7B6C82D";
createNode multMatrix -n "LeftArmPVSysGrpMM";
	rename -uid "6044B854-4A8C-8E53-A5A8-238C5A30C022";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99876279833535941 -0.047790286544008374 -0.013746314901230022 0
		 -0.047794802438321286 -0.99885717540591445 2.9554773278113256e-13 0 -0.013730605274496977 0.00065700240466405884 -0.99990551494960578 0
		 19.323792457580566 154.63565063476557 -0.7907923465813429 1;
	setAttr ".i[1]" -type "matrix" 0.99876279833535919 -0.047794802438321703 -0.013730605274496972 0
		 -0.047790286544008354 -0.99885717540591457 0.00065700240466419306 0 -0.013746314901230024 2.9541099842726523e-13 -0.99990551494960578 0
		 -11.920673456247853 155.38250605296716 -0.62698625619913717 1;
createNode unitConversion -n "unitConversion2";
	rename -uid "837DD365-495B-9117-5B44-D689A8A08C88";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "LeftArmPVUpvec_rotateZ";
	rename -uid "A79E85E0-476C-2AFB-CD8F-4096B1744A3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LeftArmPVVP";
	rename -uid "01ADC213-4F44-E8DF-AFF9-D79B368882B4";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode decomposeMatrix -n "LeftArmPVTgPosDM";
	rename -uid "942C15F2-47C3-B579-FDC8-CB85D218279D";
createNode multMatrix -n "LeftArmPVTgPosMM";
	rename -uid "F91B0BDD-4BB1-7F32-9C0D-B4AD1E4B9F22";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99885691716165226 -0.047794790081465845 0.00071908232411522881 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 0.0007182605391359391 -3.436839791305245e-05 -0.99999974146027226 0
		 84.374662025947188 151.52299996156211 -0.64075121912623256 1;
	setAttr ".i[1]" -type "matrix" 0.9988569171616527 -0.047794802438312738 0.0007182605391359404 5.4210108624275222e-20
		 -0.047794790081457483 -0.9988571754059149 -3.4368397913073917e-05 8.6736173798840355e-19
		 0.00071908232411523076 2.9544199534278195e-13 -0.99999974146027215 -3.944304526105059e-31
		 -77.035744069242568 155.38250605296622 -0.69614644094709432 0.99999999999999989;
createNode decomposeMatrix -n "LeftArmIKMovePosDM";
	rename -uid "D1A6CEF3-410E-4802-C9E9-6689BA3D5713";
createNode multMatrix -n "LeftArmIKMovePosMM";
	rename -uid "D5EEA86D-4C04-060C-B05D-C9ADF4C8CA77";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99885691716165259 -0.04779479008145756 0.00071908232411523119 0
		 -0.047794802438312987 -0.99885717540591523 2.9544171403490636e-13 0 0.00071826053913593975 -3.4368397913074412e-05 -0.99999974146027237 0
		 84.374662025947174 151.52299996156211 -0.64075121912623223 1;
	setAttr ".i[1]" -type "matrix" 0.9988569171616527 -0.047794802438312738 0.0007182605391359404 5.4210108624275222e-20
		 -0.047794790081457483 -0.9988571754059149 -3.4368397913073917e-05 8.6736173798840355e-19
		 0.00071908232411523076 2.9544199534278195e-13 -0.99999974146027215 -3.944304526105059e-31
		 -77.035744069242568 155.38250605296622 -0.69614644094709432 0.99999999999999989;
createNode decomposeMatrix -n "LeftArmPVStretchPosDM";
	rename -uid "45258319-46FE-C5D9-93DA-98965ACC6158";
createNode multMatrix -n "LeftArmPVStretchPosMM";
	rename -uid "ACA1BF4A-4C95-9284-6576-40A74BDF68C6";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99876279833535941 -0.047790286544008388 -0.01374631490122938 0
		 0.047794802438325353 0.99885717540591434 -5.4210108624275222e-20 0 0.013730605274482209 -0.00065700240495926605 0.99990551494960578 0
		 51.590039435944071 153.09172730145156 -1.2448847138134786 1;
	setAttr ".i[1]" -type "matrix" 0.9987627983353593 0.047794802438325151 0.013730605274482209 0
		 -0.047790286544008354 0.99885717540591434 -0.00065700240495926605 0 -0.01374631490122938 0 0.99990551494960567 0
		 -44.227027215313299 -155.38250605296676 0.63698625624506189 1;
createNode decomposeMatrix -n "LeftArm1ArcPosDM";
	rename -uid "BA55B4BE-4CE9-0E0A-A2E9-06B0D4E260C8";
createNode multMatrix -n "LeftArm1ArcPosMM";
	rename -uid "F131F253-455A-8D79-073D-AEAC558274FF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99876279833535941 -0.04779028654400836 -0.013746314901230025 0
		 -0.047794802438321272 -0.99885717540591457 2.9541386697973238e-13 0 -0.013730605274496972 0.00065700240466419241 -0.99990551494960589 0
		 19.32379150390625 154.63565063476563 -0.79079234600067139 1;
	setAttr ".i[1]" -type "matrix" 0.9987627983353593 -0.04779480243832205 -0.013730605274496975 5.4210108624275222e-20
		 -0.04779028654400834 -0.99885717540591445 0.00065700240466419219 8.6736173798840355e-19
		 -0.013746314901230015 2.9542784335391357e-13 -0.99990551494960556 -3.944304526105059e-31
		 -11.92067250374544 155.38250600738655 -0.62698626871304597 0.99999999999999989;
createNode decomposeMatrix -n "LeftArm2ArcPosDM";
	rename -uid "1198F356-468F-4BCB-B7B0-548AB48934C3";
createNode multMatrix -n "LeftArm2ArcPosMM";
	rename -uid "C5A1FA84-4BC6-B782-79F7-689C94E59B44";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99869356678365495 -0.047786973849834345 0.018098751205999321 0
		 -0.047794802438321259 -0.99885717540591457 2.9539342976878097e-13 0 0.018078067507984758 -0.00086502623856607366 -0.99983620418785768 0
		 51.590176551017358 153.091720694933 -1.2348856685805416 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365495 -0.047794802438320995 0.018078067507984769 0
		 -0.04778697384983438 -0.99885717540591434 -0.00086502623856609534 0 0.018098751205999325 2.9541578701298531e-13 -0.99983620418785746 0
		 -44.1846374887756 155.3825060073863 -2.034905738609349 1;
createNode decomposeMatrix -n "LeftArm3ArcPosDM";
	rename -uid "E03E29DA-405C-260A-E5B3-74A4A6EF9B8B";
createNode multMatrix -n "LeftArm3ArcPosMM";
	rename -uid "5548344C-4FB3-ADDE-E61E-F5A049A5CD3C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99885691716165204 -0.047794790081465845 0.00071908232429836129 0
		 -0.047794802438321272 -0.99885717540591479 2.9544171403490636e-13 0 0.00071826053931886037 -3.4368397921833044e-05 -0.99999974146027237 0
		 84.374663284504194 151.52299985570798 -0.6407512027736727 1;
	setAttr ".i[1]" -type "matrix" 0.99885691716165204 -0.047794802438321078 0.00071826053931885376 0
		 -0.047794790081465865 -0.99885717540591445 -3.436839792180478e-05 0 0.00071908232429835131 2.9541382984556732e-13 -0.99999974146027193 0
		 -77.035745331430547 155.38250600738618 -0.69614642551625905 1;
createNode distanceBetween -n "LeftArmDnArcDB";
	rename -uid "F3B125BA-4E9D-5781-5603-07BE0B810EBF";
createNode multDoubleLinear -n "LeftArmArcDistMultML";
	rename -uid "0B971FE8-48E3-A63A-2CAC-EA803F25D98C";
	setAttr ".i2" 3;
createNode addDoubleLinear -n "LeftArmArcDistSumALAL";
	rename -uid "F7CF561C-4C8D-C9AE-378E-D8A984AD596D";
createNode distanceBetween -n "LeftArmUpArcDB";
	rename -uid "F69C15A5-44A9-41BF-8574-3C984AD9EA99";
createNode rebuildCurve -n "LeftArmUpArcCrvRC";
	rename -uid "EB8A8F16-4AA3-448B-6EF3-83A93D99BE83";
	setAttr ".s" 2;
	setAttr ".kr" 0;
createNode detachCurve -n "LeftArmArcDC";
	rename -uid "62CE30EA-49CF-332A-B86F-19B66903BADA";
	setAttr -s 2 ".oc";
createNode makeThreePointCircularArc -n "LeftArmTPC";
	rename -uid "EE8F1D9A-4DCD-E9AB-DF7D-31BDDC931768";
	setAttr ".s" 10;
createNode setRange -n "LeftArmAngleSR";
	rename -uid "520F9208-4D33-4B81-2CF2-A6B838A3164B";
createNode addDoubleLinear -n "LeftArmAngleAL";
	rename -uid "6EAA233E-47C6-ADEB-2CBC-07B56D9260FB";
createNode unitConversion -n "unitConversion3";
	rename -uid "6477FE7B-4C4C-BD40-6C4A-448788FCBEAF";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LeftArmOutAG";
	rename -uid "3CFB2FA2-4BC2-1E95-E98D-CF8F76B6D211";
createNode plusMinusAverage -n "LeftArmVec3ToArcPA";
	rename -uid "D3E0F0C2-4C12-308E-E257-D987A681F070";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LeftArmVec3To1PA";
	rename -uid "1851C256-47ED-3A15-72F6-8C93E769813B";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion4";
	rename -uid "0D1380DB-456E-E51C-DB85-EA8191006878";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LeftArmInAG";
	rename -uid "0CD6B8F3-4277-7AF4-C90C-3996FF4A299C";
createNode plusMinusAverage -n "LeftArmVecArcTo1PA";
	rename -uid "7B2ED639-4F66-DF2A-2D97-409C6E9782D4";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion5";
	rename -uid "312C172B-40B3-A040-CA22-0DBD7314F949";
	setAttr ".cf" 57.295779513082323;
createNode rebuildCurve -n "LeftArmDnArcCrvRC";
	rename -uid "46B61247-474D-E74C-1366-63973586B56B";
	setAttr ".s" 2;
	setAttr ".kr" 0;
createNode decomposeMatrix -n "LeftArmUpIKChkCrvDM";
	rename -uid "D31C71A1-41E3-ED52-C527-A0861E368328";
createNode multMatrix -n "LeftArmUpIKChkCrvMM";
	rename -uid "4429DD37-47C7-3533-834A-A38532653555";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.9987627983353593 -0.04779480243832205 -0.013730605274496975 5.4210108624275222e-20
		 -0.04779028654400834 -0.99885717540591445 0.00065700240466419219 8.6736173798840355e-19
		 -0.013746314901230015 2.9542784335391357e-13 -0.99990551494960556 -3.944304526105059e-31
		 -11.92067250374544 155.38250600738655 -0.62698626871304597 0.99999999999999989;
createNode decomposeMatrix -n "LeftArmDnIKChkCrvDM";
	rename -uid "29A04193-4561-24D4-97B7-8CB5EE20FB7B";
createNode multMatrix -n "LeftArmDnIKChkCrvMM";
	rename -uid "883C9C48-40AE-1F51-EA80-DCA375A73192";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365495 -0.047794802438320995 0.018078067507984769 0
		 -0.04778697384983438 -0.99885717540591434 -0.00086502623856609534 0 0.018098751205999325 2.9541578701298531e-13 -0.99983620418785746 0
		 -44.1846374887756 155.3825060073863 -2.034905738609349 1;
createNode blendColors -n "LeftWristFKScaleBC";
	rename -uid "998469DC-4DD5-9404-805D-6CA63E41C624";
createNode blendColors -n "LeftWristIKScaleBC";
	rename -uid "1F8E3B8B-4392-DD9A-E08F-A3BE870E6E96";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3AFC2A24-4FB7-825D-B091-BB8450CE2741";
	setAttr -s 29 ".lnk";
	setAttr -s 21 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "4CB66612-4ADE-3645-25B2-149950F7F382";
	addAttr -s false -ci true -h true -sn "physicalSky" -ln "physicalSky" -at "message";
	setAttr ".imageFilePrefix" -type "string" "<Scene>\\<RenderLayer>";
	setAttr ".preRenderMel" -type "string" "";
	setAttr ".postRenderMel" -type "string" "";
	setAttr ".preRenderLayerMel" -type "string" "";
	setAttr ".postRenderLayerMel" -type "string" "";
	setAttr ".preRenderFrameMel" -type "string" "";
	setAttr ".postRenderFrameMel" -type "string" "";
	setAttr ".renderViewState" -type "string" "AAAA/wAAABI/8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAegBpAHAAcwAAAAAAAAAGAGwAegB3AAAAXwAAAAAAAAAAQFkAAAAAAAAAAAACAAAABgAAAG4AQwA6AFwAVQBzAGUAcgBzAFwAUgBJAC0AUABDADAANABcAEQAbwBjAHUAbQBlAG4AdABzAFwAbQBhAHkAYQBcAHAAcgBvAGoAZQBjAHQAcwBcAGQAZQBmAGEAdQBsAHQAXABpAG0AYQBnAGUAcwAAAAAAAABAAEMAOgAvAFAAcgBvAGcAcgBhAG0ARABhAHQAYQAvAFIAZQBkAHMAaABpAGYAdAAvAEQAYQB0AGEALwBMAFUAVAAAAEwAQwA6AC8AUAByAG8AZwByAGEAbQAgAEYAaQBsAGUAcwAvAEEAdQB0AG8AZABlAHMAawAvAE0AYQB5AGEAMgAwADEAOAAvAGIAaQBuAAAASABDADoALwBQAHIAbwBnAHIAYQBtAEQAYQB0AGEALwBSAGUAZABzAGgAaQBmAHQALwBEAGEAdABhAC8AUAByAGUAcwBlAHQAcwAAAEwAQwA6AC8AUAByAG8AZwByAGEAbQAgAEYAaQBsAGUAcwAvAEEAdQB0AG8AZABlAHMAawAvAE0AYQB5AGEAMgAwADEAOAAvAGIAaQBuAAAAAQAAAAEAAABUAEYAcgBhAG0AZQAgADwAZgByAGEAbQBlAD4AOgAgADwAZABhAHQAZQA+ACAAPAB0AGkAbQBlAD4AIAAoADwAZgByAGEAbQBlAHQAaQBtAGUAPgApADbAAAAAAAAANsAAAAAAAAA2wAAAAAAAAAEAAQABP/AAAAAAAAA/8AAAAAAAAD/wAAAAAAAAAQEBAQAAAAUB";
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "B523C929-4FE9-6302-0EF6-609E459562FA";
	setAttr ".clrMgmtDisplayMode" -type "string" "RS_COLORMANAGEMENTDISPLAYMODE_SRGB";
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "46F90027-45C4-67F0-E2B6-78BAB146C079";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "919FF25F-423E-B7FE-194A-D5842801D1FA";
createNode displayLayerManager -n "layerManager";
	rename -uid "3F68BC62-477B-509E-3283-669F45CE614B";
createNode displayLayer -n "defaultLayer";
	rename -uid "DB69D653-4C06-77B5-FC67-BB8AB16FC4FF";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "782128F2-47FA-E53C-3ABE-18899CF54B5B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C6A93259-4B9B-CA7E-84CB-9483DD130699";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "190BDA7B-4B24-AF1E-8130-7EB4655EF3FC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "LeftRN";
	rename -uid "BB56C087-450A-197B-95E3-92A7E5F6FA62";
	setAttr ".fn[0]" -type "string" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitArm.ma";
	setAttr -s 37 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"LeftRN"
		"LeftRN" 0
		"LeftRN" 64
		2 "|Left:FitArm" "scale" " -type \"double3\" 1 1 1"
		2 "|Left:FitArm|Left:FitScapula" "translate" " -type \"double3\" 0 0 0"
		2 "|Left:FitArm|Left:FitScapula" "translateY" " -av"
		2 "|Left:FitArm|Left:FitScapula" "translateZ" " -av"
		2 "|Left:FitArm|Left:FitScapula" "translateX" " -av"
		2 "|Left:FitArm|Left:FitScapula" "rotate" " -type \"double3\" 0 0 0"
		2 "|Left:FitArm|Left:FitScapula" "rotateX" " -av"
		2 "|Left:FitArm|Left:FitScapula" "rotateY" " -av"
		2 "|Left:FitArm|Left:FitScapula" "rotateZ" " -av"
		2 "|Left:FitArm|Left:FitScapula" "scale" " -type \"double3\" 1 1 1"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder" "translate" " -type \"double3\" 2 0 0"
		
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder" "translateX" " -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder" "translateY" " -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder" "translateZ" " -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder" "rotateY" " -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow" "translate" 
		" -type \"double3\" 5 0 1"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow" "translateX" 
		" -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow" "translateY" 
		" -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow" "translateZ" 
		" -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow" "rotateY" 
		" -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist" 
		"translate" " -type \"double3\" 5 0 -1"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist" 
		"translateX" " -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist" 
		"translateY" " -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist" 
		"translateZ" " -av"
		2 "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist" 
		"rotate" " -type \"double3\" 0 0 0"
		3 "Left:ShoulderAlignedDM.outputScale" "|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder.scale" 
		""
		3 "Left:Shoulder2ElbowInitDM.outputScale" "|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder|Left:FitInitElbow.scale" 
		""
		3 "Left:WristAlignedInitDM.outputScale" "|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder|Left:FitInitElbow|Left:FitInitWrist.scale" 
		""
		5 3 "LeftRN" "|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder.Length" 
		"LeftRN.placeHolderList[1]" ""
		5 0 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder.scale" "|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder.scale" 
		"LeftRN.placeHolderList[2]" "LeftRN.placeHolderList[3]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder|Left:FitInitElbow.Length" 
		"LeftRN.placeHolderList[4]" ""
		5 0 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow.scale" 
		"|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder|Left:FitInitElbow.scale" "LeftRN.placeHolderList[5]" 
		"LeftRN.placeHolderList[6]" ""
		5 0 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist.scale" 
		"|Left:FitArm|Left:FitInitScapula|Left:FitInitShoulder|Left:FitInitElbow|Left:FitInitWrist.scale" 
		"LeftRN.placeHolderList[7]" "LeftRN.placeHolderList[8]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt.worldMatrix" "LeftRN.placeHolderList[9]" 
		""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt.worldMatrix" 
		"LeftRN.placeHolderList[10]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt.worldMatrix" 
		"LeftRN.placeHolderList[11]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.translate" 
		"LeftRN.placeHolderList[12]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.jointOrient" 
		"LeftRN.placeHolderList[13]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.worldMatrix" 
		"LeftRN.placeHolderList[14]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotatePivot" 
		"LeftRN.placeHolderList[15]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotatePivotTranslate" 
		"LeftRN.placeHolderList[16]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotate" 
		"LeftRN.placeHolderList[17]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotateOrder" 
		"LeftRN.placeHolderList[18]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.scale" 
		"LeftRN.placeHolderList[19]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.scale" 
		"LeftRN.placeHolderList[20]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.parentMatrix" 
		"LeftRN.placeHolderList[21]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.parentMatrix" 
		"LeftRN.placeHolderList[22]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.segmentScaleCompensate" 
		"LeftRN.placeHolderList[23]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.inverseScale" 
		"LeftRN.placeHolderList[24]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.translate" 
		"LeftRN.placeHolderList[25]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.jointOrient" 
		"LeftRN.placeHolderList[26]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.worldMatrix" 
		"LeftRN.placeHolderList[27]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotatePivot" 
		"LeftRN.placeHolderList[28]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotatePivotTranslate" 
		"LeftRN.placeHolderList[29]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotate" 
		"LeftRN.placeHolderList[30]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotateOrder" 
		"LeftRN.placeHolderList[31]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.scale" 
		"LeftRN.placeHolderList[32]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.scale" 
		"LeftRN.placeHolderList[33]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.parentMatrix" 
		"LeftRN.placeHolderList[34]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.parentMatrix" 
		"LeftRN.placeHolderList[35]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.segmentScaleCompensate" 
		"LeftRN.placeHolderList[36]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.inverseScale" 
		"LeftRN.placeHolderList[37]" "";
lockNode -l 1 ;
createNode multMatrix -n "LeftArm1IKJntMM";
	rename -uid "B1815DB3-41E8-EEF5-7510-0DB061FD1C7E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LeftArm1IKJntDM";
	rename -uid "48E588D5-4AF9-42A6-3267-08A840D9C09D";
createNode multMatrix -n "LeftArmIK1PosMM";
	rename -uid "6BAF08C6-48DF-17A6-1218-39A2629A946D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LeftArmIK1PosDM";
	rename -uid "36A49A77-464C-0ED8-096E-07BEA0353B63";
createNode multMatrix -n "LeftArmIK2PosMM";
	rename -uid "51687279-4D2E-2164-42C6-749855938B22";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LeftArmIK2PosDM";
	rename -uid "CFAD0DAC-49D8-030D-F4AF-9CAC637AA660";
createNode multMatrix -n "LeftArmIK3PosMM";
	rename -uid "0A12D714-4C95-2A4E-E63E-099E64449C0C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LeftArmIK3PosDM";
	rename -uid "DCFD0303-4F20-BEE1-8A3F-EA9B301137A5";
createNode reference -n "sharedReferenceNode";
	rename -uid "097A1E16-4323-F66B-D481-73ADAA600C2B";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode multMatrix -n "LeftClavicleCtrlGrpMM";
	rename -uid "44CB4402-42EF-6111-9A05-EDAF1ABCDE73";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LeftClavicleCtrlGrpDM";
	rename -uid "CB6F1F81-48C5-6EDD-EDE5-B7ADC20740F5";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "95B21604-4AB7-D720-703B-BCA9FB3E46A9";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -378.57141352835214 -393.31802718440139 ;
	setAttr ".tgi[0].vh" -type "double2" 492.85712327276025 495.69897549710043 ;
createNode multMatrix -n "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_MTMX";
	rename -uid "AF9DD0EB-4C73-054E-51F2-6EBA67037E0F";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.92307692532489094 0 -0.3846153792202619 0 -3.0814879110195774e-33 1 2.4651903288156619e-32 0
		 0.38461537922026195 0 0.92307692532489116 0 5.0990195135927827 1.074253922710262e-14 1.4901160860780749e-08 1;
createNode decomposeMatrix -n "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_DCMX";
	rename -uid "B8C87946-42EF-B4F8-044A-8194DB7C8EDF";
createNode multMatrix -n "LeftElbowFKCtrl2LeftWristFKCtrlGrp_MTMX";
	rename -uid "0F2B4DBB-4219-E5AC-90FF-A6B86BF365EC";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999978 -3.0814879110195774e-33 0 0 0 1 -2.4651903288156619e-32 0
		 0 0 1 0 5.0990195135927987 2.2351518959007826e-14 -1.4901161193847656e-08 1;
createNode decomposeMatrix -n "LeftElbowFKCtrl2LeftWristFKCtrlGrp_DCMX";
	rename -uid "35519861-4E83-C221-1B20-DFB686B33C3F";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D445E4A3-4756-B61E-C8DA-DE90DDE703FA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -751.1904463408498 -290.4761789337042 ;
	setAttr ".tgi[0].vh" -type "double2" 751.1904463408498 290.4761789337042 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".tmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av ".hfs";
	setAttr -av ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcr";
	setAttr -av ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr -av ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -k on ".an";
	setAttr -k on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 26 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av ".edl";
	setAttr -av ".ren" -type "string" "redshift";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf" 51;
	setAttr -av ".imfkey" -type "string" "iff";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av ".pff" yes;
	setAttr -av -k on ".peie";
	setAttr -av ".ifp" -type "string" "<Scene>\\<RenderLayer>";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av ".pram" -type "string" "";
	setAttr -av ".poam" -type "string" "";
	setAttr -av ".prlm" -type "string" "";
	setAttr -av ".polm" -type "string" "";
	setAttr -av ".prm" -type "string" "";
	setAttr -av ".pom" -type "string" "";
	setAttr ".pfrm" -type "string" "";
	setAttr ".pfom" -type "string" "";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w" 1920;
	setAttr -av ".h" 1080;
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar" 1.7769999504089355;
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -av -k off ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off ".eeaa";
	setAttr -av -k off ".engm";
	setAttr -av -k off ".mes";
	setAttr -av -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -av -k off ".mbs";
	setAttr -av -k off ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off ".enpt";
	setAttr -av -k off ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off ".twa";
	setAttr -av -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 4 ".sol";
connectAttr "LeftRN.phl[1]" "LeftArmUpTxML.i2";
connectAttr "LeftRN.phl[2]" "LeftRN.phl[3]";
connectAttr "LeftRN.phl[4]" "LeftArmDnTxML.i2";
connectAttr "LeftRN.phl[5]" "LeftRN.phl[6]";
connectAttr "LeftRN.phl[7]" "LeftRN.phl[8]";
connectAttr "LeftRN.phl[9]" "LeftClavicleCtrlGrpMM.i[0]";
connectAttr "LeftRN.phl[10]" "LeftArmIK1PosMM.i[0]";
connectAttr "LeftRN.phl[11]" "LeftArm1IKJntMM.i[0]";
connectAttr "LeftRN.phl[12]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftRN.phl[13]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftRN.phl[14]" "LeftArmIK2PosMM.i[0]";
connectAttr "LeftRN.phl[15]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftRN.phl[16]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftRN.phl[17]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftRN.phl[18]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftRN.phl[19]" "LeftArmPoleVectorCtrlGrp_scaleConstraint1.tg[0].ts"
		;
connectAttr "LeftRN.phl[20]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftRN.phl[21]" "LeftArmPoleVectorCtrlGrp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "LeftRN.phl[22]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftRN.phl[23]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftRN.phl[24]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftRN.phl[25]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tt";
connectAttr "LeftRN.phl[26]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tjo";
connectAttr "LeftRN.phl[27]" "LeftArmIK3PosMM.i[0]";
connectAttr "LeftRN.phl[28]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].trp";
connectAttr "LeftRN.phl[29]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].trt";
connectAttr "LeftRN.phl[30]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tr";
connectAttr "LeftRN.phl[31]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tro";
connectAttr "LeftRN.phl[32]" "LeftArmIKCtrlGrp_scaleConstraint1.tg[0].ts";
connectAttr "LeftRN.phl[33]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].ts";
connectAttr "LeftRN.phl[34]" "LeftArmIKCtrlGrp_scaleConstraint1.tg[0].tpm";
connectAttr "LeftRN.phl[35]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tpm";
connectAttr "LeftRN.phl[36]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tsc";
connectAttr "LeftRN.phl[37]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tis";
connectAttr "LeftArmCtrlGrp.msg" "LeftArmRigGrp.Grp[0]";
connectAttr "LeftArmSysGrp.msg" "LeftArmRigGrp.Grp[1]";
connectAttr "LeftArmJntGrp.msg" "LeftArmRigGrp.Grp[2]";
connectAttr "LeftArm1IKJnt.msg" "LeftArmRigGrp.IKJnt[0]";
connectAttr "LeftArm2IKJnt.msg" "LeftArmRigGrp.IKJnt[1]";
connectAttr "LeftArm3IKJnt.msg" "LeftArmRigGrp.IKJnt[2]";
connectAttr "LeftArm1FKJnt.msg" "LeftArmRigGrp.FKJnt[0]";
connectAttr "LeftArm2FKJnt.msg" "LeftArmRigGrp.FKJnt[1]";
connectAttr "LeftArm3FKJnt.msg" "LeftArmRigGrp.FKJnt[2]";
connectAttr "LeftArm1DrvJnt.msg" "LeftArmRigGrp.DrvJnt[0]";
connectAttr "LeftArm2DrvJnt.msg" "LeftArmRigGrp.DrvJnt[1]";
connectAttr "LeftArm3DrvJnt.msg" "LeftArmRigGrp.DrvJnt[2]";
connectAttr "LeftArmIKCtrl.msg" "LeftArmRigGrp.Ctrl[0]";
connectAttr "LeftShoulderFKCtrl.msg" "LeftArmRigGrp.Ctrl[1]";
connectAttr "LeftElbowFKCtrl.msg" "LeftArmRigGrp.Ctrl[2]";
connectAttr "LeftWristFKCtrl.msg" "LeftArmRigGrp.Ctrl[3]";
connectAttr "LeftArmIKFKCtrl.msg" "LeftArmRigGrp.Ctrl[4]";
connectAttr "LeftArmPoleVectorCtrl.msg" "LeftArmRigGrp.Ctrl[5]";
connectAttr "LeftClavicleCtrl.msg" "LeftArmRigGrp.Ctrl[6]";
connectAttr "LeftArmIKCtrlPos.msg" "LeftArmRigGrp.Pos[0]";
connectAttr "LeftWristFKCtrlPos.msg" "LeftArmRigGrp.Pos[1]";
connectAttr "LeftArmPVPos.msg" "LeftArmRigGrp.Pos[2]";
connectAttr "LeftArm1TwistFixPos.msg" "LeftArmRigGrp.Pos[3]";
connectAttr "LeftArm2TwistFixPos.msg" "LeftArmRigGrp.Pos[4]";
connectAttr "LeftArm3TwistFixPos.msg" "LeftArmRigGrp.Pos[5]";
connectAttr "LeftArmIKUU.msg" "LeftArmRigGrp.AnimCrv[0]";
connectAttr "LeftArmFKUU.msg" "LeftArmRigGrp.AnimCrv[1]";
connectAttr "LeftArm1ArcPos.msg" "LeftArmRigGrp.Arc[0]";
connectAttr "LeftArm2ArcPos.msg" "LeftArmRigGrp.Arc[1]";
connectAttr "LeftArm3ArcPos.msg" "LeftArmRigGrp.Arc[2]";
connectAttr "LeftArmIKScaleBC.msg" "LeftArmRigGrp.ScaleBlend[0]";
connectAttr "LeftArmFKScaleBC.msg" "LeftArmRigGrp.ScaleBlend[1]";
connectAttr "LeftClavicleCtrlGrpDM.ot" "LeftClavicleCtrlGrp.t";
connectAttr "LeftClavicleCtrlGrpDM.or" "LeftClavicleCtrlGrp.r";
connectAttr "LeftClavicleCtrlGrpDM.os" "LeftClavicleCtrlGrp.s";
connectAttr "LeftClavicleCtrl.SubCtrlVis" "LeftClavicleSubCtrlGrp.v";
connectAttr "LeftClavicleCtrlConsGrpDM.ot" "LeftClavicleCtrlConsGrp.t";
connectAttr "LeftClavicleCtrlConsGrpDM.or" "LeftClavicleCtrlConsGrp.r";
connectAttr "LeftArmIKCtrlGrp_parentConstraint1.crx" "LeftArmIKCtrlGrp.rx";
connectAttr "LeftArmIKCtrlGrp_parentConstraint1.cry" "LeftArmIKCtrlGrp.ry";
connectAttr "LeftArmIKCtrlGrp_parentConstraint1.crz" "LeftArmIKCtrlGrp.rz";
connectAttr "LeftArmIKCtrlGrp_parentConstraint1.ctx" "LeftArmIKCtrlGrp.tx";
connectAttr "LeftArmIKCtrlGrp_parentConstraint1.cty" "LeftArmIKCtrlGrp.ty";
connectAttr "LeftArmIKCtrlGrp_parentConstraint1.ctz" "LeftArmIKCtrlGrp.tz";
connectAttr "LeftArmAutoHideCD.ocr" "LeftArmIKCtrlGrp.v";
connectAttr "LeftArmIKCtrlGrp_scaleConstraint1.csx" "LeftArmIKCtrlGrp.sx";
connectAttr "LeftArmIKCtrlGrp_scaleConstraint1.csy" "LeftArmIKCtrlGrp.sy";
connectAttr "LeftArmIKCtrlGrp_scaleConstraint1.csz" "LeftArmIKCtrlGrp.sz";
connectAttr "LeftArmIKCtrl.ConstCtrlVis" "LeftArmIKConstCtrlShape.v";
connectAttr "LeftArmIKCtrlGrp.ro" "LeftArmIKCtrlGrp_parentConstraint1.cro";
connectAttr "LeftArmIKCtrlGrp.pim" "LeftArmIKCtrlGrp_parentConstraint1.cpim";
connectAttr "LeftArmIKCtrlGrp.rp" "LeftArmIKCtrlGrp_parentConstraint1.crp";
connectAttr "LeftArmIKCtrlGrp.rpt" "LeftArmIKCtrlGrp_parentConstraint1.crt";
connectAttr "LeftArmIKCtrlGrp_parentConstraint1.w0" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftArmIKCtrlGrp.pim" "LeftArmIKCtrlGrp_scaleConstraint1.cpim";
connectAttr "LeftArmIKCtrlGrp_scaleConstraint1.w0" "LeftArmIKCtrlGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_parentConstraint1.ctx" "LeftArmPoleVectorCtrlGrp.tx"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_parentConstraint1.cty" "LeftArmPoleVectorCtrlGrp.ty"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_parentConstraint1.ctz" "LeftArmPoleVectorCtrlGrp.tz"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_parentConstraint1.crx" "LeftArmPoleVectorCtrlGrp.rx"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_parentConstraint1.cry" "LeftArmPoleVectorCtrlGrp.ry"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_parentConstraint1.crz" "LeftArmPoleVectorCtrlGrp.rz"
		;
connectAttr "LeftArmIKCtrl.PVCtrlVis" "LeftArmPoleVectorCtrlGrp.v";
connectAttr "LeftArmPoleVectorCtrlGrp_scaleConstraint1.csx" "LeftArmPoleVectorCtrlGrp.sx"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_scaleConstraint1.csy" "LeftArmPoleVectorCtrlGrp.sy"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_scaleConstraint1.csz" "LeftArmPoleVectorCtrlGrp.sz"
		;
connectAttr "LeftArmAutoHideCD.ocr" "LeftArmPoleVectorCtrlShape.v";
connectAttr "LeftArmPoleVectorCtrlGrp.ro" "LeftArmPoleVectorCtrlGrp_parentConstraint1.cro"
		;
connectAttr "LeftArmPoleVectorCtrlGrp.pim" "LeftArmPoleVectorCtrlGrp_parentConstraint1.cpim"
		;
connectAttr "LeftArmPoleVectorCtrlGrp.rp" "LeftArmPoleVectorCtrlGrp_parentConstraint1.crp"
		;
connectAttr "LeftArmPoleVectorCtrlGrp.rpt" "LeftArmPoleVectorCtrlGrp_parentConstraint1.crt"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_parentConstraint1.w0" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftArmPoleVectorCtrlGrp.pim" "LeftArmPoleVectorCtrlGrp_scaleConstraint1.cpim"
		;
connectAttr "LeftArmPoleVectorCtrlGrp_scaleConstraint1.w0" "LeftArmPoleVectorCtrlGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "LeftArmAutoHideCD.ocg" "LeftShoulderFKCtrlGrp.v";
connectAttr "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_DCMX.ot" "LeftElbowFKCtrlGrp.t"
		;
connectAttr "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_DCMX.or" "LeftElbowFKCtrlGrp.r"
		;
connectAttr "LeftArmAutoHideCD.ocg" "LeftElbowFKCtrlGrp.v";
connectAttr "LeftElbowFKCtrl2LeftWristFKCtrlGrp_DCMX.ot" "LeftWristFKCtrlGrp.t";
connectAttr "LeftElbowFKCtrl2LeftWristFKCtrlGrp_DCMX.or" "LeftWristFKCtrlGrp.r";
connectAttr "LeftArmAutoHideCD.ocg" "LeftWristFKCtrlGrp.v";
connectAttr "LeftArmIKFKCtrlGrpDM.ot" "LeftArmIKFKCtrlGrp.t";
connectAttr "LeftArmIKFKCtrlGrpDM.or" "LeftArmIKFKCtrlGrp.r";
connectAttr "LeftWristFKScaleBC.op" "LeftArmIKFKWristScale.FKScale";
connectAttr "LeftWristIKScaleBC.op" "LeftArmIKFKWristScale.IKScale";
connectAttr "LeftArmUpArcDM.ot" "LeftArmUpArcCtrlGrp.t";
connectAttr "LeftArmUpArcCtrlGrp_tangentConstraint1.crx" "LeftArmUpArcCtrlGrp.rx"
		;
connectAttr "LeftArmUpArcCtrlGrp_tangentConstraint1.cry" "LeftArmUpArcCtrlGrp.ry"
		;
connectAttr "LeftArmUpArcCtrlGrp_tangentConstraint1.crz" "LeftArmUpArcCtrlGrp.rz"
		;
connectAttr "LeftArmIKFKCtrl.ArcCtrlVis" "LeftArmUpArcCtrlGrp.v";
connectAttr "LeftClavicleCtrlGrp.s" "LeftArmUpArcCtrlGrp.s";
connectAttr "LeftArmUpArcCtrlGrp.pim" "LeftArmUpArcCtrlGrp_tangentConstraint1.cpim"
		;
connectAttr "LeftArmUpArcCtrlGrp.t" "LeftArmUpArcCtrlGrp_tangentConstraint1.ct";
connectAttr "LeftArmUpArcCtrlGrp.rp" "LeftArmUpArcCtrlGrp_tangentConstraint1.crp"
		;
connectAttr "LeftArmUpArcCtrlGrp.rpt" "LeftArmUpArcCtrlGrp_tangentConstraint1.crt"
		;
connectAttr "LeftArmUpArcCtrlGrp.ro" "LeftArmUpArcCtrlGrp_tangentConstraint1.cro"
		;
connectAttr "LeftArmArcBlendShape.og[0]" "LeftArmUpArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LeftArmUpArcCtrlGrp_tangentConstraint1.w0" "LeftArmUpArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "LeftArm1DrvJnt.wm" "LeftArmUpArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LeftArmUpArcCtrl.t" "LeftArm1CsHandle.t";
connectAttr "LeftArmUpArcCtrl.r" "LeftArm1CsHandle.r";
connectAttr "LeftArmUpArcCtrl.s" "LeftArm1CsHandle.s";
connectAttr "LeftArmMidArcCtrlGrp_parentConstraint1.ctx" "LeftArmMidArcCtrlGrp.tx"
		;
connectAttr "LeftArmMidArcCtrlGrp_parentConstraint1.cty" "LeftArmMidArcCtrlGrp.ty"
		;
connectAttr "LeftArmMidArcCtrlGrp_parentConstraint1.ctz" "LeftArmMidArcCtrlGrp.tz"
		;
connectAttr "LeftArmMidArcCtrlGrp_parentConstraint1.crx" "LeftArmMidArcCtrlGrp.rx"
		;
connectAttr "LeftArmMidArcCtrlGrp_parentConstraint1.cry" "LeftArmMidArcCtrlGrp.ry"
		;
connectAttr "LeftArmMidArcCtrlGrp_parentConstraint1.crz" "LeftArmMidArcCtrlGrp.rz"
		;
connectAttr "LeftArmIKFKCtrl.ArcCtrlVis" "LeftArmMidArcCtrlGrp.v";
connectAttr "LeftArmMidArcCtrlPBGrpPB.orx" "LeftArmMidArcCtrlPBGrp.rx";
connectAttr "LeftArmMidArcCtrlPBGrpPB.ory" "LeftArmMidArcCtrlPBGrp.ry";
connectAttr "LeftArmMidArcCtrlPBGrpPB.orz" "LeftArmMidArcCtrlPBGrp.rz";
connectAttr "LeftArmMidArcCtrlPBGrpPB.otx" "LeftArmMidArcCtrlPBGrp.tx";
connectAttr "LeftArmMidArcCtrlPBGrpPB.oty" "LeftArmMidArcCtrlPBGrp.ty";
connectAttr "LeftArmMidArcCtrlPBGrpPB.otz" "LeftArmMidArcCtrlPBGrp.tz";
connectAttr "LeftClavicleCtrlGrp.s" "LeftArmMidArcCtrlPBGrp.s";
connectAttr "LeftArmMidArcCtrlPBGrp.ro" "LeftArmMidArcCtrlPBGrp_orientConstraint1.cro"
		;
connectAttr "LeftArmMidArcCtrlPBGrp.pim" "LeftArmMidArcCtrlPBGrp_orientConstraint1.cpim"
		;
connectAttr "LeftArm1DrvJnt.r" "LeftArmMidArcCtrlPBGrp_orientConstraint1.tg[0].tr"
		;
connectAttr "LeftArm1DrvJnt.ro" "LeftArmMidArcCtrlPBGrp_orientConstraint1.tg[0].tro"
		;
connectAttr "LeftArm1DrvJnt.pm" "LeftArmMidArcCtrlPBGrp_orientConstraint1.tg[0].tpm"
		;
connectAttr "LeftArm1DrvJnt.jo" "LeftArmMidArcCtrlPBGrp_orientConstraint1.tg[0].tjo"
		;
connectAttr "LeftArmMidArcCtrlPBGrp_orientConstraint1.w0" "LeftArmMidArcCtrlPBGrp_orientConstraint1.tg[0].tw"
		;
connectAttr "LeftArmMidArcCtrlPBGrp.pim" "LeftArmMidArcCtrlPBGrp_pointConstraint1.cpim"
		;
connectAttr "LeftArmMidArcCtrlPBGrp.rp" "LeftArmMidArcCtrlPBGrp_pointConstraint1.crp"
		;
connectAttr "LeftArmMidArcCtrlPBGrp.rpt" "LeftArmMidArcCtrlPBGrp_pointConstraint1.crt"
		;
connectAttr "LeftArmArcPointPos.t" "LeftArmMidArcCtrlPBGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "LeftArmArcPointPos.rp" "LeftArmMidArcCtrlPBGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftArmArcPointPos.rpt" "LeftArmMidArcCtrlPBGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftArmArcPointPos.pm" "LeftArmMidArcCtrlPBGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftArmMidArcCtrlPBGrp_pointConstraint1.w0" "LeftArmMidArcCtrlPBGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftArmMidArcCtrl.t" "LeftArm2UpCsHandle.t";
connectAttr "LeftArmMidArcCtrl.r" "LeftArm2UpCsHandle.r";
connectAttr "LeftArmMidArcCtrl.s" "LeftArm2UpCsHandle.s";
connectAttr "LeftArmMidArcCtrl.t" "LeftArm2DnCsHandle.t";
connectAttr "LeftArmMidArcCtrl.r" "LeftArm2DnCsHandle.r";
connectAttr "LeftArmMidArcCtrl.s" "LeftArm2DnCsHandle.s";
connectAttr "LeftArmMidArcCtrlGrp.ro" "LeftArmMidArcCtrlGrp_parentConstraint1.cro"
		;
connectAttr "LeftArmMidArcCtrlGrp.pim" "LeftArmMidArcCtrlGrp_parentConstraint1.cpim"
		;
connectAttr "LeftArmMidArcCtrlGrp.rp" "LeftArmMidArcCtrlGrp_parentConstraint1.crp"
		;
connectAttr "LeftArmMidArcCtrlGrp.rpt" "LeftArmMidArcCtrlGrp_parentConstraint1.crt"
		;
connectAttr "LeftArm2DrvJnt.t" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftArm2DrvJnt.rp" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftArm2DrvJnt.rpt" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftArm2DrvJnt.r" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftArm2DrvJnt.ro" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftArm2DrvJnt.s" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftArm2DrvJnt.pm" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftArm2DrvJnt.jo" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftArm2DrvJnt.ssc" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftArm2DrvJnt.is" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftArmMidArcCtrlGrp_parentConstraint1.w0" "LeftArmMidArcCtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftArmDnArcDM.ot" "LeftArmDnArcCtrlGrp.t";
connectAttr "LeftArmDnArcCtrlGrp_tangentConstraint1.crx" "LeftArmDnArcCtrlGrp.rx"
		;
connectAttr "LeftArmDnArcCtrlGrp_tangentConstraint1.cry" "LeftArmDnArcCtrlGrp.ry"
		;
connectAttr "LeftArmDnArcCtrlGrp_tangentConstraint1.crz" "LeftArmDnArcCtrlGrp.rz"
		;
connectAttr "LeftArmIKFKCtrl.ArcCtrlVis" "LeftArmDnArcCtrlGrp.v";
connectAttr "LeftClavicleCtrlGrp.s" "LeftArmDnArcCtrlGrp.s";
connectAttr "LeftArmDnArcCtrlGrp.pim" "LeftArmDnArcCtrlGrp_tangentConstraint1.cpim"
		;
connectAttr "LeftArmDnArcCtrlGrp.t" "LeftArmDnArcCtrlGrp_tangentConstraint1.ct";
connectAttr "LeftArmDnArcCtrlGrp.rp" "LeftArmDnArcCtrlGrp_tangentConstraint1.crp"
		;
connectAttr "LeftArmDnArcCtrlGrp.rpt" "LeftArmDnArcCtrlGrp_tangentConstraint1.crt"
		;
connectAttr "LeftArmDnArcCtrlGrp.ro" "LeftArmDnArcCtrlGrp_tangentConstraint1.cro"
		;
connectAttr "LeftArmArcBlendShape.og[1]" "LeftArmDnArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LeftArmDnArcCtrlGrp_tangentConstraint1.w0" "LeftArmDnArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "LeftArm3DrvJnt.wm" "LeftArmDnArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LeftArmDnArcCtrl.t" "LeftArm3CsHandle.t";
connectAttr "LeftArmDnArcCtrl.r" "LeftArm3CsHandle.r";
connectAttr "LeftArmDnArcCtrl.s" "LeftArm3CsHandle.s";
connectAttr "LeftClavicleSysConsGrpDM.ot" "LeftClavicleSysConsGrp.t";
connectAttr "LeftClavicleSysConsGrpDM.or" "LeftClavicleSysConsGrp.r";
connectAttr "LeftShoulderFKCtrl.sy" "LeftArm1DrvJnt.fksy";
connectAttr "LeftShoulderFKCtrl.sz" "LeftArm1DrvJnt.fksz";
connectAttr "LeftArmSquashBA.o" "LeftArm1DrvJnt.IKSquash";
connectAttr "LeftArm1DrvJntRotPB.orx" "LeftArm1DrvJnt.rx";
connectAttr "LeftArm1DrvJntRotPB.ory" "LeftArm1DrvJnt.ry";
connectAttr "LeftArm1DrvJntRotPB.orz" "LeftArm1DrvJnt.rz";
connectAttr "LeftArm1DrvJntTrsBC.op" "LeftArm1DrvJnt.t";
connectAttr "LeftElbowFKCtrl.sy" "LeftArm2DrvJnt.fksy";
connectAttr "LeftElbowFKCtrl.sz" "LeftArm2DrvJnt.fksz";
connectAttr "LeftArmSquashBA.o" "LeftArm2DrvJnt.IKSquash";
connectAttr "LeftArm2DrvJntTrsBC.op" "LeftArm2DrvJnt.t";
connectAttr "LeftArm2DrvJntRotPB.orx" "LeftArm2DrvJnt.rx";
connectAttr "LeftArm2DrvJntRotPB.ory" "LeftArm2DrvJnt.ry";
connectAttr "LeftArm2DrvJntRotPB.orz" "LeftArm2DrvJnt.rz";
connectAttr "LeftArm1DrvJnt.s" "LeftArm2DrvJnt.is";
connectAttr "LeftArm2DrvJnt.s" "LeftArm3DrvJnt.is";
connectAttr "LeftArm3DrvJntORCons.crx" "LeftArm3DrvJnt.rx";
connectAttr "LeftArm3DrvJntORCons.cry" "LeftArm3DrvJnt.ry";
connectAttr "LeftArm3DrvJntORCons.crz" "LeftArm3DrvJnt.rz";
connectAttr "LeftArm3DrvJntTrsBC.op" "LeftArm3DrvJnt.t";
connectAttr "LeftArm3DrvJnt.ro" "LeftArm3DrvJntORCons.cro";
connectAttr "LeftArm3DrvJnt.pim" "LeftArm3DrvJntORCons.cpim";
connectAttr "LeftArm3DrvJnt.jo" "LeftArm3DrvJntORCons.cjo";
connectAttr "LeftArm3DrvJnt.is" "LeftArm3DrvJntORCons.is";
connectAttr "LeftArmIKCtrlPos.r" "LeftArm3DrvJntORCons.tg[0].tr";
connectAttr "LeftArmIKCtrlPos.ro" "LeftArm3DrvJntORCons.tg[0].tro";
connectAttr "LeftArmIKCtrlPos.pm" "LeftArm3DrvJntORCons.tg[0].tpm";
connectAttr "LeftArm3DrvJntORCons.w0" "LeftArm3DrvJntORCons.tg[0].tw";
connectAttr "LeftWristFKCtrlPos.r" "LeftArm3DrvJntORCons.tg[1].tr";
connectAttr "LeftWristFKCtrlPos.ro" "LeftArm3DrvJntORCons.tg[1].tro";
connectAttr "LeftWristFKCtrlPos.pm" "LeftArm3DrvJntORCons.tg[1].tpm";
connectAttr "LeftArm3DrvJntORCons.w1" "LeftArm3DrvJntORCons.tg[1].tw";
connectAttr "LeftArmIKUU.o" "LeftArm3DrvJntORCons.w0";
connectAttr "LeftArmFKUU.o" "LeftArm3DrvJntORCons.w1";
connectAttr "LeftArm3TwistFixGrpDM.ot" "LeftArm3TwistFixGrp.t";
connectAttr "LeftArm3AimGrpAMCons.crx" "LeftArm3AimGrp.rx";
connectAttr "LeftArm3AimGrpAMCons.cry" "LeftArm3AimGrp.ry";
connectAttr "LeftArm3AimGrpAMCons.crz" "LeftArm3AimGrp.rz";
connectAttr "LeftArm3TwistFixPosORCons.crx" "LeftArm3TwistFixPos.rx";
connectAttr "LeftArm3TwistFixPosORCons.cry" "LeftArm3TwistFixPos.ry";
connectAttr "LeftArm3TwistFixPosORCons.crz" "LeftArm3TwistFixPos.rz";
connectAttr "LeftArm3TwistFixPos.ro" "LeftArm3TwistFixPosORCons.cro";
connectAttr "LeftArm3TwistFixPos.pim" "LeftArm3TwistFixPosORCons.cpim";
connectAttr "LeftArm3AimGrp.r" "LeftArm3TwistFixPosORCons.tg[0].tr";
connectAttr "LeftArm3AimGrp.ro" "LeftArm3TwistFixPosORCons.tg[0].tro";
connectAttr "LeftArm3AimGrp.pm" "LeftArm3TwistFixPosORCons.tg[0].tpm";
connectAttr "LeftArm3TwistFixPosORCons.w0" "LeftArm3TwistFixPosORCons.tg[0].tw";
connectAttr "LeftArm3TwistFixSubPos.r" "LeftArm3TwistFixPosORCons.tg[1].tr";
connectAttr "LeftArm3TwistFixSubPos.ro" "LeftArm3TwistFixPosORCons.tg[1].tro";
connectAttr "LeftArm3TwistFixSubPos.pm" "LeftArm3TwistFixPosORCons.tg[1].tpm";
connectAttr "LeftArm3TwistFixPosORCons.w1" "LeftArm3TwistFixPosORCons.tg[1].tw";
connectAttr "LeftArm3AimGrp.pim" "LeftArm3AimGrpAMCons.cpim";
connectAttr "LeftArm3AimGrp.t" "LeftArm3AimGrpAMCons.ct";
connectAttr "LeftArm3AimGrp.rp" "LeftArm3AimGrpAMCons.crp";
connectAttr "LeftArm3AimGrp.rpt" "LeftArm3AimGrpAMCons.crt";
connectAttr "LeftArm3AimGrp.ro" "LeftArm3AimGrpAMCons.cro";
connectAttr "LeftArm3TwsitFixTgPos.t" "LeftArm3AimGrpAMCons.tg[0].tt";
connectAttr "LeftArm3TwsitFixTgPos.rp" "LeftArm3AimGrpAMCons.tg[0].trp";
connectAttr "LeftArm3TwsitFixTgPos.rpt" "LeftArm3AimGrpAMCons.tg[0].trt";
connectAttr "LeftArm3TwsitFixTgPos.pm" "LeftArm3AimGrpAMCons.tg[0].tpm";
connectAttr "LeftArm3AimGrpAMCons.w0" "LeftArm3AimGrpAMCons.tg[0].tw";
connectAttr "LeftArm3TwistFixGrp.wm" "LeftArm3AimGrpAMCons.wum";
connectAttr "LeftArm3TwistFixSubPosAMCons.crx" "LeftArm3TwistFixSubPos.rx";
connectAttr "LeftArm3TwistFixSubPosAMCons.cry" "LeftArm3TwistFixSubPos.ry";
connectAttr "LeftArm3TwistFixSubPosAMCons.crz" "LeftArm3TwistFixSubPos.rz";
connectAttr "LeftArm3TwistFixSubPos.pim" "LeftArm3TwistFixSubPosAMCons.cpim";
connectAttr "LeftArm3TwistFixSubPos.t" "LeftArm3TwistFixSubPosAMCons.ct";
connectAttr "LeftArm3TwistFixSubPos.rp" "LeftArm3TwistFixSubPosAMCons.crp";
connectAttr "LeftArm3TwistFixSubPos.rpt" "LeftArm3TwistFixSubPosAMCons.crt";
connectAttr "LeftArm3TwistFixSubPos.ro" "LeftArm3TwistFixSubPosAMCons.cro";
connectAttr "LeftArm3TwsitFixTgPos.t" "LeftArm3TwistFixSubPosAMCons.tg[0].tt";
connectAttr "LeftArm3TwsitFixTgPos.rp" "LeftArm3TwistFixSubPosAMCons.tg[0].trp";
connectAttr "LeftArm3TwsitFixTgPos.rpt" "LeftArm3TwistFixSubPosAMCons.tg[0].trt"
		;
connectAttr "LeftArm3TwsitFixTgPos.pm" "LeftArm3TwistFixSubPosAMCons.tg[0].tpm";
connectAttr "LeftArm3TwistFixSubPosAMCons.w0" "LeftArm3TwistFixSubPosAMCons.tg[0].tw"
		;
connectAttr "LeftArm3AssiAPos.wm" "LeftArm3TwistFixSubPosAMCons.wum";
connectAttr "LeftArm3TwsitFixTgPosPB.otx" "LeftArm3TwsitFixTgPos.tx";
connectAttr "LeftArm3TwsitFixTgPosPB.oty" "LeftArm3TwsitFixTgPos.ty";
connectAttr "LeftArm3TwsitFixTgPosPB.otz" "LeftArm3TwsitFixTgPos.tz";
connectAttr "LeftArm2TwistFixGrpDM.ot" "LeftArm2TwistFixGrp.t";
connectAttr "LeftArm2AimGrpAMCons.crx" "LeftArm2AimGrp.rx";
connectAttr "LeftArm2AimGrpAMCons.cry" "LeftArm2AimGrp.ry";
connectAttr "LeftArm2AimGrpAMCons.crz" "LeftArm2AimGrp.rz";
connectAttr "unitConversion7.o" "LeftArm2TwistFixPos.rx";
connectAttr "LeftArm2AimGrp.pim" "LeftArm2AimGrpAMCons.cpim";
connectAttr "LeftArm2AimGrp.t" "LeftArm2AimGrpAMCons.ct";
connectAttr "LeftArm2AimGrp.rp" "LeftArm2AimGrpAMCons.crp";
connectAttr "LeftArm2AimGrp.rpt" "LeftArm2AimGrpAMCons.crt";
connectAttr "LeftArm2AimGrp.ro" "LeftArm2AimGrpAMCons.cro";
connectAttr "LeftArm2TwsitFixTgPos.t" "LeftArm2AimGrpAMCons.tg[0].tt";
connectAttr "LeftArm2TwsitFixTgPos.rp" "LeftArm2AimGrpAMCons.tg[0].trp";
connectAttr "LeftArm2TwsitFixTgPos.rpt" "LeftArm2AimGrpAMCons.tg[0].trt";
connectAttr "LeftArm2TwsitFixTgPos.pm" "LeftArm2AimGrpAMCons.tg[0].tpm";
connectAttr "LeftArm2AimGrpAMCons.w0" "LeftArm2AimGrpAMCons.tg[0].tw";
connectAttr "LeftArm2AssiAPos.wm" "LeftArm2AimGrpAMCons.wum";
connectAttr "LeftArm2TwsitFixTgPosPB.otx" "LeftArm2TwsitFixTgPos.tx";
connectAttr "LeftArm2TwsitFixTgPosPB.oty" "LeftArm2TwsitFixTgPos.ty";
connectAttr "LeftArm2TwsitFixTgPosPB.otz" "LeftArm2TwsitFixTgPos.tz";
connectAttr "LeftArm1IKJntDM.ot" "LeftArm1IKJnt.t";
connectAttr "LeftArm1IKJnt.s" "LeftArm2IKJnt.is";
connectAttr "LeftArmUpTxML.o" "LeftArm2IKJnt.tx";
connectAttr "LeftArm2IKJnt.s" "LeftArm3IKJnt.is";
connectAttr "LeftArmDnTxML.o" "LeftArm3IKJnt.tx";
connectAttr "LeftArm3IKJntQE.ort" "LeftArm3IKJnt.r";
connectAttr "LeftArm3IKJnt.tx" "effector6.tx";
connectAttr "LeftArm3IKJnt.ty" "effector6.ty";
connectAttr "LeftArm3IKJnt.tz" "effector6.tz";
connectAttr "LeftArm1FKJntDM.ot" "LeftArm1FKJnt.t";
connectAttr "LeftArm1FKJntQE.ort" "LeftArm1FKJnt.r";
connectAttr "LeftArm1FKJnt.s" "LeftArm2FKJnt.is";
connectAttr "LeftArm2FKJntDM.ot" "LeftArm2FKJnt.t";
connectAttr "LeftArm2FKJntQE.ort" "LeftArm2FKJnt.r";
connectAttr "LeftArm2FKJnt.s" "LeftArm3FKJnt.is";
connectAttr "LeftArm3FKJntDM.ot" "LeftArm3FKJnt.t";
connectAttr "LeftArm3FKJntQE.ort" "LeftArm3FKJnt.r";
connectAttr "LeftArmUp1ArcJnt.s" "LeftArmUp2ArcJnt.is";
connectAttr "LeftArmUpIK1CrvPointMD.o" "LeftArmUp2ArcJnt.tx";
connectAttr "LeftArmUp2ArcJnt.s" "LeftArmUp3ArcJnt.is";
connectAttr "LeftArmUpIK2CrvPointMD.o" "LeftArmUp3ArcJnt.tx";
connectAttr "LeftArmUp3ArcJnt.s" "LeftArmUp4ArcJnt.is";
connectAttr "LeftArmUpIK3CrvPointMD.o" "LeftArmUp4ArcJnt.tx";
connectAttr "LeftArmUp4ArcJnt.s" "LeftArmUp5ArcJnt.is";
connectAttr "LeftArmUpIK4CrvPointMD.o" "LeftArmUp5ArcJnt.tx";
connectAttr "LeftArmUp5ArcJnt.s" "LeftArmDn1ArcJnt.is";
connectAttr "LeftArmDn1ArcJnt.s" "LeftArmDn2ArcJnt.is";
connectAttr "LeftArmDnIK1CrvPointMD.o" "LeftArmDn2ArcJnt.tx";
connectAttr "LeftArmDn2ArcJnt.s" "LeftArmDn3ArcJnt.is";
connectAttr "LeftArmDnIK2CrvPointMD.o" "LeftArmDn3ArcJnt.tx";
connectAttr "LeftArmDn3ArcJnt.s" "LeftArmDn4ArcJnt.is";
connectAttr "LeftArmDnIK3CrvPointMD.o" "LeftArmDn4ArcJnt.tx";
connectAttr "LeftArmDn4ArcJnt.s" "LeftArmDn5ArcJnt.is";
connectAttr "LeftArmDnIK4CrvPointMD.o" "LeftArmDn5ArcJnt.tx";
connectAttr "LeftArmDn5ArcJnt.tx" "effector8.tx";
connectAttr "LeftArmDn5ArcJnt.ty" "effector8.ty";
connectAttr "LeftArmDn5ArcJnt.tz" "effector8.tz";
connectAttr "LeftArmUp5ArcJnt.tx" "effector7.tx";
connectAttr "LeftArmUp5ArcJnt.ty" "effector7.ty";
connectAttr "LeftArmUp5ArcJnt.tz" "effector7.tz";
connectAttr "LeftArm1TwistFixGrpDM.ot" "LeftArm1TwistFixGrp.t";
connectAttr "LeftArm1AimGrpAMCons.crx" "LeftArm1AimGrp.rx";
connectAttr "LeftArm1AimGrpAMCons.cry" "LeftArm1AimGrp.ry";
connectAttr "LeftArm1AimGrpAMCons.crz" "LeftArm1AimGrp.rz";
connectAttr "unitConversion6.o" "LeftArm1TwistFixPos.rx";
connectAttr "LeftArm1AimGrp.pim" "LeftArm1AimGrpAMCons.cpim";
connectAttr "LeftArm1AimGrp.t" "LeftArm1AimGrpAMCons.ct";
connectAttr "LeftArm1AimGrp.rp" "LeftArm1AimGrpAMCons.crp";
connectAttr "LeftArm1AimGrp.rpt" "LeftArm1AimGrpAMCons.crt";
connectAttr "LeftArm1AimGrp.ro" "LeftArm1AimGrpAMCons.cro";
connectAttr "LeftArm1TwsitFixTgPos.t" "LeftArm1AimGrpAMCons.tg[0].tt";
connectAttr "LeftArm1TwsitFixTgPos.rp" "LeftArm1AimGrpAMCons.tg[0].trp";
connectAttr "LeftArm1TwsitFixTgPos.rpt" "LeftArm1AimGrpAMCons.tg[0].trt";
connectAttr "LeftArm1TwsitFixTgPos.pm" "LeftArm1AimGrpAMCons.tg[0].tpm";
connectAttr "LeftArm1AimGrpAMCons.w0" "LeftArm1AimGrpAMCons.tg[0].tw";
connectAttr "LeftArm1TwistFixUpvec.wm" "LeftArm1AimGrpAMCons.wum";
connectAttr "LeftArm1TwistFixUpvec_rotateZ.o" "LeftArm1TwistFixUpvec.rz";
connectAttr "LeftArm1TwsitFixTgPosDM.ot" "LeftArm1TwsitFixTgPos.t";
connectAttr "LeftArm1IKJnt.msg" "LeftArmIKh.hsj";
connectAttr "effector6.hp" "LeftArmIKh.hee";
connectAttr "ikRPsolver.msg" "LeftArmIKh.hsv";
connectAttr "LeftArmIKhDM.ot" "LeftArmIKh.t";
connectAttr "LeftArmIKhPVCons.ctx" "LeftArmIKh.pvx";
connectAttr "LeftArmIKhPVCons.cty" "LeftArmIKh.pvy";
connectAttr "LeftArmIKhPVCons.ctz" "LeftArmIKh.pvz";
connectAttr "LeftArmIKh.pim" "LeftArmIKhPVCons.cpim";
connectAttr "LeftArm1IKJnt.pm" "LeftArmIKhPVCons.ps";
connectAttr "LeftArm1IKJnt.t" "LeftArmIKhPVCons.crp";
connectAttr "LeftArmPoleVectorCtrl.t" "LeftArmIKhPVCons.tg[0].tt";
connectAttr "LeftArmPoleVectorCtrl.rp" "LeftArmIKhPVCons.tg[0].trp";
connectAttr "LeftArmPoleVectorCtrl.rpt" "LeftArmIKhPVCons.tg[0].trt";
connectAttr "LeftArmPoleVectorCtrl.pm" "LeftArmIKhPVCons.tg[0].tpm";
connectAttr "LeftArmIKhPVCons.w0" "LeftArmIKhPVCons.tg[0].tw";
connectAttr "LeftArmPVSysGrpDM.or" "LeftArmPVSysGrp.r";
connectAttr "LeftArmPVAmGrpAMCons.crx" "LeftArmPVAmGrp.rx";
connectAttr "LeftArmPVAmGrpAMCons.cry" "LeftArmPVAmGrp.ry";
connectAttr "LeftArmPVAmGrpAMCons.crz" "LeftArmPVAmGrp.rz";
connectAttr "LeftArmPVAmGrp.pim" "LeftArmPVAmGrpAMCons.cpim";
connectAttr "LeftArmPVAmGrp.t" "LeftArmPVAmGrpAMCons.ct";
connectAttr "LeftArmPVAmGrp.rp" "LeftArmPVAmGrpAMCons.crp";
connectAttr "LeftArmPVAmGrp.rpt" "LeftArmPVAmGrpAMCons.crt";
connectAttr "LeftArmPVAmGrp.ro" "LeftArmPVAmGrpAMCons.cro";
connectAttr "LeftArmPVTgPos.t" "LeftArmPVAmGrpAMCons.tg[0].tt";
connectAttr "LeftArmPVTgPos.rp" "LeftArmPVAmGrpAMCons.tg[0].trp";
connectAttr "LeftArmPVTgPos.rpt" "LeftArmPVAmGrpAMCons.tg[0].trt";
connectAttr "LeftArmPVTgPos.pm" "LeftArmPVAmGrpAMCons.tg[0].tpm";
connectAttr "LeftArmPVAmGrpAMCons.w0" "LeftArmPVAmGrpAMCons.tg[0].tw";
connectAttr "LeftArmPVUpvec.wm" "LeftArmPVAmGrpAMCons.wum";
connectAttr "unitConversion2.o" "LeftArmPVAmGrpAMCons.ox";
connectAttr "LeftArmPVSysGrp.msg" "LeftArmPVPos.ag";
connectAttr "LeftArmPVUpvec_rotateZ.o" "LeftArmPVUpvec.rz";
connectAttr "LeftArmPVTgPosDM.ot" "LeftArmPVTgPos.t";
connectAttr "LeftArmIK1PosDM.ot" "LeftArmIK1Pos.t";
connectAttr "LeftArmIK1PosDM.or" "LeftArmIK1Pos.r";
connectAttr "LeftArmIK2PosDM.ot" "LeftArmIK2Pos.t";
connectAttr "LeftArmIK2PosDM.or" "LeftArmIK2Pos.r";
connectAttr "LeftArmIK3PosDM.ot" "LeftArmIK3Pos.t";
connectAttr "LeftArmIK3PosDM.or" "LeftArmIK3Pos.r";
connectAttr "LeftArmIKMovePosDM.ot" "LeftArmIKMovePos.t";
connectAttr "LeftArmIKMovePosDM.or" "LeftArmIKMovePos.r";
connectAttr "LeftArmPVStretchPosDM.ot" "LeftArmPVStretchPos.t";
connectAttr "LeftArm1ArcPosDM.ot" "LeftArm1ArcPos.t";
connectAttr "LeftArm2ArcPosDM.ot" "LeftArm2ArcPos.t";
connectAttr "LeftArm3ArcPosDM.ot" "LeftArm3ArcPos.t";
connectAttr "LeftArmArcPointPosPTCons.ctx" "LeftArmArcPointPos.tx";
connectAttr "LeftArmArcPointPosPTCons.cty" "LeftArmArcPointPos.ty";
connectAttr "LeftArmArcPointPosPTCons.ctz" "LeftArmArcPointPos.tz";
connectAttr "LeftArmArcPointPos.pim" "LeftArmArcPointPosPTCons.cpim";
connectAttr "LeftArmArcPointPos.rp" "LeftArmArcPointPosPTCons.crp";
connectAttr "LeftArmArcPointPos.rpt" "LeftArmArcPointPosPTCons.crt";
connectAttr "LeftArm1ArcPos.t" "LeftArmArcPointPosPTCons.tg[0].tt";
connectAttr "LeftArm1ArcPos.rp" "LeftArmArcPointPosPTCons.tg[0].trp";
connectAttr "LeftArm1ArcPos.rpt" "LeftArmArcPointPosPTCons.tg[0].trt";
connectAttr "LeftArm1ArcPos.pm" "LeftArmArcPointPosPTCons.tg[0].tpm";
connectAttr "LeftArmArcPointPosPTCons.w0" "LeftArmArcPointPosPTCons.tg[0].tw";
connectAttr "LeftArm2ArcPos.t" "LeftArmArcPointPosPTCons.tg[1].tt";
connectAttr "LeftArm2ArcPos.rp" "LeftArmArcPointPosPTCons.tg[1].trp";
connectAttr "LeftArm2ArcPos.rpt" "LeftArmArcPointPosPTCons.tg[1].trt";
connectAttr "LeftArm2ArcPos.pm" "LeftArmArcPointPosPTCons.tg[1].tpm";
connectAttr "LeftArmArcPointPosPTCons.w1" "LeftArmArcPointPosPTCons.tg[1].tw";
connectAttr "LeftArm3ArcPos.t" "LeftArmArcPointPosPTCons.tg[2].tt";
connectAttr "LeftArm3ArcPos.rp" "LeftArmArcPointPosPTCons.tg[2].trp";
connectAttr "LeftArm3ArcPos.rpt" "LeftArmArcPointPosPTCons.tg[2].trt";
connectAttr "LeftArm3ArcPos.pm" "LeftArmArcPointPosPTCons.tg[2].tpm";
connectAttr "LeftArmArcPointPosPTCons.w2" "LeftArmArcPointPosPTCons.tg[2].tw";
connectAttr "LeftArmDnArcDB.d" "LeftArmArcPointPosPTCons.w0";
connectAttr "LeftArmArcDistMultML.o" "LeftArmArcPointPosPTCons.w1";
connectAttr "LeftArmUpArcDB.d" "LeftArmArcPointPosPTCons.w2";
connectAttr "LeftArmUpArcCrvRC.oc" "LeftArmUpArcCrvShape.cr";
connectAttr "LeftArmDnArcCrvRC.oc" "LeftArmDnArcCrvShape.cr";
connectAttr "LeftArm2UpCs.og[0]" "LeftArmUpIKCrvShape.cr";
connectAttr "LeftArmArcBlendShapeGroupId.id" "LeftArmUpIKCrvShape.iog.og[2].gid"
		;
connectAttr "LeftArmArcBlendShapeSet.mwc" "LeftArmUpIKCrvShape.iog.og[2].gco";
connectAttr "LeftArm1CsGroupId.id" "LeftArmUpIKCrvShape.iog.og[3].gid";
connectAttr "LeftArm1CsSet.mwc" "LeftArmUpIKCrvShape.iog.og[3].gco";
connectAttr "LeftArm2UpCsGroupId.id" "LeftArmUpIKCrvShape.iog.og[5].gid";
connectAttr "LeftArm2UpCsSet.mwc" "LeftArmUpIKCrvShape.iog.og[5].gco";
connectAttr "LeftArm1ArcPos.t" "LeftArmUpIKCrvShapeOrig.cp[0]";
connectAttr "LeftArm2ArcPos.t" "LeftArmUpIKCrvShapeOrig.cp[1]";
connectAttr "LeftArm3Cs.og[0]" "LeftArmDnIKCrvShape.cr";
connectAttr "LeftArmArcBlendShapeGroupId1.id" "LeftArmDnIKCrvShape.iog.og[2].gid"
		;
connectAttr "LeftArmArcBlendShapeSet.mwc" "LeftArmDnIKCrvShape.iog.og[2].gco";
connectAttr "LeftArm2DnCsGroupId.id" "LeftArmDnIKCrvShape.iog.og[3].gid";
connectAttr "LeftArm2DnCsSet.mwc" "LeftArmDnIKCrvShape.iog.og[3].gco";
connectAttr "LeftArm3CsGroupId.id" "LeftArmDnIKCrvShape.iog.og[5].gid";
connectAttr "LeftArm3CsSet.mwc" "LeftArmDnIKCrvShape.iog.og[5].gco";
connectAttr "LeftArm2ArcPos.t" "LeftArmDnIKCrvShapeOrig.cp[0]";
connectAttr "LeftArm3ArcPos.t" "LeftArmDnIKCrvShapeOrig.cp[1]";
connectAttr "LeftArmUpIKChkCrvDM.ot" "LeftArmUpIKChkCrv.t";
connectAttr "LeftArmUpIKChkCrvDM.or" "LeftArmUpIKChkCrv.r";
connectAttr "LeftArmDnIKChkCrvDM.ot" "LeftArmDnIKChkCrv.t";
connectAttr "LeftArmDnIKChkCrvDM.or" "LeftArmDnIKChkCrv.r";
connectAttr "LeftArmUp1ArcJnt.msg" "LeftArmUpArcIKh.hsj";
connectAttr "effector7.hp" "LeftArmUpArcIKh.hee";
connectAttr "ikSplineSolver.msg" "LeftArmUpArcIKh.hsv";
connectAttr "LeftArmUpIKCrvShape.ws" "LeftArmUpArcIKh.ic";
connectAttr "LeftArm1TwistFixPos.wm" "LeftArmUpArcIKh.dwum";
connectAttr "LeftArm2TwistFixPos.wm" "LeftArmUpArcIKh.dwue";
connectAttr "LeftArmDn1ArcJnt.msg" "LeftArmDnArcIKh.hsj";
connectAttr "effector8.hp" "LeftArmDnArcIKh.hee";
connectAttr "ikSplineSolver.msg" "LeftArmDnArcIKh.hsv";
connectAttr "LeftArmDnIKCrvShape.ws" "LeftArmDnArcIKh.ic";
connectAttr "LeftArm2TwistFixPos.wm" "LeftArmDnArcIKh.dwum";
connectAttr "LeftArm3TwistFixPos.wm" "LeftArmDnArcIKh.dwue";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmFKScaleBC.b";
connectAttr "LeftWristFKCtrl.s" "LeftArmFKScaleBC.c1";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmIKScaleBC.b";
connectAttr "LeftArmIKCtrl.s" "LeftArmIKScaleBC.c2";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmIKUU.i";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmFKUU.i";
connectAttr "LeftClavicleCtrlConsGrpMM.o" "LeftClavicleCtrlConsGrpDM.imat";
connectAttr "LeftClavicleSubCtrl.wm" "LeftClavicleCtrlConsGrpMM.i[2]";
connectAttr "LeftClavicleCtrlConsGrp.pim" "LeftClavicleCtrlConsGrpMM.i[3]";
connectAttr "LeftArmIKFKCtrl.AutoHideIKFK" "LeftArmAutoHideCD.ft";
connectAttr "LeftArmAutoHideRV.ox" "LeftArmAutoHideCD.ctr";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmAutoHideCD.ctg";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmAutoHideRV.ix";
connectAttr "LeftArmIKFKCtrlGrpMM.o" "LeftArmIKFKCtrlGrpDM.imat";
connectAttr "LeftArm3DrvJnt.wm" "LeftArmIKFKCtrlGrpMM.i[2]";
connectAttr "LeftArmIKFKCtrlGrp.pim" "LeftArmIKFKCtrlGrpMM.i[3]";
connectAttr "LeftArmUpArcMM.o" "LeftArmUpArcDM.imat";
connectAttr "LeftArmUpArcCM.omat" "LeftArmUpArcMM.i[0]";
connectAttr "LeftArmUpArcCtrlGrp.pim" "LeftArmUpArcMM.i[1]";
connectAttr "LeftArmUpArcPC.p" "LeftArmUpArcCM.it";
connectAttr "LeftArmArcBlendShape.og[0]" "LeftArmUpArcPC.ic";
connectAttr "LeftArmArcBlendShapeGroupParts.og" "LeftArmArcBlendShape.ip[0].ig";
connectAttr "LeftArmArcBlendShapeGroupId.id" "LeftArmArcBlendShape.ip[0].gi";
connectAttr "LeftArmArcBlendShapeGroupParts1.og" "LeftArmArcBlendShape.ip[1].ig"
		;
connectAttr "LeftArmArcBlendShapeGroupId1.id" "LeftArmArcBlendShape.ip[1].gi";
connectAttr "LeftArmUpArcCrvShape.ws" "LeftArmArcBlendShape.it[0].itg[0].iti[6000].igt"
		;
connectAttr "LeftArmDnArcCrvShape.ws" "LeftArmArcBlendShape.it[1].itg[0].iti[6000].igt"
		;
connectAttr "LeftArmArcBlendShape_LeftArmArcCrvGrp.o" "LeftArmArcBlendShape.w[0]"
		;
connectAttr "shapeEditorManager.obsv[0]" "LeftArmArcBlendShape.tgdt[0].dpvs";
connectAttr "LeftArmArcBlendShapeGroupId.msg" "LeftArmArcBlendShapeSet.gn" -na;
connectAttr "LeftArmArcBlendShapeGroupId1.msg" "LeftArmArcBlendShapeSet.gn" -na;
connectAttr "LeftArmUpIKCrvShape.iog.og[2]" "LeftArmArcBlendShapeSet.dsm" -na;
connectAttr "LeftArmDnIKCrvShape.iog.og[2]" "LeftArmArcBlendShapeSet.dsm" -na;
connectAttr "LeftArmArcBlendShape.msg" "LeftArmArcBlendShapeSet.ub[0]";
connectAttr "rebuildCurve1.oc" "LeftArmArcBlendShapeGroupParts.ig";
connectAttr "LeftArmArcBlendShapeGroupId.id" "LeftArmArcBlendShapeGroupParts.gi"
		;
connectAttr "LeftArmUpIKCrvShapeOrig.ws" "rebuildCurve1.ic";
connectAttr "rebuildCurve2.oc" "LeftArmArcBlendShapeGroupParts1.ig";
connectAttr "LeftArmArcBlendShapeGroupId1.id" "LeftArmArcBlendShapeGroupParts1.gi"
		;
connectAttr "LeftArmDnIKCrvShapeOrig.ws" "rebuildCurve2.ic";
connectAttr "LeftArmIKFKCtrl.Arc" "LeftArmArcBlendShape_LeftArmArcCrvGrp.i";
connectAttr "LeftArm1CsGroupParts.og" "LeftArm1Cs.ip[0].ig";
connectAttr "LeftArm1CsGroupId.id" "LeftArm1Cs.ip[0].gi";
connectAttr "LeftArm1CsHandle.wm" "LeftArm1Cs.ma";
connectAttr "LeftArm1CsHandleShape.x" "LeftArm1Cs.x";
connectAttr "LeftArm1CsHandleZeroMtx.wim" "LeftArm1Cs.pm";
connectAttr "LeftArmUpIKCrv.wm" "LeftArm1Cs.gm[0]";
connectAttr "LeftArm1CsGroupId.msg" "LeftArm1CsSet.gn" -na;
connectAttr "LeftArmUpIKCrvShape.iog.og[3]" "LeftArm1CsSet.dsm" -na;
connectAttr "LeftArm1Cs.msg" "LeftArm1CsSet.ub[0]";
connectAttr "LeftArmArcBlendShape.og[0]" "LeftArm1CsGroupParts.ig";
connectAttr "LeftArm1CsGroupId.id" "LeftArm1CsGroupParts.gi";
connectAttr "LeftArmMidArcCtrlPBGrp_pointConstraint1.ctx" "LeftArmMidArcCtrlPBGrpPB.itx2"
		;
connectAttr "LeftArmMidArcCtrlPBGrp_pointConstraint1.cty" "LeftArmMidArcCtrlPBGrpPB.ity2"
		;
connectAttr "LeftArmMidArcCtrlPBGrp_pointConstraint1.ctz" "LeftArmMidArcCtrlPBGrpPB.itz2"
		;
connectAttr "LeftArmMidArcCtrlPBGrp_orientConstraint1.crx" "LeftArmMidArcCtrlPBGrpPB.irx2"
		;
connectAttr "LeftArmMidArcCtrlPBGrp_orientConstraint1.cry" "LeftArmMidArcCtrlPBGrpPB.iry2"
		;
connectAttr "LeftArmMidArcCtrlPBGrp_orientConstraint1.crz" "LeftArmMidArcCtrlPBGrpPB.irz2"
		;
connectAttr "LeftArmMidArcCtrlPBGrp.pbw" "LeftArmMidArcCtrlPBGrpPB.w";
connectAttr "LeftArm2UpCsGroupParts.og" "LeftArm2UpCs.ip[0].ig";
connectAttr "LeftArm2UpCsGroupId.id" "LeftArm2UpCs.ip[0].gi";
connectAttr "LeftArm2UpCsHandle.wm" "LeftArm2UpCs.ma";
connectAttr "LeftArm2UpCsHandleShape.x" "LeftArm2UpCs.x";
connectAttr "LeftArm2UpCsHandleZeroMtx.wim" "LeftArm2UpCs.pm";
connectAttr "LeftArmUpIKCrv.wm" "LeftArm2UpCs.gm[0]";
connectAttr "LeftArm2UpCsGroupId.msg" "LeftArm2UpCsSet.gn" -na;
connectAttr "LeftArmUpIKCrvShape.iog.og[5]" "LeftArm2UpCsSet.dsm" -na;
connectAttr "LeftArm2UpCs.msg" "LeftArm2UpCsSet.ub[0]";
connectAttr "LeftArm1Cs.og[0]" "LeftArm2UpCsGroupParts.ig";
connectAttr "LeftArm2UpCsGroupId.id" "LeftArm2UpCsGroupParts.gi";
connectAttr "LeftArm2DnCsGroupParts.og" "LeftArm2DnCs.ip[0].ig";
connectAttr "LeftArm2DnCsGroupId.id" "LeftArm2DnCs.ip[0].gi";
connectAttr "LeftArm2DnCsHandle.wm" "LeftArm2DnCs.ma";
connectAttr "LeftArm2DnCsHandleShape.x" "LeftArm2DnCs.x";
connectAttr "LeftArm2DnCsHandleZeroMtx.wim" "LeftArm2DnCs.pm";
connectAttr "LeftArmDnIKCrv.wm" "LeftArm2DnCs.gm[0]";
connectAttr "LeftArm2DnCsGroupId.msg" "LeftArm2DnCsSet.gn" -na;
connectAttr "LeftArmDnIKCrvShape.iog.og[3]" "LeftArm2DnCsSet.dsm" -na;
connectAttr "LeftArm2DnCs.msg" "LeftArm2DnCsSet.ub[0]";
connectAttr "LeftArmArcBlendShape.og[1]" "LeftArm2DnCsGroupParts.ig";
connectAttr "LeftArm2DnCsGroupId.id" "LeftArm2DnCsGroupParts.gi";
connectAttr "LeftArmDnArcMM.o" "LeftArmDnArcDM.imat";
connectAttr "LeftArmDnArcCM.omat" "LeftArmDnArcMM.i[0]";
connectAttr "LeftArmDnArcCtrlGrp.pim" "LeftArmDnArcMM.i[1]";
connectAttr "LeftArmDnArcPC.p" "LeftArmDnArcCM.it";
connectAttr "LeftArmArcBlendShape.og[1]" "LeftArmDnArcPC.ic";
connectAttr "LeftArm3CsGroupParts.og" "LeftArm3Cs.ip[0].ig";
connectAttr "LeftArm3CsGroupId.id" "LeftArm3Cs.ip[0].gi";
connectAttr "LeftArm3CsHandle.wm" "LeftArm3Cs.ma";
connectAttr "LeftArm3CsHandleShape.x" "LeftArm3Cs.x";
connectAttr "LeftArm3CsHandleZeroMtx.wim" "LeftArm3Cs.pm";
connectAttr "LeftArmDnIKCrv.wm" "LeftArm3Cs.gm[0]";
connectAttr "LeftArm3CsGroupId.msg" "LeftArm3CsSet.gn" -na;
connectAttr "LeftArmDnIKCrvShape.iog.og[5]" "LeftArm3CsSet.dsm" -na;
connectAttr "LeftArm3Cs.msg" "LeftArm3CsSet.ub[0]";
connectAttr "LeftArm2DnCs.og[0]" "LeftArm3CsGroupParts.ig";
connectAttr "LeftArm3CsGroupId.id" "LeftArm3CsGroupParts.gi";
connectAttr "LeftClavicleSysConsGrpMM.o" "LeftClavicleSysConsGrpDM.imat";
connectAttr "LeftClavicleSubCtrl.wm" "LeftClavicleSysConsGrpMM.i[2]";
connectAttr "LeftClavicleSysConsGrp.pim" "LeftClavicleSysConsGrpMM.i[3]";
connectAttr "LeftArmStretchSR.oz" "LeftArmSquashBA.ab";
connectAttr "LeftArmSquashPowMD.ox" "LeftArmSquashBA.i[1]";
connectAttr "LeftArmIKCtrl.Stretch" "LeftArmStretchSR.vx";
connectAttr "LeftArmIKCtrl.PVStretch" "LeftArmStretchSR.vy";
connectAttr "LeftArmIKCtrl.Squash" "LeftArmStretchSR.vz";
connectAttr "LeftArmUpSlideML.o" "LeftArmSquashPowMD.i1x";
connectAttr "LeftArmPVStretch1BA.o" "LeftArmUpSlideML.i1";
connectAttr "LeftArmUpSlideAL.o" "LeftArmUpSlideML.i2";
connectAttr "LeftArmStretchSR.oy" "LeftArmPVStretch1BA.ab";
connectAttr "LeftArmStretchDvMD.ox" "LeftArmPVStretch1BA.i[0]";
connectAttr "LeftArmPvStretch1DvMD.ox" "LeftArmPVStretch1BA.i[1]";
connectAttr "LeftArmCD.ocr" "LeftArmStretchDvMD.i1x";
connectAttr "LeftArmCD.ocg" "LeftArmStretchDvMD.i2x";
connectAttr "LeftArmAllDB.d" "LeftArmCD.ft";
connectAttr "LeftArmSumDistAL.o" "LeftArmCD.st";
connectAttr "LeftArmStretchBA.o" "LeftArmCD.ctr";
connectAttr "LeftArmSumDistAL.o" "LeftArmCD.ctg";
connectAttr "LeftArmIK1Pos.t" "LeftArmAllDB.p1";
connectAttr "LeftArmIKMovePos.t" "LeftArmAllDB.p2";
connectAttr "LeftArm1DB.d" "LeftArmSumDistAL.i1";
connectAttr "LeftArm2DB.d" "LeftArmSumDistAL.i2";
connectAttr "LeftArmIK1Pos.t" "LeftArm1DB.p1";
connectAttr "LeftArmIK2Pos.t" "LeftArm1DB.p2";
connectAttr "LeftArmIK2Pos.t" "LeftArm2DB.p1";
connectAttr "LeftArmIK3Pos.t" "LeftArm2DB.p2";
connectAttr "LeftArmSumDistAL.o" "LeftArmStretchBA.i[0]";
connectAttr "LeftArmAllDB.d" "LeftArmStretchBA.i[1]";
connectAttr "LeftArmStretchSR.ox" "LeftArmStretchBA.ab";
connectAttr "LeftArmPVStretch1DB.d" "LeftArmPvStretch1DvMD.i1x";
connectAttr "LeftArm1DB.d" "LeftArmPvStretch1DvMD.i2x";
connectAttr "LeftArmIK1Pos.t" "LeftArmPVStretch1DB.p1";
connectAttr "LeftArmPVStretchPos.t" "LeftArmPVStretch1DB.p2";
connectAttr "LeftArmUpSlideFilterML.o" "LeftArmUpSlideAL.i1";
connectAttr "LeftArmIKCtrl.UpSlide" "LeftArmUpSlideFilterML.i1";
connectAttr "LeftArm1IKJnt.t" "LeftArm1DrvJntTrsBC.c2";
connectAttr "LeftArm1FKJnt.t" "LeftArm1DrvJntTrsBC.c1";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArm1DrvJntTrsBC.b";
connectAttr "LeftArm1IKJnt.rx" "LeftArm1DrvJntRotPB.irx1";
connectAttr "LeftArm1IKJnt.ry" "LeftArm1DrvJntRotPB.iry1";
connectAttr "LeftArm1IKJnt.rz" "LeftArm1DrvJntRotPB.irz1";
connectAttr "LeftArm1FKJnt.rx" "LeftArm1DrvJntRotPB.irx2";
connectAttr "LeftArm1FKJnt.ry" "LeftArm1DrvJntRotPB.iry2";
connectAttr "LeftArm1FKJnt.rz" "LeftArm1DrvJntRotPB.irz2";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArm1DrvJntRotPB.w";
connectAttr "LeftArm2IKJnt.t" "LeftArm2DrvJntTrsBC.c2";
connectAttr "LeftArm2FKJnt.t" "LeftArm2DrvJntTrsBC.c1";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArm2DrvJntTrsBC.b";
connectAttr "LeftArm2IKJnt.rx" "LeftArm2DrvJntRotPB.irx1";
connectAttr "LeftArm2IKJnt.ry" "LeftArm2DrvJntRotPB.iry1";
connectAttr "LeftArm2IKJnt.rz" "LeftArm2DrvJntRotPB.irz1";
connectAttr "LeftArm2FKJnt.rx" "LeftArm2DrvJntRotPB.irx2";
connectAttr "LeftArm2FKJnt.ry" "LeftArm2DrvJntRotPB.iry2";
connectAttr "LeftArm2FKJnt.rz" "LeftArm2DrvJntRotPB.irz2";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArm2DrvJntRotPB.w";
connectAttr "LeftArm3IKJnt.t" "LeftArm3DrvJntTrsBC.c2";
connectAttr "LeftArm3FKJnt.t" "LeftArm3DrvJntTrsBC.c1";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArm3DrvJntTrsBC.b";
connectAttr "LeftArm3TwistFixGrpMM.o" "LeftArm3TwistFixGrpDM.imat";
connectAttr "LeftArm3DrvJnt.wm" "LeftArm3TwistFixGrpMM.i[2]";
connectAttr "LeftArm3TwistFixGrp.pim" "LeftArm3TwistFixGrpMM.i[3]";
connectAttr "LeftArm3TwsitFixTgPosDM.ot" "LeftArm3TwsitFixTgPosPB.it1";
connectAttr "LeftArm3TwsitFixTgPosDM1.ot" "LeftArm3TwsitFixTgPosPB.it2";
connectAttr "LeftArm3TwsitFixTgPosMM.o" "LeftArm3TwsitFixTgPosDM.imat";
connectAttr "LeftArm3AssiAPos.wm" "LeftArm3TwsitFixTgPosMM.i[2]";
connectAttr "LeftArm3TwsitFixTgPos.pim" "LeftArm3TwsitFixTgPosMM.i[3]";
connectAttr "LeftArm3TwsitFixTgPosMM1.o" "LeftArm3TwsitFixTgPosDM1.imat";
connectAttr "LeftArm3AssiBPos.wm" "LeftArm3TwsitFixTgPosMM1.i[2]";
connectAttr "LeftArm3TwsitFixTgPos.pim" "LeftArm3TwsitFixTgPosMM1.i[3]";
connectAttr "LeftArm2TwistFixGrpMM.o" "LeftArm2TwistFixGrpDM.imat";
connectAttr "LeftArm2DrvJnt.wm" "LeftArm2TwistFixGrpMM.i[2]";
connectAttr "LeftArm2TwistFixGrp.pim" "LeftArm2TwistFixGrpMM.i[3]";
connectAttr "LeftArmIKFKCtrl.DnTwistFix" "unitConversion7.i";
connectAttr "LeftArm2TwsitFixTgPosDM.ot" "LeftArm2TwsitFixTgPosPB.it1";
connectAttr "LeftArm2TwsitFixTgPosDM1.ot" "LeftArm2TwsitFixTgPosPB.it2";
connectAttr "LeftArm2TwsitFixTgPosMM.o" "LeftArm2TwsitFixTgPosDM.imat";
connectAttr "LeftArm2AssiAPos.wm" "LeftArm2TwsitFixTgPosMM.i[2]";
connectAttr "LeftArm2TwsitFixTgPos.pim" "LeftArm2TwsitFixTgPosMM.i[3]";
connectAttr "LeftArm2TwsitFixTgPosMM1.o" "LeftArm2TwsitFixTgPosDM1.imat";
connectAttr "LeftArm2AssiBPos.wm" "LeftArm2TwsitFixTgPosMM1.i[2]";
connectAttr "LeftArm2TwsitFixTgPos.pim" "LeftArm2TwsitFixTgPosMM1.i[3]";
connectAttr "LeftArmUpSlideML.o" "LeftArmUpTxML.i1";
connectAttr "LeftArmDnSlideML.o" "LeftArmDnTxML.i1";
connectAttr "LeftArmPVStretch2BA.o" "LeftArmDnSlideML.i1";
connectAttr "LeftArmDnSlideAL.o" "LeftArmDnSlideML.i2";
connectAttr "LeftArmStretchSR.oy" "LeftArmPVStretch2BA.ab";
connectAttr "LeftArmStretchDvMD.ox" "LeftArmPVStretch2BA.i[0]";
connectAttr "LeftArmsPvStretch2DvMD.ox" "LeftArmPVStretch2BA.i[1]";
connectAttr "LeftArmPVStretch2DB.d" "LeftArmsPvStretch2DvMD.i1x";
connectAttr "LeftArm2DB.d" "LeftArmsPvStretch2DvMD.i2x";
connectAttr "LeftArmPVStretchPos.t" "LeftArmPVStretch2DB.p1";
connectAttr "LeftArmIKMovePos.t" "LeftArmPVStretch2DB.p2";
connectAttr "LeftArmDnSlideFilterML.o" "LeftArmDnSlideAL.i1";
connectAttr "LeftArmIKCtrl.DnSlide" "LeftArmDnSlideFilterML.i1";
connectAttr "LeftArm3IKJntQP.oq" "LeftArm3IKJntQE.iq";
connectAttr "LeftArm3IKJntDM.oq" "LeftArm3IKJntQP.iq1";
connectAttr "LeftArm3IKJntQI.oq" "LeftArm3IKJntQP.iq2";
connectAttr "LeftArm3IKJntMM.o" "LeftArm3IKJntDM.imat";
connectAttr "LeftArmIKCtrlPos.wm" "LeftArm3IKJntMM.i[2]";
connectAttr "LeftArm3IKJnt.pim" "LeftArm3IKJntMM.i[3]";
connectAttr "LeftArm3IKJntEQ.oq" "LeftArm3IKJntQI.iq";
connectAttr "LeftArm3IKJnt.jo" "LeftArm3IKJntEQ.irt";
connectAttr "LeftArm1FKJntMM.o" "LeftArm1FKJntDM.imat";
connectAttr "LeftShoulderFKCtrl.wm" "LeftArm1FKJntMM.i[2]";
connectAttr "LeftArm1FKJnt.pim" "LeftArm1FKJntMM.i[3]";
connectAttr "LeftArm1FKJntQP.oq" "LeftArm1FKJntQE.iq";
connectAttr "LeftArm1FKJntDM.oq" "LeftArm1FKJntQP.iq1";
connectAttr "LeftArm1FKJntQI.oq" "LeftArm1FKJntQP.iq2";
connectAttr "LeftArm1FKJntEQ.oq" "LeftArm1FKJntQI.iq";
connectAttr "LeftArm1FKJnt.jo" "LeftArm1FKJntEQ.irt";
connectAttr "LeftArm2FKJntMM.o" "LeftArm2FKJntDM.imat";
connectAttr "LeftElbowFKCtrl.wm" "LeftArm2FKJntMM.i[2]";
connectAttr "LeftArm2FKJnt.pim" "LeftArm2FKJntMM.i[3]";
connectAttr "LeftArm2FKJntQP.oq" "LeftArm2FKJntQE.iq";
connectAttr "LeftArm2FKJntDM.oq" "LeftArm2FKJntQP.iq1";
connectAttr "LeftArm2FKJntQI.oq" "LeftArm2FKJntQP.iq2";
connectAttr "LeftArm2FKJntEQ.oq" "LeftArm2FKJntQI.iq";
connectAttr "LeftArm2FKJnt.jo" "LeftArm2FKJntEQ.irt";
connectAttr "LeftArm3FKJntMM.o" "LeftArm3FKJntDM.imat";
connectAttr "LeftWristFKCtrl.wm" "LeftArm3FKJntMM.i[2]";
connectAttr "LeftArm3FKJnt.pim" "LeftArm3FKJntMM.i[3]";
connectAttr "LeftArm3FKJntQP.oq" "LeftArm3FKJntQE.iq";
connectAttr "LeftArm3FKJntDM.oq" "LeftArm3FKJntQP.iq1";
connectAttr "LeftArm3FKJntQI.oq" "LeftArm3FKJntQP.iq2";
connectAttr "LeftArm3FKJntEQ.oq" "LeftArm3FKJntQI.iq";
connectAttr "LeftArm3FKJnt.jo" "LeftArm3FKJntEQ.irt";
connectAttr "LeftArmUpIK1DvdMD.ox" "LeftArmUpIK1CrvPointMD.i1";
connectAttr "LeftArmUpIK1DB.d" "LeftArmUpIK1DvdMD.i1x";
connectAttr "LeftArmUpIK1ChkDB.d" "LeftArmUpIK1DvdMD.i1y";
connectAttr "LeftArmUpIK1ChkDB.d" "LeftArmUpIK1DvdMD.i2x";
connectAttr "LeftArmUpIK1DB.d" "LeftArmUpIK1DvdMD.i2y";
connectAttr "LeftArmUpIK1PC.p" "LeftArmUpIK1DB.p1";
connectAttr "LeftArmUpIK2PC.p" "LeftArmUpIK1DB.p2";
connectAttr "LeftArmUpIKCrvShape.ws" "LeftArmUpIK1PC.ic";
connectAttr "LeftArmUpIKCrvShape.ws" "LeftArmUpIK2PC.ic";
connectAttr "LeftArmUpIK1ChkPC.p" "LeftArmUpIK1ChkDB.p1";
connectAttr "LeftArmUpIK2ChkPC.p" "LeftArmUpIK1ChkDB.p2";
connectAttr "LeftArmUpIKChkCrvShape.ws" "LeftArmUpIK1ChkPC.ic";
connectAttr "LeftArmUpIKChkCrvShape.ws" "LeftArmUpIK2ChkPC.ic";
connectAttr "LeftArmUpIK2DvdMD.ox" "LeftArmUpIK2CrvPointMD.i1";
connectAttr "LeftArmUpIK2DB.d" "LeftArmUpIK2DvdMD.i1x";
connectAttr "LeftArmUpIK2ChkDB.d" "LeftArmUpIK2DvdMD.i1y";
connectAttr "LeftArmUpIK2ChkDB.d" "LeftArmUpIK2DvdMD.i2x";
connectAttr "LeftArmUpIK2DB.d" "LeftArmUpIK2DvdMD.i2y";
connectAttr "LeftArmUpIK2PC.p" "LeftArmUpIK2DB.p1";
connectAttr "LeftArmUpIK3PC.p" "LeftArmUpIK2DB.p2";
connectAttr "LeftArmUpIKCrvShape.ws" "LeftArmUpIK3PC.ic";
connectAttr "LeftArmUpIK2ChkPC.p" "LeftArmUpIK2ChkDB.p1";
connectAttr "LeftArmUpIK3ChkPC.p" "LeftArmUpIK2ChkDB.p2";
connectAttr "LeftArmUpIKChkCrvShape.ws" "LeftArmUpIK3ChkPC.ic";
connectAttr "LeftArmUpIK3DvdMD.ox" "LeftArmUpIK3CrvPointMD.i1";
connectAttr "LeftArmUpIK3DB.d" "LeftArmUpIK3DvdMD.i1x";
connectAttr "LeftArmUpIK3ChkDB.d" "LeftArmUpIK3DvdMD.i1y";
connectAttr "LeftArmUpIK3ChkDB.d" "LeftArmUpIK3DvdMD.i2x";
connectAttr "LeftArmUpIK3DB.d" "LeftArmUpIK3DvdMD.i2y";
connectAttr "LeftArmUpIK3PC.p" "LeftArmUpIK3DB.p1";
connectAttr "LeftArmUpIK4PC.p" "LeftArmUpIK3DB.p2";
connectAttr "LeftArmUpIKCrvShape.ws" "LeftArmUpIK4PC.ic";
connectAttr "LeftArmUpIK3ChkPC.p" "LeftArmUpIK3ChkDB.p1";
connectAttr "LeftArmUpIK4ChkPC.p" "LeftArmUpIK3ChkDB.p2";
connectAttr "LeftArmUpIKChkCrvShape.ws" "LeftArmUpIK4ChkPC.ic";
connectAttr "LeftArmUpIK4DvdMD.ox" "LeftArmUpIK4CrvPointMD.i1";
connectAttr "LeftArmUpIK4DB.d" "LeftArmUpIK4DvdMD.i1x";
connectAttr "LeftArmUpIK4ChkDB.d" "LeftArmUpIK4DvdMD.i1y";
connectAttr "LeftArmUpIK4ChkDB.d" "LeftArmUpIK4DvdMD.i2x";
connectAttr "LeftArmUpIK4DB.d" "LeftArmUpIK4DvdMD.i2y";
connectAttr "LeftArmUpIK4PC.p" "LeftArmUpIK4DB.p1";
connectAttr "LeftArmUpIK5PC.p" "LeftArmUpIK4DB.p2";
connectAttr "LeftArmUpIKCrvShape.ws" "LeftArmUpIK5PC.ic";
connectAttr "LeftArmUpIK4ChkPC.p" "LeftArmUpIK4ChkDB.p1";
connectAttr "LeftArmUpIK5ChkPC.p" "LeftArmUpIK4ChkDB.p2";
connectAttr "LeftArmUpIKChkCrvShape.ws" "LeftArmUpIK5ChkPC.ic";
connectAttr "LeftArmDnIK1DvdMD.ox" "LeftArmDnIK1CrvPointMD.i1";
connectAttr "LeftArmDnIK1DB.d" "LeftArmDnIK1DvdMD.i1x";
connectAttr "LeftArmDnIK1ChkDB.d" "LeftArmDnIK1DvdMD.i1y";
connectAttr "LeftArmDnIK1ChkDB.d" "LeftArmDnIK1DvdMD.i2x";
connectAttr "LeftArmDnIK1DB.d" "LeftArmDnIK1DvdMD.i2y";
connectAttr "LeftArmDnIK1PC.p" "LeftArmDnIK1DB.p1";
connectAttr "LeftArmDnIK2PC.p" "LeftArmDnIK1DB.p2";
connectAttr "LeftArmDnIKCrvShape.ws" "LeftArmDnIK1PC.ic";
connectAttr "LeftArmDnIKCrvShape.ws" "LeftArmDnIK2PC.ic";
connectAttr "LeftArmDnIK1ChkPC.p" "LeftArmDnIK1ChkDB.p1";
connectAttr "LeftArmDnIK2ChkPC.p" "LeftArmDnIK1ChkDB.p2";
connectAttr "LeftArmDnIKChkCrvShape.ws" "LeftArmDnIK1ChkPC.ic";
connectAttr "LeftArmDnIKChkCrvShape.ws" "LeftArmDnIK2ChkPC.ic";
connectAttr "LeftArmDnIK2DvdMD.ox" "LeftArmDnIK2CrvPointMD.i1";
connectAttr "LeftArmDnIK2DB.d" "LeftArmDnIK2DvdMD.i1x";
connectAttr "LeftArmDnIK2ChkDB.d" "LeftArmDnIK2DvdMD.i1y";
connectAttr "LeftArmDnIK2ChkDB.d" "LeftArmDnIK2DvdMD.i2x";
connectAttr "LeftArmDnIK2DB.d" "LeftArmDnIK2DvdMD.i2y";
connectAttr "LeftArmDnIK2PC.p" "LeftArmDnIK2DB.p1";
connectAttr "LeftArmDnIK3PC.p" "LeftArmDnIK2DB.p2";
connectAttr "LeftArmDnIKCrvShape.ws" "LeftArmDnIK3PC.ic";
connectAttr "LeftArmDnIK2ChkPC.p" "LeftArmDnIK2ChkDB.p1";
connectAttr "LeftArmDnIK3ChkPC.p" "LeftArmDnIK2ChkDB.p2";
connectAttr "LeftArmDnIKChkCrvShape.ws" "LeftArmDnIK3ChkPC.ic";
connectAttr "LeftArmDnIK3DvdMD.ox" "LeftArmDnIK3CrvPointMD.i1";
connectAttr "LeftArmDnIK3DB.d" "LeftArmDnIK3DvdMD.i1x";
connectAttr "LeftArmDnIK3ChkDB.d" "LeftArmDnIK3DvdMD.i1y";
connectAttr "LeftArmDnIK3ChkDB.d" "LeftArmDnIK3DvdMD.i2x";
connectAttr "LeftArmDnIK3DB.d" "LeftArmDnIK3DvdMD.i2y";
connectAttr "LeftArmDnIK3PC.p" "LeftArmDnIK3DB.p1";
connectAttr "LeftArmDnIK4PC.p" "LeftArmDnIK3DB.p2";
connectAttr "LeftArmDnIKCrvShape.ws" "LeftArmDnIK4PC.ic";
connectAttr "LeftArmDnIK3ChkPC.p" "LeftArmDnIK3ChkDB.p1";
connectAttr "LeftArmDnIK4ChkPC.p" "LeftArmDnIK3ChkDB.p2";
connectAttr "LeftArmDnIKChkCrvShape.ws" "LeftArmDnIK4ChkPC.ic";
connectAttr "LeftArmDnIK4DvdMD.ox" "LeftArmDnIK4CrvPointMD.i1";
connectAttr "LeftArmDnIK4DB.d" "LeftArmDnIK4DvdMD.i1x";
connectAttr "LeftArmDnIK4ChkDB.d" "LeftArmDnIK4DvdMD.i1y";
connectAttr "LeftArmDnIK4ChkDB.d" "LeftArmDnIK4DvdMD.i2x";
connectAttr "LeftArmDnIK4DB.d" "LeftArmDnIK4DvdMD.i2y";
connectAttr "LeftArmDnIK4PC.p" "LeftArmDnIK4DB.p1";
connectAttr "LeftArmDnIK5PC.p" "LeftArmDnIK4DB.p2";
connectAttr "LeftArmDnIKCrvShape.ws" "LeftArmDnIK5PC.ic";
connectAttr "LeftArmDnIK4ChkPC.p" "LeftArmDnIK4ChkDB.p1";
connectAttr "LeftArmDnIK5ChkPC.p" "LeftArmDnIK4ChkDB.p2";
connectAttr "LeftArmDnIKChkCrvShape.ws" "LeftArmDnIK5ChkPC.ic";
connectAttr "LeftArm1TwistFixGrpMM.o" "LeftArm1TwistFixGrpDM.imat";
connectAttr "LeftArm1DrvJnt.wm" "LeftArm1TwistFixGrpMM.i[2]";
connectAttr "LeftArm1TwistFixGrp.pim" "LeftArm1TwistFixGrpMM.i[3]";
connectAttr "LeftArmIKFKCtrl.UpTwistFix" "unitConversion6.i";
connectAttr "LeftArmtwistFixVectorProduct.ox" "LeftArm1TwistFixUpvec_rotateZ.i";
connectAttr "LeftArm1TwsitFixTgPos.t" "LeftArmtwistFixVectorProduct.i1";
connectAttr "LeftArm1TwsitFixTgPosMM.o" "LeftArm1TwsitFixTgPosDM.imat";
connectAttr "LeftArm2DrvJnt.wm" "LeftArm1TwsitFixTgPosMM.i[2]";
connectAttr "LeftArm1TwsitFixTgPos.pim" "LeftArm1TwsitFixTgPosMM.i[3]";
connectAttr "LeftArmIKhMM.o" "LeftArmIKhDM.imat";
connectAttr "LeftArmIKCtrlPos.wm" "LeftArmIKhMM.i[2]";
connectAttr "LeftArmIKh.pim" "LeftArmIKhMM.i[3]";
connectAttr "LeftArmPVSysGrpMM.o" "LeftArmPVSysGrpDM.imat";
connectAttr "LeftArmPVSysGrp.pim" "LeftArmPVSysGrpMM.i[3]";
connectAttr "LeftArmIKCtrl.Twist" "unitConversion2.i";
connectAttr "LeftArmPVVP.ox" "LeftArmPVUpvec_rotateZ.i";
connectAttr "LeftArmPVTgPos.t" "LeftArmPVVP.i1";
connectAttr "LeftArmPVTgPosMM.o" "LeftArmPVTgPosDM.imat";
connectAttr "LeftArmIKCtrlPos.wm" "LeftArmPVTgPosMM.i[2]";
connectAttr "LeftArmPVTgPos.pim" "LeftArmPVTgPosMM.i[3]";
connectAttr "LeftArmIKMovePosMM.o" "LeftArmIKMovePosDM.imat";
connectAttr "LeftArmIKCtrlPos.wm" "LeftArmIKMovePosMM.i[2]";
connectAttr "LeftArmIKMovePos.pim" "LeftArmIKMovePosMM.i[3]";
connectAttr "LeftArmPVStretchPosMM.o" "LeftArmPVStretchPosDM.imat";
connectAttr "LeftArmPoleVectorCtrl.wm" "LeftArmPVStretchPosMM.i[2]";
connectAttr "LeftArmPVStretchPos.pim" "LeftArmPVStretchPosMM.i[3]";
connectAttr "LeftArm1ArcPosMM.o" "LeftArm1ArcPosDM.imat";
connectAttr "LeftArm1DrvJnt.wm" "LeftArm1ArcPosMM.i[2]";
connectAttr "LeftArm1ArcPos.pim" "LeftArm1ArcPosMM.i[3]";
connectAttr "LeftArm2ArcPosMM.o" "LeftArm2ArcPosDM.imat";
connectAttr "LeftArm2DrvJnt.wm" "LeftArm2ArcPosMM.i[2]";
connectAttr "LeftArm2ArcPos.pim" "LeftArm2ArcPosMM.i[3]";
connectAttr "LeftArm3ArcPosMM.o" "LeftArm3ArcPosDM.imat";
connectAttr "LeftArm3DrvJnt.wm" "LeftArm3ArcPosMM.i[2]";
connectAttr "LeftArm3ArcPos.pim" "LeftArm3ArcPosMM.i[3]";
connectAttr "LeftArm2ArcPos.t" "LeftArmDnArcDB.p1";
connectAttr "LeftArm3ArcPos.t" "LeftArmDnArcDB.p2";
connectAttr "LeftArmArcDistSumALAL.o" "LeftArmArcDistMultML.i1";
connectAttr "LeftArmUpArcDB.d" "LeftArmArcDistSumALAL.i1";
connectAttr "LeftArmDnArcDB.d" "LeftArmArcDistSumALAL.i2";
connectAttr "LeftArm1ArcPos.t" "LeftArmUpArcDB.p1";
connectAttr "LeftArm2ArcPos.t" "LeftArmUpArcDB.p2";
connectAttr "LeftArmArcDC.oc[0]" "LeftArmUpArcCrvRC.ic";
connectAttr "LeftArmTPC.oc" "LeftArmArcDC.ic";
connectAttr "LeftArmAngleSR.ox" "LeftArmArcDC.p[0]";
connectAttr "LeftArm1ArcPos.t" "LeftArmTPC.pt1";
connectAttr "LeftArmArcPointPos.t" "LeftArmTPC.pt2";
connectAttr "LeftArm3ArcPos.t" "LeftArmTPC.pt3";
connectAttr "LeftArmAngleAL.o" "LeftArmAngleSR.omx";
connectAttr "unitConversion5.o" "LeftArmAngleSR.vx";
connectAttr "LeftArmTPC.s" "LeftArmAngleSR.mx";
connectAttr "unitConversion3.o" "LeftArmAngleAL.i1";
connectAttr "unitConversion4.o" "LeftArmAngleAL.i2";
connectAttr "LeftArmOutAG.a" "unitConversion3.i";
connectAttr "LeftArmVec3ToArcPA.o3" "LeftArmOutAG.v1";
connectAttr "LeftArmVec3To1PA.o3" "LeftArmOutAG.v2";
connectAttr "LeftArm3ArcPos.t" "LeftArmVec3ToArcPA.i3[0]";
connectAttr "LeftArmArcPointPos.t" "LeftArmVec3ToArcPA.i3[1]";
connectAttr "LeftArm3ArcPos.t" "LeftArmVec3To1PA.i3[0]";
connectAttr "LeftArm1ArcPos.t" "LeftArmVec3To1PA.i3[1]";
connectAttr "LeftArmInAG.a" "unitConversion4.i";
connectAttr "LeftArmVecArcTo1PA.o3" "LeftArmInAG.v1";
connectAttr "LeftArmVec3To1PA.o3" "LeftArmInAG.v2";
connectAttr "LeftArmArcPointPos.t" "LeftArmVecArcTo1PA.i3[0]";
connectAttr "LeftArm1ArcPos.t" "LeftArmVecArcTo1PA.i3[1]";
connectAttr "LeftArmOutAG.a" "unitConversion5.i";
connectAttr "LeftArmArcDC.oc[1]" "LeftArmDnArcCrvRC.ic";
connectAttr "LeftArmUpIKChkCrvMM.o" "LeftArmUpIKChkCrvDM.imat";
connectAttr "LeftArm1DrvJnt.wm" "LeftArmUpIKChkCrvMM.i[2]";
connectAttr "LeftArmUpIKChkCrv.pim" "LeftArmUpIKChkCrvMM.i[3]";
connectAttr "LeftArmDnIKChkCrvMM.o" "LeftArmDnIKChkCrvDM.imat";
connectAttr "LeftArm2DrvJnt.wm" "LeftArmDnIKChkCrvMM.i[2]";
connectAttr "LeftArmDnIKChkCrv.pim" "LeftArmDnIKChkCrvMM.i[3]";
connectAttr "LeftWristFKCtrl.s" "LeftWristFKScaleBC.c1";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftWristFKScaleBC.b";
connectAttr "LeftArmIKCtrlGrp.s" "LeftWristFKScaleBC.c2";
connectAttr "LeftArmIKCtrl.s" "LeftWristIKScaleBC.c2";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftWristIKScaleBC.b";
connectAttr "LeftWristFKCtrlOffGrp.s" "LeftWristIKScaleBC.c1";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":defaultObjectSet.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":ikSystem.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":defaultHardwareRenderGlobals.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":initialShadingGroup.message";
relationship "link" ":lightLinker1" ":hyperGraphLayout.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":defaultRenderGlobals.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":defaultRenderGlobals.message" ":initialParticleSE.message";
relationship "link" ":lightLinker1" ":defaultLightSet.message" ":initialParticleSE.message";
relationship "link" ":lightLinker1" ":defaultLightSet.message" ":initialShadingGroup.message";
relationship "link" ":lightLinker1" ":defaultRenderGlobals.message" ":initialShadingGroup.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":defaultHardwareRenderGlobals.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":ikSystem.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "LeftArmArcBlendShape.mlpr" "shapeEditorManager.bspr[0]";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "LeftRN.sr";
connectAttr "LeftArmJntGrp.wim" "LeftArm1IKJntMM.i[1]";
connectAttr "LeftArm1IKJntMM.o" "LeftArm1IKJntDM.imat";
connectAttr "LeftArmPosGrp.wim" "LeftArmIK1PosMM.i[1]";
connectAttr "LeftArmIK1PosMM.o" "LeftArmIK1PosDM.imat";
connectAttr "LeftArmPosGrp.wim" "LeftArmIK2PosMM.i[1]";
connectAttr "LeftArmIK2PosMM.o" "LeftArmIK2PosDM.imat";
connectAttr "LeftArmPosGrp.wim" "LeftArmIK3PosMM.i[1]";
connectAttr "LeftArmIK3PosMM.o" "LeftArmIK3PosDM.imat";
connectAttr "LeftArmCtrlGrp.wim" "LeftClavicleCtrlGrpMM.i[1]";
connectAttr "LeftClavicleCtrlGrpMM.o" "LeftClavicleCtrlGrpDM.imat";
connectAttr "LeftShoulderFKCtrl.wm" "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_MTMX.i[1]"
		;
connectAttr "LeftElbowFKCtrlOffGrp.wim" "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_MTMX.i[2]"
		;
connectAttr "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_MTMX.o" "LeftShoulderFKCtrl2LeftElbowFKCtrlGrp_DCMX.imat"
		;
connectAttr "LeftElbowFKCtrl.wm" "LeftElbowFKCtrl2LeftWristFKCtrlGrp_MTMX.i[1]";
connectAttr "LeftWristFKCtrlOffGrp.wim" "LeftElbowFKCtrl2LeftWristFKCtrlGrp_MTMX.i[2]"
		;
connectAttr "LeftElbowFKCtrl2LeftWristFKCtrlGrp_MTMX.o" "LeftElbowFKCtrl2LeftWristFKCtrlGrp_DCMX.imat"
		;
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
// End of Arm01.ma
