//Maya ASCII 2019 scene
//Name: fit_arm.ma
//Last modified: Wed, Jul 21, 2021 09:59:50 PM
//Codeset: 949
requires maya "2019";
requires "mtoa" "3.2.2";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "fit_arm";
	rename -uid "7CEFB5FD-414B-AAED-D988-78A8F0D65538";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "leftDirect" -ln "leftDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "leftDirectX" -ln "leftDirectX" -at "double" -p "leftDirect";
	addAttr -ci true -sn "leftDirectY" -ln "leftDirectY" -at "double" -p "leftDirect";
	addAttr -ci true -sn "leftDirectZ" -ln "leftDirectZ" -at "double" -p "leftDirect";
	addAttr -ci true -sn "rightDirect" -ln "rightDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "rightDirectX" -ln "rightDirectX" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectY" -ln "rightDirectY" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectZ" -ln "rightDirectZ" -at "double" -p "rightDirect";
	addAttr -ci true -sn "offsetMir" -ln "offsetMir" -at "matrix";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "type" -ln "type" -dt "string";
	addAttr -ci true -sn "fileName" -ln "fileName" -dt "string";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr -s 4 ".init";
	setAttr -s 4 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -cb on ".mirror";
	setAttr -l on -k on ".type" -type "string" "fit";
	setAttr -l on -k on ".fileName" -type "string" "fit_arm";
	setAttr -s 4 ".fitControl";
createNode transform -n "fit_scapula_space" -p "fit_arm";
	rename -uid "700753E7-4AA5-75C7-967C-DE9A137ADAC0";
createNode transform -n "fit_scapula" -p "fit_scapula_space";
	rename -uid "3A39733E-4D01-20E1-0F48-4D877CDE5351";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 0 -3.6977854932234928e-32 ;
createNode nurbsCurve -n "fit_scapulaShape" -p "fit_scapula";
	rename -uid "8F6D8552-461F-F0A9-B7F0-F5B2938B0F74";
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
createNode transform -n "fit_arm_space" -p "fit_scapula_space";
	rename -uid "C4462711-4E1B-EDFE-C394-04B97E886F5C";
createNode transform -n "fit_shoulder" -p "fit_arm_space";
	rename -uid "64260B6B-40F0-1E7C-8642-7C919D72BD49";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1 0 0 ;
createNode nurbsCurve -n "fit_shoulderShape" -p "fit_shoulder";
	rename -uid "4122CE88-410F-A5E1-CECE-DCA02E3EC694";
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
createNode transform -n "fit_elbow" -p "fit_shoulder";
	rename -uid "1DD83125-4158-80C3-5742-86BA09D5365F";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4 0 -0.99999994039535522 ;
createNode nurbsCurve -n "fit_elbowShape" -p "fit_elbow";
	rename -uid "5E16F716-40C4-FC2C-2CBF-188A87820E7B";
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
createNode transform -n "fit_wrist" -p "fit_elbow";
	rename -uid "C75B4E9A-4805-81D5-F846-339642B7EE17";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4 0 0.999999940395355 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_wristShape" -p "fit_wrist";
	rename -uid "73DD6A5F-45A7-A456-CBC5-61954CEA20B8";
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
createNode transform -n "fit_init_scapula" -p "fit_arm";
	rename -uid "68087DC3-4F54-9581-809D-4CA666765B4F";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_shoulder" -p "fit_init_scapula";
	rename -uid "799FCAC5-402C-980C-7866-939FC23CFB50";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_elbow" -p "fit_init_shoulder";
	rename -uid "8F18B331-4817-44EC-EC65-79B28DFECBEA";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "fit_init_wrist" -p "fit_init_elbow";
	rename -uid "84AE8DA3-4AE7-FE88-950C-D99AAD7521F1";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_arm_GRP" -p "fit_arm";
	rename -uid "8BF991CE-4FA1-5C4A-7F62-53A6B8257E69";
createNode joint -n "temp_scapula" -p "temp_arm_GRP";
	rename -uid "D2ED9C33-4F26-C775-649C-90AF7DC69C70";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_shoulder" -p "temp_scapula";
	rename -uid "5D47ADEC-4CF8-07E9-6B3D-F0B518FF4479";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_elbow" -p "temp_shoulder";
	rename -uid "A99E4FA0-4108-9ED1-8FCA-6CBA6CB9EFE4";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_wrist" -p "temp_elbow";
	rename -uid "7EBE343D-45BB-723E-6908-5BBC6C8447CF";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode condition -n "arm_mirror_COND";
	rename -uid "16130BE3-4986-5DA3-AB99-07BE5E0FF16C";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_arm_space_DCMX";
	rename -uid "AFE4B384-4B6D-D526-8E01-8D80B2CA377A";
createNode multMatrix -n "fit_arm_space_MTMX";
	rename -uid "DFD49887-43A7-A340-722E-2EA73A10017F";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "fit_arm_space_scale_rvs_MULT";
	rename -uid "F4D518B6-411B-25B8-B19A-98A29EAE1174";
createNode decomposeMatrix -n "shoulder_aligned_DCMX";
	rename -uid "2D785C10-4AE3-6CF9-B802-25A774B242FD";
createNode multMatrix -n "shoulder_aligned_MTMX";
	rename -uid "D444486E-4A31-B8DF-5759-C3947499A37B";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "shoulder_aligned_FBFM";
	rename -uid "2BD38EA6-4644-61EC-D678-BFB355005146";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "E3FA7BC1-4A51-0D36-8EAA-0AA8139BC652";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2elbow_vec_rvsMULT";
	rename -uid "AEECB1B3-42F2-F614-748C-32BAA73DEC6C";
createNode plusMinusAverage -n "shoulder2elbow_vec";
	rename -uid "C3B3FCDC-4768-9A2F-0DE3-E7BBFBB2C7CF";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_elbow_DCMX";
	rename -uid "96EDAB4C-4C94-9015-F851-D8B86A1E503D";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "97B22A4B-49F4-174D-C8B3-52A7DB6486B3";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "7B7BEF90-4098-C7C2-1512-A0A50DE658E3";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder2wrist_vec_rvsMULT";
	rename -uid "5C2B1DEF-4461-9035-11A0-388EDCC04474";
createNode plusMinusAverage -n "shoulder2wrist_vec";
	rename -uid "1A105D17-43FF-D0F0-1DB0-D78935AA55AB";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "092C45BC-4A31-B0A6-D3E1-23B0AC2F9FA1";
createNode vectorProduct -n "shoulder_z_vec";
	rename -uid "C245112A-47D0-D68F-9504-CC96F0316B9C";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder2elbow_init_DCMX";
	rename -uid "8900E6B5-430F-B2F6-D31A-B8BD69428D25";
createNode multMatrix -n "shoulder2elbow_init_MTMX";
	rename -uid "B98E92A6-47C2-85D5-0BDA-C0AE4A949CB9";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "elbow_aligned_FBFM";
	rename -uid "BAA79142-4619-44AC-291B-518A921581AA";
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "AB47ECAE-40F6-5908-B4C4-35BBD7D623B1";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2wrist_vec_rvsMULT";
	rename -uid "5BAC252F-41D0-473A-5BDF-DABDD77A8F58";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "69F07512-472F-F4D9-80CA-B989DC0CD48C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "D8BB7D90-4639-FCEB-B3FC-5D9FCCA7C07F";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "elbow2shoulder_vec_rvsMULT";
	rename -uid "17B28A35-4255-0298-49D3-309672E18154";
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "F6DAA589-4AD5-D184-2A87-D5AAF9488E2E";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "16290266-4728-44B9-F02F-F3BC0F7DB5E0";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "wrist_aligned_init_DCMX";
	rename -uid "A43C1DCC-4896-B5E0-A982-5893498CD81F";
createNode multMatrix -n "wrist_aligned_init_MTMX";
	rename -uid "776DD364-42AC-67BD-C6FA-008B6B959C50";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_scapula_DCMX";
	rename -uid "FB6214E5-45F6-6885-4ED6-A58211798BC4";
createNode multMatrix -n "temp_scapula_MTMX";
	rename -uid "5390D7A3-4FA1-75C9-9824-6DBD59160776";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_JNT_DCMX";
	rename -uid "73ED8E71-4611-BA81-90C9-BF95936F6D44";
createNode multMatrix -n "shoulder_JNT_MTMX";
	rename -uid "708366CA-49C1-9D52-935A-BC8BFC6C9553";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder2elbow_JNT_DCMX";
	rename -uid "9D34B6D8-428C-0A3C-0130-53B955C07542";
createNode multMatrix -n "shoulder2elbow_JNT_MTMX";
	rename -uid "FC92D2C1-4FBA-3D51-33DB-789DD513A677";
	setAttr -s 2 ".i";
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
	setAttr -s 33 ".u";
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
connectAttr "fit_init_scapula.init" "fit_arm.init" -na;
connectAttr "fit_init_shoulder.init" "fit_arm.init" -na;
connectAttr "fit_init_elbow.init" "fit_arm.init" -na;
connectAttr "fit_init_wrist.init" "fit_arm.init" -na;
connectAttr "temp_scapula.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_shoulder.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_elbow.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "temp_wrist.tempJoint" "fit_arm.tempJoints" -na;
connectAttr "fit_scapula.fitControl" "fit_arm.fitControl" -na;
connectAttr "fit_shoulder.fitControl" "fit_arm.fitControl" -na;
connectAttr "fit_elbow.fitControl" "fit_arm.fitControl" -na;
connectAttr "fit_wrist.fitControl" "fit_arm.fitControl" -na;
connectAttr "arm_mirror_COND.ocr" "fit_scapula_space.sx";
connectAttr "fit_scapula.t" "fit_arm_space.t";
connectAttr "fit_scapula.r" "fit_arm_space.r";
connectAttr "fit_scapula.s" "fit_arm_space.s";
connectAttr "fit_arm_space_DCMX.ot" "fit_init_scapula.t";
connectAttr "fit_arm_space_DCMX.or" "fit_init_scapula.r";
connectAttr "fit_arm_space_scale_rvs_MULT.ox" "fit_init_scapula.sx";
connectAttr "shoulder_aligned_DCMX.ot" "fit_init_shoulder.t";
connectAttr "shoulder_aligned_DCMX.or" "fit_init_shoulder.r";
connectAttr "shoulder_aligned_DCMX.os" "fit_init_shoulder.s";
connectAttr "shoulder_aligned_DCMX.osh" "fit_init_shoulder.sh";
connectAttr "shoulder2elbow_init_DCMX.ot" "fit_init_elbow.t";
connectAttr "shoulder2elbow_init_DCMX.or" "fit_init_elbow.r";
connectAttr "shoulder2elbow_init_DCMX.os" "fit_init_elbow.s";
connectAttr "shoulder2elbow_init_DCMX.osh" "fit_init_elbow.sh";
connectAttr "wrist_aligned_init_DCMX.ot" "fit_init_wrist.t";
connectAttr "wrist_aligned_init_DCMX.os" "fit_init_wrist.s";
connectAttr "arm_mirror_COND.ocb" "temp_arm_GRP.sz";
connectAttr "temp_scapula_DCMX.ot" "temp_scapula.t";
connectAttr "temp_scapula_DCMX.or" "temp_scapula.jo";
connectAttr "fit_arm.s" "temp_scapula.s";
connectAttr "shoulder_JNT_DCMX.ot" "temp_shoulder.t";
connectAttr "shoulder_JNT_DCMX.or" "temp_shoulder.jo";
connectAttr "temp_scapula.s" "temp_shoulder.is";
connectAttr "fit_arm.s" "temp_shoulder.s";
connectAttr "shoulder2elbow_JNT_DCMX.ot" "temp_elbow.t";
connectAttr "shoulder2elbow_JNT_DCMX.or" "temp_elbow.jo";
connectAttr "fit_arm.s" "temp_elbow.s";
connectAttr "temp_shoulder.s" "temp_elbow.is";
connectAttr "fit_init_wrist.t" "temp_wrist.t";
connectAttr "fit_init_wrist.r" "temp_wrist.jo";
connectAttr "temp_elbow.s" "temp_wrist.is";
connectAttr "fit_arm.s" "temp_wrist.s";
connectAttr "fit_arm.mirror" "arm_mirror_COND.ft";
connectAttr "fit_arm.leftDirect" "arm_mirror_COND.cf";
connectAttr "fit_arm.rightDirect" "arm_mirror_COND.ct";
connectAttr "fit_arm_space_MTMX.o" "fit_arm_space_DCMX.imat";
connectAttr "fit_arm_space.wm" "fit_arm_space_MTMX.i[0]";
connectAttr "fit_arm.wim" "fit_arm_space_MTMX.i[1]";
connectAttr "fit_arm_space.s" "fit_arm_space_scale_rvs_MULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_arm_space_scale_rvs_MULT.i2";
connectAttr "shoulder_aligned_MTMX.o" "shoulder_aligned_DCMX.imat";
connectAttr "shoulder_aligned_FBFM.o" "shoulder_aligned_MTMX.i[0]";
connectAttr "fit_init_scapula.wim" "shoulder_aligned_MTMX.i[1]";
connectAttr "shoulder_x_vec.ox" "shoulder_aligned_FBFM.i00";
connectAttr "shoulder_x_vec.oy" "shoulder_aligned_FBFM.i01";
connectAttr "shoulder_x_vec.oz" "shoulder_aligned_FBFM.i02";
connectAttr "shoulder_y_vec.ox" "shoulder_aligned_FBFM.i10";
connectAttr "shoulder_y_vec.oy" "shoulder_aligned_FBFM.i11";
connectAttr "shoulder_y_vec.oz" "shoulder_aligned_FBFM.i12";
connectAttr "shoulder_z_vec.oy" "shoulder_aligned_FBFM.i21";
connectAttr "shoulder_z_vec.ox" "shoulder_aligned_FBFM.i20";
connectAttr "shoulder_z_vec.oz" "shoulder_aligned_FBFM.i22";
connectAttr "fit_shoulder_DCMX.otx" "shoulder_aligned_FBFM.i30";
connectAttr "fit_shoulder_DCMX.oty" "shoulder_aligned_FBFM.i31";
connectAttr "fit_shoulder_DCMX.otz" "shoulder_aligned_FBFM.i32";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_x_vec.i1";
connectAttr "shoulder2elbow_vec.o3" "shoulder2elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_elbow_DCMX.ot" "shoulder2elbow_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2elbow_vec.i3[1]";
connectAttr "fit_elbow.wm" "fit_elbow_DCMX.imat";
connectAttr "fit_shoulder.wm" "fit_shoulder_DCMX.imat";
connectAttr "shoulder2wrist_vec_rvsMULT.o" "shoulder_y_vec.i1";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_y_vec.i2";
connectAttr "shoulder2wrist_vec.o3" "shoulder2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "shoulder2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "shoulder2wrist_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "shoulder2wrist_vec.i3[1]";
connectAttr "fit_wrist.wm" "fit_wrist_DCMX.imat";
connectAttr "shoulder2elbow_vec_rvsMULT.o" "shoulder_z_vec.i1";
connectAttr "shoulder_y_vec.o" "shoulder_z_vec.i2";
connectAttr "shoulder2elbow_init_MTMX.o" "shoulder2elbow_init_DCMX.imat";
connectAttr "elbow_aligned_FBFM.o" "shoulder2elbow_init_MTMX.i[0]";
connectAttr "fit_init_shoulder.wim" "shoulder2elbow_init_MTMX.i[1]";
connectAttr "elbow_x_vec.ox" "elbow_aligned_FBFM.i00";
connectAttr "elbow_x_vec.oy" "elbow_aligned_FBFM.i01";
connectAttr "elbow_x_vec.oz" "elbow_aligned_FBFM.i02";
connectAttr "elbow_y_vec.ox" "elbow_aligned_FBFM.i10";
connectAttr "elbow_y_vec.oy" "elbow_aligned_FBFM.i11";
connectAttr "elbow_y_vec.oz" "elbow_aligned_FBFM.i12";
connectAttr "elbow_z_vec.ox" "elbow_aligned_FBFM.i20";
connectAttr "elbow_z_vec.oy" "elbow_aligned_FBFM.i21";
connectAttr "elbow_z_vec.oz" "elbow_aligned_FBFM.i22";
connectAttr "fit_elbow_DCMX.otx" "elbow_aligned_FBFM.i30";
connectAttr "fit_elbow_DCMX.oty" "elbow_aligned_FBFM.i31";
connectAttr "fit_elbow_DCMX.otz" "elbow_aligned_FBFM.i32";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_x_vec.i1";
connectAttr "elbow2wrist_vec.o3" "elbow2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "elbow2wrist_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2wrist_vec.i3[1]";
connectAttr "elbow2shoulder_vec_rvsMULT.o" "elbow_y_vec.i1";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_y_vec.i2";
connectAttr "elbow2shoulder_vec.o3" "elbow2shoulder_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "elbow2shoulder_vec_rvsMULT.i2";
connectAttr "fit_shoulder_DCMX.ot" "elbow2shoulder_vec.i3[0]";
connectAttr "fit_elbow_DCMX.ot" "elbow2shoulder_vec.i3[1]";
connectAttr "elbow2wrist_vec_rvsMULT.o" "elbow_z_vec.i1";
connectAttr "elbow_y_vec.o" "elbow_z_vec.i2";
connectAttr "wrist_aligned_init_MTMX.o" "wrist_aligned_init_DCMX.imat";
connectAttr "fit_wrist.wm" "wrist_aligned_init_MTMX.i[0]";
connectAttr "temp_elbow.wim" "wrist_aligned_init_MTMX.i[1]";
connectAttr "temp_scapula_MTMX.o" "temp_scapula_DCMX.imat";
connectAttr "fit_arm_space.wm" "temp_scapula_MTMX.i[0]";
connectAttr "temp_arm_GRP.wim" "temp_scapula_MTMX.i[1]";
connectAttr "shoulder_JNT_MTMX.o" "shoulder_JNT_DCMX.imat";
connectAttr "fit_init_shoulder.wm" "shoulder_JNT_MTMX.i[0]";
connectAttr "temp_scapula.wim" "shoulder_JNT_MTMX.i[1]";
connectAttr "shoulder2elbow_JNT_MTMX.o" "shoulder2elbow_JNT_DCMX.imat";
connectAttr "fit_init_elbow.wm" "shoulder2elbow_JNT_MTMX.i[0]";
connectAttr "temp_shoulder.wim" "shoulder2elbow_JNT_MTMX.i[1]";
connectAttr "fit_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_space_scale_rvs_MULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arm_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
// End of fit_arm.ma
