//Maya ASCII 2018ff09 scene
//Name: Arm01.ma
//Last modified: Wed, Aug 25, 2021 05:38:41 PM
//Codeset: 949
file -rdi 1 -ns "Left" -rfn "LeftRN" -typ "mayaAscii" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitArm.ma";
file -r -ns "Left" -dr 1 -rfn "LeftRN" -typ "mayaAscii" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitArm.ma";
requires maya "2018ff09";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftMaterialBlender" -nodeType "RedshiftPostEffects"
		 -nodeType "RedshiftBumpMap" -nodeType "RedshiftNormalMap" -nodeType "RedshiftShaderSwitch"
		 -nodeType "RedshiftMaterial" "redshift4maya" "3.0.30";
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
	setAttr ".t" -type "double3" 15.817290105815378 29.138892181708432 22.561331181827434 ;
	setAttr ".r" -type "double3" -54.338352729713726 -349.79999999980214 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F077168C-4FA2-EBB0-16F5-7089A9120783";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 36.228411189533936;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 40.754664452552795 -2.3623746948242186 -2.330689372301102 ;
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
	setAttr ".dla" yes;
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
	setAttr ".t" -type "double3" 7.7962285006136174 0.37304552655325551 0.97270998292319977 ;
	setAttr ".r" -type "double3" 0 -0.78763063429539992 2.7394841251856632 ;
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
		0 0 -14.849247
		-3.2971951835492064e-15 -14.849247 0
		0 0 14.849247
		3.2971951835492064e-15 14.849247 0
		0 0 -14.849247
		;
createNode transform -n "LeftElbowFKCtrlOffGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "1529EF55-42C1-C3B7-5DE6-61A97A0A6C95";
	setAttr ".t" -type "double3" 40.062612785029856 1.9169754298911243 1.4168032950062956 ;
	setAttr ".r" -type "double3" 0 1.0370386800428428 2.7394841251856383 ;
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
		0 0 -14.849247
		-3.2971951835492064e-15 -14.849247 0
		0 0 14.849247
		3.2971951835492064e-15 14.849247 0
		0 0 -14.849247
		;
createNode transform -n "LeftWristFKCtrlOffGrp" -p "LeftClavicleCtrlConsGrp";
	rename -uid "1E57F74C-4731-EFE7-4A26-198BEBD0DFCE";
	setAttr ".t" -type "double3" 72.847098068980216 3.4856961997567453 0.82266885546900859 ;
	setAttr ".r" -type "double3" 0 0.041200385854589704 2.7394841251856752 ;
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
		0 0 -14.849247
		-3.2971951835492064e-15 -14.849247 0
		0 0 14.849247
		3.2971951835492064e-15 14.849247 0
		0 0 -14.849247
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
createNode transform -n "LeftFingerRigGrp";
	rename -uid "E3F7B013-46F9-A545-12B4-33A105DA3D7A";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "Part" -ln "Part" -at "message";
	setAttr ".t" -type "double3" 0 0 -1.1102230246251565e-15 ;
	setAttr -s 2 ".Grp";
	setAttr -s 5 ".Part";
createNode transform -n "LeftWristConsGrp" -p "LeftFingerRigGrp";
	rename -uid "D4900F6A-4BA4-738B-4F98-AB8B771A3865";
	setAttr ".t" -type "double3" 11.999995604355446 7.5486550116293444e-06 -8.6120691734273431e-07 ;
	setAttr ".r" -type "double3" 179.99975336823579 -10.314093809192087 3.7883950348595161e-06 ;
createNode transform -n "LeftWristIKScaleGrp" -p "LeftWristConsGrp";
	rename -uid "6C6A2FD0-4FD8-EE0E-776D-C481901B194D";
	setAttr ".t" -type "double3" -1.2621894285302915e-06 -4.5580662799693528e-08 1.5444945211662287e-08 ;
	setAttr ".r" -type "double3" -179.99999999998309 0 0 ;
createNode transform -n "LeftFingerCtrlGrp" -p "LeftWristIKScaleGrp";
	rename -uid "95962531-422B-3DAE-1825-1F99E6EE5798";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "LeftFingerCtrl" -p "LeftFingerCtrlGrp";
	rename -uid "94FB6004-448B-CF6C-3593-E48FCE3C8355";
	addAttr -ci true -sn "IndexFold" -ln "IndexFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Index1" -ln "Index1" -at "double";
	addAttr -ci true -sn "Index2" -ln "Index2" -at "double";
	addAttr -ci true -sn "Index3" -ln "Index3" -at "double";
	addAttr -ci true -sn "MiddleFold" -ln "MiddleFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Middle1" -ln "Middle1" -at "double";
	addAttr -ci true -sn "Middle2" -ln "Middle2" -at "double";
	addAttr -ci true -sn "Middle3" -ln "Middle3" -at "double";
	addAttr -ci true -sn "RingFold" -ln "RingFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Ring1" -ln "Ring1" -at "double";
	addAttr -ci true -sn "Ring2" -ln "Ring2" -at "double";
	addAttr -ci true -sn "Ring3" -ln "Ring3" -at "double";
	addAttr -ci true -sn "PinkyFold" -ln "PinkyFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Pinky1" -ln "Pinky1" -at "double";
	addAttr -ci true -sn "Pinky2" -ln "Pinky2" -at "double";
	addAttr -ci true -sn "Pinky3" -ln "Pinky3" -at "double";
	addAttr -ci true -sn "ThumbFold" -ln "ThumbFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Thumb1" -ln "Thumb1" -at "double";
	addAttr -ci true -sn "Thumb2" -ln "Thumb2" -at "double";
	addAttr -ci true -sn "Thumb3" -ln "Thumb3" -at "double";
	addAttr -ci true -sn "Spread" -ln "Spread" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "IndexSpread" -ln "IndexSpread" -at "double";
	addAttr -ci true -sn "MiddleSpread" -ln "MiddleSpread" -at "double";
	addAttr -ci true -sn "RingSpread" -ln "RingSpread" -at "double";
	addAttr -ci true -sn "PinkySpread" -ln "PinkySpread" -at "double";
	addAttr -ci true -sn "ThumbSpread" -ln "ThumbSpread" -at "double";
	addAttr -ci true -sn "Roll" -ln "Roll" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "IndexRoll" -ln "IndexRoll" -at "double";
	addAttr -ci true -sn "MiddleRoll" -ln "MiddleRoll" -at "double";
	addAttr -ci true -sn "RingRoll" -ln "RingRoll" -at "double";
	addAttr -ci true -sn "PinkyRoll" -ln "PinkyRoll" -at "double";
	addAttr -ci true -sn "ThumbRoll" -ln "ThumbRoll" -at "double";
	addAttr -ci true -sn "IKCtrlVis" -ln "IKCtrlVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FKCtrlVis" -ln "FKCtrlVis" -min 0 -max 1 -at "bool";
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
	setAttr -l on -cb on ".IndexFold";
	setAttr -k on ".Index1";
	setAttr -k on ".Index2";
	setAttr -k on ".Index3";
	setAttr -l on -cb on ".MiddleFold";
	setAttr -k on ".Middle1";
	setAttr -k on ".Middle2";
	setAttr -k on ".Middle3";
	setAttr -l on -cb on ".RingFold";
	setAttr -k on ".Ring1";
	setAttr -k on ".Ring2";
	setAttr -k on ".Ring3";
	setAttr -l on -cb on ".PinkyFold";
	setAttr -k on ".Pinky1";
	setAttr -k on ".Pinky2";
	setAttr -k on ".Pinky3";
	setAttr -l on -cb on ".ThumbFold";
	setAttr -k on ".Thumb1";
	setAttr -k on ".Thumb2";
	setAttr -k on ".Thumb3";
	setAttr -l on -cb on ".Spread";
	setAttr -k on ".IndexSpread";
	setAttr -k on ".MiddleSpread";
	setAttr -k on ".RingSpread";
	setAttr -k on ".PinkySpread";
	setAttr -k on ".ThumbSpread";
	setAttr -l on -cb on ".Roll";
	setAttr -k on ".IndexRoll";
	setAttr -k on ".MiddleRoll";
	setAttr -k on ".RingRoll";
	setAttr -k on ".PinkyRoll";
	setAttr -k on ".ThumbRoll";
	setAttr -cb on ".IKCtrlVis" yes;
	setAttr -cb on ".FKCtrlVis" yes;
createNode nurbsCurve -n "LeftFingerCtrlShape" -p "LeftFingerCtrl";
	rename -uid "41EA0BDB-4E02-6FCD-8E3B-45B751A6B780";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3508348746736725 1.6533137578989332 -2.3508348746736734
		-1.807365550824919e-15 1.6533137578989374 -1.0083538251547843
		-2.3508348746736742 1.6533137578989332 -2.3508348746736729
		-1.0083538251547854 1.6533137578989372 5.2875069141219428e-16
		-2.3508348746736742 1.6533137578989332 2.3508348746736734
		-1.9701169073546227e-15 1.6533137578989372 1.0083538251547859
		2.3508348746736725 1.6533137578989332 2.3508348746736729
		1.0083538251547843 1.6533137578989372 7.1853278687914069e-16
		2.3508348746736725 1.6533137578989332 -2.3508348746736734
		-1.807365550824919e-15 1.6533137578989374 -1.0083538251547843
		-2.3508348746736742 1.6533137578989332 -2.3508348746736729
		;
createNode transform -n "LeftIndexRigGrp" -p "LeftWristIKScaleGrp";
	rename -uid "DC302CB8-48EE-705B-01A7-96B097F674D0";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".t" -type "double3" -77.035744069241105 -155.38250605296665 0.69614644100710699 ;
	setAttr ".r" -type "double3" 0.0019691646409709875 0.041153301033056346 2.7394848323723795 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Index";
createNode transform -n "LeftIndex1CtrlGrp" -p "LeftIndexRigGrp";
	rename -uid "1579A3D4-4F7D-5C6D-5A0A-A694BD008990";
	setAttr ".t" -type "double3" 84.900426529412769 151.12757526828318 1.9008245305682872 ;
	setAttr ".r" -type "double3" -91.061826122340989 0.1214370917470656 -1.4592493019940496 ;
createNode transform -n "LeftIndex1Ctrl" -p "LeftIndex1CtrlGrp";
	rename -uid "DD8E0A2E-4719-3FCF-3FFB-AE9DA1E5DECC";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftIndex1CtrlShape" -p "LeftIndex1Ctrl";
	rename -uid "838533C8-4741-5135-60CA-AEB32655C6A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftIndexIKCtrlGrp" -p "LeftIndex1Ctrl";
	rename -uid "F8FC9E60-4ACE-8567-80CB-47A7B2BA4512";
	setAttr ".t" -type "double3" 17.174732754518047 -0.96187887678456985 -0.19800037636179013 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftIndexIKCtrl" -p "LeftIndexIKCtrlGrp";
	rename -uid "33547CA7-461E-E852-FC5F-A1BF3226B27B";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftIndexIKCtrlShape" -p "LeftIndexIKCtrl";
	rename -uid "1C5CE5FA-4F42-0342-A985-A8AE817DF118";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		1.2825692841111899e-14 2.2382145000000153 0
		1.3322676295501875e-14 1.5099033134902129e-14 2.23821
		1.3819659749891851e-14 -2.2382144999999851 0
		1.3322676295501875e-14 1.5099033134902129e-14 -2.23821
		1.2825692841111899e-14 2.2382145000000153 0
		2.8909305000000134 1.5740948655640351e-14 0
		1.3322676295501875e-14 1.5099033134902129e-14 2.23821
		1.3819659749891851e-14 -2.2382144999999851 0
		2.8909305000000134 1.5740948655640351e-14 0
		1.3322676295501875e-14 1.5099033134902129e-14 -2.23821
		;
createNode ikHandle -n "LeftIndexIKh" -p "LeftIndexIKCtrl";
	rename -uid "02D433BD-4F87-9D96-F2AB-25A8DAC8A6F7";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -1.3145146482429482e-06 -1.6697754290362354e-13 0.022009071782946421 ;
	setAttr ".r" -type "double3" 91.062167068045568 -1.4567482822852522 -0.14846378560926318 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftIndexIKh_poleVectorConstraint1" -p "LeftIndexIKh";
	rename -uid "86629DC2-467C-6F8C-7BE4-B58B08F10838";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftIndexPVPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 8.8817841970012523e-16 0.099999999999994316 ;
	setAttr -k on ".w0";
createNode transform -n "LeftIndexAMUpvec" -p "LeftIndexIKCtrl";
	rename -uid "7764B362-4BBC-56A2-0419-D0AA32FBA1AC";
createNode joint -n "LeftIndex1IKJnt" -p "LeftIndex1Ctrl";
	rename -uid "23D8751A-417D-BC75-A4A9-E58817E61176";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.0370554403809535 -0.96187887678456718 -0.19800037636184697 ;
	setAttr ".r" -type "double3" -9.3649144635187413e-17 -0.0050641482906635888 1.3969289834643796e-14 ;
	setAttr ".jo" -type "double3" 0 -0.13800275755650343 0 ;
createNode joint -n "LeftIndex2IKJnt" -p "LeftIndex1IKJnt";
	rename -uid "2B729594-4578-5056-AC7D-06A6FEDB0FE9";
	setAttr ".t" -type "double3" 4.1098937379759146 -6.4852674289439687e-15 1.6965731399080625e-17 ;
	setAttr ".r" -type "double3" -2.1180138323738779e-14 0.02077975441274334 1.2517673980863277e-12 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
createNode joint -n "LeftIndex3IKJnt" -p "LeftIndex2IKJnt";
	rename -uid "6198D79B-4F3F-9CEA-B824-F6BF66F2988E";
	setAttr ".t" -type "double3" 2.5180967573336686 -8.2269260848200127e-14 6.591949208711867e-17 ;
	setAttr ".r" -type "double3" -3.3428815242317485e-14 -0.023190688492852652 5.9658640662634106e-13 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
createNode joint -n "LeftIndex4IKJnt" -p "LeftIndex3IKJnt";
	rename -uid "6C2148A1-49D4-861C-F825-88BB388579C9";
	setAttr ".t" -type "double3" 2.5097120098782941 -8.1995174538995842e-14 -6.9388939039072284e-18 ;
createNode ikEffector -n "effector32" -p "LeftIndex3IKJnt";
	rename -uid "A96DCEF5-44FD-CE2F-CA06-F3A17AC70DB0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftIndex1MTPos" -p "LeftIndex1Ctrl";
	rename -uid "4BE8B31E-496F-AC99-AE0B-B88A25D22F6F";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftIndex2MTPos" -p "LeftIndex1MTPos";
	rename -uid "B54EA809-48F8-ECCB-B050-1EA907DFB36E";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftIndex3MTPos" -p "LeftIndex2MTPos";
	rename -uid "751BC1ED-4B58-58E9-C798-A69C16E22828";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftIndex1CtrlPos" -p "LeftIndex1Ctrl";
	rename -uid "91724BF9-499C-1F73-E8B9-0B8BD613D3DD";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftIndex1CtrlOff" -p "LeftIndex1CtrlPos";
	rename -uid "5BCCBF50-4C44-2549-0979-D99450A106F3";
createNode transform -n "LeftIndex2CtrlGrp" -p "LeftIndex1CtrlOff";
	rename -uid "24552E1C-4B1A-5FBD-AFD7-A7B74AFCA532";
createNode transform -n "LeftIndex2Ctrl" -p "LeftIndex2CtrlGrp";
	rename -uid "126A52DB-444A-BEF1-857D-A489DF83EE3F";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftIndex2CtrlShape" -p "LeftIndex2Ctrl";
	rename -uid "72AA6E0C-400B-98B0-E029-D3800505791B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftIndex2CtrlPos" -p "LeftIndex2Ctrl";
	rename -uid "99856568-440B-2EEB-8609-66B0F568EB4B";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftIndex2CtrlOff" -p "LeftIndex2CtrlPos";
	rename -uid "EB9DEB62-40B9-D4BF-A26A-B4BAEACF76CE";
createNode transform -n "LeftIndex3CtrlGrp" -p "LeftIndex2CtrlOff";
	rename -uid "C1FCA0B7-4E1E-2921-AD54-3BA18FFC42B2";
createNode transform -n "LeftIndex3Ctrl" -p "LeftIndex3CtrlGrp";
	rename -uid "169A22BF-448A-74C0-2DA5-42B1285708C2";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftIndex3CtrlShape" -p "LeftIndex3Ctrl";
	rename -uid "06869351-49A3-7084-7A5A-7C8BB1DDF0FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftIndex3CtrlPos" -p "LeftIndex3Ctrl";
	rename -uid "6409ED8F-4B89-CAD0-B0AE-05A1ED769B12";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftIndex3CtrlOff" -p "LeftIndex3CtrlPos";
	rename -uid "44B3FB8D-4FD3-13B5-A1E0-6891E972961B";
createNode transform -n "LeftIndex4CtrlGrp" -p "LeftIndex3CtrlOff";
	rename -uid "277B6D1B-4E59-0D73-A6AF-6990A3A133DB";
createNode transform -n "LeftIndex4Ctrl" -p "LeftIndex4CtrlGrp";
	rename -uid "2EA5C224-4580-965D-2B3B-90B4821D5FB7";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftIndex4CtrlShape" -p "LeftIndex4Ctrl";
	rename -uid "16DDE7F2-4385-471E-CF1E-A9BA55C4F2F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftIndexAMGrp" -p "LeftIndex1Ctrl";
	rename -uid "7A31181A-44E5-65C0-B15D-5088D21ECFE8";
	setAttr ".t" -type "double3" 8.0370554403809535 -0.96187887678456718 -0.19800037636184697 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "LeftIndexPVPos" -p "LeftIndexAMGrp";
	rename -uid "9B565875-4FAC-FA3F-C4AD-80BB771DD200";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "LeftIndexAMGrpAMCons" -p "LeftIndexAMGrp";
	rename -uid "26A1AE26-48B1-0346-94E4-AC932A39F190";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftIndexIKCtrlW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -91.06182612234096 0.12143709174710533 -1.4592493019936654 ;
	setAttr -k on ".w0";
createNode transform -n "LeftMiddleRigGrp" -p "LeftWristIKScaleGrp";
	rename -uid "2E8FD8E6-4330-38C5-D793-D98B0D34EF55";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".t" -type "double3" -77.035744069241105 -155.38250605296665 0.69614644100710699 ;
	setAttr ".r" -type "double3" 0.0019691646409709875 0.041153301033056346 2.7394848323723795 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Middle";
createNode transform -n "LeftMiddle1CtrlGrp" -p "LeftMiddleRigGrp";
	rename -uid "C4CED182-4991-F301-FC4A-7C8BF1EF67BE";
	setAttr ".t" -type "double3" 85.088839304037151 151.36632590610057 0.31699697099422031 ;
	setAttr ".r" -type "double3" -91.950977541719823 0.22173448607895013 -1.9213309509772281 ;
createNode transform -n "LeftMiddle1Ctrl" -p "LeftMiddle1CtrlGrp";
	rename -uid "6544212F-4B60-FE02-D2D5-C99DAF74673D";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftMiddle1CtrlShape" -p "LeftMiddle1Ctrl";
	rename -uid "6659D08F-41B9-0D0A-65B6-F2A8921465FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftMiddleIKCtrlGrp" -p "LeftMiddle1Ctrl";
	rename -uid "1A2F13CF-45CA-6031-7897-D89B3A0B2E5A";
	setAttr ".t" -type "double3" 18.788838207485639 -0.28134330799816976 -0.14789884823440502 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftMiddleIKCtrl" -p "LeftMiddleIKCtrlGrp";
	rename -uid "86C90312-411B-9C18-E485-BFA841C7AC3D";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftMiddleIKCtrlShape" -p "LeftMiddleIKCtrl";
	rename -uid "D490AA32-41D0-611A-08AD-5EAF102A9C69";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-1.2931481330191726e-14 2.2382144999999842 0
		-1.243449787580175e-14 -1.5987211554602254e-14 2.23821
		-1.1937514421411774e-14 -2.2382145000000162 0
		-1.243449787580175e-14 -1.5987211554602254e-14 -2.23821
		-1.2931481330191726e-14 2.2382144999999842 0
		2.8909304999999876 -1.5345296033864032e-14 0
		-1.243449787580175e-14 -1.5987211554602254e-14 2.23821
		-1.1937514421411774e-14 -2.2382145000000162 0
		2.8909304999999876 -1.5345296033864032e-14 0
		-1.243449787580175e-14 -1.5987211554602254e-14 -2.23821
		;
createNode ikHandle -n "LeftMiddleIKh" -p "LeftMiddleIKCtrl";
	rename -uid "228726C2-4F1A-5A55-BB38-D38E89607E39";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -4.6781291018760385e-07 1.6520118606422329e-13 2.2637323127128184e-09 ;
	setAttr ".r" -type "double3" 91.952050910727309 -1.9126680015677719 -0.28704023848072446 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hsh" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftMiddleIKhPVCons" -p "LeftMiddleIKh";
	rename -uid "EE14DF00-4C7C-39D6-C60B-56AE1D0FDD97";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftMiddlePVPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -1.4210854715202004e-14 8.8817841970012523e-16 0.10000000000002274 ;
	setAttr -k on ".w0";
createNode transform -n "LeftMiddleAMUpvec" -p "LeftMiddleIKCtrl";
	rename -uid "3D71057E-4088-6370-1577-D78CD3BD6DFA";
createNode joint -n "LeftMiddle1IKJnt" -p "LeftMiddle1Ctrl";
	rename -uid "0D45EF21-4D21-1FC7-CE78-F9A83E24A370";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.2894242493831882 -0.28134330799817153 -0.14789884823434818 ;
	setAttr ".jo" -type "double3" 0 -0.12492997541023408 0 ;
createNode joint -n "LeftMiddle2IKJnt" -p "LeftMiddle1IKJnt";
	rename -uid "ABF7972A-47F0-DB92-CB14-E1917045043C";
	setAttr ".t" -type "double3" 4.490250143347434 -1.1682109414242347e-14 1.0072238182397138e-16 ;
	setAttr ".r" -type "double3" -8.1610646111376662e-27 8.5428413130042725e-13 -8.3853758418653594e-24 ;
	setAttr ".jo" -type "double3" 0 0.15547849068195649 0 ;
createNode joint -n "LeftMiddle3IKJnt" -p "LeftMiddle2IKJnt";
	rename -uid "AEBA917A-4DF7-B6CF-B8F8-D299BF775F07";
	setAttr ".t" -type "double3" 2.9883318013495392 -1.200914367949224e-13 6.9388939039072284e-17 ;
	setAttr ".r" -type "double3" 2.8736517147222877e-26 7.150269398965165e-13 -4.2289235019100055e-24 ;
	setAttr ".jo" -type "double3" 0 0.12492996305008559 0 ;
createNode joint -n "LeftMiddle4IKJnt" -p "LeftMiddle3IKJnt";
	rename -uid "F5499E4D-479C-B0C1-8CFE-65B7A0D39098";
	setAttr ".t" -type "double3" 3.0208537666762112 -1.2140635718971282e-13 -2.7755575615628914e-17 ;
createNode ikEffector -n "effector10" -p "LeftMiddle3IKJnt";
	rename -uid "657B34EB-4278-8F64-8271-2CA621DA63D9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftMiddle1MTPos" -p "LeftMiddle1Ctrl";
	rename -uid "17062DD0-4216-EF34-20E5-B78AD92831C8";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "LeftMiddle2MTPos" -p "LeftMiddle1MTPos";
	rename -uid "90A32D16-4551-7149-2F9F-7496E930A7CD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftMiddle3MTPos" -p "LeftMiddle2MTPos";
	rename -uid "231B1D4A-4622-2DB9-E87A-89B02FA5359F";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftMiddle1CtrlPos" -p "LeftMiddle1Ctrl";
	rename -uid "87B17AA8-4CAC-99F8-8ED7-08B1B8E0F326";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "LeftMiddle1CtrlOff" -p "LeftMiddle1CtrlPos";
	rename -uid "192E8F72-49BD-D9E8-557A-99A162F7D7C5";
createNode transform -n "LeftMiddle2CtrlGrp" -p "LeftMiddle1CtrlOff";
	rename -uid "7227DE58-4893-DE50-7FD5-65AD49703BC0";
createNode transform -n "LeftMiddle2Ctrl" -p "LeftMiddle2CtrlGrp";
	rename -uid "94792945-480F-7201-876C-719C523CD0DF";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftMiddle2CtrlShape" -p "LeftMiddle2Ctrl";
	rename -uid "3D6C0BCB-46D4-75FA-7503-54B5D9555883";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftMiddle2CtrlPos" -p "LeftMiddle2Ctrl";
	rename -uid "FD570E32-4CD9-F8E0-07DF-47A3BC79A5E7";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftMiddle2CtrlOff" -p "LeftMiddle2CtrlPos";
	rename -uid "2B5A16FE-45F7-8CE9-3A4F-A98BD075657F";
createNode transform -n "LeftMiddle3CtrlGrp" -p "LeftMiddle2CtrlOff";
	rename -uid "88F35A91-40F4-E0DB-994E-83B1893B93AE";
createNode transform -n "LeftMiddle3Ctrl" -p "LeftMiddle3CtrlGrp";
	rename -uid "B9C99180-43BA-E94A-D149-47840CB6AF85";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftMiddle3CtrlShape" -p "LeftMiddle3Ctrl";
	rename -uid "B20AEC01-4481-99C9-A5A1-C9A1DEB5F182";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftMiddle3CtrlPos" -p "LeftMiddle3Ctrl";
	rename -uid "2EC57834-4062-1E67-94B5-F8A22AC60B07";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftMiddle3CtrlOff" -p "LeftMiddle3CtrlPos";
	rename -uid "D7980BF2-4161-717C-8AF7-8186E5CFE345";
createNode transform -n "LeftMiddle4CtrlGrp" -p "LeftMiddle3CtrlOff";
	rename -uid "6FA09360-41DD-8E7A-6ADB-1788A8D27F58";
createNode transform -n "LeftMiddle4Ctrl" -p "LeftMiddle4CtrlGrp";
	rename -uid "9725F0B5-4273-222B-9C9E-6197B756495A";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftMiddle4CtrlShape" -p "LeftMiddle4Ctrl";
	rename -uid "72678738-4054-DA80-D269-67B2443197A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftMiddleAMGrp" -p "LeftMiddle1Ctrl";
	rename -uid "5BB9D46D-4B05-F4DC-D05E-C7B7384C0137";
	setAttr ".t" -type "double3" 8.2894242493831882 -0.28134330799817153 -0.14789884823434818 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "LeftMiddlePVPos" -p "LeftMiddleAMGrp";
	rename -uid "280594C0-4FD0-75DB-285D-D18F9C92C778";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "LeftMiddleAMGrpAMCons" -p "LeftMiddleAMGrp";
	rename -uid "047E33B7-4CB0-F9EF-804F-82A4D33A7E46";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftMiddleIKCtrlW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -91.950977541719794 0.22173448607912752 -1.9213309509776646 ;
	setAttr -k on ".w0";
createNode transform -n "LeftRingRigGrp" -p "LeftWristIKScaleGrp";
	rename -uid "FA28317E-4CD1-4BF0-946A-2EB07E41C454";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".t" -type "double3" -77.035744069241105 -155.38250605296665 0.69614644100710699 ;
	setAttr ".r" -type "double3" 0.0019691646409709875 0.041153301033056346 2.7394848323723795 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Ring";
createNode transform -n "LeftRing1CtrlGrp" -p "LeftRingRigGrp";
	rename -uid "E8366CB5-4694-A412-6356-72BB8EC52E4A";
	setAttr ".t" -type "double3" 85.054094143684807 151.39964097227573 -1.4408647043367719 ;
	setAttr ".r" -type "double3" -91.790190235747659 0.49219755206388288 -2.1796230769057039 ;
createNode transform -n "LeftRing1Ctrl" -p "LeftRing1CtrlGrp";
	rename -uid "302A78C8-4FB2-CDD8-2106-7DABEE27DA8A";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftRing1CtrlShape" -p "LeftRing1Ctrl";
	rename -uid "DB71697D-43F0-954A-C08B-16816A3133DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftRingIKCtrlGrp" -p "LeftRing1Ctrl";
	rename -uid "0A0DE13A-427F-F261-CE76-5E9545C9D6FD";
	setAttr ".t" -type "double3" 17.440376725136503 0.18630276453823624 -0.24684328495044383 ;
createNode transform -n "LeftRingIKCtrl" -p "LeftRingIKCtrlGrp";
	rename -uid "3F46AF5A-4EB4-CBFC-559D-7AA26E351932";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftRingIKCtrlShape" -p "LeftRingIKCtrl";
	rename -uid "332E652D-453C-F5A6-62F6-8491E1F43491";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		1.3713871260812025e-14 2.2382145000000144 0
		1.4210854715202001e-14 1.4210854715202004e-14 2.23821
		1.4707838169591977e-14 -2.238214499999986 0
		1.4210854715202001e-14 1.4210854715202004e-14 -2.23821
		1.3713871260812025e-14 2.2382145000000144 0
		2.8909305000000143 1.4852770235940226e-14 0
		1.4210854715202001e-14 1.4210854715202004e-14 2.23821
		1.4707838169591977e-14 -2.238214499999986 0
		2.8909305000000143 1.4852770235940226e-14 0
		1.4210854715202001e-14 1.4210854715202004e-14 -2.23821
		;
createNode ikHandle -n "LeftRingIKh" -p "LeftRingIKCtrl";
	rename -uid "690DD2B7-4E85-8991-DCD4-C199D026E330";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.8637392536838888e-08 5.5889244392481885e-06 -1.4389343050424941e-09 ;
	setAttr ".r" -type "double3" 91.79140116892836 -2.1631829499681672 -0.56007758213288084 ;
	setAttr ".hsh" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftRingIKhPVCons" -p "LeftRingIKh";
	rename -uid "F53F9491-4B4E-2C5B-76D8-7C9683EAB703";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftRingPVPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.00059540197686658303 0 0.099998227466670642 ;
	setAttr -k on ".w0";
createNode transform -n "LeftRingAMUpvec" -p "LeftRingIKCtrl";
	rename -uid "9A0A875C-4482-86B3-FD57-6EB63EE6F7C1";
createNode joint -n "LeftRing1IKJnt" -p "LeftRing1Ctrl";
	rename -uid "8E627AB4-4514-80A3-5DDE-20A9A711E213";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.1150593770557151 0.17193387637405433 -0.19131917692749312 ;
	setAttr ".r" -type "double3" 0.0047782958180209358 -1.7695658737917963e-09 -4.7682833505733903e-05 ;
	setAttr ".jo" -type "double3" 0 -0.23059641750729162 0.088363362264345172 ;
createNode joint -n "LeftRing2IKJnt" -p "LeftRing1IKJnt";
	rename -uid "22865A45-430E-E2C6-FA37-06B1476042B9";
	setAttr ".t" -type "double3" 4.0331219026503629 1.1054212795504666e-14 4.4301524926348861e-17 ;
	setAttr ".r" -type "double3" 1.2991891608762886e-17 -3.4059762769211357e-11 3.7494947934597057e-15 ;
	setAttr ".jo" -type "double3" 0 0.72003743209724635 -7.9399973580881431e-05 ;
createNode joint -n "LeftRing3IKJnt" -p "LeftRing2IKJnt";
	rename -uid "685183CE-4848-0869-99C7-948932A344F9";
	setAttr ".t" -type "double3" 2.6325079789853074 3.8857805867050358e-16 -1.2490009027033011e-16 ;
	setAttr ".r" -type "double3" -1.5084795451456567e-21 -2.7103839404458864e-11 1.2105599008055974e-17 ;
	setAttr ".jo" -type "double3" 0 0.57173823733524354 0 ;
createNode joint -n "LeftRing4IKJnt" -p "LeftRing3IKJnt";
	rename -uid "F7DAF24A-49FE-52CA-5F6D-C88CC75E440A";
	setAttr ".t" -type "double3" 2.6602836124809039 -1.4805959236419137e-10 0 ;
createNode ikEffector -n "effector11" -p "LeftRing3IKJnt";
	rename -uid "0D856FFF-4371-E8AA-E774-FF802ED25F57";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftRing1MTPos" -p "LeftRing1Ctrl";
	rename -uid "A201DA73-4A59-E6C9-3E6C-8ABB448450ED";
createNode transform -n "LeftRing2MTPos" -p "LeftRing1MTPos";
	rename -uid "651A33C6-4F12-167B-8362-3D9691CA522D";
createNode transform -n "LeftRing3MTPos" -p "LeftRing2MTPos";
	rename -uid "D7A32221-4316-BC9C-3F70-BDB0682F5D43";
createNode transform -n "LeftRing1CtrlPos" -p "LeftRing1Ctrl";
	rename -uid "18497300-4D49-0352-C781-05A0821C57EC";
createNode transform -n "LeftRing1CtrlOff" -p "LeftRing1CtrlPos";
	rename -uid "FBA069E8-4906-D21A-FEC2-B98BC1F16E2B";
createNode transform -n "LeftRing2CtrlGrp" -p "LeftRing1CtrlOff";
	rename -uid "47970DD0-4DB5-7409-5B65-0293E9B2DC71";
createNode transform -n "LeftRing2Ctrl" -p "LeftRing2CtrlGrp";
	rename -uid "5D0D77A3-43C4-6BB9-A813-12935FC49134";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftRing2CtrlShape" -p "LeftRing2Ctrl";
	rename -uid "A658C951-4B6A-4226-5CB8-F0BCCCB35243";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftRing2CtrlPos" -p "LeftRing2Ctrl";
	rename -uid "C5514547-4082-F699-CBA1-DBB38AD58547";
createNode transform -n "LeftRing2CtrlOff" -p "LeftRing2CtrlPos";
	rename -uid "62B7FF8C-4FC8-5DD6-0ADB-9AB33F690181";
createNode transform -n "LeftRing3CtrlGrp" -p "LeftRing2CtrlOff";
	rename -uid "A11E711B-4ED7-5B5C-6D1C-33B76D528CF0";
createNode transform -n "LeftRing3Ctrl" -p "LeftRing3CtrlGrp";
	rename -uid "CB7121BB-425F-679D-2C04-219A93724507";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftRing3CtrlShape" -p "LeftRing3Ctrl";
	rename -uid "91570536-48C1-DA35-2AC6-0299549D1CF3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftRing3CtrlPos" -p "LeftRing3Ctrl";
	rename -uid "BC056700-4F6C-B1C7-4354-9480861066C1";
createNode transform -n "LeftRing3CtrlOff" -p "LeftRing3CtrlPos";
	rename -uid "A0788EF3-4EDA-C285-2AA2-5DBBDB67595F";
createNode transform -n "LeftRing4CtrlGrp" -p "LeftRing3CtrlOff";
	rename -uid "D5249A52-4889-70E8-C04F-0793FE791E01";
createNode transform -n "LeftRing4Ctrl" -p "LeftRing4CtrlGrp";
	rename -uid "AB249C7F-408A-CE6B-2D3B-E9A1DC716994";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftRing4CtrlShape" -p "LeftRing4Ctrl";
	rename -uid "79CA81DA-4F66-5481-47C8-FAB28705A133";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftRingAMGrp" -p "LeftRing1Ctrl";
	rename -uid "AA93F671-4F94-9B3A-1070-D49DD18529A9";
	setAttr ".t" -type "double3" 8.1150593770557151 0.17193387637405433 -0.19131917692749312 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftRingPVPos" -p "LeftRingAMGrp";
	rename -uid "2FC3CE25-4903-83D5-B6EC-E3A703AE0F8F";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "LeftRingAMGrpAMCons" -p "LeftRingAMGrp";
	rename -uid "2D0C5CF7-45AE-A262-BFD2-6194544D3586";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftRingIKCtrlW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -91.79311305962284 0.5697709141356182 -2.5233733408522174 ;
	setAttr -k on ".w0";
createNode transform -n "LeftPinkyRigGrp" -p "LeftWristIKScaleGrp";
	rename -uid "368B42E4-495E-5BE9-63B9-7C9F73B39F11";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".t" -type "double3" -77.035744069241105 -155.38250605296665 0.69614644100710699 ;
	setAttr ".r" -type "double3" 0.0019691646409709875 0.041153301033056346 2.7394848323723795 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Pinky";
createNode transform -n "LeftPinky1CtrlGrp" -p "LeftPinkyRigGrp";
	rename -uid "F340FD5B-4F91-EA4A-2AA6-049744F68030";
	setAttr ".t" -type "double3" 84.938137506243521 151.21576212956913 -2.8811597644937041 ;
	setAttr ".r" -type "double3" -89.910028802168171 -0.43260442485236389 -1.5467247791466097 ;
createNode transform -n "LeftPinky1Ctrl" -p "LeftPinky1CtrlGrp";
	rename -uid "4C99CDDC-4685-7C53-4652-439BECF91FD5";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftPinky1CtrlShape" -p "LeftPinky1Ctrl";
	rename -uid "C024901E-467A-8551-5D91-4FB22B9C53D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftPinkyIKCtrlGrp" -p "LeftPinky1Ctrl";
	rename -uid "32E75FCB-41ED-878D-D6DE-E0955585C2C2";
	setAttr ".t" -type "double3" 14.934714506703386 0.86182605951835578 -0.34444089248700038 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftPinkyIKCtrl" -p "LeftPinkyIKCtrlGrp";
	rename -uid "A1A47B6C-4891-B25A-F338-84968FBD2E2A";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftPinkyIKCtrlShape" -p "LeftPinkyIKCtrl";
	rename -uid "3550B02B-4099-56FA-31F8-59A705C3B91B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-1.5596016589292102e-14 2.2382144999999869 0
		-1.5099033134902126e-14 -1.3322676295501878e-14 2.23821
		-1.460204968051215e-14 -2.2382145000000135 0
		-1.5099033134902126e-14 -1.3322676295501878e-14 -2.23821
		-1.5596016589292102e-14 2.2382144999999869 0
		2.890930499999985 -1.2680760774763655e-14 0
		-1.5099033134902126e-14 -1.3322676295501878e-14 2.23821
		-1.460204968051215e-14 -2.2382145000000135 0
		2.890930499999985 -1.2680760774763655e-14 0
		-1.5099033134902126e-14 -1.3322676295501878e-14 -2.23821
		;
createNode ikHandle -n "LeftPinkyIKh" -p "LeftPinkyIKCtrl";
	rename -uid "E6078EF6-41C8-ED31-5726-0897F0979347";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 2.3818383525053832e-05 4.7073456244106637e-14 2.1063613075966714e-09 ;
	setAttr ".r" -type "double3" 89.909998603114659 -1.5460435625780276 0.43503322273373174 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hsh" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftPinkyIKhPVCons" -p "LeftPinkyIKh";
	rename -uid "7548BF04-4A6C-72F0-A4D7-E0B98784FEA9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftPinkyPVPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.4210854715202004e-14 0 0.10000000000002274 ;
	setAttr -k on ".w0";
createNode transform -n "LeftPinkyAMUpvec" -p "LeftPinkyIKCtrl";
	rename -uid "3CE9AE57-4695-4A5E-5577-629901D367DA";
createNode joint -n "LeftPinky1IKJnt" -p "LeftPinky1Ctrl";
	rename -uid "9BD59DDE-4020-A5E1-13DA-CFA19BFB3F15";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 7.7090091829811911 0.86182605951834956 -0.34444089248700038 ;
	setAttr ".r" -type "double3" 8.5377055833244679e-07 0.085915279745318054 -1.3489114634888434e-09 ;
	setAttr ".jo" -type "double3" 0 -0.17653045960890207 0 ;
createNode joint -n "LeftPinky2IKJnt" -p "LeftPinky1IKJnt";
	rename -uid "971E3A24-401D-D8C8-A79B-67B43BD08EF8";
	setAttr ".t" -type "double3" 3.2041206012865651 -7.6608066388643895e-15 1.1222044272628028e-17 ;
	setAttr ".r" -type "double3" -2.0987166365470514e-15 -0.10467770932890223 5.0217929318071181e-13 ;
	setAttr ".jo" -type "double3" 0 0.22928647148035244 0 ;
createNode joint -n "LeftPinky3IKJnt" -p "LeftPinky2IKJnt";
	rename -uid "5C391A73-4899-69CF-5FAA-10A385D660BE";
	setAttr ".t" -type "double3" 2.0193520690784195 -5.5219717687293698e-14 -6.591949208711867e-17 ;
	setAttr ".r" -type "double3" -2.728855518735652e-15 -0.099800968337793242 2.3854528517995001e-13 ;
	setAttr ".jo" -type "double3" 0 0.17653044291952966 0 ;
createNode joint -n "LeftPinky4IKJnt" -p "LeftPinky3IKJnt";
	rename -uid "90DFC776-492A-0F49-9C16-1D930CE851D9";
	setAttr ".t" -type "double3" 2.0022645730135373 -5.4747872901827956e-14 7.6327832942979512e-17 ;
createNode ikEffector -n "effector12" -p "LeftPinky3IKJnt";
	rename -uid "0E60B92A-4BC1-6365-B0C6-498DFF46B4BA";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftPinky1MTPos" -p "LeftPinky1Ctrl";
	rename -uid "7FCEC35F-4D56-0C82-7E45-3CA045E0B964";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftPinky2MTPos" -p "LeftPinky1MTPos";
	rename -uid "2F2F6B51-4570-AB65-DE2D-27B8223FA0CF";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftPinky3MTPos" -p "LeftPinky2MTPos";
	rename -uid "8DFE5B51-44BE-2C7D-8689-2BAC68C34B04";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "LeftPinky1CtrlPos" -p "LeftPinky1Ctrl";
	rename -uid "E9663F13-4D42-CB94-9F64-5B89CEE33A9D";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftPinky1CtrlOff" -p "LeftPinky1CtrlPos";
	rename -uid "2F3F8697-4DC1-F00D-6F15-5EA43F9F9D69";
createNode transform -n "LeftPinky2CtrlGrp" -p "LeftPinky1CtrlOff";
	rename -uid "17B02BA3-4864-CA79-38F2-44B31ADB25FC";
createNode transform -n "LeftPinky2Ctrl" -p "LeftPinky2CtrlGrp";
	rename -uid "470718F6-4823-7A61-5991-8E8BB11F587A";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftPinky2CtrlShape" -p "LeftPinky2Ctrl";
	rename -uid "BD259628-4237-6128-3C25-FBADC03E6D91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftPinky2CtrlPos" -p "LeftPinky2Ctrl";
	rename -uid "4DBA760C-4243-C039-904A-D59ACF0003ED";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftPinky2CtrlOff" -p "LeftPinky2CtrlPos";
	rename -uid "D612E394-46F2-8E1E-1770-96BA3DF011EA";
createNode transform -n "LeftPinky3CtrlGrp" -p "LeftPinky2CtrlOff";
	rename -uid "FCBFA5E9-4D5E-0064-3EA9-189FC60C94F5";
createNode transform -n "LeftPinky3Ctrl" -p "LeftPinky3CtrlGrp";
	rename -uid "C44A38D2-408E-77E2-4D7D-82B80594DF46";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftPinky3CtrlShape" -p "LeftPinky3Ctrl";
	rename -uid "597065CC-4BE0-F5F0-45BF-C99A11F6DF0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftPinky3CtrlPos" -p "LeftPinky3Ctrl";
	rename -uid "B262FF8B-4DC9-EC3F-99DA-18B47FBDF21B";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "LeftPinky3CtrlOff" -p "LeftPinky3CtrlPos";
	rename -uid "25B77AF5-4E54-2541-66A2-E2B659E9E42F";
createNode transform -n "LeftPinky4CtrlGrp" -p "LeftPinky3CtrlOff";
	rename -uid "5F6D6B38-42ED-A4BF-699D-9B930CCD5FCD";
createNode transform -n "LeftPinky4Ctrl" -p "LeftPinky4CtrlGrp";
	rename -uid "AFBCE4E6-4E0D-7320-2074-15ACC27063F4";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftPinky4CtrlShape" -p "LeftPinky4Ctrl";
	rename -uid "8A7C05C6-4C8E-ADF9-825F-BF9525DF4E09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftPinkyAMGrp" -p "LeftPinky1Ctrl";
	rename -uid "EDB5F750-43DE-17E8-8211-888B9A47157A";
	setAttr ".t" -type "double3" 7.7090091829811911 0.86182605951834956 -0.34444089248700038 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "LeftPinkyPVPos" -p "LeftPinkyAMGrp";
	rename -uid "5187ABFB-4E39-0B5D-80B6-B59DA9C70A1D";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "LeftPinkyAMGrpAMCons" -p "LeftPinkyAMGrp";
	rename -uid "ABB9CB11-440D-3846-DEB5-4C88FEFFAEBE";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftPinkyIKCtrlW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -89.910028802168185 -0.43260442485229683 -1.5467247791465726 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThumbRigGrp" -p "LeftWristIKScaleGrp";
	rename -uid "EC620473-4E4A-9FCD-D13B-19A973F072C0";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".t" -type "double3" -77.035744069241105 -155.38250605296665 0.69614644100710699 ;
	setAttr ".r" -type "double3" 0.0019691646409709875 0.041153301033056346 2.7394848323723795 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Thumb";
createNode transform -n "LeftThumb1CtrlGrp" -p "LeftThumbRigGrp";
	rename -uid "8A046F2B-4BAC-6F02-4BC7-3B8463F99A9A";
	setAttr ".t" -type "double3" 86.102761534797438 150.24128238008223 1.5874120813427495 ;
	setAttr ".r" -type "double3" 13.189614660293588 -55.313739640105709 -33.727254260389429 ;
createNode transform -n "LeftThumb1Ctrl" -p "LeftThumb1CtrlGrp";
	rename -uid "300488E5-4EC5-0930-C43D-689405358813";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftThumb1CtrlShape" -p "LeftThumb1Ctrl";
	rename -uid "3237968D-4D88-B6FE-6780-F287C0EAF782";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-2.1979558740354865e-15 1.7351737824355969e-14 0.1305532552830044
		-2.2094583837255511e-15 -0.076737258377982676 0.10561869525900436
		-2.2054948788080144e-15 -0.12416355685798267 0.040342357509304344
		-2.1875787903713939e-15 -0.12416355685798267 -0.040344531697795685
		-2.1625538316765193e-15 -0.076737258377982676 -0.10562062787099574
		-2.1399785820535059e-15 1.7351737824355969e-14 -0.13055325528299574
		-2.1284756432373734e-15 0.076737258378017398 -0.10562062787099574
		-2.1324390945141514e-15 0.1241635568580174 -0.040344531697795685
		-2.1503551829507715e-15 0.1241635568580174 0.040342357509304344
		-2.1753801952864049e-15 0.076737258378017398 0.10561869525900436
		-2.1979558740354865e-15 1.7351737824355969e-14 0.1305532552830044
		-1.6697973154742311e-14 5.8138556191522655e-14 1.9328256775400128
		-1.6867022005160329e-14 -0.57462352595994204 2.1195304913300137
		-1.7054413849355579e-14 -0.92976030707994195 2.6083315499000128
		-1.7188573677628941e-14 -0.92976030707994195 3.212533702520012
		-1.7218253109307915e-14 -0.57462352595994204 3.7013347610900129
		-1.7132119997751442e-14 5.8138556191522655e-14 3.8880492379400127
		-1.6963069001703082e-14 0.57462352596005839 3.7013347610900129
		-1.6775677157507832e-14 0.92976030708005875 3.212533702520012
		-1.6641517329234469e-14 0.92976030708005875 2.6083315499000128
		-1.6611837897555495e-14 0.57462352596005839 2.1195304913300137
		-1.6697973154742311e-14 5.8138556191522655e-14 1.9328256775400128
		;
createNode transform -n "LeftThumbIKCtrlGrp" -p "LeftThumb1Ctrl";
	rename -uid "0CDA516B-416D-929F-FC1B-01B92FB46A33";
	setAttr ".t" -type "double3" 10.406492280014984 -8.5265128291212022e-14 7.460698725481052e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftThumbIKCtrl" -p "LeftThumbIKCtrlGrp";
	rename -uid "00DA8605-4AB4-6FC3-DBC5-3A995459B75B";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftThumbIKCtrlShape" -p "LeftThumbIKCtrl";
	rename -uid "CE4331A2-4962-2710-4BB6-569C6BCF9545";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		2.437201229721353e-14 2.2382144999999682 0
		2.4868995751603507e-14 -3.1974423109204502e-14 2.23821
		2.5365979205993483e-14 -2.2382145000000322 0
		2.4868995751603507e-14 -3.1974423109204502e-14 -2.23821
		2.437201229721353e-14 2.2382144999999682 0
		2.8909305000000249 -3.133250758846628e-14 0
		2.4868995751603507e-14 -3.1974423109204502e-14 2.23821
		2.5365979205993483e-14 -2.2382145000000322 0
		2.8909305000000249 -3.133250758846628e-14 0
		2.4868995751603507e-14 -3.1974423109204502e-14 -2.23821
		;
createNode ikHandle -n "LeftThumbIKh" -p "LeftThumbIKCtrl";
	rename -uid "5BB09D34-4B8C-3524-ADBC-AEA23838FF87";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -4.672987685694352e-08 1.1368683772161603e-13 9.5200292093977623e-10 ;
	setAttr ".r" -type "double3" 24.69188683127426 52.422907459333835 39.093286412375122 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".hsh" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftThumbIKhPVCons" -p "LeftThumbIKh";
	rename -uid "74B94A22-4FE0-B4EC-6DE4-7784B185BD0B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftThumbPVPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 0.099999999999997868 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThumbAMUpvec" -p "LeftThumbIKCtrl";
	rename -uid "5DDE7C6A-4EFA-BA49-EF77-8E8E56715A3C";
createNode joint -n "LeftThumb1IKJnt" -p "LeftThumb1Ctrl";
	rename -uid "B7703E48-4322-395B-A2E6-5F9487DC42EB";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 1.1546319456101628e-14 5.6843418860808015e-14 0 ;
	setAttr ".jo" -type "double3" 0 -0.14569305983987552 0 ;
createNode joint -n "LeftThumb2IKJnt" -p "LeftThumb1IKJnt";
	rename -uid "4C20A1CD-4C67-22A4-6895-699E69A0C174";
	setAttr ".t" -type "double3" 3.5221090575652241 6.8948993900989289e-16 2.2204460492448273e-16 ;
	setAttr ".r" -type "double3" -7.1539616481162992e-25 2.3097864345564408e-13 -2.0376927854243719e-24 ;
	setAttr ".jo" -type "double3" 0 0.14282796218038762 0 ;
createNode joint -n "LeftThumb3IKJnt" -p "LeftThumb2IKJnt";
	rename -uid "AEE1EC4D-4E6D-0012-6FAC-1091E0DD0190";
	setAttr ".t" -type "double3" 3.2269132937975389 -1.5226708782734022e-13 6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 1.1018554892914341e-26 2.355565752888171e-13 -1.109265798799757e-24 ;
	setAttr ".jo" -type "double3" 0 0.14569305461085261 0 ;
createNode joint -n "LeftThumb4IKJnt" -p "LeftThumb3IKJnt";
	rename -uid "22DD4128-4A8F-09A2-2977-7A9E74B959A3";
	setAttr ".t" -type "double3" 3.6574926369281346 -1.7108536809473667e-13 6.9388939039072284e-18 ;
createNode ikEffector -n "effector13" -p "LeftThumb3IKJnt";
	rename -uid "58054548-4D52-602C-39EB-F4B7254BDEB7";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftThumb1MTPos" -p "LeftThumb1Ctrl";
	rename -uid "0017CF96-45AB-F2A7-71B8-78933F13CA90";
createNode transform -n "LeftThumb2MTPos" -p "LeftThumb1MTPos";
	rename -uid "60672CDB-416E-52BD-9AA5-0A90D0F3AA8C";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "LeftThumb3MTPos" -p "LeftThumb2MTPos";
	rename -uid "8E678065-42B7-905A-7DF4-C584F59970FC";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftThumb1CtrlPos" -p "LeftThumb1Ctrl";
	rename -uid "C8411496-4710-6D5C-E3C4-6DB71BEB48AB";
createNode transform -n "LeftThumb1CtrlOff" -p "LeftThumb1CtrlPos";
	rename -uid "6BDD4154-42C2-E9A5-12B9-F4AF40582EA5";
createNode transform -n "LeftThumb2CtrlGrp" -p "LeftThumb1CtrlOff";
	rename -uid "A8C24D97-4A96-AE58-470E-238F8AF07C21";
createNode transform -n "LeftThumb2Ctrl" -p "LeftThumb2CtrlGrp";
	rename -uid "68E926E0-4C37-02EA-187B-1284BDD0027F";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftThumb2CtrlShape" -p "LeftThumb2Ctrl";
	rename -uid "8544FD7B-4C8B-E629-2FFF-B5AE53EE5908";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		1.6473786934589912e-16 0 0.098086592999998543
		1.5609586356823986e-16 -0.057653838000000013 0.079352888999998525
		1.5907370347623146e-16 -0.093285918000000009 0.030309810299998508
		1.7253432589292588e-16 -0.093285918000000009 -0.030311443800001499
		1.9133594775233593e-16 -0.057653838000000013 -0.079354341000001508
		2.0829706692815381e-16 0 -0.098086593000001512
		2.1693939511457945e-16 0.057653838000000013 -0.079354341000001508
		2.1396159550768363e-16 0.093285918000000009 -0.030311443800001499
		2.005009730909892e-16 0.093285918000000009 0.030309810299998508
		1.8169931093048338e-16 0.057653838000000013 0.079352888999998525
		1.6473786934589912e-16 0 0.098086592999998543
		-3.0275234319532257e-16 0 2.2034753399999985
		-4.2976124658977706e-16 -0.43172316000000005 2.343749429999999
		-5.7055151270191111e-16 -0.69854268000000008 2.7109928999999986
		-6.7134777737010149e-16 -0.69854268000000008 3.1649389199999982
		-6.9364637367286252e-16 -0.43172316000000005 3.5321823899999982
		-6.2893329211277653e-16 0 3.6724637399999986
		-5.0192277667449027e-16 0.43172316000000005 3.5321823899999982
		-3.6113251056235631e-16 0.69854268000000008 3.1649389199999982
		-2.6033624589416589e-16 0.69854268000000008 2.7109928999999986
		-2.3803764959140486e-16 0.43172316000000005 2.343749429999999
		-3.0275234319532257e-16 0 2.2034753399999985
		;
createNode transform -n "LeftThumb2CtrlPos" -p "LeftThumb2Ctrl";
	rename -uid "8E73D95D-4E24-E9B9-DE31-D5980874BCA9";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "LeftThumb2CtrlOff" -p "LeftThumb2CtrlPos";
	rename -uid "5D0711C2-4410-C01C-5BD0-CD8191566945";
createNode transform -n "LeftThumb3CtrlGrp" -p "LeftThumb2CtrlOff";
	rename -uid "195886D2-43DC-71E6-D2A2-39AD8820C8B6";
createNode transform -n "LeftThumb3Ctrl" -p "LeftThumb3CtrlGrp";
	rename -uid "AAFE110B-4BCB-C573-5AA3-B1AF15533643";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftThumb3CtrlShape" -p "LeftThumb3Ctrl";
	rename -uid "FFEF56F4-477A-767D-6558-82B58C2F37C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftThumb3CtrlPos" -p "LeftThumb3Ctrl";
	rename -uid "FBE7F0C2-4C4C-3D1F-0B66-E9B265822E5B";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftThumb3CtrlOff" -p "LeftThumb3CtrlPos";
	rename -uid "94AB4ACD-4203-F7E2-477F-759B98F28073";
createNode transform -n "LeftThumb4CtrlGrp" -p "LeftThumb3CtrlOff";
	rename -uid "B4B6368C-459D-75C9-1CCB-A7A810A7DA08";
createNode transform -n "LeftThumb4Ctrl" -p "LeftThumb4CtrlGrp";
	rename -uid "C9E3D9BA-4681-B60F-B9F2-53B251153FF0";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "LeftThumb4CtrlShape" -p "LeftThumb4Ctrl";
	rename -uid "47B278C5-4385-A54C-D120-4688873F1E9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		-1.7999668422419292e-17 0 0.081063300000000005
		-2.5141821957674893e-17 -0.047647800000000004 0.065580899999999998
		-2.2680797240326453e-17 -0.077095799999999992 0.025049429999999998
		-1.1556315904215351e-17 -0.077095799999999992 -0.025050780000000002
		3.982214558106989e-18 -0.047647800000000004 -0.065582100000000004
		1.7999668422419292e-17 0 -0.081063300000000005
		2.5142088411200804e-17 0.047647800000000004 -0.065582100000000004
		2.2681097000543102e-17 0.077095799999999992 -0.025050780000000002
		1.1556615664432001e-17 0.077095799999999992 0.025049429999999998
		-3.9819481045810775e-18 0.047647800000000004 0.065580899999999998
		-1.7999668422419292e-17 0 0.081063300000000005
		-4.043552159771479e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.043552159771479e-16 0 1.8210539999999997
		;
createNode transform -n "LeftThumbAMGrp" -p "LeftThumb1Ctrl";
	rename -uid "419F12D0-4117-6809-8DFB-A7A3CD4E96F0";
	setAttr ".t" -type "double3" 1.1546319456101628e-14 5.6843418860808015e-14 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "LeftThumbPVPos" -p "LeftThumbAMGrp";
	rename -uid "A88C0C51-46BB-8845-46FF-21B9E997979D";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "LeftThumbAMGrpAMCons" -p "LeftThumbAMGrp";
	rename -uid "0E6E0F1A-48E1-0AEB-5BDD-659AB409581A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftThumbIKCtrlW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 13.189614660294788 -55.31373964010595 -33.727254260390694 ;
	setAttr -k on ".w0";
createNode blendColors -n "LeftArmFKScaleBC";
	rename -uid "612316A7-4135-CE5E-1C3D-F79C00C74101";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "LeftArmIKScaleBC";
	rename -uid "1B330C9D-440F-9DD8-0051-98AB95050BA5";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode setRange -n "setRange1";
	rename -uid "071E5488-4F9E-C6DD-E19D-6CA2B4C3CC70";
	setAttr ".n" -type "float3" 1 0 0 ;
	setAttr ".m" -type "float3" 0.1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode vectorProduct -n "vectorProduct1";
	rename -uid "01CE98D5-4D65-0CD6-037A-5FAAD14DA36D";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "856694C3-4D1F-5C79-513C-D6905E9A92AD";
createNode composeMatrix -n "composeMatrix1";
	rename -uid "29F41810-457A-2CDE-07D1-E7ADFC20D0B6";
	setAttr ".it" -type "double3" 0 0 1 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "6542E7D2-4E36-B869-A857-98A9C86815A9";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "F0D1C847-4F42-F239-807A-EB82694E63E0";
createNode setRange -n "LeftFrontSkirtSR2";
	rename -uid "06A2A351-4C85-145A-EB4B-36A68F897540";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "LeftSideSkirtSR1";
	rename -uid "0AE45F2E-4F43-8BDD-769C-40A1088FD902";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "LeftBackSkirtSR3";
	rename -uid "BA8CA54E-461B-EA47-72DE-B59C63C5664A";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "RightBackSkirtSR4";
	rename -uid "757F4735-414F-FF83-242B-B09F3A6F7C1D";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "RightSkirtSR2";
	rename -uid "4D960028-489E-988F-F671-1C9EFA4612EF";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "RightFrontSkirtSR3";
	rename -uid "973E9D53-4920-5F83-B6C5-2288CD5ABA27";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
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
createNode decomposeMatrix -n "LeftElbowFKCtrlGrpDM";
	rename -uid "1E76B8E4-4314-8FB4-6569-04885B43C085";
createNode multMatrix -n "LeftElbowFKCtrlGrpMM";
	rename -uid "61BFE040-49F0-47CF-A05C-149F32DB077C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99869356678365495 -0.047786973849834345 0.018098751205999321 0
		 -0.047794802438321259 -0.99885717540591457 2.9539342976878097e-13 0 0.018078067507984758 -0.00086502623856607366 -0.99983620418785768 0
		 51.590176741996814 153.0917207314275 -1.2348856586639825 1;
	setAttr ".i[1]" -type "matrix" 0.99876279833535919 -0.047794802438321703 -0.013730605274496972 0
		 -0.047790286544008354 -0.99885717540591457 0.00065700240466419306 0 -0.013746314901230024 2.9541099842726523e-13 -0.99990551494960578 0
		 -11.920673456247853 155.38250605296716 -0.62698625619913717 1;
createNode decomposeMatrix -n "LeftWristFKCtrlGrpDM";
	rename -uid "7F662FA6-4430-039F-C40F-B39DCF480036";
createNode multMatrix -n "LeftWristFKCtrlGrpMM";
	rename -uid "50F7E652-4738-266C-CA74-DF877B34B3BF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99885691716165204 -0.047794790081465845 0.00071908232429836129 0
		 -0.047794802438321272 -0.99885717540591479 2.9544171403490636e-13 0 0.00071826053931886037 -3.4368397921833044e-05 -0.99999974146027237 0
		 84.374662025947174 151.52299996156211 -0.64075121912623212 1;
	setAttr ".i[1]" -type "matrix" 0.99869356678365484 -0.047794802438320662 0.018078067507984765 0
		 -0.047786973849833936 -0.99885717540591445 -0.00086502623856606412 0 0.018098751205999342 2.9539894325398459e-13 -0.99983620418785768 0
		 -44.184637677941126 155.38250605296696 -2.0349057321153898 1;
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
	setAttr ".ort" -type "double3" -2.7022290750715492e-16 3.876301018033661e-15 -1.9878466759146981e-14 ;
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
	setAttr ".ort" -type "double3" 0 4.7708320221952752e-15 0 ;
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
	setAttr ".ort" -type "double3" 0 3.578124016646456e-15 0 ;
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
createNode decomposeMatrix -n "LeftIndex1MTPosDM";
	rename -uid "B43E1A0C-482B-881B-F953-D5827FC356FF";
createNode multMatrix -n "LeftIndex1MTPosMM";
	rename -uid "D28BA3FC-4E7C-DC7C-D212-2EA5C4C5B853";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338315 -0.025465894417515157 -0.0021194754981865571 0
		 -0.0025903415120694809 -0.018471326041210597 -0.99982603499065281 0 0.025422314719991429 0.99950502666859842 -0.018531259495307983 0
		 92.932315393672042 150.74276926990007 2.8491709283561382 1;
	setAttr ".i[1]" -type "matrix" 0.99973173335872645 -0.0025903415120694792 0.023016329994320142 2.7105054312137611e-20
		 -0.023060314896815148 -0.018471326041210601 0.99956342069482484 8.6736173798840355e-19
		 -0.002164068486974792 -0.99982603499065281 -0.018526104891572262 -1.3552527156068805e-20
		 -89.425043224753708 5.8738205462252235 -152.76313489519626 0.99999999999999989;
createNode decomposeMatrix -n "LeftIndex2MTPosDM";
	rename -uid "BD5CFCEE-45A6-A12A-14EE-919EEBD4F70D";
createNode multMatrix -n "LeftIndex2MTPosMM";
	rename -uid "76032F9F-4257-EA20-7C93-02A8BAFE82DC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338315 -0.025465894417515157 -0.0021194754981865571 0
		 -0.0025903415120694809 -0.018471326041210597 -0.99982603499065281 0 0.025422314719991436 0.99950502666859864 -0.018531259495307987 0
		 97.04085922467047 150.63810734858535 2.8404601258145403 1;
	setAttr ".i[1]" -type "matrix" 0.99973177778407352 -0.002590341512069487 0.023014400264775463 0
		 -0.02305838549215522 -0.018471326041210601 0.99956346520507389 0 -0.0021641042469351321 -0.99982603499065281 -0.01852610071435035 0
		 -93.535231833187552 5.8738205462252298 -152.76295434935 1;
createNode decomposeMatrix -n "LeftIndex3MTPosDM";
	rename -uid "20599B7F-43EF-0A9F-8ABC-2CA7DF4F8851";
createNode multMatrix -n "LeftIndex3MTPosMM";
	rename -uid "8F4DB4CC-4ACE-7C55-7319-349B081BC1F7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338315 -0.025465894417515157 -0.0021194754981865571 0
		 -0.0025903415120694809 -0.018471326041210597 -0.99982603499065281 0 0.025422314719991432 0.99950502666859853 -0.018531259495307983 0
		 99.55811310038159 150.57398228678596 2.8351231250764788 1;
	setAttr ".i[1]" -type "matrix" 0.99973184825637462 -0.0025903415120694883 0.023011338786444846 0
		 -0.023055324529247967 -0.018471326041210614 0.9995635358120718 0 -0.002164160979395785 -0.99982603499065292 -0.018526094087127919 0
		 -96.053796396004756 5.873820546225315 -152.76266020456404 1;
createNode unitConversion -n "unitConversion8";
	rename -uid "2CDEA43E-4D06-F95B-5A61-00B3ACCC2141";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion11";
	rename -uid "98E8EE73-46B0-3C5E-B0C4-5FB6947A614A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion12";
	rename -uid "7D098AD0-417F-71F7-BC71-4A84202B3522";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion9";
	rename -uid "E69D8C36-4DCD-3C70-DC05-58A3ACC86BF6";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion10";
	rename -uid "A245D2E0-4948-1FD8-BA44-84968F386D4E";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftMiddle1MTPosDM";
	rename -uid "02FBE684-4125-978C-B4EF-C3944896ED55";
createNode multMatrix -n "LeftMiddle1MTPosMM";
	rename -uid "B39BD948-4A0E-F773-20B1-F994EFFB78CC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177237 -0.033527015660773943 -0.0038699871872255546 0
		 -0.005006985149223174 -0.033895587404145777 -0.99941283724707253 0 0.033376154357003592 0.99886286765271759 -0.03404414699955538 0
		 93.370013612418944 150.95021187848963 0.57113020917691437 1;
	setAttr ".i[1]" -type "matrix" 0.99950071776342841 -0.0050069851492634551 0.031196879493091415 0
		 -0.031348977730412786 -0.033895587404145083 0.99893359676696514 0 -0.0039442091285178636 -0.99941283724707208 -0.034035627805396818 0
		 -88.589008135629328 6.1548432347364859 -153.68265237222207 1;
createNode decomposeMatrix -n "LeftMiddle2MTPosDM";
	rename -uid "B21E761E-4CB4-AFDE-EF8F-5782157B766B";
createNode multMatrix -n "LeftMiddle2MTPosMM";
	rename -uid "5FDBB067-4E10-B705-02D2-17AD518110B4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177237 -0.033527015660773908 -0.0038699871872255572 0
		 -0.0050069851492231671 -0.033895587404145562 -0.99941283724707297 0 0.033376154357003571 0.99886286765271803 -0.034044146999555165 0
		 97.857700348561153 150.79966737265292 0.55375301955198752 1;
	setAttr ".i[1]" -type "matrix" 0.99941238165056012 -0.0050069851492634534 0.033909018022794071 0
		 -0.034059576755900434 -0.033895587404145083 0.99884485000711531 0 -0.0038518352462235603 -0.99941283724707197 -0.034046205530028371 0
		 -92.6618810628256 6.1548432347364983 -153.93466718002313 1;
createNode decomposeMatrix -n "LeftMiddle3MTPosDM";
	rename -uid "2ABB8F65-4F32-9AFA-26DF-F29538CC5BB7";
createNode multMatrix -n "LeftMiddle3MTPosMM";
	rename -uid "A223856B-40BB-39C1-0E3E-E4858AC44560";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177237 -0.033527015660773908 -0.0038699871872255572 0
		 -0.0050069851492231671 -0.033895587404145562 -0.99941283724707297 0 0.033376154357003564 0.99886286765271792 -0.034044146999555158 0
		 100.84431076112321 150.69947816268316 0.54218828731324153 1;
	setAttr ".i[1]" -type "matrix" 0.99933606939764086 -0.0050069851492634612 0.036088093612556466 0
		 -0.036237414520504552 -0.03389558740414509 0.99876821081940581 0 -0.0037775904678358299 -0.99941283724707197 -0.034054523282734415 0
		 -95.314340573641658 6.15484323473662 -154.14286056057983 1;
createNode unitConversion -n "unitConversion13";
	rename -uid "D411BB58-49BC-771E-5BFD-FAA437E26A9A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion16";
	rename -uid "09530094-4716-05FD-A1D3-38BA88393D2C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion17";
	rename -uid "54B8E299-4204-2D78-C49A-DEB69B97B178";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	rename -uid "3BF30355-4CD2-B4B8-723C-F3B216D4E4D7";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion15";
	rename -uid "02A5165A-4BAF-D46F-33A0-D1BBA6B06422";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftRing1MTPosDM";
	rename -uid "4170C31A-4DD4-2DAC-9C60-EE9777798404";
createNode multMatrix -n "LeftRing1MTPosMM";
	rename -uid "6A19A109-4D28-1009-C0E6-6A9BEFF4EA40";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810549 -0.038031021093150409 -0.0085903621969356941 0
		 -0.0097680762812364964 -0.03089047587943039 -0.99947504380334895 0 0.037745696096722584 0.99879898875326989 -0.031238477741708071 0
		 93.154082170652558 150.89461645822942 -1.676443102405544 1;
	setAttr ".i[1]" -type "matrix" 0.99936721220907643 -0.011305278366015224 0.033724854966713562 2.7105054312137611e-20
		 -0.034058458440637041 -0.03074392536560357 0.998946861680721 8.6736173798840355e-19
		 -0.010256537920095413 -0.9994633568741681 -0.031109511338375775 -2.7105054312137611e-20
		 -87.97309188347252 4.0166822055942744 -153.92946479192935 0.99999999999999989;
createNode decomposeMatrix -n "LeftRing2MTPosDM";
	rename -uid "7561F629-4D9E-A22B-CB1C-26972221443A";
createNode multMatrix -n "LeftRing2MTPosMM";
	rename -uid "9AD622A7-4994-2E97-D6FD-2195BAF12F5D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810549 -0.038031021093150333 -0.0085903621969356993 0
		 -0.0097680762812364999 -0.03089047587943039 -0.99947504380334895 0 0.0377456960967225 0.99879898875326989 -0.031238477741708071 0
		 97.184108733149941 150.74123380614492 -1.7110888336601977 1;
	setAttr ".i[1]" -type "matrix" 0.99886450393140225 -0.011303893451950991 0.046280933209047623 0
		 -0.046609185126011421 -0.030743972563478036 0.99843997917396377 0 -0.0098633994019595335 -0.99946337108662608 -0.031235928166045691 0
		 -90.06456982263208 4.0165547042106198 -155.07352383079652 1;
createNode decomposeMatrix -n "LeftRing3MTPosDM";
	rename -uid "8532E739-4177-BDBD-3471-469D8CD87E92";
createNode multMatrix -n "LeftRing3MTPosMM";
	rename -uid "79D4FF5C-4373-8CD6-DB63-47BE818EC84F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810549 -0.038031021093150333 -0.0085903621969356993 0
		 -0.0097680762812364999 -0.03089047587943039 -0.99947504380334895 0 0.0377456960967225 0.99879898875326989 -0.031238477741708071 0
		 99.814308165479659 150.64112851944637 -1.7337003924838155 1;
	setAttr ".i[1]" -type "matrix" 0.99835295693959569 -0.011303893451950988 0.056245847515995616 0
		 -0.05656984694915923 -0.030743972563478036 0.9979251778400845 0 -0.0095512190904822221 -0.99946337108662608 -0.031332795439324428 0
		 -91.145053924651819 4.0165547042106189 -155.99078553341548 1;
createNode unitConversion -n "unitConversion18";
	rename -uid "8A54200D-4AA5-8999-5F90-91B57E0F3914";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion21";
	rename -uid "04823ACC-41AE-07DF-E173-B3A02A74D786";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion22";
	rename -uid "F48B4A59-4FD8-5547-0D62-E3A325F102CC";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion19";
	rename -uid "0CFF8B11-44C1-CA27-4E4A-C3B0292A184C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion20";
	rename -uid "6859C167-4554-5546-AFE4-A2B9A43C2E0B";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftPinky1MTPosDM";
	rename -uid "BA3004ED-4EA7-2BFC-361B-32A66EAA069E";
createNode multMatrix -n "LeftPinky1MTPosMM";
	rename -uid "9AC69FC7-451E-D9B5-6B2F-8DA098741B06";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99960715170250358 -0.026991391917187267 0.0075502998338379881 0
		 0.0075899251423178337 0.0013659221853454806 -0.99997026320432025 0 0.026980276157631669 0.99963473279941428 0.00157024822927887 0
		 92.641366302969956 150.66454734922621 -3.6852957230148107 1;
	setAttr ".i[1]" -type "matrix" 0.99964857175617783 0.0075899251422941816 0.025399331136242938 0
		 -0.025410403261493353 0.0013659221853478676 0.99967617039853063 0 0.0075527737899681808 -0.99997026320432048 0.0015583052203032599 0
		 -88.752528400005545 -4.5941232172179758 -152.96304363298211 1;
createNode decomposeMatrix -n "LeftPinky2MTPosDM";
	rename -uid "4B89DA72-4A35-7825-78B5-4AB6C20EAF43";
createNode multMatrix -n "LeftPinky2MTPosMM";
	rename -uid "F8B03A61-4401-6C33-1E26-07995AB10440";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.9996071517025038 -0.026991391917186969 0.0075502998338379916 0
		 0.0075899251423178372 0.0013659221853454808 -0.99997026320432048 0 0.026980276157631371 0.9996347327994145 0.0015702482292788704 0
		 95.844219205338675 150.57806391641591 -3.6611037194908524 1;
	setAttr ".i[1]" -type "matrix" 0.99959096837408035 0.0075899251422941807 0.027573338232845981 2.7105054312137611e-20
		 -0.027584470354307222 0.0013659221853478641 0.99961854287115748 8.6736173798840355e-19
		 0.0075493668768249304 -0.99997026320432059 0.0015747275450544856 1.6940658945086007e-21
		 -91.623762688726757 -4.5941232172179687 -153.16267209660555 0.99999999999999989;
createNode decomposeMatrix -n "LeftPinky3MTPosDM";
	rename -uid "7AD3F84E-4BF9-A7C5-1079-C9B298A1BA43";
createNode multMatrix -n "LeftPinky3MTPosMM";
	rename -uid "0344D95F-48F5-1832-B781-FDBFECA5E633";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99960715170250347 -0.026991391917186958 0.007550299833837989 0
		 0.0075899251423178354 0.0013659221853454806 -0.99997026320432025 0 0.026980276157631364 0.99963473279941428 0.00157024822927887 0
		 97.862751004651216 150.52355952156469 -3.645857209616461 1;
	setAttr ".i[1]" -type "matrix" 0.99955314633059433 0.0075899251422941807 0.028911947304602753 2.7105054312137611e-20
		 -0.028923116343339994 0.0013659221853478641 0.99958070589501336 8.6736173798840355e-19
		 0.0075472512611797649 -0.99997026320432048 0.0015848361059349835 1.6940658945086007e-21
		 -93.437918160806177 -4.5941232172179127 -153.28793988794507 0.99999999999999989;
createNode unitConversion -n "unitConversion23";
	rename -uid "4AE8BDB7-4609-CA9E-2CA6-CB9ADB1D73CF";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion26";
	rename -uid "51F74172-4D18-18D3-03EA-A8AC0C1C6279";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion27";
	rename -uid "EE145D85-4C95-094C-2C53-BE9731CA9DA9";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion24";
	rename -uid "E0D55DAD-44F7-3446-7D00-A981F9D518AD";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion25";
	rename -uid "75C0D8B2-41D8-2C0A-70E6-BE94DC59E831";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftThumb1MTPosDM";
	rename -uid "F2059EEF-41D7-6657-FEAD-7FA81D5B6AFA";
createNode multMatrix -n "LeftThumb1MTPosMM";
	rename -uid "7635EA89-4CFE-C988-3952-6682F4BC86E9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359103 -0.31597734714601478 0.82228053173504323 0
		 0.38454853069242867 0.91392636409880379 0.12985002328623155 0 -0.79253352252267084 0.2547487332563354 0.55407012063645844 0
		 86.102761534797466 150.24128238008228 1.5874120813427619 1;
	setAttr ".i[1]" -type "matrix" 0.47128336093005002 0.38454853069240991 -0.79373447780273754 0
		 -0.31532854520863612 0.91392636409881578 0.2555513834470946 0 0.82368677437912097 0.12985002328620304 0.55197741726042671 0
		 5.4890358248216007 -170.62628487566454 29.072147280312898 1;
createNode decomposeMatrix -n "LeftThumb2MTPosDM";
	rename -uid "C06FC42F-4F2D-16A7-FBA7-62B2BBCD4B09";
createNode multMatrix -n "LeftThumb2MTPosMM";
	rename -uid "568C9332-4570-32B2-2B30-F78C7EE742C6";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359092 -0.31597734714601511 0.82228053173504334 0
		 0.38454853069242922 0.91392636409880346 0.12985002328623158 0 -0.79253352252267073 0.25474873325633574 0.55407012063645866 0
		 87.76977615574998 149.12837581459911 4.4835735014651057 1;
	setAttr ".i[1]" -type "matrix" 0.47326053032592907 0.38454853069241013 -0.79255718908980233 0
		 -0.31596460794179615 0.91392636409881578 0.25476453350752315 0 0.82230823719807578 0.12985002328620338 0.5540290014870749 0
		 1.8944491529673011 -170.62628487566454 29.076960136898364 1;
createNode decomposeMatrix -n "LeftThumb3MTPosDM";
	rename -uid "6EED04C2-4EE6-CCBB-6FD0-C38A721D55F9";
createNode multMatrix -n "LeftThumb3MTPosMM";
	rename -uid "E6CC809F-4C99-1489-F73E-A689B11CE4DC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359092 -0.31597734714601511 0.82228053173504334 0
		 0.38454853069242934 0.91392636409880368 0.1298500232862316 0 -0.79253352252267073 0.25474873325633574 0.55407012063645866 0
		 89.29706455249233 148.10875111379738 7.1369837814050143 1;
	setAttr ".i[1]" -type "matrix" 0.47527433116083756 0.38454853069241002 -0.79135121007168896 0
		 -0.31661140698115697 0.91392636409881589 0.25396026849594211 0 0.82089678225038154 0.12985002328620329 0.55611819278238128 0
		 -1.4063973308808166 -170.6262848756644 29.073477914364933 1;
createNode unitConversion -n "unitConversion28";
	rename -uid "8269C595-4F0F-1657-480B-3C9E18F655E0";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion31";
	rename -uid "9293E8B0-4A6B-30F9-FE18-C2BB0F98965C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion32";
	rename -uid "09F87990-40B0-B1D6-9013-BEB685C18CB8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion29";
	rename -uid "E2901881-41A5-7FAF-A68D-ED88AF8143F4";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion30";
	rename -uid "09B84196-4BF1-4358-4F7D-1C80173028AF";
	setAttr ".cf" 0.017453292519943295;
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
createNode shadingEngine -n "Eye_Cornea_ShdSG";
	rename -uid "ED1AF74A-42F3-738B-780D-A4B7FDD636DE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "Eye_Eyeball_ShdSG";
	rename -uid "631D3A07-485F-2798-C5C2-B7A1CA1FCF73";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "Eye_Iris_ShdSG";
	rename -uid "FE73C158-4340-0048-0D8B-5EAE2C1486B3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "Eye_Pupil_ShdSG";
	rename -uid "7A9D55D0-411B-6914-6206-D6A6C2701414";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Body_ShdSG";
	rename -uid "A756E304-4AD1-52BF-AB97-30B211CF344A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Button_Fabric_ShdSG";
	rename -uid "2833CDF5-4622-B73B-1611-59A7EAE2938C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Button_Plastic_ShdSG";
	rename -uid "1E5BCF61-4CA5-500C-F368-A4B87A3EE378";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Glasses_Frame_ShdSG";
	rename -uid "5244A2CE-460D-FC86-703A-DF831378A6E4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Glasses_Lens_ShdSG";
	rename -uid "C0114598-4ED2-5FDD-7D1E-E19B29695FEC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_HairBand_ShdSG";
	rename -uid "EB56055F-4DBB-5579-3032-908966CDC78E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_HairDummy_ShdSG";
	rename -uid "6113A0E2-46A2-CD92-432E-0B908514CBAF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Pants_ShdSG";
	rename -uid "BCEA9C7A-4686-4CA0-A10E-EABBDC2BCA03";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Shirts_ShdSG";
	rename -uid "DB35A6B6-4CF0-33CC-C415-4C97F8DB70CD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Shoes_ShdSG";
	rename -uid "E6AF121C-4E2D-BE4C-E853-01BDAA7635AD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "ScottA_Tongue_ShdSG";
	rename -uid "FA09DBF2-46FA-8FBA-8C13-27BEF5895E9C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "SuperScott_Gum_ShdSG";
	rename -uid "B59FEF3E-44B5-6F0D-8684-79BCB513FCD0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "SuperScott_Teeth_ShdSG";
	rename -uid "6D32FB4C-4C05-7066-5195-56B5641EC27D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12141";
	rename -uid "026352F5-4340-1D18-1270-62BE5E59391B";
createNode lambert -n "Eye_Cornea_Anim_Shd";
	rename -uid "43DC8987-4C33-A9FF-8BF2-8688EF9D1A40";
createNode ramp -n "Eye_ramp6";
	rename -uid "E1492487-4D36-A8B2-4183-67A187DFDC02";
	setAttr ".t" 4;
	setAttr ".in" 4;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0.06371191143989563;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.022160664200782776;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode place2dTexture -n "place2dTexture172";
	rename -uid "F831B532-44A2-0568-43F3-C4822238A642";
	setAttr ".rf" 3.0000000000000004;
	setAttr ".re" -type "float2" -1 1 ;
	setAttr ".of" -type "float2" 0.82999998 0.85000002 ;
createNode reverse -n "Eye_reverse5";
	rename -uid "AB72FAEF-4ABE-B9C5-01D7-9681C7904634";
createNode RedshiftMaterialBlender -n "Eye_Cornea_Shd";
	rename -uid "253D1060-4276-2CB9-9F35-C4908FC015E0";
createNode RedshiftMaterial -n "Eye_Cornea_Base_Shd";
	rename -uid "FAF916FC-4CEC-08A6-7218-768EEE57B109";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0 0 0 ;
	setAttr ".diffuse_weight" 0;
	setAttr ".refl_color" -type "float3" 0.42465752 0.42465752 0.42465752 ;
	setAttr ".refl_weight" 0.5;
	setAttr ".refl_roughness" 0.029999999329447746;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_reflectivity" -type "float3" 0.034722224 0.034722224 0.034722224 ;
	setAttr ".refl_ior3" -type "float3" 1.51 1.51 1.51 ;
	setAttr ".refl_ior" 1.6000000238418579;
	setAttr ".refr_weight" 1;
	setAttr ".refr_thin_walled" yes;
	setAttr ".ms_mode" 1;
createNode surfaceShader -n "Eye_Cornea_Spec_Shd";
	rename -uid "61ECCF50-4C17-72C8-5530-67B8080B15A4";
	setAttr ".oc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo12142";
	rename -uid "534B5F2B-4C17-1BD6-7C14-F4A8EB701427";
createNode lambert -n "Eye_Eyeball_Anim_Shd";
	rename -uid "1C99FBFB-4503-4C78-98A4-B89968A7CC54";
createNode file -n "Eye_Cornea_col_3";
	rename -uid "E721DDC5-4978-2A91-243A-2BBA7FE311AC";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/Eye_Cornea_col.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture180";
	rename -uid "A0444966-402A-4736-3756-5C9A24AE4490";
createNode RedshiftMaterialBlender -n "Eye_Eyeball_Shd";
	rename -uid "E6ACBCF5-42D0-3AD2-706F-11AC691AD64A";
createNode ramp -n "Sclera_df_ramp1";
	rename -uid "0E6CC4A3-43F7-9F93-89A3-EA8D95CCE756";
	setAttr ".t" 4;
	setAttr ".in" 4;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0.25999999046325684;
	setAttr ".cel[0].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[1].ep" 0.27700001001358032;
	setAttr ".cel[1].ec" -type "float3" 0 0 0 ;
createNode RedshiftMaterial -n "Eye_Eyeball_sclera_Shd";
	rename -uid "A916AD67-4336-1736-5812-87924F0D2284";
	setAttr ".v" 1;
	setAttr ".refl_roughness" 0.10000000149011612;
	setAttr ".ms_amount" 0.69999998807907104;
	setAttr ".ms_radius_scale" 3.5;
	setAttr ".ms_mode" 1;
createNode remapHsv -n "remapHsv34";
	rename -uid "DB689686-46F3-07BA-FEC9-88873CD5B5D2";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 0.96688741 1;
	setAttr -s 3 ".v[0:2]"  0 0 1 1 1 1 0.42903227 0.5562914 3;
createNode ramp -n "Sclera_df_ramp2";
	rename -uid "C18ADF8E-437B-1AE0-7893-CFB2F9DB890C";
	setAttr ".t" 4;
	setAttr ".in" 2;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0.26229506731033325;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.29672130942344666;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode RedshiftMaterial -n "Eye_Eyeball_Iris_Shd";
	rename -uid "4C780468-40F6-5FBE-C943-35B1372D030D";
	setAttr ".v" 1;
	setAttr ".diffuse_weight" 0.80000001192092896;
	setAttr ".refl_color" -type "float3" 0 0 0 ;
	setAttr ".refl_weight" 0;
	setAttr ".refl_roughness" 1;
	setAttr ".refl_ior" 1;
	setAttr ".ms_mode" 1;
createNode RedshiftShaderSwitch -n "rsShaderSwitch1";
	rename -uid "D17E4BAE-48F4-C476-F836-E69B114EBCA2";
	setAttr ".shader0" -type "float3" 0.0053440002 0.016702568 0.032000002 ;
	setAttr ".shader1" -type "float3" 0.026241764 0.040914424 0.011612458 ;
	setAttr ".shader2" -type "float3" 0.055214725 0.051103666 0.011706994 ;
	setAttr ".shader3" -type "float3" 0.073619634 0.042699389 0.020245397 ;
	setAttr ".shader4" -type "float3" 0.036809817 0.010453985 0.011353599 ;
createNode RedshiftShaderSwitch -n "Iris_Col_Switch";
	rename -uid "5C35ED7F-4E2C-0D8B-E2A3-DF8FB05F3DEA";
createNode remapHsv -n "blue";
	rename -uid "54D0A1B6-4B39-1305-DEBB-DA9FB2CD0B5F";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".v[0:1]"  0 0 1 1 1 1;
createNode file -n "Eye_Iris_col_blue1";
	rename -uid "C07D6451-467E-9C19-6448-4B87AA498A29";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/Eye_Iris_col.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture188";
	rename -uid "4CBD07FA-45F4-9A6F-96CC-CBB59D3E6F0D";
createNode remapHsv -n "green_b";
	rename -uid "B4EEFD20-4D33-5155-E7E8-908D3351BB39";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 0.25999999 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".v[0:1]"  0 0 1 1 0.92052978 1;
createNode remapHsv -n "green_a";
	rename -uid "CEBE7D0B-4080-A471-EB84-3181D205332E";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 0.80000001 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 0.94039732 1;
	setAttr -s 2 ".v[0:1]"  0 0 1 1 1 1;
createNode remapHsv -n "brown";
	rename -uid "084830FE-4142-3624-8B55-47931BDC6850";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 0.079470202 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 0.8807947 1;
	setAttr -s 2 ".v[0:1]"  0 0 1 1 1 1;
createNode remapHsv -n "darkBrown";
	rename -uid "ECE01567-4515-2627-99E0-338F9E2A6484";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 0.072847679 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 0.66000003 1;
	setAttr -s 3 ".v[0:2]"  0 0 1 1 0.93377483 1 0.55645162 0.28476822 
		1;
createNode materialInfo -n "materialInfo12144";
	rename -uid "8D05B87A-42FB-0743-60F1-F382750FEF4D";
	setAttr -s 2 ".t";
createNode lambert -n "Eye_Iris_Anim_Shd";
	rename -uid "793887A6-44DF-81CE-637D-4FB41E417D7D";
createNode layeredTexture -n "layeredTexture6";
	rename -uid "7C8E70BB-4891-616B-358C-9886960CBB20";
	setAttr -s 5 ".cs";
	setAttr ".cs[0].bm" 1;
	setAttr ".cs[0].iv" yes;
	setAttr ".cs[1].bm" 1;
	setAttr ".cs[1].iv" yes;
	setAttr ".cs[2].bm" 1;
	setAttr ".cs[2].iv" yes;
	setAttr ".cs[3].bm" 1;
	setAttr ".cs[3].iv" yes;
	setAttr ".cs[4].bm" 0;
	setAttr ".cs[4].iv" yes;
createNode animCurveUL -n "IrisBluePreviewSetUL";
	rename -uid "EC07D53D-4767-1B46-6906-9997D95BEE12";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  0 1 1 0 2 0 3 0 4 0;
	setAttr -l on ".ktv";
createNode animCurveUL -n "IrisGreenAPreviewSetUL";
	rename -uid "D5123842-4A53-53CB-4C65-BE9453DA5AB8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  0 0 1 1 2 0 3 0 4 0;
	setAttr -l on ".ktv";
createNode animCurveUL -n "IrisGreenBPreviewSetUL";
	rename -uid "05B97A8E-4482-132E-C544-089DC094CE4D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  0 0 1 0 2 1 3 0 4 0;
	setAttr -l on ".ktv";
createNode animCurveUL -n "IrisBrownPreviewSetUL";
	rename -uid "7C0C0823-445F-96EB-036F-90A0FE50CEE3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  0 0 1 0 2 0 3 1 4 0;
	setAttr -l on ".ktv";
createNode animCurveUL -n "IrisDarkBrownPreviewSetUL";
	rename -uid "119CB5C1-49D1-6D96-14ED-CE9B74AEC103";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 1;
	setAttr -l on ".ktv";
createNode RedshiftNormalMap -n "Iris_nm_rsNormalMap";
	rename -uid "775FE6BE-4279-2489-99C5-B7A06BAEDD27";
	setAttr ".tex0" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/Eye_Iris_nor.jpg";
	setAttr ".scale" 0.10000000149011612;
createNode RedshiftMaterial -n "Eye_Iris_Shd";
	rename -uid "13B83037-4870-0ABA-62FE-6FA9D3A2074D";
	setAttr ".v" 1;
	setAttr ".refl_roughness" 0.5;
	setAttr ".refl_fresnel_mode" 2;
	setAttr ".refl_reflectivity" -type "float3" 0 0 0 ;
	setAttr ".ms_mode" 1;
createNode layeredTexture -n "layeredTexture5";
	rename -uid "16B1807B-48AE-F0FC-1611-9EB7870492BD";
	setAttr -s 2 ".cs";
	setAttr ".cs[0].a" 1;
	setAttr ".cs[0].bm" 6;
	setAttr ".cs[0].iv" yes;
	setAttr ".cs[1].a" 1;
	setAttr ".cs[1].bm" 1;
	setAttr ".cs[1].iv" yes;
	setAttr ".ail" yes;
createNode ramp -n "ramp8";
	rename -uid "8D5AFD88-4624-94EC-5D6A-67A88A608C22";
	setAttr ".t" 4;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0.22295081615447998;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.3229508101940155;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode place2dTexture -n "place2dTexture189";
	rename -uid "5CEFE30C-42D8-E79E-B455-CA8104284747";
createNode remapHsv -n "Iris_remapHsv4";
	rename -uid "1FD0677B-4EA6-8042-1664-E080279F2A81";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 0.90066224 1;
	setAttr -s 4 ".v";
	setAttr ".v[0].vi" 1;
	setAttr ".v[2].vp" 0.4306451678276062;
	setAttr ".v[2].vfv" 0.23000000417232513;
	setAttr ".v[2].vi" 1;
	setAttr ".v[3].vp" 0.017741935327649117;
	setAttr ".v[3].vfv" 0.033112581819295883;
	setAttr ".v[3].vi" 1;
	setAttr ".v[4].vp" 1;
	setAttr ".v[4].vfv" 0.94039732217788696;
	setAttr ".v[4].vi" 3;
createNode remapHsv -n "remapHsv29";
	rename -uid "E74E8F66-40F9-1D7D-5607-849FBC8312C2";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".v[0:2]"  0 0 1 1 1 1 0.40869564 0.66000003 3;
createNode file -n "Eye_Iris_mas_1";
	rename -uid "E49CC4A8-423D-4F74-B5B5-D8877C9FF276";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/Eye_Iris_mas.jpg";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture178";
	rename -uid "23407022-4949-3D6B-9EFE-0C83614F01D9";
createNode materialInfo -n "materialInfo12143";
	rename -uid "9F5744ED-40AB-0A6D-80C3-C7860E72EB59";
createNode RedshiftMaterial -n "Eye_Pupil_Shd";
	rename -uid "CDB1E3D1-4B68-9D9C-157D-D1B762A6B467";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.0019288959 0.0020000001 0.0018580002 ;
	setAttr ".refl_color" -type "float3" 0.27407408 0.27407408 0.27407408 ;
	setAttr ".refl_weight" 0.20000000298023224;
	setAttr ".refl_roughness" 0.80000001192092896;
	setAttr ".ms_mode" 1;
createNode materialInfo -n "materialInfo12151";
	rename -uid "63431606-4C07-404A-D135-E9890CB9C370";
createNode RedshiftMaterial -n "ScottA_Body_Shd";
	rename -uid "8CF23025-4859-6EB5-0DBA-F8A1E0271F04";
	setAttr ".v" 1;
	setAttr ".refl_color" -type "float3" 0.80740738 0.80740738 0.80740738 ;
	setAttr ".refl_weight" 0.80000001192092896;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_ior" 1.4500000476837158;
	setAttr ".ms_amount" 0.69999998807907104;
	setAttr ".ms_mode" 1;
	setAttr ".ms_color0" -type "float3" 1 0.199 0.2499 ;
createNode remapHsv -n "remapHsv37";
	rename -uid "5782D3D7-43B9-56D0-8E15-8CAD6E1B322A";
	setAttr -s 2 ".h[0:1]"  0 0.0092975209 1 1 1 1;
	setAttr -s 3 ".s[0:2]"  0 0 1 1 1 1 0.45217392 0.60000002 1;
	setAttr -s 3 ".v[0:2]"  0 0 1 1 1 1 0.54782611 0.38 1;
createNode file -n "file11";
	rename -uid "FD7BED85-4476-B5D0-872A-609D5118176E";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_BaseColor.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "44B6E85E-4D1F-DB89-AA69-E7A33A6C3158";
createNode RedshiftBumpMap -n "rsBumpMap1";
	rename -uid "30F7AD92-4D7E-630E-DD0E-868D67F96C5A";
	setAttr ".inputType" 1;
	setAttr ".scale" 1.5;
createNode file -n "file10";
	rename -uid "D1BE32A8-4458-6B3E-E388-90B5F4B64572";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Normal.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "BDEB2DE5-4EEF-8B07-F612-E9B769A590BD";
createNode remapHsv -n "remapHsv48";
	rename -uid "D458CCD7-4FC5-6104-7DCD-91AD28DD890D";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".v[0:2]"  0 0 1 1 1 1 0.46956521 0.51999998 1;
createNode remapHsv -n "remapHsv38";
	rename -uid "1BDA7288-47A3-8EE5-4EEE-71B84A731F3C";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 5 ".v[0:4]"  0 0 1 1 0.96026492 1 0.63870966 0.84768212 
		3 0.38 0.37809899 1 0.21315789 0.38326445 1;
createNode file -n "file183";
	rename -uid "8C91DC10-4B2B-ADD9-1A3B-8390862CB54F";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Roughness.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "DD876408-41D6-C050-2761-149A42884033";
createNode layeredTexture -n "layeredTexture7";
	rename -uid "D45B9BEB-443A-652E-191A-CAAB00FCE2B9";
	setAttr -s 2 ".cs";
	setAttr ".cs[0].c" -type "float3" 2 2 2 ;
	setAttr ".cs[0].bm" 1;
	setAttr ".cs[0].iv" yes;
	setAttr ".cs[1].c" -type "float3" 4 4 4 ;
	setAttr ".cs[1].a" 1;
	setAttr ".cs[1].bm" 0;
	setAttr ".cs[1].iv" yes;
	setAttr ".ail" yes;
createNode ramp -n "ramp10";
	rename -uid "0506FF69-4157-3AD0-E1A1-B5AC66B37D86";
	setAttr ".dc" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 1;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode place2dTexture -n "place2dTexture210";
	rename -uid "071E583F-4C76-21E6-A494-4883631BC9CE";
	setAttr ".tf" -type "float2" 3 0 ;
	setAttr ".wu" no;
	setAttr ".wv" no;
createNode materialInfo -n "materialInfo12137";
	rename -uid "9DE995D2-449B-F32F-F2C5-459E65928EF5";
createNode RedshiftMaterial -n "ScottA_Button_Fabric_Shd";
	rename -uid "89A05731-45D3-59CF-C37E-68B418AD5039";
	setAttr ".v" 1;
	setAttr ".diffuse_roughness" 0.30000001192092896;
	setAttr ".refl_color" -type "float3" 0.29090908 0.29090908 0.29090908 ;
	setAttr ".refl_roughness" 0.40000000596046448;
	setAttr ".ms_mode" 1;
createNode file -n "file184";
	rename -uid "0FB3057E-42D8-6619-5F2D-66A8782D0450";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Fabric_col.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture192";
	rename -uid "445196ED-4B96-6DE1-AD21-7F875BC997E1";
createNode RedshiftBumpMap -n "rsBumpMap31";
	rename -uid "EC2ABC89-4DBC-48BF-0163-C293D5AC634B";
	setAttr ".inputType" 1;
	setAttr ".scale" 0.80000001192092896;
createNode file -n "file185";
	rename -uid "9D01F791-436E-60F9-B353-988BB06ED439";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Fabric_nor.jpg";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode place2dTexture -n "place2dTexture193";
	rename -uid "52F7F3A7-44F2-06F5-E22F-D39196791095";
createNode materialInfo -n "materialInfo12138";
	rename -uid "7B6E751B-441A-7E89-A529-9FB6609F5185";
createNode RedshiftMaterial -n "ScottA_Button_Plastic_Shd";
	rename -uid "6A08B2FF-44DE-B0D9-2924-DF828FCB2165";
	setAttr ".v" 1;
	setAttr ".refl_color" -type "float3" 0.56818181 0.56818181 0.56818181 ;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_ior" 1.7999999523162842;
	setAttr ".ms_mode" 1;
createNode file -n "file186";
	rename -uid "CF241BF4-41EF-8D94-0C9E-29BCABA406B4";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Plastic_col.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture194";
	rename -uid "5BBB9441-4477-EA8C-D16B-8188882F244E";
createNode file -n "file187";
	rename -uid "655783A2-4C59-800C-A61C-C0A367EF836A";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Plastic_ref_r.jpg";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture195";
	rename -uid "AE68978E-4347-530C-EFE0-D49EC0CBDED5";
createNode RedshiftBumpMap -n "rsBumpMap32";
	rename -uid "BC2DC791-4181-AABC-EFD1-D69347AB6A17";
	setAttr ".inputType" 1;
	setAttr ".scale" 0.34999999403953552;
createNode file -n "file188";
	rename -uid "E60DCCAB-446C-13B4-7D9B-D89AD55A52F2";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Plastic_nor.jpg";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode place2dTexture -n "place2dTexture196";
	rename -uid "2B553D0B-47D8-7C39-3E93-3A955549A1A8";
createNode materialInfo -n "materialInfo12174";
	rename -uid "4E067CB1-492C-9BC9-29BE-E48CC12E85C8";
createNode RedshiftMaterial -n "ScottA_Glasses_Frame_Shd";
	rename -uid "CDC43430-4199-1891-9E48-42B2CD336473";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.0070000002 0.0070000002 0.0070000002 ;
	setAttr ".refl_color" -type "float3" 0.48148149 0.48148149 0.48148149 ;
	setAttr ".refl_weight" 0.47407406568527222;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_metalness" 1;
	setAttr ".refl_ior" 1.4500000476837158;
	setAttr ".refr_color" -type "float3" 0 0 0 ;
	setAttr ".refr_samples" 32;
	setAttr ".ms_amount" 0.60000002384185791;
	setAttr ".ms_radius_scale" 1.5;
	setAttr ".ms_mode" 1;
	setAttr ".ms_color1" -type "float3" 1 0.56108397 0.212 ;
	setAttr ".ms_weight1" 1;
	setAttr ".ms_color2" -type "float3" 0.38659999 0 0 ;
	setAttr ".ms_weight2" 1;
	setAttr ".ms_radius2" 1.5;
createNode RedshiftBumpMap -n "SuperScott_rsNormalMap16";
	rename -uid "3EF486B0-48D7-2ECB-05D5-3DB4377BCDE2";
	setAttr ".inputType" 1;
	setAttr ".scale" 1;
createNode file -n "file190";
	rename -uid "6A64E26E-4C7B-93C4-5A3F-15AB8BFA240D";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Normal.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture203";
	rename -uid "8C97414D-489D-411F-7F67-2BBBC9BFCC33";
createNode remapHsv -n "remapHsv50";
	rename -uid "6E30A14F-4EA6-FFFE-8326-EF928C2C2BC4";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".v[0:1]"  0 0 1 1 1 1;
createNode file -n "file192";
	rename -uid "795A6DAE-40AE-EF22-B198-46BD9C6068F5";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Roughness.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode materialInfo -n "SuperScott_MOD_0002_materialInfo1999";
	rename -uid "3D6DE5ED-4916-D5FC-AE0F-879626E92C74";
createNode lambert -n "ScottA_Glasses_Lens_Anim_Shd";
	rename -uid "399A20D9-4F76-176F-D92A-0898E7A3A78E";
	setAttr ".c" -type "float3" 0.060240965 0.060240965 0.060240965 ;
	setAttr ".it" -type "float3" 0.70481926 0.70481926 0.70481926 ;
createNode RedshiftMaterial -n "ScottA_Glasses_Lens_Shd";
	rename -uid "CA92CFB6-4C94-D339-E64D-B2B26F9A9BF2";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0 0 0 ;
	setAttr ".refl_color" -type "float3" 0.42222223 0.42222223 0.42222223 ;
	setAttr ".refl_weight" 0.40000000596046448;
	setAttr ".refl_roughness" 0.05000000074505806;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_metalness" 1;
	setAttr ".refl_ior" 1.3999999761581421;
	setAttr ".refr_weight" 1;
	setAttr ".refr_samples" 32;
	setAttr ".refr_thin_walled" yes;
	setAttr ".ms_amount" 0.60000002384185791;
	setAttr ".ms_radius_scale" 1.5;
	setAttr ".ms_mode" 1;
	setAttr ".ms_color1" -type "float3" 1 0.56108397 0.212 ;
	setAttr ".ms_weight1" 1;
	setAttr ".ms_color2" -type "float3" 0.38659999 0 0 ;
	setAttr ".ms_weight2" 1;
	setAttr ".ms_radius2" 1.5;
	setAttr ".bump_input" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo12140";
	rename -uid "87D6BDD3-463F-1223-E119-4EBFE810D045";
createNode RedshiftMaterial -n "ScottA_HairBand_Shd";
	rename -uid "CFC0565D-4681-9F99-578D-2C9DBC623ABF";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.020547945 0.020547945 0.020547945 ;
	setAttr ".refl_roughness" 0.64999997615814209;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_fresnel_mode" 2;
	setAttr ".ms_mode" 1;
createNode materialInfo -n "ScottA_HairDummy_01_materialInfo2005";
	rename -uid "2DE6116D-408B-3FE3-609C-7FA74C97ADB2";
createNode RedshiftMaterial -n "ScottA_HairDummy_Shd";
	rename -uid "E64F9CE0-46C0-DE1F-8FCD-69BB23B130D5";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.021600001 0.0121 0.0076000001 ;
	setAttr ".refl_color" -type "float3" 0.13013698 0.13013698 0.13013698 ;
	setAttr ".refl_roughness" 0.80000001192092896;
	setAttr ".ms_mode" 1;
createNode materialInfo -n "materialInfo12135";
	rename -uid "25D8A450-495F-F3E1-A7D9-D1ACBBF87D8D";
createNode RedshiftMaterial -n "ScottA_Pants_Shd";
	rename -uid "C1E855F2-4698-EFB6-20CE-AFB95944F888";
	setAttr ".v" 1;
	setAttr ".refl_color" -type "float3" 0.54074073 0.54074073 0.54074073 ;
	setAttr ".refl_weight" 0.5;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_ior" 1.3999999761581421;
	setAttr ".ms_mode" 1;
createNode remapHsv -n "remapHsv27";
	rename -uid "EABA3909-4396-E6DC-9348-17BCE2B4EE53";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 5 ".v[0:4]"  0 0 1 1 1 1 0.6695652 0.86000001 1
		 0.4173913 0.69999999 1 0.23478261 0.41999999 1;
createNode file -n "file177";
	rename -uid "5BA88594-4CE8-0723-EEE9-DCB4CAF91946";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Pants_col.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "40041256-443F-975D-EFEE-86908D79F887";
createNode remapHsv -n "remapHsv49";
	rename -uid "F261A27D-444A-C4A1-1647-85B55071DF04";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".v[0:2]"  0 0 1 1 0.80000001 1 0.60869563 0.46000001 
		1;
createNode file -n "file178";
	rename -uid "C5E6C794-4C3B-6B98-5F30-90AC6F953671";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Pants_ref_r.jpg";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode place2dTexture -n "place2dTexture10";
	rename -uid "D9C3DD7E-44E8-1BF8-B1A8-00AF871CBC2B";
createNode RedshiftBumpMap -n "rsBumpMap29";
	rename -uid "B80605FD-4D69-9016-A4B9-4DB122876CB7";
	setAttr ".inputType" 1;
	setAttr ".scale" 0.40000000596046448;
createNode file -n "file179";
	rename -uid "E6FFC812-40C6-04FE-F692-2E977BC1F8AA";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Pants_nor.jpg";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode place2dTexture -n "place2dTexture11";
	rename -uid "7F82B224-430C-1545-366A-87AC58E5F682";
createNode materialInfo -n "materialInfo12139";
	rename -uid "E68A0041-468F-5597-0119-769787064C1E";
createNode RedshiftMaterial -n "ScottA_Shirts_Shd";
	rename -uid "AC5D96ED-42D0-21EC-58C5-B696E66C9683";
	setAttr ".v" 1;
	setAttr ".refl_color" -type "float3" 0.52592593 0.52592593 0.52592593 ;
	setAttr ".refl_weight" 0.5407407283782959;
	setAttr ".refl_roughness" 0.69629627466201782;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_ior" 1.3999999761581421;
	setAttr ".ms_mode" 1;
createNode remapHsv -n "remapHsv28";
	rename -uid "4728259F-4FA8-65CC-9137-178476AA0DCB";
	setAttr -s 2 ".h[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".s[0:1]"  0 0 1 1 0.95999998 1;
	setAttr -s 3 ".v[0:2]"  0 0 1 1 1 1 0.63478261 0.74000001 1;
createNode file -n "file175";
	rename -uid "D7103ECD-4595-404E-3996-9986C26E8CE0";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Shirt_col.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "DA4F2DCC-456B-DA9E-D0B0-7AB3F03D863D";
createNode RedshiftBumpMap -n "rsBumpMap33";
	rename -uid "DABB6A8D-498E-7315-4948-9A90D37B5936";
	setAttr ".inputType" 1;
	setAttr ".scale" 0.89999997615814209;
createNode file -n "file189";
	rename -uid "C6595465-4650-6163-EE02-D3A1D6062A1E";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Shirt_nor.jpg";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode place2dTexture -n "place2dTexture197";
	rename -uid "C9BA4886-459B-DCF3-5D90-779AEC25E2F2";
createNode materialInfo -n "materialInfo12136";
	rename -uid "25AAA6DB-4056-581C-F8D0-19A77BF6DEB5";
createNode RedshiftMaterial -n "ScottA_Shoes_Shd";
	rename -uid "6867FC59-4D90-5A08-EE9F-F889BAA3EA09";
	setAttr ".v" 1;
	setAttr ".refl_color" -type "float3" 0.17727272 0.17727272 0.17727272 ;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_metalness" 1;
	setAttr ".refr_color" -type "float3" 0 0 0 ;
	setAttr ".refr_weight" 1;
	setAttr ".ms_radius_scale" 1.5;
	setAttr ".ms_weight0" 0;
	setAttr ".ms_color1" -type "float3" 1 0.56108397 0.212 ;
	setAttr ".ms_weight1" 1;
	setAttr ".ms_color2" -type "float3" 0.38659999 0 0 ;
	setAttr ".ms_weight2" 1;
	setAttr ".ms_radius2" 1.5;
createNode file -n "file180";
	rename -uid "DA4B8407-46EA-2D8E-5F1E-74A9C05E9B55";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Shoes_col.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "48332FCD-4F64-9BA6-C90C-CEA319E13D21";
createNode RedshiftBumpMap -n "rsBumpMap30";
	rename -uid "A1C4A6EA-461E-C16A-C667-0B9C8401BF20";
	setAttr ".inputType" 1;
	setAttr ".scale" 1;
createNode file -n "file181";
	rename -uid "9C4A1450-4CAE-21EB-2F46-1FAB9E612179";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Shoes_nor.jpg";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode place2dTexture -n "place2dTexture13";
	rename -uid "F7F025D0-4609-B8B1-5479-24AE7D6FE946";
createNode file -n "file182";
	rename -uid "4703A108-4AEE-67CE-4D1F-42A0DB017FFF";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_Shoes_ref_r.jpg";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode place2dTexture -n "place2dTexture14";
	rename -uid "216488E7-40F5-741B-BE8D-0EA133101C2B";
createNode materialInfo -n "materialInfo12154";
	rename -uid "0A5EC4C4-40F3-63C3-C9C3-95B890F072C5";
createNode RedshiftMaterial -n "ScottA_Tongue_Shd";
	rename -uid "250CB332-4E1F-263F-C3B2-52939E1221A0";
	setAttr ".v" 1;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_fresnel_mode" 2;
	setAttr ".refr_color" -type "float3" 0 0 0 ;
	setAttr ".refr_samples" 32;
	setAttr ".ms_amount" 0.60000002384185791;
	setAttr ".ms_radius_scale" 1.5;
	setAttr ".ms_mode" 1;
	setAttr ".ms_color1" -type "float3" 1 0.56108397 0.212 ;
	setAttr ".ms_weight1" 1;
	setAttr ".ms_color2" -type "float3" 0.38659999 0 0 ;
	setAttr ".ms_weight2" 1;
	setAttr ".ms_radius2" 1.5;
createNode RedshiftBumpMap -n "SuperScott_rsNormalMap2";
	rename -uid "3462234B-498B-5B1B-AE97-B09E5BC0F66E";
	setAttr ".inputType" 1;
	setAttr ".scale" 1;
createNode file -n "SuperScott_Normal9";
	rename -uid "9A52968B-40BA-55E4-F1AA-93B61E06BA04";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Normal.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "SuperScott_pla2d1";
	rename -uid "822CD405-4C24-17DB-0D63-AFAA7A31CFD2";
createNode file -n "SuperScott_BaseColor6";
	rename -uid "ED969552-467F-AE69-152A-D18AE0293271";
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_BaseColor.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "SuperScott_Roughness1";
	rename -uid "35C51BD0-422B-26C2-5F56-3789771BDB31";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Roughness.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode file -n "SuperScott_Metallic1";
	rename -uid "E18405BC-4CE7-0217-0EA5-3F88DB2AFABB";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Metallic.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode materialInfo -n "materialInfo12152";
	rename -uid "16B6D978-4DEA-BC7C-641A-DC9B93A4A5E6";
createNode RedshiftMaterial -n "ScottA_Gum_Shd";
	rename -uid "CD32C859-45AB-64EB-5F2D-CB86E0E8586D";
	setAttr ".v" 1;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_fresnel_mode" 2;
	setAttr ".refr_color" -type "float3" 0 0 0 ;
	setAttr ".refr_samples" 32;
	setAttr ".ms_amount" 0.60000002384185791;
	setAttr ".ms_radius_scale" 1.5;
	setAttr ".ms_mode" 1;
	setAttr ".ms_color1" -type "float3" 1 0.56108397 0.212 ;
	setAttr ".ms_weight1" 1;
	setAttr ".ms_color2" -type "float3" 0.38659999 0 0 ;
	setAttr ".ms_weight2" 1;
	setAttr ".ms_radius2" 1.5;
createNode materialInfo -n "materialInfo12153";
	rename -uid "3C8691E8-4D6F-0CC1-8AF2-25B1DF9229A6";
createNode RedshiftMaterial -n "ScottA_Teeth_Shd";
	rename -uid "EDA3D4CA-45EE-ACB7-B83F-9582ADCEDFF7";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.80000001 0.72292393 0.66640002 ;
	setAttr ".diffuse_weight" 0.89999997615814209;
	setAttr ".diffuse_roughness" 0.10000000149011612;
	setAttr ".refl_color" -type "float3" 0.72592592 0.72592592 0.72592592 ;
	setAttr ".refl_weight" 0.71111112833023071;
	setAttr ".refl_roughness" 0.34999999403953552;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_ior" 1.2999999523162842;
	setAttr ".refr_color" -type "float3" 0 0 0 ;
	setAttr ".refr_samples" 32;
	setAttr ".ms_amount" 0.69999998807907104;
	setAttr ".ms_mode" 1;
	setAttr ".ms_radius0" 2;
	setAttr ".ms_color1" -type "float3" 1 0.56108397 0.212 ;
	setAttr ".ms_color2" -type "float3" 0.38659999 0 0 ;
	setAttr ".ms_radius2" 1.5;
	setAttr ".coat_color" -type "float3" 0.64444447 0.64444447 0.64444447 ;
	setAttr ".coat_weight" 0.25;
	setAttr ".coat_roughness" 0.20000000298023224;
createNode RedshiftBumpMap -n "SuperScott_rsNormalMap3";
	rename -uid "47FB6A4F-474B-87E7-918C-05AD1F21E912";
	setAttr ".inputType" 1;
	setAttr ".scale" 1;
createNode file -n "SuperScott_Normal10";
	rename -uid "78037358-4392-5219-62B6-C0883784DB92";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Normal.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "SuperScott_pla2d2";
	rename -uid "74F45E12-4C1B-E66B-4F2E-31B5165C5DEC";
createNode file -n "SuperScott_Metallic2";
	rename -uid "20CC0A06-4E1A-4FE1-196A-90B049707099";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "Z:/PROJECT_HEROES_BOOKS/04_MASTER/CH/01_MAIN/ScottA/sourceimages/ScottA_1001_Metallic.jpg";
	setAttr ".uvt" 3;
	setAttr ".cs" -type "string" "Raw";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "EE0095C1-41A3-F382-342A-BDA3F279E75D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -378.5714135283522 -279.76189364516597 ;
	setAttr ".tgi[0].vh" -type "double2" 491.66664712958953 383.33331810103584 ;
createNode reference -n "LeftRN";
	rename -uid "BB56C087-450A-197B-95E3-92A7E5F6FA62";
	setAttr ".fn[0]" -type "string" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitArm.ma";
	setAttr -s 62 ".phl";
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
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"LeftRN"
		"LeftRN" 0
		"LeftRN" 88
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
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula.translateY" "LeftRN.placeHolderList[9]" 
		""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula.translateZ" "LeftRN.placeHolderList[10]" 
		""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula.translateX" "LeftRN.placeHolderList[11]" 
		""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula.rotateX" "LeftRN.placeHolderList[12]" 
		""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula.rotateY" "LeftRN.placeHolderList[13]" 
		""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula.rotateZ" "LeftRN.placeHolderList[14]" 
		""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder.translateX" 
		"LeftRN.placeHolderList[15]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder.translateY" 
		"LeftRN.placeHolderList[16]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder.translateZ" 
		"LeftRN.placeHolderList[17]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder.rotateY" 
		"LeftRN.placeHolderList[18]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder.rotateX" 
		"LeftRN.placeHolderList[19]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder.rotateZ" 
		"LeftRN.placeHolderList[20]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow.translateX" 
		"LeftRN.placeHolderList[21]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow.translateY" 
		"LeftRN.placeHolderList[22]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow.translateZ" 
		"LeftRN.placeHolderList[23]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow.rotateY" 
		"LeftRN.placeHolderList[24]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow.rotateX" 
		"LeftRN.placeHolderList[25]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow.rotateZ" 
		"LeftRN.placeHolderList[26]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist.translateX" 
		"LeftRN.placeHolderList[27]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist.translateY" 
		"LeftRN.placeHolderList[28]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist.translateZ" 
		"LeftRN.placeHolderList[29]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist.rotateX" 
		"LeftRN.placeHolderList[30]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist.rotateY" 
		"LeftRN.placeHolderList[31]" ""
		5 4 "LeftRN" "|Left:FitArm|Left:FitScapula|Left:FitShoulder|Left:FitElbow|Left:FitWrist.rotateZ" 
		"LeftRN.placeHolderList[32]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt.worldMatrix" "LeftRN.placeHolderList[33]" 
		""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt.worldMatrix" 
		"LeftRN.placeHolderList[34]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt.worldMatrix" 
		"LeftRN.placeHolderList[35]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.translate" 
		"LeftRN.placeHolderList[36]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.jointOrient" 
		"LeftRN.placeHolderList[37]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.worldMatrix" 
		"LeftRN.placeHolderList[38]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotatePivot" 
		"LeftRN.placeHolderList[39]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotatePivotTranslate" 
		"LeftRN.placeHolderList[40]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotate" 
		"LeftRN.placeHolderList[41]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.rotateOrder" 
		"LeftRN.placeHolderList[42]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.scale" 
		"LeftRN.placeHolderList[43]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.scale" 
		"LeftRN.placeHolderList[44]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.parentMatrix" 
		"LeftRN.placeHolderList[45]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.parentMatrix" 
		"LeftRN.placeHolderList[46]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.segmentScaleCompensate" 
		"LeftRN.placeHolderList[47]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt.inverseScale" 
		"LeftRN.placeHolderList[48]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.translate" 
		"LeftRN.placeHolderList[49]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.jointOrient" 
		"LeftRN.placeHolderList[50]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.worldMatrix" 
		"LeftRN.placeHolderList[51]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotatePivot" 
		"LeftRN.placeHolderList[52]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotatePivotTranslate" 
		"LeftRN.placeHolderList[53]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotate" 
		"LeftRN.placeHolderList[54]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.rotateOrder" 
		"LeftRN.placeHolderList[55]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.scale" 
		"LeftRN.placeHolderList[56]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.scale" 
		"LeftRN.placeHolderList[57]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.parentMatrix" 
		"LeftRN.placeHolderList[58]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.parentMatrix" 
		"LeftRN.placeHolderList[59]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.segmentScaleCompensate" 
		"LeftRN.placeHolderList[60]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.inverseScale" 
		"LeftRN.placeHolderList[61]" ""
		5 3 "LeftRN" "|Left:FitArm|Left:ScapulaJnt|Left:ShoulderJnt|Left:ElbowJnt|Left:WristJnt.message" 
		"LeftRN.placeHolderList[62]" "";
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
createNode animCurveTL -n "FitScapula_translateX";
	rename -uid "444E6EAE-47AE-A1B8-E2A2-C79B2992FFC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.7313354015350342;
createNode animCurveTL -n "FitScapula_translateY";
	rename -uid "A33D80CF-40B3-F150-B0F1-BBB5DC91B08A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 155.38174438476563;
createNode animCurveTL -n "FitScapula_translateZ";
	rename -uid "A4F8B93C-4112-5E67-54BB-2E9A24B48941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1546275615692139;
createNode animCurveTL -n "FitShoulder_translateX";
	rename -uid "374ED21F-4A5D-D05C-F10B-45AD71B72375";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 15.592456102371216;
createNode animCurveTL -n "FitShoulder_translateY";
	rename -uid "561E7152-430D-BCD2-2113-21B3FFDE5410";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.74609375;
createNode animCurveTL -n "FitShoulder_translateZ";
	rename -uid "C79E117E-44C6-3F00-1B60-E1B8C84F6A7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.9454199075698853;
createNode animCurveTL -n "FitElbow_translateX";
	rename -uid "6E941E58-4036-4B6D-0413-38AB561FECA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 32.266384124755859;
createNode animCurveTL -n "FitElbow_translateY";
	rename -uid "B2F6262A-4255-E7DD-C5BB-0C9E98655AE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.5439300537109375;
createNode animCurveTL -n "FitElbow_translateZ";
	rename -uid "436B894A-4790-0B84-9A70-CF9A507A247D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.44409334659576449;
createNode animCurveTL -n "FitWrist_translateX";
	rename -uid "0639AA16-4C04-0D74-6618-6DA66820A519";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 32.784488677978516;
createNode animCurveTL -n "FitWrist_translateY";
	rename -uid "421EDF32-4322-E9CD-BB8C-5685734BF4A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.5687255859375;
createNode animCurveTL -n "FitWrist_translateZ";
	rename -uid "F9D09842-4214-0EC1-A573-DA9C578FD042";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.59413450956344616;
createNode animCurveTA -n "FitScapula_rotateX";
	rename -uid "FB3D9835-4369-954D-EF3C-EF9B2CAB6FF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitScapula_rotateY";
	rename -uid "5F78A35E-4094-F9F7-2627-B9A82BFB1C21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitScapula_rotateZ";
	rename -uid "39D956B5-4118-103F-377B-F78D7B1D7259";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitShoulder_rotateX";
	rename -uid "A84F7537-4406-E622-20FF-09993FAC7F74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitShoulder_rotateY";
	rename -uid "77ED7A21-4CE7-81E6-BF79-63B07D4A3AE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitShoulder_rotateZ";
	rename -uid "0E5BD619-4305-5B58-82B7-ACAB53BE2E5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitElbow_rotateX";
	rename -uid "59A4787B-480B-F5A6-102C-E0BEA84B0095";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitElbow_rotateY";
	rename -uid "AAA53D8C-43D0-C04B-997D-80925EABD1BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitElbow_rotateZ";
	rename -uid "1DE38B05-44A5-3858-8F79-1E80AA9CD993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitWrist_rotateX";
	rename -uid "42A9454F-43A5-8D6C-EF36-4685AFAAC5C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitWrist_rotateY";
	rename -uid "5CF0E73D-458F-5359-AC9F-32A2D9871CCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FitWrist_rotateZ";
	rename -uid "8BDC8BC0-466E-4CEA-0FC7-9C8D36C1EEF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode reference -n "sharedReferenceNode";
	rename -uid "097A1E16-4323-F66B-D481-73ADAA600C2B";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode multMatrix -n "LeftClavicleCtrlGrpMM";
	rename -uid "44CB4402-42EF-6111-9A05-EDAF1ABCDE73";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "LeftClavicleCtrlGrpDM";
	rename -uid "CB6F1F81-48C5-6EDD-EDE5-B7ADC20740F5";
createNode decomposeMatrix -n "LeftFingerCtrlScaleDM";
	rename -uid "FAD8DF5E-4684-644A-A5B3-B0ACFAC6D813";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "71AC613A-49E5-BD84-4EBB-14AAD2076E6A";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 5469.4010491154577 3346.9450820217403 ;
	setAttr ".tgi[0].vh" -type "double2" 6669.0983815078453 3810.8534007281473 ;
	setAttr -s 12 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 5491.4287109375;
	setAttr ".tgi[0].ni[0].y" 3422.857177734375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 4831.4287109375;
	setAttr ".tgi[0].ni[1].y" 3524.28564453125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 5798.5712890625;
	setAttr ".tgi[0].ni[2].y" 3524.28564453125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 5491.4287109375;
	setAttr ".tgi[0].ni[3].y" 3625.71435546875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 5491.4287109375;
	setAttr ".tgi[0].ni[4].y" 3524.28564453125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 5491.4287109375;
	setAttr ".tgi[0].ni[5].y" 3828.571533203125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 5798.5712890625;
	setAttr ".tgi[0].ni[6].y" 3727.142822265625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 5491.4287109375;
	setAttr ".tgi[0].ni[7].y" 3727.142822265625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 6496.423828125;
	setAttr ".tgi[0].ni[8].y" 3649.191162109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 6496.423828125;
	setAttr ".tgi[0].ni[9].y" 3446.333984375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 5138.5712890625;
	setAttr ".tgi[0].ni[10].y" 3524.28564453125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 5981.25634765625;
	setAttr ".tgi[0].ni[11].y" 3601.951171875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" 2740.1209645550798 -452.33873457246142 ;
	setAttr ".tgi[1].vh" -type "double2" 4405.768349549292 191.7467835552533 ;
	setAttr -s 10 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 4125.623046875;
	setAttr ".tgi[1].ni[0].y" 96.053001403808594;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 3790;
	setAttr ".tgi[1].ni[1].y" -90;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 3236.42724609375;
	setAttr ".tgi[1].ni[2].y" -8.2149391174316406;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 2808.091064453125;
	setAttr ".tgi[1].ni[3].y" 34.020175933837891;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 4097.14306640625;
	setAttr ".tgi[1].ni[4].y" -217.14285278320313;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 3114.06298828125;
	setAttr ".tgi[1].ni[5].y" 136.81407165527344;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 3482.857177734375;
	setAttr ".tgi[1].ni[6].y" -140;
	setAttr ".tgi[1].ni[6].nvs" 18305;
	setAttr ".tgi[1].ni[7].x" 3011.428466796875;
	setAttr ".tgi[1].ni[7].y" -232.85714721679688;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 3478.571533203125;
	setAttr ".tgi[1].ni[8].y" -348.57144165039063;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 3681.428466796875;
	setAttr ".tgi[1].ni[9].y" 85.714286804199219;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" -751.1904463408498 -354.76189066493379 ;
	setAttr ".tgi[2].vh" -type "double2" 751.1904463408498 354.76189066493379 ;
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
	setAttr -s 19 ".st";
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
	setAttr -s 31 ".s";
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
	setAttr -s 84 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 39 ".tx";
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
connectAttr "FitScapula_translateY.o" "LeftRN.phl[9]";
connectAttr "FitScapula_translateZ.o" "LeftRN.phl[10]";
connectAttr "FitScapula_translateX.o" "LeftRN.phl[11]";
connectAttr "FitScapula_rotateX.o" "LeftRN.phl[12]";
connectAttr "FitScapula_rotateY.o" "LeftRN.phl[13]";
connectAttr "FitScapula_rotateZ.o" "LeftRN.phl[14]";
connectAttr "FitShoulder_translateX.o" "LeftRN.phl[15]";
connectAttr "FitShoulder_translateY.o" "LeftRN.phl[16]";
connectAttr "FitShoulder_translateZ.o" "LeftRN.phl[17]";
connectAttr "FitShoulder_rotateY.o" "LeftRN.phl[18]";
connectAttr "FitShoulder_rotateX.o" "LeftRN.phl[19]";
connectAttr "FitShoulder_rotateZ.o" "LeftRN.phl[20]";
connectAttr "FitElbow_translateX.o" "LeftRN.phl[21]";
connectAttr "FitElbow_translateY.o" "LeftRN.phl[22]";
connectAttr "FitElbow_translateZ.o" "LeftRN.phl[23]";
connectAttr "FitElbow_rotateY.o" "LeftRN.phl[24]";
connectAttr "FitElbow_rotateX.o" "LeftRN.phl[25]";
connectAttr "FitElbow_rotateZ.o" "LeftRN.phl[26]";
connectAttr "FitWrist_translateX.o" "LeftRN.phl[27]";
connectAttr "FitWrist_translateY.o" "LeftRN.phl[28]";
connectAttr "FitWrist_translateZ.o" "LeftRN.phl[29]";
connectAttr "FitWrist_rotateX.o" "LeftRN.phl[30]";
connectAttr "FitWrist_rotateY.o" "LeftRN.phl[31]";
connectAttr "FitWrist_rotateZ.o" "LeftRN.phl[32]";
connectAttr "LeftRN.phl[33]" "LeftClavicleCtrlGrpMM.i[0]";
connectAttr "LeftRN.phl[34]" "LeftArmIK1PosMM.i[0]";
connectAttr "LeftRN.phl[35]" "LeftArm1IKJntMM.i[0]";
connectAttr "LeftRN.phl[36]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftRN.phl[37]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftRN.phl[38]" "LeftArmIK2PosMM.i[0]";
connectAttr "LeftRN.phl[39]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftRN.phl[40]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftRN.phl[41]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftRN.phl[42]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftRN.phl[43]" "LeftArmPoleVectorCtrlGrp_scaleConstraint1.tg[0].ts"
		;
connectAttr "LeftRN.phl[44]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftRN.phl[45]" "LeftArmPoleVectorCtrlGrp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "LeftRN.phl[46]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftRN.phl[47]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftRN.phl[48]" "LeftArmPoleVectorCtrlGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftRN.phl[49]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tt";
connectAttr "LeftRN.phl[50]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tjo";
connectAttr "LeftRN.phl[51]" "LeftArmIK3PosMM.i[0]";
connectAttr "LeftRN.phl[52]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].trp";
connectAttr "LeftRN.phl[53]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].trt";
connectAttr "LeftRN.phl[54]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tr";
connectAttr "LeftRN.phl[55]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tro";
connectAttr "LeftRN.phl[56]" "LeftArmIKCtrlGrp_scaleConstraint1.tg[0].ts";
connectAttr "LeftRN.phl[57]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].ts";
connectAttr "LeftRN.phl[58]" "LeftArmIKCtrlGrp_scaleConstraint1.tg[0].tpm";
connectAttr "LeftRN.phl[59]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tpm";
connectAttr "LeftRN.phl[60]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tsc";
connectAttr "LeftRN.phl[61]" "LeftArmIKCtrlGrp_parentConstraint1.tg[0].tis";
connectAttr "LeftRN.phl[62]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
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
connectAttr "LeftElbowFKCtrlGrpDM.ot" "LeftElbowFKCtrlGrp.t";
connectAttr "LeftElbowFKCtrlGrpDM.or" "LeftElbowFKCtrlGrp.r";
connectAttr "LeftArmAutoHideCD.ocg" "LeftElbowFKCtrlGrp.v";
connectAttr "LeftWristFKCtrlGrpDM.ot" "LeftWristFKCtrlGrp.t";
connectAttr "LeftWristFKCtrlGrpDM.or" "LeftWristFKCtrlGrp.r";
connectAttr "LeftArmAutoHideCD.ocg" "LeftWristFKCtrlGrp.v";
connectAttr "LeftArmIKFKCtrlGrpDM.ot" "LeftArmIKFKCtrlGrp.t";
connectAttr "LeftArmIKFKCtrlGrpDM.or" "LeftArmIKFKCtrlGrp.r";
connectAttr "LeftFingerCtrlScaleDM.os" "LeftArmIKFKCtrlGrp.s";
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
connectAttr "LeftWristConsGrp.msg" "LeftFingerRigGrp.Grp[0]";
connectAttr "LeftWristIKScaleGrp.msg" "LeftFingerRigGrp.Grp[1]";
connectAttr "LeftFingerCtrl.msg" "LeftFingerRigGrp.Ctrl[0]";
connectAttr "LeftIndexRigGrp.msg" "LeftFingerRigGrp.Part[0]";
connectAttr "LeftMiddleRigGrp.msg" "LeftFingerRigGrp.Part[1]";
connectAttr "LeftRingRigGrp.msg" "LeftFingerRigGrp.Part[2]";
connectAttr "LeftPinkyRigGrp.msg" "LeftFingerRigGrp.Part[3]";
connectAttr "LeftThumbRigGrp.msg" "LeftFingerRigGrp.Part[4]";
connectAttr "LeftIndex1IKJnt.msg" "LeftIndexRigGrp.IKJnt[0]";
connectAttr "LeftIndex2IKJnt.msg" "LeftIndexRigGrp.IKJnt[1]";
connectAttr "LeftIndex3IKJnt.msg" "LeftIndexRigGrp.IKJnt[2]";
connectAttr "LeftIndex4IKJnt.msg" "LeftIndexRigGrp.IKJnt[3]";
connectAttr "LeftIndexIKCtrl.msg" "LeftIndexRigGrp.Ctrl[0]";
connectAttr "LeftIndex2Ctrl.msg" "LeftIndexRigGrp.Ctrl[1]";
connectAttr "LeftIndex3Ctrl.msg" "LeftIndexRigGrp.Ctrl[2]";
connectAttr "LeftIndex4Ctrl.msg" "LeftIndexRigGrp.Ctrl[3]";
connectAttr "LeftIndex1Ctrl.msg" "LeftIndexRigGrp.Ctrl[4]";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftIndex1CtrlShape.v";
connectAttr "LeftFingerCtrl.IKCtrlVis" "LeftIndexIKCtrlGrp.v";
connectAttr "LeftIndex1IKJnt.msg" "LeftIndexIKh.hsj";
connectAttr "effector32.hp" "LeftIndexIKh.hee";
connectAttr "ikRPsolver.msg" "LeftIndexIKh.hsv";
connectAttr "LeftIndexIKh_poleVectorConstraint1.ctx" "LeftIndexIKh.pvx";
connectAttr "LeftIndexIKh_poleVectorConstraint1.cty" "LeftIndexIKh.pvy";
connectAttr "LeftIndexIKh_poleVectorConstraint1.ctz" "LeftIndexIKh.pvz";
connectAttr "LeftIndexIKh.pim" "LeftIndexIKh_poleVectorConstraint1.cpim";
connectAttr "LeftIndex1IKJnt.pm" "LeftIndexIKh_poleVectorConstraint1.ps";
connectAttr "LeftIndex1IKJnt.t" "LeftIndexIKh_poleVectorConstraint1.crp";
connectAttr "LeftIndexPVPos.t" "LeftIndexIKh_poleVectorConstraint1.tg[0].tt";
connectAttr "LeftIndexPVPos.rp" "LeftIndexIKh_poleVectorConstraint1.tg[0].trp";
connectAttr "LeftIndexPVPos.rpt" "LeftIndexIKh_poleVectorConstraint1.tg[0].trt";
connectAttr "LeftIndexPVPos.pm" "LeftIndexIKh_poleVectorConstraint1.tg[0].tpm";
connectAttr "LeftIndexIKh_poleVectorConstraint1.w0" "LeftIndexIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftIndex1IKJnt.s" "LeftIndex2IKJnt.is";
connectAttr "LeftIndex2IKJnt.s" "LeftIndex3IKJnt.is";
connectAttr "LeftIndex3IKJnt.s" "LeftIndex4IKJnt.is";
connectAttr "LeftIndex4IKJnt.tx" "effector32.tx";
connectAttr "LeftIndex4IKJnt.ty" "effector32.ty";
connectAttr "LeftIndex4IKJnt.tz" "effector32.tz";
connectAttr "LeftIndex1MTPosDM.ot" "LeftIndex1MTPos.t";
connectAttr "LeftIndex1MTPosDM.or" "LeftIndex1MTPos.r";
connectAttr "LeftIndex2MTPosDM.ot" "LeftIndex2MTPos.t";
connectAttr "LeftIndex2MTPosDM.or" "LeftIndex2MTPos.r";
connectAttr "LeftIndex3MTPosDM.ot" "LeftIndex3MTPos.t";
connectAttr "LeftIndex3MTPosDM.or" "LeftIndex3MTPos.r";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftIndex1CtrlPos.v";
connectAttr "LeftIndex1MTPos.t" "LeftIndex1CtrlPos.t";
connectAttr "LeftIndex1MTPos.r" "LeftIndex1CtrlPos.r";
connectAttr "unitConversion8.o" "LeftIndex1CtrlOff.ry";
connectAttr "unitConversion11.o" "LeftIndex1CtrlOff.rz";
connectAttr "unitConversion12.o" "LeftIndex1CtrlOff.rx";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftIndex2CtrlPos.v";
connectAttr "LeftIndex2MTPos.t" "LeftIndex2CtrlPos.t";
connectAttr "LeftIndex2MTPos.r" "LeftIndex2CtrlPos.r";
connectAttr "unitConversion9.o" "LeftIndex2CtrlOff.ry";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftIndex3CtrlPos.v";
connectAttr "LeftIndex3MTPos.t" "LeftIndex3CtrlPos.t";
connectAttr "LeftIndex3MTPos.r" "LeftIndex3CtrlPos.r";
connectAttr "unitConversion10.o" "LeftIndex3CtrlOff.ry";
connectAttr "LeftIndexAMGrpAMCons.crx" "LeftIndexAMGrp.rx";
connectAttr "LeftIndexAMGrpAMCons.cry" "LeftIndexAMGrp.ry";
connectAttr "LeftIndexAMGrpAMCons.crz" "LeftIndexAMGrp.rz";
connectAttr "LeftIndexAMGrp.pim" "LeftIndexAMGrpAMCons.cpim";
connectAttr "LeftIndexAMGrp.t" "LeftIndexAMGrpAMCons.ct";
connectAttr "LeftIndexAMGrp.rp" "LeftIndexAMGrpAMCons.crp";
connectAttr "LeftIndexAMGrp.rpt" "LeftIndexAMGrpAMCons.crt";
connectAttr "LeftIndexAMGrp.ro" "LeftIndexAMGrpAMCons.cro";
connectAttr "LeftIndexIKCtrl.t" "LeftIndexAMGrpAMCons.tg[0].tt";
connectAttr "LeftIndexIKCtrl.rp" "LeftIndexAMGrpAMCons.tg[0].trp";
connectAttr "LeftIndexIKCtrl.rpt" "LeftIndexAMGrpAMCons.tg[0].trt";
connectAttr "LeftIndexIKCtrl.pm" "LeftIndexAMGrpAMCons.tg[0].tpm";
connectAttr "LeftIndexAMGrpAMCons.w0" "LeftIndexAMGrpAMCons.tg[0].tw";
connectAttr "LeftIndexAMUpvec.wm" "LeftIndexAMGrpAMCons.wum";
connectAttr "LeftMiddle1IKJnt.msg" "LeftMiddleRigGrp.IKJnt[0]";
connectAttr "LeftMiddle2IKJnt.msg" "LeftMiddleRigGrp.IKJnt[1]";
connectAttr "LeftMiddle3IKJnt.msg" "LeftMiddleRigGrp.IKJnt[2]";
connectAttr "LeftMiddle4IKJnt.msg" "LeftMiddleRigGrp.IKJnt[3]";
connectAttr "LeftMiddleIKCtrl.msg" "LeftMiddleRigGrp.Ctrl[0]";
connectAttr "LeftMiddle2Ctrl.msg" "LeftMiddleRigGrp.Ctrl[1]";
connectAttr "LeftMiddle3Ctrl.msg" "LeftMiddleRigGrp.Ctrl[2]";
connectAttr "LeftMiddle4Ctrl.msg" "LeftMiddleRigGrp.Ctrl[3]";
connectAttr "LeftMiddle1Ctrl.msg" "LeftMiddleRigGrp.Ctrl[4]";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftMiddle1CtrlShape.v";
connectAttr "LeftFingerCtrl.IKCtrlVis" "LeftMiddleIKCtrlGrp.v";
connectAttr "LeftMiddle1IKJnt.msg" "LeftMiddleIKh.hsj";
connectAttr "effector10.hp" "LeftMiddleIKh.hee";
connectAttr "ikRPsolver.msg" "LeftMiddleIKh.hsv";
connectAttr "LeftMiddleIKhPVCons.ctx" "LeftMiddleIKh.pvx";
connectAttr "LeftMiddleIKhPVCons.cty" "LeftMiddleIKh.pvy";
connectAttr "LeftMiddleIKhPVCons.ctz" "LeftMiddleIKh.pvz";
connectAttr "LeftMiddleIKh.pim" "LeftMiddleIKhPVCons.cpim";
connectAttr "LeftMiddle1IKJnt.pm" "LeftMiddleIKhPVCons.ps";
connectAttr "LeftMiddle1IKJnt.t" "LeftMiddleIKhPVCons.crp";
connectAttr "LeftMiddlePVPos.t" "LeftMiddleIKhPVCons.tg[0].tt";
connectAttr "LeftMiddlePVPos.rp" "LeftMiddleIKhPVCons.tg[0].trp";
connectAttr "LeftMiddlePVPos.rpt" "LeftMiddleIKhPVCons.tg[0].trt";
connectAttr "LeftMiddlePVPos.pm" "LeftMiddleIKhPVCons.tg[0].tpm";
connectAttr "LeftMiddleIKhPVCons.w0" "LeftMiddleIKhPVCons.tg[0].tw";
connectAttr "LeftMiddle1IKJnt.s" "LeftMiddle2IKJnt.is";
connectAttr "LeftMiddle2IKJnt.s" "LeftMiddle3IKJnt.is";
connectAttr "LeftMiddle3IKJnt.s" "LeftMiddle4IKJnt.is";
connectAttr "LeftMiddle4IKJnt.tx" "effector10.tx";
connectAttr "LeftMiddle4IKJnt.ty" "effector10.ty";
connectAttr "LeftMiddle4IKJnt.tz" "effector10.tz";
connectAttr "LeftMiddle1MTPosDM.ot" "LeftMiddle1MTPos.t";
connectAttr "LeftMiddle1MTPosDM.or" "LeftMiddle1MTPos.r";
connectAttr "LeftMiddle2MTPosDM.ot" "LeftMiddle2MTPos.t";
connectAttr "LeftMiddle2MTPosDM.or" "LeftMiddle2MTPos.r";
connectAttr "LeftMiddle3MTPosDM.ot" "LeftMiddle3MTPos.t";
connectAttr "LeftMiddle3MTPosDM.or" "LeftMiddle3MTPos.r";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftMiddle1CtrlPos.v";
connectAttr "LeftMiddle1MTPos.t" "LeftMiddle1CtrlPos.t";
connectAttr "LeftMiddle1MTPos.r" "LeftMiddle1CtrlPos.r";
connectAttr "unitConversion13.o" "LeftMiddle1CtrlOff.ry";
connectAttr "unitConversion16.o" "LeftMiddle1CtrlOff.rz";
connectAttr "unitConversion17.o" "LeftMiddle1CtrlOff.rx";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftMiddle2CtrlPos.v";
connectAttr "LeftMiddle2MTPos.t" "LeftMiddle2CtrlPos.t";
connectAttr "LeftMiddle2MTPos.r" "LeftMiddle2CtrlPos.r";
connectAttr "unitConversion14.o" "LeftMiddle2CtrlOff.ry";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftMiddle3CtrlPos.v";
connectAttr "LeftMiddle3MTPos.t" "LeftMiddle3CtrlPos.t";
connectAttr "LeftMiddle3MTPos.r" "LeftMiddle3CtrlPos.r";
connectAttr "unitConversion15.o" "LeftMiddle3CtrlOff.ry";
connectAttr "LeftMiddleAMGrpAMCons.crx" "LeftMiddleAMGrp.rx";
connectAttr "LeftMiddleAMGrpAMCons.cry" "LeftMiddleAMGrp.ry";
connectAttr "LeftMiddleAMGrpAMCons.crz" "LeftMiddleAMGrp.rz";
connectAttr "LeftMiddleAMGrp.pim" "LeftMiddleAMGrpAMCons.cpim";
connectAttr "LeftMiddleAMGrp.t" "LeftMiddleAMGrpAMCons.ct";
connectAttr "LeftMiddleAMGrp.rp" "LeftMiddleAMGrpAMCons.crp";
connectAttr "LeftMiddleAMGrp.rpt" "LeftMiddleAMGrpAMCons.crt";
connectAttr "LeftMiddleAMGrp.ro" "LeftMiddleAMGrpAMCons.cro";
connectAttr "LeftMiddleIKCtrl.t" "LeftMiddleAMGrpAMCons.tg[0].tt";
connectAttr "LeftMiddleIKCtrl.rp" "LeftMiddleAMGrpAMCons.tg[0].trp";
connectAttr "LeftMiddleIKCtrl.rpt" "LeftMiddleAMGrpAMCons.tg[0].trt";
connectAttr "LeftMiddleIKCtrl.pm" "LeftMiddleAMGrpAMCons.tg[0].tpm";
connectAttr "LeftMiddleAMGrpAMCons.w0" "LeftMiddleAMGrpAMCons.tg[0].tw";
connectAttr "LeftMiddleAMUpvec.wm" "LeftMiddleAMGrpAMCons.wum";
connectAttr "LeftRing1IKJnt.msg" "LeftRingRigGrp.IKJnt[0]";
connectAttr "LeftRing2IKJnt.msg" "LeftRingRigGrp.IKJnt[1]";
connectAttr "LeftRing3IKJnt.msg" "LeftRingRigGrp.IKJnt[2]";
connectAttr "LeftRing4IKJnt.msg" "LeftRingRigGrp.IKJnt[3]";
connectAttr "LeftRingIKCtrl.msg" "LeftRingRigGrp.Ctrl[0]";
connectAttr "LeftRing2Ctrl.msg" "LeftRingRigGrp.Ctrl[1]";
connectAttr "LeftRing3Ctrl.msg" "LeftRingRigGrp.Ctrl[2]";
connectAttr "LeftRing4Ctrl.msg" "LeftRingRigGrp.Ctrl[3]";
connectAttr "LeftRing1Ctrl.msg" "LeftRingRigGrp.Ctrl[4]";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftRing1CtrlShape.v";
connectAttr "LeftFingerCtrl.IKCtrlVis" "LeftRingIKCtrlGrp.v";
connectAttr "LeftRing1IKJnt.msg" "LeftRingIKh.hsj";
connectAttr "effector11.hp" "LeftRingIKh.hee";
connectAttr "ikRPsolver.msg" "LeftRingIKh.hsv";
connectAttr "LeftRingIKhPVCons.ctx" "LeftRingIKh.pvx";
connectAttr "LeftRingIKhPVCons.cty" "LeftRingIKh.pvy";
connectAttr "LeftRingIKhPVCons.ctz" "LeftRingIKh.pvz";
connectAttr "LeftRingIKh.pim" "LeftRingIKhPVCons.cpim";
connectAttr "LeftRing1IKJnt.pm" "LeftRingIKhPVCons.ps";
connectAttr "LeftRing1IKJnt.t" "LeftRingIKhPVCons.crp";
connectAttr "LeftRingPVPos.t" "LeftRingIKhPVCons.tg[0].tt";
connectAttr "LeftRingPVPos.rp" "LeftRingIKhPVCons.tg[0].trp";
connectAttr "LeftRingPVPos.rpt" "LeftRingIKhPVCons.tg[0].trt";
connectAttr "LeftRingPVPos.pm" "LeftRingIKhPVCons.tg[0].tpm";
connectAttr "LeftRingIKhPVCons.w0" "LeftRingIKhPVCons.tg[0].tw";
connectAttr "LeftRing1IKJnt.s" "LeftRing2IKJnt.is";
connectAttr "LeftRing2IKJnt.s" "LeftRing3IKJnt.is";
connectAttr "LeftRing3IKJnt.s" "LeftRing4IKJnt.is";
connectAttr "LeftRing4IKJnt.tx" "effector11.tx";
connectAttr "LeftRing4IKJnt.ty" "effector11.ty";
connectAttr "LeftRing4IKJnt.tz" "effector11.tz";
connectAttr "LeftRing1MTPosDM.ot" "LeftRing1MTPos.t";
connectAttr "LeftRing1MTPosDM.or" "LeftRing1MTPos.r";
connectAttr "LeftRing2MTPosDM.ot" "LeftRing2MTPos.t";
connectAttr "LeftRing2MTPosDM.or" "LeftRing2MTPos.r";
connectAttr "LeftRing3MTPosDM.ot" "LeftRing3MTPos.t";
connectAttr "LeftRing3MTPosDM.or" "LeftRing3MTPos.r";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftRing1CtrlPos.v";
connectAttr "LeftRing1MTPos.t" "LeftRing1CtrlPos.t";
connectAttr "LeftRing1MTPos.r" "LeftRing1CtrlPos.r";
connectAttr "unitConversion18.o" "LeftRing1CtrlOff.ry";
connectAttr "unitConversion21.o" "LeftRing1CtrlOff.rz";
connectAttr "unitConversion22.o" "LeftRing1CtrlOff.rx";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftRing2CtrlPos.v";
connectAttr "LeftRing2MTPos.t" "LeftRing2CtrlPos.t";
connectAttr "LeftRing2MTPos.r" "LeftRing2CtrlPos.r";
connectAttr "unitConversion19.o" "LeftRing2CtrlOff.ry";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftRing3CtrlPos.v";
connectAttr "LeftRing3MTPos.t" "LeftRing3CtrlPos.t";
connectAttr "LeftRing3MTPos.r" "LeftRing3CtrlPos.r";
connectAttr "unitConversion20.o" "LeftRing3CtrlOff.ry";
connectAttr "LeftRingAMGrpAMCons.crx" "LeftRingAMGrp.rx";
connectAttr "LeftRingAMGrpAMCons.cry" "LeftRingAMGrp.ry";
connectAttr "LeftRingAMGrpAMCons.crz" "LeftRingAMGrp.rz";
connectAttr "LeftRingAMGrp.pim" "LeftRingAMGrpAMCons.cpim";
connectAttr "LeftRingAMGrp.t" "LeftRingAMGrpAMCons.ct";
connectAttr "LeftRingAMGrp.rp" "LeftRingAMGrpAMCons.crp";
connectAttr "LeftRingAMGrp.rpt" "LeftRingAMGrpAMCons.crt";
connectAttr "LeftRingAMGrp.ro" "LeftRingAMGrpAMCons.cro";
connectAttr "LeftRingIKCtrl.t" "LeftRingAMGrpAMCons.tg[0].tt";
connectAttr "LeftRingIKCtrl.rp" "LeftRingAMGrpAMCons.tg[0].trp";
connectAttr "LeftRingIKCtrl.rpt" "LeftRingAMGrpAMCons.tg[0].trt";
connectAttr "LeftRingIKCtrl.pm" "LeftRingAMGrpAMCons.tg[0].tpm";
connectAttr "LeftRingAMGrpAMCons.w0" "LeftRingAMGrpAMCons.tg[0].tw";
connectAttr "LeftRingAMUpvec.wm" "LeftRingAMGrpAMCons.wum";
connectAttr "LeftPinky1IKJnt.msg" "LeftPinkyRigGrp.IKJnt[0]";
connectAttr "LeftPinky2IKJnt.msg" "LeftPinkyRigGrp.IKJnt[1]";
connectAttr "LeftPinky3IKJnt.msg" "LeftPinkyRigGrp.IKJnt[2]";
connectAttr "LeftPinky4IKJnt.msg" "LeftPinkyRigGrp.IKJnt[3]";
connectAttr "LeftPinkyIKCtrl.msg" "LeftPinkyRigGrp.Ctrl[0]";
connectAttr "LeftPinky2Ctrl.msg" "LeftPinkyRigGrp.Ctrl[1]";
connectAttr "LeftPinky3Ctrl.msg" "LeftPinkyRigGrp.Ctrl[2]";
connectAttr "LeftPinky4Ctrl.msg" "LeftPinkyRigGrp.Ctrl[3]";
connectAttr "LeftPinky1Ctrl.msg" "LeftPinkyRigGrp.Ctrl[4]";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftPinky1CtrlShape.v";
connectAttr "LeftFingerCtrl.IKCtrlVis" "LeftPinkyIKCtrlGrp.v";
connectAttr "LeftPinky1IKJnt.msg" "LeftPinkyIKh.hsj";
connectAttr "effector12.hp" "LeftPinkyIKh.hee";
connectAttr "ikRPsolver.msg" "LeftPinkyIKh.hsv";
connectAttr "LeftPinkyIKhPVCons.ctx" "LeftPinkyIKh.pvx";
connectAttr "LeftPinkyIKhPVCons.cty" "LeftPinkyIKh.pvy";
connectAttr "LeftPinkyIKhPVCons.ctz" "LeftPinkyIKh.pvz";
connectAttr "LeftPinkyIKh.pim" "LeftPinkyIKhPVCons.cpim";
connectAttr "LeftPinky1IKJnt.pm" "LeftPinkyIKhPVCons.ps";
connectAttr "LeftPinky1IKJnt.t" "LeftPinkyIKhPVCons.crp";
connectAttr "LeftPinkyPVPos.t" "LeftPinkyIKhPVCons.tg[0].tt";
connectAttr "LeftPinkyPVPos.rp" "LeftPinkyIKhPVCons.tg[0].trp";
connectAttr "LeftPinkyPVPos.rpt" "LeftPinkyIKhPVCons.tg[0].trt";
connectAttr "LeftPinkyPVPos.pm" "LeftPinkyIKhPVCons.tg[0].tpm";
connectAttr "LeftPinkyIKhPVCons.w0" "LeftPinkyIKhPVCons.tg[0].tw";
connectAttr "LeftPinky1IKJnt.s" "LeftPinky2IKJnt.is";
connectAttr "LeftPinky2IKJnt.s" "LeftPinky3IKJnt.is";
connectAttr "LeftPinky3IKJnt.s" "LeftPinky4IKJnt.is";
connectAttr "LeftPinky4IKJnt.tx" "effector12.tx";
connectAttr "LeftPinky4IKJnt.ty" "effector12.ty";
connectAttr "LeftPinky4IKJnt.tz" "effector12.tz";
connectAttr "LeftPinky1MTPosDM.ot" "LeftPinky1MTPos.t";
connectAttr "LeftPinky1MTPosDM.or" "LeftPinky1MTPos.r";
connectAttr "LeftPinky2MTPosDM.ot" "LeftPinky2MTPos.t";
connectAttr "LeftPinky2MTPosDM.or" "LeftPinky2MTPos.r";
connectAttr "LeftPinky3MTPosDM.ot" "LeftPinky3MTPos.t";
connectAttr "LeftPinky3MTPosDM.or" "LeftPinky3MTPos.r";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftPinky1CtrlPos.v";
connectAttr "LeftPinky1MTPos.t" "LeftPinky1CtrlPos.t";
connectAttr "LeftPinky1MTPos.r" "LeftPinky1CtrlPos.r";
connectAttr "unitConversion23.o" "LeftPinky1CtrlOff.ry";
connectAttr "unitConversion26.o" "LeftPinky1CtrlOff.rz";
connectAttr "unitConversion27.o" "LeftPinky1CtrlOff.rx";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftPinky2CtrlPos.v";
connectAttr "LeftPinky2MTPos.t" "LeftPinky2CtrlPos.t";
connectAttr "LeftPinky2MTPos.r" "LeftPinky2CtrlPos.r";
connectAttr "unitConversion24.o" "LeftPinky2CtrlOff.ry";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftPinky3CtrlPos.v";
connectAttr "LeftPinky3MTPos.t" "LeftPinky3CtrlPos.t";
connectAttr "LeftPinky3MTPos.r" "LeftPinky3CtrlPos.r";
connectAttr "unitConversion25.o" "LeftPinky3CtrlOff.ry";
connectAttr "LeftPinkyAMGrpAMCons.crx" "LeftPinkyAMGrp.rx";
connectAttr "LeftPinkyAMGrpAMCons.cry" "LeftPinkyAMGrp.ry";
connectAttr "LeftPinkyAMGrpAMCons.crz" "LeftPinkyAMGrp.rz";
connectAttr "LeftPinkyAMGrp.pim" "LeftPinkyAMGrpAMCons.cpim";
connectAttr "LeftPinkyAMGrp.t" "LeftPinkyAMGrpAMCons.ct";
connectAttr "LeftPinkyAMGrp.rp" "LeftPinkyAMGrpAMCons.crp";
connectAttr "LeftPinkyAMGrp.rpt" "LeftPinkyAMGrpAMCons.crt";
connectAttr "LeftPinkyAMGrp.ro" "LeftPinkyAMGrpAMCons.cro";
connectAttr "LeftPinkyIKCtrl.t" "LeftPinkyAMGrpAMCons.tg[0].tt";
connectAttr "LeftPinkyIKCtrl.rp" "LeftPinkyAMGrpAMCons.tg[0].trp";
connectAttr "LeftPinkyIKCtrl.rpt" "LeftPinkyAMGrpAMCons.tg[0].trt";
connectAttr "LeftPinkyIKCtrl.pm" "LeftPinkyAMGrpAMCons.tg[0].tpm";
connectAttr "LeftPinkyAMGrpAMCons.w0" "LeftPinkyAMGrpAMCons.tg[0].tw";
connectAttr "LeftPinkyAMUpvec.wm" "LeftPinkyAMGrpAMCons.wum";
connectAttr "LeftThumb1IKJnt.msg" "LeftThumbRigGrp.IKJnt[0]";
connectAttr "LeftThumb2IKJnt.msg" "LeftThumbRigGrp.IKJnt[1]";
connectAttr "LeftThumb3IKJnt.msg" "LeftThumbRigGrp.IKJnt[2]";
connectAttr "LeftThumb4IKJnt.msg" "LeftThumbRigGrp.IKJnt[3]";
connectAttr "LeftThumbIKCtrl.msg" "LeftThumbRigGrp.Ctrl[0]";
connectAttr "LeftThumb2Ctrl.msg" "LeftThumbRigGrp.Ctrl[1]";
connectAttr "LeftThumb3Ctrl.msg" "LeftThumbRigGrp.Ctrl[2]";
connectAttr "LeftThumb4Ctrl.msg" "LeftThumbRigGrp.Ctrl[3]";
connectAttr "LeftThumb1Ctrl.msg" "LeftThumbRigGrp.Ctrl[4]";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftThumb1CtrlShape.v";
connectAttr "LeftFingerCtrl.IKCtrlVis" "LeftThumbIKCtrlGrp.v";
connectAttr "LeftThumb1IKJnt.msg" "LeftThumbIKh.hsj";
connectAttr "effector13.hp" "LeftThumbIKh.hee";
connectAttr "ikRPsolver.msg" "LeftThumbIKh.hsv";
connectAttr "LeftThumbIKhPVCons.ctx" "LeftThumbIKh.pvx";
connectAttr "LeftThumbIKhPVCons.cty" "LeftThumbIKh.pvy";
connectAttr "LeftThumbIKhPVCons.ctz" "LeftThumbIKh.pvz";
connectAttr "LeftThumbIKh.pim" "LeftThumbIKhPVCons.cpim";
connectAttr "LeftThumb1IKJnt.pm" "LeftThumbIKhPVCons.ps";
connectAttr "LeftThumb1IKJnt.t" "LeftThumbIKhPVCons.crp";
connectAttr "LeftThumbPVPos.t" "LeftThumbIKhPVCons.tg[0].tt";
connectAttr "LeftThumbPVPos.rp" "LeftThumbIKhPVCons.tg[0].trp";
connectAttr "LeftThumbPVPos.rpt" "LeftThumbIKhPVCons.tg[0].trt";
connectAttr "LeftThumbPVPos.pm" "LeftThumbIKhPVCons.tg[0].tpm";
connectAttr "LeftThumbIKhPVCons.w0" "LeftThumbIKhPVCons.tg[0].tw";
connectAttr "LeftThumb1IKJnt.s" "LeftThumb2IKJnt.is";
connectAttr "LeftThumb2IKJnt.s" "LeftThumb3IKJnt.is";
connectAttr "LeftThumb3IKJnt.s" "LeftThumb4IKJnt.is";
connectAttr "LeftThumb4IKJnt.tx" "effector13.tx";
connectAttr "LeftThumb4IKJnt.ty" "effector13.ty";
connectAttr "LeftThumb4IKJnt.tz" "effector13.tz";
connectAttr "LeftThumb1MTPosDM.ot" "LeftThumb1MTPos.t";
connectAttr "LeftThumb1MTPosDM.or" "LeftThumb1MTPos.r";
connectAttr "LeftThumb2MTPosDM.ot" "LeftThumb2MTPos.t";
connectAttr "LeftThumb2MTPosDM.or" "LeftThumb2MTPos.r";
connectAttr "LeftThumb3MTPosDM.ot" "LeftThumb3MTPos.t";
connectAttr "LeftThumb3MTPosDM.or" "LeftThumb3MTPos.r";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftThumb1CtrlPos.v";
connectAttr "LeftThumb1MTPos.t" "LeftThumb1CtrlPos.t";
connectAttr "LeftThumb1MTPos.r" "LeftThumb1CtrlPos.r";
connectAttr "unitConversion28.o" "LeftThumb1CtrlOff.ry";
connectAttr "unitConversion31.o" "LeftThumb1CtrlOff.rz";
connectAttr "unitConversion32.o" "LeftThumb1CtrlOff.rx";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftThumb2CtrlPos.v";
connectAttr "LeftThumb2MTPos.t" "LeftThumb2CtrlPos.t";
connectAttr "LeftThumb2MTPos.r" "LeftThumb2CtrlPos.r";
connectAttr "unitConversion29.o" "LeftThumb2CtrlOff.ry";
connectAttr "LeftFingerCtrl.FKCtrlVis" "LeftThumb3CtrlPos.v";
connectAttr "LeftThumb3MTPos.t" "LeftThumb3CtrlPos.t";
connectAttr "LeftThumb3MTPos.r" "LeftThumb3CtrlPos.r";
connectAttr "unitConversion30.o" "LeftThumb3CtrlOff.ry";
connectAttr "LeftThumbAMGrpAMCons.crx" "LeftThumbAMGrp.rx";
connectAttr "LeftThumbAMGrpAMCons.cry" "LeftThumbAMGrp.ry";
connectAttr "LeftThumbAMGrpAMCons.crz" "LeftThumbAMGrp.rz";
connectAttr "LeftThumbAMGrp.pim" "LeftThumbAMGrpAMCons.cpim";
connectAttr "LeftThumbAMGrp.t" "LeftThumbAMGrpAMCons.ct";
connectAttr "LeftThumbAMGrp.rp" "LeftThumbAMGrpAMCons.crp";
connectAttr "LeftThumbAMGrp.rpt" "LeftThumbAMGrpAMCons.crt";
connectAttr "LeftThumbAMGrp.ro" "LeftThumbAMGrpAMCons.cro";
connectAttr "LeftThumbIKCtrl.t" "LeftThumbAMGrpAMCons.tg[0].tt";
connectAttr "LeftThumbIKCtrl.rp" "LeftThumbAMGrpAMCons.tg[0].trp";
connectAttr "LeftThumbIKCtrl.rpt" "LeftThumbAMGrpAMCons.tg[0].trt";
connectAttr "LeftThumbIKCtrl.pm" "LeftThumbAMGrpAMCons.tg[0].tpm";
connectAttr "LeftThumbAMGrpAMCons.w0" "LeftThumbAMGrpAMCons.tg[0].tw";
connectAttr "LeftThumbAMUpvec.wm" "LeftThumbAMGrpAMCons.wum";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmFKScaleBC.b";
connectAttr "LeftWristFKCtrl.s" "LeftArmFKScaleBC.c1";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmIKScaleBC.b";
connectAttr "LeftArmIKCtrl.s" "LeftArmIKScaleBC.c2";
connectAttr "vectorProduct1.ox" "setRange1.vx";
connectAttr "decomposeMatrix1.ot" "vectorProduct1.i2";
connectAttr "composeMatrix1.omat" "decomposeMatrix1.imat";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmIKUU.i";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmFKUU.i";
connectAttr "LeftClavicleCtrlConsGrpMM.o" "LeftClavicleCtrlConsGrpDM.imat";
connectAttr "LeftClavicleSubCtrl.wm" "LeftClavicleCtrlConsGrpMM.i[2]";
connectAttr "LeftClavicleCtrlConsGrp.pim" "LeftClavicleCtrlConsGrpMM.i[3]";
connectAttr "LeftArmIKFKCtrl.AutoHideIKFK" "LeftArmAutoHideCD.ft";
connectAttr "LeftArmAutoHideRV.ox" "LeftArmAutoHideCD.ctr";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmAutoHideCD.ctg";
connectAttr "LeftArmIKFKCtrl.IKFK" "LeftArmAutoHideRV.ix";
connectAttr "LeftElbowFKCtrlGrpMM.o" "LeftElbowFKCtrlGrpDM.imat";
connectAttr "LeftShoulderFKCtrl.wm" "LeftElbowFKCtrlGrpMM.i[2]";
connectAttr "LeftElbowFKCtrlGrp.pim" "LeftElbowFKCtrlGrpMM.i[3]";
connectAttr "LeftWristFKCtrlGrpMM.o" "LeftWristFKCtrlGrpDM.imat";
connectAttr "LeftElbowFKCtrl.wm" "LeftWristFKCtrlGrpMM.i[2]";
connectAttr "LeftWristFKCtrlGrp.pim" "LeftWristFKCtrlGrpMM.i[3]";
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
connectAttr "LeftIndex1MTPosMM.o" "LeftIndex1MTPosDM.imat";
connectAttr "LeftIndex1IKJnt.wm" "LeftIndex1MTPosMM.i[2]";
connectAttr "LeftIndex1MTPos.pim" "LeftIndex1MTPosMM.i[3]";
connectAttr "LeftIndex2MTPosMM.o" "LeftIndex2MTPosDM.imat";
connectAttr "LeftIndex2IKJnt.wm" "LeftIndex2MTPosMM.i[2]";
connectAttr "LeftIndex2MTPos.pim" "LeftIndex2MTPosMM.i[3]";
connectAttr "LeftIndex3MTPosMM.o" "LeftIndex3MTPosDM.imat";
connectAttr "LeftIndex3IKJnt.wm" "LeftIndex3MTPosMM.i[2]";
connectAttr "LeftIndex3MTPos.pim" "LeftIndex3MTPosMM.i[3]";
connectAttr "LeftFingerCtrl.Index1" "unitConversion8.i";
connectAttr "LeftFingerCtrl.IndexSpread" "unitConversion11.i";
connectAttr "LeftFingerCtrl.IndexRoll" "unitConversion12.i";
connectAttr "LeftFingerCtrl.Index2" "unitConversion9.i";
connectAttr "LeftFingerCtrl.Index3" "unitConversion10.i";
connectAttr "LeftMiddle1MTPosMM.o" "LeftMiddle1MTPosDM.imat";
connectAttr "LeftMiddle1IKJnt.wm" "LeftMiddle1MTPosMM.i[2]";
connectAttr "LeftMiddle1MTPos.pim" "LeftMiddle1MTPosMM.i[3]";
connectAttr "LeftMiddle2MTPosMM.o" "LeftMiddle2MTPosDM.imat";
connectAttr "LeftMiddle2IKJnt.wm" "LeftMiddle2MTPosMM.i[2]";
connectAttr "LeftMiddle2MTPos.pim" "LeftMiddle2MTPosMM.i[3]";
connectAttr "LeftMiddle3MTPosMM.o" "LeftMiddle3MTPosDM.imat";
connectAttr "LeftMiddle3IKJnt.wm" "LeftMiddle3MTPosMM.i[2]";
connectAttr "LeftMiddle3MTPos.pim" "LeftMiddle3MTPosMM.i[3]";
connectAttr "LeftFingerCtrl.Middle1" "unitConversion13.i";
connectAttr "LeftFingerCtrl.MiddleSpread" "unitConversion16.i";
connectAttr "LeftFingerCtrl.MiddleRoll" "unitConversion17.i";
connectAttr "LeftFingerCtrl.Middle2" "unitConversion14.i";
connectAttr "LeftFingerCtrl.Middle3" "unitConversion15.i";
connectAttr "LeftRing1MTPosMM.o" "LeftRing1MTPosDM.imat";
connectAttr "LeftRing1IKJnt.wm" "LeftRing1MTPosMM.i[2]";
connectAttr "LeftRing1MTPos.pim" "LeftRing1MTPosMM.i[3]";
connectAttr "LeftRing2MTPosMM.o" "LeftRing2MTPosDM.imat";
connectAttr "LeftRing2IKJnt.wm" "LeftRing2MTPosMM.i[2]";
connectAttr "LeftRing2MTPos.pim" "LeftRing2MTPosMM.i[3]";
connectAttr "LeftRing3MTPosMM.o" "LeftRing3MTPosDM.imat";
connectAttr "LeftRing3IKJnt.wm" "LeftRing3MTPosMM.i[2]";
connectAttr "LeftRing3MTPos.pim" "LeftRing3MTPosMM.i[3]";
connectAttr "LeftFingerCtrl.Ring1" "unitConversion18.i";
connectAttr "LeftFingerCtrl.RingSpread" "unitConversion21.i";
connectAttr "LeftFingerCtrl.RingRoll" "unitConversion22.i";
connectAttr "LeftFingerCtrl.Ring2" "unitConversion19.i";
connectAttr "LeftFingerCtrl.Ring3" "unitConversion20.i";
connectAttr "LeftPinky1MTPosMM.o" "LeftPinky1MTPosDM.imat";
connectAttr "LeftPinky1IKJnt.wm" "LeftPinky1MTPosMM.i[2]";
connectAttr "LeftPinky1MTPos.pim" "LeftPinky1MTPosMM.i[3]";
connectAttr "LeftPinky2MTPosMM.o" "LeftPinky2MTPosDM.imat";
connectAttr "LeftPinky2IKJnt.wm" "LeftPinky2MTPosMM.i[2]";
connectAttr "LeftPinky2MTPos.pim" "LeftPinky2MTPosMM.i[3]";
connectAttr "LeftPinky3MTPosMM.o" "LeftPinky3MTPosDM.imat";
connectAttr "LeftPinky3IKJnt.wm" "LeftPinky3MTPosMM.i[2]";
connectAttr "LeftPinky3MTPos.pim" "LeftPinky3MTPosMM.i[3]";
connectAttr "LeftFingerCtrl.Pinky1" "unitConversion23.i";
connectAttr "LeftFingerCtrl.PinkySpread" "unitConversion26.i";
connectAttr "LeftFingerCtrl.PinkyRoll" "unitConversion27.i";
connectAttr "LeftFingerCtrl.Pinky2" "unitConversion24.i";
connectAttr "LeftFingerCtrl.Pinky3" "unitConversion25.i";
connectAttr "LeftThumb1MTPosMM.o" "LeftThumb1MTPosDM.imat";
connectAttr "LeftThumb1IKJnt.wm" "LeftThumb1MTPosMM.i[2]";
connectAttr "LeftThumb1MTPos.pim" "LeftThumb1MTPosMM.i[3]";
connectAttr "LeftThumb2MTPosMM.o" "LeftThumb2MTPosDM.imat";
connectAttr "LeftThumb2IKJnt.wm" "LeftThumb2MTPosMM.i[2]";
connectAttr "LeftThumb2MTPos.pim" "LeftThumb2MTPosMM.i[3]";
connectAttr "LeftThumb3MTPosMM.o" "LeftThumb3MTPosDM.imat";
connectAttr "LeftThumb3IKJnt.wm" "LeftThumb3MTPosMM.i[2]";
connectAttr "LeftThumb3MTPos.pim" "LeftThumb3MTPosMM.i[3]";
connectAttr "LeftFingerCtrl.Thumb1" "unitConversion28.i";
connectAttr "LeftFingerCtrl.ThumbSpread" "unitConversion31.i";
connectAttr "LeftFingerCtrl.ThumbRoll" "unitConversion32.i";
connectAttr "LeftFingerCtrl.Thumb2" "unitConversion29.i";
connectAttr "LeftFingerCtrl.Thumb3" "unitConversion30.i";
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
relationship "link" ":lightLinker1" "Eye_Cornea_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Eye_Eyeball_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Eye_Iris_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Eye_Pupil_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Body_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Button_Fabric_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Button_Plastic_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Glasses_Frame_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Glasses_Lens_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_HairBand_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_HairDummy_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Pants_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Shirts_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Shoes_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScottA_Tongue_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SuperScott_Gum_ShdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SuperScott_Teeth_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":defaultHardwareRenderGlobals.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":ikSystem.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Eye_Cornea_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Eye_Eyeball_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Eye_Iris_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Eye_Pupil_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Body_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Button_Fabric_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Button_Plastic_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Glasses_Frame_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Glasses_Lens_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_HairBand_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_HairDummy_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Pants_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Shirts_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Shoes_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScottA_Tongue_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SuperScott_Gum_ShdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SuperScott_Teeth_ShdSG.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "LeftArmArcBlendShape.mlpr" "shapeEditorManager.bspr[0]";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Eye_Cornea_Anim_Shd.oc" "Eye_Cornea_ShdSG.ss";
connectAttr "Eye_Cornea_Shd.oc" "Eye_Cornea_ShdSG.rsSurfaceShader";
connectAttr "Eye_Eyeball_Anim_Shd.oc" "Eye_Eyeball_ShdSG.ss";
connectAttr "Eye_Eyeball_Shd.oc" "Eye_Eyeball_ShdSG.rsSurfaceShader";
connectAttr "Eye_Iris_Anim_Shd.oc" "Eye_Iris_ShdSG.ss";
connectAttr "Eye_Iris_Shd.oc" "Eye_Iris_ShdSG.rsSurfaceShader";
connectAttr "Eye_Pupil_Shd.oc" "Eye_Pupil_ShdSG.ss";
connectAttr "ScottA_Body_Shd.oc" "ScottA_Body_ShdSG.ss";
connectAttr "ScottA_Button_Fabric_Shd.oc" "ScottA_Button_Fabric_ShdSG.ss";
connectAttr "ScottA_Button_Plastic_Shd.oc" "ScottA_Button_Plastic_ShdSG.ss";
connectAttr "ScottA_Glasses_Frame_Shd.oc" "ScottA_Glasses_Frame_ShdSG.ss";
connectAttr "ScottA_Glasses_Lens_Anim_Shd.oc" "ScottA_Glasses_Lens_ShdSG.ss";
connectAttr "ScottA_Glasses_Lens_Shd.oc" "ScottA_Glasses_Lens_ShdSG.rsSurfaceShader"
		;
connectAttr "ScottA_HairBand_Shd.oc" "ScottA_HairBand_ShdSG.ss";
connectAttr "ScottA_HairDummy_Shd.oc" "ScottA_HairDummy_ShdSG.ss";
connectAttr "ScottA_Pants_Shd.oc" "ScottA_Pants_ShdSG.ss";
connectAttr "ScottA_Shirts_Shd.oc" "ScottA_Shirts_ShdSG.ss";
connectAttr "ScottA_Shoes_Shd.oc" "ScottA_Shoes_ShdSG.ss";
connectAttr "ScottA_Tongue_Shd.oc" "ScottA_Tongue_ShdSG.ss";
connectAttr "ScottA_Gum_Shd.oc" "SuperScott_Gum_ShdSG.ss";
connectAttr "ScottA_Teeth_Shd.oc" "SuperScott_Teeth_ShdSG.ss";
connectAttr "Eye_Cornea_ShdSG.msg" "materialInfo12141.sg";
connectAttr "Eye_Cornea_Anim_Shd.msg" "materialInfo12141.m";
connectAttr "Eye_ramp6.msg" "materialInfo12141.t" -na;
connectAttr "Eye_ramp6.oc" "Eye_Cornea_Anim_Shd.c";
connectAttr "Eye_reverse5.o" "Eye_Cornea_Anim_Shd.it";
connectAttr "place2dTexture172.o" "Eye_ramp6.uv";
connectAttr "place2dTexture172.ofs" "Eye_ramp6.fs";
connectAttr "Eye_ramp6.oc" "Eye_reverse5.i";
connectAttr "Eye_Cornea_Base_Shd.oc" "Eye_Cornea_Shd.baseColor";
connectAttr "Eye_Cornea_Spec_Shd.oc" "Eye_Cornea_Shd.layerColor1";
connectAttr "Eye_ramp6.oc" "Eye_Cornea_Shd.blendColor1";
connectAttr "Eye_Eyeball_ShdSG.msg" "materialInfo12142.sg";
connectAttr "Eye_Eyeball_Anim_Shd.msg" "materialInfo12142.m";
connectAttr "Eye_Cornea_col_3.msg" "materialInfo12142.t" -na;
connectAttr "Eye_Cornea_col_3.oc" "Eye_Eyeball_Anim_Shd.c";
connectAttr ":defaultColorMgtGlobals.cme" "Eye_Cornea_col_3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Eye_Cornea_col_3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Eye_Cornea_col_3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Eye_Cornea_col_3.ws";
connectAttr "place2dTexture180.c" "Eye_Cornea_col_3.c";
connectAttr "place2dTexture180.tf" "Eye_Cornea_col_3.tf";
connectAttr "place2dTexture180.rf" "Eye_Cornea_col_3.rf";
connectAttr "place2dTexture180.mu" "Eye_Cornea_col_3.mu";
connectAttr "place2dTexture180.mv" "Eye_Cornea_col_3.mv";
connectAttr "place2dTexture180.s" "Eye_Cornea_col_3.s";
connectAttr "place2dTexture180.wu" "Eye_Cornea_col_3.wu";
connectAttr "place2dTexture180.wv" "Eye_Cornea_col_3.wv";
connectAttr "place2dTexture180.re" "Eye_Cornea_col_3.re";
connectAttr "place2dTexture180.of" "Eye_Cornea_col_3.of";
connectAttr "place2dTexture180.r" "Eye_Cornea_col_3.ro";
connectAttr "place2dTexture180.n" "Eye_Cornea_col_3.n";
connectAttr "place2dTexture180.vt1" "Eye_Cornea_col_3.vt1";
connectAttr "place2dTexture180.vt2" "Eye_Cornea_col_3.vt2";
connectAttr "place2dTexture180.vt3" "Eye_Cornea_col_3.vt3";
connectAttr "place2dTexture180.vc1" "Eye_Cornea_col_3.vc1";
connectAttr "place2dTexture180.o" "Eye_Cornea_col_3.uv";
connectAttr "place2dTexture180.ofs" "Eye_Cornea_col_3.fs";
connectAttr "Sclera_df_ramp1.oc" "Eye_Eyeball_Shd.blendColor1";
connectAttr "Eye_Eyeball_sclera_Shd.oc" "Eye_Eyeball_Shd.baseColor";
connectAttr "Eye_Eyeball_Iris_Shd.oc" "Eye_Eyeball_Shd.layerColor1";
connectAttr "remapHsv34.oc" "Eye_Eyeball_sclera_Shd.diffuse_color";
connectAttr "Sclera_df_ramp2.oa" "Eye_Eyeball_sclera_Shd.refl_weight";
connectAttr "Eye_Cornea_col_3.oc" "remapHsv34.cl";
connectAttr "rsShaderSwitch1.oc" "Eye_Eyeball_Iris_Shd.diffuse_color";
connectAttr "Iris_Col_Switch.selector" "rsShaderSwitch1.selector";
connectAttr "blue.oc" "Iris_Col_Switch.shader0";
connectAttr "green_b.oc" "Iris_Col_Switch.shader2";
connectAttr "green_a.oc" "Iris_Col_Switch.shader1";
connectAttr "brown.oc" "Iris_Col_Switch.shader3";
connectAttr "darkBrown.oc" "Iris_Col_Switch.shader4";
connectAttr "Eye_Iris_col_blue1.oc" "blue.cl";
connectAttr ":defaultColorMgtGlobals.cme" "Eye_Iris_col_blue1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Eye_Iris_col_blue1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Eye_Iris_col_blue1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Eye_Iris_col_blue1.ws";
connectAttr "place2dTexture188.c" "Eye_Iris_col_blue1.c";
connectAttr "place2dTexture188.tf" "Eye_Iris_col_blue1.tf";
connectAttr "place2dTexture188.rf" "Eye_Iris_col_blue1.rf";
connectAttr "place2dTexture188.mu" "Eye_Iris_col_blue1.mu";
connectAttr "place2dTexture188.mv" "Eye_Iris_col_blue1.mv";
connectAttr "place2dTexture188.s" "Eye_Iris_col_blue1.s";
connectAttr "place2dTexture188.wu" "Eye_Iris_col_blue1.wu";
connectAttr "place2dTexture188.wv" "Eye_Iris_col_blue1.wv";
connectAttr "place2dTexture188.re" "Eye_Iris_col_blue1.re";
connectAttr "place2dTexture188.of" "Eye_Iris_col_blue1.of";
connectAttr "place2dTexture188.r" "Eye_Iris_col_blue1.ro";
connectAttr "place2dTexture188.n" "Eye_Iris_col_blue1.n";
connectAttr "place2dTexture188.vt1" "Eye_Iris_col_blue1.vt1";
connectAttr "place2dTexture188.vt2" "Eye_Iris_col_blue1.vt2";
connectAttr "place2dTexture188.vt3" "Eye_Iris_col_blue1.vt3";
connectAttr "place2dTexture188.vc1" "Eye_Iris_col_blue1.vc1";
connectAttr "place2dTexture188.o" "Eye_Iris_col_blue1.uv";
connectAttr "place2dTexture188.ofs" "Eye_Iris_col_blue1.fs";
connectAttr "Eye_Iris_col_blue1.oc" "green_b.cl";
connectAttr "Eye_Iris_col_blue1.oc" "green_a.cl";
connectAttr "Eye_Iris_col_blue1.oc" "brown.cl";
connectAttr "Eye_Iris_col_blue1.oc" "darkBrown.cl";
connectAttr "Eye_Iris_ShdSG.msg" "materialInfo12144.sg";
connectAttr "Eye_Iris_Anim_Shd.msg" "materialInfo12144.m";
connectAttr "Iris_nm_rsNormalMap.msg" "materialInfo12144.t" -na;
connectAttr "layeredTexture6.oc" "Eye_Iris_Anim_Shd.c";
connectAttr "blue.oc" "layeredTexture6.cs[0].c";
connectAttr "IrisBluePreviewSetUL.o" "layeredTexture6.cs[0].a";
connectAttr "green_a.oc" "layeredTexture6.cs[1].c";
connectAttr "IrisGreenAPreviewSetUL.o" "layeredTexture6.cs[1].a";
connectAttr "green_b.oc" "layeredTexture6.cs[2].c";
connectAttr "IrisGreenBPreviewSetUL.o" "layeredTexture6.cs[2].a";
connectAttr "brown.oc" "layeredTexture6.cs[3].c";
connectAttr "IrisBrownPreviewSetUL.o" "layeredTexture6.cs[3].a";
connectAttr "darkBrown.oc" "layeredTexture6.cs[4].c";
connectAttr "IrisDarkBrownPreviewSetUL.o" "layeredTexture6.cs[4].a";
connectAttr "Iris_Col_Switch.selector" "IrisBluePreviewSetUL.i";
connectAttr "Iris_Col_Switch.selector" "IrisGreenAPreviewSetUL.i";
connectAttr "Iris_Col_Switch.selector" "IrisGreenBPreviewSetUL.i";
connectAttr "Iris_Col_Switch.selector" "IrisBrownPreviewSetUL.i";
connectAttr "Iris_Col_Switch.selector" "IrisDarkBrownPreviewSetUL.i";
connectAttr "layeredTexture5.oc" "Eye_Iris_Shd.diffuse_color";
connectAttr "Iris_nm_rsNormalMap.oc" "Eye_Iris_Shd.bump_input";
connectAttr "remapHsv29.ocr" "Eye_Iris_Shd.refl_metalness";
connectAttr "ramp8.oc" "layeredTexture5.cs[0].c";
connectAttr "Iris_remapHsv4.oc" "layeredTexture5.cs[1].c";
connectAttr "place2dTexture189.o" "ramp8.uv";
connectAttr "place2dTexture189.ofs" "ramp8.fs";
connectAttr "Iris_Col_Switch.oc" "Iris_remapHsv4.cl";
connectAttr "Eye_Iris_mas_1.oc" "remapHsv29.cl";
connectAttr ":defaultColorMgtGlobals.cme" "Eye_Iris_mas_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Eye_Iris_mas_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Eye_Iris_mas_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Eye_Iris_mas_1.ws";
connectAttr "place2dTexture178.c" "Eye_Iris_mas_1.c";
connectAttr "place2dTexture178.tf" "Eye_Iris_mas_1.tf";
connectAttr "place2dTexture178.rf" "Eye_Iris_mas_1.rf";
connectAttr "place2dTexture178.mu" "Eye_Iris_mas_1.mu";
connectAttr "place2dTexture178.mv" "Eye_Iris_mas_1.mv";
connectAttr "place2dTexture178.s" "Eye_Iris_mas_1.s";
connectAttr "place2dTexture178.wu" "Eye_Iris_mas_1.wu";
connectAttr "place2dTexture178.wv" "Eye_Iris_mas_1.wv";
connectAttr "place2dTexture178.re" "Eye_Iris_mas_1.re";
connectAttr "place2dTexture178.of" "Eye_Iris_mas_1.of";
connectAttr "place2dTexture178.r" "Eye_Iris_mas_1.ro";
connectAttr "place2dTexture178.n" "Eye_Iris_mas_1.n";
connectAttr "place2dTexture178.vt1" "Eye_Iris_mas_1.vt1";
connectAttr "place2dTexture178.vt2" "Eye_Iris_mas_1.vt2";
connectAttr "place2dTexture178.vt3" "Eye_Iris_mas_1.vt3";
connectAttr "place2dTexture178.vc1" "Eye_Iris_mas_1.vc1";
connectAttr "place2dTexture178.o" "Eye_Iris_mas_1.uv";
connectAttr "place2dTexture178.ofs" "Eye_Iris_mas_1.fs";
connectAttr "Eye_Pupil_ShdSG.msg" "materialInfo12143.sg";
connectAttr "Eye_Pupil_Shd.msg" "materialInfo12143.m";
connectAttr "ScottA_Body_ShdSG.msg" "materialInfo12151.sg";
connectAttr "ScottA_Body_Shd.msg" "materialInfo12151.m";
connectAttr "remapHsv37.oc" "ScottA_Body_Shd.diffuse_color";
connectAttr "rsBumpMap1.oc" "ScottA_Body_Shd.bump_input";
connectAttr "remapHsv48.ocr" "ScottA_Body_Shd.refl_roughness";
connectAttr "layeredTexture7.ocr" "ScottA_Body_Shd.ms_radius0";
connectAttr "file11.oc" "remapHsv37.cl";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "place2dTexture1.c" "file11.c";
connectAttr "place2dTexture1.tf" "file11.tf";
connectAttr "place2dTexture1.rf" "file11.rf";
connectAttr "place2dTexture1.mu" "file11.mu";
connectAttr "place2dTexture1.mv" "file11.mv";
connectAttr "place2dTexture1.s" "file11.s";
connectAttr "place2dTexture1.wu" "file11.wu";
connectAttr "place2dTexture1.wv" "file11.wv";
connectAttr "place2dTexture1.re" "file11.re";
connectAttr "place2dTexture1.of" "file11.of";
connectAttr "place2dTexture1.r" "file11.ro";
connectAttr "place2dTexture1.n" "file11.n";
connectAttr "place2dTexture1.vt1" "file11.vt1";
connectAttr "place2dTexture1.vt2" "file11.vt2";
connectAttr "place2dTexture1.vt3" "file11.vt3";
connectAttr "place2dTexture1.vc1" "file11.vc1";
connectAttr "place2dTexture1.o" "file11.uv";
connectAttr "place2dTexture1.ofs" "file11.fs";
connectAttr "file10.oc" "rsBumpMap1.input";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "place2dTexture2.c" "file10.c";
connectAttr "place2dTexture2.tf" "file10.tf";
connectAttr "place2dTexture2.rf" "file10.rf";
connectAttr "place2dTexture2.mu" "file10.mu";
connectAttr "place2dTexture2.mv" "file10.mv";
connectAttr "place2dTexture2.s" "file10.s";
connectAttr "place2dTexture2.wu" "file10.wu";
connectAttr "place2dTexture2.wv" "file10.wv";
connectAttr "place2dTexture2.re" "file10.re";
connectAttr "place2dTexture2.of" "file10.of";
connectAttr "place2dTexture2.r" "file10.ro";
connectAttr "place2dTexture2.n" "file10.n";
connectAttr "place2dTexture2.vt1" "file10.vt1";
connectAttr "place2dTexture2.vt2" "file10.vt2";
connectAttr "place2dTexture2.vt3" "file10.vt3";
connectAttr "place2dTexture2.vc1" "file10.vc1";
connectAttr "place2dTexture2.o" "file10.uv";
connectAttr "place2dTexture2.ofs" "file10.fs";
connectAttr "remapHsv38.oc" "remapHsv48.cl";
connectAttr "file183.oc" "remapHsv38.cl";
connectAttr ":defaultColorMgtGlobals.cme" "file183.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file183.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file183.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file183.ws";
connectAttr "place2dTexture3.c" "file183.c";
connectAttr "place2dTexture3.tf" "file183.tf";
connectAttr "place2dTexture3.rf" "file183.rf";
connectAttr "place2dTexture3.mu" "file183.mu";
connectAttr "place2dTexture3.mv" "file183.mv";
connectAttr "place2dTexture3.s" "file183.s";
connectAttr "place2dTexture3.wu" "file183.wu";
connectAttr "place2dTexture3.wv" "file183.wv";
connectAttr "place2dTexture3.re" "file183.re";
connectAttr "place2dTexture3.of" "file183.of";
connectAttr "place2dTexture3.r" "file183.ro";
connectAttr "place2dTexture3.n" "file183.n";
connectAttr "place2dTexture3.vt1" "file183.vt1";
connectAttr "place2dTexture3.vt2" "file183.vt2";
connectAttr "place2dTexture3.vt3" "file183.vt3";
connectAttr "place2dTexture3.vc1" "file183.vc1";
connectAttr "place2dTexture3.o" "file183.uv";
connectAttr "place2dTexture3.ofs" "file183.fs";
connectAttr "ramp10.oa" "layeredTexture7.cs[0].a";
connectAttr "place2dTexture210.o" "ramp10.uv";
connectAttr "place2dTexture210.ofs" "ramp10.fs";
connectAttr "ScottA_Button_Fabric_ShdSG.msg" "materialInfo12137.sg";
connectAttr "ScottA_Button_Fabric_Shd.msg" "materialInfo12137.m";
connectAttr "file184.msg" "materialInfo12137.t" -na;
connectAttr "file184.oc" "ScottA_Button_Fabric_Shd.diffuse_color";
connectAttr "rsBumpMap31.oc" "ScottA_Button_Fabric_Shd.bump_input";
connectAttr ":defaultColorMgtGlobals.cme" "file184.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file184.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file184.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file184.ws";
connectAttr "place2dTexture192.c" "file184.c";
connectAttr "place2dTexture192.tf" "file184.tf";
connectAttr "place2dTexture192.rf" "file184.rf";
connectAttr "place2dTexture192.mu" "file184.mu";
connectAttr "place2dTexture192.mv" "file184.mv";
connectAttr "place2dTexture192.s" "file184.s";
connectAttr "place2dTexture192.wu" "file184.wu";
connectAttr "place2dTexture192.wv" "file184.wv";
connectAttr "place2dTexture192.re" "file184.re";
connectAttr "place2dTexture192.of" "file184.of";
connectAttr "place2dTexture192.r" "file184.ro";
connectAttr "place2dTexture192.n" "file184.n";
connectAttr "place2dTexture192.vt1" "file184.vt1";
connectAttr "place2dTexture192.vt2" "file184.vt2";
connectAttr "place2dTexture192.vt3" "file184.vt3";
connectAttr "place2dTexture192.vc1" "file184.vc1";
connectAttr "place2dTexture192.o" "file184.uv";
connectAttr "place2dTexture192.ofs" "file184.fs";
connectAttr "file185.oc" "rsBumpMap31.input";
connectAttr ":defaultColorMgtGlobals.cme" "file185.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file185.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file185.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file185.ws";
connectAttr "place2dTexture193.c" "file185.c";
connectAttr "place2dTexture193.tf" "file185.tf";
connectAttr "place2dTexture193.rf" "file185.rf";
connectAttr "place2dTexture193.mu" "file185.mu";
connectAttr "place2dTexture193.mv" "file185.mv";
connectAttr "place2dTexture193.s" "file185.s";
connectAttr "place2dTexture193.wu" "file185.wu";
connectAttr "place2dTexture193.wv" "file185.wv";
connectAttr "place2dTexture193.re" "file185.re";
connectAttr "place2dTexture193.of" "file185.of";
connectAttr "place2dTexture193.r" "file185.ro";
connectAttr "place2dTexture193.n" "file185.n";
connectAttr "place2dTexture193.vt1" "file185.vt1";
connectAttr "place2dTexture193.vt2" "file185.vt2";
connectAttr "place2dTexture193.vt3" "file185.vt3";
connectAttr "place2dTexture193.vc1" "file185.vc1";
connectAttr "place2dTexture193.o" "file185.uv";
connectAttr "place2dTexture193.ofs" "file185.fs";
connectAttr "ScottA_Button_Plastic_ShdSG.msg" "materialInfo12138.sg";
connectAttr "ScottA_Button_Plastic_Shd.msg" "materialInfo12138.m";
connectAttr "file186.oc" "ScottA_Button_Plastic_Shd.diffuse_color";
connectAttr "file187.oa" "ScottA_Button_Plastic_Shd.refl_roughness";
connectAttr "rsBumpMap32.oc" "ScottA_Button_Plastic_Shd.bump_input";
connectAttr ":defaultColorMgtGlobals.cme" "file186.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file186.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file186.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file186.ws";
connectAttr "place2dTexture194.c" "file186.c";
connectAttr "place2dTexture194.tf" "file186.tf";
connectAttr "place2dTexture194.rf" "file186.rf";
connectAttr "place2dTexture194.mu" "file186.mu";
connectAttr "place2dTexture194.mv" "file186.mv";
connectAttr "place2dTexture194.s" "file186.s";
connectAttr "place2dTexture194.wu" "file186.wu";
connectAttr "place2dTexture194.wv" "file186.wv";
connectAttr "place2dTexture194.re" "file186.re";
connectAttr "place2dTexture194.of" "file186.of";
connectAttr "place2dTexture194.r" "file186.ro";
connectAttr "place2dTexture194.n" "file186.n";
connectAttr "place2dTexture194.vt1" "file186.vt1";
connectAttr "place2dTexture194.vt2" "file186.vt2";
connectAttr "place2dTexture194.vt3" "file186.vt3";
connectAttr "place2dTexture194.vc1" "file186.vc1";
connectAttr "place2dTexture194.o" "file186.uv";
connectAttr "place2dTexture194.ofs" "file186.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file187.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file187.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file187.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file187.ws";
connectAttr "place2dTexture195.c" "file187.c";
connectAttr "place2dTexture195.tf" "file187.tf";
connectAttr "place2dTexture195.rf" "file187.rf";
connectAttr "place2dTexture195.mu" "file187.mu";
connectAttr "place2dTexture195.mv" "file187.mv";
connectAttr "place2dTexture195.s" "file187.s";
connectAttr "place2dTexture195.wu" "file187.wu";
connectAttr "place2dTexture195.wv" "file187.wv";
connectAttr "place2dTexture195.re" "file187.re";
connectAttr "place2dTexture195.of" "file187.of";
connectAttr "place2dTexture195.r" "file187.ro";
connectAttr "place2dTexture195.n" "file187.n";
connectAttr "place2dTexture195.vt1" "file187.vt1";
connectAttr "place2dTexture195.vt2" "file187.vt2";
connectAttr "place2dTexture195.vt3" "file187.vt3";
connectAttr "place2dTexture195.vc1" "file187.vc1";
connectAttr "place2dTexture195.o" "file187.uv";
connectAttr "place2dTexture195.ofs" "file187.fs";
connectAttr "file188.oc" "rsBumpMap32.input";
connectAttr ":defaultColorMgtGlobals.cme" "file188.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file188.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file188.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file188.ws";
connectAttr "place2dTexture196.c" "file188.c";
connectAttr "place2dTexture196.tf" "file188.tf";
connectAttr "place2dTexture196.rf" "file188.rf";
connectAttr "place2dTexture196.mu" "file188.mu";
connectAttr "place2dTexture196.mv" "file188.mv";
connectAttr "place2dTexture196.s" "file188.s";
connectAttr "place2dTexture196.wu" "file188.wu";
connectAttr "place2dTexture196.wv" "file188.wv";
connectAttr "place2dTexture196.re" "file188.re";
connectAttr "place2dTexture196.of" "file188.of";
connectAttr "place2dTexture196.r" "file188.ro";
connectAttr "place2dTexture196.n" "file188.n";
connectAttr "place2dTexture196.vt1" "file188.vt1";
connectAttr "place2dTexture196.vt2" "file188.vt2";
connectAttr "place2dTexture196.vt3" "file188.vt3";
connectAttr "place2dTexture196.vc1" "file188.vc1";
connectAttr "place2dTexture196.o" "file188.uv";
connectAttr "place2dTexture196.ofs" "file188.fs";
connectAttr "ScottA_Glasses_Frame_ShdSG.msg" "materialInfo12174.sg";
connectAttr "ScottA_Glasses_Frame_Shd.msg" "materialInfo12174.m";
connectAttr "SuperScott_rsNormalMap16.oc" "ScottA_Glasses_Frame_Shd.bump_input";
connectAttr "remapHsv50.ocr" "ScottA_Glasses_Frame_Shd.refl_roughness";
connectAttr "file190.oc" "SuperScott_rsNormalMap16.input";
connectAttr ":defaultColorMgtGlobals.cme" "file190.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file190.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file190.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file190.ws";
connectAttr "place2dTexture203.c" "file190.c";
connectAttr "place2dTexture203.tf" "file190.tf";
connectAttr "place2dTexture203.rf" "file190.rf";
connectAttr "place2dTexture203.mu" "file190.mu";
connectAttr "place2dTexture203.mv" "file190.mv";
connectAttr "place2dTexture203.s" "file190.s";
connectAttr "place2dTexture203.wu" "file190.wu";
connectAttr "place2dTexture203.wv" "file190.wv";
connectAttr "place2dTexture203.re" "file190.re";
connectAttr "place2dTexture203.of" "file190.of";
connectAttr "place2dTexture203.r" "file190.ro";
connectAttr "place2dTexture203.n" "file190.n";
connectAttr "place2dTexture203.vt1" "file190.vt1";
connectAttr "place2dTexture203.vt2" "file190.vt2";
connectAttr "place2dTexture203.vt3" "file190.vt3";
connectAttr "place2dTexture203.vc1" "file190.vc1";
connectAttr "place2dTexture203.o" "file190.uv";
connectAttr "place2dTexture203.ofs" "file190.fs";
connectAttr "file192.oc" "remapHsv50.cl";
connectAttr ":defaultColorMgtGlobals.cme" "file192.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file192.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file192.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file192.ws";
connectAttr "place2dTexture203.c" "file192.c";
connectAttr "place2dTexture203.tf" "file192.tf";
connectAttr "place2dTexture203.rf" "file192.rf";
connectAttr "place2dTexture203.mu" "file192.mu";
connectAttr "place2dTexture203.mv" "file192.mv";
connectAttr "place2dTexture203.s" "file192.s";
connectAttr "place2dTexture203.wu" "file192.wu";
connectAttr "place2dTexture203.wv" "file192.wv";
connectAttr "place2dTexture203.re" "file192.re";
connectAttr "place2dTexture203.of" "file192.of";
connectAttr "place2dTexture203.r" "file192.ro";
connectAttr "place2dTexture203.n" "file192.n";
connectAttr "place2dTexture203.vt1" "file192.vt1";
connectAttr "place2dTexture203.vt2" "file192.vt2";
connectAttr "place2dTexture203.vt3" "file192.vt3";
connectAttr "place2dTexture203.vc1" "file192.vc1";
connectAttr "place2dTexture203.o" "file192.uv";
connectAttr "place2dTexture203.ofs" "file192.fs";
connectAttr "ScottA_Glasses_Lens_ShdSG.msg" "SuperScott_MOD_0002_materialInfo1999.sg"
		;
connectAttr "ScottA_Glasses_Lens_Anim_Shd.msg" "SuperScott_MOD_0002_materialInfo1999.m"
		;
connectAttr "ScottA_HairBand_ShdSG.msg" "materialInfo12140.sg";
connectAttr "ScottA_HairBand_Shd.msg" "materialInfo12140.m";
connectAttr "ScottA_HairDummy_ShdSG.msg" "ScottA_HairDummy_01_materialInfo2005.sg"
		;
connectAttr "ScottA_HairDummy_Shd.msg" "ScottA_HairDummy_01_materialInfo2005.m";
connectAttr "ScottA_Pants_ShdSG.msg" "materialInfo12135.sg";
connectAttr "ScottA_Pants_Shd.msg" "materialInfo12135.m";
connectAttr "remapHsv49.msg" "materialInfo12135.t" -na;
connectAttr "remapHsv27.oc" "ScottA_Pants_Shd.diffuse_color";
connectAttr "remapHsv49.ocr" "ScottA_Pants_Shd.refl_roughness";
connectAttr "rsBumpMap29.oc" "ScottA_Pants_Shd.bump_input";
connectAttr "file177.oc" "remapHsv27.cl";
connectAttr ":defaultColorMgtGlobals.cme" "file177.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file177.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file177.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file177.ws";
connectAttr "place2dTexture9.c" "file177.c";
connectAttr "place2dTexture9.tf" "file177.tf";
connectAttr "place2dTexture9.rf" "file177.rf";
connectAttr "place2dTexture9.mu" "file177.mu";
connectAttr "place2dTexture9.mv" "file177.mv";
connectAttr "place2dTexture9.s" "file177.s";
connectAttr "place2dTexture9.wu" "file177.wu";
connectAttr "place2dTexture9.wv" "file177.wv";
connectAttr "place2dTexture9.re" "file177.re";
connectAttr "place2dTexture9.of" "file177.of";
connectAttr "place2dTexture9.r" "file177.ro";
connectAttr "place2dTexture9.n" "file177.n";
connectAttr "place2dTexture9.vt1" "file177.vt1";
connectAttr "place2dTexture9.vt2" "file177.vt2";
connectAttr "place2dTexture9.vt3" "file177.vt3";
connectAttr "place2dTexture9.vc1" "file177.vc1";
connectAttr "place2dTexture9.o" "file177.uv";
connectAttr "place2dTexture9.ofs" "file177.fs";
connectAttr "file178.oc" "remapHsv49.cl";
connectAttr ":defaultColorMgtGlobals.cme" "file178.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file178.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file178.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file178.ws";
connectAttr "place2dTexture10.c" "file178.c";
connectAttr "place2dTexture10.tf" "file178.tf";
connectAttr "place2dTexture10.rf" "file178.rf";
connectAttr "place2dTexture10.mu" "file178.mu";
connectAttr "place2dTexture10.mv" "file178.mv";
connectAttr "place2dTexture10.s" "file178.s";
connectAttr "place2dTexture10.wu" "file178.wu";
connectAttr "place2dTexture10.wv" "file178.wv";
connectAttr "place2dTexture10.re" "file178.re";
connectAttr "place2dTexture10.of" "file178.of";
connectAttr "place2dTexture10.r" "file178.ro";
connectAttr "place2dTexture10.n" "file178.n";
connectAttr "place2dTexture10.vt1" "file178.vt1";
connectAttr "place2dTexture10.vt2" "file178.vt2";
connectAttr "place2dTexture10.vt3" "file178.vt3";
connectAttr "place2dTexture10.vc1" "file178.vc1";
connectAttr "place2dTexture10.o" "file178.uv";
connectAttr "place2dTexture10.ofs" "file178.fs";
connectAttr "file179.oc" "rsBumpMap29.input";
connectAttr ":defaultColorMgtGlobals.cme" "file179.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file179.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file179.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file179.ws";
connectAttr "place2dTexture11.c" "file179.c";
connectAttr "place2dTexture11.tf" "file179.tf";
connectAttr "place2dTexture11.rf" "file179.rf";
connectAttr "place2dTexture11.mu" "file179.mu";
connectAttr "place2dTexture11.mv" "file179.mv";
connectAttr "place2dTexture11.s" "file179.s";
connectAttr "place2dTexture11.wu" "file179.wu";
connectAttr "place2dTexture11.wv" "file179.wv";
connectAttr "place2dTexture11.re" "file179.re";
connectAttr "place2dTexture11.of" "file179.of";
connectAttr "place2dTexture11.r" "file179.ro";
connectAttr "place2dTexture11.n" "file179.n";
connectAttr "place2dTexture11.vt1" "file179.vt1";
connectAttr "place2dTexture11.vt2" "file179.vt2";
connectAttr "place2dTexture11.vt3" "file179.vt3";
connectAttr "place2dTexture11.vc1" "file179.vc1";
connectAttr "place2dTexture11.o" "file179.uv";
connectAttr "place2dTexture11.ofs" "file179.fs";
connectAttr "ScottA_Shirts_ShdSG.msg" "materialInfo12139.sg";
connectAttr "ScottA_Shirts_Shd.msg" "materialInfo12139.m";
connectAttr "file175.msg" "materialInfo12139.t" -na;
connectAttr "remapHsv28.oc" "ScottA_Shirts_Shd.diffuse_color";
connectAttr "rsBumpMap33.oc" "ScottA_Shirts_Shd.bump_input";
connectAttr "file175.oc" "remapHsv28.cl";
connectAttr ":defaultColorMgtGlobals.cme" "file175.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file175.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file175.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file175.ws";
connectAttr "place2dTexture8.c" "file175.c";
connectAttr "place2dTexture8.tf" "file175.tf";
connectAttr "place2dTexture8.rf" "file175.rf";
connectAttr "place2dTexture8.mu" "file175.mu";
connectAttr "place2dTexture8.mv" "file175.mv";
connectAttr "place2dTexture8.s" "file175.s";
connectAttr "place2dTexture8.wu" "file175.wu";
connectAttr "place2dTexture8.wv" "file175.wv";
connectAttr "place2dTexture8.re" "file175.re";
connectAttr "place2dTexture8.of" "file175.of";
connectAttr "place2dTexture8.r" "file175.ro";
connectAttr "place2dTexture8.n" "file175.n";
connectAttr "place2dTexture8.vt1" "file175.vt1";
connectAttr "place2dTexture8.vt2" "file175.vt2";
connectAttr "place2dTexture8.vt3" "file175.vt3";
connectAttr "place2dTexture8.vc1" "file175.vc1";
connectAttr "place2dTexture8.o" "file175.uv";
connectAttr "place2dTexture8.ofs" "file175.fs";
connectAttr "file189.oc" "rsBumpMap33.input";
connectAttr ":defaultColorMgtGlobals.cme" "file189.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file189.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file189.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file189.ws";
connectAttr "place2dTexture197.c" "file189.c";
connectAttr "place2dTexture197.tf" "file189.tf";
connectAttr "place2dTexture197.rf" "file189.rf";
connectAttr "place2dTexture197.mu" "file189.mu";
connectAttr "place2dTexture197.mv" "file189.mv";
connectAttr "place2dTexture197.s" "file189.s";
connectAttr "place2dTexture197.wu" "file189.wu";
connectAttr "place2dTexture197.wv" "file189.wv";
connectAttr "place2dTexture197.re" "file189.re";
connectAttr "place2dTexture197.of" "file189.of";
connectAttr "place2dTexture197.r" "file189.ro";
connectAttr "place2dTexture197.n" "file189.n";
connectAttr "place2dTexture197.vt1" "file189.vt1";
connectAttr "place2dTexture197.vt2" "file189.vt2";
connectAttr "place2dTexture197.vt3" "file189.vt3";
connectAttr "place2dTexture197.vc1" "file189.vc1";
connectAttr "place2dTexture197.o" "file189.uv";
connectAttr "place2dTexture197.ofs" "file189.fs";
connectAttr "ScottA_Shoes_ShdSG.msg" "materialInfo12136.sg";
connectAttr "ScottA_Shoes_Shd.msg" "materialInfo12136.m";
connectAttr "file180.msg" "materialInfo12136.t" -na;
connectAttr "file180.oc" "ScottA_Shoes_Shd.diffuse_color";
connectAttr "rsBumpMap30.oc" "ScottA_Shoes_Shd.bump_input";
connectAttr "file182.oa" "ScottA_Shoes_Shd.refl_roughness";
connectAttr ":defaultColorMgtGlobals.cme" "file180.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file180.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file180.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file180.ws";
connectAttr "place2dTexture12.c" "file180.c";
connectAttr "place2dTexture12.tf" "file180.tf";
connectAttr "place2dTexture12.rf" "file180.rf";
connectAttr "place2dTexture12.mu" "file180.mu";
connectAttr "place2dTexture12.mv" "file180.mv";
connectAttr "place2dTexture12.s" "file180.s";
connectAttr "place2dTexture12.wu" "file180.wu";
connectAttr "place2dTexture12.wv" "file180.wv";
connectAttr "place2dTexture12.re" "file180.re";
connectAttr "place2dTexture12.of" "file180.of";
connectAttr "place2dTexture12.r" "file180.ro";
connectAttr "place2dTexture12.n" "file180.n";
connectAttr "place2dTexture12.vt1" "file180.vt1";
connectAttr "place2dTexture12.vt2" "file180.vt2";
connectAttr "place2dTexture12.vt3" "file180.vt3";
connectAttr "place2dTexture12.vc1" "file180.vc1";
connectAttr "place2dTexture12.o" "file180.uv";
connectAttr "place2dTexture12.ofs" "file180.fs";
connectAttr "file181.oc" "rsBumpMap30.input";
connectAttr ":defaultColorMgtGlobals.cme" "file181.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file181.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file181.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file181.ws";
connectAttr "place2dTexture13.c" "file181.c";
connectAttr "place2dTexture13.tf" "file181.tf";
connectAttr "place2dTexture13.rf" "file181.rf";
connectAttr "place2dTexture13.mu" "file181.mu";
connectAttr "place2dTexture13.mv" "file181.mv";
connectAttr "place2dTexture13.s" "file181.s";
connectAttr "place2dTexture13.wu" "file181.wu";
connectAttr "place2dTexture13.wv" "file181.wv";
connectAttr "place2dTexture13.re" "file181.re";
connectAttr "place2dTexture13.of" "file181.of";
connectAttr "place2dTexture13.r" "file181.ro";
connectAttr "place2dTexture13.n" "file181.n";
connectAttr "place2dTexture13.vt1" "file181.vt1";
connectAttr "place2dTexture13.vt2" "file181.vt2";
connectAttr "place2dTexture13.vt3" "file181.vt3";
connectAttr "place2dTexture13.vc1" "file181.vc1";
connectAttr "place2dTexture13.o" "file181.uv";
connectAttr "place2dTexture13.ofs" "file181.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file182.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file182.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file182.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file182.ws";
connectAttr "place2dTexture14.c" "file182.c";
connectAttr "place2dTexture14.tf" "file182.tf";
connectAttr "place2dTexture14.rf" "file182.rf";
connectAttr "place2dTexture14.mu" "file182.mu";
connectAttr "place2dTexture14.mv" "file182.mv";
connectAttr "place2dTexture14.s" "file182.s";
connectAttr "place2dTexture14.wu" "file182.wu";
connectAttr "place2dTexture14.wv" "file182.wv";
connectAttr "place2dTexture14.re" "file182.re";
connectAttr "place2dTexture14.of" "file182.of";
connectAttr "place2dTexture14.r" "file182.ro";
connectAttr "place2dTexture14.n" "file182.n";
connectAttr "place2dTexture14.vt1" "file182.vt1";
connectAttr "place2dTexture14.vt2" "file182.vt2";
connectAttr "place2dTexture14.vt3" "file182.vt3";
connectAttr "place2dTexture14.vc1" "file182.vc1";
connectAttr "place2dTexture14.o" "file182.uv";
connectAttr "place2dTexture14.ofs" "file182.fs";
connectAttr "ScottA_Tongue_ShdSG.msg" "materialInfo12154.sg";
connectAttr "ScottA_Tongue_Shd.msg" "materialInfo12154.m";
connectAttr "SuperScott_Metallic1.msg" "materialInfo12154.t" -na;
connectAttr "SuperScott_rsNormalMap2.oc" "ScottA_Tongue_Shd.bump_input";
connectAttr "SuperScott_BaseColor6.oc" "ScottA_Tongue_Shd.diffuse_color";
connectAttr "SuperScott_Roughness1.oa" "ScottA_Tongue_Shd.refl_roughness";
connectAttr "SuperScott_Metallic1.oa" "ScottA_Tongue_Shd.refl_metalness";
connectAttr "SuperScott_Normal9.oc" "SuperScott_rsNormalMap2.input";
connectAttr ":defaultColorMgtGlobals.cme" "SuperScott_Normal9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SuperScott_Normal9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SuperScott_Normal9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SuperScott_Normal9.ws";
connectAttr "SuperScott_pla2d1.c" "SuperScott_Normal9.c";
connectAttr "SuperScott_pla2d1.tf" "SuperScott_Normal9.tf";
connectAttr "SuperScott_pla2d1.rf" "SuperScott_Normal9.rf";
connectAttr "SuperScott_pla2d1.mu" "SuperScott_Normal9.mu";
connectAttr "SuperScott_pla2d1.mv" "SuperScott_Normal9.mv";
connectAttr "SuperScott_pla2d1.s" "SuperScott_Normal9.s";
connectAttr "SuperScott_pla2d1.wu" "SuperScott_Normal9.wu";
connectAttr "SuperScott_pla2d1.wv" "SuperScott_Normal9.wv";
connectAttr "SuperScott_pla2d1.re" "SuperScott_Normal9.re";
connectAttr "SuperScott_pla2d1.of" "SuperScott_Normal9.of";
connectAttr "SuperScott_pla2d1.r" "SuperScott_Normal9.ro";
connectAttr "SuperScott_pla2d1.n" "SuperScott_Normal9.n";
connectAttr "SuperScott_pla2d1.vt1" "SuperScott_Normal9.vt1";
connectAttr "SuperScott_pla2d1.vt2" "SuperScott_Normal9.vt2";
connectAttr "SuperScott_pla2d1.vt3" "SuperScott_Normal9.vt3";
connectAttr "SuperScott_pla2d1.vc1" "SuperScott_Normal9.vc1";
connectAttr "SuperScott_pla2d1.o" "SuperScott_Normal9.uv";
connectAttr "SuperScott_pla2d1.ofs" "SuperScott_Normal9.fs";
connectAttr ":defaultColorMgtGlobals.cme" "SuperScott_BaseColor6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SuperScott_BaseColor6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SuperScott_BaseColor6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SuperScott_BaseColor6.ws";
connectAttr "SuperScott_pla2d1.c" "SuperScott_BaseColor6.c";
connectAttr "SuperScott_pla2d1.tf" "SuperScott_BaseColor6.tf";
connectAttr "SuperScott_pla2d1.rf" "SuperScott_BaseColor6.rf";
connectAttr "SuperScott_pla2d1.mu" "SuperScott_BaseColor6.mu";
connectAttr "SuperScott_pla2d1.mv" "SuperScott_BaseColor6.mv";
connectAttr "SuperScott_pla2d1.s" "SuperScott_BaseColor6.s";
connectAttr "SuperScott_pla2d1.wu" "SuperScott_BaseColor6.wu";
connectAttr "SuperScott_pla2d1.wv" "SuperScott_BaseColor6.wv";
connectAttr "SuperScott_pla2d1.re" "SuperScott_BaseColor6.re";
connectAttr "SuperScott_pla2d1.of" "SuperScott_BaseColor6.of";
connectAttr "SuperScott_pla2d1.r" "SuperScott_BaseColor6.ro";
connectAttr "SuperScott_pla2d1.n" "SuperScott_BaseColor6.n";
connectAttr "SuperScott_pla2d1.vt1" "SuperScott_BaseColor6.vt1";
connectAttr "SuperScott_pla2d1.vt2" "SuperScott_BaseColor6.vt2";
connectAttr "SuperScott_pla2d1.vt3" "SuperScott_BaseColor6.vt3";
connectAttr "SuperScott_pla2d1.vc1" "SuperScott_BaseColor6.vc1";
connectAttr "SuperScott_pla2d1.o" "SuperScott_BaseColor6.uv";
connectAttr "SuperScott_pla2d1.ofs" "SuperScott_BaseColor6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "SuperScott_Roughness1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SuperScott_Roughness1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SuperScott_Roughness1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SuperScott_Roughness1.ws";
connectAttr "SuperScott_pla2d1.c" "SuperScott_Roughness1.c";
connectAttr "SuperScott_pla2d1.tf" "SuperScott_Roughness1.tf";
connectAttr "SuperScott_pla2d1.rf" "SuperScott_Roughness1.rf";
connectAttr "SuperScott_pla2d1.mu" "SuperScott_Roughness1.mu";
connectAttr "SuperScott_pla2d1.mv" "SuperScott_Roughness1.mv";
connectAttr "SuperScott_pla2d1.s" "SuperScott_Roughness1.s";
connectAttr "SuperScott_pla2d1.wu" "SuperScott_Roughness1.wu";
connectAttr "SuperScott_pla2d1.wv" "SuperScott_Roughness1.wv";
connectAttr "SuperScott_pla2d1.re" "SuperScott_Roughness1.re";
connectAttr "SuperScott_pla2d1.of" "SuperScott_Roughness1.of";
connectAttr "SuperScott_pla2d1.r" "SuperScott_Roughness1.ro";
connectAttr "SuperScott_pla2d1.n" "SuperScott_Roughness1.n";
connectAttr "SuperScott_pla2d1.vt1" "SuperScott_Roughness1.vt1";
connectAttr "SuperScott_pla2d1.vt2" "SuperScott_Roughness1.vt2";
connectAttr "SuperScott_pla2d1.vt3" "SuperScott_Roughness1.vt3";
connectAttr "SuperScott_pla2d1.vc1" "SuperScott_Roughness1.vc1";
connectAttr "SuperScott_pla2d1.o" "SuperScott_Roughness1.uv";
connectAttr "SuperScott_pla2d1.ofs" "SuperScott_Roughness1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "SuperScott_Metallic1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SuperScott_Metallic1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SuperScott_Metallic1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SuperScott_Metallic1.ws";
connectAttr "SuperScott_pla2d1.c" "SuperScott_Metallic1.c";
connectAttr "SuperScott_pla2d1.tf" "SuperScott_Metallic1.tf";
connectAttr "SuperScott_pla2d1.rf" "SuperScott_Metallic1.rf";
connectAttr "SuperScott_pla2d1.mu" "SuperScott_Metallic1.mu";
connectAttr "SuperScott_pla2d1.mv" "SuperScott_Metallic1.mv";
connectAttr "SuperScott_pla2d1.s" "SuperScott_Metallic1.s";
connectAttr "SuperScott_pla2d1.wu" "SuperScott_Metallic1.wu";
connectAttr "SuperScott_pla2d1.wv" "SuperScott_Metallic1.wv";
connectAttr "SuperScott_pla2d1.re" "SuperScott_Metallic1.re";
connectAttr "SuperScott_pla2d1.of" "SuperScott_Metallic1.of";
connectAttr "SuperScott_pla2d1.r" "SuperScott_Metallic1.ro";
connectAttr "SuperScott_pla2d1.n" "SuperScott_Metallic1.n";
connectAttr "SuperScott_pla2d1.vt1" "SuperScott_Metallic1.vt1";
connectAttr "SuperScott_pla2d1.vt2" "SuperScott_Metallic1.vt2";
connectAttr "SuperScott_pla2d1.vt3" "SuperScott_Metallic1.vt3";
connectAttr "SuperScott_pla2d1.vc1" "SuperScott_Metallic1.vc1";
connectAttr "SuperScott_pla2d1.o" "SuperScott_Metallic1.uv";
connectAttr "SuperScott_pla2d1.ofs" "SuperScott_Metallic1.fs";
connectAttr "SuperScott_Gum_ShdSG.msg" "materialInfo12152.sg";
connectAttr "ScottA_Gum_Shd.msg" "materialInfo12152.m";
connectAttr "SuperScott_rsNormalMap2.oc" "ScottA_Gum_Shd.bump_input";
connectAttr "SuperScott_BaseColor6.oc" "ScottA_Gum_Shd.diffuse_color";
connectAttr "SuperScott_Roughness1.oa" "ScottA_Gum_Shd.refl_roughness";
connectAttr "SuperScott_Metallic1.oa" "ScottA_Gum_Shd.refl_metalness";
connectAttr "SuperScott_Teeth_ShdSG.msg" "materialInfo12153.sg";
connectAttr "ScottA_Teeth_Shd.msg" "materialInfo12153.m";
connectAttr "SuperScott_rsNormalMap3.oc" "ScottA_Teeth_Shd.bump_input";
connectAttr "SuperScott_Metallic2.oa" "ScottA_Teeth_Shd.refl_metalness";
connectAttr "SuperScott_Normal10.oc" "SuperScott_rsNormalMap3.input";
connectAttr ":defaultColorMgtGlobals.cme" "SuperScott_Normal10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SuperScott_Normal10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SuperScott_Normal10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SuperScott_Normal10.ws";
connectAttr "SuperScott_pla2d2.c" "SuperScott_Normal10.c";
connectAttr "SuperScott_pla2d2.tf" "SuperScott_Normal10.tf";
connectAttr "SuperScott_pla2d2.rf" "SuperScott_Normal10.rf";
connectAttr "SuperScott_pla2d2.mu" "SuperScott_Normal10.mu";
connectAttr "SuperScott_pla2d2.mv" "SuperScott_Normal10.mv";
connectAttr "SuperScott_pla2d2.s" "SuperScott_Normal10.s";
connectAttr "SuperScott_pla2d2.wu" "SuperScott_Normal10.wu";
connectAttr "SuperScott_pla2d2.wv" "SuperScott_Normal10.wv";
connectAttr "SuperScott_pla2d2.re" "SuperScott_Normal10.re";
connectAttr "SuperScott_pla2d2.of" "SuperScott_Normal10.of";
connectAttr "SuperScott_pla2d2.r" "SuperScott_Normal10.ro";
connectAttr "SuperScott_pla2d2.n" "SuperScott_Normal10.n";
connectAttr "SuperScott_pla2d2.vt1" "SuperScott_Normal10.vt1";
connectAttr "SuperScott_pla2d2.vt2" "SuperScott_Normal10.vt2";
connectAttr "SuperScott_pla2d2.vt3" "SuperScott_Normal10.vt3";
connectAttr "SuperScott_pla2d2.vc1" "SuperScott_Normal10.vc1";
connectAttr "SuperScott_pla2d2.o" "SuperScott_Normal10.uv";
connectAttr "SuperScott_pla2d2.ofs" "SuperScott_Normal10.fs";
connectAttr ":defaultColorMgtGlobals.cme" "SuperScott_Metallic2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SuperScott_Metallic2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SuperScott_Metallic2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SuperScott_Metallic2.ws";
connectAttr "SuperScott_pla2d2.c" "SuperScott_Metallic2.c";
connectAttr "SuperScott_pla2d2.tf" "SuperScott_Metallic2.tf";
connectAttr "SuperScott_pla2d2.rf" "SuperScott_Metallic2.rf";
connectAttr "SuperScott_pla2d2.mu" "SuperScott_Metallic2.mu";
connectAttr "SuperScott_pla2d2.mv" "SuperScott_Metallic2.mv";
connectAttr "SuperScott_pla2d2.s" "SuperScott_Metallic2.s";
connectAttr "SuperScott_pla2d2.wu" "SuperScott_Metallic2.wu";
connectAttr "SuperScott_pla2d2.wv" "SuperScott_Metallic2.wv";
connectAttr "SuperScott_pla2d2.re" "SuperScott_Metallic2.re";
connectAttr "SuperScott_pla2d2.of" "SuperScott_Metallic2.of";
connectAttr "SuperScott_pla2d2.r" "SuperScott_Metallic2.ro";
connectAttr "SuperScott_pla2d2.n" "SuperScott_Metallic2.n";
connectAttr "SuperScott_pla2d2.vt1" "SuperScott_Metallic2.vt1";
connectAttr "SuperScott_pla2d2.vt2" "SuperScott_Metallic2.vt2";
connectAttr "SuperScott_pla2d2.vt3" "SuperScott_Metallic2.vt3";
connectAttr "SuperScott_pla2d2.vc1" "SuperScott_Metallic2.vc1";
connectAttr "SuperScott_pla2d2.o" "SuperScott_Metallic2.uv";
connectAttr "SuperScott_pla2d2.ofs" "SuperScott_Metallic2.fs";
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
connectAttr "LeftFingerCtrl.wm" "LeftFingerCtrlScaleDM.imat";
connectAttr "LeftWristFKCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "LeftWristFKScaleBC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "LeftArmIKFKCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "LeftArmIKCtrlGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "LeftWristFKCtrlOffGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "LeftWristIKScaleBC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "LeftArmIKCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "LeftWristIKScaleGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "LeftWristConsGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "LeftArmIKCtrlGrp_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "LeftArmIKFKWristScale.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "LeftWristFKCtrlGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "LeftWristFKCtrlGrpMM.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "LeftArmAutoHideCD.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "LeftArmIKFKCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "LeftWristFKCtrlGrpDM.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "LeftArmAutoHideRV.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "LeftElbowFKCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn";
connectAttr "LeftShoulderFKCtrlOffGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "LeftElbowFKCtrlOffGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "LeftWristFKCtrlOffGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "ScottA_Glasses_Lens_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Pants_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Shoes_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Button_Fabric_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Button_Plastic_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Shirts_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "Eye_Cornea_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "Eye_Iris_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "Eye_Eyeball_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "Eye_Pupil_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_HairDummy_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_HairBand_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Body_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "SuperScott_Gum_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "SuperScott_Teeth_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Tongue_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Glasses_Frame_ShdSG.pa" ":renderPartition.st" -na;
connectAttr "ScottA_Glasses_Lens_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Glasses_Lens_Anim_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Pants_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Shoes_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Button_Fabric_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Button_Plastic_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Shirts_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Cornea_Base_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Cornea_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Cornea_Spec_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Cornea_Anim_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Eyeball_sclera_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Iris_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Eyeball_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Eyeball_Iris_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "rsShaderSwitch1.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Pupil_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Iris_Col_Switch.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Iris_Anim_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "Eye_Eyeball_Anim_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_HairDummy_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_HairBand_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Body_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Gum_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Teeth_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Tongue_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "ScottA_Glasses_Frame_Shd.msg" ":defaultShaderList1.s" -na;
connectAttr "LeftSideSkirtSR1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightSkirtSR2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftFrontSkirtSR2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBackSkirtSR3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBackSkirtSR4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightFrontSkirtSR3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "vectorProduct1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "composeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBumpMap29.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBumpMap30.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture192.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBumpMap31.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture193.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture194.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture195.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBumpMap32.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture196.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBumpMap33.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture197.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture172.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Eye_reverse5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture178.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture180.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv29.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture188.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "green_a.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "green_b.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "brown.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "darkBrown.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture189.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blue.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Iris_remapHsv4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv34.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBumpMap1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv37.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv38.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SuperScott_pla2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SuperScott_pla2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv48.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv49.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture203.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapHsv50.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture210.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftFingerCtrlScaleDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file175.msg" ":defaultTextureList1.tx" -na;
connectAttr "file177.msg" ":defaultTextureList1.tx" -na;
connectAttr "file178.msg" ":defaultTextureList1.tx" -na;
connectAttr "file179.msg" ":defaultTextureList1.tx" -na;
connectAttr "file180.msg" ":defaultTextureList1.tx" -na;
connectAttr "file181.msg" ":defaultTextureList1.tx" -na;
connectAttr "file182.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file183.msg" ":defaultTextureList1.tx" -na;
connectAttr "file184.msg" ":defaultTextureList1.tx" -na;
connectAttr "file185.msg" ":defaultTextureList1.tx" -na;
connectAttr "file186.msg" ":defaultTextureList1.tx" -na;
connectAttr "file187.msg" ":defaultTextureList1.tx" -na;
connectAttr "file188.msg" ":defaultTextureList1.tx" -na;
connectAttr "file189.msg" ":defaultTextureList1.tx" -na;
connectAttr "Eye_ramp6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Iris_nm_rsNormalMap.msg" ":defaultTextureList1.tx" -na;
connectAttr "Eye_Iris_mas_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Sclera_df_ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Sclera_df_ramp2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Eye_Cornea_col_3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Eye_Iris_col_blue1.msg" ":defaultTextureList1.tx" -na;
connectAttr "layeredTexture5.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp8.msg" ":defaultTextureList1.tx" -na;
connectAttr "layeredTexture6.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_rsNormalMap2.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_Normal9.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_BaseColor6.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_Roughness1.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_Metallic1.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_rsNormalMap3.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_Normal10.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_Metallic2.msg" ":defaultTextureList1.tx" -na;
connectAttr "SuperScott_rsNormalMap16.msg" ":defaultTextureList1.tx" -na;
connectAttr "file190.msg" ":defaultTextureList1.tx" -na;
connectAttr "file192.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp10.msg" ":defaultTextureList1.tx" -na;
connectAttr "layeredTexture7.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
// End of Arm01.ma
