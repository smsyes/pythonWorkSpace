//Maya ASCII 2019 scene
//Name: aim_eye_CTL.ma
//Last modified: Wed, May 12, 2021 05:48:18 PM
//Codeset: 949
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "RenderMan_for_Maya" "4.0.3";
requires "redshift4maya" "2.6.31";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "aim_control_GRP";
	rename -uid "E8B2F8D0-4D12-830D-83FD-D7B801076B7E";
	setAttr ".t" -type "double3" -8.7581154020301067e-47 1.7763568394002505e-15 -8.3266726846886741e-17 ;
	setAttr ".s" -type "double3" 0.85 0.85 0.85 ;
createNode transform -n "aimEye_control_M_offGRP" -p "aim_control_GRP";
	rename -uid "B8260E42-4519-629B-ECDA-8EB9BB1F81A4";
	setAttr ".t" -type "double3" 0 14.335418076518639 5.1236549757042784 ;
createNode transform -n "aimEye_M" -p "aimEye_control_M_offGRP";
	rename -uid "21E411F3-47E1-D912-89F8-BB80730614F6";
	addAttr -ci true -k true -sn "allAim" -ln "allAim" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "follow" -ln "follow" -dv 10 -min 0 -max 10 -at "double";
	setAttr -k on ".allAim";
	setAttr -k on ".follow";
createNode nurbsCurve -n "aimEye_MShape" -p "aimEye_M";
	rename -uid "4838807C-45C7-41DC-E6FE-328B5D17BC7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0.40824523296251569 0
		0 -0.40824523296251569 0
		0 0 0
		0.40824523296251675 0 0
		-0.40824523296251675 0 0
		;
createNode transform -n "aimEye_control_R_offGRP" -p "aimEye_M";
	rename -uid "C4D2F188-4CE1-84A9-D5E4-8EBD8F52310E";
	setAttr ".t" -type "double3" -5.5493896468028907e-14 1.4210854715202004e-14 -3.1547513401619653e-07 ;
	setAttr ".rp" -type "double3" 4.1175442398568307e-14 -1.0658141036401503e-14 2.3407670113329004e-07 ;
	setAttr ".sp" -type "double3" 4.1175442398568307e-14 -1.0658141036401503e-14 2.3407670113329004e-07 ;
createNode transform -n "aimEye_R" -p "aimEye_control_R_offGRP";
	rename -uid "EEEE5D57-441D-933C-D2C2-3CB0BF870563";
	addAttr -ci true -k true -sn "aim" -ln "aim" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "follow" -ln "follow" -dv 10 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "allAim" -ln "allAim" -nn "All Aim" -min 0 -max 10 -at "double";
	setAttr ".rp" -type "double3" 4.1175442398568307e-14 -1.0658141036401503e-14 2.3407670113329004e-07 ;
	setAttr ".sp" -type "double3" 4.1175442398568307e-14 -1.0658141036401503e-14 2.3407670113329004e-07 ;
	setAttr -k on ".aim";
	setAttr -k on ".follow";
	setAttr -k on ".allAim" 10;
createNode nurbsCurve -n "aimEye_RShape" -p "aimEye_R";
	rename -uid "783FB88C-48E0-B43B-768C-ABA9C1318BB6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.40824523296246112 0.12247356988874168 3.1547513493286253e-07
		-0.40824523296246118 -0.1224735698887701 3.1547513493286253e-07
		-0.40824523296246118 -1.4210854715202004e-14 3.1547513493286253e-07
		-0.28577166307370622 -1.4210854715202004e-14 3.1547513493286253e-07
		-0.53071880285121631 -1.4210854715202004e-14 3.1547513493286253e-07
		;
createNode transform -n "aimEye_control_L_offGRP" -p "aimEye_M";
	rename -uid "8DD9FCEA-4EEB-96FC-0A91-3DB21AFCC5FF";
	setAttr ".t" -type "double3" 5.5528406480954636e-14 1.4210854715202004e-14 3.1547562073797053e-07 ;
	setAttr ".rp" -type "double3" -4.1201048188390906e-14 -1.0658141036401503e-14 -2.3407706173372844e-07 ;
	setAttr ".sp" -type "double3" -4.1201048188390906e-14 -1.0658141036401503e-14 -2.3407706173372844e-07 ;
createNode transform -n "aimEye_L" -p "aimEye_control_L_offGRP";
	rename -uid "33041B43-4A40-5F83-FDEE-F086E5345D0B";
	addAttr -ci true -k true -sn "aim" -ln "aim" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "follow" -ln "follow" -dv 10 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "allAim" -ln "allAim" -nn "All Aim" -min 0 -max 10 -at "double";
	setAttr ".rp" -type "double3" -4.1201048188390906e-14 -1.0658141036401503e-14 -2.3407706173372844e-07 ;
	setAttr ".sp" -type "double3" -4.1201048188390906e-14 -1.0658141036401503e-14 -2.3407706173372844e-07 ;
	setAttr -k on ".aim";
	setAttr -k on ".follow";
	setAttr -k on ".allAim" 10;
createNode nurbsCurve -n "aimEye_LShape" -p "aimEye_L";
	rename -uid "F23E7E45-4274-1A9D-63C2-468B461D0790";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.40824523296246024 0.12247356988874168 -3.1547562073797048e-07
		0.40824523296246018 -0.1224735698887701 -3.1547562073797048e-07
		0.40824523296246018 -1.4210854715202004e-14 -3.1547562073797048e-07
		0.5307188028512152 -1.4210854715202004e-14 -3.1547562073797048e-07
		0.28577166307370522 -1.4210854715202004e-14 -3.1547562073797048e-07
		;
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
	setAttr -s 27 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 64 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 1276 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 45 ".tx";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
// End of aim_eye_CTL.ma
