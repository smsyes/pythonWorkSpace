<<<<<<< HEAD
//Maya ASCII 2016 scene
//Name: bendyarm.ma
//Last modified: Sun, Sep 10, 2017 11:46:08 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2016.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "5E418805-409A-20DE-417A-3B91B8466540";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1377523652347561 6.9818588900148875 0.14412114039008816 ;
	setAttr ".r" -type "double3" -78.33835272961754 21.400000000004169 -1.7080365254563973e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5457C674-4CF8-FBA5-F956-9BB35392A565";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 6.5585508938395884;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.9924687692089038 0.0030288470545964956 -1 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "ABA0754C-4C84-1541-1105-3180797BB3CA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1E05C0F1-408A-89A5-FB65-759DE91982E8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EE467C3E-453B-99A6-A3EB-6B831DCF7FDA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "24C83F28-4486-E2ED-3DE6-109685997685";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E70E3D9B-4A97-894F-8F7D-B0833A617011";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C6CE5ED7-453A-42D5-8549-89A47F4305BA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bendyArm_setup_grp";
	rename -uid "7CEDF7CB-40B0-8679-35CE-5E8B8377B882";
createNode transform -n "bendArm_curve" -p "bendyArm_setup_grp";
	rename -uid "1D98799B-421E-D405-D267-E3879AB54D3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.0075312307910966316 0 0 ;
createNode nurbsCurve -n "bendArm_curveShape" -p "bendArm_curve";
	rename -uid "570A02F4-47A8-CB5F-9684-7EB1AFB22405";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "bendArm_curveShape2Orig" -p "bendArm_curve";
	rename -uid "3EF9C47F-4B51-695B-CDC9-83AB9451D8F8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		0 0.0030288470545964956 0
		1.0000000000000002 0.0030288470545964956 -0.5
		2.0000000000000004 0.0030288470545964956 -1
		3.0000000000000009 0.0030288470545964956 -1.5
		4.0000000000000009 0.0030288470545964956 -2
		;
createNode transform -n "linear_curve" -p "bendyArm_setup_grp";
	rename -uid "9891419E-4230-A23A-79D4-F3BF2116FF59";
	setAttr ".v" no;
createNode nurbsCurve -n "linear_curveShape" -p "linear_curve";
	rename -uid "179B3FE1-47C0-F736-844D-26A5E9CF9DA6";
	setAttr -k off ".v";
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.0030288470545964956 0
		4.0000000000000009 0.0030288470545964956 -2
		;
createNode transform -n "bendyArm_jnt_grp" -p "bendyArm_setup_grp";
	rename -uid "3E57C9C0-43BC-FA78-724B-EEAA0DF962F3";
createNode transform -n "bend_jnt_space_0" -p "bendyArm_jnt_grp";
	rename -uid "E0B4D08A-4505-0FB1-DF61-F7B18B386878";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_0" -p "bend_jnt_space_0";
	rename -uid "C60DA685-4A63-6B7A-0666-7DB5B9B32ADA";
	setAttr ".r" -type "double3" -11.774235011508537 22.990343363298145 -42.628213119919295 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_1" -p "bendyArm_jnt_grp";
	rename -uid "19C8A2F3-4C88-43B0-E800-0FB704113F82";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_1" -p "bend_jnt_space_1";
	rename -uid "92FD2DBB-4DBC-5958-F47C-10B2CCF7DD69";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_2" -p "bendyArm_jnt_grp";
	rename -uid "61D14243-40B6-B2DD-493C-2AAF2F1BC991";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_2" -p "bend_jnt_space_2";
	rename -uid "D23041D8-4BF0-8242-A286-C6A13D5B840B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_3" -p "bendyArm_jnt_grp";
	rename -uid "A0B63256-444F-BB38-42F9-1BBF90DD131E";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_3" -p "bend_jnt_space_3";
	rename -uid "0D7188C0-4F47-5F01-9C1E-C898CEB74151";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_4" -p "bendyArm_jnt_grp";
	rename -uid "AF025AB4-46A8-D126-46CA-62B8E9EE5F13";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_4" -p "bend_jnt_space_4";
	rename -uid "B948B4C4-48A8-F3C2-F2CF-74BCAD0B1C2A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_5" -p "bendyArm_jnt_grp";
	rename -uid "5B5AFD22-4A2F-E7DE-5033-229A9B4CB360";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_5" -p "bend_jnt_space_5";
	rename -uid "BB27FE49-4024-D6ED-E064-9192A2236802";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_6" -p "bendyArm_jnt_grp";
	rename -uid "6F2547BA-49E6-56D6-D071-FCB97D9317BE";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_6" -p "bend_jnt_space_6";
	rename -uid "BB2F1042-4F68-9850-7418-7EBA22D17163";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bendyArm_ctrl_space" -p "bendyArm_setup_grp";
	rename -uid "4F693EC1-45A0-D5D0-B2E2-ED9745002D23";
createNode transform -n "bendyArm_center_ctrl" -p "bendyArm_ctrl_space";
	rename -uid "06D93B17-4F66-73D6-F1B4-BF9AD9424F67";
	addAttr -ci true -sn "UVal" -ln "UVal" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 2.220446049250316e-016 0 -1.3010426069826061e-018 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 3.5311250384401269e-031 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".UVal" 0.5;
createNode transform -n "bendyArm_ctrl" -p "bendyArm_center_ctrl";
	rename -uid "66E7E0BB-4EE7-27D4-4A2E-1D94361CD6CE";
	setAttr ".t" -type "double3" 0 -1.9721522630525295e-031 2.5500435096859069e-016 ;
	setAttr ".r" -type "double3" 0 3.5311250384401269e-031 0 ;
createNode softModHandle -n "bendyArm_ctrlShape" -p "bendyArm_ctrl";
	rename -uid "5EBF91F5-4EC5-FDA9-A9A7-209FAFE03F91";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode nurbsCurve -n "bendyArm_center_ctrlShape" -p "bendyArm_center_ctrl";
	rename -uid "54CB8E47-481D-1F56-94EE-2EB9861210DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.18659085294927344 1.1425394540725095e-017 -0.18659085294927313
		-1.1469153562952835e-016 1.6157947914956962e-017 -0.2638793148556261
		-0.18659085294927338 1.1425394540725103e-017 -0.18659085294927322
		-0.26387931485562621 4.6821690658147519e-033 8.7812659156595211e-018
		-0.18659085294927347 -1.1425394540725098e-017 0.18659085294927336
		-1.6409804848582754e-016 -1.6157947914956962e-017 0.26387931485562627
		0.18659085294927313 -1.1425394540725104e-017 0.18659085294927344
		0.2638793148556261 -8.6784653449892828e-033 2.2697698438903856e-016
		0.18659085294927344 1.1425394540725095e-017 -0.18659085294927313
		-1.1469153562952835e-016 1.6157947914956962e-017 -0.2638793148556261
		-0.18659085294927338 1.1425394540725103e-017 -0.18659085294927322
		;
createNode joint -n "shoulder" -p "bendyArm_setup_grp";
	rename -uid "23CB9B44-4ED4-9F0D-335A-0FAA64699572";
	setAttr ".t" -type "double3" 0 0.0030288470545964956 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 26.565051177077983 0 ;
	setAttr ".radi" 0.67959323905170244;
createNode joint -n "elbow" -p "shoulder";
	rename -uid "31253A18-4A73-F393-3D81-4DAC646A0D49";
	setAttr ".t" -type "double3" 4.4721359549995796 0 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.67959323905170244;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E9452945-4B98-9C8F-CEA6-A28BCA97A51A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "ABDC3E06-41F3-671A-B720-BAAEB8D81B02";
createNode displayLayer -n "defaultLayer";
	rename -uid "C25C0FB4-4247-1B0E-9876-3CA149A4AD9D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2BA99767-4BC6-7FDB-F538-DCAE9D06957F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A67DC4BC-4391-FA0E-ABC2-B980137685EE";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "4B2AEE17-43CD-8F36-9247-E59B4FBAC6BA";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "008702C4-4885-D393-CA82-F1A8DB3749A2";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "3B0D461F-4523-A0EA-B45F-40BA4818B75E";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "CF945D01-485C-1CC2-6D7C-50A33F24592D";
lockNode -l 1 ;
createNode script -n "IGPUCS";
	rename -uid "6AEB3EEF-4763-B148-E0A4-2898FD3C9AE5";
	setAttr ".b" -type "string" "try: igpucs_SOuP().scriptJobUpdate()\nexcept: pass";
	setAttr ".st" 7;
	setAttr ".stp" 1;
createNode motionPath -n "bendyArm_curve_CP_space_0";
	rename -uid "A957FA1C-4785-4C6D-53AD-0686FB0E432D";
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_1";
	rename -uid "88CF22BA-4C6E-024C-C11C-0A82DEE879CB";
	setAttr ".u" 0.25;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_2";
	rename -uid "8F66D211-4E11-69AD-1271-EDAE36588E67";
	setAttr ".u" 0.5;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_3";
	rename -uid "140F7DE5-4286-97C4-2080-9695033CC68B";
	setAttr ".u" 0.75;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_4";
	rename -uid "7A3EECCA-4297-00B2-ABE2-049E63A76482";
	setAttr ".u" 1;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode decomposeMatrix -n "shoulder_jnt_decomp";
	rename -uid "DAB4AE41-4880-6D4B-F858-29B58A7C5FA3";
	setAttr ".ot" -type "double3" 0 0.0030288470545964956 0 ;
	setAttr ".or" -type "double3" 0 26.565051177077986 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqy" 0.22975292054736116;
	setAttr ".oqw" 0.9732489894677302;
createNode decomposeMatrix -n "elbow_jnt_decomp";
	rename -uid "70C68067-4756-2148-344C-B8A987B09B89";
	setAttr ".ot" -type "double3" 4.0000000000000009 0.0030288470545964956 -2 ;
	setAttr ".or" -type "double3" 0 26.565051177077986 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqy" 0.22975292054736116;
	setAttr ".oqw" 0.9732489894677302;
createNode motionPath -n "bendyArm_jnt_space_0";
	rename -uid "39396524-412D-0EB6-B82A-92AD789D76B5";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_1";
	rename -uid "B41D45BE-4DD3-6FB3-A4A3-76A9A3580F29";
	setAttr ".u" 0.16666666666666666;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_2";
	rename -uid "9F5EB217-4FC2-7AB9-1460-27993A071779";
	setAttr ".u" 0.33333333333333331;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_3";
	rename -uid "7EE17F10-46D9-D59A-E163-CA8F58BE4E18";
	setAttr ".u" 0.5;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_4";
	rename -uid "8F06A090-4530-60A9-9B70-458DA69F12C6";
	setAttr ".u" 0.66666666666666663;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_5";
	rename -uid "4347B709-4463-8E53-0604-03A417A8CD6C";
	setAttr ".u" 0.83333333333333337;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_6";
	rename -uid "453B00FE-40AB-59B9-8A1A-59A7B0F9A9EB";
	setAttr ".u" 1;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode softMod -n "bendyArm_ctrlSoftMod";
	rename -uid "ACD01D0E-45F2-E16C-C07A-A8AB3BE16963";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0075312307910966316 0 0 1;
	setAttr -s 2 ".fc[0:1]"  1 0 2 0 1 2;
	setAttr ".fr" 2.5;
	setAttr ".fas" no;
createNode tweak -n "tweak1";
	rename -uid "04131A45-4F16-6459-E593-0EAD6FE00782";
createNode objectSet -n "softMod1Set";
	rename -uid "A09CA0B0-4247-B8D4-58FF-6C87C1E99F8E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "softMod1GroupId";
	rename -uid "D4483E69-44B8-5E03-9DBE-ADA1276B4394";
	setAttr ".ihi" 0;
createNode groupParts -n "softMod1GroupParts";
	rename -uid "3BDCADBE-4712-D393-2FE1-BD9F7852C7EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
	setAttr ".irc" -type "componentList" 2 "cv[0]" "cv[4]";
createNode objectSet -n "tweakSet1";
	rename -uid "A46BBC79-40FD-1AE7-73EC-84B68501660B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "F78FE3BE-4825-3AB7-F4A7-FB9B120363D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "3D4E1A29-418B-1FA5-FB20-33A96AC6A02F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode decomposeMatrix -n "bendyArm_center_ctrl_decomp";
	rename -uid "5F8EF9BC-4185-0A0F-BE01-05ABD99372ED";
	setAttr ".ot" -type "double3" 2.0000000000000004 0.0030288470545964943 -0.99999999999999978 ;
	setAttr ".or" -type "double3" -90.000000000000043 -63.434948822922031 7.1119364739076185e-015 ;
	setAttr ".os" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".oqx" -0.60150095500754575;
	setAttr ".oqy" -0.37174803446018445;
	setAttr ".oqz" -0.37174803446018462;
	setAttr ".oqw" 0.60150095500754552;
createNode motionPath -n "bendyArm_ctrl_space_onCurve";
	rename -uid "4589AF5B-4756-A2A4-131E-08B9E9A2092C";
	setAttr ".f" yes;
createNode multiplyDivide -n "mul_twist_1";
	rename -uid "17224965-4663-5EE2-0FA3-0891EA13E05B";
createNode unitConversion -n "unitConversion1";
	rename -uid "76B40E40-410E-D8BF-C8A8-DCB706CC6424";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "A3141A05-401D-8CA4-CB7D-7D9D807A748B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_2";
	rename -uid "08302EAE-4F0B-43EA-931E-D28B3E289858";
	setAttr ".i2" -type "float3" 0.83333331 1 1 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "2792DF13-486F-C590-F946-979EA006663F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion4";
	rename -uid "0E26950A-41B6-C51B-FBFA-2BBB3F56674B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_3";
	rename -uid "EEFA9AD3-4591-427B-EAC8-21B9E20B7E3B";
	setAttr ".i2" -type "float3" 0.66666669 1 1 ;
createNode unitConversion -n "unitConversion5";
	rename -uid "7CD9B1FE-448F-9EEA-2DDF-BC91A8882A5F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "59BFDDE0-4D82-7BDA-FA25-45B5E4A0EC5C";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_4";
	rename -uid "3D79AF1F-4DF8-4CCF-01E6-678DF91E913F";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion7";
	rename -uid "7CE0F631-4A45-8B89-C851-C5A194FC60CB";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "BD7B97E4-454A-F526-8100-BAA3F9A7855B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_5";
	rename -uid "168F5D0A-4610-385E-5427-EA9E1FCF85E8";
	setAttr ".i2" -type "float3" 0.33333334 1 1 ;
createNode unitConversion -n "unitConversion9";
	rename -uid "47C6F21E-468C-6628-66C9-4D91CCE4A962";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion10";
	rename -uid "1323740E-4403-51A1-B79F-118ED7FF9A6A";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_6";
	rename -uid "7A8DFDE4-4506-7A49-45F0-B0AB8D18B2EA";
	setAttr ".i2" -type "float3" 0.16666667 1 1 ;
createNode unitConversion -n "unitConversion11";
	rename -uid "D6405DC8-4C8F-3FD6-BC0D-688BA162D4A0";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "3FC6E698-4008-21D3-6DCA-0C94822E8FDC";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_7";
	rename -uid "EAFACD83-4360-DFE4-21A3-E998D972C0C2";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "6E70D46D-438A-2DBF-FFAA-6DAD771E1941";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion14";
	rename -uid "D79556AB-412F-B6CB-3D86-6EBE47356531";
	setAttr ".cf" 0.017453292519943295;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F2E328B8-4749-7D37-E392-089A644646DB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 424\n                -height 1076\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 424\n            -height 1076\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1356\n                -height 1076\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1356\n            -height 1076\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 2\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 2\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1356\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1356\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F8F19FF4-4312-9092-98F8-D5AF9FFAE426";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorBookmarks -n "MayaNodeEditorBookmarks";
	rename -uid "7A5C9670-4DA7-3A7E-4F15-8CAD98F1F52B";
	setAttr -s 3 ".b";
createNode nodeGraphEditorBookmarkInfo -n "nodeView1";
	rename -uid "C8B9EE12-4D77-7982-042C-09A608A9E51A";
	setAttr ".nm" -type "string" "linear_curve";
	setAttr ".vl" -type "double2" -205.93873506997573 -990.95851036780891 ;
	setAttr ".vh" -type "double2" 1669.3739777095579 540.01712238158439 ;
	setAttr -s 11 ".ni";
	setAttr ".ni[0].x" 524.28570556640625;
	setAttr ".ni[0].y" -211.42857360839844;
	setAttr ".ni[0].nvs" 18305;
	setAttr ".ni[1].x" 820;
	setAttr ".ni[1].y" -1.4285714626312256;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 820;
	setAttr ".ni[2].y" -521.4285888671875;
	setAttr ".ni[2].nvs" 18304;
	setAttr ".ni[3].x" 820;
	setAttr ".ni[3].y" -131.42857360839844;
	setAttr ".ni[3].nvs" 18304;
	setAttr ".ni[4].x" 820;
	setAttr ".ni[4].y" -391.42855834960937;
	setAttr ".ni[4].nvs" 18304;
	setAttr ".ni[5].x" 1124.2857666015625;
	setAttr ".ni[5].y" -211.42857360839844;
	setAttr ".ni[5].nvs" 18305;
	setAttr ".ni[6].x" 820;
	setAttr ".ni[6].y" -261.42855834960937;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 1.4285714626312256;
	setAttr ".ni[7].y" -197.14285278320312;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 262.85714721679687;
	setAttr ".ni[8].y" -327.14285278320312;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 262.85714721679687;
	setAttr ".ni[9].y" -197.14285278320312;
	setAttr ".ni[9].nvs" 18304;
	setAttr ".ni[10].x" 1.4285714626312256;
	setAttr ".ni[10].y" -327.14285278320312;
	setAttr ".ni[10].nvs" 18304;
createNode nodeGraphEditorBookmarkInfo -n "nodeView2";
	rename -uid "A25B6168-4A5D-1C0E-2ED3-2AA31419884B";
	setAttr ".nm" -type "string" "bendyArm_Curve";
	setAttr ".vl" -type "double2" -252.60419577353042 -1493.4416571027371 ;
	setAttr ".vh" -type "double2" 2320.0349286468181 606.82022695794308 ;
	setAttr -s 20 ".ni";
	setAttr ".ni[0].x" 814.2235107421875;
	setAttr ".ni[0].y" -595.552490234375;
	setAttr ".ni[0].nvs" 18304;
	setAttr ".ni[1].x" 1411.4285888671875;
	setAttr ".ni[1].y" -131.42857360839844;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 1.4285714626312256;
	setAttr ".ni[2].y" -327.14285278320312;
	setAttr ".ni[2].nvs" 18304;
	setAttr ".ni[3].x" 1150;
	setAttr ".ni[3].y" -131.42857360839844;
	setAttr ".ni[3].nvs" 18304;
	setAttr ".ni[4].x" 1150;
	setAttr ".ni[4].y" -911.4285888671875;
	setAttr ".ni[4].nvs" 18304;
	setAttr ".ni[5].x" 1411.4285888671875;
	setAttr ".ni[5].y" -651.4285888671875;
	setAttr ".ni[5].nvs" 18304;
	setAttr ".ni[6].x" 1411.4285888671875;
	setAttr ".ni[6].y" -261.42855834960937;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 1150;
	setAttr ".ni[7].y" -261.42855834960937;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 564.1986083984375;
	setAttr ".ni[8].y" -394.422607421875;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 1150;
	setAttr ".ni[9].y" -781.4285888671875;
	setAttr ".ni[9].nvs" 18304;
	setAttr ".ni[10].x" 1150;
	setAttr ".ni[10].y" -391.42855834960937;
	setAttr ".ni[10].nvs" 18304;
	setAttr ".ni[11].x" 262.85714721679687;
	setAttr ".ni[11].y" -457.14285278320312;
	setAttr ".ni[11].nvs" 18304;
	setAttr ".ni[12].x" 1411.4285888671875;
	setAttr ".ni[12].y" -911.4285888671875;
	setAttr ".ni[12].nvs" 18304;
	setAttr ".ni[13].x" 262.85714721679687;
	setAttr ".ni[13].y" -327.14285278320312;
	setAttr ".ni[13].nvs" 18304;
	setAttr ".ni[14].x" 262.85714721679687;
	setAttr ".ni[14].y" -587.14288330078125;
	setAttr ".ni[14].nvs" 18304;
	setAttr ".ni[15].x" 1150;
	setAttr ".ni[15].y" -651.4285888671875;
	setAttr ".ni[15].nvs" 18304;
	setAttr ".ni[16].x" 1411.4285888671875;
	setAttr ".ni[16].y" -391.42855834960937;
	setAttr ".ni[16].nvs" 18304;
	setAttr ".ni[17].x" 1150;
	setAttr ".ni[17].y" -521.4285888671875;
	setAttr ".ni[17].nvs" 18304;
	setAttr ".ni[18].x" 1411.4285888671875;
	setAttr ".ni[18].y" -781.4285888671875;
	setAttr ".ni[18].nvs" 18304;
	setAttr ".ni[19].x" 1411.4285888671875;
	setAttr ".ni[19].y" -521.4285888671875;
	setAttr ".ni[19].nvs" 18304;
createNode nodeGraphEditorBookmarkInfo -n "nodeView3";
	rename -uid "C6FBBBEA-4B9D-5B24-2ADF-2683316FC0FA";
	setAttr ".nm" -type "string" "twist";
	setAttr ".vl" -type "double2" 184.23825791459032 -1862.187251248595 ;
	setAttr ".vh" -type "double2" 3138.0114027320974 549.22641782558458 ;
	setAttr -s 39 ".ni";
	setAttr ".ni[0].x" 366.51031494140625;
	setAttr ".ni[0].y" -411.538818359375;
	setAttr ".ni[0].nvs" 18304;
	setAttr ".ni[1].x" 1342.857177734375;
	setAttr ".ni[1].y" -1.4285714626312256;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 2141.48193359375;
	setAttr ".ni[2].y" -625.72845458984375;
	setAttr ".ni[2].nvs" 18304;
	setAttr ".ni[3].x" 1880.05322265625;
	setAttr ".ni[3].y" -625.72845458984375;
	setAttr ".ni[3].nvs" 18304;
	setAttr ".ni[4].x" 1880.05322265625;
	setAttr ".ni[4].y" -755.72845458984375;
	setAttr ".ni[4].nvs" 18304;
	setAttr ".ni[5].x" 2141.48193359375;
	setAttr ".ni[5].y" -235.72846984863281;
	setAttr ".ni[5].nvs" 18304;
	setAttr ".ni[6].x" 1342.857177734375;
	setAttr ".ni[6].y" -521.4285888671875;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 1342.857177734375;
	setAttr ".ni[7].y" -131.42857360839844;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 2141.48193359375;
	setAttr ".ni[8].y" -885.72845458984375;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 1880.05322265625;
	setAttr ".ni[9].y" -885.72845458984375;
	setAttr ".ni[9].nvs" 18304;
	setAttr ".ni[10].x" 760;
	setAttr ".ni[10].y" -1041.4285888671875;
	setAttr ".ni[10].nvs" 18304;
	setAttr ".ni[11].x" 906.69866943359375;
	setAttr ".ni[11].y" 282.34878540039062;
	setAttr ".ni[11].nvs" 18304;
	setAttr ".ni[12].x" 760;
	setAttr ".ni[12].y" -1.4285714626312256;
	setAttr ".ni[12].nvs" 18304;
	setAttr ".ni[13].x" 1019.3425903320312;
	setAttr ".ni[13].y" 111.21531677246094;
	setAttr ".ni[13].nvs" 18305;
	setAttr ".ni[14].x" 1880.05322265625;
	setAttr ".ni[14].y" -495.72848510742187;
	setAttr ".ni[14].nvs" 18304;
	setAttr ".ni[15].x" 1.4285714626312256;
	setAttr ".ni[15].y" -1885.7142333984375;
	setAttr ".ni[15].nvs" 18304;
	setAttr ".ni[16].x" 1880.05322265625;
	setAttr ".ni[16].y" -365.72848510742187;
	setAttr ".ni[16].nvs" 18304;
	setAttr ".ni[17].x" 1013.0845947265625;
	setAttr ".ni[17].y" -1043.5145263671875;
	setAttr ".ni[17].nvs" 18304;
	setAttr ".ni[18].x" 2141.48193359375;
	setAttr ".ni[18].y" -755.72845458984375;
	setAttr ".ni[18].nvs" 18304;
	setAttr ".ni[19].x" 1013.0845947265625;
	setAttr ".ni[19].y" -783.51458740234375;
	setAttr ".ni[19].nvs" 18304;
	setAttr ".ni[20].x" 1342.857177734375;
	setAttr ".ni[20].y" -261.42855834960937;
	setAttr ".ni[20].nvs" 18304;
	setAttr ".ni[21].x" 760;
	setAttr ".ni[21].y" -131.42857360839844;
	setAttr ".ni[21].nvs" 18304;
	setAttr ".ni[22].x" 1013.0845947265625;
	setAttr ".ni[22].y" -263.51455688476562;
	setAttr ".ni[22].nvs" 18304;
	setAttr ".ni[23].x" 1342.857177734375;
	setAttr ".ni[23].y" -911.4285888671875;
	setAttr ".ni[23].nvs" 18304;
	setAttr ".ni[24].x" 760;
	setAttr ".ni[24].y" -911.4285888671875;
	setAttr ".ni[24].nvs" 18304;
	setAttr ".ni[25].x" 1880.05322265625;
	setAttr ".ni[25].y" -235.72846984863281;
	setAttr ".ni[25].nvs" 18304;
	setAttr ".ni[26].x" 2141.48193359375;
	setAttr ".ni[26].y" -365.72848510742187;
	setAttr ".ni[26].nvs" 18304;
	setAttr ".ni[27].x" 1880.05322265625;
	setAttr ".ni[27].y" -105.72846984863281;
	setAttr ".ni[27].nvs" 18304;
	setAttr ".ni[28].x" 1228.127197265625;
	setAttr ".ni[28].y" 282.34878540039062;
	setAttr ".ni[28].nvs" 18304;
	setAttr ".ni[29].x" 1013.0845947265625;
	setAttr ".ni[29].y" -913.51458740234375;
	setAttr ".ni[29].nvs" 18304;
	setAttr ".ni[30].x" 1342.857177734375;
	setAttr ".ni[30].y" -1041.4285888671875;
	setAttr ".ni[30].nvs" 18304;
	setAttr ".ni[31].x" 1013.0845947265625;
	setAttr ".ni[31].y" -523.51458740234375;
	setAttr ".ni[31].nvs" 18304;
	setAttr ".ni[32].x" 2141.48193359375;
	setAttr ".ni[32].y" -495.72848510742187;
	setAttr ".ni[32].nvs" 18304;
	setAttr ".ni[33].x" 760;
	setAttr ".ni[33].y" -261.42855834960937;
	setAttr ".ni[33].nvs" 18304;
	setAttr ".ni[34].x" 760;
	setAttr ".ni[34].y" -781.4285888671875;
	setAttr ".ni[34].nvs" 18304;
	setAttr ".ni[35].x" 2141.48193359375;
	setAttr ".ni[35].y" -105.72846984863281;
	setAttr ".ni[35].nvs" 18304;
	setAttr ".ni[36].x" 1013.0845947265625;
	setAttr ".ni[36].y" -133.51457214355469;
	setAttr ".ni[36].nvs" 18304;
	setAttr ".ni[37].x" 1342.857177734375;
	setAttr ".ni[37].y" -781.4285888671875;
	setAttr ".ni[37].nvs" 18304;
	setAttr ".ni[38].x" 760;
	setAttr ".ni[38].y" -521.4285888671875;
	setAttr ".ni[38].nvs" 18304;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "BB919EDC-4A24-C6C5-5B7B-24AAD25E78B5";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "linear_curve";
	setAttr ".tgi[0].vl" -type "double2" -2099.6336162017628 -994.0475795477189 ;
	setAttr ".tgi[0].vh" -type "double2" 3566.3002245883213 540.47616899959542 ;
	setAttr -s 11 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -197.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 820;
	setAttr ".tgi[0].ni[1].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 820;
	setAttr ".tgi[0].ni[2].y" -131.42857360839844;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 820;
	setAttr ".tgi[0].ni[3].y" -521.4285888671875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 820;
	setAttr ".tgi[0].ni[4].y" -261.42855834960937;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 262.85714721679687;
	setAttr ".tgi[0].ni[5].y" -327.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 524.28570556640625;
	setAttr ".tgi[0].ni[6].y" -211.42857360839844;
	setAttr ".tgi[0].ni[6].nvs" 18305;
	setAttr ".tgi[0].ni[7].x" 262.85714721679687;
	setAttr ".tgi[0].ni[7].y" -197.14285278320312;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[8].y" -327.14285278320312;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 820;
	setAttr ".tgi[0].ni[9].y" -391.42855834960937;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1124.2857666015625;
	setAttr ".tgi[0].ni[10].y" -211.42857360839844;
	setAttr ".tgi[0].ni[10].nvs" 18305;
	setAttr ".tgi[1].tn" -type "string" "bendyArm_curve";
	setAttr ".tgi[1].vl" -type "double2" -2847.8020846407189 -1496.428511965845 ;
	setAttr ".tgi[1].vh" -type "double2" 4919.2305737581 607.14283301716853 ;
	setAttr -s 20 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 1150;
	setAttr ".tgi[1].ni[0].y" -391.42855834960937;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1150;
	setAttr ".tgi[1].ni[1].y" -911.4285888671875;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 1150;
	setAttr ".tgi[1].ni[2].y" -521.4285888671875;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 814.2235107421875;
	setAttr ".tgi[1].ni[3].y" -595.552490234375;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[4].y" -781.4285888671875;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[5].y" -651.4285888671875;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 262.85714721679687;
	setAttr ".tgi[1].ni[6].y" -327.14285278320312;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[7].y" -261.42855834960937;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[8].y" -131.42857360839844;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[9].y" -521.4285888671875;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[10].y" -391.42855834960937;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 1150;
	setAttr ".tgi[1].ni[11].y" -781.4285888671875;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 262.85714721679687;
	setAttr ".tgi[1].ni[12].y" -587.14288330078125;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" 1150;
	setAttr ".tgi[1].ni[13].y" -261.42855834960937;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[1].ni[14].x" 564.1986083984375;
	setAttr ".tgi[1].ni[14].y" -394.422607421875;
	setAttr ".tgi[1].ni[14].nvs" 18304;
	setAttr ".tgi[1].ni[15].x" 1150;
	setAttr ".tgi[1].ni[15].y" -131.42857360839844;
	setAttr ".tgi[1].ni[15].nvs" 18304;
	setAttr ".tgi[1].ni[16].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[16].y" -911.4285888671875;
	setAttr ".tgi[1].ni[16].nvs" 18304;
	setAttr ".tgi[1].ni[17].x" 1.4285714626312256;
	setAttr ".tgi[1].ni[17].y" -327.14285278320312;
	setAttr ".tgi[1].ni[17].nvs" 18304;
	setAttr ".tgi[1].ni[18].x" 1150;
	setAttr ".tgi[1].ni[18].y" -651.4285888671875;
	setAttr ".tgi[1].ni[18].nvs" 18304;
	setAttr ".tgi[1].ni[19].x" 262.85714721679687;
	setAttr ".tgi[1].ni[19].y" -457.14285278320312;
	setAttr ".tgi[1].ni[19].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "twist";
	setAttr ".tgi[2].vl" -type "double2" 322.12591705094775 -1440.3082153571463 ;
	setAttr ".tgi[2].vh" -type "double2" 2322.8771872490493 193.07347133000448 ;
	setAttr -s 41 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 1342.857177734375;
	setAttr ".tgi[2].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 2141.48193359375;
	setAttr ".tgi[2].ni[1].y" -625.72845458984375;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 1880.05322265625;
	setAttr ".tgi[2].ni[2].y" -625.72845458984375;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 1880.05322265625;
	setAttr ".tgi[2].ni[3].y" -755.72845458984375;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 1342.857177734375;
	setAttr ".tgi[2].ni[4].y" -521.4285888671875;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 2141.48193359375;
	setAttr ".tgi[2].ni[5].y" -235.72846984863281;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 1342.857177734375;
	setAttr ".tgi[2].ni[6].y" -131.42857360839844;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 2141.48193359375;
	setAttr ".tgi[2].ni[7].y" -885.72845458984375;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 1880.05322265625;
	setAttr ".tgi[2].ni[8].y" -885.72845458984375;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 760;
	setAttr ".tgi[2].ni[9].y" -1041.4285888671875;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 906.69866943359375;
	setAttr ".tgi[2].ni[10].y" 282.34878540039062;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 760;
	setAttr ".tgi[2].ni[11].y" -1.4285714626312256;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 366.51031494140625;
	setAttr ".tgi[2].ni[12].y" -411.538818359375;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 1019.3425903320312;
	setAttr ".tgi[2].ni[13].y" 111.21531677246094;
	setAttr ".tgi[2].ni[13].nvs" 18305;
	setAttr ".tgi[2].ni[14].x" 1880.05322265625;
	setAttr ".tgi[2].ni[14].y" -495.72848510742187;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[15].y" -1885.7142333984375;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" 1880.05322265625;
	setAttr ".tgi[2].ni[16].y" -365.72848510742187;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[17].y" -1043.5145263671875;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" 2141.48193359375;
	setAttr ".tgi[2].ni[18].y" -755.72845458984375;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[19].y" -783.51458740234375;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" 1342.857177734375;
	setAttr ".tgi[2].ni[20].y" -261.42855834960937;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 760;
	setAttr ".tgi[2].ni[21].y" -131.42857360839844;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[22].y" -263.51455688476562;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 1342.857177734375;
	setAttr ".tgi[2].ni[23].y" -911.4285888671875;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" 760;
	setAttr ".tgi[2].ni[24].y" -911.4285888671875;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" 1880.05322265625;
	setAttr ".tgi[2].ni[25].y" -235.72846984863281;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 2141.48193359375;
	setAttr ".tgi[2].ni[26].y" -365.72848510742187;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 1880.05322265625;
	setAttr ".tgi[2].ni[27].y" -105.72846984863281;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" 1228.127197265625;
	setAttr ".tgi[2].ni[28].y" 282.34878540039062;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[29].y" -913.51458740234375;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[30].y" -523.51458740234375;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[2].ni[31].x" 1342.857177734375;
	setAttr ".tgi[2].ni[31].y" -1041.4285888671875;
	setAttr ".tgi[2].ni[31].nvs" 18304;
	setAttr ".tgi[2].ni[32].x" 2141.48193359375;
	setAttr ".tgi[2].ni[32].y" -495.72848510742187;
	setAttr ".tgi[2].ni[32].nvs" 18304;
	setAttr ".tgi[2].ni[33].x" 760;
	setAttr ".tgi[2].ni[33].y" -261.42855834960937;
	setAttr ".tgi[2].ni[33].nvs" 18304;
	setAttr ".tgi[2].ni[34].x" 760;
	setAttr ".tgi[2].ni[34].y" -781.4285888671875;
	setAttr ".tgi[2].ni[34].nvs" 18304;
	setAttr ".tgi[2].ni[35].x" 2141.48193359375;
	setAttr ".tgi[2].ni[35].y" -105.72846984863281;
	setAttr ".tgi[2].ni[35].nvs" 18304;
	setAttr ".tgi[2].ni[36].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[36].y" -133.51457214355469;
	setAttr ".tgi[2].ni[36].nvs" 18304;
	setAttr ".tgi[2].ni[37].x" 1342.857177734375;
	setAttr ".tgi[2].ni[37].y" -781.4285888671875;
	setAttr ".tgi[2].ni[37].nvs" 18304;
	setAttr ".tgi[2].ni[38].x" 760;
	setAttr ".tgi[2].ni[38].y" -521.4285888671875;
	setAttr ".tgi[2].ni[38].nvs" 18304;
	setAttr ".tgi[2].ni[39].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[39].y" -1604.2857666015625;
	setAttr ".tgi[2].ni[39].nvs" 18304;
	setAttr ".tgi[2].ni[40].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[40].y" -1507.142822265625;
	setAttr ".tgi[2].ni[40].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -av ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
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
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
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
	setAttr -k on ".ro" yes;
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
	setAttr -k on ".ro" yes;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
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
	setAttr -s 4 ".sol";
connectAttr "bendyArm_ctrlSoftMod.og[0]" "bendArm_curveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "bendArm_curveShape.twl";
connectAttr "softMod1GroupId.id" "bendArm_curveShape.iog.og[0].gid";
connectAttr "softMod1Set.mwc" "bendArm_curveShape.iog.og[0].gco";
connectAttr "groupId2.id" "bendArm_curveShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "bendArm_curveShape.iog.og[1].gco";
connectAttr "bendyArm_curve_CP_space_0.ac" "bendArm_curveShape2Orig.cp[0]";
connectAttr "bendyArm_curve_CP_space_1.ac" "bendArm_curveShape2Orig.cp[1]";
connectAttr "bendyArm_curve_CP_space_2.ac" "bendArm_curveShape2Orig.cp[2]";
connectAttr "bendyArm_curve_CP_space_3.ac" "bendArm_curveShape2Orig.cp[3]";
connectAttr "bendyArm_curve_CP_space_4.ac" "bendArm_curveShape2Orig.cp[4]";
connectAttr "shoulder_jnt_decomp.ot" "linear_curveShape.cp[0]";
connectAttr "elbow_jnt_decomp.ot" "linear_curveShape.cp[1]";
connectAttr "bendyArm_jnt_space_0.ac" "bend_jnt_space_0.t";
connectAttr "bendyArm_jnt_space_0.r" "bend_jnt_space_0.r";
connectAttr "bendyArm_jnt_space_1.ac" "bend_jnt_space_1.t";
connectAttr "bendyArm_jnt_space_1.r" "bend_jnt_space_1.r";
connectAttr "bendyArm_jnt_space_2.ac" "bend_jnt_space_2.t";
connectAttr "bendyArm_jnt_space_2.r" "bend_jnt_space_2.r";
connectAttr "bendyArm_jnt_space_3.ac" "bend_jnt_space_3.t";
connectAttr "bendyArm_jnt_space_3.r" "bend_jnt_space_3.r";
connectAttr "bendyArm_jnt_space_4.ac" "bend_jnt_space_4.t";
connectAttr "bendyArm_jnt_space_4.r" "bend_jnt_space_4.r";
connectAttr "bendyArm_jnt_space_5.ac" "bend_jnt_space_5.t";
connectAttr "bendyArm_jnt_space_5.r" "bend_jnt_space_5.r";
connectAttr "bendyArm_jnt_space_6.ac" "bend_jnt_space_6.t";
connectAttr "bendyArm_jnt_space_6.r" "bend_jnt_space_6.r";
connectAttr "bendyArm_ctrl_space_onCurve.ac" "bendyArm_ctrl_space.t";
connectAttr "bendyArm_ctrl_space_onCurve.r" "bendyArm_ctrl_space.r";
connectAttr "shoulder.s" "elbow.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_0.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_1.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_2.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_3.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_4.gp";
connectAttr "shoulder.wm" "shoulder_jnt_decomp.imat";
connectAttr "elbow.wm" "elbow_jnt_decomp.imat";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_0.gp";
connectAttr "unitConversion2.o" "bendyArm_jnt_space_0.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_0.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_1.gp";
connectAttr "unitConversion4.o" "bendyArm_jnt_space_1.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_1.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_2.gp";
connectAttr "unitConversion6.o" "bendyArm_jnt_space_2.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_2.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_3.gp";
connectAttr "unitConversion8.o" "bendyArm_jnt_space_3.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_3.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_4.gp";
connectAttr "unitConversion10.o" "bendyArm_jnt_space_4.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_4.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_5.gp";
connectAttr "unitConversion12.o" "bendyArm_jnt_space_5.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_5.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_6.gp";
connectAttr "unitConversion14.o" "bendyArm_jnt_space_6.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_6.wum";
connectAttr "softMod1GroupParts.og" "bendyArm_ctrlSoftMod.ip[0].ig";
connectAttr "softMod1GroupId.id" "bendyArm_ctrlSoftMod.ip[0].gi";
connectAttr "bendyArm_ctrl.wm" "bendyArm_ctrlSoftMod.ma";
connectAttr "bendyArm_ctrlShape.x" "bendyArm_ctrlSoftMod.x";
connectAttr "bendyArm_ctrl.pim" "bendyArm_ctrlSoftMod.pm";
connectAttr "bendyArm_center_ctrl_decomp.ot" "bendyArm_ctrlSoftMod.fcr";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "softMod1GroupId.msg" "softMod1Set.gn" -na;
connectAttr "bendArm_curveShape.iog.og[0]" "softMod1Set.dsm" -na;
connectAttr "bendyArm_ctrlSoftMod.msg" "softMod1Set.ub[0]";
connectAttr "tweak1.og[0]" "softMod1GroupParts.ig";
connectAttr "softMod1GroupId.id" "softMod1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "bendArm_curveShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "bendArm_curveShape2Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "bendyArm_center_ctrl.wm" "bendyArm_center_ctrl_decomp.imat";
connectAttr "linear_curveShape.ws" "bendyArm_ctrl_space_onCurve.gp";
connectAttr "bendyArm_center_ctrl.UVal" "bendyArm_ctrl_space_onCurve.u";
connectAttr "unitConversion1.o" "mul_twist_1.i1x";
connectAttr "shoulder.rx" "unitConversion1.i";
connectAttr "mul_twist_1.ox" "unitConversion2.i";
connectAttr "unitConversion3.o" "mul_twist_2.i1x";
connectAttr "shoulder.rx" "unitConversion3.i";
connectAttr "mul_twist_2.ox" "unitConversion4.i";
connectAttr "unitConversion5.o" "mul_twist_3.i1x";
connectAttr "shoulder.rx" "unitConversion5.i";
connectAttr "mul_twist_3.ox" "unitConversion6.i";
connectAttr "unitConversion7.o" "mul_twist_4.i1x";
connectAttr "shoulder.rx" "unitConversion7.i";
connectAttr "mul_twist_4.ox" "unitConversion8.i";
connectAttr "unitConversion9.o" "mul_twist_5.i1x";
connectAttr "shoulder.rx" "unitConversion9.i";
connectAttr "mul_twist_5.ox" "unitConversion10.i";
connectAttr "unitConversion11.o" "mul_twist_6.i1x";
connectAttr "shoulder.rx" "unitConversion11.i";
connectAttr "mul_twist_6.ox" "unitConversion12.i";
connectAttr "unitConversion13.o" "mul_twist_7.i1x";
connectAttr "shoulder.rx" "unitConversion13.i";
connectAttr "mul_twist_7.ox" "unitConversion14.i";
connectAttr "nodeView1.msg" "MayaNodeEditorBookmarks.b[0]";
connectAttr "nodeView2.msg" "MayaNodeEditorBookmarks.b[1]";
connectAttr "nodeView3.msg" "MayaNodeEditorBookmarks.b[2]";
connectAttr "linear_curveShape.msg" "nodeView1.ni[0].dn";
connectAttr "bendyArm_curve_CP_space_2.msg" "nodeView1.ni[1].dn";
connectAttr "bendyArm_curve_CP_space_1.msg" "nodeView1.ni[2].dn";
connectAttr "bendyArm_curve_CP_space_3.msg" "nodeView1.ni[3].dn";
connectAttr "bendyArm_curve_CP_space_0.msg" "nodeView1.ni[4].dn";
connectAttr "bendArm_curveShape2Orig.msg" "nodeView1.ni[5].dn";
connectAttr "bendyArm_curve_CP_space_4.msg" "nodeView1.ni[6].dn";
connectAttr "shoulder.msg" "nodeView1.ni[7].dn";
connectAttr "elbow_jnt_decomp.msg" "nodeView1.ni[8].dn";
connectAttr "shoulder_jnt_decomp.msg" "nodeView1.ni[9].dn";
connectAttr "elbow.msg" "nodeView1.ni[10].dn";
connectAttr "bendArm_curveShape.msg" "nodeView2.ni[0].dn";
connectAttr "bend_jnt_space_0.msg" "nodeView2.ni[1].dn";
connectAttr "bendyArm_center_ctrl.msg" "nodeView2.ni[2].dn";
connectAttr "bendyArm_jnt_space_0.msg" "nodeView2.ni[3].dn";
connectAttr "bendyArm_jnt_space_6.msg" "nodeView2.ni[4].dn";
connectAttr "bend_jnt_space_4.msg" "nodeView2.ni[5].dn";
connectAttr "bend_jnt_space_1.msg" "nodeView2.ni[6].dn";
connectAttr "bendyArm_jnt_space_1.msg" "nodeView2.ni[7].dn";
connectAttr "bendyArm_ctrlSoftMod.msg" "nodeView2.ni[8].dn";
connectAttr "bendyArm_jnt_space_3.msg" "nodeView2.ni[9].dn";
connectAttr "bendyArm_jnt_space_5.msg" "nodeView2.ni[10].dn";
connectAttr "bendyArm_ctrlShape.msg" "nodeView2.ni[11].dn";
connectAttr "bend_jnt_space_6.msg" "nodeView2.ni[12].dn";
connectAttr "bendyArm_center_ctrl_decomp.msg" "nodeView2.ni[13].dn";
connectAttr "bendyArm_ctrl.msg" "nodeView2.ni[14].dn";
connectAttr "bendyArm_jnt_space_4.msg" "nodeView2.ni[15].dn";
connectAttr "bend_jnt_space_5.msg" "nodeView2.ni[16].dn";
connectAttr "bendyArm_jnt_space_2.msg" "nodeView2.ni[17].dn";
connectAttr "bend_jnt_space_3.msg" "nodeView2.ni[18].dn";
connectAttr "bend_jnt_space_2.msg" "nodeView2.ni[19].dn";
connectAttr "shoulder.msg" "nodeView3.ni[0].dn";
connectAttr "unitConversion6.msg" "nodeView3.ni[1].dn";
connectAttr "bend_jnt_space_0.msg" "nodeView3.ni[2].dn";
connectAttr "bendyArm_jnt_space_0.msg" "nodeView3.ni[3].dn";
connectAttr "bendyArm_jnt_space_6.msg" "nodeView3.ni[4].dn";
connectAttr "bend_jnt_space_4.msg" "nodeView3.ni[5].dn";
connectAttr "unitConversion8.msg" "nodeView3.ni[6].dn";
connectAttr "unitConversion10.msg" "nodeView3.ni[7].dn";
connectAttr "bend_jnt_space_1.msg" "nodeView3.ni[8].dn";
connectAttr "bendyArm_jnt_space_1.msg" "nodeView3.ni[9].dn";
connectAttr "unitConversion3.msg" "nodeView3.ni[10].dn";
connectAttr "bendyArm_ctrlSoftMod.msg" "nodeView3.ni[11].dn";
connectAttr "unitConversion5.msg" "nodeView3.ni[12].dn";
connectAttr "mul_twist_3.msg" "nodeView3.ni[13].dn";
connectAttr "bendyArm_jnt_space_3.msg" "nodeView3.ni[14].dn";
connectAttr "tweak1.msg" "nodeView3.ni[15].dn";
connectAttr "bendyArm_jnt_space_5.msg" "nodeView3.ni[16].dn";
connectAttr "mul_twist_2.msg" "nodeView3.ni[17].dn";
connectAttr "bend_jnt_space_6.msg" "nodeView3.ni[18].dn";
connectAttr "mul_twist_1.msg" "nodeView3.ni[19].dn";
connectAttr "unitConversion12.msg" "nodeView3.ni[20].dn";
connectAttr "unitConversion9.msg" "nodeView3.ni[21].dn";
connectAttr "mul_twist_6.msg" "nodeView3.ni[22].dn";
connectAttr "unitConversion14.msg" "nodeView3.ni[23].dn";
connectAttr "unitConversion13.msg" "nodeView3.ni[24].dn";
connectAttr "bendyArm_jnt_space_4.msg" "nodeView3.ni[25].dn";
connectAttr "bend_jnt_space_5.msg" "nodeView3.ni[26].dn";
connectAttr "bendyArm_jnt_space_2.msg" "nodeView3.ni[27].dn";
connectAttr "bendArm_curveShape.msg" "nodeView3.ni[28].dn";
connectAttr "mul_twist_7.msg" "nodeView3.ni[29].dn";
connectAttr "unitConversion4.msg" "nodeView3.ni[30].dn";
connectAttr "mul_twist_4.msg" "nodeView3.ni[31].dn";
connectAttr "bend_jnt_space_3.msg" "nodeView3.ni[32].dn";
connectAttr "unitConversion11.msg" "nodeView3.ni[33].dn";
connectAttr "unitConversion1.msg" "nodeView3.ni[34].dn";
connectAttr "bend_jnt_space_2.msg" "nodeView3.ni[35].dn";
connectAttr "mul_twist_5.msg" "nodeView3.ni[36].dn";
connectAttr "unitConversion2.msg" "nodeView3.ni[37].dn";
connectAttr "unitConversion7.msg" "nodeView3.ni[38].dn";
connectAttr "shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "bendyArm_curve_CP_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "bendyArm_curve_CP_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "bendyArm_curve_CP_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "bendyArm_curve_CP_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "elbow_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "linear_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "shoulder_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "bendyArm_curve_CP_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "bendArm_curveShape2Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "bendyArm_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "bendyArm_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "bendyArm_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "bendArm_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "bend_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "bend_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "bendyArm_center_ctrl_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "bend_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "bend_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "bend_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "bend_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "bendyArm_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "bendyArm_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn";
connectAttr "bendyArm_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "bendyArm_ctrlSoftMod.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "bendyArm_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "bend_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "bendyArm_center_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "bendyArm_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "bendyArm_ctrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn";
connectAttr "bend_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "bendyArm_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "bendyArm_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn";
connectAttr "bend_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "unitConversion10.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "bend_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "bendyArm_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn";
connectAttr "bendyArm_ctrlSoftMod.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "unitConversion5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn";
connectAttr "mul_twist_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn";
connectAttr "bendyArm_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn";
connectAttr "bendyArm_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "mul_twist_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn";
connectAttr "bend_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "mul_twist_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn";
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "unitConversion9.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "mul_twist_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn";
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "bendyArm_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "bend_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "bendyArm_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn"
		;
connectAttr "bendArm_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "mul_twist_7.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn";
connectAttr "mul_twist_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn";
connectAttr "unitConversion4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[31].dn"
		;
connectAttr "bend_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[32].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[33].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[34].dn"
		;
connectAttr "bend_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[35].dn"
		;
connectAttr "mul_twist_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[36].dn";
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[37].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[38].dn"
		;
connectAttr "bendyArm_jnt_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[39].dn"
		;
connectAttr "bendyArm_setup_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[40].dn"
		;
connectAttr "shoulder_jnt_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_jnt_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bendyArm_center_ctrl_decomp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of bendyarm.ma
=======
//Maya ASCII 2016 scene
//Name: bendyarm.ma
//Last modified: Sun, Sep 10, 2017 11:46:08 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2016.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "5E418805-409A-20DE-417A-3B91B8466540";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1377523652347561 6.9818588900148875 0.14412114039008816 ;
	setAttr ".r" -type "double3" -78.33835272961754 21.400000000004169 -1.7080365254563973e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5457C674-4CF8-FBA5-F956-9BB35392A565";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 6.5585508938395884;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.9924687692089038 0.0030288470545964956 -1 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "ABA0754C-4C84-1541-1105-3180797BB3CA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1E05C0F1-408A-89A5-FB65-759DE91982E8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EE467C3E-453B-99A6-A3EB-6B831DCF7FDA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "24C83F28-4486-E2ED-3DE6-109685997685";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E70E3D9B-4A97-894F-8F7D-B0833A617011";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C6CE5ED7-453A-42D5-8549-89A47F4305BA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bendyArm_setup_grp";
	rename -uid "7CEDF7CB-40B0-8679-35CE-5E8B8377B882";
createNode transform -n "bendArm_curve" -p "bendyArm_setup_grp";
	rename -uid "1D98799B-421E-D405-D267-E3879AB54D3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.0075312307910966316 0 0 ;
createNode nurbsCurve -n "bendArm_curveShape" -p "bendArm_curve";
	rename -uid "570A02F4-47A8-CB5F-9684-7EB1AFB22405";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "bendArm_curveShape2Orig" -p "bendArm_curve";
	rename -uid "3EF9C47F-4B51-695B-CDC9-83AB9451D8F8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		0 0.0030288470545964956 0
		1.0000000000000002 0.0030288470545964956 -0.5
		2.0000000000000004 0.0030288470545964956 -1
		3.0000000000000009 0.0030288470545964956 -1.5
		4.0000000000000009 0.0030288470545964956 -2
		;
createNode transform -n "linear_curve" -p "bendyArm_setup_grp";
	rename -uid "9891419E-4230-A23A-79D4-F3BF2116FF59";
	setAttr ".v" no;
createNode nurbsCurve -n "linear_curveShape" -p "linear_curve";
	rename -uid "179B3FE1-47C0-F736-844D-26A5E9CF9DA6";
	setAttr -k off ".v";
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.0030288470545964956 0
		4.0000000000000009 0.0030288470545964956 -2
		;
createNode transform -n "bendyArm_jnt_grp" -p "bendyArm_setup_grp";
	rename -uid "3E57C9C0-43BC-FA78-724B-EEAA0DF962F3";
createNode transform -n "bend_jnt_space_0" -p "bendyArm_jnt_grp";
	rename -uid "E0B4D08A-4505-0FB1-DF61-F7B18B386878";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_0" -p "bend_jnt_space_0";
	rename -uid "C60DA685-4A63-6B7A-0666-7DB5B9B32ADA";
	setAttr ".r" -type "double3" -11.774235011508537 22.990343363298145 -42.628213119919295 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_1" -p "bendyArm_jnt_grp";
	rename -uid "19C8A2F3-4C88-43B0-E800-0FB704113F82";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_1" -p "bend_jnt_space_1";
	rename -uid "92FD2DBB-4DBC-5958-F47C-10B2CCF7DD69";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_2" -p "bendyArm_jnt_grp";
	rename -uid "61D14243-40B6-B2DD-493C-2AAF2F1BC991";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_2" -p "bend_jnt_space_2";
	rename -uid "D23041D8-4BF0-8242-A286-C6A13D5B840B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_3" -p "bendyArm_jnt_grp";
	rename -uid "A0B63256-444F-BB38-42F9-1BBF90DD131E";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_3" -p "bend_jnt_space_3";
	rename -uid "0D7188C0-4F47-5F01-9C1E-C898CEB74151";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_4" -p "bendyArm_jnt_grp";
	rename -uid "AF025AB4-46A8-D126-46CA-62B8E9EE5F13";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_4" -p "bend_jnt_space_4";
	rename -uid "B948B4C4-48A8-F3C2-F2CF-74BCAD0B1C2A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_5" -p "bendyArm_jnt_grp";
	rename -uid "5B5AFD22-4A2F-E7DE-5033-229A9B4CB360";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_5" -p "bend_jnt_space_5";
	rename -uid "BB27FE49-4024-D6ED-E064-9192A2236802";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bend_jnt_space_6" -p "bendyArm_jnt_grp";
	rename -uid "6F2547BA-49E6-56D6-D071-FCB97D9317BE";
	setAttr ".dla" yes;
createNode joint -n "bendArm_jnt_6" -p "bend_jnt_space_6";
	rename -uid "BB2F1042-4F68-9850-7418-7EBA22D17163";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "bendyArm_ctrl_space" -p "bendyArm_setup_grp";
	rename -uid "4F693EC1-45A0-D5D0-B2E2-ED9745002D23";
createNode transform -n "bendyArm_center_ctrl" -p "bendyArm_ctrl_space";
	rename -uid "06D93B17-4F66-73D6-F1B4-BF9AD9424F67";
	addAttr -ci true -sn "UVal" -ln "UVal" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 2.220446049250316e-016 0 -1.3010426069826061e-018 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 3.5311250384401269e-031 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".UVal" 0.5;
createNode transform -n "bendyArm_ctrl" -p "bendyArm_center_ctrl";
	rename -uid "66E7E0BB-4EE7-27D4-4A2E-1D94361CD6CE";
	setAttr ".t" -type "double3" 0 -1.9721522630525295e-031 2.5500435096859069e-016 ;
	setAttr ".r" -type "double3" 0 3.5311250384401269e-031 0 ;
createNode softModHandle -n "bendyArm_ctrlShape" -p "bendyArm_ctrl";
	rename -uid "5EBF91F5-4EC5-FDA9-A9A7-209FAFE03F91";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode nurbsCurve -n "bendyArm_center_ctrlShape" -p "bendyArm_center_ctrl";
	rename -uid "54CB8E47-481D-1F56-94EE-2EB9861210DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.18659085294927344 1.1425394540725095e-017 -0.18659085294927313
		-1.1469153562952835e-016 1.6157947914956962e-017 -0.2638793148556261
		-0.18659085294927338 1.1425394540725103e-017 -0.18659085294927322
		-0.26387931485562621 4.6821690658147519e-033 8.7812659156595211e-018
		-0.18659085294927347 -1.1425394540725098e-017 0.18659085294927336
		-1.6409804848582754e-016 -1.6157947914956962e-017 0.26387931485562627
		0.18659085294927313 -1.1425394540725104e-017 0.18659085294927344
		0.2638793148556261 -8.6784653449892828e-033 2.2697698438903856e-016
		0.18659085294927344 1.1425394540725095e-017 -0.18659085294927313
		-1.1469153562952835e-016 1.6157947914956962e-017 -0.2638793148556261
		-0.18659085294927338 1.1425394540725103e-017 -0.18659085294927322
		;
createNode joint -n "shoulder" -p "bendyArm_setup_grp";
	rename -uid "23CB9B44-4ED4-9F0D-335A-0FAA64699572";
	setAttr ".t" -type "double3" 0 0.0030288470545964956 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 26.565051177077983 0 ;
	setAttr ".radi" 0.67959323905170244;
createNode joint -n "elbow" -p "shoulder";
	rename -uid "31253A18-4A73-F393-3D81-4DAC646A0D49";
	setAttr ".t" -type "double3" 4.4721359549995796 0 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.67959323905170244;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E9452945-4B98-9C8F-CEA6-A28BCA97A51A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "ABDC3E06-41F3-671A-B720-BAAEB8D81B02";
createNode displayLayer -n "defaultLayer";
	rename -uid "C25C0FB4-4247-1B0E-9876-3CA149A4AD9D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2BA99767-4BC6-7FDB-F538-DCAE9D06957F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A67DC4BC-4391-FA0E-ABC2-B980137685EE";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "4B2AEE17-43CD-8F36-9247-E59B4FBAC6BA";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "008702C4-4885-D393-CA82-F1A8DB3749A2";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "3B0D461F-4523-A0EA-B45F-40BA4818B75E";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "CF945D01-485C-1CC2-6D7C-50A33F24592D";
lockNode -l 1 ;
createNode script -n "IGPUCS";
	rename -uid "6AEB3EEF-4763-B148-E0A4-2898FD3C9AE5";
	setAttr ".b" -type "string" "try: igpucs_SOuP().scriptJobUpdate()\nexcept: pass";
	setAttr ".st" 7;
	setAttr ".stp" 1;
createNode motionPath -n "bendyArm_curve_CP_space_0";
	rename -uid "A957FA1C-4785-4C6D-53AD-0686FB0E432D";
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_1";
	rename -uid "88CF22BA-4C6E-024C-C11C-0A82DEE879CB";
	setAttr ".u" 0.25;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_2";
	rename -uid "8F66D211-4E11-69AD-1271-EDAE36588E67";
	setAttr ".u" 0.5;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_3";
	rename -uid "140F7DE5-4286-97C4-2080-9695033CC68B";
	setAttr ".u" 0.75;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_curve_CP_space_4";
	rename -uid "7A3EECCA-4297-00B2-ABE2-049E63A76482";
	setAttr ".u" 1;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode decomposeMatrix -n "shoulder_jnt_decomp";
	rename -uid "DAB4AE41-4880-6D4B-F858-29B58A7C5FA3";
	setAttr ".ot" -type "double3" 0 0.0030288470545964956 0 ;
	setAttr ".or" -type "double3" 0 26.565051177077986 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqy" 0.22975292054736116;
	setAttr ".oqw" 0.9732489894677302;
createNode decomposeMatrix -n "elbow_jnt_decomp";
	rename -uid "70C68067-4756-2148-344C-B8A987B09B89";
	setAttr ".ot" -type "double3" 4.0000000000000009 0.0030288470545964956 -2 ;
	setAttr ".or" -type "double3" 0 26.565051177077986 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqy" 0.22975292054736116;
	setAttr ".oqw" 0.9732489894677302;
createNode motionPath -n "bendyArm_jnt_space_0";
	rename -uid "39396524-412D-0EB6-B82A-92AD789D76B5";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_1";
	rename -uid "B41D45BE-4DD3-6FB3-A4A3-76A9A3580F29";
	setAttr ".u" 0.16666666666666666;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_2";
	rename -uid "9F5EB217-4FC2-7AB9-1460-27993A071779";
	setAttr ".u" 0.33333333333333331;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_3";
	rename -uid "7EE17F10-46D9-D59A-E163-CA8F58BE4E18";
	setAttr ".u" 0.5;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_4";
	rename -uid "8F06A090-4530-60A9-9B70-458DA69F12C6";
	setAttr ".u" 0.66666666666666663;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_5";
	rename -uid "4347B709-4463-8E53-0604-03A417A8CD6C";
	setAttr ".u" 0.83333333333333337;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "bendyArm_jnt_space_6";
	rename -uid "453B00FE-40AB-59B9-8A1A-59A7B0F9A9EB";
	setAttr ".u" 1;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode softMod -n "bendyArm_ctrlSoftMod";
	rename -uid "ACD01D0E-45F2-E16C-C07A-A8AB3BE16963";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0075312307910966316 0 0 1;
	setAttr -s 2 ".fc[0:1]"  1 0 2 0 1 2;
	setAttr ".fr" 2.5;
	setAttr ".fas" no;
createNode tweak -n "tweak1";
	rename -uid "04131A45-4F16-6459-E593-0EAD6FE00782";
createNode objectSet -n "softMod1Set";
	rename -uid "A09CA0B0-4247-B8D4-58FF-6C87C1E99F8E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "softMod1GroupId";
	rename -uid "D4483E69-44B8-5E03-9DBE-ADA1276B4394";
	setAttr ".ihi" 0;
createNode groupParts -n "softMod1GroupParts";
	rename -uid "3BDCADBE-4712-D393-2FE1-BD9F7852C7EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
	setAttr ".irc" -type "componentList" 2 "cv[0]" "cv[4]";
createNode objectSet -n "tweakSet1";
	rename -uid "A46BBC79-40FD-1AE7-73EC-84B68501660B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "F78FE3BE-4825-3AB7-F4A7-FB9B120363D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "3D4E1A29-418B-1FA5-FB20-33A96AC6A02F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode decomposeMatrix -n "bendyArm_center_ctrl_decomp";
	rename -uid "5F8EF9BC-4185-0A0F-BE01-05ABD99372ED";
	setAttr ".ot" -type "double3" 2.0000000000000004 0.0030288470545964943 -0.99999999999999978 ;
	setAttr ".or" -type "double3" -90.000000000000043 -63.434948822922031 7.1119364739076185e-015 ;
	setAttr ".os" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".oqx" -0.60150095500754575;
	setAttr ".oqy" -0.37174803446018445;
	setAttr ".oqz" -0.37174803446018462;
	setAttr ".oqw" 0.60150095500754552;
createNode motionPath -n "bendyArm_ctrl_space_onCurve";
	rename -uid "4589AF5B-4756-A2A4-131E-08B9E9A2092C";
	setAttr ".f" yes;
createNode multiplyDivide -n "mul_twist_1";
	rename -uid "17224965-4663-5EE2-0FA3-0891EA13E05B";
createNode unitConversion -n "unitConversion1";
	rename -uid "76B40E40-410E-D8BF-C8A8-DCB706CC6424";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "A3141A05-401D-8CA4-CB7D-7D9D807A748B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_2";
	rename -uid "08302EAE-4F0B-43EA-931E-D28B3E289858";
	setAttr ".i2" -type "float3" 0.83333331 1 1 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "2792DF13-486F-C590-F946-979EA006663F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion4";
	rename -uid "0E26950A-41B6-C51B-FBFA-2BBB3F56674B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_3";
	rename -uid "EEFA9AD3-4591-427B-EAC8-21B9E20B7E3B";
	setAttr ".i2" -type "float3" 0.66666669 1 1 ;
createNode unitConversion -n "unitConversion5";
	rename -uid "7CD9B1FE-448F-9EEA-2DDF-BC91A8882A5F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "59BFDDE0-4D82-7BDA-FA25-45B5E4A0EC5C";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_4";
	rename -uid "3D79AF1F-4DF8-4CCF-01E6-678DF91E913F";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion7";
	rename -uid "7CE0F631-4A45-8B89-C851-C5A194FC60CB";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "BD7B97E4-454A-F526-8100-BAA3F9A7855B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_5";
	rename -uid "168F5D0A-4610-385E-5427-EA9E1FCF85E8";
	setAttr ".i2" -type "float3" 0.33333334 1 1 ;
createNode unitConversion -n "unitConversion9";
	rename -uid "47C6F21E-468C-6628-66C9-4D91CCE4A962";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion10";
	rename -uid "1323740E-4403-51A1-B79F-118ED7FF9A6A";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_6";
	rename -uid "7A8DFDE4-4506-7A49-45F0-B0AB8D18B2EA";
	setAttr ".i2" -type "float3" 0.16666667 1 1 ;
createNode unitConversion -n "unitConversion11";
	rename -uid "D6405DC8-4C8F-3FD6-BC0D-688BA162D4A0";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "3FC6E698-4008-21D3-6DCA-0C94822E8FDC";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "mul_twist_7";
	rename -uid "EAFACD83-4360-DFE4-21A3-E998D972C0C2";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "6E70D46D-438A-2DBF-FFAA-6DAD771E1941";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion14";
	rename -uid "D79556AB-412F-B6CB-3D86-6EBE47356531";
	setAttr ".cf" 0.017453292519943295;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F2E328B8-4749-7D37-E392-089A644646DB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 424\n                -height 1076\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 424\n            -height 1076\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1356\n                -height 1076\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1356\n            -height 1076\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 2\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 2\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1356\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1356\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F8F19FF4-4312-9092-98F8-D5AF9FFAE426";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorBookmarks -n "MayaNodeEditorBookmarks";
	rename -uid "7A5C9670-4DA7-3A7E-4F15-8CAD98F1F52B";
	setAttr -s 3 ".b";
createNode nodeGraphEditorBookmarkInfo -n "nodeView1";
	rename -uid "C8B9EE12-4D77-7982-042C-09A608A9E51A";
	setAttr ".nm" -type "string" "linear_curve";
	setAttr ".vl" -type "double2" -205.93873506997573 -990.95851036780891 ;
	setAttr ".vh" -type "double2" 1669.3739777095579 540.01712238158439 ;
	setAttr -s 11 ".ni";
	setAttr ".ni[0].x" 524.28570556640625;
	setAttr ".ni[0].y" -211.42857360839844;
	setAttr ".ni[0].nvs" 18305;
	setAttr ".ni[1].x" 820;
	setAttr ".ni[1].y" -1.4285714626312256;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 820;
	setAttr ".ni[2].y" -521.4285888671875;
	setAttr ".ni[2].nvs" 18304;
	setAttr ".ni[3].x" 820;
	setAttr ".ni[3].y" -131.42857360839844;
	setAttr ".ni[3].nvs" 18304;
	setAttr ".ni[4].x" 820;
	setAttr ".ni[4].y" -391.42855834960937;
	setAttr ".ni[4].nvs" 18304;
	setAttr ".ni[5].x" 1124.2857666015625;
	setAttr ".ni[5].y" -211.42857360839844;
	setAttr ".ni[5].nvs" 18305;
	setAttr ".ni[6].x" 820;
	setAttr ".ni[6].y" -261.42855834960937;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 1.4285714626312256;
	setAttr ".ni[7].y" -197.14285278320312;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 262.85714721679687;
	setAttr ".ni[8].y" -327.14285278320312;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 262.85714721679687;
	setAttr ".ni[9].y" -197.14285278320312;
	setAttr ".ni[9].nvs" 18304;
	setAttr ".ni[10].x" 1.4285714626312256;
	setAttr ".ni[10].y" -327.14285278320312;
	setAttr ".ni[10].nvs" 18304;
createNode nodeGraphEditorBookmarkInfo -n "nodeView2";
	rename -uid "A25B6168-4A5D-1C0E-2ED3-2AA31419884B";
	setAttr ".nm" -type "string" "bendyArm_Curve";
	setAttr ".vl" -type "double2" -252.60419577353042 -1493.4416571027371 ;
	setAttr ".vh" -type "double2" 2320.0349286468181 606.82022695794308 ;
	setAttr -s 20 ".ni";
	setAttr ".ni[0].x" 814.2235107421875;
	setAttr ".ni[0].y" -595.552490234375;
	setAttr ".ni[0].nvs" 18304;
	setAttr ".ni[1].x" 1411.4285888671875;
	setAttr ".ni[1].y" -131.42857360839844;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 1.4285714626312256;
	setAttr ".ni[2].y" -327.14285278320312;
	setAttr ".ni[2].nvs" 18304;
	setAttr ".ni[3].x" 1150;
	setAttr ".ni[3].y" -131.42857360839844;
	setAttr ".ni[3].nvs" 18304;
	setAttr ".ni[4].x" 1150;
	setAttr ".ni[4].y" -911.4285888671875;
	setAttr ".ni[4].nvs" 18304;
	setAttr ".ni[5].x" 1411.4285888671875;
	setAttr ".ni[5].y" -651.4285888671875;
	setAttr ".ni[5].nvs" 18304;
	setAttr ".ni[6].x" 1411.4285888671875;
	setAttr ".ni[6].y" -261.42855834960937;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 1150;
	setAttr ".ni[7].y" -261.42855834960937;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 564.1986083984375;
	setAttr ".ni[8].y" -394.422607421875;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 1150;
	setAttr ".ni[9].y" -781.4285888671875;
	setAttr ".ni[9].nvs" 18304;
	setAttr ".ni[10].x" 1150;
	setAttr ".ni[10].y" -391.42855834960937;
	setAttr ".ni[10].nvs" 18304;
	setAttr ".ni[11].x" 262.85714721679687;
	setAttr ".ni[11].y" -457.14285278320312;
	setAttr ".ni[11].nvs" 18304;
	setAttr ".ni[12].x" 1411.4285888671875;
	setAttr ".ni[12].y" -911.4285888671875;
	setAttr ".ni[12].nvs" 18304;
	setAttr ".ni[13].x" 262.85714721679687;
	setAttr ".ni[13].y" -327.14285278320312;
	setAttr ".ni[13].nvs" 18304;
	setAttr ".ni[14].x" 262.85714721679687;
	setAttr ".ni[14].y" -587.14288330078125;
	setAttr ".ni[14].nvs" 18304;
	setAttr ".ni[15].x" 1150;
	setAttr ".ni[15].y" -651.4285888671875;
	setAttr ".ni[15].nvs" 18304;
	setAttr ".ni[16].x" 1411.4285888671875;
	setAttr ".ni[16].y" -391.42855834960937;
	setAttr ".ni[16].nvs" 18304;
	setAttr ".ni[17].x" 1150;
	setAttr ".ni[17].y" -521.4285888671875;
	setAttr ".ni[17].nvs" 18304;
	setAttr ".ni[18].x" 1411.4285888671875;
	setAttr ".ni[18].y" -781.4285888671875;
	setAttr ".ni[18].nvs" 18304;
	setAttr ".ni[19].x" 1411.4285888671875;
	setAttr ".ni[19].y" -521.4285888671875;
	setAttr ".ni[19].nvs" 18304;
createNode nodeGraphEditorBookmarkInfo -n "nodeView3";
	rename -uid "C6FBBBEA-4B9D-5B24-2ADF-2683316FC0FA";
	setAttr ".nm" -type "string" "twist";
	setAttr ".vl" -type "double2" 184.23825791459032 -1862.187251248595 ;
	setAttr ".vh" -type "double2" 3138.0114027320974 549.22641782558458 ;
	setAttr -s 39 ".ni";
	setAttr ".ni[0].x" 366.51031494140625;
	setAttr ".ni[0].y" -411.538818359375;
	setAttr ".ni[0].nvs" 18304;
	setAttr ".ni[1].x" 1342.857177734375;
	setAttr ".ni[1].y" -1.4285714626312256;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 2141.48193359375;
	setAttr ".ni[2].y" -625.72845458984375;
	setAttr ".ni[2].nvs" 18304;
	setAttr ".ni[3].x" 1880.05322265625;
	setAttr ".ni[3].y" -625.72845458984375;
	setAttr ".ni[3].nvs" 18304;
	setAttr ".ni[4].x" 1880.05322265625;
	setAttr ".ni[4].y" -755.72845458984375;
	setAttr ".ni[4].nvs" 18304;
	setAttr ".ni[5].x" 2141.48193359375;
	setAttr ".ni[5].y" -235.72846984863281;
	setAttr ".ni[5].nvs" 18304;
	setAttr ".ni[6].x" 1342.857177734375;
	setAttr ".ni[6].y" -521.4285888671875;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 1342.857177734375;
	setAttr ".ni[7].y" -131.42857360839844;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 2141.48193359375;
	setAttr ".ni[8].y" -885.72845458984375;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 1880.05322265625;
	setAttr ".ni[9].y" -885.72845458984375;
	setAttr ".ni[9].nvs" 18304;
	setAttr ".ni[10].x" 760;
	setAttr ".ni[10].y" -1041.4285888671875;
	setAttr ".ni[10].nvs" 18304;
	setAttr ".ni[11].x" 906.69866943359375;
	setAttr ".ni[11].y" 282.34878540039062;
	setAttr ".ni[11].nvs" 18304;
	setAttr ".ni[12].x" 760;
	setAttr ".ni[12].y" -1.4285714626312256;
	setAttr ".ni[12].nvs" 18304;
	setAttr ".ni[13].x" 1019.3425903320312;
	setAttr ".ni[13].y" 111.21531677246094;
	setAttr ".ni[13].nvs" 18305;
	setAttr ".ni[14].x" 1880.05322265625;
	setAttr ".ni[14].y" -495.72848510742187;
	setAttr ".ni[14].nvs" 18304;
	setAttr ".ni[15].x" 1.4285714626312256;
	setAttr ".ni[15].y" -1885.7142333984375;
	setAttr ".ni[15].nvs" 18304;
	setAttr ".ni[16].x" 1880.05322265625;
	setAttr ".ni[16].y" -365.72848510742187;
	setAttr ".ni[16].nvs" 18304;
	setAttr ".ni[17].x" 1013.0845947265625;
	setAttr ".ni[17].y" -1043.5145263671875;
	setAttr ".ni[17].nvs" 18304;
	setAttr ".ni[18].x" 2141.48193359375;
	setAttr ".ni[18].y" -755.72845458984375;
	setAttr ".ni[18].nvs" 18304;
	setAttr ".ni[19].x" 1013.0845947265625;
	setAttr ".ni[19].y" -783.51458740234375;
	setAttr ".ni[19].nvs" 18304;
	setAttr ".ni[20].x" 1342.857177734375;
	setAttr ".ni[20].y" -261.42855834960937;
	setAttr ".ni[20].nvs" 18304;
	setAttr ".ni[21].x" 760;
	setAttr ".ni[21].y" -131.42857360839844;
	setAttr ".ni[21].nvs" 18304;
	setAttr ".ni[22].x" 1013.0845947265625;
	setAttr ".ni[22].y" -263.51455688476562;
	setAttr ".ni[22].nvs" 18304;
	setAttr ".ni[23].x" 1342.857177734375;
	setAttr ".ni[23].y" -911.4285888671875;
	setAttr ".ni[23].nvs" 18304;
	setAttr ".ni[24].x" 760;
	setAttr ".ni[24].y" -911.4285888671875;
	setAttr ".ni[24].nvs" 18304;
	setAttr ".ni[25].x" 1880.05322265625;
	setAttr ".ni[25].y" -235.72846984863281;
	setAttr ".ni[25].nvs" 18304;
	setAttr ".ni[26].x" 2141.48193359375;
	setAttr ".ni[26].y" -365.72848510742187;
	setAttr ".ni[26].nvs" 18304;
	setAttr ".ni[27].x" 1880.05322265625;
	setAttr ".ni[27].y" -105.72846984863281;
	setAttr ".ni[27].nvs" 18304;
	setAttr ".ni[28].x" 1228.127197265625;
	setAttr ".ni[28].y" 282.34878540039062;
	setAttr ".ni[28].nvs" 18304;
	setAttr ".ni[29].x" 1013.0845947265625;
	setAttr ".ni[29].y" -913.51458740234375;
	setAttr ".ni[29].nvs" 18304;
	setAttr ".ni[30].x" 1342.857177734375;
	setAttr ".ni[30].y" -1041.4285888671875;
	setAttr ".ni[30].nvs" 18304;
	setAttr ".ni[31].x" 1013.0845947265625;
	setAttr ".ni[31].y" -523.51458740234375;
	setAttr ".ni[31].nvs" 18304;
	setAttr ".ni[32].x" 2141.48193359375;
	setAttr ".ni[32].y" -495.72848510742187;
	setAttr ".ni[32].nvs" 18304;
	setAttr ".ni[33].x" 760;
	setAttr ".ni[33].y" -261.42855834960937;
	setAttr ".ni[33].nvs" 18304;
	setAttr ".ni[34].x" 760;
	setAttr ".ni[34].y" -781.4285888671875;
	setAttr ".ni[34].nvs" 18304;
	setAttr ".ni[35].x" 2141.48193359375;
	setAttr ".ni[35].y" -105.72846984863281;
	setAttr ".ni[35].nvs" 18304;
	setAttr ".ni[36].x" 1013.0845947265625;
	setAttr ".ni[36].y" -133.51457214355469;
	setAttr ".ni[36].nvs" 18304;
	setAttr ".ni[37].x" 1342.857177734375;
	setAttr ".ni[37].y" -781.4285888671875;
	setAttr ".ni[37].nvs" 18304;
	setAttr ".ni[38].x" 760;
	setAttr ".ni[38].y" -521.4285888671875;
	setAttr ".ni[38].nvs" 18304;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "BB919EDC-4A24-C6C5-5B7B-24AAD25E78B5";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "linear_curve";
	setAttr ".tgi[0].vl" -type "double2" -2099.6336162017628 -994.0475795477189 ;
	setAttr ".tgi[0].vh" -type "double2" 3566.3002245883213 540.47616899959542 ;
	setAttr -s 11 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -197.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 820;
	setAttr ".tgi[0].ni[1].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 820;
	setAttr ".tgi[0].ni[2].y" -131.42857360839844;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 820;
	setAttr ".tgi[0].ni[3].y" -521.4285888671875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 820;
	setAttr ".tgi[0].ni[4].y" -261.42855834960937;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 262.85714721679687;
	setAttr ".tgi[0].ni[5].y" -327.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 524.28570556640625;
	setAttr ".tgi[0].ni[6].y" -211.42857360839844;
	setAttr ".tgi[0].ni[6].nvs" 18305;
	setAttr ".tgi[0].ni[7].x" 262.85714721679687;
	setAttr ".tgi[0].ni[7].y" -197.14285278320312;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[8].y" -327.14285278320312;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 820;
	setAttr ".tgi[0].ni[9].y" -391.42855834960937;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1124.2857666015625;
	setAttr ".tgi[0].ni[10].y" -211.42857360839844;
	setAttr ".tgi[0].ni[10].nvs" 18305;
	setAttr ".tgi[1].tn" -type "string" "bendyArm_curve";
	setAttr ".tgi[1].vl" -type "double2" -2847.8020846407189 -1496.428511965845 ;
	setAttr ".tgi[1].vh" -type "double2" 4919.2305737581 607.14283301716853 ;
	setAttr -s 20 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 1150;
	setAttr ".tgi[1].ni[0].y" -391.42855834960937;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1150;
	setAttr ".tgi[1].ni[1].y" -911.4285888671875;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 1150;
	setAttr ".tgi[1].ni[2].y" -521.4285888671875;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 814.2235107421875;
	setAttr ".tgi[1].ni[3].y" -595.552490234375;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[4].y" -781.4285888671875;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[5].y" -651.4285888671875;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 262.85714721679687;
	setAttr ".tgi[1].ni[6].y" -327.14285278320312;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[7].y" -261.42855834960937;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[8].y" -131.42857360839844;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[9].y" -521.4285888671875;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[10].y" -391.42855834960937;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 1150;
	setAttr ".tgi[1].ni[11].y" -781.4285888671875;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 262.85714721679687;
	setAttr ".tgi[1].ni[12].y" -587.14288330078125;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" 1150;
	setAttr ".tgi[1].ni[13].y" -261.42855834960937;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[1].ni[14].x" 564.1986083984375;
	setAttr ".tgi[1].ni[14].y" -394.422607421875;
	setAttr ".tgi[1].ni[14].nvs" 18304;
	setAttr ".tgi[1].ni[15].x" 1150;
	setAttr ".tgi[1].ni[15].y" -131.42857360839844;
	setAttr ".tgi[1].ni[15].nvs" 18304;
	setAttr ".tgi[1].ni[16].x" 1411.4285888671875;
	setAttr ".tgi[1].ni[16].y" -911.4285888671875;
	setAttr ".tgi[1].ni[16].nvs" 18304;
	setAttr ".tgi[1].ni[17].x" 1.4285714626312256;
	setAttr ".tgi[1].ni[17].y" -327.14285278320312;
	setAttr ".tgi[1].ni[17].nvs" 18304;
	setAttr ".tgi[1].ni[18].x" 1150;
	setAttr ".tgi[1].ni[18].y" -651.4285888671875;
	setAttr ".tgi[1].ni[18].nvs" 18304;
	setAttr ".tgi[1].ni[19].x" 262.85714721679687;
	setAttr ".tgi[1].ni[19].y" -457.14285278320312;
	setAttr ".tgi[1].ni[19].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "twist";
	setAttr ".tgi[2].vl" -type "double2" 322.12591705094775 -1440.3082153571463 ;
	setAttr ".tgi[2].vh" -type "double2" 2322.8771872490493 193.07347133000448 ;
	setAttr -s 41 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 1342.857177734375;
	setAttr ".tgi[2].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 2141.48193359375;
	setAttr ".tgi[2].ni[1].y" -625.72845458984375;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 1880.05322265625;
	setAttr ".tgi[2].ni[2].y" -625.72845458984375;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 1880.05322265625;
	setAttr ".tgi[2].ni[3].y" -755.72845458984375;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 1342.857177734375;
	setAttr ".tgi[2].ni[4].y" -521.4285888671875;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 2141.48193359375;
	setAttr ".tgi[2].ni[5].y" -235.72846984863281;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 1342.857177734375;
	setAttr ".tgi[2].ni[6].y" -131.42857360839844;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 2141.48193359375;
	setAttr ".tgi[2].ni[7].y" -885.72845458984375;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 1880.05322265625;
	setAttr ".tgi[2].ni[8].y" -885.72845458984375;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 760;
	setAttr ".tgi[2].ni[9].y" -1041.4285888671875;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 906.69866943359375;
	setAttr ".tgi[2].ni[10].y" 282.34878540039062;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 760;
	setAttr ".tgi[2].ni[11].y" -1.4285714626312256;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 366.51031494140625;
	setAttr ".tgi[2].ni[12].y" -411.538818359375;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 1019.3425903320312;
	setAttr ".tgi[2].ni[13].y" 111.21531677246094;
	setAttr ".tgi[2].ni[13].nvs" 18305;
	setAttr ".tgi[2].ni[14].x" 1880.05322265625;
	setAttr ".tgi[2].ni[14].y" -495.72848510742187;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[15].y" -1885.7142333984375;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" 1880.05322265625;
	setAttr ".tgi[2].ni[16].y" -365.72848510742187;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[17].y" -1043.5145263671875;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" 2141.48193359375;
	setAttr ".tgi[2].ni[18].y" -755.72845458984375;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[19].y" -783.51458740234375;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" 1342.857177734375;
	setAttr ".tgi[2].ni[20].y" -261.42855834960937;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 760;
	setAttr ".tgi[2].ni[21].y" -131.42857360839844;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[22].y" -263.51455688476562;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 1342.857177734375;
	setAttr ".tgi[2].ni[23].y" -911.4285888671875;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" 760;
	setAttr ".tgi[2].ni[24].y" -911.4285888671875;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" 1880.05322265625;
	setAttr ".tgi[2].ni[25].y" -235.72846984863281;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 2141.48193359375;
	setAttr ".tgi[2].ni[26].y" -365.72848510742187;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 1880.05322265625;
	setAttr ".tgi[2].ni[27].y" -105.72846984863281;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" 1228.127197265625;
	setAttr ".tgi[2].ni[28].y" 282.34878540039062;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[29].y" -913.51458740234375;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[30].y" -523.51458740234375;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[2].ni[31].x" 1342.857177734375;
	setAttr ".tgi[2].ni[31].y" -1041.4285888671875;
	setAttr ".tgi[2].ni[31].nvs" 18304;
	setAttr ".tgi[2].ni[32].x" 2141.48193359375;
	setAttr ".tgi[2].ni[32].y" -495.72848510742187;
	setAttr ".tgi[2].ni[32].nvs" 18304;
	setAttr ".tgi[2].ni[33].x" 760;
	setAttr ".tgi[2].ni[33].y" -261.42855834960937;
	setAttr ".tgi[2].ni[33].nvs" 18304;
	setAttr ".tgi[2].ni[34].x" 760;
	setAttr ".tgi[2].ni[34].y" -781.4285888671875;
	setAttr ".tgi[2].ni[34].nvs" 18304;
	setAttr ".tgi[2].ni[35].x" 2141.48193359375;
	setAttr ".tgi[2].ni[35].y" -105.72846984863281;
	setAttr ".tgi[2].ni[35].nvs" 18304;
	setAttr ".tgi[2].ni[36].x" 1013.0845947265625;
	setAttr ".tgi[2].ni[36].y" -133.51457214355469;
	setAttr ".tgi[2].ni[36].nvs" 18304;
	setAttr ".tgi[2].ni[37].x" 1342.857177734375;
	setAttr ".tgi[2].ni[37].y" -781.4285888671875;
	setAttr ".tgi[2].ni[37].nvs" 18304;
	setAttr ".tgi[2].ni[38].x" 760;
	setAttr ".tgi[2].ni[38].y" -521.4285888671875;
	setAttr ".tgi[2].ni[38].nvs" 18304;
	setAttr ".tgi[2].ni[39].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[39].y" -1604.2857666015625;
	setAttr ".tgi[2].ni[39].nvs" 18304;
	setAttr ".tgi[2].ni[40].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[40].y" -1507.142822265625;
	setAttr ".tgi[2].ni[40].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -av ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
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
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
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
	setAttr -k on ".ro" yes;
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
	setAttr -k on ".ro" yes;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
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
	setAttr -s 4 ".sol";
connectAttr "bendyArm_ctrlSoftMod.og[0]" "bendArm_curveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "bendArm_curveShape.twl";
connectAttr "softMod1GroupId.id" "bendArm_curveShape.iog.og[0].gid";
connectAttr "softMod1Set.mwc" "bendArm_curveShape.iog.og[0].gco";
connectAttr "groupId2.id" "bendArm_curveShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "bendArm_curveShape.iog.og[1].gco";
connectAttr "bendyArm_curve_CP_space_0.ac" "bendArm_curveShape2Orig.cp[0]";
connectAttr "bendyArm_curve_CP_space_1.ac" "bendArm_curveShape2Orig.cp[1]";
connectAttr "bendyArm_curve_CP_space_2.ac" "bendArm_curveShape2Orig.cp[2]";
connectAttr "bendyArm_curve_CP_space_3.ac" "bendArm_curveShape2Orig.cp[3]";
connectAttr "bendyArm_curve_CP_space_4.ac" "bendArm_curveShape2Orig.cp[4]";
connectAttr "shoulder_jnt_decomp.ot" "linear_curveShape.cp[0]";
connectAttr "elbow_jnt_decomp.ot" "linear_curveShape.cp[1]";
connectAttr "bendyArm_jnt_space_0.ac" "bend_jnt_space_0.t";
connectAttr "bendyArm_jnt_space_0.r" "bend_jnt_space_0.r";
connectAttr "bendyArm_jnt_space_1.ac" "bend_jnt_space_1.t";
connectAttr "bendyArm_jnt_space_1.r" "bend_jnt_space_1.r";
connectAttr "bendyArm_jnt_space_2.ac" "bend_jnt_space_2.t";
connectAttr "bendyArm_jnt_space_2.r" "bend_jnt_space_2.r";
connectAttr "bendyArm_jnt_space_3.ac" "bend_jnt_space_3.t";
connectAttr "bendyArm_jnt_space_3.r" "bend_jnt_space_3.r";
connectAttr "bendyArm_jnt_space_4.ac" "bend_jnt_space_4.t";
connectAttr "bendyArm_jnt_space_4.r" "bend_jnt_space_4.r";
connectAttr "bendyArm_jnt_space_5.ac" "bend_jnt_space_5.t";
connectAttr "bendyArm_jnt_space_5.r" "bend_jnt_space_5.r";
connectAttr "bendyArm_jnt_space_6.ac" "bend_jnt_space_6.t";
connectAttr "bendyArm_jnt_space_6.r" "bend_jnt_space_6.r";
connectAttr "bendyArm_ctrl_space_onCurve.ac" "bendyArm_ctrl_space.t";
connectAttr "bendyArm_ctrl_space_onCurve.r" "bendyArm_ctrl_space.r";
connectAttr "shoulder.s" "elbow.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_0.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_1.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_2.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_3.gp";
connectAttr "linear_curveShape.ws" "bendyArm_curve_CP_space_4.gp";
connectAttr "shoulder.wm" "shoulder_jnt_decomp.imat";
connectAttr "elbow.wm" "elbow_jnt_decomp.imat";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_0.gp";
connectAttr "unitConversion2.o" "bendyArm_jnt_space_0.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_0.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_1.gp";
connectAttr "unitConversion4.o" "bendyArm_jnt_space_1.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_1.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_2.gp";
connectAttr "unitConversion6.o" "bendyArm_jnt_space_2.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_2.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_3.gp";
connectAttr "unitConversion8.o" "bendyArm_jnt_space_3.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_3.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_4.gp";
connectAttr "unitConversion10.o" "bendyArm_jnt_space_4.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_4.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_5.gp";
connectAttr "unitConversion12.o" "bendyArm_jnt_space_5.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_5.wum";
connectAttr "bendArm_curveShape.ws" "bendyArm_jnt_space_6.gp";
connectAttr "unitConversion14.o" "bendyArm_jnt_space_6.ft";
connectAttr "shoulder.wm" "bendyArm_jnt_space_6.wum";
connectAttr "softMod1GroupParts.og" "bendyArm_ctrlSoftMod.ip[0].ig";
connectAttr "softMod1GroupId.id" "bendyArm_ctrlSoftMod.ip[0].gi";
connectAttr "bendyArm_ctrl.wm" "bendyArm_ctrlSoftMod.ma";
connectAttr "bendyArm_ctrlShape.x" "bendyArm_ctrlSoftMod.x";
connectAttr "bendyArm_ctrl.pim" "bendyArm_ctrlSoftMod.pm";
connectAttr "bendyArm_center_ctrl_decomp.ot" "bendyArm_ctrlSoftMod.fcr";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "softMod1GroupId.msg" "softMod1Set.gn" -na;
connectAttr "bendArm_curveShape.iog.og[0]" "softMod1Set.dsm" -na;
connectAttr "bendyArm_ctrlSoftMod.msg" "softMod1Set.ub[0]";
connectAttr "tweak1.og[0]" "softMod1GroupParts.ig";
connectAttr "softMod1GroupId.id" "softMod1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "bendArm_curveShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "bendArm_curveShape2Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "bendyArm_center_ctrl.wm" "bendyArm_center_ctrl_decomp.imat";
connectAttr "linear_curveShape.ws" "bendyArm_ctrl_space_onCurve.gp";
connectAttr "bendyArm_center_ctrl.UVal" "bendyArm_ctrl_space_onCurve.u";
connectAttr "unitConversion1.o" "mul_twist_1.i1x";
connectAttr "shoulder.rx" "unitConversion1.i";
connectAttr "mul_twist_1.ox" "unitConversion2.i";
connectAttr "unitConversion3.o" "mul_twist_2.i1x";
connectAttr "shoulder.rx" "unitConversion3.i";
connectAttr "mul_twist_2.ox" "unitConversion4.i";
connectAttr "unitConversion5.o" "mul_twist_3.i1x";
connectAttr "shoulder.rx" "unitConversion5.i";
connectAttr "mul_twist_3.ox" "unitConversion6.i";
connectAttr "unitConversion7.o" "mul_twist_4.i1x";
connectAttr "shoulder.rx" "unitConversion7.i";
connectAttr "mul_twist_4.ox" "unitConversion8.i";
connectAttr "unitConversion9.o" "mul_twist_5.i1x";
connectAttr "shoulder.rx" "unitConversion9.i";
connectAttr "mul_twist_5.ox" "unitConversion10.i";
connectAttr "unitConversion11.o" "mul_twist_6.i1x";
connectAttr "shoulder.rx" "unitConversion11.i";
connectAttr "mul_twist_6.ox" "unitConversion12.i";
connectAttr "unitConversion13.o" "mul_twist_7.i1x";
connectAttr "shoulder.rx" "unitConversion13.i";
connectAttr "mul_twist_7.ox" "unitConversion14.i";
connectAttr "nodeView1.msg" "MayaNodeEditorBookmarks.b[0]";
connectAttr "nodeView2.msg" "MayaNodeEditorBookmarks.b[1]";
connectAttr "nodeView3.msg" "MayaNodeEditorBookmarks.b[2]";
connectAttr "linear_curveShape.msg" "nodeView1.ni[0].dn";
connectAttr "bendyArm_curve_CP_space_2.msg" "nodeView1.ni[1].dn";
connectAttr "bendyArm_curve_CP_space_1.msg" "nodeView1.ni[2].dn";
connectAttr "bendyArm_curve_CP_space_3.msg" "nodeView1.ni[3].dn";
connectAttr "bendyArm_curve_CP_space_0.msg" "nodeView1.ni[4].dn";
connectAttr "bendArm_curveShape2Orig.msg" "nodeView1.ni[5].dn";
connectAttr "bendyArm_curve_CP_space_4.msg" "nodeView1.ni[6].dn";
connectAttr "shoulder.msg" "nodeView1.ni[7].dn";
connectAttr "elbow_jnt_decomp.msg" "nodeView1.ni[8].dn";
connectAttr "shoulder_jnt_decomp.msg" "nodeView1.ni[9].dn";
connectAttr "elbow.msg" "nodeView1.ni[10].dn";
connectAttr "bendArm_curveShape.msg" "nodeView2.ni[0].dn";
connectAttr "bend_jnt_space_0.msg" "nodeView2.ni[1].dn";
connectAttr "bendyArm_center_ctrl.msg" "nodeView2.ni[2].dn";
connectAttr "bendyArm_jnt_space_0.msg" "nodeView2.ni[3].dn";
connectAttr "bendyArm_jnt_space_6.msg" "nodeView2.ni[4].dn";
connectAttr "bend_jnt_space_4.msg" "nodeView2.ni[5].dn";
connectAttr "bend_jnt_space_1.msg" "nodeView2.ni[6].dn";
connectAttr "bendyArm_jnt_space_1.msg" "nodeView2.ni[7].dn";
connectAttr "bendyArm_ctrlSoftMod.msg" "nodeView2.ni[8].dn";
connectAttr "bendyArm_jnt_space_3.msg" "nodeView2.ni[9].dn";
connectAttr "bendyArm_jnt_space_5.msg" "nodeView2.ni[10].dn";
connectAttr "bendyArm_ctrlShape.msg" "nodeView2.ni[11].dn";
connectAttr "bend_jnt_space_6.msg" "nodeView2.ni[12].dn";
connectAttr "bendyArm_center_ctrl_decomp.msg" "nodeView2.ni[13].dn";
connectAttr "bendyArm_ctrl.msg" "nodeView2.ni[14].dn";
connectAttr "bendyArm_jnt_space_4.msg" "nodeView2.ni[15].dn";
connectAttr "bend_jnt_space_5.msg" "nodeView2.ni[16].dn";
connectAttr "bendyArm_jnt_space_2.msg" "nodeView2.ni[17].dn";
connectAttr "bend_jnt_space_3.msg" "nodeView2.ni[18].dn";
connectAttr "bend_jnt_space_2.msg" "nodeView2.ni[19].dn";
connectAttr "shoulder.msg" "nodeView3.ni[0].dn";
connectAttr "unitConversion6.msg" "nodeView3.ni[1].dn";
connectAttr "bend_jnt_space_0.msg" "nodeView3.ni[2].dn";
connectAttr "bendyArm_jnt_space_0.msg" "nodeView3.ni[3].dn";
connectAttr "bendyArm_jnt_space_6.msg" "nodeView3.ni[4].dn";
connectAttr "bend_jnt_space_4.msg" "nodeView3.ni[5].dn";
connectAttr "unitConversion8.msg" "nodeView3.ni[6].dn";
connectAttr "unitConversion10.msg" "nodeView3.ni[7].dn";
connectAttr "bend_jnt_space_1.msg" "nodeView3.ni[8].dn";
connectAttr "bendyArm_jnt_space_1.msg" "nodeView3.ni[9].dn";
connectAttr "unitConversion3.msg" "nodeView3.ni[10].dn";
connectAttr "bendyArm_ctrlSoftMod.msg" "nodeView3.ni[11].dn";
connectAttr "unitConversion5.msg" "nodeView3.ni[12].dn";
connectAttr "mul_twist_3.msg" "nodeView3.ni[13].dn";
connectAttr "bendyArm_jnt_space_3.msg" "nodeView3.ni[14].dn";
connectAttr "tweak1.msg" "nodeView3.ni[15].dn";
connectAttr "bendyArm_jnt_space_5.msg" "nodeView3.ni[16].dn";
connectAttr "mul_twist_2.msg" "nodeView3.ni[17].dn";
connectAttr "bend_jnt_space_6.msg" "nodeView3.ni[18].dn";
connectAttr "mul_twist_1.msg" "nodeView3.ni[19].dn";
connectAttr "unitConversion12.msg" "nodeView3.ni[20].dn";
connectAttr "unitConversion9.msg" "nodeView3.ni[21].dn";
connectAttr "mul_twist_6.msg" "nodeView3.ni[22].dn";
connectAttr "unitConversion14.msg" "nodeView3.ni[23].dn";
connectAttr "unitConversion13.msg" "nodeView3.ni[24].dn";
connectAttr "bendyArm_jnt_space_4.msg" "nodeView3.ni[25].dn";
connectAttr "bend_jnt_space_5.msg" "nodeView3.ni[26].dn";
connectAttr "bendyArm_jnt_space_2.msg" "nodeView3.ni[27].dn";
connectAttr "bendArm_curveShape.msg" "nodeView3.ni[28].dn";
connectAttr "mul_twist_7.msg" "nodeView3.ni[29].dn";
connectAttr "unitConversion4.msg" "nodeView3.ni[30].dn";
connectAttr "mul_twist_4.msg" "nodeView3.ni[31].dn";
connectAttr "bend_jnt_space_3.msg" "nodeView3.ni[32].dn";
connectAttr "unitConversion11.msg" "nodeView3.ni[33].dn";
connectAttr "unitConversion1.msg" "nodeView3.ni[34].dn";
connectAttr "bend_jnt_space_2.msg" "nodeView3.ni[35].dn";
connectAttr "mul_twist_5.msg" "nodeView3.ni[36].dn";
connectAttr "unitConversion2.msg" "nodeView3.ni[37].dn";
connectAttr "unitConversion7.msg" "nodeView3.ni[38].dn";
connectAttr "shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "bendyArm_curve_CP_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "bendyArm_curve_CP_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "bendyArm_curve_CP_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "bendyArm_curve_CP_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "elbow_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "linear_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "shoulder_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "bendyArm_curve_CP_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "bendArm_curveShape2Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "bendyArm_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "bendyArm_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "bendyArm_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "bendArm_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "bend_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "bend_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "bendyArm_center_ctrl_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "bend_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "bend_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "bend_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "bend_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "bendyArm_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "bendyArm_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn";
connectAttr "bendyArm_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "bendyArm_ctrlSoftMod.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "bendyArm_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "bend_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "bendyArm_center_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "bendyArm_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "bendyArm_ctrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn";
connectAttr "bend_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "bendyArm_jnt_space_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "bendyArm_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn";
connectAttr "bend_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "unitConversion10.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "bend_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "bendyArm_jnt_space_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn";
connectAttr "bendyArm_ctrlSoftMod.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "unitConversion5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn";
connectAttr "mul_twist_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn";
connectAttr "bendyArm_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn";
connectAttr "bendyArm_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "mul_twist_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn";
connectAttr "bend_jnt_space_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "mul_twist_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn";
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "unitConversion9.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "mul_twist_6.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn";
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "bendyArm_jnt_space_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "bend_jnt_space_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "bendyArm_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn"
		;
connectAttr "bendArm_curveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "mul_twist_7.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn";
connectAttr "mul_twist_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn";
connectAttr "unitConversion4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[31].dn"
		;
connectAttr "bend_jnt_space_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[32].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[33].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[34].dn"
		;
connectAttr "bend_jnt_space_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[35].dn"
		;
connectAttr "mul_twist_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[36].dn";
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[37].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[38].dn"
		;
connectAttr "bendyArm_jnt_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[39].dn"
		;
connectAttr "bendyArm_setup_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[40].dn"
		;
connectAttr "shoulder_jnt_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_jnt_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bendyArm_center_ctrl_decomp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of bendyarm.ma
>>>>>>> 7fbe2e4865dac72f9e1d3236bb58bc662cf9bf6b
