//Maya ASCII 2018ff09 scene
//Name: MVQleg.ma
//Last modified: Sun, Apr 03, 2022 12:45:35 AM
//Codeset: 949
requires maya "2018ff09";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" -nodeType "quatInvert" -nodeType "quatProd"
		 "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -n "LeftLegRigGrp";
	rename -uid "56E35DA2-45DC-0748-5183-9D80A1034D7B";
createNode transform -n "LeftLegCtrlGrp" -p "LeftLegRigGrp";
	rename -uid "5B83E101-4D99-347C-3354-1993692585BB";
createNode transform -n "LeftLegRootCtrlGrp" -p "LeftLegCtrlGrp";
	rename -uid "93ECA153-4E7B-21F8-B31D-82A39C63FF71";
	setAttr ".t" -type "double3" 10.851168583630098 41.062054207349618 -24.997094310227158 ;
	setAttr ".r" -type "double3" 0 10.052882769899981 -89.999999999999133 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftLegRootCtrl" -p "LeftLegRootCtrlGrp";
	rename -uid "9B0B6336-4385-9EE6-FE2F-8EAB69C1DE6F";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftLegRootCtrlShape" -p "LeftLegRootCtrl";
	rename -uid "FBE5642D-46B3-60A5-5B10-70898CAE0585";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 0 no 3
		19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		3.3565684420942039e-14 0.28639383750566583 0
		-0.28639383750564112 -8.3914211052355097e-15 0
		3.3565684420942039e-14 -0.28639383750568287 0
		0.28639383750570802 -8.3914211052355097e-15 0
		3.3565684420942039e-14 0.28639383750566583 0
		3.8530214875806195e-14 6.8599495077959798 -3.550776625787513e-15
		-1.0636437860626644 6.8599495077959798 -3.550776625787513e-15
		-1.0636437860626644 8.9872370799213694 -3.550776625787513e-15
		-3.1909313581880703 8.9872370799213694 -3.550776625787513e-15
		-3.1909313581880703 11.11452465204677 -3.550776625787513e-15
		-1.0636437860626644 11.11452465204677 -3.550776625787513e-15
		-1.0636437860626644 13.241812224172213 -3.550776625787513e-15
		1.0636437860627386 13.241812224172213 -3.550776625787513e-15
		1.0636437860627386 11.11452465204677 -3.550776625787513e-15
		3.190931358188136 11.11452465204677 -3.550776625787513e-15
		3.190931358188136 8.9872370799213694 -3.550776625787513e-15
		1.0636437860627386 8.9872370799213694 -3.550776625787513e-15
		1.0636437860627386 6.8599495077959798 -3.550776625787513e-15
		3.8530214875806195e-14 6.8599495077959798 -3.550776625787513e-15
		;
createNode transform -n "LeftLegIKFKCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "64D6097A-4AFB-20EA-D43D-BC9191CC44F3";
	setAttr ".s" -type "double3" 0.99999999999999767 1.000000000000002 0.99999999999999867 ;
createNode transform -n "LeftLegIKFKCtrl" -p "LeftLegIKFKCtrlGrp";
	rename -uid "38369F69-4EA0-AFBC-FD9D-55A132719AC8";
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
	setAttr -cb on ".ArcCtrlVis";
createNode nurbsCurve -n "LeftLegIKFKCtrlShape" -p "LeftLegIKFKCtrl";
	rename -uid "D7B7954B-4717-FA19-9D78-168CBC75220F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-7.5396770604745447 9.9802043142291144 1.9293285560290731e-14
		-7.5396770604745429 11.627939561858451 1.8927414838209828e-14
		-12.525560998257058 6.9580242579987228 1.9964344336888721e-14
		-3.7797600329471868 6.9580242579987095 1.9964344336888721e-14
		-3.7797600329471899 5.3102890103693756 2.0330215058969624e-14
		1.2061239048353243 9.9802043142291001 1.9293285560290731e-14
		-7.5396770604745447 9.9802043142291144 1.9293285560290731e-14
		;
createNode transform -n "LeftLegIKCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "12C462B6-4A1D-7669-A20D-9385A615A27A";
	setAttr ".t" -type "double3" 39.053772307046422 -8.8817841970012523e-15 -3.8891148419947861 ;
	setAttr ".r" -type "double3" -10.137836926722965 7.3842060656656345 88.683524692724973 ;
	setAttr ".s" -type "double3" 0.99999999999999745 1.0000000000000022 0.99999999999999867 ;
createNode transform -n "LeftLegIKConstCtrl" -p "LeftLegIKCtrlGrp";
	rename -uid "7F67042B-425F-7944-92D1-219A031BE275";
	addAttr -ci true -sn "UpVolume" -ln "UpVolume" -at "double";
	addAttr -ci true -sn "DnVolume" -ln "DnVolume" -at "double";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLegIKConstCtrlShape" -p "LeftLegIKConstCtrl";
	rename -uid "FEC794C0-443B-00A3-61CB-C08AB8F47AE4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.6437841715966117 -0.0089286950843962577 -7.131042575771315
		0.008245129391401233 1.075812113977435 -10.22872790734397
		-6.6272939128138111 -0.0089287417195954635 -7.1310425757713123
		-10.102603388648539 -1.3936656931071254 1.7208290422522281
		-7.5475765679267299 -0.0089287417195966848 12.608697172293406
		-3.4455387056821278e-15 1.0758121139774333 16.671434117389758
		7.5475765679267237 -0.0089287417195966848 12.608697172293406
		10.109860816644311 -1.3936656931071254 1.7208290422522308
		6.6437841715966117 -0.0089286950843962577 -7.131042575771315
		0.008245129391401233 1.075812113977435 -10.22872790734397
		-6.6272939128138111 -0.0089287417195954635 -7.1310425757713123
		;
createNode transform -n "LeftLegIKCtrl" -p "LeftLegIKConstCtrl";
	rename -uid "274858CC-4735-4AA2-0209-0FB7C64F1845";
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
	rename -uid "AD2A9CF5-44DF-BF4F-4806-5AACB7E69EDE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1272567850301565 -0.48262531414660476 -5.4218656020908655
		0.008245129391401769 0.80436312298674528 -7.811586650669283
		-5.1107665262473549 -0.48262531414660476 -5.4218656020908647
		-7.5991951307140173 -1.3936656931071254 1.2473254968003413
		-5.7721348187020922 -0.48262531414660564 10.065683515105162
		-2.9309073602209637e-15 0.80436312298674395 13.501257668246264
		5.7733041943407697 -0.48262531414660564 10.065684528459361
		7.6096357431438495 -1.3936656931071254 1.2473254968003431
		5.1272567850301565 -0.48262531414660476 -5.4218656020908655
		0.008245129391401769 0.80436312298674528 -7.811586650669283
		-5.1107665262473549 -0.48262531414660476 -5.4218656020908647
		;
createNode transform -n "LeftLegIKPosGrp" -p "LeftLegIKCtrl";
	rename -uid "31ED5022-4CF0-361E-E26F-B2BDAC122300";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -3.044594589314064e-14 -1.4272642141306551e-13 -89.999999999999176 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "LeftLegIKPos" -p "LeftLegIKPosGrp";
	rename -uid "C9982994-4EB6-323A-CA48-6AB7C37C27D2";
createNode transform -n "LeftFootSysGrp" -p "LeftLegIKCtrl";
	rename -uid "62FAC103-44CB-D42C-00FB-198456B89F18";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -90 -90 0 ;
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999756 1.0000000000000013 ;
createNode transform -n "LeftFootMvPivGrp" -p "LeftFootSysGrp";
	rename -uid "E8131371-4C6B-2307-EFB8-268C656844BC";
createNode transform -n "LeftFootInMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "9700ADE4-4ABD-8A18-D4EB-B4A44B622611";
	setAttr ".t" -type "double3" 3.2969950626838163 -4.2232649405783604 -3.2867445744010251 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000047 0.99999999999999656 ;
	setAttr ".dh" yes;
createNode transform -n "LeftFootOutMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "E9401AFB-4BE8-CB8B-F864-3EB3E87B66FC";
	setAttr ".t" -type "double3" 3.2969950626838269 4.8551529469300654 -3.2867445744010308 ;
	setAttr ".s" -type "double3" 1.0000000000000042 0.99999999999999634 0.99999999999999944 ;
	setAttr ".dh" yes;
createNode transform -n "LeftHeelMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "F4DB8A2A-43CA-E6F3-46A4-44B92BA513EE";
	setAttr ".t" -type "double3" -1.2177727296079857 0.42394539325591601 -3.2867445744010282 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000047 0.99999999999999656 ;
	setAttr ".dh" yes;
createNode transform -n "LeftToeMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "9A2FEDE6-4307-DC9A-7530-D4809B40147F";
	setAttr ".t" -type "double3" 8.9130996519435826 0.6 -3.3341339848371794 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000047 0.99999999999999656 ;
	setAttr ".dh" yes;
createNode transform -n "LeftBallMvPivPos" -p "LeftFootMvPivGrp";
	rename -uid "65B748ED-4CD6-9DB6-83CE-428FEFD8A3FC";
	setAttr ".t" -type "double3" 4.4892641618821472 0.55398863396473175 -1.5021977148621337 ;
	setAttr ".r" -type "double3" -4.9710405543554905e-17 1.3713827602809943 7.0349051018128304 ;
	setAttr ".s" -type "double3" 1.0000000000000098 0.99999999999999256 0.99999999999999745 ;
	setAttr ".dh" yes;
createNode transform -n "LeftFootInRotPos" -p "LeftFootSysGrp";
	rename -uid "5D6847C8-435A-3787-1435-7EA91E5854DA";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000047 0.99999999999999656 ;
createNode transform -n "LeftFootOutRotPos" -p "LeftFootInRotPos";
	rename -uid "F97257E3-488C-C541-7EC8-7CB94D204DE3";
createNode transform -n "LeftHeelRollPivPos" -p "LeftFootOutRotPos";
	rename -uid "42B9D1CA-46BF-01A7-06EA-7CB4B4C0D1A2";
createNode transform -n "LeftToeRollPivPos" -p "LeftHeelRollPivPos";
	rename -uid "AB6CE6CF-4E90-7B3F-C72E-1FA7DE669A63";
createNode transform -n "LeftBallPivPos" -p "LeftToeRollPivPos";
	rename -uid "5608E8AD-43AE-141D-5C9F-4E8B3DBC85DC";
createNode transform -n "LeftFootRollPos" -p "LeftBallPivPos";
	rename -uid "DC7FB5CD-4CDD-D8DE-4B66-6D9E6A9CBEE3";
createNode transform -n "LeftIKFootRollPos" -p "LeftFootRollPos";
	rename -uid "CC22791B-4BEA-97A3-A29D-8B8F4ED90052";
createNode ikHandle -n "LeftBallIKh" -p "LeftFootRollPos";
	rename -uid "9A7BCC2D-4FA9-A738-EA52-6AA17A395748";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4892641618821578 0.55398863396471043 -1.5021977148621286 ;
	setAttr ".r" -type "double3" 0 18.371382760281069 7.0349051018128055 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
	setAttr ".pv" -type "double3" 0.99144486137380983 -0.13052619222005443 3.9406881961015795e-18 ;
	setAttr ".roc" yes;
createNode transform -n "LeftBallRollPos" -p "LeftBallPivPos";
	rename -uid "B4F6D5EF-486F-DD72-93E0-5DBE469E9666";
createNode ikHandle -n "LeftToeIKh" -p "LeftBallRollPos";
	rename -uid "0680B92F-472A-F199-CB1D-8AADC17BA2DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.440917705890683 1.2884405401580974 -1.6457593839357649 ;
	setAttr ".r" -type "double3" -1.2427601385888729e-17 1.3713827602810671 7.0349051018128472 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999967 ;
	setAttr ".pv" -type "double3" 0.99144486137380983 -0.13052619222005443 3.9406881961015795e-18 ;
	setAttr ".roc" yes;
createNode transform -n "LeftLegPoleVectorCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "51E9D622-417B-41AA-A2B3-F28193F1BB81";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000004 1 ;
createNode transform -n "LeftLegPoleVectorCtrl" -p "LeftLegPoleVectorCtrlGrp";
	rename -uid "1E6BBA3B-400F-072C-AA63-AFAC6AAC07BF";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 4 -en "Auto:Hip:Root:Fly:World" 
		-at "enum";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "LeftLegPoleVectorCtrlShape" -p "LeftLegPoleVectorCtrl";
	rename -uid "EEB74B68-4942-3150-9BF2-14BAECF8B75A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-0.0081253546370107128 -0.027578263431073308 2.9340291583566644
		-0.0081253546370099721 -7.4958533840950103 10.402304279020598
		-0.0081253546370112575 -3.7617158237630397 14.13644183935256
		-0.0081253546370116305 -0.027578263431073308 10.402304279020598
		-0.0081253546370129159 3.7065592969008923 14.13644183935256
		-0.0081253546370132872 7.4406968572328607 10.402304279020598
		-0.0081253546370107128 -0.027578263431073308 2.9340291583566644
		;
createNode parentConstraint -n "LeftLegPoleVectorCtrlGrp_parentConstraint2" -p "LeftLegPoleVectorCtrlGrp";
	rename -uid "D84EDB7D-4C89-1AA5-B14F-C6AB97158FE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegPVAutoSpaceW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" 3.9051314496466514e-06 0.067034771139044033 90.00667556621238 ;
	setAttr ".rst" -type "double3" 16.104477495619843 -5.3290705182007514e-15 -1.0878409284487134e-11 ;
	setAttr ".rsrr" -type "double3" -3.3734876747962088e-15 -2.5070987772924901e-29 
		89.999999999999147 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThighFKCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "F8E9E295-4995-4CEC-BB7C-E7BE8BF84935";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "LeftThighFKCtrl" -p "LeftThighFKCtrlGrp";
	rename -uid "67D1F0C1-4EBA-B75A-6E30-58B5DBAB661B";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 2 -en "Hip:Root:World" -at "enum";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "LeftThighFKCtrlShape" -p "LeftThighFKCtrl";
	rename -uid "918145BB-41F8-32C2-DBBE-1AB45E1BF2D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 -6.7459822507589333e-16 -10.438025078642227
		-2.3177071547846821e-15 -10.438025078642227 0
		0 -6.7459822507589333e-16 10.438025078642227
		2.3177071547846821e-15 10.438025078642227 0
		0 -6.7459822507589333e-16 -10.438025078642227
		;
createNode transform -n "LeftKneeFKCtrlGrp" -p "LeftThighFKCtrl";
	rename -uid "760B1F5C-4BB9-67F2-FC41-B1BAE2B3913E";
	setAttr ".t" -type "double3" 16.10447749561984 -1.7763568394002505e-15 -1.0878409284487134e-11 ;
	setAttr ".r" -type "double3" 0 32.351887300100017 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 1 ;
createNode transform -n "LeftKneeFKCtrl" -p "LeftKneeFKCtrlGrp";
	rename -uid "AFDD5FDF-4501-2AC4-C2FC-5F9D161319D5";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftKneeFKCtrlShape" -p "LeftKneeFKCtrl";
	rename -uid "A3FFC93C-4078-CB0D-1971-728A098CEDFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-5.2702986334054248e-17 0 -10.438025078642227
		-2.3704101411187323e-15 -10.438025078642227 0
		-5.2702986334054248e-17 0 10.438025078642227
		2.2650041684506345e-15 10.438025078642227 0
		-5.2702986334054248e-17 0 -10.438025078642227
		;
createNode transform -n "LeftAnkleFKCtrlGrp" -p "LeftKneeFKCtrl";
	rename -uid "F9CEEED3-44CB-24F0-BB8B-EFA947CA1557";
	setAttr ".t" -type "double3" 13.621461935896367 1.7763568394002505e-15 -1.1823431123048067e-11 ;
	setAttr ".r" -type "double3" 0 -48.900848477299988 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999845 0.99999999999999922 ;
createNode transform -n "LeftAnkleFKCtrl" -p "LeftAnkleFKCtrlGrp";
	rename -uid "CA8C179E-41CA-B3B8-DBE5-9BAEEFE30A4C";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftAnkleFKCtrlShape" -p "LeftAnkleFKCtrl";
	rename -uid "341DB711-458A-410B-8630-0EA31C54DB42";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -10.438025078642227
		-2.3177071547846821e-15 -10.438025078642227 0
		0 0 10.438025078642227
		2.3177071547846821e-15 10.438025078642227 0
		0 0 -10.438025078642227
		;
createNode transform -n "LeftLeg4FKCtrlGrp" -p "LeftAnkleFKCtrl";
	rename -uid "7D206115-4336-C0AD-EEAC-AF8BAE1F6F44";
	setAttr ".t" -type "double3" 11.936644631246631 -7.1054273576010019e-15 -2.1174173525650986e-12 ;
	setAttr ".r" -type "double3" -7.5000000000000062 6.4960784072999802 5.0017297881669879e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999745 1.0000000000000036 0.99999999999999922 ;
createNode transform -n "LeftLeg4FKCtrl" -p "LeftLeg4FKCtrlGrp";
	rename -uid "525F7489-490B-209D-147E-6DACBE1BF39D";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLeg4FKCtrlShape" -p "LeftLeg4FKCtrl";
	rename -uid "0FAE4BA2-43E8-006B-999F-29894855BE4F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-3.0848557237976945e-15 9.1189260158843037 1.6624749273561551e-17
		-3.0848557237976945e-15 7.1695245351939771e-16 9.1189260158843037
		-3.0848557237976945e-15 -9.1189260158843037 1.6624749273561551e-17
		-3.0848557237976945e-15 7.1695245351939771e-16 -9.1189260158843037
		-3.0848557237976945e-15 9.1189260158843037 1.6624749273561551e-17
		;
createNode transform -n "LeftHeelIKGrp" -p "LeftLegRootCtrl";
	rename -uid "34EE3E3F-421B-2F43-9A16-EE9AF03A9064";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999745 0.99999999999999867 ;
createNode transform -n "LeftHeelIKAMGrp" -p "LeftHeelIKGrp";
	rename -uid "8E0F604E-41C0-A14B-578B-429A9E9DD6A8";
createNode transform -n "LeftHeelRotIKCtrlGrp" -p "LeftHeelIKAMGrp";
	rename -uid "EC3C4FAF-4838-6FAD-EA0E-E0846EEBEC08";
	setAttr ".t" -type "double3" 1.1546319456101628e-14 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 6.4960784072896791 0 89.999999999999289 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "LeftHeelRotIKCtrl" -p "LeftHeelRotIKCtrlGrp";
	rename -uid "5FE27516-4F98-9EB0-1B5B-97B03A82B9A4";
	setAttr -l on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftHeelRotIKCtrlShape" -p "LeftHeelRotIKCtrl";
	rename -uid "A85CF68B-472A-79AE-839E-A3A2D58A101A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		-1.8944890587102605e-16 4.9829438378817041 1.7997646057747457e-16
		-1.9068878967120819 4.6036421529421458 1.7997646057747457e-16
		-3.5234744683730188 3.5234744683730188 1.7997646057747457e-16
		-4.6036421529421458 1.9068878967120819 1.7997646057747457e-16
		-4.9829438378817041 -1.3354213391118961e-16 1.7997646057747457e-16
		-4.6036421529421458 -1.9068878967120819 1.7997646057747457e-16
		-3.5234744683730188 -3.5234744683730188 1.7997646057747457e-16
		-1.9068878967120819 -4.6036421529421458 1.7997646057747457e-16
		-1.8944890587102605e-16 -4.9829438378817041 1.7997646057747457e-16
		1.9068878967120819 -4.6036421529421458 1.7997646057747457e-16
		3.5234744683730188 -3.5234744683730188 1.7997646057747457e-16
		4.6036421529421458 -1.9068878967120819 1.7997646057747457e-16
		4.9829438378817041 -1.3354213391118961e-16 1.7997646057747457e-16
		4.6036421529421458 1.9068878967120819 1.7997646057747457e-16
		3.5234744683730188 3.5234744683730188 1.7997646057747457e-16
		1.9068878967120819 4.6036421529421458 1.7997646057747457e-16
		-1.8944890587102605e-16 4.9829438378817041 1.7997646057747457e-16
		-1.8944890587102605e-16 4.6036421529421458 1.9068878967120819
		-1.8944890587102605e-16 3.5234744683730188 3.5234744683730188
		-1.8944890587102605e-16 1.9068878967120819 4.6036421529421458
		-1.8944890587102605e-16 -1.3354213391118961e-16 4.9829438378817041
		-1.8944890587102605e-16 -1.9068878967120819 4.6036421529421458
		-1.8944890587102605e-16 -3.5234744683730188 3.5234744683730188
		-1.8944890587102605e-16 -4.6036421529421458 1.9068878967120819
		-1.8944890587102605e-16 -4.9829438378817041 1.7997646057747457e-16
		-1.8944890587102605e-16 -4.6036421529421458 -1.9068878967120819
		-1.8944890587102605e-16 -3.5234744683730188 -3.5234744683730188
		-1.8944890587102605e-16 -1.9068878967120819 -4.6036421529421458
		-1.8944890587102605e-16 -1.3354213391118961e-16 -4.9829438378817041
		-1.8944890587102605e-16 1.9068878967120819 -4.6036421529421458
		-1.8944890587102605e-16 3.5234744683730188 -3.5234744683730188
		-1.8944890587102605e-16 4.6036421529421458 -1.9068878967120819
		-1.8944890587102605e-16 4.9829438378817041 1.7997646057747457e-16
		-1.9068878967120819 4.6036421529421458 1.7997646057747457e-16
		-3.5234744683730188 3.5234744683730188 1.7997646057747457e-16
		-4.6036421529421458 1.9068878967120819 1.7997646057747457e-16
		-4.9829438378817041 -1.3354213391118961e-16 1.7997646057747457e-16
		-4.6036421529421458 -1.3354213391118961e-16 1.9068878967120819
		-3.5234744683730188 -1.3354213391118961e-16 3.5234744683730188
		-1.9068878967120819 -1.3354213391118961e-16 4.6036421529421458
		-1.8944890587102605e-16 -1.3354213391118961e-16 4.9829438378817041
		1.9068878967120819 -1.3354213391118961e-16 4.6036421529421458
		3.5234744683730188 -1.3354213391118961e-16 3.5234744683730188
		4.6036421529421458 -1.3354213391118961e-16 1.9068878967120819
		4.9829438378817041 -1.3354213391118961e-16 1.7997646057747457e-16
		4.6036421529421458 -1.3354213391118961e-16 -1.9068878967120819
		3.5234744683730188 -1.3354213391118961e-16 -3.5234744683730188
		1.9068878967120819 -1.3354213391118961e-16 -4.6036421529421458
		-1.8944890587102605e-16 -1.3354213391118961e-16 -4.9829438378817041
		-1.9068878967120819 -1.3354213391118961e-16 -4.6036421529421458
		-3.5234744683730188 -1.3354213391118961e-16 -3.5234744683730188
		-4.6036421529421458 -1.3354213391118961e-16 -1.9068878967120819
		-4.9829438378817041 -1.3354213391118961e-16 1.7997646057747457e-16
		;
createNode transform -n "LeftHeelIKOff" -p "LeftHeelRotIKCtrl";
	rename -uid "D9AE7104-4A55-A42B-E93F-5488F9A4A47B";
	setAttr ".t" -type "double3" -1.723066134218243e-13 11.860006616078612 -1.3504547823756354 ;
	setAttr ".r" -type "double3" -6.4960784072998781 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "LeftHeelIKCtrl" -p "LeftHeelIKOff";
	rename -uid "D63212A4-4A99-5719-76CE-73B9D874FEDA";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftHeelIKCtrlShape" -p "LeftHeelIKCtrl";
	rename -uid "2AED114F-450D-D7E2-71C3-99AA05328E63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.2843916682670944 2.3647393171433729e-14 -7.2843916682671104
		1.6917384600326768e-15 2.3832149132532512e-14 -10.30168549090091
		-7.2843916682670944 2.3647393171433729e-14 -7.2843916682671104
		-10.301685490900901 2.3201352824419768e-14 -1.4991809508077166e-14
		-7.2843916682670944 2.2755312477405812e-14 7.2843916682670837
		2.9015270651094264e-17 2.2570556516307029e-14 10.301685490900891
		7.2843916682670944 2.2755312477405812e-14 7.2843916682670802
		10.301685490900901 2.3201352824419768e-14 -1.3052931099990079e-14
		7.2843916682670944 2.3647393171433729e-14 -7.2843916682671104
		1.6917384600326768e-15 2.3832149132532512e-14 -10.30168549090091
		-7.2843916682670944 2.3647393171433729e-14 -7.2843916682671104
		;
createNode pointConstraint -n "LeftHeelIKAMGrp_pointConstraint1" -p "LeftHeelIKAMGrp";
	rename -uid "0A93DF9B-4205-082B-8330-36BD030D54A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftHeelIKPointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -7.9936057773011271e-15 -1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "LeftHeelIKAMGrp_aimConstraint1" -p "LeftHeelIKAMGrp";
	rename -uid "D693280E-49F3-6DB0-93D2-C4B0951982DC";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLegRev2IKJntW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 7.5479071431952729 -6.4402672813955544 -0.85149762755398983 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegUpArcCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "723747E5-4375-3676-2850-B4B585F14D82";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251563e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525293e-31 0 ;
createNode transform -n "LeftLegUpArcCtrl" -p "LeftLegUpArcCtrlGrp";
	rename -uid "70CB75F6-4B06-3131-38EA-438ABF43F9C7";
	setAttr -l on ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftLegUpArcCtrlShape" -p "LeftLegUpArcCtrl";
	rename -uid "D426492A-4DDB-0277-06C2-A1935F03E203";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		-1.1977559386210062e-14 4.1904811229241867e-15 -7.6862308153778747
		-1.3252549353063599e-14 -5.742044339622681 -5.3077960933955879
		-1.3780667951246132e-14 -8.1204790616049678 0.43424824622709818
		-1.3252549353063599e-14 -5.742044339622681 6.1762925858497848
		-1.1977559386210062e-14 4.1904811229241867e-15 8.5547273078320689
		-1.0702569419356535e-14 5.7420443396226917 6.1762925858497848
		-1.0174450821173998e-14 8.1204790616049785 0.43424824622709818
		-1.0702569419356535e-14 5.7420443396226917 -5.3077960933955879
		-1.1977559386210062e-14 4.1904811229241867e-15 -7.6862308153778747
		;
createNode tangentConstraint -n "LeftLegUpArcCtrlGrp_tangentConstraint1" -p "LeftLegUpArcCtrlGrp";
	rename -uid "C4990641-4449-0EBF-93B0-0CB1B0F6E525";
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
	setAttr ".rsrr" -type "double3" 7.2678306001728149e-14 10.052882769938657 -89.999999999998735 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg1CsHandleGrp" -p "LeftLegUpArcCtrlGrp";
	rename -uid "EEDCE6BA-4B76-7ECA-6D32-BBA03A4F48E5";
createNode transform -n "LeftLeg1CsHandleZeroMtx" -p "LeftLeg1CsHandleGrp";
	rename -uid "D1EF5DA1-4084-3501-BF16-ECB4D0F321B0";
createNode transform -n "LeftLeg1CsHandle" -p "LeftLeg1CsHandleGrp";
	rename -uid "ECEC1701-4B23-3ACD-CB08-AD991293EC73";
	setAttr ".v" no;
createNode clusterHandle -n "LeftLeg1CsHandleShape" -p "LeftLeg1CsHandle";
	rename -uid "8AF6842D-4C17-122B-48B4-10A9D7303EC7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftLegMidArcCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "FEA74771-4AAE-6B3B-2984-C8B64654D95F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251563e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525293e-31 0 ;
createNode transform -n "LeftLegMidArcCtrlPBGrp" -p "LeftLegMidArcCtrlGrp";
	rename -uid "40899CDA-4BE7-A906-C791-428464021300";
	addAttr -ci true -k true -sn "pbw" -ln "pbw" -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr -k on ".pbw" 0.5;
createNode transform -n "LeftLegMidArcCtrl" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "FE687BD5-4781-5745-42C3-5A99560D68C8";
	setAttr -l on ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftLegMidArcCtrlShape" -p "LeftLegMidArcCtrl";
	rename -uid "7D558418-4005-C033-6504-9989B5BF7FBD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		2.041740601093135e-15 -6.2979671063589271e-15 -6.7157259488843923
		8.1290339562162637e-16 -5.5341907806604755 -4.4233870653323262
		3.0390191386902123e-16 -7.826529664212555 1.1108037153281467
		8.1290339562162637e-16 -5.5341907806604755 6.6449944959886249
		2.041740601093135e-15 -6.2979671063589271e-15 8.9373333795406911
		3.2705778065646381e-15 5.5341907806604693 6.6449944959886249
		3.779579288317246e-15 7.8265296642125399 1.1108037153281467
		3.2705778065646381e-15 5.5341907806604693 -4.4233870653323262
		2.041740601093135e-15 -6.2979671063589271e-15 -6.7157259488843923
		;
createNode orientConstraint -n "LeftLegMidArcCtrlPBGrp_orientConstraint1" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "A628398F-418F-27FA-9F8A-2A9077BAAA02";
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
	setAttr ".lr" -type "double3" -1.638352988251575e-17 -32.351887300100017 -1.7885909953268758e-17 ;
	setAttr ".rsrr" -type "double3" 0 -32.351887300100017 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "LeftLegMidArcCtrlPBGrp_pointConstraint1" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "B7D34E13-478F-E5A0-37AE-24918A32F27F";
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
	setAttr ".rst" -type "double3" 0.28637113814830228 -7.7715611723760958e-15 -0.98724285831325176 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg2UpCsHandleGrp" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "4AAFCC99-40B6-8068-DAE7-0B8971FF5CB8";
createNode transform -n "LeftLeg2UpCsHandleZeroMtx" -p "LeftLeg2UpCsHandleGrp";
	rename -uid "576EDE81-490B-65FB-1F15-77A0567C40E1";
createNode transform -n "LeftLeg2UpCsHandle" -p "LeftLeg2UpCsHandleGrp";
	rename -uid "54DB0BBB-4E52-E729-684F-ACB1E364ED3F";
	setAttr ".v" no;
createNode clusterHandle -n "LeftLeg2UpCsHandleShape" -p "LeftLeg2UpCsHandle";
	rename -uid "D4A7422C-4877-C94F-7639-998292A4D351";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftLeg2DnCsHandleGrp" -p "LeftLegMidArcCtrlPBGrp";
	rename -uid "96F78D8B-405B-27AA-ABFC-EBB752015002";
createNode transform -n "LeftLeg2DnCsHandleZeroMtx" -p "LeftLeg2DnCsHandleGrp";
	rename -uid "0EE2EF14-49DA-1FD4-486A-7F97B6ACDAAC";
createNode transform -n "LeftLeg2DnCsHandle" -p "LeftLeg2DnCsHandleGrp";
	rename -uid "68F845B4-4D01-FA0B-6664-6984559A1FB5";
	setAttr ".v" no;
createNode clusterHandle -n "LeftLeg2DnCsHandleShape" -p "LeftLeg2DnCsHandle";
	rename -uid "809B3E47-4288-5C3D-EC9B-088A26AB48BD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "LeftLegMidArcCtrlGrp_parentConstraint1" -p "LeftLegMidArcCtrlGrp";
	rename -uid "D1E33D9E-4A69-3483-9A46-7E90A45CF259";
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
	setAttr ".lr" -type "double3" -0.079351966502100774 32.35186636506787 -0.035787062765030082 ;
	setAttr ".rst" -type "double3" 10.851168583630338 25.204828346092157 -27.808244454287454 ;
	setAttr ".rsrr" -type "double3" 4.3073647440431628e-15 42.404770069999991 -89.999999999999119 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegDnArcCtrlGrp" -p "LeftLegRootCtrl";
	rename -uid "9E5558F5-4704-6A92-3AB0-DF9FB93E5083";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251563e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525291e-31 0 ;
createNode transform -n "LeftLegDnArcCtrl" -p "LeftLegDnArcCtrlGrp";
	rename -uid "FC6747E8-407C-F756-EEB8-82B4BAB72571";
	setAttr -l on ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftLegDnArcCtrlShape" -p "LeftLegDnArcCtrl";
	rename -uid "F31510DE-4AC3-A82B-719E-9A821C885F77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		2.7108205015489529e-16 0.4039141157504601 -5.6280719688853491
		-6.7485787708837797e-16 -3.8562205880972202 -3.863464853256755
		-1.0666793669260279e-15 -5.6208277037258174 0.39666985059092469
		-6.7485787708837797e-16 -3.8562205880972202 4.6568045544386054
		2.7108205015489529e-16 0.4039141157504601 6.421411670067199
		1.2170219773981693e-15 4.6640488195981371 4.6568045544386054
		1.6088434672358193e-15 6.4286559352267307 0.39666985059092469
		1.2170219773981693e-15 4.6640488195981371 -3.863464853256755
		2.7108205015489529e-16 0.4039141157504601 -5.6280719688853491
		;
createNode tangentConstraint -n "LeftLegDnArcCtrlGrp_tangentConstraint1" -p "LeftLegDnArcCtrlGrp";
	rename -uid "73890DB6-4BFC-5887-0ACD-47BE72792F7C";
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
	setAttr ".rsrr" -type "double3" 1.852166802267751e-13 42.404768794018345 -89.999999999998849 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg3CsHandleGrp" -p "LeftLegDnArcCtrlGrp";
	rename -uid "56A87035-41F1-391C-008A-AA98ECE48213";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "LeftLeg3CsHandleZeroMtx" -p "LeftLeg3CsHandleGrp";
	rename -uid "33467E0A-4486-FD5F-37FC-368AA034E15F";
createNode transform -n "LeftLeg3CsHandle" -p "LeftLeg3CsHandleGrp";
	rename -uid "FDABF037-40DE-1326-AF31-A1997755BAE1";
	setAttr ".v" no;
createNode clusterHandle -n "LeftLeg3CsHandleShape" -p "LeftLeg3CsHandle";
	rename -uid "0AF4BB3A-4A1F-82DD-6982-55B4B8984A44";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftLegSysGrp" -p "LeftLegRigGrp";
	rename -uid "43410C9E-49B7-539B-620B-23B1904EDA61";
createNode transform -n "LeftLegSysConstGrp" -p "LeftLegSysGrp";
	rename -uid "4132553C-4C74-A26C-2706-6CBA23D524D0";
createNode transform -n "LeftLegJntGrp" -p "LeftLegSysConstGrp";
	rename -uid "EB94A765-4520-8BE3-1B5E-13BCCE5DB700";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode joint -n "LeftLeg1DrvJnt" -p "LeftLegJntGrp";
	rename -uid "411F9ABC-4625-70B2-647D-539645DBDAE6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FKScaleY" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "FKScaleZ" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".bps" -type "matrix" 0.0080793537140539159 -0.91670910977607878 -0.39947356870901057 0
		 0.99996116396767165 0.0088130900607992831 -2.2139408362154001e-16 0 0.0035205965379416383 -0.39945805474058171 0.91674471250337064 0
		 10.854910789960899 38.914918808817156 -22.168617736013328 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hip";
	setAttr -k on ".FKScaleY";
	setAttr -k on ".FKScaleZ";
	setAttr -k on ".IKSquash";
createNode joint -n "LeftLeg2DrvJnt" -p "LeftLeg1DrvJnt";
	rename -uid "563A8920-4337-3F84-5ED3-A7BBD8AFF2CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FKScaleY" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "FKScaleZ" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".jo" -type "double3" 0 32.351887300100017 0 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.966027736663964 26.307237439959273 -27.662656592891317 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Knee";
	setAttr ".liw" yes;
	setAttr -k on ".FKScaleY";
	setAttr -k on ".FKScaleZ";
	setAttr -k on ".IKSquash";
createNode joint -n "LeftLeg3DrvJnt" -p "LeftLeg2DrvJnt";
	rename -uid "8C13DD08-42DF-5A7E-907C-309F2B8846D8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FKScaleY" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "FKScaleZ" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 0.99999999999999933 ;
	setAttr ".jo" -type "double3" 0 -48.900848477299988 0 ;
	setAttr ".bps" -type "matrix" 1.0717121634584714e-14 -0.99999999999999978 7.7715611723760958e-16 0
		 0.99167116867011273 1.0394463068053028e-14 -0.12879554817016514 0 0.12879554817016514 2.0539125955565396e-15 0.99167116867011218 0
		 11.058719993548717 15.790079843052366 -35.223556648479587 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ankle";
	setAttr ".liw" yes;
	setAttr -k on ".FKScaleY";
	setAttr -k on ".FKScaleZ";
	setAttr -k on ".IKSquash";
createNode joint -n "LeftLeg4DrvJnt" -p "LeftLeg3DrvJnt";
	rename -uid "E5CDC2D1-4942-035D-8971-6D9FE25F661B";
	setAttr ".s" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999944 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.5000000000000213 6.4960784072999544 0 ;
createNode orientConstraint -n "LeftLeg4DrvJnt_orientConstraint1" -p "LeftLeg4DrvJnt";
	rename -uid "6C0BDBBE-4922-A452-1322-31B3349A166A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegIKPosW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg4FKCtrlW1" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0.064839945675204944 0.0023955478784433186 -0.018116772105125228 ;
	setAttr ".rsrr" -type "double3" -6.7005963030480902e-14 6.4918724020770473e-14 8.59743687333103e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "LeftLeg4AssiAPos" -p "LeftLeg4DrvJnt";
	rename -uid "7119767E-4DC2-165D-BD86-70B7170A3080";
	setAttr ".s" -type "double3" 0.99999999999999478 1.0000000000000036 0.99999999999999922 ;
createNode parentConstraint -n "LeftLeg4AssiAPos_parentConstraint1" -p "LeftLeg4AssiAPos";
	rename -uid "8529AC69-40B6-21B0-8CCA-FB8CA725CD25";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftAnkleDrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.41708427018716776 -0.028393516392444695 -0.9084241959510484 ;
	setAttr ".tg[0].tor" -type "double3" 10.906718351338432 65.288487393795307 -3.8944707989291425 ;
	setAttr ".lr" -type "double3" 7.5479071431953475 -6.4402672814057969 -0.85149762755519631 ;
	setAttr ".rst" -type "double3" 0.99357960150980995 -0.014767108006862983 0.11216732137616248 ;
	setAttr ".rsrr" -type "double3" 7.5479071431953333 -6.4402672814056308 -0.85149762755518676 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg3AssiAPos" -p "LeftLeg3DrvJnt";
	rename -uid "5C0C3263-4F02-80E1-BECB-69AE68C57ABB";
	setAttr ".t" -type "double3" 1 0 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999878 1 ;
createNode transform -n "LeftLeg4TwistFixGrp" -p "LeftLeg3DrvJnt";
	rename -uid "52A726B3-42A9-7417-6BAE-3DAC664E9D22";
	setAttr ".r" -type "double3" 0 0 5.0017297881669879e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000029 0.99999999999999933 ;
createNode transform -n "LeftLeg4AimGrp" -p "LeftLeg4TwistFixGrp";
	rename -uid "FB78B864-4502-20BC-03A7-83B240321E09";
createNode transform -n "LeftLeg4TwistFixPos" -p "LeftLeg4AimGrp";
	rename -uid "1DA4AB69-4BDB-8653-63E6-6494E58D37B9";
createNode orientConstraint -n "LeftLeg4TwistFixPos_orientConstraint1" -p "LeftLeg4TwistFixPos";
	rename -uid "7841CD5E-48EE-8D7B-B454-009995688B1E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg4AimGrpW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg4TwistFixSubPosW1" -dv 1 -min 
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
	setAttr ".lr" -type "double3" 0.041571026487957047 1.1439354315197321e-13 1.0421045102058948e-16 ;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1";
createNode transform -n "LeftLeg4TwistFixSubPos" -p "LeftLeg4AimGrp";
	rename -uid "CFE08153-4CC3-087E-B895-C78F565B2D2F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode aimConstraint -n "LeftLeg4TwistFixSubPos_aimConstraint1" -p "LeftLeg4TwistFixSubPos";
	rename -uid "F55917FB-4957-3262-7576-B983F1B21082";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg4TwsitFixTgPosW0" -dv 1 -at "double";
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
createNode aimConstraint -n "LeftLeg4AimGrp_aimConstraint1" -p "LeftLeg4AimGrp";
	rename -uid "259C7925-44B7-AC28-D090-60B9F05D914D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg4TwsitFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg4AssiBPos" -p "LeftLeg4TwistFixGrp";
	rename -uid "5817BB97-4C9A-A9BB-1593-3EA86CD690E6";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode transform -n "LeftLeg4TwsitFixTgPos" -p "LeftLeg4TwistFixGrp";
	rename -uid "D2E8C36F-4806-B646-8FEA-F69E0FC95DB6";
createNode pointConstraint -n "LeftLeg4TwsitFixTgPos_pointConstraint1" -p "LeftLeg4TwsitFixTgPos";
	rename -uid "38EAF260-435F-A849-5EDD-32AD70B66FD2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg4AssiAPosW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg4AssiBPosW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.0000000000000018 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "LeftLeg4TwistFixGrp_pointConstraint1" -p "LeftLeg4TwistFixGrp";
	rename -uid "C8EB6ECA-4297-3DBF-CF4A-3CA0C808B1CA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg4DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 11.936644554138184 -5.3290705182007514e-15 -2.1316282072803006e-12 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg2AssiAPos" -p "LeftLeg2DrvJnt";
	rename -uid "E23A2E26-4FC4-7E3B-F3FB-17A0E869B77C";
	setAttr ".t" -type "double3" 1.0000000000000036 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999911 0.99999999999999956 ;
createNode transform -n "LeftLeg3TwistFixGrp" -p "LeftLeg2DrvJnt";
	rename -uid "19603F78-4607-F4E6-F674-1D887DB39B3A";
	setAttr ".r" -type "double3" 0 -48.900848477299988 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999845 0.99999999999999889 ;
createNode transform -n "LeftLeg3TwistAimGrp" -p "LeftLeg3TwistFixGrp";
	rename -uid "DB94D05B-42B1-DD52-20D8-9F8C411745C8";
createNode transform -n "LeftLeg3TwistFixPos" -p "LeftLeg3TwistAimGrp";
	rename -uid "6C2D76E4-4336-A2F2-F72F-B2B1A1B45FAF";
createNode aimConstraint -n "LeftLeg3TwistAimGrp_aimConstraint1" -p "LeftLeg3TwistAimGrp";
	rename -uid "FA52E4B5-4F55-B573-9374-7BAF56810901";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg3TwistFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg3TwistFixTgPos" -p "LeftLeg3TwistFixGrp";
	rename -uid "0080BBE8-46D8-785A-F91C-E28CE3027519";
createNode pointConstraint -n "LeftLeg3TwistFixTgPos_pointConstraint1" -p "LeftLeg3TwistFixTgPos";
	rename -uid "EC9E8B67-48AC-7BC0-2A7C-91BF2F15F382";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg3AssiBPosW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg3AssiAPosW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.99999999999999645 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "LeftLeg3AssiBPos" -p "LeftLeg3TwistFixGrp";
	rename -uid "27776A4E-4189-C003-1151-46B2A485C18D";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode pointConstraint -n "LeftLeg3TwistFixGrp_pointConstraint1" -p "LeftLeg3TwistFixGrp";
	rename -uid "D79EF0BA-4B11-15DC-AD46-248A97B8F232";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg3DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 13.621461868286133 -1.9539925233402755e-14 -1.184474740512087e-11 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg2TwistFixGrp" -p "LeftLeg1DrvJnt";
	rename -uid "AE8B26DB-401D-B36B-006E-E3B8E9732B55";
	setAttr ".r" -type "double3" 0 32.351887300100017 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 1 ;
createNode transform -n "LeftLeg2TwistAimGrp" -p "LeftLeg2TwistFixGrp";
	rename -uid "6032B4F9-46FB-2C85-9454-D1884EB676CA";
createNode transform -n "LeftLeg2TwistFixPos" -p "LeftLeg2TwistAimGrp";
	rename -uid "5B96FCB5-4ECF-41D9-BE47-DA85636766C8";
createNode aimConstraint -n "LeftLeg2TwistAimGrp_aimConstraint1" -p "LeftLeg2TwistAimGrp";
	rename -uid "114B9B6E-4974-54A1-9D82-039D27FC9C1B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg2TwistFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg2TwistFixTgPos" -p "LeftLeg2TwistFixGrp";
	rename -uid "E3ADF163-4951-8B28-3DEB-C2B4FCCEB155";
createNode pointConstraint -n "LeftLeg2TwistFixTgPos_pointConstraint1" -p "LeftLeg2TwistFixTgPos";
	rename -uid "54D89AEE-4773-C809-8448-1FB36E34EF65";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg2AssiAPosW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg2AssiBPosW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.0000000000000033 0 7.1054273576010019e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "LeftLeg2AssiBPos" -p "LeftLeg2TwistFixGrp";
	rename -uid "1688C1F2-4D01-18A6-692C-18A8675B242A";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode pointConstraint -n "LeftLeg2TwistFixGrp_pointConstraint1" -p "LeftLeg2TwistFixGrp";
	rename -uid "8A51F261-4D35-7ED7-453D-59A5E3F4B3EE";
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
	setAttr ".rst" -type "double3" 16.104476928710938 0 -1.0878409284487134e-11 ;
	setAttr -k on ".w0";
createNode joint -n "LeftLeg1FKJnt" -p "LeftLegJntGrp";
	rename -uid "F9A9F9D7-4FEF-98BD-5460-62958D3B0DBF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.0080793537140539159 -0.91670910977607878 -0.39947356870901057 0
		 0.99996116396767165 0.0088130900607992831 -2.2139408362154001e-16 0 0.0035205965379416383 -0.39945805474058171 0.91674471250337064 0
		 10.854910789960899 38.914918808817156 -22.168617736013328 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hip";
createNode joint -n "LeftLeg2FKJnt" -p "LeftLeg1FKJnt";
	rename -uid "4286FD9C-4A90-9D57-8149-B585F2308650";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".jo" -type "double3" 0 32.351887300100017 0 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.966027736663964 26.307237439959273 -27.662656592891317 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Knee";
	setAttr ".liw" yes;
createNode joint -n "LeftLeg3FKJnt" -p "LeftLeg2FKJnt";
	rename -uid "88B5FFBA-4067-56D7-D1A9-C89C9533A5CC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 0.99999999999999933 ;
	setAttr ".jo" -type "double3" 0 -48.900848477299988 0 ;
	setAttr ".bps" -type "matrix" 1.0717121634584714e-14 -0.99999999999999978 7.7715611723760958e-16 0
		 0.99167116867011273 1.0394463068053028e-14 -0.12879554817016514 0 0.12879554817016514 2.0539125955565396e-15 0.99167116867011218 0
		 11.058719993548717 15.790079843052366 -35.223556648479587 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ankle";
	setAttr ".liw" yes;
createNode joint -n "LeftLeg4FKJnt" -p "LeftLeg3FKJnt";
	rename -uid "F2E484F3-4BC1-D09B-0100-358D2C76E9A1";
	setAttr ".s" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999944 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.5000000000000213 6.4960784072999544 0 ;
createNode joint -n "LeftLeg1IKJnt" -p "LeftLegJntGrp";
	rename -uid "C980BDCA-4A64-CB6F-82B5-D4B17374FF46";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -0.067034771206670202 3.9051287794672085e-06 0.006675561644150777 ;
	setAttr ".bps" -type "matrix" 0.0080793537140539159 -0.91670910977607878 -0.39947356870901057 0
		 0.99996116396767165 0.0088130900607992831 -2.2139408362154001e-16 0 0.0035205965379416383 -0.39945805474058171 0.91674471250337064 0
		 10.854910789960899 38.914918808817156 -22.168617736013328 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hip";
createNode joint -n "LeftLeg2IKJnt" -p "LeftLeg1IKJnt";
	rename -uid "2FDAD6F1-4B2E-766B-03BC-9595F4C85FD4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.10447749561984 0 -1.0878409284487134e-11 ;
	setAttr ".r" -type "double3" -2.8172253778273995e-29 -2.160305148009347e-13 -2.3481695510540386e-28 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".jo" -type "double3" 0 32.351887300100017 0 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.966027736663964 26.307237439959273 -27.662656592891317 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Knee";
	setAttr ".liw" yes;
createNode joint -n "LeftLeg3IKJnt" -p "LeftLeg2IKJnt";
	rename -uid "529FD3FD-47E0-AD17-20C2-84B23C6456D2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.62146193589637 -1.7763568394002505e-15 -1.1823431123048067e-11 ;
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 0.99999999999999933 ;
	setAttr ".jo" -type "double3" 0 -48.900848477299988 0 ;
	setAttr ".bps" -type "matrix" 1.0717121634584714e-14 -0.99999999999999978 7.7715611723760958e-16 0
		 0.99167116867011273 1.0394463068053028e-14 -0.12879554817016514 0 0.12879554817016514 2.0539125955565396e-15 0.99167116867011218 0
		 11.058719993548717 15.790079843052366 -35.223556648479587 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ankle";
	setAttr ".liw" yes;
createNode ikEffector -n "effector48" -p "LeftLeg2IKJnt";
	rename -uid "D89B5BB4-4811-7FA0-0C59-948CD361F2A3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "LeftLeg1SubIKJnt" -p "LeftLeg1IKJnt";
	rename -uid "3063C0C7-4B40-9E16-3B47-22A8BE41ACE5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".jo" -type "double3" 0 32.351887300100017 0 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.966027736663964 26.307237439959273 -27.662656592891317 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Knee";
	setAttr ".liw" yes;
createNode joint -n "LeftLeg2SubIKJnt" -p "LeftLeg1SubIKJnt";
	rename -uid "F0C74D48-4DD7-6C2F-4E7B-389F06E488B8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 0.99999999999999933 ;
	setAttr ".jo" -type "double3" 0 -48.900848477299988 0 ;
	setAttr ".bps" -type "matrix" 1.0717121634584714e-14 -0.99999999999999978 7.7715611723760958e-16 0
		 0.99167116867011273 1.0394463068053028e-14 -0.12879554817016514 0 0.12879554817016514 2.0539125955565396e-15 0.99167116867011218 0
		 11.058719993548717 15.790079843052366 -35.223556648479587 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ankle";
	setAttr ".liw" yes;
createNode joint -n "LeftLeg3SubIKJnt" -p "LeftLeg2SubIKJnt";
	rename -uid "8D02DCB6-4BA6-A1EF-0956-90A6327883BA";
	setAttr ".s" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999944 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.5000000000000213 6.4960784072999544 0 ;
createNode pointConstraint -n "LeftLeg3SubIKJnt_pointConstraint1" -p "LeftLeg3SubIKJnt";
	rename -uid "4AF281B8-4DC3-998A-C638-F1A1C484073F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftHeelIKPointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 11.936644631246681 -7.1054273576010019e-15 -2.1316282072803006e-12 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "LeftLeg2SubIKJnt_pointConstraint1" -p "LeftLeg2SubIKJnt";
	rename -uid "B157628F-4D80-2AEE-B656-1BADF1D2C9ED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftHeelIKCtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 13.621461935896349 -2.1316282072803006e-14 -1.184474740512087e-11 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "LeftLeg2SubIKJnt_aimConstraint1" -p "LeftLeg2SubIKJnt";
	rename -uid "6603E5C3-489E-2223-09C2-52A675591B59";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftHeelIKPointW0" -dv 1 -at "double";
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
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -1.1630524862775244e-14 1.0298636058578867e-11 -2.5579487272430275e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "LeftLeg1SubIKJnt_pointConstraint1" -p "LeftLeg1SubIKJnt";
	rename -uid "EA9E7B59-4BD1-360A-AEAE-B18D45653589";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg2IKJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 16.10447749561984 0 -1.0878409284487134e-11 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "LeftLeg1SubIKJnt_aimConstraint1" -p "LeftLeg1SubIKJnt";
	rename -uid "2240118C-4765-F2CC-277F-D58B607E2C81";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftHeelIKCtrlW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 2.6008517420003023e-14 4.9801125202355735e-11 -8.9662402129057596e-14 ;
	setAttr -k on ".w0";
createNode joint -n "LeftLegBase1IKJnt" -p "LeftLegJntGrp";
	rename -uid "99EFC530-457A-57AD-12D1-0598A625C24D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -0.067034771138594171 3.9051288105480526e-06 0.00667556164426821 ;
	setAttr ".bps" -type "matrix" 0.0080793537140539159 -0.91670910977607878 -0.39947356870901057 0
		 0.99996116396767165 0.0088130900607992831 -2.2139408362154001e-16 0 0.0035205965379416383 -0.39945805474058171 0.91674471250337064 0
		 10.854910789960899 38.914918808817156 -22.168617736013328 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hip";
createNode joint -n "LeftLegBase2IKJnt" -p "LeftLegBase1IKJnt";
	rename -uid "530EBC31-41BD-C650-E964-48BD067F1732";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 27.043714 0 -1.0878409284487134e-11 ;
	setAttr ".r" -type "double3" -2.0409704977038375e-28 -3.6853703481564898e-13 6.731789489789967e-28 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 17.94306705473916 0 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.966027736663964 26.307237439959273 -27.662656592891317 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Knee";
	setAttr ".liw" yes;
createNode joint -n "LeftLegBase3IKJnt" -p "LeftLegBase2IKJnt";
	rename -uid "2C637FB2-4958-5B32-AC38-60A87707DFF4";
	setAttr ".t" -type "double3" 12.624053025585487 -6.9912430373672689e-15 4.3443258278852241e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999944 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.5000000000000062 -27.995949824639204 -2.2512909992113332e-16 ;
createNode transform -n "LeftLegRevPos" -p "LeftLegBase3IKJnt";
	rename -uid "3C01F1FD-4165-DDF5-34E9-BF8316CB9FCC";
	setAttr ".s" -type "double3" 0.99999999999999722 1.0000000000000013 1.0000000000000004 ;
createNode ikEffector -n "effector45" -p "LeftLegBase2IKJnt";
	rename -uid "10A15828-4C14-FECC-48E0-F9B82B0124B1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "LeftLegRev1IKJnt" -p "LeftLegBase1IKJnt";
	rename -uid "52A6E3EF-4082-477C-D508-55BBF32F85BC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.10447749561984 0 -1.0878409284487134e-11 ;
	setAttr ".r" -type "double3" -1.2943184497203222e-14 4.7422839257310215e-30 -5.4231736641879145e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".jo" -type "double3" 0 32.351887300100017 0 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.966027736663964 26.307237439959273 -27.662656592891317 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Knee";
	setAttr ".liw" yes;
createNode joint -n "LeftLegRev2IKJnt" -p "LeftLegRev1IKJnt";
	rename -uid "858B6406-4CC9-D332-EDCB-7499B3E96BDA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.62146193589637 -1.7763568394002505e-15 -1.1823431123048067e-11 ;
	setAttr ".r" -type "double3" 1.7820358316159808e-28 2.9937014864296189e-13 -5.7973423177268112e-28 ;
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 0.99999999999999933 ;
	setAttr ".jo" -type "double3" 0 -48.900848477299988 0 ;
	setAttr ".bps" -type "matrix" 1.0717121634584714e-14 -0.99999999999999978 7.7715611723760958e-16 0
		 0.99167116867011273 1.0394463068053028e-14 -0.12879554817016514 0 0.12879554817016514 2.0539125955565396e-15 0.99167116867011218 0
		 11.058719993548717 15.790079843052366 -35.223556648479587 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ankle";
	setAttr ".liw" yes;
createNode joint -n "LeftLegRev3IKJnt" -p "LeftLegRev2IKJnt";
	rename -uid "888F178A-4AC5-11F0-8389-A187C9BF7949";
	setAttr ".t" -type "double3" 11.936644631246645 -7.1054273576010019e-15 -2.1174173525650986e-12 ;
	setAttr ".s" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999944 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.5000000000000213 6.4960784072999544 0 ;
createNode transform -n "LeftHeelIKPoint" -p "LeftLegRev3IKJnt";
	rename -uid "5D55AD08-46D3-8677-BB60-2EB3434DA0DB";
	addAttr -ci true -k true -sn "pbw" -ln "pbw" -min 0 -max 1 -at "double";
	setAttr ".s" -type "double3" 0.99999999999999722 1.0000000000000013 1.0000000000000009 ;
	setAttr -k on ".pbw";
createNode pointConstraint -n "LeftHeelIKPoint_pointConstraint1" -p "LeftHeelIKPoint";
	rename -uid "A9D4E655-4330-DFEE-DFBB-D293B0DF2499";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegIKPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 7.1054273576010019e-15 -1.5987211554602254e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector44" -p "LeftLegRev2IKJnt";
	rename -uid "1C989B4E-4913-D945-63BF-BF861698D47C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftLegRevPVTarget" -p "LeftLegBase1IKJnt";
	rename -uid "AFD4A41C-443A-B5D4-D99B-BFB931042BEB";
	setAttr ".t" -type "double3" 16.10447749561984 0 -1.0874856570808333e-11 ;
	setAttr ".r" -type "double3" 0 32.351887300100032 0 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999944 1.0000000000000002 ;
createNode joint -n "LeftLegUp1ArcJnt" -p "LeftLegJntGrp";
	rename -uid "4D2C7E84-4FFD-58D0-936E-088A90D3D343";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 2.2749882401384947e-10 3.9051286442713642e-06 0.0066755616416231608 ;
	setAttr ".bps" -type "matrix" 0.0080793537140539159 -0.91670910977607878 -0.39947356870901057 0
		 0.99996116396767165 0.0088130900607992831 -2.2139408362154001e-16 0 0.0035205965379416383 -0.39945805474058171 0.91674471250337064 0
		 10.854910789960899 38.914918808817156 -22.168617736013328 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hip";
createNode joint -n "LeftLegUp2ArcJnt" -p "LeftLegUp1ArcJnt";
	rename -uid "44A2D8F9-493C-6A6A-C8B0-C9B393F87FEB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.368159165199998 -1.9539925233402755e-14 -3.6344260934129125e-12 ;
	setAttr ".r" -type "double3" -0.033517385595278434 1.3969825815065058e-16 2.2581457217907827e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".bps" -type "matrix" 0.008079353714062841 -0.91670910977607856 -0.39947356870901002 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0035205965379459 -0.39945805474058138 0.91674471250337042 0
		 10.891949772195249 34.712358352531261 -23.999964021639332 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "UpLegSeg1";
	setAttr ".liw" yes;
createNode joint -n "LeftLegUp3ArcJnt" -p "LeftLegUp2ArcJnt";
	rename -uid "1559DE4E-4BFD-31FA-DF15-1FB0DA32CFB5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.3681591651999909 -2.1316282072803006e-14 -3.6131098113401094e-12 ;
	setAttr ".r" -type "double3" -0.033517385573530623 2.0627085946962474e-16 2.2670166603695243e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1 ;
	setAttr ".bps" -type "matrix" 0.008079353714062841 -0.91670910977607856 -0.39947356870901002 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0035205965379459 -0.39945805474058138 0.91674471250337042 0
		 10.928988754429602 30.509797896245264 -25.831310307265326 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "UpLegSeg2";
	setAttr ".liw" yes;
createNode joint -n "LeftLegUp4ArcJnt" -p "LeftLegUp3ArcJnt";
	rename -uid "EEF05FA8-4EB1-7280-1EF5-0BBF41D8292C";
	setAttr ".t" -type "double3" 5.3681591651999945 -3.1974423109204508e-14 -3.6273206660553114e-12 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999978 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "LeftLegDn1ArcJnt" -p "LeftLegUp4ArcJnt";
	rename -uid "60B3D5A4-4515-BD09-8370-CEA9A44DE249";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.6688904237489623e-07 7.815970093361102e-13 -4.6185277824406512e-14 ;
	setAttr ".r" -type "double3" -2.4148365394514671e-06 2.8342851171107362e-21 2.1048961375082325e-18 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".jo" -type "double3" 0 32.351887300100032 0 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.966027736663964 26.307237439959273 -27.662656592891317 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Knee";
	setAttr ".liw" yes;
createNode joint -n "LeftLegDn2ArcJnt" -p "LeftLegDn1ArcJnt";
	rename -uid "BF030EF2-4793-8BDA-9D13-74B9A12014BC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.5404873119666807 -5.3290705182007514e-15 -3.957723038183758e-12 ;
	setAttr ".r" -type "double3" 3.4150945850063763e-06 -9.3524291131448777e-21 -2.9607397785282739e-18 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999922 0.99999999999999956 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 10.996925155625547 22.801518240990305 -30.182956611420742 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "DnLegSeg1";
	setAttr ".liw" yes;
createNode joint -n "LeftLegDn3ArcJnt" -p "LeftLegDn2ArcJnt";
	rename -uid "D3857067-4427-6981-F654-C59981511B7A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.5404873119666451 -1.2434497875801753e-14 -3.936406756110955e-12 ;
	setAttr ".r" -type "double3" -2.5613209387547816e-06 -1.0020060658681743e-21 2.2085301685451786e-18 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 0.99999999999999956 ;
	setAttr ".bps" -type "matrix" 0.0071559133240736185 -0.81193263286992023 -0.58370728330681054 0
		 0.99996116396767154 0.0088130900608092734 -5.5847253904728333e-16 0 0.0051442648569337227 -0.58368461443188568 0.81196416633653379 0
		 11.027822574587132 19.29579904202134 -32.703256629950168 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "DnLegSeg2";
	setAttr ".liw" yes;
createNode joint -n "LeftLegDn4ArcJnt" -p "LeftLegDn3ArcJnt";
	rename -uid "25D214FF-4221-7E66-CA5D-65A44A1FC890";
	setAttr ".t" -type "double3" 4.5404873119666682 0 -3.915090474038152e-12 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "LeftLegEx1ArcJnt" -p "LeftLegDn4ArcJnt";
	rename -uid "48B26247-470D-DFC6-E059-079ABC96C1AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.7890829257823953e-07 4.3858250364792184e-12 3.0336285306020727e-07 ;
	setAttr ".r" -type "double3" 4.2688682312579702e-06 -5.7174319796447937e-21 -7.775746889450481e-19 ;
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 0.99999999999999933 ;
	setAttr ".jo" -type "double3" 0 -48.900848477299974 0 ;
	setAttr ".bps" -type "matrix" 1.0717121634584714e-14 -0.99999999999999978 7.7715611723760958e-16 0
		 0.99167116867011273 1.0394463068053028e-14 -0.12879554817016514 0 0.12879554817016514 2.0539125955565396e-15 0.99167116867011218 0
		 11.058719993548717 15.790079843052366 -35.223556648479587 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ankle";
	setAttr ".liw" yes;
createNode joint -n "LeftLegEx2ArcJnt" -p "LeftLegEx1ArcJnt";
	rename -uid "B09D2DE7-4E23-F945-BB3C-138124F1EE9B";
	setAttr ".t" -type "double3" 3.9788815437333227 -1.7763568394002505e-15 -7.1764816311770119e-13 ;
	setAttr ".r" -type "double3" 0.020782270776777318 6.7980434015480945e-19 -3.7483795276147154e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999967 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LegExSeg1";
createNode joint -n "LeftLegEx3ArcJnt" -p "LeftLegEx2ArcJnt";
	rename -uid "83DF15BE-417A-0F1D-823A-23874BE4DD84";
	setAttr ".t" -type "double3" 3.9788815437333369 -1.7763568394002505e-15 -7.1764816311770119e-13 ;
	setAttr ".r" -type "double3" 0.020785514010582935 9.9461659373103578e-18 -3.6747258873278051e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000009 1.0000000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LegExSeg2";
createNode joint -n "LeftLegEx4ArcJnt" -p "LeftLegEx3ArcJnt";
	rename -uid "E4CC63D1-47FF-1DF8-263F-6584D2F8FA0D";
	setAttr ".t" -type "double3" 3.9788815437333263 0 -7.0343730840249918e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999833 1.0000000000000009 1.0000000000000007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector50" -p "LeftLegEx3ArcJnt";
	rename -uid "DCEA112F-4AE2-632D-665D-94B549319B41";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector51" -p "LeftLegDn3ArcJnt";
	rename -uid "E6B5653F-483F-E84A-1113-C49261C9325A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector52" -p "LeftLegUp3ArcJnt";
	rename -uid "3CC545FF-4D98-F672-5553-49B361EF81C2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftLeg1TwistFixGrp" -p "LeftLegJntGrp";
	rename -uid "6160BA03-4EE7-D9D8-4CD6-BFA9228FB710";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftLeg1TwistAimGrp" -p "LeftLeg1TwistFixGrp";
	rename -uid "5E763630-4875-6250-9C38-88947D391C04";
createNode transform -n "LeftLeg1TwistFixPos" -p "LeftLeg1TwistAimGrp";
	rename -uid "9E4665B4-4A1F-4C0B-D74C-4B95686B0F12";
createNode aimConstraint -n "LeftLeg1TwistAimGrp_aimConstraint1" -p "LeftLeg1TwistAimGrp";
	rename -uid "92988135-4440-41D9-C93A-EEBB9187EB55";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg1TwistFixTgPosW0" -dv 1 -at "double";
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
createNode transform -n "LeftLeg1TwistFixTgPos" -p "LeftLeg1TwistFixGrp";
	rename -uid "00C4BD24-4F03-3F3A-B675-D2B6C4154E6D";
createNode pointConstraint -n "LeftLeg1TwistFixTgPos_pointConstraint1" -p "LeftLeg1TwistFixTgPos";
	rename -uid "C6F7C639-4233-5272-3982-638E8E25FE50";
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
	setAttr ".rst" -type "double3" 16.104476928710934 1.7763568394002505e-15 -1.0874856570808333e-11 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLeg1TwistFixUpvec" -p "LeftLeg1TwistFixGrp";
	rename -uid "56DBC7C4-4683-4301-57DA-B7977F5F6A75";
createNode ikHandle -n "LeftLegRevIKh" -p "LeftLegSysConstGrp";
	rename -uid "EE091B7A-442B-0116-C29B-018BE3AF3215";
	setAttr ".r" -type "double3" -10.052882769899979 -7.9513867036587919e-16 89.999999999999147 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftLegRevIKh_poleVectorConstraint1" -p "LeftLegRevIKh";
	rename -uid "5ED41784-48EF-BDE2-5A5C-7F80C74749B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegRevPVPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 11.50710558125887 3.5527136788005009e-15 -7.2890840585655887 ;
	setAttr -k on ".w0";
createNode ikHandle -n "LeftLegBaseIKh" -p "LeftLegSysConstGrp";
	rename -uid "C36B1E28-4C5D-F191-BB8A-B5A936AAB8D9";
	setAttr ".r" -type "double3" -10.052882769899979 -7.9513867036587919e-16 89.999999999999147 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftLegBaseIKh_poleVectorConstraint1" -p "LeftLegBaseIKh";
	rename -uid "3B3234A7-4BCC-AE6C-9B49-92968127F470";
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
	setAttr ".rst" -type "double3" 16.10447749561984 -5.3290705182007514e-15 -1.0878409284487134e-11 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegPVSysGrp" -p "LeftLegSysConstGrp";
	rename -uid "2BE4986A-47A0-39C2-A4B7-819B3684855F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1316282072803006e-14 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "LeftLegPVAimGrp" -p "LeftLegPVSysGrp";
	rename -uid "42205AD8-4882-2DF8-559D-209B3AFAF52F";
createNode transform -n "LeftLegPVPosGrp" -p "LeftLegPVAimGrp";
	rename -uid "0B0AC45A-41CA-29DF-D63B-E2BEA658F31F";
	setAttr ".t" -type "double3" 16.025213374217881 -7.1054273576010019e-15 4.5958482752799998 ;
	setAttr ".r" -type "double3" -5.6869698417318428 -3.975693351829396e-16 89.999999999999162 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000002 1 ;
createNode transform -n "LeftLegPVPos" -p "LeftLegPVPosGrp";
	rename -uid "67D91C91-4676-884A-A77E-31812EB83A62";
createNode transform -n "LeftLegPVAutoFollowGrp" -p "LeftLegPVPos";
	rename -uid "B992B735-4B8B-4F83-6399-388EBFA63D1B";
createNode transform -n "LeftLegPVAutoSpace" -p "LeftLegPVAutoFollowGrp";
	rename -uid "27CA4E53-44AF-4B19-AF66-D09FA1F1CA7E";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 3.5527136788005009e-15 -1.7763568394002505e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000002 ;
createNode aimConstraint -n "LeftLegPVAimGrp_aimConstraint1" -p "LeftLegPVAimGrp";
	rename -uid "EF0CD6DE-4D68-17B4-9717-58AFC5169C85";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLegPVTargetPosW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -7.766514490350148e-16 5.6869698417318437 -1.5636556029462363e-14 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegPVUpvec" -p "LeftLegPVSysGrp";
	rename -uid "CEE04EFE-418D-1F90-C076-CE80F6254E82";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode transform -n "LeftLegPVTargetPos" -p "LeftLegPVSysGrp";
	rename -uid "A51E9FDD-4EC7-249B-5B81-FEB64F8C461A";
	setAttr ".r" -type "double3" 0 -10.052882769899984 0 ;
	setAttr ".s" -type "double3" 0.99999999999999734 1.0000000000000018 0.99999999999999867 ;
createNode transform -n "LeftLegExUp" -p "LeftLegPVSysGrp";
	rename -uid "44B044A2-4BDC-E2E6-DDA1-469738956C46";
createNode aimConstraint -n "LeftLegExUp_aimConstraint1" -p "LeftLegExUp";
	rename -uid "5D9FFC0C-40E9-6EBF-EDB5-469B901B9FF3";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLegPVTargetPosW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -1.0355352653799966e-15 5.6869698417317824 -2.0848741372616256e-14 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegRevPVPosGrp" -p "LeftLegPVSysGrp";
	rename -uid "18348574-4EDE-1C22-A6FB-1AA297576049";
	setAttr ".s" -type "double3" 1 0.99999999999999933 1 ;
createNode transform -n "LeftLegRevPVPos" -p "LeftLegRevPVPosGrp";
	rename -uid "EBE8E84B-41F7-3EF4-5C42-30A016189B2F";
	setAttr ".t" -type "double3" 12.563232097607868 5.3290705182007514e-15 -5.263974214669922 ;
	setAttr ".r" -type "double3" 0 -26.167242187560493 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999878 0.99999999999999944 ;
createNode aimConstraint -n "LeftLegRevPVPosGrp_aimConstraint1" -p "LeftLegRevPVPosGrp";
	rename -uid "2AE23508-4531-3D91-09AC-E191E0A82BD9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLegPVTargetPosW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -1.8656058974803253e-15 9.6182810103605156 -2.2174483059966776e-14 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegOrgPVPosGrp" -p "LeftLegPVSysGrp";
	rename -uid "B8B18A9D-48DE-130C-E312-CF99C67B4BF9";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode transform -n "LeftLegOrgPVPos" -p "LeftLegOrgPVPosGrp";
	rename -uid "B318F8E2-431A-F0EC-1B4C-72856F811A6C";
	setAttr ".t" -type "double3" 15.571050177739306 1.7763568394002505e-15 4.1105464076264511 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode aimConstraint -n "LeftLegOrgPVPosGrp_aimConstraint1" -p "LeftLegOrgPVPosGrp";
	rename -uid "5FE93B60-4120-3784-AF83-179A4E8ABEEB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftHeelIKOffW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -5.7400870827962219e-15 14.787952348123586 -4.4232632163155675e-14 ;
	setAttr -k on ".w0";
createNode ikHandle -n "LeftLegIKh" -p "LeftLegSysConstGrp";
	rename -uid "3438686C-40CF-0322-0F1B-FD9D89219DCC";
	setAttr ".r" -type "double3" -10.052882769899979 -7.9513867036587919e-16 89.999999999999147 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftLegIKh_poleVectorConstraint1" -p "LeftLegIKh";
	rename -uid "7671AE5D-4B14-AEF3-2C3C-49859826ECC7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegOrgPVPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 16.104477495619825 0 -1.0885514711844735e-11 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegArcCrvGrp" -p "LeftLegSysConstGrp";
	rename -uid "D92CA0DC-47F5-C970-9E2C-7DADE872FAE5";
	setAttr ".t" -type "double3" 36.068211665207677 -10.851168583630713 31.780986878249607 ;
	setAttr ".r" -type "double3" -10.052882769899979 -7.9513867036587919e-16 89.999999999999147 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftLegUpArcCrv" -p "LeftLegArcCrvGrp";
	rename -uid "DD3CE893-48B7-CB7B-26CF-4198A800B6C3";
createNode nurbsCurve -n "LeftLegUpArcCrvShape" -p "LeftLegUpArcCrv";
	rename -uid "5B0FEBA2-412C-F103-C711-15B9451F206E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "LeftLegDnArcCrv" -p "LeftLegArcCrvGrp";
	rename -uid "39A20134-4936-339B-87F9-F78522FE089D";
createNode nurbsCurve -n "LeftLegDnArcCrvShape" -p "LeftLegDnArcCrv";
	rename -uid "2464BD5B-4F7B-DB1C-6B68-D39B035D01B2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "LeftLegIKCrvGrp" -p "LeftLegSysConstGrp";
	rename -uid "6756FE9D-41FC-96CF-E875-CFBEDF3BDF18";
	setAttr ".t" -type "double3" 36.068211665207677 -10.851168583630713 31.780986878249607 ;
	setAttr ".r" -type "double3" -10.052882769899979 -7.9513867036587919e-16 89.999999999999147 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftLegUpIKCrv" -p "LeftLegIKCrvGrp";
	rename -uid "8AB5E854-45CA-807F-039D-7EAFF1CCE774";
createNode nurbsCurve -n "LeftLegUpIKCrvShape" -p "LeftLegUpIKCrv";
	rename -uid "ED44FFBD-4986-1673-2512-06B1B400E4F5";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "LeftLegUpIKCrvShapeOrig" -p "LeftLegUpIKCrv";
	rename -uid "8D1EFED1-4E1C-FB4C-3AC4-A3BCE10F2130";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10.851168583630175 41.062054207349625 -24.997094310227141
		10.853044924770272 25.204828645321328 -27.80824551599374
		;
	setAttr ".dcv" yes;
createNode transform -n "LeftLegDnIKCrv" -p "LeftLegIKCrvGrp";
	rename -uid "20D4CB35-4AC6-52A7-3FE3-F7AD2FCDEA77";
createNode nurbsCurve -n "LeftLegDnIKCrvShape" -p "LeftLegDnIKCrv";
	rename -uid "70FD26C0-4791-4437-2D9D-07A9380711AB";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "LeftLegDnIKCrvShapeOrig" -p "LeftLegDnIKCrv";
	rename -uid "DB003F7B-41F6-4C25-B051-72839F36F170";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 1 2
		2
		10.853044924770272 25.204828645321328 -27.80824551599374
		10.845857561627211 15.146750343505389 -36.994063255007795
		;
	setAttr ".dcv" yes;
createNode transform -n "LeftLegExIKCrv" -p "LeftLegIKCrvGrp";
	rename -uid "E61B350A-41DA-D0B5-D2EA-3DA5D5C4D1EA";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.2033391780885068e-30 -9.2462868715569087e-30 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "LeftLegExIKCrvShape" -p "LeftLegExIKCrv";
	rename -uid "1869CA7A-4262-6D21-F4FA-6D83C1AF40A9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "LeftLegExIKCrvShapeOrig" -p "LeftLegExIKCrv";
	rename -uid "C062F460-42C0-6FC7-681E-16AF14864047";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10.845857561627211 15.146750343505389 -36.994063255007795
		10.85116858356605 3.2867452591429762 -35.643611341985427
		;
	setAttr ".dcv" yes;
createNode transform -n "LeftLegUpIKChkCrv" -p "LeftLegIKCrvGrp";
	rename -uid "235CD9B7-40AF-9145-869A-22BD3001E633";
createNode nurbsCurve -n "LeftLegUpIKChkCrvShape" -p "LeftLegUpIKChkCrv";
	rename -uid "DEDCA121-42BE-995F-E796-7DA878D9EFF6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "cv[*]";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		10.851168583630173 41.062054207349625 -24.997094310227141
		10.851168583630177 38.419183226048219 -25.465619335021689
		10.851168583630294 33.133441276720895 -26.402669382257269
		10.851168583630416 27.84769932739357 -27.339719429492902
		10.851168583630416 25.204828346092164 -27.808244454287436
		;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "LeftLegUpIKChkCrvShapeOrig" -p "LeftLegUpIKChkCrv";
	rename -uid "BCB9291E-4118-328A-3974-67B977F16009";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10.851168583630175 41.062054207349625 -24.997094310227141
		10.851168583630416 25.20482834609216 -27.808244454287433
		;
	setAttr ".dcv" yes;
createNode parentConstraint -n "LeftLegUpIKChkCrv_parentConstraint1" -p "LeftLegUpIKChkCrv";
	rename -uid "607502C6-43D4-82C0-812C-D5869C93AF89";
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
	setAttr ".tg[0].tot" -type "double3" 36.068211665207684 -10.851168583630717 31.780986878249614 ;
	setAttr ".tg[0].tor" -type "double3" -10.052882769899975 -1.5022827959467657e-13 
		89.999999999999147 ;
	setAttr ".lr" -type "double3" 1.034040323895196e-05 0.064840322759214544 0.018274474047941358 ;
	setAttr ".rst" -type "double3" -1.1832913578315177e-29 -7.1054273576010034e-15 3.5527136788005017e-15 ;
	setAttr ".rsrr" -type "double3" 1.5902773407318004e-15 1.486909313584194e-13 3.2302508483613843e-14 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegDnIKChkCrv" -p "LeftLegIKCrvGrp";
	rename -uid "B059E5AB-4AA1-C19F-4A92-C7AE4B56C5EA";
createNode nurbsCurve -n "LeftLegDnIKChkCrvShape" -p "LeftLegDnIKChkCrv";
	rename -uid "192B171B-4E26-B199-F0C8-A8AF2FD3CB5A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		10.851168583630416 25.20482834609216 -27.80824445428744
		10.851168583630418 23.528482150683239 -29.339214757834473
		10.851168583630486 20.175789768285895 -32.401155357238366
		10.851168583630566 16.823097385888612 -35.463095956642157
		10.851168583630566 15.146751190479666 -36.994066260189229
		;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "LeftLegDnIKChkCrvShapeOrig" -p "LeftLegDnIKChkCrv";
	rename -uid "27949EA1-49DF-26D7-C837-0FBA2DC83643";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 1 2
		2
		10.851168583630416 25.20482834609216 -27.808244454287433
		10.851168583630566 15.146751190479668 -36.994066260189229
		;
	setAttr ".dcv" yes;
createNode parentConstraint -n "LeftLegDnIKChkCrv_parentConstraint1" -p "LeftLegDnIKChkCrv";
	rename -uid "AF2431C2-40F1-6DD7-CCC5-99826B680F10";
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
	setAttr ".tg[0].tot" -type "double3" -0.14165009742229859 -10.851168583630722 37.530810900315913 ;
	setAttr ".tg[0].tor" -type "double3" -42.404770069999991 -5.8281238174775167e-13 
		89.999999999999361 ;
	setAttr ".lr" -type "double3" 1.0340403237580921e-05 0.064840322759343358 0.018274474048292508 ;
	setAttr ".rst" -type "double3" 9.4663308626521417e-30 -1.9721522630525615e-31 -3.5527136788005017e-15 ;
	setAttr ".rsrr" -type "double3" 1.5016016120130665e-27 4.2698946598647715e-13 4.0298621737480715e-13 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegExIKChkCrv" -p "LeftLegIKCrvGrp";
	rename -uid "A952AA69-4B83-B3FA-ABC4-DE8CFD324310";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "LeftLegExIKChkCrvShape" -p "LeftLegExIKChkCrv";
	rename -uid "519EC17B-477A-8DE6-63DA-54BFF972A6EC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		10.851168583630564 15.146751190479671 -36.994066260189221
		10.851168583630567 13.170083531945398 -36.768990440111509
		10.851168583630653 9.2167482248112904 -36.318838801087367
		10.851168583630733 5.2634129176772833 -35.868687162063146
		10.851168583630733 3.2867452591429815 -35.643611341985441
		;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "LeftLegExIKChkCrvShapeOrig" -p "LeftLegExIKChkCrv";
	rename -uid "0BB507AC-4374-AEC9-6E15-998DB04C90AF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10.851168583630566 15.146751190479668 -36.994066260189229
		10.851168583630733 3.2867452591429815 -35.643611341985441
		;
	setAttr ".dcv" yes;
createNode parentConstraint -n "LeftLegExIKChkCrv_parentConstraint1" -p "LeftLegExIKChkCrv";
	rename -uid "7DC96AB3-400D-2B5E-7C54-6999DBF14DEA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg3DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 19.234835009498848 -10.851168583630699 35.042918542469444 ;
	setAttr ".tg[0].tor" -type "double3" 6.4960784072999846 1.0622901198678897e-13 89.999999999999048 ;
	setAttr ".lr" -type "double3" 1.0340403215737052e-05 0.064840322758814586 0.018274474047778589 ;
	setAttr ".rst" -type "double3" -3.552713678800538e-15 1.9922000833095316e-30 1.4210854715201997e-14 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270446e-15 -1.0495830448829606e-13 
		1.1131941385122315e-14 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegArcPosGrp" -p "LeftLegSysConstGrp";
	rename -uid "FBFED146-4BB9-85FF-CFCB-CCA8EC38879B";
	setAttr ".t" -type "double3" 36.068211665207677 -10.851168583630713 31.780986878249607 ;
	setAttr ".r" -type "double3" -10.052882769899979 -7.9513867036587919e-16 89.999999999999147 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftLegArc1Pos" -p "LeftLegArcPosGrp";
	rename -uid "3CC7EDB7-4622-DCCD-DA18-D89F53B90346";
createNode pointConstraint -n "LeftLegArc1Pos_pointConstraint1" -p "LeftLegArc1Pos";
	rename -uid "C247D2AF-485D-205B-C24D-B295A0B7299D";
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
	setAttr ".rst" -type "double3" 10.851168583630098 41.062054207349625 -24.997094310227158 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegArc2Pos" -p "LeftLegArcPosGrp";
	rename -uid "A999B814-4779-E0F0-D545-1DA4E26590E1";
createNode pointConstraint -n "LeftLegArc2Pos_pointConstraint1" -p "LeftLegArc2Pos";
	rename -uid "123426A5-4B57-E1D5-6EC8-BF88EC627926";
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
	setAttr ".rst" -type "double3" 10.851168583630338 25.204828346092157 -27.808244454287454 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegArc3Pos" -p "LeftLegArcPosGrp";
	rename -uid "E3594A4B-462D-C1BE-B1BD-778396098BCB";
createNode pointConstraint -n "LeftLegArc3Pos_pointConstraint1" -p "LeftLegArc3Pos";
	rename -uid "80823C22-4984-F5F1-2732-29B600471110";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftHeelIKCtrlW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg3FKCtrlW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 10.851168583630477 15.14675119047965 -36.994066260189243 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "LeftLeg4ArcPos" -p "LeftLegArcPosGrp";
	rename -uid "6DB33B06-421D-1AFB-4E2B-33A3DD4EA221";
	setAttr ".s" -type "double3" 0.99999999999999778 1.000000000000002 0.99999999999999845 ;
createNode pointConstraint -n "LeftLeg4ArcPos_pointConstraint1" -p "LeftLeg4ArcPos";
	rename -uid "9005B487-4BF8-6FA1-39D5-D48A99111C9C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg4DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 10.851168583630733 3.2867452591429815 -35.643611341985441 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegArcPointPos" -p "LeftLegArcPosGrp";
	rename -uid "8F48CDDC-4030-2CBA-DC19-9CB5A96C823A";
createNode pointConstraint -n "LeftLegArcPointPos_pointConstraint2" -p "LeftLegArcPointPos";
	rename -uid "A7BFBB7A-4FBB-5080-41A1-E2A17A764503";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegArc1PosW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLegArc2PosW1" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "LeftLegArc3PosW2" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 0 -0.05 ;
	setAttr ".rst" -type "double3" 10.851168583630301 27.137878117349985 -29.933134960050673 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode ikHandle -n "LeftLegUpIKh" -p "LeftLegSysConstGrp";
	rename -uid "8DA68054-4A6B-3F36-3CB5-3F8ECB48F6FA";
	setAttr ".t" -type "double3" 16.10447738629319 0.0018763412051310269 -1.097649423797975e-06 ;
	setAttr ".r" -type "double3" -0.067034771168809071 3.9051286448958689e-06 0.0066755616416231634 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".pv" -type "double3" -0.17455705990909196 -2.6743431139135537e-17 0.98464706003516489 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode ikHandle -n "LeftLegDnIKh" -p "LeftLegSysConstGrp";
	rename -uid "5FEF119D-4171-C092-98A0-87A996CA3509";
	setAttr ".t" -type "double3" 27.611582819367992 -0.0053110220738208369 -7.289080951689904 ;
	setAttr ".r" -type "double3" -0.079353527520176048 32.351866365067785 -0.035787062743574884 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -0.17455705990909196 -2.6743431139135537e-17 0.98464706003516489 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode ikHandle -n "LeftLegExIKh" -p "LeftLegSysConstGrp";
	rename -uid "A8FE80AE-466F-5EAA-8584-6BAFE9E23DD5";
	setAttr ".t" -type "double3" 39.053772306973116 2.4507967744114012e-07 -3.8891148422948447 ;
	setAttr ".r" -type "double3" -0.028360886474572116 -16.548945618288133 0.026595712409453576 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -0.17455705990909196 -2.6743431139135537e-17 0.98464706003516489 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode transform -n "LeftLegPosGrp" -p "LeftLegSysConstGrp";
	rename -uid "855563B1-467C-5E46-9A61-D880A55E46B8";
	setAttr ".t" -type "double3" 36.068211665207677 -10.851168583630713 31.780986878249607 ;
	setAttr ".r" -type "double3" -10.052882769899979 -7.9513867036587919e-16 89.999999999999147 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftLegIK1Pos" -p "LeftLegPosGrp";
	rename -uid "631D663F-4CBC-89EE-AE89-DC95EE1C7F76";
	setAttr ".t" -type "double3" 10.851168583630098 41.062054207349625 -24.997094310227158 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftLegIK2Pos" -p "LeftLegPosGrp";
	rename -uid "1D94D5B8-4ABF-9F03-B50E-C6ABC2AD1426";
	setAttr ".t" -type "double3" 10.851168583630338 25.204828346092157 -27.808244454287454 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999989 ;
createNode transform -n "LeftLegIK3Pos" -p "LeftLegPosGrp";
	rename -uid "C4304B79-4586-D78B-84B9-7E86A0240FE3";
	setAttr ".t" -type "double3" 10.851168583630468 15.146751798608181 -36.994066115637416 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999878 0.99999999999999922 ;
createNode transform -n "LeftLegIK4Pos" -p "LeftLegPosGrp";
	rename -uid "FFEB643E-409E-29DE-2183-84954BD84721";
	setAttr ".t" -type "double3" 10.851168583630743 3.2867445744010353 -35.643611477813586 ;
createNode transform -n "LeftLegPVStretchPos" -p "LeftLegPosGrp";
	rename -uid "B3F6ADC9-4CA3-F091-BBB8-839F73F3FB2F";
createNode pointConstraint -n "LeftLegPVStretchPos_pointConstraint2" -p "LeftLegPVStretchPos";
	rename -uid "3F1786FA-4D9C-0B11-A3F4-0BAFE5A90507";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegPoleVectorCtrlGrpW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".rst" -type "double3" 10.851168583630333 25.20482778788697 -27.808244553245423 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLegIKMovePos" -p "LeftLegPosGrp";
	rename -uid "C4D94739-4712-6013-BA1B-F9880E58753D";
	setAttr ".r" -type "double3" -6.0625166928312411e-15 1.9415681121257945e-23 -89.999999816505806 ;
createNode pointConstraint -n "LeftLegIKMovePos_pointConstraint2" -p "LeftLegIKMovePos";
	rename -uid "7028A897-4FEB-5638-B0AC-20A813498D39";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftHeelIKOffW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 10.851168583630466 15.146751190479669 -36.99406626018925 ;
	setAttr -k on ".w0";
createNode transform -n "LeftHeelIKMovePos" -p "LeftLegPosGrp";
	rename -uid "170CA8CF-46F2-6FDF-AB2D-F49747435D9B";
createNode pointConstraint -n "LeftLegIK4Pos_pointConstraint2" -p "LeftHeelIKMovePos";
	rename -uid "DF8BB167-4636-E932-62BA-D8A5331E146A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegIKPosW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 10.851168583630642 3.2867445744010424 -35.643611477813614 ;
	setAttr -k on ".w0";
createNode transform -n "LeftToeRigGrp" -p "LeftLegRigGrp";
	rename -uid "DE6B7128-46AF-422C-3E68-17804F572F62";
createNode transform -n "LeftAnkleConsGrp" -p "LeftToeRigGrp";
	rename -uid "FB3B9BEB-4A91-7787-3190-798492AE1771";
createNode transform -n "LeftAnkleIKScaleGrp" -p "LeftAnkleConsGrp";
	rename -uid "EEFB77E7-42C1-D918-0550-09AC1B698946";
	setAttr ".t" -type "double3" 6.8474194536705113e-07 1.7729147927525446e-08 -1.346660951639933e-07 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999162 ;
createNode transform -n "LeftToeCtrlGrp" -p "LeftAnkleIKScaleGrp";
	rename -uid "151575B7-4045-582A-6FEB-ABA98287ACC6";
	setAttr ".t" -type "double3" -1.7729147927525446e-08 6.8474194536705113e-07 1.346660951639933e-07 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftToeCtrl" -p "LeftToeCtrlGrp";
	rename -uid "B7F1820B-463A-4AB2-0532-E4BEB4A0F49B";
	addAttr -ci true -sn "SecondToeFold" -ln "SecondToeFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "SecondToe1" -ln "SecondToe1" -at "double";
	addAttr -ci true -sn "SecondToe2" -ln "SecondToe2" -at "double";
	addAttr -ci true -sn "ThirdToeFold" -ln "ThirdToeFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ThirdToe1" -ln "ThirdToe1" -at "double";
	addAttr -ci true -sn "ThirdToe2" -ln "ThirdToe2" -at "double";
	addAttr -ci true -sn "FourthToeFold" -ln "FourthToeFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FourthToe1" -ln "FourthToe1" -at "double";
	addAttr -ci true -sn "FourthToe2" -ln "FourthToe2" -at "double";
	addAttr -ci true -sn "LittleToeFold" -ln "LittleToeFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "LittleToe1" -ln "LittleToe1" -at "double";
	addAttr -ci true -sn "LittleToe2" -ln "LittleToe2" -at "double";
	addAttr -ci true -sn "SpreadFold" -ln "SpreadFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "SecondToeSpread" -ln "SecondToeSpread" -at "double";
	addAttr -ci true -sn "ThirdToeSpread" -ln "ThirdToeSpread" -at "double";
	addAttr -ci true -sn "FourthToeSpread" -ln "FourthToeSpread" -at "double";
	addAttr -ci true -sn "LittleToeSpread" -ln "LittleToeSpread" -at "double";
	addAttr -ci true -sn "RollFold" -ln "RollFold" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "SecondToeRoll" -ln "SecondToeRoll" -at "double";
	addAttr -ci true -sn "ThirdToeRoll" -ln "ThirdToeRoll" -at "double";
	addAttr -ci true -sn "FourthToeRoll" -ln "FourthToeRoll" -at "double";
	addAttr -ci true -sn "LittleToeRoll" -ln "LittleToeRoll" -at "double";
	addAttr -ci true -sn "CtrlVis" -ln "CtrlVis" -min 0 -max 1 -at "bool";
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
	setAttr -l on -cb on ".SecondToeFold";
	setAttr -k on ".SecondToe1";
	setAttr -k on ".SecondToe2";
	setAttr -l on -cb on ".ThirdToeFold";
	setAttr -k on ".ThirdToe1";
	setAttr -k on ".ThirdToe2";
	setAttr -l on -cb on ".FourthToeFold";
	setAttr -k on ".FourthToe1";
	setAttr -k on ".FourthToe2";
	setAttr -l on -cb on ".LittleToeFold";
	setAttr -k on ".LittleToe1";
	setAttr -k on ".LittleToe2";
	setAttr -l on -cb on ".SpreadFold";
	setAttr -k on ".SecondToeSpread";
	setAttr -k on ".ThirdToeSpread";
	setAttr -k on ".FourthToeSpread";
	setAttr -k on ".LittleToeSpread";
	setAttr -l on -cb on ".RollFold";
	setAttr -k on ".SecondToeRoll";
	setAttr -k on ".ThirdToeRoll";
	setAttr -k on ".FourthToeRoll";
	setAttr -k on ".LittleToeRoll";
	setAttr -l on -cb on ".CtrlVis";
	setAttr -cb on ".IKCtrlVis" yes;
	setAttr -cb on ".FKCtrlVis" yes;
createNode nurbsCurve -n "LeftToeCtrlShape" -p "LeftToeCtrl";
	rename -uid "FB6548A7-42FF-0018-F716-328404BE03E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.8800983755914276 3.0815182837596584 1.4298923040575233
		-8.2060824558590677e-15 3.0815182837596584 6.3274845707192791
		-5.8800983755914293 3.0815182837596584 1.4298923040575267
		-0.98250610892969437 3.0815182837596584 7.3099906796489513
		-5.8800983755914293 3.0815182837596584 13.190089055240366
		-8.3646619128294249e-15 3.0815182837596584 8.2924967885786245
		5.8800983755914276 3.0815182837596584 13.190089055240366
		0.98250610892967216 3.0815182837596584 7.3099906796489513
		5.8800983755914276 3.0815182837596584 1.4298923040575233
		-8.2060824558590677e-15 3.0815182837596584 6.3274845707192791
		-5.8800983755914293 3.0815182837596584 1.4298923040575267
		;
createNode transform -n "LeftBallFKCtrlGrp" -p "LeftAnkleIKScaleGrp";
	rename -uid "96B5F92E-44E5-43A7-1D21-E7B8ECD0A2A3";
	setAttr ".t" -type "double3" 0.55398863396470865 -1.5021977148621259 4.4892641618821436 ;
	setAttr ".r" -type "double3" -79.0242750186747 -82.833332725621361 -11.060025653418636 ;
	setAttr ".s" -type "double3" 1.0000000000000109 0.99999999999999345 0.99999999999999312 ;
createNode transform -n "LeftBallFKCtrl" -p "LeftBallFKCtrlGrp";
	rename -uid "5BB7A734-4EA6-D55E-D00F-30A26D7C8F26";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftBallFKCtrlShape" -p "LeftBallFKCtrl";
	rename -uid "94AC512C-41B9-9EDE-1245-77955E2A59AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.2733955378844598e-15 6.6302783778502929 1.3328414735444726e-16
		-1.2733955378844598e-15 5.2128883842637479e-16 6.6302783778502929
		-1.2733955378844598e-15 -6.6302783778502929 1.3328414735444726e-16
		-1.2733955378844598e-15 5.2128883842637479e-16 -6.6302783778502929
		-1.2733955378844598e-15 6.6302783778502929 1.3328414735444726e-16
		;
createNode transform -n "LeftToeSwitchGrp" -p "LeftAnkleIKScaleGrp";
	rename -uid "A6926884-43E4-12AF-2604-4A9DA0C8328F";
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999933 1.0000000000000002 ;
createNode transform -n "LeftSecondToeRigGrp" -p "LeftToeSwitchGrp";
	rename -uid "A6D6C62D-4FEE-E513-EE7E-BFA140E74ECF";
	setAttr ".t" -type "double3" 31.195730583637484 -19.449344787825105 6.8968807590671704 ;
	setAttr ".r" -type "double3" 72.178847468714466 -4.5368017701892303 76.176759835919711 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999911 ;
createNode transform -n "LeftSecondToe1CtrlGrp" -p "LeftSecondToeRigGrp";
	rename -uid "525FC346-4D3E-D471-BFB1-6BAAB143076D";
	setAttr ".t" -type "double3" 8.8963238436626124 2.1332106868337006 -34.682620919153841 ;
	setAttr ".r" -type "double3" 26.025021387663131 -83.619522281454422 -115.88492526986327 ;
createNode transform -n "LeftSecondToe1Ctrl" -p "LeftSecondToe1CtrlGrp";
	rename -uid "DF37548F-413F-F6B8-2D2B-ADBF1C324EE3";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftSecondToe1CtrlShape" -p "LeftSecondToe1Ctrl";
	rename -uid "1089EFB2-4CF3-8626-B4D9-BF93A713DD66";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.4720590755982474 1.5022705301959149e-15 1.0095750580732155
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		1.4720590755982472 -0.23511399999999857 2.2859680580732169
		1.4720590755982472 -0.38042299999999846 2.4859680580732162
		1.472059075598247 -0.38042299999999846 2.7331820580732158
		1.472059075598247 -0.23511399999999857 2.9331820580732151
		1.472059075598247 1.5022705301959149e-15 3.0095750580732146
		1.4720590755982472 0.23511400000000141 2.9331820580732151
		1.4720590755982474 0.38042300000000157 2.7331820580732158
		1.4720590755982474 0.38042300000000157 2.4859680580732162
		1.4720590755982474 0.23511400000000141 2.2859680580732169
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		;
createNode transform -n "LeftSecondToeAimGrp" -p "LeftSecondToe1Ctrl";
	rename -uid "D6D28803-478C-4BB8-2521-ADA608C1DB3E";
	setAttr ".t" -type "double3" 3.5060147375710926 -6.2172489379008766e-15 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999956 ;
createNode transform -n "LeftSecondToePVPos" -p "LeftSecondToeAimGrp";
	rename -uid "8D8CC834-4A6D-8D9F-8CD2-82BE38DD7398";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "LeftSecondToeAimGrp_aimConstraint1" -p "LeftSecondToeAimGrp";
	rename -uid "598AE32F-4CFC-BF18-4DC1-D78821E9352D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftSecondToeIKCtrlW0" -dv 1 -at "double";
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
createNode transform -n "LeftSecondToe1CtrlPos" -p "LeftSecondToe1Ctrl";
	rename -uid "32ECB1AD-4323-F9DC-E82C-3A9EA2A5E289";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "LeftSecondToe1CtrlOff" -p "LeftSecondToe1CtrlPos";
	rename -uid "31DA8738-4842-F278-8A32-D49372655E7F";
createNode transform -n "LeftSecondToe2CtrlGrp" -p "LeftSecondToe1CtrlOff";
	rename -uid "A452A396-4A97-ED10-93CF-D7B592824A7C";
createNode transform -n "LeftSecondToe2Ctrl" -p "LeftSecondToe2CtrlGrp";
	rename -uid "A83F4680-4AFF-014E-CDC2-9E8F5EB2B82C";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftSecondToe2CtrlShape" -p "LeftSecondToe2Ctrl";
	rename -uid "E9292F64-4874-81F4-BE64-6DB199BED5B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftSecondToe2CtrlPos" -p "LeftSecondToe2Ctrl";
	rename -uid "3DB3782A-44F1-BAA1-EE48-DA84F7284E78";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "LeftSecondToe2CtrlOff" -p "LeftSecondToe2CtrlPos";
	rename -uid "F52599D3-42DC-3645-B016-20877CF71535";
createNode transform -n "LeftSecondToe3CtrlGrp" -p "LeftSecondToe2CtrlOff";
	rename -uid "F8982047-47CE-54EA-1D09-48A6365218F8";
createNode transform -n "LeftSecondToe3Ctrl" -p "LeftSecondToe3CtrlGrp";
	rename -uid "E38A153B-4B0B-1680-3C25-05B60F138ABA";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftSecondToe3CtrlShape" -p "LeftSecondToe3Ctrl";
	rename -uid "97A0D614-4254-FAF9-10A4-5081FDF32CF0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftSecondToe1MTPos" -p "LeftSecondToe1Ctrl";
	rename -uid "D5433845-4856-3998-FBD1-F7BA327BB6AF";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode parentConstraint -n "LeftSecondToe1MTPos_parentConstraint1" -p "LeftSecondToe1MTPos";
	rename -uid "092091C0-4E36-F823-72F3-80BAA00570AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftSecondToe1JntW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" 0 -0.72369500608537984 0 ;
	setAttr ".rst" -type "double3" 8.7262273672836006 1.7826761326603444 -31.198322990572013 ;
	setAttr ".rsrr" -type "double3" 26.025021387663173 -83.619522281454394 -115.88492526986334 ;
	setAttr -k on ".w0";
createNode transform -n "LeftSecondToe2MTPos" -p "LeftSecondToe1MTPos";
	rename -uid "AC041E3D-4D82-A01A-BE08-97AAC07BEA39";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode parentConstraint -n "LeftSecondToe2MTPos_parentConstraint1" -p "LeftSecondToe2MTPos";
	rename -uid "8179EB7D-4B3A-B10A-BFAC-3BBEE5B1DC1D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftSecondToe2JntW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" 0 1 0 ;
	setAttr ".rst" -type "double3" 8.6670015970705627 1.6606237574486236 -29.985127791794628 ;
	setAttr ".rsrr" -type "double3" 26.024932083816566 -83.619501829266312 -115.88483540940501 ;
	setAttr -k on ".w0";
createNode transform -n "LeftSecondToe1IKJntGrp" -p "LeftSecondToeRigGrp";
	rename -uid "3863C52B-48D6-7907-D904-25A9C64F8BD1";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode joint -n "LeftSecondToe1IKJnt" -p "LeftSecondToe1IKJntGrp";
	rename -uid "7840AF8F-41B8-5143-8816-FD9C4CC05F74";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 8.8817841970012523e-16 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 1.6148163658009852e-15 -0.72369500608537984 1.1287938545832427e-13 ;
	setAttr ".pa" -type "double3" 0 33.215030338882016 0 ;
	setAttr ".bps" -type "matrix" -0.048759896599305422 9.298117831235686e-16 0.99881052882096932 0
		 0.99881052882096988 1.0843685342135808e-14 0.048759896599305325 0 -1.091488011084607e-14 0.99999999999999967 -1.5959455978986625e-15 0
		 8.7036134022705021 1.7360736771382255 -30.735095875455848 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SecondToe2";
	setAttr ".liw" yes;
createNode joint -n "LeftSecondToe2IKJnt" -p "LeftSecondToe1IKJnt";
	rename -uid "CECE8D04-4A04-DA47-9023-B2AEACDA52D1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.2207567589362962 2.4986726555008276e-15 -9.2992020334081715e-16 ;
	setAttr ".r" -type "double3" 0 1 0 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" -0.048759896599305422 9.298117831235686e-16 0.99881052882096932 0
		 0.99881052882096988 1.0843685342135808e-14 0.048759896599305325 0 -1.091488011084607e-14 0.99999999999999967 -1.5959455978986625e-15 0
		 8.5109032704290009 1.7360736771382281 -26.787570919127003 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SecondToe3";
	setAttr ".liw" yes;
createNode joint -n "LeftSecondToe3IKJnt" -p "LeftSecondToe2IKJnt";
	rename -uid "415F3A6D-47B7-A510-F712-FEBFDBC8DA0C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.1975834604585782 3.0057946691537663e-15 -8.4806293931816157e-16 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" -0.048759896599305422 9.298117831235686e-16 0.99881052882096932 0
		 0.99881052882096988 1.0843685342135808e-14 0.048759896599305325 0 -1.091488011084607e-14 0.99999999999999967 -1.5959455978986625e-15 0
		 8.5109032704290009 1.7360736771382281 -26.787570919127003 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SecondToe3";
	setAttr ".liw" yes;
createNode ikEffector -n "effector62" -p "LeftSecondToe2IKJnt";
	rename -uid "7A89350B-4C9B-8946-4F9C-8B9CB167EE2E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "LeftSecondToe1IKJntGrp_parentConstraint1" -p "LeftSecondToe1IKJntGrp";
	rename -uid "3ED7F817-42AD-C920-5933-00BE70212709";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftSecondToeCtrlW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 3.5060147375710962 -5.3290705182007514e-15 
		1.1102230246251565e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.9817700138720475e-16 -2.3854160110976372e-15 
		0 ;
	setAttr ".lr" -type "double3" 26.025021387663188 -83.619522281454437 -115.8849252698632 ;
	setAttr ".rst" -type "double3" 8.7262273672836006 1.7826761326603442 -31.198322990572006 ;
	setAttr ".rsrr" -type "double3" 26.025021387663173 -83.619522281454394 -115.88492526986334 ;
	setAttr -k on ".w0";
createNode transform -n "LeftSecondToeIKCtrlGrp" -p "LeftSecondToeRigGrp";
	rename -uid "6A45349B-4913-702F-44A0-D9AA6A113149";
	setAttr ".t" -type "double3" 8.5118688551219108 1.3409264439340589 -26.807350668284339 ;
	setAttr ".r" -type "double3" 26.025021387663092 -83.619522281454394 -115.88492526986322 ;
createNode transform -n "LeftSecondToeIKCtrlConsGrp" -p "LeftSecondToeIKCtrlGrp";
	rename -uid "263DAB98-43FE-D7A0-802B-D58904B7077D";
createNode transform -n "LeftSecondToeIKCtrlCnnGrp" -p "LeftSecondToeIKCtrlConsGrp";
	rename -uid "0A127769-462E-5AED-880A-BD90DB22ED48";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
createNode transform -n "LeftSecondToeIKCtrl" -p "LeftSecondToeIKCtrlCnnGrp";
	rename -uid "EA179C9D-4B33-32B6-93E6-369925A3CB7F";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftSecondToeIKCtrlShape" -p "LeftSecondToeIKCtrl";
	rename -uid "5C9857C0-4445-D1BE-ADC1-07979808B26C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		4.4408920985006262e-16 -1 -1
		4.4408920985006262e-16 -1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 -1 1
		-4.4408920985006262e-16 1 1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		-4.4408920985006262e-16 1 1
		0 1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 1 -1
		4.4408920985006262e-16 -1 -1
		0 -1 1
		;
createNode transform -n "LeftSecondToeAimUpvec" -p "LeftSecondToeIKCtrl";
	rename -uid "84720C4F-4022-9DA7-06F1-49B01D7A8726";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999989 ;
createNode ikHandle -n "LeftSecondToeIKh" -p "LeftSecondToeIKCtrl";
	rename -uid "290BC878-404E-C4EE-E3CF-E79ADC9BF688";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.4868995751603507e-13 -2.6645352591003757e-15 -1.2701974487772105e-06 ;
	setAttr ".r" -type "double3" 84.268708546005456 0.27932347066324748 92.780864932787978 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftSecondToeIKh_poleVectorConstraint1" -p "LeftSecondToeIKh";
	rename -uid "D38B92A6-4852-0CE7-B0C4-C480C224263A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftSecondToePVPosW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 -2.6645352591003757e-15 0.10000000000000031 ;
	setAttr -k on ".w0";
createNode transform -n "LeftSecondToeIKCnn" -p "LeftSecondToeIKCtrlGrp";
	rename -uid "994765A8-42DE-8A4C-674F-9BAD07E8DB7C";
createNode transform -n "LeftThirdToeRigGrp" -p "LeftToeSwitchGrp";
	rename -uid "D535BE00-4B70-B861-3DD7-F89A57880C18";
	setAttr ".t" -type "double3" 31.195730583637484 -19.449344787825105 6.8968807590671704 ;
	setAttr ".r" -type "double3" 72.178847468714466 -4.5368017701892303 76.176759835919711 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999911 ;
createNode transform -n "LeftThirdToe1CtrlGrp" -p "LeftThirdToeRigGrp";
	rename -uid "E83107FD-4586-9C9E-7AF5-4297952077DF";
	setAttr ".t" -type "double3" 10.735944896361612 2.0700991354569718 -33.952525051714211 ;
	setAttr ".r" -type "double3" -40.883827118527009 -82.722625927629068 -49.345354637095433 ;
createNode transform -n "LeftThirdToe1Ctrl" -p "LeftThirdToe1CtrlGrp";
	rename -uid "67A77A26-4F11-D0D3-15AA-2C9F1BA37E20";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftThirdToe1CtrlShape" -p "LeftThirdToe1Ctrl";
	rename -uid "86ADA325-4159-4892-3F90-5F82BB8E0F18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.4720590755982474 1.5022705301959149e-15 1.0095750580732155
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		1.4720590755982472 -0.23511399999999857 2.2859680580732169
		1.4720590755982472 -0.38042299999999846 2.4859680580732162
		1.472059075598247 -0.38042299999999846 2.7331820580732158
		1.472059075598247 -0.23511399999999857 2.9331820580732151
		1.472059075598247 1.5022705301959149e-15 3.0095750580732146
		1.4720590755982472 0.23511400000000141 2.9331820580732151
		1.4720590755982474 0.38042300000000157 2.7331820580732158
		1.4720590755982474 0.38042300000000157 2.4859680580732162
		1.4720590755982474 0.23511400000000141 2.2859680580732169
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		;
createNode transform -n "LeftThirdToeAimGrp" -p "LeftThirdToe1Ctrl";
	rename -uid "96304001-4664-419D-F483-EF904AE7A2DD";
	setAttr ".t" -type "double3" 2.8669927472397916 1.7763568394002505e-15 -1.5543122344752192e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "LeftThirdToePVPos" -p "LeftThirdToeAimGrp";
	rename -uid "9C492095-485E-4B5B-6BC0-5384462E98FA";
	setAttr ".t" -type "double3" 0 0 0.099999999999999992 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode aimConstraint -n "LeftThirdToeAimGrp_aimConstraint1" -p "LeftThirdToeAimGrp";
	rename -uid "9E924A3B-48EF-F0F6-ABB6-58B0D23CF318";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftThirdToeIKCtrlW0" -dv 1 -at "double";
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
createNode transform -n "LeftThirdToe1CtrlPos" -p "LeftThirdToe1Ctrl";
	rename -uid "0F94E6FB-4695-DCBA-C9B5-8093439CB2B1";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftThirdToe1CtrlOff" -p "LeftThirdToe1CtrlPos";
	rename -uid "44FC868C-447C-028B-CC90-22937827B818";
createNode transform -n "LeftThirdToe2CtrlGrp" -p "LeftThirdToe1CtrlOff";
	rename -uid "FDF72710-4730-5D7F-3EA6-8FACCE6CDAF1";
createNode transform -n "LeftThirdToe2Ctrl" -p "LeftThirdToe2CtrlGrp";
	rename -uid "9058022B-4219-A1C8-EE82-8B908CDA7434";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftThirdToe2CtrlShape" -p "LeftThirdToe2Ctrl";
	rename -uid "130B810C-4EDE-9849-935B-EE8BB5865E46";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftThirdToe2CtrlPos" -p "LeftThirdToe2Ctrl";
	rename -uid "DFFE309A-4847-91EE-93DF-A3B64693356B";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "LeftThirdToe2CtrlOff" -p "LeftThirdToe2CtrlPos";
	rename -uid "31C6D320-440A-4D6C-DA81-7E89728EE59D";
createNode transform -n "LeftThirdToe3CtrlGrp" -p "LeftThirdToe2CtrlOff";
	rename -uid "29B23E62-483C-454F-ACC5-8E9152EF1E82";
createNode transform -n "LeftThirdToe3Ctrl" -p "LeftThirdToe3CtrlGrp";
	rename -uid "C09B8FC4-4940-F0A3-D5D6-799ABA5ACD51";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftThirdToe3CtrlShape" -p "LeftThirdToe3Ctrl";
	rename -uid "9B3D36E9-473B-6FCD-4C2D-148432EF8810";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftThirdToe1MTPos" -p "LeftThirdToe1Ctrl";
	rename -uid "A50CCE2B-4AFA-5241-8E79-D08D17940BFF";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode parentConstraint -n "LeftThirdToe1MTPos_parentConstraint1" -p "LeftThirdToe1MTPos";
	rename -uid "C46266B7-45B1-A33B-13AE-5D903FE37E59";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftThirdToe1IKJntW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10.972549641309877 1.7945798866414626 -31.108627242205991 ;
	setAttr ".rsrr" -type "double3" -40.883827118527122 -82.722625927629082 -49.34535463709539 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThirdToe2MTPos" -p "LeftThirdToe1MTPos";
	rename -uid "5B21C883-4011-B649-941D-1282148240CC";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
createNode parentConstraint -n "LeftThirdToe2MTPos_parentConstraint1" -p "LeftThirdToe2MTPos";
	rename -uid "AC2E8477-4190-A2C6-6317-B895A1911444";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftThirdToe2IKJntW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" 0 2.3623807427351349e-05 0 ;
	setAttr ".rst" -type "double3" 11.086058630207448 1.6624020160678874 -29.744292959916468 ;
	setAttr ".rsrr" -type "double3" -40.883706036095845 -82.722608067078426 -49.345476702824193 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThirdToe1IKJntGrp" -p "LeftThirdToeRigGrp";
	rename -uid "234D46B9-43B3-7FAE-03B1-8594A03CF51B";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "LeftThirdToe1IKJnt" -p "LeftThirdToe1IKJntGrp";
	rename -uid "B1AE4562-4CCD-3083-DA57-96BC39CA9E83";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 4.4408920985006262e-16 ;
	setAttr ".bps" -type "matrix" 0.082910934310618203 1.5681900222830336e-15 0.99655696122787685 0
		 0.99655696122787729 -5.7779752052854136e-14 -0.082910934310618203 0 5.7308324752369799e-14 1 -6.411537967210279e-15 0
		 11.022792258609918 1.7360736771382657 -30.504728733603709 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ThirdToe2";
	setAttr ".liw" yes;
createNode joint -n "LeftThirdToe2IKJnt" -p "LeftThirdToe1IKJnt";
	rename -uid "8EA3CF58-4F0C-61C2-78A1-D3A3258E233A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3754138700261769 3.5290679070449499e-15 1.1384817378114545e-15 ;
	setAttr ".r" -type "double3" 4.6999195967081911e-16 2.3623807427351346e-05 1.2008690230148667e-13 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" 0.082910934310618203 1.5681900222830336e-15 0.99655696122787685 0
		 0.99655696122787729 -5.7779752052854136e-14 -0.082910934310618203 0 5.7308324752369799e-14 1 -6.411537967210279e-15 0
		 11.399711101460539 1.7360736771382723 -25.974311849703774 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ThirdToe3";
	setAttr ".liw" yes;
createNode joint -n "LeftThirdToe3IKJnt" -p "LeftThirdToe2IKJnt";
	rename -uid "9E4F21A0-4C76-CF5E-F80C-00AACF8BD8CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.7794580067552914 1.7763568394002505e-15 -1.1102230246251565e-15 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" 0.082910934310618203 1.5681900222830336e-15 0.99655696122787685 0
		 0.99655696122787729 -5.7779752052854136e-14 -0.082910934310618203 0 5.7308324752369799e-14 1 -6.411537967210279e-15 0
		 11.399711101460539 1.7360736771382723 -25.974311849703774 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ThirdToe3";
	setAttr ".liw" yes;
createNode ikEffector -n "effector63" -p "LeftThirdToe2IKJnt";
	rename -uid "1FBEC477-4A75-448B-5A59-0381F14DD60E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "LeftThirdToe1IKJntGrp_parentConstraint1" -p "LeftThirdToe1IKJntGrp";
	rename -uid "2A94E7B5-406D-7C7A-7F9D-A187B45605DD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftThirdToeCtrlW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 2.8669927472397916 0 -1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.6040791454482538e-14 3.1805546814635176e-15 
		0 ;
	setAttr ".lr" -type "double3" -40.883827118526916 -82.722625927629082 -49.345354637095468 ;
	setAttr ".rst" -type "double3" 10.972549641309875 1.794579886641462 -31.108627242205984 ;
	setAttr ".rsrr" -type "double3" -40.883827118527094 -82.722625927629082 -49.345354637095376 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThirdToeIKCtrlGrp" -p "LeftThirdToeRigGrp";
	rename -uid "E8F0D0DE-499F-FFC5-E184-04A735B92C1D";
	setAttr ".t" -type "double3" 11.397966533913149 1.2991944593157776 -25.995280215852915 ;
	setAttr ".r" -type "double3" -40.883827118527094 -82.722625927629082 -49.345354637095376 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999967 ;
createNode transform -n "LeftThirdToeIKCtrlConsGrp" -p "LeftThirdToeIKCtrlGrp";
	rename -uid "5DBDE31D-43AF-D410-76B6-679F837C2403";
createNode transform -n "LeftThirdToeIKCtrlCnnGrp" -p "LeftThirdToeIKCtrlConsGrp";
	rename -uid "DFDDB459-4B41-393B-F610-DB84960E9D0F";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "LeftThirdToeIKCtrl" -p "LeftThirdToeIKCtrlCnnGrp";
	rename -uid "2ED5C106-4EA2-CF9A-1F77-C4ACB620DECF";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftThirdToeIKCtrlShape" -p "LeftThirdToeIKCtrl";
	rename -uid "C9DC1A0F-4553-8C78-CE02-5F9D4D6A08DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		4.4408920985006262e-16 -1 -1
		4.4408920985006262e-16 -1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 -1 1
		-4.4408920985006262e-16 1 1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		-4.4408920985006262e-16 1 1
		0 1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 1 -1
		4.4408920985006262e-16 -1 -1
		0 -1 1
		;
createNode transform -n "LeftThirdToeAimUpvec" -p "LeftThirdToeIKCtrl";
	rename -uid "E0404DA8-47BB-AFB8-48C1-F68C903975BD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode ikHandle -n "LeftThirdToeIKh" -p "LeftThirdToeIKCtrl";
	rename -uid "8092563C-4CC8-9C8E-4A58-B4888AD146E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.1974423109204508e-13 -1.7763568394002505e-15 -1.5583249459716342e-06 ;
	setAttr ".r" -type "double3" 84.504210696337253 -0.45652277195652829 85.266008014903747 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftThirdToeIKh_poleVectorConstraint1" -p "LeftThirdToeIKh";
	rename -uid "07701111-49A8-09B3-E614-AB8CAB906738";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftThirdToePVPosW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" 0 0 0.099999999999999645 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThirdToeIKCnn" -p "LeftThirdToeIKCtrlGrp";
	rename -uid "F326B861-4597-8C80-FAD7-98AEAAE80BE3";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "LeftFourthToeRigGrp" -p "LeftToeSwitchGrp";
	rename -uid "91D5A405-45C8-22C0-655C-5481B22663A3";
	setAttr ".t" -type "double3" 31.195730583637484 -19.449344787825108 6.8968807590671704 ;
	setAttr ".r" -type "double3" 72.178847468714466 -4.5368017701892303 76.176759835919711 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999911 ;
createNode transform -n "LeftFourthToe1CtrlGrp" -p "LeftFourthToeRigGrp";
	rename -uid "9D47DB98-4EAD-20BE-BC93-BEA48B4134D9";
	setAttr ".t" -type "double3" 12.484820103435412 2.1158098717550082 -34.407788606777558 ;
	setAttr ".r" -type "double3" -57.038566218029189 -78.305020331865805 -33.512439684614527 ;
createNode transform -n "LeftFourthToe1Ctrl" -p "LeftFourthToe1CtrlGrp";
	rename -uid "A9211D23-4193-EC09-6702-FCBD47965B65";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftFourthToe1CtrlShape" -p "LeftFourthToe1Ctrl";
	rename -uid "01A3C16F-4E25-E8FB-3EEB-2FAF36E8FB63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.4720590755982474 1.5022705301959149e-15 1.0095750580732155
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		1.4720590755982472 -0.23511399999999857 2.2859680580732169
		1.4720590755982472 -0.38042299999999846 2.4859680580732162
		1.472059075598247 -0.38042299999999846 2.7331820580732158
		1.472059075598247 -0.23511399999999857 2.9331820580732151
		1.472059075598247 1.5022705301959149e-15 3.0095750580732146
		1.4720590755982472 0.23511400000000141 2.9331820580732151
		1.4720590755982474 0.38042300000000157 2.7331820580732158
		1.4720590755982474 0.38042300000000157 2.4859680580732162
		1.4720590755982474 0.23511400000000141 2.2859680580732169
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		;
createNode transform -n "LeftFourthToeAimGrp" -p "LeftFourthToe1Ctrl";
	rename -uid "6D7BEBB2-4567-728D-D238-9797D86C654E";
	setAttr ".t" -type "double3" 3.0495964770709172 -3.5527136788005009e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "LeftFourthToePVPos" -p "LeftFourthToeAimGrp";
	rename -uid "B1D8A5AD-403C-FD19-9C30-7B897D6DD663";
	setAttr ".t" -type "double3" 0 0 0.1 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode aimConstraint -n "LeftFourthToeAimGrp_aimConstraint1" -p "LeftFourthToeAimGrp";
	rename -uid "AF421111-4075-D19F-FBDB-DEB03DE78F26";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftFourthToeIKCtrlW0" -dv 1 -at "double";
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
createNode transform -n "LeftFourthToe1CtrlPos" -p "LeftFourthToe1Ctrl";
	rename -uid "FFC2C644-4C32-61C7-FACA-689108C90C8F";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "LeftFourthToe1CtrlOff" -p "LeftFourthToe1CtrlPos";
	rename -uid "D8DA2453-4B65-EB02-5CF8-1882ADAEC568";
createNode transform -n "LeftFourthToe2CtrlGrp" -p "LeftFourthToe1CtrlOff";
	rename -uid "17F109B9-4421-0544-035C-B28C50B4C0AA";
createNode transform -n "LeftFourthToe2Ctrl" -p "LeftFourthToe2CtrlGrp";
	rename -uid "D0FE2C75-4C18-8127-0D84-928160D165F9";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftFourthToe2CtrlShape" -p "LeftFourthToe2Ctrl";
	rename -uid "140CA3E9-4390-021A-D770-E69547EEE7B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftFourthToe2CtrlPos" -p "LeftFourthToe2Ctrl";
	rename -uid "FC8B757C-4965-4B4C-A339-C7B5AE5635D4";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "LeftFourthToe2CtrlOff" -p "LeftFourthToe2CtrlPos";
	rename -uid "FA06ADCB-4010-9FB9-50F5-7ABEEA23E6A4";
createNode transform -n "LeftFourthToe3CtrlGrp" -p "LeftFourthToe2CtrlOff";
	rename -uid "052D251B-4FD2-7DC9-9605-A1B3DFFCE9B3";
createNode transform -n "LeftFourthToe3Ctrl" -p "LeftFourthToe3CtrlGrp";
	rename -uid "936F4E5D-407B-7E57-B0E5-288BFCD309D4";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftFourthToe3CtrlShape" -p "LeftFourthToe3Ctrl";
	rename -uid "FADB2E15-46AF-1E4C-C5BC-05BB2BE002D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftFourthToe1MTPos" -p "LeftFourthToe1Ctrl";
	rename -uid "ABEC094A-4412-A4AB-41F1-00A4AE80CD4F";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode parentConstraint -n "LeftFourthToe1MTPos_parentConstraint1" -p "LeftFourthToe1MTPos";
	rename -uid "7968D184-482D-B309-9D58-92996131C958";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftFourthToe1IKJntW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 13.000219008599993 1.7745138324362764 -31.421499997975012 ;
	setAttr ".rsrr" -type "double3" -57.038566218029139 -78.305020331865791 -33.512439684614471 ;
	setAttr -k on ".w0";
createNode transform -n "LeftFourthToe2MTPos" -p "LeftFourthToe1MTPos";
	rename -uid "2376A7BF-4361-F73B-CD29-4AA1BAF21B78";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode parentConstraint -n "LeftFourthToe2MTPos_parentConstraint1" -p "LeftFourthToe2MTPos";
	rename -uid "F7D8D41F-4B1C-DD9C-0FF9-96BE0F40BDF8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftFourthToe2IKJntW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" 0 1.6960191717759795e-05 0 ;
	setAttr ".rst" -type "double3" 13.224188634643047 1.6262016308964149 -30.123790716352509 ;
	setAttr ".rsrr" -type "double3" -57.038470517999677 -78.30500748616366 -33.512537413440363 ;
	setAttr -k on ".w0";
createNode transform -n "LeftFourthToe1IKJntGrp" -p "LeftFourthToeRigGrp";
	rename -uid "FA0927EE-4F03-393D-0AB2-16BCA97ECC49";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode joint -n "LeftFourthToe1IKJnt" -p "LeftFourthToe1IKJntGrp";
	rename -uid "06D56E63-4EB8-93B4-3002-11A388F6791A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -8.5377366028499222e-07 2.7548059145851981e-21 1.8566555552202478e-13 ;
	setAttr ".bps" -type "matrix" 0.17007409293096859 4.2882364326146671e-15 0.98543127762097527 0
		 0.98543127762097582 7.3094330421059695e-16 -0.17007409293096856 0 -1.5959455978986625e-15 0.99999999999999967 -4.2049697057677804e-15 0
		 13.058268093588904 1.7360736771382743 -31.085155177368112 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "FourthToe2";
	setAttr ".liw" yes;
createNode joint -n "LeftFourthToe2IKJnt" -p "LeftFourthToe1IKJnt";
	rename -uid "0060B33F-4780-72DE-F49F-6791AEC689C1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3252200881833383 -4.4639313946659431e-15 -7.8623631043217568e-16 ;
	setAttr ".r" -type "double3" -9.6828569110716351e-16 1.6960191717759788e-05 -1.3752570189819458e-13 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" 0.17007409293096859 4.2882364326146671e-15 0.98543127762097527 0
		 0.98543127762097582 7.3094330421059695e-16 -0.17007409293096856 0 -1.5959455978986625e-15 0.99999999999999967 -4.2049697057677804e-15 0
		 13.849241622923335 1.7360736771382923 -26.502152309948581 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "FourthToe3";
	setAttr ".liw" yes;
createNode joint -n "LeftFourthToe3IKJnt" -p "LeftFourthToe2IKJnt";
	rename -uid "0CBEA93A-42D6-9546-A9CC-4FA79DCC9F33";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.6690136565307938 -3.5527136788005009e-15 -1.1102230246251565e-15 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" 0.17007409293096859 4.2882364326146671e-15 0.98543127762097527 0
		 0.98543127762097582 7.3094330421059695e-16 -0.17007409293096856 0 -1.5959455978986625e-15 0.99999999999999967 -4.2049697057677804e-15 0
		 13.849241622923335 1.7360736771382923 -26.502152309948581 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "FourthToe3";
	setAttr ".liw" yes;
createNode ikEffector -n "effector64" -p "LeftFourthToe2IKJnt";
	rename -uid "03A3838A-4180-DD6C-5630-27B59422096E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "LeftFourthToe1IKJntGrp_parentConstraint1" -p "LeftFourthToe1IKJntGrp";
	rename -uid "24BDA16A-460C-8255-0AB2-78B7C3A18178";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftFourthToeCtrlW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 3.0495964770709172 -7.1054273576010019e-15 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.7371517507196315e-14 -1.590277340731758e-15 
		0 ;
	setAttr ".lr" -type "double3" -57.038566218029224 -78.305020331865819 -33.51243968461457 ;
	setAttr ".rst" -type "double3" 13.00021900859999 1.7745138324362772 -31.421499997975015 ;
	setAttr ".rsrr" -type "double3" -57.038566218029132 -78.305020331865791 -33.512439684614542 ;
	setAttr -k on ".w0";
createNode transform -n "LeftFourthToeIKCtrlGrp" -p "LeftFourthToeRigGrp";
	rename -uid "3E8D45A1-4418-9934-594F-3EA9892C5465";
	setAttr ".t" -type "double3" 13.844272516503421 1.2155834266207373 -26.530943672351913 ;
	setAttr ".r" -type "double3" -57.038566218029139 -78.305020331865791 -33.512439684614492 ;
createNode transform -n "LeftFourthToeIKCtrlConsGrp" -p "LeftFourthToeIKCtrlGrp";
	rename -uid "4AC5C976-4E48-1DCB-E2B5-839D7D2EF5AE";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftFourthToeIKCtrlCnnGrp" -p "LeftFourthToeIKCtrlConsGrp";
	rename -uid "7C22F451-4EA8-32BD-DF5A-A29E1D2A190A";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999967 ;
createNode transform -n "LeftFourthToeIKCtrl" -p "LeftFourthToeIKCtrlCnnGrp";
	rename -uid "07507328-4308-0DF6-80C5-338A4241871E";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftFourthToeIKCtrlShape" -p "LeftFourthToeIKCtrl";
	rename -uid "5343FB8E-490A-A338-2DF7-EA9AB455F830";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		4.4408920985006262e-16 -1 -1
		4.4408920985006262e-16 -1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 -1 1
		-4.4408920985006262e-16 1 1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		-4.4408920985006262e-16 1 1
		0 1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 1 -1
		4.4408920985006262e-16 -1 -1
		0 -1 1
		;
createNode transform -n "LeftFourthToeAimUpvec" -p "LeftFourthToeIKCtrl";
	rename -uid "F7ABA543-4626-A850-CFB4-6F8E59BF26B8";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999967 ;
createNode ikHandle -n "LeftFourthToeIKh" -p "LeftFourthToeIKCtrl";
	rename -uid "5474C6F3-4126-E184-38A4-65BA4D061046";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.1263880373444408e-13 0 -1.511909147877688e-06 ;
	setAttr ".r" -type "double3" 83.667120924630467 -1.0906240808358676 80.268211827626587 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999967 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftFourthToeIKh_poleVectorConstraint1" -p "LeftFourthToeIKh";
	rename -uid "562BBFC2-4B34-EB52-58A9-9A959F800B41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftFourthToePVPosW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -7.1054273576010019e-15 3.5527136788005009e-15 0.099999999999999645 ;
	setAttr -k on ".w0";
createNode transform -n "LeftFourthToeIKCnn" -p "LeftFourthToeIKCtrlGrp";
	rename -uid "C9458C7A-4E06-C6EB-B96F-F09A9960EB0C";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftLittleToeRigGrp" -p "LeftToeSwitchGrp";
	rename -uid "27C96EF0-49DD-D5B3-5374-0E858BCC1334";
	setAttr ".t" -type "double3" 31.195730583637484 -19.449344787825108 6.8968807590671704 ;
	setAttr ".r" -type "double3" 72.178847468714466 -4.5368017701892303 76.176759835919711 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999911 ;
createNode transform -n "LeftLittleToe1CtrlGrp" -p "LeftLittleToeRigGrp";
	rename -uid "80AB3907-4FC8-E9B2-14B6-689734739BA9";
	setAttr ".t" -type "double3" 13.960263087765492 2.0846821627000729 -35.54045383377332 ;
	setAttr ".r" -type "double3" -71.430713248661476 -72.487379999656994 -19.405723051608796 ;
createNode transform -n "LeftLittleToe1Ctrl" -p "LeftLittleToe1CtrlGrp";
	rename -uid "48DC6AC6-415F-1848-D059-A482134D938F";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLittleToe1CtrlShape" -p "LeftLittleToe1Ctrl";
	rename -uid "07E5FF1A-41A7-062B-0619-1584F8A0676D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.4720590755982474 1.5022705301959149e-15 1.0095750580732155
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		1.4720590755982472 -0.23511399999999857 2.2859680580732169
		1.4720590755982472 -0.38042299999999846 2.4859680580732162
		1.472059075598247 -0.38042299999999846 2.7331820580732158
		1.472059075598247 -0.23511399999999857 2.9331820580732151
		1.472059075598247 1.5022705301959149e-15 3.0095750580732146
		1.4720590755982472 0.23511400000000141 2.9331820580732151
		1.4720590755982474 0.38042300000000157 2.7331820580732158
		1.4720590755982474 0.38042300000000157 2.4859680580732162
		1.4720590755982474 0.23511400000000141 2.2859680580732169
		1.4720590755982474 1.5022705301959149e-15 2.2095750580732165
		;
createNode transform -n "LeftLittleToeAimGrp" -p "LeftLittleToe1Ctrl";
	rename -uid "A0D229B1-494A-31A2-002A-BDA3AA373061";
	setAttr ".t" -type "double3" 3.4456339050110891 7.1054273576010019e-15 -6.6613381477509392e-16 ;
createNode transform -n "LeftLittleToePVPos" -p "LeftLittleToeAimGrp";
	rename -uid "D4A626D7-4A06-AFB3-1E48-BCB4B0FD370F";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "LeftLittleToeAimGrp_aimConstraint1" -p "LeftLittleToeAimGrp";
	rename -uid "C32B3715-43B7-C2F0-EFCB-AB880823726B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLittleToeIKCtrlW0" -dv 1 -at "double";
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
createNode transform -n "LeftLittleToe1CtrlPos" -p "LeftLittleToe1Ctrl";
	rename -uid "BAFB0CF9-45A5-229B-EEB6-71A5DB113BED";
createNode transform -n "LeftLittleToe1CtrlOff" -p "LeftLittleToe1CtrlPos";
	rename -uid "22CD2178-4AEA-9B77-1391-D69C4ACB431C";
createNode transform -n "LeftLittleToe2CtrlGrp" -p "LeftLittleToe1CtrlOff";
	rename -uid "E03E3354-4472-1197-077B-7D9A2E6F3CA0";
createNode transform -n "LeftLittleToe2Ctrl" -p "LeftLittleToe2CtrlGrp";
	rename -uid "85BDDA81-433F-A4ED-F645-1BB20FB86FBB";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLittleToe2CtrlShape" -p "LeftLittleToe2Ctrl";
	rename -uid "3843275C-46A2-9D43-D9C0-6B9C99CD7D6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftLittleToe2CtrlPos" -p "LeftLittleToe2Ctrl";
	rename -uid "1AF65FC0-46FA-3643-9669-C8800ACE12DD";
createNode transform -n "LeftLittleToe2CtrlOff" -p "LeftLittleToe2CtrlPos";
	rename -uid "D0E81B2B-4D86-465D-CFFB-90855B54B23D";
createNode transform -n "LeftLittleToe3CtrlGrp" -p "LeftLittleToe2CtrlOff";
	rename -uid "D525D691-4E5D-C447-879E-6A89E586E6C6";
createNode transform -n "LeftLittleToe3Ctrl" -p "LeftLittleToe3CtrlGrp";
	rename -uid "9E821547-42F8-B114-3EC2-11B64D40E4CC";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLittleToe3CtrlShape" -p "LeftLittleToe3Ctrl";
	rename -uid "8DD3A280-4054-F241-CEF5-EABF7235EF98";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0 0 0
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		4.7020149995802281e-15 -0.23511399999999855 2.2859680580732173
		4.6253409990981712e-15 -0.38042299999999857 2.4859680580732166
		4.5704484641362338e-15 -0.38042299999999857 2.7331820580732162
		4.5583046226482793e-15 -0.23511399999999855 2.9331820580732155
		4.5935477643865852e-15 1.5022705301959149e-15 3.009575058073215
		4.6627162131329667e-15 0.23511400000000143 2.9331820580732155
		4.7393902136150244e-15 0.38042300000000145 2.7331820580732162
		4.794282748576961e-15 0.38042300000000145 2.4859680580732166
		4.8064265900649163e-15 0.23511400000000143 2.2859680580732173
		4.7711834483266104e-15 1.5022705301959149e-15 2.209575058073217
		;
createNode transform -n "LeftLittleToe1MTPos" -p "LeftLittleToe1Ctrl";
	rename -uid "97AE4C90-42E6-F1D2-D262-3E80998F0A8E";
createNode parentConstraint -n "LeftLittleToe1MTPos_parentConstraint1" -p "LeftLittleToe1MTPos";
	rename -uid "9302B253-4D2C-0AFF-EBAE-AF94D30AA84E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLittleToe1IKJntW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 14.93820521307391 1.740184575617749 -32.254522669034216 ;
	setAttr ".rsrr" -type "double3" -71.430713248661476 -72.487379999656994 -19.405723051608803 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLittleToe2MTPos" -p "LeftLittleToe1MTPos";
	rename -uid "657ED618-4F02-F2E9-0A72-DCA53AC5203E";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode parentConstraint -n "LeftLittleToe2MTPos_parentConstraint1" -p "LeftLittleToe2MTPos";
	rename -uid "5326A7D6-4A2F-99EA-2010-99A118EB3A28";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLittleToe2IKJntW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" 0 1.6332129942820195e-05 0 ;
	setAttr ".rst" -type "double3" 15.235791738568677 1.6353544048662503 -31.254618060137943 ;
	setAttr ".rsrr" -type "double3" -71.430643306254822 -72.487372585535496 -19.405796393355907 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLittleToe1IKJntGrp" -p "LeftLittleToeRigGrp";
	rename -uid "EC61D55F-4743-0244-FB57-55B022C26E2F";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000007 1.0000000000000004 ;
createNode joint -n "LeftLittleToe1IKJnt" -p "LeftLittleToe1IKJntGrp";
	rename -uid "64728D22-44BE-57B9-4A05-249ED0AD6132";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -1.4033418597069444e-14 1.2598641267454843e-29 2.949910666570962e-21 ;
	setAttr ".bps" -type "matrix" 0.28524999633025527 4.0661918276896358e-15 0.95845314939937898 0
		 0.95845314939937976 4.6743742024599999e-15 -0.28524999633025516 0 -5.8078541975703502e-15 0.99999999999999956 -2.5951463200613034e-15 0
		 14.949874440353259 1.7360736771382861 -32.215312992243803 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LittleToe2";
	setAttr ".liw" yes;
createNode joint -n "LeftLittleToe2IKJnt" -p "LeftLittleToe1IKJnt";
	rename -uid "2C8CFD21-488F-DB10-3632-B1B04C783C1B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.0485019464683145 -3.5800355735471356e-15 -3.5917991671186034e-15 ;
	setAttr ".r" -type "double3" -2.1577488168705312e-29 1.6332129942820192e-05 -1.9564185759072608e-13 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" 0.28524999633025527 4.0661918276896358e-15 0.95845314939937898 0
		 0.95845314939937976 4.6743742024599999e-15 -0.28524999633025516 0 -5.8078541975703502e-15 0.99999999999999956 -2.5951463200613034e-15 0
		 16.077246896704512 1.7360736771382983 -28.427289520772973 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LittleToe3";
	setAttr ".liw" yes;
createNode joint -n "LeftLittleToe3IKJnt" -p "LeftLittleToe2IKJnt";
	rename -uid "FC3353EE-41B6-84C2-B77B-228D05BDE82A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9448396053612349 0 -3.3306690738754696e-16 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
	setAttr ".bps" -type "matrix" 0.28524999633025527 4.0661918276896358e-15 0.95845314939937898 0
		 0.95845314939937976 4.6743742024599999e-15 -0.28524999633025516 0 -5.8078541975703502e-15 0.99999999999999956 -2.5951463200613034e-15 0
		 16.077246896704512 1.7360736771382983 -28.427289520772973 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LittleToe3";
	setAttr ".liw" yes;
createNode ikEffector -n "effector65" -p "LeftLittleToe2IKJnt";
	rename -uid "C3B287E7-4F67-2FA1-55F1-5BA7002DF318";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "LeftLittleToe1IKJntGrp_parentConstraint1" -p "LeftLittleToe1IKJntGrp";
	rename -uid "5F5618C4-4D17-EF53-82ED-BCBA324CBA54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLittleToeCtrlW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 3.4456339050110856 1.0658141036401503e-14 -7.7715611723760958e-16 ;
	setAttr ".lr" -type "double3" -71.430713248661505 -72.487379999656994 -19.405723051608817 ;
	setAttr ".rst" -type "double3" 14.938205213073916 1.740184575617749 -32.254522669034223 ;
	setAttr ".rsrr" -type "double3" -71.430713248661476 -72.487379999656994 -19.405723051608803 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLittleToeIKCtrlGrp" -p "LeftLittleToeRigGrp";
	rename -uid "2EA20B90-4CFC-E040-445D-1EB1ECDBA8F0";
	setAttr ".t" -type "double3" 16.071598089954716 1.3409266837679623 -28.446269726804676 ;
	setAttr ".r" -type "double3" -71.430713248660808 -72.487379999657108 -19.405723051608533 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "LeftLittleToeIKCtrlConsGrp" -p "LeftLittleToeIKCtrlGrp";
	rename -uid "4F57D1DC-467F-FF7F-7163-50BCFAB94E6E";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "LeftLittleToeIKCtrlCnnGrp" -p "LeftLittleToeIKCtrlConsGrp";
	rename -uid "63C68B43-4F8C-A452-312E-2D97EFF9CE53";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "LeftLittleToeIKCtrl" -p "LeftLittleToeIKCtrlCnnGrp";
	rename -uid "8840E389-43F8-846C-6475-73A24FC4E486";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LeftLittleToeIKCtrlShape" -p "LeftLittleToeIKCtrl";
	rename -uid "28AD188B-4729-F3BA-EDCF-80B3E44C59A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		4.4408920985006262e-16 -1 -1
		4.4408920985006262e-16 -1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 -1 1
		-4.4408920985006262e-16 1 1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		-4.4408920985006262e-16 1 1
		0 1 -1
		2 4.4408920985006262e-16 4.4408920985006262e-16
		0 1 -1
		4.4408920985006262e-16 -1 -1
		0 -1 1
		;
createNode transform -n "LeftLittleToeAimUpvec" -p "LeftLittleToeIKCtrl";
	rename -uid "0FD0FC68-4312-6CDA-91E5-CE93ADB44C96";
createNode ikHandle -n "LeftLittleToeIKh" -p "LeftLittleToeIKCtrl";
	rename -uid "5C7D3C99-40B0-04E5-2581-A4808F1E9F49";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.4158453015843406e-13 7.1054273576010019e-15 -1.1966165684995644e-06 ;
	setAttr ".r" -type "double3" 84.498833644200204 -1.6342696519020183 73.504731414203704 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LeftLittleToeIKh_poleVectorConstraint1" -p "LeftLittleToeIKh";
	rename -uid "4B7E73F4-42B8-B067-0F51-8D810B662414";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLittleToePVPosW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 0 0.099999999999999645 ;
	setAttr -k on ".w0";
createNode transform -n "LeftLittleToeIKCnn" -p "LeftLittleToeIKCtrlGrp";
	rename -uid "C38EFDF3-40EA-4213-9342-3FA667FCA9E5";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 1.0000000000000004 ;
createNode transform -n "LeftAnkleJntGrp" -p "LeftAnkleIKScaleGrp";
	rename -uid "E6F2B684-4526-2328-4571-A4B25A43AFA2";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -1.7729144374811767e-08 6.8474195202838928e-07 1.3466606674228387e-07 ;
	setAttr ".r" -type "double3" -21.382228643686755 -70.371241721228003 -69.756768304315415 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode joint -n "LeftAnkleDrvJnt" -p "LeftAnkleJntGrp";
	rename -uid "BCF00473-4621-A7A2-6053-2484E1859842";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999745 0.99999999999999845 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".is" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999933 ;
createNode joint -n "LeftBallDrvJnt" -p "LeftAnkleDrvJnt";
	rename -uid "66133372-4360-2752-F328-BEA7AB0489B9";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -17.000000000000011 0 ;
createNode joint -n "LeftAnkleFKJnt" -p "LeftAnkleJntGrp";
	rename -uid "95116F7F-4C90-DE39-2818-4DBDF8361876";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1316282072803006e-14 -1.0658141036401503e-14 1.7763568394002505e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999745 0.99999999999999845 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".is" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999933 ;
createNode joint -n "LeftBallFKJnt" -p "LeftAnkleFKJnt";
	rename -uid "70EFCE8B-4BF7-8F66-A2BC-BCA190D55DBA";
	setAttr ".s" -type "double3" 1.0000000000000073 0.99999999999999878 0.99999999999999412 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -17.000000000000011 0 ;
createNode transform -n "LeftAnkleIKJntGrp" -p "LeftAnkleJntGrp";
	rename -uid "E7F01232-4844-65F0-CF46-9191FACB1B06";
	setAttr ".t" -type "double3" 0 0 5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
createNode joint -n "LeftAnkleIKJnt" -p "LeftAnkleIKJntGrp";
	rename -uid "B044AADA-4029-03A7-A3EE-A7AB21181F22";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 3.5527136788005009e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 2.2899993706537323e-13 -5.120842103385454e-28 2.1336842097439285e-28 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".is" -type "double3" 0.99999999999999867 1.0000000000000027 0.99999999999999933 ;
createNode joint -n "LeftBallIKJnt" -p "LeftAnkleIKJnt";
	rename -uid "94C5CF03-48DF-A941-75BD-BE837AB4A22E";
	setAttr ".t" -type "double3" 4.7662348834310464 -1.0658141036401503e-14 4.4408920985006262e-15 ;
	setAttr ".r" -type "double3" 1.7811106216195694e-13 1.0548900306337981e-28 -1.9779188074383596e-28 ;
	setAttr ".s" -type "double3" 1.0000000000000036 0.99999999999999967 0.99999999999999734 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -17.000000000000011 0 ;
createNode joint -n "LeftToeIKJnt" -p "LeftBallIKJnt";
	rename -uid "2F916478-4CC2-49E3-3551-6E8E6C3612FC";
	setAttr ".t" -type "double3" 5.9985172720637543 3.5527136788005009e-15 -6.6613381477509392e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000053 0.99999999999999556 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector118" -p "LeftBallIKJnt";
	rename -uid "1AC7530D-4FCF-C788-2FBA-E198D4BB48EC";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector117" -p "LeftAnkleIKJnt";
	rename -uid "51645301-4243-5892-1801-6BACA49E8253";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LeftFootShCareVecGrp" -p "LeftToeRigGrp";
	rename -uid "9F85DC2E-4621-4B21-30B1-15BF9B8CA14A";
	setAttr ".s" -type "double3" 0.999999999999999 1.0000000000000029 0.99999999999999956 ;
createNode transform -n "LeftFootShCareVecPos" -p "LeftFootShCareVecGrp";
	rename -uid "29644454-46B7-71B0-0616-9B8B83F9439E";
	addAttr -ci true -k true -sn "pbw" -ln "pbw" -min 0 -max 1 -at "double";
	setAttr ".s" -type "double3" 0.99999999999999722 1.0000000000000013 1.0000000000000007 ;
	setAttr -k on ".pbw" 0.5;
createNode decomposeMatrix -n "LeftLegIKFKCtrlGrpDM";
	rename -uid "E725A5C3-491B-C57D-ED5D-1480487EE08C";
createNode multMatrix -n "LeftLegIKFKCtrlGrpMM";
	rename -uid "BD63E2AC-4B2D-5C1F-FAA6-37A637F5161F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5111961735595476e-14 -0.99999999999999767 8.3266726846886741e-17 0
		 0.9914448613738126 1.4956785809872031e-14 -0.13052619222005207 0 0.13052619222005171 2.1094237467877974e-15 0.99144486137380883 0
		 10.85116858363066 3.2867445744010411 -35.643611477813593 1;
	setAttr ".i[1]" -type "matrix" 1.510944147575799e-14 0.99144486137380783 0.13052619222005099 0
		 -1.0000000000000013 1.4963519654460115e-14 2.1379551995087493e-15 0 -1.3877787807814457e-17 -0.13052619222005152 0.99144486137381127 0
		 3.2867445744008896 -15.410760215311498 33.922313724123718 1;
createNode condition -n "LeftLegIKFKCD";
	rename -uid "8CEA1921-419B-9A8F-5982-31A0C68E7C78";
	setAttr ".ct" -type "float3" 1 1 0 ;
createNode reverse -n "LegIKFKREV";
	rename -uid "12A28CE5-4110-BD45-931B-46913AF26F4D";
createNode decomposeMatrix -n "LeftLegIKPosDM";
	rename -uid "0493CEB3-4E7F-EE2D-7584-7E96DBB325D3";
createNode multMatrix -n "LeftLegIKPosMM";
	rename -uid "F5DF0AF3-46FD-504F-23FC-5A8975A4617E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.4988321382233594e-14 -1.0000000000000022 -1.9683651789667142e-15 0
		 0.99144486137380761 1.5095563687950204e-14 -0.13052619222005382 0 0.13052619222005407 8.3266726846886741e-17 0.99144486137380861 0
		 10.851168583630665 3.2867445744010428 -35.643611477813607 1;
	setAttr ".i[1]" -type "matrix" 0.1305261922200544 0.99144486137380972 -7.1991024253037494e-16 0
		 4.8429757996811674e-18 6.841181066167657e-16 0.99999999999999978 0 0.99144486137380972 -0.1305261922200544 1.3877787807814457e-17 0
		 33.922313724123626 -15.410760215311599 -3.2867445744010229 1;
createNode animCurveUA -n "LeftFootInRotPosRotXAU";
	rename -uid "E6598CB5-4C9D-C088-DB10-54AFD08E20D9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 0;
createNode animCurveUA -n "LeftFootOutRotPosRotXAU";
	rename -uid "B73DD27C-425D-44DF-269F-988CC38B0E0B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 0 0 0 10 -90;
createNode animCurveUA -n "LeftHeelRollPivPosRotZAU";
	rename -uid "9AA704FD-4BCA-5734-C85D-12932FA37CD6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "LeftHeelRollPivPosRotYAU";
	rename -uid "7C84A67C-46D1-AEC3-ADD6-CF86F307ACB9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 0;
createNode animCurveUA -n "LeftToeRollPivPosRotYAU";
	rename -uid "53F5EA58-44EF-AFA1-73CB-FF823827F407";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
createNode animCurveUA -n "LeftToeRollPivPosRotZAU";
	rename -uid "830989C3-4A72-1DD4-8761-3E943BA25E09";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "LeftBallPivPosRotZAU";
	rename -uid "A831D562-42A1-65B1-BB96-DEBC7546E511";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "LeftFootRollPosRotYAU";
	rename -uid "68E05076-4A24-7FA2-3B03-EEBC514CED45";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 0 0 0 10 90;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "4F622828-46DD-8255-EE4B-DBA271F0E256";
createNode animCurveUA -n "LeftBallRollPosRotYAU";
	rename -uid "B33148A5-4585-FB99-937A-C39F91FDC4E3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUU -n "LeftLegPoleVectorCtrlGrp_parentConstraint2_LeftLegPVAutoSpaceAU";
	rename -uid "BA8816A6-4A31-F3B7-E0F5-BD997D0B3F30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 1 0 2 0 3 0 4 0;
createNode decomposeMatrix -n "LeftHeelIKGrpDM";
	rename -uid "79CC8E12-4002-F59E-7FAF-A7A4043B2D2D";
createNode multMatrix -n "LeftHeelIKGrpMM";
	rename -uid "1630F3FD-41E6-BCD4-B8D6-DB9F2DA7F846";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5113696459071516e-14 -1.000000000000002 -1.9984014443252818e-15 0
		 0.99144486137380772 1.5223933225172459e-14 -0.13052619222005379 0 0.13052619222005404 2.7755575615628914e-17 0.99144486137380861 0
		 10.851168583630642 3.286744574401034 -35.643611477813607 1;
	setAttr ".i[1]" -type "matrix" 1.4949846915968124e-14 0.99144486137381271 0.13052619222005388 0
		 -0.99999999999999789 1.5117017426743776e-14 4.8429757996728196e-18 0 -1.8735013540549517e-15 -0.13052619222005457 0.99144486137381149 0
		 3.2867445744008061 -15.410760215311646 33.922313724123732 1;
createNode decomposeMatrix -n "LeftLegUpArcDM";
	rename -uid "344DED2F-4E4F-A8C6-A0F8-3FB2B280E416";
createNode multMatrix -n "LeftLegUpArcMM";
	rename -uid "6425CDC3-4DBC-497F-25AC-569B4FE39ADE";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LeftLegUpArcCM";
	rename -uid "725934FA-4AA2-15BE-547E-44AD521C8708";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.852106754200154 33.133441426335473 -26.402669913110461 1;
createNode pointOnCurveInfo -n "LeftLegUpArcPC";
	rename -uid "AEA11CF8-4C14-66CC-8A92-3295B8E6CB04";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode blendShape -n "LeftLegArcBS";
	rename -uid "8C0112DF-4FBC-9DA3-4D59-9CAFD11D5DEC";
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
	setAttr ".aal" -type "attributeAlias" {"LeftLegArcCrvGrp","weight[0]"} ;
createNode objectSet -n "LeftLegArcBSSet";
	rename -uid "320D5378-43A8-492D-BAE3-EA94DDC26327";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "LeftLegArcBSGroupId";
	rename -uid "280661DC-43F1-632C-F767-1BB8F4054A12";
	setAttr ".ihi" 0;
createNode groupId -n "LeftLegArcBSGroupId1";
	rename -uid "DE71200F-49C2-9F1C-55CE-27B48AB080E2";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLegArcBSGroupParts";
	rename -uid "74D33AC2-4A0F-2EC8-6C13-54848AA069E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "LeftLegUpIKCrvRebuild";
	rename -uid "515EB8A7-4BF7-54FA-141C-629A231BADEC";
	setAttr ".s" 2;
	setAttr ".tol" 0.0039370100000000003;
	setAttr ".end" 1;
	setAttr ".kr" 2;
	setAttr ".kt" no;
createNode groupParts -n "LeftLegArcBSGroupParts1";
	rename -uid "C75F5DC2-4138-2227-6BA7-DBAE0CC80BA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "LeftLegDnIKCrvRebuild";
	rename -uid "00E06F2A-4C6C-DE6F-8E52-59931999D272";
	setAttr ".s" 2;
	setAttr ".tol" 0.0039370100000000003;
	setAttr ".end" 1;
	setAttr ".kr" 2;
	setAttr ".kt" no;
createNode multDoubleLinear -n "LeftLegArcMDL";
	rename -uid "5F7E9A5D-407E-4B4D-9D3F-EBA9417F4CAB";
	setAttr ".i2" 0.1;
createNode cluster -n "LeftLeg1Cs";
	rename -uid "2DB632FB-4168-74E7-F9FF-2CAB3FDC288F";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftLeg1CsSet";
	rename -uid "87B4C9CC-493A-A603-641D-19A4B734179C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg1CsGroupId";
	rename -uid "C95A8D2E-4F3C-D46D-798A-84ADEC15D3C6";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg1CsGroupParts";
	rename -uid "2810F8E4-4EBF-D525-9D5A-BAB3029D368E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode pairBlend -n "LeftLegMidArcCtrlPBGrpPB";
	rename -uid "A226A3A0-48B1-A91E-93F3-A8A9DA42E67E";
	setAttr ".it1" -type "double3" 0.28637113814830062 -4.2188474935755949e-15 -0.98724285831324465 ;
	setAttr ".ir1" -type "double3" 0 -32.351887300100017 0 ;
	setAttr ".ri" 1;
createNode cluster -n "LeftLeg2UpCs";
	rename -uid "D64EBEC4-493A-F40E-DEC8-A5A5D0D3C137";
	setAttr ".wl[0].w[3]"  0.5;
createNode objectSet -n "LeftLeg2UpCsSet";
	rename -uid "D6D329DF-484C-08D3-AE03-51A0E6155671";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg2UpCsGroupId";
	rename -uid "C3B8218F-4578-7579-18F1-FC8FFA6B4B5B";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg2UpCsGroupParts";
	rename -uid "E6E2E8A2-4D5F-72FC-C05A-15988512D908";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[3:4]";
createNode cluster -n "LeftLeg2DnCs";
	rename -uid "8E3FAC34-4A08-8124-A3FC-46AC0D769E43";
	setAttr ".wl[0].w[1]"  0.5;
createNode objectSet -n "LeftLeg2DnCsSet";
	rename -uid "1862FBED-4A17-4718-35A7-FE8521CE995C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg2DnCsGroupId";
	rename -uid "9AEFED92-4F87-25AE-16AA-DDA8E56B44FB";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg2DnCsGroupParts";
	rename -uid "84ED5489-4CC4-5F2E-940C-CF82E798FF3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode decomposeMatrix -n "LeftLegDnArcDM";
	rename -uid "B1512F6D-475B-579C-B7A6-999B211B7B82";
createNode multMatrix -n "LeftLegDnArcMM";
	rename -uid "8F79C4C2-47C4-955D-5E67-2BBBD11CFBE5";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LeftLegDnArcCM";
	rename -uid "59A7CFF3-49E4-2297-2B5B-4B866239A54B";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.849451243198654 20.175789494413355 -32.401154385500803 1;
createNode pointOnCurveInfo -n "LeftLegDnArcPC";
	rename -uid "36BCDF52-4658-CCD3-CC43-3E988DF365E0";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode cluster -n "LeftLeg3Cs";
	rename -uid "7BFC6682-49CC-6661-F394-1C948EFC0CF8";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftLeg3CsSet";
	rename -uid "796D1F56-41BF-7FD2-18F7-CCAB22CB139E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg3CsGroupId";
	rename -uid "D9AEAD93-44DD-7550-089E-08AF6E5CF1F4";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg3CsGroupParts";
	rename -uid "85117D23-4BE3-7B29-FF28-A8B00C294383";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode decomposeMatrix -n "LeftLegSysConstGrpDM";
	rename -uid "A02CF911-4AFD-86E5-1F19-9F8BF1417FC2";
createNode multMatrix -n "LeftLegSysConstGrpMM";
	rename -uid "7AF36E2E-459F-EE51-0D87-81A21BDE1DAF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.4876988529977098e-14 -0.98464706003516511 -0.17455705990909201 0
		 1.0000000000000002 1.5099033134902129e-14 0 0 2.6645352591003765e-15 -0.17455705990909201 0.98464706003516489 0
		 10.851168583630097 41.062054207349625 -24.997094310227162 1;
	setAttr ".i[1]" -type "matrix" 1.4642118733508696e-14 0.99999999999999978 2.2846007653850966e-15 0
		 -0.98464706003516478 1.5154544286133387e-14 -0.17455705990909198 0 -0.17455705990909198 -2.0816681711721685e-17 0.98464706003516511 0
		 36.068211665207663 -10.851168583630718 31.780986878249607 1;
createNode blendTwoAttr -n "LeftLeg1SquashBA";
	rename -uid "340ED48A-45B6-F988-C7EC-25A1922DA827";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multDoubleLinear -n "LeftLegSquashMDL";
	rename -uid "21BE9B93-4120-5248-84E9-C087321DE89A";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftLegSquashPowMD";
	rename -uid "C0211332-4A09-F6E4-3F6A-079B1941A731";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -2 -2 -2 ;
createNode multDoubleLinear -n "LeftLegUpStretchFilterMDL";
	rename -uid "97D1C26B-4C08-8CC3-93DB-06A62102E8A5";
createNode blendTwoAttr -n "LeftLegUpStretchBA";
	rename -uid "C494E17D-4CCA-357D-9F80-CF9CFB48B163";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "LeftLegStretchSR";
	rename -uid "7704CB7C-4F0C-160E-FE16-808ABAEDE9CC";
	setAttr ".m" -type "float3" 1 1 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode condition -n "LeftLegAllLenCD";
	rename -uid "2F522699-45E8-D4C8-70BF-FA9816EDE458";
	setAttr ".op" 2;
createNode multiplyDivide -n "LeftLegAllStretchNormalMD";
	rename -uid "692AB73B-4258-4935-CF8F-888A03DD74D4";
	setAttr ".op" 2;
createNode blendColors -n "LeftLegAllStretchBC";
	rename -uid "4D486591-439D-1E6D-D9FD-208D2FC1E028";
createNode distanceBetween -n "LeftLegStretchAllLen";
	rename -uid "3B93D08A-405A-BB1F-03D7-BEBCBED97663";
createNode addDoubleLinear -n "LeftLegDefAllLenADL";
	rename -uid "E666061E-4B41-B719-0294-22824C3CD02B";
createNode distanceBetween -n "LeftLegUpLen";
	rename -uid "1B789AF7-4A64-0180-94AA-57836D45353E";
createNode distanceBetween -n "LeftLegDnLen";
	rename -uid "95A8D126-42CD-6092-85E5-D78A75AFCCF6";
createNode multiplyDivide -n "LeftLegUpPVStretchNormalMD";
	rename -uid "2668D98D-416C-67A3-DBA4-D58F278A3D22";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpPVStretchLen";
	rename -uid "C2ACAB52-447E-5D2B-4989-039FD9375F25";
createNode addDoubleLinear -n "LeftLegUpSlideFilterADL";
	rename -uid "687879A9-4350-7434-4376-E19B80398C76";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LeftLegUpSlideFilterMDL";
	rename -uid "E0E7C147-497B-C04A-C42C-4A85C12B89DB";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftLegDnStretchFilterMDL";
	rename -uid "48A54E96-4388-B4C3-DB95-D699D1B67BD0";
createNode blendTwoAttr -n "LeftLegDnStretchBA";
	rename -uid "45FAFBAB-4152-37F9-605F-E898F571EF01";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LeftLegDnPVStretchNormalMD";
	rename -uid "F9FE9ABF-47F9-09D4-410F-70A3C7AE85EA";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnPVStretchLen";
	rename -uid "C981E127-4298-25F3-51B6-EFA1DF9D62D1";
createNode addDoubleLinear -n "LeftLegDnSlideFilterADL";
	rename -uid "275F3683-4791-2405-4012-F684165F8119";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LeftLegDnSlideFilterMDL";
	rename -uid "A055E691-4C30-93CC-5E39-2C87148AB804";
	setAttr ".i2" 0.1;
createNode condition -n "LeftLegExAllLenCD";
	rename -uid "A1E86C42-4AB9-7D95-D1BB-94B1822BEE65";
	setAttr ".op" 3;
createNode multiplyDivide -n "LeftLegExAllStretchNormalMD";
	rename -uid "11B9FEB2-4FC2-EC8D-F80C-20A1F0261C96";
	setAttr ".op" 2;
createNode blendColors -n "LeftLegExAllStretchBC";
	rename -uid "56E83D98-426A-5BA9-0BFC-CD86629C1E60";
createNode distanceBetween -n "LeftLegExAllLenADL";
	rename -uid "BF069752-4273-C098-8119-12B9853356DA";
createNode addDoubleLinear -n "LeftLegExDefLenADL";
	rename -uid "F330B087-4464-C524-8A2D-29982B17C503";
createNode distanceBetween -n "LeftLegExLen";
	rename -uid "19A94B2E-48FE-F2CC-35D1-B992AB854105";
createNode pairBlend -n "LeftLeg1DrvJntRotPB";
	rename -uid "FA3A3E85-4858-A799-4A60-54AF9C2A78AF";
	setAttr ".ri" 1;
createNode blendColors -n "LeftLeg1DrvJntTrsBC";
	rename -uid "BCDF1BA4-4A73-1F94-A51D-A28772E597AC";
createNode blendTwoAttr -n "LeftLeg2SquashBA";
	rename -uid "41840AAA-4408-04DB-A34A-07AAC9E2366F";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode blendColors -n "LeftLeg2DrvJntTrsBC";
	rename -uid "05343155-4BAA-B7F0-AF9B-1D98594D77E2";
createNode pairBlend -n "LeftLeg2DrvJntRotPB";
	rename -uid "F6879218-4D96-807B-4400-65AD975F7B9A";
	setAttr ".ri" 1;
createNode blendTwoAttr -n "LeftLeg3SquashBA";
	rename -uid "B9F63257-4ECF-D103-7CEA-28B9C5B134CA";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode blendColors -n "LeftLeg3DrvJntTrsBC";
	rename -uid "A4A96F4E-4069-F42B-1587-49AFEF74F1AE";
createNode pairBlend -n "LeftLeg3DrvJntRotPB";
	rename -uid "9C174691-47A9-6264-3C8C-7F90D5FD81DA";
	setAttr ".ri" 1;
createNode blendColors -n "LeftLeg4DrvJntTrsBC";
	rename -uid "2D8B2D87-42F9-90D8-CD7F-5184DF003645";
createNode unitConversion -n "unitConversion10";
	rename -uid "303A3181-4D8C-BBFD-8037-CEBD916CB4CA";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftLeg1FKJntDM";
	rename -uid "E818DA0C-47D6-A0FB-7E47-ACB8031DEA24";
createNode multMatrix -n "LeftLeg1FKJntMM";
	rename -uid "59B13901-4A0A-47AF-7B69-6297B1113A6B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.4876988529977094e-14 -0.98464706003516489 -0.17455705990909198 0
		 1 1.5099033134902126e-14 0 0 2.6645352591003761e-15 -0.17455705990909198 0.98464706003516478 0
		 10.851168583630098 41.062054207349625 -24.997094310227158 1;
	setAttr ".i[1]" -type "matrix" 1.4064052838602829e-14 1 2.2808221080380188e-15 0
		 -0.98464706003516478 1.5099033134902129e-14 -0.17455705990909198 0 -0.17455705990909201 -2.0816681711721685e-17 0.98464706003516511 0
		 36.06821166520767 -10.851168583630717 31.78098687824961 1;
createNode quatToEuler -n "LeftLeg1FKJntQE";
	rename -uid "DAAF8C9F-437E-CB6D-A709-26B70DE4B37E";
createNode quatProd -n "LeftLeg1FKJntQP";
	rename -uid "FE93DD85-4402-BB32-0A19-37A85B32C8C9";
createNode quatInvert -n "LeftLeg1FKJntQI";
	rename -uid "E46559E6-46DF-288C-BF75-8E98DAFBB7A9";
createNode eulerToQuat -n "LeftLeg1FKJntEQ";
	rename -uid "F9951779-401D-B0B5-C8C3-BEAB1A5A37FC";
createNode decomposeMatrix -n "LeftLeg2FKJntDM";
	rename -uid "9BB66C58-42C3-EC56-2B25-E290BAC98170";
createNode multMatrix -n "LeftLeg2FKJntMM";
	rename -uid "B086E57F-4161-7F1D-92AB-9CB0A237B979";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.1141906572098239e-14 -0.73839920008214821 -0.67436386418464389 0
		 0.99999999999999944 1.5099033134902116e-14 0 0 1.0211878074413802e-14 -0.67436386418464345 0.73839920008214766 0
		 10.851168583630338 25.20482778788698 -27.808244553245402 1;
	setAttr ".i[1]" -type "matrix" 1.1293658140479608e-14 1.0000000000000002 1.0456389073571478e-14 0
		 -0.73839920008214732 1.5182299861749016e-14 -0.67436386418464367 0 -0.67436386418464345 0 0.73839920008214777 0
		 -0.14165057633424247 -10.851168583630718 37.530810596952968 1;
createNode quatToEuler -n "LeftLeg2FKJntQE";
	rename -uid "71BBC68C-4DCF-0B32-5D23-CDB6E8D0C7B0";
createNode quatProd -n "LeftLeg2FKJntQP";
	rename -uid "4D8C3AFF-48AD-3266-6344-038E254E124A";
createNode quatInvert -n "LeftLeg2FKJntQI";
	rename -uid "8660BA45-4FAA-8C86-6BFA-4583CCF7EB3B";
createNode eulerToQuat -n "LeftLeg2FKJntEQ";
	rename -uid "16A0B88A-4897-B6A8-F1D9-1BB94268FB32";
createNode decomposeMatrix -n "LeftLeg3FKJntDM";
	rename -uid "E5105C3A-47BA-158C-08FA-308889FBEA80";
createNode multMatrix -n "LeftLeg3FKJntMM";
	rename -uid "3D19F40B-4B21-74D0-FFBD-3FAF77EA358F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5019686128809764e-14 -0.99357960150981772 0.11313520877070105 0
		 0.99999999999999944 1.5099033134902116e-14 0 0 -1.6833194765398281e-15 0.11313520877070099 0.99357960150981761 0
		 10.851168583630487 15.146751190479648 -36.99406626018925 1;
	setAttr ".i[1]" -type "matrix" 1.5049364030826328e-14 1.0000000000000018 -1.6078426265070016e-15 0
		 -0.99357960150981828 1.5182299861749016e-14 0.11313520877070081 0 0.11313520877070143 0 0.99357960150981961 0
		 19.234834421628626 -10.85116858363074 35.04291875489394 1;
createNode quatToEuler -n "LeftLeg3FKJntQE";
	rename -uid "3AD99195-4632-8EE8-C81C-328FDA32E25D";
	setAttr ".ort" -type "double3" 0 -3.8166656177562201e-14 0 ;
createNode quatProd -n "LeftLeg3FKJntQP";
	rename -uid "45A5CA92-4879-0E17-D135-8993D205E1EF";
createNode quatInvert -n "LeftLeg3FKJntQI";
	rename -uid "278C3DFA-42F7-5B19-FECC-B98AE6FA62D0";
createNode eulerToQuat -n "LeftLeg3FKJntEQ";
	rename -uid "A0E04499-4407-FCE6-5F89-1CA67F182000";
createNode decomposeMatrix -n "LeftLeg4FKJntDM";
	rename -uid "227AAFFB-406D-FCCE-B590-10A85E2A879D";
createNode multMatrix -n "LeftLeg4FKJntMM";
	rename -uid "A03A6082-4016-24E3-2ECD-54A957B88CF7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5113696459071468e-14 -0.99999999999999878 1.8041124150158794e-16 0
		 0.99144486137381316 1.4963724703775938e-14 -0.13052619222005221 0 0.13052619222005188 2.0261570199409107e-15 0.99144486137380949 0
		 10.851168583630658 3.2867445744010535 -35.643611477813593 1;
	setAttr ".i[1]" -type "matrix" 1.50712775592865e-14 0.99144486137380872 0.13052619222005205 0
		 -1.000000000000002 1.4981633802450049e-14 2.0003645854158169e-15 0 3.1918911957973251e-16 -0.13052619222005146 0.99144486137381227 0
		 3.2867445744008994 -15.410760215311505 33.922313724123747 1;
createNode quatToEuler -n "LeftLeg4FKJntQE";
	rename -uid "2C653907-43DC-83B2-7669-2D846D1D1546";
	setAttr ".ort" -type "double3" 1.5933833511628759e-15 2.5332621076187933e-14 3.3296431821571193e-15 ;
createNode quatProd -n "LeftLeg4FKJntQP";
	rename -uid "8EEB22A8-4B11-D576-8A6F-7E87A8205D43";
createNode quatInvert -n "LeftLeg4FKJntQI";
	rename -uid "102A1A66-46A3-B479-AB77-CDA790E90CE3";
createNode eulerToQuat -n "LeftLeg4FKJntEQ";
	rename -uid "4013DB6F-4C45-7430-AC1F-8DB817B11056";
createNode multDoubleLinear -n "LeftLegUpStretchOutputMDL";
	rename -uid "88B06041-4998-E2EA-15D8-D598BB8B4EBD";
	setAttr ".i2" 16.10447749561984;
createNode multDoubleLinear -n "LeftLegDnStretchOutputMDL";
	rename -uid "33626BE0-4856-D60A-CDC0-4FA748A7E472";
	setAttr ".i2" 13.62146193589637;
createNode animCurveUL -n "LeftLegBase3IKJntTransXAU";
	rename -uid "EB892D38-4D28-1859-3A85-6597E678253A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  39.246940612792969 12.624053025585487 42.201225280761719 
		14.682357971673049;
createNode distanceBetween -n "LeftLegSubDB";
	rename -uid "5E3EEFF3-46AC-4B21-D9EA-21AA87BFB790";
createNode pairBlend -n "LeftHeelIKPointPB";
	rename -uid "22F83C73-4C03-DE2E-500A-D5AF5145843D";
	setAttr ".it1" -type "double3" 7.1054273576010019e-15 -1.5987211554602254e-14 -2.8421709430404007e-14 ;
	setAttr ".ri" 1;
createNode multDoubleLinear -n "LeftLegHeelPosMDL";
	rename -uid "05F8CECA-4925-A888-B166-3297F1A555E7";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftLegUp2Ar1UnitLenMDL";
	rename -uid "6D26AFA8-4E85-E0E2-AE90-559756852B85";
	setAttr ".i2" 5.368159165199998;
createNode multiplyDivide -n "LeftLegUp2Ar1NormalMD";
	rename -uid "DAE569B7-4CF5-E51B-2FF1-47BB126BD025";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpIK1DB";
	rename -uid "A4614ACD-4D19-7EF1-C4FF-5BB19FD510E5";
createNode pointOnCurveInfo -n "LeftLegUpIK1PC";
	rename -uid "6326C549-4941-8CC5-1806-85A4F6B61E7B";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftLegUpIK2PC";
	rename -uid "02C3DC75-4938-9F7D-EF9E-6D8C69096D61";
	setAttr ".pr" 0.33333333333333331;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegUpIKChk1DB";
	rename -uid "3887F365-46F9-D129-C023-94B21B2C1AA6";
createNode pointOnCurveInfo -n "LeftLegUpIKChk1PC";
	rename -uid "DD00CE42-4B8E-4213-1694-33A8D61FB841";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftLegUpIKChk2PC";
	rename -uid "6E135E30-433C-B18F-650A-FABF7BCD843D";
	setAttr ".pr" 0.33333333333333331;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegUp3Ar2UnitLenMDL";
	rename -uid "67306CA9-46DA-AE9D-AC61-5EB28F6FE7A0";
	setAttr ".i2" 5.3681591651999909;
createNode multiplyDivide -n "LeftLegUp3Ar2NormalMD";
	rename -uid "E92E354B-4084-2EF5-1DA5-3CB90F639F17";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpIK2DB";
	rename -uid "002B6AB7-4B2D-69C6-37F6-A291023688F9";
createNode pointOnCurveInfo -n "LeftLegUpIK3PC";
	rename -uid "F4EC8394-4D45-50DA-081A-64B30FF81BD5";
	setAttr ".pr" 0.66666666666666663;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegUpIKChk2DB";
	rename -uid "88F250A0-4776-43D1-E26B-34BF91685316";
createNode pointOnCurveInfo -n "LeftLegUpIKChk3PC";
	rename -uid "5560D87B-40F8-1E86-42B3-C7B965449103";
	setAttr ".pr" 0.66666666666666663;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegUp4Ar3UnitLenMDL";
	rename -uid "8A985250-470C-A73B-5D04-4883178585FF";
	setAttr ".i2" 5.3681591651999945;
createNode multiplyDivide -n "LeftLegUp4Ar3NormalMD";
	rename -uid "0B164408-4F8C-7869-74E7-93A092D83333";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegUpIK3DB";
	rename -uid "0DEBF6EE-41B6-FE9C-A2E7-0D87C577DA15";
createNode pointOnCurveInfo -n "LeftLegUpIK4PC";
	rename -uid "CD00E374-49A7-DB0F-B87A-5387ADD12AF5";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegUpIKChk3DB";
	rename -uid "CBDA9D79-4DB4-02DC-B848-72B8693C9934";
createNode pointOnCurveInfo -n "LeftLegUpIKChk4PC";
	rename -uid "9BA15A51-4D5D-864D-31F7-B293E9E9734A";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegDn2Ar1UnitLenMDL";
	rename -uid "FB199B31-416C-39CC-AE5F-9082B20833F5";
	setAttr ".i2" 4.5404873119666807;
createNode multiplyDivide -n "LeftLegDn2Ar1NormalMD";
	rename -uid "CBCE5759-424A-7E37-0155-89A971455EC2";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnIK1DB";
	rename -uid "F0A6EFB0-46A0-2EB6-E45A-4A9C3C8008B2";
createNode pointOnCurveInfo -n "LeftLegDnIK1PC";
	rename -uid "633534FA-4AC1-642E-EC84-7AA10A9C0966";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftLegDnIK2PC";
	rename -uid "B460BB38-4F92-761A-6AB5-439F9BF435CD";
	setAttr ".pr" 0.33333333333333331;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegDnIKChk1DB";
	rename -uid "D5997438-4532-387C-F89A-27B1D64AD19F";
createNode pointOnCurveInfo -n "LeftLegDnIKChk1PC";
	rename -uid "4393E6C5-4A5C-946F-300E-74ABC17267EB";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftLegDnIKChk2PC";
	rename -uid "DAE1EC85-4F17-E39B-D854-169CFFF8D681";
	setAttr ".pr" 0.33333333333333331;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegDn3Ar2UnitLenMDL";
	rename -uid "9A2B2BDC-4B62-86B7-5D3B-26B82B8FE103";
	setAttr ".i2" 4.5404873119666451;
createNode multiplyDivide -n "LeftLegDn3Ar2NormalMD";
	rename -uid "439609C8-4252-44A1-F577-BDAF14E4F452";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnIK2DB";
	rename -uid "1609068A-4A94-8C71-9D6F-2AAD19DCD897";
createNode pointOnCurveInfo -n "LeftLegDnIK3PC";
	rename -uid "8DEA5C4C-42BA-8792-92E6-BCABD0B13A36";
	setAttr ".pr" 0.66666666666666663;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegDnIKChk2DB";
	rename -uid "62BC9571-4BD1-9DAB-AC7B-7F9C9123FB3D";
createNode pointOnCurveInfo -n "LeftLegDnIKChk3PC";
	rename -uid "A4DCD5C3-4022-0B30-F029-D18B284D04D8";
	setAttr ".pr" 0.66666666666666663;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegDn4Ar3UnitLenMDL";
	rename -uid "A7919BAD-4523-0389-587F-338B044491E5";
	setAttr ".i2" 4.5404873119666682;
createNode multiplyDivide -n "LeftLegDn4Ar3NormalMD";
	rename -uid "55E467CA-4A95-1163-BE9C-188946FF088A";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegDnIK3DB";
	rename -uid "4C121A46-4212-FA52-097D-E4973DE2C9D8";
createNode pointOnCurveInfo -n "LeftLegDnIK4PC";
	rename -uid "3ECCF9B2-4C75-D081-8185-DB8E8C1FE760";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegDnIKChk3DB";
	rename -uid "955B8DB5-48A3-9D53-AD37-2ABC9C86167D";
createNode pointOnCurveInfo -n "LeftLegDnIKChk4PC";
	rename -uid "D1C7B025-44DB-AC6B-A001-9CADCDC36D5E";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegEx2Ar1UnitLenMDL";
	rename -uid "5266D916-4B92-F2CB-B722-F08CFE84263E";
	setAttr ".i2" 3.9788815437333227;
createNode multiplyDivide -n "LeftLegEx2Ar1NormalMD";
	rename -uid "6724A93E-4DA2-78D3-3CF6-9180D4E58ACA";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegExIK1DB";
	rename -uid "5B353BBC-490D-7B31-1146-35BA58140B8D";
createNode pointOnCurveInfo -n "LeftLegExIK1PC";
	rename -uid "6FF18296-4E8C-FFF0-E081-C2A326D0E709";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftLegExIK2PC";
	rename -uid "D7D85403-45D2-1F36-D75C-CDBC1BFE33C4";
	setAttr ".pr" 0.33333333333333331;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegExIKChk1DB";
	rename -uid "46A7F055-43B8-0F7B-31B4-D89DE39B6307";
createNode pointOnCurveInfo -n "LeftLegExIKChk1PC";
	rename -uid "42AF148A-4669-F998-4541-1B8C84B7DE5D";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftLegExIKChk2PC";
	rename -uid "13392232-4B44-2E24-3FB9-56BDFC216664";
	setAttr ".pr" 0.33333333333333331;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegEx3Ar2UnitLenMDL";
	rename -uid "AF10F70D-48AD-42B0-2B84-9192A0CCD5DD";
	setAttr ".i2" 3.9788815437333369;
createNode multiplyDivide -n "LeftLegEx3Ar2NormalMD";
	rename -uid "05FA5B07-41A9-4D0E-CAD7-9D9F7E2C7ADC";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegExIK2DB";
	rename -uid "04079CBE-40EE-6AC0-5106-8E883B60C629";
createNode pointOnCurveInfo -n "LeftLegExIK3PC";
	rename -uid "F5C550C8-4513-068B-64B9-B1AD13A338B3";
	setAttr ".pr" 0.66666666666666663;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegExIKChk2DB";
	rename -uid "5C7E02C3-4498-B39E-AF24-17AB87D37DF5";
createNode pointOnCurveInfo -n "LeftLegExIKChk3PC";
	rename -uid "DFFCED2E-4AEE-74DA-0789-4986E7E56C96";
	setAttr ".pr" 0.66666666666666663;
	setAttr ".top" yes;
createNode multDoubleLinear -n "LeftLegEx4Ar3UnitLenMDL";
	rename -uid "9B89CE15-47C9-02CD-2D1F-48B8101535E7";
	setAttr ".i2" 3.9788815437333263;
createNode multiplyDivide -n "LeftLegEx4Ar3NormalMD";
	rename -uid "B2974E09-4CB4-1CCB-4E43-16AA8F6F22FF";
	setAttr ".op" 2;
createNode distanceBetween -n "LeftLegExIK3DB";
	rename -uid "C698DD21-4DA5-2262-F0CB-78AD1718A2AE";
createNode pointOnCurveInfo -n "LeftLegExIK4PC";
	rename -uid "9EF52A61-4C6C-2AB0-048F-4B90A6FAA02B";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode distanceBetween -n "LeftLegExIKChk3DB";
	rename -uid "8AC85F9B-437F-BB1E-9790-0D9A0DBBA418";
createNode pointOnCurveInfo -n "LeftLegExIKChk4PC";
	rename -uid "62CF2707-4085-96A5-9D52-F89D56A6A0D6";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LeftLeg1TwistFixGrpDM";
	rename -uid "15B1A4BC-4199-41DD-01CC-E18D5DA1F516";
createNode multMatrix -n "LeftLeg1TwistFixGrpMM";
	rename -uid "038921CD-4E4A-19B6-C9F1-4DB9B15FA9CC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.4876988529977098e-14 -0.98464706003516511 -0.17455705990909201 0
		 1.0000000000000002 1.5099033134902129e-14 0 0 2.6645352591003769e-15 -0.17455705990909201 0.984647060035165 0
		 10.851168583630098 41.062054207349625 -24.997094310227158 1;
	setAttr ".i[1]" -type "matrix" 1.5065146814797016e-14 0.99999999999999989 3.162921692476588e-15 0
		 -0.98464706003516511 1.5154544286133387e-14 -0.1745570599090922 0 -0.17455705990909204 -2.0816681711721685e-17 0.98464706003516511 0
		 36.068211665207684 -10.85116858363072 31.780986878249614 1;
createNode unitConversion -n "unitConversion9";
	rename -uid "4FB00498-408A-067A-7612-FF80834599D5";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "LeftLeg1TwistFixUpvecRotZAU";
	rename -uid "BDD962EE-44FC-C3AA-7334-C495F0123A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LeftLegtwistFixVP";
	rename -uid "AF1767D2-4E0F-1AF7-5C11-A9BE3E16A01C";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "913437F7-4F2C-8BD8-9531-12A2431F7F0C";
createNode decomposeMatrix -n "LeftLegRevIKhDM";
	rename -uid "6BBDB698-4F9C-A641-C21A-E5B69D5AF815";
createNode multMatrix -n "LeftLegRevIKhMM";
	rename -uid "D5771E69-430C-6E9E-DEAA-1EBE59830563";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.85116858363066 3.2867445744010428 -35.643611477813593 1;
	setAttr ".i[1]" -type "matrix" 1.5107706752282013e-14 0.99144486137380639 0.13052619222005135 -4.3368086899420177e-19
		 -1.0000000000000042 1.4821552423046314e-14 3.1830777994903718e-15 -1.2325951644078309e-32
		 1.1379786002407855e-15 -0.13052619222005113 0.99144486137381049 -3.4694469519536142e-18
		 3.2867445744009354 -15.410760215311473 33.92231372412369 0.99999999999999989;
createNode decomposeMatrix -n "LeftLegBaseIKhDM";
	rename -uid "43037297-48F8-3BC5-B77D-80A07ECD8B30";
createNode multMatrix -n "LeftLegBaseIKhMM";
	rename -uid "FADADD07-4E48-336F-66AA-D0B12BA78FC3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.851168583630663 3.2867445744010446 -35.643611477813593 1;
	setAttr ".i[1]" -type "matrix" 1.5211790160840621e-14 0.99144486137381271 0.13052619222005163 -4.3368086899420177e-19
		 -0.99999999999999778 1.5337162409292476e-14 3.3825612583548006e-17 -1.9259299443872359e-34
		 -1.8735013540549517e-15 -0.13052619222005191 0.99144486137381183 -3.4694469519536142e-18
		 3.2867445744008035 -15.410760215311564 33.922313724123761 0.99999999999999989;
createNode decomposeMatrix -n "LeftLegPVSysGrpDM";
	rename -uid "4F03422E-49E6-3A8F-B5A9-33840A30003E";
createNode multMatrix -n "LeftLegPVSysGrpMM";
	rename -uid "BF5C83D2-4595-255F-297B-36B430F13CE8";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1.4876988529977098e-14 -0.98464706003516511 -0.17455705990909196 0
		 1.0000000000000004 1.5099033134902132e-14 1.3877787807814463e-17 0 2.6645352591003761e-15 -0.17455705990909193 0.98464706003516478 0
		 10.851168583630098 41.062054207349618 -24.997094310227158 1;
	setAttr ".i[1]" -type "matrix" 1.511618682771183e-14 0.99999999999999989 -8.5267871300079707e-14 -4.9303806576313238e-32
		 -0.98464706003516489 -5.5511151231257827e-17 -0.17455705990909165 3.4694469519536142e-18
		 -0.17455705990909176 8.647249583049188e-14 0.98464706003516522 8.6736173798840355e-19
		 36.06821166520767 -10.851168583627935 31.780986878250548 0.99999999999999989;
createNode unitConversion -n "unitConversion14";
	rename -uid "2B900F62-476B-D555-08B3-4C8ECA7DB095";
	setAttr ".cf" 0.017453292519943295;
createNode multDoubleLinear -n "LeftLegTwistMDL";
	rename -uid "5536DCD1-476D-FFD6-E5E4-3A8D8582B596";
	setAttr ".i2" -1;
createNode animCurveUA -n "LeftLegPVUpvecRotZAU";
	rename -uid "E2DE6255-420D-98AE-FE87-1D9EC9609485";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LeftLegPVVP";
	rename -uid "E829E500-43E6-B8C8-61F4-7BB9C6159B47";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode decomposeMatrix -n "LeftLegPVTargetPosDM";
	rename -uid "88075726-4068-818A-FE6C-E88148E3D91A";
createNode multMatrix -n "LeftLegPVTargetPosMM";
	rename -uid "42A5B40D-4299-6BF4-E9F2-E79D0EE8B310";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5113696459071446e-14 -0.99999999999999734 0 0 1.0000000000000022 1.5099033134902161e-14 0 0
		 2.6743431139134366e-17 8.3266726846886741e-17 0.99999999999999845 0 10.85116858363066 3.2867445744010624 -35.643611477813593 1;
	setAttr ".i[1]" -type "matrix" 1.5211790160840621e-14 0.99144486137381271 0.13052619222005163 -4.3368086899420177e-19
		 -0.99999999999999778 1.5337162409292476e-14 3.3825612583548006e-17 -1.9259299443872359e-34
		 -1.8735013540549517e-15 -0.13052619222005191 0.99144486137381183 -3.4694469519536142e-18
		 3.2867445744008035 -15.410760215311564 33.922313724123761 0.99999999999999989;
createNode decomposeMatrix -n "LeftLegRevPVPosGrpDM";
	rename -uid "5E7A7E8A-47F0-5DC4-5EBA-EFAE37BC06F8";
createNode multMatrix -n "LeftLegRevPVPosGrpMM";
	rename -uid "7E715F2F-48D6-79CD-19B7-F2A53FBD9D67";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.1141906572098234e-14 -0.73839920008214788 -0.67436386418464334 0
		 0.99999999999999978 1.5099033134902123e-14 0 0 1.0211878074413802e-14 -0.67436386418464356 0.73839920008214754 0
		 10.851168583630336 25.204827787886977 -27.808244553245402 1;
	setAttr ".i[1]" -type "matrix" 1.0996146221523636e-14 1.0000000000000007 1.0263459565170092e-14 0
		 -0.73839920008214699 1.5154544286133387e-14 -0.67436386418464345 0 -0.67436386418464311 0 0.73839920008214743 0
		 -0.14165057633423403 -10.851168583630727 37.530810596952968 1;
createNode decomposeMatrix -n "LeftLegIKhDM";
	rename -uid "84A161AA-4279-A68D-5935-D28C97120287";
createNode multMatrix -n "LeftLegIKhMM";
	rename -uid "AA50E8C3-463D-BEC4-7C5D-8283F53EF58F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.3870986712748249e-16 -2.6025983818315244e-15 0
		 -3.4773023155690435e-16 0.99999999999999989 5.5511151231257827e-17 0 2.6357675390082546e-15 -5.5511151231257827e-17 0.99999999999999978 0
		 10.851168583630491 15.146751190479634 -36.994066260189243 1;
	setAttr ".i[1]" -type "matrix" 1.000000000000002 -5.9984234998861986e-16 -3.0599734868984376e-16 0
		 4.2327252813834093e-16 0.99357960150981683 0.11313520877069849 0 1.6653345369377348e-16 -0.11313520877069938 0.99357960150982005 0
		 -10.851168583630489 -19.234834421628726 35.042918754893975 1;
createNode rebuildCurve -n "LeftLegUpArcCrvRebuild";
	rename -uid "F3CEC649-407B-5DE9-DE47-C7B82C559899";
	setAttr ".s" 2;
	setAttr ".tol" 0.0039370100000000003;
	setAttr ".end" 1;
	setAttr ".kr" 2;
	setAttr ".kt" no;
createNode detachCurve -n "LeftLegArcDetach";
	rename -uid "013C7A61-4AF1-DED9-EF60-D1A3089E2090";
	setAttr -s 2 ".oc";
	setAttr -s 2 ".k[0:1]" yes yes;
createNode makeThreePointCircularArc -n "LeftLegTPC";
	rename -uid "E74F1300-4725-52EC-013A-0F8B1E9F948B";
createNode setRange -n "LeftLegArcAngleSR";
	rename -uid "41804B3A-4F13-B14B-D3E7-FA9F63F13612";
createNode unitConversion -n "unitConversion8";
	rename -uid "48B34D16-4311-1CCB-E75F-8E8CF49AAF5F";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LeftLegArcOutAB";
	rename -uid "36DE4BE0-4C3C-D81D-4999-25B23CB5F6B9";
createNode plusMinusAverage -n "LeftLegArc3PM2P";
	rename -uid "C55077C8-4E06-BE7D-84D2-CBA3665B6504";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LeftLegArc3PM1P";
	rename -uid "5C3892D4-40EF-5B2B-229B-E093A4D47AD1";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode addDoubleLinear -n "LeftLegArcAngleADL";
	rename -uid "55000B2F-43C2-E74C-E940-DFBBEFEB1916";
createNode unitConversion -n "unitConversion6";
	rename -uid "D2B89C2C-4419-086D-0791-B3B450538923";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LeftLegArcInAB";
	rename -uid "C1F14CB4-424B-CBAA-071F-5CB504F7B791";
createNode plusMinusAverage -n "LeftLegArc2PM1P";
	rename -uid "EF62E3B9-4122-4A86-6893-75A34DCC3E8F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion7";
	rename -uid "C13BD1F6-46FF-1098-55C7-F1B76540C1A9";
	setAttr ".cf" 57.295779513082323;
createNode rebuildCurve -n "LeftLegDnArcCrvRebuild";
	rename -uid "4E24F995-4E67-2C40-A90E-85956543E5FF";
	setAttr ".s" 2;
	setAttr ".tol" 0.0039370100000000003;
	setAttr ".end" 1;
	setAttr ".kr" 2;
	setAttr ".kt" no;
createNode rebuildCurve -n "rebuildCurve2";
	rename -uid "10286D01-40A7-EE5F-9C5A-6BA7D31A0774";
	setAttr ".s" 2;
	setAttr ".tol" 0.0039370100000000003;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode distanceBetween -n "LeftLegArcDnDB";
	rename -uid "F0D3588F-4298-92AD-6033-93839C94DE38";
createNode multDoubleLinear -n "LeftLegArcPointMDL";
	rename -uid "FF5AD1B7-43A8-3647-36BF-90A908BB5F79";
	setAttr ".i2" 3;
createNode addDoubleLinear -n "LeftLegArcPointADL";
	rename -uid "53A6B956-43E3-8175-CB47-6F8D6EF60C54";
createNode distanceBetween -n "LeftLegArcUpDB";
	rename -uid "2D147387-4D11-79D0-F8E0-C3BDAF65166F";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "01B6C901-43AB-6FD1-9403-758141E2A1A8";
createNode decomposeMatrix -n "LeftAnkleConsGrpDM";
	rename -uid "9F791771-4F87-7FE5-5EEF-CF8D725CEAC7";
createNode multMatrix -n "LeftAnkleConsGrpMM";
	rename -uid "227F2EFF-4BE1-8522-C953-3F9C0FEADCB2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5099033134902094e-14 -0.99999999999999778 4.9303806576313128e-32 0
		 0.99144486137381227 1.4988010832439642e-14 -0.13052619222005216 0 0.13052619222005171 1.9706458687096497e-15 0.99144486137380883 0
		 10.85116858363064 3.286745259142986 -35.643611341985462 1;
	setAttr ".i[1]" -type "matrix" 1.5182299861749016e-14 0.99144486137380783 0.1305261922200513 -4.3368086899420177e-19
		 -1.0000000000000013 1.4963519654460115e-14 2.1379551995087446e-15 -1.2325951644078309e-32
		 1.3877787807814457e-17 -0.13052619222005157 0.99144486137381138 -3.4694469519536142e-18
		 3.2867452591428261 -15.41076019758235 33.922313589457623 0.99999999999999989;
createNode blendColors -n "LeftAnkleFKScaleBC";
	rename -uid "FDA5B33E-4384-7C0A-3B76-5AAB79B25CDE";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "LeftAnkleIKScaleBC";
	rename -uid "CB81D26B-43BF-09AA-AE71-39904BDCF985";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode decomposeMatrix -n "LeftToeSwitchGrpDM";
	rename -uid "4E2D1FF0-496D-4F5E-68E2-BA921ACB0B23";
createNode multMatrix -n "LeftToeSwitchGrpMM";
	rename -uid "094FE12B-4614-A4F7-44D6-7B95A3398648";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.23817872368620116 -0.31517506718483618 0.91865966092359164 0
		 0.96799492699057821 -3.1296043371542594e-15 -0.25096976176524488 0 0.07909941152572611 0.94903354894599734 0.30508786614883521 0
		 10.851168583630662 3.2867452591429882 -35.643611341985491 1;
	setAttr ".i[1]" -type "matrix" 0.23817872368619983 0.96799492699058243 0.079099411525725333 0
		 -0.31517506718483507 -2.248201624865942e-15 0.94903354894599612 0 0.91865966092358886 -0.25096976176524577 0.3050878661488351 0
		 31.195730583637456 -19.449344787825162 6.896880759067245 1;
createNode unitConversion -n "unitConversion40";
	rename -uid "5A1BF694-45F0-6046-360A-0C8B7A95F4B7";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion48";
	rename -uid "E7FF9DC0-4AB7-2AA2-8D6E-DE8BF8C3F267";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion52";
	rename -uid "315C72B9-4FFA-56CC-08AD-72B1332B066E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion41";
	rename -uid "5D06F86A-411A-BE1D-57CF-87A6B144C35A";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftSecondToeIKCtrlConsGrpDM";
	rename -uid "B626904F-4681-3B65-5A7B-E4A31407121D";
createNode multMatrix -n "LeftSecondToeIKCtrlConsGrpMM";
	rename -uid "B9796487-45ED-31C8-7190-0BB58ADE3503";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.048515619331608084 -0.099980912920007103 0.99380584207004563 0
		 0.99881052664171066 3.1687463764029644e-08 0.048759941239788274 0 -0.0048750949302666102 0.9949893552454121 0.099861986750414355 0
		 8.5118688551219108 1.3409264439340589 -26.807350668284339 1;
	setAttr ".i[2]" -type "matrix" -0.04851561933160841 0.99881052664171044 -0.0048750949302665703 2.1684043449710089e-19
		 -0.099980912920007131 3.1687463653007342e-08 0.9949893552454121 4.3368086899420177e-19
		 0.99380584207004519 0.048759941239788329 0.099861986750414411 -3.4694469519536142e-18
		 35.112682300726043 -7.1946194130001011 1.3843239280711492 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode decomposeMatrix -n "LeftSecondToeIKCnnDM";
	rename -uid "734BEB2F-4809-73B9-32EC-2A9F66899D01";
createNode multMatrix -n "LeftSecondToeIKCnnMM";
	rename -uid "E5B3A765-4175-4800-820C-B496F17DC8A7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.048515619331607467 -0.099980912920007062 0.99380584207004552 0
		 0.99881052664171044 3.1687463611555548e-08 0.048759941239788308 0 -0.0048750949302667438 0.99498935524541177 0.099861986750413786 0
		 8.5118688551219321 1.3409264439340547 -26.807350668284379 1;
	setAttr ".i[1]" -type "matrix" 0.25089787602066116 0.96799492699058132 0.0060064239631084856 0
		 -0.023932859165417354 -2.2690183065776637e-15 0.99971356810446776 0 0.96771766236877532 -0.25096976176524549 0.02316688626050388 0
		 27.291105228935233 -19.449344787825133 -1.1317168441709353 1;
createNode unitConversion -n "unitConversion42";
	rename -uid "8C537CCE-40B4-EDDA-E87C-4AA017EC53FE";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion49";
	rename -uid "77739295-41FF-C390-B35A-98A071633452";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion53";
	rename -uid "8FB45927-41C8-8385-9267-E49C9CBD5DB4";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion43";
	rename -uid "98411088-4674-030D-3B4C-9E871A095EF8";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftThirdToeIKCtrlConsGrpDM";
	rename -uid "A5CDDC87-412E-23DB-9EA5-848C3C1068B7";
createNode multMatrix -n "LeftThirdToeIKCtrlConsGrpMM";
	rename -uid "9EF79B46-486E-9926-D462-D5AA9AA8DEBD";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.082527151551414643 -0.096100434533978291 0.9919445426732233 0
		 0.99655696493346713 3.1615902007509065e-08 -0.08291088977085434 0 0.0079677411733564112 0.99537164239412568 0.095769559977139068 0
		 11.39796653391315 1.299194459315778 -25.995280215852922 1;
	setAttr ".i[2]" -type "matrix" 0.082527151551414352 0.99655696493346779 0.0079677411733563765 -4.3368086899420177e-19
		 -0.096100434533978249 3.1615902007509078e-08 0.9953716423941259 4.3368086899420177e-19
		 0.9919445426732233 -0.082910889770854312 0.095769559977139151 -3.4694469519536142e-18
		 32.991952409959964 -13.514014789063978 1.1055591777513711 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode decomposeMatrix -n "LeftThirdToeIKCnnDM";
	rename -uid "AA37E924-4D4B-E3A9-CA45-2EBC1003F1D9";
createNode multMatrix -n "LeftThirdToeIKCnnMM";
	rename -uid "5D5013CE-4543-1720-078C-5CA88DE9DB34";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.082527151551415129 -0.096100434533978304 0.99194454267322352 0
		 0.99655696493346702 3.161590096720057e-08 -0.08291088977085434 0 0.0079677411733571589 0.99537164239412523 0.095769559977138499 0
		 11.397966533913175 1.2991944593157432 -25.995280215852951 1;
	setAttr ".i[1]" -type "matrix" 0.25089787602066116 0.96799492699058132 0.0060064239631084856 0
		 -0.023932859165417354 -2.2690183065776637e-15 0.99971356810446776 0 0.96771766236877532 -0.25096976176524549 0.02316688626050388 0
		 27.291105228935233 -19.449344787825133 -1.1317168441709353 1;
createNode unitConversion -n "unitConversion44";
	rename -uid "63C17A9A-437F-DFA3-52AD-49A8BA761D6E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion50";
	rename -uid "6326830D-4425-947C-6A6C-568CC174CDE8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion54";
	rename -uid "20226C80-44F3-20CA-575A-75A31592CEFD";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion45";
	rename -uid "419D788F-4F9D-1442-3D31-3AA562894F19";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftFourthToeIKCtrlConsGrpDM";
	rename -uid "2E3C1450-44C6-2C89-5501-A098FD4F505E";
createNode multMatrix -n "LeftFourthToeIKCtrlConsGrpMM";
	rename -uid "23D7E300-492E-39E5-D979-169DB19F6476";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.1690056074761786 -0.11191514742519042 0.97924057535337405 0
		 0.98543128522220502 3.1262995163623057e-08 -0.17007404888845271 0 0.019033831640556564 0.99371776666053291 0.11028469284665664 0
		 13.844272516503397 1.2155834266207706 -26.530943672351921 1;
	setAttr ".i[2]" -type "matrix" 0.16900560747617729 0.98543128522220491 0.019033831640557983 0
		 -0.11191514742518767 3.1262993915870396e-08 0.9937177666605328 0 0.97924057535337361 -0.17007404888845373 0.11028469284665929 0
		 31.820289279847373 -18.154804308095574 1.4545005736810679 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode decomposeMatrix -n "LeftFourthToeIKCnnDM";
	rename -uid "F4F68AF0-4E3A-BE4F-D8B9-E8B661FFD1F4";
createNode multMatrix -n "LeftFourthToeIKCnnMM";
	rename -uid "74283420-45DB-EB3F-8439-949914A351C9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.16900560747617782 -0.11191514742518925 0.97924057535337394 0
		 0.98543128522220524 3.1262994931172897e-08 -0.17007404888845276 0 0.01903383164055665 0.9937177666605328 0.11028469284665766 0
		 13.844272516503429 1.2155834266207004 -26.530943672351924 1;
	setAttr ".i[1]" -type "matrix" 0.25089787602066116 0.96799492699058132 0.0060064239631084856 0
		 -0.023932859165417354 -2.2690183065776637e-15 0.99971356810446776 0 0.96771766236877532 -0.25096976176524549 0.02316688626050388 0
		 27.291105228935233 -19.449344787825133 -1.1317168441709353 1;
createNode unitConversion -n "unitConversion46";
	rename -uid "EE077739-4287-34B3-C60F-05A90098E80E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion51";
	rename -uid "D24CA4E9-4009-D6D9-6E13-E5AA364C196C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion55";
	rename -uid "01E1DE83-4F6A-8CCF-B0E5-979148587B1B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion47";
	rename -uid "CCE97AFD-4127-0882-9362-658F41D469D4";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "LeftLittleToeIKCtrlConsGrpDM";
	rename -uid "27C6F4AD-4B1D-0BF0-E0F8-478EB70F686C";
createNode multMatrix -n "LeftLittleToeIKCtrlConsGrpMM";
	rename -uid "2000E5FF-435F-C413-020A-1F94AD9D760B";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.28382067052630222 -0.099980902376571881 0.95365069398704172 0
		 0.95845316214824106 3.0407128812278481e-08 -0.28524995349348709 0 0.028519518755374118 0.99498935630486296 0.095827020667428736 0
		 16.071598089954687 1.3409266837679981 -28.446269726804687 1;
	setAttr ".i[2]" -type "matrix" 0.28382067052630289 0.95845316214824028 0.028519518755390234 0
		 -0.099980902376571062 3.0407112772135036e-08 0.99498935630486296 0 0.95365069398704116 -0.28524995349349136 0.095827020667429083 0
		 30.139395636694239 -23.518171167500746 0.93335925593187785 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode decomposeMatrix -n "LeftLittleToeIKCnnDM";
	rename -uid "11FB9E72-488C-5314-52A3-FF904AC5103B";
createNode multMatrix -n "LeftLittleToeIKCnnMM";
	rename -uid "F8C12EEC-46D7-2243-F6BC-8DB622048662";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.28382067052630178 -0.099980902376570729 0.95365069398704116 0
		 0.9584531621482405 3.0407128446499809e-08 -0.28524995349348709 0 0.028519518755374278 0.99498935630486351 0.095827020667430055 0
		 16.071598089954698 1.3409266837679061 -28.446269726804722 1;
	setAttr ".i[1]" -type "matrix" 0.25089787602066116 0.96799492699058132 0.0060064239631084856 0
		 -0.023932859165417354 -2.2690183065776637e-15 0.99971356810446776 0 0.96771766236877532 -0.25096976176524549 0.02316688626050388 0
		 27.291105228935233 -19.449344787825133 -1.1317168441709353 1;
createNode blendColors -n "LeftAnkleDrvJntTrsBC";
	rename -uid "1A24C8DA-43F9-F00C-FE88-CE8142980C8E";
createNode pairBlend -n "LeftAnkleDrvJntRotPB";
	rename -uid "86E9A1DC-45BD-52DC-4538-8E9C12DA3590";
	setAttr ".ri" 1;
createNode blendColors -n "LeftBallDrvJntTrsBC";
	rename -uid "29770D03-443A-09EE-BC11-C69D138BABED";
createNode pairBlend -n "LeftBallDrvJntRotPB";
	rename -uid "F8E90077-45CB-D550-844E-16BAEB72154A";
	setAttr ".ri" 1;
createNode decomposeMatrix -n "LeftBallFKJntDM";
	rename -uid "ABB5F8CF-4520-FA81-9F7E-9ABC03E6E5E5";
createNode multMatrix -n "LeftBallFKJntMM";
	rename -uid "848765DA-43EA-1DCC-821B-B98D640C0503";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.25089787602066355 -0.02393285916541793 0.96771766236878487 0
		 0.9679949269905751 -2.4634705223791572e-15 -0.25096976176524399 0 0.0060064239631080901 0.99971356810446355 0.023166886260503117 0
		 11.986384324954905 1.7845468595389131 -31.26506362009053 1;
	setAttr ".i[1]" -type "matrix" 0.25089787602065688 0.96799492699058975 0.0060064239631077779 0
		 -0.023932859165417222 -1.9567680809018384e-15 0.99971356810447842 0 0.96771766236875845 -0.2509697617652481 0.023166886260503984 0
		 27.291105220609474 -19.449344787825318 -1.1317168416256591 1;
createNode quatToEuler -n "LeftBallFKJntQE";
	rename -uid "965AE0DC-4162-89E4-6514-28BE87265BC4";
	setAttr ".ort" -type "double3" 0 -6.0430538947806815e-14 0 ;
createNode quatProd -n "LeftBallFKJntQP";
	rename -uid "7D8337CA-4A0A-324D-DE2B-88AAF828817A";
createNode quatInvert -n "LeftBallFKJntQI";
	rename -uid "96470A80-4AFC-CEF6-5522-76AA735DDBF3";
createNode eulerToQuat -n "LeftBallFKJntEQ";
	rename -uid "1736308C-4B7A-0583-5EEC-88BDA153A12B";
createNode decomposeMatrix -n "LeftFootShCareVecGrpDM";
	rename -uid "501917BE-412F-5E2A-157F-3F9ACA7DC1AD";
createNode multMatrix -n "LeftFootShCareVecGrpMM";
	rename -uid "3A29ECEC-42EB-CBC5-C73D-1AB64CD016C0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5099033134902113e-14 -0.999999999999999 4.9303806576313189e-32 0
		 0.99144486137381316 1.4876988529977142e-14 -0.13052619222005304 0 0.1305261922200526 1.9706458687096521e-15 0.99144486137380983 0
		 10.851168583630642 3.2867452591429913 -35.643611341985455 1;
	setAttr ".i[1]" -type "matrix" 2.6465071248874723e-08 0.99999999999999711 -4.7995928105696979e-08 0
		 -0.99357960150981972 3.1725184285180674e-08 0.11313520877069887 0 0.11313520877070045 4.4693644452031833e-08 0.99357960150981728 0
		 7.2981895032518738 -10.851167410764257 35.042919275707909 1;
createNode pairBlend -n "LeftFootShCareVecPosPB";
	rename -uid "19818F87-4093-0B3F-0081-81AC44AC572E";
	setAttr ".it1" -type "double3" 12 1.0658141036401503e-14 -1.4210854715202004e-14 ;
	setAttr ".ri" 1;
createNode decomposeMatrix -n "LeftFootShCareVecPosDM";
	rename -uid "515E0DBB-4AC6-09DC-44DB-D09F95CF21EE";
createNode multMatrix -n "LeftFootShCareVecPosMM";
	rename -uid "A09D3150-4783-C1A7-82CC-228191EE4D86";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.5099033134902072e-14 -0.99999999999999623 4.9303806576313052e-32 0
		 0.99144486137381449 1.4876988529977161e-14 -0.13052619222005321 0 0.13052619222005268 1.9706458687096533e-15 0.99144486137381049 0
		 10.851168583630827 -8.7132547408569962 -35.643611341985462 1;
	setAttr ".i[1]" -type "matrix" 0.23817872368620022 0.9679949269905842 0.079099411525725666 0
		 -0.31517506718483435 -2.3592239273284576e-15 0.9490335489459979 0 0.9186596609235872 -0.2509697617652461 0.3050878661488356 0
		 31.195730583637395 -19.449344787825183 6.8968807590672476 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
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
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 56 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 32 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 2292 ".gn";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
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
	setAttr -av -k on ".edl";
	setAttr -av ".ren";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf";
	setAttr -av ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
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
	setAttr -av ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -cb on ".sosl";
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
	setAttr -av -k on ".pram" -type "string" "";
	setAttr -av -k on ".poam" -type "string" "";
	setAttr -av -k on ".prlm" -type "string" "";
	setAttr -av -k on ".polm" -type "string" "";
	setAttr -av -cb on ".prm" -type "string" "";
	setAttr -av -cb on ".pom" -type "string" "";
	setAttr -cb on ".pfrm" -type "string" "";
	setAttr -cb on ".pfom" -type "string" "";
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
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
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
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
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
connectAttr "LeftLegIKFKCtrlGrpDM.ot" "LeftLegIKFKCtrlGrp.t";
connectAttr "LeftLegIKFKCtrlGrpDM.or" "LeftLegIKFKCtrlGrp.r";
connectAttr "LeftLegIKFKCD.ocg" "LeftLegIKCtrlGrp.v";
connectAttr "LeftLegIKCtrl.ConstCtrlVis" "LeftLegIKConstCtrlShape.v";
connectAttr "LeftLegIKPosDM.ot" "LeftLegIKPos.t";
connectAttr "LeftFootInMvPivPos.c" "LeftFootInRotPos.rp";
connectAttr "LeftFootInRotPosRotXAU.o" "LeftFootInRotPos.rx";
connectAttr "LeftFootInMvPivPos.c" "LeftFootInRotPos.sp";
connectAttr "LeftFootOutMvPivPos.c" "LeftFootOutRotPos.rp";
connectAttr "LeftFootOutRotPosRotXAU.o" "LeftFootOutRotPos.rx";
connectAttr "LeftFootOutMvPivPos.c" "LeftFootOutRotPos.sp";
connectAttr "LeftHeelMvPivPos.c" "LeftHeelRollPivPos.rp";
connectAttr "LeftHeelRollPivPosRotZAU.o" "LeftHeelRollPivPos.rz";
connectAttr "LeftHeelRollPivPosRotYAU.o" "LeftHeelRollPivPos.ry";
connectAttr "LeftHeelMvPivPos.c" "LeftHeelRollPivPos.sp";
connectAttr "LeftToeMvPivPos.c" "LeftToeRollPivPos.rp";
connectAttr "LeftToeRollPivPosRotYAU.o" "LeftToeRollPivPos.ry";
connectAttr "LeftToeRollPivPosRotZAU.o" "LeftToeRollPivPos.rz";
connectAttr "LeftToeMvPivPos.c" "LeftToeRollPivPos.sp";
connectAttr "LeftBallMvPivPos.c" "LeftBallPivPos.rp";
connectAttr "LeftBallPivPosRotZAU.o" "LeftBallPivPos.rz";
connectAttr "LeftBallMvPivPos.c" "LeftBallPivPos.sp";
connectAttr "LeftBallMvPivPos.c" "LeftFootRollPos.rp";
connectAttr "LeftBallMvPivPos.c" "LeftFootRollPos.sp";
connectAttr "LeftFootRollPosRotYAU.o" "LeftFootRollPos.ry";
connectAttr "LeftAnkleIKJnt.msg" "LeftBallIKh.hsj";
connectAttr "effector117.hp" "LeftBallIKh.hee";
connectAttr "ikSCsolver.msg" "LeftBallIKh.hsv";
connectAttr "LeftBallMvPivPos.c" "LeftBallRollPos.rp";
connectAttr "LeftBallMvPivPos.c" "LeftBallRollPos.sp";
connectAttr "LeftBallRollPosRotYAU.o" "LeftBallRollPos.ry";
connectAttr "LeftBallIKJnt.msg" "LeftToeIKh.hsj";
connectAttr "effector118.hp" "LeftToeIKh.hee";
connectAttr "ikSCsolver.msg" "LeftToeIKh.hsv";
connectAttr "LeftLegIKFKCD.ocg" "LeftLegPoleVectorCtrlGrp.v";
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2.ctx" "LeftLegPoleVectorCtrlGrp.tx"
		;
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2.cty" "LeftLegPoleVectorCtrlGrp.ty"
		;
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2.ctz" "LeftLegPoleVectorCtrlGrp.tz"
		;
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2.crx" "LeftLegPoleVectorCtrlGrp.rx"
		;
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2.cry" "LeftLegPoleVectorCtrlGrp.ry"
		;
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2.crz" "LeftLegPoleVectorCtrlGrp.rz"
		;
connectAttr "LeftLegIKCtrl.PVCtrlVis" "LeftLegPoleVectorCtrl.v" -l on;
connectAttr "LeftLegPoleVectorCtrlGrp.ro" "LeftLegPoleVectorCtrlGrp_parentConstraint2.cro"
		;
connectAttr "LeftLegPoleVectorCtrlGrp.pim" "LeftLegPoleVectorCtrlGrp_parentConstraint2.cpim"
		;
connectAttr "LeftLegPoleVectorCtrlGrp.rp" "LeftLegPoleVectorCtrlGrp_parentConstraint2.crp"
		;
connectAttr "LeftLegPoleVectorCtrlGrp.rpt" "LeftLegPoleVectorCtrlGrp_parentConstraint2.crt"
		;
connectAttr "LeftLegPVAutoSpace.t" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].tt"
		;
connectAttr "LeftLegPVAutoSpace.rp" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].trp"
		;
connectAttr "LeftLegPVAutoSpace.rpt" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].trt"
		;
connectAttr "LeftLegPVAutoSpace.r" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].tr"
		;
connectAttr "LeftLegPVAutoSpace.ro" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].tro"
		;
connectAttr "LeftLegPVAutoSpace.s" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].ts"
		;
connectAttr "LeftLegPVAutoSpace.pm" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].tpm"
		;
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2.w0" "LeftLegPoleVectorCtrlGrp_parentConstraint2.tg[0].tw"
		;
connectAttr "LeftLegPoleVectorCtrlGrp_parentConstraint2_LeftLegPVAutoSpaceAU.o" "LeftLegPoleVectorCtrlGrp_parentConstraint2.w0"
		;
connectAttr "LeftLegIKFKCD.ocr" "LeftThighFKCtrlGrp.v";
connectAttr "LeftHeelIKGrpDM.ot" "LeftHeelIKGrp.t";
connectAttr "LeftHeelIKGrpDM.or" "LeftHeelIKGrp.r";
connectAttr "LeftHeelIKAMGrp_pointConstraint1.ctx" "LeftHeelIKAMGrp.tx";
connectAttr "LeftHeelIKAMGrp_pointConstraint1.cty" "LeftHeelIKAMGrp.ty";
connectAttr "LeftHeelIKAMGrp_pointConstraint1.ctz" "LeftHeelIKAMGrp.tz";
connectAttr "LeftHeelIKAMGrp_aimConstraint1.crx" "LeftHeelIKAMGrp.rx";
connectAttr "LeftHeelIKAMGrp_aimConstraint1.cry" "LeftHeelIKAMGrp.ry";
connectAttr "LeftHeelIKAMGrp_aimConstraint1.crz" "LeftHeelIKAMGrp.rz";
connectAttr "LeftLegIKFKCD.ocg" "LeftHeelRotIKCtrlGrp.v";
connectAttr "LeftHeelIKAMGrp.pim" "LeftHeelIKAMGrp_pointConstraint1.cpim";
connectAttr "LeftHeelIKAMGrp.rp" "LeftHeelIKAMGrp_pointConstraint1.crp";
connectAttr "LeftHeelIKAMGrp.rpt" "LeftHeelIKAMGrp_pointConstraint1.crt";
connectAttr "LeftHeelIKPoint.t" "LeftHeelIKAMGrp_pointConstraint1.tg[0].tt";
connectAttr "LeftHeelIKPoint.rp" "LeftHeelIKAMGrp_pointConstraint1.tg[0].trp";
connectAttr "LeftHeelIKPoint.rpt" "LeftHeelIKAMGrp_pointConstraint1.tg[0].trt";
connectAttr "LeftHeelIKPoint.pm" "LeftHeelIKAMGrp_pointConstraint1.tg[0].tpm";
connectAttr "LeftHeelIKAMGrp_pointConstraint1.w0" "LeftHeelIKAMGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftHeelIKAMGrp.pim" "LeftHeelIKAMGrp_aimConstraint1.cpim";
connectAttr "LeftHeelIKAMGrp.t" "LeftHeelIKAMGrp_aimConstraint1.ct";
connectAttr "LeftHeelIKAMGrp.rp" "LeftHeelIKAMGrp_aimConstraint1.crp";
connectAttr "LeftHeelIKAMGrp.rpt" "LeftHeelIKAMGrp_aimConstraint1.crt";
connectAttr "LeftHeelIKAMGrp.ro" "LeftHeelIKAMGrp_aimConstraint1.cro";
connectAttr "LeftLegRev2IKJnt.t" "LeftHeelIKAMGrp_aimConstraint1.tg[0].tt";
connectAttr "LeftLegRev2IKJnt.rp" "LeftHeelIKAMGrp_aimConstraint1.tg[0].trp";
connectAttr "LeftLegRev2IKJnt.rpt" "LeftHeelIKAMGrp_aimConstraint1.tg[0].trt";
connectAttr "LeftLegRev2IKJnt.pm" "LeftHeelIKAMGrp_aimConstraint1.tg[0].tpm";
connectAttr "LeftHeelIKAMGrp_aimConstraint1.w0" "LeftHeelIKAMGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLegRev2IKJnt.wm" "LeftHeelIKAMGrp_aimConstraint1.wum";
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
connectAttr "LeftLegArcBS.og[0]" "LeftLegUpArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LeftLegUpArcCtrlGrp_tangentConstraint1.w0" "LeftLegUpArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg1DrvJnt.wm" "LeftLegUpArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LeftLegUpArcCtrl.t" "LeftLeg1CsHandle.t";
connectAttr "LeftLegUpArcCtrl.r" "LeftLeg1CsHandle.r";
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
connectAttr "LeftLegMidArcCtrl.t" "LeftLeg2DnCsHandle.t";
connectAttr "LeftLegMidArcCtrl.r" "LeftLeg2DnCsHandle.r";
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
connectAttr "LeftLegArcBS.og[1]" "LeftLegDnArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LeftLegDnArcCtrlGrp_tangentConstraint1.w0" "LeftLegDnArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg3DrvJnt.wm" "LeftLegDnArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LeftLegDnArcCtrl.t" "LeftLeg3CsHandle.t";
connectAttr "LeftLegDnArcCtrl.r" "LeftLeg3CsHandle.r";
connectAttr "LeftLegSysConstGrpDM.ot" "LeftLegSysConstGrp.t";
connectAttr "LeftLegSysConstGrpDM.or" "LeftLegSysConstGrp.r";
connectAttr "LeftThighFKCtrl.sy" "LeftLeg1DrvJnt.FKScaleY";
connectAttr "LeftThighFKCtrl.sz" "LeftLeg1DrvJnt.FKScaleZ";
connectAttr "LeftLeg1SquashBA.o" "LeftLeg1DrvJnt.IKSquash";
connectAttr "LeftLeg1DrvJntRotPB.orx" "LeftLeg1DrvJnt.rx";
connectAttr "LeftLeg1DrvJntRotPB.ory" "LeftLeg1DrvJnt.ry";
connectAttr "LeftLeg1DrvJntRotPB.orz" "LeftLeg1DrvJnt.rz";
connectAttr "LeftLeg1DrvJntTrsBC.op" "LeftLeg1DrvJnt.t";
connectAttr "LeftKneeFKCtrl.sy" "LeftLeg2DrvJnt.FKScaleY";
connectAttr "LeftKneeFKCtrl.sz" "LeftLeg2DrvJnt.FKScaleZ";
connectAttr "LeftLeg2SquashBA.o" "LeftLeg2DrvJnt.IKSquash";
connectAttr "LeftLeg2DrvJntTrsBC.op" "LeftLeg2DrvJnt.t";
connectAttr "LeftLeg2DrvJntRotPB.orx" "LeftLeg2DrvJnt.rx";
connectAttr "LeftLeg2DrvJntRotPB.ory" "LeftLeg2DrvJnt.ry";
connectAttr "LeftLeg2DrvJntRotPB.orz" "LeftLeg2DrvJnt.rz";
connectAttr "LeftLeg1DrvJnt.s" "LeftLeg2DrvJnt.is";
connectAttr "LeftAnkleFKCtrl.sy" "LeftLeg3DrvJnt.FKScaleY";
connectAttr "LeftAnkleFKCtrl.sz" "LeftLeg3DrvJnt.FKScaleZ";
connectAttr "LeftLeg3SquashBA.o" "LeftLeg3DrvJnt.IKSquash";
connectAttr "LeftLeg2DrvJnt.s" "LeftLeg3DrvJnt.is";
connectAttr "LeftLeg3DrvJntTrsBC.op" "LeftLeg3DrvJnt.t";
connectAttr "LeftLeg3DrvJntRotPB.orx" "LeftLeg3DrvJnt.rx";
connectAttr "LeftLeg3DrvJntRotPB.ory" "LeftLeg3DrvJnt.ry";
connectAttr "LeftLeg3DrvJntRotPB.orz" "LeftLeg3DrvJnt.rz";
connectAttr "LeftLeg3DrvJnt.s" "LeftLeg4DrvJnt.is";
connectAttr "LeftLeg4DrvJntTrsBC.op" "LeftLeg4DrvJnt.t";
connectAttr "LeftLeg4DrvJnt_orientConstraint1.crx" "LeftLeg4DrvJnt.rx";
connectAttr "LeftLeg4DrvJnt_orientConstraint1.cry" "LeftLeg4DrvJnt.ry";
connectAttr "LeftLeg4DrvJnt_orientConstraint1.crz" "LeftLeg4DrvJnt.rz";
connectAttr "LeftLeg4DrvJnt.ro" "LeftLeg4DrvJnt_orientConstraint1.cro";
connectAttr "LeftLeg4DrvJnt.pim" "LeftLeg4DrvJnt_orientConstraint1.cpim";
connectAttr "LeftLeg4DrvJnt.jo" "LeftLeg4DrvJnt_orientConstraint1.cjo";
connectAttr "LeftLeg4DrvJnt.is" "LeftLeg4DrvJnt_orientConstraint1.is";
connectAttr "LeftLegIKPos.r" "LeftLeg4DrvJnt_orientConstraint1.tg[0].tr";
connectAttr "LeftLegIKPos.ro" "LeftLeg4DrvJnt_orientConstraint1.tg[0].tro";
connectAttr "LeftLegIKPos.pm" "LeftLeg4DrvJnt_orientConstraint1.tg[0].tpm";
connectAttr "LeftLeg4DrvJnt_orientConstraint1.w0" "LeftLeg4DrvJnt_orientConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg4FKCtrl.r" "LeftLeg4DrvJnt_orientConstraint1.tg[1].tr";
connectAttr "LeftLeg4FKCtrl.ro" "LeftLeg4DrvJnt_orientConstraint1.tg[1].tro";
connectAttr "LeftLeg4FKCtrl.pm" "LeftLeg4DrvJnt_orientConstraint1.tg[1].tpm";
connectAttr "LeftLeg4DrvJnt_orientConstraint1.w1" "LeftLeg4DrvJnt_orientConstraint1.tg[1].tw"
		;
connectAttr "LegIKFKREV.ox" "LeftLeg4DrvJnt_orientConstraint1.w0";
connectAttr "LegIKFKREV.ix" "LeftLeg4DrvJnt_orientConstraint1.w1";
connectAttr "LeftLeg4AssiAPos_parentConstraint1.ctx" "LeftLeg4AssiAPos.tx";
connectAttr "LeftLeg4AssiAPos_parentConstraint1.cty" "LeftLeg4AssiAPos.ty";
connectAttr "LeftLeg4AssiAPos_parentConstraint1.ctz" "LeftLeg4AssiAPos.tz";
connectAttr "LeftLeg4AssiAPos_parentConstraint1.crx" "LeftLeg4AssiAPos.rx";
connectAttr "LeftLeg4AssiAPos_parentConstraint1.cry" "LeftLeg4AssiAPos.ry";
connectAttr "LeftLeg4AssiAPos_parentConstraint1.crz" "LeftLeg4AssiAPos.rz";
connectAttr "LeftLeg4AssiAPos.ro" "LeftLeg4AssiAPos_parentConstraint1.cro";
connectAttr "LeftLeg4AssiAPos.pim" "LeftLeg4AssiAPos_parentConstraint1.cpim";
connectAttr "LeftLeg4AssiAPos.rp" "LeftLeg4AssiAPos_parentConstraint1.crp";
connectAttr "LeftLeg4AssiAPos.rpt" "LeftLeg4AssiAPos_parentConstraint1.crt";
connectAttr "LeftAnkleDrvJnt.t" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tt";
connectAttr "LeftAnkleDrvJnt.rp" "LeftLeg4AssiAPos_parentConstraint1.tg[0].trp";
connectAttr "LeftAnkleDrvJnt.rpt" "LeftLeg4AssiAPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftAnkleDrvJnt.r" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tr";
connectAttr "LeftAnkleDrvJnt.ro" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tro";
connectAttr "LeftAnkleDrvJnt.s" "LeftLeg4AssiAPos_parentConstraint1.tg[0].ts";
connectAttr "LeftAnkleDrvJnt.pm" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tpm";
connectAttr "LeftAnkleDrvJnt.jo" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tjo";
connectAttr "LeftAnkleDrvJnt.ssc" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftAnkleDrvJnt.is" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tis";
connectAttr "LeftLeg4AssiAPos_parentConstraint1.w0" "LeftLeg4AssiAPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg4TwistFixGrp_pointConstraint1.ctx" "LeftLeg4TwistFixGrp.tx";
connectAttr "LeftLeg4TwistFixGrp_pointConstraint1.cty" "LeftLeg4TwistFixGrp.ty";
connectAttr "LeftLeg4TwistFixGrp_pointConstraint1.ctz" "LeftLeg4TwistFixGrp.tz";
connectAttr "LeftLeg4AimGrp_aimConstraint1.crx" "LeftLeg4AimGrp.rx";
connectAttr "LeftLeg4AimGrp_aimConstraint1.cry" "LeftLeg4AimGrp.ry";
connectAttr "LeftLeg4AimGrp_aimConstraint1.crz" "LeftLeg4AimGrp.rz";
connectAttr "LeftLeg4TwistFixPos_orientConstraint1.crx" "LeftLeg4TwistFixPos.rx"
		;
connectAttr "LeftLeg4TwistFixPos_orientConstraint1.cry" "LeftLeg4TwistFixPos.ry"
		;
connectAttr "LeftLeg4TwistFixPos_orientConstraint1.crz" "LeftLeg4TwistFixPos.rz"
		;
connectAttr "LeftLeg4TwistFixPos.ro" "LeftLeg4TwistFixPos_orientConstraint1.cro"
		;
connectAttr "LeftLeg4TwistFixPos.pim" "LeftLeg4TwistFixPos_orientConstraint1.cpim"
		;
connectAttr "LeftLeg4AimGrp.r" "LeftLeg4TwistFixPos_orientConstraint1.tg[0].tr";
connectAttr "LeftLeg4AimGrp.ro" "LeftLeg4TwistFixPos_orientConstraint1.tg[0].tro"
		;
connectAttr "LeftLeg4AimGrp.pm" "LeftLeg4TwistFixPos_orientConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg4TwistFixPos_orientConstraint1.w0" "LeftLeg4TwistFixPos_orientConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg4TwistFixSubPos.r" "LeftLeg4TwistFixPos_orientConstraint1.tg[1].tr"
		;
connectAttr "LeftLeg4TwistFixSubPos.ro" "LeftLeg4TwistFixPos_orientConstraint1.tg[1].tro"
		;
connectAttr "LeftLeg4TwistFixSubPos.pm" "LeftLeg4TwistFixPos_orientConstraint1.tg[1].tpm"
		;
connectAttr "LeftLeg4TwistFixPos_orientConstraint1.w1" "LeftLeg4TwistFixPos_orientConstraint1.tg[1].tw"
		;
connectAttr "LeftLeg4TwistFixSubPos_aimConstraint1.crx" "LeftLeg4TwistFixSubPos.rx"
		;
connectAttr "LeftLeg4TwistFixSubPos_aimConstraint1.cry" "LeftLeg4TwistFixSubPos.ry"
		;
connectAttr "LeftLeg4TwistFixSubPos_aimConstraint1.crz" "LeftLeg4TwistFixSubPos.rz"
		;
connectAttr "LeftLeg4TwistFixSubPos.pim" "LeftLeg4TwistFixSubPos_aimConstraint1.cpim"
		;
connectAttr "LeftLeg4TwistFixSubPos.t" "LeftLeg4TwistFixSubPos_aimConstraint1.ct"
		;
connectAttr "LeftLeg4TwistFixSubPos.rp" "LeftLeg4TwistFixSubPos_aimConstraint1.crp"
		;
connectAttr "LeftLeg4TwistFixSubPos.rpt" "LeftLeg4TwistFixSubPos_aimConstraint1.crt"
		;
connectAttr "LeftLeg4TwistFixSubPos.ro" "LeftLeg4TwistFixSubPos_aimConstraint1.cro"
		;
connectAttr "LeftLeg4TwsitFixTgPos.t" "LeftLeg4TwistFixSubPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg4TwsitFixTgPos.rp" "LeftLeg4TwistFixSubPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg4TwsitFixTgPos.rpt" "LeftLeg4TwistFixSubPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg4TwsitFixTgPos.pm" "LeftLeg4TwistFixSubPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg4TwistFixSubPos_aimConstraint1.w0" "LeftLeg4TwistFixSubPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg4AssiAPos.wm" "LeftLeg4TwistFixSubPos_aimConstraint1.wum";
connectAttr "LeftLeg4AimGrp.pim" "LeftLeg4AimGrp_aimConstraint1.cpim";
connectAttr "LeftLeg4AimGrp.t" "LeftLeg4AimGrp_aimConstraint1.ct";
connectAttr "LeftLeg4AimGrp.rp" "LeftLeg4AimGrp_aimConstraint1.crp";
connectAttr "LeftLeg4AimGrp.rpt" "LeftLeg4AimGrp_aimConstraint1.crt";
connectAttr "LeftLeg4AimGrp.ro" "LeftLeg4AimGrp_aimConstraint1.cro";
connectAttr "LeftLeg4TwsitFixTgPos.t" "LeftLeg4AimGrp_aimConstraint1.tg[0].tt";
connectAttr "LeftLeg4TwsitFixTgPos.rp" "LeftLeg4AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg4TwsitFixTgPos.rpt" "LeftLeg4AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg4TwsitFixTgPos.pm" "LeftLeg4AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg4AimGrp_aimConstraint1.w0" "LeftLeg4AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg4TwistFixGrp.wm" "LeftLeg4AimGrp_aimConstraint1.wum";
connectAttr "LeftLeg4TwsitFixTgPos_pointConstraint1.ctx" "LeftLeg4TwsitFixTgPos.tx"
		;
connectAttr "LeftLeg4TwsitFixTgPos_pointConstraint1.cty" "LeftLeg4TwsitFixTgPos.ty"
		;
connectAttr "LeftLeg4TwsitFixTgPos_pointConstraint1.ctz" "LeftLeg4TwsitFixTgPos.tz"
		;
connectAttr "LeftLeg4TwsitFixTgPos.pim" "LeftLeg4TwsitFixTgPos_pointConstraint1.cpim"
		;
connectAttr "LeftLeg4TwsitFixTgPos.rp" "LeftLeg4TwsitFixTgPos_pointConstraint1.crp"
		;
connectAttr "LeftLeg4TwsitFixTgPos.rpt" "LeftLeg4TwsitFixTgPos_pointConstraint1.crt"
		;
connectAttr "LeftLeg4AssiAPos.t" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg4AssiAPos.rp" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg4AssiAPos.rpt" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg4AssiAPos.pm" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg4TwsitFixTgPos_pointConstraint1.w0" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg4AssiBPos.t" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[1].tt"
		;
connectAttr "LeftLeg4AssiBPos.rp" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[1].trp"
		;
connectAttr "LeftLeg4AssiBPos.rpt" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[1].trt"
		;
connectAttr "LeftLeg4AssiBPos.pm" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[1].tpm"
		;
connectAttr "LeftLeg4TwsitFixTgPos_pointConstraint1.w1" "LeftLeg4TwsitFixTgPos_pointConstraint1.tg[1].tw"
		;
connectAttr "LeftLeg4TwistFixGrp.pim" "LeftLeg4TwistFixGrp_pointConstraint1.cpim"
		;
connectAttr "LeftLeg4TwistFixGrp.rp" "LeftLeg4TwistFixGrp_pointConstraint1.crp";
connectAttr "LeftLeg4TwistFixGrp.rpt" "LeftLeg4TwistFixGrp_pointConstraint1.crt"
		;
connectAttr "LeftLeg4DrvJnt.t" "LeftLeg4TwistFixGrp_pointConstraint1.tg[0].tt";
connectAttr "LeftLeg4DrvJnt.rp" "LeftLeg4TwistFixGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg4DrvJnt.rpt" "LeftLeg4TwistFixGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg4DrvJnt.pm" "LeftLeg4TwistFixGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg4TwistFixGrp_pointConstraint1.w0" "LeftLeg4TwistFixGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg3TwistFixGrp_pointConstraint1.ctx" "LeftLeg3TwistFixGrp.tx";
connectAttr "LeftLeg3TwistFixGrp_pointConstraint1.cty" "LeftLeg3TwistFixGrp.ty";
connectAttr "LeftLeg3TwistFixGrp_pointConstraint1.ctz" "LeftLeg3TwistFixGrp.tz";
connectAttr "LeftLeg3TwistAimGrp_aimConstraint1.crx" "LeftLeg3TwistAimGrp.rx";
connectAttr "LeftLeg3TwistAimGrp_aimConstraint1.cry" "LeftLeg3TwistAimGrp.ry";
connectAttr "LeftLeg3TwistAimGrp_aimConstraint1.crz" "LeftLeg3TwistAimGrp.rz";
connectAttr "LeftLeg3TwistAimGrp.pim" "LeftLeg3TwistAimGrp_aimConstraint1.cpim";
connectAttr "LeftLeg3TwistAimGrp.t" "LeftLeg3TwistAimGrp_aimConstraint1.ct";
connectAttr "LeftLeg3TwistAimGrp.rp" "LeftLeg3TwistAimGrp_aimConstraint1.crp";
connectAttr "LeftLeg3TwistAimGrp.rpt" "LeftLeg3TwistAimGrp_aimConstraint1.crt";
connectAttr "LeftLeg3TwistAimGrp.ro" "LeftLeg3TwistAimGrp_aimConstraint1.cro";
connectAttr "LeftLeg3TwistFixTgPos.t" "LeftLeg3TwistAimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg3TwistFixTgPos.rp" "LeftLeg3TwistAimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg3TwistFixTgPos.rpt" "LeftLeg3TwistAimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg3TwistFixTgPos.pm" "LeftLeg3TwistAimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg3TwistAimGrp_aimConstraint1.w0" "LeftLeg3TwistAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg3AssiAPos.wm" "LeftLeg3TwistAimGrp_aimConstraint1.wum";
connectAttr "LeftLeg3TwistFixTgPos_pointConstraint1.ctx" "LeftLeg3TwistFixTgPos.tx"
		;
connectAttr "LeftLeg3TwistFixTgPos_pointConstraint1.cty" "LeftLeg3TwistFixTgPos.ty"
		;
connectAttr "LeftLeg3TwistFixTgPos_pointConstraint1.ctz" "LeftLeg3TwistFixTgPos.tz"
		;
connectAttr "LeftLeg3TwistFixTgPos.pim" "LeftLeg3TwistFixTgPos_pointConstraint1.cpim"
		;
connectAttr "LeftLeg3TwistFixTgPos.rp" "LeftLeg3TwistFixTgPos_pointConstraint1.crp"
		;
connectAttr "LeftLeg3TwistFixTgPos.rpt" "LeftLeg3TwistFixTgPos_pointConstraint1.crt"
		;
connectAttr "LeftLeg3AssiBPos.t" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg3AssiBPos.rp" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg3AssiBPos.rpt" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg3AssiBPos.pm" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg3TwistFixTgPos_pointConstraint1.w0" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg3AssiAPos.t" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[1].tt"
		;
connectAttr "LeftLeg3AssiAPos.rp" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[1].trp"
		;
connectAttr "LeftLeg3AssiAPos.rpt" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[1].trt"
		;
connectAttr "LeftLeg3AssiAPos.pm" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[1].tpm"
		;
connectAttr "LeftLeg3TwistFixTgPos_pointConstraint1.w1" "LeftLeg3TwistFixTgPos_pointConstraint1.tg[1].tw"
		;
connectAttr "LeftLeg3TwistFixGrp.pim" "LeftLeg3TwistFixGrp_pointConstraint1.cpim"
		;
connectAttr "LeftLeg3TwistFixGrp.rp" "LeftLeg3TwistFixGrp_pointConstraint1.crp";
connectAttr "LeftLeg3TwistFixGrp.rpt" "LeftLeg3TwistFixGrp_pointConstraint1.crt"
		;
connectAttr "LeftLeg3DrvJnt.t" "LeftLeg3TwistFixGrp_pointConstraint1.tg[0].tt";
connectAttr "LeftLeg3DrvJnt.rp" "LeftLeg3TwistFixGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg3DrvJnt.rpt" "LeftLeg3TwistFixGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg3DrvJnt.pm" "LeftLeg3TwistFixGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg3TwistFixGrp_pointConstraint1.w0" "LeftLeg3TwistFixGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg2TwistFixGrp_pointConstraint1.ctx" "LeftLeg2TwistFixGrp.tx";
connectAttr "LeftLeg2TwistFixGrp_pointConstraint1.cty" "LeftLeg2TwistFixGrp.ty";
connectAttr "LeftLeg2TwistFixGrp_pointConstraint1.ctz" "LeftLeg2TwistFixGrp.tz";
connectAttr "LeftLeg2TwistAimGrp_aimConstraint1.crx" "LeftLeg2TwistAimGrp.rx";
connectAttr "LeftLeg2TwistAimGrp_aimConstraint1.cry" "LeftLeg2TwistAimGrp.ry";
connectAttr "LeftLeg2TwistAimGrp_aimConstraint1.crz" "LeftLeg2TwistAimGrp.rz";
connectAttr "unitConversion10.o" "LeftLeg2TwistFixPos.rx";
connectAttr "LeftLeg2TwistAimGrp.pim" "LeftLeg2TwistAimGrp_aimConstraint1.cpim";
connectAttr "LeftLeg2TwistAimGrp.t" "LeftLeg2TwistAimGrp_aimConstraint1.ct";
connectAttr "LeftLeg2TwistAimGrp.rp" "LeftLeg2TwistAimGrp_aimConstraint1.crp";
connectAttr "LeftLeg2TwistAimGrp.rpt" "LeftLeg2TwistAimGrp_aimConstraint1.crt";
connectAttr "LeftLeg2TwistAimGrp.ro" "LeftLeg2TwistAimGrp_aimConstraint1.cro";
connectAttr "LeftLeg2TwistFixTgPos.t" "LeftLeg2TwistAimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg2TwistFixTgPos.rp" "LeftLeg2TwistAimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg2TwistFixTgPos.rpt" "LeftLeg2TwistAimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg2TwistFixTgPos.pm" "LeftLeg2TwistAimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg2TwistAimGrp_aimConstraint1.w0" "LeftLeg2TwistAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg2AssiAPos.wm" "LeftLeg2TwistAimGrp_aimConstraint1.wum";
connectAttr "LeftLeg2TwistFixTgPos_pointConstraint1.ctx" "LeftLeg2TwistFixTgPos.tx"
		;
connectAttr "LeftLeg2TwistFixTgPos_pointConstraint1.cty" "LeftLeg2TwistFixTgPos.ty"
		;
connectAttr "LeftLeg2TwistFixTgPos_pointConstraint1.ctz" "LeftLeg2TwistFixTgPos.tz"
		;
connectAttr "LeftLeg2TwistFixTgPos.pim" "LeftLeg2TwistFixTgPos_pointConstraint1.cpim"
		;
connectAttr "LeftLeg2TwistFixTgPos.rp" "LeftLeg2TwistFixTgPos_pointConstraint1.crp"
		;
connectAttr "LeftLeg2TwistFixTgPos.rpt" "LeftLeg2TwistFixTgPos_pointConstraint1.crt"
		;
connectAttr "LeftLeg2AssiAPos.t" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg2AssiAPos.rp" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg2AssiAPos.rpt" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg2AssiAPos.pm" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg2TwistFixTgPos_pointConstraint1.w0" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg2AssiBPos.t" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[1].tt"
		;
connectAttr "LeftLeg2AssiBPos.rp" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[1].trp"
		;
connectAttr "LeftLeg2AssiBPos.rpt" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[1].trt"
		;
connectAttr "LeftLeg2AssiBPos.pm" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[1].tpm"
		;
connectAttr "LeftLeg2TwistFixTgPos_pointConstraint1.w1" "LeftLeg2TwistFixTgPos_pointConstraint1.tg[1].tw"
		;
connectAttr "LeftLeg2TwistFixGrp.pim" "LeftLeg2TwistFixGrp_pointConstraint1.cpim"
		;
connectAttr "LeftLeg2TwistFixGrp.rp" "LeftLeg2TwistFixGrp_pointConstraint1.crp";
connectAttr "LeftLeg2TwistFixGrp.rpt" "LeftLeg2TwistFixGrp_pointConstraint1.crt"
		;
connectAttr "LeftLeg2DrvJnt.t" "LeftLeg2TwistFixGrp_pointConstraint1.tg[0].tt";
connectAttr "LeftLeg2DrvJnt.rp" "LeftLeg2TwistFixGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg2DrvJnt.rpt" "LeftLeg2TwistFixGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg2DrvJnt.pm" "LeftLeg2TwistFixGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg2TwistFixGrp_pointConstraint1.w0" "LeftLeg2TwistFixGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg1FKJntDM.ot" "LeftLeg1FKJnt.t";
connectAttr "LeftLeg1FKJntQE.ort" "LeftLeg1FKJnt.r";
connectAttr "LeftLeg1FKJnt.s" "LeftLeg2FKJnt.is";
connectAttr "LeftLeg2FKJntDM.ot" "LeftLeg2FKJnt.t";
connectAttr "LeftLeg2FKJntQE.ort" "LeftLeg2FKJnt.r";
connectAttr "LeftLeg2FKJnt.s" "LeftLeg3FKJnt.is";
connectAttr "LeftLeg3FKJntDM.ot" "LeftLeg3FKJnt.t";
connectAttr "LeftLeg3FKJntQE.ort" "LeftLeg3FKJnt.r";
connectAttr "LeftLeg3FKJnt.s" "LeftLeg4FKJnt.is";
connectAttr "LeftLeg4FKJntDM.ot" "LeftLeg4FKJnt.t";
connectAttr "LeftLeg4FKJntQE.ort" "LeftLeg4FKJnt.r";
connectAttr "LeftLeg1IKJnt.s" "LeftLeg2IKJnt.is";
connectAttr "LeftLegUpStretchOutputMDL.o" "LeftLeg2IKJnt.tx";
connectAttr "LeftLeg2IKJnt.s" "LeftLeg3IKJnt.is";
connectAttr "LeftLegDnStretchOutputMDL.o" "LeftLeg3IKJnt.tx";
connectAttr "LeftLeg3IKJnt.tx" "effector48.tx";
connectAttr "LeftLeg3IKJnt.ty" "effector48.ty";
connectAttr "LeftLeg3IKJnt.tz" "effector48.tz";
connectAttr "LeftLeg1IKJnt.s" "LeftLeg1SubIKJnt.is";
connectAttr "LeftLeg1SubIKJnt_pointConstraint1.ctx" "LeftLeg1SubIKJnt.tx";
connectAttr "LeftLeg1SubIKJnt_pointConstraint1.cty" "LeftLeg1SubIKJnt.ty";
connectAttr "LeftLeg1SubIKJnt_pointConstraint1.ctz" "LeftLeg1SubIKJnt.tz";
connectAttr "LeftLeg1SubIKJnt_aimConstraint1.crx" "LeftLeg1SubIKJnt.rx";
connectAttr "LeftLeg1SubIKJnt_aimConstraint1.cry" "LeftLeg1SubIKJnt.ry";
connectAttr "LeftLeg1SubIKJnt_aimConstraint1.crz" "LeftLeg1SubIKJnt.rz";
connectAttr "LeftLeg1SubIKJnt.s" "LeftLeg2SubIKJnt.is";
connectAttr "LeftLeg2SubIKJnt_pointConstraint1.ctx" "LeftLeg2SubIKJnt.tx";
connectAttr "LeftLeg2SubIKJnt_pointConstraint1.cty" "LeftLeg2SubIKJnt.ty";
connectAttr "LeftLeg2SubIKJnt_pointConstraint1.ctz" "LeftLeg2SubIKJnt.tz";
connectAttr "LeftLeg2SubIKJnt_aimConstraint1.crx" "LeftLeg2SubIKJnt.rx";
connectAttr "LeftLeg2SubIKJnt_aimConstraint1.cry" "LeftLeg2SubIKJnt.ry";
connectAttr "LeftLeg2SubIKJnt_aimConstraint1.crz" "LeftLeg2SubIKJnt.rz";
connectAttr "LeftLeg2SubIKJnt.s" "LeftLeg3SubIKJnt.is";
connectAttr "LeftLeg3SubIKJnt_pointConstraint1.ctx" "LeftLeg3SubIKJnt.tx";
connectAttr "LeftLeg3SubIKJnt_pointConstraint1.cty" "LeftLeg3SubIKJnt.ty";
connectAttr "LeftLeg3SubIKJnt_pointConstraint1.ctz" "LeftLeg3SubIKJnt.tz";
connectAttr "LeftLeg3SubIKJnt.pim" "LeftLeg3SubIKJnt_pointConstraint1.cpim";
connectAttr "LeftLeg3SubIKJnt.rp" "LeftLeg3SubIKJnt_pointConstraint1.crp";
connectAttr "LeftLeg3SubIKJnt.rpt" "LeftLeg3SubIKJnt_pointConstraint1.crt";
connectAttr "LeftHeelIKPoint.t" "LeftLeg3SubIKJnt_pointConstraint1.tg[0].tt";
connectAttr "LeftHeelIKPoint.rp" "LeftLeg3SubIKJnt_pointConstraint1.tg[0].trp";
connectAttr "LeftHeelIKPoint.rpt" "LeftLeg3SubIKJnt_pointConstraint1.tg[0].trt";
connectAttr "LeftHeelIKPoint.pm" "LeftLeg3SubIKJnt_pointConstraint1.tg[0].tpm";
connectAttr "LeftLeg3SubIKJnt_pointConstraint1.w0" "LeftLeg3SubIKJnt_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg2SubIKJnt.pim" "LeftLeg2SubIKJnt_pointConstraint1.cpim";
connectAttr "LeftLeg2SubIKJnt.rp" "LeftLeg2SubIKJnt_pointConstraint1.crp";
connectAttr "LeftLeg2SubIKJnt.rpt" "LeftLeg2SubIKJnt_pointConstraint1.crt";
connectAttr "LeftHeelIKCtrl.t" "LeftLeg2SubIKJnt_pointConstraint1.tg[0].tt";
connectAttr "LeftHeelIKCtrl.rp" "LeftLeg2SubIKJnt_pointConstraint1.tg[0].trp";
connectAttr "LeftHeelIKCtrl.rpt" "LeftLeg2SubIKJnt_pointConstraint1.tg[0].trt";
connectAttr "LeftHeelIKCtrl.pm" "LeftLeg2SubIKJnt_pointConstraint1.tg[0].tpm";
connectAttr "LeftLeg2SubIKJnt_pointConstraint1.w0" "LeftLeg2SubIKJnt_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg2SubIKJnt.pim" "LeftLeg2SubIKJnt_aimConstraint1.cpim";
connectAttr "LeftLeg2SubIKJnt.t" "LeftLeg2SubIKJnt_aimConstraint1.ct";
connectAttr "LeftLeg2SubIKJnt.rp" "LeftLeg2SubIKJnt_aimConstraint1.crp";
connectAttr "LeftLeg2SubIKJnt.rpt" "LeftLeg2SubIKJnt_aimConstraint1.crt";
connectAttr "LeftLeg2SubIKJnt.ro" "LeftLeg2SubIKJnt_aimConstraint1.cro";
connectAttr "LeftLeg2SubIKJnt.jo" "LeftLeg2SubIKJnt_aimConstraint1.cjo";
connectAttr "LeftLeg2SubIKJnt.is" "LeftLeg2SubIKJnt_aimConstraint1.is";
connectAttr "LeftHeelIKPoint.t" "LeftLeg2SubIKJnt_aimConstraint1.tg[0].tt";
connectAttr "LeftHeelIKPoint.rp" "LeftLeg2SubIKJnt_aimConstraint1.tg[0].trp";
connectAttr "LeftHeelIKPoint.rpt" "LeftLeg2SubIKJnt_aimConstraint1.tg[0].trt";
connectAttr "LeftHeelIKPoint.pm" "LeftLeg2SubIKJnt_aimConstraint1.tg[0].tpm";
connectAttr "LeftLeg2SubIKJnt_aimConstraint1.w0" "LeftLeg2SubIKJnt_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftHeelIKCtrl.wm" "LeftLeg2SubIKJnt_aimConstraint1.wum";
connectAttr "LeftLeg1SubIKJnt.pim" "LeftLeg1SubIKJnt_pointConstraint1.cpim";
connectAttr "LeftLeg1SubIKJnt.rp" "LeftLeg1SubIKJnt_pointConstraint1.crp";
connectAttr "LeftLeg1SubIKJnt.rpt" "LeftLeg1SubIKJnt_pointConstraint1.crt";
connectAttr "LeftLeg2IKJnt.t" "LeftLeg1SubIKJnt_pointConstraint1.tg[0].tt";
connectAttr "LeftLeg2IKJnt.rp" "LeftLeg1SubIKJnt_pointConstraint1.tg[0].trp";
connectAttr "LeftLeg2IKJnt.rpt" "LeftLeg1SubIKJnt_pointConstraint1.tg[0].trt";
connectAttr "LeftLeg2IKJnt.pm" "LeftLeg1SubIKJnt_pointConstraint1.tg[0].tpm";
connectAttr "LeftLeg1SubIKJnt_pointConstraint1.w0" "LeftLeg1SubIKJnt_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg1SubIKJnt.pim" "LeftLeg1SubIKJnt_aimConstraint1.cpim";
connectAttr "LeftLeg1SubIKJnt.t" "LeftLeg1SubIKJnt_aimConstraint1.ct";
connectAttr "LeftLeg1SubIKJnt.rp" "LeftLeg1SubIKJnt_aimConstraint1.crp";
connectAttr "LeftLeg1SubIKJnt.rpt" "LeftLeg1SubIKJnt_aimConstraint1.crt";
connectAttr "LeftLeg1SubIKJnt.ro" "LeftLeg1SubIKJnt_aimConstraint1.cro";
connectAttr "LeftLeg1SubIKJnt.jo" "LeftLeg1SubIKJnt_aimConstraint1.cjo";
connectAttr "LeftLeg1SubIKJnt.is" "LeftLeg1SubIKJnt_aimConstraint1.is";
connectAttr "LeftHeelIKCtrl.t" "LeftLeg1SubIKJnt_aimConstraint1.tg[0].tt";
connectAttr "LeftHeelIKCtrl.rp" "LeftLeg1SubIKJnt_aimConstraint1.tg[0].trp";
connectAttr "LeftHeelIKCtrl.rpt" "LeftLeg1SubIKJnt_aimConstraint1.tg[0].trt";
connectAttr "LeftHeelIKCtrl.pm" "LeftLeg1SubIKJnt_aimConstraint1.tg[0].tpm";
connectAttr "LeftLeg1SubIKJnt_aimConstraint1.w0" "LeftLeg1SubIKJnt_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLegRev2IKJnt.wm" "LeftLeg1SubIKJnt_aimConstraint1.wum";
connectAttr "LeftLegBase1IKJnt.s" "LeftLegBase2IKJnt.is";
connectAttr "LeftLegBase2IKJnt.s" "LeftLegBase3IKJnt.is";
connectAttr "LeftLegBase3IKJntTransXAU.o" "LeftLegBase3IKJnt.tx";
connectAttr "LeftLegBase3IKJnt.tx" "effector45.tx";
connectAttr "LeftLegBase3IKJnt.ty" "effector45.ty";
connectAttr "LeftLegBase3IKJnt.tz" "effector45.tz";
connectAttr "LeftLegBase1IKJnt.s" "LeftLegRev1IKJnt.is";
connectAttr "LeftLegRev1IKJnt.s" "LeftLegRev2IKJnt.is";
connectAttr "LeftLegRev2IKJnt.s" "LeftLegRev3IKJnt.is";
connectAttr "LeftHeelIKPointPB.otx" "LeftHeelIKPoint.tx";
connectAttr "LeftHeelIKPointPB.oty" "LeftHeelIKPoint.ty";
connectAttr "LeftHeelIKPointPB.otz" "LeftHeelIKPoint.tz";
connectAttr "LeftLegHeelPosMDL.o" "LeftHeelIKPoint.pbw";
connectAttr "LeftHeelIKPoint.pim" "LeftHeelIKPoint_pointConstraint1.cpim";
connectAttr "LeftHeelIKPoint.rp" "LeftHeelIKPoint_pointConstraint1.crp";
connectAttr "LeftHeelIKPoint.rpt" "LeftHeelIKPoint_pointConstraint1.crt";
connectAttr "LeftLegIKPos.t" "LeftHeelIKPoint_pointConstraint1.tg[0].tt";
connectAttr "LeftLegIKPos.rp" "LeftHeelIKPoint_pointConstraint1.tg[0].trp";
connectAttr "LeftLegIKPos.rpt" "LeftHeelIKPoint_pointConstraint1.tg[0].trt";
connectAttr "LeftLegIKPos.pm" "LeftHeelIKPoint_pointConstraint1.tg[0].tpm";
connectAttr "LeftHeelIKPoint_pointConstraint1.w0" "LeftHeelIKPoint_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLegRev3IKJnt.tx" "effector44.tx";
connectAttr "LeftLegRev3IKJnt.ty" "effector44.ty";
connectAttr "LeftLegRev3IKJnt.tz" "effector44.tz";
connectAttr "LeftLegUp1ArcJnt.s" "LeftLegUp2ArcJnt.is";
connectAttr "LeftLegUp2Ar1UnitLenMDL.o" "LeftLegUp2ArcJnt.tx";
connectAttr "LeftLegUp2ArcJnt.s" "LeftLegUp3ArcJnt.is";
connectAttr "LeftLegUp3Ar2UnitLenMDL.o" "LeftLegUp3ArcJnt.tx";
connectAttr "LeftLegUp3ArcJnt.s" "LeftLegUp4ArcJnt.is";
connectAttr "LeftLegUp4Ar3UnitLenMDL.o" "LeftLegUp4ArcJnt.tx";
connectAttr "LeftLegUp4ArcJnt.s" "LeftLegDn1ArcJnt.is";
connectAttr "LeftLegDn1ArcJnt.s" "LeftLegDn2ArcJnt.is";
connectAttr "LeftLegDn2Ar1UnitLenMDL.o" "LeftLegDn2ArcJnt.tx";
connectAttr "LeftLegDn2ArcJnt.s" "LeftLegDn3ArcJnt.is";
connectAttr "LeftLegDn3Ar2UnitLenMDL.o" "LeftLegDn3ArcJnt.tx";
connectAttr "LeftLegDn3ArcJnt.s" "LeftLegDn4ArcJnt.is";
connectAttr "LeftLegDn4Ar3UnitLenMDL.o" "LeftLegDn4ArcJnt.tx";
connectAttr "LeftLegDn4ArcJnt.s" "LeftLegEx1ArcJnt.is";
connectAttr "LeftLegEx1ArcJnt.s" "LeftLegEx2ArcJnt.is";
connectAttr "LeftLegEx2Ar1UnitLenMDL.o" "LeftLegEx2ArcJnt.tx";
connectAttr "LeftLegEx2ArcJnt.s" "LeftLegEx3ArcJnt.is";
connectAttr "LeftLegEx3Ar2UnitLenMDL.o" "LeftLegEx3ArcJnt.tx";
connectAttr "LeftLegEx3ArcJnt.s" "LeftLegEx4ArcJnt.is";
connectAttr "LeftLegEx4Ar3UnitLenMDL.o" "LeftLegEx4ArcJnt.tx";
connectAttr "LeftLegEx4ArcJnt.tx" "effector50.tx";
connectAttr "LeftLegEx4ArcJnt.ty" "effector50.ty";
connectAttr "LeftLegEx4ArcJnt.tz" "effector50.tz";
connectAttr "LeftLegDn4ArcJnt.tx" "effector51.tx";
connectAttr "LeftLegDn4ArcJnt.ty" "effector51.ty";
connectAttr "LeftLegDn4ArcJnt.tz" "effector51.tz";
connectAttr "LeftLegUp4ArcJnt.tx" "effector52.tx";
connectAttr "LeftLegUp4ArcJnt.ty" "effector52.ty";
connectAttr "LeftLegUp4ArcJnt.tz" "effector52.tz";
connectAttr "LeftLeg1TwistFixGrpDM.ot" "LeftLeg1TwistFixGrp.t";
connectAttr "LeftLeg1TwistAimGrp_aimConstraint1.crx" "LeftLeg1TwistAimGrp.rx";
connectAttr "LeftLeg1TwistAimGrp_aimConstraint1.cry" "LeftLeg1TwistAimGrp.ry";
connectAttr "LeftLeg1TwistAimGrp_aimConstraint1.crz" "LeftLeg1TwistAimGrp.rz";
connectAttr "unitConversion9.o" "LeftLeg1TwistFixPos.rx";
connectAttr "LeftLeg1TwistAimGrp.pim" "LeftLeg1TwistAimGrp_aimConstraint1.cpim";
connectAttr "LeftLeg1TwistAimGrp.t" "LeftLeg1TwistAimGrp_aimConstraint1.ct";
connectAttr "LeftLeg1TwistAimGrp.rp" "LeftLeg1TwistAimGrp_aimConstraint1.crp";
connectAttr "LeftLeg1TwistAimGrp.rpt" "LeftLeg1TwistAimGrp_aimConstraint1.crt";
connectAttr "LeftLeg1TwistAimGrp.ro" "LeftLeg1TwistAimGrp_aimConstraint1.cro";
connectAttr "LeftLeg1TwistFixTgPos.t" "LeftLeg1TwistAimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg1TwistFixTgPos.rp" "LeftLeg1TwistAimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg1TwistFixTgPos.rpt" "LeftLeg1TwistAimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg1TwistFixTgPos.pm" "LeftLeg1TwistAimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg1TwistAimGrp_aimConstraint1.w0" "LeftLeg1TwistAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg1TwistFixUpvec.wm" "LeftLeg1TwistAimGrp_aimConstraint1.wum";
connectAttr "LeftLeg1TwistFixTgPos_pointConstraint1.ctx" "LeftLeg1TwistFixTgPos.tx"
		;
connectAttr "LeftLeg1TwistFixTgPos_pointConstraint1.cty" "LeftLeg1TwistFixTgPos.ty"
		;
connectAttr "LeftLeg1TwistFixTgPos_pointConstraint1.ctz" "LeftLeg1TwistFixTgPos.tz"
		;
connectAttr "LeftLeg1TwistFixTgPos.pim" "LeftLeg1TwistFixTgPos_pointConstraint1.cpim"
		;
connectAttr "LeftLeg1TwistFixTgPos.rp" "LeftLeg1TwistFixTgPos_pointConstraint1.crp"
		;
connectAttr "LeftLeg1TwistFixTgPos.rpt" "LeftLeg1TwistFixTgPos_pointConstraint1.crt"
		;
connectAttr "LeftLeg2DrvJnt.t" "LeftLeg1TwistFixTgPos_pointConstraint1.tg[0].tt"
		;
connectAttr "LeftLeg2DrvJnt.rp" "LeftLeg1TwistFixTgPos_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftLeg2DrvJnt.rpt" "LeftLeg1TwistFixTgPos_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg2DrvJnt.pm" "LeftLeg1TwistFixTgPos_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftLeg1TwistFixTgPos_pointConstraint1.w0" "LeftLeg1TwistFixTgPos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg1TwistFixUpvecRotZAU.o" "LeftLeg1TwistFixUpvec.rz";
connectAttr "LeftLegRev1IKJnt.msg" "LeftLegRevIKh.hsj";
connectAttr "effector44.hp" "LeftLegRevIKh.hee";
connectAttr "ikRPsolver.msg" "LeftLegRevIKh.hsv";
connectAttr "LeftLegRevIKhDM.ot" "LeftLegRevIKh.t";
connectAttr "LeftLegRevIKh_poleVectorConstraint1.ctx" "LeftLegRevIKh.pvx";
connectAttr "LeftLegRevIKh_poleVectorConstraint1.cty" "LeftLegRevIKh.pvy";
connectAttr "LeftLegRevIKh_poleVectorConstraint1.ctz" "LeftLegRevIKh.pvz";
connectAttr "LeftLegRevIKh.pim" "LeftLegRevIKh_poleVectorConstraint1.cpim";
connectAttr "LeftLegRev1IKJnt.pm" "LeftLegRevIKh_poleVectorConstraint1.ps";
connectAttr "LeftLegRev1IKJnt.t" "LeftLegRevIKh_poleVectorConstraint1.crp";
connectAttr "LeftLegRevPVPos.t" "LeftLegRevIKh_poleVectorConstraint1.tg[0].tt";
connectAttr "LeftLegRevPVPos.rp" "LeftLegRevIKh_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "LeftLegRevPVPos.rpt" "LeftLegRevIKh_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "LeftLegRevPVPos.pm" "LeftLegRevIKh_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "LeftLegRevIKh_poleVectorConstraint1.w0" "LeftLegRevIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftLegBase1IKJnt.msg" "LeftLegBaseIKh.hsj";
connectAttr "effector45.hp" "LeftLegBaseIKh.hee";
connectAttr "ikRPsolver.msg" "LeftLegBaseIKh.hsv";
connectAttr "LeftLegBaseIKhDM.ot" "LeftLegBaseIKh.t";
connectAttr "LeftLegBaseIKh_poleVectorConstraint1.ctx" "LeftLegBaseIKh.pvx";
connectAttr "LeftLegBaseIKh_poleVectorConstraint1.cty" "LeftLegBaseIKh.pvy";
connectAttr "LeftLegBaseIKh_poleVectorConstraint1.ctz" "LeftLegBaseIKh.pvz";
connectAttr "LeftLegBaseIKh.pim" "LeftLegBaseIKh_poleVectorConstraint1.cpim";
connectAttr "LeftLegBase1IKJnt.pm" "LeftLegBaseIKh_poleVectorConstraint1.ps";
connectAttr "LeftLegBase1IKJnt.t" "LeftLegBaseIKh_poleVectorConstraint1.crp";
connectAttr "LeftLegPoleVectorCtrl.t" "LeftLegBaseIKh_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "LeftLegPoleVectorCtrl.rp" "LeftLegBaseIKh_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "LeftLegPoleVectorCtrl.rpt" "LeftLegBaseIKh_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "LeftLegPoleVectorCtrl.pm" "LeftLegBaseIKh_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "LeftLegBaseIKh_poleVectorConstraint1.w0" "LeftLegBaseIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftLegPVSysGrpDM.or" "LeftLegPVSysGrp.r";
connectAttr "LeftLegPVAimGrp_aimConstraint1.crx" "LeftLegPVAimGrp.rx";
connectAttr "LeftLegPVAimGrp_aimConstraint1.cry" "LeftLegPVAimGrp.ry";
connectAttr "LeftLegPVAimGrp_aimConstraint1.crz" "LeftLegPVAimGrp.rz";
connectAttr "LeftLegPVAimGrp.pim" "LeftLegPVAimGrp_aimConstraint1.cpim";
connectAttr "LeftLegPVAimGrp.t" "LeftLegPVAimGrp_aimConstraint1.ct";
connectAttr "LeftLegPVAimGrp.rp" "LeftLegPVAimGrp_aimConstraint1.crp";
connectAttr "LeftLegPVAimGrp.rpt" "LeftLegPVAimGrp_aimConstraint1.crt";
connectAttr "LeftLegPVAimGrp.ro" "LeftLegPVAimGrp_aimConstraint1.cro";
connectAttr "LeftLegPVTargetPos.t" "LeftLegPVAimGrp_aimConstraint1.tg[0].tt";
connectAttr "LeftLegPVTargetPos.rp" "LeftLegPVAimGrp_aimConstraint1.tg[0].trp";
connectAttr "LeftLegPVTargetPos.rpt" "LeftLegPVAimGrp_aimConstraint1.tg[0].trt";
connectAttr "LeftLegPVTargetPos.pm" "LeftLegPVAimGrp_aimConstraint1.tg[0].tpm";
connectAttr "LeftLegPVAimGrp_aimConstraint1.w0" "LeftLegPVAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLegPVUpvec.wm" "LeftLegPVAimGrp_aimConstraint1.wum";
connectAttr "unitConversion14.o" "LeftLegPVAimGrp_aimConstraint1.ox";
connectAttr "LeftLegPVUpvecRotZAU.o" "LeftLegPVUpvec.rz";
connectAttr "LeftLegPVTargetPosDM.ot" "LeftLegPVTargetPos.t";
connectAttr "LeftLegExUp_aimConstraint1.crx" "LeftLegExUp.rx";
connectAttr "LeftLegExUp_aimConstraint1.cry" "LeftLegExUp.ry";
connectAttr "LeftLegExUp_aimConstraint1.crz" "LeftLegExUp.rz";
connectAttr "LeftLegExUp.pim" "LeftLegExUp_aimConstraint1.cpim";
connectAttr "LeftLegExUp.t" "LeftLegExUp_aimConstraint1.ct";
connectAttr "LeftLegExUp.rp" "LeftLegExUp_aimConstraint1.crp";
connectAttr "LeftLegExUp.rpt" "LeftLegExUp_aimConstraint1.crt";
connectAttr "LeftLegExUp.ro" "LeftLegExUp_aimConstraint1.cro";
connectAttr "LeftLegPVTargetPos.t" "LeftLegExUp_aimConstraint1.tg[0].tt";
connectAttr "LeftLegPVTargetPos.rp" "LeftLegExUp_aimConstraint1.tg[0].trp";
connectAttr "LeftLegPVTargetPos.rpt" "LeftLegExUp_aimConstraint1.tg[0].trt";
connectAttr "LeftLegPVTargetPos.pm" "LeftLegExUp_aimConstraint1.tg[0].tpm";
connectAttr "LeftLegExUp_aimConstraint1.w0" "LeftLegExUp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLegPoleVectorCtrl.wm" "LeftLegExUp_aimConstraint1.wum";
connectAttr "LeftLegRevPVPosGrpDM.ot" "LeftLegRevPVPosGrp.t";
connectAttr "LeftLegRevPVPosGrp_aimConstraint1.crx" "LeftLegRevPVPosGrp.rx";
connectAttr "LeftLegRevPVPosGrp_aimConstraint1.cry" "LeftLegRevPVPosGrp.ry";
connectAttr "LeftLegRevPVPosGrp_aimConstraint1.crz" "LeftLegRevPVPosGrp.rz";
connectAttr "LeftLegRevPVPosGrp.pim" "LeftLegRevPVPosGrp_aimConstraint1.cpim";
connectAttr "LeftLegRevPVPosGrp.t" "LeftLegRevPVPosGrp_aimConstraint1.ct";
connectAttr "LeftLegRevPVPosGrp.rp" "LeftLegRevPVPosGrp_aimConstraint1.crp";
connectAttr "LeftLegRevPVPosGrp.rpt" "LeftLegRevPVPosGrp_aimConstraint1.crt";
connectAttr "LeftLegRevPVPosGrp.ro" "LeftLegRevPVPosGrp_aimConstraint1.cro";
connectAttr "LeftLegPVTargetPos.t" "LeftLegRevPVPosGrp_aimConstraint1.tg[0].tt";
connectAttr "LeftLegPVTargetPos.rp" "LeftLegRevPVPosGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftLegPVTargetPos.rpt" "LeftLegRevPVPosGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftLegPVTargetPos.pm" "LeftLegRevPVPosGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftLegRevPVPosGrp_aimConstraint1.w0" "LeftLegRevPVPosGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLegExUp.wm" "LeftLegRevPVPosGrp_aimConstraint1.wum";
connectAttr "LeftLegOrgPVPosGrp_aimConstraint1.crx" "LeftLegOrgPVPosGrp.rx";
connectAttr "LeftLegOrgPVPosGrp_aimConstraint1.cry" "LeftLegOrgPVPosGrp.ry";
connectAttr "LeftLegOrgPVPosGrp_aimConstraint1.crz" "LeftLegOrgPVPosGrp.rz";
connectAttr "LeftLegOrgPVPosGrp.pim" "LeftLegOrgPVPosGrp_aimConstraint1.cpim";
connectAttr "LeftLegOrgPVPosGrp.t" "LeftLegOrgPVPosGrp_aimConstraint1.ct";
connectAttr "LeftLegOrgPVPosGrp.rp" "LeftLegOrgPVPosGrp_aimConstraint1.crp";
connectAttr "LeftLegOrgPVPosGrp.rpt" "LeftLegOrgPVPosGrp_aimConstraint1.crt";
connectAttr "LeftLegOrgPVPosGrp.ro" "LeftLegOrgPVPosGrp_aimConstraint1.cro";
connectAttr "LeftHeelIKOff.t" "LeftLegOrgPVPosGrp_aimConstraint1.tg[0].tt";
connectAttr "LeftHeelIKOff.rp" "LeftLegOrgPVPosGrp_aimConstraint1.tg[0].trp";
connectAttr "LeftHeelIKOff.rpt" "LeftLegOrgPVPosGrp_aimConstraint1.tg[0].trt";
connectAttr "LeftHeelIKOff.pm" "LeftLegOrgPVPosGrp_aimConstraint1.tg[0].tpm";
connectAttr "LeftLegOrgPVPosGrp_aimConstraint1.w0" "LeftLegOrgPVPosGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLegExUp.wm" "LeftLegOrgPVPosGrp_aimConstraint1.wum";
connectAttr "LeftLeg1IKJnt.msg" "LeftLegIKh.hsj";
connectAttr "effector48.hp" "LeftLegIKh.hee";
connectAttr "ikRPsolver.msg" "LeftLegIKh.hsv";
connectAttr "LeftLegIKhDM.ot" "LeftLegIKh.t";
connectAttr "LeftLegIKh_poleVectorConstraint1.ctx" "LeftLegIKh.pvx";
connectAttr "LeftLegIKh_poleVectorConstraint1.cty" "LeftLegIKh.pvy";
connectAttr "LeftLegIKh_poleVectorConstraint1.ctz" "LeftLegIKh.pvz";
connectAttr "LeftLegIKh.pim" "LeftLegIKh_poleVectorConstraint1.cpim";
connectAttr "LeftLeg1IKJnt.pm" "LeftLegIKh_poleVectorConstraint1.ps";
connectAttr "LeftLeg1IKJnt.t" "LeftLegIKh_poleVectorConstraint1.crp";
connectAttr "LeftLegOrgPVPos.t" "LeftLegIKh_poleVectorConstraint1.tg[0].tt";
connectAttr "LeftLegOrgPVPos.rp" "LeftLegIKh_poleVectorConstraint1.tg[0].trp";
connectAttr "LeftLegOrgPVPos.rpt" "LeftLegIKh_poleVectorConstraint1.tg[0].trt";
connectAttr "LeftLegOrgPVPos.pm" "LeftLegIKh_poleVectorConstraint1.tg[0].tpm";
connectAttr "LeftLegIKh_poleVectorConstraint1.w0" "LeftLegIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftLegUpArcCrvRebuild.oc" "LeftLegUpArcCrvShape.cr";
connectAttr "LeftLegDnArcCrvRebuild.oc" "LeftLegDnArcCrvShape.cr";
connectAttr "LeftLeg2UpCs.og[0]" "LeftLegUpIKCrvShape.cr";
connectAttr "LeftLegArcBSGroupId.id" "LeftLegUpIKCrvShape.iog.og[2].gid";
connectAttr "LeftLegArcBSSet.mwc" "LeftLegUpIKCrvShape.iog.og[2].gco";
connectAttr "LeftLeg1CsGroupId.id" "LeftLegUpIKCrvShape.iog.og[4].gid";
connectAttr "LeftLeg1CsSet.mwc" "LeftLegUpIKCrvShape.iog.og[4].gco";
connectAttr "LeftLeg2UpCsGroupId.id" "LeftLegUpIKCrvShape.iog.og[5].gid";
connectAttr "LeftLeg2UpCsSet.mwc" "LeftLegUpIKCrvShape.iog.og[5].gco";
connectAttr "LeftLegArc1Pos.t" "LeftLegUpIKCrvShapeOrig.cp[0]";
connectAttr "LeftLegArc2Pos.t" "LeftLegUpIKCrvShapeOrig.cp[1]";
connectAttr "LeftLeg3Cs.og[0]" "LeftLegDnIKCrvShape.cr";
connectAttr "LeftLegArcBSGroupId1.id" "LeftLegDnIKCrvShape.iog.og[2].gid";
connectAttr "LeftLegArcBSSet.mwc" "LeftLegDnIKCrvShape.iog.og[2].gco";
connectAttr "LeftLeg2DnCsGroupId.id" "LeftLegDnIKCrvShape.iog.og[4].gid";
connectAttr "LeftLeg2DnCsSet.mwc" "LeftLegDnIKCrvShape.iog.og[4].gco";
connectAttr "LeftLeg3CsGroupId.id" "LeftLegDnIKCrvShape.iog.og[5].gid";
connectAttr "LeftLeg3CsSet.mwc" "LeftLegDnIKCrvShape.iog.og[5].gco";
connectAttr "LeftLegArc2Pos.t" "LeftLegDnIKCrvShapeOrig.cp[0]";
connectAttr "LeftLegArc3Pos.t" "LeftLegDnIKCrvShapeOrig.cp[1]";
connectAttr "rebuildCurve2.oc" "LeftLegExIKCrvShape.cr";
connectAttr "LeftLegArc3Pos.t" "LeftLegExIKCrvShapeOrig.cp[0]";
connectAttr "LeftLeg4ArcPos.t" "LeftLegExIKCrvShapeOrig.cp[1]";
connectAttr "LeftLegUpIKChkCrv_parentConstraint1.ctx" "LeftLegUpIKChkCrv.tx";
connectAttr "LeftLegUpIKChkCrv_parentConstraint1.cty" "LeftLegUpIKChkCrv.ty";
connectAttr "LeftLegUpIKChkCrv_parentConstraint1.ctz" "LeftLegUpIKChkCrv.tz";
connectAttr "LeftLegUpIKChkCrv_parentConstraint1.crx" "LeftLegUpIKChkCrv.rx";
connectAttr "LeftLegUpIKChkCrv_parentConstraint1.cry" "LeftLegUpIKChkCrv.ry";
connectAttr "LeftLegUpIKChkCrv_parentConstraint1.crz" "LeftLegUpIKChkCrv.rz";
connectAttr "LeftLegUpIKChkCrv.ro" "LeftLegUpIKChkCrv_parentConstraint1.cro";
connectAttr "LeftLegUpIKChkCrv.pim" "LeftLegUpIKChkCrv_parentConstraint1.cpim";
connectAttr "LeftLegUpIKChkCrv.rp" "LeftLegUpIKChkCrv_parentConstraint1.crp";
connectAttr "LeftLegUpIKChkCrv.rpt" "LeftLegUpIKChkCrv_parentConstraint1.crt";
connectAttr "LeftLeg1DrvJnt.t" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tt";
connectAttr "LeftLeg1DrvJnt.rp" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].trp";
connectAttr "LeftLeg1DrvJnt.rpt" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg1DrvJnt.r" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tr";
connectAttr "LeftLeg1DrvJnt.ro" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tro";
connectAttr "LeftLeg1DrvJnt.s" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].ts";
connectAttr "LeftLeg1DrvJnt.pm" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tpm";
connectAttr "LeftLeg1DrvJnt.jo" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tjo";
connectAttr "LeftLeg1DrvJnt.ssc" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftLeg1DrvJnt.is" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tis";
connectAttr "LeftLegUpIKChkCrv_parentConstraint1.w0" "LeftLegUpIKChkCrv_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLegDnIKChkCrv_parentConstraint1.ctx" "LeftLegDnIKChkCrv.tx";
connectAttr "LeftLegDnIKChkCrv_parentConstraint1.cty" "LeftLegDnIKChkCrv.ty";
connectAttr "LeftLegDnIKChkCrv_parentConstraint1.ctz" "LeftLegDnIKChkCrv.tz";
connectAttr "LeftLegDnIKChkCrv_parentConstraint1.crx" "LeftLegDnIKChkCrv.rx";
connectAttr "LeftLegDnIKChkCrv_parentConstraint1.cry" "LeftLegDnIKChkCrv.ry";
connectAttr "LeftLegDnIKChkCrv_parentConstraint1.crz" "LeftLegDnIKChkCrv.rz";
connectAttr "LeftLegDnIKChkCrv.ro" "LeftLegDnIKChkCrv_parentConstraint1.cro";
connectAttr "LeftLegDnIKChkCrv.pim" "LeftLegDnIKChkCrv_parentConstraint1.cpim";
connectAttr "LeftLegDnIKChkCrv.rp" "LeftLegDnIKChkCrv_parentConstraint1.crp";
connectAttr "LeftLegDnIKChkCrv.rpt" "LeftLegDnIKChkCrv_parentConstraint1.crt";
connectAttr "LeftLeg2DrvJnt.t" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tt";
connectAttr "LeftLeg2DrvJnt.rp" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].trp";
connectAttr "LeftLeg2DrvJnt.rpt" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg2DrvJnt.r" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tr";
connectAttr "LeftLeg2DrvJnt.ro" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tro";
connectAttr "LeftLeg2DrvJnt.s" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].ts";
connectAttr "LeftLeg2DrvJnt.pm" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tpm";
connectAttr "LeftLeg2DrvJnt.jo" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tjo";
connectAttr "LeftLeg2DrvJnt.ssc" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftLeg2DrvJnt.is" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tis";
connectAttr "LeftLegDnIKChkCrv_parentConstraint1.w0" "LeftLegDnIKChkCrv_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLegExIKChkCrv_parentConstraint1.ctx" "LeftLegExIKChkCrv.tx";
connectAttr "LeftLegExIKChkCrv_parentConstraint1.cty" "LeftLegExIKChkCrv.ty";
connectAttr "LeftLegExIKChkCrv_parentConstraint1.ctz" "LeftLegExIKChkCrv.tz";
connectAttr "LeftLegExIKChkCrv_parentConstraint1.crx" "LeftLegExIKChkCrv.rx";
connectAttr "LeftLegExIKChkCrv_parentConstraint1.cry" "LeftLegExIKChkCrv.ry";
connectAttr "LeftLegExIKChkCrv_parentConstraint1.crz" "LeftLegExIKChkCrv.rz";
connectAttr "LeftLegExIKChkCrv.ro" "LeftLegExIKChkCrv_parentConstraint1.cro";
connectAttr "LeftLegExIKChkCrv.pim" "LeftLegExIKChkCrv_parentConstraint1.cpim";
connectAttr "LeftLegExIKChkCrv.rp" "LeftLegExIKChkCrv_parentConstraint1.crp";
connectAttr "LeftLegExIKChkCrv.rpt" "LeftLegExIKChkCrv_parentConstraint1.crt";
connectAttr "LeftLeg3DrvJnt.t" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tt";
connectAttr "LeftLeg3DrvJnt.rp" "LeftLegExIKChkCrv_parentConstraint1.tg[0].trp";
connectAttr "LeftLeg3DrvJnt.rpt" "LeftLegExIKChkCrv_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftLeg3DrvJnt.r" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tr";
connectAttr "LeftLeg3DrvJnt.ro" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tro";
connectAttr "LeftLeg3DrvJnt.s" "LeftLegExIKChkCrv_parentConstraint1.tg[0].ts";
connectAttr "LeftLeg3DrvJnt.pm" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tpm";
connectAttr "LeftLeg3DrvJnt.jo" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tjo";
connectAttr "LeftLeg3DrvJnt.ssc" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftLeg3DrvJnt.is" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tis";
connectAttr "LeftLegExIKChkCrv_parentConstraint1.w0" "LeftLegExIKChkCrv_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLegArc1Pos_pointConstraint1.ctx" "LeftLegArc1Pos.tx";
connectAttr "LeftLegArc1Pos_pointConstraint1.cty" "LeftLegArc1Pos.ty";
connectAttr "LeftLegArc1Pos_pointConstraint1.ctz" "LeftLegArc1Pos.tz";
connectAttr "LeftLegArc1Pos.pim" "LeftLegArc1Pos_pointConstraint1.cpim";
connectAttr "LeftLegArc1Pos.rp" "LeftLegArc1Pos_pointConstraint1.crp";
connectAttr "LeftLegArc1Pos.rpt" "LeftLegArc1Pos_pointConstraint1.crt";
connectAttr "LeftLeg1DrvJnt.t" "LeftLegArc1Pos_pointConstraint1.tg[0].tt";
connectAttr "LeftLeg1DrvJnt.rp" "LeftLegArc1Pos_pointConstraint1.tg[0].trp";
connectAttr "LeftLeg1DrvJnt.rpt" "LeftLegArc1Pos_pointConstraint1.tg[0].trt";
connectAttr "LeftLeg1DrvJnt.pm" "LeftLegArc1Pos_pointConstraint1.tg[0].tpm";
connectAttr "LeftLegArc1Pos_pointConstraint1.w0" "LeftLegArc1Pos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLegArc2Pos_pointConstraint1.ctx" "LeftLegArc2Pos.tx";
connectAttr "LeftLegArc2Pos_pointConstraint1.cty" "LeftLegArc2Pos.ty";
connectAttr "LeftLegArc2Pos_pointConstraint1.ctz" "LeftLegArc2Pos.tz";
connectAttr "LeftLegArc2Pos.pim" "LeftLegArc2Pos_pointConstraint1.cpim";
connectAttr "LeftLegArc2Pos.rp" "LeftLegArc2Pos_pointConstraint1.crp";
connectAttr "LeftLegArc2Pos.rpt" "LeftLegArc2Pos_pointConstraint1.crt";
connectAttr "LeftLeg2DrvJnt.t" "LeftLegArc2Pos_pointConstraint1.tg[0].tt";
connectAttr "LeftLeg2DrvJnt.rp" "LeftLegArc2Pos_pointConstraint1.tg[0].trp";
connectAttr "LeftLeg2DrvJnt.rpt" "LeftLegArc2Pos_pointConstraint1.tg[0].trt";
connectAttr "LeftLeg2DrvJnt.pm" "LeftLegArc2Pos_pointConstraint1.tg[0].tpm";
connectAttr "LeftLegArc2Pos_pointConstraint1.w0" "LeftLegArc2Pos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLegArc3Pos_pointConstraint1.ctx" "LeftLegArc3Pos.tx";
connectAttr "LeftLegArc3Pos_pointConstraint1.cty" "LeftLegArc3Pos.ty";
connectAttr "LeftLegArc3Pos_pointConstraint1.ctz" "LeftLegArc3Pos.tz";
connectAttr "LeftLegArc3Pos.pim" "LeftLegArc3Pos_pointConstraint1.cpim";
connectAttr "LeftLegArc3Pos.rp" "LeftLegArc3Pos_pointConstraint1.crp";
connectAttr "LeftLegArc3Pos.rpt" "LeftLegArc3Pos_pointConstraint1.crt";
connectAttr "LeftHeelIKCtrl.t" "LeftLegArc3Pos_pointConstraint1.tg[0].tt";
connectAttr "LeftHeelIKCtrl.rp" "LeftLegArc3Pos_pointConstraint1.tg[0].trp";
connectAttr "LeftHeelIKCtrl.rpt" "LeftLegArc3Pos_pointConstraint1.tg[0].trt";
connectAttr "LeftHeelIKCtrl.pm" "LeftLegArc3Pos_pointConstraint1.tg[0].tpm";
connectAttr "LeftLegArc3Pos_pointConstraint1.w0" "LeftLegArc3Pos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftAnkleFKCtrl.t" "LeftLegArc3Pos_pointConstraint1.tg[1].tt";
connectAttr "LeftAnkleFKCtrl.rp" "LeftLegArc3Pos_pointConstraint1.tg[1].trp";
connectAttr "LeftAnkleFKCtrl.rpt" "LeftLegArc3Pos_pointConstraint1.tg[1].trt";
connectAttr "LeftAnkleFKCtrl.pm" "LeftLegArc3Pos_pointConstraint1.tg[1].tpm";
connectAttr "LeftLegArc3Pos_pointConstraint1.w1" "LeftLegArc3Pos_pointConstraint1.tg[1].tw"
		;
connectAttr "LegIKFKREV.ox" "LeftLegArc3Pos_pointConstraint1.w0";
connectAttr "LegIKFKREV.ix" "LeftLegArc3Pos_pointConstraint1.w1";
connectAttr "LeftLeg4ArcPos_pointConstraint1.ctx" "LeftLeg4ArcPos.tx";
connectAttr "LeftLeg4ArcPos_pointConstraint1.cty" "LeftLeg4ArcPos.ty";
connectAttr "LeftLeg4ArcPos_pointConstraint1.ctz" "LeftLeg4ArcPos.tz";
connectAttr "LeftLeg4ArcPos.pim" "LeftLeg4ArcPos_pointConstraint1.cpim";
connectAttr "LeftLeg4ArcPos.rp" "LeftLeg4ArcPos_pointConstraint1.crp";
connectAttr "LeftLeg4ArcPos.rpt" "LeftLeg4ArcPos_pointConstraint1.crt";
connectAttr "LeftLeg4DrvJnt.t" "LeftLeg4ArcPos_pointConstraint1.tg[0].tt";
connectAttr "LeftLeg4DrvJnt.rp" "LeftLeg4ArcPos_pointConstraint1.tg[0].trp";
connectAttr "LeftLeg4DrvJnt.rpt" "LeftLeg4ArcPos_pointConstraint1.tg[0].trt";
connectAttr "LeftLeg4DrvJnt.pm" "LeftLeg4ArcPos_pointConstraint1.tg[0].tpm";
connectAttr "LeftLeg4ArcPos_pointConstraint1.w0" "LeftLeg4ArcPos_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLegArcPointPos_pointConstraint2.ctx" "LeftLegArcPointPos.tx";
connectAttr "LeftLegArcPointPos_pointConstraint2.cty" "LeftLegArcPointPos.ty";
connectAttr "LeftLegArcPointPos_pointConstraint2.ctz" "LeftLegArcPointPos.tz";
connectAttr "LeftLegArcPointPos.pim" "LeftLegArcPointPos_pointConstraint2.cpim";
connectAttr "LeftLegArcPointPos.rp" "LeftLegArcPointPos_pointConstraint2.crp";
connectAttr "LeftLegArcPointPos.rpt" "LeftLegArcPointPos_pointConstraint2.crt";
connectAttr "LeftLegArc1Pos.t" "LeftLegArcPointPos_pointConstraint2.tg[0].tt";
connectAttr "LeftLegArc1Pos.rp" "LeftLegArcPointPos_pointConstraint2.tg[0].trp";
connectAttr "LeftLegArc1Pos.rpt" "LeftLegArcPointPos_pointConstraint2.tg[0].trt"
		;
connectAttr "LeftLegArc1Pos.pm" "LeftLegArcPointPos_pointConstraint2.tg[0].tpm";
connectAttr "LeftLegArcPointPos_pointConstraint2.w0" "LeftLegArcPointPos_pointConstraint2.tg[0].tw"
		;
connectAttr "LeftLegArc2Pos.t" "LeftLegArcPointPos_pointConstraint2.tg[1].tt";
connectAttr "LeftLegArc2Pos.rp" "LeftLegArcPointPos_pointConstraint2.tg[1].trp";
connectAttr "LeftLegArc2Pos.rpt" "LeftLegArcPointPos_pointConstraint2.tg[1].trt"
		;
connectAttr "LeftLegArc2Pos.pm" "LeftLegArcPointPos_pointConstraint2.tg[1].tpm";
connectAttr "LeftLegArcPointPos_pointConstraint2.w1" "LeftLegArcPointPos_pointConstraint2.tg[1].tw"
		;
connectAttr "LeftLegArc3Pos.t" "LeftLegArcPointPos_pointConstraint2.tg[2].tt";
connectAttr "LeftLegArc3Pos.rp" "LeftLegArcPointPos_pointConstraint2.tg[2].trp";
connectAttr "LeftLegArc3Pos.rpt" "LeftLegArcPointPos_pointConstraint2.tg[2].trt"
		;
connectAttr "LeftLegArc3Pos.pm" "LeftLegArcPointPos_pointConstraint2.tg[2].tpm";
connectAttr "LeftLegArcPointPos_pointConstraint2.w2" "LeftLegArcPointPos_pointConstraint2.tg[2].tw"
		;
connectAttr "LeftLegArcDnDB.d" "LeftLegArcPointPos_pointConstraint2.w0";
connectAttr "LeftLegArcPointMDL.o" "LeftLegArcPointPos_pointConstraint2.w1";
connectAttr "LeftLegArcUpDB.d" "LeftLegArcPointPos_pointConstraint2.w2";
connectAttr "LeftLegUp1ArcJnt.msg" "LeftLegUpIKh.hsj";
connectAttr "effector52.hp" "LeftLegUpIKh.hee";
connectAttr "ikSplineSolver.msg" "LeftLegUpIKh.hsv";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIKh.ic";
connectAttr "LeftLeg1TwistFixPos.wm" "LeftLegUpIKh.dwum";
connectAttr "LeftLeg2TwistFixPos.wm" "LeftLegUpIKh.dwue";
connectAttr "LeftLegDn1ArcJnt.msg" "LeftLegDnIKh.hsj";
connectAttr "effector51.hp" "LeftLegDnIKh.hee";
connectAttr "ikSplineSolver.msg" "LeftLegDnIKh.hsv";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIKh.ic";
connectAttr "LeftLeg2TwistFixPos.wm" "LeftLegDnIKh.dwum";
connectAttr "LeftLeg3TwistFixPos.wm" "LeftLegDnIKh.dwue";
connectAttr "LeftLegEx1ArcJnt.msg" "LeftLegExIKh.hsj";
connectAttr "effector50.hp" "LeftLegExIKh.hee";
connectAttr "ikSplineSolver.msg" "LeftLegExIKh.hsv";
connectAttr "LeftLegExIKCrvShape.ws" "LeftLegExIKh.ic";
connectAttr "LeftLeg3TwistFixPos.wm" "LeftLegExIKh.dwum";
connectAttr "LeftLeg4TwistFixPos.wm" "LeftLegExIKh.dwue";
connectAttr "LeftLegPVStretchPos_pointConstraint2.ctx" "LeftLegPVStretchPos.tx";
connectAttr "LeftLegPVStretchPos_pointConstraint2.cty" "LeftLegPVStretchPos.ty";
connectAttr "LeftLegPVStretchPos_pointConstraint2.ctz" "LeftLegPVStretchPos.tz";
connectAttr "LeftLegPVStretchPos.pim" "LeftLegPVStretchPos_pointConstraint2.cpim"
		;
connectAttr "LeftLegPVStretchPos.rp" "LeftLegPVStretchPos_pointConstraint2.crp";
connectAttr "LeftLegPVStretchPos.rpt" "LeftLegPVStretchPos_pointConstraint2.crt"
		;
connectAttr "LeftLegPoleVectorCtrl.t" "LeftLegPVStretchPos_pointConstraint2.tg[0].tt"
		;
connectAttr "LeftLegPoleVectorCtrl.rp" "LeftLegPVStretchPos_pointConstraint2.tg[0].trp"
		;
connectAttr "LeftLegPoleVectorCtrl.rpt" "LeftLegPVStretchPos_pointConstraint2.tg[0].trt"
		;
connectAttr "LeftLegPoleVectorCtrl.pm" "LeftLegPVStretchPos_pointConstraint2.tg[0].tpm"
		;
connectAttr "LeftLegPVStretchPos_pointConstraint2.w0" "LeftLegPVStretchPos_pointConstraint2.tg[0].tw"
		;
connectAttr "LeftLegIKMovePos_pointConstraint2.ctx" "LeftLegIKMovePos.tx";
connectAttr "LeftLegIKMovePos_pointConstraint2.cty" "LeftLegIKMovePos.ty";
connectAttr "LeftLegIKMovePos_pointConstraint2.ctz" "LeftLegIKMovePos.tz";
connectAttr "LeftLegIKMovePos.pim" "LeftLegIKMovePos_pointConstraint2.cpim";
connectAttr "LeftLegIKMovePos.rp" "LeftLegIKMovePos_pointConstraint2.crp";
connectAttr "LeftLegIKMovePos.rpt" "LeftLegIKMovePos_pointConstraint2.crt";
connectAttr "LeftHeelIKOff.t" "LeftLegIKMovePos_pointConstraint2.tg[0].tt";
connectAttr "LeftHeelIKOff.rp" "LeftLegIKMovePos_pointConstraint2.tg[0].trp";
connectAttr "LeftHeelIKOff.rpt" "LeftLegIKMovePos_pointConstraint2.tg[0].trt";
connectAttr "LeftHeelIKOff.pm" "LeftLegIKMovePos_pointConstraint2.tg[0].tpm";
connectAttr "LeftLegIKMovePos_pointConstraint2.w0" "LeftLegIKMovePos_pointConstraint2.tg[0].tw"
		;
connectAttr "LeftLegIK4Pos_pointConstraint2.ctx" "LeftHeelIKMovePos.tx";
connectAttr "LeftLegIK4Pos_pointConstraint2.cty" "LeftHeelIKMovePos.ty";
connectAttr "LeftLegIK4Pos_pointConstraint2.ctz" "LeftHeelIKMovePos.tz";
connectAttr "LeftHeelIKMovePos.pim" "LeftLegIK4Pos_pointConstraint2.cpim";
connectAttr "LeftHeelIKMovePos.rp" "LeftLegIK4Pos_pointConstraint2.crp";
connectAttr "LeftHeelIKMovePos.rpt" "LeftLegIK4Pos_pointConstraint2.crt";
connectAttr "LeftLegIKPos.t" "LeftLegIK4Pos_pointConstraint2.tg[0].tt";
connectAttr "LeftLegIKPos.rp" "LeftLegIK4Pos_pointConstraint2.tg[0].trp";
connectAttr "LeftLegIKPos.rpt" "LeftLegIK4Pos_pointConstraint2.tg[0].trt";
connectAttr "LeftLegIKPos.pm" "LeftLegIK4Pos_pointConstraint2.tg[0].tpm";
connectAttr "LeftLegIK4Pos_pointConstraint2.w0" "LeftLegIK4Pos_pointConstraint2.tg[0].tw"
		;
connectAttr "LeftAnkleConsGrpDM.ot" "LeftAnkleConsGrp.t";
connectAttr "LeftAnkleConsGrpDM.or" "LeftAnkleConsGrp.r";
connectAttr "LeftAnkleFKScaleBC.op" "LeftAnkleConsGrp.s";
connectAttr "LeftAnkleIKScaleBC.op" "LeftAnkleIKScaleGrp.s";
connectAttr "LeftLegIKFKCD.ocr" "LeftBallFKCtrlGrp.v";
connectAttr "LeftToeSwitchGrpDM.ot" "LeftToeSwitchGrp.t";
connectAttr "LeftToeSwitchGrpDM.or" "LeftToeSwitchGrp.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftSecondToe1CtrlShape.v";
connectAttr "LeftSecondToeAimGrp_aimConstraint1.crx" "LeftSecondToeAimGrp.rx";
connectAttr "LeftSecondToeAimGrp_aimConstraint1.cry" "LeftSecondToeAimGrp.ry";
connectAttr "LeftSecondToeAimGrp_aimConstraint1.crz" "LeftSecondToeAimGrp.rz";
connectAttr "LeftSecondToeAimGrp.pim" "LeftSecondToeAimGrp_aimConstraint1.cpim";
connectAttr "LeftSecondToeAimGrp.t" "LeftSecondToeAimGrp_aimConstraint1.ct";
connectAttr "LeftSecondToeAimGrp.rp" "LeftSecondToeAimGrp_aimConstraint1.crp";
connectAttr "LeftSecondToeAimGrp.rpt" "LeftSecondToeAimGrp_aimConstraint1.crt";
connectAttr "LeftSecondToeAimGrp.ro" "LeftSecondToeAimGrp_aimConstraint1.cro";
connectAttr "LeftSecondToeIKCtrl.t" "LeftSecondToeAimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftSecondToeIKCtrl.rp" "LeftSecondToeAimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftSecondToeIKCtrl.rpt" "LeftSecondToeAimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftSecondToeIKCtrl.pm" "LeftSecondToeAimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftSecondToeAimGrp_aimConstraint1.w0" "LeftSecondToeAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftSecondToeAimUpvec.wm" "LeftSecondToeAimGrp_aimConstraint1.wum";
connectAttr "LeftSecondToe1MTPos.t" "LeftSecondToe1CtrlPos.t";
connectAttr "LeftSecondToe1MTPos.r" "LeftSecondToe1CtrlPos.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftSecondToe1CtrlPos.v";
connectAttr "unitConversion40.o" "LeftSecondToe1CtrlOff.ry";
connectAttr "unitConversion48.o" "LeftSecondToe1CtrlOff.rz";
connectAttr "unitConversion52.o" "LeftSecondToe1CtrlOff.rx";
connectAttr "LeftSecondToe2MTPos.t" "LeftSecondToe2CtrlPos.t";
connectAttr "LeftSecondToe2MTPos.r" "LeftSecondToe2CtrlPos.r";
connectAttr "unitConversion41.o" "LeftSecondToe2CtrlOff.ry";
connectAttr "LeftSecondToe1MTPos_parentConstraint1.ctx" "LeftSecondToe1MTPos.tx"
		;
connectAttr "LeftSecondToe1MTPos_parentConstraint1.cty" "LeftSecondToe1MTPos.ty"
		;
connectAttr "LeftSecondToe1MTPos_parentConstraint1.ctz" "LeftSecondToe1MTPos.tz"
		;
connectAttr "LeftSecondToe1MTPos_parentConstraint1.crx" "LeftSecondToe1MTPos.rx"
		;
connectAttr "LeftSecondToe1MTPos_parentConstraint1.cry" "LeftSecondToe1MTPos.ry"
		;
connectAttr "LeftSecondToe1MTPos_parentConstraint1.crz" "LeftSecondToe1MTPos.rz"
		;
connectAttr "LeftSecondToe1MTPos.ro" "LeftSecondToe1MTPos_parentConstraint1.cro"
		;
connectAttr "LeftSecondToe1MTPos.pim" "LeftSecondToe1MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftSecondToe1MTPos.rp" "LeftSecondToe1MTPos_parentConstraint1.crp"
		;
connectAttr "LeftSecondToe1MTPos.rpt" "LeftSecondToe1MTPos_parentConstraint1.crt"
		;
connectAttr "LeftSecondToe1IKJnt.t" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftSecondToe1IKJnt.rp" "LeftSecondToe1MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftSecondToe1IKJnt.rpt" "LeftSecondToe1MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftSecondToe1IKJnt.r" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftSecondToe1IKJnt.ro" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftSecondToe1IKJnt.s" "LeftSecondToe1MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftSecondToe1IKJnt.pm" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftSecondToe1IKJnt.jo" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftSecondToe1IKJnt.ssc" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftSecondToe1IKJnt.is" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftSecondToe1MTPos_parentConstraint1.w0" "LeftSecondToe1MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftSecondToe2MTPos_parentConstraint1.ctx" "LeftSecondToe2MTPos.tx"
		;
connectAttr "LeftSecondToe2MTPos_parentConstraint1.cty" "LeftSecondToe2MTPos.ty"
		;
connectAttr "LeftSecondToe2MTPos_parentConstraint1.ctz" "LeftSecondToe2MTPos.tz"
		;
connectAttr "LeftSecondToe2MTPos_parentConstraint1.crx" "LeftSecondToe2MTPos.rx"
		;
connectAttr "LeftSecondToe2MTPos_parentConstraint1.cry" "LeftSecondToe2MTPos.ry"
		;
connectAttr "LeftSecondToe2MTPos_parentConstraint1.crz" "LeftSecondToe2MTPos.rz"
		;
connectAttr "LeftSecondToe2MTPos.ro" "LeftSecondToe2MTPos_parentConstraint1.cro"
		;
connectAttr "LeftSecondToe2MTPos.pim" "LeftSecondToe2MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftSecondToe2MTPos.rp" "LeftSecondToe2MTPos_parentConstraint1.crp"
		;
connectAttr "LeftSecondToe2MTPos.rpt" "LeftSecondToe2MTPos_parentConstraint1.crt"
		;
connectAttr "LeftSecondToe2IKJnt.t" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftSecondToe2IKJnt.rp" "LeftSecondToe2MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftSecondToe2IKJnt.rpt" "LeftSecondToe2MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftSecondToe2IKJnt.r" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftSecondToe2IKJnt.ro" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftSecondToe2IKJnt.s" "LeftSecondToe2MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftSecondToe2IKJnt.pm" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftSecondToe2IKJnt.jo" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftSecondToe2IKJnt.ssc" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftSecondToe2IKJnt.is" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftSecondToe2MTPos_parentConstraint1.w0" "LeftSecondToe2MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftSecondToe1IKJntGrp_parentConstraint1.ctx" "LeftSecondToe1IKJntGrp.tx"
		;
connectAttr "LeftSecondToe1IKJntGrp_parentConstraint1.cty" "LeftSecondToe1IKJntGrp.ty"
		;
connectAttr "LeftSecondToe1IKJntGrp_parentConstraint1.ctz" "LeftSecondToe1IKJntGrp.tz"
		;
connectAttr "LeftSecondToe1IKJntGrp_parentConstraint1.crx" "LeftSecondToe1IKJntGrp.rx"
		;
connectAttr "LeftSecondToe1IKJntGrp_parentConstraint1.cry" "LeftSecondToe1IKJntGrp.ry"
		;
connectAttr "LeftSecondToe1IKJntGrp_parentConstraint1.crz" "LeftSecondToe1IKJntGrp.rz"
		;
connectAttr "LeftSecondToe1IKJnt.s" "LeftSecondToe2IKJnt.is";
connectAttr "LeftSecondToe2IKJnt.s" "LeftSecondToe3IKJnt.is";
connectAttr "LeftSecondToe3IKJnt.tx" "effector62.tx";
connectAttr "LeftSecondToe3IKJnt.ty" "effector62.ty";
connectAttr "LeftSecondToe3IKJnt.tz" "effector62.tz";
connectAttr "LeftSecondToe1IKJntGrp.ro" "LeftSecondToe1IKJntGrp_parentConstraint1.cro"
		;
connectAttr "LeftSecondToe1IKJntGrp.pim" "LeftSecondToe1IKJntGrp_parentConstraint1.cpim"
		;
connectAttr "LeftSecondToe1IKJntGrp.rp" "LeftSecondToe1IKJntGrp_parentConstraint1.crp"
		;
connectAttr "LeftSecondToe1IKJntGrp.rpt" "LeftSecondToe1IKJntGrp_parentConstraint1.crt"
		;
connectAttr "LeftSecondToe1Ctrl.t" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftSecondToe1Ctrl.rp" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftSecondToe1Ctrl.rpt" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftSecondToe1Ctrl.r" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftSecondToe1Ctrl.ro" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftSecondToe1Ctrl.s" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftSecondToe1Ctrl.pm" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftSecondToe1IKJntGrp_parentConstraint1.w0" "LeftSecondToe1IKJntGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftSecondToeIKCtrlConsGrpDM.ot" "LeftSecondToeIKCtrlConsGrp.t";
connectAttr "LeftSecondToeIKCtrlConsGrpDM.or" "LeftSecondToeIKCtrlConsGrp.r";
connectAttr "LeftSecondToeIKCnn.tx" "LeftSecondToeIKCtrlCnnGrp.tx";
connectAttr "LeftSecondToeIKCnn.ty" "LeftSecondToeIKCtrlCnnGrp.ty";
connectAttr "LeftSecondToeIKCnn.tz" "LeftSecondToeIKCtrlCnnGrp.tz";
connectAttr "LeftSecondToeIKCnn.rx" "LeftSecondToeIKCtrlCnnGrp.rx";
connectAttr "LeftSecondToeIKCnn.ry" "LeftSecondToeIKCtrlCnnGrp.ry";
connectAttr "LeftSecondToeIKCnn.rz" "LeftSecondToeIKCtrlCnnGrp.rz";
connectAttr "LeftToeCtrl.IKCtrlVis" "LeftSecondToeIKCtrlShape.v";
connectAttr "LeftSecondToe1IKJnt.msg" "LeftSecondToeIKh.hsj";
connectAttr "effector62.hp" "LeftSecondToeIKh.hee";
connectAttr "ikRPsolver.msg" "LeftSecondToeIKh.hsv";
connectAttr "LeftSecondToeIKh_poleVectorConstraint1.ctx" "LeftSecondToeIKh.pvx";
connectAttr "LeftSecondToeIKh_poleVectorConstraint1.cty" "LeftSecondToeIKh.pvy";
connectAttr "LeftSecondToeIKh_poleVectorConstraint1.ctz" "LeftSecondToeIKh.pvz";
connectAttr "LeftSecondToeIKh.pim" "LeftSecondToeIKh_poleVectorConstraint1.cpim"
		;
connectAttr "LeftSecondToe1IKJnt.pm" "LeftSecondToeIKh_poleVectorConstraint1.ps"
		;
connectAttr "LeftSecondToe1IKJnt.t" "LeftSecondToeIKh_poleVectorConstraint1.crp"
		;
connectAttr "LeftSecondToePVPos.t" "LeftSecondToeIKh_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "LeftSecondToePVPos.rp" "LeftSecondToeIKh_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "LeftSecondToePVPos.rpt" "LeftSecondToeIKh_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "LeftSecondToePVPos.pm" "LeftSecondToeIKh_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "LeftSecondToeIKh_poleVectorConstraint1.w0" "LeftSecondToeIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftSecondToeIKCnnDM.ot" "LeftSecondToeIKCnn.t";
connectAttr "LeftSecondToeIKCnnDM.or" "LeftSecondToeIKCnn.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftThirdToe1CtrlShape.v";
connectAttr "LeftThirdToeAimGrp_aimConstraint1.crx" "LeftThirdToeAimGrp.rx";
connectAttr "LeftThirdToeAimGrp_aimConstraint1.cry" "LeftThirdToeAimGrp.ry";
connectAttr "LeftThirdToeAimGrp_aimConstraint1.crz" "LeftThirdToeAimGrp.rz";
connectAttr "LeftThirdToeAimGrp.pim" "LeftThirdToeAimGrp_aimConstraint1.cpim";
connectAttr "LeftThirdToeAimGrp.t" "LeftThirdToeAimGrp_aimConstraint1.ct";
connectAttr "LeftThirdToeAimGrp.rp" "LeftThirdToeAimGrp_aimConstraint1.crp";
connectAttr "LeftThirdToeAimGrp.rpt" "LeftThirdToeAimGrp_aimConstraint1.crt";
connectAttr "LeftThirdToeAimGrp.ro" "LeftThirdToeAimGrp_aimConstraint1.cro";
connectAttr "LeftThirdToeIKCtrl.t" "LeftThirdToeAimGrp_aimConstraint1.tg[0].tt";
connectAttr "LeftThirdToeIKCtrl.rp" "LeftThirdToeAimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftThirdToeIKCtrl.rpt" "LeftThirdToeAimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftThirdToeIKCtrl.pm" "LeftThirdToeAimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftThirdToeAimGrp_aimConstraint1.w0" "LeftThirdToeAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftThirdToeAimUpvec.wm" "LeftThirdToeAimGrp_aimConstraint1.wum";
connectAttr "LeftThirdToe1MTPos.t" "LeftThirdToe1CtrlPos.t";
connectAttr "LeftThirdToe1MTPos.r" "LeftThirdToe1CtrlPos.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftThirdToe1CtrlPos.v";
connectAttr "unitConversion42.o" "LeftThirdToe1CtrlOff.ry";
connectAttr "unitConversion49.o" "LeftThirdToe1CtrlOff.rz";
connectAttr "unitConversion53.o" "LeftThirdToe1CtrlOff.rx";
connectAttr "LeftThirdToe2MTPos.t" "LeftThirdToe2CtrlPos.t";
connectAttr "LeftThirdToe2MTPos.r" "LeftThirdToe2CtrlPos.r";
connectAttr "unitConversion43.o" "LeftThirdToe2CtrlOff.ry";
connectAttr "LeftThirdToe1MTPos_parentConstraint1.ctx" "LeftThirdToe1MTPos.tx";
connectAttr "LeftThirdToe1MTPos_parentConstraint1.cty" "LeftThirdToe1MTPos.ty";
connectAttr "LeftThirdToe1MTPos_parentConstraint1.ctz" "LeftThirdToe1MTPos.tz";
connectAttr "LeftThirdToe1MTPos_parentConstraint1.crx" "LeftThirdToe1MTPos.rx";
connectAttr "LeftThirdToe1MTPos_parentConstraint1.cry" "LeftThirdToe1MTPos.ry";
connectAttr "LeftThirdToe1MTPos_parentConstraint1.crz" "LeftThirdToe1MTPos.rz";
connectAttr "LeftThirdToe1MTPos.ro" "LeftThirdToe1MTPos_parentConstraint1.cro";
connectAttr "LeftThirdToe1MTPos.pim" "LeftThirdToe1MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftThirdToe1MTPos.rp" "LeftThirdToe1MTPos_parentConstraint1.crp";
connectAttr "LeftThirdToe1MTPos.rpt" "LeftThirdToe1MTPos_parentConstraint1.crt";
connectAttr "LeftThirdToe1IKJnt.t" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftThirdToe1IKJnt.rp" "LeftThirdToe1MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThirdToe1IKJnt.rpt" "LeftThirdToe1MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThirdToe1IKJnt.r" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftThirdToe1IKJnt.ro" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThirdToe1IKJnt.s" "LeftThirdToe1MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftThirdToe1IKJnt.pm" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThirdToe1IKJnt.jo" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftThirdToe1IKJnt.ssc" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftThirdToe1IKJnt.is" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftThirdToe1MTPos_parentConstraint1.w0" "LeftThirdToe1MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThirdToe2MTPos_parentConstraint1.ctx" "LeftThirdToe2MTPos.tx";
connectAttr "LeftThirdToe2MTPos_parentConstraint1.cty" "LeftThirdToe2MTPos.ty";
connectAttr "LeftThirdToe2MTPos_parentConstraint1.ctz" "LeftThirdToe2MTPos.tz";
connectAttr "LeftThirdToe2MTPos_parentConstraint1.crx" "LeftThirdToe2MTPos.rx";
connectAttr "LeftThirdToe2MTPos_parentConstraint1.cry" "LeftThirdToe2MTPos.ry";
connectAttr "LeftThirdToe2MTPos_parentConstraint1.crz" "LeftThirdToe2MTPos.rz";
connectAttr "LeftThirdToe2MTPos.ro" "LeftThirdToe2MTPos_parentConstraint1.cro";
connectAttr "LeftThirdToe2MTPos.pim" "LeftThirdToe2MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftThirdToe2MTPos.rp" "LeftThirdToe2MTPos_parentConstraint1.crp";
connectAttr "LeftThirdToe2MTPos.rpt" "LeftThirdToe2MTPos_parentConstraint1.crt";
connectAttr "LeftThirdToe2IKJnt.t" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftThirdToe2IKJnt.rp" "LeftThirdToe2MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThirdToe2IKJnt.rpt" "LeftThirdToe2MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThirdToe2IKJnt.r" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftThirdToe2IKJnt.ro" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThirdToe2IKJnt.s" "LeftThirdToe2MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftThirdToe2IKJnt.pm" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThirdToe2IKJnt.jo" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftThirdToe2IKJnt.ssc" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftThirdToe2IKJnt.is" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftThirdToe2MTPos_parentConstraint1.w0" "LeftThirdToe2MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThirdToe1IKJntGrp_parentConstraint1.ctx" "LeftThirdToe1IKJntGrp.tx"
		;
connectAttr "LeftThirdToe1IKJntGrp_parentConstraint1.cty" "LeftThirdToe1IKJntGrp.ty"
		;
connectAttr "LeftThirdToe1IKJntGrp_parentConstraint1.ctz" "LeftThirdToe1IKJntGrp.tz"
		;
connectAttr "LeftThirdToe1IKJntGrp_parentConstraint1.crx" "LeftThirdToe1IKJntGrp.rx"
		;
connectAttr "LeftThirdToe1IKJntGrp_parentConstraint1.cry" "LeftThirdToe1IKJntGrp.ry"
		;
connectAttr "LeftThirdToe1IKJntGrp_parentConstraint1.crz" "LeftThirdToe1IKJntGrp.rz"
		;
connectAttr "LeftThirdToe1IKJnt.s" "LeftThirdToe2IKJnt.is";
connectAttr "LeftThirdToe2IKJnt.s" "LeftThirdToe3IKJnt.is";
connectAttr "LeftThirdToe3IKJnt.tx" "effector63.tx";
connectAttr "LeftThirdToe3IKJnt.ty" "effector63.ty";
connectAttr "LeftThirdToe3IKJnt.tz" "effector63.tz";
connectAttr "LeftThirdToe1IKJntGrp.ro" "LeftThirdToe1IKJntGrp_parentConstraint1.cro"
		;
connectAttr "LeftThirdToe1IKJntGrp.pim" "LeftThirdToe1IKJntGrp_parentConstraint1.cpim"
		;
connectAttr "LeftThirdToe1IKJntGrp.rp" "LeftThirdToe1IKJntGrp_parentConstraint1.crp"
		;
connectAttr "LeftThirdToe1IKJntGrp.rpt" "LeftThirdToe1IKJntGrp_parentConstraint1.crt"
		;
connectAttr "LeftThirdToe1Ctrl.t" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftThirdToe1Ctrl.rp" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThirdToe1Ctrl.rpt" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThirdToe1Ctrl.r" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftThirdToe1Ctrl.ro" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThirdToe1Ctrl.s" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftThirdToe1Ctrl.pm" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThirdToe1IKJntGrp_parentConstraint1.w0" "LeftThirdToe1IKJntGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThirdToeIKCtrlConsGrpDM.ot" "LeftThirdToeIKCtrlConsGrp.t";
connectAttr "LeftThirdToeIKCtrlConsGrpDM.or" "LeftThirdToeIKCtrlConsGrp.r";
connectAttr "LeftThirdToeIKCnn.tx" "LeftThirdToeIKCtrlCnnGrp.tx";
connectAttr "LeftThirdToeIKCnn.ty" "LeftThirdToeIKCtrlCnnGrp.ty";
connectAttr "LeftThirdToeIKCnn.tz" "LeftThirdToeIKCtrlCnnGrp.tz";
connectAttr "LeftThirdToeIKCnn.rx" "LeftThirdToeIKCtrlCnnGrp.rx";
connectAttr "LeftThirdToeIKCnn.ry" "LeftThirdToeIKCtrlCnnGrp.ry";
connectAttr "LeftThirdToeIKCnn.rz" "LeftThirdToeIKCtrlCnnGrp.rz";
connectAttr "LeftToeCtrl.IKCtrlVis" "LeftThirdToeIKCtrlShape.v";
connectAttr "LeftThirdToe1IKJnt.msg" "LeftThirdToeIKh.hsj";
connectAttr "effector63.hp" "LeftThirdToeIKh.hee";
connectAttr "ikRPsolver.msg" "LeftThirdToeIKh.hsv";
connectAttr "LeftThirdToeIKh_poleVectorConstraint1.ctx" "LeftThirdToeIKh.pvx";
connectAttr "LeftThirdToeIKh_poleVectorConstraint1.cty" "LeftThirdToeIKh.pvy";
connectAttr "LeftThirdToeIKh_poleVectorConstraint1.ctz" "LeftThirdToeIKh.pvz";
connectAttr "LeftThirdToeIKh.pim" "LeftThirdToeIKh_poleVectorConstraint1.cpim";
connectAttr "LeftThirdToe1IKJnt.pm" "LeftThirdToeIKh_poleVectorConstraint1.ps";
connectAttr "LeftThirdToe1IKJnt.t" "LeftThirdToeIKh_poleVectorConstraint1.crp";
connectAttr "LeftThirdToePVPos.t" "LeftThirdToeIKh_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "LeftThirdToePVPos.rp" "LeftThirdToeIKh_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "LeftThirdToePVPos.rpt" "LeftThirdToeIKh_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "LeftThirdToePVPos.pm" "LeftThirdToeIKh_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "LeftThirdToeIKh_poleVectorConstraint1.w0" "LeftThirdToeIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftThirdToeIKCnnDM.ot" "LeftThirdToeIKCnn.t";
connectAttr "LeftThirdToeIKCnnDM.or" "LeftThirdToeIKCnn.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftFourthToe1CtrlShape.v";
connectAttr "LeftFourthToeAimGrp_aimConstraint1.crx" "LeftFourthToeAimGrp.rx";
connectAttr "LeftFourthToeAimGrp_aimConstraint1.cry" "LeftFourthToeAimGrp.ry";
connectAttr "LeftFourthToeAimGrp_aimConstraint1.crz" "LeftFourthToeAimGrp.rz";
connectAttr "LeftFourthToeAimGrp.pim" "LeftFourthToeAimGrp_aimConstraint1.cpim";
connectAttr "LeftFourthToeAimGrp.t" "LeftFourthToeAimGrp_aimConstraint1.ct";
connectAttr "LeftFourthToeAimGrp.rp" "LeftFourthToeAimGrp_aimConstraint1.crp";
connectAttr "LeftFourthToeAimGrp.rpt" "LeftFourthToeAimGrp_aimConstraint1.crt";
connectAttr "LeftFourthToeAimGrp.ro" "LeftFourthToeAimGrp_aimConstraint1.cro";
connectAttr "LeftFourthToeIKCtrl.t" "LeftFourthToeAimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftFourthToeIKCtrl.rp" "LeftFourthToeAimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftFourthToeIKCtrl.rpt" "LeftFourthToeAimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftFourthToeIKCtrl.pm" "LeftFourthToeAimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftFourthToeAimGrp_aimConstraint1.w0" "LeftFourthToeAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftFourthToeAimUpvec.wm" "LeftFourthToeAimGrp_aimConstraint1.wum";
connectAttr "LeftFourthToe1MTPos.t" "LeftFourthToe1CtrlPos.t";
connectAttr "LeftFourthToe1MTPos.r" "LeftFourthToe1CtrlPos.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftFourthToe1CtrlPos.v";
connectAttr "unitConversion44.o" "LeftFourthToe1CtrlOff.ry";
connectAttr "unitConversion50.o" "LeftFourthToe1CtrlOff.rz";
connectAttr "unitConversion54.o" "LeftFourthToe1CtrlOff.rx";
connectAttr "LeftFourthToe2MTPos.t" "LeftFourthToe2CtrlPos.t";
connectAttr "LeftFourthToe2MTPos.r" "LeftFourthToe2CtrlPos.r";
connectAttr "unitConversion45.o" "LeftFourthToe2CtrlOff.ry";
connectAttr "LeftFourthToe1MTPos_parentConstraint1.ctx" "LeftFourthToe1MTPos.tx"
		;
connectAttr "LeftFourthToe1MTPos_parentConstraint1.cty" "LeftFourthToe1MTPos.ty"
		;
connectAttr "LeftFourthToe1MTPos_parentConstraint1.ctz" "LeftFourthToe1MTPos.tz"
		;
connectAttr "LeftFourthToe1MTPos_parentConstraint1.crx" "LeftFourthToe1MTPos.rx"
		;
connectAttr "LeftFourthToe1MTPos_parentConstraint1.cry" "LeftFourthToe1MTPos.ry"
		;
connectAttr "LeftFourthToe1MTPos_parentConstraint1.crz" "LeftFourthToe1MTPos.rz"
		;
connectAttr "LeftFourthToe1MTPos.ro" "LeftFourthToe1MTPos_parentConstraint1.cro"
		;
connectAttr "LeftFourthToe1MTPos.pim" "LeftFourthToe1MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftFourthToe1MTPos.rp" "LeftFourthToe1MTPos_parentConstraint1.crp"
		;
connectAttr "LeftFourthToe1MTPos.rpt" "LeftFourthToe1MTPos_parentConstraint1.crt"
		;
connectAttr "LeftFourthToe1IKJnt.t" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftFourthToe1IKJnt.rp" "LeftFourthToe1MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftFourthToe1IKJnt.rpt" "LeftFourthToe1MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftFourthToe1IKJnt.r" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftFourthToe1IKJnt.ro" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftFourthToe1IKJnt.s" "LeftFourthToe1MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftFourthToe1IKJnt.pm" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftFourthToe1IKJnt.jo" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftFourthToe1IKJnt.ssc" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftFourthToe1IKJnt.is" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftFourthToe1MTPos_parentConstraint1.w0" "LeftFourthToe1MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftFourthToe2MTPos_parentConstraint1.ctx" "LeftFourthToe2MTPos.tx"
		;
connectAttr "LeftFourthToe2MTPos_parentConstraint1.cty" "LeftFourthToe2MTPos.ty"
		;
connectAttr "LeftFourthToe2MTPos_parentConstraint1.ctz" "LeftFourthToe2MTPos.tz"
		;
connectAttr "LeftFourthToe2MTPos_parentConstraint1.crx" "LeftFourthToe2MTPos.rx"
		;
connectAttr "LeftFourthToe2MTPos_parentConstraint1.cry" "LeftFourthToe2MTPos.ry"
		;
connectAttr "LeftFourthToe2MTPos_parentConstraint1.crz" "LeftFourthToe2MTPos.rz"
		;
connectAttr "LeftFourthToe2MTPos.ro" "LeftFourthToe2MTPos_parentConstraint1.cro"
		;
connectAttr "LeftFourthToe2MTPos.pim" "LeftFourthToe2MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftFourthToe2MTPos.rp" "LeftFourthToe2MTPos_parentConstraint1.crp"
		;
connectAttr "LeftFourthToe2MTPos.rpt" "LeftFourthToe2MTPos_parentConstraint1.crt"
		;
connectAttr "LeftFourthToe2IKJnt.t" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftFourthToe2IKJnt.rp" "LeftFourthToe2MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftFourthToe2IKJnt.rpt" "LeftFourthToe2MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftFourthToe2IKJnt.r" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftFourthToe2IKJnt.ro" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftFourthToe2IKJnt.s" "LeftFourthToe2MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftFourthToe2IKJnt.pm" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftFourthToe2IKJnt.jo" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftFourthToe2IKJnt.ssc" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftFourthToe2IKJnt.is" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftFourthToe2MTPos_parentConstraint1.w0" "LeftFourthToe2MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftFourthToe1IKJntGrp_parentConstraint1.ctx" "LeftFourthToe1IKJntGrp.tx"
		;
connectAttr "LeftFourthToe1IKJntGrp_parentConstraint1.cty" "LeftFourthToe1IKJntGrp.ty"
		;
connectAttr "LeftFourthToe1IKJntGrp_parentConstraint1.ctz" "LeftFourthToe1IKJntGrp.tz"
		;
connectAttr "LeftFourthToe1IKJntGrp_parentConstraint1.crx" "LeftFourthToe1IKJntGrp.rx"
		;
connectAttr "LeftFourthToe1IKJntGrp_parentConstraint1.cry" "LeftFourthToe1IKJntGrp.ry"
		;
connectAttr "LeftFourthToe1IKJntGrp_parentConstraint1.crz" "LeftFourthToe1IKJntGrp.rz"
		;
connectAttr "LeftFourthToe1IKJnt.s" "LeftFourthToe2IKJnt.is";
connectAttr "LeftFourthToe2IKJnt.s" "LeftFourthToe3IKJnt.is";
connectAttr "LeftFourthToe3IKJnt.tx" "effector64.tx";
connectAttr "LeftFourthToe3IKJnt.ty" "effector64.ty";
connectAttr "LeftFourthToe3IKJnt.tz" "effector64.tz";
connectAttr "LeftFourthToe1IKJntGrp.ro" "LeftFourthToe1IKJntGrp_parentConstraint1.cro"
		;
connectAttr "LeftFourthToe1IKJntGrp.pim" "LeftFourthToe1IKJntGrp_parentConstraint1.cpim"
		;
connectAttr "LeftFourthToe1IKJntGrp.rp" "LeftFourthToe1IKJntGrp_parentConstraint1.crp"
		;
connectAttr "LeftFourthToe1IKJntGrp.rpt" "LeftFourthToe1IKJntGrp_parentConstraint1.crt"
		;
connectAttr "LeftFourthToe1Ctrl.t" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftFourthToe1Ctrl.rp" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftFourthToe1Ctrl.rpt" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftFourthToe1Ctrl.r" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftFourthToe1Ctrl.ro" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftFourthToe1Ctrl.s" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftFourthToe1Ctrl.pm" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftFourthToe1IKJntGrp_parentConstraint1.w0" "LeftFourthToe1IKJntGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftFourthToeIKCtrlConsGrpDM.ot" "LeftFourthToeIKCtrlConsGrp.t";
connectAttr "LeftFourthToeIKCtrlConsGrpDM.or" "LeftFourthToeIKCtrlConsGrp.r";
connectAttr "LeftFourthToeIKCnn.tx" "LeftFourthToeIKCtrlCnnGrp.tx";
connectAttr "LeftFourthToeIKCnn.ty" "LeftFourthToeIKCtrlCnnGrp.ty";
connectAttr "LeftFourthToeIKCnn.tz" "LeftFourthToeIKCtrlCnnGrp.tz";
connectAttr "LeftFourthToeIKCnn.rx" "LeftFourthToeIKCtrlCnnGrp.rx";
connectAttr "LeftFourthToeIKCnn.ry" "LeftFourthToeIKCtrlCnnGrp.ry";
connectAttr "LeftFourthToeIKCnn.rz" "LeftFourthToeIKCtrlCnnGrp.rz";
connectAttr "LeftToeCtrl.IKCtrlVis" "LeftFourthToeIKCtrlShape.v";
connectAttr "LeftFourthToe1IKJnt.msg" "LeftFourthToeIKh.hsj";
connectAttr "effector64.hp" "LeftFourthToeIKh.hee";
connectAttr "ikRPsolver.msg" "LeftFourthToeIKh.hsv";
connectAttr "LeftFourthToeIKh_poleVectorConstraint1.ctx" "LeftFourthToeIKh.pvx";
connectAttr "LeftFourthToeIKh_poleVectorConstraint1.cty" "LeftFourthToeIKh.pvy";
connectAttr "LeftFourthToeIKh_poleVectorConstraint1.ctz" "LeftFourthToeIKh.pvz";
connectAttr "LeftFourthToeIKh.pim" "LeftFourthToeIKh_poleVectorConstraint1.cpim"
		;
connectAttr "LeftFourthToe1IKJnt.pm" "LeftFourthToeIKh_poleVectorConstraint1.ps"
		;
connectAttr "LeftFourthToe1IKJnt.t" "LeftFourthToeIKh_poleVectorConstraint1.crp"
		;
connectAttr "LeftFourthToePVPos.t" "LeftFourthToeIKh_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "LeftFourthToePVPos.rp" "LeftFourthToeIKh_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "LeftFourthToePVPos.rpt" "LeftFourthToeIKh_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "LeftFourthToePVPos.pm" "LeftFourthToeIKh_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "LeftFourthToeIKh_poleVectorConstraint1.w0" "LeftFourthToeIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftFourthToeIKCnnDM.ot" "LeftFourthToeIKCnn.t";
connectAttr "LeftFourthToeIKCnnDM.or" "LeftFourthToeIKCnn.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftLittleToe1CtrlShape.v";
connectAttr "LeftLittleToeAimGrp_aimConstraint1.crx" "LeftLittleToeAimGrp.rx";
connectAttr "LeftLittleToeAimGrp_aimConstraint1.cry" "LeftLittleToeAimGrp.ry";
connectAttr "LeftLittleToeAimGrp_aimConstraint1.crz" "LeftLittleToeAimGrp.rz";
connectAttr "LeftLittleToeAimGrp.pim" "LeftLittleToeAimGrp_aimConstraint1.cpim";
connectAttr "LeftLittleToeAimGrp.t" "LeftLittleToeAimGrp_aimConstraint1.ct";
connectAttr "LeftLittleToeAimGrp.rp" "LeftLittleToeAimGrp_aimConstraint1.crp";
connectAttr "LeftLittleToeAimGrp.rpt" "LeftLittleToeAimGrp_aimConstraint1.crt";
connectAttr "LeftLittleToeAimGrp.ro" "LeftLittleToeAimGrp_aimConstraint1.cro";
connectAttr "LeftLittleToeIKCtrl.t" "LeftLittleToeAimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftLittleToeIKCtrl.rp" "LeftLittleToeAimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftLittleToeIKCtrl.rpt" "LeftLittleToeAimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftLittleToeIKCtrl.pm" "LeftLittleToeAimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftLittleToeAimGrp_aimConstraint1.w0" "LeftLittleToeAimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftLittleToeAimUpvec.wm" "LeftLittleToeAimGrp_aimConstraint1.wum";
connectAttr "LeftLittleToe1MTPos.t" "LeftLittleToe1CtrlPos.t";
connectAttr "LeftLittleToe1MTPos.r" "LeftLittleToe1CtrlPos.r";
connectAttr "LeftToeCtrl.FKCtrlVis" "LeftLittleToe1CtrlPos.v";
connectAttr "unitConversion46.o" "LeftLittleToe1CtrlOff.ry";
connectAttr "unitConversion51.o" "LeftLittleToe1CtrlOff.rz";
connectAttr "unitConversion55.o" "LeftLittleToe1CtrlOff.rx";
connectAttr "LeftLittleToe2MTPos.t" "LeftLittleToe2CtrlPos.t";
connectAttr "LeftLittleToe2MTPos.r" "LeftLittleToe2CtrlPos.r";
connectAttr "unitConversion47.o" "LeftLittleToe2CtrlOff.ry";
connectAttr "LeftLittleToe1MTPos_parentConstraint1.ctx" "LeftLittleToe1MTPos.tx"
		;
connectAttr "LeftLittleToe1MTPos_parentConstraint1.cty" "LeftLittleToe1MTPos.ty"
		;
connectAttr "LeftLittleToe1MTPos_parentConstraint1.ctz" "LeftLittleToe1MTPos.tz"
		;
connectAttr "LeftLittleToe1MTPos_parentConstraint1.crx" "LeftLittleToe1MTPos.rx"
		;
connectAttr "LeftLittleToe1MTPos_parentConstraint1.cry" "LeftLittleToe1MTPos.ry"
		;
connectAttr "LeftLittleToe1MTPos_parentConstraint1.crz" "LeftLittleToe1MTPos.rz"
		;
connectAttr "LeftLittleToe1MTPos.ro" "LeftLittleToe1MTPos_parentConstraint1.cro"
		;
connectAttr "LeftLittleToe1MTPos.pim" "LeftLittleToe1MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftLittleToe1MTPos.rp" "LeftLittleToe1MTPos_parentConstraint1.crp"
		;
connectAttr "LeftLittleToe1MTPos.rpt" "LeftLittleToe1MTPos_parentConstraint1.crt"
		;
connectAttr "LeftLittleToe1IKJnt.t" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftLittleToe1IKJnt.rp" "LeftLittleToe1MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftLittleToe1IKJnt.rpt" "LeftLittleToe1MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftLittleToe1IKJnt.r" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftLittleToe1IKJnt.ro" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftLittleToe1IKJnt.s" "LeftLittleToe1MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftLittleToe1IKJnt.pm" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftLittleToe1IKJnt.jo" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftLittleToe1IKJnt.ssc" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftLittleToe1IKJnt.is" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftLittleToe1MTPos_parentConstraint1.w0" "LeftLittleToe1MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLittleToe2MTPos_parentConstraint1.ctx" "LeftLittleToe2MTPos.tx"
		;
connectAttr "LeftLittleToe2MTPos_parentConstraint1.cty" "LeftLittleToe2MTPos.ty"
		;
connectAttr "LeftLittleToe2MTPos_parentConstraint1.ctz" "LeftLittleToe2MTPos.tz"
		;
connectAttr "LeftLittleToe2MTPos_parentConstraint1.crx" "LeftLittleToe2MTPos.rx"
		;
connectAttr "LeftLittleToe2MTPos_parentConstraint1.cry" "LeftLittleToe2MTPos.ry"
		;
connectAttr "LeftLittleToe2MTPos_parentConstraint1.crz" "LeftLittleToe2MTPos.rz"
		;
connectAttr "LeftLittleToe2MTPos.ro" "LeftLittleToe2MTPos_parentConstraint1.cro"
		;
connectAttr "LeftLittleToe2MTPos.pim" "LeftLittleToe2MTPos_parentConstraint1.cpim"
		;
connectAttr "LeftLittleToe2MTPos.rp" "LeftLittleToe2MTPos_parentConstraint1.crp"
		;
connectAttr "LeftLittleToe2MTPos.rpt" "LeftLittleToe2MTPos_parentConstraint1.crt"
		;
connectAttr "LeftLittleToe2IKJnt.t" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftLittleToe2IKJnt.rp" "LeftLittleToe2MTPos_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftLittleToe2IKJnt.rpt" "LeftLittleToe2MTPos_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftLittleToe2IKJnt.r" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftLittleToe2IKJnt.ro" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftLittleToe2IKJnt.s" "LeftLittleToe2MTPos_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftLittleToe2IKJnt.pm" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftLittleToe2IKJnt.jo" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftLittleToe2IKJnt.ssc" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tsc"
		;
connectAttr "LeftLittleToe2IKJnt.is" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tis"
		;
connectAttr "LeftLittleToe2MTPos_parentConstraint1.w0" "LeftLittleToe2MTPos_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLittleToe1IKJntGrp_parentConstraint1.ctx" "LeftLittleToe1IKJntGrp.tx"
		;
connectAttr "LeftLittleToe1IKJntGrp_parentConstraint1.cty" "LeftLittleToe1IKJntGrp.ty"
		;
connectAttr "LeftLittleToe1IKJntGrp_parentConstraint1.ctz" "LeftLittleToe1IKJntGrp.tz"
		;
connectAttr "LeftLittleToe1IKJntGrp_parentConstraint1.crx" "LeftLittleToe1IKJntGrp.rx"
		;
connectAttr "LeftLittleToe1IKJntGrp_parentConstraint1.cry" "LeftLittleToe1IKJntGrp.ry"
		;
connectAttr "LeftLittleToe1IKJntGrp_parentConstraint1.crz" "LeftLittleToe1IKJntGrp.rz"
		;
connectAttr "LeftLittleToe1IKJnt.s" "LeftLittleToe2IKJnt.is";
connectAttr "LeftLittleToe2IKJnt.s" "LeftLittleToe3IKJnt.is";
connectAttr "LeftLittleToe3IKJnt.tx" "effector65.tx";
connectAttr "LeftLittleToe3IKJnt.ty" "effector65.ty";
connectAttr "LeftLittleToe3IKJnt.tz" "effector65.tz";
connectAttr "LeftLittleToe1IKJntGrp.ro" "LeftLittleToe1IKJntGrp_parentConstraint1.cro"
		;
connectAttr "LeftLittleToe1IKJntGrp.pim" "LeftLittleToe1IKJntGrp_parentConstraint1.cpim"
		;
connectAttr "LeftLittleToe1IKJntGrp.rp" "LeftLittleToe1IKJntGrp_parentConstraint1.crp"
		;
connectAttr "LeftLittleToe1IKJntGrp.rpt" "LeftLittleToe1IKJntGrp_parentConstraint1.crt"
		;
connectAttr "LeftLittleToe1Ctrl.t" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftLittleToe1Ctrl.rp" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftLittleToe1Ctrl.rpt" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftLittleToe1Ctrl.r" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftLittleToe1Ctrl.ro" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftLittleToe1Ctrl.s" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftLittleToe1Ctrl.pm" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftLittleToe1IKJntGrp_parentConstraint1.w0" "LeftLittleToe1IKJntGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftLittleToeIKCtrlConsGrpDM.ot" "LeftLittleToeIKCtrlConsGrp.t";
connectAttr "LeftLittleToeIKCtrlConsGrpDM.or" "LeftLittleToeIKCtrlConsGrp.r";
connectAttr "LeftLittleToeIKCnn.tx" "LeftLittleToeIKCtrlCnnGrp.tx";
connectAttr "LeftLittleToeIKCnn.ty" "LeftLittleToeIKCtrlCnnGrp.ty";
connectAttr "LeftLittleToeIKCnn.tz" "LeftLittleToeIKCtrlCnnGrp.tz";
connectAttr "LeftLittleToeIKCnn.rx" "LeftLittleToeIKCtrlCnnGrp.rx";
connectAttr "LeftLittleToeIKCnn.ry" "LeftLittleToeIKCtrlCnnGrp.ry";
connectAttr "LeftLittleToeIKCnn.rz" "LeftLittleToeIKCtrlCnnGrp.rz";
connectAttr "LeftToeCtrl.IKCtrlVis" "LeftLittleToeIKCtrlShape.v";
connectAttr "LeftLittleToe1IKJnt.msg" "LeftLittleToeIKh.hsj";
connectAttr "effector65.hp" "LeftLittleToeIKh.hee";
connectAttr "ikRPsolver.msg" "LeftLittleToeIKh.hsv";
connectAttr "LeftLittleToeIKh_poleVectorConstraint1.ctx" "LeftLittleToeIKh.pvx";
connectAttr "LeftLittleToeIKh_poleVectorConstraint1.cty" "LeftLittleToeIKh.pvy";
connectAttr "LeftLittleToeIKh_poleVectorConstraint1.ctz" "LeftLittleToeIKh.pvz";
connectAttr "LeftLittleToeIKh.pim" "LeftLittleToeIKh_poleVectorConstraint1.cpim"
		;
connectAttr "LeftLittleToe1IKJnt.pm" "LeftLittleToeIKh_poleVectorConstraint1.ps"
		;
connectAttr "LeftLittleToe1IKJnt.t" "LeftLittleToeIKh_poleVectorConstraint1.crp"
		;
connectAttr "LeftLittleToePVPos.t" "LeftLittleToeIKh_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "LeftLittleToePVPos.rp" "LeftLittleToeIKh_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "LeftLittleToePVPos.rpt" "LeftLittleToeIKh_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "LeftLittleToePVPos.pm" "LeftLittleToeIKh_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "LeftLittleToeIKh_poleVectorConstraint1.w0" "LeftLittleToeIKh_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "LeftLittleToeIKCnnDM.ot" "LeftLittleToeIKCnn.t";
connectAttr "LeftLittleToeIKCnnDM.or" "LeftLittleToeIKCnn.r";
connectAttr "LeftAnkleDrvJntTrsBC.op" "LeftAnkleDrvJnt.t";
connectAttr "LeftAnkleDrvJntRotPB.orx" "LeftAnkleDrvJnt.rx";
connectAttr "LeftAnkleDrvJntRotPB.ory" "LeftAnkleDrvJnt.ry";
connectAttr "LeftAnkleDrvJntRotPB.orz" "LeftAnkleDrvJnt.rz";
connectAttr "LeftBallDrvJntTrsBC.op" "LeftBallDrvJnt.t";
connectAttr "LeftBallDrvJntRotPB.orx" "LeftBallDrvJnt.rx";
connectAttr "LeftBallDrvJntRotPB.ory" "LeftBallDrvJnt.ry";
connectAttr "LeftBallDrvJntRotPB.orz" "LeftBallDrvJnt.rz";
connectAttr "LeftAnkleDrvJnt.s" "LeftBallDrvJnt.is";
connectAttr "LeftAnkleFKJnt.s" "LeftBallFKJnt.is";
connectAttr "LeftBallFKJntDM.ot" "LeftBallFKJnt.t";
connectAttr "LeftBallFKJntQE.ort" "LeftBallFKJnt.r";
connectAttr "LeftAnkleIKJnt.s" "LeftBallIKJnt.is";
connectAttr "LeftBallIKJnt.s" "LeftToeIKJnt.is";
connectAttr "LeftToeIKJnt.tx" "effector118.tx";
connectAttr "LeftToeIKJnt.ty" "effector118.ty";
connectAttr "LeftToeIKJnt.tz" "effector118.tz";
connectAttr "LeftBallIKJnt.tx" "effector117.tx";
connectAttr "LeftBallIKJnt.ty" "effector117.ty";
connectAttr "LeftBallIKJnt.tz" "effector117.tz";
connectAttr "LeftFootShCareVecGrpDM.ot" "LeftFootShCareVecGrp.t";
connectAttr "LeftFootShCareVecGrpDM.or" "LeftFootShCareVecGrp.r";
connectAttr "LeftFootShCareVecPosPB.otx" "LeftFootShCareVecPos.tx";
connectAttr "LeftFootShCareVecPosPB.oty" "LeftFootShCareVecPos.ty";
connectAttr "LeftFootShCareVecPosPB.otz" "LeftFootShCareVecPos.tz";
connectAttr "LeftLegIKFKCtrlGrpMM.o" "LeftLegIKFKCtrlGrpDM.imat";
connectAttr "LeftLeg4DrvJnt.wm" "LeftLegIKFKCtrlGrpMM.i[2]";
connectAttr "LeftLegIKFKCtrlGrp.pim" "LeftLegIKFKCtrlGrpMM.i[3]";
connectAttr "LeftLegIKFKCtrl.AutoHideIKFK" "LeftLegIKFKCD.ft";
connectAttr "LegIKFKREV.ix" "LeftLegIKFKCD.cfr";
connectAttr "LegIKFKREV.ox" "LeftLegIKFKCD.cfg";
connectAttr "LeftLegIKFKCtrl.IKFK" "LegIKFKREV.ix";
connectAttr "LeftLegIKPosMM.o" "LeftLegIKPosDM.imat";
connectAttr "LeftIKFootRollPos.wm" "LeftLegIKPosMM.i[2]";
connectAttr "LeftLegIKPos.pim" "LeftLegIKPosMM.i[3]";
connectAttr "LeftLegIKCtrl.InOut" "LeftFootInRotPosRotXAU.i";
connectAttr "LeftLegIKCtrl.InOut" "LeftFootOutRotPosRotXAU.i";
connectAttr "LeftLegIKCtrl.HeelPivot" "LeftHeelRollPivPosRotZAU.i";
connectAttr "LeftLegIKCtrl.FootRoll" "LeftHeelRollPivPosRotYAU.i";
connectAttr "LeftLegIKCtrl.ToeRoll" "LeftToeRollPivPosRotYAU.i";
connectAttr "LeftLegIKCtrl.ToePivot" "LeftToeRollPivPosRotZAU.i";
connectAttr "LeftLegIKCtrl.BallPivot" "LeftBallPivPosRotZAU.i";
connectAttr "LeftLegIKCtrl.FootRoll" "LeftFootRollPosRotYAU.i";
connectAttr "LeftLegIKCtrl.BallRoll" "LeftBallRollPosRotYAU.i";
connectAttr "LeftLegPoleVectorCtrl.Follow" "LeftLegPoleVectorCtrlGrp_parentConstraint2_LeftLegPVAutoSpaceAU.i"
		;
connectAttr "LeftHeelIKGrpMM.o" "LeftHeelIKGrpDM.imat";
connectAttr "LeftLegIKPos.wm" "LeftHeelIKGrpMM.i[2]";
connectAttr "LeftHeelIKGrp.pim" "LeftHeelIKGrpMM.i[3]";
connectAttr "LeftLegUpArcMM.o" "LeftLegUpArcDM.imat";
connectAttr "LeftLegUpArcCM.omat" "LeftLegUpArcMM.i[0]";
connectAttr "LeftLegUpArcCtrlGrp.pim" "LeftLegUpArcMM.i[1]";
connectAttr "LeftLegUpArcPC.p" "LeftLegUpArcCM.it";
connectAttr "LeftLegArcBS.og[0]" "LeftLegUpArcPC.ic";
connectAttr "LeftLegArcBSGroupParts.og" "LeftLegArcBS.ip[0].ig";
connectAttr "LeftLegArcBSGroupId.id" "LeftLegArcBS.ip[0].gi";
connectAttr "LeftLegArcBSGroupParts1.og" "LeftLegArcBS.ip[1].ig";
connectAttr "LeftLegArcBSGroupId1.id" "LeftLegArcBS.ip[1].gi";
connectAttr "LeftLegUpArcCrvShape.ws" "LeftLegArcBS.it[0].itg[0].iti[6000].igt";
connectAttr "LeftLegDnArcCrvShape.ws" "LeftLegArcBS.it[1].itg[0].iti[6000].igt";
connectAttr "LeftLegArcMDL.o" "LeftLegArcBS.w[0]";
connectAttr "LeftLegArcBSGroupId.msg" "LeftLegArcBSSet.gn" -na;
connectAttr "LeftLegArcBSGroupId1.msg" "LeftLegArcBSSet.gn" -na;
connectAttr "LeftLegUpIKCrvShape.iog.og[2]" "LeftLegArcBSSet.dsm" -na;
connectAttr "LeftLegDnIKCrvShape.iog.og[2]" "LeftLegArcBSSet.dsm" -na;
connectAttr "LeftLegArcBS.msg" "LeftLegArcBSSet.ub[0]";
connectAttr "LeftLegUpIKCrvRebuild.oc" "LeftLegArcBSGroupParts.ig";
connectAttr "LeftLegArcBSGroupId.id" "LeftLegArcBSGroupParts.gi";
connectAttr "LeftLegUpIKCrvShapeOrig.ws" "LeftLegUpIKCrvRebuild.ic";
connectAttr "LeftLegDnIKCrvRebuild.oc" "LeftLegArcBSGroupParts1.ig";
connectAttr "LeftLegArcBSGroupId1.id" "LeftLegArcBSGroupParts1.gi";
connectAttr "LeftLegDnIKCrvShapeOrig.ws" "LeftLegDnIKCrvRebuild.ic";
connectAttr "LeftLegIKFKCtrl.Arc" "LeftLegArcMDL.i1";
connectAttr "LeftLeg1CsGroupParts.og" "LeftLeg1Cs.ip[0].ig";
connectAttr "LeftLeg1CsGroupId.id" "LeftLeg1Cs.ip[0].gi";
connectAttr "LeftLeg1CsHandle.wm" "LeftLeg1Cs.ma";
connectAttr "LeftLeg1CsHandleShape.x" "LeftLeg1Cs.x";
connectAttr "LeftLeg1CsHandleZeroMtx.wim" "LeftLeg1Cs.pm";
connectAttr "LeftLegUpIKCrv.wm" "LeftLeg1Cs.gm[0]";
connectAttr "LeftLeg1CsGroupId.msg" "LeftLeg1CsSet.gn" -na;
connectAttr "LeftLegUpIKCrvShape.iog.og[4]" "LeftLeg1CsSet.dsm" -na;
connectAttr "LeftLeg1Cs.msg" "LeftLeg1CsSet.ub[0]";
connectAttr "LeftLegArcBS.og[0]" "LeftLeg1CsGroupParts.ig";
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
connectAttr "LeftLegDnIKCrvShape.iog.og[4]" "LeftLeg2DnCsSet.dsm" -na;
connectAttr "LeftLeg2DnCs.msg" "LeftLeg2DnCsSet.ub[0]";
connectAttr "LeftLegArcBS.og[1]" "LeftLeg2DnCsGroupParts.ig";
connectAttr "LeftLeg2DnCsGroupId.id" "LeftLeg2DnCsGroupParts.gi";
connectAttr "LeftLegDnArcMM.o" "LeftLegDnArcDM.imat";
connectAttr "LeftLegDnArcCM.omat" "LeftLegDnArcMM.i[0]";
connectAttr "LeftLegDnArcCtrlGrp.pim" "LeftLegDnArcMM.i[1]";
connectAttr "LeftLegDnArcPC.p" "LeftLegDnArcCM.it";
connectAttr "LeftLegArcBS.og[1]" "LeftLegDnArcPC.ic";
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
connectAttr "LeftLegSysConstGrpMM.o" "LeftLegSysConstGrpDM.imat";
connectAttr "LeftLegRootCtrl.wm" "LeftLegSysConstGrpMM.i[2]";
connectAttr "LeftLegSysConstGrp.pim" "LeftLegSysConstGrpMM.i[3]";
connectAttr "LeftLegSquashMDL.o" "LeftLeg1SquashBA.ab";
connectAttr "LeftLegSquashPowMD.ox" "LeftLeg1SquashBA.i[1]";
connectAttr "LeftLegIKCtrl.Squash" "LeftLegSquashMDL.i1";
connectAttr "LeftLegUpStretchFilterMDL.o" "LeftLegSquashPowMD.i1x";
connectAttr "LeftLegDnStretchFilterMDL.o" "LeftLegSquashPowMD.i1y";
connectAttr "LeftLegExAllLenCD.ocr" "LeftLegSquashPowMD.i1z";
connectAttr "LeftLegUpStretchBA.o" "LeftLegUpStretchFilterMDL.i1";
connectAttr "LeftLegUpSlideFilterADL.o" "LeftLegUpStretchFilterMDL.i2";
connectAttr "LeftLegStretchSR.oy" "LeftLegUpStretchBA.ab";
connectAttr "LeftLegAllLenCD.ocr" "LeftLegUpStretchBA.i[0]";
connectAttr "LeftLegUpPVStretchNormalMD.ox" "LeftLegUpStretchBA.i[1]";
connectAttr "LeftLegIKCtrl.Stretch" "LeftLegStretchSR.vx";
connectAttr "LeftLegIKCtrl.PVStretch" "LeftLegStretchSR.vy";
connectAttr "LeftLegAllStretchNormalMD.ox" "LeftLegAllLenCD.ctr";
connectAttr "LeftLegAllStretchBC.opr" "LeftLegAllLenCD.ft";
connectAttr "LeftLegAllStretchBC.c2r" "LeftLegAllLenCD.st";
connectAttr "LeftLegAllStretchBC.opr" "LeftLegAllStretchNormalMD.i1x";
connectAttr "LeftLegAllStretchBC.c2r" "LeftLegAllStretchNormalMD.i2x";
connectAttr "LeftLegStretchSR.ox" "LeftLegAllStretchBC.b";
connectAttr "LeftLegStretchAllLen.d" "LeftLegAllStretchBC.c1r";
connectAttr "LeftLegDefAllLenADL.o" "LeftLegAllStretchBC.c2r";
connectAttr "LeftLegIK1Pos.t" "LeftLegStretchAllLen.p1";
connectAttr "LeftLegIKMovePos.t" "LeftLegStretchAllLen.p2";
connectAttr "LeftLegUpLen.d" "LeftLegDefAllLenADL.i1";
connectAttr "LeftLegDnLen.d" "LeftLegDefAllLenADL.i2";
connectAttr "LeftLegIK1Pos.t" "LeftLegUpLen.p1";
connectAttr "LeftLegIK2Pos.t" "LeftLegUpLen.p2";
connectAttr "LeftLegIK2Pos.t" "LeftLegDnLen.p1";
connectAttr "LeftLegIK3Pos.t" "LeftLegDnLen.p2";
connectAttr "LeftLegUpPVStretchLen.d" "LeftLegUpPVStretchNormalMD.i1x";
connectAttr "LeftLegUpLen.d" "LeftLegUpPVStretchNormalMD.i2x";
connectAttr "LeftLegIK1Pos.t" "LeftLegUpPVStretchLen.p1";
connectAttr "LeftLegPVStretchPos.t" "LeftLegUpPVStretchLen.p2";
connectAttr "LeftLegUpSlideFilterMDL.o" "LeftLegUpSlideFilterADL.i1";
connectAttr "LeftLegIKCtrl.UpSlide" "LeftLegUpSlideFilterMDL.i1";
connectAttr "LeftLegDnStretchBA.o" "LeftLegDnStretchFilterMDL.i1";
connectAttr "LeftLegDnSlideFilterADL.o" "LeftLegDnStretchFilterMDL.i2";
connectAttr "LeftLegStretchSR.oy" "LeftLegDnStretchBA.ab";
connectAttr "LeftLegAllLenCD.ocr" "LeftLegDnStretchBA.i[0]";
connectAttr "LeftLegDnPVStretchNormalMD.ox" "LeftLegDnStretchBA.i[1]";
connectAttr "LeftLegDnPVStretchLen.d" "LeftLegDnPVStretchNormalMD.i1x";
connectAttr "LeftLegDnLen.d" "LeftLegDnPVStretchNormalMD.i2x";
connectAttr "LeftLegIKMovePos.t" "LeftLegDnPVStretchLen.p1";
connectAttr "LeftLegPVStretchPos.t" "LeftLegDnPVStretchLen.p2";
connectAttr "LeftLegDnSlideFilterMDL.o" "LeftLegDnSlideFilterADL.i1";
connectAttr "LeftLegIKCtrl.DnSlide" "LeftLegDnSlideFilterMDL.i1";
connectAttr "LeftLegExAllStretchNormalMD.ox" "LeftLegExAllLenCD.ctr";
connectAttr "LeftLegExAllStretchBC.opr" "LeftLegExAllLenCD.ft";
connectAttr "LeftLegExAllStretchBC.c2r" "LeftLegExAllLenCD.st";
connectAttr "LeftLegExAllStretchBC.opr" "LeftLegExAllStretchNormalMD.i1x";
connectAttr "LeftLegExAllStretchBC.c2r" "LeftLegExAllStretchNormalMD.i2x";
connectAttr "LeftLegStretchSR.ox" "LeftLegExAllStretchBC.b";
connectAttr "LeftLegExAllLenADL.d" "LeftLegExAllStretchBC.c1r";
connectAttr "LeftLegExDefLenADL.o" "LeftLegExAllStretchBC.c2r";
connectAttr "LeftLegIK2Pos.t" "LeftLegExAllLenADL.p1";
connectAttr "LeftHeelIKMovePos.t" "LeftLegExAllLenADL.p2";
connectAttr "LeftLegDnLen.d" "LeftLegExDefLenADL.i1";
connectAttr "LeftLegExLen.d" "LeftLegExDefLenADL.i2";
connectAttr "LeftLegIK3Pos.t" "LeftLegExLen.p1";
connectAttr "LeftLegIK4Pos.t" "LeftLegExLen.p2";
connectAttr "LeftLeg1IKJnt.rx" "LeftLeg1DrvJntRotPB.irx1";
connectAttr "LeftLeg1IKJnt.ry" "LeftLeg1DrvJntRotPB.iry1";
connectAttr "LeftLeg1IKJnt.rz" "LeftLeg1DrvJntRotPB.irz1";
connectAttr "LeftLeg1FKJnt.rx" "LeftLeg1DrvJntRotPB.irx2";
connectAttr "LeftLeg1FKJnt.ry" "LeftLeg1DrvJntRotPB.iry2";
connectAttr "LeftLeg1FKJnt.rz" "LeftLeg1DrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg1DrvJntRotPB.w";
connectAttr "LeftLeg1IKJnt.t" "LeftLeg1DrvJntTrsBC.c2";
connectAttr "LeftLeg1FKJnt.t" "LeftLeg1DrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg1DrvJntTrsBC.b";
connectAttr "LeftLegSquashMDL.o" "LeftLeg2SquashBA.ab";
connectAttr "LeftLegSquashPowMD.oy" "LeftLeg2SquashBA.i[1]";
connectAttr "LeftLeg1SubIKJnt.t" "LeftLeg2DrvJntTrsBC.c2";
connectAttr "LeftLeg2FKJnt.t" "LeftLeg2DrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg2DrvJntTrsBC.b";
connectAttr "LeftLeg1SubIKJnt.rx" "LeftLeg2DrvJntRotPB.irx1";
connectAttr "LeftLeg1SubIKJnt.ry" "LeftLeg2DrvJntRotPB.iry1";
connectAttr "LeftLeg1SubIKJnt.rz" "LeftLeg2DrvJntRotPB.irz1";
connectAttr "LeftLeg2FKJnt.rx" "LeftLeg2DrvJntRotPB.irx2";
connectAttr "LeftLeg2FKJnt.ry" "LeftLeg2DrvJntRotPB.iry2";
connectAttr "LeftLeg2FKJnt.rz" "LeftLeg2DrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg2DrvJntRotPB.w";
connectAttr "LeftLegSquashMDL.o" "LeftLeg3SquashBA.ab";
connectAttr "LeftLegSquashPowMD.oz" "LeftLeg3SquashBA.i[1]";
connectAttr "LeftLeg2SubIKJnt.t" "LeftLeg3DrvJntTrsBC.c2";
connectAttr "LeftLeg3FKJnt.t" "LeftLeg3DrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg3DrvJntTrsBC.b";
connectAttr "LeftLeg2SubIKJnt.rx" "LeftLeg3DrvJntRotPB.irx1";
connectAttr "LeftLeg2SubIKJnt.ry" "LeftLeg3DrvJntRotPB.iry1";
connectAttr "LeftLeg2SubIKJnt.rz" "LeftLeg3DrvJntRotPB.irz1";
connectAttr "LeftLeg3FKJnt.rx" "LeftLeg3DrvJntRotPB.irx2";
connectAttr "LeftLeg3FKJnt.ry" "LeftLeg3DrvJntRotPB.iry2";
connectAttr "LeftLeg3FKJnt.rz" "LeftLeg3DrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg3DrvJntRotPB.w";
connectAttr "LeftLeg3SubIKJnt.t" "LeftLeg4DrvJntTrsBC.c2";
connectAttr "LeftLeg4FKJnt.t" "LeftLeg4DrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftLeg4DrvJntTrsBC.b";
connectAttr "LeftLegIKFKCtrl.DnTwistFix" "unitConversion10.i";
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
connectAttr "LeftLeg4FKJntMM.o" "LeftLeg4FKJntDM.imat";
connectAttr "LeftLeg4FKCtrl.wm" "LeftLeg4FKJntMM.i[2]";
connectAttr "LeftLeg4FKJnt.pim" "LeftLeg4FKJntMM.i[3]";
connectAttr "LeftLeg4FKJntQP.oq" "LeftLeg4FKJntQE.iq";
connectAttr "LeftLeg4FKJntDM.oq" "LeftLeg4FKJntQP.iq1";
connectAttr "LeftLeg4FKJntQI.oq" "LeftLeg4FKJntQP.iq2";
connectAttr "LeftLeg4FKJntEQ.oq" "LeftLeg4FKJntQI.iq";
connectAttr "LeftLeg4FKJnt.jo" "LeftLeg4FKJntEQ.irt";
connectAttr "LeftLegUpStretchFilterMDL.o" "LeftLegUpStretchOutputMDL.i1";
connectAttr "LeftLegDnStretchFilterMDL.o" "LeftLegDnStretchOutputMDL.i1";
connectAttr "LeftLegSubDB.d" "LeftLegBase3IKJntTransXAU.i";
connectAttr "LeftLegIK1Pos.t" "LeftLegSubDB.p1";
connectAttr "LeftHeelIKMovePos.t" "LeftLegSubDB.p2";
connectAttr "LeftHeelIKPoint_pointConstraint1.ctx" "LeftHeelIKPointPB.itx2";
connectAttr "LeftHeelIKPoint_pointConstraint1.cty" "LeftHeelIKPointPB.ity2";
connectAttr "LeftHeelIKPoint_pointConstraint1.ctz" "LeftHeelIKPointPB.itz2";
connectAttr "LeftHeelIKPoint.pbw" "LeftHeelIKPointPB.w";
connectAttr "LeftLegIKCtrl.Stretch" "LeftLegHeelPosMDL.i1";
connectAttr "LeftLegUp2Ar1NormalMD.ox" "LeftLegUp2Ar1UnitLenMDL.i1";
connectAttr "LeftLegUpIK1DB.d" "LeftLegUp2Ar1NormalMD.i1x";
connectAttr "LeftLegUpIKChk1DB.d" "LeftLegUp2Ar1NormalMD.i1y";
connectAttr "LeftLegUpIK1DB.d" "LeftLegUp2Ar1NormalMD.i2y";
connectAttr "LeftLegUpIKChk1DB.d" "LeftLegUp2Ar1NormalMD.i2x";
connectAttr "LeftLegUpIK1PC.p" "LeftLegUpIK1DB.p1";
connectAttr "LeftLegUpIK2PC.p" "LeftLegUpIK1DB.p2";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK1PC.ic";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK2PC.ic";
connectAttr "LeftLegUpIKChk1PC.p" "LeftLegUpIKChk1DB.p1";
connectAttr "LeftLegUpIKChk2PC.p" "LeftLegUpIKChk1DB.p2";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIKChk1PC.ic";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIKChk2PC.ic";
connectAttr "LeftLegUp3Ar2NormalMD.ox" "LeftLegUp3Ar2UnitLenMDL.i1";
connectAttr "LeftLegUpIK2DB.d" "LeftLegUp3Ar2NormalMD.i1x";
connectAttr "LeftLegUpIKChk2DB.d" "LeftLegUp3Ar2NormalMD.i1y";
connectAttr "LeftLegUpIK2DB.d" "LeftLegUp3Ar2NormalMD.i2y";
connectAttr "LeftLegUpIKChk2DB.d" "LeftLegUp3Ar2NormalMD.i2x";
connectAttr "LeftLegUpIK2PC.p" "LeftLegUpIK2DB.p1";
connectAttr "LeftLegUpIK3PC.p" "LeftLegUpIK2DB.p2";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK3PC.ic";
connectAttr "LeftLegUpIKChk2PC.p" "LeftLegUpIKChk2DB.p1";
connectAttr "LeftLegUpIKChk3PC.p" "LeftLegUpIKChk2DB.p2";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIKChk3PC.ic";
connectAttr "LeftLegUp4Ar3NormalMD.ox" "LeftLegUp4Ar3UnitLenMDL.i1";
connectAttr "LeftLegUpIK3DB.d" "LeftLegUp4Ar3NormalMD.i1x";
connectAttr "LeftLegUpIKChk3DB.d" "LeftLegUp4Ar3NormalMD.i1y";
connectAttr "LeftLegUpIK3DB.d" "LeftLegUp4Ar3NormalMD.i2y";
connectAttr "LeftLegUpIKChk3DB.d" "LeftLegUp4Ar3NormalMD.i2x";
connectAttr "LeftLegUpIK3PC.p" "LeftLegUpIK3DB.p1";
connectAttr "LeftLegUpIK4PC.p" "LeftLegUpIK3DB.p2";
connectAttr "LeftLegUpIKCrvShape.ws" "LeftLegUpIK4PC.ic";
connectAttr "LeftLegUpIKChk3PC.p" "LeftLegUpIKChk3DB.p1";
connectAttr "LeftLegUpIKChk4PC.p" "LeftLegUpIKChk3DB.p2";
connectAttr "LeftLegUpIKChkCrvShape.ws" "LeftLegUpIKChk4PC.ic";
connectAttr "LeftLegDn2Ar1NormalMD.ox" "LeftLegDn2Ar1UnitLenMDL.i1";
connectAttr "LeftLegDnIK1DB.d" "LeftLegDn2Ar1NormalMD.i1x";
connectAttr "LeftLegDnIKChk1DB.d" "LeftLegDn2Ar1NormalMD.i1y";
connectAttr "LeftLegDnIK1DB.d" "LeftLegDn2Ar1NormalMD.i2y";
connectAttr "LeftLegDnIKChk1DB.d" "LeftLegDn2Ar1NormalMD.i2x";
connectAttr "LeftLegDnIK1PC.p" "LeftLegDnIK1DB.p1";
connectAttr "LeftLegDnIK2PC.p" "LeftLegDnIK1DB.p2";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK1PC.ic";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK2PC.ic";
connectAttr "LeftLegDnIKChk1PC.p" "LeftLegDnIKChk1DB.p1";
connectAttr "LeftLegDnIKChk2PC.p" "LeftLegDnIKChk1DB.p2";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIKChk1PC.ic";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIKChk2PC.ic";
connectAttr "LeftLegDn3Ar2NormalMD.ox" "LeftLegDn3Ar2UnitLenMDL.i1";
connectAttr "LeftLegDnIK2DB.d" "LeftLegDn3Ar2NormalMD.i1x";
connectAttr "LeftLegDnIKChk2DB.d" "LeftLegDn3Ar2NormalMD.i1y";
connectAttr "LeftLegDnIK2DB.d" "LeftLegDn3Ar2NormalMD.i2y";
connectAttr "LeftLegDnIKChk2DB.d" "LeftLegDn3Ar2NormalMD.i2x";
connectAttr "LeftLegDnIK2PC.p" "LeftLegDnIK2DB.p1";
connectAttr "LeftLegDnIK3PC.p" "LeftLegDnIK2DB.p2";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK3PC.ic";
connectAttr "LeftLegDnIKChk2PC.p" "LeftLegDnIKChk2DB.p1";
connectAttr "LeftLegDnIKChk3PC.p" "LeftLegDnIKChk2DB.p2";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIKChk3PC.ic";
connectAttr "LeftLegDn4Ar3NormalMD.ox" "LeftLegDn4Ar3UnitLenMDL.i1";
connectAttr "LeftLegDnIK3DB.d" "LeftLegDn4Ar3NormalMD.i1x";
connectAttr "LeftLegDnIKChk3DB.d" "LeftLegDn4Ar3NormalMD.i1y";
connectAttr "LeftLegDnIK3DB.d" "LeftLegDn4Ar3NormalMD.i2y";
connectAttr "LeftLegDnIKChk3DB.d" "LeftLegDn4Ar3NormalMD.i2x";
connectAttr "LeftLegDnIK3PC.p" "LeftLegDnIK3DB.p1";
connectAttr "LeftLegDnIK4PC.p" "LeftLegDnIK3DB.p2";
connectAttr "LeftLegDnIKCrvShape.ws" "LeftLegDnIK4PC.ic";
connectAttr "LeftLegDnIKChk3PC.p" "LeftLegDnIKChk3DB.p1";
connectAttr "LeftLegDnIKChk4PC.p" "LeftLegDnIKChk3DB.p2";
connectAttr "LeftLegDnIKChkCrvShape.ws" "LeftLegDnIKChk4PC.ic";
connectAttr "LeftLegEx2Ar1NormalMD.ox" "LeftLegEx2Ar1UnitLenMDL.i1";
connectAttr "LeftLegExIK1DB.d" "LeftLegEx2Ar1NormalMD.i1x";
connectAttr "LeftLegExIKChk1DB.d" "LeftLegEx2Ar1NormalMD.i1y";
connectAttr "LeftLegExIK1DB.d" "LeftLegEx2Ar1NormalMD.i2y";
connectAttr "LeftLegExIKChk1DB.d" "LeftLegEx2Ar1NormalMD.i2x";
connectAttr "LeftLegExIK1PC.p" "LeftLegExIK1DB.p1";
connectAttr "LeftLegExIK2PC.p" "LeftLegExIK1DB.p2";
connectAttr "LeftLegExIKCrvShape.ws" "LeftLegExIK1PC.ic";
connectAttr "LeftLegExIKCrvShape.ws" "LeftLegExIK2PC.ic";
connectAttr "LeftLegExIKChk1PC.p" "LeftLegExIKChk1DB.p1";
connectAttr "LeftLegExIKChk2PC.p" "LeftLegExIKChk1DB.p2";
connectAttr "LeftLegExIKChkCrvShape.ws" "LeftLegExIKChk1PC.ic";
connectAttr "LeftLegExIKChkCrvShape.ws" "LeftLegExIKChk2PC.ic";
connectAttr "LeftLegEx3Ar2NormalMD.ox" "LeftLegEx3Ar2UnitLenMDL.i1";
connectAttr "LeftLegExIK2DB.d" "LeftLegEx3Ar2NormalMD.i1x";
connectAttr "LeftLegExIKChk2DB.d" "LeftLegEx3Ar2NormalMD.i1y";
connectAttr "LeftLegExIK2DB.d" "LeftLegEx3Ar2NormalMD.i2y";
connectAttr "LeftLegExIKChk2DB.d" "LeftLegEx3Ar2NormalMD.i2x";
connectAttr "LeftLegExIK2PC.p" "LeftLegExIK2DB.p1";
connectAttr "LeftLegExIK3PC.p" "LeftLegExIK2DB.p2";
connectAttr "LeftLegExIKCrvShape.ws" "LeftLegExIK3PC.ic";
connectAttr "LeftLegExIKChk2PC.p" "LeftLegExIKChk2DB.p1";
connectAttr "LeftLegExIKChk3PC.p" "LeftLegExIKChk2DB.p2";
connectAttr "LeftLegExIKChkCrvShape.ws" "LeftLegExIKChk3PC.ic";
connectAttr "LeftLegEx4Ar3NormalMD.ox" "LeftLegEx4Ar3UnitLenMDL.i1";
connectAttr "LeftLegExIK3DB.d" "LeftLegEx4Ar3NormalMD.i1x";
connectAttr "LeftLegExIKChk3DB.d" "LeftLegEx4Ar3NormalMD.i1y";
connectAttr "LeftLegExIK3DB.d" "LeftLegEx4Ar3NormalMD.i2y";
connectAttr "LeftLegExIKChk3DB.d" "LeftLegEx4Ar3NormalMD.i2x";
connectAttr "LeftLegExIK3PC.p" "LeftLegExIK3DB.p1";
connectAttr "LeftLegExIK4PC.p" "LeftLegExIK3DB.p2";
connectAttr "LeftLegExIKCrvShape.ws" "LeftLegExIK4PC.ic";
connectAttr "LeftLegExIKChk3PC.p" "LeftLegExIKChk3DB.p1";
connectAttr "LeftLegExIKChk4PC.p" "LeftLegExIKChk3DB.p2";
connectAttr "LeftLegExIKChkCrvShape.ws" "LeftLegExIKChk4PC.ic";
connectAttr "LeftLeg1TwistFixGrpMM.o" "LeftLeg1TwistFixGrpDM.imat";
connectAttr "LeftLeg1DrvJnt.wm" "LeftLeg1TwistFixGrpMM.i[2]";
connectAttr "LeftLeg1TwistFixGrp.pim" "LeftLeg1TwistFixGrpMM.i[3]";
connectAttr "LeftLegIKFKCtrl.UpTwistFix" "unitConversion9.i";
connectAttr "LeftLegtwistFixVP.ox" "LeftLeg1TwistFixUpvecRotZAU.i";
connectAttr "LeftLeg1TwistFixTgPos.t" "LeftLegtwistFixVP.i1";
connectAttr "LeftLegRevIKhMM.o" "LeftLegRevIKhDM.imat";
connectAttr "LeftLegRevPos.wm" "LeftLegRevIKhMM.i[2]";
connectAttr "LeftLegRevIKh.pim" "LeftLegRevIKhMM.i[3]";
connectAttr "LeftLegBaseIKhMM.o" "LeftLegBaseIKhDM.imat";
connectAttr "LeftLegIKPos.wm" "LeftLegBaseIKhMM.i[2]";
connectAttr "LeftLegBaseIKh.pim" "LeftLegBaseIKhMM.i[3]";
connectAttr "LeftLegPVSysGrpMM.o" "LeftLegPVSysGrpDM.imat";
connectAttr "LeftLegPVSysGrp.pim" "LeftLegPVSysGrpMM.i[3]";
connectAttr "LeftLegTwistMDL.o" "unitConversion14.i";
connectAttr "LeftLegIKCtrl.Twist" "LeftLegTwistMDL.i1";
connectAttr "LeftLegPVVP.ox" "LeftLegPVUpvecRotZAU.i";
connectAttr "LeftLegPVTargetPos.t" "LeftLegPVVP.i1";
connectAttr "LeftLegPVTargetPosMM.o" "LeftLegPVTargetPosDM.imat";
connectAttr "LeftLegIKPos.wm" "LeftLegPVTargetPosMM.i[2]";
connectAttr "LeftLegPVTargetPos.pim" "LeftLegPVTargetPosMM.i[3]";
connectAttr "LeftLegRevPVPosGrpMM.o" "LeftLegRevPVPosGrpDM.imat";
connectAttr "LeftLegRevPVTarget.wm" "LeftLegRevPVPosGrpMM.i[2]";
connectAttr "LeftLegRevPVPosGrp.pim" "LeftLegRevPVPosGrpMM.i[3]";
connectAttr "LeftLegIKhMM.o" "LeftLegIKhDM.imat";
connectAttr "LeftHeelIKOff.wm" "LeftLegIKhMM.i[2]";
connectAttr "LeftLegIKh.pim" "LeftLegIKhMM.i[3]";
connectAttr "LeftLegArcDetach.oc[0]" "LeftLegUpArcCrvRebuild.ic";
connectAttr "LeftLegTPC.oc" "LeftLegArcDetach.ic";
connectAttr "LeftLegArcAngleSR.ox" "LeftLegArcDetach.p[0]";
connectAttr "LeftLegArc1Pos.t" "LeftLegTPC.pt1";
connectAttr "LeftLegArcPointPos.t" "LeftLegTPC.pt2";
connectAttr "LeftLegArc3Pos.t" "LeftLegTPC.pt3";
connectAttr "unitConversion8.o" "LeftLegArcAngleSR.vx";
connectAttr "LeftLegTPC.s" "LeftLegArcAngleSR.mx";
connectAttr "LeftLegArcAngleADL.o" "LeftLegArcAngleSR.omx";
connectAttr "LeftLegArcOutAB.a" "unitConversion8.i";
connectAttr "LeftLegArc3PM2P.o3" "LeftLegArcOutAB.v1";
connectAttr "LeftLegArc3PM1P.o3" "LeftLegArcOutAB.v2";
connectAttr "LeftLegArc3Pos.t" "LeftLegArc3PM2P.i3[0]";
connectAttr "LeftLegArcPointPos.t" "LeftLegArc3PM2P.i3[1]";
connectAttr "LeftLegArc3Pos.t" "LeftLegArc3PM1P.i3[0]";
connectAttr "LeftLegArc1Pos.t" "LeftLegArc3PM1P.i3[1]";
connectAttr "unitConversion6.o" "LeftLegArcAngleADL.i1";
connectAttr "unitConversion7.o" "LeftLegArcAngleADL.i2";
connectAttr "LeftLegArcInAB.a" "unitConversion6.i";
connectAttr "LeftLegArc2PM1P.o3" "LeftLegArcInAB.v1";
connectAttr "LeftLegArc3PM1P.o3" "LeftLegArcInAB.v2";
connectAttr "LeftLegArcPointPos.t" "LeftLegArc2PM1P.i3[0]";
connectAttr "LeftLegArc1Pos.t" "LeftLegArc2PM1P.i3[1]";
connectAttr "LeftLegArcOutAB.a" "unitConversion7.i";
connectAttr "LeftLegArcDetach.oc[1]" "LeftLegDnArcCrvRebuild.ic";
connectAttr "LeftLegExIKCrvShapeOrig.ws" "rebuildCurve2.ic";
connectAttr "LeftLegArc2Pos.t" "LeftLegArcDnDB.p1";
connectAttr "LeftLegArc3Pos.t" "LeftLegArcDnDB.p2";
connectAttr "LeftLegArcPointADL.o" "LeftLegArcPointMDL.i1";
connectAttr "LeftLegArcUpDB.d" "LeftLegArcPointADL.i1";
connectAttr "LeftLegArcDnDB.d" "LeftLegArcPointADL.i2";
connectAttr "LeftLegArc1Pos.t" "LeftLegArcUpDB.p1";
connectAttr "LeftLegArc2Pos.t" "LeftLegArcUpDB.p2";
connectAttr "LeftAnkleConsGrpMM.o" "LeftAnkleConsGrpDM.imat";
connectAttr "LeftLeg4DrvJnt.wm" "LeftAnkleConsGrpMM.i[2]";
connectAttr "LeftAnkleConsGrp.pim" "LeftAnkleConsGrpMM.i[3]";
connectAttr "LeftLeg4FKCtrl.s" "LeftAnkleFKScaleBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftAnkleFKScaleBC.b";
connectAttr "LeftLegIKCtrl.s" "LeftAnkleIKScaleBC.c2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftAnkleIKScaleBC.b";
connectAttr "LeftToeSwitchGrpMM.o" "LeftToeSwitchGrpDM.imat";
connectAttr "LeftAnkleIKJnt.wm" "LeftToeSwitchGrpMM.i[2]";
connectAttr "LeftToeSwitchGrp.pim" "LeftToeSwitchGrpMM.i[3]";
connectAttr "LeftToeCtrl.SecondToe1" "unitConversion40.i";
connectAttr "LeftToeCtrl.SecondToeSpread" "unitConversion48.i";
connectAttr "LeftToeCtrl.SecondToeRoll" "unitConversion52.i";
connectAttr "LeftToeCtrl.SecondToe2" "unitConversion41.i";
connectAttr "LeftSecondToeIKCtrlConsGrpMM.o" "LeftSecondToeIKCtrlConsGrpDM.imat"
		;
connectAttr "LeftSecondToe1Ctrl.wm" "LeftSecondToeIKCtrlConsGrpMM.i[3]";
connectAttr "LeftSecondToeIKCtrlConsGrp.pim" "LeftSecondToeIKCtrlConsGrpMM.i[4]"
		;
connectAttr "LeftSecondToeIKCnnMM.o" "LeftSecondToeIKCnnDM.imat";
connectAttr "LeftBallDrvJnt.wm" "LeftSecondToeIKCnnMM.i[2]";
connectAttr "LeftSecondToeIKCnn.pim" "LeftSecondToeIKCnnMM.i[3]";
connectAttr "LeftToeCtrl.ThirdToe1" "unitConversion42.i";
connectAttr "LeftToeCtrl.ThirdToeSpread" "unitConversion49.i";
connectAttr "LeftToeCtrl.ThirdToeRoll" "unitConversion53.i";
connectAttr "LeftToeCtrl.ThirdToe2" "unitConversion43.i";
connectAttr "LeftThirdToeIKCtrlConsGrpMM.o" "LeftThirdToeIKCtrlConsGrpDM.imat";
connectAttr "LeftThirdToe1Ctrl.wm" "LeftThirdToeIKCtrlConsGrpMM.i[3]";
connectAttr "LeftThirdToeIKCtrlConsGrp.pim" "LeftThirdToeIKCtrlConsGrpMM.i[4]";
connectAttr "LeftThirdToeIKCnnMM.o" "LeftThirdToeIKCnnDM.imat";
connectAttr "LeftBallDrvJnt.wm" "LeftThirdToeIKCnnMM.i[2]";
connectAttr "LeftThirdToeIKCnn.pim" "LeftThirdToeIKCnnMM.i[3]";
connectAttr "LeftToeCtrl.FourthToe1" "unitConversion44.i";
connectAttr "LeftToeCtrl.FourthToeSpread" "unitConversion50.i";
connectAttr "LeftToeCtrl.FourthToeRoll" "unitConversion54.i";
connectAttr "LeftToeCtrl.FourthToe2" "unitConversion45.i";
connectAttr "LeftFourthToeIKCtrlConsGrpMM.o" "LeftFourthToeIKCtrlConsGrpDM.imat"
		;
connectAttr "LeftFourthToe1Ctrl.wm" "LeftFourthToeIKCtrlConsGrpMM.i[3]";
connectAttr "LeftFourthToeIKCtrlConsGrp.pim" "LeftFourthToeIKCtrlConsGrpMM.i[4]"
		;
connectAttr "LeftFourthToeIKCnnMM.o" "LeftFourthToeIKCnnDM.imat";
connectAttr "LeftBallDrvJnt.wm" "LeftFourthToeIKCnnMM.i[2]";
connectAttr "LeftFourthToeIKCnn.pim" "LeftFourthToeIKCnnMM.i[3]";
connectAttr "LeftToeCtrl.LittleToe1" "unitConversion46.i";
connectAttr "LeftToeCtrl.LittleToeSpread" "unitConversion51.i";
connectAttr "LeftToeCtrl.LittleToeRoll" "unitConversion55.i";
connectAttr "LeftToeCtrl.LittleToe2" "unitConversion47.i";
connectAttr "LeftLittleToeIKCtrlConsGrpMM.o" "LeftLittleToeIKCtrlConsGrpDM.imat"
		;
connectAttr "LeftLittleToe1Ctrl.wm" "LeftLittleToeIKCtrlConsGrpMM.i[3]";
connectAttr "LeftLittleToeIKCtrlConsGrp.pim" "LeftLittleToeIKCtrlConsGrpMM.i[4]"
		;
connectAttr "LeftLittleToeIKCnnMM.o" "LeftLittleToeIKCnnDM.imat";
connectAttr "LeftBallDrvJnt.wm" "LeftLittleToeIKCnnMM.i[2]";
connectAttr "LeftLittleToeIKCnn.pim" "LeftLittleToeIKCnnMM.i[3]";
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
connectAttr "LeftBallIKJnt.t" "LeftBallDrvJntTrsBC.c2";
connectAttr "LeftBallFKJnt.t" "LeftBallDrvJntTrsBC.c1";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftBallDrvJntTrsBC.b";
connectAttr "LeftBallIKJnt.rx" "LeftBallDrvJntRotPB.irx1";
connectAttr "LeftBallIKJnt.ry" "LeftBallDrvJntRotPB.iry1";
connectAttr "LeftBallIKJnt.rz" "LeftBallDrvJntRotPB.irz1";
connectAttr "LeftBallFKJnt.rx" "LeftBallDrvJntRotPB.irx2";
connectAttr "LeftBallFKJnt.ry" "LeftBallDrvJntRotPB.iry2";
connectAttr "LeftBallFKJnt.rz" "LeftBallDrvJntRotPB.irz2";
connectAttr "LeftLegIKFKCtrl.IKFK" "LeftBallDrvJntRotPB.w";
connectAttr "LeftBallFKJntMM.o" "LeftBallFKJntDM.imat";
connectAttr "LeftBallFKCtrl.wm" "LeftBallFKJntMM.i[2]";
connectAttr "LeftBallFKJnt.pim" "LeftBallFKJntMM.i[3]";
connectAttr "LeftBallFKJntQP.oq" "LeftBallFKJntQE.iq";
connectAttr "LeftBallFKJntDM.oq" "LeftBallFKJntQP.iq1";
connectAttr "LeftBallFKJntQI.oq" "LeftBallFKJntQP.iq2";
connectAttr "LeftBallFKJntEQ.oq" "LeftBallFKJntQI.iq";
connectAttr "LeftBallFKJnt.jo" "LeftBallFKJntEQ.irt";
connectAttr "LeftFootShCareVecGrpMM.o" "LeftFootShCareVecGrpDM.imat";
connectAttr "LeftLegEx4ArcJnt.wm" "LeftFootShCareVecGrpMM.i[2]";
connectAttr "LeftFootShCareVecGrp.pim" "LeftFootShCareVecGrpMM.i[3]";
connectAttr "LeftFootShCareVecPosDM.ot" "LeftFootShCareVecPosPB.it2";
connectAttr "LeftFootShCareVecPos.pbw" "LeftFootShCareVecPosPB.w";
connectAttr "LeftFootShCareVecPosMM.o" "LeftFootShCareVecPosDM.imat";
connectAttr "LeftAnkleDrvJnt.wm" "LeftFootShCareVecPosMM.i[2]";
connectAttr "LeftFootShCareVecPos.pim" "LeftFootShCareVecPosMM.i[3]";
connectAttr "LegIKFKREV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftLegIKFKCD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftLegHeelPosMDL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftLegTwistMDL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
// End of MVQleg.ma
