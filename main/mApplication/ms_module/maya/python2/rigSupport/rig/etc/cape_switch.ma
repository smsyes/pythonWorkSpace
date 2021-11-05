//Maya ASCII 2019 scene
//Name: cape_switch.ma
//Last modified: Fri, Jul 09, 2021 05:22:04 PM
//Codeset: 949
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
requires "FumeFX" "FumeFX3.5.2";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "MayaKrakatoa" "1.0";
requires "QDMayaUI" "0.1";
requires "RenderMan_for_Maya" "4.0.3";
requires "TurtleForMaya2009" "5.0.0.5";
requires "pdiMaya2lmx" "2.3";
requires "maxwell" "1.7.11";
requires "Vue_xStream" "7.00";
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
createNode transform -n "cape_switch_CTL_offGRP";
	rename -uid "186E2D91-48A7-3AF2-8225-BCB5EF338C53";
	setAttr ".t" -type "double3" -4.4930335996313654e-16 0 0 ;
createNode transform -n "cape_switch_CTL_spcGRP" -p "cape_switch_CTL_offGRP";
	rename -uid "DC403931-400E-8D33-04AA-E9BC167A4657";
createNode transform -n "cape_switch_CTL" -p "cape_switch_CTL_spcGRP";
	rename -uid "9C281783-431D-FC70-4AF6-9C86DFAB43DA";
	addAttr -ci true -sn "cape_attr_drive" -ln "cape_attr_drive" -nn "____" -min 0 
		-max 0 -en "cape_attr" -at "enum";
	addAttr -ci true -sn "roll" -ln "roll" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "curl" -ln "curl" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "spread" -ln "spread" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "twist" -ln "twist" -at "double";
	addAttr -ci true -sn "visibility_drive" -ln "visibility_drive" -nn "____" -min 0 
		-max 0 -en "visibility" -at "enum";
	addAttr -ci true -sn "attach" -ln "attach" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FK" -ln "FK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "IK" -ln "IK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "main_FK_IK" -ln "main_FK_IK" -nn "Main FK / IK" -min 0 -max 
		1 -en "IK:FK" -at "enum";
	addAttr -ci true -sn "stretch_drive" -ln "stretch_drive" -nn "____" -min 0 -max 
		0 -en "stretch" -at "enum";
	addAttr -ci true -sn "stretch" -ln "stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "pose" -ln "pose" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "deform_drive" -ln "deform_drive" -nn "____" -min 0 -max 0 
		-en "NonLinear" -at "enum";
	addAttr -ci true -sn "sine" -ln "sine" -at "double";
	addAttr -ci true -sn "xDencity" -ln "xDencity" -nn "X-Dencity" -dv 1 -at "double";
	addAttr -ci true -sn "yDencity" -ln "yDencity" -nn "Y-Dencity" -dv 1 -at "double";
	addAttr -ci true -sn "zDencity" -ln "zDencity" -nn "Z-Dencity" -dv 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".cape_attr_drive";
	setAttr -k on ".roll";
	setAttr -k on ".curl";
	setAttr -k on ".spread";
	setAttr -k on ".twist";
	setAttr -cb on ".visibility_drive";
	setAttr -cb on ".attach";
	setAttr -cb on ".FK";
	setAttr -cb on ".IK";
	setAttr -cb on ".main_FK_IK";
	setAttr -cb on ".stretch_drive";
	setAttr -k on ".stretch";
	setAttr -k on ".pose" 10;
	setAttr -k on ".deform_drive";
	setAttr -k on ".sine";
	setAttr -k on ".xDencity";
	setAttr -k on ".yDencity";
	setAttr -k on ".zDencity";
createNode nurbsCurve -n "cape_switch_CTLShape" -p "cape_switch_CTL";
	rename -uid "4E90C902-4CB1-C607-E417-178C45D25A7B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 19 0 no 3
		20 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
		20
		-0.71279999999999988 7.1054273576010019e-15 1.1102230246251565e-16
		-0.35639999999999916 -0.6173026200000038 1.1102230246251565e-16
		0.35640000000000138 -0.6173026200000038 1.1102230246251565e-16
		0.7128000000000021 -6.6384666652652413e-08 1.1102230246251565e-16
		0.35640000000000138 0.61730261999999492 1.1102230246251565e-16
		-0.35639999999999916 0.61730261999999492 1.1102230246251565e-16
		-0.71279999999999988 7.1054273576010019e-15 1.1102230246251565e-16
		-2.4342565500000042 -1.062154009190408e-07 1.1102230246251565e-16
		-1.5432565499999997 -0.89100000000000534 1.1102230246251565e-16
		-1.2171291660000003 -2.1081291660000012 1.1102230246251565e-16
		2.6907487327143542e-07 -1.782 1.1102230246251565e-16
		1.217129166000003 -2.1081291660000012 1.1102230246251565e-16
		1.5432565500000024 -0.89100000000000534 1.1102230246251565e-16
		2.4342565500000051 -1.062154009190408e-07 1.1102230246251565e-16
		1.5432565500000024 0.89100000000000179 1.1102230246251565e-16
		1.217129166000003 2.1081291660000012 1.1102230246251565e-16
		1.1102230246251565e-15 1.7819999999999983 1.1102230246251565e-16
		-1.2171291660000003 2.1081291660000012 1.1102230246251565e-16
		-1.5432565499999997 0.89100000000000179 1.1102230246251565e-16
		-2.4342565500000042 -1.062154009190408e-07 1.1102230246251565e-16
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
	setAttr -s 43 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 114 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 217 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 78 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 150 ".gn";
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
	setAttr -s 8 ".sol";
// End of cape_switch.ma
