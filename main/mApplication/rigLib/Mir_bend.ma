//Maya ASCII 2019 scene
//Name: Mir_bend.ma
//Last modified: Thu, Jun 24, 2021 08:01:20 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "redshift4maya" "2.6.31";
requires "RenderMan_for_Maya" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "bend_SET";
	rename -uid "3B489224-423B-65A2-D8BB-2383F7748188";
createNode transform -n "armUpper_TGET_RIG_GRP" -p "bend_SET";
	rename -uid "AFAF8F94-41B3-BE48-E4FC-71A45BED15D8";
createNode transform -n "armUpper_TGET_GRP" -p "armUpper_TGET_RIG_GRP";
	rename -uid "8CAC96C4-4FCF-0EA2-81FB-349E7C680A88";
createNode transform -n "armUpper_TGET_joint_spcGRP" -p "armUpper_TGET_GRP";
	rename -uid "3D849CA7-4D48-F9BA-3F05-E89387EF7E38";
createNode transform -n "armUpper_TGET_joint_offGRP" -p "armUpper_TGET_joint_spcGRP";
	rename -uid "DC34A079-4F01-1E49-A601-4981F283F425";
createNode joint -n "armUpper_TGET_JNT" -p "armUpper_TGET_joint_offGRP";
	rename -uid "D1C38FC6-4531-C93C-6620-D5BDC3E2EC1A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_01_spcGRP" -p "armUpper_TGET_GRP";
	rename -uid "9DA170CE-473C-40E5-316F-0484A07B0BF0";
createNode transform -n "armUpper_TGET_joint_01_offGRP" -p "armUpper_TGET_joint_01_spcGRP";
	rename -uid "BFE4B801-41B1-44E8-15AA-A68369544939";
createNode joint -n "armUpper_TGET_01_JNT" -p "armUpper_TGET_joint_01_offGRP";
	rename -uid "29D326D5-453B-8F42-0327-B78D46817890";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_02_spcGRP" -p "armUpper_TGET_GRP";
	rename -uid "9A1A641D-4FD1-95DA-1333-999C7293A96A";
createNode transform -n "armUpper_TGET_joint_02_offGRP" -p "armUpper_TGET_joint_02_spcGRP";
	rename -uid "CF8545CB-44EF-D788-F63C-D29C66FCE6D7";
createNode joint -n "armUpper_TGET_02_JNT" -p "armUpper_TGET_joint_02_offGRP";
	rename -uid "5CD80456-483B-F817-5BA0-61812DDCFDB4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_03_spcGRP" -p "armUpper_TGET_GRP";
	rename -uid "F26A18BC-4C24-3A5B-5A90-849F6D1592B9";
createNode transform -n "armUpper_TGET_joint_03_offGRP" -p "armUpper_TGET_joint_03_spcGRP";
	rename -uid "DBF1D279-421B-606E-A0F3-FB8AB9216044";
createNode joint -n "armUpper_TGET_03_JNT" -p "armUpper_TGET_joint_03_offGRP";
	rename -uid "3313237C-4ECD-B024-415D-78A18C8529FA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_joint_04_spcGRP" -p "armUpper_TGET_GRP";
	rename -uid "31C442A5-422D-C4CE-C717-4B98E09D2D45";
createNode transform -n "armUpper_TGET_joint_04_offGRP" -p "armUpper_TGET_joint_04_spcGRP";
	rename -uid "18A54F99-4836-8FF5-6867-948578BA2513";
createNode joint -n "armUpper_TGET_04_JNT" -p "armUpper_TGET_joint_04_offGRP";
	rename -uid "55B9B462-410A-D1EA-63C4-AABD9C151FC9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0408340855860843e-17 0 ;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode transform -n "armUpper_TGET_SRF" -p "armUpper_TGET_GRP";
	rename -uid "EE50B983-4635-2C03-A3A1-8DA24E98F836";
	setAttr ".v" no;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsSurface -n "armUpper_TGET_SRFShape" -p "armUpper_TGET_SRF";
	rename -uid "90BA10AC-4EEF-405C-0A16-96AD38EA72DE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
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
createNode nurbsSurface -n "armUpper_TGET_SRFShapeOrig" -p "armUpper_TGET_SRF";
	rename -uid "62C60734-47EB-5E41-DA8B-7797D730CD4E";
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
		0.50000236712162416 4.2776156305990309e-07 6.5744032326620072e-05
		-0.49999763287837584 4.2776156305990288e-07 6.5744032326620072e-05
		0.50000189369729897 1.0000003422092505 5.2595225861118396e-05
		-0.49999810630270114 1.0000003422092505 5.2595225861118396e-05
		0.50000142027297367 2.0000002566569379 3.9446419395616714e-05
		-0.49999857972702594 2.0000002566569384 3.9446419395616727e-05
		0.50000094684864871 3.0000001711046242 2.6297612930115048e-05
		-0.49999905315135146 3.0000001711046251 2.6297612930115045e-05
		0.50000047342432352 4.0000000855523137 1.3148806464613365e-05
		-0.49999952657567648 4.0000000855523128 1.3148806464613362e-05
		0.49999999999999833 5.0000000000000009 -4.9988908868326936e-16
		-0.50000000000000189 4.9999999999999973 -7.4321836329746824e-16
		
		;
createNode transform -n "armUpper_TWST_control_GRP" -p "armUpper_TGET_RIG_GRP";
	rename -uid "23FF2A40-4030-F904-9C79-76999AE4F4DF";
createNode transform -n "armUpper_TWST_control_spcGRP" -p "armUpper_TWST_control_GRP";
	rename -uid "EB8AA06B-4E14-0FF9-CCCE-86878EEA88B8";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "armUpper_TWST_control_offGRP" -p "armUpper_TWST_control_spcGRP";
	rename -uid "29EBE591-4323-8672-61BB-9C8C150042C2";
createNode transform -n "armUpper_TWST_control_start_GRP" -p "armUpper_TWST_control_offGRP";
	rename -uid "C0AAB4C7-4962-5E74-EBE5-28AA15BDEB2F";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.4286128663675299e-17 0 ;
createNode transform -n "armUpper_TWST_control_start_oriGRP" -p "armUpper_TWST_control_start_GRP";
	rename -uid "01A91A19-48E1-B0DF-5738-9B8E1980EB99";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -4.5102810375396984e-17 0 ;
createNode transform -n "armUpper_TWST_control_start_aimGRP" -p "armUpper_TWST_control_start_oriGRP";
	rename -uid "3255D2B2-4118-3156-4CBE-3A859C85249F";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.4286128663675299e-17 0 ;
createNode transform -n "armUpper_TWST_start_CTL" -p "armUpper_TWST_control_start_aimGRP";
	rename -uid "3C5C14C0-4262-A2F2-796F-E3BEB1BF0901";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armUpper_TWST_start_CTLShape" -p "armUpper_TWST_start_CTL";
	rename -uid "5360EC6A-426A-F1EB-156C-F48BDCBD41D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9021345524485225e-17 0.24265155106379302 -0.24265155106379252
		-2.1012558019862742e-17 -3.9150579967210164e-17 -0.34316111444528324
		-6.8737590056326664e-17 -0.24265155106379263 -0.24265155106379252
		-7.6197074082636372e-17 -0.34316111444528324 -9.9439505753011378e-17
		-3.9021345524485188e-17 -0.24265155106379274 0.24265155106379252
		2.1012558019862723e-17 -1.0340114095528511e-16 0.34316111444528324
		6.8737590056326603e-17 0.24265155106379252 0.24265155106379263
		7.6197074082636372e-17 0.34316111444528324 1.8431250398477474e-16
		3.9021345524485225e-17 0.24265155106379302 -0.24265155106379252
		-2.1012558019862742e-17 -3.9150579967210164e-17 -0.34316111444528324
		-6.8737590056326664e-17 -0.24265155106379263 -0.24265155106379252
		;
createNode joint -n "armUpper_TWST_start_JNT" -p "armUpper_TWST_start_CTL";
	rename -uid "B1C306B4-4CEF-61F4-6FD9-42AD8C81A1A8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.9936057773011271e-15 9.0205620750793969e-17 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -1.6101558074909054e-14 -1.5530052155559277e-18 1.7294266080457874e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.8490372471881747e-07 0.99999999978223764 -2.0868414321562753e-05 0
		 -0.99999999986322363 1.8524885499633163e-07 1.6538402866586021e-05 0 1.653840672883444e-05 2.0868411260696153e-05 0.99999999964549535 0
		 -1.8423033924233418e-15 5.0000000000000053 -8.8831588001613473e-16 1;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode aimConstraint -n "armUpper_TWST_control_start_aimGRP_aimConstraint1" -p
		 "armUpper_TWST_control_start_aimGRP";
	rename -uid "5BB8FA24-493E-EF33-B455-B1AF48DC8329";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armMid_L_CTLW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" 539.99996443737177 -0.0011956720943590306 1.061471345062698e-05 ;
	setAttr ".rsrr" -type "double3" 359.99999999999886 -5.8237695583438417e-19 5.5775681410733647e-33 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "armUpper_TWST_control_start_oriGRP_orientConstraint1" 
		-p "armUpper_TWST_control_start_oriGRP";
	rename -uid "5F438CA6-4071-FECC-0986-36BE7EF4B08E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_IK_TWST_start_L_JNTW0" -dv 
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
	setAttr ".lr" -type "double3" 0.00091160503048158222 0.0009116045992021008 90.000031312845763 ;
	setAttr ".o" -type "double3" 3.5975981088853042e-05 0 0 ;
	setAttr ".rsrr" -type "double3" 3.5975981088853049e-05 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_control_end_GRP" -p "armUpper_TWST_control_offGRP";
	rename -uid "3273A1F3-455D-E098-8F6A-F092EAE848D4";
	setAttr ".ove" yes;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "armUpper_TWST_control_end_conGRP" -p "armUpper_TWST_control_end_GRP";
	rename -uid "213CFE63-4845-8DB5-295B-A58EAA1431B3";
createNode transform -n "armUpper_TWST_control_end_offGRP" -p "armUpper_TWST_control_end_conGRP";
	rename -uid "F0D88E53-44C2-A416-0D7C-EDAF9ECE83D3";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -2.7755575615628914e-17 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "armUpper_TWST_end_CTL" -p "armUpper_TWST_control_end_offGRP";
	rename -uid "B7E729FC-4CE6-9E35-34E5-45B94409315C";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armUpper_TWST_end_CTLShape" -p "armUpper_TWST_end_CTL";
	rename -uid "A3D02CAF-4137-BA2B-AE31-08A0068F6B67";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.5087602097527047e-16 0.24265155106379302 -0.24265155106379252
		-9.1090992451961887e-16 -1.1899857994658205e-17 -0.34316111444528324
		-9.5863495655608203e-16 -0.24265155106379252 -0.24265155106379252
		-9.6609444058239143e-16 -0.34316111444528324 -9.9439505753011378e-17
		-9.289187120242407e-16 -0.24265155106379269 0.24265155106379252
		-8.6888480847989309e-16 -7.6150418982733209e-17 0.34316111444528324
		-8.2115977644342934e-16 0.24265155106379252 0.24265155106379263
		-8.1370029241711915e-16 0.3431611144452833 1.8431250398477474e-16
		-8.5087602097527047e-16 0.24265155106379302 -0.24265155106379252
		-9.1090992451961887e-16 -1.1899857994658205e-17 -0.34316111444528324
		-9.5863495655608203e-16 -0.24265155106379252 -0.24265155106379252
		;
createNode joint -n "armUpper_TWST_end_JNT" -p "armUpper_TWST_end_CTL";
	rename -uid "FFB5A942-43D9-DA0A-A956-A39A2967876E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".is" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".bps" -type "matrix" -3.1726847926823106e-07 0.99999999975910869 -2.1947247143301092e-05 0
		 -0.99999999999982137 -3.1725735237336228e-07 5.0698882704326697e-07 0 5.0698186399561432e-07 2.1947247304148746e-05 0.99999999975903087 0
		 2.3671216732419129e-06 4.2776155151358353e-07 6.5744032043291183e-05 1;
	setAttr ".ds" 2;
	setAttr ".radi" 0.57376969512723575;
createNode pointConstraint -n "armUpper_TWST_control_end_conGRP_pointConstraint1" 
		-p "armUpper_TWST_control_end_conGRP";
	rename -uid "FCF2B7D5-4BC6-EE5D-663B-50B2F80C1BF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armMid_L_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.3671216418108543e-06 4.2776172559655379e-07 6.5744032043291156e-05 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "armUpper_TWST_control_end_conGRP_aimConstraint1" -p "armUpper_TWST_control_end_conGRP";
	rename -uid "8360CABF-4600-5FAF-0F43-2997941C96C6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "armStart_L_CTLW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -179.99997532908313 -0.00050411345540932499 8.9471208404696811e-06 ;
	setAttr ".rsrr" -type "double3" -3.4325388774030054e-15 4.5429273779556799e-38 1.5166066558187088e-21 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_locator_start_GRP" -p "armUpper_TGET_RIG_GRP";
	rename -uid "D5C4D4C3-41A5-0DF3-5F9C-75B30FAE94F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.4847124054144842e-09 4.9999763964695152 2.5870708080244498e-05 ;
	setAttr ".r" -type "double3" 0.00091160503049245677 0.0009503733722827513 90.000027107202584 ;
createNode transform -n "armUpper_TWST_locator_start_offGRP" -p "armUpper_TWST_locator_start_GRP";
	rename -uid "722CEC1F-4887-9343-5EB2-0D99F5C108F4";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "armUpper_TWST_start_LOC" -p "armUpper_TWST_locator_start_offGRP";
	rename -uid "B71F8480-487B-70A0-86F5-F3BABE726FAF";
	setAttr ".t" -type "double3" 0 -1.7347234759768071e-17 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "armUpper_TWST_start_LOCShape" -p "armUpper_TWST_start_LOC";
	rename -uid "41A31197-46CD-D5AB-D366-56AA5ADED8E9";
	setAttr -k off ".v";
createNode transform -n "armUpper_TWST_start_vecLOC" -p "armUpper_TWST_start_LOC";
	rename -uid "ACE954C9-4207-1FA1-276E-D5A28210E4FC";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "armUpper_TWST_start_vecLOCShape" -p "armUpper_TWST_start_vecLOC";
	rename -uid "B0B7A6A7-458C-7FF2-2D0F-0FA51203C6D1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode parentConstraint -n "armUpper_TWST_locator_start_offGRP_parentConstraint1" 
		-p "armUpper_TWST_locator_start_offGRP";
	rename -uid "4CA2338E-4692-94C3-3CB9-0699A05E71CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_IK_TWST_start_L_JNTW0" -dv 
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
	setAttr ".tg[0].tot" -type "double3" -2.360394210043637e-05 -7.0619385894588049e-09 
		2.5870332645006044e-05 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.8768773075407074e-05 0 ;
	setAttr ".lr" -type "double3" -8.5221161203764882e-16 -1.0150854605899809e-14 7.3684923094849418e-20 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 8.8817841970012523e-16 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 0 3.8768773075407081e-05 0 ;
	setAttr -k on ".w0";
createNode transform -n "armUpper_TWST_locator_end_GRP" -p "armUpper_TGET_RIG_GRP";
	rename -uid "B1EE69AE-4180-83A8-7452-76ABA386D1E0";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
createNode transform -n "armUpper_TWST_locator_end_conGRP" -p "armUpper_TWST_locator_end_GRP";
	rename -uid "0DDE940D-4B1A-E4BA-C2B4-9C8489977AA8";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "armUpper_TWST_locator_end_offGRP" -p "armUpper_TWST_locator_end_conGRP";
	rename -uid "C190A54C-425B-7B33-5AE3-A6949A24ED01";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "armUpper_TWST_end_LOC" -p "armUpper_TWST_locator_end_offGRP";
	rename -uid "85B2F790-40AD-9FAF-C772-83AAC06F5714";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999944 ;
createNode locator -n "armUpper_TWST_end_LOCShape" -p "armUpper_TWST_end_LOC";
	rename -uid "6EBB7380-4DBE-3AEC-6CD8-32919D312A51";
	setAttr -k off ".v";
createNode transform -n "armUpper_TWST_end_vecLOC" -p "armUpper_TWST_end_LOC";
	rename -uid "58B484D6-4DC6-AE4E-B50F-8F82F64408B4";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "armUpper_TWST_end_vecLOCShape" -p "armUpper_TWST_end_vecLOC";
	rename -uid "1E6DBC82-452C-9BB3-3ECA-A68BE56259F7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.5 0.5 0.5 ;
createNode pointConstraint -n "armUpper_TWST_locator_end_conGRP_pointConstraint1" 
		-p "armUpper_TWST_locator_end_conGRP";
	rename -uid "5E77B174-4F7F-7F5F-40D0-F3A90FBBEA63";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armMid_L_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.4435264087685482e-06 -1.3026258605108865e-07 6.5744032050396584e-05 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "armUpper_TWST_locator_end_conGRP_orientConstraint1" 
		-p "armUpper_TWST_locator_end_conGRP";
	rename -uid "B7E68531-4EB0-5B44-DF44-D083806B40EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armStart_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -4.2062600183098704e-06 ;
	setAttr ".o" -type "double3" 0 0 4.2062600183098704e-06 ;
	setAttr -k on ".w0";
createNode transform -n "bend_shoulder_control_GRP" -p "bend_SET";
	rename -uid "A1BFCA13-44CC-3024-E3F0-FF9D86622A53";
	setAttr ".t" -type "double3" 1.1835608357449215e-06 2.5000002138807744 3.2872016022089694e-05 ;
	setAttr ".r" -type "double3" -1.3646948531270393 0.00029737354889046701 88.500601572395638 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "bend_shoulder_control_offGRP" -p "bend_shoulder_control_GRP";
	rename -uid "462344EB-4E31-89E8-2C5E-C984C8E00563";
createNode transform -n "bend_shoulder_CTL" -p "bend_shoulder_control_offGRP";
	rename -uid "FAA686E7-4268-332D-1449-F3AC46B13191";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 1.3322676295501878e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "bend_shoulder_CTLShape" -p "bend_shoulder_CTL";
	rename -uid "BCB28B75-4E27-84D1-DC4D-C891C664487F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		-9.1593399531575415e-16 -0.99999999999999911 0
		-9.1593399531575415e-16 -0.29160023273973823 -0.29160026651639392
		-9.1593399531575415e-16 -1.3533172194078288e-08 -0.99999986407963004
		-9.1593399531575415e-16 0.29160029025577061 -0.29160027543842054
		-9.1593399531575415e-16 0.99999985819564552 3.8177201209262268e-16
		-9.1593399531575415e-16 0.29160029025576906 0.29160027543842199
		-9.1593399531575415e-16 -1.3533172685983406e-08 0.9999998640796306
		-9.1593399531575415e-16 -0.29160023273973867 0.29160026651639326
		-9.1593399531575415e-16 -0.99999999999999911 0
		;
createNode joint -n "bend_shoulder_JNT" -p "bend_shoulder_CTL";
	rename -uid "0EC9BDA1-48B1-7B0B-C24A-F08F82CAD57C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99998581409454346 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0.026166081290152757 0.99964341870154216 -5.1900739095134195e-06 0
		 -0.9993740549986323 0.026158906931699755 -0.023816166436464014 0 -0.023807876006529588 0.0006283714862235153 0.99971635486738564 0
		 1.1835608357503127e-06 2.5000002138807753 3.2872016023421908e-05 1;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode orientConstraint -n "bend_shoulder_control_offGRP_orientConstraint1" -p
		 "bend_shoulder_control_offGRP";
	rename -uid "3F255C8A-4DF3-4154-48CF-2382E667BBCD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_TWST_start_L_CTLW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "armUpper_TWST_end_L_CTLW1" -dv 1 -min 
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
	setAttr ".lr" -type "double3" 1.3647082751997748 -0.034776896156946825 1.4989992404473029 ;
	setAttr ".o" -type "double3" -1.3651509051418576 -0.0009415622506170711 -1.4994022119085115 ;
	setAttr ".rsrr" -type "double3" 5.9640253418739549e-16 -1.0348460634850763e-33 1.9883319900445594e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode pointConstraint -n "bend_shoulder_control_offGRP_pointConstraint1" -p "bend_shoulder_control_offGRP";
	rename -uid "19B53E14-4281-765E-5CC2-F19CD375452A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "armUpper_TWST_start_CTLW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "armUpper_TWST_end_CTLW1" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 4.4408920985006262e-16 -1.3877787807814457e-17 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "armStart_controlJoint_GRP" -p "bend_SET";
	rename -uid "B2A06AD0-42CC-F651-EA4D-048A0771FD8A";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 5 0 ;
createNode transform -n "armStart_controlJoint_offGRP" -p "armStart_controlJoint_GRP";
	rename -uid "BBE28B8E-455C-1281-F6E7-CFA12DE9C8C5";
createNode joint -n "armStart_control_JNT" -p "armStart_controlJoint_offGRP";
	rename -uid "255584EB-4BD0-7C40-D45E-2687A12DD88D";
	addAttr -s false -ci true -sn "cgmMatchTarget" -ln "cgmMatchTarget" -at "message";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 8.7134398661347224e-09 -2.6356553040927512e-09 -4.2062600183098729e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73090818070466024 0.68199836006249792 0.025523876098019815 0
		 -0.034899496702499422 1.3322676295501878e-15 -0.99939082701909565 0 -0.68158290508852692 -0.7313537016191709 0.023801399518110333 0
		 1.0126899999999992 10.115800000000011 -0.055927399999997865 1;
	setAttr ".ds" 2;
createNode transform -n "armStart_control_GRP" -p "armStart_control_JNT";
	rename -uid "A36F4FCF-4601-6610-C7B6-C99D4C6623EE";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 5.2041704279304213e-17 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "armStart_control_offGRP" -p "armStart_control_GRP";
	rename -uid "47B78F83-4BAA-FCB4-DEA4-2F8C3F46B5F0";
createNode transform -n "armStart_CTL" -p "armStart_control_offGRP";
	rename -uid "AA9A4790-4C7D-F656-EC78-8180D614AA14";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
createNode nurbsCurve -n "armStart_CTL_Shape" -p "armStart_CTL";
	rename -uid "B00E4B35-44E9-5AD4-88DE-4A8F83480EEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		1.575393352564469e-15 0.56566192776793833 -8.6173240636698328e-18
		1.575393352564469e-15 0.52260374182624236 0.21646920350401774
		1.575393352564469e-15 0.39998350875820354 0.39998350875820354
		1.575393352564469e-15 0.21646920350401774 0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 0.56566192776793833
		1.575393352564469e-15 -0.21646920350401774 0.52260374182624236
		1.575393352564469e-15 -0.39998350875820354 0.39998350875820354
		1.575393352564469e-15 -0.52260374182624236 0.21646920350401774
		1.575393352564469e-15 -0.56566192776793833 -8.6173240636698328e-18
		1.575393352564469e-15 -0.52260374182624236 -0.21646920350401774
		1.575393352564469e-15 -0.39998350875820354 -0.39998350875820354
		1.575393352564469e-15 -0.21646920350401774 -0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 -0.56566192776793833
		1.575393352564469e-15 0.21646920350401774 -0.52260374182624236
		1.575393352564469e-15 0.39998350875820354 -0.39998350875820354
		1.575393352564469e-15 0.52260374182624236 -0.21646920350401774
		1.575393352564469e-15 0.56566192776793833 -8.6173240636698328e-18
		0.21646920350401927 0.52260374182624236 -8.6173240636698328e-18
		0.39998350875820537 0.39998350875820354 -8.6173240636698328e-18
		0.52260374182624403 0.21646920350401774 -8.6173240636698328e-18
		0.56566192776794 4.0000221842457109e-17 -8.6173240636698328e-18
		0.52260374182624403 -0.21646920350401774 -8.6173240636698328e-18
		0.39998350875820537 -0.39998350875820354 -8.6173240636698328e-18
		0.21646920350401927 -0.52260374182624236 -8.6173240636698328e-18
		1.575393352564469e-15 -0.56566192776793833 -8.6173240636698328e-18
		-0.21646920350401613 -0.52260374182624236 -8.6173240636698328e-18
		-0.39998350875820149 -0.39998350875820354 -8.6173240636698328e-18
		-0.52260374182624136 -0.21646920350401774 -8.6173240636698328e-18
		-0.56566192776793667 4.0000221842457109e-17 -8.6173240636698328e-18
		-0.52260374182624136 0.21646920350401774 -8.6173240636698328e-18
		-0.39998350875820149 0.39998350875820354 -8.6173240636698328e-18
		-0.21646920350401613 0.52260374182624236 -8.6173240636698328e-18
		1.575393352564469e-15 0.56566192776793833 -8.6173240636698328e-18
		1.575393352564469e-15 0.52260374182624236 -0.21646920350401774
		1.575393352564469e-15 0.39998350875820354 -0.39998350875820354
		1.575393352564469e-15 0.21646920350401774 -0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 -0.56566192776793833
		-0.21646920350401613 4.0000221842457109e-17 -0.52260374182624236
		-0.39998350875820149 4.0000221842457109e-17 -0.39998350875820354
		-0.52260374182624136 4.0000221842457109e-17 -0.21646920350401774
		-0.56566192776793667 4.0000221842457109e-17 -8.6173240636698328e-18
		-0.52260374182624136 4.0000221842457109e-17 0.21646920350401774
		-0.39998350875820149 4.0000221842457109e-17 0.39998350875820354
		-0.21646920350401613 4.0000221842457109e-17 0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 0.56566192776793833
		0.21646920350401927 4.0000221842457109e-17 0.52260374182624236
		0.39998350875820537 4.0000221842457109e-17 0.39998350875820354
		0.52260374182624403 4.0000221842457109e-17 0.21646920350401774
		0.56566192776794 4.0000221842457109e-17 -8.6173240636698328e-18
		0.52260374182624403 4.0000221842457109e-17 -0.21646920350401774
		0.39998350875820537 4.0000221842457109e-17 -0.39998350875820354
		0.21646920350401927 4.0000221842457109e-17 -0.52260374182624236
		1.575393352564469e-15 4.0000221842457109e-17 -0.56566192776793833
		;
createNode joint -n "armStart_JNT" -p "armStart_CTL";
	rename -uid "D25CAAFB-4066-5504-A4D8-B084C670CD7F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 4.5102810375396984e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73090818070466024 0.68199836006249792 0.025523876098019815 0
		 -0.034899496702499422 1.3322676295501878e-15 -0.99939082701909565 0 -0.68158290508852681 -0.73135370161917079 0.02380139951811033 0
		 1.0126899999999952 10.115800000000014 -0.055927399999997823 1;
	setAttr ".ds" 2;
createNode transform -n "armMid_controlJoint_GRP" -p "bend_SET";
	rename -uid "2E116042-4679-0368-AB4D-EEB8B1AA0C9E";
	setAttr ".ove" yes;
createNode transform -n "armMid_controlJoint_offGRP" -p "armMid_controlJoint_GRP";
	rename -uid "057E7225-4409-D097-FEBF-55898D50C0A6";
createNode joint -n "armMid_control_JNT" -p "armMid_controlJoint_offGRP";
	rename -uid "3A6292B8-4AAC-47EB-3829-E287A95733F2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73173299497772959 0.68106370501259506 -0.026815178079570852 0
		 0.0034010928164205376 -0.035693055205913149 -0.99935701247238062 0 -0.68158290517630815 -0.73135370069794869 0.023801425311084978 0
		 2.2917799999999988 8.9223400000000002 -0.10059399999999792 1;
	setAttr ".ds" 2;
createNode transform -n "armMid_control_GRP" -p "armMid_control_JNT";
	rename -uid "CD8AFB76-42FE-6DE5-AE70-3BAB2BB303C2";
	setAttr ".ove" yes;
createNode transform -n "armMid_control_offGRP" -p "armMid_control_GRP";
	rename -uid "80AEE54C-43CA-5866-CA8A-82B2644028C9";
createNode transform -n "armMid_CTL" -p "armMid_control_offGRP";
	rename -uid "5411069E-41AE-360A-D619-5FABB2E23B45";
	addAttr -ci true -sn "mname" -ln "mir_name_rule" -nn "Mir Name Rule" -dt "string";
	setAttr ".ro" 5;
createNode nurbsCurve -n "armMid_CTL_Shape" -p "armMid_CTL";
	rename -uid "2D993A23-4272-793B-BB0B-EEBD10E07894";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
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
createNode joint -n "armMid_JNT" -p "armMid_CTL";
	rename -uid "21C3EA99-49BE-C1E3-61D0-6B9EE653DED9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.73173299497772959 0.68106370501259506 -0.026815178079570852 0
		 0.0034010928164205376 -0.035693055205913149 -0.99935701247238062 0 -0.68158290517630815 -0.73135370069794869 0.023801425311084978 0
		 2.2917799999999988 8.9223400000000002 -0.10059399999999792 1;
	setAttr ".ds" 2;
createNode transform -n "armUpper_IK_TWST_joint_GRP" -p "bend_SET";
	rename -uid "6AB6E7ED-4516-876E-CD18-1E9F97F5625E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6268357813817773e-16 5 1.755219026322401e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode joint -n "armUpper_IK_TWST_start_JNT" -p "armUpper_IK_TWST_joint_GRP";
	rename -uid "C29A27EF-4303-8D3F-6997-FEB79E2F07D5";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0.000911605030481582 0.00091160459920210058 90.000027106585748 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".radi" 0.58106862780426993;
createNode joint -n "armUpper_IK_TWST_end_JNT" -p "armUpper_IK_TWST_start_JNT";
	rename -uid "3DED4BDC-4F17-7D76-0E10-89B8E274D50F";
	setAttr ".t" -type "double3" -5 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".radi" 0.57376969512723575;
createNode ikEffector -n "armUpper_IK_TWST_effector" -p "armUpper_IK_TWST_start_JNT";
	rename -uid "D8FB5469-4517-5B87-94E9-9C9FFB45CD03";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "armUpper_IK_TWST_ikHandle_GRP" -p "armUpper_IK_TWST_joint_GRP";
	rename -uid "553395C0-4BE7-447B-EF07-7998F8EF464B";
	setAttr ".t" -type "double3" 2.2636670562052822e-06 -4.9999995720444028 7.9552497480172061e-05 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "armUpper_IK_TWST_ikHandle_offGRP" -p "armUpper_IK_TWST_ikHandle_GRP";
	rename -uid "06E2E0D2-47C4-CB35-70F5-3EB8B3D7F105";
	setAttr ".t" -type "double3" 1.0182846210682328e-07 2.7531809854153266e-07 0 ;
createNode ikHandle -n "armUpper_IK_TWST_IKH" -p "armUpper_IK_TWST_ikHandle_offGRP";
	rename -uid "42B11D62-465D-FA03-B79B-58A6D09BCA7E";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -0.12523177629085266 -0.72386635750118011 -0.67847954920175113 ;
	setAttr ".roc" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_DCMX";
	rename -uid "A67E72A5-452F-FB1F-106E-7C990A89A2DE";
createNode fourByFourMatrix -n "armUpper_TGET_joint_FFMX";
	rename -uid "B00DC1D4-4292-138B-88FA-E9BA7CF9A01D";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_POSI";
	rename -uid "27873B03-484F-E42B-12EE-8EBF13BC2F02";
	setAttr ".u" 1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_01_DCMX";
	rename -uid "CC65F0A1-4290-B50C-7B47-92B1717CE65B";
createNode fourByFourMatrix -n "armUpper_TGET_joint_01_FFMX";
	rename -uid "BD4B002C-4162-2761-7843-9C8A322E2D8B";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_01_POSI";
	rename -uid "4C72ED48-40EF-2D14-7BDF-A7A9D192D3C8";
	setAttr ".u" 0.75;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_02_DCMX";
	rename -uid "00FC8FEF-40D1-BAE9-C598-A4A27EB84A1A";
createNode fourByFourMatrix -n "armUpper_TGET_joint_02_FFMX";
	rename -uid "7218B3C6-4DAE-DE6A-8435-35865F7FB5CD";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_02_POSI";
	rename -uid "DECBB9EC-474A-34E2-317A-3FA0904E3980";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_03_DCMX";
	rename -uid "33A91D89-4082-6185-FF17-C88D56A0651F";
createNode fourByFourMatrix -n "armUpper_TGET_joint_03_FFMX";
	rename -uid "39796DB9-46B8-0AB7-8494-98B93BDEA297";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_03_POSI";
	rename -uid "12733B79-4AF2-42E4-10E9-BE97C90EEFC2";
	setAttr ".u" 0.25;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "armUpper_TGET_joint_04_DCMX";
	rename -uid "C00CDB13-473E-A379-FE57-A399E82BE1FF";
createNode fourByFourMatrix -n "armUpper_TGET_joint_04_FFMX";
	rename -uid "F151B50C-43F3-9454-EB8B-6C9EB60992D5";
createNode pointOnSurfaceInfo -n "armUpper_TGET_joint_04_POSI";
	rename -uid "5B1A41A6-4615-83CB-8DD3-BFB8F2DF15B8";
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "D76A295A-4731-6318-2323-78BDD566CB3F";
	setAttr ".ihi" 0;
createNode objectSet -n "skinCluster1Set";
	rename -uid "66E568AE-42A8-218E-C898-3F87AC425C6A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "7D858CF4-41EE-7585-3CAC-DE983A0EE80F";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		3 0 0.99842516451062302 1 0.0014769602501597051 2 9.7875239217322811e-05
		3 0 0.99842516339993415 1 0.0014769613242551635 2 9.7875275810725652e-05
		3 0 0.79623106799611632 1 0.19905750993558372 2 0.0047114220683000295
		3 0 0.7962306403636189 1 0.19905793076465 2 0.0047114288717310902
		3 0 0.013612666828678489 1 0.9835136605670598 2 0.0028736726042618193
		3 0 0.013612629485604133 1 0.98351370146756312 2 0.0028736690468327379
		3 0 0.0028736690468323428 1 0.983513701467565 2 0.013612629485602643
		3 0 0.0028736726042624772 1 0.98351366056705591 2 0.013612666828681671
		3 0 0.0047114288717307173 1 0.19905793076463515 2 0.79623064036363411
		3 0 0.0047114220683002689 1 0.19905750993558186 2 0.79623106799611787
		3 0 9.7875275810687312e-05 1 0.0014769613242545767 2 0.9984251633999347
		3 0 9.7875239217360554e-05 1 0.0014769602501602374 2 0.99842516451062246;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" -3.1726847930608057e-07 -0.99999999999982103 5.0698186399561707e-07 -0
		 0.99999999975910903 -3.1725735233551282e-07 2.1947247304148743e-05 -0 -2.1947247143301099e-05 5.0698882704326294e-07 0.99999999975903053 -0
		 -4.2631789987799483e-07 2.367088477462296e-06 -6.5744042615725171e-05 1;
	setAttr ".pm[1]" -type "matrix" 0.026166823685060795 -0.99937405499863208 -0.023807876006529598 -0
		 0.99967178099911425 0.026158906931699699 0.00062837148622351346 0 -5.1902211644432837e-06 -0.023816166436464007 0.99971635486738597 -0
		 -2.4991796971077753 -0.065395307218740054 -0.0016037633639218183 0.99999999999999989;
	setAttr ".pm[2]" -type "matrix" 1.8490372473804498e-07 -0.99999999986322319 1.6538406728834433e-05 -0
		 0.99999999978223741 1.8524885497710398e-07 2.0868411260696146e-05 0 -2.086841432156275e-05 1.6538402866586021e-05 0.99999999964549513 -0
		 -4.9999999989111927 -9.2624427672780958e-07 -0.00010434205630259251 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "BF717C28-4E80-7854-86A0-E3B598E5E28A";
	setAttr -s 19 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 0.99999999999999756 -7.3413086514504202e-08 0 0 7.3413086514504188e-08 0.99999999999999734 0 0
		 0 0 1 0 3.5527136826210332e-15 4.9999999999999991 8.8817841970012523e-16 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999999756 -7.3413086514504202e-08 0 0 7.3413086514504188e-08 0.99999999999999734 0 0
		 0 0 1 0 3.5527136826210332e-15 4.9999999999999991 8.8817841970012523e-16 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999999756 -7.3413086514504202e-08 0 0 7.3413086514504202e-08 0.99999999999999756 0 0
		 0 0 1.0000000000000002 0 3.5527136826210332e-15 4.9999999999999991 8.8817841970012523e-16 1;
	setAttr ".wm[6]" -type "matrix" -3.1726847926823111e-07 0.99999999975910892 -2.1947247143301096e-05 0
		 -0.99999999999982125 -3.1725735237336228e-07 5.0698882704326697e-07 0 5.0698186399561432e-07 2.1947247304148746e-05 0.99999999975903087 0
		 2.3671216732141569e-06 4.2776155240176195e-07 6.574403204329117e-05 1;
	setAttr ".wm[7]" -type "matrix" -3.1726847926823111e-07 0.99999999975910892 -2.1947247143301096e-05 0
		 -0.99999999999982114 -3.1725735237336222e-07 5.0698882704326686e-07 0 5.0698186399561432e-07 2.1947247304148746e-05 0.99999999975903087 0
		 2.3671216732419129e-06 4.2776155151358353e-07 6.5744032043291183e-05 1;
	setAttr ".wm[8]" -type "matrix" -3.1726847926823111e-07 0.99999999975910892 -2.1947247143301096e-05 0
		 -0.99999999999982114 -3.1725735237336222e-07 5.0698882704326686e-07 0 5.0698186399561432e-07 2.1947247304148746e-05 0.99999999975903087 0
		 2.3671216732419129e-06 4.2776155151358353e-07 6.5744032043291183e-05 1;
	setAttr ".wm[10]" -type "matrix" 0.026166452484973842 0.99965759974974111 -5.1901475364556768e-06 0
		 -0.9993740549986323 0.026158906931699755 -0.023816166436464014 0 -0.023807876006529588 0.0006283714862235153 0.99971635486738564 0
		 1.1835608357449215e-06 2.5000002138807744 3.2872016022089694e-05 1;
	setAttr ".wm[11]" -type "matrix" 0.026166452484973842 0.99965759974974111 -5.1901475364556768e-06 0
		 -0.9993740549986323 0.026158906931699755 -0.023816166436464014 0 -0.023807876006529588 0.0006283714862235153 0.99971635486738564 0
		 1.1835608357704109e-06 2.5000002138807749 3.287201602209002e-05 1;
	setAttr ".wm[12]" -type "matrix" 0.026166452484973842 0.99965759974974111 -5.1901475364556768e-06 0
		 -0.9993740549986323 0.026158906931699755 -0.023816166436464014 0 -0.023807876006529588 0.0006283714862235153 0.99971635486738564 0
		 1.1835608357503127e-06 2.5000002138807753 3.2872016023421908e-05 1;
	setAttr ".wm[14]" -type "matrix" 0.99999999999999756 -7.3413086514504202e-08 0 0
		 7.3413086514504188e-08 0.99999999999999734 0 0 0 0 1 0 1.7763568414378675e-15 4.9999999999999991 8.8817841970012523e-16 1;
	setAttr ".wm[15]" -type "matrix" -4.7309917049954724e-07 0.99999999987331611 -1.5910501731728665e-05 0
		 -0.99999999986312893 -4.7283603609713939e-07 1.653840857843536e-05 0 1.6538401053281642e-05 1.5910509553858352e-05 0.99999999973666853 0
		 -1.7763568406737611e-15 4.9999999999999991 8.8817841970012523e-16 1;
	setAttr ".wm[16]" -type "matrix" 1.8490372471881747e-07 0.99999999978223764 -2.0868414321562753e-05 0
		 -0.99999999986322363 1.8524885499633163e-07 1.6538402866586021e-05 0 1.653840672883444e-05 2.0868411260696153e-05 0.99999999964549535 0
		 -1.7520698716204626e-15 4.9999999999999973 8.8820628077477596e-16 1;
	setAttr ".wm[17]" -type "matrix" 1.8490372471881747e-07 0.99999999978223764 -2.0868414321562753e-05 0
		 -0.99999999986322363 1.8524885499633163e-07 1.6538402866586021e-05 0 1.653840672883444e-05 2.0868411260696153e-05 0.99999999964549535 0
		 -1.7520698716204626e-15 4.9999999999999973 8.8820628077477596e-16 1;
	setAttr -s 19 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000000000000002 1 1 0 -0 -7.3413086514504254e-08 0 3.5527136826210332e-15
		 4.9999999999999991 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1.0000000000000002 1.0000000000000002 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -6.2831848001907593 2.1947247145063029e-05
		 1.5707967174764625 0 2.7341870708306614e-06 -4.9999995722382584 6.5744032042402978e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 0.99999999999999989 1 0 0 0 0 -8.8817841970012523e-16
		 -2.7755575615628914e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978 1.0000000000000002 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999978 -0.02381841847208727
		 5.1901475364789795e-06 1.5446268874339746 0 1.1835608357449215e-06 2.5000002138807744
		 3.2872016022089694e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 3.4753761825843935e-18 -2.1684043449710084e-19
		 -1.0412152504123485e-17 0 4.4408920985006262e-16 -1.3877787807814457e-17 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4408920985006262e-16
		 0 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 0.99998581409454346 1 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 -2.4286128663675299e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 1.6538408581282583e-05 1.5910501732399935e-05
		 1.5707968733071536 0 -3.5527136788005009e-15 -4.5102810375396984e-17 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 6.2831853071843451 4.9579017076821579e-06
		 -6.5808489107748015e-07 0 -1.7763568394002505e-15 -2.4286128663675299e-17 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -2.8102520310824275e-16 -2.7105054312095198e-20
		 3.0184188481996448e-16 0 7.9936057773011271e-15 9.0205620750793969e-17 -1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 19 ".m";
	setAttr -s 19 ".p";
	setAttr -s 19 ".g[0:18]" yes yes yes yes yes yes yes yes yes no yes 
		yes yes no yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "A69CC954-482E-0163-0CC3-F9988AAA438D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode tweak -n "tweak1";
	rename -uid "6DB54A12-4CC4-2353-344A-84AC99A66114";
createNode objectSet -n "tweakSet1";
	rename -uid "4352D33B-4D9D-A496-3488-6A908D453B81";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId61";
	rename -uid "2E0C7FEB-4F66-1260-50F0-748BC36965F2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "98ACA2CB-4587-9657-583F-8D9B19079704";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode decomposeMatrix -n "armUpper_TWST_control_DCMX";
	rename -uid "C9405848-437D-8493-3947-448DA0DF1074";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "761CB711-4D8C-7E40-D425-D5A081D9AC33";
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
	setAttr -s 11 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 20 ".gn";
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
	setAttr -s 4 ".sol";
connectAttr "armUpper_TGET_joint_DCMX.or" "armUpper_TGET_joint_spcGRP.r";
connectAttr "armUpper_TGET_joint_DCMX.ot" "armUpper_TGET_joint_spcGRP.t";
connectAttr "armUpper_TGET_joint_01_DCMX.or" "armUpper_TGET_joint_01_spcGRP.r";
connectAttr "armUpper_TGET_joint_01_DCMX.ot" "armUpper_TGET_joint_01_spcGRP.t";
connectAttr "armUpper_TGET_joint_02_DCMX.or" "armUpper_TGET_joint_02_spcGRP.r";
connectAttr "armUpper_TGET_joint_02_DCMX.ot" "armUpper_TGET_joint_02_spcGRP.t";
connectAttr "armUpper_TGET_joint_03_DCMX.or" "armUpper_TGET_joint_03_spcGRP.r";
connectAttr "armUpper_TGET_joint_03_DCMX.ot" "armUpper_TGET_joint_03_spcGRP.t";
connectAttr "armUpper_TGET_joint_04_DCMX.or" "armUpper_TGET_joint_04_spcGRP.r";
connectAttr "armUpper_TGET_joint_04_DCMX.ot" "armUpper_TGET_joint_04_spcGRP.t";
connectAttr "skinCluster1GroupId.id" "armUpper_TGET_SRFShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "armUpper_TGET_SRFShape.iog.og[0].gco";
connectAttr "groupId61.id" "armUpper_TGET_SRFShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "armUpper_TGET_SRFShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "armUpper_TGET_SRFShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "armUpper_TGET_SRFShape.twl";
connectAttr "armUpper_TWST_control_DCMX.ot" "armUpper_TWST_control_spcGRP.t";
connectAttr "armUpper_TWST_control_DCMX.or" "armUpper_TWST_control_spcGRP.r";
connectAttr "armUpper_TWST_control_start_oriGRP_orientConstraint1.crx" "armUpper_TWST_control_start_oriGRP.rx"
		;
connectAttr "armUpper_TWST_control_start_oriGRP_orientConstraint1.cry" "armUpper_TWST_control_start_oriGRP.ry"
		;
connectAttr "armUpper_TWST_control_start_oriGRP_orientConstraint1.crz" "armUpper_TWST_control_start_oriGRP.rz"
		;
connectAttr "armUpper_TWST_control_start_aimGRP_aimConstraint1.crx" "armUpper_TWST_control_start_aimGRP.rx"
		;
connectAttr "armUpper_TWST_control_start_aimGRP_aimConstraint1.cry" "armUpper_TWST_control_start_aimGRP.ry"
		;
connectAttr "armUpper_TWST_control_start_aimGRP_aimConstraint1.crz" "armUpper_TWST_control_start_aimGRP.rz"
		;
connectAttr "armUpper_TWST_control_start_aimGRP.pim" "armUpper_TWST_control_start_aimGRP_aimConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_start_aimGRP.t" "armUpper_TWST_control_start_aimGRP_aimConstraint1.ct"
		;
connectAttr "armUpper_TWST_control_start_aimGRP.rp" "armUpper_TWST_control_start_aimGRP_aimConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_start_aimGRP.rpt" "armUpper_TWST_control_start_aimGRP_aimConstraint1.crt"
		;
connectAttr "armUpper_TWST_control_start_aimGRP.ro" "armUpper_TWST_control_start_aimGRP_aimConstraint1.cro"
		;
connectAttr "armMid_CTL.t" "armUpper_TWST_control_start_aimGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "armMid_CTL.rp" "armUpper_TWST_control_start_aimGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "armMid_CTL.rpt" "armUpper_TWST_control_start_aimGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "armMid_CTL.pm" "armUpper_TWST_control_start_aimGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_start_aimGRP_aimConstraint1.w0" "armUpper_TWST_control_start_aimGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_start_vecLOC.wm" "armUpper_TWST_control_start_aimGRP_aimConstraint1.wum"
		;
connectAttr "armUpper_TWST_control_start_oriGRP.ro" "armUpper_TWST_control_start_oriGRP_orientConstraint1.cro"
		;
connectAttr "armUpper_TWST_control_start_oriGRP.pim" "armUpper_TWST_control_start_oriGRP_orientConstraint1.cpim"
		;
connectAttr "armUpper_IK_TWST_start_JNT.r" "armUpper_TWST_control_start_oriGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armUpper_IK_TWST_start_JNT.ro" "armUpper_TWST_control_start_oriGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armUpper_IK_TWST_start_JNT.pm" "armUpper_TWST_control_start_oriGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_IK_TWST_start_JNT.jo" "armUpper_TWST_control_start_oriGRP_orientConstraint1.tg[0].tjo"
		;
connectAttr "armUpper_TWST_control_start_oriGRP_orientConstraint1.w0" "armUpper_TWST_control_start_oriGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_control_end_conGRP_pointConstraint1.ctx" "armUpper_TWST_control_end_conGRP.tx"
		;
connectAttr "armUpper_TWST_control_end_conGRP_pointConstraint1.cty" "armUpper_TWST_control_end_conGRP.ty"
		;
connectAttr "armUpper_TWST_control_end_conGRP_pointConstraint1.ctz" "armUpper_TWST_control_end_conGRP.tz"
		;
connectAttr "armUpper_TWST_control_end_conGRP_aimConstraint1.crx" "armUpper_TWST_control_end_conGRP.rx"
		;
connectAttr "armUpper_TWST_control_end_conGRP_aimConstraint1.cry" "armUpper_TWST_control_end_conGRP.ry"
		;
connectAttr "armUpper_TWST_control_end_conGRP_aimConstraint1.crz" "armUpper_TWST_control_end_conGRP.rz"
		;
connectAttr "armUpper_TWST_control_end_conGRP.pim" "armUpper_TWST_control_end_conGRP_pointConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_end_conGRP.rp" "armUpper_TWST_control_end_conGRP_pointConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_end_conGRP.rpt" "armUpper_TWST_control_end_conGRP_pointConstraint1.crt"
		;
connectAttr "armMid_CTL.t" "armUpper_TWST_control_end_conGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armMid_CTL.rp" "armUpper_TWST_control_end_conGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armMid_CTL.rpt" "armUpper_TWST_control_end_conGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armMid_CTL.pm" "armUpper_TWST_control_end_conGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_end_conGRP_pointConstraint1.w0" "armUpper_TWST_control_end_conGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_control_end_conGRP.pim" "armUpper_TWST_control_end_conGRP_aimConstraint1.cpim"
		;
connectAttr "armUpper_TWST_control_end_conGRP.t" "armUpper_TWST_control_end_conGRP_aimConstraint1.ct"
		;
connectAttr "armUpper_TWST_control_end_conGRP.rp" "armUpper_TWST_control_end_conGRP_aimConstraint1.crp"
		;
connectAttr "armUpper_TWST_control_end_conGRP.rpt" "armUpper_TWST_control_end_conGRP_aimConstraint1.crt"
		;
connectAttr "armUpper_TWST_control_end_conGRP.ro" "armUpper_TWST_control_end_conGRP_aimConstraint1.cro"
		;
connectAttr "armStart_CTL.t" "armUpper_TWST_control_end_conGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "armStart_CTL.rp" "armUpper_TWST_control_end_conGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "armStart_CTL.rpt" "armUpper_TWST_control_end_conGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "armStart_CTL.pm" "armUpper_TWST_control_end_conGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_control_end_conGRP_aimConstraint1.w0" "armUpper_TWST_control_end_conGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_vecLOC.wm" "armUpper_TWST_control_end_conGRP_aimConstraint1.wum"
		;
connectAttr "armUpper_TWST_locator_start_offGRP_parentConstraint1.ctx" "armUpper_TWST_locator_start_offGRP.tx"
		;
connectAttr "armUpper_TWST_locator_start_offGRP_parentConstraint1.cty" "armUpper_TWST_locator_start_offGRP.ty"
		;
connectAttr "armUpper_TWST_locator_start_offGRP_parentConstraint1.ctz" "armUpper_TWST_locator_start_offGRP.tz"
		;
connectAttr "armUpper_TWST_locator_start_offGRP_parentConstraint1.crx" "armUpper_TWST_locator_start_offGRP.rx"
		;
connectAttr "armUpper_TWST_locator_start_offGRP_parentConstraint1.cry" "armUpper_TWST_locator_start_offGRP.ry"
		;
connectAttr "armUpper_TWST_locator_start_offGRP_parentConstraint1.crz" "armUpper_TWST_locator_start_offGRP.rz"
		;
connectAttr "armUpper_TWST_locator_start_offGRP.ro" "armUpper_TWST_locator_start_offGRP_parentConstraint1.cro"
		;
connectAttr "armUpper_TWST_locator_start_offGRP.pim" "armUpper_TWST_locator_start_offGRP_parentConstraint1.cpim"
		;
connectAttr "armUpper_TWST_locator_start_offGRP.rp" "armUpper_TWST_locator_start_offGRP_parentConstraint1.crp"
		;
connectAttr "armUpper_TWST_locator_start_offGRP.rpt" "armUpper_TWST_locator_start_offGRP_parentConstraint1.crt"
		;
connectAttr "armUpper_IK_TWST_start_JNT.t" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tt"
		;
connectAttr "armUpper_IK_TWST_start_JNT.rp" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "armUpper_IK_TWST_start_JNT.rpt" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "armUpper_IK_TWST_start_JNT.r" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tr"
		;
connectAttr "armUpper_IK_TWST_start_JNT.ro" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "armUpper_IK_TWST_start_JNT.s" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].ts"
		;
connectAttr "armUpper_IK_TWST_start_JNT.pm" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_IK_TWST_start_JNT.jo" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tjo"
		;
connectAttr "armUpper_IK_TWST_start_JNT.ssc" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tsc"
		;
connectAttr "armUpper_IK_TWST_start_JNT.is" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tis"
		;
connectAttr "armUpper_TWST_locator_start_offGRP_parentConstraint1.w0" "armUpper_TWST_locator_start_offGRP_parentConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_pointConstraint1.ctx" "armUpper_TWST_locator_end_conGRP.tx"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_pointConstraint1.cty" "armUpper_TWST_locator_end_conGRP.ty"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_pointConstraint1.ctz" "armUpper_TWST_locator_end_conGRP.tz"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_orientConstraint1.crx" "armUpper_TWST_locator_end_conGRP.rx"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_orientConstraint1.cry" "armUpper_TWST_locator_end_conGRP.ry"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_orientConstraint1.crz" "armUpper_TWST_locator_end_conGRP.rz"
		;
connectAttr "armUpper_TWST_locator_end_conGRP.pim" "armUpper_TWST_locator_end_conGRP_pointConstraint1.cpim"
		;
connectAttr "armUpper_TWST_locator_end_conGRP.rp" "armUpper_TWST_locator_end_conGRP_pointConstraint1.crp"
		;
connectAttr "armUpper_TWST_locator_end_conGRP.rpt" "armUpper_TWST_locator_end_conGRP_pointConstraint1.crt"
		;
connectAttr "armMid_CTL.t" "armUpper_TWST_locator_end_conGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armMid_CTL.rp" "armUpper_TWST_locator_end_conGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armMid_CTL.rpt" "armUpper_TWST_locator_end_conGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armMid_CTL.pm" "armUpper_TWST_locator_end_conGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_pointConstraint1.w0" "armUpper_TWST_locator_end_conGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_locator_end_conGRP.ro" "armUpper_TWST_locator_end_conGRP_orientConstraint1.cro"
		;
connectAttr "armUpper_TWST_locator_end_conGRP.pim" "armUpper_TWST_locator_end_conGRP_orientConstraint1.cpim"
		;
connectAttr "armStart_CTL.r" "armUpper_TWST_locator_end_conGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armStart_CTL.ro" "armUpper_TWST_locator_end_conGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armStart_CTL.pm" "armUpper_TWST_locator_end_conGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "armUpper_TWST_locator_end_conGRP_orientConstraint1.w0" "armUpper_TWST_locator_end_conGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "bend_shoulder_control_offGRP_pointConstraint1.ctx" "bend_shoulder_control_offGRP.tx"
		;
connectAttr "bend_shoulder_control_offGRP_pointConstraint1.cty" "bend_shoulder_control_offGRP.ty"
		;
connectAttr "bend_shoulder_control_offGRP_pointConstraint1.ctz" "bend_shoulder_control_offGRP.tz"
		;
connectAttr "bend_shoulder_control_offGRP_orientConstraint1.crx" "bend_shoulder_control_offGRP.rx"
		;
connectAttr "bend_shoulder_control_offGRP_orientConstraint1.cry" "bend_shoulder_control_offGRP.ry"
		;
connectAttr "bend_shoulder_control_offGRP_orientConstraint1.crz" "bend_shoulder_control_offGRP.rz"
		;
connectAttr "bend_shoulder_control_offGRP.ro" "bend_shoulder_control_offGRP_orientConstraint1.cro"
		;
connectAttr "bend_shoulder_control_offGRP.pim" "bend_shoulder_control_offGRP_orientConstraint1.cpim"
		;
connectAttr "armUpper_TWST_start_CTL.r" "bend_shoulder_control_offGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "armUpper_TWST_start_CTL.ro" "bend_shoulder_control_offGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "armUpper_TWST_start_CTL.pm" "bend_shoulder_control_offGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "bend_shoulder_control_offGRP_orientConstraint1.w0" "bend_shoulder_control_offGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_CTL.r" "bend_shoulder_control_offGRP_orientConstraint1.tg[1].tr"
		;
connectAttr "armUpper_TWST_end_CTL.ro" "bend_shoulder_control_offGRP_orientConstraint1.tg[1].tro"
		;
connectAttr "armUpper_TWST_end_CTL.pm" "bend_shoulder_control_offGRP_orientConstraint1.tg[1].tpm"
		;
connectAttr "bend_shoulder_control_offGRP_orientConstraint1.w1" "bend_shoulder_control_offGRP_orientConstraint1.tg[1].tw"
		;
connectAttr "bend_shoulder_control_offGRP.pim" "bend_shoulder_control_offGRP_pointConstraint1.cpim"
		;
connectAttr "bend_shoulder_control_offGRP.rp" "bend_shoulder_control_offGRP_pointConstraint1.crp"
		;
connectAttr "bend_shoulder_control_offGRP.rpt" "bend_shoulder_control_offGRP_pointConstraint1.crt"
		;
connectAttr "armUpper_TWST_start_CTL.t" "bend_shoulder_control_offGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "armUpper_TWST_start_CTL.rp" "bend_shoulder_control_offGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "armUpper_TWST_start_CTL.rpt" "bend_shoulder_control_offGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "armUpper_TWST_start_CTL.pm" "bend_shoulder_control_offGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "bend_shoulder_control_offGRP_pointConstraint1.w0" "bend_shoulder_control_offGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "armUpper_TWST_end_CTL.t" "bend_shoulder_control_offGRP_pointConstraint1.tg[1].tt"
		;
connectAttr "armUpper_TWST_end_CTL.rp" "bend_shoulder_control_offGRP_pointConstraint1.tg[1].trp"
		;
connectAttr "armUpper_TWST_end_CTL.rpt" "bend_shoulder_control_offGRP_pointConstraint1.tg[1].trt"
		;
connectAttr "armUpper_TWST_end_CTL.pm" "bend_shoulder_control_offGRP_pointConstraint1.tg[1].tpm"
		;
connectAttr "bend_shoulder_control_offGRP_pointConstraint1.w1" "bend_shoulder_control_offGRP_pointConstraint1.tg[1].tw"
		;
connectAttr "armUpper_IK_TWST_start_JNT.s" "armUpper_IK_TWST_end_JNT.is";
connectAttr "armUpper_IK_TWST_end_JNT.tx" "armUpper_IK_TWST_effector.tx";
connectAttr "armUpper_IK_TWST_end_JNT.ty" "armUpper_IK_TWST_effector.ty";
connectAttr "armUpper_IK_TWST_end_JNT.tz" "armUpper_IK_TWST_effector.tz";
connectAttr "armUpper_IK_TWST_start_JNT.msg" "armUpper_IK_TWST_IKH.hsj";
connectAttr "armUpper_IK_TWST_effector.hp" "armUpper_IK_TWST_IKH.hee";
connectAttr "ikSCsolver.msg" "armUpper_IK_TWST_IKH.hsv";
connectAttr "armUpper_TGET_joint_FFMX.o" "armUpper_TGET_joint_DCMX.imat";
connectAttr "armUpper_TGET_joint_POSI.px" "armUpper_TGET_joint_FFMX.i30";
connectAttr "armUpper_TGET_joint_POSI.py" "armUpper_TGET_joint_FFMX.i31";
connectAttr "armUpper_TGET_joint_POSI.pz" "armUpper_TGET_joint_FFMX.i32";
connectAttr "armUpper_TGET_joint_POSI.nx" "armUpper_TGET_joint_FFMX.i10";
connectAttr "armUpper_TGET_joint_POSI.ny" "armUpper_TGET_joint_FFMX.i11";
connectAttr "armUpper_TGET_joint_POSI.nz" "armUpper_TGET_joint_FFMX.i12";
connectAttr "armUpper_TGET_joint_POSI.tux" "armUpper_TGET_joint_FFMX.i00";
connectAttr "armUpper_TGET_joint_POSI.tuy" "armUpper_TGET_joint_FFMX.i01";
connectAttr "armUpper_TGET_joint_POSI.tuz" "armUpper_TGET_joint_FFMX.i02";
connectAttr "armUpper_TGET_joint_POSI.tvx" "armUpper_TGET_joint_FFMX.i20";
connectAttr "armUpper_TGET_joint_POSI.tvy" "armUpper_TGET_joint_FFMX.i21";
connectAttr "armUpper_TGET_joint_POSI.tvz" "armUpper_TGET_joint_FFMX.i22";
connectAttr "armUpper_TGET_SRFShape.ws" "armUpper_TGET_joint_POSI.is";
connectAttr "armUpper_TGET_joint_01_FFMX.o" "armUpper_TGET_joint_01_DCMX.imat";
connectAttr "armUpper_TGET_joint_01_POSI.px" "armUpper_TGET_joint_01_FFMX.i30";
connectAttr "armUpper_TGET_joint_01_POSI.py" "armUpper_TGET_joint_01_FFMX.i31";
connectAttr "armUpper_TGET_joint_01_POSI.pz" "armUpper_TGET_joint_01_FFMX.i32";
connectAttr "armUpper_TGET_joint_01_POSI.nx" "armUpper_TGET_joint_01_FFMX.i10";
connectAttr "armUpper_TGET_joint_01_POSI.ny" "armUpper_TGET_joint_01_FFMX.i11";
connectAttr "armUpper_TGET_joint_01_POSI.nz" "armUpper_TGET_joint_01_FFMX.i12";
connectAttr "armUpper_TGET_joint_01_POSI.tux" "armUpper_TGET_joint_01_FFMX.i00";
connectAttr "armUpper_TGET_joint_01_POSI.tuy" "armUpper_TGET_joint_01_FFMX.i01";
connectAttr "armUpper_TGET_joint_01_POSI.tuz" "armUpper_TGET_joint_01_FFMX.i02";
connectAttr "armUpper_TGET_joint_01_POSI.tvx" "armUpper_TGET_joint_01_FFMX.i20";
connectAttr "armUpper_TGET_joint_01_POSI.tvy" "armUpper_TGET_joint_01_FFMX.i21";
connectAttr "armUpper_TGET_joint_01_POSI.tvz" "armUpper_TGET_joint_01_FFMX.i22";
connectAttr "armUpper_TGET_SRFShape.ws" "armUpper_TGET_joint_01_POSI.is";
connectAttr "armUpper_TGET_joint_02_FFMX.o" "armUpper_TGET_joint_02_DCMX.imat";
connectAttr "armUpper_TGET_joint_02_POSI.px" "armUpper_TGET_joint_02_FFMX.i30";
connectAttr "armUpper_TGET_joint_02_POSI.py" "armUpper_TGET_joint_02_FFMX.i31";
connectAttr "armUpper_TGET_joint_02_POSI.pz" "armUpper_TGET_joint_02_FFMX.i32";
connectAttr "armUpper_TGET_joint_02_POSI.nx" "armUpper_TGET_joint_02_FFMX.i10";
connectAttr "armUpper_TGET_joint_02_POSI.ny" "armUpper_TGET_joint_02_FFMX.i11";
connectAttr "armUpper_TGET_joint_02_POSI.nz" "armUpper_TGET_joint_02_FFMX.i12";
connectAttr "armUpper_TGET_joint_02_POSI.tux" "armUpper_TGET_joint_02_FFMX.i00";
connectAttr "armUpper_TGET_joint_02_POSI.tuy" "armUpper_TGET_joint_02_FFMX.i01";
connectAttr "armUpper_TGET_joint_02_POSI.tuz" "armUpper_TGET_joint_02_FFMX.i02";
connectAttr "armUpper_TGET_joint_02_POSI.tvx" "armUpper_TGET_joint_02_FFMX.i20";
connectAttr "armUpper_TGET_joint_02_POSI.tvy" "armUpper_TGET_joint_02_FFMX.i21";
connectAttr "armUpper_TGET_joint_02_POSI.tvz" "armUpper_TGET_joint_02_FFMX.i22";
connectAttr "armUpper_TGET_SRFShape.ws" "armUpper_TGET_joint_02_POSI.is";
connectAttr "armUpper_TGET_joint_03_FFMX.o" "armUpper_TGET_joint_03_DCMX.imat";
connectAttr "armUpper_TGET_joint_03_POSI.px" "armUpper_TGET_joint_03_FFMX.i30";
connectAttr "armUpper_TGET_joint_03_POSI.py" "armUpper_TGET_joint_03_FFMX.i31";
connectAttr "armUpper_TGET_joint_03_POSI.pz" "armUpper_TGET_joint_03_FFMX.i32";
connectAttr "armUpper_TGET_joint_03_POSI.nx" "armUpper_TGET_joint_03_FFMX.i10";
connectAttr "armUpper_TGET_joint_03_POSI.ny" "armUpper_TGET_joint_03_FFMX.i11";
connectAttr "armUpper_TGET_joint_03_POSI.nz" "armUpper_TGET_joint_03_FFMX.i12";
connectAttr "armUpper_TGET_joint_03_POSI.tux" "armUpper_TGET_joint_03_FFMX.i00";
connectAttr "armUpper_TGET_joint_03_POSI.tuy" "armUpper_TGET_joint_03_FFMX.i01";
connectAttr "armUpper_TGET_joint_03_POSI.tuz" "armUpper_TGET_joint_03_FFMX.i02";
connectAttr "armUpper_TGET_joint_03_POSI.tvx" "armUpper_TGET_joint_03_FFMX.i20";
connectAttr "armUpper_TGET_joint_03_POSI.tvy" "armUpper_TGET_joint_03_FFMX.i21";
connectAttr "armUpper_TGET_joint_03_POSI.tvz" "armUpper_TGET_joint_03_FFMX.i22";
connectAttr "armUpper_TGET_SRFShape.ws" "armUpper_TGET_joint_03_POSI.is";
connectAttr "armUpper_TGET_joint_04_FFMX.o" "armUpper_TGET_joint_04_DCMX.imat";
connectAttr "armUpper_TGET_joint_04_POSI.px" "armUpper_TGET_joint_04_FFMX.i30";
connectAttr "armUpper_TGET_joint_04_POSI.py" "armUpper_TGET_joint_04_FFMX.i31";
connectAttr "armUpper_TGET_joint_04_POSI.pz" "armUpper_TGET_joint_04_FFMX.i32";
connectAttr "armUpper_TGET_joint_04_POSI.nx" "armUpper_TGET_joint_04_FFMX.i10";
connectAttr "armUpper_TGET_joint_04_POSI.ny" "armUpper_TGET_joint_04_FFMX.i11";
connectAttr "armUpper_TGET_joint_04_POSI.nz" "armUpper_TGET_joint_04_FFMX.i12";
connectAttr "armUpper_TGET_joint_04_POSI.tux" "armUpper_TGET_joint_04_FFMX.i00";
connectAttr "armUpper_TGET_joint_04_POSI.tuy" "armUpper_TGET_joint_04_FFMX.i01";
connectAttr "armUpper_TGET_joint_04_POSI.tuz" "armUpper_TGET_joint_04_FFMX.i02";
connectAttr "armUpper_TGET_joint_04_POSI.tvx" "armUpper_TGET_joint_04_FFMX.i20";
connectAttr "armUpper_TGET_joint_04_POSI.tvy" "armUpper_TGET_joint_04_FFMX.i21";
connectAttr "armUpper_TGET_joint_04_POSI.tvz" "armUpper_TGET_joint_04_FFMX.i22";
connectAttr "armUpper_TGET_SRFShape.ws" "armUpper_TGET_joint_04_POSI.is";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "armUpper_TGET_SRFShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "armUpper_TWST_end_JNT.wm" "skinCluster1.ma[0]";
connectAttr "bend_shoulder_JNT.wm" "skinCluster1.ma[1]";
connectAttr "armUpper_TWST_start_JNT.wm" "skinCluster1.ma[2]";
connectAttr "armUpper_TWST_end_JNT.liw" "skinCluster1.lw[0]";
connectAttr "bend_shoulder_JNT.liw" "skinCluster1.lw[1]";
connectAttr "armUpper_TWST_start_JNT.liw" "skinCluster1.lw[2]";
connectAttr "armUpper_TWST_end_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "bend_shoulder_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "armUpper_TWST_start_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "bend_SET.msg" "bindPose1.m[0]";
connectAttr "armUpper_TGET_RIG_GRP.msg" "bindPose1.m[1]";
connectAttr "armUpper_TWST_control_GRP.msg" "bindPose1.m[2]";
connectAttr "armUpper_TWST_control_spcGRP.msg" "bindPose1.m[3]";
connectAttr "armUpper_TWST_control_offGRP.msg" "bindPose1.m[4]";
connectAttr "armUpper_TWST_control_end_GRP.msg" "bindPose1.m[5]";
connectAttr "armUpper_TWST_control_end_conGRP.msg" "bindPose1.m[6]";
connectAttr "armUpper_TWST_control_end_offGRP.msg" "bindPose1.m[7]";
connectAttr "armUpper_TWST_end_CTL.msg" "bindPose1.m[8]";
connectAttr "armUpper_TWST_end_JNT.msg" "bindPose1.m[9]";
connectAttr "bend_shoulder_control_GRP.msg" "bindPose1.m[10]";
connectAttr "bend_shoulder_control_offGRP.msg" "bindPose1.m[11]";
connectAttr "bend_shoulder_CTL.msg" "bindPose1.m[12]";
connectAttr "bend_shoulder_JNT.msg" "bindPose1.m[13]";
connectAttr "armUpper_TWST_control_start_GRP.msg" "bindPose1.m[14]";
connectAttr "armUpper_TWST_control_start_oriGRP.msg" "bindPose1.m[15]";
connectAttr "armUpper_TWST_control_start_aimGRP.msg" "bindPose1.m[16]";
connectAttr "armUpper_TWST_start_CTL.msg" "bindPose1.m[17]";
connectAttr "armUpper_TWST_start_JNT.msg" "bindPose1.m[18]";
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
connectAttr "bindPose1.m[0]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[4]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "armUpper_TWST_end_JNT.bps" "bindPose1.wm[9]";
connectAttr "bend_shoulder_JNT.bps" "bindPose1.wm[13]";
connectAttr "armUpper_TWST_start_JNT.bps" "bindPose1.wm[18]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId61.id" "tweak1.ip[0].gi";
connectAttr "groupId61.msg" "tweakSet1.gn" -na;
connectAttr "armUpper_TGET_SRFShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "armUpper_TGET_SRFShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId61.id" "groupParts2.gi";
connectAttr "armStart_CTL.wm" "armUpper_TWST_control_DCMX.imat";
connectAttr "armUpper_TGET_joint_FFMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armUpper_TGET_joint_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armUpper_TGET_joint_01_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_02_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_03_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_04_FFMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_01_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_02_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_03_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TGET_joint_04_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "armUpper_TWST_control_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armUpper_TGET_SRFShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of Mir_bend.ma
