//Maya ASCII 2022 scene
//Name: axis.ma
//Last modified: Fri, Jul 19, 2024 03:39:20 PM
//Codeset: 949
requires maya "2022";
requires "mtoa" "5.0.0.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19045)";
fileInfo "UUID" "4DF859F0-407C-8FDE-AAE7-139E616B12F4";
createNode transform -n "Axis";
	rename -uid "246B5834-42B2-0942-E5C7-139DEE305A35";
createNode nurbsSurface -n "AxisYShape" -p "Axis";
	rename -uid "2DC4B7D0-471C-0CFD-2AFB-9295BF6DD2CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 3 0 0 no 
		3 0 1 2
		9 0 0 0 1 2 3 4 4 4
		
		21
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 1.6000000000000001 0.20000000000000001
		-0.093552855392749837 1.6000000000000001 0.18830589307590631
		-0.30276306197453595 1.6000000000000001 0.005847053462046837
		1.4432899320127038e-16 1.6000000000000001 -0.3029235267310238
		0.30276306197453612 1.6000000000000001 0.0058470534620472404
		0.093552855392749781 1.6000000000000001 0.18830589307590642
		0 1.6000000000000001 0.20000000000000001
		0 1.9600000000000002 0
		0 1.9600000000000002 0
		0 1.9600000000000002 0
		0 1.9600000000000002 0
		0 1.9600000000000002 0
		0 1.9600000000000002 0
		0 1.9600000000000002 0
		
		;
createNode nurbsSurface -n "AxisXShape" -p "Axis";
	rename -uid "6364A826-44C3-C53C-FAE9-579708865963";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 3 0 0 no 
		3 0 1 2
		9 0 0 0 1 2 3 4 4 4
		
		21
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		1.6000000000000001 -2.6645352591003766e-16 0.20000000000000001
		1.6000000000000001 0.093552855392749559 0.18830589307590631
		1.6000000000000001 0.30276306197453567 0.005847053462046837
		1.6000000000000001 -4.1078251911130804e-16 -0.3029235267310238
		1.6000000000000001 -0.24221044957962914 0.0046776427696377911
		1.6000000000000001 -0.093552855392750059 0.18830589307590642
		1.6000000000000001 -2.6645352591003766e-16 0.20000000000000001
		1.9600000000000002 -4.2632564145606019e-16 0
		1.9600000000000002 -4.2632564145606019e-16 0
		1.9600000000000002 -4.2632564145606019e-16 0
		1.9600000000000002 -4.2632564145606019e-16 0
		1.9600000000000002 -4.2632564145606019e-16 0
		1.9600000000000002 -4.2632564145606019e-16 0
		1.9600000000000002 -4.2632564145606019e-16 0
		
		;
createNode nurbsSurface -n "AxisZShape" -p "Axis";
	rename -uid "2FDAE830-46BC-C260-AD97-ABA9BE42F134";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 3 0 0 no 
		3 0 1 2
		9 0 0 0 1 2 3 4 4 4
		
		21
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 -0.20000000000000034 1.6000000000000001
		-0.093552855392749837 -0.18830589307590656 1.6000000000000001
		-0.30276306197453595 -0.0058470534620471042 1.6000000000000001
		1.4432899320127038e-16 0.30292352673102357 1.6000000000000001
		0.30276306197453612 -0.0058470534620475075 1.6000000000000001
		0.093552855392749781 -0.18830589307590667 1.6000000000000001
		0 -0.20000000000000034 1.6000000000000001
		0 -4.2632564145606019e-16 1.9600000000000002
		0 -4.2632564145606019e-16 1.9600000000000002
		0 -4.2632564145606019e-16 1.9600000000000002
		0 -4.2632564145606019e-16 1.9600000000000002
		0 -4.2632564145606019e-16 1.9600000000000002
		0 -4.2632564145606019e-16 1.9600000000000002
		0 -4.2632564145606019e-16 1.9600000000000002
		
		;
createNode materialInfo -n "materialInfo2";
	rename -uid "1B060A2A-4590-916C-0CE9-DEACBFDDE914";
createNode shadingEngine -n "surfaceShader1SG";
	rename -uid "63C8A16D-4086-8601-80A0-EA844308EE95";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "surfaceShader1";
	rename -uid "99742CC9-43EA-4764-B12B-F6974BC139E9";
	setAttr ".oc" -type "float3" 0 1 0 ;
	setAttr ".omo" -type "float3" 0 0 0 ;
createNode materialInfo -n "materialInfo4";
	rename -uid "D3116CC3-4D95-FD42-06FE-61887B21670E";
createNode shadingEngine -n "surfaceShader3SG";
	rename -uid "5E9B771E-4AB3-6C59-19B1-6CADA4E768A6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "surfaceShader3";
	rename -uid "B8BB3820-4804-F201-D312-6083E9E793B6";
	setAttr ".oc" -type "float3" 1 0 0 ;
createNode materialInfo -n "materialInfo3";
	rename -uid "07E298F7-43B6-32DC-2D02-72A7A7271CFA";
createNode shadingEngine -n "surfaceShader2SG";
	rename -uid "1E48C6A6-46C2-0324-882B-CB958FE2F986";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "surfaceShader2";
	rename -uid "3FFA066B-47E0-3E91-FB12-BA8674972DBA";
	setAttr ".oc" -type "float3" 0 0 1 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D17A9C9B-46F4-90D0-959C-F08D48DD3512";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "surfaceShader1SG.msg" "materialInfo2.sg";
connectAttr "surfaceShader1.msg" "materialInfo2.m";
connectAttr "surfaceShader1.msg" "materialInfo2.t" -na;
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "AxisYShape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "surfaceShader3SG.msg" "materialInfo4.sg";
connectAttr "surfaceShader3.msg" "materialInfo4.m";
connectAttr "surfaceShader3.msg" "materialInfo4.t" -na;
connectAttr "surfaceShader3.oc" "surfaceShader3SG.ss";
connectAttr "AxisXShape.iog" "surfaceShader3SG.dsm" -na;
connectAttr "surfaceShader2SG.msg" "materialInfo3.sg";
connectAttr "surfaceShader2.msg" "materialInfo3.m";
connectAttr "surfaceShader2.msg" "materialInfo3.t" -na;
connectAttr "surfaceShader2.oc" "surfaceShader2SG.ss";
connectAttr "AxisZShape.iog" "surfaceShader2SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader3SG.message" ":defaultLightSet.message";
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader2SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader3SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader3.msg" ":defaultShaderList1.s" -na;
// End of axis.ma
