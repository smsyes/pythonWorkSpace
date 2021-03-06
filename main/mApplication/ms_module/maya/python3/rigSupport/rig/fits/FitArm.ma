//Maya ASCII 2018ff09 scene
//Name: FitArm.ma
//Last modified: Mon, Sep 27, 2021 02:13:56 PM
//Codeset: 949
requires maya "2018ff09";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "FitArm";
	rename -uid "9F5B5829-4AD6-B7EB-7559-7F868E13C142";
	addAttr -ci true -sn "Module" -ln "Module" -dt "string";
	addAttr -ci true -sn "FileType" -ln "FileType" -dt "string";
	addAttr -ci true -sn "Mirror" -ln "Mirror" -min 0 -max 1 -at "bool";
	setAttr -l on -k on ".Module" -type "string" "Arm";
	setAttr -l on -k on ".FileType" -type "string" "Fit";
	setAttr -cb on ".Mirror";
createNode transform -n "FitInitScapula" -p "FitArm";
	rename -uid "D60DBF9F-46E8-AC2F-A4B3-D8B114209B6B";
createNode transform -n "FitInitShoulder" -p "FitInitScapula";
	rename -uid "9F3EF232-4C0D-1066-E179-B0ABC2659081";
createNode transform -n "FitInitElbow" -p "FitInitShoulder";
	rename -uid "4712BEDF-4E1B-EB1E-A906-10A60C915EC6";
createNode transform -n "FitInitWrist" -p "FitInitElbow";
	rename -uid "7B3DC8AB-4EE3-C2C0-DEDF-96B55D535E92";
createNode transform -n "FitArmPVAnno" -p "FitInitElbow";
	rename -uid "319417D6-408F-E7CB-1E59-8BB3B2D4183B";
	setAttr ".t" -type "double3" 0 -1.5407416193918448e-33 0 ;
	setAttr ".r" -type "double3" 0 -1.4320962055023201 0 ;
	setAttr ".s" -type "double3" 5 5 5 ;
createNode annotationShape -n "FitArmPVAnnoShape" -p "FitArmPVAnno";
	rename -uid "4939C2B9-46E3-D6A4-DE3A-179D264DED8F";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode transform -n "FitScapulaGrp" -p "FitArm";
	rename -uid "72FBFF5A-4782-F5FB-59F4-ACA975C7F38B";
	setAttr ".t" -type "double3" 0 4.5284811682096669e-48 3.6977854932234928e-32 ;
	setAttr ".r" -type "double3" 180 0 0 ;
createNode joint -n "FitScapula" -p "FitScapulaGrp";
	rename -uid "3055BB9B-4DB7-B156-C947-0EBF0AE07FAC";
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr ".t" -type "double3" 0 0 3.6977854932234928e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 3;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Scapula";
createNode joint -n "FitShoulder" -p "FitScapula";
	rename -uid "429F329C-4598-83FD-1F6F-FABCE16C2E1C";
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr ".t" -type "double3" 1 -4.5284811682096669e-48 0 ;
	setAttr ".sd" 3;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Shoulder";
createNode joint -n "FitElbow" -p "FitShoulder";
	rename -uid "0ACFB10B-4982-3EDA-FDA5-DD969F6B0405";
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr ".t" -type "double3" 4 4.9303806576313238e-32 0.1 ;
	setAttr ".sd" 3;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Elbow";
createNode joint -n "FitWrist" -p "FitElbow";
	rename -uid "E9830762-4EE7-F7EE-A83B-DEB5FF295E2F";
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr ".t" -type "double3" 4 -4.9303806576313238e-32 -0.1 ;
	setAttr ".jo" -type "double3" 180 0 0 ;
	setAttr ".sd" 3;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Wrist";
createNode joint -n "ScapulaJnt" -p "FitArm";
	rename -uid "030F7BD9-44BE-2D27-E1DA-EE83C355FBBB";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Scapula";
createNode joint -n "ShoulderJnt" -p "ScapulaJnt";
	rename -uid "35813E20-45AD-5742-4C21-6EB02DEC21E5";
	addAttr -ci true -sn "Length" -ln "Length" -at "double";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Shoulder";
	setAttr -k on ".Length";
createNode joint -n "ElbowJnt" -p "ShoulderJnt";
	rename -uid "E901D88D-4AD2-34FC-4386-3886F23A8B58";
	addAttr -ci true -sn "Length" -ln "Length" -at "double";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Elbow";
	setAttr -k on ".Length";
createNode joint -n "WristJnt" -p "ElbowJnt";
	rename -uid "42C6E909-4D17-3389-78F9-0F9E8E7F45C5";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Wrist";
createNode decomposeMatrix -n "FitArmSpaceDM";
	rename -uid "CC4CABFD-4A8C-91C1-0C8D-FC85B9439A4C";
createNode multMatrix -n "FitArmSpaceMM";
	rename -uid "5732B705-4C83-A068-AA22-27B3C234C8A8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ShoulderAlignedDM";
	rename -uid "1E513614-4338-1E21-F4F3-FBBAA7D158D4";
createNode multMatrix -n "ShoulderAlignedMM";
	rename -uid "AAD96F4A-403D-0185-9DE2-9AB5D3F074E8";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "ShoulderAlignedFBM";
	rename -uid "1335E277-4B10-A42C-0560-518C2ED5553D";
createNode vectorProduct -n "ShoulderXVec";
	rename -uid "93E273A3-47E9-95B5-16E8-9AB010697A1C";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode plusMinusAverage -n "Shoulder2ElbowVecPM";
	rename -uid "064C62C5-4B91-CA5C-8A31-D18BF05D7532";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "FitElbowDM";
	rename -uid "C0E01214-452A-CB1C-E583-FCB3B075EDB0";
createNode decomposeMatrix -n "FitShoulderDM";
	rename -uid "23D7EF01-4502-AF16-B8E2-E5B01AD920A4";
createNode vectorProduct -n "ShoulderYVec";
	rename -uid "54F8A776-4154-CF48-DDA1-669C73ADB12C";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode plusMinusAverage -n "Shoulder2WristVecPM";
	rename -uid "30B11079-4840-83FA-BF0D-ECACD86BDE2A";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "FitWristDM";
	rename -uid "5B5C02D4-4C88-3497-5A15-C7862E36EC6F";
createNode vectorProduct -n "ShoulderZVec";
	rename -uid "68EB6072-41BA-0B81-A5BD-7DB3EBF0BFF3";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "Shoulder2ElbowInitDM";
	rename -uid "B46DAE71-4B94-A42A-6B0D-B5833AFA7DDB";
createNode multMatrix -n "Shoulder2ElbowInitMM";
	rename -uid "A81415DE-400F-1AAD-7BA5-52B573F04ACB";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "ElbowAlignedFBM";
	rename -uid "B5420514-40B6-469F-5B97-3FADE3C72273";
createNode vectorProduct -n "ElbowXVec";
	rename -uid "9C2B9E49-48AF-6763-2BC7-38B6A072E2C6";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode plusMinusAverage -n "Elbow2WristVecPM";
	rename -uid "AFD51E53-4D96-A795-2117-CF8B558F7351";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "ElbowYVec";
	rename -uid "CA555C5B-46F9-42C6-5E54-3B8B7215D891";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode plusMinusAverage -n "Elbow2ShoulderVecPM";
	rename -uid "42FBD501-4B40-CA30-685C-A0B2CB17417B";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "ElbowZVec";
	rename -uid "7071EE9E-4662-EC36-C68C-85B9FFFE98C4";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "WristAlignedInitDM";
	rename -uid "EEA73054-496C-16A0-D5E2-DD91184C5915";
createNode multMatrix -n "WristAlignedInitMM";
	rename -uid "8DFB4034-4AA5-8897-A38F-3C8F931AD57E";
	setAttr -s 2 ".i";
createNode condition -n "MirrorCD";
	rename -uid "B402F166-4DC0-16A0-3E00-FF91F49CAC16";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" -1 0 0 ;
createNode distanceBetween -n "Elbow2ShoulderDB";
	rename -uid "69D51557-4D25-F60B-652D-15B851644301";
createNode decomposeMatrix -n "ShoulderLocalDM";
	rename -uid "56A48F5D-4DD8-5019-A7AC-B781803F4560";
createNode multMatrix -n "ShoulderLocalMM";
	rename -uid "89E05FD6-45E3-1E7F-AA44-98819DE0BA60";
	setAttr -s 2 ".i";
createNode distanceBetween -n "Wrist2ElbowDB";
	rename -uid "17B42677-4E6F-B4FD-44CB-4EA31E3FD04F";
createNode decomposeMatrix -n "ElbowLocalDM";
	rename -uid "108459D7-44B1-46A5-313B-A392ECED31C7";
createNode multMatrix -n "ElbowLocalMM";
	rename -uid "89A5E90A-4157-0836-E69E-B39F13B5687A";
	setAttr -s 2 ".i";
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
	setAttr -s 27 ".u";
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
	setAttr -av ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf";
	setAttr -av ".imfkey";
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
	setAttr -av ".pff";
	setAttr -av -k on ".peie";
	setAttr -av ".ifp";
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
connectAttr "FitArmSpaceDM.ot" "FitInitScapula.t";
connectAttr "FitArmSpaceDM.or" "FitInitScapula.r";
connectAttr "FitScapula.s" "FitInitScapula.s";
connectAttr "ShoulderAlignedDM.ot" "FitInitShoulder.t";
connectAttr "ShoulderAlignedDM.or" "FitInitShoulder.r";
connectAttr "ShoulderAlignedDM.os" "FitInitShoulder.s";
connectAttr "ShoulderAlignedDM.osh" "FitInitShoulder.sh";
connectAttr "Shoulder2ElbowInitDM.ot" "FitInitElbow.t";
connectAttr "Shoulder2ElbowInitDM.or" "FitInitElbow.r";
connectAttr "Shoulder2ElbowInitDM.os" "FitInitElbow.s";
connectAttr "Shoulder2ElbowInitDM.osh" "FitInitElbow.sh";
connectAttr "WristAlignedInitDM.ot" "FitInitWrist.t";
connectAttr "WristAlignedInitDM.os" "FitInitWrist.s";
connectAttr "WristAlignedInitDM.or" "FitInitWrist.r";
connectAttr "MirrorCD.ocr" "FitScapulaGrp.sx";
connectAttr "FitInitScapula.t" "ScapulaJnt.t";
connectAttr "FitInitScapula.r" "ScapulaJnt.jo";
connectAttr "Elbow2ShoulderDB.d" "ShoulderJnt.Length";
connectAttr "ShoulderLocalDM.ot" "ShoulderJnt.t";
connectAttr "FitInitShoulder.r" "ShoulderJnt.jo";
connectAttr "Wrist2ElbowDB.d" "ElbowJnt.Length";
connectAttr "ElbowLocalDM.ot" "ElbowJnt.t";
connectAttr "FitInitElbow.r" "ElbowJnt.jo";
connectAttr "FitInitWrist.t" "WristJnt.t";
connectAttr "FitArmSpaceMM.o" "FitArmSpaceDM.imat";
connectAttr "FitScapula.wm" "FitArmSpaceMM.i[0]";
connectAttr "FitArm.wim" "FitArmSpaceMM.i[1]";
connectAttr "ShoulderAlignedMM.o" "ShoulderAlignedDM.imat";
connectAttr "ShoulderAlignedFBM.o" "ShoulderAlignedMM.i[0]";
connectAttr "FitInitScapula.wim" "ShoulderAlignedMM.i[1]";
connectAttr "ShoulderXVec.ox" "ShoulderAlignedFBM.i00";
connectAttr "ShoulderXVec.oy" "ShoulderAlignedFBM.i01";
connectAttr "ShoulderXVec.oz" "ShoulderAlignedFBM.i02";
connectAttr "ShoulderYVec.ox" "ShoulderAlignedFBM.i10";
connectAttr "ShoulderYVec.oy" "ShoulderAlignedFBM.i11";
connectAttr "ShoulderYVec.oz" "ShoulderAlignedFBM.i12";
connectAttr "ShoulderZVec.oy" "ShoulderAlignedFBM.i21";
connectAttr "ShoulderZVec.ox" "ShoulderAlignedFBM.i20";
connectAttr "ShoulderZVec.oz" "ShoulderAlignedFBM.i22";
connectAttr "FitShoulderDM.otx" "ShoulderAlignedFBM.i30";
connectAttr "FitShoulderDM.oty" "ShoulderAlignedFBM.i31";
connectAttr "FitShoulderDM.otz" "ShoulderAlignedFBM.i32";
connectAttr "Shoulder2ElbowVecPM.o3" "ShoulderXVec.i1";
connectAttr "FitElbowDM.ot" "Shoulder2ElbowVecPM.i3[0]";
connectAttr "FitShoulderDM.ot" "Shoulder2ElbowVecPM.i3[1]";
connectAttr "FitElbow.wm" "FitElbowDM.imat";
connectAttr "FitShoulder.wm" "FitShoulderDM.imat";
connectAttr "Shoulder2WristVecPM.o3" "ShoulderYVec.i1";
connectAttr "Shoulder2ElbowVecPM.o3" "ShoulderYVec.i2";
connectAttr "FitShoulderDM.ot" "Shoulder2WristVecPM.i3[0]";
connectAttr "FitWristDM.ot" "Shoulder2WristVecPM.i3[1]";
connectAttr "FitWrist.wm" "FitWristDM.imat";
connectAttr "Shoulder2ElbowVecPM.o3" "ShoulderZVec.i1";
connectAttr "ShoulderYVec.o" "ShoulderZVec.i2";
connectAttr "Shoulder2ElbowInitMM.o" "Shoulder2ElbowInitDM.imat";
connectAttr "ElbowAlignedFBM.o" "Shoulder2ElbowInitMM.i[0]";
connectAttr "FitInitShoulder.wim" "Shoulder2ElbowInitMM.i[1]";
connectAttr "ElbowXVec.ox" "ElbowAlignedFBM.i00";
connectAttr "ElbowXVec.oy" "ElbowAlignedFBM.i01";
connectAttr "ElbowXVec.oz" "ElbowAlignedFBM.i02";
connectAttr "ElbowYVec.ox" "ElbowAlignedFBM.i10";
connectAttr "ElbowYVec.oy" "ElbowAlignedFBM.i11";
connectAttr "ElbowYVec.oz" "ElbowAlignedFBM.i12";
connectAttr "ElbowZVec.ox" "ElbowAlignedFBM.i20";
connectAttr "ElbowZVec.oy" "ElbowAlignedFBM.i21";
connectAttr "ElbowZVec.oz" "ElbowAlignedFBM.i22";
connectAttr "FitElbowDM.otx" "ElbowAlignedFBM.i30";
connectAttr "FitElbowDM.oty" "ElbowAlignedFBM.i31";
connectAttr "FitElbowDM.otz" "ElbowAlignedFBM.i32";
connectAttr "Elbow2WristVecPM.o3" "ElbowXVec.i1";
connectAttr "FitWristDM.ot" "Elbow2WristVecPM.i3[0]";
connectAttr "FitElbowDM.ot" "Elbow2WristVecPM.i3[1]";
connectAttr "Elbow2WristVecPM.o3" "ElbowYVec.i1";
connectAttr "Elbow2ShoulderVecPM.o3" "ElbowYVec.i2";
connectAttr "FitShoulderDM.ot" "Elbow2ShoulderVecPM.i3[0]";
connectAttr "FitElbowDM.ot" "Elbow2ShoulderVecPM.i3[1]";
connectAttr "Elbow2WristVecPM.o3" "ElbowZVec.i1";
connectAttr "ElbowYVec.o" "ElbowZVec.i2";
connectAttr "WristAlignedInitMM.o" "WristAlignedInitDM.imat";
connectAttr "FitWrist.wm" "WristAlignedInitMM.i[0]";
connectAttr "FitInitElbow.wim" "WristAlignedInitMM.i[1]";
connectAttr "FitArm.Mirror" "MirrorCD.ft";
connectAttr "FitInitElbow.wm" "Elbow2ShoulderDB.im1";
connectAttr "FitInitShoulder.wm" "Elbow2ShoulderDB.im2";
connectAttr "ShoulderLocalMM.o" "ShoulderLocalDM.imat";
connectAttr "FitInitShoulder.wm" "ShoulderLocalMM.i[0]";
connectAttr "ScapulaJnt.wim" "ShoulderLocalMM.i[1]";
connectAttr "FitInitWrist.wm" "Wrist2ElbowDB.im1";
connectAttr "FitInitElbow.wm" "Wrist2ElbowDB.im2";
connectAttr "ElbowLocalMM.o" "ElbowLocalDM.imat";
connectAttr "FitInitElbow.wm" "ElbowLocalMM.i[0]";
connectAttr "ShoulderJnt.wim" "ElbowLocalMM.i[1]";
connectAttr "FitShoulderDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FitElbowDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FitWristDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Shoulder2ElbowVecPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Shoulder2WristVecPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShoulderYVec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShoulderZVec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShoulderAlignedFBM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShoulderXVec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShoulderAlignedDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Elbow2ShoulderVecPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Elbow2WristVecPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ElbowYVec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ElbowZVec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ElbowXVec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ElbowAlignedFBM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Shoulder2ElbowInitDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Shoulder2ElbowInitMM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "WristAlignedInitMM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "WristAlignedInitDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FitArmSpaceMM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FitArmSpaceDM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShoulderAlignedMM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Elbow2ShoulderDB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Wrist2ElbowDB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "MirrorCD.msg" ":defaultRenderUtilityList1.u" -na;
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
// End of FitArm.ma
