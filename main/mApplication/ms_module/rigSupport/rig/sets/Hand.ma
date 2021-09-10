//Maya ASCII 2018ff09 scene
//Name: Hand.ma
//Last modified: Fri, Sep 10, 2021 02:18:36 PM
//Codeset: 949
requires maya "2018ff09";
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
createNode transform -n "HandGrp";
	rename -uid "71315645-4030-0D74-75C2-E29C05C31EE2";
	addAttr -ci true -sn "Module" -ln "Module" -dt "string";
	addAttr -ci true -sn "Type" -ln "Type" -dt "string";
	setAttr -l on -k on ".Module" -type "string" "Hand";
	setAttr -l on -k on ".Type" -type "string" "Set";
createNode transform -n "FingerRigGrp" -p "HandGrp";
	rename -uid "E3F7B013-46F9-A545-12B4-33A105DA3D7A";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "Part" -ln "Part" -at "message";
	setAttr ".t" -type "double3" 0 0 -1.1102230246251565e-15 ;
	setAttr -s 2 ".Grp";
	setAttr -s 5 ".Part";
createNode transform -n "WristConsGrp" -p "FingerRigGrp";
	rename -uid "D4900F6A-4BA4-738B-4F98-AB8B771A3865";
	setAttr ".r" -type "double3" 179.99999999998312 0 0 ;
createNode transform -n "WristIKScaleGrp" -p "WristConsGrp";
	rename -uid "6C6A2FD0-4FD8-EE0E-776D-C481901B194D";
	setAttr ".t" -type "double3" 0 0 1.5444945211662287e-08 ;
	setAttr ".r" -type "double3" -179.99999999998312 0 0 ;
createNode transform -n "FingerCtrlGrp" -p "WristIKScaleGrp";
	rename -uid "95962531-422B-3DAE-1825-1F99E6EE5798";
	setAttr ".t" -type "double3" 7.2969485469590438 -0.47612190196323922 0.56469913709305242 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "FingerCtrl" -p "FingerCtrlGrp";
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
createNode nurbsCurve -n "FingerCtrlShape" -p "FingerCtrl";
	rename -uid "41EA0BDB-4E02-6FCD-8E3B-45B751A6B780";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.754174373368381 8.2665687894946664 -11.754174373368368
		5.1740269610774064e-15 8.2665687894946878 -5.0417691257739241
		-11.754174373368356 8.2665687894946664 -11.754174373368366
		-5.0417691257739161 8.266568789494686 3.5319318767610959e-15
		-11.754174373368356 8.2665687894946664 11.754174373368368
		4.360270178428889e-15 8.266568789494686 5.0417691257739294
		11.754174373368381 8.2665687894946664 11.754174373368366
		5.0417691257739357 8.266568789494686 4.4808423540958282e-15
		11.754174373368381 8.2665687894946664 -11.754174373368368
		5.1740269610774064e-15 8.2665687894946878 -5.0417691257739241
		-11.754174373368356 8.2665687894946664 -11.754174373368366
		;
createNode transform -n "IndexRigGrp" -p "WristIKScaleGrp";
	rename -uid "DC302CB8-48EE-705B-01A7-96B097F674D0";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Index";
createNode transform -n "Index1CtrlGrp" -p "IndexRigGrp";
	rename -uid "1579A3D4-4F7D-5C6D-5A0A-A694BD008990";
	setAttr ".t" -type "double3" 0.5458890913010066 -0.36984393606147148 2.5411838665873052 ;
	setAttr ".r" -type "double3" -91.060905601002602 0.16262719298926862 1.2802371200536466 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "Index1Ctrl" -p "Index1CtrlGrp";
	rename -uid "DD8E0A2E-4719-3FCF-3FFB-AE9DA1E5DECC";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Index1CtrlShape" -p "Index1Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "IndexIKCtrlGrp" -p "Index1Ctrl";
	rename -uid "F8FC9E60-4ACE-8567-80CB-47A7B2BA4512";
	setAttr ".t" -type "double3" 17.174732754518047 -0.96187887678456985 -0.19800037636179013 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "IndexIKCtrl" -p "IndexIKCtrlGrp";
	rename -uid "33547CA7-461E-E852-FC5F-A1BF3226B27B";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "IndexIKCtrlShape" -p "IndexIKCtrl";
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
createNode transform -n "IndexAMUpvec" -p "IndexIKCtrl";
	rename -uid "7764B362-4BBC-56A2-0419-D0AA32FBA1AC";
createNode joint -n "Index1IKJnt" -p "Index1Ctrl";
	rename -uid "23D8751A-417D-BC75-A4A9-E58817E61176";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.0370554403809535 -0.96187887678456718 -0.19800037636184697 ;
	setAttr ".r" -type "double3" -9.3895260513135688e-17 -0.0050641482906635888 8.4001794893725638e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 0 -0.13800275755650346 0 ;
createNode joint -n "Index2IKJnt" -p "Index1IKJnt";
	rename -uid "2B729594-4578-5056-AC7D-06A6FEDB0FE9";
	setAttr ".t" -type "double3" 4.1098937379759146 -6.4852674289439687e-15 1.6965731399080625e-17 ;
	setAttr ".r" -type "double3" -2.1180138323738779e-14 0.02077975441274334 1.2517673980863277e-12 ;
	setAttr ".s" -type "double3" 1 0.99999999999999889 1.0000000000000009 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
createNode joint -n "Index3IKJnt" -p "Index2IKJnt";
	rename -uid "6198D79B-4F3F-9CEA-B824-F6BF66F2988E";
	setAttr ".t" -type "double3" 2.5180967573336686 -8.2269260848200127e-14 6.591949208711867e-17 ;
	setAttr ".r" -type "double3" -3.3428815242317485e-14 -0.023190688492852652 5.9658640662634106e-13 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000022 ;
	setAttr ".pa" -type "double3" 0 1 0 ;
createNode joint -n "Index4IKJnt" -p "Index3IKJnt";
	rename -uid "6C2148A1-49D4-861C-F825-88BB388579C9";
	setAttr ".t" -type "double3" 2.5097120098782941 -8.1995174538995842e-14 -6.9388939039072284e-18 ;
	setAttr ".s" -type "double3" 0.99999999999999856 1 1.0000000000000007 ;
createNode transform -n "Index1MTPos" -p "Index1Ctrl";
	rename -uid "4BE8B31E-496F-AC99-AE0B-B88A25D22F6F";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Index2MTPos" -p "Index1MTPos";
	rename -uid "B54EA809-48F8-ECCB-B050-1EA907DFB36E";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Index3MTPos" -p "Index2MTPos";
	rename -uid "751BC1ED-4B58-58E9-C798-A69C16E22828";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "Index1CtrlPos" -p "Index1Ctrl";
	rename -uid "91724BF9-499C-1F73-E8B9-0B8BD613D3DD";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Index1CtrlOff" -p "Index1CtrlPos";
	rename -uid "5BCCBF50-4C44-2549-0979-D99450A106F3";
createNode transform -n "Index2CtrlGrp" -p "Index1CtrlOff";
	rename -uid "24552E1C-4B1A-5FBD-AFD7-A7B74AFCA532";
createNode transform -n "Index2Ctrl" -p "Index2CtrlGrp";
	rename -uid "126A52DB-444A-BEF1-857D-A489DF83EE3F";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Index2CtrlShape" -p "Index2Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Index2CtrlPos" -p "Index2Ctrl";
	rename -uid "99856568-440B-2EEB-8609-66B0F568EB4B";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Index2CtrlOff" -p "Index2CtrlPos";
	rename -uid "EB9DEB62-40B9-D4BF-A26A-B4BAEACF76CE";
createNode transform -n "Index3CtrlGrp" -p "Index2CtrlOff";
	rename -uid "C1FCA0B7-4E1E-2921-AD54-3BA18FFC42B2";
createNode transform -n "Index3Ctrl" -p "Index3CtrlGrp";
	rename -uid "169A22BF-448A-74C0-2DA5-42B1285708C2";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Index3CtrlShape" -p "Index3Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Index3CtrlPos" -p "Index3Ctrl";
	rename -uid "6409ED8F-4B89-CAD0-B0AE-05A1ED769B12";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "Index3CtrlOff" -p "Index3CtrlPos";
	rename -uid "44B3FB8D-4FD3-13B5-A1E0-6891E972961B";
createNode transform -n "Index4CtrlGrp" -p "Index3CtrlOff";
	rename -uid "277B6D1B-4E59-0D73-A6AF-6990A3A133DB";
createNode transform -n "Index4Ctrl" -p "Index4CtrlGrp";
	rename -uid "2EA5C224-4580-965D-2B3B-90B4821D5FB7";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Index4CtrlShape" -p "Index4Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "IndexAMGrp" -p "Index1Ctrl";
	rename -uid "7A31181A-44E5-65C0-B15D-5088D21ECFE8";
	setAttr ".t" -type "double3" 8.0370554403809535 -0.96187887678456718 -0.19800037636184697 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "IndexPVPos" -p "IndexAMGrp";
	rename -uid "9B565875-4FAC-FA3F-C4AD-80BB771DD200";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "IndexAMGrpAMCons" -p "IndexAMGrp";
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
	setAttr ".rsrr" -type "double3" -91.061826122340975 0.12143709174710533 -1.4592493019936654 ;
	setAttr -k on ".w0";
createNode transform -n "MiddleRigGrp" -p "WristIKScaleGrp";
	rename -uid "2E8FD8E6-4330-38C5-D793-D98B0D34EF55";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Middle";
createNode transform -n "Middle1CtrlGrp" -p "MiddleRigGrp";
	rename -uid "C4CED182-4991-F301-FC4A-7C8BF1EF67BE";
	setAttr ".t" -type "double3" 0.7215365554970532 -0.12236099700479033 0.95722959251131967 ;
	setAttr ".r" -type "double3" -91.950389236032265 0.26293067154869898 0.81815567739849793 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "Middle1Ctrl" -p "Middle1CtrlGrp";
	rename -uid "6544212F-4B60-FE02-D2D5-C99DAF74673D";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Middle1CtrlShape" -p "Middle1Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "MiddleIKCtrlGrp" -p "Middle1Ctrl";
	rename -uid "1A2F13CF-45CA-6031-7897-D89B3A0B2E5A";
	setAttr ".t" -type "double3" 18.788838207485639 -0.28134330799816976 -0.14789884823440502 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "MiddleIKCtrl" -p "MiddleIKCtrlGrp";
	rename -uid "86C90312-411B-9C18-E485-BFA841C7AC3D";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "MiddleIKCtrlShape" -p "MiddleIKCtrl";
	rename -uid "D490AA32-41D0-611A-08AD-5EAF102A9C69";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-1.2931481330191726e-14 2.2382144999999842 0
		-1.2434497875801752e-14 -1.5987211554602254e-14 2.23821
		-1.1937514421411774e-14 -2.2382145000000162 0
		-1.2434497875801752e-14 -1.5987211554602254e-14 -2.23821
		-1.2931481330191726e-14 2.2382144999999842 0
		2.8909304999999876 -1.5345296033864032e-14 0
		-1.2434497875801752e-14 -1.5987211554602254e-14 2.23821
		-1.1937514421411774e-14 -2.2382145000000162 0
		2.8909304999999876 -1.5345296033864032e-14 0
		-1.2434497875801752e-14 -1.5987211554602254e-14 -2.23821
		;
createNode transform -n "MiddleAMUpvec" -p "MiddleIKCtrl";
	rename -uid "3D71057E-4088-6370-1577-D78CD3BD6DFA";
createNode joint -n "Middle1IKJnt" -p "Middle1Ctrl";
	rename -uid "0D45EF21-4D21-1FC7-CE78-F9A83E24A370";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.2894242493831882 -0.28134330799817153 -0.14789884823434818 ;
	setAttr ".r" -type "double3" 8.5377161669794577e-07 1.3849380526156276e-17 -1.8616000423624785e-09 ;
	setAttr ".jo" -type "double3" 0 -0.12492997541023412 0 ;
createNode joint -n "Middle2IKJnt" -p "Middle1IKJnt";
	rename -uid "ABF7972A-47F0-DB92-CB14-E1917045043C";
	setAttr ".t" -type "double3" 4.490250143347434 -1.1682109414242347e-14 1.0072238182397138e-16 ;
	setAttr ".r" -type "double3" -7.2396540905253489e-27 7.578326971213469e-13 -7.4386398597192704e-24 ;
	setAttr ".jo" -type "double3" 0 0.15547849068195649 0 ;
createNode joint -n "Middle3IKJnt" -p "Middle2IKJnt";
	rename -uid "AEBA917A-4DF7-B6CF-B8F8-D299BF775F07";
	setAttr ".t" -type "double3" 2.9883318013495392 -1.200914367949224e-13 6.9388939039072284e-17 ;
	setAttr ".r" -type "double3" 2.5492071662859002e-26 6.3429809184368407e-13 -3.7514643968556503e-24 ;
	setAttr ".jo" -type "double3" 0 0.12492996305008565 0 ;
createNode joint -n "Middle4IKJnt" -p "Middle3IKJnt";
	rename -uid "F5499E4D-479C-B0C1-8CFE-65B7A0D39098";
	setAttr ".t" -type "double3" 3.0208537666762112 -1.2140635718971282e-13 -2.7755575615628914e-17 ;
createNode transform -n "Middle1MTPos" -p "Middle1Ctrl";
	rename -uid "17062DD0-4216-EF34-20E5-B78AD92831C8";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "Middle2MTPos" -p "Middle1MTPos";
	rename -uid "90A32D16-4551-7149-2F9F-7496E930A7CD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Middle3MTPos" -p "Middle2MTPos";
	rename -uid "231B1D4A-4622-2DB9-E87A-89B02FA5359F";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "Middle1CtrlPos" -p "Middle1Ctrl";
	rename -uid "87B17AA8-4CAC-99F8-8ED7-08B1B8E0F326";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "Middle1CtrlOff" -p "Middle1CtrlPos";
	rename -uid "192E8F72-49BD-D9E8-557A-99A162F7D7C5";
createNode transform -n "Middle2CtrlGrp" -p "Middle1CtrlOff";
	rename -uid "7227DE58-4893-DE50-7FD5-65AD49703BC0";
createNode transform -n "Middle2Ctrl" -p "Middle2CtrlGrp";
	rename -uid "94792945-480F-7201-876C-719C523CD0DF";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Middle2CtrlShape" -p "Middle2Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Middle2CtrlPos" -p "Middle2Ctrl";
	rename -uid "FD570E32-4CD9-F8E0-07DF-47A3BC79A5E7";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "Middle2CtrlOff" -p "Middle2CtrlPos";
	rename -uid "2B5A16FE-45F7-8CE9-3A4F-A98BD075657F";
createNode transform -n "Middle3CtrlGrp" -p "Middle2CtrlOff";
	rename -uid "88F35A91-40F4-E0DB-994E-83B1893B93AE";
createNode transform -n "Middle3Ctrl" -p "Middle3CtrlGrp";
	rename -uid "B9C99180-43BA-E94A-D149-47840CB6AF85";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Middle3CtrlShape" -p "Middle3Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Middle3CtrlPos" -p "Middle3Ctrl";
	rename -uid "2EC57834-4062-1E67-94B5-F8A22AC60B07";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "Middle3CtrlOff" -p "Middle3CtrlPos";
	rename -uid "D7980BF2-4161-717C-8AF7-8186E5CFE345";
createNode transform -n "Middle4CtrlGrp" -p "Middle3CtrlOff";
	rename -uid "6FA09360-41DD-8E7A-6ADB-1788A8D27F58";
createNode transform -n "Middle4Ctrl" -p "Middle4CtrlGrp";
	rename -uid "9725F0B5-4273-222B-9C9E-6197B756495A";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Middle4CtrlShape" -p "Middle4Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "MiddleAMGrp" -p "Middle1Ctrl";
	rename -uid "5BB9D46D-4B05-F4DC-D05E-C7B7384C0137";
	setAttr ".t" -type "double3" 8.2894242493831882 -0.28134330799817153 -0.14789884823434818 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "MiddlePVPos" -p "MiddleAMGrp";
	rename -uid "280594C0-4FD0-75DB-285D-D18F9C92C778";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "MiddleAMGrpAMCons" -p "MiddleAMGrp";
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
createNode transform -n "RingRigGrp" -p "WristIKScaleGrp";
	rename -uid "FA28317E-4CD1-4BF0-946A-2EB07E41C454";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Ring";
createNode transform -n "Ring1CtrlGrp" -p "RingRigGrp";
	rename -uid "E8366CB5-4694-A412-6356-72BB8EC52E4A";
	setAttr ".t" -type "double3" 0.68397477788754235 -0.090744642181391583 -0.80060552727953804 ;
	setAttr ".r" -type "double3" -91.78978763852443 0.53339597100320191 0.55986466643156718 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "Ring1Ctrl" -p "Ring1CtrlGrp";
	rename -uid "302A78C8-4FB2-CDD8-2106-7DABEE27DA8A";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Ring1CtrlShape" -p "Ring1Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "RingIKCtrlGrp" -p "Ring1Ctrl";
	rename -uid "0A0DE13A-427F-F261-CE76-5E9545C9D6FD";
	setAttr ".t" -type "double3" 17.440376725136503 0.18630276453823624 -0.24684328495044383 ;
createNode transform -n "RingIKCtrl" -p "RingIKCtrlGrp";
	rename -uid "3F46AF5A-4EB4-CBFC-559D-7AA26E351932";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RingIKCtrlShape" -p "RingIKCtrl";
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
createNode transform -n "RingAMUpvec" -p "RingIKCtrl";
	rename -uid "9A0A875C-4482-86B3-FD57-6EB63EE6F7C1";
createNode joint -n "Ring1IKJnt" -p "Ring1Ctrl";
	rename -uid "8E627AB4-4514-80A3-5DDE-20A9A711E213";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.1150593770557151 0.17193387637405433 -0.19131917692749312 ;
	setAttr ".r" -type "double3" 0.0047782958180209367 -1.7695658737918432e-09 -4.7682833505732487e-05 ;
	setAttr ".jo" -type "double3" 0 -0.23059641750729162 0.088363362264345172 ;
createNode joint -n "Ring2IKJnt" -p "Ring1IKJnt";
	rename -uid "22865A45-430E-E2C6-FA37-06B1476042B9";
	setAttr ".t" -type "double3" 4.0331219026503629 1.1054212795504666e-14 4.4301524926348861e-17 ;
	setAttr ".r" -type "double3" 3.4978169715900074e-18 -9.1699361301722879e-12 1.0094793674699206e-15 ;
	setAttr ".jo" -type "double3" 0 0.72003743209724635 -7.9399973580881431e-05 ;
createNode joint -n "Ring3IKJnt" -p "Ring2IKJnt";
	rename -uid "685183CE-4848-0869-99C7-948932A344F9";
	setAttr ".t" -type "double3" 2.6325079789853074 3.8857805867050358e-16 -1.2490009027033011e-16 ;
	setAttr ".r" -type "double3" -4.0612910830844599e-22 -7.2971875319696939e-12 3.2591997329381474e-18 ;
	setAttr ".jo" -type "double3" 0 0.57173823733524354 0 ;
createNode joint -n "Ring4IKJnt" -p "Ring3IKJnt";
	rename -uid "F7DAF24A-49FE-52CA-5F6D-C88CC75E440A";
	setAttr ".t" -type "double3" 2.6602836124809039 -1.4805959236419137e-10 0 ;
createNode transform -n "Ring1MTPos" -p "Ring1Ctrl";
	rename -uid "A201DA73-4A59-E6C9-3E6C-8ABB448450ED";
createNode transform -n "Ring2MTPos" -p "Ring1MTPos";
	rename -uid "651A33C6-4F12-167B-8362-3D9691CA522D";
createNode transform -n "Ring3MTPos" -p "Ring2MTPos";
	rename -uid "D7A32221-4316-BC9C-3F70-BDB0682F5D43";
createNode transform -n "Ring1CtrlPos" -p "Ring1Ctrl";
	rename -uid "18497300-4D49-0352-C781-05A0821C57EC";
createNode transform -n "Ring1CtrlOff" -p "Ring1CtrlPos";
	rename -uid "FBA069E8-4906-D21A-FEC2-B98BC1F16E2B";
createNode transform -n "Ring2CtrlGrp" -p "Ring1CtrlOff";
	rename -uid "47970DD0-4DB5-7409-5B65-0293E9B2DC71";
createNode transform -n "Ring2Ctrl" -p "Ring2CtrlGrp";
	rename -uid "5D0D77A3-43C4-6BB9-A813-12935FC49134";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Ring2CtrlShape" -p "Ring2Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Ring2CtrlPos" -p "Ring2Ctrl";
	rename -uid "C5514547-4082-F699-CBA1-DBB38AD58547";
createNode transform -n "Ring2CtrlOff" -p "Ring2CtrlPos";
	rename -uid "62B7FF8C-4FC8-5DD6-0ADB-9AB33F690181";
createNode transform -n "Ring3CtrlGrp" -p "Ring2CtrlOff";
	rename -uid "A11E711B-4ED7-5B5C-6D1C-33B76D528CF0";
createNode transform -n "Ring3Ctrl" -p "Ring3CtrlGrp";
	rename -uid "CB7121BB-425F-679D-2C04-219A93724507";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Ring3CtrlShape" -p "Ring3Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Ring3CtrlPos" -p "Ring3Ctrl";
	rename -uid "BC056700-4F6C-B1C7-4354-9480861066C1";
createNode transform -n "Ring3CtrlOff" -p "Ring3CtrlPos";
	rename -uid "A0788EF3-4EDA-C285-2AA2-5DBBDB67595F";
createNode transform -n "Ring4CtrlGrp" -p "Ring3CtrlOff";
	rename -uid "D5249A52-4889-70E8-C04F-0793FE791E01";
createNode transform -n "Ring4Ctrl" -p "Ring4CtrlGrp";
	rename -uid "AB249C7F-408A-CE6B-2D3B-E9A1DC716994";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Ring4CtrlShape" -p "Ring4Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "RingAMGrp" -p "Ring1Ctrl";
	rename -uid "AA93F671-4F94-9B3A-1070-D49DD18529A9";
	setAttr ".t" -type "double3" 8.1150593770557151 0.17193387637405433 -0.19131917692749312 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RingPVPos" -p "RingAMGrp";
	rename -uid "2FC3CE25-4903-83D5-B6EC-E3A703AE0F8F";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "RingAMGrpAMCons" -p "RingAMGrp";
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
createNode transform -n "PinkyRigGrp" -p "WristIKScaleGrp";
	rename -uid "368B42E4-495E-5BE9-63B9-7C9F73B39F11";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Pinky";
createNode transform -n "Pinky1CtrlGrp" -p "PinkyRigGrp";
	rename -uid "F340FD5B-4F91-EA4A-2AA6-049744F68030";
	setAttr ".t" -type "double3" 0.57590344845657171 -0.27995546820210371 -2.2408232476072105 ;
	setAttr ".r" -type "double3" -89.909171151941194 -0.39141296616505367 1.192753193765284 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "Pinky1Ctrl" -p "Pinky1CtrlGrp";
	rename -uid "4C99CDDC-4685-7C53-4652-439BECF91FD5";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Pinky1CtrlShape" -p "Pinky1Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "PinkyIKCtrlGrp" -p "Pinky1Ctrl";
	rename -uid "32E75FCB-41ED-878D-D6DE-E0955585C2C2";
	setAttr ".t" -type "double3" 14.934714506703386 0.86182605951835578 -0.34444089248700038 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "PinkyIKCtrl" -p "PinkyIKCtrlGrp";
	rename -uid "A1A47B6C-4891-B25A-F338-84968FBD2E2A";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "PinkyIKCtrlShape" -p "PinkyIKCtrl";
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
createNode transform -n "PinkyAMUpvec" -p "PinkyIKCtrl";
	rename -uid "3CE9AE57-4695-4A5E-5577-629901D367DA";
createNode joint -n "Pinky1IKJnt" -p "Pinky1Ctrl";
	rename -uid "9BD59DDE-4020-A5E1-13DA-CFA19BFB3F15";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 7.7090091829811911 0.86182605951834956 -0.34444089248700038 ;
	setAttr ".r" -type "double3" 4.5517273463332136e-15 0.085915279736833758 1.3536018693222507e-12 ;
	setAttr ".jo" -type "double3" 0 -0.17653045960890218 0 ;
createNode joint -n "Pinky2IKJnt" -p "Pinky1IKJnt";
	rename -uid "971E3A24-401D-D8C8-A79B-67B43BD08EF8";
	setAttr ".t" -type "double3" 3.2041206012865651 -7.6608066388643895e-15 1.1222044272628028e-17 ;
	setAttr ".r" -type "double3" -2.0987166365470514e-15 -0.10467770932890223 5.0217929318071181e-13 ;
	setAttr ".jo" -type "double3" 0 0.22928647148035244 0 ;
createNode joint -n "Pinky3IKJnt" -p "Pinky2IKJnt";
	rename -uid "5C391A73-4899-69CF-5FAA-10A385D660BE";
	setAttr ".t" -type "double3" 2.0193520690784195 -5.5219717687293698e-14 -6.591949208711867e-17 ;
	setAttr ".r" -type "double3" -2.728855518735652e-15 -0.099800968337793242 2.3854528517995001e-13 ;
	setAttr ".jo" -type "double3" 0 0.17653044291952966 0 ;
createNode joint -n "Pinky4IKJnt" -p "Pinky3IKJnt";
	rename -uid "90DFC776-492A-0F49-9C16-1D930CE851D9";
	setAttr ".t" -type "double3" 2.0022645730135373 -5.4747872901827956e-14 7.6327832942979512e-17 ;
createNode transform -n "Pinky1MTPos" -p "Pinky1Ctrl";
	rename -uid "7FCEC35F-4D56-0C82-7E45-3CA045E0B964";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Pinky2MTPos" -p "Pinky1MTPos";
	rename -uid "2F2F6B51-4570-AB65-DE2D-27B8223FA0CF";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Pinky3MTPos" -p "Pinky2MTPos";
	rename -uid "8DFE5B51-44BE-2C7D-8689-2BAC68C34B04";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "Pinky1CtrlPos" -p "Pinky1Ctrl";
	rename -uid "E9663F13-4D42-CB94-9F64-5B89CEE33A9D";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Pinky1CtrlOff" -p "Pinky1CtrlPos";
	rename -uid "2F3F8697-4DC1-F00D-6F15-5EA43F9F9D69";
createNode transform -n "Pinky2CtrlGrp" -p "Pinky1CtrlOff";
	rename -uid "17B02BA3-4864-CA79-38F2-44B31ADB25FC";
createNode transform -n "Pinky2Ctrl" -p "Pinky2CtrlGrp";
	rename -uid "470718F6-4823-7A61-5991-8E8BB11F587A";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Pinky2CtrlShape" -p "Pinky2Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Pinky2CtrlPos" -p "Pinky2Ctrl";
	rename -uid "4DBA760C-4243-C039-904A-D59ACF0003ED";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Pinky2CtrlOff" -p "Pinky2CtrlPos";
	rename -uid "D612E394-46F2-8E1E-1770-96BA3DF011EA";
createNode transform -n "Pinky3CtrlGrp" -p "Pinky2CtrlOff";
	rename -uid "FCBFA5E9-4D5E-0064-3EA9-189FC60C94F5";
createNode transform -n "Pinky3Ctrl" -p "Pinky3CtrlGrp";
	rename -uid "C44A38D2-408E-77E2-4D7D-82B80594DF46";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Pinky3CtrlShape" -p "Pinky3Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Pinky3CtrlPos" -p "Pinky3Ctrl";
	rename -uid "B262FF8B-4DC9-EC3F-99DA-18B47FBDF21B";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "Pinky3CtrlOff" -p "Pinky3CtrlPos";
	rename -uid "25B77AF5-4E54-2541-66A2-E2B659E9E42F";
createNode transform -n "Pinky4CtrlGrp" -p "Pinky3CtrlOff";
	rename -uid "5F6D6B38-42ED-A4BF-699D-9B930CCD5FCD";
createNode transform -n "Pinky4Ctrl" -p "Pinky4CtrlGrp";
	rename -uid "AFBCE4E6-4E0D-7320-2074-15ACC27063F4";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Pinky4CtrlShape" -p "Pinky4Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "PinkyAMGrp" -p "Pinky1Ctrl";
	rename -uid "EDB5F750-43DE-17E8-8211-888B9A47157A";
	setAttr ".t" -type "double3" 7.7090091829811911 0.86182605951834956 -0.34444089248700038 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "PinkyPVPos" -p "PinkyAMGrp";
	rename -uid "5187ABFB-4E39-0B5D-80B6-B59DA9C70A1D";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "PinkyAMGrpAMCons" -p "PinkyAMGrp";
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
createNode transform -n "ThumbRigGrp" -p "WristIKScaleGrp";
	rename -uid "EC620473-4E4A-9FCD-D13B-19A973F072C0";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -ci true -sn "PartName" -ln "PartName" -dt "string";
	addAttr -ci true -sn "RootExist" -ln "RootExist" -dv 1 -at "long";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -s 5 ".Ctrl";
	setAttr -s 4 ".IKJnt";
	setAttr ".PartName" -type "string" "Thumb";
createNode transform -n "Thumb1CtrlGrp" -p "ThumbRigGrp";
	rename -uid "8A046F2B-4BAC-6F02-4BC7-3B8463F99A9A";
	setAttr ".t" -type "double3" 1.7889845413648757 -1.197658582905174 2.2268774481355087 ;
	setAttr ".r" -type "double3" 13.152373386281646 -55.278413820164232 -30.957153878700325 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "Thumb1Ctrl" -p "Thumb1CtrlGrp";
	rename -uid "300488E5-4EC5-0930-C43D-689405358813";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Thumb1CtrlShape" -p "Thumb1Ctrl";
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
createNode transform -n "ThumbIKCtrlGrp" -p "Thumb1Ctrl";
	rename -uid "0CDA516B-416D-929F-FC1B-01B92FB46A33";
	setAttr ".t" -type "double3" 10.406492280014984 -8.5265128291212022e-14 7.460698725481052e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "ThumbIKCtrl" -p "ThumbIKCtrlGrp";
	rename -uid "00DA8605-4AB4-6FC3-DBC5-3A995459B75B";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ThumbIKCtrlShape" -p "ThumbIKCtrl";
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
createNode transform -n "ThumbAMUpvec" -p "ThumbIKCtrl";
	rename -uid "5DDE7C6A-4EFA-BA49-EF77-8E8E56715A3C";
createNode joint -n "Thumb1IKJnt" -p "Thumb1Ctrl";
	rename -uid "B7703E48-4322-395B-A2E6-5F9487DC42EB";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 1.1546319456101628e-14 5.6843418860808015e-14 0 ;
	setAttr ".r" -type "double3" 8.5377088602365005e-07 1.6148636603475059e-17 -2.1709933517974664e-09 ;
	setAttr ".jo" -type "double3" 0 -0.14569305983987543 0 ;
createNode joint -n "Thumb2IKJnt" -p "Thumb1IKJnt";
	rename -uid "4C20A1CD-4C67-22A4-6895-699E69A0C174";
	setAttr ".t" -type "double3" 3.5221090575652241 6.8948993900989289e-16 2.2204460492448273e-16 ;
	setAttr ".r" -type "double3" -3.9648493552047009e-26 7.6990183433343933e-14 -8.9840973556263853e-25 ;
	setAttr ".jo" -type "double3" 0 0.14282796218038754 0 ;
createNode joint -n "Thumb3IKJnt" -p "Thumb2IKJnt";
	rename -uid "AEE1EC4D-4E6D-0012-6FAC-1091E0DD0190";
	setAttr ".t" -type "double3" 3.2269132937975389 -1.5226708782734022e-13 6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 3.6673630706480572e-27 7.8401523036206692e-14 -4.7385870609544717e-25 ;
	setAttr ".jo" -type "double3" 0 0.14569305461085252 0 ;
createNode joint -n "Thumb4IKJnt" -p "Thumb3IKJnt";
	rename -uid "22DD4128-4A8F-09A2-2977-7A9E74B959A3";
	setAttr ".t" -type "double3" 3.6574926369281346 -1.7108536809473667e-13 6.9388939039072284e-18 ;
createNode transform -n "Thumb1MTPos" -p "Thumb1Ctrl";
	rename -uid "0017CF96-45AB-F2A7-71B8-78933F13CA90";
createNode transform -n "Thumb2MTPos" -p "Thumb1MTPos";
	rename -uid "60672CDB-416E-52BD-9AA5-0A90D0F3AA8C";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "Thumb3MTPos" -p "Thumb2MTPos";
	rename -uid "8E678065-42B7-905A-7DF4-C584F59970FC";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "Thumb1CtrlPos" -p "Thumb1Ctrl";
	rename -uid "C8411496-4710-6D5C-E3C4-6DB71BEB48AB";
createNode transform -n "Thumb1CtrlOff" -p "Thumb1CtrlPos";
	rename -uid "6BDD4154-42C2-E9A5-12B9-F4AF40582EA5";
createNode transform -n "Thumb2CtrlGrp" -p "Thumb1CtrlOff";
	rename -uid "A8C24D97-4A96-AE58-470E-238F8AF07C21";
createNode transform -n "Thumb2Ctrl" -p "Thumb2CtrlGrp";
	rename -uid "68E926E0-4C37-02EA-187B-1284BDD0027F";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Thumb2CtrlShape" -p "Thumb2Ctrl";
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
createNode transform -n "Thumb2CtrlPos" -p "Thumb2Ctrl";
	rename -uid "8E73D95D-4E24-E9B9-DE31-D5980874BCA9";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "Thumb2CtrlOff" -p "Thumb2CtrlPos";
	rename -uid "5D0711C2-4410-C01C-5BD0-CD8191566945";
createNode transform -n "Thumb3CtrlGrp" -p "Thumb2CtrlOff";
	rename -uid "195886D2-43DC-71E6-D2A2-39AD8820C8B6";
createNode transform -n "Thumb3Ctrl" -p "Thumb3CtrlGrp";
	rename -uid "AAFE110B-4BCB-C573-5AA3-B1AF15533643";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Thumb3CtrlShape" -p "Thumb3Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "Thumb3CtrlPos" -p "Thumb3Ctrl";
	rename -uid "FBE7F0C2-4C4C-3D1F-0B66-E9B265822E5B";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Thumb3CtrlOff" -p "Thumb3CtrlPos";
	rename -uid "94AB4ACD-4203-F7E2-477F-759B98F28073";
createNode transform -n "Thumb4CtrlGrp" -p "Thumb3CtrlOff";
	rename -uid "B4B6368C-459D-75C9-1CCB-A7A810A7DA08";
createNode transform -n "Thumb4Ctrl" -p "Thumb4CtrlGrp";
	rename -uid "C9E3D9BA-4681-B60F-B9F2-53B251153FF0";
	setAttr -l on ".v";
	setAttr -cb on ".ro" 3;
createNode nurbsCurve -n "Thumb4CtrlShape" -p "Thumb4Ctrl";
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
		-4.0435521597714785e-16 0 1.8210539999999997
		-5.0932125184033344e-16 -0.356796 1.9369830000000001
		-6.2567684366854333e-16 -0.57730799999999993 2.2404899999999999
		-7.0897954174142792e-16 -0.57730799999999993 2.6156519999999999
		-7.2740813372718088e-16 -0.356796 2.9191589999999996
		-6.7392624814033296e-16 0 3.035094
		-5.6895888000951789e-16 0.356796 2.9191589999999996
		-4.52603288181308e-16 0.57730799999999993 2.6156519999999999
		-3.6930059010842341e-16 0.57730799999999993 2.2404899999999999
		-3.5087199812267045e-16 0.356796 1.9369830000000001
		-4.0435521597714785e-16 0 1.8210539999999997
		;
createNode transform -n "ThumbAMGrp" -p "Thumb1Ctrl";
	rename -uid "419F12D0-4117-6809-8DFB-A7A3CD4E96F0";
	setAttr ".t" -type "double3" 1.1546319456101628e-14 5.6843418860808015e-14 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "ThumbPVPos" -p "ThumbAMGrp";
	rename -uid "A88C0C51-46BB-8845-46FF-21B9E997979D";
	setAttr ".t" -type "double3" 0 0 0.1 ;
createNode aimConstraint -n "ThumbAMGrpAMCons" -p "ThumbAMGrp";
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
createNode transform -n "ArmIKConnectGrp" -p "HandGrp";
	rename -uid "FF2DF9E3-47D9-7D87-92CE-65B5863F481D";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -1.9412570213400101e-19 0 0 ;
createNode joint -n "WristJnt" -p "ArmIKConnectGrp";
	rename -uid "7CD52882-4F13-660B-EB1E-D7A460AA7DE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.2632564145606011e-14 1.4210854715202004e-13 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999913947991 0 0 ;
	setAttr ".bps" -type "matrix" 0.99885691715541347 -0.047794790211846454 0.00071908232429837918 0
		 -0.047794802574095845 -0.99885717539941787 7.509506533214017e-09 0 0.00071826018041303713 -3.4375898646907663e-05 -0.99999974146027193 0
		 84.374662025947146 151.52299996156225 -0.64075121912623589 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Wrist";
createNode joint -n "IndexRootJnt" -p "WristJnt";
	rename -uid "32B99447-4941-288E-17B5-7196DD4DA3C2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 88.939095259306157 -0.16262717376310373 -1.280237122495526 ;
	setAttr ".bps" -type "matrix" 0.99967344470760577 -0.025465894265732314 -0.0021194753304127154 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.025422314590780124 0.99950502681105025 -0.018531251989267087 0
		 84.900426529412769 151.12757526828315 1.9008245305682829 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "IndexRoot";
createNode joint -n "Index1Jnt" -p "IndexRootJnt";
	rename -uid "5B33B646-40EF-E25E-FF9C-43BEFCB3A9BD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99967573598991188 -0.025375649786879406 -0.0021211484912023303 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.025332054905810315 0.99950732202881098 -0.018531060548285235 0
		 92.932315393672042 150.74276926990012 2.8491709283561342 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index1";
createNode joint -n "Index2Jnt" -p "Index1Jnt";
	rename -uid "0B33C428-43A3-AB3D-C3FF-77B0935F49F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99966643333963467 -0.025740073838664692 -0.0021143918259971441 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.02569654036512814 0.99949800349480022 -0.018531832698686329 0
		 97.04086503633313 150.63847833438834 2.8404532569656857 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index2";
createNode joint -n "Index3Jnt" -p "Index2Jnt";
	rename -uid "65B313F2-4DEB-ED65-5C4D-8789A02F36A1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99967667477186406 -0.025338581850162314 -0.0021218357361911422 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.025294980723290901 0.99950826242764701 -0.018530981870223864 0
		 99.558107664257605 150.5736627005316 2.8351290433693732 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index3";
createNode joint -n "Index4Jnt" -p "Index3Jnt";
	rename -uid "487C174B-4D39-7052-A18D-49B4E076EF93";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.5097152112971202 -8.8817841970012523e-16 2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99967667477186406 -0.025338581850162314 -0.0021218357361911422 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.025294980723290901 0.99950826242764701 -0.018530981870223864 0
		 102.06701142131148 150.51007007622957 2.829803839946381 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index4";
createNode joint -n "Index3SubJnt" -p "Index2Jnt";
	rename -uid "DC3469ED-4040-7178-D888-A996174D2592";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 0 -0.023015231650180927 0 ;
	setAttr ".bps" -type "matrix" 0.99968173499910162 -0.025137834318661473 -0.0021255575629740195 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.025094199367760191 0.9995133314153839 -0.018530555334701316 0
		 99.558107664257605 150.5736627005316 2.8351290433693732 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index3Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Index2SubJnt" -p "Index1Jnt";
	rename -uid "AD505979-4F7E-AA47-1623-E89106857E1E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 0 0.020890349437738417 0 ;
	setAttr ".bps" -type "matrix" 0.99966173217964149 -0.025922284584406305 -0.0021110133879330075 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.025878781816806744 0.9994932944013365 -0.018532217850055373 0
		 97.04086503633313 150.63847833438834 2.8404532569656857 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index2Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Index1SubJnt" -p "IndexRootJnt";
	rename -uid "2A0C33E6-464B-2E89-7BC5-55BCC297BBA3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 0 -0.0051731824089171156 0 ;
	setAttr ".bps" -type "matrix" 0.99967687857501408 -0.025330527469832571 -0.0021219850651135468 0
		 -0.0025903411507198415 -0.018471318542238144 -0.99982603513012913 0 0.025286924985838295 0.99950846658215542 -0.018530964771143962 0
		 92.932315393672042 150.74276926990012 2.8491709283561342 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index1Sub";
	setAttr ".radi" 0.6608558855347183;
createNode joint -n "MiddleRootJnt" -p "WristJnt";
	rename -uid "2CAE3449-481B-8822-FC36-909ACD1EF628";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 88.049611624409152 -0.26293065926131098 -0.81815568134705485 ;
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 85.088839304037151 151.36632590610054 0.31699697099421631 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "MiddleRoot";
createNode joint -n "Middle1Jnt" -p "MiddleRootJnt";
	rename -uid "701EF800-4097-6590-47B2-879651397AE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 93.370013612418973 150.95021187848965 0.57113020917690926 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle1";
createNode joint -n "Middle2Jnt" -p "Middle1Jnt";
	rename -uid "23360712-4E8C-1C2D-8C2D-DB949C2A7233";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 97.857700348561195 150.79966737265289 0.55375301955216361 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle2";
createNode joint -n "Middle3Jnt" -p "Middle2Jnt";
	rename -uid "79D2F07E-43D6-CC07-D6E9-CE94E9B6E784";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 100.84431076112331 150.69947816268316 0.54218828731353474 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle3";
createNode joint -n "Middle4Jnt" -p "Middle3Jnt";
	rename -uid "A4D04489-471D-CDA9-66D6-0083CF571CE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.0208564168240173 1.7763568394002505e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 103.86344625328501 150.59819786278544 0.53049761200988155 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle4";
createNode joint -n "Middle3SubJnt" -p "Middle2Jnt";
	rename -uid "72AA4DB7-4E85-D0D7-F9DE-A6902C781F41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 100.84431076112331 150.69947816268316 0.54218828731353474 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle3Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Middle2SubJnt" -p "Middle1Jnt";
	rename -uid "FAAAED9D-4661-158A-7C2A-A18D6456922C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 97.857700348561195 150.79966737265289 0.55375301955216361 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle2Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Middle1SubJnt" -p "MiddleRootJnt";
	rename -uid "3E708584-4F02-127D-4A7F-6C9275FDF8C0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99943031894771872 -0.033527015495894395 -0.0038699870800024431 0
		 -0.0050069847859252328 -0.033895579908601453 -0.99941283750310739 0 0.033376154233447364 0.99886286791260692 -0.034044139495476952 0
		 93.370013612418973 150.95021187848965 0.57113020917690926 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle1Sub";
	setAttr ".radi" 1.5;
createNode joint -n "RingRootJnt" -p "WristJnt";
	rename -uid "EA8FE0C3-47DB-CB81-C873-A687C0888144";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 88.210213221991879 -0.53339596259477939 -0.5598646744424417 ;
	setAttr ".bps" -type "matrix" 0.99923963448635811 -0.038031020892891017 -0.0085903621235639133 0
		 -0.0097680759183247211 -0.03089046838406655 -0.9994750440385527 0 0.037745695972168092 0.99879898899270914 -0.031238470236540205 0
		 85.054094143684807 151.39964097227568 -1.4408647043367759 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RingRoot";
createNode joint -n "Ring1Jnt" -p "RingRootJnt";
	rename -uid "6FC36A2C-44C7-E336-967D-7AB86445DE6A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99923963421879936 -0.038031021739015181 -0.008590389500293602 0
		 -0.0097682767108706933 -0.030895056317827831 -0.99947490026774455 0 0.037745651092279335 0.99879884705610533 -0.031243062318139319 0
		 93.154082170652572 150.89461645822954 -1.6764431024055515 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ring1";
createNode joint -n "Ring2Jnt" -p "Ring1Jnt";
	rename -uid "835C2E35-48A5-3335-C831-6FA0B8444B69";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99923963421879936 -0.038031021739015181 -0.008590389500293602 0
		 -0.0097682767108706933 -0.030895056317827831 -0.99947490026774455 0 0.037745651092279335 0.99879884705610533 -0.031243062318139319 0
		 97.18410873315031 150.74123383122293 -1.7110889446430018 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ring2";
createNode joint -n "Ring3Jnt" -p "Ring2Jnt";
	rename -uid "7B3523AF-444B-176B-18B7-EB815A1497EC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99923963421879936 -0.038031021739015181 -0.008590389500293602 0
		 -0.0097682767108706933 -0.030895056317827831 -0.99947490026774455 0 0.037745651092279335 0.99879884705610533 -0.031243062318139319 0
		 99.814308165480256 150.64112856089156 -1.7337005758996111 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ring3";
createNode joint -n "Ring4Jnt" -p "Ring3Jnt";
	rename -uid "D84038E0-45A0-AB3B-B425-DF80ABD43D8B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.6600232934612649 0.01436888816418147 -0.0555241080230644 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99923963421879936 -0.038031021739015181 -0.008590389500293602 0
		 -0.0097682767108706933 -0.030895056317827831 -0.99947490026774455 0 0.037745651092279335 0.99879884705610533 -0.031243062318139319 0
		 102.47007271536771 150.48406381450533 -1.769177811968027 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ring4";
createNode joint -n "Ring3SubJnt" -p "Ring2Jnt";
	rename -uid "75F0D2A9-4591-FF09-CCCF-BB898EE0DA52";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99923963421879936 -0.038031021739015181 -0.008590389500293602 0
		 -0.0097682767108706933 -0.030895056317827831 -0.99947490026774455 0 0.037745651092279335 0.99879884705610533 -0.031243062318139319 0
		 99.814308165480256 150.64112856089156 -1.7337005758996111 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ring3Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Ring2SubJnt" -p "Ring1Jnt";
	rename -uid "AEB65249-442B-AB10-92EA-1FAC045F1708";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99923963421879936 -0.038031021739015181 -0.008590389500293602 0
		 -0.0097682767108706933 -0.030895056317827831 -0.99947490026774455 0 0.037745651092279335 0.99879884705610533 -0.031243062318139319 0
		 97.18410873315031 150.74123383122293 -1.7110889446430018 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ring2Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Ring1SubJnt" -p "RingRootJnt";
	rename -uid "2E7432C5-496C-80C7-15C4-4980DB62FEAF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -0.00026324502959156401 -7.2317440787253799e-28 1.5693944725001814e-06 ;
	setAttr ".bps" -type "matrix" 0.99923963421879947 -0.038031021739014938 -0.0085903895002855963 0
		 -0.0097683634218673314 -0.03089735080399077 -0.99947482849212033 0 0.037745628652049168 0.99879877607993806 -0.031245358357361291 0
		 93.154082170652572 150.89461645822954 -1.6764431024055515 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ring1Sub";
	setAttr ".radi" 1.5;
createNode joint -n "PinkyRootJnt" -p "WristJnt";
	rename -uid "85B30C4C-4D06-3347-BDC6-579159177B46";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90.090829708412528 0.39141298407761144 -1.1927531878878703 ;
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 84.938137506243521 151.2157621295691 -2.8811597644937077 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "PinkyRoot";
createNode joint -n "Pinky1Jnt" -p "PinkyRootJnt";
	rename -uid "666FD2AB-42CF-F356-6C4B-48A00138F2D3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 92.641366302969985 150.6645473492263 -3.6852957230148142 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky1";
createNode joint -n "Pinky2Jnt" -p "Pinky1Jnt";
	rename -uid "B1DD4F97-45C3-A9D9-F22B-9A8D01DF98C9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 95.844219205338646 150.57806391641574 -3.6611037194907814 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky2";
createNode joint -n "Pinky3Jnt" -p "Pinky2Jnt";
	rename -uid "FDF7C1CE-4D88-048D-0D38-5FBA1DB6B063";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 97.862751004651273 150.52355952156447 -3.6458572096163442 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky3";
createNode joint -n "Pinky4Jnt" -p "Pinky3Jnt";
	rename -uid "D3AF29BA-4936-63E6-5D89-A1B470CE3AE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.0022686038184361 1.7763568394002505e-15 -2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 99.864233020659483 150.46951550511397 -3.6307394809966662 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky4";
createNode joint -n "Pinky3SubJnt" -p "Pinky2Jnt";
	rename -uid "19ED32B1-4918-C3B3-95D3-8F9B07FA5A94";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 97.862751004651273 150.52355952156447 -3.6458572096163442 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky3Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Pinky2SubJnt" -p "Pinky1Jnt";
	rename -uid "4F64FE29-4099-ABD4-8D14-FC8836EFAB53";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 95.844219205338646 150.57806391641574 -3.6611037194907814 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky2Sub";
	setAttr ".radi" 1.5;
createNode joint -n "Pinky1SubJnt" -p "PinkyRootJnt";
	rename -uid "71A38B4B-40C8-6210-0A08-E4BAD42226A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.99960715170346282 -0.026991391837943034 0.007550299990145842 0
		 0.0075899255010227779 0.0013659296867836908 -0.99997026319135107 0 0.026980276021188472 0.99963473279130388 0.0015702557368517792 0
		 92.641366302969985 150.6645473492263 -3.6852957230148142 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky1Sub";
	setAttr ".radi" 1.5;
createNode joint -n "ThumbRootJnt" -p "WristJnt";
	rename -uid "B7DC53F8-42B4-246E-89FD-9EAC143A124D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -166.84762531815159 55.278413377515321 30.957154943564905 ;
	setAttr ".bps" -type "matrix" 0.4733001616114243 -0.31597735324930065 0.82228052953488207 0
		 0.38454853052159604 0.91392636317711839 0.12985003027926922 0 -0.79253352275615496 0.25474872899273204 0.55407012226279306 0
		 86.102761534797438 150.2412823800822 1.5874120813427404 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ThumbRoot";
createNode joint -n "Thumb1Jnt" -p "ThumbRootJnt";
	rename -uid "5584B513-4BA6-677C-7814-2BB4B228429C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.4733001616114243 -0.31597735324930065 0.82228052953488207 0
		 0.38454853052159604 0.91392636317711839 0.12985003027926922 0 -0.79253352275615496 0.25474872899273204 0.55407012226279306 0
		 86.102761534797494 150.24128238008228 1.5874120813427839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thumb1";
createNode joint -n "Thumb2Jnt" -p "Thumb1Jnt";
	rename -uid "165E693C-484D-E5D8-B432-4D88FB3FA5DB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.4733001616114243 -0.31597735324930065 0.82228052953488207 0
		 0.38454853052159604 0.91392636317711839 0.12985003027926922 0 -0.79253352275615496 0.25474872899273204 0.55407012226279306 0
		 87.769776155749952 149.128375814599 4.4835735014650728 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thumb2";
createNode joint -n "Thumb3Jnt" -p "Thumb2Jnt";
	rename -uid "62FB016D-495D-596A-1C1A-51BCE16CB937";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.4733001616114243 -0.31597735324930065 0.82228052953488207 0
		 0.38454853052159604 0.91392636317711839 0.12985003027926922 0 -0.79253352275615496 0.25474872899273204 0.55407012226279306 0
		 89.297064552492245 148.1087511137971 7.1369837814049557 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thumb3";
createNode joint -n "Thumb4Jnt" -p "Thumb3Jnt";
	rename -uid "75AE66D7-4BC7-2595-FF79-4780D71C6E91";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.6574918040430795 5.6843418860808015e-14 1.0658141036401503e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" 0.4733001616114243 -0.31597735324930065 0.82228052953488207 0
		 0.38454853052159604 0.91392636317711839 0.12985003027926922 0 -0.79253352275615496 0.25474872899273204 0.55407012226279306 0
		 91.028156014438309 146.9530665340246 10.144468078803003 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thumb4";
createNode joint -n "Thumb3SubJnt" -p "Thumb2Jnt";
	rename -uid "CC621773-4BBB-85C7-7D85-B6890968EB62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 0 -0.072856395675116259 0 ;
	setAttr ".bps" -type "matrix" 0.47229200630178864 -0.31565316347650285 0.82298441125619581 0
		 0.38454853052159604 0.91392636317711839 0.12985003027926922 0 -0.79313472276600805 0.25515031467180666 0.55302407584640056 0
		 89.297064552492245 148.1087511137971 7.1369837814049557 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thumb3Sub";
	setAttr ".radi" 1.5;
createNode blendColors -n "WristFKScaleBC";
	rename -uid "998469DC-4DD5-9404-805D-6CA63E41C624";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "WristIKScaleBC";
	rename -uid "1F8E3B8B-4392-DD9A-E08F-A3BE870E6E96";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode decomposeMatrix -n "Index1MTPosDM";
	rename -uid "B43E1A0C-482B-881B-F953-D5827FC356FF";
createNode multMatrix -n "Index1MTPosMM";
	rename -uid "D28BA3FC-4E7C-DC7C-D212-2EA5C4C5B853";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338315 -0.025465894417515157 -0.0021194754981865571 0
		 -0.0025903415120694809 -0.018471326041210597 -0.99982603499065281 0 0.025422314719991429 0.99950502666859842 -0.018531259495307983 0
		 92.932315393672042 150.74276926990007 2.8491709283561382 1;
	setAttr ".i[1]" -type "matrix" 0.99973173335872645 -0.0025903415120694792 0.023016329994320142 2.7105054312137611e-20
		 -0.023060314896815148 -0.018471326041210601 0.99956342069482484 8.6736173798840355e-19
		 -0.002164068486974792 -0.99982603499065281 -0.018526104891572262 -1.3552527156068805e-20
		 -89.425043224753708 5.8738205462252235 -152.76313489519626 0.99999999999999989;
createNode decomposeMatrix -n "Index2MTPosDM";
	rename -uid "BD5CFCEE-45A6-A12A-14EE-919EEBD4F70D";
createNode multMatrix -n "Index2MTPosMM";
	rename -uid "76032F9F-4257-EA20-7C93-02A8BAFE82DC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338315 -0.025465894417515157 -0.0021194754981865571 0
		 -0.0025903415120694809 -0.018471326041210597 -0.99982603499065281 0 0.025422314719991436 0.99950502666859864 -0.018531259495307987 0
		 97.04085922467047 150.63810734858535 2.8404601258145403 1;
	setAttr ".i[1]" -type "matrix" 0.99973177778407352 -0.002590341512069487 0.023014400264775463 0
		 -0.02305838549215522 -0.018471326041210601 0.99956346520507389 0 -0.0021641042469351321 -0.99982603499065281 -0.01852610071435035 0
		 -93.535231833187552 5.8738205462252298 -152.76295434935 1;
createNode decomposeMatrix -n "Index3MTPosDM";
	rename -uid "20599B7F-43EF-0A9F-8ABC-2CA7DF4F8851";
createNode multMatrix -n "Index3MTPosMM";
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
createNode decomposeMatrix -n "Middle1MTPosDM";
	rename -uid "02FBE684-4125-978C-B4EF-C3944896ED55";
createNode multMatrix -n "Middle1MTPosMM";
	rename -uid "B39BD948-4A0E-F773-20B1-F994EFFB78CC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177237 -0.033527015660773943 -0.0038699871872255546 0
		 -0.005006985149223174 -0.033895587404145777 -0.99941283724707253 0 0.033376154357003592 0.99886286765271759 -0.03404414699955538 0
		 93.370013612418944 150.95021187848963 0.57113020917691437 1;
	setAttr ".i[1]" -type "matrix" 0.99950071776342841 -0.0050069851492634551 0.031196879493091415 0
		 -0.031348977730412786 -0.033895587404145083 0.99893359676696514 0 -0.0039442091285178636 -0.99941283724707208 -0.034035627805396818 0
		 -88.589008135629328 6.1548432347364859 -153.68265237222207 1;
createNode decomposeMatrix -n "Middle2MTPosDM";
	rename -uid "B21E761E-4CB4-AFDE-EF8F-5782157B766B";
createNode multMatrix -n "Middle2MTPosMM";
	rename -uid "5FDBB067-4E10-B705-02D2-17AD518110B4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177237 -0.033527015660773908 -0.0038699871872255572 0
		 -0.0050069851492231671 -0.033895587404145562 -0.99941283724707297 0 0.033376154357003571 0.99886286765271803 -0.034044146999555165 0
		 97.857700348561153 150.79966737265292 0.55375301955198752 1;
	setAttr ".i[1]" -type "matrix" 0.99941238165056012 -0.0050069851492634534 0.033909018022794071 0
		 -0.034059576755900434 -0.033895587404145083 0.99884485000711531 0 -0.0038518352462235603 -0.99941283724707197 -0.034046205530028371 0
		 -92.6618810628256 6.1548432347364983 -153.93466718002313 1;
createNode decomposeMatrix -n "Middle3MTPosDM";
	rename -uid "2ABB8F65-4F32-9AFA-26DF-F29538CC5BB7";
createNode multMatrix -n "Middle3MTPosMM";
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
createNode decomposeMatrix -n "Ring1MTPosDM";
	rename -uid "4170C31A-4DD4-2DAC-9C60-EE9777798404";
createNode multMatrix -n "Ring1MTPosMM";
	rename -uid "6A19A109-4D28-1009-C0E6-6A9BEFF4EA40";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810549 -0.038031021093150409 -0.0085903621969356941 0
		 -0.0097680762812364964 -0.03089047587943039 -0.99947504380334895 0 0.037745696096722584 0.99879898875326989 -0.031238477741708071 0
		 93.154082170652558 150.89461645822942 -1.676443102405544 1;
	setAttr ".i[1]" -type "matrix" 0.99936721220907643 -0.011305278366015224 0.033724854966713562 2.7105054312137611e-20
		 -0.034058458440637041 -0.03074392536560357 0.998946861680721 8.6736173798840355e-19
		 -0.010256537920095413 -0.9994633568741681 -0.031109511338375775 -2.7105054312137611e-20
		 -87.97309188347252 4.0166822055942744 -153.92946479192935 0.99999999999999989;
createNode decomposeMatrix -n "Ring2MTPosDM";
	rename -uid "7561F629-4D9E-A22B-CB1C-26972221443A";
createNode multMatrix -n "Ring2MTPosMM";
	rename -uid "9AD622A7-4994-2E97-D6FD-2195BAF12F5D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810549 -0.038031021093150333 -0.0085903621969356993 0
		 -0.0097680762812364999 -0.03089047587943039 -0.99947504380334895 0 0.0377456960967225 0.99879898875326989 -0.031238477741708071 0
		 97.184108733149941 150.74123380614492 -1.7110888336601977 1;
	setAttr ".i[1]" -type "matrix" 0.99886450393140225 -0.011303893451950991 0.046280933209047623 0
		 -0.046609185126011421 -0.030743972563478036 0.99843997917396377 0 -0.0098633994019595335 -0.99946337108662608 -0.031235928166045691 0
		 -90.06456982263208 4.0165547042106198 -155.07352383079652 1;
createNode decomposeMatrix -n "Ring3MTPosDM";
	rename -uid "8532E739-4177-BDBD-3471-469D8CD87E92";
createNode multMatrix -n "Ring3MTPosMM";
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
createNode decomposeMatrix -n "Pinky1MTPosDM";
	rename -uid "BA3004ED-4EA7-2BFC-361B-32A66EAA069E";
createNode multMatrix -n "Pinky1MTPosMM";
	rename -uid "9AC69FC7-451E-D9B5-6B2F-8DA098741B06";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99960715170250358 -0.026991391917187267 0.0075502998338379881 0
		 0.0075899251423178337 0.0013659221853454806 -0.99997026320432025 0 0.026980276157631669 0.99963473279941428 0.00157024822927887 0
		 92.641366302969956 150.66454734922621 -3.6852957230148107 1;
	setAttr ".i[1]" -type "matrix" 0.99964857175617783 0.0075899251422941816 0.025399331136242938 0
		 -0.025410403261493353 0.0013659221853478676 0.99967617039853063 0 0.0075527737899681808 -0.99997026320432048 0.0015583052203032599 0
		 -88.752528400005545 -4.5941232172179758 -152.96304363298211 1;
createNode decomposeMatrix -n "Pinky2MTPosDM";
	rename -uid "4B89DA72-4A35-7825-78B5-4AB6C20EAF43";
createNode multMatrix -n "Pinky2MTPosMM";
	rename -uid "F8B03A61-4401-6C33-1E26-07995AB10440";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.9996071517025038 -0.026991391917186969 0.0075502998338379916 0
		 0.0075899251423178372 0.0013659221853454808 -0.99997026320432048 0 0.026980276157631371 0.9996347327994145 0.0015702482292788704 0
		 95.844219205338675 150.57806391641591 -3.6611037194908524 1;
	setAttr ".i[1]" -type "matrix" 0.99959096837408035 0.0075899251422941807 0.027573338232845981 2.7105054312137611e-20
		 -0.027584470354307222 0.0013659221853478641 0.99961854287115748 8.6736173798840355e-19
		 0.0075493668768249304 -0.99997026320432059 0.0015747275450544856 1.6940658945086007e-21
		 -91.623762688726757 -4.5941232172179687 -153.16267209660555 0.99999999999999989;
createNode decomposeMatrix -n "Pinky3MTPosDM";
	rename -uid "7AD3F84E-4BF9-A7C5-1079-C9B298A1BA43";
createNode multMatrix -n "Pinky3MTPosMM";
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
createNode decomposeMatrix -n "Thumb1MTPosDM";
	rename -uid "F2059EEF-41D7-6657-FEAD-7FA81D5B6AFA";
createNode multMatrix -n "Thumb1MTPosMM";
	rename -uid "7635EA89-4CFE-C988-3952-6682F4BC86E9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359103 -0.31597734714601478 0.82228053173504323 0
		 0.38454853069242867 0.91392636409880379 0.12985002328623155 0 -0.79253352252267084 0.2547487332563354 0.55407012063645844 0
		 86.102761534797466 150.24128238008228 1.5874120813427619 1;
	setAttr ".i[1]" -type "matrix" 0.47128336093005002 0.38454853069240991 -0.79373447780273754 0
		 -0.31532854520863612 0.91392636409881578 0.2555513834470946 0 0.82368677437912097 0.12985002328620304 0.55197741726042671 0
		 5.4890358248216007 -170.62628487566454 29.072147280312898 1;
createNode decomposeMatrix -n "Thumb2MTPosDM";
	rename -uid "C06FC42F-4F2D-16A7-FBA7-62B2BBCD4B09";
createNode multMatrix -n "Thumb2MTPosMM";
	rename -uid "568C9332-4570-32B2-2B30-F78C7EE742C6";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359092 -0.31597734714601511 0.82228053173504334 0
		 0.38454853069242922 0.91392636409880346 0.12985002328623158 0 -0.79253352252267073 0.25474873325633574 0.55407012063645866 0
		 87.76977615574998 149.12837581459911 4.4835735014651057 1;
	setAttr ".i[1]" -type "matrix" 0.47326053032592907 0.38454853069241013 -0.79255718908980233 0
		 -0.31596460794179615 0.91392636409881578 0.25476453350752315 0 0.82230823719807578 0.12985002328620338 0.5540290014870749 0
		 1.8944491529673011 -170.62628487566454 29.076960136898364 1;
createNode decomposeMatrix -n "Thumb3MTPosDM";
	rename -uid "6EED04C2-4EE6-CCBB-6FD0-C38A721D55F9";
createNode multMatrix -n "Thumb3MTPosMM";
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
createNode blendColors -n "ArmIKScaleBC";
	rename -uid "1B330C9D-440F-9DD8-0051-98AB95050BA5";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode decomposeMatrix -n "IndexRootJntDM";
	rename -uid "B733E05D-4E96-8916-D9E6-C89EED4FF032";
createNode multMatrix -n "IndexRootJntMM";
	rename -uid "6CE666A5-4034-A513-5016-F9B41DB141A0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338348 -0.025465894417515199 -0.0021194754981865519 0
		 -0.0025903415120695026 -0.018471326041210424 -0.99982603499065281 0 0.025422314719991814 0.99950502666859853 -0.018531259495307775 0
		 84.900426529412769 151.12757526828318 1.9008245305682872 1;
	setAttr ".i[1]" -type "matrix" 0.99967344470338348 -0.0025903415120694813 0.025422314719991339 0
		 -0.025465894417515123 -0.018471326041210614 0.99950502666859842 0 -0.0021194754981865554 -0.9998260349906527 -0.01853125949530798 0
		 -81.020074219068519 4.9119416694406581 -153.17591183934721 1;
createNode quatToEuler -n "IndexRootJntQE";
	rename -uid "D00E58FD-4CA5-71C5-030C-0284D79BEBC6";
	setAttr ".ort" -type "double3" 1.9091093114858892e-14 6.9574633657014427e-15 -9.939233379573374e-17 ;
createNode quatProd -n "IndexRootJntQP";
	rename -uid "7EF2AE5F-43BD-7797-445F-B9A367177B95";
createNode quatInvert -n "IndexRootJntQI";
	rename -uid "871E59F9-445B-698F-EFF5-C1A5CF3F9E00";
createNode eulerToQuat -n "IndexRootJntEQ";
	rename -uid "16561954-4703-CD83-876C-DA932117A502";
createNode multiplyDivide -n "IndexRootScaleMD";
	rename -uid "0886ED15-4374-7738-8D4B-F1B442AD3F9C";
createNode decomposeMatrix -n "Index1JntDM";
	rename -uid "CE599BF8-4A73-0519-E057-F88120B7E0B8";
createNode multMatrix -n "Index1JntMM";
	rename -uid "2D96A53D-4D5A-8E56-4B5B-8D9B061D9D8F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338348 -0.025465894417515199 -0.0021194754981865519 0
		 -0.0025903415120695026 -0.018471326041210424 -0.99982603499065281 0 0.025422314719991814 0.99950502666859853 -0.018531259495307775 0
		 92.932315393672027 150.74276926990004 2.8491709283561395 1;
	setAttr ".i[1]" -type "matrix" 0.99967344470338348 -0.0025903415120694666 0.025422314719991276 0
		 -0.025465894417515234 -0.018471326041210153 0.99950502666859797 0 -0.0021194754981865484 -0.99982603499065281 -0.018531259495307532 0
		 -89.057129659449458 5.873820546225156 -152.9779114629853 1;
createNode quatToEuler -n "Index1JntQE";
	rename -uid "D5C07CE8-4B52-969C-E847-84A2BBAD5F76";
	setAttr ".ort" -type "double3" 0 -0.0051731909291462888 0 ;
createNode quatProd -n "Index1JntQP";
	rename -uid "C6F3D553-4B5C-35CE-C594-6891F232F590";
createNode quatInvert -n "Index1JntQI";
	rename -uid "BDC039A4-48F4-1262-E5FB-A29B3331CD41";
createNode eulerToQuat -n "Index1JntEQ";
	rename -uid "18458261-4E89-20A6-3FF1-63A0C38A28BB";
createNode multiplyDivide -n "IndexScaleMD";
	rename -uid "C07C71F1-4079-502A-2854-B19F739838E4";
createNode decomposeMatrix -n "Index2JntDM";
	rename -uid "34FE86D8-4DE3-50AE-AA00-5D864152054B";
createNode multMatrix -n "Index2JntMM";
	rename -uid "AB773289-40C1-170F-D6B8-E0A53015D5FE";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338348 -0.025465894417515199 -0.0021194754981865519 0
		 -0.0025903415120695026 -0.018471326041210424 -0.99982603499065281 0 0.025422314719991814 0.99950502666859853 -0.018531259495307775 0
		 97.040859224670456 150.63810734858532 2.8404601258144044 1;
	setAttr ".i[1]" -type "matrix" 0.9996734447033836 -0.0025903415120694696 0.025422314719991557 0
		 -0.025465894417515123 -0.018471326041210163 0.99950502666859808 0 -0.0021194754981865502 -0.99982603499065281 -0.018531259495307532 0
		 -93.167015595468797 5.8738205462251551 -152.97791146298539 1;
createNode quatToEuler -n "Index2JntQE";
	rename -uid "3997C50B-4822-A8F5-6483-5CADDCF4F256";
	setAttr ".ort" -type "double3" 0 0.020890349437738587 0 ;
createNode quatProd -n "Index2JntQP";
	rename -uid "B13D9938-497D-C59E-4F12-1BAF59666975";
createNode quatInvert -n "Index2JntQI";
	rename -uid "EE0D46C8-4A68-A03A-2071-BE9FF9F56DB1";
createNode eulerToQuat -n "Index2JntEQ";
	rename -uid "2F9C4B99-462C-23FE-AEB2-2CB87288CFE4";
createNode multiplyDivide -n "Index2CtrlScaleMD";
	rename -uid "66F0D4CE-451A-46C4-7AFE-1DADB22BE43C";
createNode decomposeMatrix -n "Index3JntDM";
	rename -uid "1DFAAAC4-4271-EC43-D262-B9B94401274F";
createNode multMatrix -n "Index3JntMM";
	rename -uid "1FBBF706-4209-7D18-FF5C-01A773690E4F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99967344470338348 -0.025465894417515199 -0.0021194754981865519 0
		 -0.0025903415120695026 -0.018471326041210424 -0.99982603499065281 0 0.025422314719991814 0.99950502666859853 -0.018531259495307775 0
		 99.55811310038159 150.57398228678596 2.835123125076259 1;
	setAttr ".i[1]" -type "matrix" 0.99967344470338337 -0.0025903415120694558 0.025422314719991287 0
		 -0.025465894417515234 -0.018471326041210157 0.99950502666859797 0 -0.0021194754981865502 -0.99982603499065281 -0.018531259495307532 0
		 -95.685091762289446 5.8738205462251551 -152.97791146298536 1;
createNode quatToEuler -n "Index3JntQE";
	rename -uid "2ADBE5CC-44D3-382D-93FE-F1BEC897E240";
	setAttr ".ort" -type "double3" 0 -0.023015231650181465 0 ;
createNode quatProd -n "Index3JntQP";
	rename -uid "FA5EC76D-4DF1-1958-D7C2-6B93D4533F14";
createNode quatInvert -n "Index3JntQI";
	rename -uid "B3422EF3-4AB5-9172-34EC-B898CCCD8FBD";
createNode eulerToQuat -n "Index3JntEQ";
	rename -uid "EF2AA31D-4CC0-0C0D-CA84-DC80B57FE9CB";
createNode pairBlend -n "Index3SubPB";
	rename -uid "B320F30F-4665-4803-93EF-2C9EBF67AAFD";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Index2SubPB";
	rename -uid "85A9F2B0-453D-C29E-EEAA-72A46B9A52AE";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Index1SubPB";
	rename -uid "CD177495-43FF-6B0C-997C-68A7BAF8E404";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode decomposeMatrix -n "MiddleRootJntDM";
	rename -uid "AF74524B-4764-8BA0-07A2-1B9D3E1BDF85";
createNode multMatrix -n "MiddleRootJntMM";
	rename -uid "9D210EF5-4E35-C194-9726-99BA52BB9F2E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177248 -0.033527015660773943 -0.0038699871872255459 0
		 -0.0050069851492232096 -0.033895587404145992 -0.99941283724707197 0 0.033376154357003918 0.99886286765271715 -0.034044146999555679 0
		 85.088839304037151 151.36632590610057 0.31699697099422031 1;
	setAttr ".i[1]" -type "matrix" 0.99943031894177259 -0.0050069851492231827 0.033376154357003522 0
		 -0.033527015660773873 -0.033895587404145965 0.99886286765271737 0 -0.0038699871872255581 -0.99941283724707231 -0.034044146999555623 0
		 -79.964277850635312 5.8734999267346897 -154.02334870381429 1;
createNode quatToEuler -n "MiddleRootJntQE";
	rename -uid "39F84A64-473E-B996-C6C8-31AF3E039FEA";
	setAttr ".ort" -type "double3" 6.3646036246620412e-15 4.4726550208080717e-15 -9.9392333795734899e-16 ;
createNode quatProd -n "MiddleRootJntQP";
	rename -uid "99AB07F7-4C72-BF1B-6345-A986F7B5653D";
createNode quatInvert -n "MiddleRootJntQI";
	rename -uid "AD8E5C40-46B9-2BB8-70F4-20AD7E593F01";
createNode eulerToQuat -n "MiddleRootJntEQ";
	rename -uid "0DA31FC6-42EE-4410-5200-FFBA20A378E1";
createNode multiplyDivide -n "MiddleRootScaleMD";
	rename -uid "F03219EA-4E98-7973-D6A8-E8BFB6FAF65E";
createNode decomposeMatrix -n "Middle1JntDM";
	rename -uid "DD951706-45BD-1AA1-E5B3-8AB2CD693547";
createNode multMatrix -n "Middle1JntMM";
	rename -uid "F1D76FA0-402F-3F95-5715-17A44024D181";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177248 -0.033527015660773943 -0.0038699871872255459 0
		 -0.0050069851492232096 -0.033895587404145992 -0.99941283724707197 0 0.033376154357003918 0.99886286765271715 -0.034044146999555679 0
		 93.370013612418944 150.95021187848963 0.57113020917691437 1;
	setAttr ".i[1]" -type "matrix" 0.99943031894177248 -0.0050069851492231679 0.033376154357003564 0
		 -0.033527015660773873 -0.033895587404145507 0.99886286765271715 0 -0.0038699871872255528 -0.99941283724707219 -0.034044146999555158 0
		 -88.253702100018515 6.1548432347327893 -153.87544985557992 1;
createNode quatToEuler -n "Middle1JntQE";
	rename -uid "C26A035B-43AC-4AE0-41F9-77B9C23ED7B3";
createNode quatProd -n "Middle1JntQP";
	rename -uid "CC909D25-4B8A-EE0F-05B3-0783AE5BED00";
createNode quatInvert -n "Middle1JntQI";
	rename -uid "1863897F-46B3-0E0A-D381-249E534CC148";
createNode eulerToQuat -n "Middle1JntEQ";
	rename -uid "BFA777B5-47F3-65BB-4D97-749453D3758B";
createNode multiplyDivide -n "MiddleScaleMD";
	rename -uid "BD1FD980-456D-413F-8CC1-59ABF5C0763E";
createNode decomposeMatrix -n "Middle2JntDM";
	rename -uid "5D2BFBD9-4685-F2F2-0F19-E5A58323E061";
createNode multMatrix -n "Middle2JntMM";
	rename -uid "A511256B-4ECD-C523-A757-19962196C55D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177248 -0.033527015660773943 -0.0038699871872255459 0
		 -0.0050069851492232096 -0.033895587404145992 -0.99941283724707208 0 0.033376154357003925 0.99886286765271737 -0.034044146999555686 0
		 97.857700348561153 150.79966737265289 0.55375301955198664 1;
	setAttr ".i[1]" -type "matrix" 0.99943031894177248 -0.0050069851492231697 0.033376154357003571 2.7105054312137611e-20
		 -0.033527015660773873 -0.03389558740414552 0.99886286765271748 8.6736173798840355e-19
		 -0.0038699871872255494 -0.99941283724707219 -0.034044146999555165 -2.7105054312137611e-20
		 -92.743946843537827 6.154843234732791 -153.87544985557994 0.99999999999999989;
createNode quatToEuler -n "Middle2JntQE";
	rename -uid "55491C4D-42DC-253F-75A2-5ABAA612B34E";
createNode quatProd -n "Middle2JntQP";
	rename -uid "4F8F8D25-479E-AB91-4D8F-5EA3707916C5";
createNode quatInvert -n "Middle2JntQI";
	rename -uid "8108EB79-43D7-A39D-0C83-DC8BDBFBD1BA";
createNode eulerToQuat -n "Middle2JntEQ";
	rename -uid "38D001EA-48DE-499E-68D8-4BBF788DEC27";
createNode multiplyDivide -n "Middle2CtrlScaleMD";
	rename -uid "AFA4043B-4187-9905-EFF4-6E90F2646D3D";
createNode decomposeMatrix -n "Middle3JntDM";
	rename -uid "DAE5FA75-40BB-A6C8-50EE-B287EA9F612F";
createNode multMatrix -n "Middle3JntMM";
	rename -uid "FB33D6D8-4573-0062-8746-139DEF9E6B79";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99943031894177248 -0.033527015660773943 -0.0038699871872255459 0
		 -0.0050069851492232104 -0.033895587404145999 -0.99941283724707219 0 0.033376154357003938 0.99886286765271781 -0.034044146999555699 0
		 100.84431076112327 150.69947816268319 0.54218828731323687 1;
	setAttr ".i[1]" -type "matrix" 0.99943031894177259 -0.0050069851492231697 0.033376154357003564 0
		 -0.033527015660773984 -0.033895587404145507 0.99886286765271726 0 -0.0038699871872255563 -0.99941283724707242 -0.034044146999555172 0
		 -95.732259641296892 6.1548432347327928 -153.87544985557992 1;
createNode quatToEuler -n "Middle3JntQE";
	rename -uid "5E7EFBA7-4245-C9C7-1758-728824D7A520";
createNode quatProd -n "Middle3JntQP";
	rename -uid "A04E2AD0-4C79-A611-37F7-449AF82D767A";
createNode quatInvert -n "Middle3JntQI";
	rename -uid "74CD8D4B-4CD6-8E6F-FC8B-56B226A845C4";
createNode eulerToQuat -n "Middle3JntEQ";
	rename -uid "369A20B3-4EA0-2DC3-182D-EB804C84B426";
createNode pairBlend -n "Middle3SubPB";
	rename -uid "78BB10D5-4E2D-8310-D252-B2B8C8057963";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Middle2SubPB";
	rename -uid "A57EF03B-4538-8084-76C3-268F5BA01B72";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Middle1SubPB";
	rename -uid "F39F49F6-42BD-0AA9-AA48-9A823C71226F";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode decomposeMatrix -n "RingRootJntDM";
	rename -uid "DA9240DC-44E1-B04D-1245-9E8CDCDC0933";
createNode multMatrix -n "RingRootJntMM";
	rename -uid "FCF72C62-4832-9471-F802-D28BC3D2BE18";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810538 -0.038031021093150416 -0.0085903621969356976 0
		 -0.0097680762812365381 -0.030890475879430494 -0.99947504380334873 0 0.037745696096722944 0.99879898875327 -0.031238477741708039 0
		 85.054094143684807 151.39964097227573 -1.4408647043367719 1;
	setAttr ".i[1]" -type "matrix" 0.99923963447810549 -0.0097680762812364999 0.037745696096722681 0
		 -0.038031021093150486 -0.030890475879430491 0.99879898875326978 0 -0.0085903621969356907 -0.99947504380334884 -0.03123847774170796 0
		 -79.243916553376991 4.06751352375381 -154.47324471004194 1;
createNode quatToEuler -n "RingRootJntQE";
	rename -uid "29977C20-417D-191E-B235-64996D906388";
	setAttr ".ort" -type "double3" 6.3366495307819894e-15 -5.4137761814364353e-15 -2.993693653476257e-31 ;
createNode quatProd -n "RingRootJntQP";
	rename -uid "79090A28-41CE-DF11-CA1F-F38ED91A8FCA";
createNode quatInvert -n "RingRootJntQI";
	rename -uid "A50E52E9-40AE-23B1-B61F-CEB8312D3D7B";
createNode eulerToQuat -n "RingRootJntEQ";
	rename -uid "181D63B7-4133-1780-8DA2-5E833F9BAC0B";
createNode multiplyDivide -n "RingRootScaleMD";
	rename -uid "08F6EFB0-4EB7-E855-9CAC-0D97179F1FF9";
createNode decomposeMatrix -n "Ring1JntDM";
	rename -uid "D565D1EF-43E7-5E92-7C4C-3D8309BFA1F6";
createNode multMatrix -n "Ring1JntMM";
	rename -uid "66686100-462D-6BC4-FC35-2CAFC2DEB5C6";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810538 -0.038031021093150416 -0.0085903621969356976 0
		 -0.0097680762812365381 -0.030890475879430494 -0.99947504380334873 0 0.037745696096722944 0.99879898875327 -0.031238477741708039 0
		 93.154082170652558 150.89461645822942 -1.676443102405544 1;
	setAttr ".i[1]" -type "matrix" 0.99923963447810549 -0.0097680762812365016 0.037745696096722466 0
		 -0.038031021093150152 -0.030890475879430515 0.99879898875327033 0 -0.0085903621969357063 -0.99947504380334906 -0.031238477741707977 0
		 -87.358975930432749 3.8955796473797593 -154.28192553311445 1;
createNode quatToEuler -n "Ring1JntQE";
	rename -uid "B1D351C7-4DF1-BD71-D009-26A42634F76F";
	setAttr ".ort" -type "double3" -0.00026281496306591607 0 1.5648341854411568e-06 ;
createNode quatProd -n "Ring1JntQP";
	rename -uid "B2059CDF-4B9F-1090-61C3-009AC16C5813";
createNode quatInvert -n "Ring1JntQI";
	rename -uid "0FAC8AE7-4202-EDC4-42A1-A197AD0A2802";
createNode eulerToQuat -n "Ring1JntEQ";
	rename -uid "94896D6E-4F6C-476F-4A4F-F29EB859900E";
createNode multiplyDivide -n "RingScaleMD";
	rename -uid "E82D408B-4370-6DB3-38C9-F0AD96554933";
createNode decomposeMatrix -n "Ring2JntDM";
	rename -uid "2B6ACE9A-4B35-4817-5FB8-DC8A1569E5AE";
createNode multMatrix -n "Ring2JntMM";
	rename -uid "73EE3FAA-494A-0A12-705B-3281087678FB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810538 -0.038031021093150416 -0.0085903621969356976 0
		 -0.0097680762812365381 -0.030890475879430494 -0.99947504380334873 0 0.037745696096722944 0.99879898875327 -0.031238477741708039 0
		 97.184108733149955 150.74123380614489 -1.7110888336601988 1;
	setAttr ".i[1]" -type "matrix" 0.99923963447810538 -0.0097680762812365034 0.0377456960967225 0
		 -0.038031021093150263 -0.030890475879430501 0.99879898875327011 0 -0.0085903621969357028 -0.99947504380334884 -0.031238477741707966 0
		 -91.392069117936472 3.8955796473797575 -154.28192553311459 1;
createNode quatToEuler -n "Ring2JntQE";
	rename -uid "D6B685E0-4872-F141-5925-FC83525227F4";
createNode quatProd -n "Ring2JntQP";
	rename -uid "4410F6E5-471C-FC20-8864-8C8B0B77E623";
createNode quatInvert -n "Ring2JntQI";
	rename -uid "6B35465A-4C84-B524-284A-9188E63555EB";
createNode eulerToQuat -n "Ring2JntEQ";
	rename -uid "385CFB84-4744-9F80-6D9F-5199FCD4A2B1";
createNode multiplyDivide -n "Ring2CtrlScaleMD";
	rename -uid "65461A51-4B8E-D4CC-A0E8-81946E13BA32";
createNode decomposeMatrix -n "Ring3JntDM";
	rename -uid "82C266D7-4780-1884-B49C-1C909B3A8FAB";
createNode multMatrix -n "Ring3JntMM";
	rename -uid "6077A30E-40AF-71D7-ADE6-83ADE8821988";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99923963447810582 -0.03803102109315043 -0.0085903621969357011 0
		 -0.0097680762812365415 -0.030890475879430508 -0.99947504380334917 0 0.037745696096722958 0.99879898875327044 -0.031238477741708053 0
		 99.814308165479673 150.64112851944634 -1.7337003924838172 1;
	setAttr ".i[1]" -type "matrix" 0.99923963447810549 -0.009768076281236493 0.03774569609672225 0
		 -0.038031021093150263 -0.030890475879430501 0.99879898875327022 0 -0.0085903621969357028 -0.99947504380334884 -0.031238477741707966 0
		 -94.024269985052243 3.8955796473797561 -154.28192553311465 1;
createNode quatToEuler -n "Ring3JntQE";
	rename -uid "D6DD7076-40F8-842C-EBC1-FD932E518F03";
createNode quatProd -n "Ring3JntQP";
	rename -uid "215BD9D8-40FE-C0A1-88A2-9CB5E9D4A474";
createNode quatInvert -n "Ring3JntQI";
	rename -uid "0F069F0D-4035-39DC-4B78-3997E61A3D0F";
createNode eulerToQuat -n "Ring3JntEQ";
	rename -uid "D43F5E35-4F8F-8910-5A41-A0A811004C77";
createNode pairBlend -n "Ring3SubPB";
	rename -uid "8987D7A5-4EC1-AFAA-F97F-099E2D283884";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Ring2SubPB";
	rename -uid "88FF658C-4216-3800-7A78-9E9D6E697DE0";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Ring1SubPB";
	rename -uid "D9DF3BA0-4104-5D66-F8DC-B1BF592E140B";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode decomposeMatrix -n "PinkyRootJntDM";
	rename -uid "0C9C9BBA-4309-0363-53E5-A4ACD2D3895C";
createNode multMatrix -n "PinkyRootJntMM";
	rename -uid "AF404DF6-48F4-6B1F-9DD2-8697D471717B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99960715170250369 -0.026991391917187278 0.0075502998338379847 0
		 0.007589925142317825 0.0013659221853458102 -0.99997026320432036 0 0.02698027615763202 0.99963473279941406 0.0015702482292790556 0
		 84.938137506243521 151.21576212956913 -2.8811597644937041 1;
	setAttr ".i[1]" -type "matrix" 0.99960715170250369 0.0075899251423178389 0.026980276157631929 0
		 -0.026991391917187246 0.0013659221853454806 0.99963473279941417 0 0.0075502998338379847 -0.99997026320432048 0.0015702482292788695 0
		 -80.801492183745196 -3.7322971577014585 -153.44765824166652 1;
createNode quatToEuler -n "PinkyRootJntQE";
	rename -uid "FB1E1234-4C7A-E191-407B-AD9BD4AE7C73";
	setAttr ".ort" -type "double3" -1.9027419901021e-14 -1.4809457735564499e-14 7.9513867036588166e-16 ;
createNode quatProd -n "PinkyRootJntQP";
	rename -uid "5AB0868C-4076-AD20-048A-D4B79EA41468";
createNode quatInvert -n "PinkyRootJntQI";
	rename -uid "75ADB837-4113-AAF0-DEEC-D5B3ACD80736";
createNode eulerToQuat -n "PinkyRootJntEQ";
	rename -uid "C2B974E0-4EDF-5D5B-9E81-7D9F6C44FAB4";
createNode multiplyDivide -n "PinkyRootScaleMD";
	rename -uid "E78E1A2C-44FB-7623-7961-51BD3B435463";
createNode decomposeMatrix -n "Pinky1JntDM";
	rename -uid "D8CC8979-4AC6-8BCA-7CEB-219110CF314A";
createNode multMatrix -n "Pinky1JntMM";
	rename -uid "CA524418-4B81-7922-16FE-6F9C4B6E116E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99960715170250369 -0.026991391917187278 0.0075502998338379847 0
		 0.007589925142317825 0.0013659221853458102 -0.99997026320432036 0 0.02698027615763202 0.99963473279941406 0.0015702482292790556 0
		 92.641366302969956 150.66454734922621 -3.6852957230148107 1;
	setAttr ".i[1]" -type "matrix" 0.99960715170250358 0.0075899251423178389 0.026980276157631461 2.7105054312137611e-20
		 -0.026991391917186913 0.0013659221853454841 0.99963473279941428 8.6736173798840355e-19
		 0.0075502998338379881 -0.99997026320432025 0.0015702482292788672 1.6940658945086007e-21
		 -88.510501366726444 -4.5941232172198072 -153.10321734917946 0.99999999999999989;
createNode quatToEuler -n "Pinky1JntQE";
	rename -uid "AB9179FF-4C06-7D30-3C18-89B62B1ED2BD";
createNode quatProd -n "Pinky1JntQP";
	rename -uid "9F13C044-424A-D299-2F22-A2B5BCB10303";
createNode quatInvert -n "Pinky1JntQI";
	rename -uid "10219D15-4803-4963-EDAC-FFBC3F1379A9";
createNode eulerToQuat -n "Pinky1JntEQ";
	rename -uid "EE6B6371-4AD2-13F0-52F8-C492A722802D";
createNode multiplyDivide -n "PinkyScaleMD";
	rename -uid "F32751E8-4B93-80D7-1F64-75B73464C8E8";
createNode decomposeMatrix -n "Pinky2JntDM";
	rename -uid "943E5409-418B-B5E3-AA48-92AA2714131C";
createNode multMatrix -n "Pinky2JntMM";
	rename -uid "3351C9A8-4744-2E40-D9EC-F5BD98A327D2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99960715170250369 -0.026991391917187278 0.0075502998338379847 0
		 0.007589925142317825 0.0013659221853458102 -0.99997026320432036 0 0.026980276157632023 0.99963473279941428 0.0015702482292790558 0
		 95.844219205338675 150.57806391641591 -3.6611037194908524 1;
	setAttr ".i[1]" -type "matrix" 0.99960715170250325 0.0075899251423178294 0.026980276157631169 2.7105054312137611e-20
		 -0.026991391917186913 0.0013659221853454875 0.99963473279941406 8.6736173798840355e-19
		 0.0075502998338379864 -0.99997026320432003 0.0015702482292788654 1.6940658945086007e-21
		 -91.714612998894808 -4.5941232172198054 -153.10321734917932 0.99999999999999989;
createNode quatToEuler -n "Pinky2JntQE";
	rename -uid "2C1D82EB-4A66-B08D-4493-E5A2942FF755";
createNode quatProd -n "Pinky2JntQP";
	rename -uid "2D574037-4F75-DD6F-B69A-079816636718";
createNode quatInvert -n "Pinky2JntQI";
	rename -uid "41D244A6-42D4-E5EE-7C30-2D949B2B7FC1";
createNode eulerToQuat -n "Pinky2JntEQ";
	rename -uid "F60FD384-4745-B67E-047A-738612E1A002";
createNode multiplyDivide -n "Pinky2CtrlScaleMD";
	rename -uid "02351BED-409C-2530-3221-A88761283E17";
createNode decomposeMatrix -n "Pinky3JntDM";
	rename -uid "96196929-4962-FC8F-D8B4-02B965001C39";
createNode multMatrix -n "Pinky3JntMM";
	rename -uid "0BC8E630-423F-3D79-AD9C-679DA5257183";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99960715170250369 -0.026991391917187278 0.0075502998338379847 0
		 0.0075899251423178233 0.00136592218534581 -0.99997026320432014 0 0.02698027615763203 0.9996347327994145 0.0015702482292790562 0
		 97.862751004651273 150.52355952156472 -3.6458572096164623 1;
	setAttr ".i[1]" -type "matrix" 0.99960715170250358 0.0075899251423178398 0.026980276157631194 0
		 -0.026991391917186913 0.0013659221853454945 0.99963473279941439 0 0.0075502998338379899 -0.99997026320432048 0.0015702482292788652 0
		 -93.733938086630175 -4.5941232172198099 -153.10321734917946 1;
createNode quatToEuler -n "Pinky3JntQE";
	rename -uid "45079FD1-40AF-4DAF-2999-B78652159643";
createNode quatProd -n "Pinky3JntQP";
	rename -uid "0366CC2B-40FE-6E94-EE92-0DA5D5FDC6F4";
createNode quatInvert -n "Pinky3JntQI";
	rename -uid "7F37BE3D-4317-E749-195F-22A3E9BFF545";
createNode eulerToQuat -n "Pinky3JntEQ";
	rename -uid "E68BFA3C-412F-9E1E-9CCC-99A5406778A2";
createNode pairBlend -n "Pinky3SubPB";
	rename -uid "0FD83925-4975-4455-9371-4EBD0E63EDC1";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Pinky2SubPB";
	rename -uid "0E7A9850-4620-CD0C-DFD2-81A0EB093BD6";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode pairBlend -n "Pinky1SubPB";
	rename -uid "19FD208B-48FE-04CA-C53F-59BCDBEC2977";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
createNode decomposeMatrix -n "ThumbRootJntDM";
	rename -uid "22C8789D-4645-5910-CBC3-D5B4B1BEB07B";
createNode multMatrix -n "ThumbRootJntMM";
	rename -uid "38F9C08D-4E6E-5D7F-72B5-82BE65A34B3E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359108 -0.31597734714601466 0.82228053173504301 0
		 0.38454853069242895 0.91392636409880446 0.12985002328623152 0 -0.79253352252267062 0.25474873325633524 0.55407012063645844 0
		 86.102761534797438 150.24128238008223 1.5874120813427495 1;
	setAttr ".i[1]" -type "matrix" 0.47330016186359114 0.3845485306924285 -0.7925335225226704 0
		 -0.31597734714601466 0.9139263640988039 0.25474873325633557 0 0.82228053173504312 0.12985002328623158 0.55407012063645877 0
		 5.415092816622689 -170.62628487566434 29.086010925559805 1;
createNode quatToEuler -n "ThumbRootJntQE";
	rename -uid "A7FF019A-4EA4-B26F-4F88-8AAEAF205CD9";
	setAttr ".ort" -type "double3" 4.4527765540489222e-14 -1.2722218725854061e-14 -6.3611093629270367e-15 ;
createNode quatProd -n "ThumbRootJntQP";
	rename -uid "351EB723-4D4F-1E74-A03F-6C8373654CD5";
createNode quatInvert -n "ThumbRootJntQI";
	rename -uid "7697BFF3-457F-CE9F-BD06-D8B9EE409D87";
createNode eulerToQuat -n "ThumbRootJntEQ";
	rename -uid "CC09982F-4935-847C-9EBD-21AAF2A5CE08";
createNode multiplyDivide -n "ThumbRootScaleMD";
	rename -uid "1DA20D01-40A0-0713-20F0-CCA415C8BDE4";
createNode decomposeMatrix -n "Thumb1JntDM";
	rename -uid "E27DA146-4830-D723-E1A8-26862D71D0CE";
createNode multMatrix -n "Thumb1JntMM";
	rename -uid "30ACBD0E-43C6-AE5F-B1A1-41AE5B35D515";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359108 -0.31597734714601466 0.82228053173504301 0
		 0.38454853069242895 0.91392636409880446 0.12985002328623152 0 -0.79253352252267062 0.25474873325633524 0.55407012063645844 0
		 86.102761534797466 150.24128238008228 1.5874120813427619 1;
	setAttr ".i[1]" -type "matrix" 0.47330016186359097 0.38454853069242906 -0.79253352252267062 0
		 -0.31597734714601511 0.9139263640988039 0.25474873325633585 0 0.82228053173504301 0.12985002328623166 0.55407012063645855 0
		 5.4150928166227699 -170.62628487566445 29.086010925559787 1;
createNode quatToEuler -n "Thumb1JntQE";
	rename -uid "FB02C388-4223-84A6-F51A-E4A928195C5C";
createNode quatProd -n "Thumb1JntQP";
	rename -uid "D5FF4FE4-45E1-D00D-46A9-9583F529235E";
createNode quatInvert -n "Thumb1JntQI";
	rename -uid "B693B2A0-4094-07A9-C585-CABA1F7708B5";
createNode eulerToQuat -n "Thumb1JntEQ";
	rename -uid "7DA5422B-44D5-5CE7-5D31-7CB117124796";
createNode multiplyDivide -n "ThumbScaleMD";
	rename -uid "F7E48650-42B4-F678-0EBC-04808ECD52E6";
createNode decomposeMatrix -n "Thumb2JntDM";
	rename -uid "D58DD67A-497B-3DB3-3E83-848DBF59FF9E";
createNode multMatrix -n "Thumb2JntMM";
	rename -uid "962DC4D6-4EA1-E7CB-36D8-20BC139CB632";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359108 -0.31597734714601466 0.82228053173504301 0
		 0.38454853069242884 0.91392636409880423 0.12985002328623149 0 -0.79253352252267084 0.25474873325633529 0.55407012063645855 0
		 87.769776155749952 149.12837581459908 4.4835735014651057 1;
	setAttr ".i[1]" -type "matrix" 0.47330016186359092 0.38454853069242945 -0.79253352252267084 0
		 -0.31597734714601516 0.91392636409880357 0.2547487332563359 0 0.82228053173504323 0.1298500232862318 0.55407012063645866 0
		 1.8929841099855185 -170.62628487566437 29.086010925559705 1;
createNode quatToEuler -n "Thumb2JntQE";
	rename -uid "C76F4428-4B0C-D4FF-7F6E-5A9C515405EA";
createNode quatProd -n "Thumb2JntQP";
	rename -uid "E1A3AFBB-456F-E8BD-0AEB-1DBBC163A7B5";
createNode quatInvert -n "Thumb2JntQI";
	rename -uid "7463BADD-4D70-6D51-8849-4285B91F1BE5";
createNode eulerToQuat -n "Thumb2JntEQ";
	rename -uid "EA5CEB01-4DAE-D4A4-4F73-DDBA16A8EF3C";
createNode multiplyDivide -n "Thumb2CtrlScaleMD";
	rename -uid "9A9C9D38-4CC9-1993-5C3E-6B8D59DEE029";
createNode decomposeMatrix -n "Thumb3JntDM";
	rename -uid "51A7CA16-4839-9F77-0377-20B12CA16A6E";
createNode multMatrix -n "Thumb3JntMM";
	rename -uid "44B4E827-499E-1E27-D49F-B283945AF10F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.47330016186359108 -0.31597734714601466 0.82228053173504301 0
		 0.38454853069242884 0.91392636409880423 0.12985002328623149 0 -0.79253352252267084 0.25474873325633529 0.55407012063645855 0
		 89.297064552492301 148.10875111379733 7.1369837814050037 1;
	setAttr ".i[1]" -type "matrix" 0.47330016186359097 0.38454853069242911 -0.79253352252267062 0
		 -0.31597734714601516 0.91392636409880346 0.2547487332563359 0 0.82228053173504323 0.12985002328623177 0.55407012063645844 0
		 -1.3339076593491261 -170.62628487566428 29.086010925559687 1;
createNode quatToEuler -n "Thumb3JntQE";
	rename -uid "88645B5A-46BE-9E1F-256B-28806A9145F0";
createNode quatProd -n "Thumb3JntQP";
	rename -uid "830CC849-4433-B890-4FB4-168E299A1E3E";
createNode quatInvert -n "Thumb3JntQI";
	rename -uid "A6098671-47A4-0B0B-C032-77A893892F58";
createNode eulerToQuat -n "Thumb3JntEQ";
	rename -uid "65A372A5-4DB6-978E-AF69-98BB3E4D7600";
createNode pairBlend -n "Thumb3SubPB";
	rename -uid "0BB97B3E-41B6-7AC9-0C99-7083B6189B5B";
	setAttr ".w" 0.5;
	setAttr ".ri" 1;
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
connectAttr "WristConsGrp.msg" "FingerRigGrp.Grp[0]";
connectAttr "WristIKScaleGrp.msg" "FingerRigGrp.Grp[1]";
connectAttr "FingerCtrl.msg" "FingerRigGrp.Ctrl[0]";
connectAttr "IndexRigGrp.msg" "FingerRigGrp.Part[0]";
connectAttr "MiddleRigGrp.msg" "FingerRigGrp.Part[1]";
connectAttr "RingRigGrp.msg" "FingerRigGrp.Part[2]";
connectAttr "PinkyRigGrp.msg" "FingerRigGrp.Part[3]";
connectAttr "ThumbRigGrp.msg" "FingerRigGrp.Part[4]";
connectAttr "WristFKScaleBC.op" "WristConsGrp.s";
connectAttr "WristIKScaleBC.op" "WristIKScaleGrp.s";
connectAttr "Index1IKJnt.msg" "IndexRigGrp.IKJnt[0]";
connectAttr "Index2IKJnt.msg" "IndexRigGrp.IKJnt[1]";
connectAttr "Index3IKJnt.msg" "IndexRigGrp.IKJnt[2]";
connectAttr "Index4IKJnt.msg" "IndexRigGrp.IKJnt[3]";
connectAttr "IndexIKCtrl.msg" "IndexRigGrp.Ctrl[0]";
connectAttr "Index2Ctrl.msg" "IndexRigGrp.Ctrl[1]";
connectAttr "Index3Ctrl.msg" "IndexRigGrp.Ctrl[2]";
connectAttr "Index4Ctrl.msg" "IndexRigGrp.Ctrl[3]";
connectAttr "Index1Ctrl.msg" "IndexRigGrp.Ctrl[4]";
connectAttr "FingerCtrl.FKCtrlVis" "Index1CtrlShape.v";
connectAttr "FingerCtrl.IKCtrlVis" "IndexIKCtrlGrp.v";
connectAttr "Index1IKJnt.s" "Index2IKJnt.is";
connectAttr "Index2IKJnt.s" "Index3IKJnt.is";
connectAttr "Index3IKJnt.s" "Index4IKJnt.is";
connectAttr "Index1MTPosDM.ot" "Index1MTPos.t";
connectAttr "Index1MTPosDM.or" "Index1MTPos.r";
connectAttr "Index2MTPosDM.ot" "Index2MTPos.t";
connectAttr "Index2MTPosDM.or" "Index2MTPos.r";
connectAttr "Index3MTPosDM.ot" "Index3MTPos.t";
connectAttr "Index3MTPosDM.or" "Index3MTPos.r";
connectAttr "FingerCtrl.FKCtrlVis" "Index1CtrlPos.v";
connectAttr "Index1MTPos.t" "Index1CtrlPos.t";
connectAttr "Index1MTPos.r" "Index1CtrlPos.r";
connectAttr "unitConversion8.o" "Index1CtrlOff.ry";
connectAttr "unitConversion11.o" "Index1CtrlOff.rz";
connectAttr "unitConversion12.o" "Index1CtrlOff.rx";
connectAttr "FingerCtrl.FKCtrlVis" "Index2CtrlPos.v";
connectAttr "Index2MTPos.t" "Index2CtrlPos.t";
connectAttr "Index2MTPos.r" "Index2CtrlPos.r";
connectAttr "unitConversion9.o" "Index2CtrlOff.ry";
connectAttr "FingerCtrl.FKCtrlVis" "Index3CtrlPos.v";
connectAttr "Index3MTPos.t" "Index3CtrlPos.t";
connectAttr "Index3MTPos.r" "Index3CtrlPos.r";
connectAttr "unitConversion10.o" "Index3CtrlOff.ry";
connectAttr "IndexAMGrpAMCons.crx" "IndexAMGrp.rx";
connectAttr "IndexAMGrpAMCons.cry" "IndexAMGrp.ry";
connectAttr "IndexAMGrpAMCons.crz" "IndexAMGrp.rz";
connectAttr "IndexAMGrp.pim" "IndexAMGrpAMCons.cpim";
connectAttr "IndexAMGrp.t" "IndexAMGrpAMCons.ct";
connectAttr "IndexAMGrp.rp" "IndexAMGrpAMCons.crp";
connectAttr "IndexAMGrp.rpt" "IndexAMGrpAMCons.crt";
connectAttr "IndexAMGrp.ro" "IndexAMGrpAMCons.cro";
connectAttr "IndexIKCtrl.t" "IndexAMGrpAMCons.tg[0].tt";
connectAttr "IndexIKCtrl.rp" "IndexAMGrpAMCons.tg[0].trp";
connectAttr "IndexIKCtrl.rpt" "IndexAMGrpAMCons.tg[0].trt";
connectAttr "IndexIKCtrl.pm" "IndexAMGrpAMCons.tg[0].tpm";
connectAttr "IndexAMGrpAMCons.w0" "IndexAMGrpAMCons.tg[0].tw";
connectAttr "IndexAMUpvec.wm" "IndexAMGrpAMCons.wum";
connectAttr "Middle1IKJnt.msg" "MiddleRigGrp.IKJnt[0]";
connectAttr "Middle2IKJnt.msg" "MiddleRigGrp.IKJnt[1]";
connectAttr "Middle3IKJnt.msg" "MiddleRigGrp.IKJnt[2]";
connectAttr "Middle4IKJnt.msg" "MiddleRigGrp.IKJnt[3]";
connectAttr "MiddleIKCtrl.msg" "MiddleRigGrp.Ctrl[0]";
connectAttr "Middle2Ctrl.msg" "MiddleRigGrp.Ctrl[1]";
connectAttr "Middle3Ctrl.msg" "MiddleRigGrp.Ctrl[2]";
connectAttr "Middle4Ctrl.msg" "MiddleRigGrp.Ctrl[3]";
connectAttr "Middle1Ctrl.msg" "MiddleRigGrp.Ctrl[4]";
connectAttr "FingerCtrl.FKCtrlVis" "Middle1CtrlShape.v";
connectAttr "FingerCtrl.IKCtrlVis" "MiddleIKCtrlGrp.v";
connectAttr "Middle1IKJnt.s" "Middle2IKJnt.is";
connectAttr "Middle2IKJnt.s" "Middle3IKJnt.is";
connectAttr "Middle3IKJnt.s" "Middle4IKJnt.is";
connectAttr "Middle1MTPosDM.ot" "Middle1MTPos.t";
connectAttr "Middle1MTPosDM.or" "Middle1MTPos.r";
connectAttr "Middle2MTPosDM.ot" "Middle2MTPos.t";
connectAttr "Middle2MTPosDM.or" "Middle2MTPos.r";
connectAttr "Middle3MTPosDM.ot" "Middle3MTPos.t";
connectAttr "Middle3MTPosDM.or" "Middle3MTPos.r";
connectAttr "FingerCtrl.FKCtrlVis" "Middle1CtrlPos.v";
connectAttr "Middle1MTPos.t" "Middle1CtrlPos.t";
connectAttr "Middle1MTPos.r" "Middle1CtrlPos.r";
connectAttr "unitConversion13.o" "Middle1CtrlOff.ry";
connectAttr "unitConversion16.o" "Middle1CtrlOff.rz";
connectAttr "unitConversion17.o" "Middle1CtrlOff.rx";
connectAttr "FingerCtrl.FKCtrlVis" "Middle2CtrlPos.v";
connectAttr "Middle2MTPos.t" "Middle2CtrlPos.t";
connectAttr "Middle2MTPos.r" "Middle2CtrlPos.r";
connectAttr "unitConversion14.o" "Middle2CtrlOff.ry";
connectAttr "FingerCtrl.FKCtrlVis" "Middle3CtrlPos.v";
connectAttr "Middle3MTPos.t" "Middle3CtrlPos.t";
connectAttr "Middle3MTPos.r" "Middle3CtrlPos.r";
connectAttr "unitConversion15.o" "Middle3CtrlOff.ry";
connectAttr "MiddleAMGrpAMCons.crx" "MiddleAMGrp.rx";
connectAttr "MiddleAMGrpAMCons.cry" "MiddleAMGrp.ry";
connectAttr "MiddleAMGrpAMCons.crz" "MiddleAMGrp.rz";
connectAttr "MiddleAMGrp.pim" "MiddleAMGrpAMCons.cpim";
connectAttr "MiddleAMGrp.t" "MiddleAMGrpAMCons.ct";
connectAttr "MiddleAMGrp.rp" "MiddleAMGrpAMCons.crp";
connectAttr "MiddleAMGrp.rpt" "MiddleAMGrpAMCons.crt";
connectAttr "MiddleAMGrp.ro" "MiddleAMGrpAMCons.cro";
connectAttr "MiddleIKCtrl.t" "MiddleAMGrpAMCons.tg[0].tt";
connectAttr "MiddleIKCtrl.rp" "MiddleAMGrpAMCons.tg[0].trp";
connectAttr "MiddleIKCtrl.rpt" "MiddleAMGrpAMCons.tg[0].trt";
connectAttr "MiddleIKCtrl.pm" "MiddleAMGrpAMCons.tg[0].tpm";
connectAttr "MiddleAMGrpAMCons.w0" "MiddleAMGrpAMCons.tg[0].tw";
connectAttr "MiddleAMUpvec.wm" "MiddleAMGrpAMCons.wum";
connectAttr "Ring1IKJnt.msg" "RingRigGrp.IKJnt[0]";
connectAttr "Ring2IKJnt.msg" "RingRigGrp.IKJnt[1]";
connectAttr "Ring3IKJnt.msg" "RingRigGrp.IKJnt[2]";
connectAttr "Ring4IKJnt.msg" "RingRigGrp.IKJnt[3]";
connectAttr "RingIKCtrl.msg" "RingRigGrp.Ctrl[0]";
connectAttr "Ring2Ctrl.msg" "RingRigGrp.Ctrl[1]";
connectAttr "Ring3Ctrl.msg" "RingRigGrp.Ctrl[2]";
connectAttr "Ring4Ctrl.msg" "RingRigGrp.Ctrl[3]";
connectAttr "Ring1Ctrl.msg" "RingRigGrp.Ctrl[4]";
connectAttr "FingerCtrl.FKCtrlVis" "Ring1CtrlShape.v";
connectAttr "FingerCtrl.IKCtrlVis" "RingIKCtrlGrp.v";
connectAttr "Ring1IKJnt.s" "Ring2IKJnt.is";
connectAttr "Ring2IKJnt.s" "Ring3IKJnt.is";
connectAttr "Ring3IKJnt.s" "Ring4IKJnt.is";
connectAttr "Ring1MTPosDM.ot" "Ring1MTPos.t";
connectAttr "Ring1MTPosDM.or" "Ring1MTPos.r";
connectAttr "Ring2MTPosDM.ot" "Ring2MTPos.t";
connectAttr "Ring2MTPosDM.or" "Ring2MTPos.r";
connectAttr "Ring3MTPosDM.ot" "Ring3MTPos.t";
connectAttr "Ring3MTPosDM.or" "Ring3MTPos.r";
connectAttr "FingerCtrl.FKCtrlVis" "Ring1CtrlPos.v";
connectAttr "Ring1MTPos.t" "Ring1CtrlPos.t";
connectAttr "Ring1MTPos.r" "Ring1CtrlPos.r";
connectAttr "unitConversion18.o" "Ring1CtrlOff.ry";
connectAttr "unitConversion21.o" "Ring1CtrlOff.rz";
connectAttr "unitConversion22.o" "Ring1CtrlOff.rx";
connectAttr "FingerCtrl.FKCtrlVis" "Ring2CtrlPos.v";
connectAttr "Ring2MTPos.t" "Ring2CtrlPos.t";
connectAttr "Ring2MTPos.r" "Ring2CtrlPos.r";
connectAttr "unitConversion19.o" "Ring2CtrlOff.ry";
connectAttr "FingerCtrl.FKCtrlVis" "Ring3CtrlPos.v";
connectAttr "Ring3MTPos.t" "Ring3CtrlPos.t";
connectAttr "Ring3MTPos.r" "Ring3CtrlPos.r";
connectAttr "unitConversion20.o" "Ring3CtrlOff.ry";
connectAttr "RingAMGrpAMCons.crx" "RingAMGrp.rx";
connectAttr "RingAMGrpAMCons.cry" "RingAMGrp.ry";
connectAttr "RingAMGrpAMCons.crz" "RingAMGrp.rz";
connectAttr "RingAMGrp.pim" "RingAMGrpAMCons.cpim";
connectAttr "RingAMGrp.t" "RingAMGrpAMCons.ct";
connectAttr "RingAMGrp.rp" "RingAMGrpAMCons.crp";
connectAttr "RingAMGrp.rpt" "RingAMGrpAMCons.crt";
connectAttr "RingAMGrp.ro" "RingAMGrpAMCons.cro";
connectAttr "RingIKCtrl.t" "RingAMGrpAMCons.tg[0].tt";
connectAttr "RingIKCtrl.rp" "RingAMGrpAMCons.tg[0].trp";
connectAttr "RingIKCtrl.rpt" "RingAMGrpAMCons.tg[0].trt";
connectAttr "RingIKCtrl.pm" "RingAMGrpAMCons.tg[0].tpm";
connectAttr "RingAMGrpAMCons.w0" "RingAMGrpAMCons.tg[0].tw";
connectAttr "RingAMUpvec.wm" "RingAMGrpAMCons.wum";
connectAttr "Pinky1IKJnt.msg" "PinkyRigGrp.IKJnt[0]";
connectAttr "Pinky2IKJnt.msg" "PinkyRigGrp.IKJnt[1]";
connectAttr "Pinky3IKJnt.msg" "PinkyRigGrp.IKJnt[2]";
connectAttr "Pinky4IKJnt.msg" "PinkyRigGrp.IKJnt[3]";
connectAttr "PinkyIKCtrl.msg" "PinkyRigGrp.Ctrl[0]";
connectAttr "Pinky2Ctrl.msg" "PinkyRigGrp.Ctrl[1]";
connectAttr "Pinky3Ctrl.msg" "PinkyRigGrp.Ctrl[2]";
connectAttr "Pinky4Ctrl.msg" "PinkyRigGrp.Ctrl[3]";
connectAttr "Pinky1Ctrl.msg" "PinkyRigGrp.Ctrl[4]";
connectAttr "FingerCtrl.FKCtrlVis" "Pinky1CtrlShape.v";
connectAttr "FingerCtrl.IKCtrlVis" "PinkyIKCtrlGrp.v";
connectAttr "Pinky1IKJnt.s" "Pinky2IKJnt.is";
connectAttr "Pinky2IKJnt.s" "Pinky3IKJnt.is";
connectAttr "Pinky3IKJnt.s" "Pinky4IKJnt.is";
connectAttr "Pinky1MTPosDM.ot" "Pinky1MTPos.t";
connectAttr "Pinky1MTPosDM.or" "Pinky1MTPos.r";
connectAttr "Pinky2MTPosDM.ot" "Pinky2MTPos.t";
connectAttr "Pinky2MTPosDM.or" "Pinky2MTPos.r";
connectAttr "Pinky3MTPosDM.ot" "Pinky3MTPos.t";
connectAttr "Pinky3MTPosDM.or" "Pinky3MTPos.r";
connectAttr "FingerCtrl.FKCtrlVis" "Pinky1CtrlPos.v";
connectAttr "Pinky1MTPos.t" "Pinky1CtrlPos.t";
connectAttr "Pinky1MTPos.r" "Pinky1CtrlPos.r";
connectAttr "unitConversion23.o" "Pinky1CtrlOff.ry";
connectAttr "unitConversion26.o" "Pinky1CtrlOff.rz";
connectAttr "unitConversion27.o" "Pinky1CtrlOff.rx";
connectAttr "FingerCtrl.FKCtrlVis" "Pinky2CtrlPos.v";
connectAttr "Pinky2MTPos.t" "Pinky2CtrlPos.t";
connectAttr "Pinky2MTPos.r" "Pinky2CtrlPos.r";
connectAttr "unitConversion24.o" "Pinky2CtrlOff.ry";
connectAttr "FingerCtrl.FKCtrlVis" "Pinky3CtrlPos.v";
connectAttr "Pinky3MTPos.t" "Pinky3CtrlPos.t";
connectAttr "Pinky3MTPos.r" "Pinky3CtrlPos.r";
connectAttr "unitConversion25.o" "Pinky3CtrlOff.ry";
connectAttr "PinkyAMGrpAMCons.crx" "PinkyAMGrp.rx";
connectAttr "PinkyAMGrpAMCons.cry" "PinkyAMGrp.ry";
connectAttr "PinkyAMGrpAMCons.crz" "PinkyAMGrp.rz";
connectAttr "PinkyAMGrp.pim" "PinkyAMGrpAMCons.cpim";
connectAttr "PinkyAMGrp.t" "PinkyAMGrpAMCons.ct";
connectAttr "PinkyAMGrp.rp" "PinkyAMGrpAMCons.crp";
connectAttr "PinkyAMGrp.rpt" "PinkyAMGrpAMCons.crt";
connectAttr "PinkyAMGrp.ro" "PinkyAMGrpAMCons.cro";
connectAttr "PinkyIKCtrl.t" "PinkyAMGrpAMCons.tg[0].tt";
connectAttr "PinkyIKCtrl.rp" "PinkyAMGrpAMCons.tg[0].trp";
connectAttr "PinkyIKCtrl.rpt" "PinkyAMGrpAMCons.tg[0].trt";
connectAttr "PinkyIKCtrl.pm" "PinkyAMGrpAMCons.tg[0].tpm";
connectAttr "PinkyAMGrpAMCons.w0" "PinkyAMGrpAMCons.tg[0].tw";
connectAttr "PinkyAMUpvec.wm" "PinkyAMGrpAMCons.wum";
connectAttr "Thumb1IKJnt.msg" "ThumbRigGrp.IKJnt[0]";
connectAttr "Thumb2IKJnt.msg" "ThumbRigGrp.IKJnt[1]";
connectAttr "Thumb3IKJnt.msg" "ThumbRigGrp.IKJnt[2]";
connectAttr "Thumb4IKJnt.msg" "ThumbRigGrp.IKJnt[3]";
connectAttr "ThumbIKCtrl.msg" "ThumbRigGrp.Ctrl[0]";
connectAttr "Thumb2Ctrl.msg" "ThumbRigGrp.Ctrl[1]";
connectAttr "Thumb3Ctrl.msg" "ThumbRigGrp.Ctrl[2]";
connectAttr "Thumb4Ctrl.msg" "ThumbRigGrp.Ctrl[3]";
connectAttr "Thumb1Ctrl.msg" "ThumbRigGrp.Ctrl[4]";
connectAttr "FingerCtrl.FKCtrlVis" "Thumb1CtrlShape.v";
connectAttr "FingerCtrl.IKCtrlVis" "ThumbIKCtrlGrp.v";
connectAttr "Thumb1IKJnt.s" "Thumb2IKJnt.is";
connectAttr "Thumb2IKJnt.s" "Thumb3IKJnt.is";
connectAttr "Thumb3IKJnt.s" "Thumb4IKJnt.is";
connectAttr "Thumb1MTPosDM.ot" "Thumb1MTPos.t";
connectAttr "Thumb1MTPosDM.or" "Thumb1MTPos.r";
connectAttr "Thumb2MTPosDM.ot" "Thumb2MTPos.t";
connectAttr "Thumb2MTPosDM.or" "Thumb2MTPos.r";
connectAttr "Thumb3MTPosDM.ot" "Thumb3MTPos.t";
connectAttr "Thumb3MTPosDM.or" "Thumb3MTPos.r";
connectAttr "FingerCtrl.FKCtrlVis" "Thumb1CtrlPos.v";
connectAttr "Thumb1MTPos.t" "Thumb1CtrlPos.t";
connectAttr "Thumb1MTPos.r" "Thumb1CtrlPos.r";
connectAttr "unitConversion28.o" "Thumb1CtrlOff.ry";
connectAttr "unitConversion31.o" "Thumb1CtrlOff.rz";
connectAttr "unitConversion32.o" "Thumb1CtrlOff.rx";
connectAttr "FingerCtrl.FKCtrlVis" "Thumb2CtrlPos.v";
connectAttr "Thumb2MTPos.t" "Thumb2CtrlPos.t";
connectAttr "Thumb2MTPos.r" "Thumb2CtrlPos.r";
connectAttr "unitConversion29.o" "Thumb2CtrlOff.ry";
connectAttr "FingerCtrl.FKCtrlVis" "Thumb3CtrlPos.v";
connectAttr "Thumb3MTPos.t" "Thumb3CtrlPos.t";
connectAttr "Thumb3MTPos.r" "Thumb3CtrlPos.r";
connectAttr "unitConversion30.o" "Thumb3CtrlOff.ry";
connectAttr "ThumbAMGrpAMCons.crx" "ThumbAMGrp.rx";
connectAttr "ThumbAMGrpAMCons.cry" "ThumbAMGrp.ry";
connectAttr "ThumbAMGrpAMCons.crz" "ThumbAMGrp.rz";
connectAttr "ThumbAMGrp.pim" "ThumbAMGrpAMCons.cpim";
connectAttr "ThumbAMGrp.t" "ThumbAMGrpAMCons.ct";
connectAttr "ThumbAMGrp.rp" "ThumbAMGrpAMCons.crp";
connectAttr "ThumbAMGrp.rpt" "ThumbAMGrpAMCons.crt";
connectAttr "ThumbAMGrp.ro" "ThumbAMGrpAMCons.cro";
connectAttr "ThumbIKCtrl.t" "ThumbAMGrpAMCons.tg[0].tt";
connectAttr "ThumbIKCtrl.rp" "ThumbAMGrpAMCons.tg[0].trp";
connectAttr "ThumbIKCtrl.rpt" "ThumbAMGrpAMCons.tg[0].trt";
connectAttr "ThumbIKCtrl.pm" "ThumbAMGrpAMCons.tg[0].tpm";
connectAttr "ThumbAMGrpAMCons.w0" "ThumbAMGrpAMCons.tg[0].tw";
connectAttr "ThumbAMUpvec.wm" "ThumbAMGrpAMCons.wum";
connectAttr "ArmIKScaleBC.op" "ArmIKConnectGrp.s";
connectAttr "WristJnt.s" "IndexRootJnt.is";
connectAttr "Index1Ctrl.s" "IndexRootJnt.s";
connectAttr "IndexRootJntDM.ot" "IndexRootJnt.t";
connectAttr "IndexRootJntQE.ort" "IndexRootJnt.r";
connectAttr "IndexRootJnt.s" "Index1Jnt.is";
connectAttr "IndexRootScaleMD.o" "Index1Jnt.s";
connectAttr "Index1JntDM.ot" "Index1Jnt.t";
connectAttr "Index1JntQE.ort" "Index1Jnt.r";
connectAttr "Index1Jnt.s" "Index2Jnt.is";
connectAttr "IndexScaleMD.o" "Index2Jnt.s";
connectAttr "Index2JntDM.ot" "Index2Jnt.t";
connectAttr "Index2JntQE.ort" "Index2Jnt.r";
connectAttr "Index2Jnt.s" "Index3Jnt.is";
connectAttr "Index2CtrlScaleMD.o" "Index3Jnt.s";
connectAttr "Index3JntDM.ot" "Index3Jnt.t";
connectAttr "Index3JntQE.ort" "Index3Jnt.r";
connectAttr "Index3Jnt.s" "Index4Jnt.is";
connectAttr "Index3Jnt.t" "Index3SubJnt.t";
connectAttr "Index3SubPB.orx" "Index3SubJnt.rx";
connectAttr "Index3SubPB.ory" "Index3SubJnt.ry";
connectAttr "Index3SubPB.orz" "Index3SubJnt.rz";
connectAttr "Index2Jnt.s" "Index3SubJnt.is";
connectAttr "Index3Jnt.sx" "Index3SubJnt.sx";
connectAttr "Index3Jnt.sy" "Index3SubJnt.sy";
connectAttr "Index3Jnt.sz" "Index3SubJnt.sz";
connectAttr "Index2Jnt.t" "Index2SubJnt.t";
connectAttr "Index2SubPB.orx" "Index2SubJnt.rx";
connectAttr "Index2SubPB.ory" "Index2SubJnt.ry";
connectAttr "Index2SubPB.orz" "Index2SubJnt.rz";
connectAttr "Index1Jnt.s" "Index2SubJnt.is";
connectAttr "Index2Jnt.sx" "Index2SubJnt.sx";
connectAttr "Index2Jnt.sy" "Index2SubJnt.sy";
connectAttr "Index2Jnt.sz" "Index2SubJnt.sz";
connectAttr "Index1Jnt.t" "Index1SubJnt.t";
connectAttr "Index1SubPB.orx" "Index1SubJnt.rx";
connectAttr "Index1SubPB.ory" "Index1SubJnt.ry";
connectAttr "Index1SubPB.orz" "Index1SubJnt.rz";
connectAttr "IndexRootJnt.s" "Index1SubJnt.is";
connectAttr "Index1Jnt.sx" "Index1SubJnt.sx";
connectAttr "Index1Jnt.sy" "Index1SubJnt.sy";
connectAttr "Index1Jnt.sz" "Index1SubJnt.sz";
connectAttr "WristJnt.s" "MiddleRootJnt.is";
connectAttr "Middle1Ctrl.s" "MiddleRootJnt.s";
connectAttr "MiddleRootJntDM.ot" "MiddleRootJnt.t";
connectAttr "MiddleRootJntQE.ort" "MiddleRootJnt.r";
connectAttr "MiddleRootJnt.s" "Middle1Jnt.is";
connectAttr "MiddleRootScaleMD.o" "Middle1Jnt.s";
connectAttr "Middle1JntDM.ot" "Middle1Jnt.t";
connectAttr "Middle1JntQE.ort" "Middle1Jnt.r";
connectAttr "Middle1Jnt.s" "Middle2Jnt.is";
connectAttr "MiddleScaleMD.o" "Middle2Jnt.s";
connectAttr "Middle2JntDM.ot" "Middle2Jnt.t";
connectAttr "Middle2JntQE.ort" "Middle2Jnt.r";
connectAttr "Middle2Jnt.s" "Middle3Jnt.is";
connectAttr "Middle2CtrlScaleMD.o" "Middle3Jnt.s";
connectAttr "Middle3JntDM.ot" "Middle3Jnt.t";
connectAttr "Middle3JntQE.ort" "Middle3Jnt.r";
connectAttr "Middle3Jnt.s" "Middle4Jnt.is";
connectAttr "Middle3Jnt.t" "Middle3SubJnt.t";
connectAttr "Middle3SubPB.orx" "Middle3SubJnt.rx";
connectAttr "Middle3SubPB.ory" "Middle3SubJnt.ry";
connectAttr "Middle3SubPB.orz" "Middle3SubJnt.rz";
connectAttr "Middle2Jnt.s" "Middle3SubJnt.is";
connectAttr "Middle3Jnt.sx" "Middle3SubJnt.sx";
connectAttr "Middle3Jnt.sy" "Middle3SubJnt.sy";
connectAttr "Middle3Jnt.sz" "Middle3SubJnt.sz";
connectAttr "Middle2Jnt.t" "Middle2SubJnt.t";
connectAttr "Middle2SubPB.orx" "Middle2SubJnt.rx";
connectAttr "Middle2SubPB.ory" "Middle2SubJnt.ry";
connectAttr "Middle2SubPB.orz" "Middle2SubJnt.rz";
connectAttr "Middle1Jnt.s" "Middle2SubJnt.is";
connectAttr "Middle2Jnt.sx" "Middle2SubJnt.sx";
connectAttr "Middle2Jnt.sy" "Middle2SubJnt.sy";
connectAttr "Middle2Jnt.sz" "Middle2SubJnt.sz";
connectAttr "Middle1Jnt.t" "Middle1SubJnt.t";
connectAttr "Middle1SubPB.orx" "Middle1SubJnt.rx";
connectAttr "Middle1SubPB.ory" "Middle1SubJnt.ry";
connectAttr "Middle1SubPB.orz" "Middle1SubJnt.rz";
connectAttr "MiddleRootJnt.s" "Middle1SubJnt.is";
connectAttr "Middle1Jnt.sx" "Middle1SubJnt.sx";
connectAttr "Middle1Jnt.sy" "Middle1SubJnt.sy";
connectAttr "Middle1Jnt.sz" "Middle1SubJnt.sz";
connectAttr "WristJnt.s" "RingRootJnt.is";
connectAttr "Ring1Ctrl.s" "RingRootJnt.s";
connectAttr "RingRootJntDM.ot" "RingRootJnt.t";
connectAttr "RingRootJntQE.ort" "RingRootJnt.r";
connectAttr "RingRootJnt.s" "Ring1Jnt.is";
connectAttr "RingRootScaleMD.o" "Ring1Jnt.s";
connectAttr "Ring1JntDM.ot" "Ring1Jnt.t";
connectAttr "Ring1JntQE.ort" "Ring1Jnt.r";
connectAttr "Ring1Jnt.s" "Ring2Jnt.is";
connectAttr "RingScaleMD.o" "Ring2Jnt.s";
connectAttr "Ring2JntDM.ot" "Ring2Jnt.t";
connectAttr "Ring2JntQE.ort" "Ring2Jnt.r";
connectAttr "Ring2Jnt.s" "Ring3Jnt.is";
connectAttr "Ring2CtrlScaleMD.o" "Ring3Jnt.s";
connectAttr "Ring3JntDM.ot" "Ring3Jnt.t";
connectAttr "Ring3JntQE.ort" "Ring3Jnt.r";
connectAttr "Ring3Jnt.s" "Ring4Jnt.is";
connectAttr "Ring3Jnt.t" "Ring3SubJnt.t";
connectAttr "Ring3SubPB.orx" "Ring3SubJnt.rx";
connectAttr "Ring3SubPB.ory" "Ring3SubJnt.ry";
connectAttr "Ring3SubPB.orz" "Ring3SubJnt.rz";
connectAttr "Ring2Jnt.s" "Ring3SubJnt.is";
connectAttr "Ring3Jnt.sx" "Ring3SubJnt.sx";
connectAttr "Ring3Jnt.sy" "Ring3SubJnt.sy";
connectAttr "Ring3Jnt.sz" "Ring3SubJnt.sz";
connectAttr "Ring2Jnt.t" "Ring2SubJnt.t";
connectAttr "Ring2SubPB.orx" "Ring2SubJnt.rx";
connectAttr "Ring2SubPB.ory" "Ring2SubJnt.ry";
connectAttr "Ring2SubPB.orz" "Ring2SubJnt.rz";
connectAttr "Ring1Jnt.s" "Ring2SubJnt.is";
connectAttr "Ring2Jnt.sx" "Ring2SubJnt.sx";
connectAttr "Ring2Jnt.sy" "Ring2SubJnt.sy";
connectAttr "Ring2Jnt.sz" "Ring2SubJnt.sz";
connectAttr "Ring1Jnt.t" "Ring1SubJnt.t";
connectAttr "Ring1SubPB.orx" "Ring1SubJnt.rx";
connectAttr "Ring1SubPB.ory" "Ring1SubJnt.ry";
connectAttr "Ring1SubPB.orz" "Ring1SubJnt.rz";
connectAttr "RingRootJnt.s" "Ring1SubJnt.is";
connectAttr "Ring1Jnt.sx" "Ring1SubJnt.sx";
connectAttr "Ring1Jnt.sy" "Ring1SubJnt.sy";
connectAttr "Ring1Jnt.sz" "Ring1SubJnt.sz";
connectAttr "WristJnt.s" "PinkyRootJnt.is";
connectAttr "Pinky1Ctrl.s" "PinkyRootJnt.s";
connectAttr "PinkyRootJntDM.ot" "PinkyRootJnt.t";
connectAttr "PinkyRootJntQE.ort" "PinkyRootJnt.r";
connectAttr "PinkyRootJnt.s" "Pinky1Jnt.is";
connectAttr "PinkyRootScaleMD.o" "Pinky1Jnt.s";
connectAttr "Pinky1JntDM.ot" "Pinky1Jnt.t";
connectAttr "Pinky1JntQE.ort" "Pinky1Jnt.r";
connectAttr "Pinky1Jnt.s" "Pinky2Jnt.is";
connectAttr "PinkyScaleMD.o" "Pinky2Jnt.s";
connectAttr "Pinky2JntDM.ot" "Pinky2Jnt.t";
connectAttr "Pinky2JntQE.ort" "Pinky2Jnt.r";
connectAttr "Pinky2Jnt.s" "Pinky3Jnt.is";
connectAttr "Pinky2CtrlScaleMD.o" "Pinky3Jnt.s";
connectAttr "Pinky3JntDM.ot" "Pinky3Jnt.t";
connectAttr "Pinky3JntQE.ort" "Pinky3Jnt.r";
connectAttr "Pinky3Jnt.s" "Pinky4Jnt.is";
connectAttr "Pinky3Jnt.t" "Pinky3SubJnt.t";
connectAttr "Pinky3SubPB.orx" "Pinky3SubJnt.rx";
connectAttr "Pinky3SubPB.ory" "Pinky3SubJnt.ry";
connectAttr "Pinky3SubPB.orz" "Pinky3SubJnt.rz";
connectAttr "Pinky2Jnt.s" "Pinky3SubJnt.is";
connectAttr "Pinky3Jnt.sx" "Pinky3SubJnt.sx";
connectAttr "Pinky3Jnt.sy" "Pinky3SubJnt.sy";
connectAttr "Pinky3Jnt.sz" "Pinky3SubJnt.sz";
connectAttr "Pinky2Jnt.t" "Pinky2SubJnt.t";
connectAttr "Pinky2SubPB.orx" "Pinky2SubJnt.rx";
connectAttr "Pinky2SubPB.ory" "Pinky2SubJnt.ry";
connectAttr "Pinky2SubPB.orz" "Pinky2SubJnt.rz";
connectAttr "Pinky1Jnt.s" "Pinky2SubJnt.is";
connectAttr "Pinky2Jnt.sx" "Pinky2SubJnt.sx";
connectAttr "Pinky2Jnt.sy" "Pinky2SubJnt.sy";
connectAttr "Pinky2Jnt.sz" "Pinky2SubJnt.sz";
connectAttr "Pinky1Jnt.t" "Pinky1SubJnt.t";
connectAttr "Pinky1SubPB.orx" "Pinky1SubJnt.rx";
connectAttr "Pinky1SubPB.ory" "Pinky1SubJnt.ry";
connectAttr "Pinky1SubPB.orz" "Pinky1SubJnt.rz";
connectAttr "PinkyRootJnt.s" "Pinky1SubJnt.is";
connectAttr "Pinky1Jnt.sx" "Pinky1SubJnt.sx";
connectAttr "Pinky1Jnt.sy" "Pinky1SubJnt.sy";
connectAttr "Pinky1Jnt.sz" "Pinky1SubJnt.sz";
connectAttr "WristJnt.s" "ThumbRootJnt.is";
connectAttr "Thumb1Ctrl.s" "ThumbRootJnt.s";
connectAttr "ThumbRootJntDM.ot" "ThumbRootJnt.t";
connectAttr "ThumbRootJntQE.ort" "ThumbRootJnt.r";
connectAttr "ThumbRootJnt.s" "Thumb1Jnt.is";
connectAttr "ThumbRootScaleMD.o" "Thumb1Jnt.s";
connectAttr "Thumb1JntDM.ot" "Thumb1Jnt.t";
connectAttr "Thumb1JntQE.ort" "Thumb1Jnt.r";
connectAttr "Thumb1Jnt.s" "Thumb2Jnt.is";
connectAttr "ThumbScaleMD.o" "Thumb2Jnt.s";
connectAttr "Thumb2JntDM.ot" "Thumb2Jnt.t";
connectAttr "Thumb2JntQE.ort" "Thumb2Jnt.r";
connectAttr "Thumb2Jnt.s" "Thumb3Jnt.is";
connectAttr "Thumb2CtrlScaleMD.o" "Thumb3Jnt.s";
connectAttr "Thumb3JntDM.ot" "Thumb3Jnt.t";
connectAttr "Thumb3JntQE.ort" "Thumb3Jnt.r";
connectAttr "Thumb3Jnt.s" "Thumb4Jnt.is";
connectAttr "Thumb3Jnt.t" "Thumb3SubJnt.t";
connectAttr "Thumb3SubPB.orx" "Thumb3SubJnt.rx";
connectAttr "Thumb3SubPB.ory" "Thumb3SubJnt.ry";
connectAttr "Thumb3SubPB.orz" "Thumb3SubJnt.rz";
connectAttr "Thumb2Jnt.s" "Thumb3SubJnt.is";
connectAttr "Thumb3Jnt.sx" "Thumb3SubJnt.sx";
connectAttr "Thumb3Jnt.sy" "Thumb3SubJnt.sy";
connectAttr "Thumb3Jnt.sz" "Thumb3SubJnt.sz";
connectAttr "Index1MTPosMM.o" "Index1MTPosDM.imat";
connectAttr "Index1IKJnt.wm" "Index1MTPosMM.i[2]";
connectAttr "Index1MTPos.pim" "Index1MTPosMM.i[3]";
connectAttr "Index2MTPosMM.o" "Index2MTPosDM.imat";
connectAttr "Index2IKJnt.wm" "Index2MTPosMM.i[2]";
connectAttr "Index2MTPos.pim" "Index2MTPosMM.i[3]";
connectAttr "Index3MTPosMM.o" "Index3MTPosDM.imat";
connectAttr "Index3IKJnt.wm" "Index3MTPosMM.i[2]";
connectAttr "Index3MTPos.pim" "Index3MTPosMM.i[3]";
connectAttr "FingerCtrl.Index1" "unitConversion8.i";
connectAttr "FingerCtrl.IndexSpread" "unitConversion11.i";
connectAttr "FingerCtrl.IndexRoll" "unitConversion12.i";
connectAttr "FingerCtrl.Index2" "unitConversion9.i";
connectAttr "FingerCtrl.Index3" "unitConversion10.i";
connectAttr "Middle1MTPosMM.o" "Middle1MTPosDM.imat";
connectAttr "Middle1IKJnt.wm" "Middle1MTPosMM.i[2]";
connectAttr "Middle1MTPos.pim" "Middle1MTPosMM.i[3]";
connectAttr "Middle2MTPosMM.o" "Middle2MTPosDM.imat";
connectAttr "Middle2IKJnt.wm" "Middle2MTPosMM.i[2]";
connectAttr "Middle2MTPos.pim" "Middle2MTPosMM.i[3]";
connectAttr "Middle3MTPosMM.o" "Middle3MTPosDM.imat";
connectAttr "Middle3IKJnt.wm" "Middle3MTPosMM.i[2]";
connectAttr "Middle3MTPos.pim" "Middle3MTPosMM.i[3]";
connectAttr "FingerCtrl.Middle1" "unitConversion13.i";
connectAttr "FingerCtrl.MiddleSpread" "unitConversion16.i";
connectAttr "FingerCtrl.MiddleRoll" "unitConversion17.i";
connectAttr "FingerCtrl.Middle2" "unitConversion14.i";
connectAttr "FingerCtrl.Middle3" "unitConversion15.i";
connectAttr "Ring1MTPosMM.o" "Ring1MTPosDM.imat";
connectAttr "Ring1IKJnt.wm" "Ring1MTPosMM.i[2]";
connectAttr "Ring1MTPos.pim" "Ring1MTPosMM.i[3]";
connectAttr "Ring2MTPosMM.o" "Ring2MTPosDM.imat";
connectAttr "Ring2IKJnt.wm" "Ring2MTPosMM.i[2]";
connectAttr "Ring2MTPos.pim" "Ring2MTPosMM.i[3]";
connectAttr "Ring3MTPosMM.o" "Ring3MTPosDM.imat";
connectAttr "Ring3IKJnt.wm" "Ring3MTPosMM.i[2]";
connectAttr "Ring3MTPos.pim" "Ring3MTPosMM.i[3]";
connectAttr "FingerCtrl.Ring1" "unitConversion18.i";
connectAttr "FingerCtrl.RingSpread" "unitConversion21.i";
connectAttr "FingerCtrl.RingRoll" "unitConversion22.i";
connectAttr "FingerCtrl.Ring2" "unitConversion19.i";
connectAttr "FingerCtrl.Ring3" "unitConversion20.i";
connectAttr "Pinky1MTPosMM.o" "Pinky1MTPosDM.imat";
connectAttr "Pinky1IKJnt.wm" "Pinky1MTPosMM.i[2]";
connectAttr "Pinky1MTPos.pim" "Pinky1MTPosMM.i[3]";
connectAttr "Pinky2MTPosMM.o" "Pinky2MTPosDM.imat";
connectAttr "Pinky2IKJnt.wm" "Pinky2MTPosMM.i[2]";
connectAttr "Pinky2MTPos.pim" "Pinky2MTPosMM.i[3]";
connectAttr "Pinky3MTPosMM.o" "Pinky3MTPosDM.imat";
connectAttr "Pinky3IKJnt.wm" "Pinky3MTPosMM.i[2]";
connectAttr "Pinky3MTPos.pim" "Pinky3MTPosMM.i[3]";
connectAttr "FingerCtrl.Pinky1" "unitConversion23.i";
connectAttr "FingerCtrl.PinkySpread" "unitConversion26.i";
connectAttr "FingerCtrl.PinkyRoll" "unitConversion27.i";
connectAttr "FingerCtrl.Pinky2" "unitConversion24.i";
connectAttr "FingerCtrl.Pinky3" "unitConversion25.i";
connectAttr "Thumb1MTPosMM.o" "Thumb1MTPosDM.imat";
connectAttr "Thumb1IKJnt.wm" "Thumb1MTPosMM.i[2]";
connectAttr "Thumb1MTPos.pim" "Thumb1MTPosMM.i[3]";
connectAttr "Thumb2MTPosMM.o" "Thumb2MTPosDM.imat";
connectAttr "Thumb2IKJnt.wm" "Thumb2MTPosMM.i[2]";
connectAttr "Thumb2MTPos.pim" "Thumb2MTPosMM.i[3]";
connectAttr "Thumb3MTPosMM.o" "Thumb3MTPosDM.imat";
connectAttr "Thumb3IKJnt.wm" "Thumb3MTPosMM.i[2]";
connectAttr "Thumb3MTPos.pim" "Thumb3MTPosMM.i[3]";
connectAttr "FingerCtrl.Thumb1" "unitConversion28.i";
connectAttr "FingerCtrl.ThumbSpread" "unitConversion31.i";
connectAttr "FingerCtrl.ThumbRoll" "unitConversion32.i";
connectAttr "FingerCtrl.Thumb2" "unitConversion29.i";
connectAttr "FingerCtrl.Thumb3" "unitConversion30.i";
connectAttr "IndexRootJntMM.o" "IndexRootJntDM.imat";
connectAttr "Index1Ctrl.wm" "IndexRootJntMM.i[2]";
connectAttr "IndexRootJnt.pim" "IndexRootJntMM.i[3]";
connectAttr "IndexRootJntQP.oq" "IndexRootJntQE.iq";
connectAttr "IndexRootJntDM.oq" "IndexRootJntQP.iq1";
connectAttr "IndexRootJntQI.oq" "IndexRootJntQP.iq2";
connectAttr "IndexRootJntEQ.oq" "IndexRootJntQI.iq";
connectAttr "IndexRootJnt.jo" "IndexRootJntEQ.irt";
connectAttr "Index1Ctrl.s" "IndexRootScaleMD.i1";
connectAttr "Index2Ctrl.s" "IndexRootScaleMD.i2";
connectAttr "Index1JntMM.o" "Index1JntDM.imat";
connectAttr "Index2Ctrl.wm" "Index1JntMM.i[2]";
connectAttr "Index1Jnt.pim" "Index1JntMM.i[3]";
connectAttr "Index1JntQP.oq" "Index1JntQE.iq";
connectAttr "Index1JntDM.oq" "Index1JntQP.iq1";
connectAttr "Index1JntQI.oq" "Index1JntQP.iq2";
connectAttr "Index1JntEQ.oq" "Index1JntQI.iq";
connectAttr "Index1Jnt.jo" "Index1JntEQ.irt";
connectAttr "IndexRootScaleMD.o" "IndexScaleMD.i1";
connectAttr "Index3Ctrl.s" "IndexScaleMD.i2";
connectAttr "Index2JntMM.o" "Index2JntDM.imat";
connectAttr "Index3Ctrl.wm" "Index2JntMM.i[2]";
connectAttr "Index2Jnt.pim" "Index2JntMM.i[3]";
connectAttr "Index2JntQP.oq" "Index2JntQE.iq";
connectAttr "Index2JntDM.oq" "Index2JntQP.iq1";
connectAttr "Index2JntQI.oq" "Index2JntQP.iq2";
connectAttr "Index2JntEQ.oq" "Index2JntQI.iq";
connectAttr "Index2Jnt.jo" "Index2JntEQ.irt";
connectAttr "IndexScaleMD.o" "Index2CtrlScaleMD.i1";
connectAttr "Index4Ctrl.s" "Index2CtrlScaleMD.i2";
connectAttr "Index3JntMM.o" "Index3JntDM.imat";
connectAttr "Index4Ctrl.wm" "Index3JntMM.i[2]";
connectAttr "Index3Jnt.pim" "Index3JntMM.i[3]";
connectAttr "Index3JntQP.oq" "Index3JntQE.iq";
connectAttr "Index3JntDM.oq" "Index3JntQP.iq1";
connectAttr "Index3JntQI.oq" "Index3JntQP.iq2";
connectAttr "Index3JntEQ.oq" "Index3JntQI.iq";
connectAttr "Index3Jnt.jo" "Index3JntEQ.irt";
connectAttr "Index3Jnt.r" "Index3SubPB.ir2";
connectAttr "Index2Jnt.r" "Index2SubPB.ir2";
connectAttr "Index1Jnt.r" "Index1SubPB.ir2";
connectAttr "MiddleRootJntMM.o" "MiddleRootJntDM.imat";
connectAttr "Middle1Ctrl.wm" "MiddleRootJntMM.i[2]";
connectAttr "MiddleRootJnt.pim" "MiddleRootJntMM.i[3]";
connectAttr "MiddleRootJntQP.oq" "MiddleRootJntQE.iq";
connectAttr "MiddleRootJntDM.oq" "MiddleRootJntQP.iq1";
connectAttr "MiddleRootJntQI.oq" "MiddleRootJntQP.iq2";
connectAttr "MiddleRootJntEQ.oq" "MiddleRootJntQI.iq";
connectAttr "MiddleRootJnt.jo" "MiddleRootJntEQ.irt";
connectAttr "Middle1Ctrl.s" "MiddleRootScaleMD.i1";
connectAttr "Middle2Ctrl.s" "MiddleRootScaleMD.i2";
connectAttr "Middle1JntMM.o" "Middle1JntDM.imat";
connectAttr "Middle2Ctrl.wm" "Middle1JntMM.i[2]";
connectAttr "Middle1Jnt.pim" "Middle1JntMM.i[3]";
connectAttr "Middle1JntQP.oq" "Middle1JntQE.iq";
connectAttr "Middle1JntDM.oq" "Middle1JntQP.iq1";
connectAttr "Middle1JntQI.oq" "Middle1JntQP.iq2";
connectAttr "Middle1JntEQ.oq" "Middle1JntQI.iq";
connectAttr "Middle1Jnt.jo" "Middle1JntEQ.irt";
connectAttr "MiddleRootScaleMD.o" "MiddleScaleMD.i1";
connectAttr "Middle3Ctrl.s" "MiddleScaleMD.i2";
connectAttr "Middle2JntMM.o" "Middle2JntDM.imat";
connectAttr "Middle3Ctrl.wm" "Middle2JntMM.i[2]";
connectAttr "Middle2Jnt.pim" "Middle2JntMM.i[3]";
connectAttr "Middle2JntQP.oq" "Middle2JntQE.iq";
connectAttr "Middle2JntDM.oq" "Middle2JntQP.iq1";
connectAttr "Middle2JntQI.oq" "Middle2JntQP.iq2";
connectAttr "Middle2JntEQ.oq" "Middle2JntQI.iq";
connectAttr "Middle2Jnt.jo" "Middle2JntEQ.irt";
connectAttr "MiddleScaleMD.o" "Middle2CtrlScaleMD.i1";
connectAttr "Middle4Ctrl.s" "Middle2CtrlScaleMD.i2";
connectAttr "Middle3JntMM.o" "Middle3JntDM.imat";
connectAttr "Middle4Ctrl.wm" "Middle3JntMM.i[2]";
connectAttr "Middle3Jnt.pim" "Middle3JntMM.i[3]";
connectAttr "Middle3JntQP.oq" "Middle3JntQE.iq";
connectAttr "Middle3JntDM.oq" "Middle3JntQP.iq1";
connectAttr "Middle3JntQI.oq" "Middle3JntQP.iq2";
connectAttr "Middle3JntEQ.oq" "Middle3JntQI.iq";
connectAttr "Middle3Jnt.jo" "Middle3JntEQ.irt";
connectAttr "Middle3Jnt.r" "Middle3SubPB.ir2";
connectAttr "Middle2Jnt.r" "Middle2SubPB.ir2";
connectAttr "Middle1Jnt.r" "Middle1SubPB.ir2";
connectAttr "RingRootJntMM.o" "RingRootJntDM.imat";
connectAttr "Ring1Ctrl.wm" "RingRootJntMM.i[2]";
connectAttr "RingRootJnt.pim" "RingRootJntMM.i[3]";
connectAttr "RingRootJntQP.oq" "RingRootJntQE.iq";
connectAttr "RingRootJntDM.oq" "RingRootJntQP.iq1";
connectAttr "RingRootJntQI.oq" "RingRootJntQP.iq2";
connectAttr "RingRootJntEQ.oq" "RingRootJntQI.iq";
connectAttr "RingRootJnt.jo" "RingRootJntEQ.irt";
connectAttr "Ring1Ctrl.s" "RingRootScaleMD.i1";
connectAttr "Ring2Ctrl.s" "RingRootScaleMD.i2";
connectAttr "Ring1JntMM.o" "Ring1JntDM.imat";
connectAttr "Ring2Ctrl.wm" "Ring1JntMM.i[2]";
connectAttr "Ring1Jnt.pim" "Ring1JntMM.i[3]";
connectAttr "Ring1JntQP.oq" "Ring1JntQE.iq";
connectAttr "Ring1JntDM.oq" "Ring1JntQP.iq1";
connectAttr "Ring1JntQI.oq" "Ring1JntQP.iq2";
connectAttr "Ring1JntEQ.oq" "Ring1JntQI.iq";
connectAttr "Ring1Jnt.jo" "Ring1JntEQ.irt";
connectAttr "RingRootScaleMD.o" "RingScaleMD.i1";
connectAttr "Ring3Ctrl.s" "RingScaleMD.i2";
connectAttr "Ring2JntMM.o" "Ring2JntDM.imat";
connectAttr "Ring3Ctrl.wm" "Ring2JntMM.i[2]";
connectAttr "Ring2Jnt.pim" "Ring2JntMM.i[3]";
connectAttr "Ring2JntQP.oq" "Ring2JntQE.iq";
connectAttr "Ring2JntDM.oq" "Ring2JntQP.iq1";
connectAttr "Ring2JntQI.oq" "Ring2JntQP.iq2";
connectAttr "Ring2JntEQ.oq" "Ring2JntQI.iq";
connectAttr "Ring2Jnt.jo" "Ring2JntEQ.irt";
connectAttr "RingScaleMD.o" "Ring2CtrlScaleMD.i1";
connectAttr "Ring4Ctrl.s" "Ring2CtrlScaleMD.i2";
connectAttr "Ring3JntMM.o" "Ring3JntDM.imat";
connectAttr "Ring4Ctrl.wm" "Ring3JntMM.i[2]";
connectAttr "Ring3Jnt.pim" "Ring3JntMM.i[3]";
connectAttr "Ring3JntQP.oq" "Ring3JntQE.iq";
connectAttr "Ring3JntDM.oq" "Ring3JntQP.iq1";
connectAttr "Ring3JntQI.oq" "Ring3JntQP.iq2";
connectAttr "Ring3JntEQ.oq" "Ring3JntQI.iq";
connectAttr "Ring3Jnt.jo" "Ring3JntEQ.irt";
connectAttr "Ring3Jnt.r" "Ring3SubPB.ir2";
connectAttr "Ring2Jnt.r" "Ring2SubPB.ir2";
connectAttr "Ring1Jnt.r" "Ring1SubPB.ir2";
connectAttr "PinkyRootJntMM.o" "PinkyRootJntDM.imat";
connectAttr "Pinky1Ctrl.wm" "PinkyRootJntMM.i[2]";
connectAttr "PinkyRootJnt.pim" "PinkyRootJntMM.i[3]";
connectAttr "PinkyRootJntQP.oq" "PinkyRootJntQE.iq";
connectAttr "PinkyRootJntDM.oq" "PinkyRootJntQP.iq1";
connectAttr "PinkyRootJntQI.oq" "PinkyRootJntQP.iq2";
connectAttr "PinkyRootJntEQ.oq" "PinkyRootJntQI.iq";
connectAttr "PinkyRootJnt.jo" "PinkyRootJntEQ.irt";
connectAttr "Pinky1Ctrl.s" "PinkyRootScaleMD.i1";
connectAttr "Pinky2Ctrl.s" "PinkyRootScaleMD.i2";
connectAttr "Pinky1JntMM.o" "Pinky1JntDM.imat";
connectAttr "Pinky2Ctrl.wm" "Pinky1JntMM.i[2]";
connectAttr "Pinky1Jnt.pim" "Pinky1JntMM.i[3]";
connectAttr "Pinky1JntQP.oq" "Pinky1JntQE.iq";
connectAttr "Pinky1JntDM.oq" "Pinky1JntQP.iq1";
connectAttr "Pinky1JntQI.oq" "Pinky1JntQP.iq2";
connectAttr "Pinky1JntEQ.oq" "Pinky1JntQI.iq";
connectAttr "Pinky1Jnt.jo" "Pinky1JntEQ.irt";
connectAttr "PinkyRootScaleMD.o" "PinkyScaleMD.i1";
connectAttr "Pinky3Ctrl.s" "PinkyScaleMD.i2";
connectAttr "Pinky2JntMM.o" "Pinky2JntDM.imat";
connectAttr "Pinky3Ctrl.wm" "Pinky2JntMM.i[2]";
connectAttr "Pinky2Jnt.pim" "Pinky2JntMM.i[3]";
connectAttr "Pinky2JntQP.oq" "Pinky2JntQE.iq";
connectAttr "Pinky2JntDM.oq" "Pinky2JntQP.iq1";
connectAttr "Pinky2JntQI.oq" "Pinky2JntQP.iq2";
connectAttr "Pinky2JntEQ.oq" "Pinky2JntQI.iq";
connectAttr "Pinky2Jnt.jo" "Pinky2JntEQ.irt";
connectAttr "PinkyScaleMD.o" "Pinky2CtrlScaleMD.i1";
connectAttr "Pinky4Ctrl.s" "Pinky2CtrlScaleMD.i2";
connectAttr "Pinky3JntMM.o" "Pinky3JntDM.imat";
connectAttr "Pinky4Ctrl.wm" "Pinky3JntMM.i[2]";
connectAttr "Pinky3Jnt.pim" "Pinky3JntMM.i[3]";
connectAttr "Pinky3JntQP.oq" "Pinky3JntQE.iq";
connectAttr "Pinky3JntDM.oq" "Pinky3JntQP.iq1";
connectAttr "Pinky3JntQI.oq" "Pinky3JntQP.iq2";
connectAttr "Pinky3JntEQ.oq" "Pinky3JntQI.iq";
connectAttr "Pinky3Jnt.jo" "Pinky3JntEQ.irt";
connectAttr "Pinky3Jnt.r" "Pinky3SubPB.ir2";
connectAttr "Pinky2Jnt.r" "Pinky2SubPB.ir2";
connectAttr "Pinky1Jnt.r" "Pinky1SubPB.ir2";
connectAttr "ThumbRootJntMM.o" "ThumbRootJntDM.imat";
connectAttr "Thumb1Ctrl.wm" "ThumbRootJntMM.i[2]";
connectAttr "ThumbRootJnt.pim" "ThumbRootJntMM.i[3]";
connectAttr "ThumbRootJntQP.oq" "ThumbRootJntQE.iq";
connectAttr "ThumbRootJntDM.oq" "ThumbRootJntQP.iq1";
connectAttr "ThumbRootJntQI.oq" "ThumbRootJntQP.iq2";
connectAttr "ThumbRootJntEQ.oq" "ThumbRootJntQI.iq";
connectAttr "ThumbRootJnt.jo" "ThumbRootJntEQ.irt";
connectAttr "Thumb1Ctrl.s" "ThumbRootScaleMD.i1";
connectAttr "Thumb2Ctrl.s" "ThumbRootScaleMD.i2";
connectAttr "Thumb1JntMM.o" "Thumb1JntDM.imat";
connectAttr "Thumb2Ctrl.wm" "Thumb1JntMM.i[2]";
connectAttr "Thumb1Jnt.pim" "Thumb1JntMM.i[3]";
connectAttr "Thumb1JntQP.oq" "Thumb1JntQE.iq";
connectAttr "Thumb1JntDM.oq" "Thumb1JntQP.iq1";
connectAttr "Thumb1JntQI.oq" "Thumb1JntQP.iq2";
connectAttr "Thumb1JntEQ.oq" "Thumb1JntQI.iq";
connectAttr "Thumb1Jnt.jo" "Thumb1JntEQ.irt";
connectAttr "ThumbRootScaleMD.o" "ThumbScaleMD.i1";
connectAttr "Thumb3Ctrl.s" "ThumbScaleMD.i2";
connectAttr "Thumb2JntMM.o" "Thumb2JntDM.imat";
connectAttr "Thumb3Ctrl.wm" "Thumb2JntMM.i[2]";
connectAttr "Thumb2Jnt.pim" "Thumb2JntMM.i[3]";
connectAttr "Thumb2JntQP.oq" "Thumb2JntQE.iq";
connectAttr "Thumb2JntDM.oq" "Thumb2JntQP.iq1";
connectAttr "Thumb2JntQI.oq" "Thumb2JntQP.iq2";
connectAttr "Thumb2JntEQ.oq" "Thumb2JntQI.iq";
connectAttr "Thumb2Jnt.jo" "Thumb2JntEQ.irt";
connectAttr "ThumbScaleMD.o" "Thumb2CtrlScaleMD.i1";
connectAttr "Thumb4Ctrl.s" "Thumb2CtrlScaleMD.i2";
connectAttr "Thumb3JntMM.o" "Thumb3JntDM.imat";
connectAttr "Thumb4Ctrl.wm" "Thumb3JntMM.i[2]";
connectAttr "Thumb3Jnt.pim" "Thumb3JntMM.i[3]";
connectAttr "Thumb3JntQP.oq" "Thumb3JntQE.iq";
connectAttr "Thumb3JntDM.oq" "Thumb3JntQP.iq1";
connectAttr "Thumb3JntQI.oq" "Thumb3JntQP.iq2";
connectAttr "Thumb3JntEQ.oq" "Thumb3JntQI.iq";
connectAttr "Thumb3Jnt.jo" "Thumb3JntEQ.irt";
connectAttr "Thumb3Jnt.r" "Thumb3SubPB.ir2";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
// End of Hand.ma
