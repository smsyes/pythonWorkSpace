//Maya ASCII 2018ff09 scene
//Name: Leg02.ma
//Last modified: Thu, Aug 26, 2021 07:12:24 PM
//Codeset: 949
file -rdi 1 -ns "L" -rfn "LRN" -typ "mayaAscii" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitLeg.ma";
file -r -ns "L" -dr 1 -rfn "LRN" -typ "mayaAscii" "C:/Users/RI-PC02/Documents/maya/2018/scripts/rigSupport/rig/fits/FitLeg.ma";
requires maya "2018ff09";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.0.30";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" -nodeType "inverseMatrix"
		 "matrixNodes" "1.0";
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
	setAttr ".t" -type "double3" 63.270122079487464 59.604140025183391 119.38052591649182 ;
	setAttr ".r" -type "double3" -5.7383527295814512 31.400000000004479 2.3289143215146914e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F077168C-4FA2-EBB0-16F5-7089A9120783";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 140.40663620662463;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.1102230246251565e-15 -4.433 0 ;
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
createNode transform -n "LeftLegRigGrp";
	rename -uid "6C208F0F-4CA3-B975-4F87-95BA18D67123";
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
	setAttr -s 3 ".Grp";
	setAttr -s 3 ".DrvJnt";
	setAttr -s 3 ".IKJnt";
	setAttr -s 3 ".FKJnt";
	setAttr -s 8 ".Ctrl";
	setAttr -s 6 ".Pos";
	setAttr -s 2 ".AnimCrv";
	setAttr -s 3 ".Arc";
	setAttr -s 2 ".ScaleBlend";
createNode transform -n "LeftLegCtrlGrp" -p "LeftLegRigGrp";
	rename -uid "D760657E-40DA-7F23-C5BE-B7B894DE5859";
createNode transform -n "LeftLegRootCtrlGrp" -p "LeftLegCtrlGrp";
	rename -uid "8C6478D2-48A4-D060-C5E7-A89A90D00723";
createNode transform -n "LeftLegRootCtrl" -p "LeftLegRootCtrlGrp";
	rename -uid "28D72C25-472B-375A-1B1A-6699C8757DD9";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftLegRootCtrlShape" -p "LeftLegRootCtrl";
	rename -uid "493995E3-47A9-0992-B4D3-44950695D186";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 0 no 3
		19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		0.75051449999999997 1.666476956430074e-16 0
		-1.666476956430074e-16 0.75051449999999997 0
		-0.75051449999999997 -1.666476956430074e-16 0
		1.666476956430074e-16 -0.75051449999999997 0
		0.75051449999999997 1.666476956430074e-16 0
		18.86157 4.1881098589158229e-15 0
		18.86157 1.813080000000004 0
		22.487729999999999 1.8130800000000047 0
		22.487729999999999 5.4392400000000052 0
		26.113889999999998 5.4392400000000061 0
		26.113889999999998 1.8130800000000056 0
		29.74005 1.8130800000000065 0
		29.74005 -1.8130799999999931 0
		26.113889999999998 -1.813079999999994 0
		26.113889999999998 -5.4392399999999936 0
		22.487729999999999 -5.4392399999999945 0
		22.487729999999999 -1.8130799999999949 0
		18.86157 -1.8130799999999956 0
		18.86157 4.1881098589158229e-15 0
		;
createNode transform -n "LeftLegIKCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "0F95FFE6-4080-B59E-C5AF-0CBD18B1AE97";
createNode transform -n "LeftLegIKConstCtrl" -p "LeftLegIKCtrlGrp";
	rename -uid "467A1CE0-42C7-0FE9-834F-409A2B9AB2A5";
	addAttr -ci true -sn "UpVolume" -ln "UpVolume" -at "double";
	addAttr -ci true -sn "DnVolume" -ln "DnVolume" -at "double";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLegIKConstCtrlShape" -p "LeftLegIKConstCtrl";
	rename -uid "640C951E-40C9-6A33-E1ED-E4BCF8DE8B39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.588770857537174 -10.533209024836136 -11.488161835426387
		4.4486413791659344e-15 -1.5112134135796604 -19.202309845953437
		-10.588770857537174 -10.533209024836136 -11.488161835426384
		-12.645228340590414 -10.533209024836136 7.1354389137414742
		-11.411586491505975 -10.533209024836136 25.759039662909323
		1.8438515283238708e-15 -1.5112134135796642 33.473187673436371
		11.411586491505975 -10.533209024836136 25.759039662909323
		12.645228340590414 -10.533209024836136 7.1354389137414769
		10.588770857537174 -10.533209024836136 -11.488161835426387
		4.4486413791659344e-15 -1.5112134135796604 -19.202309845953437
		-10.588770857537174 -10.533209024836136 -11.488161835426384
		;
createNode transform -n "LeftLegIKCtrl" -p "LeftLegIKConstCtrl";
	rename -uid "7F3ABC8F-403F-6815-A677-A0A33C56A833";
	addAttr -ci true -sn "Twist" -ln "Twist" -at "double";
	addAttr -ci true -sn "Stretch" -ln "Stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Squash" -ln "Squash" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "UpVolume" -ln "UpVolume" -at "double";
	addAttr -ci true -sn "DnVolume" -ln "DnVolume" -at "double";
	addAttr -ci true -sn "UpSlide" -ln "UpSlide" -at "double";
	addAttr -ci true -sn "DnSlide" -ln "DnSlide" -at "double";
	addAttr -ci true -sn "PVCtrlVis" -ln "PVCtrlVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "PVStretch" -ln "PVStretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 3 -en "Hip:Root:Fly:World" 
		-at "enum";
	addAttr -ci true -sn "Foot" -ln "Foot" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "BallRoll" -ln "BallRoll" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "InOut" -ln "InOut" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "HeelPivot" -ln "HeelPivot" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "BallPivot" -ln "BallPivot" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "ToePivot" -ln "ToePivot" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "ConstCtrlVis" -ln "ConstCtrlVis" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Twist";
	setAttr -k on ".Stretch";
	setAttr -k on ".Squash";
	setAttr -k on ".UpSlide";
	setAttr -k on ".DnSlide";
	setAttr -cb on ".PVCtrlVis" yes;
	setAttr -k on ".PVStretch";
	setAttr -k on ".Follow" 2;
	setAttr -cb on ".Foot";
	setAttr -k on ".FootRoll";
	setAttr -k on ".BallRoll";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".InOut";
	setAttr -k on ".HeelPivot";
	setAttr -k on ".BallPivot";
	setAttr -k on ".ToePivot";
	setAttr -cb on ".ConstCtrlVis";
createNode nurbsCurve -n "LeftLegIKCtrlShape" -p "LeftLegIKCtrl";
	rename -uid "669FD1B3-47CB-C8A9-B906-1F8988FCDF8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.0240506905044615 -9.8666114249000998 -8.7361215781527388
		3.660010698659603e-15 -2.1778110135156821 -15.310337189920306
		-9.0240506905044615 -9.8666114249000998 -8.7361215781527353
		-10.776622053093755 -9.8666114249000998 7.1354389137414733
		-9.7252774985800041 -9.8666114249000998 23.006999405635689
		1.4401349483614679e-15 -2.1778110135156856 29.581215017403252
		9.7252774985800041 -9.8666114249000998 23.006999405635689
		10.776622053093755 -9.8666114249000998 7.135438913741476
		9.0240506905044615 -9.8666114249000998 -8.7361215781527388
		3.660010698659603e-15 -2.1778110135156821 -15.310337189920306
		-9.0240506905044615 -9.8666114249000998 -8.7361215781527353
		;
createNode transform -n "LeftLegIKCtrlPosGrp" -p "LeftLegIKCtrl";
	rename -uid "EFA88E13-4966-3726-3E43-0D94BAB14D02";
	setAttr ".r" -type "double3" 7.9277460625420548e-15 -7.927755823049035e-15 -89.999929458447951 ;
createNode transform -n "LeftLegIKCtrlPos" -p "LeftLegIKCtrlPosGrp";
	rename -uid "942DD54F-462C-8EAC-D400-BF8C50A4E072";
createNode transform -n "LeftFootSystemGrp" -p "LeftLegIKCtrl";
	rename -uid "A69E4540-4024-0622-CF84-949BF77FD3D0";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 3.8857805861880479e-16 ;
	setAttr ".r" -type "double3" -90 -90 0 ;
createNode transform -n "LeftFootInRotPos" -p "LeftFootSystemGrp";
	rename -uid "AFFEEA17-4C7B-35B7-23A8-9BA15F40D5C0";
createNode transform -n "LeftFootOutRotPos" -p "LeftFootInRotPos";
	rename -uid "9AFC24ED-4FFA-0BF0-A885-9C9E7DBBC754";
createNode transform -n "LeftHeelRollPivPos" -p "LeftFootOutRotPos";
	rename -uid "7AD4862D-40B8-2347-F05D-1D9217657A7E";
createNode transform -n "LeftToeRollPivPos" -p "LeftHeelRollPivPos";
	rename -uid "0A19C8F6-4716-2A7D-E7C1-7990BF7534AE";
createNode transform -n "LeftBallPivPos" -p "LeftToeRollPivPos";
	rename -uid "47E61312-4241-557E-2E23-EBAD47DD5F5F";
createNode transform -n "LeftFootRollPos" -p "LeftBallPivPos";
	rename -uid "3A1D00AE-4290-7803-9A53-7E91C92846F2";
createNode transform -n "LeftIKFootRollPos" -p "LeftFootRollPos";
	rename -uid "AD5BC501-477A-CA93-658E-D0A7D2A287CC";
createNode ikHandle -n "LeftBallRaiseIKh" -p "LeftFootRollPos";
	rename -uid "E3C9CFF4-4EAC-D96F-C1BF-C692AAADE747";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 13.45170782841091 8.2935383618476521e-06 -6.7362397118227824 ;
	setAttr ".r" -type "double3" 7.889222474642735e-05 26.600429797236792 3.5325239739373418e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".pv" -type "double3" 1 -2.2204460492503131e-16 4.9303806576313238e-32 ;
	setAttr ".roc" yes;
createNode transform -n "LeftBallRollPos" -p "LeftBallPivPos";
	rename -uid "42C69E6F-4696-86BE-8FCE-64BAD33736F6";
createNode ikHandle -n "LeftToeRaiseIKh" -p "LeftBallRollPos";
	rename -uid "DB7C62C7-4C09-999E-B8FB-CEB73F9ECC15";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 21.527483895339291 8.2935383609594737e-06 -6.7362397118228898 ;
	setAttr ".r" -type "double3" 7.0541552024744547e-05 0 0 ;
	setAttr ".pv" -type "double3" 1 -2.2204460492503131e-16 4.9303806576313238e-32 ;
	setAttr ".roc" yes;
createNode transform -n "LeftFootMvPivGrp" -p "LeftFootSystemGrp";
	rename -uid "CBA5C41D-4E43-67DC-7B5F-8FA0BA7A820A";
createNode transform -n "LeftHeelMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "3CC956A1-4DD2-CE59-448C-4293EC4C1A9E";
	setAttr ".t" -type "double3" -6.6961746667861801 0 -9.5458072461853618 ;
createNode transform -n "LeftToeMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "7E45FE7A-4D09-37A0-BA44-8FAB835CF190";
	setAttr ".t" -type "double3" 21.52748389533928 -0.00012345554714876528 -6.7362397119850979 ;
createNode transform -n "LeftBallMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "8CC79BB0-40C4-E8AF-9ADC-1CA8F43B1ED9";
	setAttr ".t" -type "double3" 13.451707828410902 -0.00012345554708659279 -6.7362397119849904 ;
createNode transform -n "LeftFootInPivPos" -p "LeftFootMvPivGrp";
	rename -uid "390A5BF5-4C23-6CF1-A413-87819FB7332C";
	setAttr ".t" -type "double3" 15.323806240654005 -5.4146108174550607 -9.7791837119231797 ;
createNode transform -n "LeftFootOutPivPos" -p "LeftFootMvPivGrp";
	rename -uid "D5E3D424-4A9D-9336-53FD-60B029F91792";
	setAttr ".t" -type "double3" 15.528343632316606 5.3952060198557303 -9.7783740275273932 ;
createNode transform -n "LeftLegPoleVectorCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "F87F600C-4866-5A5D-275F-439043DB4E33";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftLegPVOff" -p "LeftLegPoleVectorCtrlGrp";
	rename -uid "1822CE1C-479A-B6D8-09F6-4C91679172F0";
createNode transform -n "LeftLegPoleVectorCtrl" -p "LeftLegPVOff";
	rename -uid "DCEE57D2-4902-084C-3055-DF8ABC193FF3";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 4 -en "Auto:Hip:Root:Fly:World" 
		-at "enum";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "LeftLegPoleVectorCtrlShape" -p "LeftLegPoleVectorCtrl";
	rename -uid "9EA5E28A-4174-1BF7-CC5C-C58E1CE7EAE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 0 0
		1.8750760467543718e-15 -18.82986 18.82986
		-1.3684547543620923e-15 -9.41493 28.244790000000002
		-2.3059927777392782e-15 0 18.82986
		-5.5495235788557427e-15 9.41493 28.244790000000002
		-6.4870616022329282e-15 18.82986 18.82986
		0 0 0
		;
createNode transform -n "LeftLegIKFKCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "2D5A21F6-4D8E-DD7B-217E-2B8DAD415FBF";
createNode transform -n "LeftLegIKFKCtrl" -p "LeftLegIKFKCtrlGrp";
	rename -uid "71773682-4106-F623-32DC-94ABE7E19F07";
	addAttr -ci true -sn "IKFK" -ln "IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Arc" -ln "Arc" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "UpTwistFix" -ln "UpTwistFix" -at "double";
	addAttr -ci true -sn "DnTwistFix" -ln "DnTwistFix" -at "double";
	addAttr -ci true -sn "AutoHideIKFK" -ln "AutoHideIKFK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ArcCtrlVis" -ln "ArcCtrlVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "PantsSubCtrlVis" -ln "PantsSubCtrlVis" -min 0 -max 
		1 -en "Off:On" -at "enum";
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
	setAttr -cb on ".ArcCtrlVis";
	setAttr -k on ".PantsSubCtrlVis" 1;
createNode nurbsCurve -n "LeftLegIKFKCtrlShape" -p "LeftLegIKFKCtrl";
	rename -uid "82F9D8FF-4D4B-7B50-94C7-BF80196663B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		19.425747742224249 2.3611547512018167 -4.945575254215967e-16
		21.495239106091567 2.3611547512018136 -9.5407691770727939e-16
		15.630007173210346 8.6232309951438744 3.482661896230109e-16
		15.630007173210336 -2.3611547512018776 3.482661896230109e-16
		13.56051580934302 -2.3611547512018722 8.0778558190869231e-16
		19.425747742224228 -8.6232309951439206 -4.945575254215967e-16
		19.425747742224249 2.3611547512018167 -4.945575254215967e-16
		;
createNode transform -n "LeftLegUpArcCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "E67FB9C1-45BA-DF11-E41B-0D908D9C73A2";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftLegUpArcCtrl" -p "LeftLegUpArcCtrlGrp";
	rename -uid "9DF173D0-4185-3EA6-BF60-D695A9D4ADFA";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLegUpArcCtrlShape" -p "LeftLegUpArcCtrl";
	rename -uid "6E4BF2DF-4BD1-DAEF-6EBB-B8B530B4A16E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -10
		-1.5700920563688214e-15 -7.0710660000000001 -7.0710660000000001
		-2.2204460492503131e-15 -10 0
		-1.5700920563688214e-15 -7.0710660000000001 7.0710660000000001
		0 0 10
		1.5700920563688214e-15 7.0710660000000001 7.0710660000000001
		2.2204460492503131e-15 10 0
		1.5700920563688214e-15 7.0710660000000001 -7.0710660000000001
		0 0 -10
		;
createNode tangentConstraint -n "LeftLegUpArcCtrlGrp_tangentConstraint1" -p "LeftLegUpArcCtrlGrp";
	rename -uid "619C6F74-4389-635F-943E-D387AE1C3039";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegUpIKCrvW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rsrr" -type "double3" 1.5565478165143802e-13 0.51904363413127375 -90.200633862653177 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg1CsHandleGrp" -p "LeftLegUpArcCtrlGrp";
	rename -uid "CCD8218A-4D08-36C8-D85D-F5823CE0A0F6";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftLeg1CsHandleZeroMtx" -p "LeftLeg1CsHandleGrp";
	rename -uid "D2722172-4181-65C3-26E3-AA93430AD1E0";
createNode transform -n "LeftLeg1CsHandle" -p "LeftLeg1CsHandleGrp";
	rename -uid "5C3F181C-4980-DA88-E98C-EAACBA32B90A";
createNode clusterHandle -n "LeftLeg1CsHandleShape" -p "LeftLeg1CsHandle";
	rename -uid "88AD2550-40A4-6B51-2861-E88623C60A46";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftLegMidArcCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "335DCC47-421C-34AB-2810-3693CC3DEE33";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftLegMidArcCtrlPBGrp" -p "LeftLegMidArcCtrlGrp";
	rename -uid "760DD07C-4F4A-5DE1-4575-2CB2D846F85F";
	addAttr -ci true -k true -sn "pbw" -ln "pbw" -min 0 -max 1 -at "double";
	setAttr -k on ".pbw" 0.5;
createNode transform -n "LeftLegMidArcCtrl" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "F9FCADE0-4EA2-CE20-D593-B292E14A6EED";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLegMidArcCtrlShape" -p "LeftLegMidArcCtrl";
	rename -uid "790E6B1A-47FB-4963-9933-1DB3B65613F9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -10
		-1.5700920563688214e-15 -7.0710660000000001 -7.0710660000000001
		-2.2204460492503131e-15 -10 0
		-1.5700920563688214e-15 -7.0710660000000001 7.0710660000000001
		0 0 10
		1.5700920563688214e-15 7.0710660000000001 7.0710660000000001
		2.2204460492503131e-15 10 0
		1.5700920563688214e-15 7.0710660000000001 -7.0710660000000001
		0 0 -10
		;
createNode orientConstraint -n "LeftLegMidArcCtrlPBGrp_orientConstraint1" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "2CA30890-4513-0EBB-80C2-469656FF9450";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg1DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 8.3019171776027043e-16 -1.49982564147188 -2.5455153852466395e-14 ;
	setAttr ".rsrr" -type "double3" 1.0787334089884731e-15 -1.4998121103940503 -2.5458406896467076e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "LeftLegMidArcCtrlPBGrp_pointConstraint1" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "FEE8C559-49F7-AD4C-D904-2F8CD8DF73EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegArcPointPosW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 0.0015049548978396388 8.8817841970012523e-16 -0.13189847095592477 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg2UpCsHandleGrp" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "3A5BA611-48D5-8053-46D5-B18B7871DC48";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftLeg2UpCsHandleZeroMtx" -p "LeftLeg2UpCsHandleGrp";
	rename -uid "73E95650-40F3-C006-02B0-719745444EEB";
createNode transform -n "LeftLeg2UpCsHandle" -p "LeftLeg2UpCsHandleGrp";
	rename -uid "3BB4A762-473D-64F2-5FF4-8992F31E95A4";
createNode clusterHandle -n "LeftLeg2UpCsHandleShape" -p "LeftLeg2UpCsHandle";
	rename -uid "D73AD830-4716-B78F-61B7-72BE195CDD42";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftLeg2DnCsHandleGrp" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "5C9C8A18-44A2-36B3-8FA0-C5AC7CB78068";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftLeg2DnCsHandleZeroMtx" -p "LeftLeg2DnCsHandleGrp";
	rename -uid "02F9BB9E-4AEA-7786-169E-88957C8175EB";
createNode transform -n "LeftLeg2DnCsHandle" -p "LeftLeg2DnCsHandleGrp";
	rename -uid "592642AA-48CF-D496-A8F0-7EA7DE7CB5C1";
createNode clusterHandle -n "LeftLeg2DnCsHandleShape" -p "LeftLeg2DnCsHandle";
	rename -uid "C07BB747-4C70-113A-2008-679142251B97";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "LeftLegMidArcCtrlGrp_parentConstraint1" -p "LeftLegMidArcCtrlGrp";
	rename -uid "C4BAC63F-48E0-95B5-B500-1688FF141E5A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg2DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -1.9890813315093735e-16 2.0188624989849231 -90.200633862653163 ;
	setAttr ".rst" -type "double3" 8.1046356547272165 53.212292331310373 1.6857660442348701 ;
	setAttr ".rsrr" -type "double3" 3.978162646487195e-16 2.0188557445253257 -90.200633862653163 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegDnArcCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "CBB5CF20-4EE8-9143-A4F6-DF80E2033052";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftLegDnArcCtrl" -p "LeftLegDnArcCtrlGrp";
	rename -uid "6D8741DB-4370-52D8-682D-118696587FAD";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLegDnArcCtrlShape" -p "LeftLegDnArcCtrl";
	rename -uid "72148898-4EFA-D531-137B-66AD16FF53FA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -10
		-1.5700920563688214e-15 -7.0710660000000001 -7.0710660000000001
		-2.2204460492503131e-15 -10 0
		-1.5700920563688214e-15 -7.0710660000000001 7.0710660000000001
		0 0 10
		1.5700920563688214e-15 7.0710660000000001 7.0710660000000001
		2.2204460492503131e-15 10 0
		1.5700920563688214e-15 7.0710660000000001 -7.0710660000000001
		0 0 -10
		;
createNode tangentConstraint -n "LeftLegDnArcCtrlGrp_tangentConstraint1" -p "LeftLegDnArcCtrlGrp";
	rename -uid "46AE1C19-4BB7-D04C-212F-EF8D72D3A64B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegDnIKCrvW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rsrr" -type "double3" -0.0070705217408713432 2.018855744525295 -90.200633862653177 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg3CsHandleGrp" -p "LeftLegDnArcCtrlGrp";
	rename -uid "D37B7C48-4363-FC64-8D54-CBAC117389EE";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "LeftLeg3CsHandleZeroMtx" -p "LeftLeg3CsHandleGrp";
	rename -uid "A72F1C34-4C7D-12E4-8B15-BD89E76164B6";
createNode transform -n "LeftLeg3CsHandle" -p "LeftLeg3CsHandleGrp";
	rename -uid "B3AE5DAC-4265-8CBA-1E6F-15940F4B075E";
createNode clusterHandle -n "LeftLeg3CsHandleShape" -p "LeftLeg3CsHandle";
	rename -uid "F786F278-4451-9068-03EA-AAA991DD0EAC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftThighFKCtrlGrpOffGrp" -p "LeftLegRootCtrl";
	rename -uid "D9D2E794-43FB-F336-B847-E38DE7F046BE";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr ".nts" -type "string" "HipJnt >> ParentMatrixConstraint[t,r]";
createNode transform -n "LeftThighFKCtrlGrp" -p "LeftThighFKCtrlGrpOffGrp";
	rename -uid "AAD31D81-41C9-4823-2F97-A8B6AE2ADDB9";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "LeftThighFKCtrl" -p "LeftThighFKCtrlGrp";
	rename -uid "35F5462B-4E92-0169-1137-E8A069D44C9B";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 2 -en "Hip:Root:World" -at "enum";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "LeftThighFKCtrlShape" -p "LeftThighFKCtrl";
	rename -uid "94F64832-4A9B-23FE-6211-2385014AA3E4";
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
createNode transform -n "LeftKneeFKCtrlGrpOffGrp" -p "LeftLegRootCtrl";
	rename -uid "3F2FC4E8-46A9-ABF8-6567-0A8527A420DC";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".nts" -type "string" "KneeJnt >> ParentMatrixConstraint[t,r]";
createNode transform -n "LeftKneeFKCtrlGrp" -p "LeftKneeFKCtrlGrpOffGrp";
	rename -uid "36C94F8B-4C03-B0C2-BD04-9F9BDD00155C";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "LeftKneeFKCtrl" -p "LeftKneeFKCtrlGrp";
	rename -uid "AE47C34E-4DB8-D88C-FCC9-569B05EA19CA";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftKneeFKCtrlShape" -p "LeftKneeFKCtrl";
	rename -uid "1A38B477-4605-0D3D-5EAC-C5A7A5BAE1C6";
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
createNode transform -n "LeftAnkleFKCtrlGrpOffGrp" -p "LeftLegRootCtrl";
	rename -uid "71338B73-462A-417A-9A7B-DF88819D5A26";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".nts" -type "string" "AnkleJnt >> ParentMatrixConstraint[t,r]";
createNode transform -n "LeftAnkleFKCtrlGrp" -p "LeftAnkleFKCtrlGrpOffGrp";
	rename -uid "5D51FA99-4E8C-ECCA-4FC6-9687BE7C2077";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "LeftAnkleFKCtrl" -p "LeftAnkleFKCtrlGrp";
	rename -uid "5D2C0D58-4F83-1D0D-9C5B-B1992B04FF7E";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftAnkleFKCtrlShape" -p "LeftAnkleFKCtrl";
	rename -uid "96F87655-47EF-3E30-3CA9-AD97C3D7C99E";
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
createNode transform -n "LeftAnkleFKCtrlPosGrp" -p "LeftAnkleFKCtrl";
	rename -uid "BB04ADB0-4E5A-12CF-977D-3F80942C2980";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 2.7755575615628914e-17 ;
	setAttr ".r" -type "double3" 7.6765047805049608e-15 -7.5672855938828483e-15 -8.4872705658523944e-15 ;
createNode transform -n "LeftAnkleFKCtrlPos" -p "LeftAnkleFKCtrlPosGrp";
	rename -uid "E0E9C942-479D-D791-0D62-7188C8F393E8";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "LeftLegSysGrp" -p "LeftLegRigGrp";
	rename -uid "1D4B8DB5-4F02-1BD9-FE4F-149696563C0A";
createNode transform -n "LeftUpLegSysConsGrp" -p "LeftLegSysGrp";
	rename -uid "EC3E9238-4599-AB42-9152-A9A57EEEAFB2";
createNode transform -n "LeftLegJntGrp" -p "LeftUpLegSysConsGrp";
	rename -uid "A5B30211-49E0-D226-719B-7AAD9E138159";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode joint -n "LeftLeg1DrvJnt" -p "LeftLegJntGrp";
	rename -uid "28A2861F-462F-BA94-3B10-4F947D4D3464";
	addAttr -ci true -sn "fksy" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "fksz" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
	setAttr -k on ".fksy";
	setAttr -k on ".fksz";
	setAttr -k on ".IKSquash";
createNode joint -n "LeftLeg2DrvJnt" -p "LeftLeg1DrvJnt";
	rename -uid "A6B585D0-41DD-FB72-0B7F-ADBDBEB1E736";
	addAttr -ci true -sn "fksy" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "fksz" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 1.4998121103940503 0 ;
	setAttr -k on ".fksy";
	setAttr -k on ".fksz";
	setAttr -k on ".IKSquash";
createNode joint -n "LeftLeg3DrvJnt" -p "LeftLeg2DrvJnt";
	rename -uid "E6515019-42C6-DF6D-ED8A-51ABB9D9392A";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.0070748698197787216 -2.0188433530455607 0.2008290602617302 ;
createNode orientConstraint -n "LeftLeg3DrvJntORCons" -p "LeftLeg3DrvJnt";
	rename -uid "366D487E-405D-B209-4118-74A000746339";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegIKCtrlPosW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftAnkleFKCtrlPosW1" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" -2.3660511627649186e-08 -6.7544181491900053e-06 1.0583329978332176e-15 ;
	setAttr ".rsrr" -type "double3" -7.3814337895488739e-15 7.169198337526948e-15 8.4571932226542013e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "LeftLeg3AssiAPos" -p "LeftLeg3DrvJnt";
	rename -uid "288D3F8D-41BD-A01B-611E-A4B9DA213141";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "LeftLeg2AssiAPos" -p "LeftLeg2DrvJnt";
	rename -uid "69CAE214-48B4-ADED-245A-A595D282E775";
	setAttr ".t" -type "double3" 0.99965741081207682 -8.8817841970012523e-16 0.026173670139210847 ;
	setAttr ".r" -type "double3" 0 -1.4998121103940503 0 ;
createNode transform -n "LeftLeg3TwistFixGrp" -p "LeftLeg2DrvJnt";
	rename -uid "ABE68926-4462-D066-E8D5-42844CE39091";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "LeftLeg3AimGrp" -p "LeftLeg3TwistFixGrp";
	rename -uid "63FD2037-4606-B5D6-C14D-08A3ED3D51CC";
createNode transform -n "LeftLeg3TwistFixPos" -p "LeftLeg3AimGrp";
	rename -uid "1BE3A0FE-4E23-06F8-0476-138B7657B619";
createNode orientConstraint -n "LeftLeg3TwistFixPosORCons" -p "LeftLeg3TwistFixPos";
	rename -uid "630155EB-433A-D9B1-8418-D7AE2F961A65";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg3AimGrpW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg3TwistFixSubPosW1" -dv 1 -min 
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
createNode aimConstraint -n "LeftLeg3AimGrpAMCons" -p "LeftLeg3AimGrp";
	rename -uid "DE4C75E2-4DAD-AEF5-F92C-93AE75432B59";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg3TwsitFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg3TwistFixSubPos" -p "LeftLeg3AimGrp";
	rename -uid "0D7DDA34-42BB-EBFD-1FB1-5D9E96ACBDE3";
createNode aimConstraint -n "LeftLeg3TwistFixSubPosAMCons" -p "LeftLeg3TwistFixSubPos";
	rename -uid "48B8ACC0-4711-87C0-801A-61AEF5A6553F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg3TwsitFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg3AssiBPos" -p "LeftLeg3TwistFixGrp";
	rename -uid "8EAE0B8E-46B6-6438-A923-1CB76803426F";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode transform -n "LeftLeg3TwsitFixTgPos" -p "LeftLeg3TwistFixGrp";
	rename -uid "6C0CD4F4-4125-69E0-4824-C58732C983B4";
createNode transform -n "LeftLeg2TwistFixGrp" -p "LeftLeg1DrvJnt";
	rename -uid "C59F4464-4C86-A2D8-FB35-50847D9F43B9";
createNode transform -n "LeftLeg2AimGrp" -p "LeftLeg2TwistFixGrp";
	rename -uid "ED0FD462-44DE-FE13-4178-6AA3011513B9";
createNode transform -n "LeftLeg2TwistFixPos" -p "LeftLeg2AimGrp";
	rename -uid "8F5467F9-4874-DE4F-4D26-A7851E1ABA32";
createNode aimConstraint -n "LeftLeg2AimGrpAMCons" -p "LeftLeg2AimGrp";
	rename -uid "B3F56803-4F82-C0B1-913D-D19A4E63ED51";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg2TwsitFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg2AssiBPos" -p "LeftLeg2TwistFixGrp";
	rename -uid "15EE6B2A-45D7-34E3-3902-6DB2E3666212";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode transform -n "LeftLeg2TwsitFixTgPos" -p "LeftLeg2TwistFixGrp";
	rename -uid "03BB165C-4D9E-7DF2-F6D6-8C83D35BA1EF";
createNode joint -n "LeftLeg1IKJnt" -p "LeftLegJntGrp";
	rename -uid "9BF08C27-4BAB-468B-C7D3-1DB19193A7FA";
	setAttr ".t" -type "double3" 8.2564852252189773 96.576308725247912 2.0786147734317151 ;
	setAttr ".r" -type "double3" 3.8524964373534513e-17 -6.776618231767656e-06 2.9429990855616264e-15 ;
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode joint -n "LeftLeg2IKJnt" -p "LeftLeg1IKJnt";
	rename -uid "84D89C16-4164-B031-621B-479333B5A5FC";
	setAttr ".t" -type "double3" 43.366062779002533 -3.5527136788005009e-15 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" -3.6021168034663424e-21 1.35310778286902e-05 1.799289272677866e-19 ;
	setAttr ".jo" -type "double3" 0 1.4998121103940505 0 ;
createNode joint -n "LeftLeg3IKJnt" -p "LeftLeg2IKJnt";
	rename -uid "7DD930D2-46C4-A794-C62F-80A50E969F42";
	setAttr ".t" -type "double3" 43.372870931084265 1.1546319456101628e-14 2.4924506902834764e-14 ;
	setAttr ".jo" -type "double3" -0.0070748698197865582 -2.0188433530455527 0.20082906026172362 ;
createNode ikEffector -n "effector22" -p "LeftLeg2IKJnt";
	rename -uid "E23FEC0A-4647-DB2F-D6FC-ED8CCD2EB7DF";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "LeftLeg1FKJnt" -p "LeftLegJntGrp";
	rename -uid "E4DD4578-415F-6D7A-C355-C3A47E69BBF7";
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode joint -n "LeftLeg2FKJnt" -p "LeftLeg1FKJnt";
	rename -uid "0E35DE5B-4E3D-8552-B5A9-3F94D84E8C9F";
	setAttr ".jo" -type "double3" 0 1.4998121103940505 0 ;
createNode joint -n "LeftLeg3FKJnt" -p "LeftLeg2FKJnt";
	rename -uid "ED928287-464C-1A4F-FAB7-D0B84101FF49";
	setAttr ".jo" -type "double3" -0.0070748698197865504 -2.0188433530455527 0.20082906026172254 ;
createNode joint -n "LeftLegUp1ArcJnt" -p "LeftLegJntGrp";
	rename -uid "1EE6C60F-4868-4B0B-F4FC-41B9CD43D408";
	setAttr ".t" -type "double3" 8.2564849853515625 96.576309204101548 2.0786147117614746 ;
	setAttr ".r" -type "double3" 1.127682403459591e-22 -6.7766182317676552e-06 7.4808857791496978e-15 ;
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode joint -n "LeftLegUp2ArcJnt" -p "LeftLegUp1ArcJnt";
	rename -uid "9E4D090E-410F-3900-520B-E2B089EA4682";
	setAttr ".t" -type "double3" 10.841515115466635 8.8817841970012523e-16 6.6613381477509392e-16 ;
createNode joint -n "LeftLegUp3ArcJnt" -p "LeftLegUp2ArcJnt";
	rename -uid "164370E2-48FB-691E-EAF7-FBB537493DB7";
	setAttr ".t" -type "double3" 10.841515115466592 3.5527136788005009e-15 -2.2204460492503131e-16 ;
createNode joint -n "LeftLegUp4ArcJnt" -p "LeftLegUp3ArcJnt";
	rename -uid "FBBDEA38-4433-8D56-B72C-94BA70470815";
	setAttr ".t" -type "double3" 10.841515115466621 -5.3290705182007514e-15 -4.4408920985006262e-16 ;
createNode joint -n "LeftLegUp5ArcJnt" -p "LeftLegUp4ArcJnt";
	rename -uid "4FDFFE25-4D09-E32E-97C7-91826974AE53";
	setAttr ".t" -type "double3" 10.841515115466606 -1.7763568394002505e-15 0 ;
createNode joint -n "LeftLegDn1ArcJnt" -p "LeftLegUp5ArcJnt";
	rename -uid "5A040C8B-43B4-AC3E-ECD2-DEA1136FAED1";
	setAttr ".t" -type "double3" 1.7024401728349403e-06 8.8817841970012523e-16 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 2.0089498060289404e-20 1.3499346641909613e-05 7.6670156060191614e-14 ;
	setAttr ".jo" -type "double3" 0 1.4998121103940505 0 ;
createNode joint -n "LeftLegDn2ArcJnt" -p "LeftLegDn1ArcJnt";
	rename -uid "EBD7EB72-4A08-E19F-5AE6-F88912FF41F8";
	setAttr ".t" -type "double3" 10.843217490138095 -9.7699626167013776e-15 4.9960036108132044e-16 ;
createNode joint -n "LeftLegDn3ArcJnt" -p "LeftLegDn2ArcJnt";
	rename -uid "A2E789CE-4A67-DFBE-BC8D-FB8C0B656140";
	setAttr ".t" -type "double3" 10.843217490138066 -1.2434497875801753e-14 -4.9960036108132044e-16 ;
createNode joint -n "LeftLegDn4ArcJnt" -p "LeftLegDn3ArcJnt";
	rename -uid "AA6CDF15-48BD-EF9C-CAC1-8A8A63D483A2";
	setAttr ".t" -type "double3" 10.843217490138084 -1.2434497875801753e-14 -6.106226635438361e-16 ;
createNode joint -n "LeftLegDn5ArcJnt" -p "LeftLegDn4ArcJnt";
	rename -uid "C4A9E960-4DFA-CEAE-2D04-7A9A05811D9A";
	setAttr ".t" -type "double3" 10.843217490138091 -2.6645352591003757e-15 2.5673907444456745e-14 ;
createNode ikEffector -n "effector24" -p "LeftLegDn4ArcJnt";
	rename -uid "195FD2F3-4C60-2311-628B-BCB41FF8683C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector23" -p "LeftLegUp4ArcJnt";
	rename -uid "355394B7-4345-424A-0D9C-75AC102359AB";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftLeg1TwistFixGrp" -p "LeftLegJntGrp";
	rename -uid "55B64E1A-4C94-CAFC-B815-F2AB4D126DD7";
	setAttr ".r" -type "double3" 1.5530689420841118e-13 0.51904363413127408 -90.200633862653177 ;
createNode transform -n "LeftLeg1AimGrp" -p "LeftLeg1TwistFixGrp";
	rename -uid "D37FE436-4A75-ADB5-A627-B7B1286AE0F7";
createNode transform -n "LeftLeg1TwistFixPos" -p "LeftLeg1AimGrp";
	rename -uid "D1B7EE47-4EC9-CE13-5938-C39917AA110A";
createNode aimConstraint -n "LeftLeg1AimGrpAMCons" -p "LeftLeg1AimGrp";
	rename -uid "71755386-4559-1180-9D3D-8F8E09664427";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg1TwsitFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg1TwistFixUpvec" -p "LeftLeg1TwistFixGrp";
	rename -uid "93F403F8-4CCE-6A7F-D71F-63BD5484959D";
createNode transform -n "LeftLeg1TwsitFixTgPos" -p "LeftLeg1TwistFixGrp";
	rename -uid "E9166D35-4537-F104-07CC-CF8B09A6B96E";
	setAttr ".r" -type "double3" 0 1.4998121103940503 0 ;
createNode ikHandle -n "LeftLegIKh" -p "LeftUpLegSysConsGrp";
	rename -uid "A62851A9-407F-260E-490E-B9A80BF7D06F";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftLegIKhPVCons" -p "LeftLegIKh";
	rename -uid "DEF5D5DC-4C95-0CA5-B69B-A79709BE5CAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegPoleVectorCtrlW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -0.15184964187980654 -43.364105758840623 -0.38284906243082006 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegPVSysGrp" -p "LeftUpLegSysConsGrp";
	rename -uid "63171203-4FE5-862C-C589-DA8F9203E501";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2.3986741659598465e-07 -4.7885365006550273e-07 6.167024091396911e-08 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftLegPVAmGrp" -p "LeftLegPVSysGrp";
	rename -uid "A3E66F37-42DF-0635-F8A9-8994E712A25B";
createNode aimConstraint -n "LeftLegPVAmGrpAMCons" -p "LeftLegPVAmGrp";
	rename -uid "6DA7BDA9-4810-469A-4B8D-B68DD4A266C2";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLegPVTgPosW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 3.8404111276485572e-17 0.74996493044285628 5.8679065815851578e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegPVPosGrp" -p "LeftLegPVAmGrp";
	rename -uid "F185829C-4A7D-D4C3-65DD-51BE023CABD3";
	setAttr ".t" -type "double3" 43.362345533696043 -3.5527136788005009e-15 0.56761765177693846 ;
	setAttr ".r" -type "double3" -0.74996493044285717 8.4483483726374679e-16 90 ;
createNode transform -n "LeftLegPVPos" -p "LeftLegPVPosGrp";
	rename -uid "CE264182-4E9D-8E69-166A-6E8501E38077";
	addAttr -s false -ci true -m -sn "ag" -ln "AimGrp" -at "message";
createNode transform -n "LeftLegPVPosFWGrp" -p "LeftLegPVPos";
	rename -uid "EF1B7FA7-490D-EEF8-F741-9FA0384236C3";
createNode transform -n "LeftLegPoleVectorToLeftLegPVPosFW" -p "LeftLegPVPosFWGrp";
	rename -uid "EC4C41C8-44B0-CD82-CE78-FFAEBC28B28B";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 0.010000000000000231 ;
createNode transform -n "LeftLegPVUpvec" -p "LeftLegPVSysGrp";
	rename -uid "AB64036B-410C-5AA8-7AF1-078876B1EF0D";
createNode transform -n "LeftLegPVTgPos" -p "LeftLegPVSysGrp";
	rename -uid "22A95AFF-4DCB-2833-C89E-1BAC9EA76147";
	setAttr ".r" -type "double3" -0.0018182313069729623 -0.51904044953890727 0.20071263990825644 ;
createNode transform -n "LeftLegPosGrp" -p "LeftUpLegSysConsGrp";
	rename -uid "5AC98151-4CE9-278D-08D6-66A56CAD0412";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "LeftLegIK1Pos" -p "LeftLegPosGrp";
	rename -uid "E246C667-47F6-7EB9-26BB-7A9F3DEC70EC";
	setAttr ".t" -type "double3" 8.2564852252189773 96.576308725247912 2.0786147734317151 ;
	setAttr ".r" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode transform -n "LeftLegIK2Pos" -p "LeftLegPosGrp";
	rename -uid "9374E9DE-48C6-65F6-3B7D-D598A8BFAC5C";
	setAttr ".t" -type "double3" 8.1046359005558468 53.212293554816604 1.6857661213273389 ;
	setAttr ".r" -type "double3" 3.978162646487195e-16 2.0188557445253257 -90.200633862653163 ;
createNode transform -n "LeftLegIK3Pos" -p "LeftLegPosGrp";
	rename -uid "F0C165DF-4EA4-8EE7-67FF-BEBC6041F23C";
	setAttr ".t" -type "double3" 7.952850773357155 9.8666114249000998 0.15780977954863018 ;
	setAttr ".r" -type "double3" 7.9277460625420548e-15 -7.927755823049035e-15 -89.999929458447951 ;
createNode transform -n "LeftLegIKMovePos" -p "LeftLegPosGrp";
	rename -uid "BF19201A-40AC-5998-0B31-B399E5B30E54";
createNode transform -n "LeftLegPVStretchPos" -p "LeftLegPosGrp";
	rename -uid "ADD7D229-45FD-B0ED-2BF4-E98785748895";
	setAttr ".r" -type "double3" 0.51904363413127463 0 -0.20063386265318042 ;
createNode transform -n "LeftLegArcPosGrp" -p "LeftUpLegSysConsGrp";
	rename -uid "7EAF0F36-4B3E-4C4B-2137-029D5218CA42";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "LeftLeg1ArcPos" -p "LeftLegArcPosGrp";
	rename -uid "A4387030-42E2-E105-19DD-A9AE668E55B8";
	setAttr ".r" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode transform -n "LeftLeg2ArcPos" -p "LeftLegArcPosGrp";
	rename -uid "EB579D1A-4642-7CD2-A08C-D49B71DB583D";
	setAttr ".r" -type "double3" 3.978162646487195e-16 2.0188557445253257 -90.200633862653163 ;
createNode transform -n "LeftLeg3ArcPos" -p "LeftLegArcPosGrp";
	rename -uid "BC6D9249-4DB5-6926-505F-55B10DB66B2A";
	setAttr ".r" -type "double3" 7.9277460625420548e-15 -7.927755823049035e-15 -89.999929458447951 ;
createNode transform -n "LeftLegArcPointPos" -p "LeftLegArcPosGrp";
	rename -uid "C0389242-48CC-8493-5BB0-2E888659362E";
createNode pointConstraint -n "LeftLegArcPointPosPTCons" -p "LeftLegArcPointPos";
	rename -uid "C1E8622F-4DF4-D982-DF58-EE93B0BF91AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg1ArcPosW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg2ArcPosW1" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "LeftLeg3ArcPosW2" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 0 0.01 ;
	setAttr ".rst" -type "double3" 8.1046570541912182 53.218403433111327 1.307396802593642 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "LeftLegArcCrvGrp" -p "LeftUpLegSysConsGrp";
	rename -uid "83010F88-453E-1D1E-378F-C9BC0D618100";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "LeftLegUpArcCrv" -p "LeftLegArcCrvGrp";
	rename -uid "5D7D8D3D-4313-7080-1AFE-DD8A5FC19078";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftLegUpArcCrvShape" -p "LeftLegUpArcCrv";
	rename -uid "6DB0D670-4E98-9928-CE7E-FBBF26530F9B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "LeftLegDnArcCrv" -p "LeftLegArcCrvGrp";
	rename -uid "EA778F86-4566-19A3-FF99-74BC2FABE3F2";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftLegDnArcCrvShape" -p "LeftLegDnArcCrv";
	rename -uid "B92B4990-46E5-59DB-C941-448EC57E2AF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "LeftLegIKCrvGrp" -p "LeftUpLegSysConsGrp";
	rename -uid "48176882-44BD-1CE0-E492-D898F3F77C58";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "LeftLegUpIKCrv" -p "LeftLegIKCrvGrp";
	rename -uid "F5DEC92A-4337-1156-7556-B2AEF524D134";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftLegUpIKCrvShape" -p "LeftLegUpIKCrv";
	rename -uid "328DE772-4F2D-39E7-C8E4-678C9BA9759B";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "LeftLegUpIKCrvShapeOrig" -p "LeftLegUpIKCrv";
	rename -uid "8046CDB9-4A8C-6925-6A2B-8A92AB0E9368";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8.2564849853515625 96.576309204101563 2.0786147117614746
		8.1046356545645217 53.212292284847059 1.6857711731150715
		;
createNode transform -n "LeftLegDnIKCrv" -p "LeftLegIKCrvGrp";
	rename -uid "DB44ADBE-4649-0C0D-FD3D-C090B6A00FCB";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftLegDnIKCrvShape" -p "LeftLegDnIKCrv";
	rename -uid "EF879978-43F4-65DE-E65B-818F6DAA9E98";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "LeftLegDnIKCrvShapeOrig" -p "LeftLegDnIKCrv";
	rename -uid "10243D57-48A3-9463-AE4C-E0A588E16776";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8.1046356545645217 53.212292284847059 1.6857711731150715
		7.9528505229629438 9.8666088975849942 0.15780967071662874
		;
createNode transform -n "LeftLegUpIKChkCrv" -p "LeftLegIKCrvGrp";
	rename -uid "A827E334-4A89-DCFE-ABCC-9690837DEB67";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftLegUpIKChkCrvShape" -p "LeftLegUpIKChkCrv";
	rename -uid "B7000511-4110-C1B5-8364-C98301763E83";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "cv[*]";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		8.2564849853515625 96.576309204101563 2.0786147117614746
		8.2311767635384641 89.348973046535008 2.0131399337307432
		8.1805603200393904 74.894300767705985 1.8821903779981728
		8.1299438765403149 60.439628488876934 1.7512408222656004
		8.1046356547272147 53.212292331310373 1.6857660442348696
		;
createNode transform -n "LeftLegDnIKChkCrv" -p "LeftLegIKCrvGrp";
	rename -uid "5795DF46-4C17-18C1-9DC7-09A4B13A1C78";
	setAttr -l on ".v";
createNode nurbsCurve -n "LeftLegDnIKChkCrvShape" -p "LeftLegDnIKChkCrv";
	rename -uid "F39F85F4-42BC-5195-B274-BFB7A631D53D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		8.1046356547272165 53.21229233131038 1.6857660442348699
		8.0793381326461375 45.988011724649418 1.4311066450667584
		8.0287430886110513 31.539450547616248 0.9217878480097258
		7.9781480445759598 17.090889370582989 0.41246905095269421
		7.9528505224948773 9.8666087639220503 0.15780965178458192
		;
createNode ikHandle -n "LeftLegUpArcIKh" -p "LeftUpLegSysConsGrp";
	rename -uid "DB2CD7F6-4EDD-9765-D8B4-088C90016022";
	setAttr ".t" -type "double3" -0.15184932482582525 -43.364015216894629 -0.39284352322437566 ;
	setAttr ".r" -type "double3" 4.969820609344136e-17 0.51903685751304418 -90.200633862653177 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode ikHandle -n "LeftLegDnArcIKh" -p "LeftUpLegSysConsGrp";
	rename -uid "326BA6A7-453E-8C19-9EF3-7F9DC139562B";
	setAttr ".t" -type "double3" -0.30363445735798056 -86.709698869890971 -1.9208049663675171 ;
	setAttr ".r" -type "double3" 4.9727033286763571e-17 2.0188624672537365 -90.200633862653177 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode transform -n "LeftToeRigGrp" -p "LeftLegRigGrp";
	rename -uid "8FDF5193-49A5-E348-9862-BA91FE6859AA";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "Part" -ln "Part" -at "message";
	addAttr -s false -ci true -sn "NoneToe" -ln "NoneToe" -at "message";
	addAttr -s false -ci true -m -sn "Jnt" -ln "Jnt" -at "message";
	addAttr -s false -ci true -m -sn "IKh" -ln "IKh" -at "message";
	setAttr -s 2 ".Grp";
	setAttr -s 2 ".IKh";
createNode transform -n "LeftAnkleConsGrp" -p "LeftToeRigGrp";
	rename -uid "59CD9A4A-4753-1669-7AB4-9DAE0E786661";
createNode transform -n "LeftAnkleIKScaleGrp" -p "LeftAnkleConsGrp";
	rename -uid "CBB3C4B5-4760-6BCB-FB59-E6AC395BD915";
	setAttr ".t" -type "double3" -2.6609777385999678e-06 2.5086555499598262e-07 1.2776404828551691e-07 ;
	setAttr ".r" -type "double3" 0 0 89.999929458447951 ;
createNode transform -n "LeftToeSysGrp" -p "LeftAnkleIKScaleGrp";
	rename -uid "D74195E3-4483-5318-CEFC-ACA584DB85E7";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.5987211554602254e-14 3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0 0 -89.999929458447966 ;
createNode transform -n "LeftAnkleIKJntGrp" -p "LeftToeSysGrp";
	rename -uid "8B133FE2-46A1-7BE5-14AF-F8AF45BB3263";
createNode joint -n "LeftAnkleIKJnt" -p "LeftAnkleIKJntGrp";
	rename -uid "CD446EA8-460F-43B8-F5A9-DC93946FBA88";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -4.2632564145606011e-14 8.8817841970012523e-16 7.7715611723760958e-16 ;
	setAttr ".r" -type "double3" -3.9403658674502143e-15 -1.076559437826581e-05 4.1934341737301546e-08 ;
	setAttr ".jo" -type "double3" 0 -63.399570202741486 0 ;
createNode joint -n "LeftBallIKJnt" -p "LeftAnkleIKJnt";
	rename -uid "F475E618-4EB5-4593-4C25-99AB2A1E7509";
	setAttr ".t" -type "double3" 15.044114096753535 -1.0231815394945443e-12 2.0392576516314875e-12 ;
	setAttr ".jo" -type "double3" 0 -26.600429797258538 0 ;
createNode joint -n "LeftToeIKJnt" -p "LeftBallIKJnt";
	rename -uid "7F23DBE6-4437-FB59-C763-F8BDE6892CE6";
	setAttr ".t" -type "double3" 8.0757760669283805 8.8817841970012523e-16 -1.0969003483296547e-13 ;
createNode ikEffector -n "effector25" -p "LeftBallIKJnt";
	rename -uid "AA888DD7-47A5-81AD-C3E2-1ABCC5102D11";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector26" -p "LeftAnkleIKJnt";
	rename -uid "72C6128F-4685-64C0-D5EC-A49A949B2C57";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftBallIKCtrlPrtGrp" -p "LeftAnkleIKJntGrp";
	rename -uid "165B7DED-4304-B12E-76B9-94A2AC19CE75";
createNode transform -n "LeftBallIKCtrlGrp" -p "LeftBallIKCtrlPrtGrp";
	rename -uid "7BA9CC84-4774-322A-7796-1EA563518994";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftBallIKCtrl" -p "LeftBallIKCtrlGrp";
	rename -uid "D392ECF1-4ED7-520F-9CFD-4EA554CAB662";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftBallIKCtrlShape" -p "LeftBallIKCtrl";
	rename -uid "CA0ADB6F-4768-976C-71C2-4CA5B688A528";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		6.1088911706974591e-16 1.2949641359227825e-16 -6.9589935405000007
		-9.3431785430642142e-16 -6.9589935405000007 0
		6.1088911706974591e-16 1.2949641359227825e-16 6.9589935405000007
		2.1560960884459144e-15 6.9589935405000007 0
		6.1088911706974591e-16 1.2949641359227825e-16 -6.9589935405000007
		;
createNode joint -n "LeftAnkleFKJnt" -p "LeftToeSysGrp";
	rename -uid "0BCFE295-4308-7845-D2EE-56AB1D11C521";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 0 0 1.3877787807814457e-16 ;
	setAttr ".jo" -type "double3" 0 -63.399570202741486 0 ;
createNode joint -n "LeftBallFKJnt" -p "LeftAnkleFKJnt";
	rename -uid "790CD344-40B9-E4D7-D3BD-ED9D09FD05B8";
	setAttr ".jo" -type "double3" 0 -26.600429797258538 0 ;
createNode joint -n "LeftAnkleDrvJnt" -p "LeftToeSysGrp";
	rename -uid "2E2C7B73-45EF-A07E-CBCA-C0A14A274D55";
	setAttr -l on ".v" no;
	setAttr ".jo" -type "double3" 0 -63.399570202741486 0 ;
createNode joint -n "LeftBallDrvJnt" -p "LeftAnkleDrvJnt";
	rename -uid "86930839-4510-FB8D-1F0A-26BF4F3DF39A";
	setAttr ".jo" -type "double3" 0 -26.600429797258538 0 ;
createNode transform -n "LeftBallFKCtrlGrp" -p "LeftAnkleIKScaleGrp";
	rename -uid "17142A90-4C15-276A-53A5-2D8E7E23C8E2";
	setAttr ".t" -type "double3" 8.2935383654003658e-06 -6.7362397118227655 13.45170782841091 ;
	setAttr ".r" -type "double3" -89.999929458456677 -89.999999999999233 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "LeftBallFKCtrl" -p "LeftBallFKCtrlGrp";
	rename -uid "6231B25F-4858-71E3-BF1D-63B13F9FB772";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftBallFKCtrlShape" -p "LeftBallFKCtrl";
	rename -uid "9D05195D-492B-5208-19F9-8F8F0DF5E511";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -10.606605
		-2.3551394168208617e-15 -10.606605 0
		0 0 10.606605
		2.3551394168208617e-15 10.606605 0
		0 0 -10.606605
		;
createNode blendColors -n "LeftLegFKScaleBC";
	rename -uid "59814699-46CF-AAE0-589E-07A24E62E6BA";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "LeftLegIKScaleBC";
	rename -uid "6951AD58-4FD1-9B40-A468-97898F7AC88C";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode animCurveUU -n "LeftLegIKUU";
	rename -uid "BAAE7F87-4899-2129-1201-14A94991C3D8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "LeftLegFKUU";
	rename -uid "B51A07D6-49C3-2ADD-3E5A-46AE208212AB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode condition -n "LeftLegAutoHideCD";
	rename -uid "454F5946-437A-E5FD-EBA5-ABACC53A7636";
	setAttr ".st" 1;
createNode reverse -n "LeftLegAutoHideRV";
	rename -uid "5AA66465-41AB-F788-083B-88B6638B7ACD";
createNode decomposeMatrix -n "LeftLegIKCtrlPosDM";
	rename -uid "04F3F41B-4C8A-61A2-69A0-F493CACD1817";
createNode multMatrix -n "LeftLegIKCtrlPosMM";
	rename -uid "3DF05CDE-425D-758F-5C02-288D094D78F3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.952850773357155 9.8666114249000998 0.15780977954863018 1;
	setAttr ".i[1]" -type "matrix" 2.2460339755979075e-16 1 -2.738534794738432e-16 0
		 0 2.2204460492503131e-16 1 0 1 -2.2204460492503131e-16 6.0807687657114685e-32 0 -0.15780977954863235 -7.9528507733571576 -9.8666114249001122 1;
createNode animCurveUA -n "LeftFootInRotPos_rotateX";
	rename -uid "68563DF4-4EF9-1DF5-17A3-FC840FEFEF80";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -10 90 0 0;
createNode animCurveUA -n "LeftFootOutRotPos_rotateX";
	rename -uid "3116E37A-46A2-16B3-C41E-E9B7BA9BE5F7";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -90;
createNode animCurveUA -n "LeftHeelRollPivPos_rotateY";
	rename -uid "338E8C3F-46AA-D388-EC70-EC88BD84E79C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -10 -90 0 0;
createNode animCurveUA -n "LeftHeelRollPivPos_rotateZ";
	rename -uid "8CFAA2D9-4A35-B3FE-0EDE-CC9274923DC6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "LeftToeRollPivPos_rotateY";
	rename -uid "6FE232FB-40A8-D473-85AD-FEA681524D6E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
createNode animCurveUA -n "LeftToeRollPivPos_rotateZ";
	rename -uid "33C610A7-4255-2432-B04D-A7B4503A9562";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "LeftBallPivPos_rotateZ";
	rename -uid "CCF6A105-4FF5-ACB4-4444-5183C00A3E81";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "LeftFootRollPos_rotateY";
	rename -uid "A5A48C98-40E7-D7B0-2729-259660D5121F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "0E656838-431D-2742-5BBE-BFA4992C6E93";
createNode animCurveUA -n "LeftBallRollPos_rotateY";
	rename -uid "B2EC25AB-4AC7-ACA6-C509-55997F4FB966";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode decomposeMatrix -n "LeftKneeFKCtrlGrpDM";
	rename -uid "6D6C7444-4619-250C-CFCB-EB8D338BF7D7";
createNode multMatrix -n "LeftKneeFKCtrlGrpMM";
	rename -uid "4413766E-4B1E-0499-0614-0682E4D9016F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.003499540780601551 -0.99937316044198687 -0.035228389155903476 0
		 0.99999386897955311 -0.0035017143379134641 -3.4694469519536142e-18 0 -0.00012335975540882227 -0.035228173169929253 0.99937928765683359 0
		 8.1046359005558468 53.212293554816604 1.6857661213273389 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533146214 0.99999386897955322 -3.1721667660217352e-05 0
		 -0.99995283658664502 -0.0035017143379138527 -0.0090588409313016472 0 -0.009058896471581146 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494479280164 -7.9182519595732481 -1.2033981544160492 1;
createNode decomposeMatrix -n "LeftAnkleFKCtrlGrpDM";
	rename -uid "2E201465-414D-0CD5-D132-ED96D24E6BFE";
createNode multMatrix -n "LeftAnkleFKCtrlGrpMM";
	rename -uid "EFEB4FFB-400D-5CB8-0DD1-71959287BA28";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.952850773357155 9.8666114249000998 0.15780977954863018 1;
	setAttr ".i[1]" -type "matrix" -0.0034995407806013394 0.99999386897955311 -0.00012335975540878148 0
		 -0.99937316044198687 -0.0035017143379131033 -0.035228173169929246 0 -0.035228389155903463 5.2041704279304213e-18 0.99937928765683381 0
		 53.2666873130377 -7.9182519595732819 0.19085193253241944 1;
createNode decomposeMatrix -n "LeftLegIKFKCtrlGrpDM";
	rename -uid "9003A1FA-4184-AB51-58E7-C58267F1A1C0";
createNode multMatrix -n "LeftLegIKFKCtrlGrpMM";
	rename -uid "6F4C39EA-48FA-9638-775F-81B0E9CEE478";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.952850773357155 9.8666114249000998 0.15780977954863018 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161918e-06 0.99999999999924227 -1.3051842010479848e-16 0
		 -0.99999999999924205 1.2311823426314206e-06 1.214306433183765e-16 0 1.2490024788271661e-16 1.2801701774134322e-16 1.0000000000000002 0
		 9.8666016334831657 -7.9528629209488972 -0.15780977954862993 1;
createNode decomposeMatrix -n "LeftLegUpArcDM";
	rename -uid "20E99D23-4623-6135-CDA7-398491F530C4";
createNode multMatrix -n "LeftLegUpArcMM";
	rename -uid "345622B6-4F4C-5CC6-FEBC-61B132373489";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LeftLegUpArcCM";
	rename -uid "DAFC53DE-43C7-D3F3-91DF-5D9FD538AFC5";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.1805603199580439 74.894300744474293 1.8821929424382728 1;
createNode pointOnCurveInfo -n "LeftLegUpArcPC";
	rename -uid "783553FB-44D4-E271-3000-FB815FB0D8A0";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode blendShape -n "LeftLegArcBlendShape";
	rename -uid "C458319A-4A6E-5B38-4E10-93867012942B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".og";
	setAttr -s 2 ".it";
	setAttr ".mlid" 2;
	setAttr ".mlpr" 0;
	setAttr ".pndr[0]"  0;
	setAttr ".tgvs[0]" yes;
	setAttr ".tpvs[0]" yes;
	setAttr ".tgdt[0].cid" -type "Int32Array" 1 0 ;
	setAttr ".dfo" 1;
	setAttr ".aal" -type "attributeAlias" {"LeftLegArcCrvGrp","weight[0]"} ;
createNode objectSet -n "LeftLegArcBlendShapeSet";
	rename -uid "3912A6DF-41B6-62E9-9AB5-3B99CC3C04F1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "LeftLegArcBlendShapeGroupId";
	rename -uid "53BF3EFD-42D2-ADB5-7734-298E828B90CB";
	setAttr ".ihi" 0;
createNode groupId -n "LeftLegArcBlendShapeGroupId1";
	rename -uid "D6A51D55-4EFE-1690-D09D-B9A38A4FF51B";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLegArcBlendShapeGroupParts";
	rename -uid "68215AB0-46D6-0660-903D-15A7D58D833A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "rebuildCurve5";
	rename -uid "96700463-4BFB-0C3D-1E7B-A380CAE60190";
	setAttr ".s" 2;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode groupParts -n "LeftLegArcBlendShapeGroupParts1";
	rename -uid "38ED96A7-4AC8-E62D-07E2-FEB605F38A97";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "rebuildCurve6";
	rename -uid "BB2BC30F-427C-CFBD-DEBB-C99C892F5A5C";
	setAttr ".s" 2;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode animCurveUU -n "LeftLegArcBlendShape_LeftLegArcCrvGrp";
	rename -uid "94EC04CF-4BE4-8E6E-212F-0A845CF0B33F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 1;
createNode cluster -n "LeftLeg1Cs";
	rename -uid "C1FBA562-4CA3-E471-6C21-DCAA4B1EAF97";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftLeg1CsSet";
	rename -uid "3F375785-44CD-8C1F-58D0-48AF9248A9CD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg1CsGroupId";
	rename -uid "464DE9FC-49B0-7E08-2EF0-B9BF0BCD38CD";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg1CsGroupParts";
	rename -uid "343C36B1-426B-86FD-40DA-748BE0B28498";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode pairBlend -n "LeftLegMidArcCtrlPBGrpPB";
	rename -uid "B1670F63-47AB-8F4E-CA53-E38F52F407E2";
	setAttr ".it1" -type "double3" 0.0015049548978396388 8.8817841970012523e-16 -0.13189847095592477 ;
	setAttr ".ir1" -type "double3" 1.0787334089884731e-15 -1.4998121103940505 -2.5458406896467076e-14 ;
	setAttr ".ri" 1;
createNode cluster -n "LeftLeg2UpCs";
	rename -uid "30F63836-4C07-539F-698B-3FB6BAF8FD66";
	setAttr ".wl[0].w[3]"  0.5;
createNode objectSet -n "LeftLeg2UpCsSet";
	rename -uid "B11E21DE-4183-4781-CC76-598D82273E12";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg2UpCsGroupId";
	rename -uid "3CADD303-4421-7E45-34B2-79BC55BF5256";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg2UpCsGroupParts";
	rename -uid "4E8AA19D-47A6-01C4-3514-47BBF3B4AEB5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[3:4]";
createNode cluster -n "LeftLeg2DnCs";
	rename -uid "AA7BD4D7-4181-38C7-43EB-67A21609DF62";
	setAttr ".wl[0].w[1]"  0.5;
createNode objectSet -n "LeftLeg2DnCsSet";
	rename -uid "44CC8F50-4E39-9DFE-5F73-FBA99CBF84F8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg2DnCsGroupId";
	rename -uid "CB213845-49E7-36BD-75FD-218AF694CA47";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg2DnCsGroupParts";
	rename -uid "D1FA0C07-421F-2242-FC21-06B6487A876C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode decomposeMatrix -n "LeftLegDnArcDM";
	rename -uid "2A017C6A-4C13-4274-FB37-1BAE60C21B59";
createNode multMatrix -n "LeftLegDnArcMM";
	rename -uid "0C79B9C9-46E7-7EB2-09B6-40B957635A66";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LeftLegDnArcCM";
	rename -uid "446D6232-4478-0B7D-1412-F68FA0F70423";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.0287430887637292 31.53945059121606 0.92179042191585103 1;
createNode pointOnCurveInfo -n "LeftLegDnArcPC";
	rename -uid "BBE93AC9-402F-D280-8896-E1A63EAC5B31";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode cluster -n "LeftLeg3Cs";
	rename -uid "73A980F2-4C77-EB70-F6B5-EDA0F838A6E5";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftLeg3CsSet";
	rename -uid "BC49C1DA-43CE-F451-38FF-C38C799AA72C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg3CsGroupId";
	rename -uid "E6F35341-4AAB-A3CC-B506-F1A284148B37";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg3CsGroupParts";
	rename -uid "B984B898-43D7-5E66-96B8-DC8A2D8FF804";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode decomposeMatrix -n "LeftUpLegSysConsGrpDM";
	rename -uid "E727B19C-4912-9DC8-3DD8-FDA39A8464D3";
createNode multMatrix -n "LeftUpLegSysConsGrpMM";
	rename -uid "3730FDC4-4907-5090-E7F5-4DB41AB06EB4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2564849853515625 96.576309204101563 2.0786147117614746 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -1.3402655263963996e-15 -2.8846573904027154e-17 0
		 0 1 0 0 0 0 1 0 -8.2564849853515625 -96.576309204101548 -2.0786147117614746 1;
createNode blendTwoAttr -n "LeftLegSquashBA";
	rename -uid "FE2FC151-4E54-19D2-ABBE-93A59F24DF38";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode setRange -n "LeftLegStretchSR";
	rename -uid "10D4CD15-41D3-906F-FFD7-D7B51E38A794";
	setAttr ".m" -type "float3" 1 1 1 ;
	setAttr ".om" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "LeftLegSquashPowMD";
	rename -uid "974C16E6-4E22-0532-7883-C0BF8CE52372";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multDoubleLinear -n "LeftLegUpSlideML";
	rename -uid "50BB3E68-4988-6408-33C8-BC83D0CF48E5";
createNode blendTwoAttr -n "LeftLegPVStretch1BA";
	rename -uid "A8F9D2E0-4DF5-18F3-A7CC-F6AF82D805FD";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LeftLegStretchDvMD";
	rename -uid "FDA97CCB-44DA-0F14-A65E-B5B9FF5052A2";
	setAttr ".op" 2;
createNode condition -n "LeftLegCD";
	rename -uid "C2529F3B-4F69-BFD2-8863-029F89EB356A";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegAllDB";
	rename -uid "DBE23B86-42DF-B0DF-B29F-388F15742885";
createNode addDoubleLinear -n "LeftLegSumDistAL";
	rename -uid "66151C01-4114-2A8E-7A85-348F55039295";
createNode distanceBetween -n "LeftLeg1DB";
	rename -uid "7088DBEF-4B0E-0CB1-434D-93B90B39B126";
createNode distanceBetween -n "LeftLeg2DB";
	rename -uid "4F387983-40B0-053A-BDAE-05A9206B2776";
createNode blendTwoAttr -n "LeftLegStretchBA";
	rename -uid "EF9EE798-4B8E-8672-FDEB-20900836F993";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LeftLegPvStretch1DvMD";
	rename -uid "B090D491-4BAF-7E06-86E9-66B2B27EBE1C";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegPVStretch1DB";
	rename -uid "9FEB8595-4A86-CBE6-9222-CFA7D049C216";
createNode addDoubleLinear -n "LeftLegUpSlideAL";
	rename -uid "591D668A-4DD3-0990-7F8B-09946D759119";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LeftLegUpSlideFilterML";
	rename -uid "A5B79795-481E-21EE-25BB-3E895E2EEEA1";
	setAttr ".i2" 0.1;
createNode blendColors -n "LeftLeg1DrvJntTrsBC";
	rename -uid "B22F57B0-4301-D87A-8122-7389998AC5CD";
createNode pairBlend -n "LeftLeg1DrvJntRotPB";
	rename -uid "E88BF20B-4664-D364-4691-2E8759B8B9C4";
	setAttr ".ri" 1;
createNode blendColors -n "LeftLeg2DrvJntTrsBC";
	rename -uid "1E9F0D04-4223-8E62-4F47-2BB1EFC33F4A";
createNode pairBlend -n "LeftLeg2DrvJntRotPB";
	rename -uid "1EB09F35-40A3-DE9B-037A-0EAE0122C84A";
	setAttr ".ri" 1;
createNode blendColors -n "LeftLeg3DrvJntTrsBC";
	rename -uid "FDCE0FA4-4AED-81D5-E616-42A62C66EA36";
createNode decomposeMatrix -n "LeftLeg3AssiAPosDM";
	rename -uid "60071971-412C-30B7-1955-5E978A5375C8";
createNode multMatrix -n "LeftLeg3AssiAPosMM";
	rename -uid "924BF09C-43FF-A25D-B267-C8BD167A97B0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020715 -0.9993731604419871 -0.035228389155903463 0
		 0.999993868979553 -0.0035017143379136922 1.353086426457635e-16 0 -0.0001233597554089707 -0.035228173169929246 0.9993792876568337 0
		 7.9493509817142742 8.8672356034800526 0.12258126262867826 1;
	setAttr ".i[1]" -type "matrix" 5.5128134073838285e-07 0.99999999999924172 -1.1008627727241221e-06 0
		 -0.44776579521410698 1.2311823425203983e-06 0.89415087800368598 0 0.89415087800436366 5.5511151231257827e-17 0.44776579521444643 0
		 4.2768209735396914 -7.9528629209488928 -8.8928923349305311 1;
createNode decomposeMatrix -n "LeftLeg3TwistFixGrpDM";
	rename -uid "2B0EEACE-4593-3B20-3FB9-4FAB28E09285";
createNode multMatrix -n "LeftLeg3TwistFixGrpMM";
	rename -uid "E1F669EB-4388-209A-0C36-009D55105190";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823425941189e-06 -0.99999999999924238 1.3183898417423734e-16 0
		 0.99999999999924194 1.2311823427636187e-06 1.3482054014857248e-16 0 -1.338989683019598e-16 1.3183898417423734e-16 1.0000000000000002 0
		 7.9528505224948782 9.866608763922045 0.15780965178458173 1;
	setAttr ".i[1]" -type "matrix" 1.2311823428557471e-06 0.99999999999924205 -1.381435695146593e-16 -2.6469779601696886e-23
		 -0.99999999999924205 1.2311823425203983e-06 1.3183898417423734e-16 1.3877787807814457e-17
		 1.3877804296545615e-16 1.3392590249529741e-16 1.0000000000000002 -3.0814879110195774e-33
		 9.8665989725054359 -7.9528626700833422 -0.1578096517845822 0.99999999999999989;
createNode pairBlend -n "LeftLeg3TwsitFixTgPosPB";
	rename -uid "61D166DC-4237-E5D9-7561-9EB685558B0F";
	setAttr ".w" 0.5;
createNode decomposeMatrix -n "LeftLeg3TwsitFixTgPosDM";
	rename -uid "C20A62C9-4512-C356-3257-A1AD1D4255DA";
createNode multMatrix -n "LeftLeg3TwsitFixTgPosMM";
	rename -uid "87BFF2C0-431F-7432-425D-5FBF23B1304C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.003499540780602071 -0.9993731604419871 -0.035228389155903483 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.0001233597554088362 -0.03522817316992926 0.99937928765683381 0
		 7.9493509817142751 8.867235603480049 0.12258126262867816 1;
	setAttr ".i[1]" -type "matrix" -0.0034995407806017688 0.999993868979553 -0.00012335975540883018 0
		 -0.99937316044198654 -0.0035017143379137972 -0.035228173169929239 0 -0.03522838915590347 0 0.99937928765683337 0
		 8.8938146877964961 -7.9182517180305005 0.19085196644479679 1;
createNode decomposeMatrix -n "LeftLeg3TwsitFixTgPosDM1";
	rename -uid "D586F1F4-40AD-B127-F50B-C1A6F7600081";
createNode multMatrix -n "LeftLeg3TwsitFixTgPosMM1";
	rename -uid "C0CD1A2E-408E-878F-64CD-BA902E72B402";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.003499540780602071 -0.9993731604419871 -0.035228389155903483 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.0001233597554088362 -0.03522817316992926 0.99937928765683381 0
		 7.9493509817142751 8.867235603480049 0.12258126262867816 1;
	setAttr ".i[1]" -type "matrix" -0.0034995407806017688 0.999993868979553 -0.00012335975540883018 0
		 -0.99937316044198654 -0.0035017143379137972 -0.035228173169929239 0 -0.03522838915590347 0 0.99937928765683337 0
		 8.8938146877964961 -7.9182517180305005 0.19085196644479679 1;
createNode decomposeMatrix -n "LeftLeg2TwistFixGrpDM";
	rename -uid "EF90D84C-41ED-0D10-42B0-0BAEE17EC805";
createNode multMatrix -n "LeftLeg2TwistFixGrpMM";
	rename -uid "8249D860-4266-AA3A-EB84-F7ACFCB4B593";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020702 -0.99937316044198687 -0.035228389155903476 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.00012335975540883617 -0.035228173169929253 0.99937928765683359 0
		 8.1046356547272165 53.212292331310358 1.6857660442348703 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode unitConversion -n "unitConversion85";
	rename -uid "C8ED1B5C-4C91-FEBB-7369-C79C7F9CA734";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "LeftLeg2TwsitFixTgPosPB";
	rename -uid "884DCE5D-49F2-554F-0113-9BA54FC9DAF7";
	setAttr ".w" 0.5;
createNode decomposeMatrix -n "LeftLeg2TwsitFixTgPosDM";
	rename -uid "52534317-4F6F-EB16-11A4-DBAF70BC606B";
createNode multMatrix -n "LeftLeg2TwsitFixTgPosMM";
	rename -uid "6F22139A-49BA-704D-22B0-D5B40F15B414";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.1011340840739017 52.212339494723693 1.6767071477632889 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533148843 0.99999386897955322 -3.172166766019375e-05 1.3552527156068805e-20
		 -0.99995283658664469 -0.0035017143379138804 -0.0090588409313016524 3.4694469519536142e-18
		 -0.0090588964715811408 -2.1684043449710089e-19 0.9999589673555197 2.7105054312137611e-20
		 52.253432792405974 -7.9182517180304899 -1.2033980884180904 0.99999999999999989;
createNode decomposeMatrix -n "LeftLeg2TwsitFixTgPosDM1";
	rename -uid "E6D0BCC8-425A-04E1-E16A-3CBCF69D496A";
createNode multMatrix -n "LeftLeg2TwsitFixTgPosMM1";
	rename -uid "D7FDECE9-4133-87D7-A3D2-A790D5ACDFE3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.1011340840739017 52.212339494723693 1.6767071477632889 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533148843 0.99999386897955322 -3.172166766019375e-05 1.3552527156068805e-20
		 -0.99995283658664469 -0.0035017143379138804 -0.0090588409313016524 3.4694469519536142e-18
		 -0.0090588964715811408 -2.1684043449710089e-19 0.9999589673555197 2.7105054312137611e-20
		 52.253432792405974 -7.9182517180304899 -1.2033980884180904 0.99999999999999989;
createNode multDoubleLinear -n "LeftLegUpTxML";
	rename -uid "35596BEA-47B5-3892-92DE-8DB4F02A9CC7";
createNode multDoubleLinear -n "LeftLegDnTxML";
	rename -uid "5807CEB5-4FF1-4737-8777-3796F00C86B4";
createNode multDoubleLinear -n "LeftLegDnSlideML";
	rename -uid "9E9DB866-4747-8101-A86C-F8A69CACC06E";
createNode blendTwoAttr -n "LeftLegPVStretch2BA";
	rename -uid "49D28311-4454-33BD-5BA8-79B68572C1F6";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LeftLegsPvStretch2DvMD";
	rename -uid "73339908-449D-0FFA-A3F5-0A94E20F75D8";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegPVStretch2DB";
	rename -uid "668DC944-4D8C-7128-65E8-B29D762F939D";
createNode addDoubleLinear -n "LeftLegDnSlideAL";
	rename -uid "E1E7D409-4382-A788-B389-2B8F25BA7178";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LeftLegDnSlideFilterML";
	rename -uid "5C2F2579-4003-134E-9B56-279F6B965B48";
	setAttr ".i2" 0.1;
createNode quatToEuler -n "LeftLeg3IKJntQE";
	rename -uid "82B12701-47EF-728B-36A8-5CA9EE246F23";
	setAttr ".ort" -type "double3" -2.3660504215931343e-08 -6.754418156756831e-06 -6.7780346923579086e-15 ;
createNode quatProd -n "LeftLeg3IKJntQP";
	rename -uid "01A12A28-4F4F-B18E-023E-E2B7B3F5531C";
createNode decomposeMatrix -n "LeftLeg3IKJntDM";
	rename -uid "FA70F549-4423-6B66-C520-F193FC59FA78";
createNode multMatrix -n "LeftLeg3IKJntMM";
	rename -uid "1EE89D65-4A22-7323-2E1D-529169081D71";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823424900525e-06 -0.99999999999924216 -1.3877787807814457e-17 0
		 0.99999999999924194 1.2311823426600232e-06 -5.8275866771095863e-18 0 6.7220534694101275e-18 -6.9388939039072284e-18 0.99999999999999989 0
		 7.952850773357155 9.8666114249000714 0.15780977954862974 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode quatInvert -n "LeftLeg3IKJntQI";
	rename -uid "1D83E0CD-45D2-18F2-D62C-8191955A4CEA";
createNode eulerToQuat -n "LeftLeg3IKJntEQ";
	rename -uid "52B7E7AC-4911-3625-03B8-8FA70371DA95";
createNode decomposeMatrix -n "LeftLeg1FKJntDM";
	rename -uid "3A65242F-45DE-A2CD-9A32-1F848550B263";
createNode multMatrix -n "LeftLeg1FKJntMM";
	rename -uid "49C2B715-42F0-F0DF-5D06-888E5466EE71";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.2564852252189773 96.576308725247912 2.0786147734317151 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533146214 0.99999386897955322 -3.1721667660217352e-05 0
		 -0.99995283658664502 -0.0035017143379138527 -0.0090588409313016472 0 -0.009058896471581146 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494479280164 -7.9182519595732481 -1.2033981544160492 1;
createNode quatToEuler -n "LeftLeg1FKJntQE";
	rename -uid "0EAAF631-4535-288B-53CB-0FB427CCD916";
	setAttr ".ort" -type "double3" 0 -5.466578358765419e-16 0 ;
createNode quatProd -n "LeftLeg1FKJntQP";
	rename -uid "2C32160E-4BD0-872B-0717-5BA03CC6B085";
createNode quatInvert -n "LeftLeg1FKJntQI";
	rename -uid "AA2002BB-49F1-747A-FF87-C0A484122171";
createNode eulerToQuat -n "LeftLeg1FKJntEQ";
	rename -uid "6D525ACE-4FCB-327D-B243-BE99A8B0B175";
createNode decomposeMatrix -n "LeftLeg2FKJntDM";
	rename -uid "AF69D4B6-4D9F-CDE0-A390-B0BDB9B70B05";
createNode multMatrix -n "LeftLeg2FKJntMM";
	rename -uid "CB8885AE-4310-5E77-E894-08BABEA92525";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020702 -0.99937316044198687 -0.035228389155903483 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.0001233597554088362 -0.03522817316992926 0.99937928765683359 0
		 8.1046359005558468 53.212293554816618 1.6857661213273398 1;
	setAttr ".i[1]" -type "matrix" -0.0034995407806006004 0.999993868979553 -0.0001233597554088066 0
		 -0.99937316044198687 -0.0035017143379133253 -0.035228173169929253 0 -0.035228389155903483 5.2041704279304213e-18 0.99937928765683381 0
		 53.266687313037714 -7.9182519595732721 0.19085193253242025 1;
createNode quatToEuler -n "LeftLeg2FKJntQE";
	rename -uid "0B497B5D-447E-622C-A5AE-E1B4C1FFBD4E";
	setAttr ".ort" -type "double3" 0 -7.9513867036587919e-16 0 ;
createNode quatProd -n "LeftLeg2FKJntQP";
	rename -uid "322BE3C5-49D0-27C2-53E1-048F204C5617";
createNode quatInvert -n "LeftLeg2FKJntQI";
	rename -uid "076C498A-486F-7297-B449-DA867E7F4B5C";
createNode eulerToQuat -n "LeftLeg2FKJntEQ";
	rename -uid "F069DD8D-48AA-91B1-FB1E-3B8B2F0755F3";
createNode decomposeMatrix -n "LeftLeg3FKJntDM";
	rename -uid "F92615AC-4FEB-209F-E7EE-0FB403D64FBA";
createNode multMatrix -n "LeftLeg3FKJntMM";
	rename -uid "FD0F4406-4FB9-165F-862B-1FA74A4688BD";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823424900525e-06 -0.99999999999924216 -1.3877787807814457e-17 0
		 0.99999999999924194 1.2311823426600232e-06 -5.8275866771095863e-18 0 6.7220534694101275e-18 -6.9388939039072284e-18 0.99999999999999989 0
		 7.9528507733571514 9.8666114249000714 0.15780977954862974 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode quatToEuler -n "LeftLeg3FKJntQE";
	rename -uid "ADAA28DF-4A10-0A92-E8AA-378945971F53";
	setAttr ".ort" -type "double3" 1.8550647300091935e-15 -3.2508322518403283e-18 -8.7190984819233917e-07 ;
createNode quatProd -n "LeftLeg3FKJntQP";
	rename -uid "5CE5A2EB-4C58-DE6D-9C63-28A50B5DAF28";
createNode quatInvert -n "LeftLeg3FKJntQI";
	rename -uid "67C64FB5-4CAF-5A55-129F-EFBE608544F7";
createNode eulerToQuat -n "LeftLeg3FKJntEQ";
	rename -uid "F186B450-43E7-9F59-1E48-0299A6D253C6";
createNode multDoubleLinear -n "LeftLegUpIK1CrvPointMD";
	rename -uid "86B5BB77-404C-2ECB-7DA5-71ABFAF30F78";
	setAttr ".i2" 10.841515115466635;
createNode multiplyDivide -n "LeftLegUpIK1DvdMD";
	rename -uid "2CAC5B71-4C02-C1C9-4F75-BD8F51B48D4A";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpIK1DB";
	rename -uid "24511642-4EC6-1ABD-277B-278F8DDDFE95";
createNode pointOnCurveInfo -n "LeftLegUpIK1PC";
	rename -uid "EFB00B94-4B5F-1779-A5D9-93A34C6BE9E5";
createNode pointOnCurveInfo -n "LeftLegUpIK2PC";
	rename -uid "D58261A4-484A-D24C-083A-49920504B2AB";
	setAttr ".pr" 0.2500000000000005;
createNode distanceBetween -n "LeftLegUpIK1ChkDB";
	rename -uid "4A16D054-4F8D-6542-F815-DEA177782C1A";
createNode pointOnCurveInfo -n "LeftLegUpIK1ChkPC";
	rename -uid "8B35667A-418A-0793-C04C-F38EDFD47A36";
createNode pointOnCurveInfo -n "LeftLegUpIK2ChkPC";
	rename -uid "04BA3F88-4063-68C3-FC01-0A8956BF11D4";
	setAttr ".pr" 0.2500000000000005;
createNode multDoubleLinear -n "LeftLegUpIK2CrvPointMD";
	rename -uid "77802CED-4CAA-AA0C-2823-D08DC98DB953";
	setAttr ".i2" 10.841515115466592;
createNode multiplyDivide -n "LeftLegUpIK2DvdMD";
	rename -uid "41139959-4FD0-C467-27F0-E89E154A96A6";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpIK2DB";
	rename -uid "5E80C4AA-4E82-FC33-86E4-58BDFB74BE7A";
createNode pointOnCurveInfo -n "LeftLegUpIK3PC";
	rename -uid "0562F7AA-4D6D-F5A8-5E7D-4B8F6DDCA8A1";
	setAttr ".pr" 0.5;
createNode distanceBetween -n "LeftLegUpIK2ChkDB";
	rename -uid "8DC517EF-4429-9B65-D1D8-E087F7F5C4BD";
createNode pointOnCurveInfo -n "LeftLegUpIK3ChkPC";
	rename -uid "069FBEB9-4BCD-7FD0-4CF1-A6A3EFFFB00B";
	setAttr ".pr" 0.5;
createNode multDoubleLinear -n "LeftLegUpIK3CrvPointMD";
	rename -uid "41ABA411-48F6-B4A6-4E6D-D183818AC3A4";
	setAttr ".i2" 10.841515115466621;
createNode multiplyDivide -n "LeftLegUpIK3DvdMD";
	rename -uid "9010E7E8-4271-DAD0-5C23-16AD29C30930";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpIK3DB";
	rename -uid "8D761D46-43EE-C572-C377-B2A674217521";
createNode pointOnCurveInfo -n "LeftLegUpIK4PC";
	rename -uid "D1B9F4A3-4CA6-F195-008C-EFBF3988C285";
	setAttr ".pr" 0.75000000000000011;
createNode distanceBetween -n "LeftLegUpIK3ChkDB";
	rename -uid "88641C3D-4175-F768-8107-E69738614E47";
createNode pointOnCurveInfo -n "LeftLegUpIK4ChkPC";
	rename -uid "8C24863D-4A1E-526A-1063-A6BAE37FB722";
	setAttr ".pr" 0.75000000000000011;
createNode multDoubleLinear -n "LeftLegUpIK4CrvPointMD";
	rename -uid "9D0D4C54-42F3-ECD9-8277-49ADA688C191";
	setAttr ".i2" 10.841515115466606;
createNode multiplyDivide -n "LeftLegUpIK4DvdMD";
	rename -uid "4A027460-4E7C-3AC1-193D-AB8670E89FFB";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpIK4DB";
	rename -uid "7D1725E9-4454-8ED7-E332-24AA060333C5";
createNode pointOnCurveInfo -n "LeftLegUpIK5PC";
	rename -uid "A3952E0B-45D1-95D1-D99F-748921B1436E";
	setAttr ".pr" 1;
createNode distanceBetween -n "LeftLegUpIK4ChkDB";
	rename -uid "915FD0A7-4215-C23B-748D-9DBCF99660EE";
createNode pointOnCurveInfo -n "LeftLegUpIK5ChkPC";
	rename -uid "A5BBD1FA-4FA4-6C51-C37F-9BA5A7A5E0CE";
	setAttr ".pr" 1;
createNode multDoubleLinear -n "LeftLegDnIK1CrvPointMD";
	rename -uid "EB1C5B59-4CA4-CA61-93D8-D3A1F4F932E2";
	setAttr ".i2" 10.843217490138095;
createNode multiplyDivide -n "LeftLegDnIK1DvdMD";
	rename -uid "17E1AAFB-418A-6D0A-2937-6B9BA661A107";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnIK1DB";
	rename -uid "8D7BD861-4791-B8C6-28B2-1C817268CD85";
createNode pointOnCurveInfo -n "LeftLegDnIK1PC";
	rename -uid "BC1042B4-49BC-8FD8-A911-FA9B8F742828";
createNode pointOnCurveInfo -n "LeftLegDnIK2PC";
	rename -uid "C05D6223-45EA-88C2-65C0-358C0361F1CF";
	setAttr ".pr" 0.25000000000000022;
createNode distanceBetween -n "LeftLegDnIK1ChkDB";
	rename -uid "B7BA05BB-4A26-43C5-680D-628820AF029D";
createNode pointOnCurveInfo -n "LeftLegDnIK1ChkPC";
	rename -uid "E7F60769-4840-08EE-CDCF-CB891962B723";
createNode pointOnCurveInfo -n "LeftLegDnIK2ChkPC";
	rename -uid "82640B1B-40DF-7C18-0D6A-DEA74B8DBA4F";
	setAttr ".pr" 0.25000000000000022;
createNode multDoubleLinear -n "LeftLegDnIK2CrvPointMD";
	rename -uid "7D5330BC-40ED-2EE2-EC6A-16AF60B3D20A";
	setAttr ".i2" 10.843217490138066;
createNode multiplyDivide -n "LeftLegDnIK2DvdMD";
	rename -uid "9A112856-42AF-81A6-199C-478342F09C6A";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnIK2DB";
	rename -uid "FFD32380-4E02-BEC3-A237-52BBAF100D93";
createNode pointOnCurveInfo -n "LeftLegDnIK3PC";
	rename -uid "43C1DF46-48C2-4EF3-38F0-E98440841BAF";
	setAttr ".pr" 0.49999999999999983;
createNode distanceBetween -n "LeftLegDnIK2ChkDB";
	rename -uid "8EA36F5F-4924-AAF2-BDE7-5BAB94C558E6";
createNode pointOnCurveInfo -n "LeftLegDnIK3ChkPC";
	rename -uid "0533545A-4001-6522-5976-44AA74895DFF";
	setAttr ".pr" 0.49999999999999983;
createNode multDoubleLinear -n "LeftLegDnIK3CrvPointMD";
	rename -uid "FF8C6766-4DF7-FD4B-A125-2A817F44121F";
	setAttr ".i2" 10.843217490138084;
createNode multiplyDivide -n "LeftLegDnIK3DvdMD";
	rename -uid "3B488E80-4B40-A8DB-7D78-C79B58DFE79E";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnIK3DB";
	rename -uid "D8593441-40BD-13C4-8210-7BA33FCC9C0F";
createNode pointOnCurveInfo -n "LeftLegDnIK4PC";
	rename -uid "2323A94A-4243-3F30-6F5A-2EB338F9918F";
	setAttr ".pr" 0.74999999999999989;
createNode distanceBetween -n "LeftLegDnIK3ChkDB";
	rename -uid "94169278-4FE1-A53E-6928-098A5B049F6F";
createNode pointOnCurveInfo -n "LeftLegDnIK4ChkPC";
	rename -uid "A5B0F577-4538-B512-E637-F6A2722C9C83";
	setAttr ".pr" 0.74999999999999989;
createNode multDoubleLinear -n "LeftLegDnIK4CrvPointMD";
	rename -uid "0C8955E1-4E1D-0617-004C-0B8199402604";
	setAttr ".i2" 10.843217490138091;
createNode multiplyDivide -n "LeftLegDnIK4DvdMD";
	rename -uid "0CFFAD91-4BD1-B0D5-3E5A-93899E52448D";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnIK4DB";
	rename -uid "EAAE004A-476C-E2C4-F2AB-E592CE2D0AAB";
createNode pointOnCurveInfo -n "LeftLegDnIK5PC";
	rename -uid "450960AF-4D7A-576E-BBFE-DAA52A2909A2";
	setAttr ".pr" 1;
createNode distanceBetween -n "LeftLegDnIK4ChkDB";
	rename -uid "D08D1257-49B0-C2A1-4B8F-42AFB92ACF24";
createNode pointOnCurveInfo -n "LeftLegDnIK5ChkPC";
	rename -uid "D5C6D05C-4A9E-B464-F42E-0288D02F3755";
	setAttr ".pr" 1;
createNode decomposeMatrix -n "LeftLeg1TwistFixGrpDM";
	rename -uid "EE16B91F-442F-87D4-DFB5-91B888F2E856";
createNode multMatrix -n "LeftLeg1TwistFixGrpMM";
	rename -uid "4D345079-4C76-E2E0-4251-2D9DECB2DFD2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.2564849853515625 96.576309204101563 2.0786147117614746 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533121529 0.99999386897955322 -3.1721667660179662e-05 0
		 -0.99995283658664502 -0.0035017143379138388 -0.0090588409313016455 0 -0.0090588964715811425 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494956712643 -7.9182517180304961 -1.2033980884180897 1;
createNode unitConversion -n "unitConversion84";
	rename -uid "8C560C1B-4B74-D10A-E923-8B86EEF6B0AD";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "LeftLeg1TwistFixUpvec_rotateZ";
	rename -uid "E00628A3-4D38-E2DA-0015-3DA37028E770";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LeftLegtwistFixVectorProduct";
	rename -uid "269EDA99-4391-3731-26F8-629032FBF318";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode decomposeMatrix -n "LeftLeg1TwsitFixTgPosDM";
	rename -uid "163A9266-47A7-522B-FC7C-ADB6FEB8CC0B";
createNode multMatrix -n "LeftLeg1TwsitFixTgPosMM";
	rename -uid "BE80AD71-46C8-59DC-DDEA-729920845E43";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020702 -0.99937316044198687 -0.035228389155903476 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.00012335975540883617 -0.035228173169929253 0.99937928765683359 0
		 8.1046356547272165 53.212292331310358 1.6857660442348703 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "6542E7D2-4E36-B869-A857-98A9C86815A9";
createNode decomposeMatrix -n "LeftLegIKhDM";
	rename -uid "9FFA89E6-404B-8087-D058-9CBAE8FF2328";
createNode multMatrix -n "LeftLegIKhMM";
	rename -uid "F7B0A932-455D-A69A-A9E3-BC95FF193A32";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.952850773357155 9.8666114249000714 0.15780977954862974 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode decomposeMatrix -n "LeftLegPVSysGrpDM";
	rename -uid "50D77008-4B48-883F-A168-75A50CC64A9A";
createNode multMatrix -n "LeftLegPVSysGrpMM";
	rename -uid "B552A0DA-44EF-70A4-79D0-52864E611D8F";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" -0.003501570653314356 -0.99995283658664458 -0.009058896471581139 0
		 0.99999386897955289 -0.0035017143379136857 0 0 -3.1721667660213747e-05 -0.0090588409313016455 0.99995896735551948 0
		 8.2564852252189773 96.576308725247912 2.0786147734317151 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533146214 0.99999386897955322 -3.1721667660217345e-05 0
		 -0.99995283658664502 -0.0035017143379138527 -0.0090588409313016455 0 -0.0090588964715811425 9.7578195523695399e-19 0.9999589673555197 0
		 96.619494479280164 -7.9182519595732481 -1.2033981544160495 1;
createNode unitConversion -n "unitConversion80";
	rename -uid "DF81B770-4737-75C7-E12B-C48829E09E76";
	setAttr ".cf" 0.017453292519943295;
createNode multDoubleLinear -n "LeftLegTwistRvsML";
	rename -uid "BCF91DA2-4307-2CB4-6B0D-39845BDF1FBD";
	setAttr ".i2" -1;
createNode animCurveUA -n "LeftLegPVUpvec_rotateZ";
	rename -uid "E9FA8486-4C3D-E914-4858-C1A2370CEA34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LeftLegPVVP";
	rename -uid "3A9C6AB2-47B2-AFAC-91FB-56BC9FED131F";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode decomposeMatrix -n "LeftLegPVTgPosDM";
	rename -uid "4C19BFDE-4B25-D5C5-D642-8D82DA04B6DB";
createNode multMatrix -n "LeftLegPVTgPosMM";
	rename -uid "FD4651CE-4666-8485-95AD-91AE68932790";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427425593e-06 -0.99999999999924205 -3.4694469519536142e-18 0
		 0.99999999999924194 1.2311823429128094e-06 1.5382118322138094e-18 0 -6.2341624917916505e-19 -1.7347234759768071e-18 0.99999999999999989 0
		 7.952850773357155 9.8666114249000998 0.1578097795486304 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode decomposeMatrix -n "LeftLegIKMovePosDM";
	rename -uid "0708179C-4146-A5D6-2998-1ABB459ABB96";
createNode multMatrix -n "LeftLegIKMovePosMM";
	rename -uid "ED46D67C-4025-6660-F650-55B0B4D1A0A7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.952850773357155 9.8666114249000998 0.15780977954863018 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode decomposeMatrix -n "LeftLegPVStretchPosDM";
	rename -uid "4567C2DF-4125-1D0B-C590-F1BE6E7E7760";
createNode multMatrix -n "LeftLegPVStretchPosMM";
	rename -uid "D13BD9B5-4002-499E-A6F7-BD85DA5FA5AD";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999386897955311 -0.0035017143379137993 -3.3881317890172014e-21 0
		 0.0035015706533142997 0.99995283658664469 0.0090588964715811199 0 -3.1721667660212331e-05 -0.0090588409313016264 0.99995896735551959 0
		 8.1046355833391708 53.21220296640729 1.695765711000895 1;
	setAttr ".i[1]" -type "matrix" 0.99999386897955322 0.0035015706533154953 -3.1721667660226818e-05 0
		 -0.0035017143379137416 0.99995283658664502 -0.0090588409313016247 0 4.3368086899420177e-19 0.0090588964715811269 0.99995896735551981 0
		 -7.918251959573249 -53.253434017413703 -1.2133981544160517 1;
createNode decomposeMatrix -n "LeftLeg1ArcPosDM";
	rename -uid "A3F8DC91-4B6A-9CB7-59A3-04A8A1AF8E4F";
createNode multMatrix -n "LeftLeg1ArcPosMM";
	rename -uid "D1AA8A22-44B1-370E-583A-D1A9D7CD0E19";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.2564849853515625 96.576309204101563 2.0786147117614746 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533121529 0.99999386897955322 -3.1721667660179662e-05 0
		 -0.99995283658664502 -0.0035017143379138388 -0.0090588409313016455 0 -0.0090588964715811425 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494956712643 -7.9182517180304961 -1.2033980884180897 1;
createNode decomposeMatrix -n "LeftLeg2ArcPosDM";
	rename -uid "D65549E1-4D01-C054-D8F4-BBACDF562C41";
createNode multMatrix -n "LeftLeg2ArcPosMM";
	rename -uid "02888EBC-4D8D-7E19-031B-EDB501527374";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.003499540780601551 -0.99937316044198687 -0.035228389155903476 0
		 0.99999386897955311 -0.0035017143379134641 -3.4694469519536142e-18 0 -0.00012335975540882227 -0.035228173169929253 0.99937928765683359 0
		 8.1046356547272165 53.212292331310373 1.6857660442348701 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode decomposeMatrix -n "LeftLeg3ArcPosDM";
	rename -uid "D9EF7752-465B-F300-F47E-50BE1C9C3EE8";
createNode multMatrix -n "LeftLeg3ArcPosMM";
	rename -uid "F9B954A9-49A0-6813-C62E-CE8C93505C1C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.9528505224948782 9.8666087639220521 0.15780965178458195 1;
	setAttr ".i[1]" -type "matrix" 1.2311823428557471e-06 0.99999999999924205 -1.381435695146593e-16 -2.6469779601696886e-23
		 -0.99999999999924205 1.2311823425203983e-06 1.3183898417423734e-16 1.3877787807814457e-17
		 1.3877804296545615e-16 1.3392590249529741e-16 1.0000000000000002 -3.0814879110195774e-33
		 9.8665989725054359 -7.9528626700833422 -0.1578096517845822 0.99999999999999989;
createNode distanceBetween -n "LeftLegDnArcDB";
	rename -uid "EA7DDF44-4843-1FA9-F019-4E8A2392E3B1";
createNode multDoubleLinear -n "LeftLegArcDistMultML";
	rename -uid "48D6BD93-434A-7BCF-C336-F38561F21617";
	setAttr ".i2" 3;
createNode addDoubleLinear -n "LeftLegArcDistSumALAL";
	rename -uid "5E7D280D-4C3F-6354-76B6-F18CFFE06CAC";
createNode distanceBetween -n "LeftLegUpArcDB";
	rename -uid "D57A627A-4162-A4A2-6D8A-4F88F6876A93";
createNode rebuildCurve -n "LeftLegUpArcCrvRC";
	rename -uid "220895E5-480C-5A73-4359-038F6B848876";
	setAttr ".s" 2;
	setAttr ".kr" 0;
createNode detachCurve -n "LeftLegArcDC";
	rename -uid "ADD4C825-4C0C-B0C5-EDD6-B0A41ED5D19A";
	setAttr -s 2 ".oc";
createNode makeThreePointCircularArc -n "LeftLegTPC";
	rename -uid "B5E165F5-486B-E6E1-480A-EEB86514BB98";
	setAttr ".s" 10;
createNode setRange -n "LeftLegAngleSR";
	rename -uid "7D3D46EE-46A0-B423-29BC-9EBE9D04596A";
createNode addDoubleLinear -n "LeftLegAngleAL";
	rename -uid "A29A3A50-4E10-DCE9-B62F-10B09DAC371F";
createNode unitConversion -n "unitConversion81";
	rename -uid "A3831078-4D4D-3FC8-FC36-8082C51C59E8";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LeftLegOutAG";
	rename -uid "0A4E2A47-4B9A-7699-A434-88A2AF982578";
createNode plusMinusAverage -n "LeftLegVec3ToArcPA";
	rename -uid "CD7BD2B9-4AF7-EEF2-69D6-7F9DE47DB19E";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LeftLegVec3To1PA";
	rename -uid "67836BF9-46DE-006D-F0D5-A1ACA8594FAA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion82";
	rename -uid "03A5456C-4A67-B31A-89EE-EAA829D737F3";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LeftLegInAG";
	rename -uid "75585652-4021-57A2-F8D3-879FC51E2C08";
createNode plusMinusAverage -n "LeftLegVecArcTo1PA";
	rename -uid "C041C25E-42D8-F012-03A6-C984B47F9D17";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion83";
	rename -uid "A72413AE-4B98-7701-995C-00A0DAE699CD";
	setAttr ".cf" 57.295779513082323;
createNode rebuildCurve -n "LeftLegDnArcCrvRC";
	rename -uid "974A8E49-4C24-0159-542C-E3A4ACCB9C9C";
	setAttr ".s" 2;
	setAttr ".kr" 0;
createNode decomposeMatrix -n "LeftLegUpIKChkCrvDM";
	rename -uid "A479810A-43E6-57AB-7C9A-A2BDF1EDC916";
createNode multMatrix -n "LeftLegUpIKChkCrvMM";
	rename -uid "513DE878-4810-3265-04DF-EDAC67C81F23";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533121529 0.99999386897955322 -3.1721667660179662e-05 0
		 -0.99995283658664502 -0.0035017143379138388 -0.0090588409313016455 0 -0.0090588964715811425 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494956712643 -7.9182517180304961 -1.2033980884180897 1;
createNode decomposeMatrix -n "LeftLegDnIKChkCrvDM";
	rename -uid "9F106504-4C02-F745-A88D-04AFF551CD47";
createNode multMatrix -n "LeftLegDnIKChkCrvMM";
	rename -uid "198C8BB9-4F22-C0BB-11E6-0AA3B18E5476";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "F0D1C847-4F42-F239-807A-EB82694E63E0";
createNode decomposeMatrix -n "LeftAnkleConsGrpDM";
	rename -uid "1DBD5595-42A2-35EB-C5D0-19A587876EAE";
createNode multMatrix -n "LeftAnkleConsGrpMM";
	rename -uid "1643B18E-4D10-31B3-BAB7-AF91B0B6F296";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.9528505224948782 9.8666087639220521 0.15780965178458195 1;
	setAttr ".i[1]" -type "matrix" 1.2311823428557471e-06 0.99999999999924205 -1.381435695146593e-16 -2.6469779601696886e-23
		 -0.99999999999924205 1.2311823425203983e-06 1.3183898417423734e-16 1.3877787807814457e-17
		 1.3877804296545615e-16 1.3392590249529741e-16 1.0000000000000002 -3.0814879110195774e-33
		 9.8665989725054359 -7.9528626700833422 -0.1578096517845822 0.99999999999999989;
createNode blendColors -n "LeftAnkleFKScaleBC";
	rename -uid "01BEB844-489D-7CF3-B6F5-AB88E4A50068";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "LeftAnkleIKScaleBC";
	rename -uid "D444EF94-4196-2927-E52F-5C9CA35DFA65";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode decomposeMatrix -n "LeftAnkleIKJntGrpDM";
	rename -uid "551066A5-4A0F-F18A-3D69-A391991C45A2";
createNode multMatrix -n "LeftAnkleIKJntGrpMM";
	rename -uid "92341B90-4795-798A-BF44-719E337C9EFA";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823425203985e-06 -0.99999999999924238 0 0 0.99999999999924238 1.2311823425203985e-06 0 0
		 0 0 1 0 7.952850773357155 9.8666114249000714 0.15780977954862979 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161895e-06 0.99999999999924227 4.7900441086169731e-18 0
		 -0.99999999999924205 1.2311823425203983e-06 -1.7347234759768071e-17 0 -6.9389021799755108e-18 -6.7220449263613834e-18 1.0000000000000002 0
		 9.8666016334831461 -7.9528629209488964 -0.15780977954862968 1;
createNode decomposeMatrix -n "LeftBallIKCtrlPrtGrpDM";
	rename -uid "FCAF0AF8-4944-2F99-4F6C-E5BCF991E4B1";
createNode multMatrix -n "LeftBallIKCtrlPrtGrpMM";
	rename -uid "14EA66DC-45A9-B348-D561-F3A646477A8D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 5.5128134065263114e-07 -0.44776579521410714 0.89415087800436366 0
		 0.99999999999924238 1.2311823425203985e-06 0 0 -1.1008627725480834e-06 0.8941508780036862 0.44776579521444637 0
		 7.952850773357155 9.866611424900114 0.15780977954863062 1;
	setAttr ".i[1]" -type "matrix" 5.51281340619675e-07 0.99999999999924172 -1.1008627724772899e-06 0
		 -0.44776579521410692 1.231182342409376e-06 0.89415087800368587 0 0.89415087800436377 -5.5511151231257827e-17 0.44776579521444643 0
		 4.2768209735396727 -7.9528629209488919 -8.892892334930492 1;
createNode decomposeMatrix -n "LeftBallIKCtrlGrpDM";
	rename -uid "C53E2327-4A66-8622-A988-8A97F0C323AC";
createNode multMatrix -n "LeftBallIKCtrlGrpMM";
	rename -uid "536E222B-4108-7F2E-7C04-B7837F7FCB16";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.0587911840678754e-22 -2.2204460492503131e-16 1 0
		 0.99999999999924227 1.2311823425203983e-06 0 0 -1.2311823425203981e-06 0.99999999999924205 2.2204460492503131e-16 0
		 7.9528590668955195 3.1303717130773263 13.609517607959539 1;
	setAttr ".i[1]" -type "matrix" -3.7773999505995417e-16 0.99999999999924172 -1.2311823424407499e-06 0
		 2.7755555102713874e-16 1.2311823425203976e-06 0.99999999999924183 0 1 0 -2.7755575615628914e-16 0
		 -13.609517607959541 -7.9528629209478687 -3.1303619216552994 1;
createNode decomposeMatrix -n "LeftBallFKJntDM";
	rename -uid "20B2732C-4893-7A73-84C0-A5A5C3497BBB";
createNode multMatrix -n "LeftBallFKJntMM";
	rename -uid "64B6602A-4163-6298-1001-1CB8B287230C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -3.1763735522036263e-22 2.7755575615628914e-16 1 0
		 0.99999999999924238 1.2311823425203985e-06 0 0 -1.2311823425203985e-06 0.99999999999924238 -2.7755575615628914e-16 0
		 7.9528590668955221 3.1303717130773299 13.609517607959541 1;
	setAttr ".i[1]" -type "matrix" 1.3220899827098495e-14 0.99999999999924216 -1.2311821904319823e-06 0
		 1.6210841920564715e-20 1.2311821905863771e-06 0.99999999999924194 0 0.99999999999999978 -1.3433698597964394e-14 -2.7755575615628914e-17 0
		 -13.609517607959644 -7.9528629209472133 -3.1303619216565117 1;
createNode quatToEuler -n "LeftBallFKJntQE";
	rename -uid "C728136D-49FF-1A6D-E0BA-FCB8DFACA6B8";
createNode quatProd -n "LeftBallFKJntQP";
	rename -uid "15CEA796-44B2-DF38-2D72-0F9E71040EAB";
createNode quatInvert -n "LeftBallFKJntQI";
	rename -uid "123F9743-4008-C90E-4B7D-C384C3F1A78C";
createNode eulerToQuat -n "LeftBallFKJntEQ";
	rename -uid "2093574B-4C20-E64D-59E6-7DB2E485F581";
createNode blendColors -n "LeftAnkleDrvJntTrsBC";
	rename -uid "23238053-4ECC-57F0-5130-7C970CE98302";
createNode pairBlend -n "LeftAnkleDrvJntRotPB";
	rename -uid "7CFCB69B-4A1B-C754-6993-EAB6AD2A46EF";
	setAttr ".ri" 1;
createNode blendColors -n "LeftBallDrvJntTrsBC";
	rename -uid "92B071F0-4BA1-E1DF-7B8D-7990E88AF7F0";
createNode decomposeMatrix -n "LeftBallTrsDM";
	rename -uid "25E00DA9-46F3-072D-6BC9-9FA84A9B1987";
createNode multMatrix -n "LeftBallTrsMM";
	rename -uid "4D6797F7-431C-58B5-0CAD-C6BB4FD3CADC";
	setAttr -s 2 ".i";
createNode pairBlend -n "LeftBallDrvJntRotPB";
	rename -uid "7EA0DA06-4D50-0177-60CF-DEA53FD7A5A2";
	setAttr ".ri" 1;
createNode decomposeMatrix -n "LeftBallRotDM";
	rename -uid "BAEC95DE-460C-0BD5-51C3-EAB6BAFC9C28";
createNode multMatrix -n "LeftBallRotMM";
	rename -uid "F58932EB-4176-D635-7F04-079A3A5FCE4C";
	setAttr -s 3 ".i";
createNode inverseMatrix -n "LeftBallIKJntOrIM";
	rename -uid "5F80C04E-40C6-85FF-1E4A-C0A36D059AC7";
	setAttr ".omat" -type "matrix" 0.89415087800436344 0 -0.4477657952144467 0 0 1 0 0
		 0.4477657952144467 0 0.89415087800436366 0 0 0 0 1;
createNode composeMatrix -n "LeftBallIKJntOrCM";
	rename -uid "D74341CB-40FE-3130-EABD-0E8F94CEACDD";
	setAttr ".omat" -type "matrix" 0.89415087800436355 0 0.44776579521444665 0 -0 1 0 0
		 -0.44776579521444665 -0 0.89415087800436355 0 0 0 0 1;
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
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 2 ;
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
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "CF6B5F4A-4DFB-DE9E-472F-DA8F5A162C87";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -378.57141352835214 -393.31802718440139 ;
	setAttr ".tgi[0].vh" -type "double2" 492.85712327276025 495.69897549710043 ;
createNode reference -n "LRN";
	rename -uid "6E5D8A30-4113-59A3-9785-D4B2F2E493FD";
	setAttr -s 8 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"LRN"
		"LRN" 0
		"LRN" 17
		2 "|L:FitLeg|L:FitLegRoot" "translate" " -type \"double3\" 8.2564849853515625 96.5763092041015625 2.07861471176147461"
		
		2 "|L:FitLeg|L:FitLegRoot" "rotate" " -type \"double3\" 0 0 0"
		2 "|L:FitLeg|L:FitLegRoot|L:FitHip" "translate" " -type \"double3\" 0 0 0"
		
		2 "|L:FitLeg|L:FitLegRoot|L:FitHip" "rotate" " -type \"double3\" 0 0 0"
		2 "|L:FitLeg|L:FitLegRoot|L:FitHip|L:FitKnee" "translate" " -type \"double3\" 43.36401748657226563 -0.15184974670411044 -0.39284861087799072"
		
		2 "|L:FitLeg|L:FitLegRoot|L:FitHip|L:FitKnee" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|L:FitLeg|L:FitLegRoot|L:FitHip|L:FitKnee|L:FitAnkle" "translate" " -type \"double3\" 43.34568309783935547 -0.1517848968505966 -1.52795645594596863"
		
		2 "|L:FitLeg|L:FitLegRoot|L:FitHip|L:FitKnee|L:FitAnkle" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|L:FitLeg|L:LegRootJnt|L:HipJnt|L:KneeJnt" "rotate" " -type \"double3\" 0 0 0"
		
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt.worldMatrix" "LRN.placeHolderList[1]" 
		""
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt|L:HipJnt.Length" "LRN.placeHolderList[2]" 
		""
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt|L:HipJnt.worldMatrix" "LRN.placeHolderList[3]" 
		""
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt|L:HipJnt.worldMatrix" "LRN.placeHolderList[4]" 
		""
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt|L:HipJnt.worldMatrix" "LRN.placeHolderList[5]" 
		""
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt|L:HipJnt|L:KneeJnt.Length" "LRN.placeHolderList[6]" 
		""
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt|L:HipJnt|L:KneeJnt.worldMatrix" "LRN.placeHolderList[7]" 
		""
		5 3 "LRN" "|L:FitLeg|L:LegRootJnt|L:HipJnt|L:KneeJnt|L:AnkleJnt.worldMatrix" 
		"LRN.placeHolderList[8]" "";
lockNode -l 1 ;
createNode multMatrix -n "L:LegRootJnt2LeftLegRootCtrlGrpMM";
	rename -uid "E7876ACD-43D1-208C-246C-2CB065AE164B";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1.3402655263963998e-15 0.99999999999999989 -2.884657390402716e-17 -1.5407439555097887e-33
		 -1 2.2204460492503131e-16 3.4694469519536142e-18 1.7347234759768071e-18 0 0 1 0 1.4210854715202004e-14 -1.7763568394002505e-15 -4.4408920985006262e-16 1;
createNode decomposeMatrix -n "L:LegRootJnt2LeftLegRootCtrlGrpDM";
	rename -uid "ABB28096-4B8B-48B1-F138-4FB341AEE46D";
createNode multMatrix -n "L:AnkleJnt2LeftLegIKCtrlGrpMM";
	rename -uid "86062E2D-4A1F-4CB8-751C-BEBE8BAE3782";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995351833393214 0.99999386892726128 -0.00012394106563891558 5.4210108624275222e-20
		 -0.99937316047702696 -0.0035017292227478292 -0.035228170696319019 1.3877787807814457e-17
		 -0.035228388717893473 5.8115168399472394e-07 0.99937928767210471 4.3368086899420177e-19
		 -1.2001452276422242e-06 4.2173462855288335e-07 2.6042172140972042e-08 1;
createNode decomposeMatrix -n "L:AnkleJnt2LeftLegIKCtrlGrpDM";
	rename -uid "46F92F82-42F4-563C-D107-4B829460E275";
createNode multMatrix -n "L:KneeJnt2LeftLegPoleVectorCtrlGrpMM";
	rename -uid "1D3B9552-4432-8191-7EBE-9C8A37D97DED";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 5.5973518610885423e-09 0.99999999999983102 -5.8131532789350632e-07 0
		 -0.99965741082351789 -9.6197221194485434e-09 -0.026173669701068353 0 -0.026173669701069512 5.8126267881413671e-07 0.99965741082334847 0
		 -0.00026357586921221809 6.6128328501946498e-07 0.0099965297327240243 1;
createNode decomposeMatrix -n "L:KneeJnt2LeftLegPoleVectorCtrlGrpDM";
	rename -uid "95BD4420-4D7D-C06F-76DC-C48CD4D5913C";
createNode multMatrix -n "L:HipJnt2LeftThighFKCtrlGrpOffGrpMM";
	rename -uid "51211C19-46D2-DBEB-7FC7-BABFADA1B481";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999967 9.619722062214461e-09 -1.0971924219865814e-09 0
		 -9.6197241921357202e-09 0.99999999999983058 -5.8126267883093019e-07 0 1.0971868344422653e-09 5.812626788128831e-07 0.9999999999998308 0
		 4.7743249353970896e-07 2.4154279376631393e-07 6.5997818321505974e-08 1;
createNode decomposeMatrix -n "L:HipJnt2LeftThighFKCtrlGrpOffGrpDM";
	rename -uid "C41A6EDD-436F-230F-0C5F-BCBAFC7BEB4A";
createNode multMatrix -n "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpMM";
	rename -uid "678B3E45-4048-63BE-D12E-D4B02990F76F";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1.0000000000000002 -5.5973499858117873e-09 -4.382787466283844e-10 0
		 5.5973508613317968e-09 0.99999999999983091 -5.8131532792527217e-07 0 4.3828204260298875e-10 5.8131532797473953e-07 0.99999999999983058 0
		 -1.8391721994248655e-06 6.5547065730697796e-07 -4.4375143337660461e-08 1;
createNode decomposeMatrix -n "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpDM";
	rename -uid "B1C3F9DF-4D3D-9392-E666-63B80D999C5D";
createNode multMatrix -n "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpMM";
	rename -uid "16E7A35F-4EBF-113E-053F-5695F6D11E15";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.9993731561677035 0.0035029603975397822 0.03522817054369827 -1.3877787741061409e-17
		 -0.003500765593925992 0.99999386461523609 -0.0001239844379405618 5.4227194711544057e-20
		 -0.035228388717893473 5.8115168399472394e-07 0.99937928767210471 4.3368086899420177e-19
		 -1.2001452560639336e-06 4.2173464542827332e-07 2.6042172474038949e-08 1;
createNode decomposeMatrix -n "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpDM";
	rename -uid "CB74E5E8-4C94-9DCA-F116-82888B9E66AE";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7C8EEADB-4CCD-A845-6336-079AB479F57C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 2057.4088476663296 324.50389336662124 ;
	setAttr ".tgi[0].vh" -type "double2" 3973.9210715535892 1064.0771525053656 ;
	setAttr -s 78 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 3558.571533203125;
	setAttr ".tgi[0].ni[0].y" -510;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 3388.571533203125;
	setAttr ".tgi[0].ni[1].y" 771.4285888671875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 4797.14306640625;
	setAttr ".tgi[0].ni[2].y" 57.142856597900391;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -1218.5714111328125;
	setAttr ".tgi[0].ni[3].y" 1125.7142333984375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -297.14285278320313;
	setAttr ".tgi[0].ni[4].y" 1005.7142944335938;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 3875.71435546875;
	setAttr ".tgi[0].ni[5].y" -344.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 4490;
	setAttr ".tgi[0].ni[6].y" -422.85714721679688;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 3558.571533203125;
	setAttr ".tgi[0].ni[7].y" -408.57144165039063;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 10;
	setAttr ".tgi[0].ni[8].y" 1021.4285888671875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 2160;
	setAttr ".tgi[0].ni[9].y" 1130;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 931.4285888671875;
	setAttr ".tgi[0].ni[10].y" 891.4285888671875;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 5411.4287109375;
	setAttr ".tgi[0].ni[11].y" -467.14285278320313;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 5411.4287109375;
	setAttr ".tgi[0].ni[12].y" -585.71429443359375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 5104.28564453125;
	setAttr ".tgi[0].ni[13].y" -530;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1852.857177734375;
	setAttr ".tgi[0].ni[14].y" 1115.7142333984375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 3558.571533203125;
	setAttr ".tgi[0].ni[15].y" -205.71427917480469;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -604.28570556640625;
	setAttr ".tgi[0].ni[16].y" 1005.7142944335938;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 6025.71435546875;
	setAttr ".tgi[0].ni[17].y" 1364.2857666015625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -911.4285888671875;
	setAttr ".tgi[0].ni[18].y" 1125.7142333984375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 6025.71435546875;
	setAttr ".tgi[0].ni[19].y" 72.857139587402344;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 5718.5712890625;
	setAttr ".tgi[0].ni[20].y" -28.571428298950195;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1545.7142333984375;
	setAttr ".tgi[0].ni[21].y" 1091.4285888671875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 624.28570556640625;
	setAttr ".tgi[0].ni[22].y" 892.85711669921875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 4092.857177734375;
	setAttr ".tgi[0].ni[23].y" 671.4285888671875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 5411.4287109375;
	setAttr ".tgi[0].ni[24].y" 57.142856597900391;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 5718.5712890625;
	setAttr ".tgi[0].ni[25].y" -548.5714111328125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 2467.142822265625;
	setAttr ".tgi[0].ni[26].y" 871.4285888671875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 5014.28564453125;
	setAttr ".tgi[0].ni[27].y" 394.28570556640625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 5104.28564453125;
	setAttr ".tgi[0].ni[28].y" 32.857143402099609;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 3695.71435546875;
	setAttr ".tgi[0].ni[29].y" 644.28570556640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 5104.28564453125;
	setAttr ".tgi[0].ni[30].y" -380;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 10;
	setAttr ".tgi[0].ni[31].y" 920;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 6025.71435546875;
	setAttr ".tgi[0].ni[32].y" -28.571428298950195;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 4400;
	setAttr ".tgi[0].ni[33].y" 695.71429443359375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 5718.5712890625;
	setAttr ".tgi[0].ni[34].y" -187.14285278320313;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 6025.71435546875;
	setAttr ".tgi[0].ni[35].y" -130;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 4707.14306640625;
	setAttr ".tgi[0].ni[36].y" 671.4285888671875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 4490;
	setAttr ".tgi[0].ni[37].y" -321.42855834960938;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 6025.71435546875;
	setAttr ".tgi[0].ni[38].y" -317.14285278320313;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1545.7142333984375;
	setAttr ".tgi[0].ni[39].y" 990;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 5718.5712890625;
	setAttr ".tgi[0].ni[40].y" 544.28570556640625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 5104.28564453125;
	setAttr ".tgi[0].ni[41].y" -68.571426391601563;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 4797.14306640625;
	setAttr ".tgi[0].ni[42].y" -44.285713195800781;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 2467.142822265625;
	setAttr ".tgi[0].ni[43].y" 770;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2774.28564453125;
	setAttr ".tgi[0].ni[44].y" 822.85711669921875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 5718.5712890625;
	setAttr ".tgi[0].ni[45].y" 304.28570556640625;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 6025.71435546875;
	setAttr ".tgi[0].ni[46].y" -548.5714111328125;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 2467.142822265625;
	setAttr ".tgi[0].ni[47].y" 972.85711669921875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 3388.571533203125;
	setAttr ".tgi[0].ni[48].y" 670;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 5718.5712890625;
	setAttr ".tgi[0].ni[49].y" -447.14285278320313;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 5718.5712890625;
	setAttr ".tgi[0].ni[50].y" -650;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 3558.571533203125;
	setAttr ".tgi[0].ni[51].y" -307.14285278320313;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 4797.14306640625;
	setAttr ".tgi[0].ni[52].y" -202.85714721679688;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 5718.5712890625;
	setAttr ".tgi[0].ni[53].y" 1364.2857666015625;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 6025.71435546875;
	setAttr ".tgi[0].ni[54].y" -881.4285888671875;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 5411.4287109375;
	setAttr ".tgi[0].ni[55].y" -44.285713195800781;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -297.14285278320313;
	setAttr ".tgi[0].ni[56].y" 904.28570556640625;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 5321.4287109375;
	setAttr ".tgi[0].ni[57].y" 414.28570556640625;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 6025.71435546875;
	setAttr ".tgi[0].ni[58].y" -650;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -297.14285278320313;
	setAttr ".tgi[0].ni[59].y" 1107.142822265625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 5321.4287109375;
	setAttr ".tgi[0].ni[60].y" 255.71427917480469;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 5718.5712890625;
	setAttr ".tgi[0].ni[61].y" 72.857139587402344;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 317.14285278320313;
	setAttr ".tgi[0].ni[62].y" 778.5714111328125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1545.7142333984375;
	setAttr ".tgi[0].ni[63].y" 1192.857177734375;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 5014.28564453125;
	setAttr ".tgi[0].ni[64].y" 645.71429443359375;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 5718.5712890625;
	setAttr ".tgi[0].ni[65].y" 202.85714721679688;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 1852.857177734375;
	setAttr ".tgi[0].ni[66].y" 1014.2857055664063;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 5718.5712890625;
	setAttr ".tgi[0].ni[67].y" -345.71429443359375;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1238.5714111328125;
	setAttr ".tgi[0].ni[68].y" 948.5714111328125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 3081.428466796875;
	setAttr ".tgi[0].ni[69].y" 718.5714111328125;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 2160;
	setAttr ".tgi[0].ni[70].y" 1028.5714111328125;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 5321.4287109375;
	setAttr ".tgi[0].ni[71].y" 520;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 4182.85693359375;
	setAttr ".tgi[0].ni[72].y" -267.14285278320313;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 4797.14306640625;
	setAttr ".tgi[0].ni[73].y" -450;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 3695.71435546875;
	setAttr ".tgi[0].ni[74].y" 745.71429443359375;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -604.28570556640625;
	setAttr ".tgi[0].ni[75].y" 1107.142822265625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 5321.4287109375;
	setAttr ".tgi[0].ni[76].y" 621.4285888671875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 6025.71435546875;
	setAttr ".tgi[0].ni[77].y" -751.4285888671875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
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
	setAttr -s 3 ".sol";
connectAttr "LRN.phl[1]" "L:LegRootJnt2LeftLegRootCtrlGrpMM.i[1]";
connectAttr "LRN.phl[2]" "LeftLegUpTxML.i2";
connectAttr "LRN.phl[3]" "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpMM.i[1]";
connectAttr "LRN.phl[4]" "L:HipJnt2LeftThighFKCtrlGrpOffGrpMM.i[1]";
connectAttr "LRN.phl[5]" "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpMM.i[1]";
connectAttr "LRN.phl[6]" "LeftLegDnTxML.i2";
connectAttr "LRN.phl[7]" "L:KneeJnt2LeftLegPoleVectorCtrlGrpMM.i[1]";
connectAttr "LRN.phl[8]" "L:AnkleJnt2LeftLegIKCtrlGrpMM.i[1]";
connectAttr "LeftLegCtrlGrp.msg" "LeftLegRigGrp.Grp[0]";
connectAttr "LeftLegSysGrp.msg" "LeftLegRigGrp.Grp[1]";
connectAttr "LeftLegJntGrp.msg" "LeftLegRigGrp.Grp[2]";
connectAttr "LeftLeg1IKJnt.msg" "LeftLegRigGrp.IKJnt[0]";
connectAttr "LeftLeg2IKJnt.msg" "LeftLegRigGrp.IKJnt[1]";
connectAttr "LeftLeg3IKJnt.msg" "LeftLegRigGrp.IKJnt[2]";
connectAttr "LeftLeg1FKJnt.msg" "LeftLegRigGrp.FKJnt[0]";
connectAttr "LeftLeg2FKJnt.msg" "LeftLegRigGrp.FKJnt[1]";
connectAttr "LeftLeg3FKJnt.msg" "LeftLegRigGrp.FKJnt[2]";
connectAttr "LeftLeg1DrvJnt.msg" "LeftLegRigGrp.DrvJnt[0]";
connectAttr "LeftLeg2DrvJnt.msg" "LeftLegRigGrp.DrvJnt[1]";
connectAttr "LeftLeg3DrvJnt.msg" "LeftLegRigGrp.DrvJnt[2]";
connectAttr "LeftLegIKCtrl.msg" "LeftLegRigGrp.Ctrl[0]";
connectAttr "LeftThighFKCtrl.msg" "LeftLegRigGrp.Ctrl[1]";
connectAttr "LeftKneeFKCtrl.msg" "LeftLegRigGrp.Ctrl[2]";
connectAttr "LeftAnkleFKCtrl.msg" "LeftLegRigGrp.Ctrl[3]";
connectAttr "LeftLegIKFKCtrl.msg" "LeftLegRigGrp.Ctrl[4]";
connectAttr "LeftLegPoleVectorCtrl.msg" "LeftLegRigGrp.Ctrl[5]";
connectAttr "LeftLegRootCtrl.msg" "LeftLegRigGrp.Ctrl[6]";
connectAttr "LeftBallFKCtrl.msg" "LeftLegRigGrp.Ctrl[7]";
connectAttr "LeftLegIKCtrlPos.msg" "LeftLegRigGrp.Pos[0]";
connectAttr "LeftAnkleFKCtrlPos.msg" "LeftLegRigGrp.Pos[1]";
connectAttr "LeftLegPVPos.msg" "LeftLegRigGrp.Pos[2]";
connectAttr "LeftLeg1TwistFixPos.msg" "LeftLegRigGrp.Pos[3]";
connectAttr "LeftLeg2TwistFixPos.msg" "LeftLegRigGrp.Pos[4]";
connectAttr "LeftLeg3TwistFixPos.msg" "LeftLegRigGrp.Pos[5]";
connectAttr "LeftLegIKUU.msg" "LeftLegRigGrp.AnimCrv[0]";
connectAttr "LeftLegFKUU.msg" "LeftLegRigGrp.AnimCrv[1]";
connectAttr "LeftLeg1ArcPos.msg" "LeftLegRigGrp.Arc[0]";
connectAttr "LeftLeg2ArcPos.msg" "LeftLegRigGrp.Arc[1]";
connectAttr "LeftLeg3ArcPos.msg" "LeftLegRigGrp.Arc[2]";
connectAttr "LeftLegIKScaleBC.msg" "LeftLegRigGrp.ScaleBlend[0]";
connectAttr "LeftLegFKScaleBC.msg" "LeftLegRigGrp.ScaleBlend[1]";
connectAttr "L:LegRootJnt2LeftLegRootCtrlGrpDM.ot" "LeftLegRootCtrlGrp.t";
connectAttr "L:LegRootJnt2LeftLegRootCtrlGrpDM.or" "LeftLegRootCtrlGrp.r";
connectAttr "L:AnkleJnt2LeftLegIKCtrlGrpDM.ot" "LeftLegIKCtrlGrp.t";
connectAttr "LeftLegAutoHideCD.ocr" "LeftLegIKCtrlGrp.v";
connectAttr "LeftLegIKCtrl.ConstCtrlVis" "LeftLegIKConstCtrlShape.v";
connectAttr "LeftLegIKCtrlPosDM.ot" "LeftLegIKCtrlPos.t";
connectAttr "LeftFootInPivPos.c" "LeftFootInRotPos.rp";
connectAttr "LeftFootInPivPos.c" "LeftFootInRotPos.sp";
connectAttr "LeftFootInRotPos_rotateX.o" "LeftFootInRotPos.rx";
connectAttr "LeftFootOutPivPos.c" "LeftFootOutRotPos.rp";
connectAttr "LeftFootOutPivPos.c" "LeftFootOutRotPos.sp";
connectAttr "LeftFootOutRotPos_rotateX.o" "LeftFootOutRotPos.rx";
connectAttr "LeftHeelMvPivPos.c" "LeftHeelRollPivPos.rp";
connectAttr "LeftHeelMvPivPos.c" "LeftHeelRollPivPos.sp";
connectAttr "LeftHeelRollPivPos_rotateY.o" "LeftHeelRollPivPos.ry";
connectAttr "LeftHeelRollPivPos_rotateZ.o" "LeftHeelRollPivPos.rz";
connectAttr "LeftToeMvPivPos.c" "LeftToeRollPivPos.rp";
connectAttr "LeftToeMvPivPos.c" "LeftToeRollPivPos.sp";
connectAttr "LeftToeRollPivPos_rotateY.o" "LeftToeRollPivPos.ry";
connectAttr "LeftToeRollPivPos_rotateZ.o" "LeftToeRollPivPos.rz";
connectAttr "LeftBallMvPivPos.c" "LeftBallPivPos.rp";
connectAttr "LeftBallMvPivPos.c" "LeftBallPivPos.sp";
connectAttr "LeftBallPivPos_rotateZ.o" "LeftBallPivPos.rz";
connectAttr "LeftBallMvPivPos.c" "LeftFootRollPos.rp";
connectAttr "LeftBallMvPivPos.c" "LeftFootRollPos.sp";
connectAttr "LeftFootRollPos_rotateY.o" "LeftFootRollPos.ry";
connectAttr "LeftAnkleIKJnt.msg" "LeftBallRaiseIKh.hsj";
connectAttr "effector26.hp" "LeftBallRaiseIKh.hee";
connectAttr "ikSCsolver.msg" "LeftBallRaiseIKh.hsv";
connectAttr "LeftBallMvPivPos.c" "LeftBallRollPos.rp";
connectAttr "LeftBallMvPivPos.c" "LeftBallRollPos.sp";
connectAttr "LeftBallRollPos_rotateY.o" "LeftBallRollPos.ry";
connectAttr "LeftBallIKJnt.msg" "LeftToeRaiseIKh.hsj";
connectAttr "effector25.hp" "LeftToeRaiseIKh.hee";
connectAttr "ikSCsolver.msg" "LeftToeRaiseIKh.hsv";
connectAttr "LeftLegIKCtrl.Foot" "LeftHeelMvPivPos.dh";
connectAttr "LeftLegIKCtrl.Foot" "LeftToeMvPivPos.dh";
connectAttr "LeftLegIKCtrl.Foot" "LeftBallMvPivPos.dh";
connectAttr "LeftLegIKCtrl.Foot" "LeftFootInPivPos.dh";
connectAttr "LeftLegIKCtrl.Foot" "LeftFootOutPivPos.dh";
connectAttr "L:KneeJnt2LeftLegPoleVectorCtrlGrpDM.ot" "LeftLegPoleVectorCtrlGrp.t"
		;
connectAttr "L:KneeJnt2LeftLegPoleVectorCtrlGrpDM.or" "LeftLegPoleVectorCtrlGrp.r"
		;
connectAttr "LeftLegIKCtrl.PVCtrlVis" "LeftLegPoleVectorCtrlGrp.v";
connectAttr "LeftLegAutoHideCD.ocr" "LeftLegPoleVectorCtrlShape.v";
connectAttr "LeftLegIKFKCtrlGrpDM.ot" "LeftLegIKFKCtrlGrp.t";
connectAttr "LeftLegIKFKCtrlGrpDM.or" "LeftLegIKFKCtrlGrp.r";
connectAttr "LeftLegUpArcDM.ot" "LeftLegUpArcCtrlGrp.t";
connectAttr "LeftLegUpArcCtrlGrp_tangentConstraint1.crx" "LeftLegUpArcCtrlGrp.rx"
		;
connectAttr "LeftLegUpArcCtrlGrp_tangentConstraint1.cry" "LeftLegUpArcCtrlGrp.ry"
		;
connectAttr "LeftLegUpArcCtrlGrp_tangentConstraint1.crz" "LeftLegUpArcCtrlGrp.rz"
		;
connectAttr "LeftLegIKFKCtrl.ArcCtrlVis" "LeftLegUpArcCtrlGrp.v";
connectAttr "LeftLegUpArcCtrlGrp.pim" "LeftLegUpArcCtrlGrp_tangentConstraint1.cpim"
		;
connectAttr "LeftLegUpArcCtrlGrp.t" "LeftLegUpArcCtrlGrp_tangentConstraint1.ct";
connectAttr "LeftLegUpArcCtrlGrp.rp" "LeftLegUpArcCtrlGrp_tangentConstraint1.crp"
		;
connectAttr "LeftLegUpArcCtrlGrp.rpt" "LeftLegUpArcCtrlGrp_tangentConstraint1.crt"
		;
connectAttr "LeftLegUpArcCtrlGrp.ro" "LeftLegUpArcCtrlGrp_tangentConstraint1.cro"
		;
connectAttr "LeftLegArcBlendShape.og[0]" "LeftLegUpArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LeftLegUpArcCtrlGrp_tangentConstraint1.w0" "LeftLegUpArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg1DrvJnt.wm" "LeftLegUpArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LeftLegUpArcCtrl.t" "LeftLeg1CsHandle.t";
connectAttr "LeftLegUpArcCtrl.r" "LeftLeg1CsHandle.r";
connectAttr "LeftLegUpArcCtrl.s" "LeftLeg1CsHandle.s";
connectAttr "LeftLegMidArcCtrlGrp_parentConstraint1.ctx" "LeftLegMidArcCtrlGrp.tx"
		;
connectAttr "LeftLegMidArcCtrlGrp_parentConstraint1.cty" "LeftLegMidArcCtrlGrp.ty"
		;
connectAttr "LeftLegMidArcCtrlGrp_parentConstraint1.ctz" "LeftLegMidArcCtrlGrp.tz"
		;
connectAttr "LeftLegMidArcCtrlGrp_parentConstraint1.crx" "LeftLegMidArcCtrlGrp.rx"
		;
connectAttr "LeftLegMidArcCtrlGrp_parentConstraint1.cry" "LeftLegMidArcCtrlGrp.ry"
		;
connectAttr "LeftLegMidArcCtrlGrp_parentConstraint1.crz" "LeftLegMidArcCtrlGrp.rz"
		;
connectAttr "LeftLegIKFKCtrl.ArcCtrlVis" "LeftLegMidArcCtrlGrp.v";
connectAttr "LeftLegMidArcCtrlPBGrpPB.orx" "LeftLegMidArcCtrlPBGrp.rx";
connectAttr "LeftLegMidArcCtrlPBGrpPB.ory" "LeftLegMidArcCtrlPBGrp.ry";
connectAttr "LeftLegMidArcCtrlPBGrpPB.orz" "LeftLegMidArcCtrlPBGrp.rz";
connectAttr "LeftLegMidArcCtrlPBGrpPB.otx" "LeftLegMidArcCtrlPBGrp.tx";
connectAttr "LeftLegMidArcCtrlPBGrpPB.oty" "LeftLegMidArcCtrlPBGrp.ty";
connectAttr "LeftLegMidArcCtrlPBGrpPB.otz" "LeftLegMidArcCtrlPBGrp.tz";
connectAttr "LeftLegMidArcCtrlPBGrp.ro" "LeftLegMidArcCtrlPBGrp_orientConstraint1.cro"
		;
connectAttr "LeftLegMidArcCtrlPBGrp.pim" "LeftLegMidArcCtrlPBGrp_orientConstraint1.cpim"
		;
connectAttr "LeftLeg1DrvJnt.r" "LeftLegMidArcCtrlPBGrp_orientConstraint1.tg[0].tr"
		;
connectAttr "LeftLeg1DrvJnt.ro" "LeftLegMidArcCtrlPBGrp_orientConstraint1.tg[0].tro"
		;
connectAttr "LeftLeg1DrvJnt.pm" "LeftLegMidArcCtrlPBGrp_orientConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg1DrvJnt.jo" "LeftLegMidArcCtrlPBGrp_orientConstraint1.tg[0].tjo"
		;
connectAttr "LeftLegMidArcCtrlPBGrp_orientConstraint1.w0" "LeftLegMidArcCtrlPBGrp_orientConstraint1.tg[0].tw"
		;
connectAttr "LeftLegMidArcCtrlPBGrp.pim" "LeftLegMidArcCtrlPBGrp_pointConstraint1.cpim"
		;
connectAttr "LeftLegMidArcCtrlPBGrp.rp" "LeftLegMidArcCtrlPBGrp_pointConstraint1.crp"
		;
connectAttr "LeftLegMidArcCtrlPBGrp.rpt" "LeftLegMidArcCtrlPBGrp_pointConstraint1.crt"
		;
connectAttr "LeftLegArcPointPos.t" "LeftLegMidArcCtrlPBGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "LeftLegArcPointPos.rp" "LeftLegMidArcCtrlPBGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLegArcPointPos.rpt" "LeftLegMidArcCtrlPBGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLegArcPointPos.pm" "LeftLegMidArcCtrlPBGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLegMidArcCtrlPBGrp_pointConstraint1.w0" "LeftLegMidArcCtrlPBGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLegMidArcCtrl.t" "LeftLeg2UpCsHandle.t";
connectAttr "LeftLegMidArcCtrl.r" "LeftLeg2UpCsHandle.r";
connectAttr "LeftLegMidArcCtrl.s" "LeftLeg2UpCsHandle.s";
connectAttr "LeftLegMidArcCtrl.t" "LeftLeg2DnCsHandle.t";
connectAttr "LeftLegMidArcCtrl.r" "LeftLeg2DnCsHandle.r";
connectAttr "LeftLegMidArcCtrl.s" "LeftLeg2DnCsHandle.s";
connectAttr "LeftLegMidArcCtrlGrp.ro" "LeftLegMidArcCtrlGrp_parentConstraint1.cro"
		;
connectAttr "LeftLegMidArcCtrlGrp.pim" "LeftLegMidArcCtrlGrp_parentConstraint1.cpim"
		;
connectAttr "LeftLegMidArcCtrlGrp.rp" "LeftLegMidArcCtrlGrp_parentConstraint1.crp"
		;
connectAttr "LeftLegMidArcCtrlGrp.rpt" "LeftLegMidArcCtrlGrp_parentConstraint1.crt"
		;
connectAttr "LeftLeg2DrvJnt.t" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg2DrvJnt.rp" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg2DrvJnt.rpt" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg2DrvJnt.r" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftLeg2DrvJnt.ro" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftLeg2DrvJnt.s" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftLeg2DrvJnt.pm" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg2DrvJnt.jo" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftLeg2DrvJnt.ssc" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftLeg2DrvJnt.is" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftLegMidArcCtrlGrp_parentConstraint1.w0" "LeftLegMidArcCtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLegDnArcDM.ot" "LeftLegDnArcCtrlGrp.t";
connectAttr "LeftLegDnArcCtrlGrp_tangentConstraint1.crx" "LeftLegDnArcCtrlGrp.rx"
		;
connectAttr "LeftLegDnArcCtrlGrp_tangentConstraint1.cry" "LeftLegDnArcCtrlGrp.ry"
		;
connectAttr "LeftLegDnArcCtrlGrp_tangentConstraint1.crz" "LeftLegDnArcCtrlGrp.rz"
		;
connectAttr "LeftLegIKFKCtrl.ArcCtrlVis" "LeftLegDnArcCtrlGrp.v";
connectAttr "LeftLegDnArcCtrlGrp.pim" "LeftLegDnArcCtrlGrp_tangentConstraint1.cpim"
		;
connectAttr "LeftLegDnArcCtrlGrp.t" "LeftLegDnArcCtrlGrp_tangentConstraint1.ct";
connectAttr "LeftLegDnArcCtrlGrp.rp" "LeftLegDnArcCtrlGrp_tangentConstraint1.crp"
		;
connectAttr "LeftLegDnArcCtrlGrp.rpt" "LeftLegDnArcCtrlGrp_tangentConstraint1.crt"
		;
connectAttr "LeftLegDnArcCtrlGrp.ro" "LeftLegDnArcCtrlGrp_tangentConstraint1.cro"
		;
connectAttr "LeftLegArcBlendShape.og[1]" "LeftLegDnArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LeftLegDnArcCtrlGrp_tangentConstraint1.w0" "LeftLegDnArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg3DrvJnt.wm" "LeftLegDnArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LeftLegDnArcCtrl.t" "LeftLeg3CsHandle.t";
connectAttr "LeftLegDnArcCtrl.r" "LeftLeg3CsHandle.r";
connectAttr "LeftLegDnArcCtrl.s" "LeftLeg3CsHandle.s";
connectAttr "L:HipJnt2LeftThighFKCtrlGrpOffGrpDM.ot" "LeftThighFKCtrlGrpOffGrp.t"
		;
connectAttr "L:HipJnt2LeftThighFKCtrlGrpOffGrpDM.or" "LeftThighFKCtrlGrpOffGrp.r"
		;
connectAttr "LeftLegAutoHideCD.ocg" "LeftThighFKCtrlGrp.v";
connectAttr "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpDM.ot" "LeftKneeFKCtrlGrpOffGrp.t"
		;
connectAttr "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpDM.or" "LeftKneeFKCtrlGrpOffGrp.r"
		;
connectAttr "LeftKneeFKCtrlGrpDM.ot" "LeftKneeFKCtrlGrp.t";
connectAttr "LeftKneeFKCtrlGrpDM.or" "LeftKneeFKCtrlGrp.r";
connectAttr "LeftLegAutoHideCD.ocg" "LeftKneeFKCtrlGrp.v";
connectAttr "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpDM.ot" "LeftAnkleFKCtrlGrpOffGrp.t"
		;
connectAttr "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpDM.or" "LeftAnkleFKCtrlGrpOffGrp.r"
		;
connectAttr "LeftAnkleFKCtrlGrpDM.ot" "LeftAnkleFKCtrlGrp.t";
connectAttr "LeftAnkleFKCtrlGrpDM.or" "LeftAnkleFKCtrlGrp.r";
connectAttr "LeftLegAutoHideCD.ocg" "LeftAnkleFKCtrlGrp.v";
connectAttr "LeftUpLegSysConsGrpDM.ot" "LeftUpLegSysConsGrp.t";
connectAttr "LeftUpLegSysConsGrpDM.or" "LeftUpLegSysConsGrp.r";
connectAttr "LeftThighFKCtrl.sy" "LeftLeg1DrvJnt.fksy";
connectAttr "LeftThighFKCtrl.sz" "LeftLeg1DrvJnt.fksz";
connectAttr "LeftLegSquashBA.o" "LeftLeg1DrvJnt.IKSquash";
connectAttr "LeftLeg1DrvJntRotPB.orx" "LeftLeg1DrvJnt.rx";
connectAttr "LeftLeg1DrvJntRotPB.ory" "LeftLeg1DrvJnt.ry";
connectAttr "LeftLeg1DrvJntRotPB.orz" "LeftLeg1DrvJnt.rz";
connectAttr "LeftLeg1DrvJntTrsBC.op" "LeftLeg1DrvJnt.t";
connectAttr "LeftKneeFKCtrl.sy" "LeftLeg2DrvJnt.fksy";
connectAttr "LeftKneeFKCtrl.sz" "LeftLeg2DrvJnt.fksz";
connectAttr "LeftLegSquashBA.o" "LeftLeg2DrvJnt.IKSquash";
connectAttr "LeftLeg2DrvJntTrsBC.op" "LeftLeg2DrvJnt.t";
connectAttr "LeftLeg2DrvJntRotPB.orx" "LeftLeg2DrvJnt.rx";
connectAttr "LeftLeg2DrvJntRotPB.ory" "LeftLeg2DrvJnt.ry";
connectAttr "LeftLeg2DrvJntRotPB.orz" "LeftLeg2DrvJnt.rz";
connectAttr "LeftLeg1DrvJnt.s" "LeftLeg2DrvJnt.is";
connectAttr "LeftLeg2DrvJnt.s" "LeftLeg3DrvJnt.is";
connectAttr "LeftLeg3DrvJntORCons.crx" "LeftLeg3DrvJnt.rx";
connectAttr "LeftLeg3DrvJntORCons.cry" "LeftLeg3DrvJnt.ry";
connectAttr "LeftLeg3DrvJntORCons.crz" "LeftLeg3DrvJnt.rz";
connectAttr "LeftLeg3DrvJntTrsBC.op" "LeftLeg3DrvJnt.t";
connectAttr "LeftLeg3DrvJnt.ro" "LeftLeg3DrvJntORCons.cro";
connectAttr "LeftLeg3DrvJnt.pim" "LeftLeg3DrvJntORCons.cpim";
connectAttr "LeftLeg3DrvJnt.jo" "LeftLeg3DrvJntORCons.cjo";
connectAttr "LeftLeg3DrvJnt.is" "LeftLeg3DrvJntORCons.is";
connectAttr "LeftLegIKCtrlPos.r" "LeftLeg3DrvJntORCons.tg[0].tr";
connectAttr "LeftLegIKCtrlPos.ro" "LeftLeg3DrvJntORCons.tg[0].tro";
connectAttr "LeftLegIKCtrlPos.pm" "LeftLeg3DrvJntORCons.tg[0].tpm";
connectAttr "LeftLeg3DrvJntORCons.w0" "LeftLeg3DrvJntORCons.tg[0].tw";
connectAttr "LeftAnkleFKCtrlPos.r" "LeftLeg3DrvJntORCons.tg[1].tr";
connectAttr "LeftAnkleFKCtrlPos.ro" "LeftLeg3DrvJntORCons.tg[1].tro";
connectAttr "LeftAnkleFKCtrlPos.pm" "LeftLeg3DrvJntORCons.tg[1].tpm";
connectAttr "LeftLeg3DrvJntORCons.w1" "LeftLeg3DrvJntORCons.tg[1].tw";
connectAttr "LeftLegIKUU.o" "LeftLeg3DrvJntORCons.w0";
connectAttr "LeftLegFKUU.o" "LeftLeg3DrvJntORCons.w1";
connectAttr "LeftLeg3AssiAPosDM.ot" "LeftLeg3AssiAPos.t";
connectAttr "LeftLeg3AssiAPosDM.or" "LeftLeg3AssiAPos.r";
connectAttr "LeftLeg3TwistFixGrpDM.ot" "LeftLeg3TwistFixGrp.t";
connectAttr "LeftLeg3AimGrpAMCons.crx" "LeftLeg3AimGrp.rx";
connectAttr "LeftLeg3AimGrpAMCons.cry" "LeftLeg3AimGrp.ry";
connectAttr "LeftLeg3AimGrpAMCons.crz" "LeftLeg3AimGrp.rz";
connectAttr "LeftLeg3TwistFixPosORCons.crx" "LeftLeg3TwistFixPos.rx";
connectAttr "LeftLeg3TwistFixPosORCons.cry" "LeftLeg3TwistFixPos.ry";
connectAttr "LeftLeg3TwistFixPosORCons.crz" "LeftLeg3TwistFixPos.rz";
connectAttr "LeftLeg3TwistFixPos.ro" "LeftLeg3TwistFixPosORCons.cro";
connectAttr "LeftLeg3TwistFixPos.pim" "LeftLeg3TwistFixPosORCons.cpim";
connectAttr "LeftLeg3AimGrp.r" "LeftLeg3TwistFixPosORCons.tg[0].tr";
connectAttr "LeftLeg3AimGrp.ro" "LeftLeg3TwistFixPosORCons.tg[0].tro";
connectAttr "LeftLeg3AimGrp.pm" "LeftLeg3TwistFixPosORCons.tg[0].tpm";
connectAttr "LeftLeg3TwistFixPosORCons.w0" "LeftLeg3TwistFixPosORCons.tg[0].tw";
connectAttr "LeftLeg3TwistFixSubPos.r" "LeftLeg3TwistFixPosORCons.tg[1].tr";
connectAttr "LeftLeg3TwistFixSubPos.ro" "LeftLeg3TwistFixPosORCons.tg[1].tro";
connectAttr "LeftLeg3TwistFixSubPos.pm" "LeftLeg3TwistFixPosORCons.tg[1].tpm";
connectAttr "LeftLeg3TwistFixPosORCons.w1" "LeftLeg3TwistFixPosORCons.tg[1].tw";
connectAttr "LeftLeg3AimGrp.pim" "LeftLeg3AimGrpAMCons.cpim";
connectAttr "LeftLeg3AimGrp.t" "LeftLeg3AimGrpAMCons.ct";
connectAttr "LeftLeg3AimGrp.rp" "LeftLeg3AimGrpAMCons.crp";
connectAttr "LeftLeg3AimGrp.rpt" "LeftLeg3AimGrpAMCons.crt";
connectAttr "LeftLeg3AimGrp.ro" "LeftLeg3AimGrpAMCons.cro";
connectAttr "LeftLeg3TwsitFixTgPos.t" "LeftLeg3AimGrpAMCons.tg[0].tt";
connectAttr "LeftLeg3TwsitFixTgPos.rp" "LeftLeg3AimGrpAMCons.tg[0].trp";
connectAttr "LeftLeg3TwsitFixTgPos.rpt" "LeftLeg3AimGrpAMCons.tg[0].trt";
connectAttr "LeftLeg3TwsitFixTgPos.pm" "LeftLeg3AimGrpAMCons.tg[0].tpm";
connectAttr "LeftLeg3AimGrpAMCons.w0" "LeftLeg3AimGrpAMCons.tg[0].tw";
connectAttr "LeftLeg3TwistFixGrp.wm" "LeftLeg3AimGrpAMCons.wum";
connectAttr "LeftLeg3TwistFixSubPosAMCons.crx" "LeftLeg3TwistFixSubPos.rx";
connectAttr "LeftLeg3TwistFixSubPosAMCons.cry" "LeftLeg3TwistFixSubPos.ry";
connectAttr "LeftLeg3TwistFixSubPosAMCons.crz" "LeftLeg3TwistFixSubPos.rz";
connectAttr "LeftLeg3TwistFixSubPos.pim" "LeftLeg3TwistFixSubPosAMCons.cpim";
connectAttr "LeftLeg3TwistFixSubPos.t" "LeftLeg3TwistFixSubPosAMCons.ct";
connectAttr "LeftLeg3TwistFixSubPos.rp" "LeftLeg3TwistFixSubPosAMCons.crp";
connectAttr "LeftLeg3TwistFixSubPos.rpt" "LeftLeg3TwistFixSubPosAMCons.crt";
connectAttr "LeftLeg3TwistFixSubPos.ro" "LeftLeg3TwistFixSubPosAMCons.cro";
connectAttr "LeftLeg3TwsitFixTgPos.t" "LeftLeg3TwistFixSubPosAMCons.tg[0].tt";
connectAttr "LeftLeg3TwsitFixTgPos.rp" "LeftLeg3TwistFixSubPosAMCons.tg[0].trp";
connectAttr "LeftLeg3TwsitFixTgPos.rpt" "LeftLeg3TwistFixSubPosAMCons.tg[0].trt"
		;
connectAttr "LeftLeg3TwsitFixTgPos.pm" "LeftLeg3TwistFixSubPosAMCons.tg[0].tpm";
connectAttr "LeftLeg3TwistFixSubPosAMCons.w0" "LeftLeg3TwistFixSubPosAMCons.tg[0].tw"
		;
connectAttr "LeftLeg3AssiAPos.wm" "LeftLeg3TwistFixSubPosAMCons.wum";
connectAttr "LeftLeg3TwsitFixTgPosPB.otx" "LeftLeg3TwsitFixTgPos.tx";
connectAttr "LeftLeg3TwsitFixTgPosPB.oty" "LeftLeg3TwsitFixTgPos.ty";
connectAttr "LeftLeg3TwsitFixTgPosPB.otz" "LeftLeg3TwsitFixTgPos.tz";
connectAttr "LeftLeg2TwistFixGrpDM.ot" "LeftLeg2TwistFixGrp.t";
connectAttr "LeftLeg2AimGrpAMCons.crx" "LeftLeg2AimGrp.rx";
connectAttr "LeftLeg2AimGrpAMCons.cry" "LeftLeg2AimGrp.ry";
connectAttr "LeftLeg2AimGrpAMCons.crz" "LeftLeg2AimGrp.rz";
connectAttr "unitConversion85.o" "LeftLeg2TwistFixPos.rx";
connectAttr "LeftLeg2AimGrp.pim" "LeftLeg2AimGrpAMCons.cpim";
connectAttr "LeftLeg2AimGrp.t" "LeftLeg2AimGrpAMCons.ct";
connectAttr "LeftLeg2AimGrp.rp" "LeftLeg2AimGrpAMCons.crp";
connectAttr "LeftLeg2AimGrp.rpt" "LeftLeg2AimGrpAMCons.crt";
connectAttr "LeftLeg2AimGrp.ro" "LeftLeg2AimGrpAMCons.cro";
connectAttr "LeftLeg2TwsitFixTgPos.t" "LeftLeg2AimGrpAMCons.tg[0].tt";
connectAttr "LeftLeg2TwsitFixTgPos.rp" "LeftLeg2AimGrpAMCons.tg[0].trp";
connectAttr "LeftLeg2TwsitFixTgPos.rpt" "LeftLeg2AimGrpAMCons.tg[0].trt";
connectAttr "LeftLeg2TwsitFixTgPos.pm" "LeftLeg2AimGrpAMCons.tg[0].tpm";
connectAttr "LeftLeg2AimGrpAMCons.w0" "LeftLeg2AimGrpAMCons.tg[0].tw";
connectAttr "LeftLeg2AssiAPos.wm" "LeftLeg2AimGrpAMCons.wum";
connectAttr "LeftLeg2TwsitFixTgPosPB.otx" "LeftLeg2TwsitFixTgPos.tx";
connectAttr "LeftLeg2TwsitFixTgPosPB.oty" "LeftLeg2TwsitFixTgPos.ty";
connectAttr "LeftLeg2TwsitFixTgPosPB.otz" "LeftLeg2TwsitFixTgPos.tz";
connectAttr "LeftLeg1IKJnt.s" "LeftLeg2IKJnt.is";
connectAttr "LeftLegUpTxML.o" "LeftLeg2IKJnt.tx";
connectAttr "LeftLeg2IKJnt.s" "LeftLeg3IKJnt.is";
connectAttr "LeftLegDnTxML.o" "LeftLeg3IKJnt.tx";
connectAttr "LeftLeg3IKJntQE.ort" "LeftLeg3IKJnt.r";
connectAttr "LeftLeg3IKJnt.tx" "effector22.tx";
connectAttr "LeftLeg3IKJnt.ty" "effector22.ty";
connectAttr "LeftLeg3IKJnt.tz" "effector22.tz";
connectAttr "LeftLeg1FKJntDM.ot" "LeftLeg1FKJnt.t";
connectAttr "LeftLeg1FKJntQE.ort" "LeftLeg1FKJnt.r";
connectAttr "LeftLeg1FKJnt.s" "LeftLeg2FKJnt.is";
connectAttr "LeftLeg2FKJntDM.ot" "LeftLeg2FKJnt.t";
connectAttr "LeftLeg2FKJntQE.ort" "LeftLeg2FKJnt.r";
connectAttr "LeftLeg2FKJnt.s" "LeftLeg3FKJnt.is";
connectAttr "LeftLeg3FKJntDM.ot" "LeftLeg3FKJnt.t";
connectAttr "LeftLeg3FKJntQE.ort" "LeftLeg3FKJnt.r";
connectAttr "LeftLegUp1ArcJnt.s" "LeftLegUp2ArcJnt.is";
connectAttr "LeftLegUpIK1CrvPointMD.o" "LeftLegUp2ArcJnt.tx";
connectAttr "LeftLegUp2ArcJnt.s" "LeftLegUp3ArcJnt.is";
connectAttr "LeftLegUpIK2CrvPointMD.o" "LeftLegUp3ArcJnt.tx";
connectAttr "LeftLegUp3ArcJnt.s" "LeftLegUp4ArcJnt.is";
connectAttr "LeftLegUpIK3CrvPointMD.o" "LeftLegUp4ArcJnt.tx";
connectAttr "LeftLegUp4ArcJnt.s" "LeftLegUp5ArcJnt.is";
connectAttr "LeftLegUpIK4CrvPointMD.o" "LeftLegUp5ArcJnt.tx";
connectAttr "LeftLegUp5ArcJnt.s" "LeftLegDn1ArcJnt.is";
connectAttr "LeftLegDn1ArcJnt.s" "LeftLegDn2ArcJnt.is";
connectAttr "LeftLegDnIK1CrvPointMD.o" "LeftLegDn2ArcJnt.tx";
connectAttr "LeftLegDn2ArcJnt.s" "LeftLegDn3ArcJnt.is";
connectAttr "LeftLegDnIK2CrvPointMD.o" "LeftLegDn3ArcJnt.tx";
connectAttr "LeftLegDn3ArcJnt.s" "LeftLegDn4ArcJnt.is";
connectAttr "LeftLegDnIK3CrvPointMD.o" "LeftLegDn4ArcJnt.tx";
connectAttr "LeftLegDn4ArcJnt.s" "LeftLegDn5ArcJnt.is";
connectAttr "LeftLegDnIK4CrvPointMD.o" "LeftLegDn5ArcJnt.tx";
connectAttr "LeftLegDn5ArcJnt.tx" "effector24.tx";
connectAttr "LeftLegDn5ArcJnt.ty" "effector24.ty";
connectAttr "LeftLegDn5ArcJnt.tz" "effector24.tz";
connectAttr "LeftLegUp5ArcJnt.tx" "effector23.tx";
connectAttr "LeftLegUp5ArcJnt.ty" "effector23.ty";
connectAttr "LeftLegUp5ArcJnt.tz" "effector23.tz";
connectAttr "LeftLeg1TwistFixGrpDM.ot" "LeftLeg1TwistFixGrp.t";
connectAttr "LeftLeg1AimGrpAMCons.crx" "LeftLeg1AimGrp.rx";
connectAttr "LeftLeg1AimGrpAMCons.cry" "LeftLeg1AimGrp.ry";
connectAttr "LeftLeg1AimGrpAMCons.crz" "LeftLeg1AimGrp.rz";
connectAttr "unitConversion84.o" "LeftLeg1TwistFixPos.rx";
connectAttr "LeftLeg1AimGrp.pim" "LeftLeg1AimGrpAMCons.cpim";
connectAttr "LeftLeg1AimGrp.t" "LeftLeg1AimGrpAMCons.ct";
connectAttr "LeftLeg1AimGrp.rp" "LeftLeg1AimGrpAMCons.crp";
connectAttr "LeftLeg1AimGrp.rpt" "LeftLeg1AimGrpAMCons.crt";
connectAttr "LeftLeg1AimGrp.ro" "LeftLeg1AimGrpAMCons.cro";
connectAttr "LeftLeg1TwsitFixTgPos.t" "LeftLeg1AimGrpAMCons.tg[0].tt";
connectAttr "LeftLeg1TwsitFixTgPos.rp" "LeftLeg1AimGrpAMCons.tg[0].trp";
connectAttr "LeftLeg1TwsitFixTgPos.rpt" "LeftLeg1AimGrpAMCons.tg[0].trt";
connectAttr "LeftLeg1TwsitFixTgPos.pm" "LeftLeg1AimGrpAMCons.tg[0].tpm";
connectAttr "LeftLeg1AimGrpAMCons.w0" "LeftLeg1AimGrpAMCons.tg[0].tw";
connectAttr "LeftLeg1TwistFixUpvec.wm" "LeftLeg1AimGrpAMCons.wum";
connectAttr "LeftLeg1TwistFixUpvec_rotateZ.o" "LeftLeg1TwistFixUpvec.rz";
connectAttr "LeftLeg1TwsitFixTgPosDM.ot" "LeftLeg1TwsitFixTgPos.t";
connectAttr "LeftLeg1IKJnt.msg" "LeftLegIKh.hsj";
connectAttr "effector22.hp" "LeftLegIKh.hee";
connectAttr "ikRPsolver.msg" "LeftLegIKh.hsv";
connectAttr "LeftLegIKhDM.ot" "LeftLegIKh.t";
connectAttr "LeftLegIKhPVCons.ctx" "LeftLegIKh.pvx";
connectAttr "LeftLegIKhPVCons.cty" "LeftLegIKh.pvy";
connectAttr "LeftLegIKhPVCons.ctz" "LeftLegIKh.pvz";
connectAttr "LeftLegIKh.pim" "LeftLegIKhPVCons.cpim";
connectAttr "LeftLeg1IKJnt.pm" "LeftLegIKhPVCons.ps";
connectAttr "LeftLeg1IKJnt.t" "LeftLegIKhPVCons.crp";
connectAttr "LeftLegPoleVectorCtrl.t" "LeftLegIKhPVCons.tg[0].tt";
connectAttr "LeftLegPoleVectorCtrl.rp" "LeftLegIKhPVCons.tg[0].trp";
connectAttr "LeftLegPoleVectorCtrl.rpt" "LeftLegIKhPVCons.tg[0].trt";
connectAttr "LeftLegPoleVectorCtrl.pm" "LeftLegIKhPVCons.tg[0].tpm";
connectAttr "LeftLegIKhPVCons.w0" "LeftLegIKhPVCons.tg[0].tw";
connectAttr "LeftLegPVSysGrpDM.or" "LeftLegPVSysGrp.r";
connectAttr "LeftLegPVAmGrpAMCons.crx" "LeftLegPVAmGrp.rx";
connectAttr "LeftLegPVAmGrpAMCons.cry" "LeftLegPVAmGrp.ry";
connectAttr "LeftLegPVAmGrpAMCons.crz" "LeftLegPVAmGrp.rz";
connectAttr "LeftLegPVAmGrp.pim" "LeftLegPVAmGrpAMCons.cpim";
connectAttr "LeftLegPVAmGrp.t" "LeftLegPVAmGrpAMCons.ct";
connectAttr "LeftLegPVAmGrp.rp" "LeftLegPVAmGrpAMCons.crp";
connectAttr "LeftLegPVAmGrp.rpt" "LeftLegPVAmGrpAMCons.crt";
connectAttr "LeftLegPVAmGrp.ro" "LeftLegPVAmGrpAMCons.cro";
connectAttr "LeftLegPVTgPos.t" "LeftLegPVAmGrpAMCons.tg[0].tt";
connectAttr "LeftLegPVTgPos.rp" "LeftLegPVAmGrpAMCons.tg[0].trp";
connectAttr "LeftLegPVTgPos.rpt" "LeftLegPVAmGrpAMCons.tg[0].trt";
connectAttr "LeftLegPVTgPos.pm" "LeftLegPVAmGrpAMCons.tg[0].tpm";
connectAttr "LeftLegPVAmGrpAMCons.w0" "LeftLegPVAmGrpAMCons.tg[0].tw";
connectAttr "LeftLegPVUpvec.wm" "LeftLegPVAmGrpAMCons.wum";
connectAttr "unitConversion80.o" "LeftLegPVAmGrpAMCons.ox";
connectAttr "LeftLegPVSysGrp.msg" "LeftLegPVPos.ag";
connectAttr "LeftLegPVUpvec_rotateZ.o" "LeftLegPVUpvec.rz";
connectAttr "LeftLegPVTgPosDM.ot" "LeftLegPVTgPos.t";
connectAttr "LeftLegIKMovePosDM.ot" "LeftLegIKMovePos.t";
connectAttr "LeftLegIKMovePosDM.or" "LeftLegIKMovePos.r";
connectAttr "LeftLegPVStretchPosDM.ot" "LeftLegPVStretchPos.t";
connectAttr "LeftLeg1ArcPosDM.ot" "LeftLeg1ArcPos.t";
connectAttr "LeftLeg2ArcPosDM.ot" "LeftLeg2ArcPos.t";
connectAttr "LeftLeg3ArcPosDM.ot" "LeftLeg3ArcPos.t";
connectAttr "LeftLegArcPointPosPTCons.ctx" "LeftLegArcPointPos.tx";
connectAttr "LeftLegArcPointPosPTCons.cty" "LeftLegArcPointPos.ty";
connectAttr "LeftLegArcPointPosPTCons.ctz" "LeftLegArcPointPos.tz";
connectAttr "LeftLegArcPointPos.pim" "LeftLegArcPointPosPTCons.cpim";
connectAttr "LeftLegArcPointPos.rp" "LeftLegArcPointPosPTCons.crp";
connectAttr "LeftLegArcPointPos.rpt" "LeftLegArcPointPosPTCons.crt";
connectAttr "LeftLeg1ArcPos.t" "LeftLegArcPointPosPTCons.tg[0].tt";
connectAttr "LeftLeg1ArcPos.rp" "LeftLegArcPointPosPTCons.tg[0].trp";
connectAttr "LeftLeg1ArcPos.rpt" "LeftLegArcPointPosPTCons.tg[0].trt";
connectAttr "LeftLeg1ArcPos.pm" "LeftLegArcPointPosPTCons.tg[0].tpm";
connectAttr "LeftLegArcPointPosPTCons.w0" "LeftLegArcPointPosPTCons.tg[0].tw";
connectAttr "LeftLeg2ArcPos.t" "LeftLegArcPointPosPTCons.tg[1].tt";
connectAttr "LeftLeg2ArcPos.rp" "LeftLegArcPointPosPTCons.tg[1].trp";
connectAttr "LeftLeg2ArcPos.rpt" "LeftLegArcPointPosPTCons.tg[1].trt";
connectAttr "LeftLeg2ArcPos.pm" "LeftLegArcPointPosPTCons.tg[1].tpm";
connectAttr "LeftLegArcPointPosPTCons.w1" "LeftLegArcPointPosPTCons.tg[1].tw";
connectAttr "LeftLeg3ArcPos.t" "LeftLegArcPointPosPTCons.tg[2].tt";
connectAttr "LeftLeg3ArcPos.rp" "LeftLegArcPointPosPTCons.tg[2].trp";
connectAttr "LeftLeg3ArcPos.rpt" "LeftLegArcPointPosPTCons.tg[2].trt";
connectAttr "LeftLeg3ArcPos.pm" "LeftLegArcPointPosPTCons.tg[2].tpm";
connectAttr "LeftLegArcPointPosPTCons.w2" "LeftLegArcPointPosPTCons.tg[2].tw";
connectAttr "LeftLegDnArcDB.d" "LeftLegArcPointPosPTCons.w0";
connectAttr "LeftLegArcDistMultML.o" "LeftLegArcPointPosPTCons.w1";
connectAttr "LeftLegUpArcDB.d" "LeftLegArcPointPosPTCons.w2";
connectAttr "LeftLegUpArcCrvRC.oc" "LeftLegUpArcCrvShape.cr";
connectAttr "LeftLegDnArcCrvRC.oc" "LeftLegDnArcCrvShape.cr";
connectAttr "LeftLeg2UpCs.og[0]" "LeftLegUpIKCrvShape.cr";
connectAttr "LeftLegArcBlendShapeGroupId.id" "LeftLegUpIKCrvShape.iog.og[2].gid"
		;
connectAttr "LeftLegArcBlendShapeSet.mwc" "LeftLegUpIKCrvShape.iog.og[2].gco";
connectAttr "LeftLeg1CsGroupId.id" "LeftLegUpIKCrvShape.iog.og[3].gid";
connectAttr "LeftLeg1CsSet.mwc" "LeftLegUpIKCrvShape.iog.og[3].gco";
connectAttr "LeftLeg2UpCsGroupId.id" "LeftLegUpIKCrvShape.iog.og[5].gid";
connectAttr "LeftLeg2UpCsSet.mwc" "LeftLegUpIKCrvShape.iog.og[5].gco";
connectAttr "LeftLeg1ArcPos.t" "LeftLegUpIKCrvShapeOrig.cp[0]";
connectAttr "LeftLeg2ArcPos.t" "LeftLegUpIKCrvShapeOrig.cp[1]";
connectAttr "LeftLeg3Cs.og[0]" "LeftLegDnIKCrvShape.cr";
connectAttr "LeftLegArcBlendShapeGroupId1.id" "LeftLegDnIKCrvShape.iog.og[2].gid"
		;
connectAttr "LeftLegArcBlendShapeSet.mwc" "LeftLegDnIKCrvShape.iog.og[2].gco";
connectAttr "LeftLeg2DnCsGroupId.id" "LeftLegDnIKCrvShape.iog.og[3].gid";
connectAttr "LeftLeg2DnCsSet.mwc" "LeftLegDnIKCrvShape.iog.og[3].gco";
connectAttr "LeftLeg3CsGroupId.id" "LeftLegDnIKCrvShape.iog.og[5].gid";
connectAttr "LeftLeg3CsSet.mwc" "LeftLegDnIKCrvShape.iog.og[5].gco";
connectAttr "LeftLeg2ArcPos.t" "LeftLegDnIKCrvShapeOrig.cp[0]";
connectAttr "LeftLeg3ArcPos.t" "LeftLegDnIKCrvShapeOrig.cp[1]";
connectAttr "LeftLegUpIKChkCrvDM.ot" "LeftLegUpIKChkCrv.t";
connectAttr "LeftLegUpIKChkCrvDM.or" "LeftLegUpIKChkCrv.r";
connectAttr "LeftLegDnIKChkCrvDM.ot" "LeftLegDnIKChkCrv.t";
connectAttr "LeftLegDnIKChkCrvDM.or" "LeftLegDnIKChkCrv.r";
connectAttr "LeftLegUp1ArcJnt.msg" "LeftLegUpArcIKh.hsj";
connectAttr "effector23.hp" "LeftLegUpArcIKh.hee";
connectAttr "ikSplineSolver.msg" "LeftLegUpArcIKh.hsv";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpArcIKh.ic";
connectAttr "LeftLeg1TwistFixPos.wm" "LeftLegUpArcIKh.dwum";
connectAttr "LeftLeg2TwistFixPos.wm" "LeftLegUpArcIKh.dwue";
connectAttr "LeftLegDn1ArcJnt.msg" "LeftLegDnArcIKh.hsj";
connectAttr "effector24.hp" "LeftLegDnArcIKh.hee";
connectAttr "ikSplineSolver.msg" "LeftLegDnArcIKh.hsv";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnArcIKh.ic";
connectAttr "LeftLeg2TwistFixPos.wm" "LeftLegDnArcIKh.dwum";
connectAttr "LeftLeg3TwistFixPos.wm" "LeftLegDnArcIKh.dwue";
connectAttr "LeftAnkleConsGrp.msg" "LeftToeRigGrp.Grp[0]";
connectAttr "LeftAnkleIKScaleGrp.msg" "LeftToeRigGrp.Grp[1]";
connectAttr "LeftBallRaiseIKh.msg" "LeftToeRigGrp.IKh[0]";
connectAttr "LeftToeRaiseIKh.msg" "LeftToeRigGrp.IKh[1]";
connectAttr "LeftAnkleConsGrpDM.ot" "LeftAnkleConsGrp.t";
connectAttr "LeftAnkleConsGrpDM.or" "LeftAnkleConsGrp.r";
connectAttr "LeftAnkleFKScaleBC.op" "LeftAnkleConsGrp.s";
connectAttr "LeftAnkleIKScaleBC.op" "LeftAnkleIKScaleGrp.s";
connectAttr "LeftAnkleIKJntGrpDM.ot" "LeftAnkleIKJntGrp.t";
connectAttr "LeftAnkleIKJntGrpDM.or" "LeftAnkleIKJntGrp.r";
connectAttr "LeftAnkleIKJnt.s" "LeftBallIKJnt.is";
connectAttr "LeftBallIKJnt.s" "LeftToeIKJnt.is";
connectAttr "LeftToeIKJnt.tx" "effector25.tx";
connectAttr "LeftToeIKJnt.ty" "effector25.ty";
connectAttr "LeftToeIKJnt.tz" "effector25.tz";
connectAttr "LeftBallIKJnt.tx" "effector26.tx";
connectAttr "LeftBallIKJnt.ty" "effector26.ty";
connectAttr "LeftBallIKJnt.tz" "effector26.tz";
connectAttr "LeftBallIKCtrlPrtGrpDM.ot" "LeftBallIKCtrlPrtGrp.t";
connectAttr "LeftBallIKCtrlPrtGrpDM.or" "LeftBallIKCtrlPrtGrp.r";
connectAttr "LeftBallIKCtrlGrpDM.or" "LeftBallIKCtrlGrp.r";
connectAttr "LeftBallIKCtrlGrpDM.ot" "LeftBallIKCtrlGrp.t";
connectAttr "LeftLegAutoHideCD.ocr" "LeftBallIKCtrlGrp.v";
connectAttr "LeftBallFKJntDM.ot" "LeftBallFKJnt.t";
connectAttr "LeftBallFKJntQE.ort" "LeftBallFKJnt.r";
connectAttr "LeftAnkleDrvJntTrsBC.op" "LeftAnkleDrvJnt.t";
connectAttr "LeftAnkleDrvJntRotPB.orx" "LeftAnkleDrvJnt.rx";
connectAttr "LeftAnkleDrvJntRotPB.ory" "LeftAnkleDrvJnt.ry";
connectAttr "LeftAnkleDrvJntRotPB.orz" "LeftAnkleDrvJnt.rz";
connectAttr "LeftBallDrvJntTrsBC.op" "LeftBallDrvJnt.t";
connectAttr "LeftBallDrvJntRotPB.orx" "LeftBallDrvJnt.rx";
connectAttr "LeftBallDrvJntRotPB.ory" "LeftBallDrvJnt.ry";
connectAttr "LeftBallDrvJntRotPB.orz" "LeftBallDrvJnt.rz";
connectAttr "LeftLegAutoHideCD.ocg" "LeftBallFKCtrlGrp.v";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLegFKScaleBC.b";
connectAttr "LeftAnkleFKCtrl.s" "LeftLegFKScaleBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLegIKScaleBC.b";
connectAttr "LeftLegIKCtrl.s" "LeftLegIKScaleBC.c2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLegIKUU.i";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLegFKUU.i";
connectAttr "LeftLegIKFKCtrl.AutoHideIKFK" "LeftLegAutoHideCD.ft";
connectAttr "LeftLegAutoHideRV.ox" "LeftLegAutoHideCD.ctr";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLegAutoHideCD.ctg";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLegAutoHideRV.ix";
connectAttr "LeftLegIKCtrlPosMM.o" "LeftLegIKCtrlPosDM.imat";
connectAttr "LeftIKFootRollPos.wm" "LeftLegIKCtrlPosMM.i[2]";
connectAttr "LeftLegIKCtrlPos.pim" "LeftLegIKCtrlPosMM.i[3]";
connectAttr "LeftLegIKCtrl.InOut" "LeftFootInRotPos_rotateX.i";
connectAttr "LeftLegIKCtrl.InOut" "LeftFootOutRotPos_rotateX.i";
connectAttr "LeftLegIKCtrl.FootRoll" "LeftHeelRollPivPos_rotateY.i";
connectAttr "LeftLegIKCtrl.HeelPivot" "LeftHeelRollPivPos_rotateZ.i";
connectAttr "LeftLegIKCtrl.ToeRoll" "LeftToeRollPivPos_rotateY.i";
connectAttr "LeftLegIKCtrl.ToePivot" "LeftToeRollPivPos_rotateZ.i";
connectAttr "LeftLegIKCtrl.BallPivot" "LeftBallPivPos_rotateZ.i";
connectAttr "LeftLegIKCtrl.FootRoll" "LeftFootRollPos_rotateY.i";
connectAttr "LeftLegIKCtrl.BallRoll" "LeftBallRollPos_rotateY.i";
connectAttr "LeftKneeFKCtrlGrpMM.o" "LeftKneeFKCtrlGrpDM.imat";
connectAttr "LeftThighFKCtrl.wm" "LeftKneeFKCtrlGrpMM.i[2]";
connectAttr "LeftKneeFKCtrlGrp.pim" "LeftKneeFKCtrlGrpMM.i[3]";
connectAttr "LeftAnkleFKCtrlGrpMM.o" "LeftAnkleFKCtrlGrpDM.imat";
connectAttr "LeftKneeFKCtrl.wm" "LeftAnkleFKCtrlGrpMM.i[2]";
connectAttr "LeftAnkleFKCtrlGrp.pim" "LeftAnkleFKCtrlGrpMM.i[3]";
connectAttr "LeftLegIKFKCtrlGrpMM.o" "LeftLegIKFKCtrlGrpDM.imat";
connectAttr "LeftLeg3DrvJnt.wm" "LeftLegIKFKCtrlGrpMM.i[2]";
connectAttr "LeftLegIKFKCtrlGrp.pim" "LeftLegIKFKCtrlGrpMM.i[3]";
connectAttr "LeftLegUpArcMM.o" "LeftLegUpArcDM.imat";
connectAttr "LeftLegUpArcCM.omat" "LeftLegUpArcMM.i[0]";
connectAttr "LeftLegUpArcCtrlGrp.pim" "LeftLegUpArcMM.i[1]";
connectAttr "LeftLegUpArcPC.p" "LeftLegUpArcCM.it";
connectAttr "LeftLegArcBlendShape.og[0]" "LeftLegUpArcPC.ic";
connectAttr "LeftLegArcBlendShapeGroupParts.og" "LeftLegArcBlendShape.ip[0].ig";
connectAttr "LeftLegArcBlendShapeGroupId.id" "LeftLegArcBlendShape.ip[0].gi";
connectAttr "LeftLegArcBlendShapeGroupParts1.og" "LeftLegArcBlendShape.ip[1].ig"
		;
connectAttr "LeftLegArcBlendShapeGroupId1.id" "LeftLegArcBlendShape.ip[1].gi";
connectAttr "LeftLegUpArcCrvShape.ws" "LeftLegArcBlendShape.it[0].itg[0].iti[6000].igt"
		;
connectAttr "LeftLegDnArcCrvShape.ws" "LeftLegArcBlendShape.it[1].itg[0].iti[6000].igt"
		;
connectAttr "LeftLegArcBlendShape_LeftLegArcCrvGrp.o" "LeftLegArcBlendShape.w[0]"
		;
connectAttr "shapeEditorManager.obsv[2]" "LeftLegArcBlendShape.tgdt[0].dpvs";
connectAttr "LeftLegArcBlendShapeGroupId.msg" "LeftLegArcBlendShapeSet.gn" -na;
connectAttr "LeftLegArcBlendShapeGroupId1.msg" "LeftLegArcBlendShapeSet.gn" -na;
connectAttr "LeftLegUpIKCrvShape.iog.og[2]" "LeftLegArcBlendShapeSet.dsm" -na;
connectAttr "LeftLegDnIKCrvShape.iog.og[2]" "LeftLegArcBlendShapeSet.dsm" -na;
connectAttr "LeftLegArcBlendShape.msg" "LeftLegArcBlendShapeSet.ub[0]";
connectAttr "rebuildCurve5.oc" "LeftLegArcBlendShapeGroupParts.ig";
connectAttr "LeftLegArcBlendShapeGroupId.id" "LeftLegArcBlendShapeGroupParts.gi"
		;
connectAttr "LeftLegUpIKCrvShapeOrig.ws" "rebuildCurve5.ic";
connectAttr "rebuildCurve6.oc" "LeftLegArcBlendShapeGroupParts1.ig";
connectAttr "LeftLegArcBlendShapeGroupId1.id" "LeftLegArcBlendShapeGroupParts1.gi"
		;
connectAttr "LeftLegDnIKCrvShapeOrig.ws" "rebuildCurve6.ic";
connectAttr "LeftLegIKFKCtrl.Arc" "LeftLegArcBlendShape_LeftLegArcCrvGrp.i";
connectAttr "LeftLeg1CsGroupParts.og" "LeftLeg1Cs.ip[0].ig";
connectAttr "LeftLeg1CsGroupId.id" "LeftLeg1Cs.ip[0].gi";
connectAttr "LeftLeg1CsHandle.wm" "LeftLeg1Cs.ma";
connectAttr "LeftLeg1CsHandleShape.x" "LeftLeg1Cs.x";
connectAttr "LeftLeg1CsHandleZeroMtx.wim" "LeftLeg1Cs.pm";
connectAttr "LeftLegUpIKCrv.wm" "LeftLeg1Cs.gm[0]";
connectAttr "LeftLeg1CsGroupId.msg" "LeftLeg1CsSet.gn" -na;
connectAttr "LeftLegUpIKCrvShape.iog.og[3]" "LeftLeg1CsSet.dsm" -na;
connectAttr "LeftLeg1Cs.msg" "LeftLeg1CsSet.ub[0]";
connectAttr "LeftLegArcBlendShape.og[0]" "LeftLeg1CsGroupParts.ig";
connectAttr "LeftLeg1CsGroupId.id" "LeftLeg1CsGroupParts.gi";
connectAttr "LeftLegMidArcCtrlPBGrp_pointConstraint1.ctx" "LeftLegMidArcCtrlPBGrpPB.itx2"
		;
connectAttr "LeftLegMidArcCtrlPBGrp_pointConstraint1.cty" "LeftLegMidArcCtrlPBGrpPB.ity2"
		;
connectAttr "LeftLegMidArcCtrlPBGrp_pointConstraint1.ctz" "LeftLegMidArcCtrlPBGrpPB.itz2"
		;
connectAttr "LeftLegMidArcCtrlPBGrp_orientConstraint1.crx" "LeftLegMidArcCtrlPBGrpPB.irx2"
		;
connectAttr "LeftLegMidArcCtrlPBGrp_orientConstraint1.cry" "LeftLegMidArcCtrlPBGrpPB.iry2"
		;
connectAttr "LeftLegMidArcCtrlPBGrp_orientConstraint1.crz" "LeftLegMidArcCtrlPBGrpPB.irz2"
		;
connectAttr "LeftLegMidArcCtrlPBGrp.pbw" "LeftLegMidArcCtrlPBGrpPB.w";
connectAttr "LeftLeg2UpCsGroupParts.og" "LeftLeg2UpCs.ip[0].ig";
connectAttr "LeftLeg2UpCsGroupId.id" "LeftLeg2UpCs.ip[0].gi";
connectAttr "LeftLeg2UpCsHandle.wm" "LeftLeg2UpCs.ma";
connectAttr "LeftLeg2UpCsHandleShape.x" "LeftLeg2UpCs.x";
connectAttr "LeftLeg2UpCsHandleZeroMtx.wim" "LeftLeg2UpCs.pm";
connectAttr "LeftLegUpIKCrv.wm" "LeftLeg2UpCs.gm[0]";
connectAttr "LeftLeg2UpCsGroupId.msg" "LeftLeg2UpCsSet.gn" -na;
connectAttr "LeftLegUpIKCrvShape.iog.og[5]" "LeftLeg2UpCsSet.dsm" -na;
connectAttr "LeftLeg2UpCs.msg" "LeftLeg2UpCsSet.ub[0]";
connectAttr "LeftLeg1Cs.og[0]" "LeftLeg2UpCsGroupParts.ig";
connectAttr "LeftLeg2UpCsGroupId.id" "LeftLeg2UpCsGroupParts.gi";
connectAttr "LeftLeg2DnCsGroupParts.og" "LeftLeg2DnCs.ip[0].ig";
connectAttr "LeftLeg2DnCsGroupId.id" "LeftLeg2DnCs.ip[0].gi";
connectAttr "LeftLeg2DnCsHandle.wm" "LeftLeg2DnCs.ma";
connectAttr "LeftLeg2DnCsHandleShape.x" "LeftLeg2DnCs.x";
connectAttr "LeftLeg2DnCsHandleZeroMtx.wim" "LeftLeg2DnCs.pm";
connectAttr "LeftLegDnIKCrv.wm" "LeftLeg2DnCs.gm[0]";
connectAttr "LeftLeg2DnCsGroupId.msg" "LeftLeg2DnCsSet.gn" -na;
connectAttr "LeftLegDnIKCrvShape.iog.og[3]" "LeftLeg2DnCsSet.dsm" -na;
connectAttr "LeftLeg2DnCs.msg" "LeftLeg2DnCsSet.ub[0]";
connectAttr "LeftLegArcBlendShape.og[1]" "LeftLeg2DnCsGroupParts.ig";
connectAttr "LeftLeg2DnCsGroupId.id" "LeftLeg2DnCsGroupParts.gi";
connectAttr "LeftLegDnArcMM.o" "LeftLegDnArcDM.imat";
connectAttr "LeftLegDnArcCM.omat" "LeftLegDnArcMM.i[0]";
connectAttr "LeftLegDnArcCtrlGrp.pim" "LeftLegDnArcMM.i[1]";
connectAttr "LeftLegDnArcPC.p" "LeftLegDnArcCM.it";
connectAttr "LeftLegArcBlendShape.og[1]" "LeftLegDnArcPC.ic";
connectAttr "LeftLeg3CsGroupParts.og" "LeftLeg3Cs.ip[0].ig";
connectAttr "LeftLeg3CsGroupId.id" "LeftLeg3Cs.ip[0].gi";
connectAttr "LeftLeg3CsHandle.wm" "LeftLeg3Cs.ma";
connectAttr "LeftLeg3CsHandleShape.x" "LeftLeg3Cs.x";
connectAttr "LeftLeg3CsHandleZeroMtx.wim" "LeftLeg3Cs.pm";
connectAttr "LeftLegDnIKCrv.wm" "LeftLeg3Cs.gm[0]";
connectAttr "LeftLeg3CsGroupId.msg" "LeftLeg3CsSet.gn" -na;
connectAttr "LeftLegDnIKCrvShape.iog.og[5]" "LeftLeg3CsSet.dsm" -na;
connectAttr "LeftLeg3Cs.msg" "LeftLeg3CsSet.ub[0]";
connectAttr "LeftLeg2DnCs.og[0]" "LeftLeg3CsGroupParts.ig";
connectAttr "LeftLeg3CsGroupId.id" "LeftLeg3CsGroupParts.gi";
connectAttr "LeftUpLegSysConsGrpMM.o" "LeftUpLegSysConsGrpDM.imat";
connectAttr "LeftLegRootCtrl.wm" "LeftUpLegSysConsGrpMM.i[2]";
connectAttr "LeftUpLegSysConsGrp.pim" "LeftUpLegSysConsGrpMM.i[3]";
connectAttr "LeftLegStretchSR.oz" "LeftLegSquashBA.ab";
connectAttr "LeftLegSquashPowMD.ox" "LeftLegSquashBA.i[1]";
connectAttr "LeftLegIKCtrl.Stretch" "LeftLegStretchSR.vx";
connectAttr "LeftLegIKCtrl.PVStretch" "LeftLegStretchSR.vy";
connectAttr "LeftLegIKCtrl.Squash" "LeftLegStretchSR.vz";
connectAttr "LeftLegUpSlideML.o" "LeftLegSquashPowMD.i1x";
connectAttr "LeftLegPVStretch1BA.o" "LeftLegUpSlideML.i1";
connectAttr "LeftLegUpSlideAL.o" "LeftLegUpSlideML.i2";
connectAttr "LeftLegStretchSR.oy" "LeftLegPVStretch1BA.ab";
connectAttr "LeftLegStretchDvMD.ox" "LeftLegPVStretch1BA.i[0]";
connectAttr "LeftLegPvStretch1DvMD.ox" "LeftLegPVStretch1BA.i[1]";
connectAttr "LeftLegCD.ocr" "LeftLegStretchDvMD.i1x";
connectAttr "LeftLegCD.ocg" "LeftLegStretchDvMD.i2x";
connectAttr "LeftLegAllDB.d" "LeftLegCD.ft";
connectAttr "LeftLegSumDistAL.o" "LeftLegCD.st";
connectAttr "LeftLegStretchBA.o" "LeftLegCD.ctr";
connectAttr "LeftLegSumDistAL.o" "LeftLegCD.ctg";
connectAttr "LeftLegIK1Pos.t" "LeftLegAllDB.p1";
connectAttr "LeftLegIKMovePos.t" "LeftLegAllDB.p2";
connectAttr "LeftLeg1DB.d" "LeftLegSumDistAL.i1";
connectAttr "LeftLeg2DB.d" "LeftLegSumDistAL.i2";
connectAttr "LeftLegIK1Pos.t" "LeftLeg1DB.p1";
connectAttr "LeftLegIK2Pos.t" "LeftLeg1DB.p2";
connectAttr "LeftLegIK2Pos.t" "LeftLeg2DB.p1";
connectAttr "LeftLegIK3Pos.t" "LeftLeg2DB.p2";
connectAttr "LeftLegSumDistAL.o" "LeftLegStretchBA.i[0]";
connectAttr "LeftLegAllDB.d" "LeftLegStretchBA.i[1]";
connectAttr "LeftLegStretchSR.ox" "LeftLegStretchBA.ab";
connectAttr "LeftLegPVStretch1DB.d" "LeftLegPvStretch1DvMD.i1x";
connectAttr "LeftLeg1DB.d" "LeftLegPvStretch1DvMD.i2x";
connectAttr "LeftLegIK1Pos.t" "LeftLegPVStretch1DB.p1";
connectAttr "LeftLegPVStretchPos.t" "LeftLegPVStretch1DB.p2";
connectAttr "LeftLegUpSlideFilterML.o" "LeftLegUpSlideAL.i1";
connectAttr "LeftLegIKCtrl.UpSlide" "LeftLegUpSlideFilterML.i1";
connectAttr "LeftLeg1IKJnt.t" "LeftLeg1DrvJntTrsBC.c2";
connectAttr "LeftLeg1FKJnt.t" "LeftLeg1DrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg1DrvJntTrsBC.b";
connectAttr "LeftLeg1IKJnt.rx" "LeftLeg1DrvJntRotPB.irx1";
connectAttr "LeftLeg1IKJnt.ry" "LeftLeg1DrvJntRotPB.iry1";
connectAttr "LeftLeg1IKJnt.rz" "LeftLeg1DrvJntRotPB.irz1";
connectAttr "LeftLeg1FKJnt.rx" "LeftLeg1DrvJntRotPB.irx2";
connectAttr "LeftLeg1FKJnt.ry" "LeftLeg1DrvJntRotPB.iry2";
connectAttr "LeftLeg1FKJnt.rz" "LeftLeg1DrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg1DrvJntRotPB.w";
connectAttr "LeftLeg2IKJnt.t" "LeftLeg2DrvJntTrsBC.c2";
connectAttr "LeftLeg2FKJnt.t" "LeftLeg2DrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg2DrvJntTrsBC.b";
connectAttr "LeftLeg2IKJnt.rx" "LeftLeg2DrvJntRotPB.irx1";
connectAttr "LeftLeg2IKJnt.ry" "LeftLeg2DrvJntRotPB.iry1";
connectAttr "LeftLeg2IKJnt.rz" "LeftLeg2DrvJntRotPB.irz1";
connectAttr "LeftLeg2FKJnt.rx" "LeftLeg2DrvJntRotPB.irx2";
connectAttr "LeftLeg2FKJnt.ry" "LeftLeg2DrvJntRotPB.iry2";
connectAttr "LeftLeg2FKJnt.rz" "LeftLeg2DrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg2DrvJntRotPB.w";
connectAttr "LeftLeg3IKJnt.t" "LeftLeg3DrvJntTrsBC.c2";
connectAttr "LeftLeg3FKJnt.t" "LeftLeg3DrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg3DrvJntTrsBC.b";
connectAttr "LeftLeg3AssiAPosMM.o" "LeftLeg3AssiAPosDM.imat";
connectAttr "LeftAnkleDrvJnt.wm" "LeftLeg3AssiAPosMM.i[2]";
connectAttr "LeftLeg3AssiAPos.pim" "LeftLeg3AssiAPosMM.i[3]";
connectAttr "LeftLeg3TwistFixGrpMM.o" "LeftLeg3TwistFixGrpDM.imat";
connectAttr "LeftLeg3DrvJnt.wm" "LeftLeg3TwistFixGrpMM.i[2]";
connectAttr "LeftLeg3TwistFixGrp.pim" "LeftLeg3TwistFixGrpMM.i[3]";
connectAttr "LeftLeg3TwsitFixTgPosDM.ot" "LeftLeg3TwsitFixTgPosPB.it1";
connectAttr "LeftLeg3TwsitFixTgPosDM1.ot" "LeftLeg3TwsitFixTgPosPB.it2";
connectAttr "LeftLeg3TwsitFixTgPosMM.o" "LeftLeg3TwsitFixTgPosDM.imat";
connectAttr "LeftLeg3AssiAPos.wm" "LeftLeg3TwsitFixTgPosMM.i[2]";
connectAttr "LeftLeg3TwsitFixTgPos.pim" "LeftLeg3TwsitFixTgPosMM.i[3]";
connectAttr "LeftLeg3TwsitFixTgPosMM1.o" "LeftLeg3TwsitFixTgPosDM1.imat";
connectAttr "LeftLeg3AssiBPos.wm" "LeftLeg3TwsitFixTgPosMM1.i[2]";
connectAttr "LeftLeg3TwsitFixTgPos.pim" "LeftLeg3TwsitFixTgPosMM1.i[3]";
connectAttr "LeftLeg2TwistFixGrpMM.o" "LeftLeg2TwistFixGrpDM.imat";
connectAttr "LeftLeg2DrvJnt.wm" "LeftLeg2TwistFixGrpMM.i[2]";
connectAttr "LeftLeg2TwistFixGrp.pim" "LeftLeg2TwistFixGrpMM.i[3]";
connectAttr "LeftLegIKFKCtrl.DnTwistFix" "unitConversion85.i";
connectAttr "LeftLeg2TwsitFixTgPosDM.ot" "LeftLeg2TwsitFixTgPosPB.it1";
connectAttr "LeftLeg2TwsitFixTgPosDM1.ot" "LeftLeg2TwsitFixTgPosPB.it2";
connectAttr "LeftLeg2TwsitFixTgPosMM.o" "LeftLeg2TwsitFixTgPosDM.imat";
connectAttr "LeftLeg2AssiAPos.wm" "LeftLeg2TwsitFixTgPosMM.i[2]";
connectAttr "LeftLeg2TwsitFixTgPos.pim" "LeftLeg2TwsitFixTgPosMM.i[3]";
connectAttr "LeftLeg2TwsitFixTgPosMM1.o" "LeftLeg2TwsitFixTgPosDM1.imat";
connectAttr "LeftLeg2AssiBPos.wm" "LeftLeg2TwsitFixTgPosMM1.i[2]";
connectAttr "LeftLeg2TwsitFixTgPos.pim" "LeftLeg2TwsitFixTgPosMM1.i[3]";
connectAttr "LeftLegUpSlideML.o" "LeftLegUpTxML.i1";
connectAttr "LeftLegDnSlideML.o" "LeftLegDnTxML.i1";
connectAttr "LeftLegPVStretch2BA.o" "LeftLegDnSlideML.i1";
connectAttr "LeftLegDnSlideAL.o" "LeftLegDnSlideML.i2";
connectAttr "LeftLegStretchSR.oy" "LeftLegPVStretch2BA.ab";
connectAttr "LeftLegStretchDvMD.ox" "LeftLegPVStretch2BA.i[0]";
connectAttr "LeftLegsPvStretch2DvMD.ox" "LeftLegPVStretch2BA.i[1]";
connectAttr "LeftLegPVStretch2DB.d" "LeftLegsPvStretch2DvMD.i1x";
connectAttr "LeftLeg2DB.d" "LeftLegsPvStretch2DvMD.i2x";
connectAttr "LeftLegPVStretchPos.t" "LeftLegPVStretch2DB.p1";
connectAttr "LeftLegIKMovePos.t" "LeftLegPVStretch2DB.p2";
connectAttr "LeftLegDnSlideFilterML.o" "LeftLegDnSlideAL.i1";
connectAttr "LeftLegIKCtrl.DnSlide" "LeftLegDnSlideFilterML.i1";
connectAttr "LeftLeg3IKJntQP.oq" "LeftLeg3IKJntQE.iq";
connectAttr "LeftLeg3IKJntDM.oq" "LeftLeg3IKJntQP.iq1";
connectAttr "LeftLeg3IKJntQI.oq" "LeftLeg3IKJntQP.iq2";
connectAttr "LeftLeg3IKJntMM.o" "LeftLeg3IKJntDM.imat";
connectAttr "LeftLegIKCtrlPos.wm" "LeftLeg3IKJntMM.i[2]";
connectAttr "LeftLeg3IKJnt.pim" "LeftLeg3IKJntMM.i[3]";
connectAttr "LeftLeg3IKJntEQ.oq" "LeftLeg3IKJntQI.iq";
connectAttr "LeftLeg3IKJnt.jo" "LeftLeg3IKJntEQ.irt";
connectAttr "LeftLeg1FKJntMM.o" "LeftLeg1FKJntDM.imat";
connectAttr "LeftThighFKCtrl.wm" "LeftLeg1FKJntMM.i[2]";
connectAttr "LeftLeg1FKJnt.pim" "LeftLeg1FKJntMM.i[3]";
connectAttr "LeftLeg1FKJntQP.oq" "LeftLeg1FKJntQE.iq";
connectAttr "LeftLeg1FKJntDM.oq" "LeftLeg1FKJntQP.iq1";
connectAttr "LeftLeg1FKJntQI.oq" "LeftLeg1FKJntQP.iq2";
connectAttr "LeftLeg1FKJntEQ.oq" "LeftLeg1FKJntQI.iq";
connectAttr "LeftLeg1FKJnt.jo" "LeftLeg1FKJntEQ.irt";
connectAttr "LeftLeg2FKJntMM.o" "LeftLeg2FKJntDM.imat";
connectAttr "LeftKneeFKCtrl.wm" "LeftLeg2FKJntMM.i[2]";
connectAttr "LeftLeg2FKJnt.pim" "LeftLeg2FKJntMM.i[3]";
connectAttr "LeftLeg2FKJntQP.oq" "LeftLeg2FKJntQE.iq";
connectAttr "LeftLeg2FKJntDM.oq" "LeftLeg2FKJntQP.iq1";
connectAttr "LeftLeg2FKJntQI.oq" "LeftLeg2FKJntQP.iq2";
connectAttr "LeftLeg2FKJntEQ.oq" "LeftLeg2FKJntQI.iq";
connectAttr "LeftLeg2FKJnt.jo" "LeftLeg2FKJntEQ.irt";
connectAttr "LeftLeg3FKJntMM.o" "LeftLeg3FKJntDM.imat";
connectAttr "LeftAnkleFKCtrl.wm" "LeftLeg3FKJntMM.i[2]";
connectAttr "LeftLeg3FKJnt.pim" "LeftLeg3FKJntMM.i[3]";
connectAttr "LeftLeg3FKJntQP.oq" "LeftLeg3FKJntQE.iq";
connectAttr "LeftLeg3FKJntDM.oq" "LeftLeg3FKJntQP.iq1";
connectAttr "LeftLeg3FKJntQI.oq" "LeftLeg3FKJntQP.iq2";
connectAttr "LeftLeg3FKJntEQ.oq" "LeftLeg3FKJntQI.iq";
connectAttr "LeftLeg3FKJnt.jo" "LeftLeg3FKJntEQ.irt";
connectAttr "LeftLegUpIK1DvdMD.ox" "LeftLegUpIK1CrvPointMD.i1";
connectAttr "LeftLegUpIK1DB.d" "LeftLegUpIK1DvdMD.i1x";
connectAttr "LeftLegUpIK1ChkDB.d" "LeftLegUpIK1DvdMD.i1y";
connectAttr "LeftLegUpIK1ChkDB.d" "LeftLegUpIK1DvdMD.i2x";
connectAttr "LeftLegUpIK1DB.d" "LeftLegUpIK1DvdMD.i2y";
connectAttr "LeftLegUpIK1PC.p" "LeftLegUpIK1DB.p1";
connectAttr "LeftLegUpIK2PC.p" "LeftLegUpIK1DB.p2";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK1PC.ic";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK2PC.ic";
connectAttr "LeftLegUpIK1ChkPC.p" "LeftLegUpIK1ChkDB.p1";
connectAttr "LeftLegUpIK2ChkPC.p" "LeftLegUpIK1ChkDB.p2";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIK1ChkPC.ic";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIK2ChkPC.ic";
connectAttr "LeftLegUpIK2DvdMD.ox" "LeftLegUpIK2CrvPointMD.i1";
connectAttr "LeftLegUpIK2DB.d" "LeftLegUpIK2DvdMD.i1x";
connectAttr "LeftLegUpIK2ChkDB.d" "LeftLegUpIK2DvdMD.i1y";
connectAttr "LeftLegUpIK2ChkDB.d" "LeftLegUpIK2DvdMD.i2x";
connectAttr "LeftLegUpIK2DB.d" "LeftLegUpIK2DvdMD.i2y";
connectAttr "LeftLegUpIK2PC.p" "LeftLegUpIK2DB.p1";
connectAttr "LeftLegUpIK3PC.p" "LeftLegUpIK2DB.p2";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK3PC.ic";
connectAttr "LeftLegUpIK2ChkPC.p" "LeftLegUpIK2ChkDB.p1";
connectAttr "LeftLegUpIK3ChkPC.p" "LeftLegUpIK2ChkDB.p2";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIK3ChkPC.ic";
connectAttr "LeftLegUpIK3DvdMD.ox" "LeftLegUpIK3CrvPointMD.i1";
connectAttr "LeftLegUpIK3DB.d" "LeftLegUpIK3DvdMD.i1x";
connectAttr "LeftLegUpIK3ChkDB.d" "LeftLegUpIK3DvdMD.i1y";
connectAttr "LeftLegUpIK3ChkDB.d" "LeftLegUpIK3DvdMD.i2x";
connectAttr "LeftLegUpIK3DB.d" "LeftLegUpIK3DvdMD.i2y";
connectAttr "LeftLegUpIK3PC.p" "LeftLegUpIK3DB.p1";
connectAttr "LeftLegUpIK4PC.p" "LeftLegUpIK3DB.p2";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK4PC.ic";
connectAttr "LeftLegUpIK3ChkPC.p" "LeftLegUpIK3ChkDB.p1";
connectAttr "LeftLegUpIK4ChkPC.p" "LeftLegUpIK3ChkDB.p2";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIK4ChkPC.ic";
connectAttr "LeftLegUpIK4DvdMD.ox" "LeftLegUpIK4CrvPointMD.i1";
connectAttr "LeftLegUpIK4DB.d" "LeftLegUpIK4DvdMD.i1x";
connectAttr "LeftLegUpIK4ChkDB.d" "LeftLegUpIK4DvdMD.i1y";
connectAttr "LeftLegUpIK4ChkDB.d" "LeftLegUpIK4DvdMD.i2x";
connectAttr "LeftLegUpIK4DB.d" "LeftLegUpIK4DvdMD.i2y";
connectAttr "LeftLegUpIK4PC.p" "LeftLegUpIK4DB.p1";
connectAttr "LeftLegUpIK5PC.p" "LeftLegUpIK4DB.p2";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK5PC.ic";
connectAttr "LeftLegUpIK4ChkPC.p" "LeftLegUpIK4ChkDB.p1";
connectAttr "LeftLegUpIK5ChkPC.p" "LeftLegUpIK4ChkDB.p2";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIK5ChkPC.ic";
connectAttr "LeftLegDnIK1DvdMD.ox" "LeftLegDnIK1CrvPointMD.i1";
connectAttr "LeftLegDnIK1DB.d" "LeftLegDnIK1DvdMD.i1x";
connectAttr "LeftLegDnIK1ChkDB.d" "LeftLegDnIK1DvdMD.i1y";
connectAttr "LeftLegDnIK1ChkDB.d" "LeftLegDnIK1DvdMD.i2x";
connectAttr "LeftLegDnIK1DB.d" "LeftLegDnIK1DvdMD.i2y";
connectAttr "LeftLegDnIK1PC.p" "LeftLegDnIK1DB.p1";
connectAttr "LeftLegDnIK2PC.p" "LeftLegDnIK1DB.p2";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK1PC.ic";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK2PC.ic";
connectAttr "LeftLegDnIK1ChkPC.p" "LeftLegDnIK1ChkDB.p1";
connectAttr "LeftLegDnIK2ChkPC.p" "LeftLegDnIK1ChkDB.p2";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIK1ChkPC.ic";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIK2ChkPC.ic";
connectAttr "LeftLegDnIK2DvdMD.ox" "LeftLegDnIK2CrvPointMD.i1";
connectAttr "LeftLegDnIK2DB.d" "LeftLegDnIK2DvdMD.i1x";
connectAttr "LeftLegDnIK2ChkDB.d" "LeftLegDnIK2DvdMD.i1y";
connectAttr "LeftLegDnIK2ChkDB.d" "LeftLegDnIK2DvdMD.i2x";
connectAttr "LeftLegDnIK2DB.d" "LeftLegDnIK2DvdMD.i2y";
connectAttr "LeftLegDnIK2PC.p" "LeftLegDnIK2DB.p1";
connectAttr "LeftLegDnIK3PC.p" "LeftLegDnIK2DB.p2";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK3PC.ic";
connectAttr "LeftLegDnIK2ChkPC.p" "LeftLegDnIK2ChkDB.p1";
connectAttr "LeftLegDnIK3ChkPC.p" "LeftLegDnIK2ChkDB.p2";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIK3ChkPC.ic";
connectAttr "LeftLegDnIK3DvdMD.ox" "LeftLegDnIK3CrvPointMD.i1";
connectAttr "LeftLegDnIK3DB.d" "LeftLegDnIK3DvdMD.i1x";
connectAttr "LeftLegDnIK3ChkDB.d" "LeftLegDnIK3DvdMD.i1y";
connectAttr "LeftLegDnIK3ChkDB.d" "LeftLegDnIK3DvdMD.i2x";
connectAttr "LeftLegDnIK3DB.d" "LeftLegDnIK3DvdMD.i2y";
connectAttr "LeftLegDnIK3PC.p" "LeftLegDnIK3DB.p1";
connectAttr "LeftLegDnIK4PC.p" "LeftLegDnIK3DB.p2";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK4PC.ic";
connectAttr "LeftLegDnIK3ChkPC.p" "LeftLegDnIK3ChkDB.p1";
connectAttr "LeftLegDnIK4ChkPC.p" "LeftLegDnIK3ChkDB.p2";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIK4ChkPC.ic";
connectAttr "LeftLegDnIK4DvdMD.ox" "LeftLegDnIK4CrvPointMD.i1";
connectAttr "LeftLegDnIK4DB.d" "LeftLegDnIK4DvdMD.i1x";
connectAttr "LeftLegDnIK4ChkDB.d" "LeftLegDnIK4DvdMD.i1y";
connectAttr "LeftLegDnIK4ChkDB.d" "LeftLegDnIK4DvdMD.i2x";
connectAttr "LeftLegDnIK4DB.d" "LeftLegDnIK4DvdMD.i2y";
connectAttr "LeftLegDnIK4PC.p" "LeftLegDnIK4DB.p1";
connectAttr "LeftLegDnIK5PC.p" "LeftLegDnIK4DB.p2";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK5PC.ic";
connectAttr "LeftLegDnIK4ChkPC.p" "LeftLegDnIK4ChkDB.p1";
connectAttr "LeftLegDnIK5ChkPC.p" "LeftLegDnIK4ChkDB.p2";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIK5ChkPC.ic";
connectAttr "LeftLeg1TwistFixGrpMM.o" "LeftLeg1TwistFixGrpDM.imat";
connectAttr "LeftLeg1DrvJnt.wm" "LeftLeg1TwistFixGrpMM.i[2]";
connectAttr "LeftLeg1TwistFixGrp.pim" "LeftLeg1TwistFixGrpMM.i[3]";
connectAttr "LeftLegIKFKCtrl.UpTwistFix" "unitConversion84.i";
connectAttr "LeftLegtwistFixVectorProduct.ox" "LeftLeg1TwistFixUpvec_rotateZ.i";
connectAttr "LeftLeg1TwsitFixTgPos.t" "LeftLegtwistFixVectorProduct.i1";
connectAttr "LeftLeg1TwsitFixTgPosMM.o" "LeftLeg1TwsitFixTgPosDM.imat";
connectAttr "LeftLeg2DrvJnt.wm" "LeftLeg1TwsitFixTgPosMM.i[2]";
connectAttr "LeftLeg1TwsitFixTgPos.pim" "LeftLeg1TwsitFixTgPosMM.i[3]";
connectAttr "LeftLegIKhMM.o" "LeftLegIKhDM.imat";
connectAttr "LeftLegIKCtrlPos.wm" "LeftLegIKhMM.i[2]";
connectAttr "LeftLegIKh.pim" "LeftLegIKhMM.i[3]";
connectAttr "LeftLegPVSysGrpMM.o" "LeftLegPVSysGrpDM.imat";
connectAttr "LeftLegPVSysGrp.pim" "LeftLegPVSysGrpMM.i[3]";
connectAttr "LeftLegTwistRvsML.o" "unitConversion80.i";
connectAttr "LeftLegIKCtrl.Twist" "LeftLegTwistRvsML.i1";
connectAttr "LeftLegPVVP.ox" "LeftLegPVUpvec_rotateZ.i";
connectAttr "LeftLegPVTgPos.t" "LeftLegPVVP.i1";
connectAttr "LeftLegPVTgPosMM.o" "LeftLegPVTgPosDM.imat";
connectAttr "LeftLegIKCtrlPos.wm" "LeftLegPVTgPosMM.i[2]";
connectAttr "LeftLegPVTgPos.pim" "LeftLegPVTgPosMM.i[3]";
connectAttr "LeftLegIKMovePosMM.o" "LeftLegIKMovePosDM.imat";
connectAttr "LeftLegIKCtrlPos.wm" "LeftLegIKMovePosMM.i[2]";
connectAttr "LeftLegIKMovePos.pim" "LeftLegIKMovePosMM.i[3]";
connectAttr "LeftLegPVStretchPosMM.o" "LeftLegPVStretchPosDM.imat";
connectAttr "LeftLegPoleVectorCtrl.wm" "LeftLegPVStretchPosMM.i[2]";
connectAttr "LeftLegPVStretchPos.pim" "LeftLegPVStretchPosMM.i[3]";
connectAttr "LeftLeg1ArcPosMM.o" "LeftLeg1ArcPosDM.imat";
connectAttr "LeftLeg1DrvJnt.wm" "LeftLeg1ArcPosMM.i[2]";
connectAttr "LeftLeg1ArcPos.pim" "LeftLeg1ArcPosMM.i[3]";
connectAttr "LeftLeg2ArcPosMM.o" "LeftLeg2ArcPosDM.imat";
connectAttr "LeftLeg2DrvJnt.wm" "LeftLeg2ArcPosMM.i[2]";
connectAttr "LeftLeg2ArcPos.pim" "LeftLeg2ArcPosMM.i[3]";
connectAttr "LeftLeg3ArcPosMM.o" "LeftLeg3ArcPosDM.imat";
connectAttr "LeftLeg3DrvJnt.wm" "LeftLeg3ArcPosMM.i[2]";
connectAttr "LeftLeg3ArcPos.pim" "LeftLeg3ArcPosMM.i[3]";
connectAttr "LeftLeg2ArcPos.t" "LeftLegDnArcDB.p1";
connectAttr "LeftLeg3ArcPos.t" "LeftLegDnArcDB.p2";
connectAttr "LeftLegArcDistSumALAL.o" "LeftLegArcDistMultML.i1";
connectAttr "LeftLegUpArcDB.d" "LeftLegArcDistSumALAL.i1";
connectAttr "LeftLegDnArcDB.d" "LeftLegArcDistSumALAL.i2";
connectAttr "LeftLeg1ArcPos.t" "LeftLegUpArcDB.p1";
connectAttr "LeftLeg2ArcPos.t" "LeftLegUpArcDB.p2";
connectAttr "LeftLegArcDC.oc[0]" "LeftLegUpArcCrvRC.ic";
connectAttr "LeftLegTPC.oc" "LeftLegArcDC.ic";
connectAttr "LeftLegAngleSR.ox" "LeftLegArcDC.p[0]";
connectAttr "LeftLeg1ArcPos.t" "LeftLegTPC.pt1";
connectAttr "LeftLegArcPointPos.t" "LeftLegTPC.pt2";
connectAttr "LeftLeg3ArcPos.t" "LeftLegTPC.pt3";
connectAttr "LeftLegAngleAL.o" "LeftLegAngleSR.omx";
connectAttr "unitConversion83.o" "LeftLegAngleSR.vx";
connectAttr "LeftLegTPC.s" "LeftLegAngleSR.mx";
connectAttr "unitConversion81.o" "LeftLegAngleAL.i1";
connectAttr "unitConversion82.o" "LeftLegAngleAL.i2";
connectAttr "LeftLegOutAG.a" "unitConversion81.i";
connectAttr "LeftLegVec3ToArcPA.o3" "LeftLegOutAG.v1";
connectAttr "LeftLegVec3To1PA.o3" "LeftLegOutAG.v2";
connectAttr "LeftLeg3ArcPos.t" "LeftLegVec3ToArcPA.i3[0]";
connectAttr "LeftLegArcPointPos.t" "LeftLegVec3ToArcPA.i3[1]";
connectAttr "LeftLeg3ArcPos.t" "LeftLegVec3To1PA.i3[0]";
connectAttr "LeftLeg1ArcPos.t" "LeftLegVec3To1PA.i3[1]";
connectAttr "LeftLegInAG.a" "unitConversion82.i";
connectAttr "LeftLegVecArcTo1PA.o3" "LeftLegInAG.v1";
connectAttr "LeftLegVec3To1PA.o3" "LeftLegInAG.v2";
connectAttr "LeftLegArcPointPos.t" "LeftLegVecArcTo1PA.i3[0]";
connectAttr "LeftLeg1ArcPos.t" "LeftLegVecArcTo1PA.i3[1]";
connectAttr "LeftLegOutAG.a" "unitConversion83.i";
connectAttr "LeftLegArcDC.oc[1]" "LeftLegDnArcCrvRC.ic";
connectAttr "LeftLegUpIKChkCrvMM.o" "LeftLegUpIKChkCrvDM.imat";
connectAttr "LeftLeg1DrvJnt.wm" "LeftLegUpIKChkCrvMM.i[2]";
connectAttr "LeftLegUpIKChkCrv.pim" "LeftLegUpIKChkCrvMM.i[3]";
connectAttr "LeftLegDnIKChkCrvMM.o" "LeftLegDnIKChkCrvDM.imat";
connectAttr "LeftLeg2DrvJnt.wm" "LeftLegDnIKChkCrvMM.i[2]";
connectAttr "LeftLegDnIKChkCrv.pim" "LeftLegDnIKChkCrvMM.i[3]";
connectAttr "LeftAnkleConsGrpMM.o" "LeftAnkleConsGrpDM.imat";
connectAttr "LeftLeg3DrvJnt.wm" "LeftAnkleConsGrpMM.i[2]";
connectAttr "LeftAnkleConsGrp.pim" "LeftAnkleConsGrpMM.i[3]";
connectAttr "LeftAnkleFKCtrl.s" "LeftAnkleFKScaleBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftAnkleFKScaleBC.b";
connectAttr "LeftLegIKCtrl.s" "LeftAnkleIKScaleBC.c2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftAnkleIKScaleBC.b";
connectAttr "LeftAnkleIKJntGrpMM.o" "LeftAnkleIKJntGrpDM.imat";
connectAttr "LeftLeg3IKJnt.wm" "LeftAnkleIKJntGrpMM.i[2]";
connectAttr "LeftAnkleIKJntGrp.pim" "LeftAnkleIKJntGrpMM.i[3]";
connectAttr "LeftBallIKCtrlPrtGrpMM.o" "LeftBallIKCtrlPrtGrpDM.imat";
connectAttr "LeftAnkleIKJnt.wm" "LeftBallIKCtrlPrtGrpMM.i[2]";
connectAttr "LeftBallIKCtrlPrtGrp.pim" "LeftBallIKCtrlPrtGrpMM.i[3]";
connectAttr "LeftBallIKCtrlGrpMM.o" "LeftBallIKCtrlGrpDM.imat";
connectAttr "LeftBallIKJnt.wm" "LeftBallIKCtrlGrpMM.i[2]";
connectAttr "LeftBallIKCtrlGrp.pim" "LeftBallIKCtrlGrpMM.i[3]";
connectAttr "LeftBallFKJntMM.o" "LeftBallFKJntDM.imat";
connectAttr "LeftBallFKCtrl.wm" "LeftBallFKJntMM.i[2]";
connectAttr "LeftBallFKJnt.pim" "LeftBallFKJntMM.i[3]";
connectAttr "LeftBallFKJntQP.oq" "LeftBallFKJntQE.iq";
connectAttr "LeftBallFKJntDM.oq" "LeftBallFKJntQP.iq1";
connectAttr "LeftBallFKJntQI.oq" "LeftBallFKJntQP.iq2";
connectAttr "LeftBallFKJntEQ.oq" "LeftBallFKJntQI.iq";
connectAttr "LeftBallFKJnt.jo" "LeftBallFKJntEQ.irt";
connectAttr "LeftAnkleIKJnt.t" "LeftAnkleDrvJntTrsBC.c2";
connectAttr "LeftAnkleFKJnt.t" "LeftAnkleDrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftAnkleDrvJntTrsBC.b";
connectAttr "LeftAnkleIKJnt.rx" "LeftAnkleDrvJntRotPB.irx1";
connectAttr "LeftAnkleIKJnt.ry" "LeftAnkleDrvJntRotPB.iry1";
connectAttr "LeftAnkleIKJnt.rz" "LeftAnkleDrvJntRotPB.irz1";
connectAttr "LeftAnkleFKJnt.rx" "LeftAnkleDrvJntRotPB.irx2";
connectAttr "LeftAnkleFKJnt.ry" "LeftAnkleDrvJntRotPB.iry2";
connectAttr "LeftAnkleFKJnt.rz" "LeftAnkleDrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftAnkleDrvJntRotPB.w";
connectAttr "LeftBallTrsDM.ot" "LeftBallDrvJntTrsBC.c2";
connectAttr "LeftBallFKJnt.t" "LeftBallDrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftBallDrvJntTrsBC.b";
connectAttr "LeftBallTrsMM.o" "LeftBallTrsDM.imat";
connectAttr "LeftBallIKCtrl.m" "LeftBallTrsMM.i[0]";
connectAttr "LeftBallIKCtrlGrp.m" "LeftBallTrsMM.i[1]";
connectAttr "LeftBallRotDM.orx" "LeftBallDrvJntRotPB.irx1";
connectAttr "LeftBallRotDM.ory" "LeftBallDrvJntRotPB.iry1";
connectAttr "LeftBallRotDM.orz" "LeftBallDrvJntRotPB.irz1";
connectAttr "LeftBallFKJnt.rx" "LeftBallDrvJntRotPB.irx2";
connectAttr "LeftBallFKJnt.ry" "LeftBallDrvJntRotPB.iry2";
connectAttr "LeftBallFKJnt.rz" "LeftBallDrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftBallDrvJntRotPB.w";
connectAttr "LeftBallRotMM.o" "LeftBallRotDM.imat";
connectAttr "LeftBallIKCtrl.m" "LeftBallRotMM.i[0]";
connectAttr "LeftBallIKJntOrIM.omat" "LeftBallRotMM.i[1]";
connectAttr "LeftBallIKCtrlGrp.m" "LeftBallRotMM.i[2]";
connectAttr "LeftBallIKJntOrCM.omat" "LeftBallIKJntOrIM.imat";
connectAttr "LeftBallIKJnt.jo" "LeftBallIKJntOrCM.ir";
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
connectAttr "LeftLegArcBlendShape.mlpr" "shapeEditorManager.bspr[2]";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "LeftLegCtrlGrp.wim" "L:LegRootJnt2LeftLegRootCtrlGrpMM.i[2]";
connectAttr "L:LegRootJnt2LeftLegRootCtrlGrpMM.o" "L:LegRootJnt2LeftLegRootCtrlGrpDM.imat"
		;
connectAttr "LeftLegRootCtrl.wim" "L:AnkleJnt2LeftLegIKCtrlGrpMM.i[2]";
connectAttr "L:AnkleJnt2LeftLegIKCtrlGrpMM.o" "L:AnkleJnt2LeftLegIKCtrlGrpDM.imat"
		;
connectAttr "LeftLegRootCtrl.wim" "L:KneeJnt2LeftLegPoleVectorCtrlGrpMM.i[2]";
connectAttr "L:KneeJnt2LeftLegPoleVectorCtrlGrpMM.o" "L:KneeJnt2LeftLegPoleVectorCtrlGrpDM.imat"
		;
connectAttr "LeftLegRootCtrl.wim" "L:HipJnt2LeftThighFKCtrlGrpOffGrpMM.i[2]";
connectAttr "L:HipJnt2LeftThighFKCtrlGrpOffGrpMM.o" "L:HipJnt2LeftThighFKCtrlGrpOffGrpDM.imat"
		;
connectAttr "LeftLegRootCtrl.wim" "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpMM.i[2]";
connectAttr "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpMM.o" "L:KneeJnt2LeftKneeFKCtrlGrpOffGrpDM.imat"
		;
connectAttr "LeftLegRootCtrl.wim" "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpMM.i[2]";
connectAttr "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpMM.o" "L:AnkleJnt2LeftAnkleFKCtrlGrpOffGrpDM.imat"
		;
connectAttr "LeftLegUpIKCrv.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "LeftLegIKFKCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "LeftLegUpIK1PC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "LeftLeg3DrvJnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "LeftLeg1ArcPos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "LeftLeg2UpCs.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "LeftLegUpIK5PC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "LeftLeg2UpCsHandleZeroMtx.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "LeftLegUpArcDB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "unitConversion81.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "LeftLegArcPointPosPTCons.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "LeftLegUpIK3DvdMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "LeftLegUpIK4CrvPointMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "LeftLegUpIK4DvdMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "LeftLegOutAG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "LeftLeg2UpCsHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "LeftLeg2ArcPosDM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "rebuildCurve5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "LeftLeg3ArcPosMM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "LeftLegUp2ArcJnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "LeftLegUpIK2CrvPointMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "LeftLegVec3To1PA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "LeftLegArcDistMultML.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "LeftLegArcBlendShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "LeftLegUpIK1DvdMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "LeftLegUpIK3CrvPointMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "unitConversion83.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "LeftLeg1DrvJnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "LeftLegUpIK1DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "LeftLegUpArcCrvShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "LeftLegUpIK3DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "LeftLegDnArcDB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "LeftLegUp3ArcJnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "LeftLegUpArcPC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "LeftLeg1CsHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "LeftLegUpArcIKh.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "LeftLegUpArcCM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "LeftLegUpIK4PC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "LeftLeg1Cs.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "LeftLegVecArcTo1PA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "LeftLegUpArcCtrlGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "LeftLegUpIK2DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "LeftLegUpIK2PC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "LeftLegTPC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "LeftLegAngleSR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "LeftLeg1ArcPosDM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "LeftLegUp4ArcJnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "LeftLegAngleAL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "LeftLegUpArcCrvRC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "LeftLeg1CsHandleZeroMtx.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "LeftLegUp5ArcJnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "LeftLeg2UpCsHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "LeftLegUpIK3PC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "LeftLegUpIKCrvShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "LeftLegUpArcCrv.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "LeftLegUpIK2DvdMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "LeftLeg2ArcPos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "LeftLeg1ArcPosMM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "effector23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "LeftLeg3ArcPos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "LeftLeg2DrvJnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "LeftLegUpIK1CrvPointMD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "LeftLegArcDistSumALAL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "LeftLegVec3ToArcPA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "LeftLegUpArcMM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn";
connectAttr "LeftLeg2ArcPosMM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "LeftLegInAG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn";
connectAttr "LeftLeg1CsHandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "LeftLegArcPointPos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "LeftLegArcDC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn";
connectAttr "unitConversion82.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "LeftLegUpArcCtrlGrp_tangentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "LeftLegUpIKCrvShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "LeftLegUpIK4DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn";
connectAttr "LeftLegArcBlendShape_LeftLegArcCrvGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "LeftLeg3ArcPosDM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "LeftLegUpArcDM.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "LeftLeg2UpCsSet.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
// End of Leg02.ma
