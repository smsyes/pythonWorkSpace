//Maya ASCII 2018ff09 scene
//Name: SealFaceCtrls02.ma
//Last modified: Mon, Jan 10, 2022 11:35:17 AM
//Codeset: 949
requires maya "2018ff09";
requires "mtoa" "3.1.2.1";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" -nodeType "quatInvert" -nodeType "quatProd"
		 "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "FaceGrp";
	rename -uid "6AB8A070-41C3-A1D6-71F3-72A7E0B33FA3";
createNode transform -n "FaceCtrlGrp" -p "FaceGrp";
	rename -uid "BF79DEEF-4C58-38CC-E240-7699C7CF9CF6";
createNode transform -n "EyeCtrlOff" -p "FaceCtrlGrp";
	rename -uid "1F414644-4884-F31B-2629-CCB6FD248D97";
	setAttr ".t" -type "double3" 0 0 5 ;
	setAttr ".rp" -type "double3" -0.00016786874054428575 -2.0428103653102851e-15 -4.3196196006329516e-21 ;
	setAttr ".rpt" -type "double3" 0 8.3870144081765967e-21 -5.8494063949150127e-18 ;
	setAttr ".sp" -type "double3" -0.0004196718513607145 -5.1070259132757201e-15 -1.0799049001582407e-20 ;
	setAttr ".spt" -type "double3" 0.00025180311081642872 3.064215547965435e-15 6.4794294009494556e-21 ;
createNode transform -n "EyeCtrl" -p "EyeCtrlOff";
	rename -uid "AA0E366F-48E7-B4EE-49BE-BDB787F8A7AB";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 2 -en "Head:Fly:World" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "EyeCtrlShape" -p "EyeCtrl";
	rename -uid "C2C27C8A-497E-8255-EB6A-EAB276947436";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 16 0 no 3
		21 -0.125 -0.0625 0 0.0625 0.125 0.1875 0.25 0.3125 0.375 0.4375 0.5 0.5625
		 0.625 0.68749999999999989 0.75 0.8125 0.875 0.9375 1 1.0625 1.125
		19
		-5.3936897561151493 -2.2056300312422779 -8.2001649366899079e-16
		-5.8551609751912199 -1.2747691505447218e-15 -3.5852520733802103e-16
		-5.3936897561151493 2.2056300312422832 1.5948000412696249e-16
		-4.1398068294595145 3.3093555273051729 4.8133448147764855e-16
		-2.2341927841415927 2.6583345220423396 4.5346398661660757e-16
		-4.796194075796057e-05 1.9884675603004422 4.4152555701129087e-16
		2.2343085670748914 2.6584723088851794 7.2711137527933451e-16
		4.1396213138236329 3.309309417013413 9.8829300165824201e-16
		5.3940445188660711 2.2056636243923382 8.2004567580009288e-16
		5.8543216314884985 4.5308295250764379e-16 3.5847381235907448e-16
		5.3940445188660728 -2.2056636243923426 -1.5946574035132703e-16
		4.1396213138236355 -3.3093094170134139 -4.8133560249261552e-16
		2.2343085670748923 -2.6584723088851816 -4.5348749178175719e-16
		-4.796194075575472e-05 -1.98846756030045 -4.4153143065501545e-16
		-2.2341927841415847 -2.6583345220423427 -7.2707369079431955e-16
		-4.1398068294595172 -3.3093555273051831 -9.8831459975624518e-16
		-5.3936897561151493 -2.2056300312422779 -8.2001649366899079e-16
		-5.8551609751912199 -1.2747691505447218e-15 -3.5852520733802103e-16
		-5.3936897561151493 2.2056300312422832 1.5948000412696249e-16
		;
createNode transform -n "LeftEyeCtrlGrp" -p "EyeCtrl";
	rename -uid "A97BCD02-4E31-C766-C33F-3DAE443E3748";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "LeftEyeCtrl" -p "LeftEyeCtrlGrp";
	rename -uid "12341ED3-4BF3-BD57-AD6A-469D64C2AECE";
	addAttr -ci true -sn "CorneaScale" -ln "CorneaScale" -at "double";
	addAttr -ci true -sn "CorneaSize" -ln "CorneaSize" -min -10 -max 30 -at "double";
	addAttr -ci true -sn "IrisDepth" -ln "IrisDepth" -dv 1 -at "double";
	addAttr -ci true -sn "PupilSize" -ln "PupilSize" -min -10 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".CorneaScale";
	setAttr -k on ".CorneaSize";
	setAttr -k on ".IrisDepth" 0;
	setAttr -k on ".PupilSize";
createNode nurbsCurve -n "LeftEyeCtrlShape" -p "LeftEyeCtrl";
	rename -uid "19C6B979-4D9B-21AF-7F04-A483D93C9280";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782449 1.5672232497824492 0
		1.3571464646221824e-16 2.2163883751087754 0
		-1.567223249782449 1.5672232497824488 0
		-2.2163883751087763 1.1489796475049661e-16 0
		-1.567223249782449 -1.567223249782449 0
		-2.2201713939206452e-16 -2.2163883751087767 0
		1.567223249782449 -1.5672232497824488 0
		2.2163883751087763 -3.022481001559918e-16 0
		1.567223249782449 1.5672232497824492 0
		1.3571464646221824e-16 2.2163883751087754 0
		-1.567223249782449 1.5672232497824488 0
		;
createNode transform -n "RightEyeCtrlGrp" -p "EyeCtrl";
	rename -uid "7727B9EA-448C-3CA5-0C5C-C0AAD571ACB0";
	setAttr ".t" -type "double3" -3 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "RightEyeCtrl" -p "RightEyeCtrlGrp";
	rename -uid "D97217AD-43BC-4444-E056-9E85E68AD5BA";
	addAttr -ci true -sn "CorneaScale" -ln "CorneaScale" -at "double";
	addAttr -ci true -sn "CorneaSize" -ln "CorneaSize" -min -10 -max 30 -at "double";
	addAttr -ci true -sn "IrisDepth" -ln "IrisDepth" -dv 1 -at "double";
	addAttr -ci true -sn "PupilSize" -ln "PupilSize" -min -10 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on ".r";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".s";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".CorneaScale";
	setAttr -k on ".CorneaSize";
	setAttr -k on ".IrisDepth" 0;
	setAttr -k on ".PupilSize";
createNode nurbsCurve -n "RightEyeCtrlShape" -p "RightEyeCtrl";
	rename -uid "9F141CA7-4A87-3854-0508-25BD5654F142";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.568901855364853 1.5672232497824439 0
		-0.0016786055824047352 2.2163883751087781 1.4210854715202004e-14
		1.5655446442000442 1.5672232497824439 0
		2.2147097695263711 0 1.4210854715202004e-14
		1.5655446442000442 -1.5672232497824439 0
		-0.0016786055824047352 -2.216388375108771 0
		-1.568901855364853 -1.5672232497824439 0
		-2.2180669806911801 0 1.4210854715202004e-14
		-1.568901855364853 1.5672232497824439 0
		-0.0016786055824047352 2.2163883751087781 1.4210854715202004e-14
		1.5655446442000442 1.5672232497824439 0
		;
createNode transform -n "BrowCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "7183D120-4D01-18AC-ED93-B4BAD1B85B83";
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode transform -n "LeftBrowCtrlGrp" -p "BrowCtrlGrp";
	rename -uid "DB90A66D-4CE3-C755-8E32-3BBACA9CBD0D";
	setAttr ".t" -type "double3" 0 -3.302363379128797 -3 ;
	setAttr ".r" -type "double3" -90 -3.1805546814635168e-15 -90.000000000003283 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "LeftBrowCtrl" -p "LeftBrowCtrlGrp";
	rename -uid "882DDA54-431E-4EA6-A78E-8AA68863A161";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Squeeze" -ln "Squeeze" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
	setAttr -k on ".Z";
	setAttr -k on ".Squeeze";
createNode nurbsCurve -n "LeftBrowCtrlShape" -p "LeftBrowCtrl";
	rename -uid "4E903D54-407A-450B-9E2A-8FA9055F93C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.43721342692446752 -1.8439573967261049 
		1.5581633491539861 -0.29999999999999977 -0.40819418755438841 2.6081941875543802 -1.2537785998259603 
		-0.48361162489122367 2.283611624891221 -1.7731107000870217 0.30000000000000071 1.4999999999999964 
		-1.2537785998259603 1.0836116248912253 0.71638837510877196 -2.1924707493709495e-16 
		1.0081941875543872 0.39180581244560808 1.4745289379183533 -0.82972697977111731 -0.6019358628949919 
		1.0628714815004714 -1.9772142651359554 0.13774365794002041 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftBrow1CtrlGrp" -p "LeftBrowCtrl";
	rename -uid "1B3BFD64-4AF4-2C97-BD78-5B8B941436DB";
	setAttr ".t" -type "double3" -1.7566289823227552 0.22049140930175781 0.6133169476616146 ;
	setAttr ".r" -type "double3" 0 14.999999999999998 0 ;
	setAttr ".s" -type "double3" 1.0000000650015843 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftBrow1Ctrl" -p "LeftBrow1CtrlGrp";
	rename -uid "3C00CCEC-40DA-7467-6231-268CC2AA0C26";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftBrow1CtrlShape" -p "LeftBrow1Ctrl";
	rename -uid "2460A344-4F0C-A449-104D-C6AA48398AD7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.31344464995648935 -0.47016697493473708 
		1.883611624891222 3.7531291713417566e-16 -0.66491651253263473 2.208194187554386 0.31344464995649013 
		-0.47016697493473697 1.8836116248912216 0.44327767502175552 -2.1660975967054509e-15 
		1.0999999999999976 0.31344464995649013 0.47016697493473286 0.3163883751087736 4.4685927430503214e-16 
		0.6649165125326314 -0.0081941875543902754 -0.31344464995648935 0.47016697493473286 
		0.31638837510877371 -0.44327767502175464 -2.0409537772335029e-15 1.0999999999999976 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftBrow1JntGrp" -p "LeftBrow1CtrlGrp";
	rename -uid "1CEA7361-4520-C8F3-6D46-D0B431776845";
	setAttr ".s" -type "double3" 0.99999993499842021 1 1 ;
createNode transform -n "LeftBrow1JntCnt" -p "LeftBrow1JntGrp";
	rename -uid "A39E36EE-45E3-950E-D0B0-4F87301E4D61";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 3.5527136788005009e-15 0 ;
createNode joint -n "LeftBrow1Jnt" -p "LeftBrow1JntCnt";
	rename -uid "626B6D52-43A9-3F33-1D4D-B68E8AE55A67";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -3.1805546814635168e-15 7.0622500768802538e-31 ;
	setAttr ".bps" -type "matrix" 0.96592582628905377 -9.5001033511621274e-17 -0.25881904510257492 0
		 -1.7347234759768071e-18 1.0000000000000004 -2.7755575615628914e-17 0 0.25881904510257481 3.1936078549161706e-16 0.96592582628905377 0
		 1.5457344082355611 17.546469345027678 24.422595890595833 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftBrow1";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "LeftBrow2CtrlGrp" -p "LeftBrowCtrl";
	rename -uid "B161B54E-4B88-9B12-021E-7F9DB26FFC22";
	setAttr ".t" -type "double3" -0.28977774788671973 0 0.077645713530755195 ;
	setAttr ".r" -type "double3" 0 14.999999999999998 0 ;
	setAttr ".s" -type "double3" 1.0000000040976964 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "LeftBrow2Ctrl" -p "LeftBrow2CtrlGrp";
	rename -uid "26DEF81D-40B2-543C-35A4-73B03CCE037E";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftBrow2CtrlShape" -p "LeftBrow2Ctrl";
	rename -uid "B365218E-4E4C-6988-7CD7-079DA37090E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47016697493473514 -0.47016697493473469 1.0999999999999939
		2.6553455642525962e-16 -0.66491651253263262 1.0999999999999939
		-0.47016697493473436 -0.47016697493473469 1.0999999999999941
		-0.66491651253263273 -3.4469389425149226e-17 1.0999999999999943
		-0.47016697493473436 0.47016697493473469 1.0999999999999945
		1.582150206689749e-16 0.66491651253263317 1.0999999999999948
		0.47016697493473514 0.47016697493473469 1.0999999999999945
		0.6649165125326334 9.067443004679754e-17 1.0999999999999943
		0.47016697493473514 -0.47016697493473469 1.0999999999999939
		2.6553455642525962e-16 -0.66491651253263262 1.0999999999999939
		-0.47016697493473436 -0.47016697493473469 1.0999999999999941
		;
createNode transform -n "LeftBrow2JntGrp" -p "LeftBrow2CtrlGrp";
	rename -uid "D22F5AB1-4B5F-D07A-8001-8AB76F939214";
	setAttr ".s" -type "double3" 0.99999999590230348 0.99999999999999944 0.99999999999999978 ;
createNode transform -n "LeftBrow2JntCnt" -p "LeftBrow2JntGrp";
	rename -uid "42B16860-47D5-4C47-95A9-0A919BB348DB";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
createNode joint -n "LeftBrow2Jnt" -p "LeftBrow2JntCnt";
	rename -uid "79010941-450C-7969-3C08-9B9D00080A57";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 3.5527136788005009e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 3.180554681463516e-15 0 ;
	setAttr ".bps" -type "matrix" 0.96592582628905377 -9.5001033511621323e-17 -0.25881904510257503 0
		 -1.7347234759768071e-18 1.0000000000000004 -2.7755575615628914e-17 0 0.25881904510257492 3.1936078549161706e-16 0.96592582628905377 0
		 3.0125856426715631 17.325977935725913 23.886924656464892 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftBrow2";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "LeftBrow3CtrlGrp" -p "LeftBrowCtrl";
	rename -uid "56C72FFB-4AFA-E73C-F1D8-43A710A35DEC";
	setAttr ".t" -type "double3" 0.76395035575097558 -0.836273193359375 -0.32742745236279946 ;
	setAttr ".r" -type "double3" 0 14.999999999999998 0 ;
	setAttr ".s" -type "double3" 1.0000000352116769 1.0000000000000002 1 ;
createNode transform -n "LeftBrow3Ctrl" -p "LeftBrow3CtrlGrp";
	rename -uid "989369AF-42C4-3FDF-B20F-1DA307393241";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftBrow3CtrlShape" -p "LeftBrow3Ctrl";
	rename -uid "2C223568-4C57-2300-DE07-D69F585412CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47016697493473514 -0.47016697493473469 1.0999999999999943
		4.4317024036528482e-16 -0.66491651253263251 1.0999999999999941
		-0.47016697493473436 -0.47016697493473458 1.0999999999999941
		-0.66491651253263262 -3.4469389425149226e-17 1.0999999999999943
		-0.47016697493473436 0.47016697493473458 1.0999999999999943
		3.358507046089999e-16 0.66491651253263306 1.0999999999999945
		0.47016697493473514 0.47016697493473458 1.0999999999999945
		0.66491651253263351 9.067443004679754e-17 1.0999999999999943
		0.47016697493473514 -0.47016697493473469 1.0999999999999943
		4.4317024036528482e-16 -0.66491651253263251 1.0999999999999941
		-0.47016697493473436 -0.47016697493473458 1.0999999999999941
		;
createNode transform -n "LeftBrow3JntGrp" -p "LeftBrow3CtrlGrp";
	rename -uid "BB22BB04-4D2A-E1D5-AC3E-158D16802E2D";
	setAttr ".s" -type "double3" 0.99999996478832442 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "LeftBrow3JntCnt" -p "LeftBrow3JntGrp";
	rename -uid "FACA7CCE-4E5D-B64E-F385-C59BC775C06C";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -3.5527136788005009e-15 0 ;
createNode joint -n "LeftBrow3Jnt" -p "LeftBrow3JntCnt";
	rename -uid "0E93887D-4F5A-A641-A0C5-91B4C24DF65E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -3.1805546814635168e-15 7.0622500768802538e-31 ;
	setAttr ".bps" -type "matrix" 0.96592582628905377 -9.5001033511621274e-17 -0.25881904510257492 0
		 -1.7347234759768071e-18 1.0000000000000004 -2.7755575615628914e-17 0 0.25881904510257481 3.1936078549161706e-16 0.96592582628905377 0
		 4.0663137463092278 16.489704742366513 23.48185149057128 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftBrow3";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "RightBrowCtrlGrp" -p "BrowCtrlGrp";
	rename -uid "2AAB0025-43B3-CAB1-38CF-53ADC8A71E71";
	setAttr ".t" -type "double3" 0 3.3023633463945865 -3 ;
	setAttr ".r" -type "double3" -90 0 89.999999999996717 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 -0.99999999999999978 ;
createNode transform -n "RightBrowCtrl" -p "RightBrowCtrlGrp";
	rename -uid "55A37010-4455-7BAA-A228-31AEFC27F7A4";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Squeeze" -ln "Squeeze" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
	setAttr -k on ".Z";
	setAttr -k on ".Squeeze";
createNode nurbsCurve -n "RightBrowCtrlShape" -p "RightBrowCtrl";
	rename -uid "C0EB3D05-48F2-32B0-6FCC-D9B27D9653C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.220825051815692 -1.8439573967261058 0.77455172426276064
		-0.29999999999999893 -0.40819418755438974 1.4999999999999929
		-2.0373902247171842 -0.48361162489122478 1.4999999999999964
		-2.8813048876414089 0.30000000000000071 1.5
		-2.0373902247171842 1.0836116248912262 1.5
		-4.163336342344337e-17 1.0081941875543876 1.4999999999999964
		2.2581405628095776 -0.82972697977111665 0.18167576199622815
		2.1710656690548591 -1.9772142651359541 0.13774365794001753
		1.220825051815692 -1.8439573967261058 0.77455172426276064
		-0.29999999999999893 -0.40819418755438974 1.4999999999999929
		-2.0373902247171842 -0.48361162489122478 1.4999999999999964
		;
createNode transform -n "RightBrow1CtrlGrp" -p "RightBrowCtrl";
	rename -uid "F836ACBF-4EC1-7271-F850-F3A6C62CB02B";
	setAttr ".t" -type "double3" -1.756628982322755 0.22049140930175781 0.6133169476616146 ;
	setAttr ".r" -type "double3" 0 14.999999999999998 0 ;
	setAttr ".s" -type "double3" 1.0000000650015843 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightBrow1Ctrl" -p "RightBrow1CtrlGrp";
	rename -uid "A7396EB1-49CB-9246-8D6D-EAAD5ECF5EEB";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightBrow1CtrlShape" -p "RightBrow1Ctrl";
	rename -uid "7B9D5672-497B-21D0-80D7-30A430C9C127";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47016697493473592 -0.47016697493473814 1.1000000000000014
		4.0245584642661925e-16 -0.66491651253263484 1.1000000000000014
		-0.47016697493473436 -0.47016697493473814 1.1000000000000014
		-0.66491651253263262 -3.5527136788005009e-15 1.1000000000000014
		-0.47016697493473436 0.47016697493473458 1.1000000000000014
		4.0245584642661925e-16 0.66491651253263129 1.1000000000000014
		0.47016697493473547 0.47016697493473458 1.1000000000000014
		0.66491651253263351 -3.5527136788005009e-15 1.1000000000000014
		0.47016697493473592 -0.47016697493473814 1.1000000000000014
		4.0245584642661925e-16 -0.66491651253263484 1.1000000000000014
		-0.47016697493473436 -0.47016697493473814 1.1000000000000014
		;
createNode transform -n "RightBrow1JntGrp" -p "RightBrow1CtrlGrp";
	rename -uid "54F91A58-4B6F-101D-53DD-1F811FBA741C";
	setAttr ".s" -type "double3" 0.999999999999999 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "RightBrow1JntCnt" -p "RightBrow1JntGrp";
	rename -uid "5A771637-4017-E87B-C160-5BAE38E7A979";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 3.5527136788005009e-15 0 ;
createNode joint -n "RightBrow1Jnt" -p "RightBrow1JntCnt";
	rename -uid "C2558103-42C0-AB91-E9C2-98A00E3E4381";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -3.5527136788005009e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.6558571329210074e-15 1.2086107789561376e-13 -3.6586372877870404e-15 ;
	setAttr ".bps" -type "matrix" 0.9659258890757908 7.7407089370550717e-17 0.25881906192611426 0
		 3.3430914990287813e-17 -1.0000000000000002 -9.0536221522239846e-17 0 -0.25881904510246639 2.0161039004936836e-16 0.96592582628908275 0
		 -1.5457343526423193 17.546469345029998 24.422595890595638 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightBrow1";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "RightBrow2CtrlGrp" -p "RightBrowCtrl";
	rename -uid "2FB43ADE-4BFD-B742-BF28-C5AE973D0359";
	setAttr ".t" -type "double3" -0.28977774788671984 0 0.077645713530755223 ;
	setAttr ".r" -type "double3" 0 14.999999999999998 0 ;
	setAttr ".s" -type "double3" 1.0000000040976964 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "RightBrow2Ctrl" -p "RightBrow2CtrlGrp";
	rename -uid "2F7FB8FD-4BAF-41A7-8AAA-81AB59A7AD79";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightBrow2CtrlShape" -p "RightBrow2Ctrl";
	rename -uid "5690D315-4574-5DA2-46EF-2AA93286A4BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47016697493473592 -0.47016697493473103 1.0999999999999979
		8.4654505627668186e-16 -0.66491651253263129 1.0999999999999979
		-0.47016697493473414 -0.47016697493473103 1.0999999999999979
		-0.66491651253263218 3.5527136788005009e-15 1.0999999999999979
		-0.47016697493473414 0.47016697493473814 1.0999999999999979
		4.0245584642661925e-16 0.66491651253263839 1.0999999999999979
		0.47016697493473592 0.47016697493473814 1.0999999999999979
		0.66491651253263395 3.5527136788005009e-15 1.0999999999999979
		0.47016697493473592 -0.47016697493473103 1.0999999999999979
		8.4654505627668186e-16 -0.66491651253263129 1.0999999999999979
		-0.47016697493473414 -0.47016697493473103 1.0999999999999979
		;
createNode transform -n "RightBrow2JntGrp" -p "RightBrow2CtrlGrp";
	rename -uid "8F5B3A6A-4415-2DCE-851E-E9BC8E6C531E";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "RightBrow2JntCnt" -p "RightBrow2JntGrp";
	rename -uid "222AB8DE-4C20-5778-1076-B4A4CA3FF5AF";
	setAttr ".t" -type "double3" 2.2204460492503131e-15 -3.5527136788005009e-15 0 ;
createNode joint -n "RightBrow2Jnt" -p "RightBrow2JntCnt";
	rename -uid "5DD6F4BB-4C60-2348-DEDC-AE80C9B0F003";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2138963781597806e-14 9.5416640443905522e-14 4.7694049420225156e-14 ;
	setAttr ".bps" -type "matrix" 0.96592583024715273 7.7407084656158363e-17 0.25881904616302825 0
		 3.3430914990287831e-17 -1.0000000000000007 -9.0536221522239883e-17 0 -0.25881904510246645 2.0161039004936836e-16 0.96592582628908275 0
		 -3.0125855870783811 17.325977935728258 23.88692465646486 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightBrow2";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "RightBrow3CtrlGrp" -p "RightBrowCtrl";
	rename -uid "E183BDE0-41CD-F645-FF39-AB8DD6A2B044";
	setAttr ".t" -type "double3" 0.76395035575097547 -0.836273193359375 -0.32742745236279946 ;
	setAttr ".r" -type "double3" 0 14.999999999999998 0 ;
	setAttr ".s" -type "double3" 1.0000000352116769 1.0000000000000002 1 ;
createNode transform -n "RightBrow3Ctrl" -p "RightBrow3CtrlGrp";
	rename -uid "A33108D1-424B-B254-B286-A3B952997C42";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightBrow3CtrlShape" -p "RightBrow3Ctrl";
	rename -uid "A47CDEA5-4135-E837-3F92-C19DF741291C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47016697493473458 -0.47016697493473458 1.0999999999999908
		8.4654505627668186e-16 -0.66491651253263306 1.0999999999999908
		-0.47016697493473458 -0.47016697493473458 1.0999999999999908
		-0.66491651253263262 0 1.0999999999999908
		-0.47016697493473458 0.47016697493473458 1.0999999999999908
		-4.163336342344337e-17 0.66491651253263484 1.0999999999999908
		0.47016697493473458 0.47016697493473458 1.0999999999999908
		0.66491651253263306 0 1.0999999999999908
		0.47016697493473458 -0.47016697493473458 1.0999999999999908
		8.4654505627668186e-16 -0.66491651253263306 1.0999999999999908
		-0.47016697493473458 -0.47016697493473458 1.0999999999999908
		;
createNode transform -n "RightBrow3JntGrp" -p "RightBrow3CtrlGrp";
	rename -uid "E1E054AC-4A3C-75F2-02B4-829E96AF1F46";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "RightBrow3JntCnt" -p "RightBrow3JntGrp";
	rename -uid "E0C5A554-4ABD-B348-E4DF-CDA3139B4881";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -3.5527136788005009e-15 0 ;
createNode joint -n "RightBrow3Jnt" -p "RightBrow3JntCnt";
	rename -uid "45717458-40DD-DB2D-7DD6-40B34E47C390";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6216095869593528e-14 1.5902773407317584e-14 2.0154717052448478e-14 ;
	setAttr ".bps" -type "matrix" 0.96592586030095007 7.7407087064600861e-17 0.25881905421591894 0
		 3.3430914990287825e-17 -1.0000000000000007 -9.0536221522239883e-17 0 -0.25881904510246645 2.0161039004936838e-16 0.96592582628908286 0
		 -4.0663136907161075 16.489704742368893 23.481851490571366 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightBrow3";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "CenterBrowCtrlOffGrp" -p "BrowCtrlGrp";
	rename -uid "FC13BA56-4736-6D62-B79C-C89AB20CC34F";
	setAttr ".t" -type "double3" 0 7.6293709911821005e-07 -3 ;
	setAttr ".r" -type "double3" -90 -6.3611093629270335e-15 -90.000000000003268 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "CenterBrowCtrl" -p "CenterBrowCtrlOffGrp";
	rename -uid "1B1EFD73-460B-9C25-2C78-0AB32D970E63";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftBrow1Ctrl1Shape" -p "CenterBrowCtrl";
	rename -uid "21CE0472-42E5-CDE4-9E3C-9C99AE0B965A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23508348746736751 -0.23508348746737112 0.40000000000000169
		2.2158512018264234e-16 -0.33245825626631992 0.40000000000000258
		-0.23508348746736715 -0.23508348746737107 0.40000000000000147
		-0.33245825626631625 -3.7684007391648228e-15 0.40000000000000191
		-0.23508348746736715 0.23508348746736377 0.40000000000000235
		1.6792535230449993e-16 0.33245825626631298 0.40000000000000235
		0.23508348746736751 0.23508348746736377 0.40000000000000235
		0.3324582562663167 -3.7058288294288489e-15 0.40000000000000213
		0.23508348746736751 -0.23508348746737112 0.40000000000000169
		2.2158512018264234e-16 -0.33245825626631992 0.40000000000000258
		-0.23508348746736715 -0.23508348746737107 0.40000000000000147
		;
createNode transform -n "CenterBrowJntOffGrp" -p "CenterBrowCtrlOffGrp";
	rename -uid "D9489CE8-446F-EC22-78E5-75B14EA29290";
createNode joint -n "CenterBrowJnt" -p "CenterBrowJntOffGrp";
	rename -uid "C42541CA-4165-839A-A3B1-F0AF74911583";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 9.540979117872439e-18 -4.3639137442541553e-17 0
		 7.1991024253037494e-17 0.93671882965248665 -0.35008261049997413 0 -5.6378512969246231e-18 0.35008261049997508 0.93671882965248665 0
		 -7.5150897490935114e-07 17.483656362962932 24.845075343918264 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "MouthCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "A81B02CD-4CDB-F766-32DF-1E9A4BB8CFB8";
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode transform -n "LeftMouthCtrlGrp" -p "MouthCtrlGrp";
	rename -uid "875038D5-4CE6-CD53-FF73-BEA29A090837";
	setAttr ".t" -type "double3" 0 -1 2 ;
	setAttr ".r" -type "double3" -90 0 -90 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftMouthCtrl" -p "LeftMouthCtrlGrp";
	rename -uid "89C7F10B-49EF-851C-F7E4-30BA94F1B020";
	addAttr -ci true -sn "CheekUp" -ln "CheekUp" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Cheek" -ln "Cheek" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "CheekUpBlend" -ln "CheekUpBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "CheekBlend" -ln "CheekBlend" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".CheekUp";
	setAttr -k on ".Cheek";
	setAttr -k on ".CheekUpBlend" 3;
	setAttr -k on ".CheekBlend" 3;
createNode nurbsCurve -n "LeftMouthCtrlShape" -p "LeftMouthCtrl";
	rename -uid "1436A382-436D-6A58-8F46-2AABF76EF906";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.048528137423857531 -0.23508348746736879 
		1.1508886002201386 0.51865975443381596 -0.33245825626631781 1.4754711628833124 1.1836092740564088 
		-0.23508348746736868 1.1508886002201382 1.508190862971909 -1.293991173031505e-15 
		0.36727697532891301 1.1836092740564088 0.23508348746736618 -0.41633464956231198 0.51865975443381607 
		0.33245825626631548 -0.74091721222546481 -0.048528137423857531 0.23508348746736618 
		-0.41633464956231186 -0.075735931288071878 -1.2314192632955311e-15 0.36727697532891301 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "RightMouthCtrlGrp" -p "MouthCtrlGrp";
	rename -uid "4DB51A84-4219-5ED5-86EA-EF9F7B5F3319";
	setAttr ".t" -type "double3" 0 1 2 ;
	setAttr ".r" -type "double3" -90 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 -0.99999999999999978 ;
createNode transform -n "RightMouthCtrl" -p "RightMouthCtrlGrp";
	rename -uid "5DD899AC-4899-8681-C98E-68AB2F47B4C8";
	addAttr -ci true -sn "CheekUp" -ln "CheekUp" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Cheek" -ln "Cheek" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "CheekUpBlend" -ln "CheekUpBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "CheekBlend" -ln "CheekBlend" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr -k on ".CheekUp";
	setAttr -k on ".Cheek";
	setAttr -k on ".CheekUpBlend" 3;
	setAttr -k on ".CheekBlend" 3;
createNode nurbsCurve -n "RightMouthCtrlShape" -p "RightMouthCtrl";
	rename -uid "1F2D50BD-413C-F084-54BB-55BA9A99ED04";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.73508348746736696 -0.23508348746737029 0.36727697532891296
		0.51865975443381573 -0.33245825626631875 0.36727697532892362
		0.3999976491651841 -0.23508348746737029 0.36727697532891296
		0.39999667541752071 -3.0531133177191805e-15 0.36727697532891296
		0.3999976491651841 0.23508348746736429 0.36727697532891296
		0.51865975443381573 0.33245825626631431 0.36727697532892362
		0.73508348746736696 0.23508348746736429 0.36727697532891296
		1.0324582562663158 -3.0531133177191805e-15 0.36727697532890941
		0.73508348746736696 -0.23508348746737029 0.36727697532891296
		0.51865975443381573 -0.33245825626631875 0.36727697532892362
		0.3999976491651841 -0.23508348746737029 0.36727697532891296
		;
createNode transform -n "CheekCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "DDBDD0D9-473C-52D2-AA99-B2A0AB18E5A2";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2612133559741778e-13 7.1054273576010019e-15 ;
createNode transform -n "LeftUpCheekCtrlGrp" -p "CheekCtrlGrp";
	rename -uid "DC64D28D-4DCA-D845-EB9D-9AA8B9F7CE27";
	setAttr ".r" -type "double3" -3.2118944405850356 24.227530990367661 0.0027417965441218039 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999933 ;
createNode transform -n "LeftUpCheekCtrlRvs" -p "LeftUpCheekCtrlGrp";
	rename -uid "D7DDD50C-4E19-B54D-FF75-808C09891C43";
createNode transform -n "LeftUpCheekCtrl" -p "LeftUpCheekCtrlRvs";
	rename -uid "6819CD2D-451C-6748-BEAE-939E7E7DCA25";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftUpCheekCtrlShape" -p "LeftUpCheekCtrl";
	rename -uid "1E1E08E6-4F5E-27CE-1A8C-43B9DE85E95C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.20734392607018048 0.20734367803593209 0.2999984733791462
		2.9012396186078874e-07 0.2932282241166046 0.29999847337914509
		-0.20734334582225641 0.20734367803593209 0.29999847337914554
		-0.29322789190292892 4.2089713781778819e-08 0.29999847337914376
		-0.20734334582225641 -0.20734359385650436 0.29999847337914465
		2.9012396181998811e-07 -0.29322813993717756 0.2999984733791442
		0.20734392607018048 -0.20734359385650436 0.29999847337914465
		0.29322847215085307 4.2089713781778819e-08 0.29999847337914465
		0.20734392607018048 0.20734367803593209 0.2999984733791462
		2.9012396186078874e-07 0.2932282241166046 0.29999847337914509
		-0.20734334582225641 0.20734367803593209 0.29999847337914554
		;
createNode transform -n "LeftUpCheekJntGrp" -p "LeftUpCheekCtrlGrp";
	rename -uid "3E538131-4697-31FE-7815-839CF399C2B1";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1.0000000000000004 ;
createNode joint -n "LeftUpCheekJnt" -p "LeftUpCheekJntGrp";
	rename -uid "3CB92B48-4C4D-3870-0044-6C91BAB65DCA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 3.1805546814635168e-15 -1.987846675914698e-16 ;
	setAttr ".bps" -type "matrix" 0.91192546032954058 7.3439518355478128e-15 -0.41035588798353456 0
		 -0.023006799275317055 0.99842709403546881 -0.051127537423533119 0 0.40971043675974367 0.056065478646753306 0.91049108733378048 0
		 3.308558475480754 12.81177373356841 25.001237605881311 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftUpCheek";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "RightUpCheekCtrlGrp" -p "CheekCtrlGrp";
	rename -uid "A29DE853-4343-4F6B-0ECB-EB855B34886F";
	setAttr ".r" -type "double3" 3.2135727747620839 155.7735014809617 0.0050884270707523835 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999944 ;
createNode transform -n "RightUpCheekCtrlRvs" -p "RightUpCheekCtrlGrp";
	rename -uid "EC9C99E9-4AB3-D81C-B69D-1BBD792E18E9";
createNode transform -n "RightUpCheekCtrl" -p "RightUpCheekCtrlRvs";
	rename -uid "CCA8FD68-4F20-C315-3395-638217D75EF5";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightUpCheekCtrlShape" -p "RightUpCheekCtrl";
	rename -uid "81E7F7D9-4C86-D112-9A7F-7996CED6279C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.20734392607018048 0.20734367803593209 0.2999984733791462
		2.9012396186078874e-07 0.2932282241166046 0.29999847337914509
		-0.20734334582225641 0.20734367803593209 0.29999847337914554
		-0.29322789190292892 4.2089713781778819e-08 0.29999847337914376
		-0.20734334582225641 -0.20734359385650436 0.29999847337914465
		2.9012396181998811e-07 -0.29322813993717756 0.2999984733791442
		0.20734392607018048 -0.20734359385650436 0.29999847337914465
		0.29322847215085307 4.2089713781778819e-08 0.29999847337914465
		0.20734392607018048 0.20734367803593209 0.2999984733791462
		2.9012396186078874e-07 0.2932282241166046 0.29999847337914509
		-0.20734334582225641 0.20734367803593209 0.29999847337914554
		;
createNode transform -n "RightUpCheekJntGrp" -p "RightUpCheekCtrlGrp";
	rename -uid "190983AB-460A-EE7F-BAD4-CBAC10E004D7";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999889 1.0000000000000016 ;
createNode joint -n "RightUpCheekJnt" -p "RightUpCheekJntGrp";
	rename -uid "AD4EFE82-46AF-47FF-B127-A2970D8FFCC5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.385416011097638e-14 -1.5902773407317587e-14 -2.584200678689108e-14 ;
	setAttr ".bps" -type "matrix" -0.91192546032950128 -7.2593840660939435e-15 -0.41035588798362543 0
		 0.023006799275305696 0.99842709403546814 -0.05112753742353026 0 -0.40971043675983509 0.056065478646746193 0.91049108733374085 0
		 -3.3085584526198324 12.811773733568375 25.001237605880974 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightUpCheek";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "LeftCheekCtrlGrp" -p "CheekCtrlGrp";
	rename -uid "F49D664F-454A-C4BB-8906-00B79664FBB8";
	setAttr ".r" -type "double3" 1.4856755324237896 33.966435793869046 -0.65242334436179061 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "LeftCheekCtrlRvs" -p "LeftCheekCtrlGrp";
	rename -uid "00AEFC1C-4067-F79C-48BA-96971CC9854F";
createNode transform -n "LeftCheekCtrl" -p "LeftCheekCtrlRvs";
	rename -uid "65F1FD24-43A9-5540-A977-51945AD05C78";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftCheekCtrlShape" -p "LeftCheekCtrl";
	rename -uid "38C12996-4DD5-B6B3-50B5-428A43329F3B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47689102996141952 0.47689045948264397 0.2999984733791462
		6.6728511689834139e-07 0.67442491546819061 0.29999847337914509
		-0.47688969539118475 0.47689045948264397 0.29999847337914554
		-0.6744241513767314 9.6806341698091289e-08 0.29999847337914376
		-0.47688969539118475 -0.47689026586996003 0.29999847337914465
		6.6728511680450009e-07 -0.6744247218555085 0.2999984733791442
		0.47689102996141952 -0.47689026586996003 0.29999847337914465
		0.67442548594696639 9.6806341698091289e-08 0.29999847337914465
		0.47689102996141952 0.47689045948264397 0.2999984733791462
		6.6728511689834139e-07 0.67442491546819061 0.29999847337914509
		-0.47688969539118475 0.47689045948264397 0.29999847337914554
		;
createNode transform -n "LeftCheekJntGrp" -p "LeftCheekCtrlGrp";
	rename -uid "B52E8FB1-49B9-91E8-CBE0-79B388ECD674";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999933 0.99999999999999933 ;
createNode joint -n "LeftCheekJnt" -p "LeftCheekJntGrp";
	rename -uid "DE2F3C03-40C7-770B-A014-02A60CA4C8EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -9.5416640443905503e-15 9.9392333795734899e-17 ;
	setAttr ".bps" -type "matrix" 0.82931201835052071 -0.0095003407507196873 -0.5587050382312686 0
		 0.025913975365769462 0.99943357614316741 0.02147074191594513 0 0.55818459500430928 -0.032284212911251817 0.82908846783475043 0
		 3.8332705612046545 11.498257116747132 24.734613155197749 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftCheek";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "RightCheekCtrlGrp" -p "CheekCtrlGrp";
	rename -uid "C67435DB-4951-8F38-DC6B-47B3180054AE";
	setAttr ".r" -type "double3" -171.9560595142712 14.485293060654358 179.43933995257203 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999967 ;
createNode transform -n "RightCheekCtrlRvs" -p "RightCheekCtrlGrp";
	rename -uid "7FB2C7C7-498F-757A-99F4-5284B1575902";
createNode transform -n "RightCheekCtrl" -p "RightCheekCtrlRvs";
	rename -uid "E9A28399-4A41-0742-C069-5DBA046C1AEA";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightCheekCtrlShape" -p "RightCheekCtrl";
	rename -uid "B968AE7E-485C-6040-3ED6-8FA722CEAD86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47689102996141469 0.47689045948264264 0.2999984733791462
		6.6728511227981378e-07 0.67442491546818983 0.29999847337914509
		-0.47688969539118942 0.47689045948264264 0.29999847337914554
		-0.67442415137673628 9.6806340543459386e-08 0.29999847337914376
		-0.47688969539118942 -0.47689026586996125 0.29999847337914465
		6.6728511218597248e-07 -0.67442472185550961 0.2999984733791442
		0.47689102996141469 -0.47689026586996125 0.29999847337914465
		0.67442548594696183 9.6806340543459386e-08 0.29999847337914465
		0.47689102996141469 0.47689045948264264 0.2999984733791462
		6.6728511227981378e-07 0.67442491546818983 0.29999847337914509
		-0.47688969539118942 0.47689045948264264 0.29999847337914554
		;
createNode transform -n "RightCheekGrp" -p "RightCheekCtrlGrp";
	rename -uid "538710F4-4547-5C48-AF87-40AE35BAB5FC";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode joint -n "RightCheekJnt" -p "RightCheekGrp";
	rename -uid "698F6DD3-44E3-D509-2140-A99542B81DBA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7294266080457874e-14 3.4986101496098669e-14 -1.0535587382347896e-14 ;
	setAttr ".bps" -type "matrix" -0.82931201835046686 -0.0095003407507261422 -0.55870503823135087 0
		 -0.025913975365779482 0.99943357614316797 0.021470741915942525 0 -0.55818459500439133 -0.032284212911256098 0.82908846783469636 0
		 -3.8332705383435823 11.498257116747094 24.73461315519738 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightCheek";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "BetweenEyesCtrlOffGrp" -p "FaceCtrlGrp";
	rename -uid "8A1FD323-480B-1E06-30C4-A791B8A99969";
	setAttr ".t" -type "double3" 0 1.5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "BetweenEyesCtrl" -p "BetweenEyesCtrlOffGrp";
	rename -uid "C0BD694B-4EA9-DF32-063B-BD82861EBCE4";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftBrow1Ctrl2Shape" -p "BetweenEyesCtrl";
	rename -uid "E1574F5D-4289-FC69-F5F5-0589F384EFA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23696415536710647 -0.2962051942088903 0.40000000000000013
		1.4890505930823356e-16 -0.2792649352637126 0.40000000000000102
		-0.23696415536710613 -0.29620519420889019 0.39999999999999991
		-0.22341194821096458 -6.7974124680815728e-15 0.40000000000000036
		-0.23696415536710613 0.29620519420887576 0.4000000000000008
		1.1284569529412177e-16 0.27926493526369939 0.4000000000000008
		0.23696415536710647 0.29620519420887576 0.4000000000000008
		0.22341194821096491 -6.7448520639033551e-15 0.40000000000000058
		0.23696415536710647 -0.2962051942088903 0.40000000000000013
		1.4890505930823356e-16 -0.2792649352637126 0.40000000000000102
		-0.23696415536710613 -0.29620519420889019 0.39999999999999991
		;
createNode transform -n "BetweenEyesJntOffGrp" -p "BetweenEyesCtrlOffGrp";
	rename -uid "C3A65FD8-4B57-AB68-80CC-F9B98A4C2408";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000011 1.0000000000000007 ;
createNode joint -n "BetweenEyesJnt" -p "BetweenEyesJntOffGrp";
	rename -uid "00A15F1A-4A58-768E-1D9C-839BBB6F561E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 9.1072982488782372e-18 -4.3584927333917278e-17 0
		 -9.1506663357776574e-17 0.98243125048549751 -0.18662485919486585 0 -5.6107462426124854e-18 0.18662485919486652 0.98243125048549695 0
		 -7.515089830814166e-07 14.860223678947566 25.437726904058287 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "NoseCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "EFF9D7C3-4207-8397-D9BC-48B99E280F05";
createNode transform -n "Nose1CtrlGrp" -p "NoseCtrlGrp";
	rename -uid "AA12311B-419D-F327-5F9D-FF8BBC1DBF4C";
	setAttr ".r" -type "double3" 47.24640919394141 0 0 ;
createNode transform -n "Nose1CtrlCnt" -p "Nose1CtrlGrp";
	rename -uid "11D8E2E4-4437-A4E3-9A19-27B70604D08C";
createNode transform -n "Nose1Ctrl" -p "Nose1CtrlCnt";
	rename -uid "5C68B9AA-4BD1-CC57-492F-54A04C64951A";
	addAttr -ci true -sn "UpBlend" -ln "UpBlend" -min 0 -max 1 -at "double";
	setAttr -k on ".UpBlend" 0.3;
createNode nurbsCurve -n "Nose1CtrlShape" -p "Nose1Ctrl";
	rename -uid "791C7A15-4C12-F2E3-5213-DF984AFC3FF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.1558271467145549 0.62062040691385068 
		0.78361162489122449 4.4107260100220936e-17 1.1952108850478522 1.1081941875543864 
		-1.1558271467145549 0.62062040691384968 0.78361162489122438 -0.72032622191035234 
		5.0555104490218524e-17 5.7448982375248316e-17 -1.1558271467145549 -1.0343673448564163 
		-0.78361162489122449 -7.2155570302420965e-17 -0.97521088504786202 -1.1081941875543886 
		1.1558271467145549 -1.0343673448564163 -0.78361162489122438 0.72032622191035234 -7.9793498441181833e-17 
		-1.511240500779959e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "Nose2CtrlGrp" -p "NoseCtrlGrp";
	rename -uid "836ACFF0-41B2-6BCA-4A4D-4E960DDF5969";
	setAttr ".r" -type "double3" 8.6428155350749183 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Nose2CtrlCnt" -p "Nose2CtrlGrp";
	rename -uid "041E3619-484B-89C9-FF56-D4B68D06F634";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999933 ;
createNode transform -n "Nose2Ctrl" -p "Nose2CtrlCnt";
	rename -uid "11761F87-44A2-42B4-E135-95A6985ED1C2";
createNode nurbsCurve -n "Nose2CtrlShape" -p "Nose2Ctrl";
	rename -uid "EF63B67B-40E6-6F74-69AE-E2AE65F83A18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9394387716057793 0.63472541616189437 0.09999999999999748
		1.1196458333133008e-16 1.1973747687989442 0.099999999999996508
		-1.9394387716057793 0.63472541616189404 0.099999999999997591
		-1.8285204094647407 3.152348825098669e-15 0.099999999999997591
		-1.9394387716057793 -1.0578756936031499 0.099999999999997591
		-1.8316413999845324e-16 -0.9973747687989466 0.099999999999997702
		1.9394387716057793 -1.0578756936031499 0.099999999999997591
		1.8285204094647407 2.9646330958907502e-15 0.099999999999997591
		1.9394387716057793 0.63472541616189437 0.09999999999999748
		1.1196458333133008e-16 1.1973747687989442 0.099999999999996508
		-1.9394387716057793 0.63472541616189404 0.099999999999997591
		;
createNode transform -n "Nose3CtrlGrp" -p "Nose2Ctrl";
	rename -uid "65772263-4F38-E966-EEF7-58BCCA6EF9A1";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 3.5527136788005009e-15 0.53398219569279348 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000009 ;
createNode transform -n "Nose3Ctrl" -p "Nose3CtrlGrp";
	rename -uid "37D023D0-4425-A3B1-CAFA-99BA3C9AEBD5";
createNode nurbsCurve -n "Nose3CtrlShape" -p "Nose3Ctrl";
	rename -uid "EC3EF96A-47EE-35F5-3F71-4082D00628D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7631261560052538 0.56420036992168499 -3.4730229185076693e-15
		1.0178598484666369e-16 1.086555350043505 -4.3750791260156098e-15
		-1.7631261560052538 0.56420036992168499 -3.5840452209701849e-15
		-1.6622912813315822 2.8881301289405995e-15 -3.5527136788005009e-15
		-1.7631261560052538 -0.94033394986946617 -3.5840452209701849e-15
		-1.6651285454404835e-16 -0.88655535004350794 -3.5285340697389271e-15
		1.7631261560052538 -0.94033394986946617 -3.5840452209701849e-15
		1.6622912813315822 2.7212717029780038e-15 -3.5527136788005009e-15
		1.7631261560052538 0.56420036992168499 -3.4730229185076693e-15
		1.0178598484666369e-16 1.086555350043505 -4.3750791260156098e-15
		-1.7631261560052538 0.56420036992168499 -3.5840452209701849e-15
		;
createNode transform -n "Nose4CtrlGrp" -p "Nose3Ctrl";
	rename -uid "8EB14D47-49EC-1E2D-325A-69AB9AA5F74F";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 0.5 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000009 ;
createNode transform -n "Nose4Ctrl" -p "Nose4CtrlGrp";
	rename -uid "6F54BCB3-4B3E-D37C-77A1-A99475356330";
createNode nurbsCurve -n "Nose4CtrlShape" -p "Nose4Ctrl";
	rename -uid "45CBF687-4DDC-A505-9C8D-6EAEE1B7F0AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.28210018496084099 0.35372865890728966 
		0.86330933690515044 -2.4428636363199188e-17 0.42568942559957851 1.1463453315474286 
		0.28210018496084099 0.35372865890728966 0.86330933690515022 0.25710105151261831 0.17999999999999922 
		0.18000000000000255 0.53285590492603274 -0.34118597672187151 -0.30270476093299198 
		3.9963085090571745e-17 -0.55706827679873905 -0.50264761953350079 -0.53285590492603274 
		-0.34118597672187145 -0.30270476093299187 -0.25710105151261831 0.17999999999999911 
		0.1800000000000023 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftNoseCtrlGrp" -p "Nose3Ctrl";
	rename -uid "35A5F01A-4908-6E8D-ECCF-5F84DBF05E2D";
	setAttr ".t" -type "double3" 0.8 -0.3 -0.3 ;
createNode transform -n "LeftNoseCtrl" -p "LeftNoseCtrlGrp";
	rename -uid "CC0AD427-45A6-BF52-7E88-EB8C61C171CE";
createNode nurbsCurve -n "LeftNoseCtrlShape" -p "LeftNoseCtrl";
	rename -uid "7B00D106-4D5B-41EF-8303-A2A7512A98A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 60 0 no 3
		61 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60
		61
		2.1073466977752892e-16 4.7184478546569153e-15 0.90000000000000169
		2.1073466977752892e-16 0.061803400000004755 0.89021120000000187
		2.1073466977752892e-16 0.11755700000000481 0.86180340000000177
		2.1073466977752892e-16 0.16180340000000476 0.81755700000000175
		2.1073466977752892e-16 0.1902112000000048 0.7618034000000018
		2.1073466977752892e-16 0.20000000000000473 0.70000000000000184
		0.061803400000000258 0.1902112000000048 0.70000000000000184
		0.1175570000000003 0.16180340000000476 0.70000000000000184
		0.16180340000000026 0.11755700000000481 0.70000000000000184
		0.1902112000000003 0.061803400000004755 0.70000000000000184
		0.20000000000000023 4.7184478546569153e-15 0.70000000000000184
		0.1902112000000003 4.7184478546569153e-15 0.7618034000000018
		0.16180340000000026 4.7184478546569153e-15 0.81755700000000175
		0.1175570000000003 4.7184478546569153e-15 0.86180340000000177
		0.061803400000000258 4.7184478546569153e-15 0.89021120000000187
		2.1073466977752892e-16 4.7184478546569153e-15 0.90000000000000169
		2.1073466977752892e-16 -0.061803399999995318 0.89021120000000187
		2.1073466977752892e-16 -0.11755699999999535 0.86180340000000177
		2.1073466977752892e-16 -0.16180339999999532 0.81755700000000175
		2.1073466977752892e-16 -0.19021119999999536 0.7618034000000018
		2.1073466977752892e-16 -0.19999999999999529 0.70000000000000184
		0.061803400000000258 -0.19021119999999536 0.70000000000000184
		0.1175570000000003 -0.16180339999999532 0.70000000000000184
		0.16180340000000026 -0.11755699999999535 0.70000000000000184
		0.1902112000000003 -0.061803399999995318 0.70000000000000184
		0.20000000000000023 4.7184478546569153e-15 0.70000000000000184
		0.1902112000000003 4.7184478546569153e-15 0.63819660000000178
		0.16180340000000026 4.7184478546569153e-15 0.58244300000000171
		0.1175570000000003 4.7184478546569153e-15 0.5381966000000018
		0.061803400000000258 4.7184478546569153e-15 0.50978880000000182
		2.1073466977752892e-16 4.7184478546569153e-15 0.50000000000000189
		2.1073466977752892e-16 0.061803400000004755 0.50978880000000182
		2.1073466977752892e-16 0.11755700000000481 0.5381966000000018
		2.1073466977752892e-16 0.16180340000000476 0.58244300000000171
		2.1073466977752892e-16 0.1902112000000048 0.63819660000000178
		2.1073466977752892e-16 0.20000000000000473 0.70000000000000184
		-0.061803399999999814 0.1902112000000048 0.70000000000000184
		-0.11755699999999986 0.16180340000000476 0.70000000000000184
		-0.16180339999999982 0.11755700000000481 0.70000000000000184
		-0.19021119999999986 0.061803400000004755 0.70000000000000184
		-0.19999999999999979 4.7184478546569153e-15 0.70000000000000184
		-0.19021119999999986 4.7184478546569153e-15 0.63819660000000178
		-0.16180339999999982 4.7184478546569153e-15 0.58244300000000171
		-0.11755699999999986 4.7184478546569153e-15 0.5381966000000018
		-0.061803399999999814 4.7184478546569153e-15 0.50978880000000182
		2.1073466977752892e-16 4.7184478546569153e-15 0.50000000000000189
		2.1073466977752892e-16 -0.061803399999995318 0.50978880000000182
		2.1073466977752892e-16 -0.11755699999999535 0.5381966000000018
		2.1073466977752892e-16 -0.16180339999999532 0.58244300000000171
		2.1073466977752892e-16 -0.19021119999999536 0.63819660000000178
		2.1073466977752892e-16 -0.19999999999999529 0.70000000000000184
		-0.061803399999999814 -0.19021119999999536 0.70000000000000184
		-0.11755699999999986 -0.16180339999999532 0.70000000000000184
		-0.16180339999999982 -0.11755699999999535 0.70000000000000184
		-0.19021119999999986 -0.061803399999995318 0.70000000000000184
		-0.19999999999999979 4.7184478546569153e-15 0.70000000000000184
		-0.19021119999999986 4.7184478546569153e-15 0.7618034000000018
		-0.16180339999999982 4.7184478546569153e-15 0.81755700000000175
		-0.11755699999999986 4.7184478546569153e-15 0.86180340000000177
		-0.061803399999999814 4.7184478546569153e-15 0.89021120000000187
		2.1073466977752892e-16 4.7184478546569153e-15 0.90000000000000169
		;
createNode transform -n "RightNoseCtrlGrp" -p "Nose3Ctrl";
	rename -uid "F512EC2D-4FDA-1622-AC75-B9BCCE1B98D4";
	setAttr ".t" -type "double3" -0.8 -0.3 -0.3 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -0.99999999999999978 ;
createNode transform -n "RightNoseCtrl" -p "RightNoseCtrlGrp";
	rename -uid "6622F227-4054-D3D4-0046-A4A54B5C2F29";
createNode nurbsCurve -n "RightNoseCtrlShape" -p "RightNoseCtrl";
	rename -uid "EDDFD1CD-4582-1700-18E8-91B206FA6289";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 60 0 no 3
		61 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60
		61
		2.9955251174754147e-16 4.7184478546569153e-15 0.89999999999999902
		2.9955251174754147e-16 0.061803400000004755 0.89021119999999876
		2.9955251174754147e-16 0.11755700000000481 0.86180339999999911
		2.9955251174754147e-16 0.16180340000000476 0.81755699999999909
		2.9955251174754147e-16 0.1902112000000048 0.76180339999999913
		2.9955251174754147e-16 0.20000000000000473 0.69999999999999907
		0.061803400000000334 0.1902112000000048 0.69999999999999907
		0.11755700000000036 0.16180340000000476 0.69999999999999907
		0.16180340000000032 0.11755700000000481 0.69999999999999907
		0.19021120000000033 0.061803400000004755 0.69999999999999907
		0.20000000000000026 4.7184478546569153e-15 0.69999999999999907
		0.19021120000000033 4.7184478546569153e-15 0.76180339999999913
		0.16180340000000032 4.7184478546569153e-15 0.81755699999999909
		0.11755700000000036 4.7184478546569153e-15 0.86180339999999911
		0.061803400000000334 4.7184478546569153e-15 0.89021119999999876
		2.9955251174754147e-16 4.7184478546569153e-15 0.89999999999999902
		2.9955251174754147e-16 -0.061803399999995318 0.89021119999999876
		2.9955251174754147e-16 -0.11755699999999535 0.86180339999999911
		2.9955251174754147e-16 -0.16180339999999532 0.81755699999999909
		2.9955251174754147e-16 -0.19021119999999536 0.76180339999999913
		2.9955251174754147e-16 -0.19999999999999529 0.69999999999999907
		0.061803400000000334 -0.19021119999999536 0.69999999999999907
		0.11755700000000036 -0.16180339999999532 0.69999999999999907
		0.16180340000000032 -0.11755699999999535 0.69999999999999907
		0.19021120000000033 -0.061803399999995318 0.69999999999999907
		0.20000000000000026 4.7184478546569153e-15 0.69999999999999907
		0.19021120000000033 4.7184478546569153e-15 0.638196599999999
		0.16180340000000032 4.7184478546569153e-15 0.58244299999999893
		0.11755700000000036 4.7184478546569153e-15 0.53819659999999891
		0.061803400000000334 4.7184478546569153e-15 0.50978879999999893
		2.9955251174754147e-16 4.7184478546569153e-15 0.499999999999999
		2.9955251174754147e-16 0.061803400000004755 0.50978879999999893
		2.9955251174754147e-16 0.11755700000000481 0.53819659999999891
		2.9955251174754147e-16 0.16180340000000476 0.58244299999999893
		2.9955251174754147e-16 0.1902112000000048 0.638196599999999
		2.9955251174754147e-16 0.20000000000000473 0.69999999999999907
		-0.061803399999999724 0.1902112000000048 0.69999999999999907
		-0.11755699999999977 0.16180340000000476 0.69999999999999907
		-0.16180339999999979 0.11755700000000481 0.69999999999999907
		-0.19021119999999983 0.061803400000004755 0.69999999999999907
		-0.19999999999999976 4.7184478546569153e-15 0.69999999999999907
		-0.19021119999999983 4.7184478546569153e-15 0.638196599999999
		-0.16180339999999979 4.7184478546569153e-15 0.58244299999999893
		-0.11755699999999977 4.7184478546569153e-15 0.53819659999999891
		-0.061803399999999724 4.7184478546569153e-15 0.50978879999999893
		2.9955251174754147e-16 4.7184478546569153e-15 0.499999999999999
		2.9955251174754147e-16 -0.061803399999995318 0.50978879999999893
		2.9955251174754147e-16 -0.11755699999999535 0.53819659999999891
		2.9955251174754147e-16 -0.16180339999999532 0.58244299999999893
		2.9955251174754147e-16 -0.19021119999999536 0.638196599999999
		2.9955251174754147e-16 -0.19999999999999529 0.69999999999999907
		-0.061803399999999724 -0.19021119999999536 0.69999999999999907
		-0.11755699999999977 -0.16180339999999532 0.69999999999999907
		-0.16180339999999979 -0.11755699999999535 0.69999999999999907
		-0.19021119999999983 -0.061803399999995318 0.69999999999999907
		-0.19999999999999976 4.7184478546569153e-15 0.69999999999999907
		-0.19021119999999983 4.7184478546569153e-15 0.76180339999999913
		-0.16180339999999979 4.7184478546569153e-15 0.81755699999999909
		-0.11755699999999977 4.7184478546569153e-15 0.86180339999999911
		-0.061803399999999724 4.7184478546569153e-15 0.89021119999999876
		2.9955251174754147e-16 4.7184478546569153e-15 0.89999999999999902
		;
createNode transform -n "JawCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "6DB5C089-49E6-42AC-11F3-17B6BDA51E8A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999922 ;
createNode transform -n "JawCtrl" -p "JawCtrlGrp";
	rename -uid "A4E8B183-4F49-FD31-F89E-7DA32A9AD116";
	addAttr -ci true -sn "TeethCtrlVis" -ln "TeethCtrlVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ExpressionDrive" -ln "ExpressionDrive" -nn "________" -min 
		0 -max 0 -en "Expression" -at "enum";
	addAttr -ci true -sn "A" -ln "A" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "E" -ln "E" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "I" -ln "I" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "O" -ln "O" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "U" -ln "U" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BigA" -ln "BigA" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -cb on ".TeethCtrlVis" yes;
	setAttr -k on ".ExpressionDrive";
	setAttr -k on ".A";
	setAttr -k on ".E";
	setAttr -k on ".I";
	setAttr -k on ".O";
	setAttr -k on ".U";
	setAttr -k on ".BigA";
createNode nurbsCurve -n "JawCtrlShape" -p "JawCtrl";
	rename -uid "988ECBD4-4AA8-0CF3-FCCD-EB90F8CF6AB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.252260010665331 -1.4117134958195359 7.9907229209482997
		-2.1454837907297786e-14 -1.9304165758546026 7.9907229209482997
		-1.252260010665381 -1.4117134958195341 7.9907229209482962
		-1.7709630907004479 0.097616193117169028 7.9907229209482997
		-1.2522600106653807 0.097628715716959608 7.9907229209483024
		-2.2861712524102787e-14 0.097633902747627455 7.9907229209483024
		1.2522600106653303 0.097628715716959608 7.9907229209483024
		1.7709630907003999 0.097616193117169028 7.9907229209483024
		1.252260010665331 -1.4117134958195359 7.9907229209482997
		-2.1454837907297786e-14 -1.9304165758546026 7.9907229209482997
		-1.252260010665381 -1.4117134958195341 7.9907229209482962
		;
createNode transform -n "FaceSysGrp" -p "FaceGrp";
	rename -uid "5F4F4140-4A63-05B9-5C88-999E3BD05671";
createNode transform -n "FaceConnection" -p "FaceSysGrp";
	rename -uid "8EB0B00B-4BF0-C114-A9E3-4E93F9414927";
	addAttr -ci true -sn "Blink_Up_L" -ln "Blink_Up_L" -at "double";
	addAttr -ci true -sn "Blink_Up_R" -ln "Blink_Up_R" -at "double";
	addAttr -ci true -sn "Blink_Down_L" -ln "Blink_Down_L" -at "double";
	addAttr -ci true -sn "Blink_Down_R" -ln "Blink_Down_R" -at "double";
	addAttr -ci true -sn "Cheek_Up_L" -ln "Cheek_Up_L" -at "double";
	addAttr -ci true -sn "Cheek_Up_R" -ln "Cheek_Up_R" -at "double";
	addAttr -ci true -sn "Cheek_L" -ln "Cheek_L" -at "double";
	addAttr -ci true -sn "Cheek_R" -ln "Cheek_R" -at "double";
	addAttr -ci true -sn "Mouth_In_L" -ln "Mouth_In_L" -at "double";
	addAttr -ci true -sn "Mouth_In_R" -ln "Mouth_In_R" -at "double";
	addAttr -ci true -sn "Mouth_Out_L" -ln "Mouth_Out_L" -at "double";
	addAttr -ci true -sn "Mouth_Out_R" -ln "Mouth_Out_R" -at "double";
	addAttr -ci true -sn "Mouth_Up_L" -ln "Mouth_Up_L" -at "double";
	addAttr -ci true -sn "Mouth_Up_R" -ln "Mouth_Up_R" -at "double";
	addAttr -ci true -sn "Mouth_Down_L" -ln "Mouth_Down_L" -at "double";
	addAttr -ci true -sn "Mouth_Down_R" -ln "Mouth_Down_R" -at "double";
	addAttr -ci true -sn "Sad_L" -ln "Sad_L" -at "double";
	addAttr -ci true -sn "Sad_R" -ln "Sad_R" -at "double";
	addAttr -ci true -sn "Angry_L" -ln "Angry_L" -at "double";
	addAttr -ci true -sn "Angry_R" -ln "Angry_R" -at "double";
	addAttr -ci true -sn "Brow_Up_L_Left" -ln "Brow_Up_L_Left" -at "double";
	addAttr -ci true -sn "Brow_Up_L_Middle" -ln "Brow_Up_L_Middle" -at "double";
	addAttr -ci true -sn "Brow_Up_L_Right" -ln "Brow_Up_L_Right" -at "double";
	addAttr -ci true -sn "Brow_Up_R_Left" -ln "Brow_Up_R_Left" -at "double";
	addAttr -ci true -sn "Brow_Up_R_Middle" -ln "Brow_Up_R_Middle" -at "double";
	addAttr -ci true -sn "Brow_Up_R_Right" -ln "Brow_Up_R_Right" -at "double";
	addAttr -ci true -sn "Brow_Down_L_Left" -ln "Brow_Down_L_Left" -at "double";
	addAttr -ci true -sn "Brow_Down_L_Middle" -ln "Brow_Down_L_Middle" -at "double";
	addAttr -ci true -sn "Brow_Down_L_Right" -ln "Brow_Down_L_Right" -at "double";
	addAttr -ci true -sn "Brow_Down_R_Left" -ln "Brow_Down_R_Left" -at "double";
	addAttr -ci true -sn "Brow_Down_R_Middle" -ln "Brow_Down_R_Middle" -at "double";
	addAttr -ci true -sn "Brow_Down_R_Right" -ln "Brow_Down_R_Right" -at "double";
	addAttr -ci true -sn "Brow_In_L_Left" -ln "Brow_In_L_Left" -at "double";
	addAttr -ci true -sn "Brow_In_L_Middle" -ln "Brow_In_L_Middle" -at "double";
	addAttr -ci true -sn "Brow_In_L_Right" -ln "Brow_In_L_Right" -at "double";
	addAttr -ci true -sn "Brow_In_R_Left" -ln "Brow_In_R_Left" -at "double";
	addAttr -ci true -sn "Brow_In_R_Middle" -ln "Brow_In_R_Middle" -at "double";
	addAttr -ci true -sn "Brow_In_R_Right" -ln "Brow_In_R_Right" -at "double";
	addAttr -ci true -sn "Brow_Out_L_Left" -ln "Brow_Out_L_Left" -at "double";
	addAttr -ci true -sn "Brow_Out_L_Middle" -ln "Brow_Out_L_Middle" -at "double";
	addAttr -ci true -sn "Brow_Out_L_Right" -ln "Brow_Out_L_Right" -at "double";
	addAttr -ci true -sn "Brow_Out_R_Left" -ln "Brow_Out_R_Left" -at "double";
	addAttr -ci true -sn "Brow_Out_R_Middle" -ln "Brow_Out_R_Middle" -at "double";
	addAttr -ci true -sn "Brow_Out_R_Right" -ln "Brow_Out_R_Right" -at "double";
	addAttr -ci true -sn "A" -ln "A" -at "double";
	addAttr -ci true -sn "E" -ln "E" -at "double";
	addAttr -ci true -sn "I" -ln "I" -at "double";
	addAttr -ci true -sn "O" -ln "O" -at "double";
	addAttr -ci true -sn "U" -ln "U" -at "double";
	addAttr -ci true -sn "Big_A" -ln "Big_A" -at "double";
	addAttr -ci true -sn "Squeeze_L" -ln "Squeeze_L" -at "double";
	addAttr -ci true -sn "Squeeze_R" -ln "Squeeze_R" -at "double";
	addAttr -ci true -sn "ADrv" -ln "ADrv" -at "double";
	addAttr -ci true -sn "EDrv" -ln "EDrv" -at "double";
	addAttr -ci true -sn "IDrv" -ln "IDrv" -at "double";
	addAttr -ci true -sn "ODrv" -ln "ODrv" -at "double";
	addAttr -ci true -sn "UDrv" -ln "UDrv" -at "double";
	addAttr -ci true -sn "Big_ADrv" -ln "Big_ADrv" -at "double";
	addAttr -ci true -sn "Blink_Up_LDrv" -ln "Blink_Up_LDrv" -at "double";
	addAttr -ci true -sn "Blink_Up_RDrv" -ln "Blink_Up_RDrv" -at "double";
	addAttr -ci true -sn "Blink_Down_LDrv" -ln "Blink_Down_LDrv" -at "double";
	addAttr -ci true -sn "Blink_Down_RDrv" -ln "Blink_Down_RDrv" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CheekCtrlPosCrv" -p "FaceSysGrp";
	rename -uid "6BC26AFD-4DE9-2586-A4C3-E5B06A5F20B3";
createNode nurbsCurve -n "CheekCtrlPosCrvShape" -p "CheekCtrlPosCrv";
	rename -uid "93E8014B-47A4-2895-46B1-96BAF419C829";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		3.8332707881927446 -0.65658950805520888 -0.133349418640341
		3.3085353374476769 0.6568603515637399 0.13330745697003898
		-3.3085815906529081 0.6565380096424942 0.133349418640341
		-3.8332707881927446 -0.6568603515637399 -0.13331508636453471
		;
createNode transform -n "NoseUpHeadPos" -p "FaceSysGrp";
	rename -uid "C35DA889-4A6A-4AAE-FFBD-598DB044F9BE";
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode locator -n "NoseUpHeadPosShape" -p "NoseUpHeadPos";
	rename -uid "9DB088D1-4073-7D77-5F71-3CB88274F6B8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseUpJawUpPos" -p "NoseUpHeadPos";
	rename -uid "391B96EA-4003-4B73-8056-47BAA3688482";
	setAttr ".t" -type "double3" 1 -2.3085320547572066e-12 0 ;
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode locator -n "NoseUpJawUpPosShape" -p "NoseUpJawUpPos";
	rename -uid "ECBB2324-4E29-7475-B53F-EAAD09E037AD";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -2.0106131115092204e-12 0 0 ;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseUpJawPos" -p "NoseUpHeadPos";
	rename -uid "AC5B62C3-4E44-77B3-2290-3EA5F7D38C08";
	setAttr ".r" -type "double3" -59.999999999999993 0 -90.000000000003254 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999922 ;
createNode locator -n "NoseUpJawPosShape" -p "NoseUpJawPos";
	rename -uid "14A97044-459C-F036-1544-299041EB339A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseUpJawEndPos" -p "NoseUpJawPos";
	rename -uid "B134F091-450C-501B-4FB8-A8A0F3E19DDD";
	setAttr ".t" -type "double3" 3.1368995106861503e-18 -6.6613381477515062e-16 1 ;
	setAttr ".r" -type "double3" -2.2691769524649191e-12 -90 -90.000000001034749 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999989 ;
createNode locator -n "NoseUpJawEndPosShape" -p "NoseUpJawEndPos";
	rename -uid "5F6BF8EE-4648-054A-1BBD-8BB7F722C2C7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseJntGrp" -p "FaceSysGrp";
	rename -uid "17862E36-4DBA-4C5B-8900-01A1C1480451";
createNode joint -n "Nose1Jnt" -p "NoseJntGrp";
	rename -uid "CDCB0EF0-4BA6-1EC7-7603-EC854C3EA7A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".bps" -type "matrix" 0.99999999999999989 -9.1072982488782372e-18 1.8447699964840858e-16 0
		 -1.8663095488063476e-16 0.67884676521113829 0.7342799666083597 0 -1.7017909001411842e-16 -0.73427996660835981 0.67884676521113774 0
		 1.1432020136893823e-08 13.227116949569828 25.338184425355553 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Nose1";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode joint -n "Nose2Jnt" -p "Nose1Jnt";
	rename -uid "EF949DEE-45AC-4489-4D2D-7EB42FD5EF62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -38.603593658866473 -1.0399009888867717e-14 3.6420475888007063e-15 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -9.1072982488782372e-18 1.8447699964840858e-16 0
		 -3.9669005126784757e-17 0.98864436140511214 0.1502741716393019 0 -2.4943617626547712e-16 -0.15027417163930173 0.98864436140511236 0
		 1.1432205327175939e-08 12.75750237284595 25.772346258446987 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Nose2";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode joint -n "Nose3Jnt" -p "Nose2Jnt";
	rename -uid "85033FA1-4F66-9676-BC42-87BE1B20BC15";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999999999989 -9.1072982488782372e-18 1.8447699964840858e-16 0
		 -3.9669005126784763e-17 0.98864436140511236 0.15027417163930193 0 -2.4943617626547697e-16 -0.15027417163930162 0.98864436140511169 0
		 1.1432259191359049e-08 12.677258640718074 26.300264745309399 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Nose3";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode joint -n "Nose4Jnt" -p "Nose3Jnt";
	rename -uid "F70C2DF8-429C-5508-F427-7EBC82512952";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 -9.1072982488782388e-18 1.8447699964840863e-16 0
		 -3.9669005126784744e-17 0.98864436140511192 0.15027417163930187 0 -2.4943617626547737e-16 -0.15027417163930185 0.98864436140511325 0
		 1.1432098461965217e-08 13.148059074360729 26.371826520134594 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode joint -n "LeftNoseJnt" -p "Nose2Jnt";
	rename -uid "9D199B98-4C49-2ABC-FE53-F6802C86418E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -1.0615471276233344 0 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -9.1072982488782372e-18 1.8447699964840858e-16 0
		 -3.5041034269867099e-17 0.99125872559168238 0.13193232711641792 0 -2.5012829091286116e-16 -0.13193232711641761 0.99125872559168171 0
		 0.88586497786029084 12.416185060941514 25.952454272578095 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftNose";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode joint -n "RightNoseJnt" -p "Nose2Jnt";
	rename -uid "52C25BC0-43E5-818F-8A48-CF9E10D7C31D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 1.0615471276232884 180 0 ;
	setAttr ".bps" -type "matrix" -0.99999999999999989 2.7510576578137316e-17 -3.0555101491739356e-16 0
		 -3.2772200634262908e-17 0.99125872559168249 0.13193232711641872 0 -3.7257195232721338e-16 -0.13193232711641845 0.99125872559168204 0
		 -0.88586498856766682 12.416182361395881 25.952458394670668 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightNose";
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "444A2FF0-41E1-7B52-55CF-34A0B83D30B6";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "70F8EDDA-411A-FE66-DE4D-99B57A61C938";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "B5A2F159-4C74-7D94-B10B-DE9A3670D3FA";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnCurveInfo -n "LeftUpCheekCtrlGrpPC";
	rename -uid "359B2DBC-4917-E428-9AA5-5B9EE6AE4040";
	setAttr ".pr" 0.33333333333333331;
	setAttr ".top" yes;
createNode multiplyDivide -n "LeftUpCheekCtrlRvsMultMD";
	rename -uid "DE719491-48D5-D271-1BC0-A68079F4DEA9";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightUpCheekCtrlGrpPC";
	rename -uid "855FFC21-4692-8461-B8B0-099BFDB3C675";
	setAttr ".pr" 0.66666666666666663;
	setAttr ".top" yes;
createNode multiplyDivide -n "RightUpCheekCtrlRvsMultMD";
	rename -uid "63280CA0-450B-29A5-B956-749072B47938";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftCheekCtrlGrpPC";
	rename -uid "2DFBB385-4253-B765-A73F-078D591C6482";
	setAttr ".top" yes;
createNode multiplyDivide -n "LeftCheekCtrlRvsMultMD";
	rename -uid "7062CD0E-40F3-9778-089A-4EBBAB56D923";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightCheekCtrlGrpPC";
	rename -uid "E594D14B-482D-AAAB-ADA8-1BBF5D997E8E";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode multiplyDivide -n "RightCheekCtrlRvsMultMD";
	rename -uid "2A162538-48F6-72DD-5949-2F97198EDB54";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode remapValue -n "JawUpRM";
	rename -uid "DEFA0AF2-47F8-0682-2AE1-7F8872D26D7B";
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 2 1 1 3;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "JawUpMD";
	rename -uid "04D8ACC2-4CCD-7DC3-8951-B29D267A4E1A";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.51800001 1 1 ;
createNode distanceBetween -n "JawUpDB";
	rename -uid "60760FF7-4376-E0D7-EE94-E997927E9DF8";
createNode multDoubleLinear -n "JawUpRMReverseML";
	rename -uid "62B749F9-4EC8-B0AD-488D-C08D3AEA68FA";
	setAttr ".i2" -1;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "78B1C864-4B27-8ECC-481F-1EA7E08D41AD";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode decomposeMatrix -n "Nose2CtrlDM";
	rename -uid "94C276F4-4153-22D1-A8A1-9599CD62EEFB";
createNode multMatrix -n "Nose2CtrlMM";
	rename -uid "08BFD571-4EE6-1FFC-3000-509BEDE71625";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 0.98864436140511214 0.15027417163930187 0
		 0 -0.15027417163930187 0.98864436140511214 0 0 12.757920011449755 25.776487863776367 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.67884676521113796 -0.73427996660835981 0
		 0 0.73427996660835981 0.67884676521113785 0 0 -27.587831378489614 -7.4908423931414312 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "FAAE420A-47A5-6D4C-FB2B-BBBCCEAF203F";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode clamp -n "LeftBrowLExpCP";
	rename -uid "EA28A062-4486-0451-CDFE-D2BC7DB56A27";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode remapValue -n "LeftBrowLAngryRM";
	rename -uid "EC96E2A9-4B6B-83A6-5419-1EB5457951AF";
	setAttr ".imx" 45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion141";
	rename -uid "073EF5C6-48AA-506D-A4AE-01B3311180F8";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "LeftBrowLSadRM";
	rename -uid "62B173A5-4DA8-0F18-7CE1-F696778C190B";
	setAttr ".imx" -45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion142";
	rename -uid "09BD4822-450A-C990-93BB-32955D585875";
	setAttr ".cf" 57.295779513082323;
createNode clamp -n "RightBrowLExpCP";
	rename -uid "9AAEE94B-46B7-F1D7-D165-8C8ACC6D45BF";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode remapValue -n "RightBrowLAngryRM";
	rename -uid "7CC17018-4D0B-2D91-9BB0-73A22526A605";
	setAttr ".imx" 45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion145";
	rename -uid "A866628F-41AF-443D-167C-858CC7258DDD";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "RightBrowLSadRM";
	rename -uid "814238BB-45FD-40D1-64D1-2FABC23C2650";
	setAttr ".imx" -45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion146";
	rename -uid "F43AB6EF-4143-3240-C163-338E754ACF16";
	setAttr ".cf" 57.295779513082323;
createNode clamp -n "LeftBrowL1UpDownCP";
	rename -uid "23AAF8C9-4232-EA31-BBC3-C6B9C05A6177";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1UpAL";
	rename -uid "E0C0B06A-4E5B-7C63-34F4-A2B92117CAEB";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrowUpDownSR";
	rename -uid "19C00C93-4E2D-C905-70D7-83B7350EC714";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "LeftEyeBrow1UpDownSR";
	rename -uid "92EB6D61-4085-0B22-84D8-7ABC316DE04F";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1DownAL";
	rename -uid "D7472E49-40B4-666D-7D7C-179A2F70112B";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL2UpDownCP";
	rename -uid "09A4DAB4-49FE-6F16-15CA-C5A55A52DE7E";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2UpAL";
	rename -uid "87A6243B-4663-C052-FC9E-2794DF0772E7";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow2UpDownSR";
	rename -uid "8F9451C6-48FD-50E2-3502-91A4828928E1";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2DownAL";
	rename -uid "C4A659C6-44B3-FF7C-62CF-AABACD5F2BC4";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL3UpDownCP";
	rename -uid "F818E589-4422-B6B5-AF95-BDA8DF848025";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3UpAL";
	rename -uid "6A33A000-4167-2B74-89A5-6C9A6F67B8CF";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow3UpDownSR";
	rename -uid "A00A9A36-4971-6E65-B8CF-A2A23F93D074";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3DownAL";
	rename -uid "AEB40149-4A4B-DEF1-71EC-5EB13311FAE2";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL1UpDownCP";
	rename -uid "75AD047C-428A-6309-F8E6-C8946D6725EC";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow1UpAL";
	rename -uid "A9DBBF2B-49FD-A197-5D77-40A86FD0D5BD";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrowUpDownSR";
	rename -uid "9C4CBD77-4479-4538-3403-F68D5DB2FE7C";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "RightEyeBrow1UpDownSR";
	rename -uid "CFC842C6-476F-BC8E-A401-7195A4D78B21";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow1DownAL";
	rename -uid "4EBDE459-4E65-D870-D90E-9483E97D7CF7";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL2UpDownCP";
	rename -uid "4996E006-4A1F-C1A0-8965-2E9198BC7F2D";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow2UpAL";
	rename -uid "036652AC-4E5A-2189-6EA2-BBB4B89CB480";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow2UpDownSR";
	rename -uid "5F41BE44-4759-B657-C34C-53B42A4EFCD8";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow2DownAL";
	rename -uid "253A4455-4B9D-57DC-C558-328E313D69FD";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL3UpDownCP";
	rename -uid "99E6F3D1-4977-605E-12D0-88BE08FB2A8D";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow3UpAL";
	rename -uid "68861B1B-449B-500B-358C-5DAB682EA81A";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow3UpDownSR";
	rename -uid "1EFC36A7-4A2C-0596-9951-47A12B590C13";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow3DownAL";
	rename -uid "D37D50D9-4FBC-F156-2834-D2ACF5075FA0";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL1InOutCP";
	rename -uid "396D605E-428E-C3F5-6511-AAB75E850DAC";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1InAL";
	rename -uid "D017F0FB-4CB7-A8F9-3E71-54AA6DD09A1E";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrowInOutSR";
	rename -uid "2857A206-419C-FF0E-AA5D-5A84D80C7084";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "LeftEyeBrow1InOutSR";
	rename -uid "5176A1C3-4EA7-E430-93F7-2C8611629C3C";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1OutAL";
	rename -uid "6F5B86BF-42A0-7627-14F4-57BDEAF5B881";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL2InOutCP";
	rename -uid "1EE1E2BD-49FD-AD7B-0C71-128C20BA1A47";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2InAL";
	rename -uid "628C6CAC-4AB9-7826-3437-F69CF0791C37";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow2InOutSR";
	rename -uid "DF1DB04B-4FA2-423C-9DA8-4097754C101D";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2OutAL";
	rename -uid "EC9CBC76-41B5-821A-749B-609648B372DA";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL3InOutCP";
	rename -uid "9BB03002-4870-CA39-0A80-78AAF40E2359";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3InAL";
	rename -uid "13B5C829-4F73-99E3-8345-96A98AE5A00A";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow3InOutSR";
	rename -uid "881FC342-4BC8-6062-88D7-94B28E5CD269";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3OutAL";
	rename -uid "102DFE1C-4D8D-ED29-4319-1B9D35B3B5DB";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL1InOutCP";
	rename -uid "E61C69A1-4941-0C5C-965F-75AC514E363B";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow1InAL";
	rename -uid "C267EDFD-4946-BE28-D028-98900FF9702E";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrowInOutSR";
	rename -uid "AF7BA187-45A4-6324-26F8-7B8150A73430";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "RightEyeBrow1InOutSR";
	rename -uid "E15D349F-4B1E-8631-1ED8-16ACFFC0B75C";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow1OutAL";
	rename -uid "B73448EA-4446-AB5F-068F-4ABC08CF205B";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL2InOutCP";
	rename -uid "5226DACA-4CDE-E085-97E8-7F87B4F18A3F";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow2InAL";
	rename -uid "2085F775-42EB-0354-85FE-5D9E350769E5";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow2InOutSR";
	rename -uid "B2F4928B-4902-CD11-21F7-9A809774779F";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow2OutAL";
	rename -uid "4CF40E4B-4B08-88FB-2CBD-F9ABA97956FC";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL3InOutCP";
	rename -uid "634B5BE7-4FAB-C26B-D1A6-0DBBABDFA391";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow3InAL";
	rename -uid "DD41BB8B-4BA5-75E4-C36A-A7AB2627BC3D";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow3InOutSR";
	rename -uid "1C2F4C0F-4FD2-E222-60F1-55996DEBC3AE";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow3OutAL";
	rename -uid "98692DA8-481B-402E-7F90-AB9E9A0FF976";
	setAttr ".ihi" 2;
createNode blendTwoAttr -n "RightCheekUpBlendBA";
	rename -uid "F03A64C3-477E-985C-5C50-A69A5CB8F739";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "RightCheekUpML";
	rename -uid "1F081791-49F9-F1B9-9AA5-9C9DC32054C3";
	setAttr ".i2" 0.2;
createNode remapValue -n "RightCheekUpBlendRM";
	rename -uid "4C221DB4-4972-15C4-C15B-B0B9C1EA83A2";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "RightCheekUpBlendML";
	rename -uid "E8E4B6CC-412C-75CF-6E34-28924DF76A37";
	setAttr ".i2" 0.2;
createNode blendTwoAttr -n "LeftCheekUpBlendBA";
	rename -uid "5521F1DB-4ECF-7439-6D5C-59AEEA12132C";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "LeftCheekUpML";
	rename -uid "505B573C-4C2C-DE90-D11B-EB97809AE90D";
	setAttr ".i2" 0.2;
createNode remapValue -n "LeftCheekUpBlendRM";
	rename -uid "553C31B1-4BD4-C316-5D65-71B4AB46DACD";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "LeftCheekUpBlendML";
	rename -uid "9BE27B5F-4526-CCB3-D887-3E903FB8B70E";
	setAttr ".i2" 0.2;
createNode blendTwoAttr -n "LeftCheekBlendBA";
	rename -uid "CA2F663C-4D08-4771-E951-12B36D0207B4";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "LeftCheekML";
	rename -uid "2943CC6A-4237-A01C-A7BB-679ED31982DE";
	setAttr ".i2" 0.2;
createNode remapValue -n "LeftCheekBlendRM";
	rename -uid "7153730E-4DF7-2BF6-4163-01B7AF51C263";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "LeftCheekBlendML";
	rename -uid "3C89E3AA-4E94-B49F-C0CB-79B32197F59A";
	setAttr ".i2" 0.2;
createNode blendTwoAttr -n "RightCheekBlendBA";
	rename -uid "31DB11FD-4DB7-381B-B28A-B685A2C26D63";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "RightCheekML";
	rename -uid "FAA7E124-47A4-AEF6-1E78-42A1C373769D";
	setAttr ".i2" 0.2;
createNode remapValue -n "RightCheekBlendRM";
	rename -uid "F36772D0-4418-D8A5-EC3F-48AC63924E97";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "RightCheekBlendML";
	rename -uid "220223F8-44D6-BAD7-A635-AE99FAB61F39";
	setAttr ".i2" 0.2;
createNode clamp -n "LeftMouthUpDownCP";
	rename -uid "995D6657-419A-01ED-83A1-559FB70D3CF9";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "LeftMouthUpDownSR";
	rename -uid "A3FCC3EF-4644-955C-FF71-22B5027CB453";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode clamp -n "RightMouthUpDownCP";
	rename -uid "0C8E46AB-45E7-1B9D-8B53-A28A9C63BCEF";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "RightMouthUpDownSR";
	rename -uid "CD6E031E-4C7F-021A-9736-D0A0542780F7";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode clamp -n "LeftMouthInOutCP";
	rename -uid "8FA34D8A-4A76-7185-0BAC-288230A0BAEA";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "LeftMouthInOutSR";
	rename -uid "6EC01FFC-4F8F-DFDE-9049-1CAC385DE660";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode clamp -n "RightMouthInOutCP";
	rename -uid "3BB95E59-429F-9D54-94E8-1E8BA42DB269";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "RightMouthInOutSR";
	rename -uid "2A35C1E1-4E02-9032-CA4E-3995413F95DC";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode multDoubleLinear -n "LeftBrowSqueezeML";
	rename -uid "02237A6E-4087-12BC-D55E-6886CABB179A";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightBrowSqueezeML";
	rename -uid "AED9124D-451E-A365-5C48-42A7350B2BC1";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftLidUpBlinkML";
	rename -uid "B39711D8-465D-BC7D-0CE4-5F91EA49BC20";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftLidDownBlinkML";
	rename -uid "B521FDAF-43F6-0C79-EE1E-8D9ED42A8D24";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightLidUpBlinkML";
	rename -uid "94B6C170-4DBF-26ED-E437-2BB29C591AB0";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightLidDownBlinkML";
	rename -uid "469287DF-42E7-E9A0-70A1-6E945F2A55D1";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "OBSML";
	rename -uid "337F6902-4841-E295-F14A-5E946FEB4A45";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "BigABSML";
	rename -uid "B5A3AE5D-4C50-8E56-26D6-0AB480130506";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "EBSML";
	rename -uid "B5D70F81-4CFE-D207-CDAE-F98BC43ACD26";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "IBSML";
	rename -uid "497CB41A-48D8-E68D-9A45-23B12CB4B6E3";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "ABSML";
	rename -uid "3706B32C-4F5C-D6FB-7135-5F9495C0FC82";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "UBSML";
	rename -uid "1FE2A2AC-48F6-D108-17D0-8998EA09DFBF";
	setAttr ".i2" 0.1;
createNode decomposeMatrix -n "NoseJntGrpDM";
	rename -uid "76164675-4604-77AF-5D34-AFA22DBF181D";
createNode multMatrix -n "NoseJntGrpMM";
	rename -uid "1F286D15-45C8-9F7F-4F44-EBBF47A5D872";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.67884676521113796 0.73427996660835992 0
		 0 -0.73427996660835992 0.67884676521113796 0 -1.6358613622221628e-08 13.227116949569952 25.338184425355553 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 -1.0339757656912846e-25 0.67884676521113774 -0.73427996660835992 0
		 -1.0339757656912846e-25 0.73427996660836015 0.67884676521113807 0 1.6358613622221632e-08 -27.5845067382492 -7.4883375712230817 1;
createNode decomposeMatrix -n "Nose1JntDM";
	rename -uid "D2522AE0-4E14-1BE2-A740-08826AE7EE74";
createNode multMatrix -n "Nose1JntMM";
	rename -uid "9CF17BE0-4D4C-AD62-2EBF-F8A3CB92005B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.67884676521113796 0.73427996660835992 0
		 0 -0.73427996660835992 0.67884676521113796 0 -1.6358613622221628e-08 13.227116949569952 25.338184425355553 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 -1.0339757656912846e-25 0.67884676521113785 -0.73427996660835992 0
		 -1.0339757656912846e-25 0.73427996660835992 0.67884676521113796 0 1.6358613622221632e-08 -27.584506768051515 -7.4883375414207567 1;
createNode quatToEuler -n "Nose1JntQE";
	rename -uid "76D3A1BA-4C21-51EE-FE87-358E4A1C1057";
createNode quatProd -n "Nose1JntQP";
	rename -uid "917DCA4B-471F-E834-E1E9-57938F879192";
createNode quatInvert -n "Nose1JntQI";
	rename -uid "F8D3C127-4D42-5AB5-9145-44B8238D0C79";
createNode eulerToQuat -n "Nose1JntEQ";
	rename -uid "DB073D5C-4814-819A-728B-72B0F09699C6";
createNode decomposeMatrix -n "Nose2JntDM";
	rename -uid "952F680A-4653-DADA-ADA8-FC95BEE9E592";
createNode multMatrix -n "Nose2JntMM";
	rename -uid "9194ED65-41B8-F3AB-B848-80A1533CDB00";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.98864436140511147 0.15027417163930185 0
		 0 -0.15027417163930185 0.98864436140511147 0 -1.6358613622221628e-08 12.75750237284608 25.772346258446984 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 1.1632227364026952e-25 0.98864436140511236 -0.15027417163930193 0
		 -1.0339757656912846e-25 0.1502741716393019 0.98864436140511247 0 1.6358613622221632e-08 -16.485550771715999 -23.562561707327887 1;
createNode quatToEuler -n "Nose2JntQE";
	rename -uid "F3996043-4521-9CE1-48FC-49BBCA55DDC5";
	setAttr ".ort" -type "double3" -1.2722218725854067e-14 0 0 ;
createNode quatProd -n "Nose2JntQP";
	rename -uid "4F18EAC1-4134-A388-1C8E-50856B939323";
createNode quatInvert -n "Nose2JntQI";
	rename -uid "9F817D6A-46F6-87BB-10E2-8D85C61CF861";
createNode eulerToQuat -n "Nose2JntEQ";
	rename -uid "05BB2662-496C-F5D1-209C-679BD20B4E39";
createNode decomposeMatrix -n "Nose3JntDM";
	rename -uid "B53B1939-4B03-3610-C44D-93944EB8307C";
createNode multMatrix -n "Nose3JntMM";
	rename -uid "C78B1912-4FEC-E590-1595-FF8385AB2BD8";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.98864436140511325 0.15027417163930212 0
		 0 -0.15027417163930207 0.98864436140511303 0 -1.6358613622221628e-08 12.677258640718211 26.300264745309381 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 1.1632227364026952e-25 0.98864436140511158 -0.15027417163930162 0
		 0 0.15027417163930179 0.98864436140511147 0 1.6358613622221628e-08 -16.485550771715989 -24.096543903020656 1;
createNode quatToEuler -n "Nose3JntQE";
	rename -uid "91DC3D4A-4A25-68EB-B0DA-41821B44FC70";
createNode quatProd -n "Nose3JntQP";
	rename -uid "AA383EDC-4E88-7DD2-B190-0EA8E532E79F";
createNode quatInvert -n "Nose3JntQI";
	rename -uid "A9B1A76E-4107-FF9F-6DCE-538757320DF0";
createNode eulerToQuat -n "Nose3JntEQ";
	rename -uid "E25191FA-4962-692A-9B62-28BAA23A6163";
createNode decomposeMatrix -n "Nose4JntDM";
	rename -uid "45F3F06D-4051-02E4-734C-A9A764DD70AE";
createNode multMatrix -n "Nose4JntMM";
	rename -uid "2F3E4CB0-4A3B-8F3A-A1E9-11B43A5EEAF4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.9886443614051118 0.15027417163930187 0
		 0 -0.15027417163930187 0.98864436140511158 0 -1.6358613622221628e-08 13.148059074360853 26.371826520134565 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 -9.0472879497987402e-26 0.98864436140511058 -0.15027417163930173 -8.6736173798840355e-19
		 1.0339757656912846e-25 0.15027417163930157 0.98864436140511047 6.9388939039072284e-18
		 1.6358613622221625e-08 -16.96175885221674 -24.096543903020621 0.99999999999999989;
createNode quatToEuler -n "Nose4JntQE";
	rename -uid "24A25B05-41AD-16A2-B1A2-E5B902CEFA96";
createNode quatProd -n "Nose4JntQP";
	rename -uid "E3129B16-43CD-C14B-82FA-E98E8312823E";
createNode quatInvert -n "Nose4JntQI";
	rename -uid "DDD3E539-45EA-13F3-9375-76AB7D881BC5";
createNode eulerToQuat -n "Nose4JntEQ";
	rename -uid "9EAA2A04-4D9B-C8EE-127F-829B646041BE";
createNode decomposeMatrix -n "LeftNoseJntDM";
	rename -uid "59885746-4994-403E-CB68-2F8EAABC0E10";
createNode multMatrix -n "LeftNoseJntMM";
	rename -uid "49BBF452-4DE6-28D6-D4A2-668528E1D651";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.99125872559168349 0.13193232711641809 0
		 0 -0.13193232711641806 0.99125872559168327 0 0.88586495006934407 12.416185060941334 25.952454272578123 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 6.9388939039072284e-18 0.99125872559168215 -0.13193232711641764 -8.6736173798840355e-19
		 6.9388939039072284e-18 0.13193232711641789 0.99125872559168227 6.9388939039072284e-18
		 -0.88586495006934418 -15.731619466782844 -24.08750055921411 0.99999999999999989;
createNode quatToEuler -n "LeftNoseJntQE";
	rename -uid "8BBEAFC4-4C54-C83A-74C0-8BBF72EBBE45";
	setAttr ".ort" -type "double3" 1.0615471276233344 0 0 ;
createNode quatProd -n "LeftNoseJntQP";
	rename -uid "04840E67-4B28-8EF6-486C-7CAFF0CBBC77";
createNode quatInvert -n "LeftNoseJntQI";
	rename -uid "721E0083-4689-E075-7D13-FA87F1F540AD";
createNode eulerToQuat -n "LeftNoseJntEQ";
	rename -uid "A7F445B3-457B-54C1-A5FD-728B31686E2B";
createNode decomposeMatrix -n "RightNoseJntDM";
	rename -uid "792E016C-433E-DE1F-5519-989DCBA57391";
createNode multMatrix -n "RightNoseJntMM";
	rename -uid "5C363552-4CD4-F087-20BE-F9A601064011";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 1.8403278329259109e-17 -1.2107401526898496e-16 0
		 2.2688336356044066e-18 0.9912587255916826 0.13193232711641878 0 -1.2244366141435222e-16 -0.13193232711641878 0.99125872559168249 0
		 -0.88586501635861359 12.416182361396318 25.952458394670611 1;
	setAttr ".i[1]" -type "matrix" -1 2.2688336356043449e-18 -1.2244366141435227e-16 0
		 3.4694469519536142e-18 0.99125872559168171 -0.13193232711641892 0 -1.1796119636642288e-16 0.13193232711641911 0.99125872559168215 0
		 -0.88586501635861059 -15.731617334672572 -24.087505001431492 1;
createNode quatToEuler -n "RightNoseJntQE";
	rename -uid "43390E9A-4EFC-F1DF-2C6A-1B884CE55F39";
	setAttr ".ort" -type "double3" -1.0615471276232884 0 0 ;
createNode quatProd -n "RightNoseJntQP";
	rename -uid "D1DD3458-4791-07A9-3E60-22A07F6C6D9A";
createNode quatInvert -n "RightNoseJntQI";
	rename -uid "CF89A0BA-4C0A-409C-C6D1-1F90C29714E3";
createNode eulerToQuat -n "RightNoseJntEQ";
	rename -uid "A6155ADF-416F-55E7-458D-2ABBC58BBB99";
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
	setAttr -av ".msaa";
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
	setAttr -s 103 ".u";
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
	setAttr -av -k on ".edl";
	setAttr -av ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
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
	setAttr -av -k on ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
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
	setAttr -av ".pram";
	setAttr -av ".poam";
	setAttr -av ".prlm";
	setAttr -av ".polm";
	setAttr -av ".prm";
	setAttr -av ".pom";
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
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
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
connectAttr "makeNurbCircle1.oc" "LeftBrowCtrlShape.cr";
connectAttr "makeNurbCircle2.oc" "LeftBrow1CtrlShape.cr";
connectAttr "LeftBrowCtrl.s" "LeftBrow1JntCnt.s";
connectAttr "LeftBrowCtrl.Z" "LeftBrow1JntCnt.tz";
connectAttr "LeftBrow1Ctrl.r" "LeftBrow1Jnt.r";
connectAttr "LeftBrow1Ctrl.s" "LeftBrow1Jnt.s";
connectAttr "LeftBrow1Ctrl.Z" "LeftBrow1Jnt.tz";
connectAttr "LeftBrowCtrl.s" "LeftBrow2JntCnt.s";
connectAttr "LeftBrowCtrl.Z" "LeftBrow2JntCnt.tz";
connectAttr "LeftBrow2Ctrl.r" "LeftBrow2Jnt.r";
connectAttr "LeftBrow2Ctrl.s" "LeftBrow2Jnt.s";
connectAttr "LeftBrow2Ctrl.Z" "LeftBrow2Jnt.tz";
connectAttr "LeftBrowCtrl.s" "LeftBrow3JntCnt.s";
connectAttr "LeftBrowCtrl.Z" "LeftBrow3JntCnt.tz";
connectAttr "LeftBrow3Ctrl.r" "LeftBrow3Jnt.r";
connectAttr "LeftBrow3Ctrl.s" "LeftBrow3Jnt.s";
connectAttr "LeftBrow3Ctrl.Z" "LeftBrow3Jnt.tz";
connectAttr "RightBrowCtrl.s" "RightBrow1JntCnt.s";
connectAttr "RightBrowCtrl.Z" "RightBrow1JntCnt.tz";
connectAttr "RightBrow1Ctrl.r" "RightBrow1Jnt.r";
connectAttr "RightBrow1Ctrl.s" "RightBrow1Jnt.s";
connectAttr "RightBrow1Ctrl.Z" "RightBrow1Jnt.tz";
connectAttr "RightBrowCtrl.s" "RightBrow2JntCnt.s";
connectAttr "RightBrowCtrl.Z" "RightBrow2JntCnt.tz";
connectAttr "RightBrow2Ctrl.r" "RightBrow2Jnt.r";
connectAttr "RightBrow2Ctrl.s" "RightBrow2Jnt.s";
connectAttr "RightBrow2Ctrl.Z" "RightBrow2Jnt.tz";
connectAttr "RightBrowCtrl.s" "RightBrow3JntCnt.s";
connectAttr "RightBrowCtrl.Z" "RightBrow3JntCnt.tz";
connectAttr "RightBrow3Ctrl.r" "RightBrow3Jnt.r";
connectAttr "RightBrow3Ctrl.s" "RightBrow3Jnt.s";
connectAttr "RightBrow3Ctrl.Z" "RightBrow3Jnt.tz";
connectAttr "CenterBrowCtrl.r" "CenterBrowJnt.r";
connectAttr "CenterBrowCtrl.t" "CenterBrowJnt.t";
connectAttr "CenterBrowCtrl.s" "CenterBrowJnt.s";
connectAttr "makeNurbCircle3.oc" "LeftMouthCtrlShape.cr";
connectAttr "LeftUpCheekCtrlGrpPC.p" "LeftUpCheekCtrlGrp.t";
connectAttr "LeftUpCheekCtrlRvsMultMD.o" "LeftUpCheekCtrlRvs.t";
connectAttr "LeftUpCheekCtrl.t" "LeftUpCheekJnt.t";
connectAttr "LeftUpCheekCtrl.r" "LeftUpCheekJnt.r";
connectAttr "LeftUpCheekCtrl.s" "LeftUpCheekJnt.s";
connectAttr "RightUpCheekCtrlGrpPC.p" "RightUpCheekCtrlGrp.t";
connectAttr "RightUpCheekCtrlRvsMultMD.o" "RightUpCheekCtrlRvs.t";
connectAttr "RightUpCheekCtrl.t" "RightUpCheekJnt.t";
connectAttr "RightUpCheekCtrl.r" "RightUpCheekJnt.r";
connectAttr "RightUpCheekCtrl.s" "RightUpCheekJnt.s";
connectAttr "LeftCheekCtrlGrpPC.p" "LeftCheekCtrlGrp.t";
connectAttr "LeftCheekCtrlRvsMultMD.o" "LeftCheekCtrlRvs.t";
connectAttr "LeftCheekCtrl.t" "LeftCheekJnt.t";
connectAttr "LeftCheekCtrl.r" "LeftCheekJnt.r";
connectAttr "LeftCheekCtrl.s" "LeftCheekJnt.s";
connectAttr "RightCheekCtrlGrpPC.p" "RightCheekCtrlGrp.t";
connectAttr "RightCheekCtrlRvsMultMD.o" "RightCheekCtrlRvs.t";
connectAttr "RightCheekCtrl.t" "RightCheekJnt.t";
connectAttr "RightCheekCtrl.r" "RightCheekJnt.r";
connectAttr "RightCheekCtrl.s" "RightCheekJnt.s";
connectAttr "BetweenEyesCtrl.r" "BetweenEyesJnt.r";
connectAttr "BetweenEyesCtrl.t" "BetweenEyesJnt.t";
connectAttr "BetweenEyesCtrl.s" "BetweenEyesJnt.s";
connectAttr "JawUpRM.ov" "Nose1CtrlCnt.ty";
connectAttr "JawUpRMReverseML.o" "Nose1CtrlCnt.tz";
connectAttr "makeNurbCircle16.oc" "Nose1CtrlShape.cr";
connectAttr "Nose2CtrlDM.ot" "Nose2CtrlGrp.t";
connectAttr "makeNurbCircle17.oc" "Nose4CtrlShape.cr";
connectAttr "LeftBrowLExpCP.opr" "FaceConnection.Angry_L";
connectAttr "RightBrowLExpCP.opr" "FaceConnection.Angry_R";
connectAttr "LeftBrowL1UpDownCP.opg" "FaceConnection.Brow_Down_L_Left";
connectAttr "LeftBrowL2UpDownCP.opg" "FaceConnection.Brow_Down_L_Middle";
connectAttr "LeftBrowL3UpDownCP.opg" "FaceConnection.Brow_Down_L_Right";
connectAttr "RightBrowL1UpDownCP.opg" "FaceConnection.Brow_Down_R_Left";
connectAttr "RightBrowL2UpDownCP.opg" "FaceConnection.Brow_Down_R_Middle";
connectAttr "RightBrowL3UpDownCP.opg" "FaceConnection.Brow_Down_R_Right";
connectAttr "LeftBrowL1InOutCP.opr" "FaceConnection.Brow_In_L_Left";
connectAttr "LeftBrowL2InOutCP.opr" "FaceConnection.Brow_In_L_Middle";
connectAttr "LeftBrowL3InOutCP.opr" "FaceConnection.Brow_In_L_Right";
connectAttr "RightBrowL1InOutCP.opr" "FaceConnection.Brow_In_R_Left";
connectAttr "RightBrowL2InOutCP.opr" "FaceConnection.Brow_In_R_Middle";
connectAttr "RightBrowL3InOutCP.opr" "FaceConnection.Brow_In_R_Right";
connectAttr "LeftBrowL1InOutCP.opg" "FaceConnection.Brow_Out_L_Left";
connectAttr "LeftBrowL2InOutCP.opg" "FaceConnection.Brow_Out_L_Middle";
connectAttr "LeftBrowL3InOutCP.opg" "FaceConnection.Brow_Out_L_Right";
connectAttr "RightBrowL1InOutCP.opg" "FaceConnection.Brow_Out_R_Left";
connectAttr "RightBrowL2InOutCP.opg" "FaceConnection.Brow_Out_R_Middle";
connectAttr "RightBrowL3InOutCP.opg" "FaceConnection.Brow_Out_R_Right";
connectAttr "LeftBrowL1UpDownCP.opr" "FaceConnection.Brow_Up_L_Left";
connectAttr "LeftBrowL2UpDownCP.opr" "FaceConnection.Brow_Up_L_Middle";
connectAttr "LeftBrowL3UpDownCP.opr" "FaceConnection.Brow_Up_L_Right";
connectAttr "RightBrowL1UpDownCP.opr" "FaceConnection.Brow_Up_R_Left";
connectAttr "RightBrowL2UpDownCP.opr" "FaceConnection.Brow_Up_R_Middle";
connectAttr "RightBrowL3UpDownCP.opr" "FaceConnection.Brow_Up_R_Right";
connectAttr "RightCheekUpBlendBA.o" "FaceConnection.Cheek_Up_R";
connectAttr "LeftCheekUpBlendBA.o" "FaceConnection.Cheek_Up_L";
connectAttr "LeftCheekBlendBA.o" "FaceConnection.Cheek_L";
connectAttr "RightCheekBlendBA.o" "FaceConnection.Cheek_R";
connectAttr "LeftMouthUpDownCP.opg" "FaceConnection.Mouth_Down_L";
connectAttr "RightMouthUpDownCP.opg" "FaceConnection.Mouth_Down_R";
connectAttr "LeftMouthInOutCP.opg" "FaceConnection.Mouth_In_L";
connectAttr "RightMouthInOutCP.opg" "FaceConnection.Mouth_In_R";
connectAttr "LeftMouthInOutCP.opr" "FaceConnection.Mouth_Out_L";
connectAttr "RightMouthInOutCP.opr" "FaceConnection.Mouth_Out_R";
connectAttr "LeftMouthUpDownCP.opr" "FaceConnection.Mouth_Up_L";
connectAttr "RightMouthUpDownCP.opr" "FaceConnection.Mouth_Up_R";
connectAttr "LeftBrowSqueezeML.o" "FaceConnection.Squeeze_L";
connectAttr "RightBrowSqueezeML.o" "FaceConnection.Squeeze_R";
connectAttr "LeftBrowLExpCP.opg" "FaceConnection.Sad_L";
connectAttr "RightBrowLExpCP.opg" "FaceConnection.Sad_R";
connectAttr "LeftLidUpBlinkML.o" "FaceConnection.Blink_Up_L";
connectAttr "LeftLidDownBlinkML.o" "FaceConnection.Blink_Down_L";
connectAttr "RightLidUpBlinkML.o" "FaceConnection.Blink_Up_R";
connectAttr "RightLidDownBlinkML.o" "FaceConnection.Blink_Down_R";
connectAttr "OBSML.o" "FaceConnection.O";
connectAttr "BigABSML.o" "FaceConnection.Big_A";
connectAttr "EBSML.o" "FaceConnection.E";
connectAttr "IBSML.o" "FaceConnection.I";
connectAttr "ABSML.o" "FaceConnection.A";
connectAttr "UBSML.o" "FaceConnection.U";
connectAttr "NoseJntGrpDM.ot" "NoseJntGrp.t";
connectAttr "NoseJntGrpDM.or" "NoseJntGrp.r";
connectAttr "NoseJntGrpDM.os" "NoseJntGrp.s";
connectAttr "Nose1JntDM.os" "Nose1Jnt.s";
connectAttr "Nose1JntDM.ot" "Nose1Jnt.t";
connectAttr "Nose1JntQE.ort" "Nose1Jnt.r";
connectAttr "Nose2JntDM.os" "Nose2Jnt.s";
connectAttr "Nose1Jnt.s" "Nose2Jnt.is";
connectAttr "Nose2JntDM.ot" "Nose2Jnt.t";
connectAttr "Nose2JntQE.ort" "Nose2Jnt.r";
connectAttr "Nose2Jnt.s" "Nose3Jnt.is";
connectAttr "Nose3JntDM.os" "Nose3Jnt.s";
connectAttr "Nose3JntDM.ot" "Nose3Jnt.t";
connectAttr "Nose3JntQE.ort" "Nose3Jnt.r";
connectAttr "Nose3Jnt.s" "Nose4Jnt.is";
connectAttr "Nose4JntDM.ot" "Nose4Jnt.t";
connectAttr "Nose4JntQE.ort" "Nose4Jnt.r";
connectAttr "Nose4JntDM.os" "Nose4Jnt.s";
connectAttr "LeftNoseJntDM.os" "LeftNoseJnt.s";
connectAttr "Nose2Jnt.s" "LeftNoseJnt.is";
connectAttr "LeftNoseJntDM.ot" "LeftNoseJnt.t";
connectAttr "LeftNoseJntQE.ort" "LeftNoseJnt.r";
connectAttr "RightNoseJntDM.os" "RightNoseJnt.s";
connectAttr "Nose2Jnt.s" "RightNoseJnt.is";
connectAttr "RightNoseJntDM.ot" "RightNoseJnt.t";
connectAttr "RightNoseJntQE.ort" "RightNoseJnt.r";
connectAttr "CheekCtrlPosCrvShape.ws" "LeftUpCheekCtrlGrpPC.ic";
connectAttr "LeftUpCheekCtrl.t" "LeftUpCheekCtrlRvsMultMD.i1";
connectAttr "CheekCtrlPosCrvShape.ws" "RightUpCheekCtrlGrpPC.ic";
connectAttr "RightUpCheekCtrl.t" "RightUpCheekCtrlRvsMultMD.i1";
connectAttr "CheekCtrlPosCrvShape.ws" "LeftCheekCtrlGrpPC.ic";
connectAttr "LeftCheekCtrl.t" "LeftCheekCtrlRvsMultMD.i1";
connectAttr "CheekCtrlPosCrvShape.ws" "RightCheekCtrlGrpPC.ic";
connectAttr "RightCheekCtrl.t" "RightCheekCtrlRvsMultMD.i1";
connectAttr "JawUpMD.ox" "JawUpRM.i";
connectAttr "Nose1Ctrl.UpBlend" "JawUpRM.omn";
connectAttr "JawUpDB.d" "JawUpMD.i1x";
connectAttr "NoseUpJawUpPosShape.wp" "JawUpDB.p1";
connectAttr "NoseUpJawEndPosShape.wp" "JawUpDB.p2";
connectAttr "JawUpRM.ov" "JawUpRMReverseML.i1";
connectAttr "Nose2CtrlMM.o" "Nose2CtrlDM.imat";
connectAttr "Nose1Ctrl.wm" "Nose2CtrlMM.i[3]";
connectAttr "Nose2CtrlGrp.pim" "Nose2CtrlMM.i[4]";
connectAttr "LeftBrowLAngryRM.ov" "LeftBrowLExpCP.ipr";
connectAttr "LeftBrowLSadRM.ov" "LeftBrowLExpCP.ipg";
connectAttr "unitConversion141.o" "LeftBrowLAngryRM.i";
connectAttr "LeftBrowCtrl.rz" "unitConversion141.i";
connectAttr "unitConversion142.o" "LeftBrowLSadRM.i";
connectAttr "LeftBrowCtrl.rz" "unitConversion142.i";
connectAttr "RightBrowLAngryRM.ov" "RightBrowLExpCP.ipr";
connectAttr "RightBrowLSadRM.ov" "RightBrowLExpCP.ipg";
connectAttr "unitConversion145.o" "RightBrowLAngryRM.i";
connectAttr "RightBrowCtrl.rz" "unitConversion145.i";
connectAttr "unitConversion146.o" "RightBrowLSadRM.i";
connectAttr "RightBrowCtrl.rz" "unitConversion146.i";
connectAttr "LeftEyeBrow1UpAL.o" "LeftBrowL1UpDownCP.ipr";
connectAttr "LeftEyeBrow1DownAL.o" "LeftBrowL1UpDownCP.ipg";
connectAttr "LeftEyeBrowUpDownSR.ox" "LeftEyeBrow1UpAL.i1";
connectAttr "LeftEyeBrow1UpDownSR.ox" "LeftEyeBrow1UpAL.i2";
connectAttr "LeftBrowCtrl.ty" "LeftEyeBrowUpDownSR.vx";
connectAttr "LeftBrowCtrl.ty" "LeftEyeBrowUpDownSR.vy";
connectAttr "LeftBrow1Ctrl.ty" "LeftEyeBrow1UpDownSR.vx";
connectAttr "LeftBrow1Ctrl.ty" "LeftEyeBrow1UpDownSR.vy";
connectAttr "LeftEyeBrowUpDownSR.oy" "LeftEyeBrow1DownAL.i1";
connectAttr "LeftEyeBrow1UpDownSR.oy" "LeftEyeBrow1DownAL.i2";
connectAttr "LeftEyeBrow2UpAL.o" "LeftBrowL2UpDownCP.ipr";
connectAttr "LeftEyeBrow2DownAL.o" "LeftBrowL2UpDownCP.ipg";
connectAttr "LeftEyeBrowUpDownSR.ox" "LeftEyeBrow2UpAL.i1";
connectAttr "LeftEyeBrow2UpDownSR.ox" "LeftEyeBrow2UpAL.i2";
connectAttr "LeftBrow2Ctrl.ty" "LeftEyeBrow2UpDownSR.vx";
connectAttr "LeftBrow2Ctrl.ty" "LeftEyeBrow2UpDownSR.vy";
connectAttr "LeftEyeBrowUpDownSR.oy" "LeftEyeBrow2DownAL.i1";
connectAttr "LeftEyeBrow2UpDownSR.oy" "LeftEyeBrow2DownAL.i2";
connectAttr "LeftEyeBrow3UpAL.o" "LeftBrowL3UpDownCP.ipr";
connectAttr "LeftEyeBrow3DownAL.o" "LeftBrowL3UpDownCP.ipg";
connectAttr "LeftEyeBrowUpDownSR.ox" "LeftEyeBrow3UpAL.i1";
connectAttr "LeftEyeBrow3UpDownSR.ox" "LeftEyeBrow3UpAL.i2";
connectAttr "LeftBrow3Ctrl.ty" "LeftEyeBrow3UpDownSR.vx";
connectAttr "LeftBrow3Ctrl.ty" "LeftEyeBrow3UpDownSR.vy";
connectAttr "LeftEyeBrowUpDownSR.oy" "LeftEyeBrow3DownAL.i1";
connectAttr "LeftEyeBrow3UpDownSR.oy" "LeftEyeBrow3DownAL.i2";
connectAttr "RightEyeBrow1UpAL.o" "RightBrowL1UpDownCP.ipr";
connectAttr "RightEyeBrow1DownAL.o" "RightBrowL1UpDownCP.ipg";
connectAttr "RightEyeBrowUpDownSR.ox" "RightEyeBrow1UpAL.i1";
connectAttr "RightEyeBrow1UpDownSR.ox" "RightEyeBrow1UpAL.i2";
connectAttr "RightBrowCtrl.ty" "RightEyeBrowUpDownSR.vx";
connectAttr "RightBrowCtrl.ty" "RightEyeBrowUpDownSR.vy";
connectAttr "RightBrow1Ctrl.ty" "RightEyeBrow1UpDownSR.vx";
connectAttr "RightBrow1Ctrl.ty" "RightEyeBrow1UpDownSR.vy";
connectAttr "RightEyeBrowUpDownSR.oy" "RightEyeBrow1DownAL.i1";
connectAttr "RightEyeBrow1UpDownSR.oy" "RightEyeBrow1DownAL.i2";
connectAttr "RightEyeBrow2UpAL.o" "RightBrowL2UpDownCP.ipr";
connectAttr "RightEyeBrow2DownAL.o" "RightBrowL2UpDownCP.ipg";
connectAttr "RightEyeBrowUpDownSR.ox" "RightEyeBrow2UpAL.i1";
connectAttr "RightEyeBrow2UpDownSR.ox" "RightEyeBrow2UpAL.i2";
connectAttr "RightBrow2Ctrl.ty" "RightEyeBrow2UpDownSR.vx";
connectAttr "RightBrow2Ctrl.ty" "RightEyeBrow2UpDownSR.vy";
connectAttr "RightEyeBrowUpDownSR.oy" "RightEyeBrow2DownAL.i1";
connectAttr "RightEyeBrow2UpDownSR.oy" "RightEyeBrow2DownAL.i2";
connectAttr "RightEyeBrow3UpAL.o" "RightBrowL3UpDownCP.ipr";
connectAttr "RightEyeBrow3DownAL.o" "RightBrowL3UpDownCP.ipg";
connectAttr "RightEyeBrowUpDownSR.ox" "RightEyeBrow3UpAL.i1";
connectAttr "RightEyeBrow3UpDownSR.ox" "RightEyeBrow3UpAL.i2";
connectAttr "RightBrow3Ctrl.ty" "RightEyeBrow3UpDownSR.vx";
connectAttr "RightBrow3Ctrl.ty" "RightEyeBrow3UpDownSR.vy";
connectAttr "RightEyeBrowUpDownSR.oy" "RightEyeBrow3DownAL.i1";
connectAttr "RightEyeBrow3UpDownSR.oy" "RightEyeBrow3DownAL.i2";
connectAttr "LeftEyeBrow1InAL.o" "LeftBrowL1InOutCP.ipr";
connectAttr "LeftEyeBrow1OutAL.o" "LeftBrowL1InOutCP.ipg";
connectAttr "LeftEyeBrowInOutSR.oy" "LeftEyeBrow1InAL.i1";
connectAttr "LeftEyeBrow1InOutSR.oy" "LeftEyeBrow1InAL.i2";
connectAttr "LeftBrowCtrl.tx" "LeftEyeBrowInOutSR.vx";
connectAttr "LeftBrowCtrl.tx" "LeftEyeBrowInOutSR.vy";
connectAttr "LeftBrow1Ctrl.tx" "LeftEyeBrow1InOutSR.vx";
connectAttr "LeftBrow1Ctrl.tx" "LeftEyeBrow1InOutSR.vy";
connectAttr "LeftEyeBrowInOutSR.ox" "LeftEyeBrow1OutAL.i1";
connectAttr "LeftEyeBrow1InOutSR.ox" "LeftEyeBrow1OutAL.i2";
connectAttr "LeftEyeBrow2InAL.o" "LeftBrowL2InOutCP.ipr";
connectAttr "LeftEyeBrow2OutAL.o" "LeftBrowL2InOutCP.ipg";
connectAttr "LeftEyeBrowInOutSR.oy" "LeftEyeBrow2InAL.i1";
connectAttr "LeftEyeBrow2InOutSR.oy" "LeftEyeBrow2InAL.i2";
connectAttr "LeftBrow2Ctrl.tx" "LeftEyeBrow2InOutSR.vx";
connectAttr "LeftBrow2Ctrl.tx" "LeftEyeBrow2InOutSR.vy";
connectAttr "LeftEyeBrowInOutSR.ox" "LeftEyeBrow2OutAL.i1";
connectAttr "LeftEyeBrow2InOutSR.ox" "LeftEyeBrow2OutAL.i2";
connectAttr "LeftEyeBrow3InAL.o" "LeftBrowL3InOutCP.ipr";
connectAttr "LeftEyeBrow3OutAL.o" "LeftBrowL3InOutCP.ipg";
connectAttr "LeftEyeBrowInOutSR.oy" "LeftEyeBrow3InAL.i1";
connectAttr "LeftEyeBrow3InOutSR.oy" "LeftEyeBrow3InAL.i2";
connectAttr "LeftBrow3Ctrl.tx" "LeftEyeBrow3InOutSR.vx";
connectAttr "LeftBrow3Ctrl.tx" "LeftEyeBrow3InOutSR.vy";
connectAttr "LeftEyeBrowInOutSR.ox" "LeftEyeBrow3OutAL.i1";
connectAttr "LeftEyeBrow3InOutSR.ox" "LeftEyeBrow3OutAL.i2";
connectAttr "RightEyeBrow1InAL.o" "RightBrowL1InOutCP.ipr";
connectAttr "RightEyeBrow1OutAL.o" "RightBrowL1InOutCP.ipg";
connectAttr "RightEyeBrowInOutSR.oy" "RightEyeBrow1InAL.i1";
connectAttr "RightEyeBrow1InOutSR.oy" "RightEyeBrow1InAL.i2";
connectAttr "RightBrowCtrl.tx" "RightEyeBrowInOutSR.vx";
connectAttr "RightBrowCtrl.tx" "RightEyeBrowInOutSR.vy";
connectAttr "RightBrow1Ctrl.tx" "RightEyeBrow1InOutSR.vx";
connectAttr "RightBrow1Ctrl.tx" "RightEyeBrow1InOutSR.vy";
connectAttr "RightEyeBrowInOutSR.ox" "RightEyeBrow1OutAL.i1";
connectAttr "RightEyeBrow1InOutSR.ox" "RightEyeBrow1OutAL.i2";
connectAttr "RightEyeBrow2InAL.o" "RightBrowL2InOutCP.ipr";
connectAttr "RightEyeBrow2OutAL.o" "RightBrowL2InOutCP.ipg";
connectAttr "RightEyeBrowInOutSR.oy" "RightEyeBrow2InAL.i1";
connectAttr "RightEyeBrow2InOutSR.oy" "RightEyeBrow2InAL.i2";
connectAttr "RightBrow2Ctrl.tx" "RightEyeBrow2InOutSR.vx";
connectAttr "RightBrow2Ctrl.tx" "RightEyeBrow2InOutSR.vy";
connectAttr "RightEyeBrowInOutSR.ox" "RightEyeBrow2OutAL.i1";
connectAttr "RightEyeBrow2InOutSR.ox" "RightEyeBrow2OutAL.i2";
connectAttr "RightEyeBrow3InAL.o" "RightBrowL3InOutCP.ipr";
connectAttr "RightEyeBrow3OutAL.o" "RightBrowL3InOutCP.ipg";
connectAttr "RightEyeBrowInOutSR.oy" "RightEyeBrow3InAL.i1";
connectAttr "RightEyeBrow3InOutSR.oy" "RightEyeBrow3InAL.i2";
connectAttr "RightBrow3Ctrl.tx" "RightEyeBrow3InOutSR.vx";
connectAttr "RightBrow3Ctrl.tx" "RightEyeBrow3InOutSR.vy";
connectAttr "RightEyeBrowInOutSR.ox" "RightEyeBrow3OutAL.i1";
connectAttr "RightEyeBrow3InOutSR.ox" "RightEyeBrow3OutAL.i2";
connectAttr "RightCheekUpML.o" "RightCheekUpBlendBA.i[0]";
connectAttr "RightCheekUpBlendRM.ov" "RightCheekUpBlendBA.i[1]";
connectAttr "RightMouthCtrl.CheekUp" "RightCheekUpML.i1";
connectAttr "RightMouthCtrl.ty" "RightCheekUpBlendRM.i";
connectAttr "RightCheekUpBlendML.o" "RightCheekUpBlendRM.omx";
connectAttr "RightMouthCtrl.CheekUpBlend" "RightCheekUpBlendML.i1";
connectAttr "LeftCheekUpML.o" "LeftCheekUpBlendBA.i[0]";
connectAttr "LeftCheekUpBlendRM.ov" "LeftCheekUpBlendBA.i[1]";
connectAttr "LeftMouthCtrl.CheekUp" "LeftCheekUpML.i1";
connectAttr "LeftMouthCtrl.ty" "LeftCheekUpBlendRM.i";
connectAttr "LeftCheekUpBlendML.o" "LeftCheekUpBlendRM.omx";
connectAttr "LeftMouthCtrl.CheekUpBlend" "LeftCheekUpBlendML.i1";
connectAttr "LeftCheekML.o" "LeftCheekBlendBA.i[0]";
connectAttr "LeftCheekBlendRM.ov" "LeftCheekBlendBA.i[1]";
connectAttr "LeftMouthCtrl.Cheek" "LeftCheekML.i1";
connectAttr "LeftMouthCtrl.tx" "LeftCheekBlendRM.i";
connectAttr "LeftCheekBlendML.o" "LeftCheekBlendRM.omx";
connectAttr "LeftMouthCtrl.CheekBlend" "LeftCheekBlendML.i1";
connectAttr "RightCheekML.o" "RightCheekBlendBA.i[0]";
connectAttr "RightCheekBlendRM.ov" "RightCheekBlendBA.i[1]";
connectAttr "RightMouthCtrl.Cheek" "RightCheekML.i1";
connectAttr "RightMouthCtrl.tx" "RightCheekBlendRM.i";
connectAttr "RightCheekBlendML.o" "RightCheekBlendRM.omx";
connectAttr "RightMouthCtrl.CheekBlend" "RightCheekBlendML.i1";
connectAttr "LeftMouthUpDownSR.ox" "LeftMouthUpDownCP.ipr";
connectAttr "LeftMouthUpDownSR.oy" "LeftMouthUpDownCP.ipg";
connectAttr "LeftMouthCtrl.ty" "LeftMouthUpDownSR.vx";
connectAttr "LeftMouthCtrl.ty" "LeftMouthUpDownSR.vy";
connectAttr "RightMouthUpDownSR.ox" "RightMouthUpDownCP.ipr";
connectAttr "RightMouthUpDownSR.oy" "RightMouthUpDownCP.ipg";
connectAttr "RightMouthCtrl.ty" "RightMouthUpDownSR.vx";
connectAttr "RightMouthCtrl.ty" "RightMouthUpDownSR.vy";
connectAttr "LeftMouthInOutSR.ox" "LeftMouthInOutCP.ipr";
connectAttr "LeftMouthInOutSR.oy" "LeftMouthInOutCP.ipg";
connectAttr "LeftMouthCtrl.tx" "LeftMouthInOutSR.vx";
connectAttr "LeftMouthCtrl.tx" "LeftMouthInOutSR.vy";
connectAttr "RightMouthInOutSR.ox" "RightMouthInOutCP.ipr";
connectAttr "RightMouthInOutSR.oy" "RightMouthInOutCP.ipg";
connectAttr "RightMouthCtrl.tx" "RightMouthInOutSR.vx";
connectAttr "RightMouthCtrl.tx" "RightMouthInOutSR.vy";
connectAttr "LeftBrowCtrl.Squeeze" "LeftBrowSqueezeML.i1";
connectAttr "RightBrowCtrl.Squeeze" "RightBrowSqueezeML.i1";
connectAttr "FaceConnection.Blink_Up_LDrv" "LeftLidUpBlinkML.i1";
connectAttr "FaceConnection.Blink_Down_LDrv" "LeftLidDownBlinkML.i1";
connectAttr "FaceConnection.Blink_Up_RDrv" "RightLidUpBlinkML.i1";
connectAttr "FaceConnection.Blink_Down_RDrv" "RightLidDownBlinkML.i1";
connectAttr "FaceConnection.ODrv" "OBSML.i1";
connectAttr "FaceConnection.Big_ADrv" "BigABSML.i1";
connectAttr "FaceConnection.EDrv" "EBSML.i1";
connectAttr "FaceConnection.IDrv" "IBSML.i1";
connectAttr "FaceConnection.ADrv" "ABSML.i1";
connectAttr "FaceConnection.UDrv" "UBSML.i1";
connectAttr "NoseJntGrpMM.o" "NoseJntGrpDM.imat";
connectAttr "Nose1CtrlGrp.wm" "NoseJntGrpMM.i[2]";
connectAttr "NoseJntGrp.pim" "NoseJntGrpMM.i[3]";
connectAttr "Nose1JntMM.o" "Nose1JntDM.imat";
connectAttr "Nose1Ctrl.wm" "Nose1JntMM.i[2]";
connectAttr "Nose1Jnt.pim" "Nose1JntMM.i[3]";
connectAttr "Nose1JntQP.oq" "Nose1JntQE.iq";
connectAttr "Nose1JntDM.oq" "Nose1JntQP.iq1";
connectAttr "Nose1JntQI.oq" "Nose1JntQP.iq2";
connectAttr "Nose1JntEQ.oq" "Nose1JntQI.iq";
connectAttr "Nose1Jnt.jo" "Nose1JntEQ.irt";
connectAttr "Nose2JntMM.o" "Nose2JntDM.imat";
connectAttr "Nose2Ctrl.wm" "Nose2JntMM.i[2]";
connectAttr "Nose2Jnt.pim" "Nose2JntMM.i[3]";
connectAttr "Nose2JntQP.oq" "Nose2JntQE.iq";
connectAttr "Nose2JntDM.oq" "Nose2JntQP.iq1";
connectAttr "Nose2JntQI.oq" "Nose2JntQP.iq2";
connectAttr "Nose2JntEQ.oq" "Nose2JntQI.iq";
connectAttr "Nose2Jnt.jo" "Nose2JntEQ.irt";
connectAttr "Nose3JntMM.o" "Nose3JntDM.imat";
connectAttr "Nose3Ctrl.wm" "Nose3JntMM.i[2]";
connectAttr "Nose3Jnt.pim" "Nose3JntMM.i[3]";
connectAttr "Nose3JntQP.oq" "Nose3JntQE.iq";
connectAttr "Nose3JntDM.oq" "Nose3JntQP.iq1";
connectAttr "Nose3JntQI.oq" "Nose3JntQP.iq2";
connectAttr "Nose3JntEQ.oq" "Nose3JntQI.iq";
connectAttr "Nose3Jnt.jo" "Nose3JntEQ.irt";
connectAttr "Nose4JntMM.o" "Nose4JntDM.imat";
connectAttr "Nose4Ctrl.wm" "Nose4JntMM.i[2]";
connectAttr "Nose4Jnt.pim" "Nose4JntMM.i[3]";
connectAttr "Nose4JntQP.oq" "Nose4JntQE.iq";
connectAttr "Nose4JntDM.oq" "Nose4JntQP.iq1";
connectAttr "Nose4JntQI.oq" "Nose4JntQP.iq2";
connectAttr "Nose4JntEQ.oq" "Nose4JntQI.iq";
connectAttr "Nose4Jnt.jo" "Nose4JntEQ.irt";
connectAttr "LeftNoseJntMM.o" "LeftNoseJntDM.imat";
connectAttr "LeftNoseCtrl.wm" "LeftNoseJntMM.i[2]";
connectAttr "LeftNoseJnt.pim" "LeftNoseJntMM.i[3]";
connectAttr "LeftNoseJntQP.oq" "LeftNoseJntQE.iq";
connectAttr "LeftNoseJntDM.oq" "LeftNoseJntQP.iq1";
connectAttr "LeftNoseJntQI.oq" "LeftNoseJntQP.iq2";
connectAttr "LeftNoseJntEQ.oq" "LeftNoseJntQI.iq";
connectAttr "LeftNoseJnt.jo" "LeftNoseJntEQ.irt";
connectAttr "RightNoseJntMM.o" "RightNoseJntDM.imat";
connectAttr "RightNoseCtrl.wm" "RightNoseJntMM.i[2]";
connectAttr "RightNoseJnt.pim" "RightNoseJntMM.i[3]";
connectAttr "RightNoseJntQP.oq" "RightNoseJntQE.iq";
connectAttr "RightNoseJntDM.oq" "RightNoseJntQP.iq1";
connectAttr "RightNoseJntQI.oq" "RightNoseJntQP.iq2";
connectAttr "RightNoseJntEQ.oq" "RightNoseJntQI.iq";
connectAttr "RightNoseJnt.jo" "RightNoseJntEQ.irt";
connectAttr "LeftBrowL1InOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowLExpCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowLAngryRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowLSadRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow1OutAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowL2InOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowL3InOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrowInOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow1InOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow3InOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow2InOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow1InAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow2OutAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow2InAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow3OutAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow3InAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrowUpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow1UpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow3UpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow2UpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow1DownAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow1UpAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow3DownAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow3UpAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow2DownAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBrow2UpAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowL1UpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowL3UpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowL2UpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftMouthInOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftMouthInOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftMouthUpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftMouthUpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftLidUpBlinkML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftLidDownBlinkML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightLidUpBlinkML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightLidDownBlinkML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightMouthInOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightMouthUpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightMouthInOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightMouthUpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow1InOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow2InOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrowInOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow1OutAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow2UpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow2InAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow1InAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowLAngryRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow2OutAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowLSadRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrowUpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow2UpAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow1UpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow2DownAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow1DownAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow1UpAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow3DownAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow3UpAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow3UpDownSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow3InOutSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow3OutAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowL1InOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowL3UpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowL1UpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowL2UpDownCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowL2InOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowL3InOutCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowLExpCP.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeBrow3InAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekUpBlendML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekUpML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekUpBlendRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekUpBlendBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekUpML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekUpBlendBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekUpBlendRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekUpBlendML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekBlendRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekBlendML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekBlendBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekBlendML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekBlendRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekBlendBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawUpDB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawUpMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawUpRM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawUpRMReverseML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftUpCheekCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightUpCheekCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftCheekCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightCheekCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightBrowSqueezeML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftBrowSqueezeML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ABSML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BigABSML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "EBSML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IBSML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "OBSML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UBSML.msg" ":defaultRenderUtilityList1.u" -na;
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
// End of SealFaceCtrls02.ma
