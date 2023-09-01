//Maya ASCII 2022 scene
//Name: SealFaceCtrls03.ma
//Last modified: Tue, Jan 11, 2022 10:12:00 PM
//Codeset: 949
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" -nodeType "quatInvert" -nodeType "quatProd"
		 "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19042)";
fileInfo "UUID" "EFC45D0E-418B-CCCA-65D6-9BB7328A82A6";
createNode transform -n "FaceGrp";
	rename -uid "84052B45-454A-3136-B116-F186416BC525";
createNode transform -n "FaceCtrlGrp" -p "FaceGrp";
	rename -uid "32D09083-4982-9FC3-D137-3B988C275942";
createNode transform -n "EyeCtrlOff" -p "FaceCtrlGrp";
	rename -uid "B21319A2-494B-ED47-7916-68A201F25629";
	setAttr ".t" -type "double3" 0 0 5 ;
	setAttr ".rp" -type "double3" -0.00016786874054428575 -2.0428103653102851e-15 -4.3196196006329516e-21 ;
	setAttr ".rpt" -type "double3" 0 8.3870144081765967e-21 -5.8494063949150127e-18 ;
	setAttr ".sp" -type "double3" -0.0004196718513607145 -5.1070259132757201e-15 -1.0799049001582407e-20 ;
	setAttr ".spt" -type "double3" 0.00025180311081642872 3.064215547965435e-15 6.4794294009494556e-21 ;
createNode transform -n "EyeCtrl" -p "EyeCtrlOff";
	rename -uid "B05F23E7-45CD-53B3-1142-63B04C728442";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 2 -en "Head:Fly:World" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "EyeCtrlShape" -p "EyeCtrl";
	rename -uid "F5978614-4859-BDF2-10BE-8FA3B05F84BA";
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
	rename -uid "14D3F6A2-4CEC-F725-BBDB-8C8C96D68F31";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "LeftEyeCtrl" -p "LeftEyeCtrlGrp";
	rename -uid "C26D8ACB-4BE4-58F2-154E-67B4AA852293";
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
	rename -uid "CDEF07DD-4848-C044-49C9-7089C53BC3E0";
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
	rename -uid "B3E2DE8A-4F09-8218-128D-DE95E06FDDDB";
	setAttr ".t" -type "double3" -3 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "RightEyeCtrl" -p "RightEyeCtrlGrp";
	rename -uid "42C5E154-4C49-8EAF-88A2-619C8D0D5F2F";
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
	rename -uid "8A11CBC4-4665-C90F-3D89-53A680577BE1";
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
	rename -uid "D43090AB-425A-0A04-15A5-F4A68C951941";
	setAttr ".v" no;
createNode transform -n "CenterBrowCtrlOffGrp" -p "BrowCtrlGrp";
	rename -uid "7CC5F047-456D-62C9-D4A9-61A266F59F4E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "CenterBrowCtrl" -p "CenterBrowCtrlOffGrp";
	rename -uid "C300CC8D-4C05-DEF4-F2D4-77B35F6323F1";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftBrow1Ctrl1Shape" -p "CenterBrowCtrl";
	rename -uid "90883165-48B0-7F4B-6916-2BAA1A149372";
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
createNode transform -n "LeftBrowCtrlGrpOffGrp" -p "BrowCtrlGrp";
	rename -uid "D2F61E99-4D1C-BDE0-B876-9B80E95E3F0F";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "LeftBrowCtrlGrp" -p "LeftBrowCtrlGrpOffGrp";
	rename -uid "DDB672D4-492C-141A-C1DF-C680EB8F7E98";
createNode transform -n "LeftBrowCtrl" -p "LeftBrowCtrlGrp";
	rename -uid "B68B5CB4-4CFE-E418-D747-DCB2C445EF45";
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
	rename -uid "0771EEA2-4225-1AA5-D446-A4B9B6B5C259";
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
	rename -uid "391C584D-48A0-F40F-002C-00B2E7E04C46";
	setAttr ".s" -type "double3" 1.0000000650015843 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "LeftBrow1Ctrl" -p "LeftBrow1CtrlGrp";
	rename -uid "DEE26459-4742-836F-0BC5-329FDA6331BB";
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
	rename -uid "C9BC8422-4BB0-E4C4-1A1D-CA864D187A3B";
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
createNode transform -n "LeftBrow2CtrlGrp" -p "LeftBrowCtrl";
	rename -uid "C2D9AF98-4356-C80F-586E-92A9489702C5";
	setAttr ".s" -type "double3" 1.0000000040976964 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "LeftBrow2Ctrl" -p "LeftBrow2CtrlGrp";
	rename -uid "80FCC0AE-4B91-036B-41CD-0CAD0B5CACBC";
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
	rename -uid "5EF66871-4885-042D-CBAC-ABB99549E089";
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
createNode transform -n "LeftBrow3CtrlGrp" -p "LeftBrowCtrl";
	rename -uid "F932A97E-425E-9675-F231-B8B8FFC0CA35";
	setAttr ".s" -type "double3" 1.0000000352116769 1.0000000000000002 1 ;
createNode transform -n "LeftBrow3Ctrl" -p "LeftBrow3CtrlGrp";
	rename -uid "2557CE27-46C7-B9B0-A0DA-868768D8EE34";
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
	rename -uid "4E0B1D43-48FC-676B-807D-5A96F80AC76D";
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
createNode transform -n "RightBrowCtrlOffGrpOffGrp" -p "BrowCtrlGrp";
	rename -uid "15BC7170-400E-5A61-39EE-CFA111838D7A";
	setAttr ".s" -type "double3" 0.99999999999999944 1 1 ;
createNode transform -n "RightBrowCtrlOffGrp" -p "RightBrowCtrlOffGrpOffGrp";
	rename -uid "0A7B2364-4A55-CF64-6DDA-E5B9F0E56976";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightBrowCtrlGrp" -p "RightBrowCtrlOffGrp";
	rename -uid "2D7BCE00-4F02-10A5-2137-F29D73896C0A";
createNode transform -n "RightBrowCtrl" -p "RightBrowCtrlGrp";
	rename -uid "4FF84F69-4107-B9BF-07AD-B386C4078EED";
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
	rename -uid "57E5BDBA-42BB-2449-0F93-1A8BD1EF6F82";
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
	rename -uid "EC2489C8-42D5-A3B2-E2A3-B1BF2FCEBF2D";
	setAttr ".s" -type "double3" 1.0000000650015843 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightBrow1Ctrl" -p "RightBrow1CtrlGrp";
	rename -uid "1F506AC5-4B12-7011-16D8-69BAF6AC8169";
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
	rename -uid "A86FB289-4D2C-13D6-2747-AC9971AEA307";
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
createNode transform -n "RightBrow2CtrlGrp" -p "RightBrowCtrl";
	rename -uid "94B70687-4043-D18D-8C30-EEB12E01317F";
	setAttr ".s" -type "double3" 1.0000000040976964 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "RightBrow2Ctrl" -p "RightBrow2CtrlGrp";
	rename -uid "AF1257AA-48E0-8071-883A-E9B4295ACF30";
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
	rename -uid "E85DCBD4-4AB2-DE71-3963-4FB9FE17F3F3";
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
createNode transform -n "RightBrow3CtrlGrp" -p "RightBrowCtrl";
	rename -uid "9FBBF05F-4128-AACB-F9A8-E283695F6873";
	setAttr ".s" -type "double3" 1.0000000352116769 1.0000000000000002 1 ;
createNode transform -n "RightBrow3Ctrl" -p "RightBrow3CtrlGrp";
	rename -uid "C7C4593A-4F4E-FADF-5E7A-D381EE7A6DE9";
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
	rename -uid "5D869737-4C81-DFDF-4C14-4D97AE549660";
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
createNode transform -n "MouthCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "819D5926-4A42-7835-BFDC-DA95FD40DDE1";
	setAttr ".v" no;
createNode transform -n "RightMouthCtrlOffGrp" -p "MouthCtrlGrp";
	rename -uid "123F2697-4DBC-DE89-B2BB-A693A74DD563";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 1 ;
createNode transform -n "RightMouthCtrlGrpOffGrp" -p "RightMouthCtrlOffGrp";
	rename -uid "5AC8DFCB-407B-2F16-42DD-808928FAF0E9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightMouthCtrlGrp" -p "RightMouthCtrlGrpOffGrp";
	rename -uid "6FDCB4A5-4A52-173F-C084-09B660E01C18";
createNode transform -n "RightMouthCtrl" -p "RightMouthCtrlGrp";
	rename -uid "51752E25-4DE2-521B-BADB-658D1D48051D";
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
	rename -uid "D446FCE9-45C2-890F-D5CB-AB9EEDA238AC";
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
createNode transform -n "LeftMouthCtrlGrpOffGrp" -p "MouthCtrlGrp";
	rename -uid "CA2207CD-4931-9FF7-4C9F-CC9F364DACBB";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftMouthCtrlGrp" -p "LeftMouthCtrlGrpOffGrp";
	rename -uid "F73A1212-4190-9ABB-FBED-6EA72F23F915";
createNode transform -n "LeftMouthCtrl" -p "LeftMouthCtrlGrp";
	rename -uid "570463B0-40B0-CC2D-E70F-E189A3671EA6";
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
	rename -uid "BCBBE153-43CF-F5F6-47AD-D4A9ADB37E5D";
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
createNode transform -n "CheekCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "24728AE0-4495-1D2D-0CAC-FDBD0BF59497";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2612133559741778e-13 7.1054273576010019e-15 ;
createNode transform -n "LeftUpCheekCtrlGrp" -p "CheekCtrlGrp";
	rename -uid "CEAB46EB-4F9C-CCCD-1825-208867BFBCB7";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999933 ;
createNode transform -n "LeftUpCheekCtrlRvs" -p "LeftUpCheekCtrlGrp";
	rename -uid "26279135-4C56-749D-50BA-D587156DA487";
createNode transform -n "LeftUpCheekCtrl" -p "LeftUpCheekCtrlRvs";
	rename -uid "3463C00C-4620-952E-FBCE-8EBCF0DAB5FB";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftUpCheekCtrlShape" -p "LeftUpCheekCtrl";
	rename -uid "0DF31341-4255-7187-AA7D-96928510B152";
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
createNode transform -n "RightUpCheekCtrlOffGrp" -p "CheekCtrlGrp";
	rename -uid "A9E58E6A-454D-B370-88A1-B6AACCFA0D23";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "RightUpCheekCtrlGrp" -p "RightUpCheekCtrlOffGrp";
	rename -uid "61AC5404-4478-9F9F-8AA0-71B4D1B9A28E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightUpCheekCtrlPosGrp" -p "RightUpCheekCtrlGrp";
	rename -uid "06CEA6C0-4C49-3B2A-898A-5782C1667FB7";
	setAttr ".t" -type "double3" 0 1.1102230246251565e-16 2.2204460492503131e-16 ;
createNode transform -n "RightUpCheekCtrlRvs" -p "|FaceGrp|FaceCtrlGrp|CheekCtrlGrp|RightUpCheekCtrlOffGrp|RightUpCheekCtrlGrp|RightUpCheekCtrlPosGrp";
	rename -uid "6852910B-46F5-CCFD-F966-B69927C75491";
createNode transform -n "RightUpCheekCtrl" -p "RightUpCheekCtrlRvs";
	rename -uid "5E5BC3B2-4A4C-3B89-E8F8-0D883D2258C3";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightUpCheekCtrlShape" -p "RightUpCheekCtrl";
	rename -uid "B5374F82-4856-5D5C-8CC4-508997125312";
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
createNode transform -n "LeftCheekCtrlGrp" -p "CheekCtrlGrp";
	rename -uid "C2A767AE-4CCC-A79A-638F-6D89187F5F9F";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "LeftCheekCtrlRvs" -p "LeftCheekCtrlGrp";
	rename -uid "1ED92A65-410D-9ED6-B968-1DB2D93991F4";
createNode transform -n "LeftCheekCtrl" -p "LeftCheekCtrlRvs";
	rename -uid "3F4488D0-422A-0092-2432-D19B7318F2E3";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftCheekCtrlShape" -p "LeftCheekCtrl";
	rename -uid "8F3CBA11-43E1-2C16-A649-BC9316A2392E";
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
createNode transform -n "RightCheekCtrlOffGrp" -p "CheekCtrlGrp";
	rename -uid "748D5753-44E0-EC67-80AB-19B1BCDBA01E";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "RightCheekCtrlGrp" -p "RightCheekCtrlOffGrp";
	rename -uid "794E2CC2-4E81-4191-AA12-9CBE7F01F13C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightCheekCtrlPosGrp" -p "RightCheekCtrlGrp";
	rename -uid "DA3116AF-4EE1-785D-051C-FC85753EABC2";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.1102230246251565e-16 -1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "RightCheekCtrlRvs" -p "|FaceGrp|FaceCtrlGrp|CheekCtrlGrp|RightCheekCtrlOffGrp|RightCheekCtrlGrp|RightCheekCtrlPosGrp";
	rename -uid "F6EB7296-45D2-AE35-0CC9-60A4D79EC199";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "RightCheekCtrl" -p "RightCheekCtrlRvs";
	rename -uid "9000C4D6-416B-C7F8-7590-A585F502BBBC";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightCheekCtrlShape" -p "RightCheekCtrl";
	rename -uid "786CFA3D-4C00-B551-B135-928099DD3563";
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
createNode transform -n "BetweenEyesCtrlOffGrp" -p "FaceCtrlGrp";
	rename -uid "E6FF92DC-49D2-7BBC-C8DB-14AF62F5338B";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "BetweenEyesCtrl" -p "BetweenEyesCtrlOffGrp";
	rename -uid "17ED8C86-49E1-0257-6605-0CA06FE13848";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftBrow1Ctrl2Shape" -p "BetweenEyesCtrl";
	rename -uid "D1B0078A-4734-8684-FE17-268E41B73519";
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
createNode transform -n "NoseCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "5806AC15-4F95-D658-5A93-1BA8C2DF7915";
	setAttr ".v" no;
createNode transform -n "Nose1CtrlGrp" -p "NoseCtrlGrp";
	rename -uid "16101F64-4E72-AAEE-F337-EBBBBB1F9207";
createNode transform -n "Nose1CtrlCnt" -p "Nose1CtrlGrp";
	rename -uid "2A471CFC-4A76-B227-ACB6-0585539B676A";
createNode transform -n "Nose1Ctrl" -p "Nose1CtrlCnt";
	rename -uid "B16FC8E5-4EC7-298D-83C4-1390C2313A02";
	addAttr -ci true -sn "UpBlend" -ln "UpBlend" -min 0 -max 1 -at "double";
	setAttr -k on ".UpBlend" 0.3;
createNode nurbsCurve -n "Nose1CtrlShape" -p "Nose1Ctrl";
	rename -uid "530A7C67-4788-BA6C-E124-83B364F52634";
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
createNode transform -n "Nose2CtrlConstGrp" -p "Nose1Ctrl";
	rename -uid "6FB2B9AA-4C50-45D6-9458-ECB9F4A10377";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "Nose2CtrlGrp" -p "Nose2CtrlConstGrp";
	rename -uid "965EA0DB-47DF-2E36-3B7D-BE9EEE350561";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000007 ;
createNode transform -n "Nose2Ctrl" -p "Nose2CtrlGrp";
	rename -uid "357822E2-4B8C-C535-F217-E5A11DA0C1A3";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999933 ;
createNode nurbsCurve -n "Nose2CtrlShape" -p "Nose2Ctrl";
	rename -uid "1D58E70F-4145-8409-FEA3-D2839127CA6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9394387716057793 0.56497588937805565 -1.2817194593867098e-08
		1.1196458333133008e-16 1.1276252420151058 -1.2817195565312245e-08
		-1.9394387716057793 0.56497588937805543 -1.2817194482844796e-08
		-1.8285204094647407 -0.069749526783835461 -1.2817194482844796e-08
		-1.9394387716057793 -1.1276252203869883 -1.2817194482844796e-08
		-1.8316413999845324e-16 -1.0671242955827851 -1.2817194371822493e-08
		1.9394387716057793 -1.1276252203869883 -1.2817194482844796e-08
		1.8285204094647407 -0.069749526783835572 -1.2817194482844796e-08
		1.9394387716057793 0.56497588937805565 -1.2817194593867098e-08
		1.1196458333133008e-16 1.1276252420151058 -1.2817195565312245e-08
		-1.9394387716057793 0.56497588937805543 -1.2817194482844796e-08
		;
createNode transform -n "Nose3CtrlGrp" -p "Nose2Ctrl";
	rename -uid "B63683E7-4607-43E4-F190-C385C40BDDF0";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "Nose3Ctrl" -p "Nose3CtrlGrp";
	rename -uid "256C7035-4384-4E3D-A9C3-A88C453C8238";
createNode nurbsCurve -n "Nose3CtrlShape" -p "Nose3Ctrl";
	rename -uid "04291975-4E15-B87C-4F4B-A1B0F949A9CF";
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
	rename -uid "A47B4682-46DA-276F-DC5D-B09230C2CB0B";
createNode transform -n "Nose4Ctrl" -p "Nose4CtrlGrp";
	rename -uid "64E32377-404E-106C-8B3C-A89B3CF171F7";
createNode nurbsCurve -n "Nose4CtrlShape" -p "Nose4Ctrl";
	rename -uid "5B10DB59-46AB-F6AD-AD4D-B6B41C744E1D";
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
	rename -uid "D1AE962B-44AD-1B1E-46E6-23A0939CF168";
createNode transform -n "LeftNoseCtrl" -p "LeftNoseCtrlGrp";
	rename -uid "BCCB547A-40A0-EA77-ED8D-B181678F4486";
createNode nurbsCurve -n "curve2Shape" -p "LeftNoseCtrl";
	rename -uid "30E5159C-431E-3BAE-A62D-9492D995AAA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 60 0 no 3
		61 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60
		61
		5.5511151231257821e-17 -5.5511151231257821e-17 0.5
		5.5511151231257821e-17 0.15450849999999991 0.47552800000000001
		5.5511151231257821e-17 0.2938925 0.40450850000000005
		5.5511151231257821e-17 0.40450850000000005 0.2938925
		5.5511151231257821e-17 0.47552800000000001 0.15450849999999991
		5.5511151231257821e-17 0.5 -5.5511151231257821e-17
		0.15450850000000005 0.47552800000000001 -5.5511151231257821e-17
		0.2938925 0.40450850000000005 -5.5511151231257821e-17
		0.40450850000000005 0.2938925 -5.5511151231257821e-17
		0.47552800000000001 0.15450849999999991 -5.5511151231257821e-17
		0.5 -5.5511151231257821e-17 -5.5511151231257821e-17
		0.47552800000000001 -5.5511151231257821e-17 0.15450849999999991
		0.40450850000000005 -5.5511151231257821e-17 0.2938925
		0.2938925 -5.5511151231257821e-17 0.40450850000000005
		0.15450850000000005 -5.5511151231257821e-17 0.47552800000000001
		5.5511151231257821e-17 -5.5511151231257821e-17 0.5
		5.5511151231257821e-17 -0.15450850000000005 0.47552800000000001
		5.5511151231257821e-17 -0.2938925 0.40450850000000005
		5.5511151231257821e-17 -0.40450850000000005 0.2938925
		5.5511151231257821e-17 -0.47552800000000001 0.15450849999999991
		5.5511151231257821e-17 -0.5 -5.5511151231257821e-17
		0.15450850000000005 -0.47552800000000001 -5.5511151231257821e-17
		0.2938925 -0.40450850000000005 -5.5511151231257821e-17
		0.40450850000000005 -0.2938925 -5.5511151231257821e-17
		0.47552800000000001 -0.15450850000000005 -5.5511151231257821e-17
		0.5 -5.5511151231257821e-17 -5.5511151231257821e-17
		0.47552800000000001 -5.5511151231257821e-17 -0.15450850000000005
		0.40450850000000005 -5.5511151231257821e-17 -0.2938925
		0.2938925 -5.5511151231257821e-17 -0.40450850000000005
		0.15450850000000005 -5.5511151231257821e-17 -0.47552800000000001
		5.5511151231257821e-17 -5.5511151231257821e-17 -0.5
		5.5511151231257821e-17 0.15450849999999991 -0.47552800000000001
		5.5511151231257821e-17 0.2938925 -0.40450850000000005
		5.5511151231257821e-17 0.40450850000000005 -0.2938925
		5.5511151231257821e-17 0.47552800000000001 -0.15450850000000005
		5.5511151231257821e-17 0.5 -5.5511151231257821e-17
		-0.15450849999999991 0.47552800000000001 -5.5511151231257821e-17
		-0.2938925 0.40450850000000005 -5.5511151231257821e-17
		-0.40450850000000005 0.2938925 -5.5511151231257821e-17
		-0.47552800000000001 0.15450849999999991 -5.5511151231257821e-17
		-0.5 -5.5511151231257821e-17 -5.5511151231257821e-17
		-0.47552800000000001 -5.5511151231257821e-17 -0.15450850000000005
		-0.40450850000000005 -5.5511151231257821e-17 -0.2938925
		-0.2938925 -5.5511151231257821e-17 -0.40450850000000005
		-0.15450849999999991 -5.5511151231257821e-17 -0.47552800000000001
		5.5511151231257821e-17 -5.5511151231257821e-17 -0.5
		5.5511151231257821e-17 -0.15450850000000005 -0.47552800000000001
		5.5511151231257821e-17 -0.2938925 -0.40450850000000005
		5.5511151231257821e-17 -0.40450850000000005 -0.2938925
		5.5511151231257821e-17 -0.47552800000000001 -0.15450850000000005
		5.5511151231257821e-17 -0.5 -5.5511151231257821e-17
		-0.15450849999999991 -0.47552800000000001 -5.5511151231257821e-17
		-0.2938925 -0.40450850000000005 -5.5511151231257821e-17
		-0.40450850000000005 -0.2938925 -5.5511151231257821e-17
		-0.47552800000000001 -0.15450850000000005 -5.5511151231257821e-17
		-0.5 -5.5511151231257821e-17 -5.5511151231257821e-17
		-0.47552800000000001 -5.5511151231257821e-17 0.15450849999999991
		-0.40450850000000005 -5.5511151231257821e-17 0.2938925
		-0.2938925 -5.5511151231257821e-17 0.40450850000000005
		-0.15450849999999991 -5.5511151231257821e-17 0.47552800000000001
		5.5511151231257821e-17 -5.5511151231257821e-17 0.5
		;
createNode transform -n "RightNoseCtrlGrp" -p "Nose3Ctrl";
	rename -uid "B900268C-49D0-3FEC-268E-3D9DC4A3E029";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightNoseCtrlOffGrp" -p "RightNoseCtrlGrp";
	rename -uid "F527FFC4-4FC8-282E-B3F9-25A6F4E577EE";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "RightNoseCtrl" -p "RightNoseCtrlOffGrp";
	rename -uid "679D2C21-42A3-D812-D3F4-2290D223F28B";
createNode nurbsCurve -n "curve3Shape" -p "RightNoseCtrl";
	rename -uid "C8BED0C9-4D2C-0949-1A59-71BA8128CA77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 60 0 no 3
		61 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60
		61
		0 0 0.5
		0 0.15450849999999999 0.47552800000000001
		0 0.2938925 0.40450850000000005
		0 0.40450850000000005 0.2938925
		0 0.47552800000000001 0.15450849999999991
		0 0.5 -5.5511151231257821e-17
		0.15450849999999999 0.47552800000000001 -5.5511151231257821e-17
		0.2938925 0.40450850000000005 -5.5511151231257821e-17
		0.40450850000000005 0.2938925 -5.5511151231257821e-17
		0.47552800000000001 0.15450849999999999 -5.5511151231257821e-17
		0.5 0 -5.5511151231257821e-17
		0.47552800000000001 0 0.15450849999999991
		0.40450850000000005 0 0.2938925
		0.2938925 0 0.40450850000000005
		0.15450849999999999 0 0.47552800000000001
		0 0 0.5
		0 -0.15450849999999999 0.47552800000000001
		0 -0.2938925 0.40450850000000005
		0 -0.40450850000000005 0.2938925
		0 -0.47552800000000001 0.15450849999999991
		0 -0.5 -5.5511151231257821e-17
		0.15450849999999999 -0.47552800000000001 -5.5511151231257821e-17
		0.2938925 -0.40450850000000005 -5.5511151231257821e-17
		0.40450850000000005 -0.2938925 -5.5511151231257821e-17
		0.47552800000000001 -0.15450849999999999 -5.5511151231257821e-17
		0.5 0 -5.5511151231257821e-17
		0.47552800000000001 0 -0.15450850000000005
		0.40450850000000005 0 -0.2938925
		0.2938925 0 -0.40450850000000005
		0.15450849999999999 0 -0.47552800000000001
		0 0 -0.5
		0 0.15450849999999999 -0.47552800000000001
		0 0.2938925 -0.40450850000000005
		0 0.40450850000000005 -0.2938925
		0 0.47552800000000001 -0.15450850000000005
		0 0.5 -5.5511151231257821e-17
		-0.15450849999999999 0.47552800000000001 -5.5511151231257821e-17
		-0.2938925 0.40450850000000005 -5.5511151231257821e-17
		-0.40450850000000005 0.2938925 -5.5511151231257821e-17
		-0.47552800000000001 0.15450849999999999 -5.5511151231257821e-17
		-0.5 0 -5.5511151231257821e-17
		-0.47552800000000001 0 -0.15450850000000005
		-0.40450850000000005 0 -0.2938925
		-0.2938925 0 -0.40450850000000005
		-0.15450849999999999 0 -0.47552800000000001
		0 0 -0.5
		0 -0.15450849999999999 -0.47552800000000001
		0 -0.2938925 -0.40450850000000005
		0 -0.40450850000000005 -0.2938925
		0 -0.47552800000000001 -0.15450850000000005
		0 -0.5 -5.5511151231257821e-17
		-0.15450849999999999 -0.47552800000000001 -5.5511151231257821e-17
		-0.2938925 -0.40450850000000005 -5.5511151231257821e-17
		-0.40450850000000005 -0.2938925 -5.5511151231257821e-17
		-0.47552800000000001 -0.15450849999999999 -5.5511151231257821e-17
		-0.5 0 -5.5511151231257821e-17
		-0.47552800000000001 0 0.15450849999999991
		-0.40450850000000005 0 0.2938925
		-0.2938925 0 0.40450850000000005
		-0.15450849999999999 0 0.47552800000000001
		0 0 0.5
		;
createNode transform -n "JawCtrlGrp" -p "FaceCtrlGrp";
	rename -uid "45D8AD15-4931-817B-92CA-D0B3E507BC59";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999922 ;
createNode transform -n "JawCtrl" -p "JawCtrlGrp";
	rename -uid "9C016FBF-40E6-BD08-AB62-74A38C8A342D";
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
	rename -uid "01AB0FE7-4C5B-E92E-8262-B79B44CE5829";
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
	rename -uid "35B3CBD8-41EC-E834-9613-D68C7F230D19";
	setAttr ".v" no;
createNode transform -n "FaceConnection" -p "FaceSysGrp";
	rename -uid "9357FD38-427D-3720-1AE7-E5A88FE85183";
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
createNode transform -n "NoseUpHeadPos" -p "FaceSysGrp";
	rename -uid "BBCAD096-4FF3-BC51-807A-CCB19D976676";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode locator -n "NoseUpHeadPosShape" -p "NoseUpHeadPos";
	rename -uid "70B1C9BF-4229-5DD6-2EB5-508897B95690";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseUpJawUpPos" -p "NoseUpHeadPos";
	rename -uid "1B57B106-42CF-3792-38EA-8B8A36878A9D";
	setAttr ".t" -type "double3" 1 -2.3085320547572066e-12 0 ;
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode locator -n "NoseUpJawUpPosShape" -p "NoseUpJawUpPos";
	rename -uid "E43FD685-4EAB-5B18-3200-B381711E6C21";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -2.0106131115092204e-12 0 0 ;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseUpJawPos" -p "NoseUpHeadPos";
	rename -uid "F59754AB-42E3-AE88-1F65-FABA9691712B";
	setAttr ".r" -type "double3" -59.999999999999993 0 -90.000000000003254 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999922 ;
createNode locator -n "NoseUpJawPosShape" -p "NoseUpJawPos";
	rename -uid "699194B3-4FC2-DE33-8101-3D893564A6A4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseUpJawEndPos" -p "NoseUpJawPos";
	rename -uid "073EF363-4283-7810-98FB-8488DB71B740";
	setAttr ".t" -type "double3" 3.1368995106861503e-18 -6.6613381477515062e-16 1 ;
	setAttr ".r" -type "double3" -2.2691769524649191e-12 -90 -90.000000001034749 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999989 ;
createNode locator -n "NoseUpJawEndPosShape" -p "NoseUpJawEndPos";
	rename -uid "89CDF8A4-428A-4D20-13AD-8AA2CF205B32";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "NoseJntGrp" -p "FaceSysGrp";
	rename -uid "21DC8F62-4D1E-A2E0-7E40-BF976720082D";
createNode joint -n "Nose1Jnt" -p "NoseJntGrp";
	rename -uid "1A601769-4BA8-285C-5EBA-25B374CFB70C";
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
	rename -uid "B810B386-47C6-C048-6C20-B2BD3668FDA5";
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
	rename -uid "681F1D5A-400F-B6F3-32A4-199C366707C4";
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
	rename -uid "1ABC4CB6-45E0-7BB1-B713-2CB25D7FE3AB";
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
	rename -uid "814A7990-4118-3BAD-A1C9-2E8A760F00F1";
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
	rename -uid "70EDE19D-4EF1-A8E9-41DB-A6ABE9B9714C";
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
createNode transform -n "FaceCtrlPosCrv" -p "FaceSysGrp";
	rename -uid "643762C6-4B25-D8D8-D16A-79BB9B3961ED";
createNode nurbsCurve -n "FaceCtrlPosCrvShape" -p "FaceCtrlPosCrv";
	rename -uid "260E1FA9-41CB-8F56-3BC2-DB9C0033665A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		1.0000000000007145 -1.9999999999996427 0
		3.8332707603987428 -0.65658950805508276 -0.13334941864033389
		3.3085353096536751 0.65686035156386602 0.13330745697004609
		3.3023633791277254 3.0000000000011799 0
		-3.3023633791277267 3.0000000000011786 0
		-3.3085353096536751 0.65686035156386602 0.13330745697004609
		-3.8332707603987428 -0.65658950805508276 -0.13334941864033389
		-1.0000000000007145 -1.9999999999996427 0
		;
createNode transform -n "FaceJntGrp" -p "FaceGrp";
	rename -uid "3D931D2D-4C3D-5B29-2DA4-A38B67AE82BC";
	setAttr ".v" no;
createNode transform -n "CenterBrowJntOffGrp" -p "FaceJntGrp";
	rename -uid "B8A14546-4442-8469-52AE-77AD7D0653EE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "CenterBrowJntPosGrp" -p "CenterBrowJntOffGrp";
	rename -uid "E0B8F63F-4213-A96A-7521-8FB58A19430C";
createNode joint -n "CenterBrowJnt" -p "CenterBrowJntPosGrp";
	rename -uid "7F403128-4D9B-1DBE-AA4D-B8ABC88C31E8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 9.540979117872439e-18 -4.3639137442541553e-17 0
		 7.1991024253037494e-17 0.93671882965248665 -0.35008261049997413 0 -5.6378512969246231e-18 0.35008261049997508 0.93671882965248665 0
		 -7.5150897490935114e-07 17.483656362962932 24.845075343918264 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "RightBrowJntPosGrp" -p "FaceJntGrp";
	rename -uid "5B444AD6-4D2B-0E90-B92A-B78F5B580EDC";
createNode transform -n "RightBrowJntPosOffGrp" -p "RightBrowJntPosGrp";
	rename -uid "7EA579E0-4714-1FA3-2328-7B87966FADDB";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightBrowJntPosCntGrp" -p "RightBrowJntPosOffGrp";
	rename -uid "CCE357E3-47AF-8592-5EED-EDA4B40C7E17";
createNode transform -n "RightBrow1JntGrp" -p "RightBrowJntPosCntGrp";
	rename -uid "598A9CA1-4988-123A-8F98-9497672F59A5";
	setAttr ".s" -type "double3" 1.0000000650015828 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "RightBrow1JntPosGrp" -p "RightBrow1JntGrp";
	rename -uid "EC81DB5D-4FD0-0E31-30D6-C49E68978ED4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightBrow1JntCnt" -p "RightBrow1JntPosGrp";
	rename -uid "45962927-4747-720B-B653-8ABDAD18279B";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 8.8817841970012523e-16 0 ;
createNode joint -n "RightBrow1Jnt" -p "RightBrow1JntCnt";
	rename -uid "A6F1CE18-4210-DEF2-7CB0-80A09D0EF720";
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
createNode transform -n "RightBrow2JntGrp" -p "RightBrowJntPosCntGrp";
	rename -uid "70AEA76A-45AB-D521-8F6F-80BEF9BD0DF2";
	setAttr ".s" -type "double3" 1.0000000040976951 1.0000000000000007 0.99999999999999944 ;
createNode transform -n "RightBrow2JntPosGrp" -p "RightBrow2JntGrp";
	rename -uid "4AE99A91-421B-6A0C-B946-76A02474142A";
createNode transform -n "RightBrow2JntCnt" -p "RightBrow2JntPosGrp";
	rename -uid "684EAF74-493B-2ABA-8EA9-5A8CEB9EC50C";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 0 ;
createNode joint -n "RightBrow2Jnt" -p "RightBrow2JntCnt";
	rename -uid "E6D9E3DB-4C84-A6EC-CA2B-E28DFBABE43D";
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
createNode transform -n "RightBrow3JntGrp" -p "RightBrowJntPosCntGrp";
	rename -uid "9C3C1C90-4367-673C-CD43-B9AF87B889EA";
	setAttr ".s" -type "double3" 1.0000000352116758 1.0000000000000007 0.99999999999999956 ;
createNode transform -n "RightBrow3JntPosGrp" -p "RightBrow3JntGrp";
	rename -uid "3DCC6484-403D-9386-F7D7-D49DC17FF588";
createNode transform -n "RightBrow3JntCnt" -p "RightBrow3JntPosGrp";
	rename -uid "EDA61AEE-4919-795A-EF34-68A2D08AC0D3";
createNode joint -n "RightBrow3Jnt" -p "RightBrow3JntCnt";
	rename -uid "DDCCD5F0-45A3-96F3-5D21-A483206DA298";
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
createNode transform -n "LeftBrowJntPosGrpOffGrp" -p "FaceJntGrp";
	rename -uid "F93EC480-432C-A102-60B3-25B89F884D2E";
createNode transform -n "LeftBrowJntPosGrp" -p "LeftBrowJntPosGrpOffGrp";
	rename -uid "898C839D-40A7-FAA8-41C1-C08DD91822F9";
createNode transform -n "LeftBrow1JntGrp" -p "LeftBrowJntPosGrp";
	rename -uid "56F9BDEC-40B4-E902-8BFD-0BB49DC9A34E";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "LeftBrow1JntPosGrp" -p "LeftBrow1JntGrp";
	rename -uid "57C43C04-4A9B-55A2-003F-FD84A5CB866A";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftBrow1JntCnt" -p "LeftBrow1JntPosGrp";
	rename -uid "120C1474-486A-E25A-9D75-DB9C992E19B0";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode joint -n "LeftBrow1Jnt" -p "LeftBrow1JntCnt";
	rename -uid "91B6B499-4610-0A5A-F673-77A3164D2577";
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
createNode transform -n "LeftBrow2JntGrp" -p "LeftBrowJntPosGrp";
	rename -uid "CDD6FE31-4AC9-04AF-6F2D-2688DC14D17E";
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999978 ;
createNode transform -n "LeftBrow2JntPosGrp" -p "LeftBrow2JntGrp";
	rename -uid "0F3BC8C3-4B15-00FA-F601-BA87EAD9EF13";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "LeftBrow2JntCnt" -p "LeftBrow2JntPosGrp";
	rename -uid "67780956-4727-F95A-979D-3882E89293E0";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
createNode joint -n "LeftBrow2Jnt" -p "LeftBrow2JntCnt";
	rename -uid "1DEDAF07-495B-AB98-59FD-64B667BFFC30";
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
createNode transform -n "LeftBrow3JntGrp" -p "LeftBrowJntPosGrp";
	rename -uid "D8C2FCD5-4ECE-4120-2C92-77AE715C4E32";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "LeftBrow3JntPosGrp" -p "LeftBrow3JntGrp";
	rename -uid "62F67323-4DA2-5DB4-B22B-FB8E3742E7C4";
createNode transform -n "LeftBrow3JntCnt" -p "LeftBrow3JntPosGrp";
	rename -uid "556CB0AF-4773-EFB0-20BA-9685A542A12E";
createNode joint -n "LeftBrow3Jnt" -p "LeftBrow3JntCnt";
	rename -uid "3E15198B-4617-FE26-5A9E-F1B71935392C";
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
createNode transform -n "BetweenEyesJntOffGrp" -p "FaceJntGrp";
	rename -uid "25F25C8D-405D-3812-6410-67818898D358";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000009 1.0000000000000004 ;
createNode joint -n "BetweenEyesJnt" -p "BetweenEyesJntOffGrp";
	rename -uid "8AD6DD6A-4C1D-764D-9316-4490054A73F5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 9.1072982488782372e-18 -4.3584927333917278e-17 0
		 -9.1506663357776574e-17 0.98243125048549751 -0.18662485919486585 0 -5.6107462426124854e-18 0.18662485919486652 0.98243125048549695 0
		 -7.515089830814166e-07 14.860223678947566 25.437726904058287 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode transform -n "LeftCheekJntGrpOffGrp" -p "FaceJntGrp";
	rename -uid "F3200A81-4A22-B26C-63D7-15960BDCD457";
	setAttr ".s" -type "double3" 0.99999999999999833 0.99999999999999911 0.99999999999999911 ;
createNode transform -n "LeftCheekJntGrp" -p "LeftCheekJntGrpOffGrp";
	rename -uid "26FD4240-4138-7B65-8467-7FB695D9E825";
createNode joint -n "LeftCheekJnt" -p "LeftCheekJntGrp";
	rename -uid "D78AFF6F-41F4-C758-DBB3-45A83C341759";
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
createNode transform -n "LeftUpCheekJntGrpOffGrp" -p "FaceJntGrp";
	rename -uid "6D529ACB-4F44-1767-B70D-DD911B938726";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "LeftUpCheekJntGrp" -p "LeftUpCheekJntGrpOffGrp";
	rename -uid "3180B13B-447F-848C-F3B8-8E8C7DB23566";
createNode joint -n "LeftUpCheekJnt" -p "LeftUpCheekJntGrp";
	rename -uid "653F1740-4FDC-C24C-5330-309EA2413B80";
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
createNode transform -n "RightCheekGrp" -p "FaceJntGrp";
	rename -uid "C418ECD4-4849-71D7-8920-6FA7BD2F82D1";
createNode transform -n "RightCheekOffGrp" -p "RightCheekGrp";
	rename -uid "9D107870-4EAA-7129-ED40-4FAA51C51968";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightCheekPosCntGrp" -p "RightCheekOffGrp";
	rename -uid "602CF717-433F-82C8-6A25-6E8F860E2856";
createNode joint -n "RightCheekJnt" -p "RightCheekPosCntGrp";
	rename -uid "6406C583-4008-145B-C00E-17A9244F7443";
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
createNode transform -n "RightUpCheekJntGrp" -p "FaceJntGrp";
	rename -uid "CFC0AC88-4A3D-314E-C65A-96A68F0F075F";
createNode transform -n "RightUpCheekJntOffGrp" -p "RightUpCheekJntGrp";
	rename -uid "8314B01B-4FB5-E436-14CE-1EA28ADE3AE9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightUpCheekJntPosCntGrp" -p "RightUpCheekJntOffGrp";
	rename -uid "B1B320AC-4BF4-C85C-9B61-4299AC9E3368";
createNode joint -n "RightUpCheekJnt" -p "RightUpCheekJntPosCntGrp";
	rename -uid "342CEBD1-40F4-AFFF-573F-3BBB70F9493E";
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
createNode transform -n "FacePoserGrp" -p "FaceGrp";
	rename -uid "4E74F59A-4C34-F19A-EB8E-638F9BC0B5C9";
createNode transform -n "Face5CtrlPos" -p "FacePoserGrp";
	rename -uid "E3FB70EE-45EA-66A3-4E6A-DCBE0CC0EE6E";
createNode transform -n "RightBrowCtrlPosGrp" -p "Face5CtrlPos";
	rename -uid "222FDA69-41C2-1B38-FAD3-05BB32B04B2B";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightBrowCtrlPos" -p "RightBrowCtrlPosGrp";
	rename -uid "4BE66093-4DB4-9696-D795-2381D198E3D0";
createNode locator -n "RightBrowCtrlPosShape" -p "RightBrowCtrlPos";
	rename -uid "B75E4A41-4B82-9781-67FB-258855B0B8EA";
	setAttr -k off ".v";
createNode transform -n "RightBrow1CtrlPosGrp" -p "RightBrowCtrlPos";
	rename -uid "E9B57B6B-4606-368E-F212-C890CFFC36E9";
createNode transform -n "RightBrow1CtrlPos" -p "RightBrow1CtrlPosGrp";
	rename -uid "0F472ACC-49FC-1318-2291-819C963A93DC";
createNode locator -n "RightBrow1CtrlPosShape" -p "RightBrow1CtrlPos";
	rename -uid "9FF68EF0-47AB-8438-8966-D5969681E7A6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "RightBrow2CtrlPosGrp" -p "RightBrowCtrlPos";
	rename -uid "F94017D6-4FFA-1F6D-1624-81B141627354";
createNode transform -n "RightBrow2CtrlPos" -p "RightBrow2CtrlPosGrp";
	rename -uid "4A87D419-489D-74AC-8159-F9BBC8427360";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "RightBrow2CtrlPosShape" -p "RightBrow2CtrlPos";
	rename -uid "7182A382-411D-5A7C-96A9-EDAF4D402ED3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "RightBrow3CtrlPosGrp" -p "RightBrowCtrlPos";
	rename -uid "5ACA9A55-47E7-F74F-994B-00BD38FAC746";
createNode transform -n "RightBrow3CtrlPos" -p "RightBrow3CtrlPosGrp";
	rename -uid "9423CAC4-46C5-CFC9-89E3-9580C70AC230";
createNode locator -n "RightBrow3CtrlPosShape" -p "RightBrow3CtrlPos";
	rename -uid "B4FCBE49-45B5-6C78-5294-82BD9DCEC1D4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "LeftBrowCtrlPosGrp" -p "FacePoserGrp";
	rename -uid "B503131C-4D1F-5F8C-0270-48A7E0FA16D0";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "Face4CtrlPos" -p "LeftBrowCtrlPosGrp";
	rename -uid "55C51769-488D-9F6E-16F6-13BB09F9304C";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "LeftBrowCtrlPos" -p "Face4CtrlPos";
	rename -uid "077FA662-4ADF-68FF-A3D4-148F8084BF37";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -1.3322676295501878e-15 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftBrowCtrlPosShape" -p "LeftBrowCtrlPos";
	rename -uid "8E1D9FE7-4B8D-1E7C-5396-CB987D3891C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "LeftBrow1CtrlPosGrp" -p "LeftBrowCtrlPos";
	rename -uid "E7C76448-4067-DA9F-A7C6-0FA5F674C0EC";
	setAttr ".s" -type "double3" 1.0000000650015843 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "LeftBrow1CtrlPos" -p "LeftBrow1CtrlPosGrp";
	rename -uid "E12808D4-4A5F-4EC9-F04F-9891AC211D1B";
	setAttr ".t" -type "double3" -1.7566288681391395 0.22049140930112987 0.61331694766171529 ;
	setAttr ".r" -type "double3" 0 15.00000093108239 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftBrow1CtrlPosShape" -p "LeftBrow1CtrlPos";
	rename -uid "0A2A3FE0-4847-57A8-BF78-14BD81C9E829";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "LeftBrow2CtrlPosGrp" -p "LeftBrowCtrlPos";
	rename -uid "50CE188D-43FB-AE59-62AA-CBB273E16C50";
	setAttr ".s" -type "double3" 1.0000000040976964 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "LeftBrow2CtrlPos" -p "LeftBrow2CtrlPosGrp";
	rename -uid "5BB14B7A-49B3-E5A7-9828-F3B659C19165";
	setAttr ".t" -type "double3" -0.2897777466992939 -1.0347278589506459e-13 0.077645713530771807 ;
	setAttr ".r" -type "double3" 0 15.000000058698461 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftBrow2CtrlPosShape" -p "LeftBrow2CtrlPos";
	rename -uid "EA67A8E1-465F-3096-7913-CD8F76564A39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "LeftBrow3CtrlPosGrp" -p "LeftBrowCtrlPos";
	rename -uid "50422DF7-49B3-D8C9-06FB-42B9B1D6DF94";
	setAttr ".s" -type "double3" 1.0000000352116769 1.0000000000000002 1 ;
createNode transform -n "LeftBrow3CtrlPos" -p "LeftBrow3CtrlPosGrp";
	rename -uid "14B6AF18-445A-5F17-2F1A-179417720F02";
	setAttr ".t" -type "double3" 0.763950328851283 -0.83627319335910189 -0.32742745236284321 ;
	setAttr ".r" -type "double3" 0 15.0000005043734 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftBrow3CtrlPosShape" -p "LeftBrow3CtrlPos";
	rename -uid "9761312C-4032-8F07-D15C-0AA1FCF35E97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "CenterBrowCtrlPosGrp" -p "FacePoserGrp";
	rename -uid "10D2F453-42FF-43C2-AB38-8E81EAA0F3E6";
createNode transform -n "CenterBrowCtrlPos" -p "CenterBrowCtrlPosGrp";
	rename -uid "313D505B-4897-3777-3B42-8EAA86DB10CB";
	setAttr ".t" -type "double3" -7.6293817092751802e-07 3 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "CenterBrowCtrlPosShape" -p "CenterBrowCtrlPos";
	rename -uid "87792501-46CE-C781-0465-FFBA92E9EC14";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "BetweenEyesJntPosGrp" -p "FacePoserGrp";
	rename -uid "C9741CB4-4ABD-FFC0-265B-49A2BDFDFF86";
createNode transform -n "BetweenEyesJntPos" -p "BetweenEyesJntPosGrp";
	rename -uid "F062A010-418D-7450-C2D3-66A27F8E440F";
	setAttr ".t" -type "double3" 0 1.5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "BetweenEyesJntPosShape" -p "BetweenEyesJntPos";
	rename -uid "C2982F0C-484E-92E9-F968-A78BFE51ED88";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "CheekCtrlPosGrp" -p "FacePoserGrp";
	rename -uid "90CA1D8B-4C7C-6DFF-2950-57836A340194";
createNode transform -n "LeftUpCheekCtrlPosGrp" -p "CheekCtrlPosGrp";
	rename -uid "31ECCAA8-44D6-2746-20B0-3098B2687825";
createNode transform -n "Face3CtrlPos" -p "LeftUpCheekCtrlPosGrp";
	rename -uid "2041AB75-433E-E45E-B63B-D5AA599B1EEC";
createNode transform -n "LeftUpCheekCtrlPos" -p "Face3CtrlPos";
	rename -uid "F03C180B-4D07-EC56-3F87-CDB7F43E2354";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -3.2118944405850356 24.227530990367647 0.0027417965441221344 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999933 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftUpCheekCtrlPosShape" -p "LeftUpCheekCtrlPos";
	rename -uid "EBEBCD04-4BDB-7248-71E4-8DAEA0F2DF3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Face6CtrlPos" -p "CheekCtrlPosGrp";
	rename -uid "18B7BC1B-4071-C5E3-E432-5CBE85F8C0D9";
createNode transform -n "RightUpCheekCtrlPosGrp" -p "Face6CtrlPos";
	rename -uid "28B2501B-4346-6541-FB00-959930034F71";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightUpCheekCtrlPos" -p "|FaceGrp|FacePoserGrp|CheekCtrlPosGrp|Face6CtrlPos|RightUpCheekCtrlPosGrp";
	rename -uid "CEA012FA-401E-BC27-22BA-9B9256DFB9C6";
	setAttr ".r" -type "double3" -3.2118944405850329 24.227530990367644 0.0027417965441251862 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode locator -n "RightUpCheekCtrlPosShape" -p "RightUpCheekCtrlPos";
	rename -uid "108BD815-41B3-3ABD-AA46-8BA5FE1B10C8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "LeftCheekCtrlPosGrp" -p "CheekCtrlPosGrp";
	rename -uid "F6053EF8-481E-827D-B104-F8A6243CC9A0";
createNode transform -n "Face2CtrlPos" -p "LeftCheekCtrlPosGrp";
	rename -uid "EFC9E984-40AA-FB42-7E07-D182EF76882C";
createNode transform -n "LeftCheekCtrlPos" -p "Face2CtrlPos";
	rename -uid "CAA716DB-4768-8159-BFFC-64AB69E75E31";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 1.4856755324237891 33.966435793869039 -0.65242334436179061 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftCheekCtrlPosShape" -p "LeftCheekCtrlPos";
	rename -uid "F5AB53EF-47BB-FE4A-6D0E-FF811534031B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Face7CtrlPos" -p "CheekCtrlPosGrp";
	rename -uid "A4398C08-48C8-B280-537A-26B7C4DB7C5A";
createNode transform -n "RightCheekCtrlPosGrp" -p "Face7CtrlPos";
	rename -uid "187BA3D0-4F0B-BEBA-AC57-B4B6138EF829";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightCheekCtrlPos" -p "|FaceGrp|FacePoserGrp|CheekCtrlPosGrp|Face7CtrlPos|RightCheekCtrlPosGrp";
	rename -uid "77FE5CB3-4CDA-1A8C-F03F-5CB1C9FAB1A6";
	setAttr ".r" -type "double3" 1.4856755324237985 33.966435793869024 -0.65242334436179039 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
createNode locator -n "RightCheekCtrlPosShape" -p "RightCheekCtrlPos";
	rename -uid "04AB8DE5-416F-989B-0055-03BBE3355593";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "MouthCtrlPosGrp" -p "FacePoserGrp";
	rename -uid "6EF0CD5C-40B3-ACEE-E542-8189E99BE906";
createNode transform -n "LeftMouthCtrlPosGrp" -p "MouthCtrlPosGrp";
	rename -uid "64F0A20F-40B6-24C6-1AB8-088658A2DDAF";
createNode transform -n "Face1CtrlPos" -p "LeftMouthCtrlPosGrp";
	rename -uid "6B58FC0A-44C8-0EA7-6824-EBB04F8C0A8B";
createNode transform -n "LeftMouthCtrlPos" -p "Face1CtrlPos";
	rename -uid "D542FEF6-4C4B-250A-89A1-16A362E96B5C";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftMouthCtrlPosShape" -p "LeftMouthCtrlPos";
	rename -uid "7C1EEC79-4F1F-2D6F-BAFC-2ABDEE93F772";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Face8CtrlPos" -p "MouthCtrlPosGrp";
	rename -uid "497A2D69-407D-F8A8-ACBD-54AB51B49DB7";
createNode transform -n "RightMouthCtrlPosGrp" -p "Face8CtrlPos";
	rename -uid "470E8707-452F-EF59-18AC-1BB995A06F8A";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightMouthCtrlPos" -p "RightMouthCtrlPosGrp";
	rename -uid "AB54465E-4F43-AE57-2D79-7891D0B95675";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 0.99999999999999978 ;
createNode locator -n "RightMouthCtrlPosShape" -p "RightMouthCtrlPos";
	rename -uid "42190C95-46BE-6C62-C05B-D4AB48F1F852";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "NoseCtrlPosGrp" -p "FacePoserGrp";
	rename -uid "872C6C04-4B78-6123-A535-BCBE15309F20";
createNode transform -n "Nose1CtrlPos" -p "NoseCtrlPosGrp";
	rename -uid "76F3A2D2-42ED-0CA2-CADC-9197C73894D6";
	setAttr ".t" -type "double3" 0 1.0107470024725183e-06 3.9648915336529468e-08 ;
	setAttr ".r" -type "double3" 47.24640919394141 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Nose1CtrlPosShape" -p "Nose1CtrlPos";
	rename -uid "5B4A007B-4E36-A8C1-C2C6-3097E4E2E19A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".lp" -type "double3" 0 -1.0587911840678754e-22 0 ;
createNode transform -n "Nose2CtrlPos" -p "Nose1CtrlPos";
	rename -uid "192F7CC6-4B25-6117-6BE7-67960472AEB8";
	setAttr ".t" -type "double3" 0 -3.5762786920745526e-07 0.63955828931572944 ;
	setAttr ".r" -type "double3" -38.60340919394141 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Nose2CtrlPosShape" -p "Nose2CtrlPos";
	rename -uid "712ADC45-43CC-8850-BFF6-058564326AF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".lp" -type "double3" 0 5.5511151231257827e-17 5.5511151231257827e-17 ;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Nose3CtrlPos" -p "Nose2CtrlPos";
	rename -uid "73596DF9-4313-C32B-8F67-37A6B217034B";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 -0.080243732127866674 0.52791848686240173 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Nose3CtrlPosShape" -p "Nose3CtrlPos";
	rename -uid "C408B329-4DDE-A153-5E26-2490A5F91CFF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Nose4CtrlPos" -p "Nose3CtrlPos";
	rename -uid "7B538A28-41BF-7CD8-8F01-2EB1AFCFE557";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 0.4943221807025574 0.075137085819643623 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Nose4CtrlPosShape" -p "Nose4CtrlPos";
	rename -uid "2BF02419-418B-C2EB-4512-F9A9C17C424A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".lp" -type "double3" 0 5.5511151231257827e-17 -2.2204460492503131e-16 ;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "LeftNoseCtrlPos" -p "Nose3CtrlPos";
	rename -uid "43B3A01C-4DBF-C6C1-DD4B-A0AE59681D6B";
	setAttr ".t" -type "double3" 0.8 -0.25151105692974307 -0.34167555991332432 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftNoseCtrlPosShape" -p "LeftNoseCtrlPos";
	rename -uid "F855CA2D-4DA0-A350-349B-06926CB660EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".lp" -type "double3" 0 0 1.1102230246251565e-16 ;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "RightNoseCtrlPosOffGrp" -p "Nose3CtrlPos";
	rename -uid "0A9FE68D-4ABB-28C2-6237-55BE18AB6EFE";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightNoseCtrlPos" -p "RightNoseCtrlPosOffGrp";
	rename -uid "81126521-4FF9-AB26-6A20-AEAF22D4DDA4";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode locator -n "RightNoseCtrlPosShape" -p "RightNoseCtrlPos";
	rename -uid "A0FB3088-43C7-DF91-7C84-30B5672A9A96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".lp" -type "double3" 0 0 1.1102230246251565e-16 ;
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "43E2B6E1-4D25-961F-95BB-5B92A03DCB00";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "12763001-43E1-C165-55B7-3D8F2096FEA8";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "D00C27E8-45D4-1206-A70D-50A1B32EC221";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode multiplyDivide -n "LeftUpCheekCtrlRvsMultMD";
	rename -uid "477BA685-447F-B4CB-B736-A3A0FF479254";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightUpCheekCtrlRvsMultMD";
	rename -uid "5662F3F6-4AA4-2F48-FA48-139D7704F530";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftCheekCtrlRvsMultMD";
	rename -uid "A6DB3B09-4DEF-F958-FA67-9EA7DAFE6A74";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightCheekCtrlRvsMultMD";
	rename -uid "5BA55952-47D8-B5A7-B9B7-3A9B985CBA10";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode remapValue -n "JawUpRM";
	rename -uid "25300161-4EEB-DB6A-1494-7C84EC74AC5C";
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 2 1 1 3;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "JawUpMD";
	rename -uid "83D5C6E5-4F2E-1900-8EF5-9F8BB1F028CF";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.51800001 1 1 ;
createNode distanceBetween -n "JawUpDB";
	rename -uid "7C1B462C-4FB1-A481-7EED-DEA4113290CB";
createNode multDoubleLinear -n "JawUpRMReverseML";
	rename -uid "56F0641B-46FC-EA16-1F57-AD81BD3E330E";
	setAttr ".i2" -1;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "B23046EC-4FFE-9BAE-259E-6B91F4DA6FD9";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "C5725FDA-4659-23C2-5242-BE9C27DCE968";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode clamp -n "LeftBrowLExpCP";
	rename -uid "CB0D2BC7-42D9-3AE8-ACE4-2DAC231056D7";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode remapValue -n "LeftBrowLAngryRM";
	rename -uid "382C07F4-4D8E-4AB8-FD6B-B789B9ED26AC";
	setAttr ".imx" 45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion141";
	rename -uid "B1B40130-4E30-0611-C1B6-EC8740C6A09E";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "LeftBrowLSadRM";
	rename -uid "A18F85FD-4093-1CF9-F6E2-E9BB5FF441E3";
	setAttr ".imx" -45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion142";
	rename -uid "76B4DE2C-4B02-D3C2-1E00-ED8B0A5EEF5D";
	setAttr ".cf" 57.295779513082323;
createNode clamp -n "RightBrowLExpCP";
	rename -uid "F6975790-4DAE-9507-1B97-23840E0BF04F";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode remapValue -n "RightBrowLAngryRM";
	rename -uid "DB514207-4C52-5D36-9834-D39C16DD29BB";
	setAttr ".imx" 45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion145";
	rename -uid "2CDB0585-4910-0E56-C83E-80902B163548";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "RightBrowLSadRM";
	rename -uid "53A19B26-41D7-5B84-B3B6-6E9121B124B5";
	setAttr ".imx" -45;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion146";
	rename -uid "B966409D-4562-D086-76AD-AD9E866057BF";
	setAttr ".cf" 57.295779513082323;
createNode clamp -n "LeftBrowL1UpDownCP";
	rename -uid "97AA6C6A-4ECF-912D-FF83-8EA59300EFCC";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1UpAL";
	rename -uid "F10C28DD-4E3B-2836-84A7-DEBA248B1FAC";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrowUpDownSR";
	rename -uid "D8CCE096-4AF9-15EF-7BEC-ABA6BC70B8F4";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "LeftEyeBrow1UpDownSR";
	rename -uid "1B523BC5-4D70-86E9-C29C-09ABA848ACBD";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1DownAL";
	rename -uid "F321DA1F-4E74-DBD5-844E-B2A9A165104F";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL2UpDownCP";
	rename -uid "EB14F695-4939-A696-407F-AAB07793325C";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2UpAL";
	rename -uid "C0E83B40-4520-BA41-E710-E09ED59543C6";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow2UpDownSR";
	rename -uid "1611312F-4966-DF29-5CAF-6EB2343B0AAF";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2DownAL";
	rename -uid "D9EA2228-445C-9322-82D4-1099E23E8BEF";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL3UpDownCP";
	rename -uid "0B38B30D-4AB9-3833-9D4D-FDBF20A03D9B";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3UpAL";
	rename -uid "E31723C4-4151-6D11-4D6D-FF9EE191B8D4";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow3UpDownSR";
	rename -uid "7FFAB51B-4E70-B3B2-648B-CBAA5B931041";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3DownAL";
	rename -uid "EA2E7CE6-4329-6E64-9D89-B2B3F4F15F8D";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL1UpDownCP";
	rename -uid "164A6950-4C43-B6C6-809C-719E0DD4EDA7";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow1UpAL";
	rename -uid "D281C54A-496D-B511-46FD-00B5F8AE2101";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrowUpDownSR";
	rename -uid "52840B43-402E-24DF-73BB-198617B8332E";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "RightEyeBrow1UpDownSR";
	rename -uid "7B462129-446F-42D3-AC78-D9A560A55460";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow1DownAL";
	rename -uid "68101A6B-4187-E4F3-F33B-ACAAA4D3EB66";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL2UpDownCP";
	rename -uid "034DB46E-4972-5CFD-BF81-B598861B6F76";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow2UpAL";
	rename -uid "77E475A0-4384-424E-EAB3-B49A0D111E1A";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow2UpDownSR";
	rename -uid "946EF9BB-4359-9FF6-5C55-EBB829C78CAD";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow2DownAL";
	rename -uid "CFE8E4D6-48AA-5194-7A6A-E281A47ED228";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL3UpDownCP";
	rename -uid "EB3590CB-45CA-E52D-892A-62B754081D5C";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow3UpAL";
	rename -uid "649E9790-49BF-EEA4-C5BC-448FCD6BC73F";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow3UpDownSR";
	rename -uid "EEC5BF50-44B7-CF66-DA7A-B6B3087B9BD8";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow3DownAL";
	rename -uid "4011B7FB-4F29-69D3-52C0-DBBF63AA3576";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL1InOutCP";
	rename -uid "412934A4-4D43-8CB4-0E8F-49B6CBB8418D";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1InAL";
	rename -uid "C7160B44-495C-13CF-96D4-2A8E79D1BD00";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrowInOutSR";
	rename -uid "9B059B07-4876-6E31-683C-D484BA0CADF5";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "LeftEyeBrow1InOutSR";
	rename -uid "C5576FCF-4418-5914-06C3-D483DC4AEDF5";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow1OutAL";
	rename -uid "85FCD73C-4C85-A95B-AB8F-A29E6DD5B49C";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL2InOutCP";
	rename -uid "77178F49-4332-2EBC-1769-C9A6C5F10DC7";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2InAL";
	rename -uid "625E9377-45A1-E83A-DFFA-2F803F09A2B2";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow2InOutSR";
	rename -uid "2D1B066A-44E8-107E-DAEA-C98FDB62803E";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow2OutAL";
	rename -uid "20FEBB7E-44E9-1DB7-D1BE-D0980D886901";
	setAttr ".ihi" 2;
createNode clamp -n "LeftBrowL3InOutCP";
	rename -uid "DEB6FA3C-4F14-C311-AB8C-0D8F9B6A54D2";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3InAL";
	rename -uid "60E41E30-4CDD-8CC2-5812-7688A9D10DD0";
	setAttr ".ihi" 2;
createNode setRange -n "LeftEyeBrow3InOutSR";
	rename -uid "CB6DD863-4F94-0232-172B-159B2EA288B4";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "LeftEyeBrow3OutAL";
	rename -uid "DB147421-4D42-FCF6-179D-FE8A5BCDBE62";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL1InOutCP";
	rename -uid "9449EB97-4C00-56C1-8540-3C8D7CDE97B7";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow1InAL";
	rename -uid "8E29F48A-45EB-9FBE-CFC1-899390A94584";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrowInOutSR";
	rename -uid "946E61BD-4B6D-F722-6D06-3CA5DDC79F81";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "RightEyeBrow1InOutSR";
	rename -uid "9FFC86D9-4694-1E36-9539-22991AE817F3";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow1OutAL";
	rename -uid "7D9DDD68-4226-8DC7-FB77-81B89FA69D16";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL2InOutCP";
	rename -uid "6855499F-4E92-6EB0-9A1D-158E1D14A782";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow2InAL";
	rename -uid "B362F7C0-40EF-8877-DEAF-CE8A09F804D3";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow2InOutSR";
	rename -uid "99081371-4EB1-0709-20E1-7FAA1699B9E9";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow2OutAL";
	rename -uid "35AC9E94-478C-AAD2-1DFA-099572A741F1";
	setAttr ".ihi" 2;
createNode clamp -n "RightBrowL3InOutCP";
	rename -uid "436E9D4D-4D72-08AD-ECD7-CBA940FB6D4F";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode addDoubleLinear -n "RightEyeBrow3InAL";
	rename -uid "2C0FD613-42FB-7469-5B06-06AD9CCCC6D1";
	setAttr ".ihi" 2;
createNode setRange -n "RightEyeBrow3InOutSR";
	rename -uid "77D82B72-4354-7BDB-2722-B8A0DDB9407A";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "RightEyeBrow3OutAL";
	rename -uid "5CF43B80-411D-EC31-7445-538947458AD2";
	setAttr ".ihi" 2;
createNode blendTwoAttr -n "RightCheekUpBlendBA";
	rename -uid "03A92886-4995-0519-F7EF-C9B3A2006ADF";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "RightCheekUpML";
	rename -uid "9A76968E-4C1C-6AEC-B1D0-6FB5314EC637";
	setAttr ".i2" 0.2;
createNode remapValue -n "RightCheekUpBlendRM";
	rename -uid "23CE66B3-43A7-E41C-AE5F-53982A77E6FF";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "RightCheekUpBlendML";
	rename -uid "A61F4B92-4300-38CF-152F-FB8B5549D21E";
	setAttr ".i2" 0.2;
createNode blendTwoAttr -n "LeftCheekUpBlendBA";
	rename -uid "61F65AF3-4936-415D-B6F8-2693EAB6DBD2";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "LeftCheekUpML";
	rename -uid "EAB3BCA3-42AF-B97A-17D1-9D9B6AD3918F";
	setAttr ".i2" 0.2;
createNode remapValue -n "LeftCheekUpBlendRM";
	rename -uid "FDA03FF2-4780-7969-8792-A68AA87D452B";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "LeftCheekUpBlendML";
	rename -uid "29D83FEE-4A33-7E09-40C8-07B7486E64D6";
	setAttr ".i2" 0.2;
createNode blendTwoAttr -n "LeftCheekBlendBA";
	rename -uid "AFA98FE0-4107-6BA7-5F6B-3989A58C488E";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "LeftCheekML";
	rename -uid "8F9C44F2-4CF1-9ED6-9941-EB9304615464";
	setAttr ".i2" 0.2;
createNode remapValue -n "LeftCheekBlendRM";
	rename -uid "89B6BF36-4191-FC96-CF30-BC943A08F43E";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "LeftCheekBlendML";
	rename -uid "B66D25A3-42D7-D80D-C4E8-B78F9E9A10C5";
	setAttr ".i2" 0.2;
createNode blendTwoAttr -n "RightCheekBlendBA";
	rename -uid "DE6F48D2-4303-6653-7DA5-D59836A5081E";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode multDoubleLinear -n "RightCheekML";
	rename -uid "C0E90F5C-45F1-2A31-5D0B-FA8714702B27";
	setAttr ".i2" 0.2;
createNode remapValue -n "RightCheekBlendRM";
	rename -uid "5F8D3FF3-4276-B716-11AB-50945A5F1BFC";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multDoubleLinear -n "RightCheekBlendML";
	rename -uid "D478B1A0-46C4-5A21-44A6-1B9E6C9106D8";
	setAttr ".i2" 0.2;
createNode clamp -n "LeftMouthUpDownCP";
	rename -uid "9BD3FF4E-4354-57C6-9591-49868EEE2C4C";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "LeftMouthUpDownSR";
	rename -uid "4C186D40-4426-6913-BC33-F295067395FE";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode clamp -n "RightMouthUpDownCP";
	rename -uid "685AAB21-4A59-25F1-4D08-638DAFAD47CC";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "RightMouthUpDownSR";
	rename -uid "95CF64A9-48F7-D829-5C9E-01B03C1928BF";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode clamp -n "LeftMouthInOutCP";
	rename -uid "23DA77AF-4525-6DE7-8297-9090F4306CB4";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "LeftMouthInOutSR";
	rename -uid "238D7788-45EF-EAE8-8AA5-B0BAD37967A3";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode clamp -n "RightMouthInOutCP";
	rename -uid "03248429-4AFF-2DE2-7745-A38643ECA9D9";
	setAttr ".mx" -type "float3" 2 2 0 ;
createNode setRange -n "RightMouthInOutSR";
	rename -uid "222F910B-43CA-95E5-88E3-55B8ABD96105";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".on" -type "float3" 0 -1 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode multDoubleLinear -n "LeftBrowSqueezeML";
	rename -uid "033C4C90-4D4F-AE6F-3DCD-E29FD54608BE";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightBrowSqueezeML";
	rename -uid "8C11A939-43DC-F422-E980-7D85E6020A49";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftLidUpBlinkML";
	rename -uid "ACFC0B70-450E-8A5A-EF67-35AC1D063D52";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftLidDownBlinkML";
	rename -uid "DB2CD25B-49F4-9634-591C-03A1070AB914";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightLidUpBlinkML";
	rename -uid "BC7DCCEB-435F-1217-BC68-1A9818DB1860";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightLidDownBlinkML";
	rename -uid "20DDD470-4A3F-AFAD-328C-08BF5ED9E225";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "OBSML";
	rename -uid "49BBAD08-40FC-F534-5A92-D2AE8C098646";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "BigABSML";
	rename -uid "E9F4BD8B-4141-3A0E-3E55-B28AB68C16B9";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "EBSML";
	rename -uid "372C1FB5-470E-F74B-F866-A49998825E9D";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "IBSML";
	rename -uid "9929F294-4BA9-D828-FF09-AF95B7DEAE0A";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "ABSML";
	rename -uid "CD9F95E1-4B78-CB33-3588-209C91239EE8";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "UBSML";
	rename -uid "F66E4FA3-4F01-59CC-3431-789EF866E0A9";
	setAttr ".i2" 0.1;
createNode decomposeMatrix -n "NoseJntGrpDM";
	rename -uid "926271A0-4DCB-5D47-89AF-F09FF0E89285";
createNode multMatrix -n "NoseJntGrpMM";
	rename -uid "4B5FD572-4F7A-5597-8041-F49CECEDBD90";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.67884676521113796 0.73427996660835992 0
		 0 -0.73427996660835992 0.67884676521113796 0 -1.6358613622221628e-08 13.227116949569952 25.338184425355553 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 -1.0339757656912846e-25 0.67884676521113774 -0.73427996660835992 0
		 -1.0339757656912846e-25 0.73427996660836015 0.67884676521113807 0 1.6358613622221632e-08 -27.5845067382492 -7.4883375712230817 1;
createNode decomposeMatrix -n "Nose1JntDM";
	rename -uid "8D83C27B-4902-7E25-9DFB-85BBBC28C5C4";
createNode multMatrix -n "Nose1JntMM";
	rename -uid "F75D35DF-4096-D6C4-4012-E2B3DC4BC3FB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.67884676521113796 0.73427996660835992 0
		 0 -0.73427996660835992 0.67884676521113796 0 -1.6358613622221628e-08 13.227116949569952 25.338184425355553 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 -1.0339757656912846e-25 0.67884676521113785 -0.73427996660835992 0
		 -1.0339757656912846e-25 0.73427996660835992 0.67884676521113796 0 1.6358613622221632e-08 -27.584506768051515 -7.4883375414207567 1;
createNode quatToEuler -n "Nose1JntQE";
	rename -uid "220FE6B2-4241-2573-5813-F6B1BC13DC82";
createNode quatProd -n "Nose1JntQP";
	rename -uid "C3120F6E-48F3-0FAC-B191-B484E6E73958";
createNode quatInvert -n "Nose1JntQI";
	rename -uid "DA935783-4890-BCE2-7DC9-8DBBFA87F422";
createNode eulerToQuat -n "Nose1JntEQ";
	rename -uid "FF2D7EC9-41A1-4E38-E73F-87B03DCC6E7F";
createNode decomposeMatrix -n "Nose2JntDM";
	rename -uid "C7281B42-47E5-F2C2-A8DC-049E66EBF1DB";
createNode multMatrix -n "Nose2JntMM";
	rename -uid "5FA3D35E-4728-4323-9761-89B08ED17E53";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.98864436140511147 0.15027417163930185 0
		 0 -0.15027417163930185 0.98864436140511147 0 -1.6358613622221628e-08 12.75750237284608 25.772346258446984 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 1.1632227364026952e-25 0.98864436140511236 -0.15027417163930193 0
		 -1.0339757656912846e-25 0.1502741716393019 0.98864436140511247 0 1.6358613622221632e-08 -16.485550771715999 -23.562561707327887 1;
createNode quatToEuler -n "Nose2JntQE";
	rename -uid "268E72C5-4EA5-14C7-CD2D-D7BEA5D78D98";
createNode quatProd -n "Nose2JntQP";
	rename -uid "C5D644A8-4C7A-E670-9135-FF8EB16B7425";
createNode quatInvert -n "Nose2JntQI";
	rename -uid "602EC8A1-46AF-D692-A28E-F09A6806688B";
createNode eulerToQuat -n "Nose2JntEQ";
	rename -uid "DD38232E-41F6-67C0-F9E5-C7B24F29FE0E";
createNode decomposeMatrix -n "Nose3JntDM";
	rename -uid "4CB9116A-4B97-38DD-01F6-609A1DE911C4";
createNode multMatrix -n "Nose3JntMM";
	rename -uid "CB8825EE-4645-CD4C-8B93-6382DE4ABFBD";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.98864436140511325 0.15027417163930212 0
		 0 -0.15027417163930207 0.98864436140511303 0 -1.6358613622221628e-08 12.677258640718211 26.300264745309381 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 1.1632227364026952e-25 0.98864436140511158 -0.15027417163930162 0
		 0 0.15027417163930179 0.98864436140511147 0 1.6358613622221628e-08 -16.485550771715989 -24.096543903020656 1;
createNode quatToEuler -n "Nose3JntQE";
	rename -uid "D06F8107-4227-F747-98D3-FA89F68155F4";
createNode quatProd -n "Nose3JntQP";
	rename -uid "D7CEA0C7-4EBB-CA70-6F2E-6B8DF09FEA6C";
createNode quatInvert -n "Nose3JntQI";
	rename -uid "F9CC999A-427C-2BFA-5870-BAA458739386";
createNode eulerToQuat -n "Nose3JntEQ";
	rename -uid "D222F1D7-4D5E-BF46-392E-3AAA2AA34399";
createNode decomposeMatrix -n "Nose4JntDM";
	rename -uid "22AC398D-42E8-FA44-20AE-88B326C2DE35";
createNode multMatrix -n "Nose4JntMM";
	rename -uid "77051AB8-409D-38EE-119E-28AF474F4A8F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.9886443614051118 0.15027417163930187 0
		 0 -0.15027417163930187 0.98864436140511158 0 -1.6358613622221628e-08 13.148059074360853 26.371826520134565 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 -9.0472879497987402e-26 0.98864436140511058 -0.15027417163930173 -8.6736173798840355e-19
		 1.0339757656912846e-25 0.15027417163930157 0.98864436140511047 6.9388939039072284e-18
		 1.6358613622221625e-08 -16.96175885221674 -24.096543903020621 0.99999999999999989;
createNode quatToEuler -n "Nose4JntQE";
	rename -uid "D95E242A-47A9-F7FE-E3C7-70AE26A2AD32";
createNode quatProd -n "Nose4JntQP";
	rename -uid "C0AF01A2-43BB-F4E8-F612-A881467D6987";
createNode quatInvert -n "Nose4JntQI";
	rename -uid "30CB5B33-42A3-8C26-D45C-99B6CCF04C77";
createNode eulerToQuat -n "Nose4JntEQ";
	rename -uid "A511F4D7-4265-6A6F-1543-3BACC570E857";
createNode decomposeMatrix -n "LeftNoseJntDM";
	rename -uid "FA7BBC66-44F0-C19A-08F9-63B1CEF9213E";
createNode multMatrix -n "LeftNoseJntMM";
	rename -uid "76137C7F-4A75-A540-704B-84B2F961C96B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 0.99125872559168349 0.13193232711641809 0
		 0 -0.13193232711641806 0.99125872559168327 0 0.88586495006934407 12.416185060941334 25.952454272578123 1;
	setAttr ".i[1]" -type "matrix" 1 0 0 0 6.9388939039072284e-18 0.99125872559168215 -0.13193232711641764 -8.6736173798840355e-19
		 6.9388939039072284e-18 0.13193232711641789 0.99125872559168227 6.9388939039072284e-18
		 -0.88586495006934418 -15.731619466782844 -24.08750055921411 0.99999999999999989;
createNode quatToEuler -n "LeftNoseJntQE";
	rename -uid "BC83FB44-482A-890D-B540-19AC25008A64";
createNode quatProd -n "LeftNoseJntQP";
	rename -uid "1988D477-4559-BC81-3AB5-4E91FC609BCF";
createNode quatInvert -n "LeftNoseJntQI";
	rename -uid "E4C6659E-4C2D-E00D-FF40-858BF616FB68";
createNode eulerToQuat -n "LeftNoseJntEQ";
	rename -uid "D7E03171-40C4-5B9D-55F2-739CB11DCED0";
createNode decomposeMatrix -n "RightNoseJntDM";
	rename -uid "9005C68B-4518-C24C-6C83-E193425DCAFA";
createNode multMatrix -n "RightNoseJntMM";
	rename -uid "3F8A8479-468D-FAF2-384E-558E90D38288";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 1.8403278329259109e-17 -1.2107401526898496e-16 0
		 2.2688336356044066e-18 0.9912587255916826 0.13193232711641878 0 -1.2244366141435222e-16 -0.13193232711641878 0.99125872559168249 0
		 -0.88586501635861359 12.416182361396318 25.952458394670611 1;
	setAttr ".i[1]" -type "matrix" -1 2.2688336356043449e-18 -1.2244366141435227e-16 0
		 3.4694469519536142e-18 0.99125872559168171 -0.13193232711641892 0 -1.1796119636642288e-16 0.13193232711641911 0.99125872559168215 0
		 -0.88586501635861059 -15.731617334672572 -24.087505001431492 1;
createNode quatToEuler -n "RightNoseJntQE";
	rename -uid "DD152F00-450A-1F21-7C53-85A8D3119495";
createNode quatProd -n "RightNoseJntQP";
	rename -uid "A8404F6C-4A17-8557-31DD-7DACDA759E2B";
createNode quatInvert -n "RightNoseJntQI";
	rename -uid "8656E03B-4E44-E100-805A-B0A9614BD204";
createNode eulerToQuat -n "RightNoseJntEQ";
	rename -uid "AF06D29F-400C-D6C6-6745-64AE4EB1C2AA";
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC4";
	rename -uid "23EF65E8-4562-B3BA-7B71-A09D2222B759";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC3";
	rename -uid "5E6B7804-4FDB-4C5E-BC16-39AB90D50AA2";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC2";
	rename -uid "B1DA996D-4119-E3CD-A763-CD95E1534BFB";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC5";
	rename -uid "4102BD4E-4DFF-236E-F658-558F5B837CE2";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC1";
	rename -uid "84D86C61-41B4-5375-DF52-669FDBA31FE5";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC6";
	rename -uid "5A49A8CD-4185-21B1-4345-C7904D4457FD";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC";
	rename -uid "B6C20571-4829-D182-941F-10BE0D667A69";
createNode pointOnCurveInfo -n "LeftMouthCtrlPosCrvPC7";
	rename -uid "D85C4C9E-4CE3-4B87-DB22-B287B3AE9EA8";
	setAttr ".pr" 7;
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 102 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "CenterBrowCtrlPos.r" "CenterBrowCtrlOffGrp.r";
connectAttr "CenterBrowCtrlPos.t" "CenterBrowCtrlOffGrp.t";
connectAttr "Face4CtrlPos.t" "LeftBrowCtrlGrpOffGrp.t";
connectAttr "LeftBrowCtrlPos.t" "LeftBrowCtrlGrp.t";
connectAttr "LeftBrowCtrlPos.r" "LeftBrowCtrlGrp.r";
connectAttr "makeNurbCircle1.oc" "LeftBrowCtrlShape.cr";
connectAttr "LeftBrow1CtrlPos.t" "LeftBrow1CtrlGrp.t";
connectAttr "LeftBrow1CtrlPos.r" "LeftBrow1CtrlGrp.r";
connectAttr "makeNurbCircle2.oc" "LeftBrow1CtrlShape.cr";
connectAttr "LeftBrow2CtrlPos.t" "LeftBrow2CtrlGrp.t";
connectAttr "LeftBrow2CtrlPos.r" "LeftBrow2CtrlGrp.r";
connectAttr "LeftBrow3CtrlPos.t" "LeftBrow3CtrlGrp.t";
connectAttr "LeftBrow3CtrlPos.r" "LeftBrow3CtrlGrp.r";
connectAttr "Face5CtrlPos.t" "RightBrowCtrlOffGrpOffGrp.t";
connectAttr "RightBrowCtrlPos.t" "RightBrowCtrlGrp.t";
connectAttr "RightBrowCtrlPos.r" "RightBrowCtrlGrp.r";
connectAttr "RightBrow1CtrlPos.t" "RightBrow1CtrlGrp.t";
connectAttr "RightBrow1CtrlPos.r" "RightBrow1CtrlGrp.r";
connectAttr "RightBrow2CtrlPos.t" "RightBrow2CtrlGrp.t";
connectAttr "RightBrow2CtrlPos.r" "RightBrow2CtrlGrp.r";
connectAttr "RightBrow3CtrlPos.t" "RightBrow3CtrlGrp.t";
connectAttr "RightBrow3CtrlPos.r" "RightBrow3CtrlGrp.r";
connectAttr "Face8CtrlPos.t" "RightMouthCtrlOffGrp.t";
connectAttr "RightMouthCtrlPos.t" "RightMouthCtrlGrp.t";
connectAttr "RightMouthCtrlPos.r" "RightMouthCtrlGrp.r";
connectAttr "Face1CtrlPos.t" "LeftMouthCtrlGrpOffGrp.t";
connectAttr "LeftMouthCtrlPos.t" "LeftMouthCtrlGrp.t";
connectAttr "LeftMouthCtrlPos.r" "LeftMouthCtrlGrp.r";
connectAttr "makeNurbCircle3.oc" "LeftMouthCtrlShape.cr";
connectAttr "LeftUpCheekCtrlPos.r" "LeftUpCheekCtrlGrp.r";
connectAttr "Face3CtrlPos.t" "LeftUpCheekCtrlGrp.t";
connectAttr "LeftUpCheekCtrlRvsMultMD.o" "LeftUpCheekCtrlRvs.t";
connectAttr "Face6CtrlPos.t" "RightUpCheekCtrlOffGrp.t";
connectAttr "RightUpCheekCtrlPos.r" "|FaceGrp|FaceCtrlGrp|CheekCtrlGrp|RightUpCheekCtrlOffGrp|RightUpCheekCtrlGrp|RightUpCheekCtrlPosGrp.r"
		;
connectAttr "RightUpCheekCtrlRvsMultMD.o" "RightUpCheekCtrlRvs.t";
connectAttr "LeftCheekCtrlPos.r" "LeftCheekCtrlGrp.r";
connectAttr "Face2CtrlPos.t" "LeftCheekCtrlGrp.t";
connectAttr "LeftCheekCtrlRvsMultMD.o" "LeftCheekCtrlRvs.t";
connectAttr "Face7CtrlPos.t" "RightCheekCtrlOffGrp.t";
connectAttr "RightCheekCtrlPos.r" "|FaceGrp|FaceCtrlGrp|CheekCtrlGrp|RightCheekCtrlOffGrp|RightCheekCtrlGrp|RightCheekCtrlPosGrp.r"
		;
connectAttr "RightCheekCtrlRvsMultMD.o" "RightCheekCtrlRvs.t";
connectAttr "BetweenEyesJntPos.t" "BetweenEyesCtrlOffGrp.t";
connectAttr "BetweenEyesJntPos.r" "BetweenEyesCtrlOffGrp.r";
connectAttr "Nose1CtrlPos.t" "Nose1CtrlGrp.t";
connectAttr "Nose1CtrlPos.r" "Nose1CtrlGrp.r";
connectAttr "JawUpRM.ov" "Nose1CtrlCnt.ty";
connectAttr "JawUpRMReverseML.o" "Nose1CtrlCnt.tz";
connectAttr "makeNurbCircle16.oc" "Nose1CtrlShape.cr";
connectAttr "Nose2CtrlPos.t" "Nose2CtrlConstGrp.t";
connectAttr "Nose2CtrlPos.r" "Nose2CtrlConstGrp.r";
connectAttr "Nose3CtrlPos.t" "Nose3CtrlGrp.t";
connectAttr "Nose3CtrlPos.r" "Nose3CtrlGrp.r";
connectAttr "Nose4CtrlPos.t" "Nose4CtrlGrp.t";
connectAttr "Nose4CtrlPos.r" "Nose4CtrlGrp.r";
connectAttr "makeNurbCircle17.oc" "Nose4CtrlShape.cr";
connectAttr "LeftNoseCtrlPos.t" "LeftNoseCtrlGrp.t";
connectAttr "LeftNoseCtrlPos.r" "LeftNoseCtrlGrp.r";
connectAttr "RightNoseCtrlPos.t" "RightNoseCtrlOffGrp.t";
connectAttr "RightNoseCtrlPos.r" "RightNoseCtrlOffGrp.r";
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
connectAttr "CenterBrowCtrlPos.t" "CenterBrowJntPosGrp.t";
connectAttr "CenterBrowCtrlPos.r" "CenterBrowJntPosGrp.r";
connectAttr "CenterBrowCtrl.r" "CenterBrowJnt.r";
connectAttr "CenterBrowCtrl.t" "CenterBrowJnt.t";
connectAttr "CenterBrowCtrl.s" "CenterBrowJnt.s";
connectAttr "Face5CtrlPos.t" "RightBrowJntPosGrp.t";
connectAttr "RightBrowCtrlPos.t" "RightBrowJntPosCntGrp.t";
connectAttr "RightBrowCtrlPos.r" "RightBrowJntPosCntGrp.r";
connectAttr "RightBrow1CtrlPos.r" "RightBrow1JntPosGrp.r";
connectAttr "RightBrow1CtrlPos.t" "RightBrow1JntPosGrp.t";
connectAttr "RightBrowCtrl.s" "RightBrow1JntCnt.s";
connectAttr "RightBrowCtrl.Z" "RightBrow1JntCnt.tz";
connectAttr "RightBrow1Ctrl.r" "RightBrow1Jnt.r";
connectAttr "RightBrow1Ctrl.s" "RightBrow1Jnt.s";
connectAttr "RightBrow1Ctrl.Z" "RightBrow1Jnt.tz";
connectAttr "RightBrow2CtrlPos.r" "RightBrow2JntPosGrp.r";
connectAttr "RightBrow2CtrlPos.t" "RightBrow2JntPosGrp.t";
connectAttr "RightBrowCtrl.s" "RightBrow2JntCnt.s";
connectAttr "RightBrowCtrl.Z" "RightBrow2JntCnt.tz";
connectAttr "RightBrow2Ctrl.r" "RightBrow2Jnt.r";
connectAttr "RightBrow2Ctrl.s" "RightBrow2Jnt.s";
connectAttr "RightBrow2Ctrl.Z" "RightBrow2Jnt.tz";
connectAttr "RightBrow3CtrlPos.r" "RightBrow3JntPosGrp.r";
connectAttr "RightBrow3CtrlPos.t" "RightBrow3JntPosGrp.t";
connectAttr "RightBrowCtrl.s" "RightBrow3JntCnt.s";
connectAttr "RightBrowCtrl.Z" "RightBrow3JntCnt.tz";
connectAttr "RightBrow3Ctrl.r" "RightBrow3Jnt.r";
connectAttr "RightBrow3Ctrl.s" "RightBrow3Jnt.s";
connectAttr "RightBrow3Ctrl.Z" "RightBrow3Jnt.tz";
connectAttr "Face4CtrlPos.t" "LeftBrowJntPosGrpOffGrp.t";
connectAttr "LeftBrowCtrlPos.t" "LeftBrowJntPosGrp.t";
connectAttr "LeftBrowCtrlPos.r" "LeftBrowJntPosGrp.r";
connectAttr "LeftBrow1CtrlPos.r" "LeftBrow1JntPosGrp.r";
connectAttr "LeftBrow1CtrlPos.t" "LeftBrow1JntPosGrp.t";
connectAttr "LeftBrowCtrl.s" "LeftBrow1JntCnt.s";
connectAttr "LeftBrowCtrl.Z" "LeftBrow1JntCnt.tz";
connectAttr "LeftBrow1Ctrl.r" "LeftBrow1Jnt.r";
connectAttr "LeftBrow1Ctrl.s" "LeftBrow1Jnt.s";
connectAttr "LeftBrow1Ctrl.Z" "LeftBrow1Jnt.tz";
connectAttr "LeftBrow2CtrlPos.r" "LeftBrow2JntPosGrp.r";
connectAttr "LeftBrow2CtrlPos.t" "LeftBrow2JntPosGrp.t";
connectAttr "LeftBrowCtrl.s" "LeftBrow2JntCnt.s";
connectAttr "LeftBrowCtrl.Z" "LeftBrow2JntCnt.tz";
connectAttr "LeftBrow2Ctrl.r" "LeftBrow2Jnt.r";
connectAttr "LeftBrow2Ctrl.s" "LeftBrow2Jnt.s";
connectAttr "LeftBrow2Ctrl.Z" "LeftBrow2Jnt.tz";
connectAttr "LeftBrow3CtrlPos.r" "LeftBrow3JntPosGrp.r";
connectAttr "LeftBrow3CtrlPos.t" "LeftBrow3JntPosGrp.t";
connectAttr "LeftBrowCtrl.s" "LeftBrow3JntCnt.s";
connectAttr "LeftBrowCtrl.Z" "LeftBrow3JntCnt.tz";
connectAttr "LeftBrow3Ctrl.r" "LeftBrow3Jnt.r";
connectAttr "LeftBrow3Ctrl.s" "LeftBrow3Jnt.s";
connectAttr "LeftBrow3Ctrl.Z" "LeftBrow3Jnt.tz";
connectAttr "BetweenEyesJntPos.r" "BetweenEyesJntOffGrp.r";
connectAttr "BetweenEyesJntPos.t" "BetweenEyesJntOffGrp.t";
connectAttr "BetweenEyesCtrl.r" "BetweenEyesJnt.r";
connectAttr "BetweenEyesCtrl.t" "BetweenEyesJnt.t";
connectAttr "BetweenEyesCtrl.s" "BetweenEyesJnt.s";
connectAttr "Face2CtrlPos.t" "LeftCheekJntGrpOffGrp.t";
connectAttr "LeftCheekCtrlPos.t" "LeftCheekJntGrp.t";
connectAttr "LeftCheekCtrlPos.r" "LeftCheekJntGrp.r";
connectAttr "LeftCheekCtrl.t" "LeftCheekJnt.t";
connectAttr "LeftCheekCtrl.r" "LeftCheekJnt.r";
connectAttr "LeftCheekCtrl.s" "LeftCheekJnt.s";
connectAttr "Face3CtrlPos.t" "LeftUpCheekJntGrpOffGrp.t";
connectAttr "LeftUpCheekCtrlPos.t" "LeftUpCheekJntGrp.t";
connectAttr "LeftUpCheekCtrlPos.r" "LeftUpCheekJntGrp.r";
connectAttr "LeftUpCheekCtrl.t" "LeftUpCheekJnt.t";
connectAttr "LeftUpCheekCtrl.r" "LeftUpCheekJnt.r";
connectAttr "LeftUpCheekCtrl.s" "LeftUpCheekJnt.s";
connectAttr "Face7CtrlPos.t" "RightCheekGrp.t";
connectAttr "RightCheekCtrlPos.r" "RightCheekPosCntGrp.r";
connectAttr "RightCheekCtrlPos.t" "RightCheekPosCntGrp.t";
connectAttr "RightCheekCtrl.t" "RightCheekJnt.t";
connectAttr "RightCheekCtrl.r" "RightCheekJnt.r";
connectAttr "RightCheekCtrl.s" "RightCheekJnt.s";
connectAttr "Face6CtrlPos.t" "RightUpCheekJntGrp.t";
connectAttr "RightUpCheekCtrlPos.r" "RightUpCheekJntPosCntGrp.r";
connectAttr "RightUpCheekCtrlPos.t" "RightUpCheekJntPosCntGrp.t";
connectAttr "RightUpCheekCtrl.t" "RightUpCheekJnt.t";
connectAttr "RightUpCheekCtrl.r" "RightUpCheekJnt.r";
connectAttr "RightUpCheekCtrl.s" "RightUpCheekJnt.s";
connectAttr "LeftMouthCtrlPosCrvPC4.p" "Face5CtrlPos.t";
connectAttr "LeftBrow1CtrlPos.t" "RightBrow1CtrlPos.t";
connectAttr "LeftBrow1CtrlPos.r" "RightBrow1CtrlPos.r";
connectAttr "LeftBrow2CtrlPos.t" "RightBrow2CtrlPos.t";
connectAttr "LeftBrow2CtrlPos.r" "RightBrow2CtrlPos.r";
connectAttr "LeftBrow3CtrlPos.t" "RightBrow3CtrlPos.t";
connectAttr "LeftBrow3CtrlPos.r" "RightBrow3CtrlPos.r";
connectAttr "LeftMouthCtrlPosCrvPC3.p" "Face4CtrlPos.t";
connectAttr "LeftMouthCtrlPosCrvPC2.p" "Face3CtrlPos.t";
connectAttr "LeftMouthCtrlPosCrvPC5.p" "Face6CtrlPos.t";
connectAttr "LeftMouthCtrlPosCrvPC1.p" "Face2CtrlPos.t";
connectAttr "LeftMouthCtrlPosCrvPC6.p" "Face7CtrlPos.t";
connectAttr "LeftMouthCtrlPosCrvPC.p" "Face1CtrlPos.t";
connectAttr "LeftMouthCtrlPosCrvPC7.p" "Face8CtrlPos.t";
connectAttr "LeftNoseCtrlPos.t" "RightNoseCtrlPos.t";
connectAttr "LeftNoseCtrlPos.r" "RightNoseCtrlPos.r";
connectAttr "LeftUpCheekCtrl.t" "LeftUpCheekCtrlRvsMultMD.i1";
connectAttr "RightUpCheekCtrl.t" "RightUpCheekCtrlRvsMultMD.i1";
connectAttr "LeftCheekCtrl.t" "LeftCheekCtrlRvsMultMD.i1";
connectAttr "RightCheekCtrl.t" "RightCheekCtrlRvsMultMD.i1";
connectAttr "JawUpMD.ox" "JawUpRM.i";
connectAttr "Nose1Ctrl.UpBlend" "JawUpRM.omn";
connectAttr "JawUpDB.d" "JawUpMD.i1x";
connectAttr "NoseUpJawUpPosShape.wp" "JawUpDB.p1";
connectAttr "NoseUpJawEndPosShape.wp" "JawUpDB.p2";
connectAttr "JawUpRM.ov" "JawUpRMReverseML.i1";
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
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC4.ic";
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC3.ic";
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC2.ic";
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC5.ic";
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC1.ic";
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC6.ic";
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC.ic";
connectAttr "FaceCtrlPosCrvShape.ws" "LeftMouthCtrlPosCrvPC7.ic";
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
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
// End of SealFaceCtrls03.ma
