//Maya ASCII 2019 scene
//Name: Mir_bend_R.ma
//Last modified: Tue, May 18, 2021 11:49:23 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -dataType "ngSkinLayerDataStorage" "ngSkinTools" "1.8.2";
requires "mtoa" "4.0.3";
requires "MayaKrakatoa" "1.0";
requires "FumeFX" "FumeFX3.5.2";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "QDMayaUI" "0.1";
requires "TurtleForMaya2009" "5.0.0.5";
requires "RenderMan_for_Maya" "4.0.3";
requires "Vue_xStream" "7.00";
requires "pdiMaya2lmx" "2.3";
requires "stereoCamera" "10.0";
requires "maxwell" "1.7.11";
requires "pdiMaya2x" "2.5";
requires "redshift4maya" "2.6.31";
requires "shaveNode" "1.1";
requires "vsMaster" "1.0";
requires "vstUtils" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "bend_SET";
	rename -uid "8D94B106-4FB8-2F48-72AF-D6895672F518";
createNode transform -n "armUpper_IK_TWST_joint_R_GRP" -p "bend_SET";
	rename -uid "11BAE1F0-4B2E-3C2D-1E80-A7946C9F36A6";
	setAttr ".t" -type "double3" 1.4187355457107031e-10 5 5.9568332488879605e-09 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "armUpper_IK_TWST_start_R_JNT" -p "armUpper_IK_TWST_joint_R_GRP";
	rename -uid "6B6C75F7-4480-16D8-7D94-E28F95E2FE66";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-17 0 ;
	setAttr ".r" -type "double3" -2.1050140577406329e-14 5.0733123950451815e-05 180 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.58106862780426993;
createNode joint -n "armUpper_IK_TWST_end_R_JNT" -p "armUpper_IK_TWST_start_R_JNT";
	rename -uid "FDAA68E7-4497-D249-4FD5-D3A4EF92002A";
	setAttr ".t" -type "double3" 2.442775560837398 6.106226635438361e-16 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 0 3.975693351829396e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.0000000000000449 ;
	setAttr ".radi" 0.57376969512723575;
createNode ikEffector -n "armUpper_IK_TWST_R_effector" -p "armUpper_IK_TWST_start_R_JNT";
	rename -uid "F44845B8-45F3-6A9A-2D4A-D2BDABEFC1F2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "armUpper_IK_TWST_ikHandle_R_GRP" -p "armUpper_IK_TWST_joint_R_GRP";
	rename -uid "470A3B1C-47A2-6466-CBF4-7C8FB770BCEC";
	setAttr ".t" -type "double3" -5.0000000000000018 -5.9568332488879622e-09 -1.4187355457107034e-10 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "armUpper_IK_TWST_ikHandle_R_offGRP" -p "armUpper_IK_TWST_ikHandle_R_GRP";
	rename -uid "10712C10-4D5C-FCDD-BA59-9EB40B609A4F";
	setAttr ".t" -type "double3" 1.5941684505804687e-07 4.4355742816470922e-06 1.7763568394002505e-15 ;
createNode ikHandle -n "armUpper_IK_TWST_R_IKH" -p "armUpper_IK_TWST_ikHandle_R_offGRP";
	rename -uid "BF84D2F4-4702-0F6C-0C9C-F1ABA0B66EF8";
	setAttr ".t" -type "double3" 2.5572242797467175 -4.42961744940086e-06 -2.1628383016432802e-06 ;
	setAttr ".r" -type "double3" 0 5.0733123876979303e-05 -179.99999999999989 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".pv" -type "double3" 0.032053002788458594 0.99908251032541839 -0.028403214150935337 ;
	setAttr ".roc" yes;
createNode transform -n "armStart_controlJoint_R_GRP" -p "bend_SET";
	rename -uid "ED3E8299-4747-9EAB-C816-B2A28E7BC734";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
createNode transform -n "armStart_controlJoint_R_offGRP" -p "armStart_controlJoint_R_GRP";
	rename -uid "052C7492-4E5F-3670-4C72-6AB654F80F08";
createNode joint -n "armStart_control_R_JNT" -p "armStart_controlJoint_R_offGRP";
	rename -uid "B1FC2F67-4B23-AAA7-CE56-7B8B8D93233B";
	addAttr -s false -ci true -sn "cgmMatchTarget" -ln "cgmMatchTarget" -at "message";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.5214141058095265e-10 5.9568331933768093e-09 -1.418722916923798e-10 ;
	setAttr ".r" -type "double3" 0 0 0.00010409037987153527 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73090818070466002 -0.68199836006249781 -0.025523876098019975 0
		 -0.03489949670250108 4.4408920985006262e-16 0.99939082701909565 0 -0.68158290508852681 0.73135370161917101 -0.023801399518112332 0
		 -1.0126903913127752 10.115835018213359 -0.055927422315755558 1;
createNode transform -n "armStart_control_R_GRP" -p "armStart_control_R_JNT";
	rename -uid "C699E169-41A3-C4C3-6940-38B9E8C6EECE";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.5102810375396984e-17 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "armStart_control_R_offGRP" -p "armStart_control_R_GRP";
	rename -uid "9B7A4E82-429A-4266-38C1-7A8DC7A68E75";
createNode transform -n "armStart_R_CTL" -p "armStart_control_R_offGRP";
	rename -uid "2301BBA6-42C8-69E3-80E9-13986B713B01";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armStart_R_CTL_Shape" -p "armStart_R_CTL";
	rename -uid "29D146CC-434D-03A0-BD41-45B91CA6FA2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		-1.5715383116344462e-15 0.56566192776793833 0
		-1.5715383116344462e-15 0.52260374182624236 0.21646920350401774
		-1.5715383116344462e-15 0.39998350875820354 0.39998350875820354
		-1.5715383116344462e-15 0.21646920350401774 0.52260374182624236
		-1.5715383116344462e-15 4.0000221842457109e-17 0.56566192776793833
		-1.5715383116344462e-15 -0.21646920350401774 0.52260374182624236
		-1.5715383116344462e-15 -0.39998350875820354 0.39998350875820354
		-1.5715383116344462e-15 -0.52260374182624236 0.21646920350401774
		-1.5715383116344462e-15 -0.56566192776793833 0
		-1.5715383116344462e-15 -0.52260374182624236 -0.21646920350401774
		-1.5715383116344462e-15 -0.39998350875820354 -0.39998350875820354
		-1.5715383116344462e-15 -0.21646920350401774 -0.52260374182624236
		-1.5715383116344462e-15 4.0000221842457109e-17 -0.56566192776793833
		-1.5715383116344462e-15 0.21646920350401774 -0.52260374182624236
		-1.5715383116344462e-15 0.39998350875820354 -0.39998350875820354
		-1.5715383116344462e-15 0.52260374182624236 -0.21646920350401774
		-1.5715383116344462e-15 0.56566192776793833 0
		0.21646920350401613 0.52260374182624236 0
		0.39998350875820149 0.39998350875820354 0
		0.52260374182624136 0.21646920350401774 0
		0.56566192776793667 4.0000221842457109e-17 0
		0.52260374182624136 -0.21646920350401774 0
		0.39998350875820149 -0.39998350875820354 0
		0.21646920350401613 -0.52260374182624236 0
		-1.5715383116344462e-15 -0.56566192776793833 0
		-0.21646920350401927 -0.52260374182624236 0
		-0.39998350875820537 -0.39998350875820354 0
		-0.52260374182624403 -0.21646920350401774 0
		-0.56566192776794 4.0000221842457109e-17 0
		-0.52260374182624403 0.21646920350401774 0
		-0.39998350875820537 0.39998350875820354 0
		-0.21646920350401927 0.52260374182624236 0
		-1.5715383116344462e-15 0.56566192776793833 0
		-1.5715383116344462e-15 0.52260374182624236 -0.21646920350401774
		-1.5715383116344462e-15 0.39998350875820354 -0.39998350875820354
		-1.5715383116344462e-15 0.21646920350401774 -0.52260374182624236
		-1.5715383116344462e-15 4.0000221842457109e-17 -0.56566192776793833
		-0.21646920350401927 4.0000221842457109e-17 -0.52260374182624236
		-0.39998350875820537 4.0000221842457109e-17 -0.39998350875820354
		-0.52260374182624403 4.0000221842457109e-17 -0.21646920350401774
		-0.56566192776794 4.0000221842457109e-17 0
		-0.52260374182624403 4.0000221842457109e-17 0.21646920350401774
		-0.39998350875820537 4.0000221842457109e-17 0.39998350875820354
		-0.21646920350401927 4.0000221842457109e-17 0.52260374182624236
		-1.5715383116344462e-15 4.0000221842457109e-17 0.56566192776793833
		0.21646920350401613 4.0000221842457109e-17 0.52260374182624236
		0.39998350875820149 4.0000221842457109e-17 0.39998350875820354
		0.52260374182624136 4.0000221842457109e-17 0.21646920350401774
		0.56566192776793667 4.0000221842457109e-17 0
		0.52260374182624136 4.0000221842457109e-17 -0.21646920350401774
		0.39998350875820149 4.0000221842457109e-17 -0.39998350875820354
		0.21646920350401613 4.0000221842457109e-17 -0.52260374182624236
		-1.5715383116344462e-15 4.0000221842457109e-17 -0.56566192776793833
		;
createNode joint -n "armStart_R_JNT" -p "armStart_R_CTL";
	rename -uid "70738DF1-47E0-20CB-4EC3-FF8378FF34D7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.5102810375396984e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73090818070466013 -0.68199836006249792 -0.025523876098019982 0
		 -0.03489949670250108 4.4408920985006262e-16 0.99939082701909565 0 -0.68158290508852681 0.73135370161917101 -0.023801399518112332 0
		 -1.0126903913127725 10.115835018213362 -0.055927422315755378 1;
createNode transform -n "armMid_controlJoint_R_GRP" -p "bend_SET";
	rename -uid "64CB5A26-4A1D-816E-02F5-ACBE3B442D2F";
	setAttr ".ove" yes;
	setAttr ".r" -type "double3" 90 0 -90 ;
createNode transform -n "armMid_controlJoint_R_offGRP" -p "armMid_controlJoint_R_GRP";
	rename -uid "62861224-4335-4794-FEF3-D885D1921E61";
createNode joint -n "armMid_control_R_JNT" -p "armMid_controlJoint_R_offGRP";
	rename -uid "F6472426-448D-8BE7-C623-0AB61FD390E3";
	setAttr ".t" -type "double3" 1.5957668964006189e-07 4.4415309126966118e-06 -1.418705153355404e-10 ;
	setAttr ".r" -type "double3" 0 0 -0.00010107934855751729 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73173299497772959 -0.68106370501259472 0.026815178079572066 0
		 0.0034011104077813492 0.035693036329991212 0.99935701308668468 0 -0.68158290508852692 0.7313537016191709 -0.023801399518112776 0
		 -2.2917797075459343 8.9223378881039856 -0.10059420548729382 1;
	setAttr ".ds" 2;
createNode transform -n "armMid_control_R_GRP" -p "armMid_control_R_JNT";
	rename -uid "C5DC4CE6-4479-D11B-28A3-D89E86EF6F16";
	setAttr ".ove" yes;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "armMid_control_R_offGRP" -p "armMid_control_R_GRP";
	rename -uid "4C8DF7EA-48FD-5DFC-3A64-40BE66164D78";
	setAttr ".v" no;
createNode transform -n "armMid_R_CTL" -p "armMid_control_R_offGRP";
	rename -uid "D95B84F3-453B-DD29-E752-9B8FF11E0887";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
	setAttr ".ro" 5;
createNode nurbsCurve -n "armMid_R_CTL_Shape" -p "armMid_R_CTL";
	rename -uid "92CD9288-4C91-640A-1B45-7A9D8B960129";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0 0.46907832721577525 0
		0 0.43337208494811003 0.17950830149391442
		0 0.33168856872256525 0.33168856872256525
		0 0.17950830149391442 0.43337208494811003
		0 0 0.46907832721577525
		0 -0.17950830149391442 0.43337208494811003
		0 -0.33168856872256525 0.33168856872256525
		0 -0.43337208494811003 0.17950830149391442
		0 -0.46907832721577525 0
		0 -0.43337208494811003 -0.17950830149391442
		0 -0.33168856872256525 -0.33168856872256525
		0 -0.17950830149391442 -0.43337208494811003
		0 0 -0.46907832721577525
		0 0.17950830149391442 -0.43337208494811003
		0 0.33168856872256525 -0.33168856872256525
		0 0.43337208494811003 -0.17950830149391442
		0 0.46907832721577525 0
		0.17950830149391442 0.43337208494811003 0
		0.33168856872256525 0.33168856872256525 0
		0.43337208494811003 0.17950830149391442 0
		0.46907832721577525 0 0
		0.43337208494811003 -0.17950830149391442 0
		0.33168856872256525 -0.33168856872256525 0
		0.17950830149391442 -0.43337208494811003 0
		0 -0.46907832721577525 0
		-0.17950830149391442 -0.43337208494811003 0
		-0.33168856872256525 -0.33168856872256525 0
		-0.43337208494811003 -0.17950830149391442 0
		-0.46907832721577525 0 0
		-0.43337208494811003 0.17950830149391442 0
		-0.33168856872256525 0.33168856872256525 0
		-0.17950830149391442 0.43337208494811003 0
		0 0.46907832721577525 0
		0 0.43337208494811003 -0.17950830149391442
		0 0.33168856872256525 -0.33168856872256525
		0 0.17950830149391442 -0.43337208494811003
		0 0 -0.46907832721577525
		-0.17950830149391442 0 -0.43337208494811003
		-0.33168856872256525 0 -0.33168856872256525
		-0.43337208494811003 0 -0.17950830149391442
		-0.46907832721577525 0 0
		-0.43337208494811003 0 0.17950830149391442
		-0.33168856872256525 0 0.33168856872256525
		-0.17950830149391442 0 0.43337208494811003
		0 0 0.46907832721577525
		0.17950830149391442 0 0.43337208494811003
		0.33168856872256525 0 0.33168856872256525
		0.43337208494811003 0 0.17950830149391442
		0.46907832721577525 0 0
		0.43337208494811003 0 -0.17950830149391442
		0.33168856872256525 0 -0.33168856872256525
		0.17950830149391442 0 -0.43337208494811003
		0 0 -0.46907832721577525
		;
createNode joint -n "armMid_R_JNT" -p "armMid_R_CTL";
	rename -uid "269A5949-4691-5F59-EBB8-5C912DDACCC8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.7317329949777297 -0.68106370501259483 0.026815178079572073 0
		 0.0034011104077813501 0.035693036329991219 0.9993570130866849 0 -0.68158290508852692 0.7313537016191709 -0.023801399518112776 0
		 -2.2917797075459343 8.9223378881039856 -0.10059420548729382 1;
createNode transform -n "bend_shoulder_control_R_GRP" -p "bend_SET";
	rename -uid "EA69BCDC-481C-F194-9F43-359B8DB218FE";
	setAttr ".t" -type "double3" -2.2694639204381915 12.879688073640875 -0.31837199375066344 ;
	setAttr ".r" -type "double3" 91.629361073222924 2.6613670407132339 -125.46629431547865 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "bend_shoulder_control_R_offGRP" -p "bend_shoulder_control_R_GRP";
	rename -uid "3BB5CB17-49E8-ADBC-A170-D9864AAA3DBF";
createNode transform -n "bend_shoulder_R_CTL" -p "bend_shoulder_control_R_offGRP";
	rename -uid "171309D6-4A80-E150-CDD5-E9A1FA03CB06";
	setAttr ".t" -type "double3" 0 -3.1225022567582528e-17 1.7763568394002505e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "bend_shoulder_R_CTLShape" -p "bend_shoulder_R_CTL";
	rename -uid "404B6CCF-40E1-3E71-84B5-4AB73123A6A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		-1.0408340855860843e-17 -1 0
		-1.0408340855860843e-17 -0.29160023273973912 -0.29160026651639392
		-1.0408340855860843e-17 -1.3533173064909473e-08 -0.99999986407963004
		-1.0408340855860843e-17 0.29160029025576972 -0.29160027543842054
		-1.0408340855860843e-17 0.99999985819564463 3.8177201209262268e-16
		-1.0408340855860843e-17 0.29160029025576817 0.29160027543842199
		-1.0408340855860843e-17 -1.3533173556814591e-08 0.9999998640796306
		-1.0408340855860843e-17 -0.29160023273973951 0.29160026651639326
		-1.0408340855860843e-17 -1 0
		;
createNode joint -n "bend_shoulder_R_JNT" -p "bend_shoulder_R_CTL";
	rename -uid "9ECCA9F3-49B6-78E6-6739-3585FEDD73DD";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.7347234759768071e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" -0.72974415440481921 -0.68176465625779392 -0.051676131721396019 0
		 -0.054020483180722952 -0.017852635817410475 0.99838022355778466 0 -0.68158290508852715 0.73135370161917046 -0.023801399518112106 0
		 -1.6534723792969446 9.5186773157729281 -0.055393076942967995 1;
	setAttr ".radi" 0.58106862780426993;
createNode pointConstraint -n "bend_shoulder_control_R_offGRP_pointConstraint1" -p
		 "bend_shoulder_control_R_offGRP";
	rename -uid "806BDA06-4EB7-B1F2-F86E-66B6DF5DF8A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_TWST_start_R_CTLW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "armUpper_TWST_end_R_CTLW1" -dv 1 -min 
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
	setAttr ".o" -type "double3" 1.5376787132481695e-07 0.022904835724180561 -1.6525738288919456e-07 ;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode orientConstraint -n "bend_shoulder_control_R_offGRP_orientConstraint1" 
		-p "bend_shoulder_control_R_offGRP";
	rename -uid "F5C8EF36-48F8-8010-6605-3BA2B9DBAFC3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_TWST_start_R_CTLW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "armUpper_TWST_end_R_CTLW1" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -92.000019396604401 35.525509345462289 1.4999666188731697 ;
	setAttr ".o" -type "double3" 0 0 -1.5000000000000335 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode transform -n "armUpper_TGET_RIG_R_GRP" -p "bend_SET";
	rename -uid "0DF7601F-4ECD-4301-1845-DAB3B5151AA6";
createNode transform -n "armUpper_TGET_R_GRP" -p "armUpper_TGET_RIG_R_GRP";
	rename -uid "E5243579-476D-E55F-11CB-989B28328025";
createNode transform -n "armUpper_TGET_joint_R_spcGRP" -p "armUpper_TGET_R_GRP";
	rename -uid "75CE5364-43AF-B757-7E0D-EFB94DD2E501";
createNode transform -n "armUpper_TGET_joint_R_offGRP" -p "armUpper_TGET_joint_R_spcGRP";
	rename -uid "D3C35685-46D7-303D-3244-A8946B92CFB6";
createNode joint -n "armUpper_TGET_R_JNT" -p "armUpper_TGET_joint_R_offGRP";
	rename -uid "E6FC6984-422D-434D-9E7A-DAA02594AFC7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_01_R_spcGRP" -p "armUpper_TGET_R_GRP";
	rename -uid "B3193ABE-4EFC-F97F-7FB5-118F92E36D53";
createNode transform -n "armUpper_TGET_joint_01_R_offGRP" -p "armUpper_TGET_joint_01_R_spcGRP";
	rename -uid "4DD85B87-4167-32E1-43DC-BAB4B6176E2E";
createNode joint -n "armUpper_TGET_01_R_JNT" -p "armUpper_TGET_joint_01_R_offGRP";
	rename -uid "61EAF6F1-4D91-77E1-43F9-70B1CB208843";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_02_R_spcGRP" -p "armUpper_TGET_R_GRP";
	rename -uid "588DB465-471E-ABFC-A637-18941D3ED6C5";
createNode transform -n "armUpper_TGET_joint_02_R_offGRP" -p "armUpper_TGET_joint_02_R_spcGRP";
	rename -uid "693E80B0-41BF-12AA-02EA-798DFF6FAB7F";
createNode joint -n "armUpper_TGET_02_R_JNT" -p "armUpper_TGET_joint_02_R_offGRP";
	rename -uid "D344E411-48CF-4A5D-9CE0-ECA0009F5CE0";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_03_R_spcGRP" -p "armUpper_TGET_R_GRP";
	rename -uid "3885134F-402A-D7BC-7E94-B6A704F418BA";
createNode transform -n "armUpper_TGET_joint_03_R_offGRP" -p "armUpper_TGET_joint_03_R_spcGRP";
	rename -uid "98A2E48C-46DA-AC6B-A408-95829507C5DC";
createNode joint -n "armUpper_TGET_03_R_JNT" -p "armUpper_TGET_joint_03_R_offGRP";
	rename -uid "79550FD8-4016-26D1-9834-38BA38897622";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_04_R_spcGRP" -p "armUpper_TGET_R_GRP";
	rename -uid "48033091-47C8-19EA-6B02-B3B9FC4A61DF";
createNode transform -n "armUpper_TGET_joint_04_R_offGRP" -p "armUpper_TGET_joint_04_R_spcGRP";
	rename -uid "B4C14111-4FB3-1D4C-48F4-38AC20612397";
createNode joint -n "armUpper_TGET_04_R_JNT" -p "armUpper_TGET_joint_04_R_offGRP";
	rename -uid "21D5259B-4080-16E5-0323-4CACB5CEFAF7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.57376969512723575;
createNode transform -n "armUpper_TGET_R_SRF" -p "armUpper_TGET_R_GRP";
	rename -uid "D3A9C579-42AF-C707-E680-27945C62B4BF";
	setAttr ".t" -type "double3" -1.0126903913127749 10.115835018213355 -0.055927422315755565 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 91.36429308430057 1.4625692094543117 -136.98258531687821 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.87500000000000178 0 0 ;
	setAttr ".rpt" -type "double3" -1.5145446581165805 -0.59674856505468676 -0.022333391585767887 ;
	setAttr ".sp" -type "double3" 0.87500000000000178 0 0 ;
createNode nurbsSurface -n "armUpper_TGET_R_SRFShape" -p "armUpper_TGET_R_SRF";
	rename -uid "AA162020-4562-EA5E-439F-9FB71C439694";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "armUpper_TGET_R_SRFShapeOrig" -p "armUpper_TGET_R_SRF";
	rename -uid "1BF312AB-43D6-AF45-E2DA-DAA61AFAF789";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		5 1 0 0 no 
		10 0 0 0 0 0 1 1 1 1 1
		2 0 1
		
		12
		-1.686343371104106e-15 -4.382571663853402e-18 0.17500000000000079
		8.8138188278250854e-16 2.4221438675305256e-18 -0.17499999999999893
		0.3500000000000032 2.6128333574607846e-17 0.17500000000000432
		0.3500000000000012 1.9546249676340687e-18 -0.17500000000000052
		0.70000000000000417 -6.3259339671545485e-17 0.17499999999999424
		0.70000000000000395 6.1608839454685411e-18 -0.17499999999999913
		1.0499999999999996 1.1756371962539969e-16 0.17500000000000351
		1.0499999999999985 -1.6794817089342807e-17 -0.17500000000000107
		1.4000000000000044 -7.709069395559888e-17 0.17499999999999896
		1.4000000000000046 1.1350624016269718e-17 -0.17499999999999857
		1.7500000000000033 1.088314876780047e-17 0.17500000000000238
		1.7500000000000013 -5.3850764218515521e-18 -0.17499999999999716
		
		;
createNode transform -n "armUpper_TWST_control_R_GRP" -p "armUpper_TGET_RIG_R_GRP";
	rename -uid "C0E32AB8-4958-EA5D-4350-9992F6202E85";
createNode transform -n "armUpper_TWST_control_R_spcGRP" -p "armUpper_TWST_control_R_GRP";
	rename -uid "CE34D4CF-4246-F50D-8DD7-7A8F0AFE0A89";
	setAttr ".ove" yes;
createNode transform -n "armUpper_TWST_control_R_offGRP" -p "armUpper_TWST_control_R_spcGRP";
	rename -uid "8881C5AB-4A4E-B6BA-BD58-D1AA10271428";
createNode transform -n "armUpper_TWST_control_start_R_GRP" -p "armUpper_TWST_control_R_offGRP";
	rename -uid "BF09DFD9-4BD5-BD27-C2CA-7295035B3540";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 4.8572257327350599e-17 -1.7763568394002505e-15 ;
createNode transform -n "armUpper_TWST_control_start_R_oriGRP" -p "armUpper_TWST_control_start_R_GRP";
	rename -uid "E0B96A01-49BD-69A9-CDFB-49B76B471930";
createNode transform -n "armUpper_TWST_control_start_R_aimGRP" -p "armUpper_TWST_control_start_R_oriGRP";
	rename -uid "2C8FC88E-40A6-95E2-8B39-52981E507102";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "armUpper_TWST_start_R_CTL" -p "armUpper_TWST_control_start_R_aimGRP";
	rename -uid "34D18136-4F02-6E66-24FB-579DE5691B71";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armUpper_TWST_start_R_CTLShape" -p "armUpper_TWST_start_R_CTL";
	rename -uid "BBE4830E-4295-9945-EEAE-B08E52E53491";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5286585618247318e-15 0.22122994943473345 -0.2212299494347329
		5.5930014440043989e-16 -7.5436242330155176e-17 -0.3128663948937136
		-2.1130877481160631e-16 -0.22122994943473318 -0.22122994943473309
		-3.3175594222266474e-16 -0.31286639489371382 -9.0660853941008084e-17
		2.685149592872405e-16 -0.22122994943473334 0.22122994943473306
		1.2378733767115313e-15 -1.3401467834768627e-16 0.31286639489371365
		2.0084822959235777e-15 0.22122994943473304 0.22122994943473315
		2.1289294633346367e-15 0.31286639489371365 1.6804115101667336e-16
		1.5286585618247318e-15 0.22122994943473345 -0.2212299494347329
		5.5930014440043989e-16 -7.5436242330155176e-17 -0.3128663948937136
		-2.1130877481160631e-16 -0.22122994943473318 -0.22122994943473309
		;
createNode joint -n "armUpper_TWST_start_R_JNT" -p "armUpper_TWST_start_R_CTL";
	rename -uid "AEDF0E76-470E-BF14-F840-E8BDC751D341";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 2.7755575615628914e-17 0 ;
	setAttr ".r" -type "double3" -9.9392333795734899e-16 -3.1060104311167075e-18 9.9392333795734899e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -0.73090818070465979 -0.68199836006249814 -0.025523876098019805 0
		 -0.034899496702500636 1.1102230246251564e-16 0.99939082701909554 0 -0.68158290508852704 0.73135370161917057 -0.023801399518112103 0
		 -1.0126903913127712 10.115835018213343 -0.055927410394826287 1;
	setAttr ".radi" 0.58106862780426993;
createNode aimConstraint -n "armUpper_TWST_control_start_R_aimGRP_aimConstraint1" 
		-p "armUpper_TWST_control_start_R_aimGRP";
	rename -uid "022984B2-4E16-8CCB-A91D-D3A6EF7730FF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armMid_R_CTLW0" -dv 1 -at "double";
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
	setAttr -k on ".w0";
createNode orientConstraint -n "armUpper_TWST_control_start_R_oriGRP_orientConstraint1" 
		-p "armUpper_TWST_control_start_R_oriGRP";
	rename -uid "FEB3A4BE-4DB8-D34E-D1D0-DD97C634A654";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_IK_TWST_start_R_JNTW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 5.0733123950451815e-05 359.99989590962014 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_control_end_R_GRP" -p "armUpper_TWST_control_R_offGRP";
	rename -uid "00EDF90E-422C-B024-D269-B7871336EDEB";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.4427755611416542 -1.1913665970419984e-08 2.8375701788263541e-10 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "armUpper_TWST_control_end_R_conGRP" -p "armUpper_TWST_control_end_R_GRP";
	rename -uid "B86DF5BF-4B24-55CB-B187-CFA9852A8675";
createNode transform -n "armUpper_TWST_control_end_R_offGRP" -p "armUpper_TWST_control_end_R_conGRP";
	rename -uid "7208256B-49F5-E65B-E6D1-B8A04F4B4FF4";
	setAttr ".t" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "armUpper_TWST_end_R_CTL" -p "armUpper_TWST_control_end_R_offGRP";
	rename -uid "BF7EBEB2-4DFB-8135-F9ED-4892826D6373";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.7755575615628914e-16 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode nurbsCurve -n "armUpper_TWST_end_R_CTLShape" -p "armUpper_TWST_end_R_CTL";
	rename -uid "23DA9325-45BE-5F34-E7F1-BBA11180BCBC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5737613722001288e-15 0.22122994943473348 -0.2212299494347329
		6.0440295477583687e-16 -3.1656497647763559e-17 -0.3128663948937136
		-1.6620596443620932e-16 -0.22122994943473315 -0.22122994943473309
		-2.8665313184726775e-16 -0.31286639489371382 -9.0660853941008084e-17
		3.1361776966263748e-16 -0.22122994943473331 0.22122994943473306
		1.2829761870869283e-15 -9.023493366529468e-17 0.31286639489371365
		2.0535851062989747e-15 0.22122994943473306 0.22122994943473315
		2.1740322737100337e-15 0.31286639489371365 1.6804115101667336e-16
		1.5737613722001288e-15 0.22122994943473348 -0.2212299494347329
		6.0440295477583687e-16 -3.1656497647763559e-17 -0.3128663948937136
		-1.6620596443620932e-16 -0.22122994943473315 -0.22122994943473309
		;
createNode joint -n "armUpper_TWST_end_R_JNT" -p "armUpper_TWST_end_R_CTL";
	rename -uid "1E2FEA8A-4F9F-8C28-B88F-5B86DFAA2BE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 5.5511151231257827e-17 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".is" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".bps" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.034899496702500657 1.110223024625157e-16 0.9993908270190961 0 -0.68158290508852737 0.7313537016191709 -0.023801399518112117 0
		 -2.2917797075459285 8.9223378881039856 -0.10059420548728977 1;
	setAttr ".radi" 0.57376969512723575;
createNode pointConstraint -n "armUpper_TWST_control_end_R_conGRP_pointConstraint1" 
		-p "armUpper_TWST_control_end_R_conGRP";
	rename -uid "FACD7884-48EA-3D43-E71E-AC8B08779D0C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armMid_R_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 3.042552876308946e-10 -1.1913666914109555e-08 2.8374991245527781e-10 ;
	setAttr ".rst" -type "double3" 2.6645352591003757e-15 -2.4980018054066022e-16 -3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "armUpper_TWST_control_end_R_conGRP_aimConstraint1" -p
		 "armUpper_TWST_control_end_R_conGRP";
	rename -uid "A9606F14-4827-1CE8-0DE9-CF800C3DED84";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armStart_R_CTLW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_locator_start_R_GRP" -p "armUpper_TGET_RIG_R_GRP";
	rename -uid "FF138B4E-4FDB-FC95-CEE6-5BAA65717908";
	setAttr ".t" -type "double3" -1.5590437802108048 13.87421176727659 -0.31647452126113462 ;
	setAttr ".r" -type "double3" 91.627938043150905 1.1619729287584313 -125.50894904287721 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1 ;
createNode transform -n "armUpper_TWST_locator_start_R_offGRP" -p "armUpper_TWST_locator_start_R_GRP";
	rename -uid "57D4B12A-4CBF-867E-2126-3FB66D18AC67";
createNode transform -n "armUpper_TWST_start_R_LOC" -p "armUpper_TWST_locator_start_R_offGRP";
	rename -uid "D3F3F3AC-4435-A2CF-B1E0-2892DEF15FE7";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -5.2041704279304213e-17 -5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "armUpper_TWST_start_R_LOCShape" -p "armUpper_TWST_start_R_LOC";
	rename -uid "A6E12A54-473D-55DB-7D61-1D8279790061";
	setAttr -k off ".v";
createNode transform -n "armUpper_TWST_start_R_vecLOC" -p "armUpper_TWST_start_R_LOC";
	rename -uid "4396DC83-4C1B-0743-55F0-29AA05651A06";
	setAttr ".t" -type "double3" 9.8607613152626476e-32 0 1 ;
createNode locator -n "armUpper_TWST_start_R_vecLOCShape" -p "armUpper_TWST_start_R_vecLOC";
	rename -uid "868E199C-4753-1427-9EF3-B0A9F16A7A9B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode parentConstraint -n "armUpper_TWST_locator_start_R_offGRP_parentConstraint1" 
		-p "armUpper_TWST_locator_start_R_offGRP";
	rename -uid "F2D84386-4E6F-DF8B-E46A-55A58BE94E9E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_IK_TWST_start_R_JNTW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.5212542336939805e-10 -5.9568336374660191e-09 
		1.418722916923798e-10 ;
	setAttr ".lr" -type "double3" 87.999963800458943 144.47454355331479 179.99993770135075 ;
	setAttr ".rst" -type "double3" 0 -1.1102230246251565e-16 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_locator_end_R_GRP" -p "armUpper_TGET_RIG_R_GRP";
	rename -uid "6230C2CB-4E23-D679-FDCE-3DA08F3BFD5A";
	setAttr ".t" -type "double3" -2.9775896011145724 11.886140765319595 -0.36601123288639559 ;
	setAttr ".r" -type "double3" 91.628440154095316 -1.8368163947637393 -125.59418110019624 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "armUpper_TWST_locator_end_R_conGRP" -p "armUpper_TWST_locator_end_R_GRP";
	rename -uid "93D7BEFB-472E-D9C7-3CC9-F98A7798659A";
createNode transform -n "armUpper_TWST_locator_end_R_offGRP" -p "armUpper_TWST_locator_end_R_conGRP";
	rename -uid "6E8FF7E7-4663-48B6-48D8-F4BCC49EEC9C";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.6653345369377348e-16 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 0 -3.975693351829396e-16 ;
createNode transform -n "armUpper_TWST_end_R_LOC" -p "armUpper_TWST_locator_end_R_offGRP";
	rename -uid "BDE63A4B-4570-B0DC-A5E4-018CA4A06AFE";
	setAttr ".t" -type "double3" -2.6645352591003757e-15 -2.7755575615628914e-17 -5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode locator -n "armUpper_TWST_end_R_LOCShape" -p "armUpper_TWST_end_R_LOC";
	rename -uid "D52DE4D9-4628-AAC4-2C03-5C887A0C330C";
	setAttr -k off ".v";
createNode transform -n "armUpper_TWST_end_R_vecLOC" -p "armUpper_TWST_end_R_LOC";
	rename -uid "DD909413-48AF-EDFC-A2D7-64BAB58B456C";
	setAttr ".t" -type "double3" 0 8.7581154020301067e-47 1 ;
createNode locator -n "armUpper_TWST_end_R_vecLOCShape" -p "armUpper_TWST_end_R_vecLOC";
	rename -uid "0E24073E-4462-6CAF-7A3E-5993DCA19C7D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode pointConstraint -n "armUpper_TWST_locator_end_R_conGRP_pointConstraint1" 
		-p "armUpper_TWST_locator_end_R_conGRP";
	rename -uid "D78C0C26-41E8-78C2-72FE-2692DA8F0AE3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armMid_R_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -3.1966962410479027e-10 -1.1913263070484348e-08 2.8374813609843841e-10 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "armUpper_TWST_locator_end_R_conGRP_orientConstraint1" 
		-p "armUpper_TWST_locator_end_R_conGRP";
	rename -uid "96043206-4277-B3C0-F46D-0F83094AB52E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armStart_R_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -92.000002593623876 35.525562244232525 -3.000004463566432 ;
	setAttr ".o" -type "double3" 0 0 3.0000000000000533 ;
	setAttr -k on ".w0";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "B94D76EB-4277-36E1-A4EC-3A847E0476FE";
createNode decomposeMatrix -n "armUpper_TGET_joint_R_DCMX";
	rename -uid "7839326D-4EDE-0295-A426-0CBBE119D070";
createNode fourByFourMatrix -n "armUpper_TGET_joint_R_FFMX";
	rename -uid "5CEC48DA-440D-5FBA-E0F1-EDA15248A854";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_R_POSI";
	rename -uid "2CE74A4D-4DCC-44EE-71E8-7F9FF03817F9";
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_01_R_DCMX";
	rename -uid "6BF7B630-428C-BDB8-5443-819D6D30714F";
createNode fourByFourMatrix -n "armUpper_TGET_joint_01_R_FFMX";
	rename -uid "C5D763AC-497B-84E2-7968-018CCC0FE449";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_01_R_POSI";
	rename -uid "EA32D475-4D08-7012-A29E-F591F60AB95C";
	setAttr ".u" 0.25;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_02_R_DCMX";
	rename -uid "36493FD5-4FD8-C7B7-D792-91935C104F13";
createNode fourByFourMatrix -n "armUpper_TGET_joint_02_R_FFMX";
	rename -uid "EB93A099-47F7-C602-A6EB-9F9B478BA871";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_02_R_POSI";
	rename -uid "9201A16C-4B87-6BC2-811A-36BBDB645877";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_03_R_DCMX";
	rename -uid "DF2224B7-403E-04DD-E17E-90A11653A534";
createNode fourByFourMatrix -n "armUpper_TGET_joint_03_R_FFMX";
	rename -uid "DD3707DE-4498-796B-F574-1CBE4512D316";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_03_R_POSI";
	rename -uid "83FFFB94-4F36-DAE8-A241-EDA5CDBA8DCC";
	setAttr ".u" 0.75;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_04_R_DCMX";
	rename -uid "9EE0D4A3-408C-5ADC-B057-2B93C5C5D2AF";
createNode fourByFourMatrix -n "armUpper_TGET_joint_04_R_FFMX";
	rename -uid "D7BF8320-4545-4B2F-5476-AF96F7B8EB9E";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_04_R_POSI";
	rename -uid "98B7DD08-47A5-E30A-7A6B-AC893966189D";
	setAttr ".u" 1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "9D3478F0-47B3-1BDF-0F43-3091074B4A53";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 0 1
		1 0 1
		2 0 0.5 2 0.5
		2 0 0.5 2 0.5
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 1 0.5 2 0.5
		2 1 0.5 2 0.5
		1 1 1
		1 1 1;
	setAttr -k off ".wl[0].w";
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.73090818070466013 -0.034899496702500664 -0.68158290508852737 0
		 -0.68199836006249848 1.2490009027033018e-16 0.73135370161917079 0 -0.025523876098019819 0.99939082701909598 -0.023801399518112092 0
		 6.1573717172593847 0.020550955955246378 -8.0898169950441776 1;
	setAttr ".pm[1]" -type "matrix" -0.73090818070466002 -0.034899496702500657 -0.68158290508852704 0
		 -0.68199836006249825 1.2836953722228365e-16 0.73135370161917057 0 -0.025523876098019812 0.99939082701909543 -0.023801399518112078 0
		 4.4073717169551241 0.020550967868913195 -8.0898169953279222 1;
	setAttr ".pm[2]" -type "matrix" -0.72974415440481954 -0.054020483180722952 -0.68158290508852748 0
		 -0.68176465625779425 -0.017852635817410509 0.73135370161917068 0 -0.051676131721396019 0.99838022355778477 -0.023801399518112134 0
		 5.2800234650144615 0.13591545526821408 -8.0898168299286706 1;
	setAttr ".gm" -type "matrix" -0.73090818070466024 -0.68199836006249792 -0.025523876098020315 0
		 -0.034899496702501254 1.1102230246251565e-16 0.99939082701909565 0 -0.68158290508852681 0.7313537016191709 -0.023801399518112554 0
		 -1.0126903913127747 10.115835018213355 -0.055927422315755634 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "725111CA-4C76-43F8-3211-548AFC48C2FA";
	setAttr -s 21 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[4]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.034899496702500643 1.1102230246251565e-16 0.99939082701909565 0 -0.68158290508852715 0.73135370161917068 -0.02380139951811211 0
		 -1.0126903913127729 10.115835018213343 -0.055927410394826432 1;
	setAttr ".wm[5]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.034899496702500643 1.1102230246251565e-16 0.99939082701909565 0 -0.68158290508852715 0.73135370161917068 -0.02380139951811211 0
		 -1.0126903913127729 10.115835018213343 -0.055927410394826432 1;
	setAttr ".wm[6]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.034899496702500643 1.1102230246251565e-16 0.99939082701909565 0 -0.68158290508852715 0.73135370161917068 -0.02380139951811211 0
		 -1.0126903913127712 10.115835018213343 -0.055927410394826321 1;
	setAttr ".wm[7]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.034899496702500643 1.1102230246251565e-16 0.99939082701909565 0 -0.68158290508852715 0.73135370161917068 -0.02380139951811211 0
		 -1.0126903913127712 10.115835018213343 -0.055927410394826321 1;
	setAttr ".wm[8]" -type "matrix" -0.7309081807046599 -0.68199836006249825 -0.025523876098019812 0
		 -0.034899496702500643 1.1102230246251565e-16 0.99939082701909565 0 -0.68158290508852704 0.73135370161917057 -0.023801399518112103 0
		 -1.0126903913127718 10.115835018213343 -0.055927410394826335 1;
	setAttr ".wm[9]" -type "matrix" -0.7309081807046599 -0.68199836006249825 -0.025523876098019812 0
		 -0.034899496702500643 1.1102230246251565e-16 0.99939082701909565 0 -0.68158290508852704 0.73135370161917057 -0.023801399518112103 0
		 -1.0126903913127718 10.115835018213343 -0.055927410394826335 1;
	setAttr ".wm[11]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.03489949670250065 1.1102230246251568e-16 0.99939082701909587 0 -0.68158290508852726 0.73135370161917079 -0.023801399518112117 0
		 -2.2917797075459285 8.922337888103991 -0.1005942054872897 1;
	setAttr ".wm[12]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.03489949670250065 1.1102230246251568e-16 0.99939082701909587 0 -0.68158290508852726 0.73135370161917079 -0.023801399518112117 0
		 -2.2917797075459281 8.9223378881039874 -0.10059420548728994 1;
	setAttr ".wm[13]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.03489949670250065 1.1102230246251568e-16 0.99939082701909587 0 -0.68158290508852715 0.73135370161917068 -0.02380139951811211 0
		 -2.2917797075459281 8.9223378881039874 -0.10059420548729008 1;
	setAttr ".wm[14]" -type "matrix" -0.73090818070466002 -0.68199836006249837 -0.025523876098019815 0
		 -0.03489949670250065 1.1102230246251568e-16 0.99939082701909587 0 -0.68158290508852748 0.73135370161917101 -0.02380139951811212 0
		 -2.2917797075459285 8.9223378881039874 -0.10059420548728983 1;
	setAttr ".wm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[17]" -type "matrix" -0.72974415440481921 -0.68176465625779392 -0.051676131721396019 0
		 -0.054020483180722952 -0.017852635817410475 0.99838022355778466 0 -0.68158290508852715 0.73135370161917046 -0.023801399518112106 0
		 -1.6534723792969435 9.5186773157729263 -0.055393076942967932 1;
	setAttr ".wm[18]" -type "matrix" -0.72974415440481921 -0.68176465625779392 -0.051676131721396019 0
		 -0.054020483180722952 -0.017852635817410475 0.99838022355778466 0 -0.68158290508852715 0.73135370161917046 -0.023801399518112106 0
		 -1.6534723792969435 9.5186773157729263 -0.055393076942967932 1;
	setAttr ".wm[19]" -type "matrix" -0.72974415440481921 -0.68176465625779392 -0.051676131721396019 0
		 -0.054020483180722952 -0.017852635817410475 0.99838022355778466 0 -0.68158290508852715 0.73135370161917046 -0.023801399518112106 0
		 -1.6534723792969446 9.5186773157729281 -0.055393076942968009 1;
	setAttr -s 21 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.5946077330781296 0.025526648243267815
		 -2.3907971316735646 0 -1.0126903913127729 10.115835018213343 -0.055927410394826432 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.8817841970012523e-16
		 4.8572257327350599e-17 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999978 0
		 0 0 0 8.8817841970012523e-16 1.0408340855860843e-17 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999989
		 1 -1.7347234759768071e-17 -5.4210108624275077e-20 1.7347234759768071e-17 0 -8.8817841970012523e-16
		 2.7755575615628914e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1.0000000000000002 1.0000000000000002 0
		 0 0 0 1.7500000003042553 -1.1913666650431587e-08 2.8374991245527781e-10 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 2.7755575615628914e-17 0 2.6645352591003757e-15
		 -2.4980018054066022e-16 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 0.99999999999999978 0 0 0 0 0 -1.3877787807814457e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1.0000000000000004 0 0 0 0 8.8817841970012523e-16
		 2.7755575615628914e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999989 0
		 0 0 0 1.7763568394002505e-15 5.5511151231257827e-17 -1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002 1.0000000000000002
		 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999989
		 0.99999999999999989 1.594631826885665 0.051699158921952537 -2.390173046738751 0 -1.6534723792969435
		 9.5186773157729263 -0.055393076942967932 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -3.1225022567582528e-17
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.7347234759768071e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 21 ".m";
	setAttr -s 21 ".p";
	setAttr -s 21 ".g[0:20]" yes yes yes yes yes yes yes yes yes yes no 
		yes yes yes yes no yes yes yes yes no;
	setAttr ".bp" yes;
createNode objectSet -n "skinCluster1Set";
	rename -uid "169109C7-4E59-7756-1ECF-84BE73F52F40";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "8BBADF82-404C-F405-91A6-DAA83C6B617E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "D13554D0-47F5-4BF5-59D8-2DBA2B841B73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode tweak -n "tweak1";
	rename -uid "81B6AC55-4F76-058F-E568-948C637A00B8";
createNode objectSet -n "tweakSet1";
	rename -uid "A3C558D1-422A-4683-FA0C-DAB7152C9929";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "D839C645-4765-620B-62E2-A0950D30ECC0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "E7BDF165-46A7-63CD-CDEF-EE93B49F0DF8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode decomposeMatrix -n "armUpper_TWST_control_R_DCMX";
	rename -uid "FBD4B1A8-4255-8BF8-D616-16AE601416BD";
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
	setAttr -s 67 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 35 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 633 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 200 ".gn";
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
	setAttr -s 7 ".sol";
connectAttr "armUpper_IK_TWST_start_R_JNT.s" "armUpper_IK_TWST_end_R_JNT.is";
connectAttr "armUpper_IK_TWST_end_R_JNT.tx" "armUpper_IK_TWST_R_effector.tx";
connectAttr "armUpper_IK_TWST_end_R_JNT.ty" "armUpper_IK_TWST_R_effector.ty";
connectAttr "armUpper_IK_TWST_end_R_JNT.tz" "armUpper_IK_TWST_R_effector.tz";
connectAttr "armUpper_IK_TWST_start_R_JNT.msg" "armUpper_IK_TWST_R_IKH.hsj";
connectAttr "armUpper_IK_TWST_R_effector.hp" "armUpper_IK_TWST_R_IKH.hee";
connectAttr "ikSCsolver1.msg" "armUpper_IK_TWST_R_IKH.hsv";
connectAttr "bend_shoulder_control_R_offGRP_pointConstraint1.ctx" "bend_shoulder_control_R_offGRP.tx"
		;
connectAttr "bend_shoulder_control_R_offGRP_pointConstraint1.cty" "bend_shoulder_control_R_offGRP.ty"
		;
connectAttr "bend_shoulder_control_R_offGRP_pointConstraint1.ctz" "bend_shoulder_control_R_offGRP.tz"
		;
connectAttr "bend_shoulder_control_R_offGRP_orientConstraint1.crx" "bend_shoulder_control_R_offGRP.rx"
		;
connectAttr "bend_shoulder_control_R_offGRP_orientConstraint1.cry" "bend_shoulder_control_R_offGRP.ry"
		;
connectAttr "bend_shoulder_control_R_offGRP_orientConstraint1.crz" "bend_shoulder_control_R_offGRP.rz"
		;
connectAttr "bend_shoulder_control_R_offGRP.pim" "bend_shoulder_control_R_offGRP_pointConstraint1.cpim"
		;
connectAttr "bend_shoulder_control_R_offGRP.rp" "bend_shoulder_control_R_offGRP_pointConstraint1.crp"
		;
connectAttr "bend_shoulder_control_R_offGRP.rpt" "bend_shoulder_control_R_offGRP_pointConstraint1.crt"
		;
connectAttr "armUpper_TWST_start_R_CTL.t" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armUpper_TWST_start_R_CTL.rp" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armUpper_TWST_start_R_CTL.rpt" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armUpper_TWST_start_R_CTL.pm" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "bend_shoulder_control_R_offGRP_pointConstraint1.w0" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_R_CTL.t" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[1].tt"
		;
connectAttr "armUpper_TWST_end_R_CTL.rp" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[1].trp"
		;
connectAttr "armUpper_TWST_end_R_CTL.rpt" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[1].trt"
		;
connectAttr "armUpper_TWST_end_R_CTL.pm" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[1].tpm"
		;
connectAttr "bend_shoulder_control_R_offGRP_pointConstraint1.w1" "bend_shoulder_control_R_offGRP_pointConstraint1.tg[1].tw"
		;
connectAttr "bend_shoulder_control_R_offGRP.ro" "bend_shoulder_control_R_offGRP_orientConstraint1.cro"
		;
connectAttr "bend_shoulder_control_R_offGRP.pim" "bend_shoulder_control_R_offGRP_orientConstraint1.cpim"
		;
connectAttr "armUpper_TWST_start_R_CTL.r" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armUpper_TWST_start_R_CTL.ro" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armUpper_TWST_start_R_CTL.pm" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "bend_shoulder_control_R_offGRP_orientConstraint1.w0" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_R_CTL.r" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[1].tr"
		;
connectAttr "armUpper_TWST_end_R_CTL.ro" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[1].tro"
		;
connectAttr "armUpper_TWST_end_R_CTL.pm" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[1].tpm"
		;
connectAttr "bend_shoulder_control_R_offGRP_orientConstraint1.w1" "bend_shoulder_control_R_offGRP_orientConstraint1.tg[1].tw"
		;
connectAttr "armUpper_TGET_joint_R_DCMX.ot" "armUpper_TGET_joint_R_spcGRP.t";
connectAttr "armUpper_TGET_joint_R_DCMX.or" "armUpper_TGET_joint_R_spcGRP.r";
connectAttr "armUpper_TGET_joint_01_R_DCMX.ot" "armUpper_TGET_joint_01_R_spcGRP.t"
		;
connectAttr "armUpper_TGET_joint_01_R_DCMX.or" "armUpper_TGET_joint_01_R_spcGRP.r"
		;
connectAttr "armUpper_TGET_joint_02_R_DCMX.ot" "armUpper_TGET_joint_02_R_spcGRP.t"
		;
connectAttr "armUpper_TGET_joint_02_R_DCMX.or" "armUpper_TGET_joint_02_R_spcGRP.r"
		;
connectAttr "armUpper_TGET_joint_03_R_DCMX.ot" "armUpper_TGET_joint_03_R_spcGRP.t"
		;
connectAttr "armUpper_TGET_joint_03_R_DCMX.or" "armUpper_TGET_joint_03_R_spcGRP.r"
		;
connectAttr "armUpper_TGET_joint_04_R_DCMX.ot" "armUpper_TGET_joint_04_R_spcGRP.t"
		;
connectAttr "armUpper_TGET_joint_04_R_DCMX.or" "armUpper_TGET_joint_04_R_spcGRP.r"
		;
connectAttr "skinCluster1.og[0]" "armUpper_TGET_R_SRFShape.cr";
connectAttr "skinCluster1GroupId.id" "armUpper_TGET_R_SRFShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "armUpper_TGET_R_SRFShape.iog.og[0].gco";
connectAttr "groupId2.id" "armUpper_TGET_R_SRFShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "armUpper_TGET_R_SRFShape.iog.og[1].gco";
connectAttr "tweak1.pl[0].cp[0]" "armUpper_TGET_R_SRFShape.twl";
connectAttr "armUpper_TWST_control_R_DCMX.ot" "armUpper_TWST_control_R_spcGRP.t"
		;
connectAttr "armUpper_TWST_control_R_DCMX.or" "armUpper_TWST_control_R_spcGRP.r"
		;
connectAttr "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.crx" "armUpper_TWST_control_start_R_oriGRP.rx"
		;
connectAttr "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.cry" "armUpper_TWST_control_start_R_oriGRP.ry"
		;
connectAttr "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.crz" "armUpper_TWST_control_start_R_oriGRP.rz"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.crx" "armUpper_TWST_control_start_R_aimGRP.rx"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.cry" "armUpper_TWST_control_start_R_aimGRP.ry"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.crz" "armUpper_TWST_control_start_R_aimGRP.rz"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP.pim" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP.t" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.ct"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP.rp" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP.rpt" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.crt"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP.ro" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.cro"
		;
connectAttr "armMid_R_CTL.t" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "armMid_R_CTL.rp" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "armMid_R_CTL.rpt" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "armMid_R_CTL.pm" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.w0" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_start_R_vecLOC.wm" "armUpper_TWST_control_start_R_aimGRP_aimConstraint1.wum"
		;
connectAttr "armUpper_TWST_control_start_R_oriGRP.ro" "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.cro"
		;
connectAttr "armUpper_TWST_control_start_R_oriGRP.pim" "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.cpim"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.r" "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.ro" "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.pm" "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.jo" "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.tg[0].tjo"
		;
connectAttr "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.w0" "armUpper_TWST_control_start_R_oriGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_pointConstraint1.ctx" "armUpper_TWST_control_end_R_conGRP.tx"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_pointConstraint1.cty" "armUpper_TWST_control_end_R_conGRP.ty"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_pointConstraint1.ctz" "armUpper_TWST_control_end_R_conGRP.tz"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_aimConstraint1.crx" "armUpper_TWST_control_end_R_conGRP.rx"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_aimConstraint1.cry" "armUpper_TWST_control_end_R_conGRP.ry"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_aimConstraint1.crz" "armUpper_TWST_control_end_R_conGRP.rz"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.pim" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.rp" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.rpt" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.crt"
		;
connectAttr "armMid_R_CTL.t" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armMid_R_CTL.rp" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armMid_R_CTL.rpt" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armMid_R_CTL.pm" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_pointConstraint1.w0" "armUpper_TWST_control_end_R_conGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.pim" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.t" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.ct"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.rp" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.rpt" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.crt"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP.ro" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.cro"
		;
connectAttr "armStart_R_CTL.t" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "armStart_R_CTL.rp" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "armStart_R_CTL.rpt" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "armStart_R_CTL.pm" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_end_R_conGRP_aimConstraint1.w0" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_R_vecLOC.wm" "armUpper_TWST_control_end_R_conGRP_aimConstraint1.wum"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.ctx" "armUpper_TWST_locator_start_R_offGRP.tx"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.cty" "armUpper_TWST_locator_start_R_offGRP.ty"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.ctz" "armUpper_TWST_locator_start_R_offGRP.tz"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.crx" "armUpper_TWST_locator_start_R_offGRP.rx"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.cry" "armUpper_TWST_locator_start_R_offGRP.ry"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.crz" "armUpper_TWST_locator_start_R_offGRP.rz"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP.ro" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.cro"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP.pim" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.cpim"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP.rp" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.crp"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP.rpt" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.crt"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.t" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.rp" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.rpt" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.r" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.ro" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.s" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.pm" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.jo" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tjo"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.ssc" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tsc"
		;
connectAttr "armUpper_IK_TWST_start_R_JNT.is" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tis"
		;
connectAttr "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.w0" "armUpper_TWST_locator_start_R_offGRP_parentConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.ctx" "armUpper_TWST_locator_end_R_conGRP.tx"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.cty" "armUpper_TWST_locator_end_R_conGRP.ty"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.ctz" "armUpper_TWST_locator_end_R_conGRP.tz"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.crx" "armUpper_TWST_locator_end_R_conGRP.rx"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.cry" "armUpper_TWST_locator_end_R_conGRP.ry"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.crz" "armUpper_TWST_locator_end_R_conGRP.rz"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP.pim" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.cpim"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP.rp" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.crp"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP.rpt" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.crt"
		;
connectAttr "armMid_R_CTL.t" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armMid_R_CTL.rp" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armMid_R_CTL.rpt" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armMid_R_CTL.pm" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.w0" "armUpper_TWST_locator_end_R_conGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP.ro" "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.cro"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP.pim" "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.cpim"
		;
connectAttr "armStart_R_CTL.r" "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armStart_R_CTL.ro" "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armStart_R_CTL.pm" "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.w0" "armUpper_TWST_locator_end_R_conGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TGET_joint_R_FFMX.o" "armUpper_TGET_joint_R_DCMX.imat";
connectAttr "armUpper_TGET_joint_R_POSI.px" "armUpper_TGET_joint_R_FFMX.i30";
connectAttr "armUpper_TGET_joint_R_POSI.py" "armUpper_TGET_joint_R_FFMX.i31";
connectAttr "armUpper_TGET_joint_R_POSI.pz" "armUpper_TGET_joint_R_FFMX.i32";
connectAttr "armUpper_TGET_joint_R_POSI.nx" "armUpper_TGET_joint_R_FFMX.i10";
connectAttr "armUpper_TGET_joint_R_POSI.ny" "armUpper_TGET_joint_R_FFMX.i11";
connectAttr "armUpper_TGET_joint_R_POSI.nz" "armUpper_TGET_joint_R_FFMX.i12";
connectAttr "armUpper_TGET_joint_R_POSI.tux" "armUpper_TGET_joint_R_FFMX.i00";
connectAttr "armUpper_TGET_joint_R_POSI.tuy" "armUpper_TGET_joint_R_FFMX.i01";
connectAttr "armUpper_TGET_joint_R_POSI.tuz" "armUpper_TGET_joint_R_FFMX.i02";
connectAttr "armUpper_TGET_joint_R_POSI.tvx" "armUpper_TGET_joint_R_FFMX.i20";
connectAttr "armUpper_TGET_joint_R_POSI.tvy" "armUpper_TGET_joint_R_FFMX.i21";
connectAttr "armUpper_TGET_joint_R_POSI.tvz" "armUpper_TGET_joint_R_FFMX.i22";
connectAttr "armUpper_TGET_R_SRFShape.ws" "armUpper_TGET_joint_R_POSI.is";
connectAttr "armUpper_TGET_joint_01_R_FFMX.o" "armUpper_TGET_joint_01_R_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.px" "armUpper_TGET_joint_01_R_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.py" "armUpper_TGET_joint_01_R_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.pz" "armUpper_TGET_joint_01_R_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.nx" "armUpper_TGET_joint_01_R_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.ny" "armUpper_TGET_joint_01_R_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.nz" "armUpper_TGET_joint_01_R_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.tux" "armUpper_TGET_joint_01_R_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.tuy" "armUpper_TGET_joint_01_R_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.tuz" "armUpper_TGET_joint_01_R_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.tvx" "armUpper_TGET_joint_01_R_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.tvy" "armUpper_TGET_joint_01_R_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_01_R_POSI.tvz" "armUpper_TGET_joint_01_R_FFMX.i22"
		;
connectAttr "armUpper_TGET_R_SRFShape.ws" "armUpper_TGET_joint_01_R_POSI.is";
connectAttr "armUpper_TGET_joint_02_R_FFMX.o" "armUpper_TGET_joint_02_R_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.px" "armUpper_TGET_joint_02_R_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.py" "armUpper_TGET_joint_02_R_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.pz" "armUpper_TGET_joint_02_R_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.nx" "armUpper_TGET_joint_02_R_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.ny" "armUpper_TGET_joint_02_R_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.nz" "armUpper_TGET_joint_02_R_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.tux" "armUpper_TGET_joint_02_R_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.tuy" "armUpper_TGET_joint_02_R_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.tuz" "armUpper_TGET_joint_02_R_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.tvx" "armUpper_TGET_joint_02_R_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.tvy" "armUpper_TGET_joint_02_R_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_02_R_POSI.tvz" "armUpper_TGET_joint_02_R_FFMX.i22"
		;
connectAttr "armUpper_TGET_R_SRFShape.ws" "armUpper_TGET_joint_02_R_POSI.is";
connectAttr "armUpper_TGET_joint_03_R_FFMX.o" "armUpper_TGET_joint_03_R_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.px" "armUpper_TGET_joint_03_R_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.py" "armUpper_TGET_joint_03_R_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.pz" "armUpper_TGET_joint_03_R_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.nx" "armUpper_TGET_joint_03_R_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.ny" "armUpper_TGET_joint_03_R_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.nz" "armUpper_TGET_joint_03_R_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.tux" "armUpper_TGET_joint_03_R_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.tuy" "armUpper_TGET_joint_03_R_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.tuz" "armUpper_TGET_joint_03_R_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.tvx" "armUpper_TGET_joint_03_R_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.tvy" "armUpper_TGET_joint_03_R_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_03_R_POSI.tvz" "armUpper_TGET_joint_03_R_FFMX.i22"
		;
connectAttr "armUpper_TGET_R_SRFShape.ws" "armUpper_TGET_joint_03_R_POSI.is";
connectAttr "armUpper_TGET_joint_04_R_FFMX.o" "armUpper_TGET_joint_04_R_DCMX.imat"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.px" "armUpper_TGET_joint_04_R_FFMX.i30"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.py" "armUpper_TGET_joint_04_R_FFMX.i31"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.pz" "armUpper_TGET_joint_04_R_FFMX.i32"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.nx" "armUpper_TGET_joint_04_R_FFMX.i10"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.ny" "armUpper_TGET_joint_04_R_FFMX.i11"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.nz" "armUpper_TGET_joint_04_R_FFMX.i12"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.tux" "armUpper_TGET_joint_04_R_FFMX.i00"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.tuy" "armUpper_TGET_joint_04_R_FFMX.i01"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.tuz" "armUpper_TGET_joint_04_R_FFMX.i02"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.tvx" "armUpper_TGET_joint_04_R_FFMX.i20"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.tvy" "armUpper_TGET_joint_04_R_FFMX.i21"
		;
connectAttr "armUpper_TGET_joint_04_R_POSI.tvz" "armUpper_TGET_joint_04_R_FFMX.i22"
		;
connectAttr "armUpper_TGET_R_SRFShape.ws" "armUpper_TGET_joint_04_R_POSI.is";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "armUpper_TWST_start_R_JNT.wm" "skinCluster1.ma[0]";
connectAttr "armUpper_TWST_end_R_JNT.wm" "skinCluster1.ma[1]";
connectAttr "bend_shoulder_R_JNT.wm" "skinCluster1.ma[2]";
connectAttr "armUpper_TWST_start_R_JNT.liw" "skinCluster1.lw[0]";
connectAttr "armUpper_TWST_end_R_JNT.liw" "skinCluster1.lw[1]";
connectAttr "bend_shoulder_R_JNT.liw" "skinCluster1.lw[2]";
connectAttr "armUpper_TWST_start_R_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "armUpper_TWST_end_R_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "bend_shoulder_R_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "armUpper_TGET_RIG_R_GRP.msg" "bindPose1.m[2]";
connectAttr "armUpper_TWST_control_R_GRP.msg" "bindPose1.m[3]";
connectAttr "armUpper_TWST_control_R_spcGRP.msg" "bindPose1.m[4]";
connectAttr "armUpper_TWST_control_R_offGRP.msg" "bindPose1.m[5]";
connectAttr "armUpper_TWST_control_start_R_GRP.msg" "bindPose1.m[6]";
connectAttr "armUpper_TWST_control_start_R_oriGRP.msg" "bindPose1.m[7]";
connectAttr "armUpper_TWST_control_start_R_aimGRP.msg" "bindPose1.m[8]";
connectAttr "armUpper_TWST_start_R_CTL.msg" "bindPose1.m[9]";
connectAttr "armUpper_TWST_start_R_JNT.msg" "bindPose1.m[10]";
connectAttr "armUpper_TWST_control_end_R_GRP.msg" "bindPose1.m[11]";
connectAttr "armUpper_TWST_control_end_R_conGRP.msg" "bindPose1.m[12]";
connectAttr "armUpper_TWST_control_end_R_offGRP.msg" "bindPose1.m[13]";
connectAttr "armUpper_TWST_end_R_CTL.msg" "bindPose1.m[14]";
connectAttr "armUpper_TWST_end_R_JNT.msg" "bindPose1.m[15]";
connectAttr "bend_shoulder_control_R_GRP.msg" "bindPose1.m[17]";
connectAttr "bend_shoulder_control_R_offGRP.msg" "bindPose1.m[18]";
connectAttr "bend_shoulder_R_CTL.msg" "bindPose1.m[19]";
connectAttr "bend_shoulder_R_JNT.msg" "bindPose1.m[20]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[5]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.w" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "armUpper_TWST_start_R_JNT.bps" "bindPose1.wm[10]";
connectAttr "armUpper_TWST_end_R_JNT.bps" "bindPose1.wm[15]";
connectAttr "bend_shoulder_R_JNT.bps" "bindPose1.wm[20]";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "armUpper_TGET_R_SRFShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "armUpper_TGET_R_SRFShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "armUpper_TGET_R_SRFShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "armStart_R_CTL.wm" "armUpper_TWST_control_R_DCMX.imat";
connectAttr "armUpper_TGET_joint_R_FFMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armUpper_TGET_joint_R_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armUpper_TGET_joint_01_R_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_01_R_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_02_R_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_02_R_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_03_R_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_03_R_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_04_R_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_04_R_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TWST_control_R_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_R_SRFShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikSCsolver1.msg" ":ikSystem.sol" -na;
// End of Mir_bend_R.ma
