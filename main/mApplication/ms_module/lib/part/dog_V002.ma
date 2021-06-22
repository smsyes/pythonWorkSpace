//Maya ASCII 2019 scene
//Name: dog_V002.ma
//Last modified: Tue, Jun 22, 2021 07:16:35 PM
//Codeset: 949
file -rdi 1 -ns ":" -rfn "fit_q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
file -rdi 1 -ns ":" -rfn "fit_q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -rdi 1 -ns ":" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "D:/rnd/quadruped/dog/data/model.ma";
file -rdi 1 -ns ":" -rfn "q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
file -rdi 1 -ns ":" -rfn "q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_leg.ma";
file -r -ns ":" -dr 1 -rfn "fit_q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
file -r -ns ":" -dr 1 -rfn "fit_q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
file -r -ns ":" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "D:/rnd/quadruped/dog/data/model.ma";
file -r -ns ":" -dr 1 -rfn "q_armRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
file -r -ns ":" -dr 1 -rfn "q_legRN" -op "v=0;" -typ "mayaAscii" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_leg.ma";
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires -nodeType "aiOptions" "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "D1DDC786-4B4E-249F-2166-529FA35CCDAA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 165.20560595041067 82.743351469218879 78.216891573317 ;
	setAttr ".r" -type "double3" -15.338352729231609 63.79999999995615 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BE87CB54-442C-1E87-7AB3-B8A1A7A463C2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 196.82056902912467;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "DF8F104F-446B-66CA-0416-F7B54957B4DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "224E1D1E-4A27-BE89-159E-FBAEC5635159";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "98751216-4045-B135-4616-2392CFA64298";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0C95A59E-4F9C-F445-0798-97A906029A94";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C2DEE88B-480F-5D52-5490-A9B6098559AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0965FEF6-431F-7ACB-D566-6397F93C5D48";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "spine_GRP";
	rename -uid "380A1099-48CF-92E8-CAE6-45B5C2E3C20D";
createNode transform -n "spine_motion_GRP" -p "spine_GRP";
	rename -uid "78C2AB33-49F2-0D87-8A87-F78BE182F01E";
	setAttr ".v" no;
createNode transform -n "motion_IK_spine_GRP" -p "spine_motion_GRP";
	rename -uid "D96B9CA6-4FFF-BB80-B820-58ACB9EB12C8";
createNode joint -n "IK_M_spine_01_JNT" -p "motion_IK_spine_GRP";
	rename -uid "E69430EA-4EA5-DFD0-1975-C795FF9EE347";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -1.5062897430848899e-12 -89.879018962979004 -89.999999999993989 ;
	setAttr ".radi" 2;
createNode joint -n "IK_M_spine_02_JNT" -p "IK_M_spine_01_JNT";
	rename -uid "BFB407AA-4F57-DA4C-A263-8FB639B22CC9";
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode joint -n "IK_M_spine_03_JNT" -p "IK_M_spine_02_JNT";
	rename -uid "78CB7BEB-4B86-7544-BC7B-00AEF465E60D";
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode joint -n "IK_M_spine_04_JNT" -p "IK_M_spine_03_JNT";
	rename -uid "E5C2F988-4F37-34A6-F161-E6AF5E9E892C";
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode joint -n "IK_M_spine_05_JNT" -p "IK_M_spine_04_JNT";
	rename -uid "529C0FDC-444B-4D76-63BE-CE9936BFEA03";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode parentConstraint -n "IK_M_spine_05_JNT_parentConstraint1" -p "IK_M_spine_05_JNT";
	rename -uid "EDA3DCAD-401F-28B4-2961-F086EC59F6CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_05_spaceW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 8.7525365245255671e-05 -0.0010490471289998429 
		-0.0013521315264810596 ;
	setAttr ".rst" -type "double3" 16.020193201041177 -5.2760822485844842e-07 -1.4247102633646591e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_04_JNT_parentConstraint1" -p "IK_M_spine_04_JNT";
	rename -uid "6DE6A328-4065-9207-5D41-81AAF23DCBE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_04_spaceW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -0.00029198653227480165 -0.001020573605509778 
		-0.0013593224167607332 ;
	setAttr ".tg[0].tor" -type "double3" 1.1872472534703034 0 0 ;
	setAttr ".lr" -type "double3" -1.987846675914698e-16 0 0 ;
	setAttr ".rst" -type "double3" 5.7008202487564548 9.6727582746618766e-05 -8.1094629031497334e-05 ;
	setAttr ".rsrr" -type "double3" -1.987846675914698e-16 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_03_JNT_parentConstraint1" -p "IK_M_spine_03_JNT";
	rename -uid "A9E09CD5-42E3-D28F-827B-53AC74CA07A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_03_spaceW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -0.0001526303568084586 -0.0011401129498787854 
		-0.0012614491578659681 ;
	setAttr ".tg[0].tor" -type "double3" 0.23362749393604479 0 0 ;
	setAttr ".rst" -type "double3" 5.2875999904667212 1.038154043077181e-05 -4.8884670839299815e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_02_JNT_parentConstraint1" -p "IK_M_spine_02_JNT";
	rename -uid "38F6DB5A-423B-5246-841B-22BEC12EE242";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_02_spaceW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -2.3842493973802448e-05 -0.0011538456853246171 
		-0.0012096084017372277 ;
	setAttr ".tg[0].tor" -type "double3" 0.084513269664308319 0 0 ;
	setAttr ".rst" -type "double3" 5.3118251448159626 -0.0011556286439621977 -0.0012079053601112832 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_01_JNT_parentConstraint1" -p "IK_M_spine_01_JNT";
	rename -uid "2AD506E5-49ED-813E-6092-5AA84838A944";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_01_spaceW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.1189453275051164e-07 -2.4466175613246932e-11 
		2.099369567076792e-10 ;
	setAttr ".tg[0].tor" -type "double3" 0.029794221505004739 0.013465794381526843 -0.012465041942645295 ;
	setAttr ".lr" -type "double3" 9.5416640443905519e-15 -3.1805546814635176e-15 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 2.3618849749551907e-15 40.881076812744098 -18.107978708906042 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905519e-15 -3.1805546814635176e-15 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode transform -n "IK_space_GRP" -p "motion_IK_spine_GRP";
	rename -uid "8CEE89CE-4C16-274F-9951-C19309E3D5E7";
createNode transform -n "IK_M_spine_01_space_offGRP" -p "IK_space_GRP";
	rename -uid "37FBC7A9-4010-4E0F-B5A4-33A009084141";
createNode transform -n "M_hip_space_offGRP" -p "IK_M_spine_01_space_offGRP";
	rename -uid "89786E2B-4D12-E78C-8035-60A106F98D81";
	setAttr ".t" -type "double3" 5.3118244490003619 -0.0023106198174556968 -0.0024569040280368881 ;
	setAttr ".r" -type "double3" 0.059505805317998595 0.0755684674091463 -0.069892556738224934 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 1 ;
createNode transform -n "M_hip_space" -p "M_hip_space_offGRP";
	rename -uid "B4A9E38D-4B59-98C7-472C-B781DE02FA68";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 8.6736173798840355e-19 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999989 ;
createNode locator -n "M_hip_spaceShape" -p "M_hip_space";
	rename -uid "499611AE-486B-BFC1-7887-089B456AFD28";
	setAttr -k off ".v";
createNode transform -n "IK_M_spine_01_space_spcGRP" -p "M_hip_space";
	rename -uid "30CDC97B-45F7-D15F-D22A-F08F8620A21B";
	setAttr ".t" -type "double3" -5.3118219358752281 -0.0041737593433014827 -0.0045446261742867478 ;
	setAttr ".r" -type "double3" -0.059597995322614471 -0.075495781928779454 0.069971063060630917 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "IK_M_spine_01_space" -p "IK_M_spine_01_space_spcGRP";
	rename -uid "271B5E9A-40BB-F767-58BC-8C8692265F8F";
	setAttr ".t" -type "double3" 0 8.0779356694631609e-28 0 ;
	setAttr ".dla" yes;
createNode locator -n "IK_M_spine_01_spaceShape" -p "IK_M_spine_01_space";
	rename -uid "19C0FEB0-4BB3-198C-E5EF-DCACAA34CFA6";
	setAttr -k off ".v";
createNode orientConstraint -n "IK_M_spine_01_space_offGRP_orientConstraint1" -p "IK_M_spine_01_space_offGRP";
	rename -uid "0FEA6EEB-486E-E296-5B4D-D891967C10B4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_01_CTLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -6.646273198621504 -89.89175734064041 -83.383509320188708 ;
	setAttr ".rsrr" -type "double3" -6.646273198621504 -89.89175734064041 -83.383509320188708 ;
	setAttr -k on ".w0";
createNode transform -n "IK_M_spine_02_space_offGRP" -p "IK_space_GRP";
	rename -uid "541AC3D6-4237-E50A-0A98-BAA53DE0C470";
createNode transform -n "IK_M_spine_02_space_spcGRP" -p "IK_M_spine_02_space_offGRP";
	rename -uid "AF02FC5B-47D1-FE20-93D3-2C8812774DC1";
createNode transform -n "IK_M_spine_02_space" -p "IK_M_spine_02_space_spcGRP";
	rename -uid "9E3534D9-455A-2A8B-19B4-689A29220C04";
	setAttr ".dla" yes;
createNode locator -n "IK_M_spine_02_spaceShape" -p "IK_M_spine_02_space";
	rename -uid "2841092C-4681-2194-77E9-33AC39A4AC03";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_M_spine_02_space_offGRP_aimConstraint1" -p "IK_M_spine_02_space_offGRP";
	rename -uid "81A8E468-436E-A866-B44B-C5BE7CC6DCD5";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_M_spine_03_spaceW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -0.084513269656674328 0 0 ;
	setAttr ".rsrr" -type "double3" -44.402643693113617 -89.917665195688912 -45.711565082176925 ;
	setAttr -k on ".w0";
createNode transform -n "IK_M_spine_03_space_offGRP" -p "IK_space_GRP";
	rename -uid "77544478-409F-0EE8-C42C-12B389FC40D7";
createNode transform -n "IK_M_spine_03_space_spcGRP" -p "IK_M_spine_03_space_offGRP";
	rename -uid "4FE1DD72-4020-C267-3244-239F7D2C05CF";
createNode transform -n "IK_M_spine_03_space" -p "IK_M_spine_03_space_spcGRP";
	rename -uid "8AE26714-4E9C-F859-88C3-B995D83FF855";
	setAttr ".t" -type "double3" 0 -8.0779356694631609e-28 0 ;
	setAttr ".dla" yes;
createNode locator -n "IK_M_spine_03_spaceShape" -p "IK_M_spine_03_space";
	rename -uid "269E55A9-48A0-6E8A-5D6C-5ABF4CE94AEF";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_M_spine_03_space_offGRP_aimConstraint1" -p "IK_M_spine_03_space_offGRP";
	rename -uid "737EB252-4D1E-6889-FE91-C9AFDA1B24B4";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_M_spine_04_spaceW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -0.23362749392849683 0 0 ;
	setAttr ".rsrr" -type "double3" -108.16540898563288 -89.832297633509128 17.818017587463036 ;
	setAttr -k on ".w0";
createNode transform -n "IK_M_spine_04_space_offGRP" -p "IK_space_GRP";
	rename -uid "AA50338A-401A-7836-C88F-9BBE21656F82";
createNode transform -n "IK_M_spine_04_space_spcGRP" -p "IK_M_spine_04_space_offGRP";
	rename -uid "909EDCF7-4997-4FF0-C39E-1F93C68F6D0D";
createNode transform -n "IK_M_spine_04_space" -p "IK_M_spine_04_space_spcGRP";
	rename -uid "48D7A30F-4E65-45A3-4FC6-7CAB780EC9EC";
	setAttr ".t" -type "double3" 0 -8.0779356694631609e-28 0 ;
	setAttr ".dla" yes;
createNode locator -n "IK_M_spine_04_spaceShape" -p "IK_M_spine_04_space";
	rename -uid "1D78626D-46E0-C295-FA02-979287E95C47";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_M_spine_04_space_offGRP_aimConstraint1" -p "IK_M_spine_04_space_offGRP";
	rename -uid "704BC533-4AFB-88BA-2516-9E80CAEBA87D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_M_spine_05_spaceW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -1.1872472534587728 0 0 ;
	setAttr ".rsrr" -type "double3" 19.555883652633078 -89.777874752504147 -111.09197804321209 ;
	setAttr -k on ".w0";
createNode transform -n "IK_M_spine_05_space_offGRP" -p "IK_space_GRP";
	rename -uid "91E421B9-4238-C5BE-809A-C5A458965618";
createNode transform -n "IK_M_spine_05_space_spcGRP" -p "IK_M_spine_05_space_offGRP";
	rename -uid "D1287016-42E5-5EBB-F26C-7CA4CCA718C1";
createNode transform -n "IK_M_spine_05_space" -p "IK_M_spine_05_space_spcGRP";
	rename -uid "615F415B-4788-C01E-23B7-65853CF338C4";
	setAttr ".t" -type "double3" 0 8.0779356694631609e-28 0 ;
	setAttr ".dla" yes;
createNode locator -n "IK_M_spine_05_spaceShape" -p "IK_M_spine_05_space";
	rename -uid "BD5A9111-4ADD-B197-66D6-08871DBCCE51";
	setAttr -k off ".v";
createNode orientConstraint -n "IK_M_spine_05_space_offGRP_orientConstraint1" -p "IK_M_spine_05_space_offGRP";
	rename -uid "7EF42A86-4A56-F30C-1C79-6D925F9B78AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_03_CTLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 0 -89.879018962979075 -90.000000000006025 ;
	setAttr ".rsrr" -type "double3" 38.183707109469815 -88.469308960246593 -129.74087773326966 ;
	setAttr -k on ".w0";
createNode transform -n "IK_upVec_GRP" -p "motion_IK_spine_GRP";
	rename -uid "2A4AE488-48AC-0E75-C693-F18B66B12835";
	setAttr ".v" no;
createNode transform -n "IK_M_spine_01_upVec" -p "IK_upVec_GRP";
	rename -uid "9FF2C29C-4551-3F43-8E24-28B239E89FAB";
	setAttr ".r" -type "double3" 0 -89.879018962979103 -90 ;
createNode locator -n "IK_M_spine_01_upVecShape" -p "IK_M_spine_01_upVec";
	rename -uid "81B450B5-415A-C224-780D-A48133F6F8B2";
	setAttr -k off ".v";
createNode transform -n "IK_M_spine_02_upVec" -p "IK_upVec_GRP";
	rename -uid "F993A123-4C4A-3E23-0727-BD8E2679A958";
	setAttr ".r" -type "double3" 0 -89.879018962979245 -90 ;
createNode locator -n "IK_M_spine_02_upVecShape" -p "IK_M_spine_02_upVec";
	rename -uid "9F0F1085-4A08-89C2-8F19-C8A62CE01A52";
	setAttr -k off ".v";
createNode transform -n "IK_M_spine_03_upVec" -p "IK_upVec_GRP";
	rename -uid "A9A797C1-4FCC-A6DE-3A04-CB8036888B54";
	setAttr ".r" -type "double3" -1.5062897430885333e-12 -89.879018962979288 -89.999999999993989 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "IK_M_spine_03_upVecShape" -p "IK_M_spine_03_upVec";
	rename -uid "11C19832-45A4-7574-5741-80849FC9078F";
	setAttr -k off ".v";
createNode transform -n "IK_M_spine_04_upVec" -p "IK_upVec_GRP";
	rename -uid "0AD39E45-4A5E-2502-5F9C-DA86F08A0DA7";
	setAttr ".r" -type "double3" 0 -89.879018962979075 -90 ;
createNode locator -n "IK_M_spine_04_upVecShape" -p "IK_M_spine_04_upVec";
	rename -uid "96BAA3EE-46A3-810E-5C0B-4EBBAAD1C839";
	setAttr -k off ".v";
createNode transform -n "IK_M_spine_05_upVec" -p "IK_upVec_GRP";
	rename -uid "CCDA5E63-486F-CD14-2557-E4B5202EEAB5";
	setAttr ".r" -type "double3" -1.5062897430848899e-12 -89.879018962979004 -89.999999999993989 ;
createNode locator -n "IK_M_spine_05_upVecShape" -p "IK_M_spine_05_upVec";
	rename -uid "FB97461E-4FA8-6F92-86B6-53BF3402F652";
	setAttr -k off ".v";
createNode transform -n "IK_CRV_GRP" -p "motion_IK_spine_GRP";
	rename -uid "27BE1D1D-4853-84DE-1985-DF8D4982FA42";
createNode transform -n "IK_CRV" -p "IK_CRV_GRP";
	rename -uid "EDD31E72-4DBE-DAA1-718F-C5AFBF7A9D15";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "IK_CRVShape" -p "IK_CRV";
	rename -uid "857BE734-4588-B059-B46B-418A06AC340C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "IK_CRVShapeOrig" -p "IK_CRV";
	rename -uid "97D72582-4523-2505-8171-C0B369C5B44F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		4.4841550858394146e-44 40.881076812744141 -18.107978820800781
		1.7936620343357659e-43 40.869702657044748 -12.721265624881539
		9.0709143339100987e-28 40.846954345703146 -1.9478392601013246
		1.8141828667820219e-27 40.824206034361488 8.8255871046788972
		1.8141828667820219e-27 40.812831878662102 14.212300300598145
		;
createNode transform -n "IK_upVec_CRV" -p "IK_CRV_GRP";
	rename -uid "815DEA26-40D5-1083-0DDA-96BDDFD4E409";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "IK_upVec_CRVShape" -p "IK_upVec_CRV";
	rename -uid "ED07DD89-4EC8-C3C6-CE9E-12B6B2492F5E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "IK_upVec_CRVShapeOrig" -p "IK_upVec_CRV";
	rename -uid "7FA04360-418B-35CF-F97C-819BF657704F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		-2.6576998090952781e-16 45.881065368652344 -18.097421646118161
		-2.6576998090966665e-16 45.869691212952944 -12.710708450198917
		-2.6297230427367458e-13 45.846942901611364 -1.9372820854187145
		-5.2567883856644026e-13 45.824194590269691 8.8361442793615179
		-5.2567883856644026e-13 45.812820434570313 14.222857475280762
		;
createNode transform -n "motion_FK_spine_GRP" -p "spine_motion_GRP";
	rename -uid "A1A89B2B-4AA3-6E74-FE65-8B9A9C092839";
createNode joint -n "FK_M_spine_01_JNT" -p "motion_FK_spine_GRP";
	rename -uid "9314752C-4A98-E32E-BE80-A09D7644FC28";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 -89.879018962979004 -89.999999999993989 ;
	setAttr ".radi" 2;
createNode joint -n "FK_M_spine_02_JNT" -p "FK_M_spine_01_JNT";
	rename -uid "463E9FAC-488C-C59C-246F-31ACB81EB0C9";
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode joint -n "FK_M_spine_03_JNT" -p "FK_M_spine_02_JNT";
	rename -uid "D3D845CB-4DCF-EBEF-A1CF-A2AEB28A78A2";
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode joint -n "FK_M_spine_04_JNT" -p "FK_M_spine_03_JNT";
	rename -uid "146F5F9B-46AA-93A2-2819-3A829C26545C";
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode joint -n "FK_M_spine_05_JNT" -p "FK_M_spine_04_JNT";
	rename -uid "FFA09EA4-48C6-546A-038E-339867F4E7D8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode parentConstraint -n "FK_M_spine_05_JNT_parentConstraint1" -p "FK_M_spine_05_JNT";
	rename -uid "FC4DD084-4FBD-5481-9433-1EB4768E6A05";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_M_spine_05_CTLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -2.4233807008389483e-27 
		-2.1316282072803006e-14 ;
	setAttr ".rst" -type "double3" 16.019813801038087 -3.3337113444067419e-15 -1.3677822316537913e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_M_spine_04_JNT_parentConstraint1" -p "FK_M_spine_04_JNT";
	rename -uid "627B49B3-43F9-B73A-61AD-1F9913D17605";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_M_spine_04_CTLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.9984014443252818e-15 1.6155871338926322e-27 
		-7.1054273576010019e-15 ;
	setAttr ".rst" -type "double3" 5.7009596049319162 -1.4579502579235421e-15 1.273981327187812e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_M_spine_03_JNT_parentConstraint1" -p "FK_M_spine_03_JNT";
	rename -uid "BF4961FC-4186-CDA3-FF67-2FA2A826D631";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_M_spine_03_CTLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 1.6155871338926322e-27 -1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" 5.2877287783295621 -1.2786637564043557e-15 -3.9540202926957591e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_M_spine_02_JNT_parentConstraint1" -p "FK_M_spine_02_JNT";
	rename -uid "1A4B6212-4E1A-693F-4FC5-9582F8CD762B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_M_spine_02_CTLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 -7.1054273576010019e-15 ;
	setAttr ".rst" -type "double3" 5.3118489873099346 -1.2274459838694264e-15 4.0478211936090247e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FK_M_spine_01_JNT_parentConstraint1" -p "FK_M_spine_01_JNT";
	rename -uid "299563E4-4D46-35CA-8859-C0BB53B84825";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "M_hip_FK_spaceW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.3118218239811199 -0.0041737592309026026 
		-0.0045446258168482245 ;
	setAttr ".tg[0].tor" -type "double3" -0.029787331038885437 -0.062042958941828319 
		0.057492014024933424 ;
	setAttr ".lr" -type "double3" 1.272221872585407e-14 6.3611093629270327e-15 1.272221872585407e-14 ;
	setAttr ".rst" -type "double3" 1.7347234759768071e-18 40.881076812744119 -18.107978708906046 ;
	setAttr ".rsrr" -type "double3" 1.272221872585407e-14 6.3611093629270327e-15 1.272221872585407e-14 ;
	setAttr -k on ".w0";
createNode transform -n "spine_CTL_GRP" -p "spine_GRP";
	rename -uid "EA491DC8-4049-AA20-5702-FD87383EC554";
createNode transform -n "M_root_JNT_offGRP" -p "spine_CTL_GRP";
	rename -uid "5B144D7A-40F5-E89F-1BF8-F0BA60145AC9";
	setAttr ".t" -type "double3" 2.3628837504563106e-15 40.881076812744098 -18.107978708906046 ;
	setAttr ".r" -type "double3" -1.5062897430848899e-12 -89.879018962979004 -89.999999999993989 ;
createNode transform -n "M_root_JNT_spcGRP" -p "M_root_JNT_offGRP";
	rename -uid "0A331963-4BF3-755B-EEA9-8BBD2DEE5722";
createNode transform -n "M_root_JNT" -p "M_root_JNT_spcGRP";
	rename -uid "68FFB738-4963-4E83-B8B2-68873972E6B1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "M_root_JNTShape" -p "M_root_JNT";
	rename -uid "B84FDB2D-4A31-4BB3-4C69-5690B9A6AC3B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-1.0017787204398842e-14 -1.0017787204398831e-14 14.949999999999987
		-9.196587296812592e-15 -5.7211108500000076 13.812005999999986
		-6.8579907707065282e-15 -10.571249649999995 10.571249649999995
		-3.935346695971394e-15 -13.812005999999986 5.7211108499999925
		7.7044069347620563e-16 -14.949999999999987 -1.0824674490095275e-14
		5.4762280829238007e-15 -13.812005999999981 -5.7211108500000103
		8.6875301440614663e-15 -10.571249649999981 -10.57124965
		1.0881797676966262e-14 -5.721110849999989 -13.812005999999995
		1.1558668591351238e-14 1.1558668591351229e-14 -14.949999999999987
		1.0448810697362447e-14 5.7211108500000085 -13.812005999999986
		6.6669242392436724e-15 10.571249649999999 -10.571249649999984
		5.4762280829237857e-15 13.812005999999986 -5.721110849999989
		7.7044069347618995e-16 14.949999999999987 1.0824674490095275e-14
		-3.9353466959714082e-15 13.812005999999981 5.721110850000013
		-6.2806747979014591e-15 10.571249649999983 10.571249650000009
		-9.7739032696176801e-15 5.7211108499999899 13.812005999999995
		-1.0017787204398842e-14 -1.0017787204398831e-14 14.949999999999987
		;
createNode transform -n "IK_spine_CTL_GRP" -p "spine_CTL_GRP";
	rename -uid "F542B099-46AE-6635-74F2-9EABC2F0FD6A";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".offset" -type "matrix" 2.7727741085635832e-16 1 -1.0502674678498485e-13 0
		 -0.0021115158594586236 1.0508284387584875e-13 0.99999777074790275 0 0.99999777074790286 -1.6051388198805808e-19 0.0021115158594586236 0
		 18.194259383698391 -4.2982656025225821e-12 -40.842750394291279 1;
createNode transform -n "IK_M_spine_01_CTL_offGRP" -p "IK_spine_CTL_GRP";
	rename -uid "A4731F47-405D-6AD9-F762-02A7971EB7AF";
	setAttr ".t" -type "double3" 4.4841550858394146e-44 40.881076812744141 -18.107978820800781 ;
createNode transform -n "IK_M_spine_01_CTL_spcGRP" -p "IK_M_spine_01_CTL_offGRP";
	rename -uid "9EBAEA5F-4837-2612-2466-1787BF0FBE35";
createNode transform -n "IK_M_spine_01_CTL" -p "IK_M_spine_01_CTL_spcGRP";
	rename -uid "EAE382CF-445F-A6CA-64CC-B4983566C58C";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_M_spine_01_CTLShape" -p "IK_M_spine_01_CTL";
	rename -uid "BE0C2C20-4027-9AA5-A274-64B83136DC4E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.8835517728787935e-15 -10.996279619336125 -0.032106481784231367
		4.4265607124075856 -10.653098386577964 0.0014755197896705319
		8.5474387053000047 -8.4832257417315429 0.032106481784235807
		10.686680630206734 -4.3929787956842699 0.0014755352013291478
		10.99627961933613 7.7715611723760958e-16 -0.032106481784227814
		10.686680630206734 4.4601428296553891 0.0014755352013273715
		8.5474387052999958 8.6116516688684559 0.032106481784234031
		4.4265608126698259 10.720262647192296 0.0014755352013255951
		-4.3689957444886436e-15 10.996279619336118 -0.032106481784231367
		-4.4265608126698339 10.720262647192294 0.0014755352013242629
		-8.5474387053000083 8.6116516688684452 0.032106481784226037
		-10.686680630206734 4.4601428296553802 0.0014755352013207101
		-10.99627961933613 -7.6605388699135801e-15 -0.032106481784236696
		-10.686680630206734 -4.3929787956842832 0.0014755352013207101
		-8.5474387052999958 -8.4832257417315429 0.032106481784228258
		-4.4265607124075794 -10.653098386577964 0.0014755197896656469
		3.8835517728787935e-15 -10.996279619336125 -0.032106481784231367
		;
createNode joint -n "IK_M_spine_01_bindJNT" -p "IK_M_spine_01_CTL";
	rename -uid "2BCCFD3D-4C00-267A-0619-89BCCD479774";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4841550858394146e-44 40.881076812744141 -18.107978820800781 1;
createNode transform -n "IK_M_spine_02_CTL_offGRP" -p "IK_spine_CTL_GRP";
	rename -uid "D592690C-45E3-6AC4-2F77-A3A3876BDC1C";
	setAttr ".t" -type "double3" 9.0709143339100987e-28 40.846954345703146 -1.9478392601013246 ;
createNode transform -n "IK_M_spine_02_CTL_spcGRP" -p "IK_M_spine_02_CTL_offGRP";
	rename -uid "119BE3CE-4376-9EAD-3AAD-DF85A93E0AC3";
createNode transform -n "IK_M_spine_02_CTL" -p "IK_M_spine_02_CTL_spcGRP";
	rename -uid "F39048AA-43DE-1320-3F86-7BA87A602A3A";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_M_spine_02_CTLShape" -p "IK_M_spine_02_CTL";
	rename -uid "0B1E221C-4FB4-EC80-5E50-5D8CA8C4FE81";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.1896623824880707e-15 -10.996561906933788 0.10825518489515762
		4.4265607124075856 -10.653380674175628 0.14183718646905963
		8.5474387053000047 -8.4835080293292062 0.1724681484636249
		10.686680630206734 -4.3932610832819332 0.14183720188071824
		10.99627961933613 -0.00028228759766257827 0.10825518489516128
		10.686680630206734 4.4598605420577258 0.14183720188071647
		8.5474387052999958 8.6113693812707925 0.17246814846362291
		4.4265608126698259 10.719980359594633 0.14183720188071447
		-5.0628851348793664e-15 10.995997331738455 0.10825518489515762
		-4.4265608126698339 10.719980359594631 0.14183720188071303
		-8.5474387053000083 8.6113693812707819 0.17246814846361491
		-10.686680630206734 4.4598605420577169 0.14183720188070981
		-10.99627961933613 -0.00028228759767101597 0.10825518489515218
		-10.686680630206734 -4.3932610832819465 0.14183720188070981
		-8.5474387052999958 -8.4835080293292062 0.17246814846361702
		-4.4265607124075794 -10.653380674175628 0.14183718646905441
		3.1896623824880707e-15 -10.996561906933788 0.10825518489515762
		;
createNode joint -n "IK_M_spine_02_bindJNT" -p "IK_M_spine_02_CTL";
	rename -uid "D789F99F-40EC-E49A-7EAF-90852992DA37";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0709143339100987e-28 40.846954345703146 -1.9478392601013246 1;
createNode transform -n "IK_M_spine_03_CTL_offGRP" -p "IK_spine_CTL_GRP";
	rename -uid "AAD21604-42B9-CE55-1ED2-1F85C0EA7FC3";
	setAttr ".t" -type "double3" 1.8141828667820219e-27 40.812831878662102 14.212300300598145 ;
createNode transform -n "IK_M_spine_03_CTL_spcGRP" -p "IK_M_spine_03_CTL_offGRP";
	rename -uid "66C90072-4128-D069-9EC3-F29A3FE2531F";
createNode transform -n "IK_M_spine_03_CTL" -p "IK_M_spine_03_CTL_spcGRP";
	rename -uid "93D08919-454F-53DE-8F56-DB9BB9D70911";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_M_spine_03_CTLShape" -p "IK_M_spine_03_CTL";
	rename -uid "BDAF17BE-4866-8C38-1989-4EBFCE6BDDDC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.0010507219401603152 -10.997481321315934 -0.063609129753549987
		4.4255100907296683 -10.654300315200992 -0.03002711276799036
		8.5463879833598391 -8.4844274437113434 0.00060383381491796451
		10.685629666211693 -4.394180412813494 -0.030027128179646756
		10.995228897395965 -0.0012017019798102879 -0.063609129753546767
		10.685629182101941 4.4589407806538599 -0.030027159002963544
		8.546387983359832 8.6104499668886554 0.00060383381491618815
		4.4255100907296594 10.719060945212487 -0.030027112767992581
		-0.001050721940169197 10.99507791735631 -0.063609129753549987
		-4.4276114343477513 10.719060687745948 -0.030027128179652085
		-8.5484894272401739 8.6104499668886447 0.0006038338149079725
		-10.687731110092024 4.4589410120016666 -0.030027128179654861
		-10.997330341276296 -0.0012017019798190587 -0.063609129753555871
		-10.6877313521469 -4.394180497664097 -0.030027112767997577
		-8.5484894272401615 -8.4844274437113434 0.00060383381491008192
		-4.4276114343477451 -10.654300088557772 -0.030027128179653195
		-0.0010507219401603152 -10.997481321315934 -0.063609129753549987
		;
createNode joint -n "IK_M_spine_03_bindJNT" -p "IK_M_spine_03_CTL";
	rename -uid "C3B4A3F7-4D11-4256-539D-BB974E874237";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.8141828667820219e-27 40.812831878662102 14.212300300598145 1;
createNode transform -n "FK_spine_CTL_GRP" -p "spine_CTL_GRP";
	rename -uid "250880FE-4ED9-4055-BA93-ECA30A794802";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".offset" -type "matrix" 2.7727741085635832e-16 1 -1.0502674678498485e-13 0
		 -0.0021115158594586236 1.0508284387584875e-13 0.99999777074790275 0 0.99999777074790286 -1.6051388198805808e-19 0.0021115158594586236 0
		 18.194259383698391 -4.2982656025225821e-12 -40.842750394291279 1;
createNode transform -n "FK_M_spine_01_CTL_offGRP" -p "FK_spine_CTL_GRP";
	rename -uid "A79FA0B9-4786-555E-28EB-11872E568945";
	setAttr ".t" -type "double3" -8.9377626011774398e-19 40.881076812744112 -18.107978708906046 ;
	setAttr ".r" -type "double3" -1.5062897430848899e-12 -89.879018962979004 -89.999999999993989 ;
createNode transform -n "FK_M_spine_01_CTL_spcGRP" -p "FK_M_spine_01_CTL_offGRP";
	rename -uid "D718732E-42F5-DAA5-A951-5B8141BE1BF6";
createNode transform -n "FK_M_spine_01_CTL" -p "FK_M_spine_01_CTL_spcGRP";
	rename -uid "A04B21F5-4030-68F3-0443-3EADD014FBCE";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_M_spine_01_CTLShape" -p "FK_M_spine_01_CTL";
	rename -uid "E8D6AD7B-439C-EE44-1C59-86B042A0EEFC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.8364200626727374e-15 -3.8364200626725757e-15 11.280000000000003
		-2.5749753853155861e-15 -4.3166642400000015 10.421366400000007
		-2.1270564616198014e-15 -7.9761669599999943 7.9761669599999943
		2.8852486784541128e-17 -10.421366400000007 4.316664239999997
		8.3234807444900786e-17 -11.279999999999998 -4.2266190547479726e-15
		4.5207776293253824e-15 -10.421366400000007 -4.3166642400000024
		4.4851063271196589e-15 -7.9761669599999916 -7.9761669600000014
		5.0895666972875895e-15 -4.3166642399999944 -10.421366400000007
		4.6290554634511264e-15 4.6290554634512881e-15 -11.280000000000003
		4.150318018454707e-15 4.3166642400000015 -10.421366400000007
		1.6673602906210107e-15 7.9761669599999943 -7.9761669599999943
		7.637829139938462e-16 10.421366400000007 -4.316664239999997
		7.0940059333348582e-16 11.279999999999998 4.2266190547479726e-15
		-3.7281422285469879e-15 10.421366400000007 4.3166642400000024
		-2.7532222475083897e-15 7.9761669599999925 7.9761669600000014
		-4.2969312965092068e-15 4.3166642399999944 10.421366400000007
		-3.8364200626727374e-15 -3.8364200626725757e-15 11.280000000000003
		;
createNode transform -n "FK_M_spine_02_CTL_offGRP" -p "FK_M_spine_01_CTL";
	rename -uid "A603E03E-4E88-907A-B1C2-89861B6B3C45";
	setAttr ".t" -type "double3" 5.3118489873099328 -1.2274459838686186e-15 4.0478211943195674e-05 ;
createNode transform -n "FK_M_spine_02_CTL_spcGRP" -p "FK_M_spine_02_CTL_offGRP";
	rename -uid "7AFDC1E1-4891-7A02-3F21-50B91006736C";
createNode transform -n "FK_M_spine_02_CTL" -p "FK_M_spine_02_CTL_spcGRP";
	rename -uid "02C93CAB-4EB5-C34F-27F5-E283D78FE212";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.0779356694631609e-28 0 ;
createNode nurbsCurve -n "FK_M_spine_02_CTLShape" -p "FK_M_spine_02_CTL";
	rename -uid "D5435CC8-4758-3614-B1CB-BEA1D9405499";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.8364200626727374e-15 -3.8364200626644346e-15 11.280000000000003
		-2.5749753853155861e-15 -4.3166642400000015 10.421366400000007
		-2.1270564616198014e-15 -7.9761669599999943 7.9761669599999943
		2.8852486784541128e-17 -10.421366400000007 4.316664239999997
		8.3234807444900786e-17 -11.279999999999998 -4.2266190547479726e-15
		4.5207776293253824e-15 -10.421366400000007 -4.3166642400000024
		4.4851063271196589e-15 -7.9761669599999916 -7.9761669600000014
		5.0895666972875895e-15 -4.3166642399999944 -10.421366400000007
		4.6290554634511264e-15 4.6290554634594315e-15 -11.280000000000003
		4.150318018454707e-15 4.3166642400000015 -10.421366400000007
		1.6673602906210107e-15 7.9761669599999943 -7.9761669599999943
		7.637829139938462e-16 10.421366400000007 -4.316664239999997
		7.0940059333348582e-16 11.279999999999998 4.2266190547479726e-15
		-3.7281422285469879e-15 10.421366400000007 4.3166642400000024
		-2.7532222475083897e-15 7.9761669599999925 7.9761669600000014
		-4.2969312965092068e-15 4.3166642399999944 10.421366400000007
		-3.8364200626727374e-15 -3.8364200626644346e-15 11.280000000000003
		;
createNode transform -n "FK_M_spine_03_CTL_offGRP" -p "FK_M_spine_02_CTL";
	rename -uid "8E490157-49FC-E03C-4F3E-439655CFF468";
	setAttr ".t" -type "double3" 5.2877287783295621 -1.2786637564051635e-15 -3.9540202919852163e-05 ;
createNode transform -n "FK_M_spine_03_CTL_spcGRP" -p "FK_M_spine_03_CTL_offGRP";
	rename -uid "4964A367-44AE-114E-EA30-3D8F894D5BA1";
createNode transform -n "FK_M_spine_03_CTL" -p "FK_M_spine_03_CTL_spcGRP";
	rename -uid "380B0E86-46D3-F77A-C9AC-7E8455BDB6B2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.0779356694631609e-28 0 ;
createNode nurbsCurve -n "FK_M_spine_03_CTLShape" -p "FK_M_spine_03_CTL";
	rename -uid "AE829170-4805-4309-21FE-EC9D75B69ACD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.8364200626727374e-15 -3.8364200626645963e-15 11.280000000000003
		-2.5749753853155861e-15 -4.3166642400000015 10.421366400000007
		-2.1270564616198014e-15 -7.9761669599999943 7.9761669599999943
		2.8852486784541128e-17 -10.421366400000007 4.316664239999997
		8.3234807444900786e-17 -11.279999999999998 -4.2266190547479726e-15
		4.5207776293253824e-15 -10.421366400000007 -4.3166642400000024
		4.4851063271196589e-15 -7.9761669599999916 -7.9761669600000014
		5.0895666972875895e-15 -4.3166642399999944 -10.421366400000007
		4.6290554634511264e-15 4.6290554634592698e-15 -11.280000000000003
		4.150318018454707e-15 4.3166642400000015 -10.421366400000007
		1.6673602906210107e-15 7.9761669599999943 -7.9761669599999943
		7.637829139938462e-16 10.421366400000007 -4.316664239999997
		7.0940059333348582e-16 11.279999999999998 4.2266190547479726e-15
		-3.7281422285469879e-15 10.421366400000007 4.3166642400000024
		-2.7532222475083897e-15 7.9761669599999925 7.9761669600000014
		-4.2969312965092068e-15 4.3166642399999944 10.421366400000007
		-3.8364200626727374e-15 -3.8364200626645963e-15 11.280000000000003
		;
createNode transform -n "FK_M_spine_04_CTL_offGRP" -p "FK_M_spine_03_CTL";
	rename -uid "5AD79DAB-448F-9362-E1AA-559C16A203BD";
	setAttr ".t" -type "double3" 5.700959604931918 -1.4579502579219265e-15 1.2739813264772692e-05 ;
createNode transform -n "FK_M_spine_04_CTL_spcGRP" -p "FK_M_spine_04_CTL_offGRP";
	rename -uid "F15D2169-493B-3614-A4B5-EA95A3322019";
createNode transform -n "FK_M_spine_04_CTL" -p "FK_M_spine_04_CTL_spcGRP";
	rename -uid "1EFF5484-46AE-6C75-799D-A79892FD31CB";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -1.6155871338926322e-27 0 ;
createNode nurbsCurve -n "FK_M_spine_04_CTLShape" -p "FK_M_spine_04_CTL";
	rename -uid "965B1096-4BD9-4B69-5747-99A24A999087";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.8364200626727374e-15 -3.8364200626562936e-15 11.280000000000003
		-2.5749753853155861e-15 -4.3166642400000015 10.421366400000007
		-2.1270564616198014e-15 -7.9761669599999943 7.9761669599999943
		2.8852486784541128e-17 -10.421366400000007 4.316664239999997
		8.3234807444900786e-17 -11.279999999999998 -4.2266190547479726e-15
		4.5207776293253824e-15 -10.421366400000007 -4.3166642400000024
		4.4851063271196589e-15 -7.9761669599999916 -7.9761669600000014
		5.0895666972875895e-15 -4.3166642399999944 -10.421366400000007
		4.6290554634511264e-15 4.6290554634675765e-15 -11.280000000000003
		4.150318018454707e-15 4.3166642400000015 -10.421366400000007
		1.6673602906210107e-15 7.9761669599999943 -7.9761669599999943
		7.637829139938462e-16 10.421366400000007 -4.316664239999997
		7.0940059333348582e-16 11.279999999999998 4.2266190547479726e-15
		-3.7281422285469879e-15 10.421366400000007 4.3166642400000024
		-2.7532222475083897e-15 7.9761669599999925 7.9761669600000014
		-4.2969312965092068e-15 4.3166642399999944 10.421366400000007
		-3.8364200626727374e-15 -3.8364200626562936e-15 11.280000000000003
		;
createNode transform -n "FK_M_spine_05_CTL_offGRP" -p "FK_M_spine_04_CTL";
	rename -uid "4BDEE40F-41E8-E59C-5788-88B88BDDAA82";
	setAttr ".t" -type "double3" 16.01981380103808 -3.3337113444010874e-15 -1.3677822302327058e-05 ;
createNode transform -n "FK_M_spine_05_CTL_spcGRP" -p "FK_M_spine_05_CTL_offGRP";
	rename -uid "FC4BB102-4D12-3272-B7C6-2BAC189C7A87";
createNode transform -n "FK_M_spine_05_CTL" -p "FK_M_spine_05_CTL_spcGRP";
	rename -uid "C31AFFB9-42AA-F70D-E6D9-21B42C0FCF30";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.0779356694631609e-28 0 ;
createNode nurbsCurve -n "FK_M_spine_05_CTLShape" -p "FK_M_spine_05_CTL";
	rename -uid "D15AA906-4D73-721F-D2AA-36A0922DB08E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.8364200626727374e-15 -3.8364200626645963e-15 11.280000000000003
		-2.5749753853155861e-15 -4.3166642400000015 10.421366400000007
		-2.1270564616198014e-15 -7.9761669599999943 7.9761669599999943
		2.8852486784541128e-17 -10.421366400000007 4.316664239999997
		8.3234807444900786e-17 -11.279999999999998 -4.2266190547479726e-15
		4.5207776293253824e-15 -10.421366400000007 -4.3166642400000024
		4.4851063271196589e-15 -7.9761669599999916 -7.9761669600000014
		5.0895666972875895e-15 -4.3166642399999944 -10.421366400000007
		4.6290554634511264e-15 4.6290554634592698e-15 -11.280000000000003
		4.150318018454707e-15 4.3166642400000015 -10.421366400000007
		1.6673602906210107e-15 7.9761669599999943 -7.9761669599999943
		7.637829139938462e-16 10.421366400000007 -4.316664239999997
		7.0940059333348582e-16 11.279999999999998 4.2266190547479726e-15
		-3.7281422285469879e-15 10.421366400000007 4.3166642400000024
		-2.7532222475083897e-15 7.9761669599999925 7.9761669600000014
		-4.2969312965092068e-15 4.3166642399999944 10.421366400000007
		-3.8364200626727374e-15 -3.8364200626645963e-15 11.280000000000003
		;
createNode transform -n "M_hip_FK_space_offGRP" -p "FK_M_spine_01_CTL";
	rename -uid "05C59CAA-4438-A0FF-C538-8BAD67BFF2C6";
	setAttr ".t" -type "double3" 5.3118251448159644 -0.0011556286439598383 -0.001207905360139705 ;
	setAttr ".r" -type "double3" 0.029725078056389104 0.062072808684904446 -0.057459784655549719 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "M_hip_FK_space" -p "M_hip_FK_space_offGRP";
	rename -uid "E5EBC80D-49D9-A544-1D0D-1FA5427F263A";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "M_hip_FK_spaceShape" -p "M_hip_FK_space";
	rename -uid "B5007010-4656-1198-7780-F2B73C6081A4";
	setAttr -k off ".v";
createNode transform -n "spine_switch_CTL_offGRP" -p "spine_CTL_GRP";
	rename -uid "6640BB6F-49A4-3651-89AD-71ADCE895207";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".offset" -type "matrix" 2.772774108563457e-16 1 -1.0502674678498483e-13 0
		 -0.0021115158594585681 1.0508284387584874e-13 0.99999777074790275 0 0.99999777074790286 -1.6051388198810738e-19 0.0021115158594586236 0
		 0 0 0 1;
createNode transform -n "spine_switch_CTL_spcGRP" -p "spine_switch_CTL_offGRP";
	rename -uid "DD924047-445C-55B0-85FB-859E0657F362";
createNode transform -n "spine_switch_CTL" -p "spine_switch_CTL_spcGRP";
	rename -uid "4649FE6E-4053-2007-3D12-A3805B59FDC9";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "spine_switch_CTLShape" -p "spine_switch_CTL";
	rename -uid "845BCC38-4818-FB4B-1562-F5BFC3B08CD3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		0.045370817184448228 -1.4901161415892261e-09 0
		14.041024756431579 1.4901321288007807e-09 0
		13.610842895507812 0.33222502470018078 0
		13.485752058029174 0.68974572420121838 0
		13.685917329788207 1.1457456350326698 0
		14.195967030525207 1.3241260051727455 0
		14.778677654266357 1.2321258783340614 0
		14.778677654266357 0.92220836877824475 0
		14.215338897705081 1.070704460144059 0
		13.924793314933776 0.97708451747895886 0
		13.810181808471679 0.74141520261766125 0
		13.894115757942199 0.5299440026283424 0
		14.200826358795169 0.31043985486032177 0
		14.371933889389041 0.21358031034471203 0
		14.804528903961181 -0.11894857138393711 0
		14.927173566818237 -0.4950477182864983 0
		14.697983455657958 -0.99541139602659534 0
		14.0894544839859 -1.1842378377914269 0
		13.472826433181762 -1.0793453454971154 0
		13.472826433181762 -0.74360972642896961 0
		14.137884330749511 -0.93084943294523548 0
		14.458280992507937 -0.82513040304182361 0
		14.580132198333743 -0.54992383718489002 0
		14.500231456756595 -0.31101468205450367 0
		14.205652904510501 -0.091477505862696873 0
		14.041024756431579 1.4901321288007807e-09 0
		;
createNode transform -n "M_hip_CTL_offGRP" -p "spine_CTL_GRP";
	rename -uid "14CBACFC-4DAE-C519-E242-3BBFC967D868";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "M_hip_CTL_spcGRP" -p "M_hip_CTL_offGRP";
	rename -uid "90C8213F-4B31-61E5-20AE-1093D04BC5A5";
createNode transform -n "M_hip_CTL" -p "M_hip_CTL_spcGRP";
	rename -uid "FC9EAE96-45A1-D3F9-BAE1-6BB49527BFB6";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 8.6736173798840355e-19 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "M_hip_CTLShape" -p "M_hip_CTL";
	rename -uid "9684BAF7-41F5-3A14-2080-C98FB38535BA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-15.699999999999992 -8.3770120745229991e-16 10.200000000000008
		-14.363991332054141 -3.9033665999999969 9.4235760000000148
		-11.65129060745239 -7.2124913999999922 7.2124913999999967
		-9.8744498014450048 -9.4235760000000024 3.9033666000000014
		-9.6999999999999993 -10.199999999999996 2.1142809725205336e-15
		-9.8744498014449977 -9.4235759999999988 -3.9033665999999951
		-11.651290607452385 -7.2124913999999904 -7.2124913999999931
		-14.363991332054136 -3.9033665999999934 -9.4235759999999846
		-15.699999999999982 6.8172500661703407e-15 -10.199999999999998
		-14.363991332054136 3.9033665999999987 -9.4235759999999829
		-11.651290607452388 7.2124913999999922 -7.2124913999999878
		-9.8744498014450013 9.4235760000000024 -3.9033665999999907
		-9.6999999999999975 10.199999999999996 9.7581664970647334e-15
		-9.8744498014450066 9.4235759999999988 3.9033666000000058
		-11.651289176940926 7.2124913999999922 7.212491400000002
		-14.363991332054143 3.9033665999999951 9.4235760000000166
		-15.699999999999992 -8.3770120745229991e-16 10.200000000000008
		;
createNode parentConstraint -n "M_hip_CTL_offGRP_parentConstraint1" -p "M_hip_CTL_offGRP";
	rename -uid "BE891D45-48B6-81CD-4154-D0B32CC642FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_01_CTLW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FK_M_spine_01_CTLW1" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.001155628643958534 -0.012423905703393245 
		5.3118108648020304 ;
	setAttr ".tg[0].tor" -type "double3" 17.456556638495854 -89.808139807152543 -107.42686109889772 ;
	setAttr ".tg[1].tot" -type "double3" 5.3118251448159644 -0.0011556286439598391 -0.001207905360139705 ;
	setAttr ".tg[1].tor" -type "double3" 0.029725078054595282 0.06207280868490761 -0.05745978465553702 ;
	setAttr ".lr" -type "double3" 17.456556638497904 -89.808139807152543 -107.42686109890191 ;
	setAttr ".rst" -type "double3" -0.001155628643958534 40.868652907040747 -12.796167955998751 ;
	setAttr ".rsrr" -type "double3" 17.456556638493463 -89.808139807152543 -107.42686109889438 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "spine_output" -p "spine_GRP";
	rename -uid "E6FAF6E7-41FD-9C38-2C4C-83944434D4CC";
createNode joint -n "M_spine_01_JNT" -p "spine_output";
	rename -uid "45448742-4BB0-700B-89D1-B2AEB4956D3C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.879018962979004 -89.999999999993989 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -0.0021115158594586236 0.99999777074790286 0
		 1 1.0729645376698872e-13 -1.064044058890273e-15 0 -1.0508260928077107e-13 0.99999777074790286 0.0021115158594585681 0
		 1.7763568394002505e-15 40.881076812744091 -18.107978708906042 1;
	setAttr ".radi" 2;
createNode joint -n "M_spine_02_JNT" -p "M_spine_01_JNT";
	rename -uid "5A329B95-4DB2-A56E-B89E-55890B528495";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 2.2204460492498331e-16 -0.0021115158594586427 0.99999777074790286 0
		 1 1.072964537669887e-13 -1.0640440588902757e-15 0 -1.0508260928077107e-13 0.99999777074790286 0.0021115158594585677 0
		 -0.0011556286439591155 40.868652907040747 -12.796167955998747 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "M_spine_03_JNT" -p "M_spine_02_JNT";
	rename -uid "EBC95D38-4AAE-AC03-DADD-9FB749C757A3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 2.2205116620682768e-16 -0.0021115158594584332 0.99999777074790297 0
		 1 1.072964537669887e-13 -1.0640440588902757e-15 0 -1.0508261009477152e-13 0.99999777074790297 0.0021115158594585686 0
		 -0.0011452471035271648 40.857439171240543 -7.5085798561461541 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "M_spine_04_JNT" -p "M_spine_03_JNT";
	rename -uid "FE2CA3AE-40B8-6AD0-9C72-FB9EA873255C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 2.220236961197036e-16 -0.0021115158594588947 0.99999777074790275 0
		 1 1.0729645376698872e-13 -1.0640440588902755e-15 0 -1.0508261348287646e-13 0.99999777074790308 0.0021115158594585117 0
		 -0.0010485195207792721 40.845320704425127 -1.8077724871877923 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "M_spine_05_JNT" -p "M_spine_04_JNT";
	rename -uid "66216E40-4218-BF48-5D35-61B1EF15B27B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2194711908684463e-16 -0.002111515859455057 0.99999777074790275 -5.4954379056582716e-22
		 1 1.0729645376698872e-13 -1.0640440588902757e-15 -3.0044883290633142e-32 -1.0508261712064581e-13 0.9999977707479033 0.0021115158594585061 3.4694535258697338e-18
		 -0.0010490471290005735 40.811479565338722 14.212384970721109 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "69928E0C-4CAA-1994-753A-1089A7E1F8C0";
createNode mesh -n "bodyShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "4B521C33-4BDE-7CAB-47D8-578D976379D1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8395799994468689 0.83069998025894165 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode fosterParent -n "q_armRNfosterParent1";
	rename -uid "83EC0553-4282-79CF-4D7D-FD87FB6882E0";
createNode parentConstraint -n "scapula_CTL_offGRP_parentConstraint1" -p "q_armRNfosterParent1";
	rename -uid "2C6DC598-49C1-163A-A071-35A7A2A63202";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_M_spine_05_JNTW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.060222279004747747 4.2404003197120073 0.0012251557569555871 ;
	setAttr ".tg[0].tor" -type "double3" 89.879018962979004 6.0175893267688191e-12 89.999999999999986 ;
	setAttr ".lr" -type "double3" 6.3611093629260309e-15 -1.9083328088781435e-14 6.0207900120104374e-12 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -7.1054273576010019e-15 -8.8817841970012523e-15 ;
	setAttr ".rsrr" -type "double3" 6.3611093629260309e-15 -1.9083328088781435e-14 6.0207900120104374e-12 ;
	setAttr -k on ".w0";
createNode fosterParent -n "q_legRNfosterParent1";
	rename -uid "4E68F34B-4FEA-5ED7-F47A-579A16ECD212";
createNode parentConstraint -n "hip_CTL_offGRP_parentConstraint1" -p "q_legRNfosterParent1";
	rename -uid "02DFB644-47D7-6862-D06E-92BD5AAC24D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "M_spine_01_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.060134865533971293 3.5803692340850812 -0.00012697600566724532 ;
	setAttr ".tg[0].tor" -type "double3" 89.879018962979004 6.0175893267688191e-12 89.999999999999986 ;
	setAttr ".lr" -type "double3" 6.3611093629260309e-15 -1.9083328088781435e-14 6.0207900120104374e-12 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-16 7.1054273576010019e-15 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629260309e-15 -1.9083328088781435e-14 6.0207900120104374e-12 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "237EA0A3-4AF4-CB03-DECD-5B8BC909FF77";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "D4075E18-4128-BD11-7632-B7B2BF2554FD";
	setAttr ".gi" yes;
	setAttr ".rfc" yes;
	setAttr ".pe" 2;
	setAttr ".se" 3;
	setAttr ".cmph" 60;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dam" 1;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".pmt" 0;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".lightCacheType" 1;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" -1;
	setAttr ".suv" 0;
	setAttr ".srflc" 1;
	setAttr ".srdml" 0;
	setAttr ".seu" yes;
	setAttr ".gormio" yes;
	setAttr ".gocle" yes;
	setAttr ".gopl" 2;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".productionGPUResizeTextures" 0;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".vfbOn" yes;
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/part/dog_V002.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9BEE1994-4885-3DFB-0590-9898171342D9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "53F20FE6-4901-398A-04E9-DE9E48C2F9EC";
createNode displayLayerManager -n "layerManager";
	rename -uid "270E3DAE-40C9-19CE-9DDB-17A161685CA3";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "2E5B9CCC-492D-D3EB-ABB7-D29A75C17D03";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2CE18409-44D1-BC0B-0F1B-E18E9A259077";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8260AC1E-4FF1-D77C-9AF6-B996EA7C37FC";
	setAttr ".g" yes;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "48CB4EEC-442B-FE93-8D9F-8EA228AB2EFC";
createNode multiplyDivide -n "IK_negate_val";
	rename -uid "D689A619-4282-3BCB-AA9A-31B6B09EFAE8";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode condition -n "ctrllen_COND";
	rename -uid "AEBF65EB-4767-E0B0-FD33-FFA22A65EFEB";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "645E3D21-4A1F-E251-7494-F9B8BBDABF1C";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "8ECC548C-4626-2229-C993-538B297B3FB9";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  26.1847229 0;
createNode multiplyDivide -n "mult_softikV";
	rename -uid "2B3A8141-4528-E0EA-71BF-D1B7D209E27A";
createNode multiplyDivide -n "power_val";
	rename -uid "5B8912C9-4041-24F3-2DB2-C89508871AD8";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val";
	rename -uid "616A4D50-486E-2764-DB0D-D4A2F7F028EC";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "374C6DFE-4E0D-9927-A8DC-AB9974228450";
	setAttr ".op" 2;
createNode condition -n "extended_ctrllen_COND";
	rename -uid "5DFF6B10-49BA-3E0F-AA9F-EDB5CBE057F7";
	setAttr ".op" 2;
createNode condition -n "extended_softikV_COND";
	rename -uid "C4751788-471A-B5C5-EE83-B99465D1CC72";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extended_result_softik_len";
	rename -uid "32D60718-46F4-A6D3-72C4-229815D006ED";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  30.76427841 0;
createNode multiplyDivide -n "extended_mult_softikV";
	rename -uid "4DFB5F50-4EF9-B6C2-9F0B-269A1C878924";
createNode multiplyDivide -n "extended_power_val";
	rename -uid "DD1C2F19-453A-6CCC-3D25-61B2B8699F62";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "extended_negate_val";
	rename -uid "498DD006-4546-405D-235A-518AABE22142";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_expand_arm_softikV";
	rename -uid "41B9A8FA-474B-9D8C-6E56-118A3E9E3CEA";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_plus_stretch";
	rename -uid "F42F49EA-4131-511B-1787-60ACD2AA2156";
	setAttr -s 2 ".i1[0:1]"  15.032044411 0;
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "E97862A6-435D-C6F3-8168-56A74982CBD2";
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "7ECEAD65-43E3-229F-AA2F-598D67144D83";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "B4DC7B02-4B74-C527-B1A3-16A35979A786";
	setAttr ".op" 2;
createNode plusMinusAverage -n "uparm_plus_stretch";
	rename -uid "75905451-4DBB-514A-52F1-C7A875DA08EB";
	setAttr -s 2 ".i1[0:1]"  11.15267849 0;
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "C3C5EF3D-4D57-71F4-B900-A58BCBFAA853";
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "A852A8FA-4820-F835-F2B4-F88D860CFADB";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "7FE0624D-4289-096B-FB91-B2BA1D618423";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extendedarm_plus_stretch";
	rename -uid "35AE144E-4F15-8DFF-0BDC-3EABE962B5C2";
	setAttr -s 2 ".i1[0:1]"  4.57955503 0;
createNode multiplyDivide -n "extended_stretchCtrl_arm";
	rename -uid "F8497AA4-4823-6475-890D-0892975343BD";
createNode multiplyDivide -n "extended_stretched_arm";
	rename -uid "77F7DE5A-4C6C-9B08-1DF3-DB84A3739B2B";
createNode multiplyDivide -n "extendedarm_ratio";
	rename -uid "D7F59855-46A6-2054-5E2E-BD97C4C52C89";
	setAttr ".op" 2;
createNode multiplyDivide -n "extendedarm_stretch_output_mul_ctrlVal";
	rename -uid "7D2896AB-4790-5EBB-8DEC-2690564A4767";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "16556CB0-4680-1548-B781-89A7DDF4FA5C";
	setAttr ".s" 1;
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "39C36509-4406-5CB3-5531-FFBBDD0FDF9A";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "109F4B9A-4A2E-3719-C82A-2D9EDFA8345B";
createNode script -n "uiConfigurationScriptNode2";
	rename -uid "CAC8B411-4B09-456E-651C-8F8055481D4C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1060\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1060\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode2";
	rename -uid "2F248B97-4323-F6ED-31E3-F6840AA2BC38";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer3";
	rename -uid "4EA93B0B-4553-75E4-F52A-45A7BBD79DD4";
	setAttr ".do" 1;
createNode reference -n "sharedReferenceNode";
	rename -uid "C7B35B92-49A5-A730-4339-0BA2B561C77B";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode surfaceShader -n "surfaceShader1";
	rename -uid "B79E3CB2-42A5-A52C-7FB1-5DA3B1DC97D5";
createNode shadingEngine -n "surfaceShader1SG";
	rename -uid "8D55AF41-4989-805E-C012-34939B08B2BE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "743ED346-4391-C97E-8458-2BAC9385F45E";
createNode lambert -n "lambert2";
	rename -uid "A1EB3503-4733-DEC4-1DD6-7E8B44F92BA0";
	setAttr ".c" -type "float3" 0 1 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "6064C09C-4CB4-E903-707D-F7B3F9DE46AF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "F18DD5AC-4C2B-38F5-1430-8EA7AA50E52A";
createNode lambert -n "lambert3";
	rename -uid "27F58712-4903-D835-3CAA-3A8D5792DFFF";
	setAttr ".c" -type "float3" 0 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "8A525B0F-4EA5-1B6D-D2CC-5A850358B8FD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "E76E9C57-46D1-C60F-CB41-4B8DECA64B0E";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6619AEEB-4EAC-F05C-D1F3-39B2FFF333B9";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679688;
	setAttr ".tgi[0].ni[1].y" -5.7142858505249023;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 582.85711669921875;
	setAttr ".tgi[0].ni[2].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 844.28570556640625;
	setAttr ".tgi[0].ni[3].y" -70;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[4].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 262.85714721679688;
	setAttr ".tgi[0].ni[5].y" -70;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode remapValue -n "ball_remap";
	rename -uid "09AE8B8B-4F66-4E90-E6A1-7A903CE7E797";
	setAttr ".imx" 90;
	setAttr -s 3 ".vl[0:2]"  0 0 2 1 1 3 1 1 2;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode condition -n "ball_start_conditon";
	rename -uid "58260F8A-41CD-5A69-6B2F-2BA09AE1AED5";
	setAttr ".op" 2;
createNode plusMinusAverage -n "backto_zero_ball";
	rename -uid "B6F7A7D2-43D7-D93B-36D3-C1B5A4CBEB84";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  45 0;
createNode blendColors -n "scapula_BLCL";
	rename -uid "BEC8E8A9-42AC-0CDF-8D66-AEBB96C1856B";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "2DF50F1A-4A6F-EEBF-A1B8-9B814B24119D";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "DD8227D1-483A-5BC6-5942-2BA1751E906F";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "031E7DED-40E9-6D79-0F09-CDBFFC425BDC";
createNode blendColors -n "wrist_BLCL";
	rename -uid "D1C053CC-4FC3-0298-CC0C-C086FA824515";
createNode blendColors -n "toe_BLCL";
	rename -uid "1C75A1EE-4BC7-B6CB-CDCA-468F6F9F3DCF";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "BAEC2441-45C1-79D7-A959-26A7260046E5";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D82D21F7-4EA1-CB35-7D36-DEA91A3F2F7E";
	setAttr ".version" -type "string" "4.0.3";
createNode multMatrix -n "multMatrix9";
	rename -uid "56E21B57-45C9-685F-F2DE-CFAD797646C2";
createNode skinCluster -n "skinCluster1";
	rename -uid "C41E93C5-4991-5533-0FEB-6CA65E58E01B";
	setAttr -s 9613 ".wl";
	setAttr ".wl[0:497].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 1.2965844543855187e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 9.252417408622815e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1;
	setAttr ".wl[498:976].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		4 8 8.8605360589352623e-21 9 2.9518294765412653e-14 10 1.8509611367488976e-26 
		28 0.99999999999997047
		4 8 7.286810645809146e-23 9 3.6923231570994495e-16 10 8.9696124329611075e-29 
		28 0.99999999999999967
		4 8 1.4424468547067703e-21 9 4.7589354084074058e-15 10 2.6533207557420393e-27 
		28 0.99999999999999523
		4 8 2.1582759843518122e-19 9 4.5889695405732348e-13 10 6.7556886714305439e-25 
		28 0.99999999999954114
		4 8 2.0354204336481395e-20 9 6.8637881312055143e-14 10 4.9942049183462711e-26 
		28 0.99999999999993139
		4 8 2.1859695558018333e-22 9 1.1164304299627638e-15 10 3.0283197041256802e-28 
		28 0.99999999999999889
		4 8 8.8160317017847235e-19 9 1.8974857327908929e-12 10 3.2091633163234025e-24 
		28 0.99999999999810252;
	setAttr ".wl[977:1178].w"
		4 8 1.9840223537896117e-20 9 6.8428637600750122e-14 10 6.5032484340576973e-26 
		28 0.99999999999993161
		4 8 3.2303926282919882e-22 9 1.6695162591506162e-15 10 5.3785086923086999e-28 
		28 0.99999999999999833
		4 8 1.3958664026142405e-18 9 3.0701165197701827e-12 10 6.4438509003511766e-24 
		28 0.9999999999969299
		5 8 2.0555206478089335e-22 9 1.08267019761027e-15 10 4.6074374923836672e-28 
		11 3.2408882780166013e-76 28 0.99999999999999889
		4 8 3.7808005180818946e-24 9 2.9407797904636417e-17 10 4.1759933139779036e-30 
		28 1
		4 8 3.6207351503389173e-24 9 2.7882629292196646e-17 10 3.320983984037668e-30 
		28 1
		4 8 3.1369396136923658e-26 9 3.5740665662550308e-19 10 1.6411114311565941e-32 
		28 1
		4 8 4.4692174892995914e-26 9 5.1241598932830061e-19 10 2.672029909085629e-32 
		28 1
		4 8 3.9959862128608765e-28 9 6.7293592512198805e-21 10 1.3421709325464584e-34 
		28 1
		4 8 1.8443730548576441e-24 9 1.4098226419676458e-17 10 1.4832479030698042e-30 
		28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 2.9028918144473611e-16 9 5.5771758034162673e-13 10 2.3176280872710723e-25 
		11 1.4840946946648397e-62 28 0.99999999999944211
		6 2 3.1971124966195807e-12 8 2.8233041363633086e-15 9 4.4214233762606488e-13 
		10 4.6381335304042442e-27 11 2.6663406742807724e-65 28 0.99999999999955491
		1 28 1
		5 8 1.5760798044173029e-17 9 2.7302749869700413e-12 10 6.7655548471659308e-24 
		11 3.8411643681831036e-60 28 0.99999999999726985
		1 28 1
		5 8 3.8437081216384458e-19 9 3.3645906875204168e-13 10 6.368416480563575e-23 
		11 2.7417155077246557e-58 28 0.99999999999966349
		5 8 2.1074295397385925e-14 9 3.2736419185584506e-11 10 3.2812656375696155e-23 
		11 1.8643273374451166e-59 28 0.99999999996724254
		5 8 1.9201064485991924e-13 9 2.5659830699599817e-11 10 6.5217120303036403e-25 
		11 4.1773710540884783e-62 28 0.99999999997414801
		5 8 1.1098844355486238e-15 9 1.3686259979301988e-10 10 8.8387592012554683e-22 
		11 3.8163655389414881e-57 28 0.99999999986313626
		5 8 1.3536549964546761e-12 9 1.6714715597848401e-09 10 4.1579327284692778e-21 
		11 1.7969404392193515e-56 28 0.99999999832717479
		5 8 1.1237616678446359e-11 9 1.2639891409023529e-09 10 8.0002212694007309e-23 
		11 4.5471716412469363e-59 28 0.9999999987247733
		5 8 6.9089610411885388e-14 9 5.9823297744249985e-09 10 1.0446896575473155e-19 
		11 3.0829250563228548e-54 28 0.99999999401760109
		1 28 1
		5 8 8.1777811994482201e-15 9 3.5790872790015999e-14 10 5.7519712013664621e-29 
		11 2.068105226267586e-68 28 0.99999999999995592
		5 8 5.099933956202312e-13 9 2.0035142118136067e-12 10 7.9426001242746224e-27 
		11 4.5662764698922535e-65 28 0.99999999999748646
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 6.6873784555114358e-21 9 1.4428637788661371e-14 10 1.7073726613174949e-24 
		11 9.6799738365095861e-61 28 0.99999999999998568
		5 8 5.4440608439897017e-23 9 2.1078978753601812e-16 10 1.3539466246669406e-26 
		11 8.6566102006103366e-64 28 0.99999999999999978
		1 28 1
		1 28 1
		5 8 1.9581197854262768e-23 9 1.1419380887180756e-16 10 1.543219501706747e-28 
		11 2.8596146317841216e-75 28 0.99999999999999989
		5 8 4.0528936195924902e-21 9 1.5004508057236489e-14 10 2.9158066239248999e-26 
		11 3.6446419829358956e-72 28 0.99999999999998501
		4 8 1.6119772903555048e-25 9 1.4466431326561478e-18 10 1.2417491335622221e-30 
		28 1
		5 8 3.8695950535389603e-23 9 6.9766234621171663e-16 10 1.4983329921989979e-26 
		11 2.2131113654343822e-71 28 0.99999999999999933
		5 8 2.3645854091134819e-25 9 7.5945022125434929e-18 10 9.5870968056796195e-29 
		11 7.3592547761482931e-75 28 1
		5 8 5.8254582662130821e-21 9 5.6033436696414418e-14 10 1.8888779940982377e-24 
		11 1.5253712813679383e-68 28 0.99999999999994393
		5 8 5.8009826757769421e-19 9 1.359502674717443e-12 10 4.8512984369443116e-24 
		11 4.9632739812118369e-75 28 0.99999999999864042
		5 8 4.931934697023572e-17 9 7.1025400973610587e-11 10 5.1363198209884517e-22 
		11 7.4538760909175713e-69 28 0.99999999992897459
		5 8 3.4028648947114877e-15 9 2.890415493927961e-09 10 4.6243227454605421e-20 
		11 2.4343633646300988e-65 28 0.9999999971095811
		5 8 7.1188406838099658e-17 9 9.6914883110423105e-11 10 4.7052044266447658e-22 
		11 5.6005571002941233e-69 28 0.99999999990308508
		5 8 2.4194371140251749e-15 9 1.9619538242944528e-09 10 2.3017157869449118e-20 
		11 1.0268414559318723e-65 28 0.99999999803804374
		5 8 2.3735608489443082e-13 9 1.1186006215312825e-07 10 4.0787676406181679e-18 
		11 4.1448589511884076e-62 28 0.99999988813970053
		5 8 2.3611328816452094e-17 9 3.1529274687085563e-11 10 1.2759169219613929e-22 
		11 1.3787776304722029e-69 28 0.99999999996847067
		5 8 3.5894751897939166e-15 9 1.7199001808380266e-09 10 1.0381363081313905e-21 
		11 8.4538490854823121e-69 28 0.99999999828009623
		5 8 3.0059792631657312e-13 9 8.2002312192436822e-08 10 1.4429959581633005e-19 
		11 4.4821757147911346e-65 28 0.99999991799738719
		4 8 3.924845855063992e-17 9 3.1330376188089724e-11 10 6.6463373921934505e-24 
		28 0.99999999996866962
		4 8 3.8790299279752838e-19 9 4.9640168122627162e-13 10 3.7855426137695743e-26 
		28 0.99999999999950362
		4 8 3.6588290012579949e-21 9 7.277352354809906e-15 10 1.979352897651337e-28 
		28 0.99999999999999267
		5 8 5.1113741419511829e-15 9 8.6668264398394767e-09 10 1.6526958441923733e-18 
		11 2.6733596841528539e-62 28 0.99999999133316841
		5 8 6.4399223781729539e-17 9 1.8866269096391955e-10 10 1.6733473077889151e-20 
		11 1.3428277265942232e-65 28 0.99999999981133725
		5 8 3.4730993863368458e-13 9 3.2840829459009018e-07 10 1.5148247082705883e-16 
		11 3.6659787653988887e-59 28 0.99999967159135794
		5 8 9.4321676146352754e-14 9 8.048626879423399e-07 10 3.2243828543101313e-15 
		11 1.9441726980792749e-56 28 0.99999919513721436
		5 8 9.1475893291328866e-16 9 1.5049423973151154e-08 10 2.4601153771485567e-17 
		11 1.0762874698202073e-59 28 0.99999998495057518
		5 8 1.4763368430815621e-15 9 2.7030345672940967e-08 10 4.5289333730906474e-17 
		11 2.9226769268888585e-59 28 0.99999997296965282
		5 8 2.379372105398459e-17 9 7.9486609511903692e-10 10 5.820297433002281e-19 
		11 1.9640393629850987e-62 28 0.99999999920513383
		5 8 1.1331396053998711e-14 9 2.1461337165150117e-06 10 2.4396216536115199e-14 
		11 1.0171733065158838e-53 28 0.99999785386624773
		5 8 2.2567608636515325e-16 9 9.881324192220953e-08 10 4.6281068911158524e-16 
		11 2.0341800461341529e-56 28 0.99999990118675741
		5 8 7.04121370824968e-12 9 2.6980614870417926e-05 10 2.8794395414751317e-13 
		11 1.6688102788008655e-53 28 0.99997301937780048
		7 8 5.6373210312241896e-13 9 4.204889575659945e-05 10 1.2754231810277906e-12 
		11 4.8746300615848407e-51 12 7.7922966952113291e-72 13 1.4608194399942977e-73 
		28 0.99995795110240426
		5 8 2.539659606316852e-11 9 1.2225279187571061e-05 10 1.436301465952695e-14 
		11 3.8680993618457386e-56 28 0.99998777469540145
		5 8 2.6892645176135874e-11 9 6.5021355940631193e-06 10 5.8902978728421052e-16 
		11 7.9835052275591609e-59 28 0.99999349783751268
		5 8 2.3459255584709743e-11 9 3.3797482973151011e-06 10 1.7667900304239278e-17 
		11 1.0553615707308192e-61 28 0.99999662022824343
		5 8 1.769514027301535e-09 9 0.00019453991332409824 10 4.8877068170492368e-14 
		11 7.0073381327843394e-56 28 0.99980545831711298
		5 8 1.5751758074771439e-09 9 0.00034057750039147988 10 1.1492688236974031e-12 
		11 2.9401927844648702e-53 28 0.99965942092328341
		5 8 1.4886492295954432e-09 9 9.929936013556468e-05 10 1.5333440644536228e-15 
		11 1.1878600257525564e-58 28 0.99990069915121371
		5 8 1.4173980672054156e-17 9 4.2316935103149991e-10 10 3.0271880890944239e-19 
		11 7.9866839651797039e-63 28 0.99999999957683061
		5 8 3.8075851046202785e-19 9 2.2059898274070937e-11 10 7.4291305245359774e-21 
		11 1.0272281964457562e-65 28 0.99999999997794009
		5 8 6.7181765630868853e-19 9 3.487776782486834e-12 10 1.7947622331736932e-22 
		11 4.4558435660441417e-69 28 0.99999999999651223
		5 8 3.7129318090117637e-19 9 2.3682559564030106e-11 10 8.1546985486536203e-21 
		11 3.9104821904101993e-62 28 0.99999999997631739
		5 8 6.3875046826028338e-21 9 6.898325857846876e-13 10 1.1349030200335819e-22 
		11 2.8421654765681989e-65 28 0.99999999999931022
		1 28 1
		1 28 1
		4 8 7.153764639933086e-22 9 4.3461097581423777e-15 10 5.7618592165203968e-30 
		28 0.99999999999999556
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		2 8 0.017820417881011963 28 0.98217958211898804
		2 8 0.0079332590103149414 28 0.99206674098968506
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 8 0.001394808292388916 28 0.99860519170761097
		2 8 0.033927261829376221 28 0.96607273817062378
		2 8 0.011746704578399658 28 0.98825329542160023
		1 28 1
		2 8 0.0025642514228820801 28 0.99743574857711792
		2 8 0.074025124311447144 28 0.92597487568855286
		2 8 0.097487300634384155 28 0.90251269936561584
		2 8 0.049517016857862473 28 0.95048298314213753
		2 8 0.14954312145709991 28 0.8504568785429002
		1 28 1
		2 8 0.029107868671417236 28 0.97089213132858265
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 8 0.0054445266723632813 28 0.99455547332763672
		2 8 0.021872758865356445 28 0.97812724113464355
		2 8 0.0033474564552307129 28 0.99665254354476929
		1 28 1
		1 28 1
		2 8 0.11520520597696304 28 0.88479479402303696
		2 8 0.10248317569494247 28 0.89751682430505764
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 8 1.8327702448793852e-22 9 1.5303633311323085e-15 10 9.9492772318085421e-32 
		28 0.99999999999999833
		1 28 0.99999999999999989
		4 8 6.7365656068420555e-23 9 1.6617052406006373e-16 10 1.1025977375449431e-33 
		28 1
		4 8 7.4330862202874268e-21 9 1.1035412869292827e-14 10 2.2360361882891405e-31 
		28 0.99999999999998901
		4 8 2.0265270473116699e-20 9 9.624328337142449e-14 10 1.9106830530963793e-29 
		28 0.99999999999990374
		1 28 1
		1 28 1
		4 8 7.0037565315433637e-20 9 4.2549494455789627e-14 10 3.8098707831761134e-31 
		28 0.99999999999995748
		4 8 7.2815838065231416e-19 9 6.3403603053130498e-13 10 3.9645909499880257e-29 
		28 0.99999999999936606
		1 28 1
		4 8 3.4243145515375067e-21 9 1.8118531686415341e-15 10 2.8674362292673176e-33 
		28 0.99999999999999822
		4 8 6.7989258550532056e-18 9 2.3606592424679645e-12 10 6.580052820075775e-29 
		28 0.99999999999763933
		4 8 3.6085063886131221e-19 9 1.0944142785069943e-13 10 5.4306398252296446e-31 
		28 0.99999999999989053
		4 8 6.5865546790445166e-17 9 3.2275834346535882e-11 10 6.2737816591400329e-27 
		28 0.99999999996772415
		1 28 1
		4 8 1.0932436112358403e-22 9 5.6603008760978157e-17 10 1.8114258722881077e-35 
		28 1;
	setAttr ".wl[1179:1270].w"
		1 28 1
		1 28 1
		4 8 1.9925026308625323e-18 9 5.224489560871139e-12 10 3.2021138709076527e-27 
		28 0.99999999999477562
		4 8 8.0831683083054302e-20 9 2.9076652877922019e-13 10 1.1074715627715198e-27 
		28 0.99999999999970923
		4 8 7.9700887127123347e-18 9 1.6492011921131399e-11 10 1.8374520150049493e-25 
		28 0.99999999998350797
		4 8 1.8001633696781516e-16 9 2.5026701881432284e-10 10 4.7721836230689112e-25 
		28 0.99999999974973264
		4 8 7.1260263840074574e-16 9 8.1777770087159353e-10 10 2.6993749590865575e-23 
		28 0.9999999991822216
		4 8 1.5262095030048628e-14 9 1.0636870547889256e-08 10 6.3828728920274183e-23 
		28 0.99999998936311418
		5 8 5.9193006924839485e-14 9 3.5802494505969484e-08 10 3.5507557903215907e-21 
		11 2.0479782831088919e-68 28 0.9999999641974463
		4 8 5.5638140682916081e-15 9 1.4476425245685554e-09 10 8.8516072837846838e-25 
		28 0.999999998552352
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		7 8 2.8630185608445354e-12 9 1.2098277467095994e-06 10 7.7834337495446502e-15 
		11 5.188733241260218e-47 12 8.2567758047323661e-66 13 2.2454339894944438e-67 
		28 0.99999879016938253
		7 8 7.5235985270594512e-14 9 1.5476570935843021e-06 10 1.1003186649928209e-15 
		11 7.1776565384559557e-49 12 2.2062176702140328e-68 13 5.9996684327392899e-70 
		28 0.99999845234283014
		7 8 3.2466586165702111e-12 9 4.9044205138644664e-05 10 9.8828522030534238e-14 
		11 3.8125527712045869e-46 12 6.0646133923710284e-65 13 1.6492628483602537e-66 
		28 0.99995095579151594
		7 8 1.428835419867704e-10 9 4.9875762448809857e-05 10 9.2360122160102694e-13 
		11 3.6142821365423147e-44 12 2.2421205245038544e-62 13 6.0976089488805156e-64 
		28 0.99995012409374395
		7 8 2.2557939982922585e-15 9 1.857067909949317e-06 10 3.3413571976138193e-16 
		11 7.0092532395383626e-51 12 2.3777032064311823e-71 13 6.4659047000547419e-73 
		28 0.99999814293208744
		7 8 4.620162720453126e-14 9 2.9879004141141511e-05 10 1.4922786494329833e-14 
		11 1.8970132217340112e-48 12 5.8140088834519185e-68 13 1.5810437192495163e-69 
		28 0.99997012099579785
		7 8 3.742463219535582e-17 9 2.7225271865648769e-06 10 4.7985454641466985e-15 
		11 2.0410694232865551e-51 12 7.6287816877039718e-72 13 1.9504767676633365e-73 
		28 0.99999727747280864
		7 8 7.6118823824641168e-16 9 4.2567980540113318e-05 10 2.0813031718749114e-13 
		11 7.0776864407289313e-49 12 2.3294135650770987e-68 13 5.9559232116463571e-70 
		28 0.99995743201925102
		7 8 3.9480931242683081e-16 9 3.161293749161058e-06 10 3.7511635317373874e-14 
		11 1.7487337318590604e-51 12 2.7831862181819365e-72 13 5.2176305544717464e-74 
		28 0.99999683870621292
		7 8 1.6104259102443221e-14 9 4.7536694264859646e-05 10 1.5026160211061483e-12 
		11 5.8739209679061883e-49 12 8.1991584845908397e-69 13 1.5441110936617727e-70 
		28 0.99995246330421639
		7 8 9.3708675714147365e-13 9 0.00091580800963972668 10 8.8754512795905467e-11 
		11 2.8677136544551769e-46 12 2.0230310930102143e-65 13 3.8274447433398488e-67 
		28 0.99908419190066866
		7 8 3.3723557437916938e-14 9 0.0007921293159515783 10 1.239404386740599e-11 
		11 3.3054174076156543e-46 12 5.5055047088674453e-65 13 1.4077118205450209e-66 
		28 0.99920787067162053
		7 8 4.083136144705709e-11 9 0.011389834698612785 10 4.2022921822648496e-09 
		11 1.1369504677114209e-43 12 3.0680976390176171e-62 13 5.8312893110790217e-64 
		28 0.98861016105826371
		7 8 1.3191314742327448e-12 9 0.010864423479598354 10 6.7048046894269502e-10 
		11 1.434949226387223e-43 12 9.1483814849999719e-62 13 2.3392405484764601e-63 
		28 0.98913557584860201
		7 8 1.3412454243346739e-09 9 0.010895259793600766 10 3.8810812245355372e-09 
		11 1.1456301486147267e-45 12 8.1034528188937195e-65 13 1.5315373639082547e-66 
		28 0.98910473498407259
		7 8 5.0716984534204779e-08 9 0.092443753268761281 10 1.8394707569612355e-07 
		11 4.7115691656240962e-43 12 1.2736290369655292e-61 13 2.4170927794303227e-63 
		28 0.90755601206717851
		7 8 1.6426937013571583e-09 9 0.10018530175776576 10 2.069188976453404e-07 
		11 4.8925666472881014e-41 12 4.2505218806321245e-59 13 8.1144210482644906e-61 
		28 0.89981448968064293
		7 8 3.0616158671814004e-11 9 0.00082190244043741007 10 7.655761975251056e-11 
		11 2.6134414346585825e-48 12 3.6607399921854593e-68 13 6.8904948074239457e-70 
		28 0.99917809745238884
		7 8 3.8044075716172138e-10 9 0.00058809640176327421 10 1.9319254034246696e-11 
		11 1.0127655142399547e-50 12 1.6208256262313324e-71 13 3.0385567647786407e-73 
		28 0.99941190319847673
		7 8 1.6789900137824574e-08 9 0.0087385460300841225 10 1.1072872275108159e-09 
		11 4.9144520149584267e-48 12 6.8897770907943875e-68 13 1.2966263596663148e-69 
		28 0.99126143607272854
		7 8 6.9312105759416563e-08 9 0.0056275896074040599 10 6.8892677001755182e-11 
		11 1.5572532711251122e-50 12 2.4935786561967573e-71 13 4.6747041579739171e-73 
		28 0.99437234101159755
		7 8 6.1631082725870051e-07 9 0.076736125444892334 10 5.5524985658902457e-08 
		11 1.9984840071210991e-45 12 1.4142198881782411e-64 13 2.6720039507002262e-66 
		28 0.92326320271929474
		7 8 0.00019417917064856738 9 0.19108157677545787 10 1.8340722840045214e-06 
		11 5.1819763379951368e-43 12 1.4006128031787738e-61 13 2.6569229640115604e-63 
		28 0.80872240998160949
		7 8 1.5590358088957146e-05 9 0.22573835124186964 10 5.2606977321609076e-06 
		11 1.2004354536739025e-40 12 1.0434759588314213e-58 13 1.9885645239053637e-60 
		28 0.77424079770230925
		7 8 0.0073700640350580215 9 0.35155068321073474 10 4.9126098234371535e-05 
		11 1.1386899676995635e-40 12 9.8892495129589411e-59 13 1.8836996921415756e-60 
		28 0.64103012665597281
		7 8 0.00016580588999204338 9 0.38723456000621587 10 0.00010970628189702207 
		11 2.4578120278742459e-38 12 6.1088160090146205e-56 13 1.1691398066109648e-57 
		28 0.61248992782189493
		7 8 0.00022520820493809879 9 0.14972885738655378 10 1.2341342754380347e-07 
		11 1.8466718688951367e-45 12 1.3066865558426398e-64 13 2.4684177188829487e-66 
		28 0.85004581099508059
		7 8 0.032140966504812241 9 0.29015143147755734 10 3.4180034662120558e-06 
		11 4.2700585241526925e-43 12 1.1535346601432896e-61 13 2.1877828255067107e-63 
		28 0.6777041840141641
		7 8 2.5714133485878102e-06 9 0.055500281046057864 10 3.6036090525972411e-09 
		11 6.734530047995031e-48 12 9.4440583180187261e-68 13 1.7771713149739404e-69 
		28 0.94449714393698436
		7 8 3.2707702851226007e-08 9 0.23539878924548882 10 5.5436990705536379e-06 
		11 1.2334462574958086e-38 12 3.0677618744233092e-56 13 5.8820131673630798e-58 
		28 0.76459563434773781
		7 8 4.1162582360985233e-11 9 0.088851319905075762 10 3.1195735638216451e-08 
		11 5.6178923579666421e-41 12 1.1532297791670107e-58 13 2.9489132476067633e-60 
		28 0.91114864885802604
		7 8 3.0503960999373511e-09 9 0.19650818511463161 10 5.8114710254890433e-08 
		11 1.0693024921372952e-38 12 6.2428837046631592e-56 13 1.6975076194383079e-57 
		28 0.80349175372026205
		7 8 3.2000278736137072e-10 9 0.060477764430083222 10 2.0385317410539885e-09 
		11 5.3950722044762565e-41 12 1.0872466397687243e-58 13 2.9564097922822348e-60 
		28 0.93952223321138228
		7 8 7.2551410859391643e-10 9 0.22552942056362685 10 8.8702133633188894e-07 
		11 1.4605998709171784e-38 12 8.5792499539591335e-56 13 2.1939382911968276e-57 
		28 0.77446969168952273
		7 8 1.3283109631909191e-07 9 0.18734029152894593 10 2.3177000826149285e-07 
		11 1.1813109407702849e-36 12 1.8456593668215583e-53 13 5.0196598948201709e-55 
		28 0.81265934386994942
		7 8 1.4501328956023807e-08 9 0.060666795333791386 10 7.8648578997959435e-09 
		11 6.2092091760831976e-39 12 3.6473207551088962e-56 13 9.9194375342007163e-58 
		28 0.93933318230002183
		7 8 2.401516683923465e-11 9 0.0080127295939553689 10 5.0975081627588301e-11 
		11 2.1853776211304601e-43 12 1.3487790980715078e-61 13 3.6676774941231227e-63 
		28 0.99198727033105427
		7 8 1.2136115294885672e-09 9 0.0095647962457746875 10 2.3031538040847045e-10 
		11 2.9984178350883683e-41 12 6.0761837197660241e-59 13 1.6524745332209724e-60 
		28 0.99043520231029836
		7 8 4.7203654148608716e-06 9 0.1759135313905516 10 1.346865587759592e-06 
		11 8.7910199053890214e-35 12 3.4343736881142283e-51 13 9.3413106903062768e-53 
		28 0.82408040137844574
		7 8 5.5363376675539771e-07 9 0.048219721138815175 10 4.9813044014720842e-08 
		11 4.6112377960515925e-37 12 7.2131565361817653e-54 13 1.9618586977083507e-55 
		28 0.95177967541437392
		7 8 2.2810991587870313e-05 9 0.36455712347257679 10 3.4134997657827663e-05 
		11 1.7715832556860239e-32 12 1.6490398349756445e-48 13 4.4855106043122721e-50 
		28 0.63538593053817749
		7 8 7.0255352819837431e-07 9 0.3725901921032394 10 5.7268565990846626e-06 
		11 2.0298746534408927e-34 12 7.917186941745373e-51 13 2.153290852091838e-52 
		28 0.6274033784866333
		7 8 1.7058907317402807e-08 9 0.39036109564268368 10 1.3393468831011435e-06 
		11 1.9086673158455694e-36 12 2.9631653580069605e-53 13 8.0570828930766955e-55 
		28 0.60963754795152592
		7 8 8.5179714724225393e-09 9 0.39379514796918424 10 1.8496315970891369e-05 
		11 3.0700599614556956e-36 12 4.7415536331118898e-53 13 1.2126478615198372e-54 
		28 0.60618634719687337
		7 8 4.2898118396376221e-07 9 0.3928436177327625 10 0.00010260748014663239 
		11 2.4077345553577271e-36 12 1.5763046026613738e-53 13 3.0356504966831115e-55 
		28 0.60705334580590686
		7 8 1.1272227543827366e-12 9 0.00055660778684491407 10 9.050031396412932e-13 
		11 6.6197164365664883e-46 12 1.0491095446233482e-64 13 2.852870326991625e-66 
		28 0.99944339221112277
		7 8 6.6829546080531952e-11 9 0.00080884687730414676 10 5.0543620631850868e-12 
		11 1.1203556483993329e-43 12 6.9464944948267498e-62 13 1.8891251453904399e-63 
		28 0.99919115305081196
		7 8 2.9056734748291014e-09 9 0.00072988623922477271 10 4.2460767568782312e-11 
		11 9.8722327687257682e-42 12 2.0019534125043661e-59 13 5.4446102234303531e-61 
		28 0.99927011081264094
		7 8 1.6457984359416731e-10 9 6.84003224967975e-06 10 1.0975084667969422e-15 
		11 1.2459819422190519e-48 12 3.8292234902472351e-68 13 1.0413378409910886e-69 
		28 0.99999315980316927
		7 8 4.0077847035737919e-09 9 0.00010510340764108071 10 6.1381241751083944e-14 
		11 4.1127153072407255e-46 12 6.5411361593947882e-65 13 1.7788714725051159e-66 
		28 0.9998948925845127
		7 8 8.6053317983373324e-08 9 0.0012579285786731282 10 2.9149526068982579e-12 
		11 1.1458083566560602e-43 12 7.1033148568468701e-62 13 1.9318103975514001e-63 
		28 0.99874198536509395
		7 8 5.1196670666575806e-08 9 0.0083297639497606022 10 1.7986424125543758e-09 
		11 2.5671862300240254e-39 12 1.5093641420704783e-56 13 4.1050711252341813e-58 
		28 0.99167018305492627
		7 8 1.536958778695708e-06 9 0.011152041592350944 10 1.2866987495717512e-10 
		11 3.0054753024858662e-41 12 6.0895976302130192e-59 13 1.6561739497780451e-60 
		28 0.98884642132020062
		7 8 1.7092640186907858e-05 9 0.052611821413897288 10 4.0296210827061882e-09 
		11 5.7784901156970361e-39 12 3.3937909614164654e-56 13 9.2303598483624033e-58 
		28 0.94737108191629471
		5 8 1.5032480060720483e-17 9 1.5300177554513615e-07 10 7.4506975987611072e-16 
		11 4.6253942562765251e-54 28 0.99999984699822364
		7 8 1.7839611888223075e-16 9 3.2563548796961071e-09 10 6.7344906154279641e-18 
		11 5.5809091958328713e-53 12 1.8980136198839702e-73 13 5.1614411556419285e-75 
		28 0.99999999674364493
		5 8 4.202300311314404e-18 9 2.53539582863716e-09 10 5.2401914347754238e-18 
		11 5.7495425335174955e-56 28 0.99999999746460411
		7 8 2.5401284072363347e-14 9 2.4691253187194934e-08 10 5.545684673392957e-17 
		11 6.1065871586307544e-50 12 1.8775717191709396e-69 13 5.1059520759851692e-71 
		28 0.99999997530872131
		7 8 8.0942693059140378e-16 9 1.5532615712766948e-07 10 1.0102191336023972e-16 
		11 7.430282230308585e-52 12 2.5104690105211002e-72 13 6.8269468327942774e-74 
		28 0.99999984467384195
		7 8 5.6432966708930768e-16 9 8.3023659880551653e-10 10 9.5612347759112693e-19 
		11 1.7668989844880933e-52 12 6.0095636781498906e-73 13 1.6342353379819229e-74 
		28 0.99999999916976279
		5 8 6.7666694897302172e-18 9 6.7381317170149845e-11 10 6.0894282765659006e-20 
		11 2.6439343540655846e-55 28 0.99999999993261868
		5 8 5.6166730812260981e-18 9 1.3187415271849085e-11 10 7.5049191276399756e-21 
		11 2.1944104300488662e-55 28 0.99999999998681244
		5 8 8.5548807567792864e-20 9 9.3060420934903186e-13 10 3.9189802965312754e-22 
		11 3.8887439946430963e-58 28 0.9999999999990693
		5 8 9.881737939756642e-22 9 5.6714939660997678e-15 10 8.3220083367636142e-25 
		11 4.7027797528853278e-61 28 0.99999999999999445
		5 8 1.8738749157417502e-23 9 3.2148313804232854e-16 10 3.2305872161174484e-26 
		11 8.0060767140374835e-64 28 0.99999999999999967
		1 28 1
		1 28 1
		5 8 2.1759577126804509e-20 9 7.672068108311909e-14 10 2.2927850483692671e-23 
		11 9.8801031210700465e-59 28 0.99999999999992328
		1 28 1
		4 8 1.6100474018762543e-16 9 2.1295023226883127e-10 10 2.6960324439723516e-19 
		11 5.0370512394490782e-53;
	setAttr ".wl[1270:1369].w"
		3 12 1.7131936722079378e-73 13 4.6588434533256636e-75 28 0.99999999978704968
		5 8 5.3626439225751646e-20 9 1.2361449753674843e-12 10 5.6627068614814677e-22 
		11 2.4374614062007665e-58 28 0.99999999999876388
		5 8 8.0702454928704434e-22 9 2.1017906390584352e-14 10 4.7233676842511544e-24 
		11 3.8409687710449682e-61 28 0.99999999999997902
		5 8 2.2129546113448681e-25 9 8.6925873914000724e-18 10 4.9545703162429178e-28 
		11 6.7482018641846558e-67 28 1
		7 8 2.2490027347631515e-14 9 1.7250353733683553e-08 10 4.7806923508058104e-17 
		11 5.4054679271747433e-50 12 1.6620293825964083e-69 13 4.5197966553116101e-71 
		28 0.99999998274962376
		7 8 1.0417202616773737e-15 9 9.4728855710500428e-10 10 1.1071018466253403e-18 
		11 2.0685257380993979e-52 12 7.0354441557388598e-73 13 1.9132123517570411e-74 
		28 0.99999999905271042
		5 8 8.0424908977480959e-18 9 1.3272082703332097e-11 10 7.5789079273174644e-21 
		11 2.2314972493837445e-55 28 0.99999999998672795
		7 8 8.8352416309459017e-14 9 3.6682836219643001e-08 10 8.7104118110796755e-17 
		11 9.8420036252711903e-50 12 3.0260835365645295e-69 13 8.22926621543318e-71 
		28 0.99999996331707519
		5 8 1.0036324416941426e-18 9 3.1200741219377082e-11 10 3.0182997069629174e-20 
		11 3.9167554787629522e-56 28 0.99999999996879929
		5 8 3.7105511179807415e-20 9 3.1547717805445373e-11 10 3.0309645465492615e-20 
		11 9.1082297255514593e-59 28 0.99999999996845224
		5 8 1.2828099396371922e-19 9 9.062740720355604e-12 10 3.2254594045883684e-21 
		11 1.0893130291022696e-61 28 0.99999999999093725
		5 8 1.8032292597133981e-17 9 6.6623725169351201e-10 10 5.0167860422301319e-19 
		11 5.1387432469638718e-59 28 0.99999999933376271
		5 8 5.2818832544373894e-21 9 2.6906597897717984e-13 10 1.2670201325013809e-22 
		11 2.3973166071123631e-59 28 0.99999999999973088
		5 8 2.290399781215657e-22 9 2.8934773393198079e-13 10 1.3441541321487545e-22 
		11 6.8397475517129623e-62 28 0.99999999999971068
		5 8 3.1165342592226317e-22 9 1.3572949435284024e-14 10 3.164797213339502e-24 
		11 1.4830938049628841e-61 28 0.99999999999998646
		5 8 5.1392769145350496e-24 9 2.6270929223558843e-16 10 3.0971793248803326e-26 
		11 2.1953498030723864e-64 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		5 8 1.0346229352822503e-21 9 1.3288128447247258e-13 10 2.3112473893803303e-23 
		11 1.2652096523992429e-64 28 0.99999999999986711
		5 8 2.652032920244039e-23 9 5.5088982060396133e-15 10 4.6481391522363092e-25 
		11 9.7524625108328845e-68 28 0.99999999999999445
		5 8 3.4539176061841575e-21 9 4.0282333333276525e-13 10 6.7665131829270581e-23 
		11 9.2082234611313605e-65 28 0.99999999999959721
		1 28 1
		7 8 3.8288436994057291e-12 9 2.3427126419522765e-07 10 1.1853998594881771e-17 
		11 2.221836223205996e-51 12 7.5536082233320609e-72 13 2.0541215418230884e-73 
		28 0.99999976572490679
		5 8 6.7927605511663979e-11 9 6.5053146388070256e-08 10 4.1806338202154748e-19 
		11 1.2349559421833009e-53 28 0.99999993487892602
		5 8 5.3163521226016607e-10 9 4.9345808537786276e-08 10 7.9493028333205471e-21 
		11 3.4368619186848093e-56 28 0.99999995012255638
		5 8 1.932015856081904e-08 9 1.4422792182244179e-06 10 6.1066257635964788e-19 
		11 1.8047355968681664e-53 28 0.99999853840062314
		7 8 2.8300666237756876e-09 9 2.049139025789198e-06 10 3.5477865612741282e-17 
		11 6.6568896018012631e-51 12 2.2621190274837957e-71 13 6.1515868400124306e-73 
		28 0.99999794803090758
		7 8 5.2776930713156465e-07 9 3.0637291262238467e-05 10 3.6214180916995385e-17 
		11 6.7985400755078678e-51 12 2.3088763253341835e-71 13 6.2787386950446045e-73 
		28 0.99996883493943056
		5 8 1.2894801498761736e-06 9 2.5812739817152284e-06 10 5.1048443723159238e-19 
		11 1.5091178448834774e-53 28 0.99999612924586856
		5 8 4.4633759724645362e-08 9 1.1180689202872777e-07 10 7.6997506929055007e-21 
		11 3.3297033924927202e-56 28 0.99999984355934823
		7 8 1.1280991401845311e-05 9 0.00048728794203549511 10 1.8713412487280236e-15 
		11 2.1282833617128795e-48 12 6.5321458255904714e-68 13 1.7763913710122164e-69 
		28 0.99950143106656075
		7 8 2.8604162366952361e-05 9 4.4150383350213887e-05 10 2.8941681218795357e-17 
		11 5.4353465445927426e-51 12 1.8446067921529723e-71 13 5.0162085058528767e-73 
		28 0.99992724545428269
		7 8 0.00018929477207662345 9 0.0056894272548882194 10 8.6469002128824015e-14 
		11 5.8062426182507302e-46 12 9.2190383476347017e-65 13 2.5071571713375113e-66 
		28 0.99412127797294869
		7 8 0.00048724587425357261 9 0.00054224348501063146 10 1.4324998400476316e-15 
		11 1.6299277012455274e-48 12 4.9982486670976631e-68 13 1.3592578354966017e-69 
		28 0.99897051064073439
		7 8 0.0021294251374324225 9 0.045377463102340698 10 3.2903360376064563e-12 
		11 1.2963172323085776e-43 12 8.0189723761113955e-62 13 2.1808743440807054e-63 
		28 0.95249311175693652
		7 8 0.0066089699976146221 9 0.024250857997623609 10 6.2017498075366048e-14 
		11 4.1666695795015678e-46 12 6.6080044013782301e-65 13 1.7970881809592095e-66 
		28 0.96914017200469971
		7 8 0.042997011553763925 9 0.081612578021077103 10 1.8801345390294628e-12 
		11 7.4115401355019679e-44 12 4.5770791568502947e-62 13 1.2448208130659607e-63 
		28 0.87539041042327881
		7 8 0.013564716024083585 9 0.13846271202567731 10 1.004161221733515e-10 
		11 2.3507737919084135e-41 12 4.749632467728368e-59 13 1.2917891197732359e-60 
		28 0.847972571849823
		7 8 0.029256000958841535 9 0.24965564668821214 10 2.5337629822859113e-09 
		11 3.6411754689406363e-39 12 2.1300741158997379e-56 13 5.7936519570823998e-58 
		28 0.72108834981918335
		7 8 0.084591050564087944 9 0.15593604280051737 10 4.588657791542186e-11 
		11 1.0748717074907511e-41 12 2.1660267104157749e-59 13 5.8912657096963268e-61 
		28 0.75947290658950806
		7 8 0.0020952078549591317 9 0.1746017438520677 10 4.4506575296224698e-09 
		11 6.3921720764272915e-39 12 3.7483543752120348e-56 13 1.0194919201747512e-57 
		28 0.82330304384231567
		7 8 0.0068128416268838669 9 0.31510154684816249 10 1.0556258180610451e-07 
		11 9.8348958723601686e-37 12 1.5329883300889889e-53 13 4.1697182549556888e-55 
		28 0.67808550596237183
		7 8 0.00030130446237790594 9 0.061853498220443726 10 1.4984671511167978e-10 
		11 3.5053873213526045e-41 12 7.0939652617480468e-59 13 1.9293566968788583e-60 
		28 0.9378451971673315
		7 8 0.11857126851007055 9 0.079831315088338364 10 6.8164556512728829e-13 
		11 2.6888228805983085e-44 12 1.6557554898015406e-62 13 4.5032465744276561e-64 
		28 0.80159741640090942
		7 8 0.065277825111188403 9 0.035051693206958327 10 2.9525219871852459e-14 
		11 1.9846773589918639e-46 12 3.1419055254321062e-65 13 8.5447025291459741e-67 
		28 0.89967048168182362
		7 8 0.1201576367020607 9 0.26069077026125875 10 7.8204182423427599e-10 
		11 1.1240221243690272e-39 12 6.5431722935096771e-57 13 1.779819386975199e-58 
		28 0.61915159225463867
		7 8 0.16548119485378265 9 0.14966996012968459 10 1.1497355762693621e-11 
		11 2.6951069631995929e-42 12 5.4013669606724154e-60 13 1.4691832215464124e-61 
		28 0.6848488450050354
		7 8 0.053444245753091688 9 0.38971106000346845 10 4.2544373640163345e-08 
		11 3.9621304975105406e-37 12 6.1495733861614638e-54 13 1.6727954379545106e-55 
		28 0.55684465169906616
		6 8 0.017092515505245487 10 9.2959286233529576e-16 11 1.0581695597309375e-48 
		12 3.2411983527397714e-68 13 8.814368168388156e-70 28 0.98290748449475362
		7 8 0.00080363697035596392 9 2.9171657436483514e-05 10 1.9252736097614296e-17 
		11 3.6167407868648217e-51 12 1.2264552407239748e-71 13 3.3352125971676662e-73 
		28 0.99916719137220755
		7 8 0.018897416190235539 9 0.00024906484759412706 10 1.2285033137977203e-17 
		11 2.3086149229473061e-51 12 7.8197170007628779e-72 13 2.1264879022946785e-73 
		28 0.98085351896217032
		5 8 0.001826425359274627 9 1.1433312587853294e-06 10 2.2567493372814496e-19 
		11 6.6741246408843086e-54 28 0.99817243130946665
		7 8 0.069958096091747746 9 0.003886460093781352 10 3.8376370415521297e-16 
		11 4.3702988211814915e-49 12 1.3360989790120438e-68 13 3.6335138894186975e-70 
		28 0.92615544381447046
		7 8 2.6187921684240067e-05 9 0.0063059033203439786 10 4.1791183745584095e-12 
		11 1.6452131313628234e-43 12 1.0189801885888612e-61 13 2.7712318632782799e-63 
		28 0.99366790875379252
		7 8 1.5391071458574722e-06 9 0.00056030158373969843 10 9.348802466079574e-14 
		11 6.2729289034599674e-46 12 9.9693476124674409e-65 13 2.7111913855150272e-66 
		28 0.99943815930902091
		7 8 7.2792117484860223e-08 9 3.7989008020758596e-05 10 1.9164794519037588e-15 
		11 2.1781911414941392e-48 12 6.6902574077647558e-68 13 1.8193848908113539e-69 
		28 0.99996193819985979
		5 8 4.7501269598772822e-05 9 2.1281041335906878e-06 10 3.5283560368386256e-19 
		11 1.0432869122804277e-53 28 0.99995037062626768
		5 8 2.2110734145286276e-06 9 1.137927912035583e-07 10 5.6600389833087345e-21 
		11 2.4480081436302446e-56 28 0.99999767513379434
		5 8 0.00012776463716526707 9 7.0722598634943072e-08 10 3.5653001512617625e-21 
		11 1.5421645318376192e-56 28 0.99987216464023598
		5 8 7.1652184572864521e-06 9 3.4480885364055461e-09 10 5.2157623024458878e-23 
		11 2.9654149705479339e-59 28 0.99999283133345407
		5 8 3.0258363626824195e-07 9 1.2712616925902443e-10 10 6.4296230770596438e-25 
		11 4.1190286165101521e-62 28 0.99999969728923754
		5 8 8.0077500762260166e-08 9 4.5546935831604705e-09 10 7.6968181580027339e-23 
		11 4.3758347923241549e-59 28 0.99999991536780553
		5 8 1.8982798879502323e-07 9 2.8379417176426066e-12 10 4.8401434087679923e-27 
		11 2.7822629707121648e-65 28 0.99999981016917316
		5 8 4.6543912022902222e-06 9 8.4022907804184477e-11 10 4.348265038916902e-25 
		11 2.7855284435511276e-62 28 0.99999534552477476
		5 8 8.7825215238188038e-05 9 1.9398430304139678e-09 10 3.3419570753814636e-23 
		11 1.9000916637981723e-59 28 0.99991217284491862
		5 8 2.3570372410716543e-09 9 1.4216750965992693e-10 10 8.7783736253559307e-25 
		11 5.6237700978563179e-62 28 0.99999999750079527
		5 8 1.2289744090510259e-09 9 3.6878903136794968e-09 10 9.4874288499607231e-23 
		11 5.3933689635052524e-59 28 0.99999999508313531
		5 8 1.0301683143640519e-08 9 3.7355921433224842e-12 10 6.7690635477738967e-27 
		11 3.8914067688068454e-65 28 0.99999998969458126
		5 8 2.7115554515227657e-11 9 9.4259176940525083e-11 10 9.4139606557836027e-25 
		11 6.0307074778599715e-62 28 0.99999999987862531
		5 8 5.757140467654481e-11 9 3.5662771393431422e-12 10 8.3912104885885084e-27 
		11 4.8241916691029482e-65 28 0.99999999993886235
		5 8 1.1862653370193029e-12 9 7.4513156398772573e-14 10 6.8788987617307625e-29 
		11 2.473143006418858e-68 28 0.99999999999873923
		5 8 2.8373037836920417e-10 9 8.9432739214728768e-14 10 6.0726712559927546e-29 
		11 2.1830985198678524e-68 28 0.99999999971618025
		5 8 6.376582726419777e-12 9 1.7866152817400712e-15 10 4.6910895986132283e-31 
		11 5.3334801464018104e-72 28 0.99999999999362166
		4 8 3.6603051495975744e-12 9 3.2737770642848845e-17 10 2.6980108528779249e-33 
		28 0.99999999999633971
		5 8 1.6431008202657295e-10 9 1.7199357523777152e-15 10 3.7678910609891019e-31 
		11 4.2831736073156311e-72 28 0.99999999983568821
		4 8 1.1594565590807885e-13 9 2.9528366470930993e-17 10 3.0624413708169125e-33 
		28 0.99999999999988398
		4 8 6.6357317992694982e-14 9 5.2159643002324345e-19 10 1.6462871540650234e-35 
		28 0.99999999999993361
		5 8 2.0008517810495501e-14 9 1.2809125601214198e-15 10 4.7597739237521556e-31 
		11 5.4123104960350283e-72 28 0.99999999999997857
		1 28 1
		4 8 7.0235830792333123e-14 9 7.640177937540266e-21 10 7.7001668222047587e-38 
		28 0.99999999999992972
		1 28 1
		4 8 3.6483807584797773e-12 9 4.9022696406665344e-19 10 1.3473516585556461e-35 
		28 0.99999999999635147
		4 8 1.5536071767506514e-10 9 2.6823358732273152e-17 10 2.0346522008394057e-33 
		28 0.99999999984463939
		5 8 6.1098279578435188e-09 9 7.6402275253064656e-14 10 4.5752655189298966e-29 
		11 1.6445795898688575e-68 28 0.99999999389009553
		5 8 5.7435892309727083e-09 9 1.2931808679909798e-15 10 2.7653394829219371e-31 
		11 3.1428645594392453e-72 28 0.9999999942564094
		5 8 1.7275421893979564e-07 9 5.2215800634336991e-14 10 3.2598042472551604e-29 
		11 1.171540917808282e-68 28 0.99999982724572878
		7 8 1.7485731242379333e-15 9 8.6466869345002282e-10 10 8.2503430424493535e-19 
		11 1.5398725736815095e-52 12 5.2372639558594414e-73 13 1.4242168465780289e-74 
		28 0.99999999913532955
		5 8 2.5439994813641479e-17 9 2.9509119108515264e-11 10 1.5372100549311354e-20 
		11 4.5252177197187771e-55 28 0.99999999997049072
		5 8 2.0985346480653959e-19 9 4.4662261962054056e-13 10 1.1941581566524408e-22 
		11 5.1474285258448145e-58 28 0.99999999999955336
		5 8 2.8586286127753413e-23 9 1.7167835958153237e-16 10 1.2462924080328022e-26 
		11 7.9693682776404539e-64 28 0.99999999999999978
		5 8 1.0870724483022622e-21 9 4.96916198498281e-15 10 7.2514496485621109e-25 
		11 4.1121302715382507e-61 28 0.99999999999999489
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 0 4.4845971534097448e-11 28 1
		1 28 1
		1 28 1
		1 0 5.9546041281211345e-11;
	setAttr ".wl[1369:1614].w"
		1 28 1
		2 0 1.920481428233121e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 5.1615290573408526e-25 9 4.1266093771166824e-18 10 1.5108280715450953e-28 
		11 8.6743041510788717e-67 28 1
		5 8 3.9035809034105465e-21 9 1.1066148438927722e-14 10 1.4314665734908305e-24 
		11 8.1166790176632379e-61 28 0.9999999999999889
		5 8 6.8175556569675395e-27 9 7.3398543783261319e-20 10 1.3664065640983967e-30 
		11 4.9083253291351725e-70 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		5 8 4.7107729580014902e-19 9 7.264684323515956e-13 10 1.7637392401668411e-22 
		11 7.6009777929917711e-58 28 0.99999999999927347
		5 8 3.1454368818203657e-17 9 2.038593989123647e-11 10 8.4372282044151588e-21 
		11 2.4809944035067883e-55 28 0.99999999997961386
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 8 3.3974517542193653e-18 9 2.9134885840284307e-13 10 7.1952018037576576e-31 
		28 0.99999999999970879
		4 8 3.5055590281186847e-20 9 5.871177609400777e-15 10 4.3926087630819417e-33 
		28 0.99999999999999412
		4 8 1.2170475894692085e-16 9 1.0044123180879359e-11 10 1.0600555095996315e-28 
		28 0.9999999999899557
		4 8 1.2909646878198728e-18 9 2.0959488594687249e-13 10 6.8514877618036285e-31 
		28 0.9999999999997905
		4 8 1.2435652005367151e-20 9 3.693967159707294e-15 10 3.7788553326404668e-33 
		28 0.99999999999999634
		4 8 3.1721940928309016e-22 9 9.7022602694034092e-17 10 2.2207429922257684e-35 
		28 0.99999999999999978
		4 8 3.0837320244910109e-15 9 2.5989621248328483e-10 10 1.3047413103142239e-26 
		28 0.99999999974010056
		4 8 3.4670496378911096e-17 9 5.7500092993145e-12 10 9.0173781254341616e-29 
		28 0.99999999999425004
		4 8 5.0502509510335282e-14 9 4.7702002490502461e-09 10 1.3343666310286174e-24 
		28 0.99999999522974936
		4 8 2.2138866180880678e-13 9 8.5105420596826914e-09 10 1.4177783575024582e-24 
		28 0.99999999148923657
		4 8 3.501757498966664e-12 9 1.4765351341582712e-07 10 1.3598486107305277e-22 
		28 0.99999985234298483
		4 8 6.0243826695030742e-16 9 1.1352000853505899e-10 10 9.9614642087389184e-27 
		28 0.99999999988647936
		4 8 4.548878728506381e-13 9 5.7707990382451668e-08 10 1.126353612633317e-22 
		28 0.99999994229155487
		5 8 3.1115070546250789e-11 9 1.6964184372898172e-06 10 1.092228884479339e-20 
		11 3.012505587617424e-68 28 0.99999830355044761
		5 8 8.7323667882223168e-11 9 1.1554761066627786e-05 10 7.3759861382475445e-19 
		11 9.7457603564407865e-65 28 0.99998844515160967
		5 8 1.2711988014257752e-12 9 4.0961154684315377e-07 10 7.8206442742285699e-21 
		11 3.0881160932034147e-68 28 0.999999590387182
		5 8 1.6204721945551287e-09 9 3.2440466911992259e-05 10 7.9140989496051222e-19 
		11 7.4541711266478343e-65 28 0.99996755791261582
		5 8 1.8838553931609567e-10 9 3.0596212146112956e-06 10 1.0460268960320613e-20 
		11 2.1517134003918987e-68 28 0.99999694019039986
		5 8 4.4517924872818871e-09 9 0.00020327717185304153 10 5.1692063391534696e-17 
		11 1.2644651439216695e-61 28 0.99979671837635442
		5 8 4.7737977727442204e-12 9 1.4131390889240549e-06 10 4.2720056453133488e-19 
		11 8.6387049079613257e-65 28 0.99999858685613729
		5 8 3.1277283017669073e-10 9 4.044392325057957e-05 10 3.8864235815908271e-17 
		11 1.4175663483978793e-61 28 0.99995955576397644
		4 8 2.5940771551163085e-24 9 1.3827114651202207e-18 10 9.6118319891661441e-38 
		28 1
		4 8 9.0296721577146742e-15 9 3.4307857503656214e-10 10 1.2191116322085402e-26 
		28 0.99999999965691233
		4 8 5.247924602512434e-13 9 8.0668251832700232e-09 10 1.0764242622540107e-24 
		28 0.99999999193264999
		4 8 2.5968926315490667e-16 9 1.0312164940925464e-11 10 8.7588462473773319e-29 
		28 0.99999999998968769
		4 8 1.5694369013596254e-14 9 2.542776177433902e-10 10 8.2445405044934624e-27 
		28 0.99999999974570652
		4 8 1.2354307710475722e-11 9 1.8872941451362827e-07 10 1.1678251416920282e-22 
		28 0.99999981125823123
		5 8 6.2921574581651608e-10 9 3.0437146933310645e-06 10 8.5191813991974532e-21 
		11 1.3747027956368382e-68 28 0.99999695565609092
		5 8 9.2141678804435011e-09 9 4.5869562266508137e-05 10 7.1689195712563077e-19 
		11 5.1224782645989017e-65 28 0.99995412122356553
		4 8 2.7723638436754652e-11 9 1.3710794459726246e-07 10 8.3268362697184626e-23 
		28 0.99999986286433173
		4 8 8.6489134276989895e-13 9 4.5406977776652669e-09 10 6.7967557676318821e-25 
		28 0.99999999545843743
		1 28 1
		1 28 1
		4 8 3.0935578867970309e-11 9 3.5378785203904868e-08 10 3.5971377175286248e-23 
		28 0.99999996459027918
		5 8 9.5626937665572365e-10 9 1.0409166431408444e-06 10 4.2110627016314737e-21 
		11 5.6331048881804983e-69 28 0.99999895812708739
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		3 15 0.002034549368545413 16 0.065245229052379727 28 0.93272022157907486
		2 16 0.026621831580996513 28 0.97337816841900349
		2 16 0.05786847323179245 28 0.94213152676820755
		3 15 0.0069233747199177742 16 0.13690954726189375 28 0.85616707801818848
		3 15 0.0092028509825468063 16 0.10198262520134449 28 0.88881452381610859
		3 15 0.0021976395510137081 16 0.033830816391855478 28 0.96397154405713081
		2 16 0.0084428125992417336 28 0.99155718740075827
		3 15 0.027390545234084129 16 0.11961295641958714 28 0.85299649834632885
		3 15 0.010973578318953514 16 0.047933446243405342 28 0.94109297543764114
		3 15 0.021898197010159492 16 0.19206543080508709 28 0.78603637218475331
		3 15 0.046304263174533844 16 0.21664559096097946 28 0.73705014586448669
		3 15 0.065297968685626984 16 0.33776050060987473 28 0.59694153070449829
		3 15 0.035545248538255692 16 0.31882904097437859 28 0.64562571048736572
		3 15 0.078437700867652893 16 0.48690955340862274 28 0.43465274572372437
		3 15 0.11469431221485138 16 0.45302434265613556 28 0.43228134512901301
		3 15 0.10018669068813324 16 0.32925708591938019 28 0.57055622339248657
		3 15 0.086547642946243286 16 0.64343181252479553 28 0.27002054452896118
		3 15 0.1242234855890274 16 0.58470503985881805 28 0.29107147455215454
		3 15 0.15158563852310181 16 0.41113775968551636 28 0.43727660179138178
		3 15 0.13896416127681732 16 0.3079020231962204 28 0.55313381552696228
		3 15 0.18810449540615082 16 0.36873354017734528 28 0.44316196441650385
		3 15 0.17885378003120422 16 0.28244525194168091 28 0.53870096802711487
		3 15 0.16602149605751038 16 0.20073279738426208 28 0.63324570655822754
		3 15 0.1229584813117981 16 0.21256411075592041 28 0.66447740793228149
		3 15 0.20439180731773376 16 0.19238638877868652 28 0.60322180390357971
		3 15 0.21486671268939972 16 0.26137201488018036 28 0.52376127243041992
		3 15 0.21960136294364929 16 0.33200910687446594 28 0.44838953018188477
		3 15 0.081701323390007019 16 0.2213776558637619 28 0.69692102074623108
		3 15 0.10372304171323776 16 0.13118978589773178 28 0.76508717238903046
		3 15 0.05893271416425705 16 0.13285299390554428 28 0.80821429193019856
		3 15 0.14967700839042664 16 0.12872299551963806 28 0.7215999960899353
		3 15 0.16101361811161041 16 0.51705239713191986 28 0.32193398475646973
		3 15 0.19425235688686371 16 0.45698864758014679 28 0.3487589955329895
		3 15 0.16685819625854492 16 0.61681729555130005 28 0.21632450819015503
		3 15 0.19773688912391663 16 0.54392877221107483 28 0.25833433866500854
		3 15 0.22472649812698364 16 0.48062676191329956 28 0.2946467399597168
		3 15 0.2235526442527771 16 0.40221279859542847 28 0.37423455715179443
		3 15 0.12962765991687775 16 0.71555954217910767 28 0.15481279790401459
		3 15 0.17016184329986572 16 0.69312542676925659 28 0.13671272993087769
		3 15 0.19596453011035919 16 0.62754492461681366 28 0.17649054527282715
		3 15 0.14422450959682465 16 0.76972662657499313 28 0.086048863828182207
		3 15 0.088464222848415375 16 0.77649267762899399 28 0.13504309952259064
		3 15 0.087903335690498352 16 0.8515707291662693 28 0.060525935143232346
		3 15 0.11359631270170212 16 0.8172929584980011 28 0.069110728800296783
		3 15 0.088754646480083466 16 0.88423405215144157 28 0.02701130136847496
		3 15 0.10474999248981476 16 0.86111665889620781 28 0.034133348613977432
		3 15 0.059616275131702423 16 0.90751529857516289 28 0.032868426293134689
		3 15 0.069379709661006927 16 0.91349450312554836 28 0.01712578721344471
		3 15 0.084967739880084991 16 0.9067259356379509 28 0.0083063244819641113
		3 15 0.10564615577459335 16 0.87467563338577747 28 0.019678210839629173
		3 15 0.061717130243778229 16 0.93033535499125719 28 0.0079475147649645805
		3 15 0.1233447939157486 16 0.83004328608512878 28 0.04661191999912262
		3 15 0.041732653975486755 16 0.88721316307783127 28 0.071054182946681976
		4 15 0.016918811714276671 16 0.95959573984146118 17 0.0029588064644485712 
		28 0.020526641979813576
		3 15 0.039911776781082153 16 0.94676053337752819 28 0.013327689841389656
		4 15 0.018356525339186192 16 0.95035344362258911 17 0.0096550760790705681 
		28 0.021634954959154129
		4 15 0.0067428676411509514 16 0.96129143238067627 17 0.023680094629526138 
		28 0.0082856053486466408
		3 15 0.011790253221988678 16 0.90863442420959473 28 0.079575322568416595
		4 15 0.014082979876548052 16 0.95444786548614502 17 0.0053503322415053844 
		28 0.026118822395801544
		3 15 0.021363615989685059 16 0.78025221824645996 28 0.19838416576385498
		3 15 0.051712345331907272 16 0.70770253613591194 28 0.24058511853218079;
	setAttr ".wl[1615:1978].w"
		3 15 0.042905684560537338 16 0.5029287077486515 28 0.45416560769081116
		3 15 0.026785442605614662 16 0.61730711720883846 28 0.35590744018554688
		3 15 0.020000159740447998 16 0.68956303596496582 28 0.29043680429458618
		3 15 0.01753900945186615 16 0.81666696071624756 28 0.16579402983188629
		3 15 0.0053635835647583008 16 0.51420855522155762 28 0.48042786121368414
		3 15 0.0039039850234985352 16 0.54715055227279663 28 0.44894546270370489
		3 15 0.016615241765975952 16 0.72376614809036255 28 0.2596186101436615
		3 15 0.018283963203430176 16 0.45492875576019287 28 0.52678728103637695
		2 16 0.85949894785881031 28 0.14050105214118969
		3 15 0.018608627840876579 16 0.34733313508331776 28 0.63405823707580566
		3 15 0.014066457748413086 16 0.23676300048828125 28 0.74917054176330566
		2 16 0.18567727506160736 28 0.81432272493839264
		2 16 0.27182462811470032 28 0.72817537188529968
		3 15 0.0016897022724151611 16 0.13573160767555237 28 0.86257869005203247
		3 15 0.036946088075637817 16 0.056161880493164063 28 0.90689203143119801
		3 15 0.02120710164308548 16 0.012126665562391281 28 0.96666623279452335
		2 16 0.010898744687438011 28 0.98910125531256199
		2 16 0.012422583997249603 28 0.9875774160027504
		1 28 1
		3 15 0.06622052937746048 16 0.026902258396148682 28 0.90687721222639084
		3 15 0.054098989814519882 16 0.0076299495995044708 28 0.93827106058597565
		3 15 0.11774864792823792 16 0.036390572786331177 28 0.84586077928543091
		3 15 0.082953140139579773 16 0.067593023180961609 28 0.84945383667945862
		3 15 0.13231715559959412 16 0.07353655993938446 28 0.79414628446102142
		3 15 0.10711289942264557 16 0.014692820608615875 28 0.87819427996873856
		3 15 0.1649305522441864 16 0.058853119611740112 28 0.77621632814407349
		3 15 0.15719878673553467 16 0.04138462245464325 28 0.80141659080982208
		3 15 0.098159819841384888 16 0.0083040222525596619 28 0.89353615790605545
		2 15 0.046138118952512741 28 0.95386188104748715
		2 15 0.0061381924897432327 28 0.99386180751025666
		3 15 0.15170928835868835 16 0.02628035843372345 28 0.8220103532075882
		3 15 0.20152261853218079 16 0.079163819551467896 28 0.71931356191635132
		3 15 0.20065979659557343 16 0.061306312680244446 28 0.73803389072418213
		3 15 0.20180557668209076 16 0.089501842856407166 28 0.70869258046150208
		3 15 0.17471079528331757 16 0.085686489939689636 28 0.7396027147769928
		3 15 0.18984480202198029 16 0.13093121349811554 28 0.67922398447990417
		3 15 0.21676760911941528 16 0.13624250888824463 28 0.64698988199234009
		3 15 0.2013179212808609 16 0.098426803946495056 28 0.70025527477264404
		3 15 0.23196277022361755 16 0.1940731406211853 28 0.57396408915519714
		1 28 0.99999999999999989
		2 15 0.0061810268089175224 28 0.99381897319108248
		1 28 1
		2 15 0.033370215445756912 28 0.96662978455424309
		2 15 0.027672253549098965 28 0.97232774645090103
		2 15 0.0054476410150527954 28 0.99455235898494732
		2 15 0.086993083357810974 28 0.91300691664218903
		3 15 0.14283160865306854 16 0.014686599373817444 28 0.84248179197311401
		2 15 0.073135055601596832 28 0.92686494439840317
		3 15 0.12897814810276031 16 0.006288379430770874 28 0.86473347246646881
		1 28 1
		2 15 0.0042149755172431469 28 0.99578502448275685
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 15 0.0028170295991003513 28 0.99718297040089965
		1 28 1
		2 15 0.021093117073178291 28 0.97890688292682171
		2 15 0.0138841662555933 28 0.9861158337444067
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.0016612621257081628 28 0.99833873787429184
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 8.9516860883178857e-10 9 1.0686583968793238e-07 10 1.5972370616666901e-21 
		11 1.8641477860364733e-69 28 0.99999989223899177
		1 28 1
		5 8 1.7709199594094695e-08 9 3.3181824481378092e-07 10 4.3939729874424934e-20 
		11 1.8911414618511567e-66 28 0.99999965047255557
		6 2 4.4040609375496642e-13 8 2.6304034005582535e-08 9 3.0674953250507074e-06 
		10 1.7679834312089458e-19 11 8.7648191581037931e-66 28 0.99999690620064097
		6 2 3.7766634437830238e-12 8 5.0490462726001919e-07 9 9.1689426001190818e-06 
		10 4.6714047443436586e-18 11 4.6638112562638546e-63 28 0.9999903261527725
		1 28 1
		1 28 1
		2 16 0.0016612621257081628 28 0.99833873787429195
		2 16 0.012824011966586113 28 0.98717598803341389
		1 28 1
		1 28 1
		2 16 0.0047133862972259521 28 0.99528661370277394
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 1 4.3959436785145911e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.0044425604864954948 28 0.99555743951350439
		2 16 0.0017763494979590175 28 0.99822365050204098
		2 16 0.015762364491820335 28 0.98423763550817978
		2 16 0.021628387272357941 28 0.97837161272764206
		2 16 0.056240484118461609 28 0.94375951588153839
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 1 1.3259873884660656e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		2 1 8.9492829813409003e-11 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		2 16 0.046113241463899612 28 0.95388675853610039
		3 1 1.4927203570436198e-11 16 0.026257175952196121 28 0.97374282404780388
		2 16 0.022313736379146576 28 0.97768626362085342
		1 28 1
		2 16 0.14833767712116241 28 0.8516623228788377
		2 16 0.12460692226886749 28 0.87539307773113251
		2 16 0.014433462172746658 28 0.98556653782725345
		1 28 0.99999999999999989
		3 1 4.6235300310559779e-11 16 0.085569113492965698 28 0.9144308865070343
		2 16 0.34170860052108765 28 0.65829139947891235
		2 16 0.31764024496078491 28 0.68235975503921509
		2 16 0.16004894673824313 28 0.8399510532617569
		1 28 1
		2 16 0.046406861394643784 28 0.95359313860535633
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 16 0.045022469013929367 28 0.95497753098607052
		2 16 0.043124914169311516 28 0.95687508583068848
		2 16 0.045564830303192139 28 0.95443516969680786
		1 28 1
		2 16 0.16349849104881287 28 0.83650150895118702
		2 16 0.16955958306789398 28 0.83044041693210602
		2 16 0.17396643757820129 28 0.82603356242179871
		2 16 0.16416756808757782 28 0.83583243191242218
		2 16 0.35366114974021912 28 0.64633885025978088
		2 16 0.36265033483505249 28 0.63734966516494751
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 1 2.0977000831301548e-15 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[1979:2470].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 2.4383444915954122e-11 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 8.5236907809704832e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 2.0287441431648956e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		5 8 0.00092078362933298102 9 2.3923832156594004e-15 10 3.3947024592533639e-25 
		11 4.4957177124095591e-62 28 0.99907921637066477
		2 8 0.00070223907374703204 9 3.1876254185254134e-16;
	setAttr ".wl[2470:2662].w"
		3 10 2.6780765165220814e-25 11 2.8368423859322834e-64 28 0.99929776092625278
		1 28 1
		5 8 0.0010762509563501106 9 9.4564554466559151e-15 10 2.2670146823156463e-25 
		11 2.4713276746546032e-60 28 0.99892374904364045
		5 8 0.010652218408260682 9 4.2555447971595021e-14 10 6.0188492145537481e-23 
		11 7.1891528793721525e-61 28 0.98934778159169678
		5 8 0.0094279356382215383 9 7.2775370407154859e-15 10 7.1979508843492206e-24 
		11 2.6849903643892988e-63 28 0.99057206436177114
		5 8 0.00062879955830913523 9 5.3463635218496576e-17 10 3.2079470849110867e-26 
		11 7.7343925921676367e-67 28 0.99937120044169081
		5 8 0.013650664071514147 9 3.1152810712023919e-13 10 7.9345955463201422e-23 
		11 9.2109174076059849e-59 28 0.98634933592817442
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 8 0.00064161172422974155 9 1.0335745289336967e-23 10 2.2816234119399055e-34 
		28 0.99935838827577028
		4 8 0.00083984554814471243 9 4.5928381257687388e-22 10 2.1848560334406963e-32 
		28 0.99916015445185513
		4 8 0.015212900005280972 9 1.8850213580416461e-21 10 6.760039841672215e-32 
		28 0.98478709999471903
		4 8 0.011131242848932743 9 3.5871018185994815e-23 10 6.0557936321678288e-34 
		28 0.98886875715106726
		4 8 0.00041932316694008929 9 1.8359378598994955e-25 10 1.8913997891374262e-36 
		28 0.99958067683305996
		4 8 0.056367337703704834 9 2.6228147743623962e-19 10 1.5335730091076268e-29 
		28 0.94363266229629517
		4 8 0.043726585805416107 9 5.2115400428679036e-21 10 1.4435250781156269e-31 
		28 0.95627341419458389
		2 8 0.0058023426681756973 28 0.9941976573318243
		1 28 1
		1 28 1
		1 28 1
		2 8 0.0013994931941851974 28 0.9986005068058148
		1 28 1
		2 8 0.030016154050827026 28 0.96998384594917297
		2 8 0.017974909394979477 28 0.98202509060502052
		1 28 1
		1 28 1
		1 28 1
		2 8 0.0003031800442840904 28 0.99969681995571591
		1 28 1
		1 28 1
		4 8 0.064384892582893372 9 9.6506591947559206e-18 10 1.2258732413967132e-27 
		28 0.93561510741710663
		4 8 0.018572187051177025 9 7.4971623049272139e-20 10 5.8123443677088287e-30 
		28 0.98142781294882298
		5 8 0.14871588349342346 9 1.0134267810687813e-15 10 2.1306052806667769e-25 
		11 1.6268074462609954e-68 28 0.85128411650657554
		4 8 0.13318720459938049 9 2.9029396431984933e-17 10 2.7882813061075808e-27 
		28 0.86681279540061951
		5 8 0.26865571737289429 9 8.8726141488505736e-14 10 3.1260555593320102e-23 
		11 6.3745560333244937e-65 28 0.73134428262701701
		5 8 0.24594052135944366 9 2.6882398220723736e-15 10 4.2879889641918536e-25 
		11 2.1413172767737167e-68 28 0.75405947864055367
		5 8 0.41494977474212646 9 6.2996637130942755e-12 10 3.7676780570343523e-21 
		11 1.1077216924010531e-61 28 0.58505022525157391
		5 8 0.37814471125602722 9 2.0338388227773703e-13 10 5.4508761741926494e-23 
		11 7.2400257999473683e-65 28 0.62185528874376939
		5 8 0.28038592990554612 9 1.9935103847219982e-12 10 1.5722037283915446e-21 
		11 7.8456633508846189e-62 28 0.71961407009246037
		5 8 0.44555185069604591 9 1.2900541693586878e-10 10 1.7759083027475208e-19 
		11 9.2547009599694873e-59 28 0.55444814917494867
		5 8 0.15128219357301065 9 2.4687960564635187e-14 10 1.1391618835966255e-23 
		11 3.9053578639756164e-65 28 0.8487178064269647
		4 8 0.21454161405563354 9 5.7252607333587023e-17 10 4.3297043703928236e-27 
		28 0.78545838594436646
		4 8 0.11270494759082794 9 5.9977769768063766e-19 10 2.7362838605381747e-29 
		28 0.88729505240917206
		5 8 0.070688202977180481 9 2.5413226504031527e-16 10 6.9618760319584209e-26 
		11 8.7900189986031408e-69 28 0.9293117970228193
		5 8 0.065073118617637662 9 5.2428333340333656e-15 10 2.7859053002546892e-24 
		11 1.7089166834699948e-65 28 0.93492688138235713
		5 8 0.15513362950780674 9 4.7909366106826105e-13 10 4.3559683384790612e-22 
		11 3.9905901828118164e-62 28 0.8448663704917142
		4 8 0.020573971793055534 9 2.1721272388342281e-18 10 3.5782780856005179e-28 
		28 0.97942602820694458
		5 8 0.012189071251065343 9 4.8226152304149262e-17 10 1.5253440644375565e-26 
		11 3.3729207690770176e-69 28 0.98781092874893461
		4 8 0.0011001007332068274 9 1.4663797000803749e-20 10 1.4645348157154066e-30 
		28 0.99889989926679312
		4 8 0.00097406588583222591 9 3.5014639206202298e-19 10 6.6739040923545743e-29 
		28 0.99902593411416762
		1 28 0.99999999999999989
		5 8 0.00075872228374669691 9 5.7272285298602809e-18 10 1.9027328049384341e-27 
		11 7.7742217074534553e-70 28 0.99924127771625326
		5 8 0.010351643923837963 9 7.7259914694021023e-16 10 4.2311995332801035e-25 
		11 4.8714574205284342e-66 28 0.98964835607616131
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 0.00096352128478868196 9 3.6167520071898554e-14 10 4.4066050346506237e-26 
		11 1.2804418191021919e-60 28 0.9990364787151752
		5 8 0.0012131422059891068 9 4.1453974822342333e-14 10 2.9175562191817176e-26 
		11 1.5318994851341159e-60 28 0.99878685779396947
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 3.5221554839370839e-11 28 1
		1 28 1
		1 28 1
		5 8 0.00025263254965706653 9 6.372811975312068e-16 10 9.1154319069332179e-28 
		11 5.8273321884796997e-65 28 0.99974736745034232
		1 28 1
		5 8 5.6964689932961882e-05 9 5.2101391575808561e-16 10 3.5876801411528287e-29 
		11 2.0584466047981459e-67 28 0.99994303531006656
		1 28 1
		5 8 0.0004354729640794827 9 9.6607194140403139e-16 10 1.3336130293414241e-26 
		11 7.5646557589445018e-63 28 0.99956452703591958
		5 8 0.00066897653647558623 9 6.084543841023544e-15 10 1.1018972871700743e-25 
		11 4.7562690268538205e-61 28 0.99933102346351821
		7 8 0.016843955652855066 9 4.8398010439119186e-12 10 7.121701998779692e-24 
		11 2.5313486497358596e-57 12 3.2446113617442751e-78 13 8.9633628778117507e-80 
		28 0.98315604434230508
		7 8 0.013480310350702006 9 4.1535286082164201e-12 10 1.0588606860659514e-23 
		11 2.0480748644546669e-57 12 1.8815697489109448e-78 13 5.1183866185710816e-80 
		28 0.98651968964514458
		7 8 0.073066419852096554 9 4.5981872596447246e-10 10 1.4764230719659708e-21 
		11 3.3017305695005545e-54 12 4.6767776911811799e-74 13 1.2966603100572028e-75 
		28 0.92693357968808487
		7 8 0.0798098802670867 9 5.3244238239152001e-10 10 2.0080560558563341e-21 
		11 4.2415428569495976e-54 12 2.4118611266779848e-74 13 6.8366361413141399e-76 
		28 0.920190119200471
		5 8 0.018085599955104226 9 5.5893500746052158e-12 10 9.7092163877183476e-24 
		11 3.1788676340750057e-57 28 0.98191440003930652
		7 8 0.063081066740605304 9 3.8735234487305654e-10 10 2.1551312204732381e-21 
		11 2.5864684470011665e-54 12 2.7705188908673566e-74 13 7.5779947001130535e-76 
		28 0.93691893287204231
		7 8 0.1357134879325945 9 2.9774486740435193e-08 10 3.8278222281017956e-19 
		11 2.7239008674037392e-51 12 1.7675336234709716e-70 13 4.8485136788103007e-72 
		28 0.86428648229291882
		7 8 0.15520927776654592 9 3.6400617133084701e-08 10 2.7023724143827663e-19 
		11 3.6265540496533292e-51 12 3.0166839789619244e-70 13 8.3811930722050116e-72 
		28 0.8447906858328369
		7 8 0.050245803436599956 9 6.8750319258626412e-11 10 4.9559376348961367e-21 
		11 9.3382655442455209e-55 12 3.0627761942848691e-75 13 8.3289236554869133e-77 
		28 0.94975419649464987
		5 8 0.0095340683655221452 9 7.2058733697949502e-13 10 2.5509567256282949e-23 
		11 7.5499796706639357e-58 28 0.9904659316337574
		7 8 0.11073051842540621 9 5.363685550215344e-09 10 8.3383900253661476e-19 
		11 9.530316032514221e-52 12 2.8309334981600033e-71 13 7.6994178203072844e-73 
		28 0.88926947621090824
		7 8 0.18743577233820746 9 4.142820273500547e-07 10 1.0928968110888043e-16 
		11 7.3764469872818898e-49 12 1.1362527115676312e-67 13 3.0906643582583636e-69 
		28 0.81256381337976502
		7 8 0.22708020125502579 9 0.00013093468442093581 10 5.4810662963593766e-17 
		11 2.2541175090725591e-48 12 6.3454933167751987e-67 13 1.7437938985916496e-68 
		28 0.77278886406055325
		7 8 0.14313829348920656 9 6.1830508002458373e-07 10 1.3339136189205309e-17 
		11 1.5212254632285346e-50 12 4.6053819279906425e-70 13 1.2524701574778297e-71 
		28 0.85686108820571338
		7 8 0.083967278518059046 9 9.5553879108731297e-10 10 1.0172827960045119e-19 
		11 1.9140046733425048e-53 12 6.4035732614984992e-74 13 1.7413855034390646e-75 
		28 0.91603272052640206
		5 8 0.037806510803240261 9 1.1760646675877835e-11 10 6.103317879786497e-22 
		11 1.8059144644899351e-56 28 0.96219348918499903
		7 8 0.16970105992811657 9 4.2420114722386049e-08 10 3.6636403437259854e-19 
		11 4.752916769684523e-51 12 2.4022072167844597e-70 13 6.8082094282828044e-72 
		28 0.83029889765176867
		7 8 0.27803026497049466 9 0.0029889408033341169 10 5.0430969210551768e-17 
		11 3.9016563076675925e-48 12 1.0067413853552734e-66 13 2.8528693944150547e-68 
		28 0.71898079422617123
		7 8 0.29435075448439607 9 6.1181208366178907e-07 10 2.349839492688886e-16 
		11 4.6570720586726691e-48 12 1.1815653925047981e-66 13 3.1842617483962159e-68 
		28 0.70564863370352005
		7 8 0.17903145674574131 9 9.6333598758902973e-09 10 1.89979086663296e-18 
		11 6.2131167886835034e-51 12 3.1288200742308828e-70 13 8.4337776343666287e-72 
		28 0.82096853362089883
		7 8 0.25634591965355813 9 0.0030923574231564999 10 3.9963991990189324e-17 
		11 3.1344430089540202e-48 12 1.1078284194339455e-66 13 3.0821139083250309e-68 
		28 0.74056172292328526
		7 8 0.082291492185052759 9 1.1719538698473239e-10 10 1.0920221450984546e-20 
		11 5.7016141457570777e-54 12 3.2841344192487355e-74 13 8.8540178136090338e-76 
		28 0.91770850769775181
		5 8 0.015674280709208649 9 1.1701697667124481e-12 10 5.4193878552234261e-23 
		11 4.2707363812713706e-57 28 0.9843257192896212
		5 8 0.0012924038314318267 9 4.7666272714070955e-14 10 3.9603669302109396e-26 
		11 1.8620421875378565e-60 28 0.99870759616852056
		5 8 0.080700758422687521 9 3.3192835353121787e-11 10 1.5675066256178024e-20 
		11 1.3969250998974603e-55 28 0.91929924154411968
		5 8 0.071364688002111626 9 4.6599808415698358e-12 10 1.1489105507405678e-20 
		11 1.2569869016782269e-57 28 0.92863531199322846
		7 8 0.18087657145832983 9 2.8275499345508401e-09 10 2.5850370421725673e-18 
		11 1.6148421172785633e-52 12 9.3891091236240513e-73 13 2.5313013665714466e-74 
		28 0.81912342571412022
		5 8 0.17083318476970702 9 3.9895358319791538e-10 10 1.7901073249906994e-18 
		11 1.556024873202588e-54 28 0.82916681483133936
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 3.7927577745122676e-11 28 1
		1 28 1
		2 2 2.2119195364211919e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[2663:2792].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		7 8 0.54759521781836018 9 0.059426054358482361 10 5.6221041858957091e-12 
		11 2.4065302218538426e-48 12 1.2231058348138474e-67 13 3.2960388476639164e-69 
		28 0.39297872781753546
		7 8 0.71040838196569733 9 0.10831163078546524 10 1.5205093941181522e-10 
		11 9.067802968539912e-46 12 2.3225214977792073e-64 13 6.2562557698466404e-66 
		28 0.1812799870967865
		7 8 0.66657644510269165 9 0.21645770967006683 10 6.5511328426585814e-09 
		11 1.7235534825835761e-43 12 1.676669267448083e-61 13 4.5136300419604572e-63 
		28 0.11696583867610866
		7 8 0.52449780702590942 9 0.14186446368694305 10 2.3529808286921304e-10 
		11 4.8360067950226921e-46 12 1.2334802257894459e-64 13 3.3220527393427349e-66 
		28 0.33363772905184941
		5 8 0.36278907203819111 9 0.00011029100273016369 10 2.8012908395822745e-15 
		11 1.4459040972960091e-53 28 0.63710063695907593
		7 8 0.5400640135630056 9 0.010901444591581821 10 9.0878291667456674e-14 
		11 5.5878127883473898e-51 12 3.2537718187972134e-71 13 8.7721603221222058e-73 
		28 0.4490345418453216
		7 8 0.35020944476127625 9 0.019680753350257874 10 1.5449909129982325e-13 
		11 5.2903163055490119e-51 12 3.0753704793681743e-71 13 8.2911907771430562e-73 
		28 0.63010980188831134
		5 8 0.18635949492454529 9 0.00033902227338151336 10 2.9771260980634327e-15 
		11 8.0816318321649688e-54 28 0.81330148280207037
		5 8 0.19893339276313782 9 1.5440213683884573e-05 10 5.5549295560873733e-17 
		11 2.2717184180414775e-56 28 0.80105116702317825
		7 8 0.33331525325775146 9 0.077032819390296936 10 6.3165755235377632e-12 
		11 1.0274224920333124e-48 12 5.1997254588626725e-68 13 1.4010914187380121e-69 
		28 0.5896519273456351
		7 8 0.4248654842376709 9 0.23227086663246155 10 6.5753486853478335e-09 
		11 3.8167799574017707e-44 12 3.6674989795874245e-62 13 9.8658281500408175e-64 
		28 0.34286364255451884
		7 8 0.28341209888458252 9 0.14456325967400985 10 1.847866881397976e-10 
		11 8.3192346731934732e-47 12 2.0936924964585419e-65 13 5.6356794011846896e-67 
		28 0.572024641256621
		7 8 0.17971086502075195 9 0.0051421878143830604 10 1.2124978605278231e-13 
		11 1.5750484978367136e-51 12 9.1144811304795527e-72 13 2.4572617313736478e-73 
		28 0.81514694716474367
		7 8 0.15625327825546265 9 0.042159072586856465 10 3.7615901580262631e-12 
		11 1.3654874406792677e-49 12 6.812016223704975e-69 13 1.8349521743673251e-70 
		28 0.80158764915391933
		7 8 0.31350317597389221 9 0.31709996623551173 10 1.2977330779099254e-07 
		11 9.5133012531803325e-44 12 7.7447188140738872e-62 13 1.6667459921027816e-63 
		28 0.36939672801728823
		7 8 0.21377244591712952 9 0.19035182915675963 10 3.8575291741858423e-09 
		11 2.1794014312838401e-46 12 4.6455371509914602e-65 13 9.9939750855300926e-67 
		28 0.59587572106858167
		7 8 0.53876662254333496 9 0.33149236440658569 10 1.660111648033701e-07 
		11 1.3033509916421187e-41 12 4.0233160156978645e-59 13 1.0817105641104812e-60 
		28 0.12974084703891453
		7 8 0.38601332902908325 9 0.44072173781008195 10 3.0531264709546677e-06 
		11 3.186744446267872e-41 12 8.3394924401705095e-59 13 1.7954395915539493e-60 
		28 0.17326188003436382
		7 8 0.25563552975654602 9 0.47877328195801699 10 4.1679940495774628e-05 
		11 2.7954726346606046e-41 12 4.0646720534614312e-59 13 6.8114599227873718e-61 
		28 0.26554950834494118
		7 8 0.2052670419216156 9 0.31052954789569703 10 1.5863209321589973e-06 
		11 7.9374466100622041e-44 12 3.7596500702334643e-62 13 6.3613406626469579e-64 
		28 0.48420182386175514
		7 8 0.30211910605430603 9 0.63260384439541117 10 0.00034349217800009089 
		11 3.2348267251321747e-39 12 2.3022574561628846e-56 13 3.4418603278031651e-58 
		28 0.06493355737228268
		7 8 0.40018883347511292 9 0.55325227975845337 10 4.6219875758518309e-05 
		11 8.1789815140200089e-39 12 6.1205858528426023e-56 13 1.3182584108393398e-57 
		28 0.046512666890675236
		7 8 0.53176158666610718 9 0.4495660662651062 10 3.0958249503744548e-06 
		11 3.5699504384558729e-39 12 3.1485298932581525e-56 13 8.4610805778565677e-58 
		28 0.018669251243836227
		7 8 0.66395658254623413 9 0.31808459758758545 10 1.3475045620430755e-07 
		11 4.7184314399406427e-41 12 1.4731256942457345e-58 13 3.9640049363681908e-60 
		28 0.017958685115724182
		6 8 0.54603328069997681 9 0.45396438241004944 10 2.3368899736864109e-06 
		11 1.2074472928715016e-38 12 1.0760767480780387e-55 13 2.8944482598227527e-57
		6 8 0.4245334051588322 9 0.57541608810424805 10 5.0506736919740325e-05 
		11 9.5391555601332563e-37 12 2.210767386404822e-53 13 5.9385357131968754e-55
		7 8 0.67477838507588728 9 0.31466998963948623 10 7.6721682495078424e-08 
		11 8.1623889798682017e-41 12 2.5571743490140872e-58 13 6.8830996555001779e-60 
		28 0.010551548562944046
		7 8 0.7390665591935156 9 0.20568741858005524 10 4.353141919863557e-09 
		11 3.3371902044422979e-43 12 3.2587791393387213e-61 13 8.7748722704493791e-63 
		28 0.055246017873287201
		7 8 0.1368231475353241 9 0.18244924458850442 10 4.7735858147145332e-08 
		11 1.9447138810967526e-46 12 2.5932582432610751e-65 13 4.4583045373812854e-67 
		28 0.68072756014031333
		7 8 0.072390928864479065 9 0.080858501195254812 10 1.0895017859465546e-09 
		11 3.7868534424982314e-49 12 1.1414780823459686e-68 13 2.0178793926118402e-70 
		28 0.84675056885076438
		7 8 0.11845527589321136 9 0.0894327476155867 10 8.3937655660501658e-11 
		11 3.8482242120600146e-49 12 1.6258272937950163e-68 13 3.4964058169533637e-70 
		28 0.79211197640726416
		7 8 0.066036045551300049 9 0.12920510690057377 10 4.9916651737539563e-09 
		11 2.3049429588819558e-48 12 4.5240691068938587e-68 13 8.2375297046515944e-70 
		28 0.80475884255646102
		7 8 0.020115755498409271 9 0.056603831220460837 10 1.1571062336760237e-10 
		11 4.4558239047015631e-51 12 1.2899078870237722e-71 13 2.4116899522623799e-73 
		28 0.92328041316541931
		7 8 0.01020733080804348 9 0.073360170609774358 10 2.0941193703252128e-10 
		11 1.0618218199032952e-50 12 2.2200376193458434e-71 13 4.1560467647832026e-73 
		28 0.91643249837277019
		7 8 0.00032858987106010318 9 0.030625031366697558 10 4.7107422280423714e-12 
		11 1.8799275293883875e-53 12 1.3782636620295087e-75 13 2.9574043012094436e-77 
		28 0.96904637875753152
		7 8 0.10504376143217087 9 0.24075437861640531 10 1.60765313749941e-07 
		11 9.1165123152343853e-46 12 7.9368299827847755e-65 13 1.4453037842012732e-66 
		28 0.65420169918611015
		7 8 0.029577717185020447 9 0.13892174347878603 10 6.9458901761744889e-09 
		11 4.4673300820951932e-48 12 6.9657622494810827e-68 13 1.2957587284501388e-69 
		28 0.8315005323903033
		7 8 0.028098292648792267 9 0.029826172694584891 10 1.9767568537545817e-11 
		11 5.9272732601622426e-52 12 2.7985907102344443e-72 13 5.2256286737113198e-74 
		28 0.94207553463685523
		7 8 0.049587797373533249 9 0.031476334821585607 10 1.4415063060841374e-12 
		11 5.4799801877563817e-52 12 2.6451274389706946e-72 13 5.6865545842286655e-74 
		28 0.91893586780343961
		7 8 0.00075298629235476255 9 0.019090479392853004 10 2.1640923619431363e-12 
		11 6.8477211547167108e-54 12 1.0956905686454171e-75 13 2.3510741012608958e-77 
		28 0.98015653431262806
		7 8 0.066710829734802246 9 0.0060154849704195431 10 6.0103090966058808e-14 
		11 1.8001748311702293e-52 12 1.0260175015247239e-72 13 2.7661405033636369e-74 
		28 0.92727368529471821
		5 8 0.0838814377784729 9 0.0006287591440403788 10 1.8169731372610728e-15 
		11 1.8788738402429159e-54 28 0.91548980307748495
		5 8 0.020216144621372223 9 0.00056834990715826355 10 7.9357074837995941e-16 
		11 1.9432390902666253e-55 28 0.97921550547146874
		5 8 0.028504816815257072 9 4.6689478389163169e-05 10 2.2501468157749486e-17 
		11 1.7831100660655741e-57 28 0.97144849370635389
		5 8 0.010423230938613415 9 0.0037182058175428416 10 2.0552338630755317e-14 
		11 6.3750089968584864e-55 28 0.98585856324382326
		5 8 0.088282905519008636 9 3.5605290183291969e-05 10 4.3272085538781835e-17 
		11 9.0186480363841189e-57 28 0.91168148919080816
		5 8 0.030846729874610901 9 2.5662336107873026e-06 10 5.115119479773443e-19 
		11 7.5225086680768795e-60 28 0.96915070389177826
		5 8 0.03540470078587532 9 9.9146792157643784e-08 10 9.2955726263842355e-21 
		11 1.6854125172012959e-62 28 0.96459520006733257
		5 8 0.096895471215248108 9 1.4969239344338691e-06 10 8.0528265515881692e-19 
		11 2.3796253220716369e-59 28 0.90310303186081753
		5 8 0.0049687204882502556 9 1.2330322154234703e-07 10 5.0579132250594148e-21 
		11 4.4895891817640713e-63 28 0.99503115620852822
		5 8 0.0077555603347718716 9 4.5146453467928277e-09 10 8.8882908141789443e-23 
		11 7.4162672204362292e-66 28 0.9922444351505828
		5 8 0.00050225690938532352 9 4.3900048829023801e-09 10 4.3703106409638865e-23 
		11 1.7548748011005621e-66 28 0.99949773870060976
		5 8 0.00084066996350884438 9 1.5209897524939625e-10 10 7.2362831064618446e-25 
		11 1.5465999519331864e-69 28 0.99915932988439216
		5 8 5.4092784314819552e-06 9 1.2025379932342995e-10 10 3.2601937654858597e-25 
		11 3.2888227921195202e-70 28 0.99999459060131468
		4 8 1.0260055023870092e-05 9 3.9150795344211672e-12 10 4.9810942025792624e-27 
		28 0.999989739941061
		5 8 3.9278041145647137e-06 9 2.7267318082985992e-09 10 1.7479395669739369e-23 
		11 2.6173247911877761e-67 28 0.99999606946915365
		5 8 9.2956782802708487e-05 9 9.2826651803490351e-08 10 2.1606503686215458e-21 
		11 7.2315255960063268e-64 28 0.99990695039054533
		5 8 0.0027376138605177402 9 2.4292754016657766e-06 10 2.3410664645970056e-19 
		11 1.3077071416618197e-60 28 0.99725995686408075
		5 8 0.011334717273712158 9 1.2040164292002812e-10 10 1.2074549335652211e-24 
		11 4.4372743320260997e-69 28 0.98866528260588615
		5 8 0.037316933274269104 9 2.7334075183617966e-09 10 1.2825462934666882e-22 
		11 1.7986997771774867e-65 28 0.9626830639923234
		4 8 0.0010622701374813914 9 3.9053385708205682e-12 10 9.4036013974872277e-27 
		28 0.99893772985861329
		5 8 0.20029385387897491 9 4.6589968241170155e-07 10 7.2896418772844571e-19 
		11 3.4638811247890848e-59 28 0.7997056802213427
		5 8 0.10098934918642044 9 4.3350337099126432e-08 10 1.1027787522453999e-20 
		11 3.2895132401424098e-62 28 0.89901060746324257
		5 8 0.31148344278335571 9 5.7868448044332913e-08 10 2.6613065819362224e-19 
		11 1.7584722308541327e-59 28 0.68851649934819625
		5 8 0.33907204866409302 9 3.1756315636715408e-06 10 3.358825863921945e-17 
		11 2.1525128289355589e-56 28 0.66092477570434327
		5 8 0.19477134943008423 9 9.3030814140756826e-09 10 6.502070782363582e-21 
		11 2.7285139189793442e-62 28 0.80522864126683436
		5 8 0.44156080484390259 9 5.7764011259484805e-08 10 6.6742797397898675e-18 
		11 5.7829397554391535e-57 28 0.55843913739208617
		5 8 0.26675403118133545 9 7.4098529616715264e-10 10 1.4881103192665712e-21 
		11 8.0626362923690556e-63 28 0.73324596807767928
		5 8 0.36229157447814941 9 6.324214419798851e-10 10 3.3199193579494854e-20 
		11 2.7788888905620254e-60 28 0.63770842488942914
		5 8 0.17377811670303345 9 1.3122325568745961e-10 10 4.0679327947092252e-23 
		11 1.0492561421067022e-65 28 0.82622188316574319
		5 8 0.49553057518882271 9 3.6660106697571913e-06 10 9.6361508963885491e-16 
		11 7.4759117931035999e-54 28 0.50446575880050659
		5 8 0.10155942291021347 9 8.6726326811644197e-10 10 1.0483187334426139e-22 
		11 2.0935496822406352e-65 28 0.89844057622252316
		5 8 0.043335437774658203 9 5.3929723877993416e-11 10 1.2587069774679353e-24 
		11 6.6949453540005984e-69 28 0.95666456217141205
		7 8 0.70223018340586774 9 0.015998991206288338 10 1.7965912154897621e-12 
		11 1.3009539542097198e-48 12 6.6210857651461966e-68 13 1.7843156224762468e-69 
		28 0.28177082538604736;
	setAttr ".wl[2793:2879].w"
		7 8 0.63690939924934131 9 3.1254508073517642e-06 10 1.6117114576341156e-14 
		11 1.394081237574011e-51 12 8.1235711527108861e-72 13 2.1901126602691325e-73 
		28 0.36308747529983521
		5 8 0.72713464459226373 9 2.9841615830438249e-07 10 8.0608154733639399e-16 
		11 1.0508185683398228e-53 28 0.27286505699157715
		7 8 0.8113986521567661 9 1.0269919390858151e-05 10 6.8379810516587928e-14 
		11 8.5123084266209976e-51 12 4.9641755298320507e-71 13 1.3383404258181838e-72 
		28 0.18859107792377461
		5 8 0.54865680473991196 9 4.6313325873145054e-08 10 9.9888283621036386e-17 
		11 9.8694718803955075e-55 28 0.45134314894676208
		5 8 0.6190942175307097 9 5.2533326709922261e-09 10 6.2580758800328624e-18 
		11 8.1959079485196279e-57 28 0.38090577721595764
		5 8 0.4415280818939209 9 4.7646367154833346e-10 10 4.6100916807808912e-19 
		11 4.8109976865034489e-58 28 0.55847191762961546
		5 8 0.4916917085647583 9 5.9997264606230664e-11 10 3.3418438534539196e-20 
		11 3.9596494369097245e-60 28 0.50830829137524436
		5 8 0.35193359851837158 9 4.5933782644744036e-12 10 2.1022974572618017e-21 
		11 2.0490149320999103e-61 28 0.64806640147703498
		5 8 0.3824637234210968 9 5.8355750758131172e-13 10 1.5849445648313941e-22 
		11 1.4184040795859804e-63 28 0.61753627657831967
		5 8 0.62590420217199838 9 2.892443076671766e-10 10 1.9033039821629278e-19 
		11 2.8541841854037118e-59 28 0.37409579753875732
		5 8 0.49640965461730957 9 3.7603049400176119e-12 10 1.1850295250237598e-21 
		11 1.2962160282087347e-62 28 0.5035903453789301
		5 8 0.74479822840321863 9 1.4642588263700271e-08 10 2.1206458644013576e-17 
		11 3.715569294370744e-56 28 0.25520175695419312
		5 8 0.56752106546335868 9 1.0197813591552973e-11 10 3.7915979709870357e-21 
		11 5.3068639351735691e-62 28 0.43247893452644348
		5 8 0.66207212161621243 9 4.8080293848626651e-10 10 3.8618150588439356e-19 
		11 7.8703450196232999e-59 28 0.33792787790298462
		5 8 0.73279027653573903 9 1.4773617685359961e-08 10 2.7396872422327733e-17 
		11 7.1416331428974545e-56 28 0.26720970869064331
		5 8 0.8203715952604429 9 4.6468084733411586e-07 10 1.5956616020585097e-15 
		11 3.0402911485914017e-53 28 0.17962794005870819
		5 8 0.44845840334892273 9 2.5369591912561097e-13 10 5.4470666028164623e-23 
		11 5.1739041354962845e-65 28 0.55154159665082358
		5 8 0.49760174750146863 9 1.134873914286156e-11 10 5.2005361541436905e-21 
		11 1.0026048251609315e-61 28 0.50239825248718262
		5 8 0.3819185197353363 9 3.9785589952727525e-15 10 4.1879457205108706e-25 
		11 1.1287835711004687e-68 28 0.61808148026465981
		5 8 0.45081588625907898 9 1.4796140000370531e-13 10 2.6738867286901404e-23 
		11 1.9621191196238839e-65 28 0.54918411374077314
		5 8 0.39243093132972717 9 3.8642904081545872e-14 10 6.0486289970586792e-24 
		11 3.6040597985841505e-66 28 0.60756906867023419
		2 8 0.30564075708389282 28 0.69435924291610729
		2 8 0.30575114488601685 28 0.69424885511398315
		2 8 0.21229319274425507 28 0.78770680725574493
		2 8 0.19281639158725739 28 0.8071836084127425
		2 8 0.28320536017417908 28 0.71679463982582092
		2 8 0.21305654942989349 28 0.78694345057010662
		5 8 0.364754319190979 9 1.6450928304388334e-15 10 1.4930191245919564e-25 
		11 3.2370442501547582e-69 28 0.63524568080901933
		2 8 0.2787632942199707 28 0.72123670578002919
		5 8 0.29156184196472168 9 6.5182276957216499e-12 10 1.5921447177468784e-22 
		11 1.0516014833825326e-63 28 0.70843815802876009
		2 8 0.22754889726638794 28 0.77245110273361206
		7 8 0.83554021641252962 9 0.048261832445859909 10 3.5909143773856577e-12 
		11 4.4328590570750713e-48 12 2.2586948011050385e-67 13 6.0871546774360271e-69 
		28 0.11619795113801956
		7 8 0.81479276333880235 9 0.12549085915088654 10 1.0299870974031755e-10 
		11 1.5148364363019462e-45 12 3.8870824037153543e-64 13 1.0471792097831329e-65 
		28 0.059716377407312393
		7 8 0.75378237463154818 9 0.20855963230133057 10 2.0154472969008831e-09 
		11 4.0080450337213789e-43 12 3.9200416126946344e-61 13 1.0556859393438042e-62 
		28 0.037657991051674
		7 8 0.66174887865781784 9 0.30765517252691427 10 2.7835291244536967e-08 
		11 8.913238385731718e-41 12 2.7959581441835141e-58 13 7.5271040294581124e-60 
		28 0.030595920979976543
		7 8 0.53552569802803662 9 0.45939359068870544 10 9.6736522645839931e-07 
		11 1.7889176795926903e-38 12 1.5992334125208184e-55 13 4.303128551970548e-57 
		28 0.0050797439180314541
		7 8 0.7753772884161021 9 0.12635599076747894 10 4.462947171140507e-11 
		11 1.5534449453553026e-45 12 3.9891264651039935e-64 13 1.0747376185750644e-65 
		28 0.09826672077178944
		7 8 0.70217562649107235 9 0.20094970367483606 10 6.3987009656597883e-10 
		11 3.4394733567910341e-43 12 3.365450330884324e-61 13 9.0641463397093369e-63 
		28 0.096874669194221608
		7 8 0.73724192380828368 9 0.062672868371009827 10 7.6788079827298058e-13 
		11 4.4242558340770601e-48 12 2.2569081540475653e-67 13 6.082676052363836e-69 
		28 0.20008520781993866
		7 8 0.66866398601629229 9 0.11174506694078445 10 1.0948441810215077e-11 
		11 9.7086736122893565e-46 12 2.4930844542098544e-64 13 6.7171168320476492e-66 
		28 0.21959094703197479
		7 8 0.60997197777031786 9 0.021286867558956146 10 1.0646627289315861e-14 
		11 9.6104478566275127e-51 12 5.6111758459680382e-71 13 1.51277154200219e-72 
		28 0.36874115467071533
		7 8 0.58848273381575034 9 0.034919414669275284 10 1.5807575391894714e-13 
		11 2.2106956485632754e-48 12 1.1274142925634939e-67 13 3.0385980608955765e-69 
		28 0.37659785151481628
		7 8 0.75075735338028526 9 0.029754413291811943 10 3.7235431059010453e-14 
		11 1.5706488070528658e-50 12 9.170303281765031e-71 13 2.4723113687751729e-72 
		28 0.2194882333278656
		5 8 0.59562955170573484 9 0.0067935050465166569 10 4.9506406352421229e-16 
		11 3.1172879090214406e-53 28 0.39757694324774806
		7 8 0.82626450061582157 9 0.070195965468883514 10 2.1593453849068932e-12 
		11 5.5916923657006601e-48 12 2.8516160928080565e-67 13 7.6853072635498756e-69 
		28 0.10353953391313553
		7 8 0.56349388030667846 9 0.31908142566680908 10 4.7932093794582666e-09 
		11 5.6768530856680867e-41 12 1.7805815453663659e-58 13 4.7941800506639238e-60 
		28 0.11742468923330307
		7 8 0.5056996382522273 9 0.45152220129966736 10 2.0491603133921897e-07 
		11 1.5515953409048852e-38 12 1.3880852681087678e-55 13 3.7357570028548211e-57 
		28 0.042777955532073975
		7 8 0.59775468223326877 9 0.16515198825448868 10 8.2616102356119781e-11 
		11 1.5501775076951573e-43 12 1.5159576467690616e-61 13 4.0832473113689731e-63 
		28 0.23709332942962646
		7 8 0.38141987425346247 9 0.60738539695739746 10 6.5281141890168601e-06 
		11 3.193477370493127e-36 12 7.4914415170479727e-53 13 2.0151281013749115e-54 
		28 0.011188200674951077
		6 8 0.40466768700137778 9 0.59530484676361084 10 2.7466235011359695e-05 
		11 2.7608079834273189e-36 12 6.4605897713434979e-53 13 1.7371761363549827e-54
		6 8 0.25362916644630229 9 0.74620652198791504 10 0.00016431156578270814 
		11 5.1697148531935232e-34 12 2.9877509497094041e-50 13 8.0313893482263821e-52
		6 8 0.16575603126203198 9 0.83123618364334106 10 0.0030077850946269202 
		11 5.3145840214580472e-32 12 7.2030860507898097e-48 13 1.9340266453611975e-49
		6 8 0.29702024343248512 9 0.70241659879684448 10 0.0005631577706704373 
		11 2.4376936745450871e-34 12 1.3971174930119482e-50 13 3.7518206184741466e-52
		6 8 0.13527201639624528 9 0.86439907550811768 10 0.0003289080956370535 
		11 7.6698265936557481e-32 12 1.0459400968735127e-47 13 2.8109967833262978e-49
		7 8 0.23890545964241028 9 0.74796605921140047 10 1.3548221680170785e-05 
		11 4.2563776612120071e-34 12 2.4627702244002689e-50 13 6.6229548007492162e-52 
		28 0.013114932924509048
		7 8 0.0076683894629604342 9 0.97899016568446739 10 0.010081757167549273 
		11 1.8581742174238844e-27 12 1.2891581108645793e-42 13 3.4618687025937008e-44 
		28 0.0032596876850229384
		7 8 0.066847637295722961 9 0.91821843385696411 10 0.0057330717034912307 
		11 9.8408953265756696e-30 12 3.0526690199257616e-45 13 8.1963730567007767e-47 
		28 0.0092008571438216835
		6 8 0.033137299534913227 9 0.96636998820937747 10 0.00049271225570926764 
		11 7.5586882318468176e-30 12 2.3493276070435669e-45 13 6.31333079640459e-47
		7 8 0.13506567478179932 9 0.86388270358999508 10 1.9600964363039977e-05 
		11 3.2083198266907931e-32 12 4.363933109336708e-48 13 1.173437805889701e-49 
		28 0.0010320206638425589
		7 8 0.34672365710139275 9 0.60030733565757921 10 4.1578938314410511e-07 
		11 1.8652188231242945e-36 12 4.3733002700674383e-53 13 1.1766854360510357e-54 
		28 0.052968591451644897
		7 8 0.21092987060546875 9 0.73291918143419532 10 5.4136129111056268e-07 
		11 1.1150371885962541e-34 12 6.4207002033273328e-51 13 1.7274086186971285e-52 
		28 0.0561504065990448
		7 8 0.4280078113079071 9 0.44215657418878163 10 8.8819733734714917e-09 
		11 6.0225866441892453e-39 12 5.3802280413372722e-56 13 1.4482516051368126e-57 
		28 0.12983560562133789
		7 8 0.29522459208965302 9 0.56518158776991412 10 1.0297369516585242e-08 
		11 2.9915846293855754e-37 12 6.9695594665359773e-54 13 1.8759339332597695e-55 
		28 0.13959380984306335
		7 8 0.84572523273520128 9 0.024881010875105858 10 7.4970678106234206e-14 
		11 1.5788502755998163e-50 12 9.2140773425977285e-71 13 2.4841128441385162e-72 
		28 0.12939375638961792
		5 8 0.75668810866773006 9 0.0085636768490076065 10 1.2745261654298039e-15 
		11 4.1313498227122533e-53 28 0.23474821448326111
		5 8 0.59434815582801959 9 6.5846237881648875e-09 10 1.6316313002039752e-17 
		11 7.2326906891046374e-56 28 0.40565183758735668
		5 8 0.45873547424714273 9 1.953623911918896e-09 10 5.6947778547103948e-18 
		11 4.7816824182226926e-56 28 0.54126452379923329
		5 8 0.29549837889575603 9 3.4519620544804695e-11 10 5.5165059937805662e-20 
		11 5.3598992306655842e-59 28 0.70450162106972436
		5 8 0.29583953250016637 9 4.9708067608424179e-10 10 1.3722574233707723e-18 
		11 2.3197026939222134e-56 28 0.70416046700275303
		5 8 0.4516424098243832 9 0.0035478528589010239 10 1.3031056053196923e-16 
		11 1.6924339455135068e-53 28 0.54480973731671567
		5 8 0.55979543889944927 9 3.4386737457952617e-10 10 3.5669505309920194e-19 
		11 1.0943360179401903e-58 28 0.44020456075668335
		7 8 0.00090556760551407933 9 0.66896463102649828 10 0.074057313956609014 
		11 6.5797470743415599e-32 12 2.5083987284934627e-48 13 4.8681822262831704e-50 
		28 0.25607248741137867
		7 8 0.024607162922620773 9 0.62927416280642479 10 0.012939474070901635 
		11 5.0081764402169686e-34 12 8.0879168903905816e-51 13 1.5620086767363745e-52 
		28 0.33317920020005282
		7 8 0.091972097754478455 9 0.63837260007858276 10 0.010086658543615944 
		11 2.3855098085449312e-36 12 1.552805755630042e-53 13 2.9835902793834397e-55 
		28 0.25956864362332288
		7 8 0.067560546100139618 9 0.69064182401813357 10 0.075504101680990587 
		11 3.6357654998452472e-34 12 5.8359096871111798e-51 13 1.1265876116584779e-52 
		28 0.16629352820073628
		7 8 0.0017206564079970121 9 0.65861863621349781 10 0.21111243167271751 
		11 3.8532013513623101e-32 12 1.4505570381178706e-48 13 2.8136720671658721e-50 
		28 0.12854827570578764
		7 8 0.0001246472644759434 9 0.6376790599501998 10 0.23070989351955079 
		11 9.4079651789463885e-30 12 8.1670273036289673e-46 13 1.5928109312834993e-47 
		28 0.13148639926577355
		7 8 0.12465436011552811 9 0.726031349098607 10 0.063174403486870506 
		11 1.5856673619255249e-36 12 1.0255382432243755e-53 13 1.9700492163823218e-55 
		28 0.086139887298994355
		7 8 0.044927459210157394 9 0.68312158458222416 10 0.20179590238519879 
		11 1.4995352752406608e-34 12 2.3694423998903708e-51 13 4.5724403831598707e-53 
		28 0.0701550538224196
		7 8 0.16444255411624908 9 0.74666054720228037 10 0.059740469037310596 
		11 1.3739559519760211e-38 12 6.647458126391031e-56 13 1.0612843461182942e-57 
		28 0.029156429644159987
		7 8 0.044427216053009033 9 0.70665789153248204 10 0.18638209894970378 
		11 1.4993284789148952e-36 12 1.9426074776185184e-53 13 3.0373482354481443e-55 
		28 0.062532793464805114
		7 8 0.16339205205440521 9 0.76197542387353789 10 0.054065943059589519 
		11 1.5164795047127143e-36 12 2.7418685559603718e-53 13 4.0284332590872033e-55 
		28 0.020566581012467333
		7 8 0.045157905668020248 9 0.74252947198852381 10 0.16750711207922622 
		11 2.3026813737471594e-34 12 9.9683137674224222e-51 13 1.446745727311524e-52 
		28 0.044805510264229742
		7 8 0.1781785637140274 9 0.77763107192642589 10 0.037469123699059893 
		11 2.5186861927131073e-34 12 1.0886882668554804e-50 13 1.5831377478256302e-52 
		28 0.0067212406604868491
		7 8 0.058439683169126511 9 0.79221919823023057 10 0.13806991058009105 
		11 7.0360795775796824e-32 12 7.0228852691075962e-48 13 1.0112546340717783e-49 
		28 0.011271208020551926
		7 8 0.0062284260056912899 9 0.64133452762917531 10 0.33951475995863839 
		11 2.0792731581962808e-34 12 7.2826676559216858e-51 13 6.0333387698732058e-53 
		28 0.012922286406495065
		2 8 0.0038487361744046211 9 0.6143789937949955;
	setAttr ".wl[2879:2952].w"
		5 10 0.36652035018176055 11 4.0866857564018689e-36 12 1.5826057807747372e-53 
		13 1.1794997726620505e-55 28 0.015251919848839335
		7 8 0.0023874617181718349 9 0.46765293548631398 10 0.52920153178796059 
		11 6.0441380847370772e-33 12 1.6151190360398742e-49 13 6.4641374232124064e-52 
		28 0.0007580710075536512
		7 8 0.001342454575933516 9 0.45786791429133128 10 0.53984591343867661 
		11 3.7675662181263803e-34 12 3.1127655228135081e-51 13 9.924320715644192e-54 
		28 0.00094371769405854344
		6 8 0.00048583289764692061 9 0.38711388950721587 10 0.61240027759513727 
		11 1.2015488727582892e-30 12 7.3530538762300086e-47 13 2.8520409607227141e-49
		7 8 0.00015270653917880584 9 0.37444595127258268 10 0.62505520989605912 
		11 9.3860655932784652e-32 12 1.858475607651714e-48 13 5.6822389405875195e-51 
		28 0.00034613229217939079
		7 8 5.2075871803468885e-05 9 0.32281372045324785 10 0.67706983111697661 
		11 1.9907388105919582e-28 12 2.7170345158742233e-44 13 1.0254908028480782e-46 
		28 6.4372557972092181e-05
		7 8 1.4398422150089042e-05 9 0.31049114607246697 10 0.68941042200026503 
		11 1.7973191833879298e-29 12 8.2351395579635934e-46 13 2.4384330294513664e-48 
		28 8.4033505117986351e-05
		6 8 0.0013737762034946588 9 0.43776812323479986 10 0.56085810056170549 
		11 1.1313250650647346e-29 12 1.5264573683148598e-45 13 5.9405375565923343e-48
		6 8 0.00038511095463289458 9 0.39326024639906748 10 0.60635464264629957 
		11 1.8501628103465814e-27 12 5.462780624663397e-43 13 2.0838037066883324e-45
		7 8 5.0173418758260712e-06 9 0.27974045114369578 10 0.72024462483520391 
		11 2.7756201605711999e-26 12 8.2973041886284802e-42 13 3.0568529164441917e-44 
		28 9.9066792245139368e-06
		7 8 9.966888434178638e-07 9 0.2542441257184378 10 0.74575119792813149 
		11 2.7085634459346123e-27 12 2.7944920068589001e-43 13 8.0611830561413835e-46 
		28 3.6796645872527733e-06
		7 8 3.9319365449194805e-05 9 0.36486499003543788 10 0.63507869548098239 
		11 2.5012199494167749e-25 12 1.5979552232805517e-40 13 5.9930274602370901e-43 
		28 1.6995118130580522e-05
		7 8 0.00055413105292245746 9 0.47127779670859404 10 0.52697896337729255 
		11 5.5422288016593199e-33 12 7.9475467333014322e-50 13 1.3769156888894498e-52 
		28 0.0011891088611909462
		7 8 4.2280059782674303e-05 9 0.39695111162163915 10 0.60224357678093354 
		11 1.3565915547639259e-30 12 4.6030410296110115e-47 13 7.9794621256040641e-50 
		28 0.00076303153764456511
		7 8 3.3678010034400126e-06 9 0.33292102474347351 10 0.66604848519917703 
		11 2.4507338645549742e-28 12 1.9001923746554188e-44 13 3.297109565129868e-47 
		28 0.0010271222563460469
		7 8 0.0030592347029596567 9 0.47628629626898616 10 0.52005298462474525 
		11 8.6672953377322222e-32 12 5.2471627217553811e-48 13 2.0903789175529728e-50 
		28 0.00060148440330887176
		7 8 0.0065601090900599957 9 0.64183254184547067 10 0.34428324397729093 
		11 4.6011231886155194e-32 12 3.9605451079579891e-48 13 3.2726497296471426e-50 
		28 0.0073241050871784008
		7 8 0.0036869666073471308 9 0.61566883902458924 10 0.37872831547965197 
		11 8.7575927070599242e-30 12 1.6711826794256636e-45 13 1.3586833202931302e-47 
		28 0.0019158788884117151
		7 8 0.0017513019265606999 9 0.6031813405413583 10 0.37898297958652205 
		11 4.7464493108152013e-34 12 5.2224171427904048e-52 13 4.7736413816285076e-54 
		28 0.016084377945558948
		7 8 0.00054119451669976115 9 0.59048836147364481 10 0.39019672522316112 
		11 1.0061836277494991e-31 12 2.5994161207370064e-49 13 2.8079227639521837e-51 
		28 0.01877371878649425
		7 8 3.1200450307744217e-05 9 0.55474987223036643 10 0.42490657398283221 
		11 2.0574386252456831e-29 12 1.3703075644699206e-46 13 1.5183200512333388e-48 
		28 0.020312353336493727
		7 8 0.00017652282258495688 9 0.49148091465408006 10 0.50652701700703107 
		11 1.3385777799955055e-31 12 4.4016131339432196e-48 13 7.6577374265980643e-51 
		28 0.001815545516303918
		7 8 3.4491535188863054e-05 9 0.44885875600924036 10 0.54908961818123891 
		11 1.9845929221900005e-29 12 1.4867603888193611e-45 13 2.5922761298027735e-48 
		28 0.002017134274331811
		7 8 0.013436272740364075 9 0.80955081257704309 10 0.17447152222863843 
		11 1.5651097309134382e-29 12 3.5048409193596553e-45 13 5.0126310265900211e-47 
		28 0.0025413924539543498
		7 8 0.0024574704002588987 9 0.80512180546780288 10 0.19140420547937634 
		11 2.2826831744688615e-27 12 1.1242025959133583e-42 13 1.5998735804174909e-44 
		28 0.0010165186525619152
		7 8 0.0014228277141228318 9 0.58878877844996635 10 0.40975618063066732 
		11 1.4006578345445116e-27 12 5.8085633083431936e-43 13 4.6542145448362835e-45 
		28 3.2213205243492027e-05
		7 8 0.00029467144843364518 9 0.74533631926130917 10 0.25382346735977912 
		11 3.3810027977016945e-25 12 3.6184611753458894e-40 13 5.1304259584055384e-42 
		28 0.00054554193047806621
		7 8 0.00018912666014009687 9 0.54799291239455394 10 0.45169328765896943 
		11 2.0563576977744079e-25 12 1.8336969143933906e-40 13 1.4516134007991405e-42 
		28 0.00012467328633647412
		7 8 0.00041238448414416612 9 0.86855894295122049 10 0.1304198767049673 
		11 5.3406959582629207e-25 12 6.908957171439555e-40 13 1.4936382465287075e-41 
		28 0.00060879585966810978
		6 8 0.004414751187698629 9 0.92264260466551451 10 0.072942644146786834 
		11 3.4178812550745217e-27 12 2.0077754645483113e-42 13 4.3368751701752222e-44
		7 8 0.048182923346757889 9 0.89349478483200073 10 0.05316651406258565 
		11 2.2040714508324269e-29 12 5.7933041187136948e-45 13 1.2503899702542858e-46 
		28 0.0051557777586557219
		7 8 0.11596284806728363 9 0.84295642375946045 10 0.03206328129136285 
		11 1.3186244930073227e-31 12 1.5158165518576959e-47 13 3.2696216857239386e-49 
		28 0.0090174468818930986
		6 8 0.23369214534143978 9 0.75926709175109863 10 0.0070407629074615459 
		11 5.9081232969690387e-34 12 2.8735692548756168e-50 13 6.1949120078783203e-52
		7 8 0.26933443546295166 9 0.71066248416900635 10 0.0040927527194074848 
		11 8.5843909928637533e-37 12 1.5453582582803395e-53 13 2.2748459435584579e-55 
		28 0.015910327648634537
		7 8 0.23464924097061157 9 0.74095016717910767 10 0.0057374386723618902 
		11 6.0455642952674259e-39 12 4.3287821804168213e-56 13 6.4599938845339217e-58 
		28 0.01866315317791889
		6 8 0.33545431302290518 9 0.66385287046432495 10 0.00069281651276983491 
		11 2.2575760333484232e-36 12 4.4407707841561202e-53 13 9.5688778700807402e-55
		7 8 0.24343883991241455 9 0.67744858529422469 10 0.00094751009222680436 
		11 7.7248638488942315e-41 12 1.1222162969728699e-58 13 1.8798958490214547e-60 
		28 0.078165064701133935
		7 8 0.21799823641777039 9 0.74740022420883179 10 0.0092569354778027097 
		11 1.1142167965777629e-40 12 1.8018959406327237e-58 13 2.9548694331448655e-60 
		28 0.025344603895595119
		7 8 0.20382560789585114 9 0.71556925773620605 10 0.008071789975976679 
		11 1.0843731447133366e-38 12 2.6784195818688222e-56 13 5.1222540286642766e-58 
		28 0.072533344391966126
		7 8 0.18767803907394409 9 0.5850256085395813 10 0.00063784273037810718 
		11 6.9017026069759437e-39 12 1.7093383344326475e-56 13 3.2692406101103889e-58 
		28 0.22665850965609646
		7 8 0.093770034611225128 9 0.45649973631779434 10 6.5501450991542663e-05 
		11 7.1899875717674098e-41 12 6.2378667257965328e-59 13 1.1879414004117835e-60 
		28 0.4496647276199891
		7 8 0.12584169209003448 9 0.36027443408966064 10 3.9260328773345906e-06 
		11 2.9206695717437951e-43 12 8.7639589175574992e-62 13 1.6202268671333925e-63 
		28 0.51387994778742752
		7 8 0.046214345842599869 9 0.51713236740118163 10 0.00090129533993626651 
		11 1.9157737786908629e-38 12 4.7522399850541023e-56 13 9.090681572332729e-58 
		28 0.43575199141628229
		7 8 2.0088229806473182e-05 9 0.64832190111536392 10 0.072025721225520187 
		11 8.9896363886657995e-30 12 7.8735505738890839e-46 13 1.5375993015415883e-47 
		28 0.2796322894293094
		7 8 1.3411272086567601e-05 9 0.60347079643053736 10 0.0098706908626732207 
		11 4.7446674695660354e-32 12 1.8176446833156014e-48 13 3.5327003522234503e-50 
		28 0.38664510143470288
		7 8 7.1476363379960116e-06 9 0.6173240929946302 10 0.25772790646750321 
		11 2.1587367791471104e-27 12 4.2196348066000699e-43 13 8.2771945778568804e-45 
		28 0.12494085290152858
		7 8 7.6468092732004051e-07 9 0.66273346083685625 10 0.0219355197598653 
		11 1.0984462800758103e-29 12 2.2546755574417233e-45 13 5.7685273427782147e-47 
		28 0.3153302547223511
		7 8 1.7646482035947091e-06 9 0.68775358584698165 10 0.12657845868684231 
		11 2.1386319201558165e-27 12 9.7778593857005314e-43 13 2.5021822827303104e-44 
		28 0.18566619081797242
		7 8 1.8774192809550037e-06 9 0.68567785345109888 10 0.001742825542270501 
		11 3.7568567539690244e-30 12 8.0109845669991543e-46 13 2.1787402916865188e-47 
		28 0.31257744358734973
		7 8 1.481560511821738e-07 9 0.63225353881906654 10 0.00020329795642670329 
		11 2.4788624402165245e-32 12 2.2887776677703268e-48 13 6.2235319270416442e-50 
		28 0.36754301506845555
		7 8 2.6637783618945318e-07 9 0.60806576851551042 10 0.0022549819231374385 
		11 5.9388014325659283e-32 12 5.3453028477395802e-48 13 1.3673749418848479e-49 
		28 0.3896789831835159
		7 8 1.5862456499784283e-06 9 0.5634263383180671 10 0.00010532808093145909 
		11 2.8248778455630156e-32 12 2.6231232490984381e-48 13 7.1343629254516151e-50 
		28 0.43646674735535151
		7 8 4.6768810899469368e-08 9 0.55362285255476884 10 1.9709758209453132e-05 
		11 2.4257267569617974e-34 12 9.4017723388143083e-51 13 2.5564274371767829e-52 
		28 0.44635739091821081
		7 8 5.9418116309169706e-08 9 0.53126743114121899 10 0.00025500748232223485 
		11 4.852193479490457e-34 12 1.8515136424787278e-50 13 4.7357305542367789e-52 
		28 0.46847750195834248
		7 8 3.3410399843041992e-06 9 0.52982052964036441 10 0.0013505942194073108 
		11 3.9788679853601532e-34 12 6.4469307403564829e-51 13 1.247086858448159e-52 
		28 0.46882553510024394
		7 8 0.0020233832765370607 9 0.53948526284998888 10 0.0015654760861788927 
		11 4.0379366306628793e-36 12 2.6384528409176519e-53 13 5.0719684177940746e-55 
		28 0.45692587778729521
		7 8 4.2293625646072821e-05 9 0.56113372061773925 10 0.000608014763572709 
		11 2.9802199387587409e-30 12 6.3833746115654992e-46 13 1.7364191837195927e-47 
		28 0.43821597099304188
		7 8 3.6117773183668064e-05 9 0.76139747205352637 10 0.013197493184917204 
		11 7.9048044809642297e-28 12 3.7994883320940872e-43 13 1.0336094050677098e-44 
		28 0.22536891698837269
		7 8 0.00085177321134404199 9 0.73018853425712216 10 0.0005383704242188336 
		11 2.6314340579911942e-30 12 5.6075921789318099e-46 13 1.5255566400892275e-47 
		28 0.26842132210731506
		7 8 0.00080724099233510762 9 0.5309637272686677 10 4.6408352614138396e-05 
		11 2.4165794832379092e-32 12 2.2432413765322349e-48 13 6.1021219951846199e-50 
		28 0.468182623386383
		7 8 0.00051361733575220714 9 0.34902506883084622 10 2.8587476471770438e-06 
		11 1.8757986914412606e-34 12 7.3146354982294754e-51 13 1.9896103314138687e-52 
		28 0.65045845508575439
		7 8 1.069716255358673e-06 9 0.65540786658693428 10 0.28023557177667885 
		11 3.5514952704061942e-25 12 3.5648242074678405e-40 13 9.1254793829620454e-42 
		28 0.064355491920131458
		7 8 7.3162437495887664e-06 9 0.80587692455220383 10 0.12911880958940278 
		11 2.8981032043342672e-25 12 3.0973036666642195e-40 13 8.4275206154575807e-42 
		28 0.064996949614643751
		7 8 4.4065302193608567e-07 9 0.53881470266127496 10 0.42348287911545046 
		11 3.7930565187333621e-25 12 1.6373266775082806e-40 13 3.2276945259485944e-42 
		28 0.037701977570252621
		7 8 3.9854727990301725e-08 9 0.39467204244334503 10 0.59464733346494747 
		11 4.4764060045396456e-23 12 4.2355776364332741e-38 13 8.388540678032571e-40 
		28 0.010680584236979485
		7 8 2.2652414110428278e-07 9 0.51918311231193448 10 0.46511571571262372 
		11 4.8393808243139724e-23 12 1.0613723584360111e-37 13 2.7178999054715479e-39 
		28 0.01570094545130063
		7 8 7.0300041459368901e-09 9 0.279007902434594 10 0.71691111464151702 
		11 4.7978490217711878e-23 12 4.7203574515931166e-39 13 5.4483954713560066e-41 
		28 0.0040809758938848972
		6 8 2.0718382438795684e-10 9 0.044604993189022848 10 0.95539500660379328 
		11 3.1002461879484906e-19 12 1.7480286545640654e-34 13 2.0519849648015409e-36
		6 8 2.0900726509463645e-09 9 0.12472143540087813 10 0.87527856250904923 
		11 3.1903181821775828e-19 12 1.4519443933378855e-33 13 2.9034292754612038e-35
		7 8 1.3904338491280672e-07 9 0.40688973093093245 10 0.57759813391291881 
		11 4.1275034695436065e-25 12 1.6934831496010668e-41 13 1.9341401738770939e-43 
		28 0.015511996112763882
		6 8 1.8238642018675272e-09 9 0.067503386493798764 10 0.932496611682337 
		11 4.7608997298434728e-23 12 3.7761778224305457e-38 13 6.6504355332610551e-41
		6 8 1.5838638690258242e-11 9 0.0048970265366109107 10 0.9951029734475505 
		11 2.8296986903780837e-19 12 1.06150384721882e-33 13 1.8895691252147522e-36
		7 8 5.2329073414958131e-08 9 0.29034214250851448 10 0.70487950195644511 
		11 4.2485942610137145e-25 12 1.5508261039191037e-40 13 2.720439528305927e-43 
		28 0.0047783032059669495
		1 8 2.6805855189668022e-10;
	setAttr ".wl[2952:3273].w"
		5 9 0.022250664291414021 10 0.97774933544052733 11 3.7928363990946673e-17 
		12 3.8490402877476518e-31 13 7.7301684975798345e-33
		6 8 2.0251973484085359e-09 9 0.074877664480471964 10 0.9251223334943306 
		11 4.5062017053779454e-17 12 1.0481865507159868e-30 13 2.686841894762651e-32
		6 8 1.5135423582751741e-08 9 0.17088295443884471 10 0.8291170304257317 
		11 3.7401120121003306e-19 12 3.9148203589956653e-33 13 1.0031321125810558e-34
		6 8 2.5016923628726812e-11 9 0.006001366367448446 10 0.9939986336075346 
		11 3.6094318801519381e-17 12 4.8753331393892171e-32 13 5.7565940904972837e-34
		7 8 2.4149523877532977e-06 9 0.49609871411028628 10 0.48444574880074592 
		11 3.1948235126002455e-27 12 5.3488540882695774e-44 13 6.0164154063985412e-46 
		28 0.019453122136580125
		7 8 9.409585448808422e-07 9 0.38779755226782414 10 0.6079029622847838 
		11 3.3050994754567497e-27 12 5.5085120746259435e-43 13 9.6305924563479298e-46 
		28 0.0042985444888472557
		7 8 1.96294064501914e-07 9 0.26484556386253411 10 0.73432691730399369 
		11 3.4825313308279716e-26 12 6.0272754465039252e-42 13 1.0470544252061828e-44 
		28 0.0008273225394077599
		7 8 1.3204542795630401e-06 9 0.66972772205123809 10 0.31047405890594415 
		11 4.5890925435931351e-23 12 1.0821152067183644e-37 13 2.9450636513385521e-39 
		28 0.01979689858853817
		6 8 8.19303230606044e-08 9 0.29656319153341715 10 0.70343672653625977 
		11 4.1006338996468473e-19 12 4.6965368292032014e-33 13 1.2788183888635337e-34
		6 8 3.5147247575464017e-07 9 0.37279971889990388 10 0.62719992962762039 
		11 4.4909707893277516e-19 12 6.4803335977691284e-33 13 1.7951947230241035e-34
		7 8 5.6586764856508498e-06 9 0.77295456921701211 10 0.21569637583771728 
		11 4.6958643787607938e-23 12 1.4162938074186918e-37 13 3.9191549650631775e-39 
		28 0.011343396268785
		6 8 1.0648560928201991e-08 9 0.13272678204041352 10 0.86727320731102553 
		11 5.0915220719083072e-17 12 1.3060162988250251e-30 13 3.5572317434889103e-32
		6 8 4.514513766489295e-08 9 0.16761547831867979 10 0.83238447653618253 
		11 5.7141249248082917e-17 12 1.8359541240007733e-30 13 5.0889739315616794e-32
		6 8 7.6286521025390261e-10 9 0.049001953158215296 10 0.95099804607891425 
		11 5.2148335107937413e-15 12 3.0647538906019669e-28 13 8.3507141458739727e-30
		6 8 3.2561817064221103e-09 9 0.065820844012854277 10 0.93417915273095808 
		11 5.8790063156567606e-15 12 4.3065621077636079e-28 13 1.1944579806448183e-29
		6 8 1.4523240784319633e-10 9 0.021152573427267583 10 0.97884742642749545 
		11 4.5408645293190231e-15 12 2.4038476108190294e-28 13 6.1644266585860088e-30
		7 8 2.0732288008255097e-05 9 0.8072044382722936 10 0.18958787269319444 
		11 5.8571671731956274e-23 12 2.0707730199614094e-37 13 5.7970355867290977e-39 
		28 0.0031869567465037107
		6 8 1.1953210453904475e-06 9 0.399086504601046 10 0.60091230007790863 
		11 5.7821633739459874e-19 12 9.7252133283966527e-33 13 2.7254577238982537e-34
		6 8 1.5041919781417735e-07 9 0.18574893767003001 10 0.81425091191077215 
		11 7.3817223140145455e-17 12 2.7577359060547233e-30 13 7.7329947075498726e-32
		7 8 3.1864272158491908e-05 9 0.91135876823518291 10 0.053365939647113475 
		11 2.6953955810292988e-25 12 3.7177928773411868e-40 13 1.0282508124439296e-41 
		28 0.035243427845545128
		7 8 0.00060844303939655488 9 0.96382173274700422 10 0.0032764251393802239 
		11 1.8627843584429534e-27 12 1.3830866746865211e-42 13 3.8680402633952247e-44 
		28 0.03229339907421902
		7 8 0.00016867309243287593 9 0.89656221038741324 10 0.0051390319459312757 
		11 1.4407732146974805e-27 12 9.0607858436603909e-43 13 2.5047614856471994e-44 
		28 0.098130084574222676
		7 8 0.00012029632762146269 9 0.94776677629136274 10 0.036178143784141595 
		11 3.4726769418024266e-25 12 5.6412685498069482e-40 13 1.5784546949393218e-41 
		28 0.015934783596874169
		7 8 0.0041782582513798343 9 0.98916969593471382 10 0.00019336613412510392 
		11 9.5850884576231874e-30 12 3.2130318079868031e-45 13 8.9813320769713823e-47 
		28 0.0064586796797811985
		7 8 0.0016434918753970653 9 0.88957877020407217 10 0.00029341012740944261 
		11 7.1716661256186186e-30 12 2.0297824869982698e-45 13 5.6083297107443469e-47 
		28 0.10848432779312134
		7 8 0.0024862207855441891 9 0.98321453314004459 10 0.0033542703518008379 
		11 2.0581755515268623e-27 12 1.5335341134163437e-42 13 4.3433842563166285e-44 
		28 0.010944975722610439
		6 8 0.01465180891679836 9 0.9851615554757881 10 0.0001866356074135535 
		11 9.817488647940043e-30 12 3.2621296766894562e-45 13 9.2393943637336469e-47
		7 8 0.00037530631009460901 9 0.95708745440818854 10 0.036254874399992663 
		11 4.0392830151862174e-25 12 6.6507964345917938e-40 13 1.8837296489487037e-41 
		28 0.0062823648817241784
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		2 5 4.5336237480174721e-11 28 1
		1 28 1
		2 5 3.5001762865435955e-12 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		3 4 7.44232502223604e-12 5 6.150317806865188e-15 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 5 2.6247563826592346e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 2 4.5565302711837969e-12 28 1
		2 2 1.4874046834357053e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 4.000827739354425e-12 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 2 4.0239739839663956e-11 28 1
		2 2 4.9897282082456393e-11 28 0.99999999999999989
		3 3 3.221624333670669e-12 4 2.6894265899624971e-11 28 0.99999999999999989
		2 2 8.4689394460619039e-12 28 1
		2 2 3.2607490551705173e-11 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 2 3.0763303644411281e-11 28 1
		2 2 2.7204068478009103e-11 28 1
		2 2 2.6590505598651262e-11 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		3 3 1.4309912338028955e-12 4 8.1259336717030376e-11 28 0.99999999999999989
		3 3 2.2822204331598764e-13 4 2.2583916152106204e-11 28 1
		3 3 1.5741537681136839e-12 4 3.0925133399815828e-11 28 1
		2 2 1.5221954166507312e-12 28 1
		2 2 2.4391323888942111e-13 28 1
		1 28 1;
	setAttr ".wl[3274:3442].w"
		1 28 1
		2 4 6.2439101277383033e-12 28 1
		1 28 1
		2 2 2.3244881951885047e-14 28 1
		2 2 4.8234039206916049e-14 28 0.99999999999999989
		2 2 1.8285391356627045e-13 28 1
		1 28 1
		2 2 3.0906109872461566e-12 28 1
		2 2 7.7268504468203676e-12 28 1
		1 28 1
		1 28 1
		3 3 2.3549355618274165e-14 4 8.7870218682531411e-14 28 0.99999999999999989
		3 3 3.2029462620929166e-15 4 6.8490083004158538e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		2 3 8.5630766314407905e-12 28 0.99999999999999989
		2 2 6.7919059212811942e-14 28 1
		2 2 3.0526411238017712e-14 28 1
		1 28 1
		2 2 1.3376476029120014e-14 28 1
		3 3 2.1198059615887049e-14 4 6.6108683676552769e-11 28 1
		1 28 1
		2 3 2.9544991827448271e-11 28 1
		2 2 5.9672483350840428e-12 28 1
		3 3 2.0344592627683545e-12 4 7.4552926538894414e-12 28 1
		3 3 1.4064562269395694e-12 4 5.1539703785720509e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 6.6713101754431514e-12 28 0.99999999999999989
		1 28 1
		3 3 2.274998852028397e-13 4 8.4887522983906321e-13 28 1
		2 2 5.4497546428183882e-12 28 1
		1 28 1
		3 3 2.6587074341984642e-13 4 9.920492409338042e-13 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 2 3.2691272441375604e-12 28 1
		2 2 3.2931011832423665e-12 28 1
		1 28 0.99999999999999989
		3 2 5.7998478232053353e-15 3 3.6286287485683924e-11 28 0.99999999999999989
		2 2 2.2153197846984554e-11 28 1
		2 2 4.3846078597202101e-11 28 1
		2 2 4.7738183082835973e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 1.8739311509911027e-12 28 1
		3 3 1.3351164851832083e-12 4 5.0603786033500075e-12 28 0.99999999999999989
		1 28 1
		1 28 1
		3 2 7.4926482407943544e-14 3 2.4045153021456933e-11 28 1
		3 3 2.0355229232631979e-13 4 2.0855169269487045e-11 28 1
		1 28 1
		2 2 1.2580078001984056e-13 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 6.9114469185359939e-13 28 0.99999999999999989
		3 3 2.074030225918713e-14 4 2.1249699984820234e-12 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		2 2 1.6548427726970661e-11 28 0.99999999999999989
		2 2 4.8503346172630952e-12 28 1
		2 2 2.1016866217863107e-11 28 1
		3 3 5.6525924280389049e-13 4 2.106894349708747e-12 28 1
		2 2 2.2356392009988224e-11 28 0.99999999999999989
		2 2 6.0545486653332102e-12 28 1
		3 3 3.2895961722100873e-12 4 1.2261332612048096e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 2.7001529127135956e-12 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 2 1.6031374602878615e-12 28 1
		3 3 1.4259738576783257e-12 4 5.3150413758332475e-12 28 1
		3 3 7.2035937886331334e-13 4 2.6410295471062317e-12 28 1
		7 7 4.2128824478439786e-21 8 3.281450102929001e-29 9 3.9944750594977288e-18 
		10 0.61115975781785969 11 0.38884014793970717 12 9.1850432558704425e-08 
		13 2.3920006308362206e-09
		7 7 3.8010890717907319e-20 8 2.8703377368718843e-30 9 1.4765110126553941e-18 
		10 0.61851448600339853 11 0.38148547400233301 12 3.9192330081145337e-08 
		13 8.0193849591731222e-10
		7 7 1.7754927396324815e-26 8 9.9472629244691921e-37 9 1.4243959975189937e-24 
		10 0.057877387383687764 11 0.94177866846074554 12 0.0003369689435476713 
		13 6.9752120190889793e-06
		7 7 2.0066859031925477e-27 8 1.7669137632541947e-35 9 5.2376760599931886e-24 
		10 0.073751127572836861 11 0.92548606033019587 12 0.00074301019505513687 
		13 1.9801901912068097e-05
		7 7 2.5464938954535977e-22 8 1.9682818316497039e-28 9 1.1002831256386691e-17 
		10 0.60582903868138183 11 0.3941708573213461 12 1.0119934369454526e-07 
		13 2.7979285235814142e-09
		7 7 3.2983923872183623e-16 8 1.9158942507525424e-22 9 3.7414688116086797e-12 
		10 0.99127732287413162 11 0.0087226771208491431 12 1.2432871124037772e-12 
		13 3.4098158439425859e-14
		7 7 4.2944021617364999e-15 8 3.1409563232480225e-23 9 1.3601287273054752e-12 
		10 0.99174463539415436 11 0.0082553646034189583 12 1.0355196611025949e-12 
		13 2.6736378177651719e-14
		7 7 1.6268409299086366e-23 8 9.8811245174489907e-28 9 1.6881052778738126e-17 
		10 0.6022059991691 11 0.39779387347254058 12 1.2386553492290016e-07 13 
		3.4928245792582159e-09
		7 7 2.2076389621615196e-17 8 9.7959020862496606e-22 9 6.0263015942270459e-12 
		10 0.99110934928516292 11 0.0088906507072141674 12 1.5530836507039866e-12 
		13 4.3418427044644471e-14
		7 7 6.145053791219709e-24 8 4.2412971200759329e-27 9 2.3464165896465322e-17 
		10 0.60097015922249597 11 0.39902969291386825 12 1.4376205641919669e-07 
		13 4.1015793894542289e-09
		7 7 6.2588837516701924e-18 8 4.2723478713535569e-21 9 8.6899226714159776e-12 
		10 0.99132569206703836 11 0.0086743079225132819 12 1.7100827846713249e-12 
		13 4.8366047341006594e-14
		7 7 2.4947143928192411e-30 8 9.5478872936362097e-33 9 3.8316503931514981e-23 
		10 0.083030552577787409 11 0.91601444749184058 12 0.00092768721520397786 
		13 2.731271516787156e-05
		7 7 3.4526826780509021e-24 8 1.3212950894335249e-26 9 2.3131763507174466e-17 
		10 0.59892111157660444 11 0.40107872998339444 12 1.5400927618302286e-07 
		13 4.4307250087300122e-09
		7 7 4.3204525785968556e-30 8 2.9554596612144457e-33 9 3.8844082820615924e-23 
		10 0.08313150334753619 11 0.91590294979701514 12 0.00093812678419854124 
		13 2.7420071250235033e-05
		7 7 8.8240373037159507e-31 8 1.4504879016325033e-32 9 3.2925124922900313e-23 
		10 0.080953197551083184 11 0.91810449920336323 12 0.00091686467174617277 
		13 2.5438573807328024e-05
		7 7 1.3205642985175749e-24 8 2.1139858306410366e-26 9 2.0992902693209503e-17 
		10 0.59793516269518632 11 0.40206469063607803 12 1.4279178850211417e-07 
		13 3.8769472623066578e-09
		7 7 3.2728624731146315e-18 8 1.2545696465349863e-20 9 8.4023851794478917e-12 
		10 0.99151780007668933 11 0.0084821999130861702 12 1.7715551284078381e-12 
		13 5.054018906766059e-14
		7 7 4.100763968150466e-15 8 1.6624375279691905e-19 9 6.9293125329166649e-10 
		10 0.99969253051105122 11 0.00030746879600183197 12 1.1204826651158871e-14 
		13 3.1268160063341477e-16
		7 7 1.0852759468284688e-15 8 7.3195313693214615e-19 9 1.0125133191570793e-09 
		10 0.99969570917020822 11 0.00030428981726444645 12 1.2575435977388228e-14 
		13 3.5502647485109305e-16
		7 7 1.2557313729390526e-13 8 8.3998244742162716e-17 9 7.558167013704587e-08 
		10 0.99999253751319861 11 7.3869050055877144e-06 12 8.2495904228295446e-17 
		13 2.3255738883017711e-18
		7 7 5.0841801373252964e-13 8 1.9707986409463538e-17 9 5.3498106427996491e-08 
		10 0.9999927111570307 11 7.2353443544487891e-06 12 7.0924222273032878e-17 
		13 1.9763071927936221e-18
		7 7 5.6766609787678642e-16 8 2.1810151468287299e-18 9 1.0003155691244109e-09 
		10 0.99970237166464015 11 0.00029762733503030934 12 1.3005043861928896e-14 
		13 3.7032052312883019e-16
		7 7 6.4511627228317271e-14 8 2.485349176110525e-16 9 7.440004092244894e-08 
		10 0.99999239121232619 11 7.5343875681011273e-06 12 8.9014013493344112e-17 
		13 2.5312265950438672e-18
		7 7 2.2317938589870152e-16 8 3.4613212878644177e-18 9 9.0210488083670275e-10 
		10 0.99971144412355417 11 0.00028855497432886098 12 1.1627730733832378e-14 
		13 3.1300745897767477e-16
		7 7 1.2780884857592397e-18 8 1.9860898072972486e-20 9 7.5690149125431805e-12 
		10 0.99172562782099771 11 0.0082743721697943265 12 1.5958505940554268e-12 
		13 4.3032148221525646e-14
		7 7 2.5569837205819392e-14 8 3.9904889730765895e-16 9 6.7532366359529662e-08 
		10 0.99999263675591266 11 7.2957116948913418e-06 12 7.9353009903024181e-17 
		13 2.1333516858481485e-18
		7 7 4.485505929494724e-11 8 1.6728167278138395e-15 9 2.7680651554189744e-06 
		10 0.99999708477115279 11 1.4711883515709025e-07 12 4.5704781296902376e-19 
		13 1.2720100648558955e-20
		7 7 1.042916700375272e-11 8 6.9478323437223446e-15 9 3.7988860364738975e-06 
		10 0.99999604745952109 11 1.536440062035346e-07 12 5.4552044442612146e-19 
		13 1.5359512548880735e-20
		7 7 5.0894641561482287e-12 8 1.9749327789750743e-14 9 3.6062080701490729e-06 
		10 0.99999623179486052 11 1.6199196001565926e-07 12 6.0826536415763497e-19 
		13 1.7279030770231912e-20
		7 7 6.1314279878576616e-14 8 3.3536714692930123e-20 9 4.3923072300302994e-10 
		10 0.99969307205925695 11 0.00030692750144165114 12 9.1340368452436296e-15 
		13 2.500877973196795e-16
		7 7 7.9236698022033933e-13 8 5.7386483542138306e-21 9 1.6734208239229161e-10 
		10 0.99970920670705499 11 0.00029079312480282174 12 7.6021566470654819e-15 
		13 1.9592861631016e-16
		7 7 7.5789934786253107e-12 8 4.0206010601436278e-18 9 3.4089403380481265e-08 
		10 0.99999266186684888 11 7.304036168676918e-06 12 5.8538854676317016e-17 
		13 1.6006969567211301e-18
		7 7 9.6933214911947732e-11 8 7.0263843615563738e-19 9 1.3238228393356114e-08 
		10 0.99999316770331059 11 6.8189615277452435e-06 12 4.8072168465978682e-17 
		13 1.2372462457921636e-18
		6 8 7.2107988697514424e-20 9 5.0216159100416776e-09 10 0.99999367595318855 
		11 6.3190251955343499e-06 12 1.9541354169228082e-17 13 3.9789140848245395e-19
		7 7 5.0042222615160811e-12 8 5.5973049232832816e-22 9 6.0705638237474861e-11 
		10 0.99971868466318992 11 0.00028131527109692835 12 3.22990644512469e-15 
		13 6.5781883801207808e-17
		7 7 2.852402328610944e-14 8 2.964874644006652e-24 9 4.8588312341175257e-13 
		10 0.991834403623576 11 0.0081655963754499652 12 4.5044111999996365e-13 
		13 9.1691873962803361e-15
		6 8 3.3678302716841639e-16 9 1.7324027269709493e-06 10 0.99999812110659525 
		11 1.464906774653612e-07 12 3.7142347091649232e-19 13 1.0145445034699739e-20
		6 8 5.9610650086360772e-17 9 6.777797307503534e-07 10 0.99999918754418626 
		11 1.3467608293935908e-07 12 3.0115220752927653e-19 13 7.7427846051624526e-21
		7 7 3.9895869084558128e-25 8 1.3580087834230531e-26 9 1.1532606505122948e-17 
		10 0.59939207884979695 11 0.40060779862425561 12 1.1991837573176739e-07 
		13 2.6075716347476717e-09
		7 7 4.1860481854596517e-19 8 1.380862496245916e-20 9 4.481297389438997e-12 
		10 0.99209616044706006 11 0.0079038395471668927 12 1.2643087009715369e-12 
		13 2.7405288630797663e-14
		7 7 2.3792805445931251e-31 8 8.3152738300811822e-33 9 1.6225569504104403e-23 
		10 0.07673289988197847 11 0.92235700537036835 12 0.00089039530676222965 
		13 1.969944089095788e-05
		7 7 1.0909880974490208e-32 8 4.1718103102725251e-35 9 2.1822787732019505e-25 
		10 0.024102447390070079 11 0.96162038485630474 12 0.013859986225898003 
		13 0.00041718152772723499
		7 7 3.7740849648014348e-33 8 6.2319609664706586e-35 9 1.8425528776158605e-25 
		10 0.02301558234415043 11 0.96243017867972658 12 0.014152267898530507 
		13 0.00040197107759253265
		7 7 1.8827442981280142e-32 8 1.2848153433857305e-35 9 2.2158671047030682e-25 
		10 0.024019003765893322 11 0.96200487084900288 12 0.013571058874976876 
		13 0.00040506651012710255
		4 10 0.0070982308092171209 11 0.90982566151436706 12 0.080555897171353807 
		13 0.0025202105050620149
		4 10 0.007216868831109946 11 0.90917572247929568 12 0.081027315122744192 
		13 0.0025800935668501834
		4 10 0.00689740616472967 11 0.9080442238678843 12 0.082550189802803486 
		13 0.0025081801645825408
		1 7 9.5420709854906587e-34;
	setAttr ".wl[3442:3530].w"
		6 8 3.350191525660953e-35 9 8.5276132388528746e-26 10 0.020761281454766474 
		11 0.96489305079296339 12 0.014028480156079092 13 0.00031718759619108318
		7 7 8.4407183532820828e-26 8 3.0741479278927706e-27 9 1.4766356035070255e-18 
		10 0.603429169437952 11 0.39657073441062918 12 9.4862800546636587e-08 
		13 1.2886183388129395e-09
		7 7 3.4633302104949354e-32 8 1.5529564511806439e-33 9 1.591968862545288e-24 
		10 0.070200328859386291 11 0.92895940475858008 12 0.0008289307773115326 
		13 1.1335604722204719e-05
		7 7 1.2344903620171339e-34 8 5.7136612967669259e-36 9 7.5758355245691667e-27 
		10 0.017910864040437763 11 0.96847286163983359 12 0.013429752730152933 
		13 0.00018652158957592886
		7 7 1.4131579926369522e-19 8 3.4519573998875075e-21 9 6.9054386072538771e-13 
		10 0.99267388677669699 11 0.0073261132216848835 12 9.1503965093718665e-13 
		13 1.2508431336873124e-14
		7 7 1.9815877563686472e-18 8 5.7259867431740413e-22 9 2.1651348573158372e-13 
		10 0.9927809029639233 11 0.0072190970351337092 12 7.2141374522221245e-13 
		13 5.1099940703064544e-15
		6 7 7.0834031823916448e-25 8 4.6268530011401409e-28 9 4.3296598614645125e-19 
		10 0.61080171500091651 11 0.38919828447736204 13 5.217214944042221e-10
		7 7 4.3806879287603694e-16 8 9.8037083934910017e-20 9 2.6488624412720446e-11 
		10 0.99975474186068636 11 0.00024525811281943342 12 5.1698891047804894e-15 
		13 3.6957313051971107e-17
		7 7 2.8814136376687623e-17 8 6.0656119696895869e-19 9 8.4560308823156353e-11 
		10 0.99973772107352299 11 0.00026227884190975969 12 6.8891206388063392e-15 
		13 9.4444469356609208e-17
		7 7 9.7636304091941001e-15 8 1.813968484769906e-20 9 4.5277899907748586e-11 
		10 0.99979505079612452 11 0.00020494915858479976 12 3.0503706818316011e-15 
		13 1.0033106315711233e-17
		7 7 4.2125316075532366e-17 8 8.4032416402516196e-23 9 3.1084183785707254e-13 
		10 0.99317136987737209 11 0.0068286301218509465 12 4.6447221916985081e-13 
		13 1.4910766116819548e-15
		6 7 1.4568101144939677e-23 8 7.1398982227035311e-29 9 6.8716118007449955e-19 
		10 0.61889860280605735 11 0.38110139704476731 13 1.4917530503487566e-10
		7 7 7.3188388933289274e-17 8 2.4021466888376114e-18 9 5.3348611243932681e-10 
		10 0.99971591471965038 11 0.00028408474685373189 12 9.5455575833294215e-15 
		13 2.0683439448153418e-16
		7 7 3.7498067744420165e-15 8 6.9965724945488614e-17 9 6.374865181052926e-09 
		10 0.99999360886153466 11 6.3847635963463034e-06 12 4.5528025216637889e-17 
		13 6.2563804711364136e-19
		7 7 8.2561917267017791e-15 8 2.7193322556558539e-16 9 3.9281419501057884e-08 
		10 0.99999272968921449 11 7.2310293574593269e-06 12 6.5814479808443456e-17 
		13 1.4258400234475872e-18
		7 7 8.1057882020755839e-30 8 6.2157578169892841e-34 9 2.5737330649502226e-23 
		10 0.081311771922445833 11 0.91778603357463373 12 0.00087687144522382145 
		13 2.5323057696618701e-05
		7 7 3.1115620826531663e-32 8 2.5288587273151174e-36 9 1.3785526435381112e-25 
		10 0.022553690761042283 11 0.96372674639481992 12 0.013326493967953313 
		13 0.00039306887618455953
		7 7 3.3957730359544587e-31 8 3.9776918903594995e-37 9 7.24422732941199e-26 
		10 0.020251114624401784 11 0.96647945676532865 12 0.01289633599114221 
		13 0.0003730926191273374
		4 10 0.0057215339367502338 11 0.91027319636618487 12 0.081517357533487322 
		13 0.0024879121635775769
		4 10 0.006560363916430334 11 0.90996523694426223 12 0.080968413105938053 
		13 0.002505986033369378
		7 7 6.9054849112268753e-30 8 6.376762495661727e-38 9 2.4993302513169592e-26 
		10 0.017552068613590169 11 0.97056335188068799 12 0.011570043521344071 
		13 0.00031453598437773851
		4 10 0.0043880982960737835 11 0.90263193336941472 12 0.090782724320888519 
		13 0.0021972440136229787
		7 7 5.6549483752272357e-29 8 3.0327872067492101e-39 9 5.7683733559820217e-27 
		10 0.011332865756727938 11 0.98272481801895606 12 0.0058208602179545162 
		13 0.00012145600636158279
		7 7 5.3150603170666088e-30 8 2.8376028347856783e-40 9 5.4442712634869173e-28 
		10 0.0020862328540416026 11 0.94845231666952678 12 0.047709523112128824 
		13 0.0017519273643026661
		7 7 1.0163011276048316e-30 8 5.3244664425030627e-41 9 1.0591749526666825e-28 
		10 0.0010305339561895441 11 0.79512730097449957 12 0.19185705595323166 
		13 0.011985109116079163
		4 10 0.0015382831869520386 11 0.73588831965046109 12 0.25144436955451965 
		13 0.01112902760806722
		7 7 3.6222883289383888e-31 8 1.0189134128169129e-41 9 5.4055899379619027e-29 
		10 0.00039342317972115539 11 0.86611487142238797 12 0.12752144531613951 
		13 0.005970260081751385
		7 7 6.3659291371306659e-31 8 1.5977129694931131e-41 9 9.7237231758035765e-29 
		10 0.00029449063216649841 11 0.97901977611573165 12 0.019961611995726734 
		13 0.00072412125637525554
		4 10 4.7383279033752506e-07 11 0.99997237729319566 12 2.6896589607527943e-05 
		13 2.5228440647673267e-07
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		2 10 5.121146923081632e-06 11 0.99999487885307703
		1 11 1
		6 7 2.6063780652860774e-26 8 5.4074530578801441e-38 9 3.4209735917274893e-24 
		10 0.065020002786186193 11 0.93497962406561719 13 3.7314819666669661e-07
		7 7 1.0061245068787099e-28 8 1.0672354179046245e-34 9 1.4719587753101783e-23 
		10 0.077517673140057919 11 0.92167169555094519 12 0.00078832447351996811 
		13 2.2306835476888444e-05
		4 10 0.0022394712418721818 11 0.74068450023635024 12 0.24404625152448123 
		13 0.013029776997296351
		4 10 0.0019885712320012461 11 0.72835079351626242 12 0.25685182213783264 
		13 0.012808813113903696
		4 10 0.0024341002384739019 11 0.74273743100434919 12 0.24188475902925133 
		13 0.012943709727925579
		4 10 0.00058025600823863321 11 0.47112557296137197 12 0.47835968278317725 
		13 0.049934488247212139
		4 10 0.00059298071107027894 11 0.46688291085172012 12 0.48004170848901256 
		13 0.052482399948197034
		4 10 0.0025023379610998875 11 0.74146680561473388 12 0.24267083396530176 
		13 0.013360022458864475
		4 10 0.00053897866664209815 11 0.47205080924752324 12 0.47752028899431798 
		13 0.04988992309151663
		4 10 0.00050399601545525474 11 0.50850467416065614 12 0.44295057654380798 
		13 0.048040753280080617
		4 10 0.0004161872084853524 11 0.58579189179023905 12 0.37368834018707275 
		13 0.040103580814202844
		6 7 4.3868511805364801e-20 8 1.5502333043217994e-31 9 2.5602808724394157e-18 
		10 0.61456411904937813 11 0.38543588088067926 13 6.9942582605197322e-11
		6 7 4.3674025351858958e-20 8 1.8602181529365375e-32 9 2.9196232385599546e-18 
		10 0.61260065684343878 11 0.3873993431068059 13 4.9755360529574943e-11
		6 7 1.7007146655404365e-26 8 2.9620162108303096e-39 9 2.5529304858233e-24 
		10 0.052374130270692237 11 0.94762536645626727 13 5.0327304045951256e-07
		6 7 8.7723078538147222e-22 8 2.7240161440283359e-34 9 7.7301490522591445e-20 
		10 0.60497431707700822 11 0.39502568291955553 13 3.4362763299721922e-12
		6 7 7.0607049963505918e-28 8 8.1837624026405197e-41 9 1.3703140532083972e-25 
		10 0.096789270846381559 11 0.90321071305927725 13 1.6094341225489317e-08
		7 7 8.9545448334389086e-24 8 2.2444784798975822e-36 9 1.0330567940449829e-21 
		10 0.59732639334500581 11 0.4026736065741941 12 8.0668818344015945e-11 
		13 1.3130661680299732e-13
		6 7 1.3897314133660406e-29 8 1.2253585798319535e-42 9 3.4880395141241065e-27 
		10 0.12490899036008342 11 0.87509100901031434 13 6.2960224891241515e-10
		7 7 1.7387497471266597e-24 8 1.2236431671556896e-35 9 1.9942992199204935e-22 
		10 0.59945642135140287 11 0.40054357857907369 12 6.9474723932707739e-11 
		13 4.8818872923523553e-14
		6 7 9.9041716311636465e-31 8 3.9604675451502096e-42 9 2.5179146061491185e-28 
		10 0.11181213885011175 11 0.88818786001633709 13 1.1335511713494659e-09
		7 7 4.7107620234578048e-25 8 2.0876196702720841e-34 9 1.8605974907480399e-22 
		10 0.60712921497874683 11 0.39287078500640993 12 1.4829952905252698e-11 
		13 1.3377260005581137e-14
		6 7 2.1277740313919899e-31 8 9.2411780004179478e-41 9 2.1561521493410996e-28 
		10 0.1060867418814784 11 0.89391325788403153 13 2.3449006412961193e-10
		6 7 3.7092619683011173e-30 8 3.6305583050681316e-43 9 9.3122524321953066e-28 
		10 0.048454164863188147 11 0.95154579790050342 13 3.7236308436011039e-08
		6 7 7.9676348204230058e-29 8 9.8448777424750136e-42 9 1.5487303392704007e-26 
		10 0.017173924878123314 11 0.98282537241226586 13 7.0270961080810002e-07
		6 7 1.5656658765989771e-32 8 1.2835265306380927e-41 9 6.7982489994584675e-30 
		10 0.034566136766806102 11 0.96543385835627116 13 4.876922710583875e-09
		3 10 6.02381490782955e-05 11 0.99993975738903584 13 4.4618858607847756e-09
		3 10 1.6039396356082314e-05 11 0.99998395646297089 13 4.1406730266757563e-09
		6 7 4.6563116525566039e-29 8 5.7535690473824212e-42 9 9.0502827716403624e-27 
		10 0.0069234649886665495 11 0.99306634839039998 13 1.0186620933464638e-05
		3 10 1.2733773044559804e-05 11 0.99998722633030401 13 3.9896651427007157e-08
		6 7 5.9507416112049379e-31 8 5.1799904505548795e-44 9 1.4952078740911853e-28 
		10 0.004321879287595776 11 0.99566973951927251 13 8.3811931316712474e-06
		6 7 7.9523657798515986e-33 8 5.3507591032296812e-40 9 1.9099941784463663e-28 
		10 0.099298160359757928 11 0.90070183689344196 13 2.7468001433988296e-09
		6 7 2.7095966029924316e-26 8 9.6092049732338709e-34 9 1.8280136799444204e-22 
		10 0.61130079033245488 11 0.38869920966741234 13 1.3279709466968644e-13
		6 7 4.0745019427395983e-27 8 2.3962222827983965e-32 9 4.8365604661370429e-22 
		10 0.61464113089320005 11 0.38535886910607198 13 7.280267133779256e-13
		6 7 1.3499876449787127e-33 8 2.0298463844260199e-38 9 9.5266820584163621e-28 
		10 0.10131098689832831 11 0.89868900849644739 13 4.6052242628809095e-09
		7 7 3.755746997502507e-20 8 8.178012233102224e-28 9 6.8998216751861525e-17 
		10 0.9871587533622983 11 0.01284124663770065 12 9.6288623757629374e-16 
		13 1.340078795262073e-18
		7 7 1.7074556173930395e-21 8 3.3683552440039605e-27 9 2.8300569223396873e-17 
		10 0.98491550341156064 11 0.015084496588435308 12 4.1346470451722919e-15 
		13 1.1677943542117846e-17
		6 7 3.2934909234671244e-25 8 1.7788058501146264e-30 9 2.5477776243509389e-20 
		10 0.62029985433824175 11 0.37970014564887677 13 1.2881490983028333e-11
		6 7 5.3285846501972222e-32 8 7.0641532800885513e-37 9 2.3965912501676043e-26 
		10 0.075531724247517751 11 0.92446818188609026 13 9.3866392001842344e-08
		7 7 2.3097813982924087e-19 8 4.3992035367481938e-25 9 2.507862273145142e-15 
		10 0.98923446990830277 11 0.0107655300916326 12 6.1868733175076684e-14 
		13 1.7941428050249132e-16
		6 7 2.7115401069043293e-34 8 3.4699981774717767e-39 9 1.5699960879491276e-28 
		10 0.04002506036395078 11 0.95997486312642288 13 7.6509626363534479e-08
		6 7 5.2166543643994179e-33 8 8.1845356075847108e-38 9 2.5006017266591403e-27 
		10 0.016152455156848173 11 0.98384633488430429 13 1.2099588475966307e-06
		6 7 1.5302797376335303e-30 8 1.8410262601011391e-35 9 4.1256060780214862e-25 
		10 0.053657427218554168 11 0.94634042573405597 13 2.1470473899142999e-06
		7 7 4.2801397044298758e-19 8 1.9798391994197553e-28 9 6.4444805340785634e-17 
		10 0.98508295011754443 11 0.014917049882455338 12 1.6638659129297687e-16 
		13 1.5638057823861736e-19
		7 7 6.9405615576565793e-17 8 3.2824183593087291e-26 9 7.4425536027366914e-15 
		10 0.9989302517309151 11 0.0010697482690775043 12 2.5355833258051883e-17 
		13 6.0379372728939354e-20
		7 7 1.5591841755742097e-18 8 1.7834974499824741e-29 9 7.8124378921615199e-17 
		10 0.98526449001450811 11 0.014735509985491309 12 6.0418173394918084e-16 
		13 4.5314771253366945e-19
		7 7 2.7570063680072619e-16 8 3.6386546002289995e-27 9 1.0246470332633464e-14 
		10 0.99797523428562052 11 0.0020247657143682373 12 6.586068033685079e-16 
		13 1.1265580824455976e-18
		7 7 7.0280590999304655e-18 8 1.4151205526186166e-25 9 8.3099670621231238e-15 
		10 0.99831252355113842 11 0.0016874764488523772 12 1.0545530305336013e-15 
		13 3.0682770031699734e-18
		7 7 9.4422688468294833e-15 8 4.5795726902097268e-24 9 7.10421036079327e-13 
		10 0.99989323291373577 11 0.00010676708554405206 12 2.3473307485078618e-16 
		13 6.0152828370763052e-19
		7 7 1.0365756580736255e-15 8 2.0425731376980053e-23 9 8.0181698641429282e-13 
		10 0.99944382719003155 11 0.0005561728091580798 12 7.7020907953485278e-15 
		13 2.4381204278647879e-17
		7 7 3.8544186324588769e-14 8 5.6953197652355032e-25 9 1.0389293649615967e-12 
		10 0.99929234786690724 11 0.00070765213200901962 12 6.2144168486246134e-15 
		13 1.1019965604532301e-17
		7 7 1.0704582527198961e-18 8 8.6255412817392098e-31 9 5.4010599535669037e-17 
		10 0.98162318787319347 11 0.018376812126804722 12 1.7695073203440794e-15 
		13 2.9653039402782955e-18
		7 7 1.4879604217558346e-16 8 1.394743109685287e-28 9 5.5213680299977829e-15 
		10 0.9862558782355707 11 0.013744121764384732 12 3.8837796361819183e-14 
		13 6.665909924322628e-17
		5 7 2.9741048199606688e-14 8 3.1776520869643226e-26 9 7.9386135295826685e-13 
		10 0.99120340181378486 11 0.0087965981850167806;
	setAttr ".wl[3530:3610].w"
		2 12 3.7415499832391189e-13 13 6.7051640780474718e-16
		7 7 5.4363748725759139e-12 8 3.6711722583333762e-23 9 8.8316209336414576e-11 
		10 0.99969934920762415 11 0.00030065069862288986 12 5.5522365186480329e-16 
		13 6.7118276805138627e-18
		7 7 5.8302476803286789e-12 8 7.2496995588315259e-24 9 1.0875145634476893e-10 
		10 0.99972601965647101 11 0.0002739802289447488 12 2.5006348049333875e-15 
		13 4.5260420019613916e-18
		7 7 3.3221595240317197e-14 8 1.9850117234872178e-25 9 7.69914152684237e-13 
		10 0.99117868911275131 11 0.0088213108863691627 12 7.5384919487620201e-14 
		13 9.173442817482231e-16
		6 8 4.9049094680324061e-21 9 7.3856535022804992e-09 10 0.99999340444001172 
		11 6.5881743347242828e-06 12 3.3102672453363709e-18 13 3.9799893937157199e-20
		6 8 9.7174961644091769e-22 9 8.7565560521210997e-09 10 0.99999411526447135 
		11 5.8759789725290023e-06 12 1.4605819284521829e-17 13 2.6553252641474018e-20
		6 8 4.529187098820228e-19 9 3.9979993709861836e-07 10 0.99999947361181274 
		11 1.2658825018042027e-07 12 1.9990843555464753e-20 13 2.3919527845265055e-22
		6 8 9.2277584100139874e-20 9 4.7709442538270204e-07 10 0.99999941225358335 
		11 1.10651991299091e-07 12 8.7596049398859667e-20 13 1.5942925729993224e-22
		6 8 6.4161760516870077e-18 9 2.6749957839260134e-07 10 0.99999960891394568 
		11 1.2358647587697808e-07 12 1.212973177735748e-19 13 2.4670201686054947e-21
		6 8 4.3710856833580669e-16 9 9.8311981306107876e-06 10 0.9999901667337 
		11 2.0681689697655837e-09 12 7.1983380065299729e-22 13 1.4612466363404317e-23
		6 8 3.2157972195366561e-17 9 1.4898297498627303e-05 10 0.99998509961868676 
		11 2.0838146387383875e-09 12 1.1427604945848982e-22 13 1.3619996011744337e-24
		6 8 3.9515967197653174e-15 9 2.4507176410969506e-05 10 0.9999754905729582 
		11 2.2506269110903521e-09 12 1.7846875667105261e-21 13 4.5846740702649232e-23
		6 8 6.6061803826106262e-18 9 1.8015672635835397e-05 10 0.99998198252720982 
		11 1.8001542953889267e-09 12 5.0614747765722205e-22 13 9.204222099378266e-25
		6 8 1.7678114923314294e-15 9 0.00036263753185238458 10 0.99963736244003798 
		11 2.8107818400437854e-11 12 5.7495425629127291e-25 13 6.8381209319947224e-27
		6 8 3.5442631093293239e-16 9 0.00044298229743266066 10 0.99955701767863381 
		11 2.3933216248845287e-11 12 2.587761904317766e-24 13 4.6950326407883627e-27
		6 8 7.3579055672635183e-17 9 1.7257796821996729e-05 10 0.99998274196600734 
		11 2.3717054704406867e-10 12 2.7395996713523365e-23 13 4.8430911495358588e-26
		6 8 1.0392797803216856e-18 9 4.4658776639455454e-07 10 0.9999995386911239 
		11 1.4721109695079984e-08 12 4.408911355429211e-21 13 7.8086707157902073e-24
		6 8 3.854778528920728e-15 9 0.00043082329290649137 10 0.99956917670402812 
		11 3.0615003483219297e-12 12 1.4429740110908215e-25 13 2.5456048642652615e-28
		6 8 1.0931857918494862e-20 9 7.9252006539218569e-09 10 0.99999922424017695 
		11 7.6783462237222407e-07 12 6.4231629030150071e-19 13 1.1392682211634502e-21
		7 7 5.1411348358134739e-12 8 8.3440500786090377e-23 9 9.74856063511615e-11 
		10 0.99996750194067663 11 3.2497956696559102e-05 12 8.3644081855787262e-17 
		13 1.4845009046206301e-19
		6 8 9.3311956693753694e-20 9 6.2274993783936384e-09 10 0.99999988963500308 
		11 1.0413749748797412e-07 12 3.76926792961958e-20 13 9.6904849002978524e-23
		7 7 1.3942163532149429e-12 8 6.9332518813347841e-22 9 7.1742501199507503e-11 
		10 0.9999955092889331 11 4.4906379301444826e-06 12 4.2267203808587805e-18 
		13 1.0871386489147098e-20
		6 8 9.0108443997938747e-18 9 3.6623409441203006e-07 10 0.99999963181419649 
		11 1.9517090377895405e-09 12 2.7988355685868201e-22 13 7.2018007340656805e-25
		7 7 4.5926128980357038e-30 8 1.6968934632475555e-41 9 8.9138685694472843e-28 
		10 0.0010926783376277629 11 0.98573346869450484 12 0.012846280199094761 
		13 0.00032757276877281915
		7 7 7.8627591928696932e-31 8 9.4613883721504933e-42 9 1.5096224344090815e-28 
		10 0.00045641389976847622 11 0.89647902397364909 12 0.10044933964347091 
		13 0.0026152224831115858
		7 7 1.7885765670238012e-31 8 7.6553517625759237e-42 9 3.3382589737435589e-29 
		10 0.00019401541921012871 11 0.6777112733301015 12 0.31100487143837341 
		13 0.011089839812314831
		7 7 1.4753507269902381e-31 8 5.1263041540703365e-42 9 2.1636721220817783e-29 
		10 0.00023325977500650706 11 0.65604055783353155 12 0.32043215608621317 
		13 0.023294026305248784
		7 7 8.3215348789177622e-32 8 3.7013526827863288e-41 9 1.651810641683917e-29 
		10 0.00020619565204680828 11 0.68983402844846031 12 0.30493324124344384 
		13 0.0050265346560490103
		7 7 7.9938278515934957e-33 8 4.0142727786226198e-42 9 1.5793218850566553e-30 
		10 5.3402028865498148e-05 11 0.44716223557173879 12 0.53999990914063445 
		13 0.012784453258761432
		7 7 1.4909806927754439e-32 8 7.968706899119908e-43 9 2.7235875911081893e-30 
		10 5.3720090610464723e-05 11 0.42548645774355393 12 0.54824607587523277 
		13 0.026213746290603083
		7 7 2.6130574508578146e-33 8 1.8433174723027825e-41 9 7.1135392273834899e-31 
		10 6.6436910885448881e-05 11 0.45847859580804778 12 0.53332459826656675 
		13 0.0081303690144999864
		7 7 2.5634190447996809e-32 8 1.7702814430995739e-40 9 7.0141437774314438e-30 
		10 0.00025951613908924099 11 0.69463091252325204 12 0.30205644216630367 
		13 0.0030531291713550616
		7 7 6.6009942803413033e-34 8 6.4584022292565617e-41 9 7.2580783099093622e-31 
		10 9.5985448369804036e-05 11 0.46585584123159679 12 0.52267558053857099 
		13 0.011372592781462403
		7 7 1.3713787268350746e-34 8 1.58579729153715e-41 9 1.6355778231831302e-31 
		10 4.7340825874730167e-05 11 0.32978499358770202 12 0.64625222034717 
		13 0.023915445239253322
		7 7 5.6537344645263056e-34 8 4.1421631984108636e-42 9 1.5313082638450082e-31 
		10 3.0170170200070642e-05 11 0.30488249744686169 12 0.67712117263796001 
		13 0.017966159744978265
		7 7 1.2956193137758243e-34 8 1.5872198863889185e-40 9 1.1590242621357316e-30 
		10 0.00013187717755493779 11 0.4538744569927855 12 0.52385084930735326 
		13 0.022142816522306236
		7 7 6.16298555002749e-33 8 6.6360231483548389e-40 9 7.6074506136582178e-30 
		10 0.00038473400288638478 11 0.6890991753340604 12 0.3059803700979068 
		13 0.0045357205651464418
		7 7 1.234717000616355e-33 8 1.8749120282387341e-39 9 1.4331147727650231e-29 
		10 0.00055690192082845358 11 0.67356528924324677 12 0.31602464176215755 
		13 0.0098531670737672782
		7 7 3.9747598947665682e-35 8 4.4355915431929544e-41 9 3.2013131159911258e-31 
		10 7.2207507954410842e-05 11 0.35948722178601883 12 0.6080176566911013 
		13 0.032422914014925482
		7 7 9.1806531180161378e-36 8 4.9846707005988953e-41 9 2.3306972904484687e-31 
		10 7.3052694170377407e-05 11 0.29674709976247743 12 0.62872748427679348 
		13 0.074452363266558741
		7 7 2.6503560278971631e-35 8 8.1688455612338436e-42 9 5.1388722297128173e-32 
		10 3.1673342374347582e-05 11 0.22063192870502424 12 0.72739387865884197 
		13 0.051942519293759433
		7 7 2.3590028645430736e-35 8 2.3960996303355076e-40 9 1.0608834644699915e-30 
		10 0.00016385871345588824 11 0.41499328019852638 12 0.53249745686412919 
		13 0.0523454042238886
		7 7 2.1854939126708984e-34 8 3.1275353860355358e-39 9 1.3098315178691281e-29 
		10 0.00069560204113610063 11 0.65222104966512073 12 0.32708113716346088 
		13 0.020002211130282353
		7 7 2.9356494778226137e-35 8 5.9066502422199487e-40 9 2.4212499114302542e-30 
		10 0.00067580873360481119 11 0.62399929323665604 12 0.34282897102350046 
		13 0.032495927006238684
		7 7 3.8066491742918218e-36 8 7.4431532021523444e-41 9 3.0952057286285882e-31 
		10 0.000162049882092613 11 0.35942469786650394 12 0.52476600630389481 
		13 0.11564724594750865
		4 10 0.0018857909764017355 11 0.82288809523993911 12 0.16932326555252075 
		13 0.0059028482311384014
		7 7 2.6916201271447747e-34 8 1.6057105940186963e-38 9 6.0196611537226108e-29 
		10 0.0020772146529396546 11 0.85657946871765245 12 0.13619910539096483 
		13 0.0051442112384430813
		7 7 1.936340532676773e-33 8 7.7306466383455205e-39 9 6.8138629977674483e-29 
		10 0.0016804003099776693 11 0.89059124759902442 12 0.10508506088374878 
		13 0.0026432912072492272
		4 10 0.00012535356928244923 11 0.29065626859664917 12 0.50786416536728529 
		13 0.20135421246678309
		4 10 5.6253456972354954e-05 11 0.14134916124042163 12 0.44402150837739796 
		13 0.41457307692520806
		7 7 1.0134775742315831e-36 8 1.1119983391101112e-41 9 4.7553861712254014e-32 
		10 5.2882047977010961e-05 11 0.16743767021368944 12 0.57696102142651406 
		13 0.25554842631181957
		4 10 0.00057341163098156844 11 0.58525531390137675 12 0.37456518411636353 
		13 0.039606090351278156
		7 7 3.5043399437341804e-36 8 1.9988774102968268e-42 9 1.0671265136269956e-32 
		10 1.9150099727716619e-05 11 0.11990641777823798 12 0.78334378819595996 
		13 0.096730643926074417
		7 7 8.1053880980323112e-40 8 1.6526549336859302e-44 9 6.1211790248434421e-35 
		10 1.0110524387793044e-05 11 0.035430161775007629 12 0.65745856700325955 
		13 0.30710116069734517
		7 7 1.3068885154267214e-38 8 4.1067784537147478e-45 9 1.858998426076497e-35 
		10 4.9718656646699698e-06 11 0.029900270125070839 12 0.86005194848432887 
		13 0.11004280952493577
		7 7 2.150752221057287e-40 8 1.4550391459427302e-44 9 5.376506730538298e-35 
		10 1.3272848217385281e-05 11 0.044496895372674553 12 0.2729165663643448 
		13 0.68257326541476326
		7 7 3.4288442128542704e-41 8 1.5895128861171359e-45 9 5.7202581057472123e-36 
		10 4.6796101819022244e-06 11 0.016454007756094603 12 0.28018836639465938 
		13 0.70335294623906419
		3 10 1.1225085361221687e-06 12 0.74019488849205617 13 0.25980398899940771
		3 10 4.3320884857145364e-07 12 0.929711040227436 13 0.070288526563715426
		4 10 4.4939310228642171e-07 11 0.0021307213056069862 12 0.22841094104774406 
		13 0.76945788825354666
		7 7 1.3032578223788874e-34 8 1.2313767689204262e-42 9 3.3943915440202556e-32 
		10 1.5905818469996226e-05 11 0.18730389815527201 12 0.77963957058587308 
		13 0.033040625440384788
		7 7 5.0234493047626379e-35 8 3.8809042162537675e-43 9 1.0215671648032332e-32 
		10 8.4266776575717522e-06 11 0.094454301838853977 12 0.85447095737275125 
		13 0.051066314110737046
		7 7 1.8454112929503937e-33 8 8.5638879211134483e-43 9 3.5879706877599248e-31 
		10 2.5713322777424823e-05 11 0.30294408541990464 12 0.67075298460579791 
		13 0.026277216651520101
		7 7 6.3644561246492418e-34 8 2.0236788036060061e-43 9 1.0732580746696119e-31 
		10 1.6639612752684175e-05 11 0.1984437213602705 12 0.7474795692381736 
		13 0.054060069788803268
		7 7 3.1242139649291369e-34 8 3.6132947261910121e-44 9 4.0382242383930964e-32 
		10 1.1241093301269564e-05 11 0.10790946496734184 12 0.79360170755078585 
		13 0.09847758638857125
		7 7 1.7954583486645207e-37 8 4.8762562397766443e-46 9 2.2853545648821806e-35 
		10 2.1107234687485238e-06 11 0.022918915763854585 12 0.92861618643150268 
		13 0.048462787081174012
		3 2 4.0493272301689961e-14 12 0.99999965676943781 13 3.4323056219420778e-07
		7 7 2.1172651653809978e-36 8 1.4565833871238102e-46 9 2.3035157373888687e-34 
		10 2.7633201183254603e-06 11 0.023414251313715568 12 0.8651279904776652 
		13 0.1114549948885008
		3 10 2.0973349146302667e-07 12 0.92801259768652888 13 0.071987192579979653
		7 7 1.2480212792067304e-32 8 2.0828450643517877e-39 9 2.5939801547237549e-29 
		10 0.0010987375548667693 11 0.91067008227763324 12 0.087093928218444597 
		13 0.0011372519490552391
		7 7 6.8880382619645222e-32 8 4.0981862562885028e-40 9 1.9067802076980713e-29 
		10 0.0006769205943896277 11 0.91771688040592536 12 0.080903963386697031 
		13 0.0007022356129878888
		7 7 2.9065753957693578e-31 8 6.2869303199334514e-41 9 5.8005699067971145e-29 
		10 0.00055473865964820231 11 0.91288636147172719 12 0.085398198995876126 
		13 0.001160700872748565
		7 7 2.4318795290496544e-31 8 1.5086466966389463e-39 9 6.9363285682364139e-29 
		10 0.001469918455534417 11 0.98332108637323989 12 0.015008307424549255 
		13 0.00020068774667637639
		7 7 1.2027136556417274e-30 8 2.2325501176324298e-40 9 2.4319731391754682e-28 
		10 0.0015746430791274131 11 0.9825998754385078 12 0.015573004670776601 
		13 0.00025247681158825961
		7 7 4.1041331026785717e-32 8 8.5806845516038832e-39 9 1.1374900938366233e-28 
		10 0.002843737836366662 11 0.9785530726265852 12 0.018261841713459029 
		13 0.00034134782358899576
		6 7 3.175933554829636e-35 8 6.7815802506189432e-40 9 2.7373827995530345e-29 
		10 0.0051726605623806272 11 0.9948130451705085 13 1.4294267110882067e-05
		3 10 0.00088170415110322431 11 0.99911521318420016 13 3.0826646966186644e-06
		7 7 6.557843133117683e-33 8 3.9604953918111908e-38 9 4.2479610581046025e-28 
		10 0.0048023631329789426 11 0.96576922225965345 12 0.028687486475027037 
		13 0.00074092813234055233
		7 7 9.5319896740104108e-34 8 1.1039516831163301e-37 9 3.7394780303270683e-28 
		10 0.0058971064394169222 11 0.94451396296968293 12 0.048311533749778986 
		13 0.0012773968411213736
		4 10 0.005233800640766284 11 0.9229196538788601 12 0.070664040744304657 
		13 0.0011825047360689567
		1 10 0.0061710555252862944;
	setAttr ".wl[3610:3775].w"
		3 11 0.89096897179967705 12 0.10084792226552963 13 0.0020120504095070268
		4 10 0.0022251648918029106 11 0.75947266910425115 12 0.22789043188095093 
		13 0.010411734122995009
		6 7 2.5252353753912082e-34 8 6.5555464999258898e-37 9 1.7414897082332058e-27 
		10 0.015222947027507863 11 0.9846849410680778 13 9.2111904414347639e-05
		6 7 4.0359375823563142e-33 8 6.7240447636537355e-38 9 1.9474037068640364e-27 
		10 0.011779713587651104 11 0.98818018996109491 13 4.0096451253979066e-05
		6 7 1.0269769315730418e-31 8 1.8532591908974286e-34 9 3.8282710643351234e-25 
		10 0.063223576440435636 11 0.93677075984611413 13 5.6637134502619186e-06
		7 7 4.1137811364187427e-33 8 2.3984459064906329e-43 9 7.4595011500485677e-31 
		10 3.088528189651183e-05 11 0.32104955355379566 12 0.64088032213814106 
		13 0.038039239026166925
		7 7 1.4955588857670142e-32 8 5.4872820020358215e-43 9 2.1615729795833096e-30 
		10 7.3032312961237507e-05 11 0.39761547012039195 12 0.54269066100763297 
		13 0.059620836559014019
		7 7 3.1836013105015872e-33 8 1.317075614240833e-43 9 4.7720869936687349e-31 
		10 3.2955358917358798e-05 11 0.266387896646814 12 0.65189338947161468 
		13 0.081685758522654028
		7 7 1.9497607363860736e-32 8 9.423983194427163e-43 9 2.1982937952781098e-30 
		10 0.00010500930976601362 11 0.36563474025348364 12 0.50838763924525254 
		13 0.12587261119149781
		7 7 2.5521946524619578e-33 8 1.2278012754392401e-43 9 2.9413509412892927e-31 
		10 3.3316036939834761e-05 11 0.1628901917242653 12 0.574563274440408 
		13 0.26251321779838688
		7 7 2.3790370270031125e-31 8 1.1979519596435654e-41 9 2.5830693495746906e-29 
		10 0.00040773813250088011 11 0.6130743511602883 12 0.34662036299303167 
		13 0.039897547714179277
		4 10 8.9420251336846945e-05 11 0.31268584327982318 12 0.47758451104164124 
		13 0.20964022542719873
		4 10 0.00010575809024759852 11 0.24532871123071676 12 0.5120389204028799 
		13 0.24252661027615574
		4 10 4.9927756136214356e-05 11 0.14745665871683034 12 0.39387665072208206 
		13 0.45861676280495139
		4 10 4.146157386142324e-05 11 0.14410076803125527 12 0.43327558040618896 
		13 0.42258218998869435
		4 10 2.0253907238032554e-06 11 0.9999970982378289 12 7.4443062203499721e-07 
		13 1.3194082526535311e-07
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		3 10 2.3708139296196859e-07 12 0.2570315320393245 13 0.74296823087928254
		4 10 4.9301888460639987e-08 11 0.00043188933453064404 12 0.040604670264588916 
		13 0.95896339109899198
		4 10 3.3181433678475258e-07 11 0.0025738272845726717 12 0.063113170968233323 
		13 0.93431266993285722
		7 7 2.1491914031947524e-36 8 1.1135717283314244e-46 9 2.2619904002448956e-34 
		10 2.9295800969132308e-06 11 0.014884930203805401 12 0.31153107280710052 
		13 0.67358106740899726
		3 10 4.7919071821667103e-08 12 0.25204506043402586 13 0.74795489164690232
		3 10 8.2148081670396794e-09 12 0.042455736974747915 13 0.95754425481044392
		3 10 1.0135360106744429e-08 12 0.2775764808049761 13 0.72242350905966379
		3 10 1.8968770998384343e-09 12 0.050418589051152152 13 0.94958140905197075
		3 10 9.7922270292372104e-10 12 0.0055276565292406987 13 0.9944723424915366
		4 10 4.7373915901260943e-09 11 4.4414160647598955e-05 12 0.0057024579408888609 
		13 0.99425312316107195
		4 2 1.722352710186354e-15 3 1.7206661773462556e-11 12 9.7053551861847609e-09 
		13 0.99999999027743647
		4 2 9.6718050045089309e-14 11 4.569320477543215e-10 12 1.6752349507598296e-09 
		13 0.99999999786773641
		1 13 1
		4 2 1.4276386388559313e-15 3 1.4956842606640343e-11 12 4.1966532915438393e-08 
		13 0.99999995801850883
		3 3 2.5806572296557138e-12 12 5.5638640583666188e-08 13 0.99999994435877881
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		4 2 1.0232776015488724e-13 11 5.0855231137347801e-10 12 1.8955301772649591e-09 
		13 0.99999999759581515
		1 13 1
		1 13 1
		1 13 1
		4 2 8.0420607339064368e-14 11 4.0539449575049957e-10 12 1.5365321237581495e-09 
		13 0.999999998057993
		4 10 8.7473495113954414e-10 11 8.3605660021746075e-06 12 0.00085659079134792204 
		13 0.99913504776791495
		1 13 1
		4 2 8.7924696849667565e-15 3 8.40369125586188e-11 12 8.6100924168164283e-09 
		13 0.99999999130586203
		1 13 1
		1 13 1
		4 10 5.2846578779686126e-08 11 0.00026639543772688512 12 0.0010096961875745158 
		13 0.99872385552811971
		4 2 4.1547435344574795e-13 11 2.0943761169789354e-09 12 7.9381354822771755e-09 
		13 0.99999998996707296
		4 10 1.4751558663483877e-07 11 0.00069691883482070338 12 0.0025550919350461054 
		13 0.99674784171454667
		4 10 5.6648895574440417e-09 11 5.0295927654375738e-05 12 0.0030688491539508926 
		13 0.99688084925350506
		4 10 4.6400335351748367e-08 11 0.00023060175187894494 12 0.00085952294081614866 
		13 0.99890982890696955
		1 13 1
		1 13 0.99999999999999989
		4 10 2.4345136950820745e-07 11 0.0011378583180523538 12 0.0041528909609769293 
		13 0.99470900726960121
		4 10 2.0041166264306298e-06 11 0.0086374455665472194 12 0.030627876488429684 
		13 0.96073267382839667
		4 2 2.7300859128220182e-13 11 1.1395002719183367e-09 12 4.0625666164473273e-09 
		13 0.99999999479766011
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		4 2 9.7262122370239008e-14 11 4.2895398344455771e-10 12 1.5719056056795466e-09 
		13 0.99999999799904316
		1 13 1
		1 13 1
		4 2 4.9452034591654717e-13 11 2.1809775097025863e-09 12 7.9922098938922659e-09 
		13 0.99999998982631799
		1 13 1
		1 13 1
		4 10 5.5399550613621784e-08 11 0.00024432801148088767 12 0.00089534200191077062 
		13 0.99886027458705773
		4 10 1.828748316112794e-07 11 0.00076329432796717889 12 0.0027213106590956437 
		13 0.99651521213810557
		4 10 5.386718415767433e-08 11 0.00023976572687056663 12 0.00087899429358095904 
		13 0.99888118611236432
		4 10 2.1204212820036261e-06 11 0.0080869607460357651 12 0.02756214154424208 
		13 0.96434877728844015
		4 10 2.5133149128553356e-07 11 0.0010643353618267071 12 0.0038010142307118855 
		13 0.99513439907597023
		4 10 2.822927046564061e-07 11 0.0011703088109555893 12 0.0041742912477095162 
		13 0.99465511764863024
		1 13 1
		1 13 1
		3 3 7.6626482601028406e-13 12 8.7883427091206556e-08 13 0.99999991211580652
		1 13 1
		1 13 1
		1 13 1
		4 10 1.9749487156772716e-07 11 0.00075929717430645027 12 0.0027850666224134013 
		13 0.99645543870840858
		4 10 6.3825224660973845e-08 11 0.00026100141483353934 12 0.00097388021012667636 
		13 0.99876505454981523
		4 2 2.4278555249024794e-15 3 1.3327240938509856e-11 12 1.3188090619564719e-09 
		13 0.99999999866786138
		4 10 6.67921795649562e-08 11 0.00027210260246612883 12 0.0010274209876017792 
		13 0.99870040961775253
		4 10 5.8592967144832642e-09 11 3.1252952352289753e-05 12 0.0039195589190664792 
		13 0.99604918226928452
		4 10 1.3139567212050451e-09 11 7.2127096745200348e-06 12 0.00071374012848002266 
		13 0.99927904584788885
		4 2 1.7432013461139019e-15 3 1.0107600332004988e-11 12 2.5441030504502748e-08 
		13 0.99999997454886014
		4 10 1.709145491801678e-09 11 9.5594810117782797e-06 12 0.0047794108006878888 
		13 0.99521102800915484
		3 10 2.1774360092763345e-10 12 0.0064030229252235449 13 0.99359697685703285
		3 10 4.0275915935694684e-10 12 0.06905852247279809 13 0.93094147712444275
		3 2 3.6339892625423707e-16 12 0.010517845724027919 13 0.98948215427597208
		3 10 2.3036706986445669e-09 12 0.30964896055674906 13 0.69035103713958024
		3 10 9.0229246407780295e-08 12 0.74227643515732045 13 0.25772347461343315
		3 10 2.2060099524878751e-08 12 0.69543577918483945 13 0.30456419875506102
		3 10 4.2805798461387212e-08 12 0.88139541803880839 13 0.11860453915539315
		3 10 8.7930245307177302e-09 12 0.72756077496474503 13 0.27243921624223044
		3 10 5.2756633528439068e-07 12 0.7409028647893956 13 0.25909660764426912
		3 10 8.0598083762595252e-10 12 0.33323169778569939 13 0.66676830140831977
		3 10 1.3135570409161801e-10 12 0.083932539371179615 13 0.91606746049746468
		3 10 3.3091673845575542e-09 12 0.72719006011260556 13 0.27280993657822705
		3 2 9.5740571041876414e-16 12 0.015085992613617871 13 0.98491400738638213
		3 2 4.8307006350504603e-15 12 0.011930394492375873 13 0.98806960550762413
		3 10 8.270214513217411e-10 12 0.07215709352213906 13 0.92784290565083949
		3 10 4.6876968973208477e-10 12 0.0068441443209987796 13 0.99315585521023153
		4 2 2.4867356170854838e-15 3 1.4418833375097415e-11 12 3.6292489569156317e-08 
		13 0.99999996369308897
		3 10 3.9797249939965695e-09 12 0.052050292495910755 13 0.94794970352436425
		7 7 1.7257764879697198e-35 8 8.8795798056315902e-46 9 1.8298088326741956e-33 
		10 5.6893248216938886e-06 11 0.029928577209370717 12 0.65646959729244969 
		13 0.31359613617335791
		7 7 1.8471859821877802e-35 8 9.4885016178478007e-46 9 1.9583133995020882e-33 
		10 9.1873913688990013e-06 11 0.04567835916175534 12 0.2867945434202312 
		13 0.66751791002664462
		4 10 1.2494106440552599e-06 11 0.0080492600610199139 12 0.063047600310897067 
		13 0.92890189021743896
		4 10 1.31950252033608e-05 11 0.055595123289341908 12 0.20874268606470747 
		13 0.73564899562074737
		4 10 1.6590314288578156e-05 11 0.060828591105417058 12 0.19341816933243991 
		13 0.74573664924785443
		4 10 2.5739526241519428e-06 11 0.012542896791247204 12 0.053751587313220606 
		13 0.93370294194290804
		4 10 1.719519964404892e-05 11 0.059121812325291567 12 0.18431236179587218 
		13 0.7565486306791922
		4 10 5.4691529874917315e-05 11 0.14917178658728503 12 0.39388458766192658 
		13 0.45688893422091348
		4 10 1.8276510348469444e-05 11 0.059592483421304299 12 0.18635610950667292 
		13 0.75403313056167431
		4 10 5.5174699248983217e-05 11 0.14286979667805144 12 0.38240809740085102 
		13 0.47466693122184861
		4 10 0.00011174704202931983 11 0.24058008767631245 12 0.51217307810976087 
		13 0.24713508717189736
		4 10 0.00011954056810903334 11 0.23962862907371305 12 0.51061283535489121 
		13 0.24963899500328668
		4 10 0.00012598702304356113 11 0.24078512555277187 12 0.50889317751711605 
		13 0.25019570990706852
		4 10 5.83505954150354e-05 11 0.14345754073987416 12 0.38111061282468106 
		13 0.47537349584002975
		4 10 0.00012750499511471336 11 0.24156911243193968 12 0.51172168426808151 
		13 0.24658169830486409
		4 10 0.00061016373211975061 11 0.47435808127009393 12 0.47538241619532295 
		13 0.049649338802463361
		4 10 6.058984218904051e-05 11 0.1460805086840985 12 0.39579107934287294 
		13 0.45806782213083957
		4 10 2.0400461671066239e-05 11 0.062617847403134808 12 0.19442904595106481 
		13 0.74293270618412932
		4 10 2.1110382395939098e-05 11 0.0631700811809216 12 0.20279364796135635 
		13 0.73401516047532611
		4 10 1.7929430265128943e-05 11 0.055402008671739937 12 0.21614691127274255 
		13 0.72843315062525238
		4 10 2.3580845751602908e-06 11 0.0082672779955591524 12 0.029303471302875358 
		13 0.96242689261699033
		4 10 3.3871843490018705e-06 11 0.012106808547263315 12 0.053631240229095718 
		13 0.93425856403929197
		4 10 1.5822687595701268e-06 11 0.0064824279872808255 12 0.053606895237983336 
		13 0.93990909450597626
		4 10 3.7507669089498208e-06 11 0.013275707627983026 12 0.044716431016201375 
		13 0.94200411058890665
		4 10 3.3668429122446497e-07 11 0.0012970704745307593 12 0.0049088409197444172 
		13 0.9937937519214336
		4 10 4.4394498877053934e-07 11 0.0017536440978257462 12 0.0082566128584241616 
		13 0.98998929909876143
		4 10 2.8955441677691596e-07 11 0.0011241587922873331 12 0.0041040280874667934 
		13 0.9947715235658291
		4 10 4.5832315953564517e-07 11 0.00179351239670833 12 0.006349001050233837 
		13 0.9918570282298983
		4 10 3.1092616983308123e-06 11 0.01235008043296304 12 0.04180892249799173 
		13 0.9458378878073469
		4 10 3.659390535037943e-07 11 0.0016052132942908637 12 0.0057055970905830478 
		13 0.99268882367607258
		1 13 0.99999999999999989
		1 13 1
		4 2 4.2060635465266136e-13 11 1.8721414418720883e-09 12 6.8633732031031514e-09 
		13 0.9999999912640648
		1 13 1
		4 10 3.5151280519674089e-07 11 0.001888639132474057 12 0.0086482705895071232 
		13 0.98946273876521362;
	setAttr ".wl[3776:4099].w"
		4 10 2.7556296045005979e-07 11 0.0013306000642206994 12 0.0050773310088405577 
		13 0.9935917933639784
		4 10 1.7605226465544632e-07 11 0.0011917609199201262 12 0.0094798837595915231 
		13 0.9893281792682237
		1 13 1
		4 2 2.329163957054105e-12 11 1.2273341787327752e-08 12 5.4568201734994666e-08 
		13 0.99999993315612734
		4 10 5.0145145369384636e-08 11 0.00040210040329768937 12 0.0089510355098649796 
		13 0.99064681394169196
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		4 2 5.2594323648351887e-15 3 5.0268749690127092e-11 12 5.1503388220908164e-09 
		13 0.99999999479938717
		4 2 2.7530962403994683e-12 11 1.3300666679150197e-08 12 5.0748480195927932e-08 
		13 0.99999993594809999
		1 13 1
		4 10 9.5772282326933578e-09 11 4.9813511559748669e-05 12 0.0028286776419595983 
		13 0.99712149926925242
		4 10 6.6873469872774649e-08 11 0.00032407958677860282 12 0.0063667026066469568 
		13 0.99330915093310468
		4 2 1.0915991474716625e-12 11 4.8250992090714817e-09 12 4.0280146662574623e-08 
		13 0.99999995489366267
		1 13 1
		1 13 1
		4 2 1.5209631182275494e-12 11 6.7229788403011517e-09 12 5.6123731440038682e-08 
		13 0.99999993715176871
		4 2 1.0502891655020051e-12 11 4.0462210249003761e-09 12 1.5313165957486774e-08 
		13 0.99999998063956275
		4 10 2.041445100742223e-07 11 0.00090235810110117498 12 0.0075328461087151846 
		13 0.99156459164567357
		4 10 4.7676779801886227e-07 11 0.0021881688483194055 12 0.049052772850805233 
		13 0.94875858153307724
		4 10 7.946709890127579e-08 11 0.00039872667039020371 12 0.033871310939503019 
		13 0.96572988292300788
		3 10 1.6885580045311599e-08 12 0.040290271711768799 13 0.95970971140265116
		4 10 9.5946097622423565e-08 11 0.00049278327982360537 12 0.23416093269342908 
		13 0.76534618808064969
		3 10 2.0459302696451687e-08 12 0.26841178476676164 13 0.73158819477393566
		3 10 1.9506738735408646e-07 12 0.73132224787815825 13 0.2686775570544544
		3 10 9.0258049034730448e-08 12 0.87709935687012519 13 0.12290055287182577
		3 10 1.0574341402502796e-08 12 0.91002047571100708 13 0.089979513714651529
		3 10 1.8638159460238057e-08 12 0.71230431512103531 13 0.28769566624080523
		3 10 4.8283931963766236e-08 12 0.67944803927216602 13 0.32055191244390202
		3 10 4.7174216755152543e-09 12 0.30339831876499379 13 0.69660167651758453
		4 2 3.3237927061874817e-12 11 1.28048545100512e-08 12 4.8460739310307588e-08 
		13 0.99999993873108239
		4 2 6.2105536540272442e-13 11 2.5300983530485155e-09 12 9.5532938226838837e-09 
		13 0.99999998791598677
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		4 2 1.6681716993684779e-14 3 9.1571042577503209e-11 12 9.0614943326627895e-09 
		13 0.99999999084691804
		4 2 7.5968382553400157e-15 3 4.1701366807595356e-11 12 4.1265959538350216e-09 
		13 0.99999999583169508
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.0028094102162867785 28 0.99719058978371322
		1 28 1
		1 28 1
		1 28 1
		2 16 0.016158577054738998 28 0.983841422945261
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		2 15 0.047978963702917099 28 0.9520210362970829
		2 15 0.052156101912260056 28 0.94784389808773994
		1 28 1
		2 15 0.030183281749486923 28 0.96981671825051308
		1 28 1
		2 15 0.010232243686914444 28 0.98976775631308556
		1 28 1
		2 15 0.0052472497336566448 28 0.99475275026634336
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 15 0.0020627756603062153 28 0.9979372243396939
		1 28 1
		1 28 1
		2 15 0.05826236680150032 28 0.94173763319849968
		2 15 0.030926359817385674 28 0.96907364018261433
		2 15 0.11035823822021484 28 0.88964176177978516
		2 15 0.14784522354602814 28 0.85215477645397186
		2 15 0.22286473214626312 28 0.77713526785373688
		2 15 0.08266633003950119 28 0.91733366996049881
		3 1 1.2902462952213423e-11 15 0.13649632036685944 28 0.86350367963314056
		2 15 0.23478290438652039 28 0.76521709561347961
		2 15 0.34001880884170532 28 0.65998119115829468
		2 15 0.1568969339132309 28 0.8431030660867691
		2 15 0.18436874449253082 28 0.81563125550746918
		2 15 0.30227309465408325 28 0.69772690534591675
		3 15 0.35033588111400604 16 0.022770032286643982 28 0.62689408659934998
		3 15 0.46411694213747978 16 0.05261700227856636 28 0.48326605558395386
		3 15 0.42192725464701653 16 0.015901703387498856 28 0.56217104196548462
		2 15 0.013292844407260418 28 0.98670715559273969
		2 15 0.0034405644983053207 28 0.99655943550169468
		2 15 0.014268612489104271 28 0.98573138751089573
		2 15 0.038312654942274094 28 0.96168734505772591
		1 28 1
		3 1 5.5549093103124392e-11 15 0.0039636073634028435 28 0.99603639263659716
		2 15 0.032710932195186615 28 0.96728906780481339
		2 15 0.073335729539394379 28 0.92666427046060573
		2 15 0.0077224494889378548 28 0.99227755051106215
		2 1 1.6650640284956997e-12 28 1
		2 1 6.4819915927827321e-12 28 1
		1 28 1
		2 15 0.018759220838546753 28 0.98124077916145325
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 15 0.072760932147502899 28 0.9272390678524971
		3 15 0.10031907353550196 16 0.014012030325829983 28 0.88566889613866806
		3 15 0.23295437544584274 16 0.038262493908405304 28 0.72878313064575195
		3 15 0.20278266072273254 16 0.099670320749282837 28 0.69754701852798462
		3 15 0.089739646762609482 16 0.03829275444149971 28 0.87196759879589081
		3 15 0.36421968042850494 16 0.075609579682350159 28 0.5601707398891449
		3 15 0.31145046651363373 16 0.17142407596111298 28 0.5171254575252533
		3 15 0.13817547261714935 16 0.16289399564266205 28 0.6989305317401886
		3 15 0.0468558669090271 16 0.071739457547664642 28 0.88140467554330815
		3 15 0.22250717878341675 16 0.27145186066627502 28 0.50604096055030823
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		3 15 0.0086639449000358582 16 0.08228890597820282 28 0.90904714912176132
		3 15 0.05397835373878479 16 0.20967328548431396 28 0.73634836077690125
		2 16 0.11197306215763092 28 0.88802693784236908
		2 16 0.03204403817653656 28 0.96795596182346344
		2 16 0.0028094102162867785 28 0.99719058978371322
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 16 0.15181916952133179 28 0.84818083047866821
		2 16 0.023709135130047798 28 0.9762908648699522
		3 15 0.023892402648925781 16 0.28900817036628723 28 0.68709942698478699
		3 15 0.0063095688819885254 16 0.32431641221046448 28 0.669374018907547
		2 16 0.16821902990341187 28 0.83178097009658813
		3 15 0.11911603808403015 16 0.3636879026889801 28 0.51719605922698975
		3 15 0.056315034627914429 16 0.43682920932769775 28 0.50685575604438782
		3 15 0.1662088930606842 16 0.48589298129081726 28 0.34789812564849854
		3 15 0.081447720527648926 16 0.56230378150939941 28 0.35624849796295166
		3 15 0.025776267051696777 16 0.47543066740036011 28 0.49879306554794317
		3 15 0.042288541793823242 16 0.60832035541534424 28 0.34939110279083252
		3 15 0.0084723234176635742 16 0.64765477180480957 28 0.34387290477752686
		3 15 0.0029367564711719751 16 0.4992382766213268 28 0.49782496690750128
		3 15 0.0016939290799200535 16 0.66006574546918273 28 0.33824032545089722
		3 15 4.2103962186956778e-05 16 0.50562826470923028 28 0.49432963132858271
		2 16 0.6682504415512085 28 0.3317495584487915
		2 16 0.5093575119972229 28 0.4906424880027771
		3 15 9.9133349067415111e-06 16 0.80908964168065722 28 0.19090044498443604
		2 16 0.67155307531356812 28 0.32844692468643188
		3 15 0.0012729146983474493 16 0.7958616039250046 28 0.20286548137664795
		3 15 0.0059434473514556885 16 0.77907320857048035 28 0.21498334407806394
		2 16 0.51419705152511597 28 0.48580294847488403
		2 16 0.34128767251968384 28 0.65871232748031616
		1 16 0.34019839763641357;
	setAttr ".wl[4099:4493].w"
		1 28 0.65980160236358643
		3 15 8.7501166490255855e-06 16 0.33748076542633498 28 0.66251048445701599
		3 15 0.03220754861831665 16 0.74382311105728149 28 0.22396934032440186
		3 15 0.052128970623016357 16 0.80083274841308594 28 0.14703828096389771
		3 15 0.0154957240447402 16 0.85116814915090799 28 0.13333612680435181
		3 15 0.068709373474121094 16 0.69796252250671387 28 0.23332810401916504
		3 15 0.10152959823608398 16 0.73387742042541504 28 0.16459298133850098
		3 15 0.11895418167114258 16 0.647666335105896 28 0.23337948322296143
		3 15 0.19781064987182617 16 0.57287025451660156 28 0.22931909561157227
		3 15 0.3015749454498291 16 0.37464219331741333 28 0.32378286123275751
		3 15 0.30129027366638184 16 0.46133548021316528 28 0.23737424612045288
		3 15 0.19008827209472656 16 0.61167669296264648 28 0.19823503494262695
		3 15 0.14461678266525269 16 0.6726987361907959 28 0.18268448114395142
		3 15 0.27011072635650635 16 0.53596389293670654 28 0.19392538070678711
		3 15 0.39378952980041504 16 0.25176775455474854 28 0.35444271564483643
		3 15 0.38818103075027466 16 0.33450961112976074 28 0.2773093581199646
		2 16 0.17290930449962616 28 0.82709069550037384
		2 16 0.028840810060501099 28 0.9711591899394989
		2 16 0.027921196073293686 28 0.97207880392670631
		1 28 1
		1 28 1
		1 28 1
		2 16 0.02644246444106102 28 0.97355753555893909
		2 16 0.17283651232719421 28 0.82716348767280579
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 0 1.0351711600940161e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.024372303858399395 28 0.97562769614160061
		2 16 0.019565558061003685 28 0.9804344419389962
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.0071777701377868644 28 0.99282222986221313
		1 28 0.99999999999999989
		1 28 1
		2 16 8.3306818851269782e-05 28 0.99991669318114873
		1 28 1
		2 16 0.0058511649258434772 28 0.99414883507415663
		2 16 0.0074243545532226563 28 0.99257564544677745
		2 16 0.0081464946269989014 28 0.99185350537300121
		2 16 0.038304999470710754 28 0.96169500052928925
		2 16 0.0054533644579350957 28 0.99454663554206491
		2 16 0.03808290883898735 28 0.96191709116101265
		2 16 0.011888429522514343 28 0.98811157047748566
		2 16 0.043619800359010703 28 0.9563801996409893
		2 16 0.0010459647746756673 28 0.99895403522532433
		1 28 1
		2 16 0.011767509393393993 28 0.98823249060660601
		1 28 1
		2 16 0.069761663675308228 28 0.93023833632469177
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.017912441864609718 28 0.98208755813539017
		2 16 0.042457107454538345 28 0.95754289254546177
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 16 0.014322566799819469 28 0.98567743320018042
		2 16 0.17442925274372101 28 0.82557074725627899
		2 16 0.16872392594814301 28 0.83127607405185699
		2 16 0.13443891704082489 28 0.86556108295917511
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.13554142415523529 28 0.86445857584476482
		2 16 0.068456552922725677 28 0.93154344707727432
		2 16 0.16875410079956055 28 0.83124589920043945
		2 16 0.025430625304579735 28 0.97456937469542027
		2 16 0.1802689731121063 28 0.81973102688789379
		2 16 0.025082211941480637 28 0.97491778805851936
		2 16 0.17893533408641815 28 0.82106466591358185
		2 16 0.02434590645134449 28 0.97565409354865551
		2 16 0.17480190098285675 28 0.82519809901714325
		1 28 1
		1 28 1
		2 16 0.024259399622678753 28 0.97574060037732113
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 16 0.024885054677724838 28 0.97511494532227505
		2 16 0.17136919498443604 28 0.82863080501556396
		2 16 0.17194697260856628 28 0.82805302739143372
		1 28 1
		2 16 0.36460322141647339 28 0.63539677858352661
		2 16 0.36163663864135742 28 0.63836336135864258
		2 16 0.53640323877334595 28 0.46359676122665405
		2 16 0.34838917851448059 28 0.65161082148551941
		2 16 0.55662065744400024 28 0.44337934255599976
		2 16 0.54654854536056519 28 0.45345145463943481
		2 16 0.35390764474868774 28 0.64609235525131226
		2 16 0.5320400595664978 28 0.4679599404335022
		2 16 0.34732902050018311 28 0.65267097949981689
		2 16 0.52031034231185913 28 0.47968965768814081
		1 28 1
		1 28 1
		1 28 1
		2 16 0.13919481635093689 28 0.86080518364906311
		2 16 0.29758468270301819 28 0.70241531729698181
		2 16 0.32625186443328857 28 0.67374813556671143
		2 16 0.16071197390556335 28 0.83928802609443676
		2 16 0.51181763410568237 28 0.48818236589431763
		2 16 0.68334996700286865 28 0.31665003299713135
		2 16 0.67187631130218506 28 0.32812368869781494
		2 16 0.50973427295684814 28 0.49026572704315186
		2 16 0.70446187257766724 28 0.29553812742233276
		2 16 0.86197710037231445 28 0.13802289962768555
		2 16 0.82219064235687256 28 0.17780935764312744
		2 16 0.747722327709198 28 0.252277672290802
		2 16 0.80524784326553345 28 0.19475215673446655
		2 16 0.79323995113372803 28 0.20676004886627197
		2 16 0.79439651966094971 28 0.20560348033905027
		2 16 0.67093545198440552 28 0.32906454801559448
		2 16 0.8804924488067627 28 0.11950755119323729
		2 16 0.8805965781211853 28 0.1194034218788147
		2 16 0.88577175140380848 28 0.11422824859619152
		2 16 0.50781798362731934 28 0.49218201637268066
		2 16 0.52528399229049683 28 0.47471600770950317
		2 16 0.35133415460586548 28 0.64866584539413452
		2 16 0.30318847298622131 28 0.69681152701377869
		2 16 0.67974185943603516 28 0.32025814056396484
		2 16 0.13798134028911591 28 0.86201865971088398
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[4494:4695].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		3 15 0.2595335841178894 16 0.34351271390914917 28 0.39695370197296143
		3 15 0.26285988092422485 16 0.24863499402999878 28 0.48850512504577637
		3 15 0.24753023684024811 16 0.21312375366687775 28 0.53934600949287415
		3 15 0.25203683972358704 16 0.28645184636116028 28 0.46151131391525269
		3 15 0.24376459419727325 16 0.34999065101146698 28 0.40624475479125977
		3 15 0.24645712971687317 16 0.41655108332633972 28 0.33699178695678711
		3 15 0.23919765651226044 16 0.2576756626367569 28 0.50312668085098267
		3 15 0.23941627144813538 16 0.30789706110954285 28 0.45268666744232172
		3 15 0.26306331157684326 16 0.43580901622772217 28 0.30112767219543457
		3 15 0.24418610334396362 16 0.5031665563583374 28 0.25264734029769897
		3 15 0.25308734178543091 16 0.55006486177444458 28 0.19684779644012451
		3 15 0.2758268415927887 16 0.48387911915779114 28 0.24029403924942019
		3 15 0.2784372866153717 16 0.36216893792152405 28 0.35939377546310425
		3 15 0.23003751039505005 16 0.60486453771591187 28 0.16509795188903809
		3 15 0.22098608314990997 16 0.56612412631511688 28 0.21288979053497314
		3 15 0.20616604387760162 16 0.65874104201793671 28 0.13509291410446167
		3 15 0.18201959133148193 16 0.712821364402771 28 0.10515904426574708
		3 15 0.1509070098400116 16 0.80418035387992859 28 0.044912636280059814
		3 15 0.17295688390731812 16 0.76052755117416382 28 0.066515564918518066
		3 15 0.19615589082241058 16 0.72131897509098053 28 0.082525134086608887
		3 15 0.10096617043018341 16 0.88826756179332733 28 0.010766267776489258
		3 15 0.11773557215929031 16 0.86279010027647018 28 0.019474327564239502
		3 15 0.13062846660614014 16 0.84218871593475342 28 0.027182817459106445
		2 15 0.083942428231239319 16 0.91605757176876068
		3 15 0.15999956429004669 16 0.76713643968105316 28 0.072863996028900146
		3 15 0.22178533673286438 16 0.67498019337654114 28 0.10323446989059448
		3 15 0.24565556645393372 16 0.62529054284095764 28 0.12905389070510864
		3 15 0.13781252503395081 16 0.83184716105461121 28 0.030340313911437988
		3 15 0.15454266965389252 16 0.80622746050357819 28 0.039229869842529297
		3 15 0.059591013938188553 16 0.92593256756663322 28 0.014476418495178221
		3 15 0.063662223517894745 16 0.91443450003862381 28 0.021903276443481445
		3 15 0.066155962646007538 16 0.90108884125947952 28 0.032755196094512939
		3 15 0.16951797902584076 16 0.77578200399875641 28 0.054700016975402832
		3 15 0.07543877512216568 16 0.87884291261434555 28 0.04571831226348877
		3 15 0.18913233280181885 16 0.73967409133911133 28 0.071193575859069824
		3 15 0.00071749993367120624 16 0.97171868971781805 28 0.027563810348510742
		3 15 0.0052079739980399609 16 0.95549223991110921 28 0.03929978609085083
		3 15 0.011460677720606327 16 0.97037582006305456 28 0.018163502216339111
		3 15 0.27248057723045349 16 0.57043245434761047 28 0.15708696842193604
		3 15 0.29970654845237732 16 0.4200836718082428 28 0.28020977973937988
		3 15 0.011207270435988903 16 0.97891421336680651 28 0.0098785161972045898
		3 15 0.0085770133882761002 16 0.98693469725549221 28 0.0044882893562316895
		3 15 0.052380871027708054 16 0.94203602150082588 28 0.0055831074714660645
		2 16 0.98142683506011963 28 0.018573164939880371
		2 16 0.97196000814437866 28 0.028039991855621338
		2 16 0.99154704809188843 28 0.0084529519081115723
		3 15 0.2968670129776001 16 0.29821491241455078 28 0.40491807460784912
		3 15 0.31828278303146362 16 0.23857611417770386 28 0.44314110279083252
		3 15 0.288643479347229 16 0.14972797036170959 28 0.5616285502910614
		3 15 0.27605107426643372 16 0.19931754469871521 28 0.52463138103485107
		3 15 0.32922053337097168 16 0.35607445240020752 28 0.3147050142288208
		3 15 0.36409524083137512 16 0.29565206170082092 28 0.34025269746780396
		3 15 0.34294164180755615 16 0.17986327409744263 28 0.47719508409500122
		3 15 0.30076363682746887 16 0.51444569230079651 28 0.18479067087173462
		3 15 0.33725425601005554 16 0.45229187607765198 28 0.21045386791229248
		3 15 0.2463366836309433 16 0.64007164537906647 28 0.11359167098999023
		3 15 0.21278022229671478 16 0.69038935005664825 28 0.096830427646636963
		3 15 0.40225821733474731 16 0.23758172988891602 28 0.36016005277633667
		3 15 0.36685255169868469 16 0.12834668159484863 28 0.50480076670646667
		3 15 0.3801175057888031 16 0.39282563328742981 28 0.22705686092376709
		3 15 0.29954120516777039 16 0.10419231653213501 28 0.5962664783000946
		3 15 0.24674294888973236 16 0.085752680897712708 28 0.66750437021255493
		3 15 0.24656765162944794 16 0.051198258996009827 28 0.70223408937454213
		3 15 0.24288152158260345 16 0.11819936335086823 28 0.63891911506652832
		3 15 0.19694693386554718 16 0.042008787393569946 28 0.76104427874088287
		3 15 0.18894301354885101 16 0.019231259822845459 28 0.79182572662830353
		3 15 0.30697375535964966 16 0.063925236463546753 28 0.62910100817680359
		3 15 0.24068309366703033 16 0.021939828991889954 28 0.73737707734107971
		3 15 0.22910542786121368 16 0.14075805246829987 28 0.63013651967048645
		3 15 0.23679246008396149 16 0.14227594435214996 28 0.62093159556388855
		3 15 0.071878321468830109 16 0.92752681381534785 28 0.00059486471582204103
		2 15 0.065743878483772278 16 0.93425612151622772
		3 15 0.11254648864269257 16 0.87897263746708632 28 0.0084808738902211189
		3 15 0.09907589852809906 16 0.89650176325812936 28 0.0044223382137715816
		3 15 0.071401432156562805 16 0.92829839102341793 28 0.00030017682001926005
		3 15 0.057183194905519485 16 0.94262287604215089 28 0.00019392905232962221
		2 15 0.049189116805791855 16 0.95081088319420815
		3 15 0.084847345948219299 16 0.91334246145561337 28 0.001810192596167326
		3 15 0.06695982813835144 16 0.93215414584847167 28 0.00088602601317688823
		3 15 0.098060213029384613 16 0.89267660863697529 28 0.0092631783336400986
		3 15 0.077444426715373993 16 0.91990716313011944 28 0.0026484101545065641
		3 15 0.048450522124767303 16 0.95134831857285462 28 0.00020115930237807333
		3 15 0.045993909239768982 16 0.95398758950977935 28 1.8501250451663509e-05
		3 15 0.054191283881664276 16 0.94385380111634731 28 0.0019549150019884109
		3 15 0.032015852630138397 16 0.96520248567685485 28 0.0027816616930067539
		3 15 0.0313882976770401 16 0.9684712648158893 28 0.00014043750707060099
		4 15 0.011878462508320808 16 0.9789118766784668 17 0.0055484818294644356 
		28 0.0036611789837479591
		3 15 0.015106007456779482 16 0.97737056016921997 17 0.0075234323740005493
		4 15 0.0081244980683550239 16 0.95838677883148193 17 0.032260619103908539 
		28 0.0012281039962545037
		3 15 0.0065597109496593475 16 0.94957005977630615 17 0.0438702292740345
		3 15 0.016518376767635345 16 0.97314631938934326 17 0.010335303843021393
		2 15 0.034438773989677429 16 0.96556122601032257
		3 15 0.011159215122461319 16 0.93171322345733643 17 0.057127561420202255
		3 15 0.11808128654956818 16 0.86050431616604328 28 0.021414397284388542
		3 15 0.13790230453014374 16 0.82012342661619186 28 0.041974268853664398
		2 15 0.035196423530578613 16 0.96480357646942139
		3 15 0.017106926999986172 16 0.97185814380645752 17 0.011034929193556309
		2 15 0.013947129249572754 16 0.98605287075042725
		2 16 0.92145052552223206 17 0.078549474477767944
		3 16 0.90189627444839426 17 0.098090365529060364 28 1.3360022545372274e-05
		2 16 0.98363439738750458 17 0.016365602612495422
		3 16 0.82746358042303048 17 0.17252419888973236 28 1.2220687237163297e-05
		3 16 0.78659620928470741 17 0.21338674426078796 28 1.7046454504621167e-05
		3 16 0.86240920903963236 17 0.13756871223449707 28 2.2078725870566807e-05
		3 16 0.86621346312561154 17 0.1337285190820694 28 5.8017792319065002e-05
		2 16 0.97066150791943073 17 0.029338492080569267
		1 16 1
		1 16 1
		2 15 0.025831567123532295 16 0.9741684328764677
		1 16 1
		2 16 0.99975264072418213 28 0.00024735927581787109
		2 15 0.034410320222377777 16 0.96558967977762222
		1 16 1
		2 16 0.99928170442581177 28 0.00071829557418823242
		3 16 0.33398058965799765 17 0.6655396117551462 28 0.00047979858685609495
		3 16 0.54127035777652077 17 0.45778385739460514 28 0.00094578482887408566
		3 16 0.37210975005910907 17 0.6275798115802127 28 0.00031043836067823349
		3 16 0.25691080366478924 17 0.74287577997232002 28 0.00021341636289073929
		3 16 0.14837379194229078 17 0.85152107298831381 28 0.0001051350693954678
		3 16 0.18513931031607109 17 0.81466079181644768 28 0.00019989786748120242
		3 16 0.16850465492094732 17 0.83141918603822562 28 7.6159040827028512e-05
		3 16 0.099853381202297711 17 0.90010366635850636 28 4.2952439195942382e-05
		3 16 0.087014944408640341 17 0.91296353017157861 28 2.152541978106548e-05
		3 16 0.049168814320870544 17 0.95081833643401303 28 1.2849245116464125e-05
		3 16 0.043154554241867475 17 0.95682883796992879 28 1.6607788203781837e-05
		3 16 0.062919684930111505 17 0.93704357754372913 28 3.6737526159402734e-05
		3 16 0.076745451108776744 17 0.92319157010933051 28 6.2978781892764069e-05
		3 16 0.20880763686233123 17 0.79087697525557188 28 0.00031538788209695134
		3 16 0.08548849203529707 17 0.91441918698662439 28 9.2320978078541671e-05
		3 16 0.21901027904996762 17 0.78056443140381027 28 0.00042528954622211845
		3 16 0.090031003847147822 17 0.90984632302797108 28 0.00012267312488112303
		3 16 0.087552363357857516 17 0.91230517461285887 28 0.00014246202928358542
		3 16 0.21222431223966587 17 0.78728186197214611 28 0.00049382578818801814
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 0.99999999999999989
		1 17 1
		1 17 1
		3 16 0.075228661889014517 17 0.92463998976397388 28 0.00013134834701156173
		3 16 0.18295076434870344 17 0.81659706901402107 28 0.00045216663727543072
		3 16 0.37945063199962409 17 0.61970399157808775 28 0.00084537642228821319
		3 16 0.39317594326647382 17 0.60566224110449318 28 0.0011618156290329473
		3 16 0.5727583957263348 17 0.42538829188168303 28 0.0018533123919821646
		3 16 0.57982397966265642 17 0.41756061469059541 28 0.0026154056467482256
		3 16 0.74455827951306786 17 0.25210999016276536 28 0.0033317303241667817
		3 16 0.73987141119836131 17 0.25511263534018846 28 0.0050159534614502288
		3 16 0.74398824566220945 17 0.25409889221191406 28 0.0019128621258764913
		3 16 0.37830887469798896 17 0.62034058952591153 28 0.0013505357760994485
		3 16 0.56839794770217167 17 0.42842960138755798 28 0.0031724509102704079
		1 17 1
		1 17 1
		1 17 1
		1 17 0.99999999999999989
		2 17 0.98878992936682142 18 0.01121007063317854
		2 17 0.98782041849466906 18 0.012179581505330961
		1 17 1
		2 17 0.98639089143681558 18 0.013609108563184412
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		3 16 0.021390864333261848 17 0.97860370684046127 28 5.4288262768542603e-06
		2 16 5.9783458709716797e-05 17 0.99994021654129028
		1 17 1
		3 16 0.038874065267340926 17 0.96112185716629028 28 4.0775663687764307e-06
		3 16 0.1270006861851912 17 0.87297302579080116 28 2.6288024007614649e-05
		3 16 0.08440242051863496 17 0.9155922532081604 28 5.3262732045977756e-06
		3 16 0.23847187149447416 17 0.76143058332916991 28 9.7545176355962049e-05
		3 16 0.45587473044869342 17 0.54390233755111694 28 0.0002229320001896351
		3 16 0.3026793260560845 17 0.69724148511886597 28 7.9188825049536504e-05
		3 16 0.61965407540635919 17 0.37983527779579163 28 0.0005106467978491791
		3 16 0.16380138386971463 17 0.83617608303247715 28 2.2533097808197233e-05
		3 16 0.35637336480221121 17 0.64358234405517578 28 4.4291142613062107e-05
		3 16 0.19401689758890367 17 0.80596882104873657 28 1.4281362359813699e-05
		3 16 0.51537316782916565 17 0.48452275991439819 28 0.00010407225643616068
		3 16 0.12909402446132415 17 0.87090134620666504 28 4.6293320108414804e-06
		2 16 0.11365044116973877 17 0.88634955883026123
		2 16 0.060492098331451416 17 0.93950790166854858;
	setAttr ".wl[4696:5068].w"
		2 16 0.17831379175186157 17 0.82168620824813843
		2 16 0.10792851448059082 17 0.89207148551940918
		2 16 0.17943120002746582 17 0.82056879997253418
		3 16 0.18900864174209944 17 0.81098806858062744 28 3.2896772731438872e-06
		2 16 0.052697658538818359 17 0.94730234146118164
		2 16 0.027757465839385986 17 0.97224253416061401
		2 16 0.0060541629791259766 17 0.99394583702087402
		1 17 1
		2 16 0.0052554607391357422 17 0.99474453926086426
		1 17 1
		2 16 0.0047223567962646484 17 0.99527764320373535
		2 16 0.00022828578948974612 17 0.99977171421051025
		2 16 0.021552443504333496 17 0.9784475564956665
		2 16 0.020816504955291748 17 0.97918349504470825
		2 16 0.05353236198425293 17 0.94646763801574707
		1 17 0.99999999999999989
		1 17 1
		3 16 0.029268476735540006 17 0.97069473006762608 28 3.6793196833917463e-05
		1 17 0.99999999999999989
		2 16 0.017673492431640625 17 0.98232650756835938
		3 16 0.055126038844887891 17 0.94479773167605452 28 7.6229479057610128e-05
		1 17 1
		1 17 1
		1 17 1
		1 17 0.99999999999999989
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 0.99999999999999989
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		3 16 0.78516185512245684 17 0.2139664888381958 28 0.00087165603934735714
		3 16 0.83082406458527025 17 0.16894055902957916 28 0.00023537638515058743
		3 16 0.67692564349802908 17 0.32288455963134766 28 0.00018979687062326001
		3 16 0.72476985298757735 17 0.27517348527908325 28 5.6661733339402609e-05
		3 16 0.64984590216105587 17 0.35013872385025024 28 1.5373988693889729e-05
		3 16 0.57736002556634636 17 0.42260244488716125 28 3.7529546492387489e-05
		3 16 0.51957401497978961 17 0.48041519522666931 28 1.0789793541077231e-05
		3 16 0.43584646780670738 17 0.56413412094116211 28 1.9411252130563383e-05
		3 16 0.42188706839230505 17 0.57810688018798828 28 6.0514197066652287e-06
		3 16 0.59434251004642979 17 0.4056391716003418 28 1.8318353228408135e-05
		3 16 0.49870817864016692 17 0.50128048658370972 28 1.1334776123361756e-05
		3 16 0.32512796699361618 17 0.67486441135406494 28 7.6216523188232799e-06
		3 16 0.2758680812670658 17 0.72412961721420288 28 2.3015187313735197e-06
		2 16 0.25173407793045044 17 0.74826592206954956
		2 16 0.32694441080093384 17 0.67305558919906616
		2 16 0.24857604503631592 17 0.75142395496368408
		3 16 0.33298777424375409 17 0.66701048612594604 28 1.739630299812944e-06
		3 16 0.41619574014288957 17 0.5837675929069519 28 3.6666950158581457e-05
		2 16 0.33638459444046021 17 0.66361540555953979
		2 16 0.4090341329574585 17 0.5909658670425415
		3 16 0.41128558604781418 17 0.58870786428451538 28 6.5496676704412948e-06
		2 16 0.26676416397094727 17 0.73323583602905273
		3 16 0.36129558031167425 17 0.63870131969451904 28 3.0999938067655108e-06
		3 16 0.43408417860036674 17 0.56590873003005981 28 7.0913695734420301e-06
		3 16 0.65109597015113985 17 0.34885585308074951 28 4.8176768110641532e-05
		3 16 0.55501163962218691 17 0.44496148824691772 28 2.6872130895361224e-05
		3 16 0.71091685134974392 17 0.28906136751174927 28 2.1781138506815623e-05
		3 16 0.75982712578968181 17 0.24011339247226715 28 5.948173805103707e-05
		3 16 0.6911565539648078 17 0.30872648954391479 28 0.00011695649127740904
		3 16 0.79669935812097525 17 0.2031475305557251 28 0.00015311132329964838
		3 16 0.58786788933212597 17 0.41206905245780945 28 6.3058210064581566e-05
		3 16 0.72051053972934254 17 0.27922588586807251 28 0.00026357440258495402
		3 16 0.61140044044209307 17 0.38846230506896973 28 0.0001372544889371996
		3 16 0.82510255135203969 17 0.17453446984291077 28 0.00036297880504954083
		3 16 0.8898603631312062 17 0.11010995507240295 28 2.9681796390845783e-05
		2 16 0.91046816855669022 17 0.089531831443309784
		2 16 0.95040089264512062 17 0.049599107354879379
		3 16 0.91899370897056398 17 0.080022498965263367 28 0.00098379206417265053
		2 16 0.99985820055007935 28 0.0001417994499206543
		1 16 1
		2 16 0.99716007709503174 28 0.0028399229049682617
		2 16 0.99952638149261475 28 0.00047361850738525391
		2 16 0.9970097541809082 28 0.0029902458190917969
		2 16 0.98870199918746948 28 0.011298000812530518
		2 16 0.9931786060333252 28 0.0068213939666748047
		2 16 0.97954028844833363 28 0.020459711551666371
		3 16 0.9406764846573169 17 0.04433300220205403 28 0.014990513140629049
		2 16 0.97316497564315807 28 0.02683502435684193
		3 16 0.8754739649821206 17 0.11928902013949948 28 0.0052370148783799086
		3 16 0.85834630247003862 17 0.13288204107511098 28 0.0087716564548503406
		3 16 0.88950134711521622 17 0.10775630369757444 28 0.0027423491872093919
		3 16 0.92431690091403251 17 0.056792769129136958 28 0.018890329956830487
		2 16 0.96954488754272461 28 0.030455112457275391
		3 16 0.84972098217396719 17 0.13907700345940593 28 0.011202014366626933
		3 16 0.92101693832646037 17 0.059361668735880974 28 0.019621392937658633
		2 16 0.97054243087768555 28 0.029457569122314453
		3 16 0.84674074655265485 17 0.1411506364397159 28 0.012108617007629219
		2 16 0.94116252660751332 28 0.058837473392486683
		2 16 0.95201748609542858 28 0.047982513904571422
		2 16 0.93417519330978394 28 0.065824806690216064
		2 16 0.96930325031280518 28 0.030696749687194824
		2 16 0.98721212148666382 28 0.012787878513336182
		2 16 0.929435133934021 28 0.070564866065979004
		2 16 0.96543389558792103 28 0.034566104412078968
		2 16 0.90317249298095714 28 0.096827507019042858
		2 16 0.92508494853973389 28 0.074915051460266113
		2 16 0.99730920791625977 28 0.0026907920837402344
		2 16 0.98728668689727783 28 0.012713313102722168
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 0 5.0637009185146335e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 0 3.3757508135825316e-11 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		2 0 1.1918648900002163e-11 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[5069:5387].w"
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		3 16 0.31170773947521685 17 0.68824869394302368 28 4.3566581759524325e-05
		3 16 0.24600530434525977 17 0.75390565395355225 28 8.904170118795296e-05
		2 16 0.19595944881439209 17 0.80404055118560791
		3 16 0.3516563891381293 17 0.64831596612930298 28 2.7644732567777552e-05
		3 16 0.4234336945741547 17 0.57648831605911255 28 7.7989366732755805e-05
		3 16 0.5266316115266142 17 0.47315478324890137 28 0.00021360522448443664
		3 16 0.51950882312476299 17 0.4803740382194519 28 0.0001171386557851095
		3 16 0.40790263665640858 17 0.59194868803024292 28 0.00014867531334850081
		3 16 0.52746144478992274 17 0.47215747833251953 28 0.0003810768775577289
		3 16 0.38812804957071995 17 0.61159408092498779 28 0.00027786950429220525
		3 16 0.52436861085549402 17 0.47499459981918335 28 0.00063678932532262866
		3 16 0.53486412622226243 17 0.46410420536994934 28 0.0010316684077882332
		3 16 0.40183552538802153 17 0.59762734174728394 28 0.00053713286469458943
		3 16 0.66873098241859097 17 0.330007404088974 28 0.001261613492435032
		3 16 0.67370522988652393 17 0.32439631223678589 28 0.001898457876690185
		3 16 0.8006010308314524 17 0.19712217152118683 28 0.0022767976473607732
		3 16 0.80156462415317431 17 0.19512462615966797 28 0.0033107496871577213
		3 16 0.90596067379306866 17 0.090290836989879608 28 0.0037484892170517314
		3 16 0.90423866624950988 17 0.090345375239849091 28 0.005415958510641028
		3 16 0.96962162666022778 17 0.025000795722007751 28 0.005377577617764473
		3 16 0.96579061076045036 17 0.026034492999315262 28 0.008174896240234375
		3 16 0.88565310919117812 17 0.1116797998547554 28 0.0026670909540664756
		4 15 0.0091354893520474434 16 0.94418472051620483 17 0.042393859475851059 
		28 0.0042859306558966637
		3 16 0.78215943460114845 17 0.21632370352745056 28 0.0015168618714009874
		3 16 0.79942234244403543 17 0.19612941145896912 28 0.0044482460969954563
		3 16 0.68569868252195987 17 0.31165730953216553 28 0.0026440079458746046
		3 16 0.89315686680082007 17 0.099842384457588196 28 0.0070007487415917335
		3 16 0.65833076896486464 17 0.34086939692497253 28 0.00079983411016282258
		3 16 0.64654820415266068 17 0.35298556089401245 28 0.00046623495332687165
		3 16 0.76585956301011049 17 0.23321451246738434 28 0.00092592452250517265
		3 16 0.45835424025204075 17 0.54064571857452393 28 0.0010000411734353287
		3 16 0.56875765366924058 17 0.42967090010643005 28 0.0015714462243293648
		3 16 0.35820830659611685 17 0.64104396104812622 28 0.00074773235575698038
		3 16 0.55810481386380595 17 0.44009602069854736 28 0.0017991654376466879
		3 16 0.48490908045092079 17 0.51341575384140015 28 0.001675165707679005
		3 16 0.25525108473627911 17 0.74415716913984664 28 0.0005917461238742483
		3 16 0.12982630343142418 17 0.86997708081867475 28 0.00019661574990104125
		3 16 0.26422186102640172 17 0.7354704737663269 28 0.00030766520727132374
		3 16 0.4091273409662381 17 0.58933635402989271 28 0.0015363050038692538
		3 16 0.66497745271768816 17 0.33183294534683228 28 0.0031896019354795691
		3 16 0.63089069537740139 17 0.36559930443763733 28 0.0035100001849612812
		3 16 0.62775672213116462 17 0.36996451020240784 28 0.0022787676664275391
		3 16 0.68470893065334082 17 0.3122219443321228 28 0.003069125014536378
		3 16 0.63097196503924591 17 0.36876288056373596 28 0.00026515439701813026
		3 16 0.50782084247124248 17 0.49212086200714111 28 5.8295521616402723e-05
		3 16 0.4973137818409285 17 0.50265884399414063 28 2.7374164930815681e-05
		3 16 0.48774642249899536 17 0.51223796606063843 28 1.5611440366214424e-05
		3 16 0.74350458393790397 17 0.25596264004707336 28 0.00053277601502266236
		3 16 0.84622273917930091 17 0.15288624167442322 28 0.00089101914627587331
		4 15 0.0076450369087979198 16 0.91904199123382568 17 0.07251245528459549 
		28 0.00080051657278090715
		4 15 0.011349474778398871 16 0.93244838714599609 17 0.053330671042203903 
		28 0.0028714670334011316
		3 16 0.86972683152616304 17 0.12856155633926392 28 0.0017116121345730484
		2 16 0.11422604322433472 17 0.88577395677566528
		3 16 0.11773557443124993 17 0.88222038745880127 28 4.4038109948796311e-05
		2 16 0.049575328826904297 17 0.9504246711730957
		3 16 0.085870155108920668 17 0.91400301320739785 28 0.00012683168368143871
		3 16 0.18897544764805721 17 0.81060238072465218 28 0.00042217162729063507
		3 16 0.12999632901580618 17 0.86975072316753077 28 0.00025294781666307387
		3 16 0.32084833520451478 17 0.67800557010222706 28 0.001146094693258215
		3 16 0.22475495296426795 17 0.77461303262524972 28 0.00063201441048232887
		3 16 0.52154610563002279 17 0.47533344738312161 28 0.0031204469868555407
		3 16 0.32579124671751919 17 0.67298272009301563 28 0.0012260331894651255
		3 16 0.13148882511024476 17 0.86823616470438925 28 0.00027501018536602029
		3 16 0.076189438809255647 17 0.9236881654301935 28 0.00012239576055084189
		3 16 0.055001227349517422 17 0.94491102516788272 28 8.7747482599875845e-05
		3 16 0.030932922254025504 17 0.96902530937910614 28 4.1768366868311091e-05
		1 17 1
		1 17 1
		3 16 0.59385032855708608 17 0.40249178430036592 28 0.0036578871425480002
		3 16 0.75376526664998067 17 0.23972877860069275 28 0.0065059547493265812
		3 16 0.73704349807310321 17 0.25588145852088928 28 0.0070750434060075085
		3 16 0.84773581082731408 17 0.14119225740432739 28 0.011071931768358523
		3 16 0.76177551532480015 17 0.23265892267227173 28 0.0055655620029281261
		3 16 0.8447285824044718 17 0.14573182165622711 28 0.0095395959393010932
		3 16 0.91850632764393791 17 0.063976950943470001 28 0.017516721412592084
		3 16 0.91577390127737535 17 0.06882680207490921 28 0.015399296647715444
		3 16 0.844019100841786 17 0.14403292536735535 28 0.011947973790858657
		3 16 0.92174367632764542 17 0.059316305236192191 28 0.018940018436162331
		3 16 0.75014533810159567 17 0.24541246891021729 28 0.0044421929881870437
		3 16 0.83014268052209295 17 0.16221486032009125 28 0.0076424591578158063
		3 16 0.73298574739362465 17 0.2598990709315539 28 0.0071151816748213914
		3 16 0.73540902443561429 17 0.2582398264202741 28 0.0063511491441116119
		2 17 0.0038290605354096632 18 0.99617093946459034
		2 17 0.027257771758015501 18 0.97274222824198453
		2 17 0.02246030659293724 18 0.97753969340706282
		2 17 0.0028865028905229982 18 0.99711349710947705
		1 18 1
		1 18 1
		2 17 0.0036093896116805744 18 0.99639061038831933
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 18 0.99656300811914056 19 0.0034369918808595792
		2 18 0.99659768771291224 19 0.003402312287087773
		1 18 1
		1 18 1
		2 18 0.99629638375076901 19 0.003703616249231071
		2 18 0.90005873424465033 19 0.099941265755349729
		2 18 0.90263370180190738 19 0.097366298198092796
		2 18 0.89136603114876078 19 0.10863396885123924
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 0.99999999999999989
		2 18 0.99646328106710635 19 0.0035367189328935973
		2 18 0.90140283862076009 19 0.098597161379240086
		2 18 0.99629211144407948 19 0.00370788855592068
		2 18 0.89940446026149112 19 0.10059553973850882
		1 18 1
		1 18 1
		1 18 1
		2 17 0.00071005697544302326 18 0.99928994302455698
		1 18 1
		1 18 1
		1 18 1
		2 17 0.00060177764517122326 18 0.99939822235482878
		2 17 0.0024722239918236848 18 0.99752777600817633
		1 18 1
		2 17 0.0035978820259623557 18 0.99640211797403755
		2 17 0.020478817933656499 18 0.97952118206634342
		2 17 0.0038380644206197283 18 0.99616193557938038
		1 18 1;
	setAttr ".wl[5388:5650].w"
		2 18 0.99610034807678183 19 0.0038996519232182836
		2 18 0.99579287006530826 19 0.004207129934691637
		2 18 0.89416114921804912 19 0.10583885078195078
		3 18 0.30341048183081476 19 0.66416905708369534 20 0.032420461085490015
		2 18 0.35851905536157613 19 0.64148094463842398
		2 18 0.082773467952974258 19 0.91722653204702564
		3 18 0.067015043880819983 19 0.89141332794570483 20 0.041571628173475185
		3 18 0.34032018536983139 19 0.62086246063979023 20 0.038817353990378341
		2 18 0.88061469749189358 19 0.11938530250810642
		3 18 0.04411578823906951 19 0.23733588438426728 20 0.71854832737666319
		3 18 0.066245297856920682 19 0.24799276486022859 20 0.68576193728285073
		3 18 0.013544281510254283 19 0.25489110847563745 20 0.73156461001410822
		2 18 0.99639449439900463 19 0.0036055056009954289
		1 18 0.99999999999999989
		2 18 0.88671262356359792 19 0.11328737643640208
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 17 0.0036858457069516141 18 0.99631415429304837
		2 17 0.003434893052559835 18 0.99656510694744016
		2 17 0.0039101620093723276 18 0.99608983799062767
		2 17 0.025208063099682328 18 0.97479193690031762
		2 17 0.026037861694161963 18 0.97396213830583811
		2 17 0.027356620487077678 18 0.97264337951292223
		1 18 1
		1 18 1
		2 17 0.0038618096936578802 18 0.9961381903063421
		2 17 0.027183472437187189 18 0.97281652756281289
		2 17 0.02584152039335717 18 0.97415847960664281
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 18 0.99694217430623089 19 0.0030578256937691633
		2 18 0.99693863084570777 19 0.0030613691542923809
		2 18 0.99661443280512052 19 0.0033855671948794194
		2 17 0.026265578405020879 18 0.97373442159497925
		2 17 0.10128350266987091 18 0.89871649733012904
		2 17 0.09981471463968565 18 0.90018528536031439
		2 17 0.38608104904881285 18 0.61391895095118709
		2 17 0.38213266681577868 18 0.61786733318422138
		2 17 0.37926523224000674 18 0.62073476775999337
		2 17 0.76236726218616957 18 0.23763273781383049
		2 17 0.75474237545141287 18 0.24525762454858718
		2 17 0.76845810234393719 18 0.23154189765606298
		2 17 0.37409775270926421 18 0.62590224729073585
		2 17 0.37278070129735064 18 0.62721929870264936
		2 17 0.76846151555753606 18 0.23153848444246403
		2 17 0.76532135090908604 18 0.23467864909091407
		2 17 0.37410196245569599 18 0.62589803754430406
		2 17 0.9207540494865466 18 0.079245950513453553
		2 17 0.92193445466904667 18 0.078065545330953487
		2 17 0.92015502496881818 18 0.079844975031181833
		2 17 0.98573507513049097 18 0.014264924869509114
		2 17 0.98580768435733468 18 0.014192315642665381
		2 17 0.98535984673519261 18 0.014640153264807427
		2 17 0.76405480158747918 18 0.23594519841252082
		2 17 0.91880929043986881 18 0.081190709560131094
		2 17 0.37674009004756537 18 0.62325990995243463
		2 17 0.098395717827920559 18 0.90160428217207944
		2 17 0.098224719712904418 18 0.90177528028709553
		2 17 0.095587164385833812 18 0.9044128356141663
		2 17 0.91817740039264717 18 0.081822599607352775
		2 17 0.76666898729660993 18 0.23333101270339013
		2 17 0.76710058933671355 18 0.23289941066328651
		2 17 0.91930416591357378 18 0.080695834086426277
		2 17 0.98451343959105386 18 0.015486560408946141
		2 17 0.98482143461227256 18 0.01517856538772753
		2 17 0.98495580543479799 18 0.015044194565202012
		2 17 0.3791394808230017 18 0.62086051917699836
		2 17 0.37749363530755126 18 0.6225063646924488
		2 17 0.095167615270828371 18 0.90483238472917171
		2 17 0.09182227149275414 18 0.90817772850724598
		2 17 0.094262636022214172 18 0.9057373639777857
		2 17 0.097564496986526528 18 0.90243550301347353
		2 17 0.91514499515075076 18 0.084855004849249335
		2 17 0.91052164189084672 18 0.089478358109153361
		2 17 0.75346909372896076 18 0.24653090627103924
		2 17 0.91121978491286415 18 0.088780215087135947
		2 17 0.3650647651803528 18 0.63493523481964731
		2 17 0.091896240435583906 18 0.90810375956441625
		2 17 0.75423038750604099 18 0.2457696124939589
		2 17 0.91552538574483766 18 0.084474614255162367
		2 17 0.98350912783866085 18 0.016490872161339216
		2 17 0.98390886975809222 18 0.016091130241907725
		2 17 0.9853134859230539 18 0.014686514076946164
		2 17 0.98458246756376377 18 0.015417532436236361
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 0.99999999999999989
		1 17 1
		2 17 0.0042891349784885801 18 0.9957108650215114
		2 17 0.0093379202359380065 18 0.99066207976406195
		2 17 0.0055970946367571005 18 0.99440290536324305
		2 17 0.028071826613942922 18 0.97192817338605697
		2 17 0.034131163851796299 18 0.96586883614820362
		2 17 0.027428863120902546 18 0.97257113687909758
		2 17 0.08624127812300432 18 0.91375872187699558
		2 17 0.088281560007461235 18 0.91171843999253888
		2 17 0.34586026930180847 18 0.65413973069819153
		2 17 0.34931917383340699 18 0.65068082616659306
		2 17 0.35169876468480321 18 0.64830123531519679
		2 17 0.090301680320710093 18 0.90969831967928994
		2 17 0.75106771068853828 18 0.24893228931146164
		2 17 0.74967769932983397 18 0.25032230067016614
		2 17 0.92259307712662986 18 0.077406922873370157
		2 17 0.92434250131571083 18 0.075657498684289226
		2 17 0.35342953578728276 18 0.64657046421271724
		2 17 0.75684102324608449 18 0.24315897675391537
		2 17 0.76298517477543859 18 0.23701482522456135
		2 17 0.35699107928024026 18 0.64300892071975979
		2 17 0.089253465169397639 18 0.91074653483060253
		2 17 0.084806162838835589 18 0.91519383716116443
		2 17 0.9241604784360431 18 0.075839521563957055
		2 17 0.98861164110597755 18 0.011388358894022439
		2 17 0.9892090902613131 18 0.010790909738686872
		2 17 0.75402884132656189 18 0.24597115867343808
		2 17 0.91992211766581744 18 0.080077882334182726
		2 17 0.98712353385438356 18 0.012876466145616454
		2 17 0.026442826183808631 18 0.97355717381619133
		2 17 0.027734344135681419 18 0.97226565586431857
		2 17 0.0088880624220887966 18 0.99111193757791116
		2 17 0.033891035920126308 18 0.96610896407987368
		2 17 0.026595666184292186 18 0.97340433381570779
		3 18 0.065187130084593356 19 0.24472896113844606 20 0.69008390877696069
		3 18 0.0063374793719177085 19 0.019577239861642861 20 0.97408528076643941
		3 18 0.010052238973258642 19 0.032233219301696682 20 0.95771454172504467
		3 18 0.06217707432007355 19 0.23982715790567166 20 0.69799576777425487
		3 18 0.010759826336688922 19 0.034187577273231781 20 0.95505259639007944
		3 18 0.0010972766659867422 19 0.002877588529384527 20 0.99602513480462862
		3 18 0.00070064247808403429 19 0.0017799423117916973 20 0.99751941521012433
		1 20 1
		1 20 1
		1 20 0.99999999999999989
		1 20 1
		1 20 1
		3 18 0.00064247408001889329 19 0.0023288740582252223 20 0.99702865186175604
		3 18 0.0070705386649269264 19 0.031668467708095463 20 0.9612609936269777
		3 18 0.0021625134684827856 19 0.029241544590958759 20 0.96859594194055854
		3 18 0.00019432708530241991 19 0.0019467819935891737 20 0.99785889092110847
		3 18 0.00027669848719591932 19 0.01898394163791129 20 0.98073935987489269
		3 18 1.9600052705121441e-05 19 0.00072509944418325473 20 0.99925530050311162
		1 20 1
		1 20 1
		3 18 0.001973316221335081 19 0.23917736332651152 20 0.75884932045215336
		3 18 0.00024837951162262069 19 0.2308268488554297 20 0.76892477163294759
		3 18 3.2042869730623467e-05 19 0.023031955425193498 20 0.97693600170507588
		3 18 0.0007715253250736761 19 0.97095379691565076 20 0.028274677759275745
		3 18 0.0076813186012839067 19 0.95888869820304234 20 0.033429983195673772
		3 18 2.1362430079319404e-05 19 0.0017311568142607159 20 0.99824748075565994
		3 18 2.4532750618536236e-06 19 0.00015024482579351967 20 0.99984730189914472
		1 20 1
		1 20 1
		3 18 2.7777064417792246e-06 19 0.0017050630501645638 20 0.99829215924339365
		1 20 1
		1 20 1
		3 18 8.4654444416132468e-05 19 0.0001817164616330666 20 0.9997336290939508
		3 18 0.00033766926337387942 19 0.00086065379625843989 20 0.9988016769403677
		3 18 7.2334134862129536e-05 19 0.00015487020458052064 20 0.99977279566055732
		3 18 0.00054902963284209072 19 0.0013868293709586525 20 0.99806414099619922
		1 20 1
		1 20 0.99999999999999989
		1 20 1
		1 20 1
		3 18 0.0006240256786729097 19 0.0015917588607139163 20 0.99778421546061313
		3 18 0.00089742394896254857 19 0.0023539598842463347 20 0.99674861616679122
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 0.99999999999999989
		1 20 1
		1 20 0.99999999999999989
		3 18 0.33663016455163075 19 0.62734777883801196 20 0.036022056610357359
		3 18 0.32763455813295866 19 0.63676803433209683 20 0.035597407534944607
		2 18 0.89393262560707365 19 0.10606737439292652
		3 18 0.063340990169786185 19 0.24095964057898728 20 0.69569936925122666
		3 18 0.33091313680766443 19 0.63573253943237595 20 0.033354323759959559
		3 18 0.32862579460037661 19 0.63513816114702892 20 0.036236044252594433
		3 18 0.066097818895201332 19 0.2482257550955897 20 0.68567642600920897
		2 18 0.88947918007055804 19 0.11052081992944199
		2 18 0.89283488421304247 19 0.10716511578695756
		2 18 0.88981971312663655 19 0.11018028687336345
		2 18 0.99636473810976367 19 0.0036352618902362834
		3 18 0.33413751757498888 19 0.62891393511102067 20 0.036948547313990436
		3 18 0.065373664776523843 19 0.24712861030331898 20 0.68749772492015726
		3 18 0.011144006003243535 19 0.034993440947251368 20 0.95386255304950507
		3 18 0.0060945899983075062 19 0.0189956252422336 20 0.97490978475945889
		3 18 0.0010641756157636604 19 0.0027420169698360222 20 0.99619380741440022
		3 18 0.00055620781131104436 19 0.0014103180690149633 20 0.99803347411967402
		3 18 0.006603626159191113 19 0.02048639063149146 20 0.97290998320931743
		3 18 0.00067494896637625482 19 0.0017186448203878714 20 0.99760640621323582
		3 18 0.056240503898739455 19 0.22568109487351129 20 0.71807840122774935
		3 18 0.34312435144303954 19 0.6231861664737024 20 0.03368948208325797
		3 18 0.0091169525599537546 19 0.030851888621610455 20 0.96003115881843581
		1 18 1
		1 20 0.99999999999999989
		1 20 1
		1 20 1
		3 18 7.6587404458478581e-05 19 0.00016523726867815006 20 0.99975817532686351
		3 18 0.00036392774102752965 19 0.00093476696265055569 20 0.99870130529632206
		3 18 7.8296609097357672e-05 19 0.00016875120151494107 20 0.99975295218938764
		1 20 0.99999999999999989
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 0.99999999999999989
		1 20 1
		1 20 1
		3 18 6.6592305585259275e-05 19 0.00014347290312311577 20 0.99978993479129163
		1 20 1
		3 18 0.00027770907297209826 19 0.00071395827366573211 20 0.99900833265336209
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		3 18 2.5438501245435837e-08 19 0.0033211660506164121 20 0.99667880851088231
		3 18 2.475551064127587e-09 19 0.0036672104762867251 20 0.9963327870481623
		3 18 2.970436133362356e-07 19 0.038125948565939025 20 0.96187375439044753
		3 18 2.827563494268316e-08 19 0.039978891594627697 20 0.96002108012973741
		3 18 2.6108730929255963e-08 19 0.0032744023648909461 20 0.9967255715263782
		3 18 3.4945566037919779e-07 19 0.0023154192971504266 20 0.99768423124718919
		3 18 4.3830201391187723e-06 19 0.032017897271409378 20 0.96797771970845148
		3 18 3.0890523094043367e-07 19 0.038014910645317895 20 0.96198478044945113
		3 18 1.677357702010332e-06 19 0.27752386404977242 20 0.72247445859252557
		1 18 2.6501629613989623e-05;
	setAttr ".wl[5650:6012].w"
		2 19 0.26357431603431175 20 0.73639918233607427
		3 18 1.4448309916919435e-07 19 0.28213674001831929 20 0.71786311549858151
		3 18 4.0416732839830856e-07 19 0.96109213130382332 20 0.03890746452884826
		3 18 6.6544486458287374e-06 19 0.96215100344345095 20 0.037842342107903236
		3 18 1.7781623510462602e-06 19 0.28418300431788868 20 0.71581521751976041
		3 18 4.0894426091505449e-06 19 0.029036194616522078 20 0.97095971594086883
		3 18 2.7141811414303386e-05 19 0.26269336379757474 20 0.73727949439101104
		3 18 3.4412456403014926e-07 19 0.0021365975770639939 20 0.99786305829837196
		3 18 6.0564153580816321e-06 19 0.96327916057820362 20 0.036714783006438372
		3 18 0.00010373374084252625 19 0.9604549984466646 20 0.039441267812493012
		1 19 1
		1 19 0.99999999999999989
		3 18 0.0009530470034460484 19 0.96905134570683582 20 0.029995607289718184
		3 18 0.00013760467514183501 19 0.95905178300419835 20 0.040810612320659939
		1 19 1
		3 18 0.002017561598575648 19 0.23875765608268978 20 0.75922478231873458
		3 18 0.00024633836056503386 19 0.23754136320731978 20 0.76221229843211524
		3 18 0.0091749095377085515 19 0.95670914012205166 20 0.034115950340239981
		1 19 1
		3 18 3.6832505094488853e-05 19 0.026502486396117454 20 0.97346068109878803
		3 18 2.834123039404318e-06 19 0.0018501490477003239 20 0.99814701682926033
		3 18 0.00027542808879518001 19 0.021309193742037026 20 0.97841537816916768
		3 18 1.6766933304311634e-05 19 0.0015884787008391527 20 0.99839475436585667
		3 18 2.0932247941468943e-05 19 0.00088356558739827651 20 0.99909550216466025
		3 18 2.3502578109357497e-06 19 0.00015788978756381812 20 0.99983975995462526
		1 20 1
		1 20 0.99999999999999989
		1 20 1
		1 20 1
		1 20 1
		3 18 0.00016614877111524747 19 0.0017337379282754859 20 0.99810011330060922
		3 18 0.0019551911980033323 19 0.027055845772055873 20 0.97098896302994087
		1 20 1
		3 18 0.012518974923611823 19 0.23144155112930576 20 0.75603947394708237
		3 18 0.074187416960891941 19 0.88829004030722725 20 0.037522542731880972
		3 18 0.30850958255123118 19 0.66515420247468138 20 0.026336214974087495
		3 18 0.036073534635087154 19 0.21099496925679634 20 0.75293149610811672
		3 18 0.0055187262330304021 19 0.0268249756060608 20 0.9676562981609087
		1 20 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 3.2703607183437455e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 8 4.1283952704134013e-18 9 2.5821726925631418e-29 10 2.9439491783339198e-48 
		28 1
		4 8 2.6316275161906282e-16 9 2.2888882791305216e-27 10 9.4287947429119077e-46 
		28 0.99999999999999978
		4 8 1.2479021691690098e-16 9 4.7643924402008184e-27 10 1.7254063884647223e-45 
		28 1
		4 8 7.2994287520632071e-15 9 3.7985132075642649e-25 10 4.5563943141421907e-43 
		28 0.99999999999999267
		4 8 2.0569305861877985e-15 9 7.0261820317522629e-25 10 7.7443646108737448e-43 
		28 0.999999999999998
		4 8 1.1377624354355669e-13 9 5.1278222123033895e-23 10 1.7394352853245024e-40 
		28 0.9999999999998862
		4 8 1.4174691929995408e-14 9 8.6081902349540608e-23 10 2.8517193789218494e-40 
		28 0.99999999999998579
		4 8 7.6964949828616181e-13 9 5.7806736432598228e-21 10 5.5192016632539832e-38 
		28 0.99999999999923028
		4 8 3.4781097313980359e-11 9 3.3746816514200823e-19 10 9.3073291033654996e-36 
		28 0.99999999996521882
		4 8 5.3519535455537423e-12 9 3.2783362943469937e-21 10 3.3797247775952791e-38 
		28 0.99999999999464806
		4 8 1.3354887593683454e-09 9 1.7445704194647833e-17 10 1.4047019100042086e-33 
		28 0.99999999866451128
		5 8 4.5073919902805879e-08 9 7.8198285188877087e-16 10 1.8875002286170398e-31 
		11 2.1446447590211889e-72 28 0.99999995492607929
		4 8 7.7062945915072929e-09 9 8.8683836763246882e-18 10 8.5719783797863597e-34 
		28 0.99999999229370529
		4 8 2.1958815063385919e-10 9 1.8490615347424427e-19 10 5.7906150074283697e-36 
		28 0.99999999978041176
		5 8 1.2305716979477247e-06 9 2.7844922816992179e-14 10 2.1114511810611949e-29 
		11 7.586752209057299e-69 28 0.99999876942827426
		5 8 2.2500299556782948e-07 9 3.455329467480903e-16 10 1.0701164589881097e-31 
		11 1.2155293989971955e-72 28 0.99999977499700399
		4 8 6.071640088534654e-10 9 8.3755593128818814e-20 10 3.2700078397445916e-36 
		28 0.99999999939283601
		4 8 1.6231417090902835e-11 9 1.6243669534811137e-21 10 1.9892781436941366e-38 
		28 0.99999999998376854
		4 8 1.877763798165166e-08 9 3.4949718776840306e-18 10 4.4613812954286198e-34 
		28 0.999999981222362
		5 8 4.1612241226107016e-06 9 1.7170343289193292e-12 10 3.3021415679558551e-27 
		11 1.8979434226092996e-65 28 0.99999583877416021
		5 8 7.8314808877911885e-05 9 4.4063102144812586e-11 10 2.8335682776177477e-25 
		11 1.8150816733121504e-62 28 0.99992168514705915
		5 8 2.641173519788756e-05 9 7.7705857576030046e-13 10 1.9869874726510248e-27 
		11 1.1418536108358988e-65 28 0.99997358826402505
		4 8 3.7144493524243943e-13 9 2.6682340447843537e-23 10 1.0298767409250217e-40 
		28 0.99999999999962852
		4 8 1.4325967685846224e-14 9 1.7565808807114997e-25 10 2.485969348200428e-43 
		28 0.99999999999998568
		4 8 6.7038712844190458e-13 9 1.1568126857601782e-23 10 5.4635459228801277e-41 
		28 0.99999999999932965
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1;
	setAttr ".wl[6013:6395].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		7 8 8.0762255742530883e-08 9 0.0033806315929435877 10 3.034324459041625e-12 
		11 4.1537754035040378e-53 12 3.9409403864451385e-77 13 8.4562586758768703e-79 
		28 0.99661928764176633
		7 8 3.1192299766641221e-06 9 0.035416418502669578 10 1.6597481346604093e-10 
		11 1.9837382269240905e-50 12 3.2156778794542046e-71 13 6.0279898213256575e-73 
		28 0.96458046210137882
		7 8 0.00030416937079280615 9 0.10396737383740155 10 5.9982521450765427e-09 
		11 5.9827904640838704e-48 12 8.53768140639888e-68 13 1.6033690887906038e-69 
		28 0.89572845079355345
		7 8 2.5906259162041174e-06 9 0.018641038995478046 10 5.6433075101776221e-12 
		11 4.560882528938579e-53 12 3.1934893528938126e-76 13 6.8524183059485765e-78 
		28 0.98135637037296242
		7 8 6.2773126230709523e-05 9 0.061728788639992802 10 2.1596095689072006e-10 
		11 1.5606202681482298e-50 12 2.7126925427018416e-71 13 5.0830785799181133e-73 
		28 0.9382084380178155
		5 8 6.1448505593133253e-07 9 0.0077870048202118396 10 1.5603429944621591e-13 
		11 8.4099659599028711e-56 28 0.99221238069457618
		5 8 6.7185021649195564e-08 9 0.0017327845923691986 10 9.8886712636838177e-14 
		11 8.3447809581332002e-56 28 0.99826714822251028
		5 8 1.4898679408475516e-08 9 0.00070407681688508137 10 2.626728975986115e-15 
		11 1.2821328315536603e-58 28 0.99929590828443293
		5 8 1.9862242786989887e-07 9 0.0023607933153996022 10 3.1882086180338057e-15 
		11 1.0615166610216249e-58 28 0.99763900806216932
		5 8 5.8276911087035062e-06 9 0.011140452377525031 10 1.322474746700417e-13 
		11 5.0405357688673267e-56 28 0.98885371993123405
		7 8 1.6397830108422534e-05 9 0.030458170358815727 10 6.2079790487733802e-12 
		11 3.3129220168882425e-53 12 9.2218500956425091e-76 13 1.9787751712036332e-77 
		28 0.96952543180486783
		5 8 7.5429353214371721e-08 9 0.00043752636357947559 10 5.1077190383499833e-17 
		11 9.0570252811094462e-62 28 0.99956239820706727
		5 8 2.320384248338096e-06 9 0.0026750916365263196 10 2.253193383433196e-15 
		11 5.6260337517741889e-59 28 0.99732258797922313
		5 8 2.9870064386060739e-07 9 0.00031576005707215055 10 3.3249365848801221e-17 
		11 4.6202713532377664e-62 28 0.99968394124228388
		5 8 7.8176905674972929e-06 9 0.00091546502298496979 10 1.3113754906923992e-15 
		11 2.6767226599266043e-59 28 0.99907671728644609
		5 8 4.1904648242052644e-05 9 0.0076411355697282553 10 8.5519987775299396e-14 
		11 2.5653587202665705e-56 28 0.99231695978194401
		5 8 0.00028627828578464687 9 0.0025264260490555001 10 3.3466174278370733e-14 
		11 8.2194933919917401e-57 28 0.99718729566512643
		5 8 2.1050078196363183e-08 9 2.2238861790492371e-05 10 4.1227645048815108e-19 
		11 2.3818018003739916e-65 28 0.99997774008813134
		5 8 5.6281692119254404e-07 9 6.4827816583151854e-05 10 1.6709791031305846e-17 
		11 1.9509966746057755e-62 28 0.99993460936649559
		5 8 1.0605530654111885e-05 9 0.00018620839455226113 10 4.2894866098891805e-16 
		11 7.3457579672029387e-60 28 0.99980318607479324
		7 8 0.044097524136304855 9 0.21985673135868439 10 1.8007075332007472e-07 
		11 1.5349702618495248e-45 12 1.1254731216351762e-64 13 2.1115664294544062e-66 
		28 0.73604556443425739
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 1 1.9561533713532347e-11 28 1
		1 28 1
		2 0 2.7857247453697147e-13 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 6.8043454752025879e-23 9 1.3157243238441001e-14 10 1.0849896573074576e-24 
		11 6.2253725250474144e-68 28 0.99999999999998679
		5 8 5.4153854505896522e-25 9 1.8247620137053502e-16 10 7.6881507716688624e-27 
		11 4.5436060780242114e-71 28 0.99999999999999978
		1 28 1
		1 28 1
		2 16 0.070493608713150024 28 0.92950639128684998
		2 16 0.022215751931071281 28 0.97778424806892872
		2 16 0.011902707628905773 28 0.98809729237109423
		2 16 0.036201629787683487 28 0.96379837021231651
		1 28 1
		2 16 0.0015187620883807542 28 0.99848123791161925
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 1 7.1437189497203235e-11 28 1
		2 1 1.2863518410177743e-11 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 2.041734114754945e-05 28 0.99997958265885245
		1 28 1
		2 16 0.0066178529523313046 28 0.99338214704766858
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[6396:6585].w"
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 4.8807080403904039e-07 9 2.2818716663019026e-17 10 1.6620012655005945e-32 
		11 1.8861914333908198e-73 28 0.99999951192919601
		5 8 6.7755327501846966e-06 9 2.2875445552168294e-16 10 9.5368374183643629e-31 
		11 3.4221911528926886e-70 28 0.99999322446724959
		1 28 0.99999999999999989
		5 8 9.9530249422035652e-06 9 2.7223559522921516e-15 10 4.6830198866646826e-30 
		11 1.6815912907646039e-69 28 0.99999004697505511
		5 8 0.00013055659858502144 9 2.7110909343048002e-14 10 2.5928109039213477e-28 
		11 1.4889079636761096e-66 28 0.99986944340138773
		5 8 0.0010053275401494877 9 6.2514670309116706e-14 10 9.3087545655946983e-27 
		11 5.9568782355225675e-64 28 0.99899467245978812
		5 8 0.001323304245479088 9 2.5102926791669233e-12 10 5.5798789850352322e-26 
		11 3.5728096186908549e-63 28 0.99867669575201068
		5 8 0.0090366833733892312 9 5.8115401749429425e-12 10 1.9195298996287805e-24 
		11 1.0908802471443387e-60 28 0.99096331662079928
		5 8 0.00010637371583210853 9 2.4792273289243635e-13 10 1.0146672970902228e-27 
		11 5.8295367218706212e-66 28 0.99989362628391987
		5 8 0.00049450344584296777 9 1.7057059487943167e-11 10 1.6967370935976126e-25 
		11 1.0867478993881022e-62 28 0.99950549653709986
		5 8 0.0057072937489136 9 1.7530684054589477e-10 10 9.3526012218116404e-24 
		11 5.3169648662891433e-60 28 0.99429270607577958
		5 8 4.7890026100223667e-07 9 1.1521718339574987e-16 10 5.0711010525521968e-32 
		11 5.7580587645714161e-73 28 0.99999952109973889
		5 8 5.2199874323485898e-06 9 1.0579930533847925e-14 10 1.1124885286781242e-29 
		11 3.9962563848610027e-69 28 0.99999478001255704
		4 8 8.6906694497869784e-10 9 2.8130402648533066e-20 10 1.4768889237508646e-36 
		28 0.99999999913093307
		4 8 2.3392234546203505e-08 9 9.7229643118470365e-19 10 1.7937914420869015e-34 
		28 0.9999999766077653
		5 8 0.0012806500324828863 9 9.0051910878474592e-10 10 2.2560046528808535e-23 
		11 1.2826859564292315e-59 28 0.998719349066998
		5 8 0.012747206937156556 9 9.3604358887240318e-09 10 1.2526079793666476e-21 
		11 5.4191103617172773e-57 28 0.98725278370240765
		5 8 0.033005132481581885 9 4.122828418397937e-10 10 3.1307501481410175e-22 
		11 1.3542922840038322e-57 28 0.96699486710613525
		5 8 0.026135753095326748 9 7.3879713842404371e-12 10 4.3896517318021043e-23 
		11 1.8985131463843584e-58 28 0.97386424689728524
		5 8 0.003872634414925964 9 7.7659922929143947e-14 10 2.2408893720660456e-25 
		11 1.2727845609516185e-61 28 0.99612736558499648
		5 8 0.0063626979430176081 9 1.1921344308408941e-13 10 3.1422514064294065e-24 
		11 1.3582271831076044e-59 28 0.99363730205686307
		5 8 0.058181333003890147 9 5.6267725554042061e-10 10 7.063037171738898e-21 
		11 2.0897924260893466e-55 28 0.94181866643343271
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		5 8 0.21710200607776642 9 8.5962819400708201e-12 10 7.5502419759371685e-24 
		11 2.4099525361285723e-66 28 0.78289799391363724
		2 8 0.16269999742507935 28 0.83730000257492077
		5 8 0.14042621850967407 9 1.6047451441725962e-12 10 2.1955103468453798e-25 
		11 1.8618648635096474e-69 28 0.85957378148872121
		2 8 0.094004355370998383 28 0.90599564462900151
		4 8 0.066553622484207153 9 1.5698177664601679e-13 10 3.9683570248741286e-27 
		28 0.93344637751563586
		2 8 0.037071924656629562 28 0.96292807534337055
		4 8 0.020920544862747192 9 9.6458929243206382e-15 10 4.9660163003833544e-29 
		28 0.97907945513724304
		2 8 0.0090146772563457489 28 0.99098532274365414
		2 8 0.003922922071069479 28 0.99607707792893052
		2 8 7.4482704803813249e-05 28 0.99992551729519619
		2 8 0.0010326550109311938 28 0.9989673449890687
		2 8 0.016080738976597786 28 0.98391926102340221
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 8 0.0067874505184590816 9 3.3729002098813413e-14 10 8.3261616045079558e-29 
		28 0.99321254948150706
		4 8 0.00022632505922488198 9 1.0325125850407707e-15 10 6.1532446401854069e-31 
		28 0.99977367494077407
		1 28 1
		4 8 0.013158600777387619 9 2.3306090173972963e-12 10 1.1835583497070546e-26 
		28 0.98684139922028191
		4 8 0.039395838975906372 9 7.9225307351052039e-13 10 8.8349850142174055e-27 
		28 0.96060416102330137
		4 8 0.00025663293891590999 9 7.3645796455484999e-14 10 8.9820140024234219e-29 
		28 0.99974336706101041
		4 8 1.1831993383376633e-05 9 1.7444417481727166e-15 10 5.5445960183478318e-31 
		28 0.99998816800661483
		4 8 1.0785629432135918e-05 9 2.4151093053140474e-17 10 3.7261859799588683e-33 
		28 0.99998921437056787
		1 28 1
		1 28 1
		4 8 1.411468781320291e-05 9 9.58429234436495e-14 10 6.0643360443576856e-29 
		28 0.99998588531209098
		1 28 0.99999999999999989
		1 28 1
		5 8 0.094192653894424438 9 1.2673496379484165e-11 10 7.0814395695656442e-25 
		11 4.8811740488987987e-69 28 0.90580734609290192
		7 8 0.00079491600864971138 9 0.93587321305945037 10 0.061204840317556013 
		11 4.5509929123569687e-25 12 6.9700642964190708e-40 13 1.8715105782745417e-41 
		28 0.0021270306143439388
		7 8 9.7392031111543821e-05 9 0.74802705630786881 10 0.25145014554053491 
		11 7.5326476801286112e-23 12 2.5283788258562293e-37 13 6.7883891884686199e-39 
		28 0.00042540612048469484
		7 8 5.8347771204447439e-05 9 0.65782831769019035 10 0.34198179884553348 
		11 7.9321965676138759e-23 12 2.2459377957900524e-37 13 4.8580425633916371e-39 
		28 0.00013153569307178259
		6 8 4.7881354803365515e-06 9 0.32040237578435871 10 0.67959283608016097 
		11 7.2307945335625033e-19 12 1.1651052541767551e-32 13 3.1271266997233525e-34
		6 8 3.2259631989114043e-06 9 0.27074783421441112 10 0.72924893982239003 
		11 6.9242733329793732e-19 12 9.4130118622324875e-33 13 2.0377318524262136e-34
		6 8 6.0044398989369876e-07 9 0.15483913696950571 10 0.84516026258650434 
		11 8.7411943563092259e-17 12 3.1376977253594454e-30 13 8.4205258471302276e-32
		6 8 4.1355232216526327e-07 9 0.12189526085854432 10 0.87810432558913343 
		11 8.2541307328028093e-17 12 2.4999743480669432e-30 13 5.4130140015485699e-32
		6 8 1.2327289021097256e-06 9 0.20263679705110768 10 0.79736197021999022 
		11 3.7065524963065514e-19 12 4.0414180756542676e-33 13 5.6827103164570779e-35
		7 8 2.9159812314963358e-05 9 0.53490426243338529 10 0.46501769515347746 
		11 4.6136480073765535e-23 12 1.0679584336620166e-37 13 1.5092428592050127e-39 
		28 4.8882600822253153e-05
		6 8 4.0474243688055455e-07 9 0.16041879122027311 10 0.83958080403729007 
		11 1.9041882621408797e-19 12 1.6804492712605422e-33 13 1.2963525215765293e-35
		7 8 1.8319959243741691e-05 9 0.40783461606236587 10 0.59213664517179421 
		11 2.6022268542891376e-23 12 4.9685929153701719e-38 13 3.8925514606291125e-40 
		28 1.0418806596135255e-05
		6 8 3.3238953912757994e-06 9 0.29181289257436127 10 0.70818378353024747 
		11 2.8555559428346114e-23 12 3.9286700808324944e-38 13 1.4526092393037205e-40
		6 8 7.3245726215131087e-08 9 0.12642688545670819 10 0.87357304129756563 
		11 1.7764323135159349e-19 12 1.1441448574491678e-33 13 4.1499679447358976e-36
		6 8 3.2866156888214612e-07 9 0.22355825649683309 10 0.77644141484159801 
		11 3.2197865834224009e-24 12 2.0850367818564678e-39 13 7.5198190023602297e-42
		6 8 4.6721691087698804e-08 9 0.19715507540135341 10 0.80284487787695547 
		11 3.4685465761739684e-25 12 7.8963488585327815e-41 13 2.226537459931658e-43
		6 8 6.5168207903152485e-11 9 0.013192521933173626 10 0.98680747800165813 
		11 3.0662516674057555e-20 12 5.5426140017204121e-35 13 9.6828439900384089e-38
		6 8 7.2878655009416399e-09 9 0.1684836377872703 10 0.8315163549248642 
		11 4.2449247101642906e-24 12 1.6153616326339197e-39 13 2.8102543297730574e-42
		6 8 8.4923915831006922e-10 9 0.088045984999909871 10 0.91195401415085098 
		11 3.0035275315208544e-21 12 3.2251115634541967e-36 13 8.7632421939173514e-39
		6 8 2.0741111553719028e-11 9 0.0073609590949271905 10 0.99263904088433175 
		11 3.6826004678408223e-18 12 1.4596297804474603e-32 13 2.5564858706158773e-35
		6 8 2.7499841141731015e-12 9 0.002756686904065218 10 0.99724331309318481 
		11 3.1602746337039772e-17 12 2.6227409753071334e-31 13 4.6970423152701103e-34
		6 8 2.1349741169055356e-10 9 0.041080587752111888 10 0.95891941203439068 
		11 3.8941283777879005e-19 12 9.0604009797145864e-34 13 2.4256104202559174e-36
		6 8 8.2958155278963115e-09 9 0.10679883022995978 10 0.89320116147422468 
		11 2.2789679402368803e-20 12 6.8716625042244885e-35 13 2.3955996717387654e-37
		6 8 1.378744769061318e-09 9 0.050353218275587204 10 0.94964678034566807 
		11 2.6874318807106612e-18 12 1.7645847986255425e-32 13 6.0676826973050513e-35
		6 8 9.8166216883508548e-09 9 0.052567419282020474 10 0.9474325709013578 
		11 1.9594222518239533e-17 12 2.7823532836092315e-31 13 1.0017485089936126e-33
		6 8 4.6913869961216595e-08 9 0.05854154580609134 10 0.94145840728003871 
		11 2.2623538730979629e-17 12 4.3843899207307032e-31 13 3.3568412064275433e-33
		6 8 7.6136939168434911e-10 9 0.015812249461602684 10 0.98418774977702617 
		11 1.8017352964168774e-15 12 5.7753531334098892e-29 13 2.0619759128309657e-31
		6 8 3.3752816646091326e-09 9 0.014751499040877464 10 0.9852484975838387 
		11 2.215593483195143e-15 12 9.6828054952547725e-29 13 7.3449199030560378e-31
		6 8 1.2019169843284734e-10 9 0.019616959621535136 10 0.98038304025827294 
		11 2.5657861959630336e-16 12 3.7256981323192314e-30 13 1.2650284395896837e-32
		6 8 3.4937378859740493e-11 9 0.0033914752558918391 10 0.99660852470901107 
		11 1.5969513633594444e-13 12 1.1936674010858281e-26 13 4.2228310316980088e-29
		6 8 5.8711119384203264e-12 9 0.0051662330020258631 10 0.99483376699207959 
		11 2.3467767127787649e-14 12 7.7113343006843348e-28 13 2.5884335416659807e-30
		6 8 2.2257176179395029e-11 9 0.020208465218127327 10 0.97979153475961545 
		11 4.050062800442424e-17 12 2.0566725656344877e-31 13 5.4353574846574218e-34
		6 8 1.1669578321329905e-12 9 0.0048695781691875575 10 0.99513042182964151 
		11 3.9293479417349404e-15 12 4.4183614783147768e-29 13 1.1556051274409974e-31
		6 8 1.2860534700741234e-13 9 0.0052677771897718419 10 0.99473222281006524 
		11 3.4288117302828577e-14 12 6.8812866779371661e-28 13 1.2111882213771117e-30
		6 8 2.3567672360624884e-12 9 0.016745029218296712 10 0.9832549707793462 
		11 3.6783136449263371e-16 12 3.2440783777958163e-30 13 5.6961129474775899e-33
		4 8 9.3409624889399922e-13 9 0.00024829683722252851 10 0.99975170314742756 
		11 1.4415805669120462e-11;
	setAttr ".wl[6585:6690].w"
		2 12 2.6257366427089279e-24 13 9.1918822083292996e-27
		6 8 1.6431935988051106e-13 9 0.0004101731537151913 10 0.99958982684398079 
		11 2.1397477771786572e-12 12 1.6428823108082532e-25 13 5.456533965126145e-28
		6 8 3.4029436433808794e-14 9 0.0003753464094778636 10 0.99962465359011798 
		11 3.7014998085228575e-13 12 9.4241593637206287e-27 13 2.4473300621483324e-29
		6 8 1.5128757915008154e-10 9 0.0022480222085550549 10 0.99775197763995582 
		11 2.0155613649638288e-13 12 2.0543850015511799e-26 13 1.5432705247567485e-28
		6 8 1.2022582152847061e-08 9 0.017621620096607771 10 0.98237836788080579 
		11 4.2541878550581329e-15 12 2.3256716590719075e-28 13 3.2491961865798441e-30
		6 8 5.8027356741331305e-10 9 0.003331921137466103 10 0.99666807828189563 
		11 3.6475105634473585e-13 12 4.6655162994304969e-26 13 6.4931098943939356e-28
		6 8 1.5774068482523538e-07 9 0.069109426368634819 10 0.93089041589068033 
		11 4.447004603950683e-17 12 1.0727253254280601e-30 13 1.5041037598990902e-32
		6 8 3.2624575268271583e-08 9 0.042570571869373901 10 0.95742939550604322 
		11 7.5924224740503353e-15 12 5.2380358221025882e-28 13 1.1342155009189893e-29
		6 8 1.6949994893175729e-09 9 0.012940340357495488 10 0.98705965794690109 
		11 6.0394423027858105e-13 12 9.7853460180722338e-26 13 2.1189651861677716e-27
		6 8 4.1252784137132589e-12 9 0.00014758554613657332 10 0.99985241443159756 
		11 1.8140640077270979e-11 12 4.514346884340853e-24 13 3.3561597995748455e-26
		6 8 1.7746558355403773e-11 9 0.00026769447335865454 10 0.99973230547935943 
		11 2.9535327669339591e-11 12 9.2315839930503252e-24 13 1.2798840337975382e-25
		6 8 4.7526801459107784e-08 9 0.063104933300957428 10 0.93689501917223306 
		11 8.0836436484558118e-15 12 6.6106461827815445e-28 13 1.7740193006043892e-29
		6 8 2.4890216203343836e-09 9 0.021576198766204147 10 0.97842379874414553 
		11 6.2870467722752046e-13 12 1.2077751990374077e-25 13 3.2412155291340004e-27
		6 8 8.4368040209302604e-11 9 0.0021900985289867417 10 0.99780990134182568 
		11 4.4819545104785317e-11 12 2.1115144804065648e-23 13 5.6671997152067904e-25
		6 8 5.7295105432712321e-11 9 0.0012809298052946761 10 0.99871907009313143 
		11 4.4278793721601298e-11 12 1.7577369700204013e-23 13 3.8064752133488409e-25
		6 8 1.912416815372334e-12 9 0.00010758850471445048 10 0.99989240862340023 
		11 2.8699729434086269e-09 12 3.5174775916590073e-21 13 9.443318525643177e-23
		7 7 3.8475733320037954e-11 8 1.2945151868716651e-12 9 6.2296528902234835e-05 
		10 0.99993770058608622 11 2.8452412328637922e-09 12 2.9321885518002396e-21 
		13 6.3503770264570429e-23
		7 7 2.0220324028047083e-12 8 3.1794385349138738e-14 9 3.2661142854387283e-06 
		10 0.9999965762727635 11 1.5761089720310306e-07 12 5.4438053077509956e-19 
		13 1.4622574819821438e-20
		6 8 1.1840068757058354e-12 9 0.00011910477609586748 10 0.9998808922795166 
		11 2.9432035684904094e-09 12 3.9208059857821021e-21 13 1.1129003479575686e-22
		7 7 6.4525934975853742e-13 8 2.1423745679156777e-14 9 1.8796195994722217e-06 
		10 0.99999796419834186 11 1.5618139190066117e-07 12 4.5252507863807093e-19 
		13 9.8019093378756334e-21
		7 7 2.4103197961846786e-11 8 3.6408987514747513e-13 9 1.1375799022421556e-05 
		10 0.99998862205143402 11 2.1250761936308568e-09 12 1.7215285854257808e-21 
		13 2.3785524025968966e-23
		7 7 3.4009593647128172e-13 8 5.6576423232577405e-15 9 3.1650813003445308e-07 
		10 0.99999955483895075 11 1.2865257357771789e-07 12 2.9261179830606844e-19 
		13 4.0310715577226072e-21
		6 8 1.8749833667651681e-11 9 0.0026053182779972525 10 0.99739468165878653 
		11 4.4466376019447253e-11 12 2.1654850820475425e-23 13 6.0852530368047401e-25
		6 8 4.3003725262039951e-13 9 0.00012886861847683997 10 0.99987112857671501 
		11 2.8043781637698408e-09 12 3.5426224163108613e-21 13 9.9641800861337849e-23
		6 8 5.2020023186984706e-11 9 0.0024417463974194934 10 0.99755825350400851 
		11 4.655192484153121e-11 12 2.3830245333505141e-23 13 6.7600210021758484e-25
		6 8 4.6687757735497006e-12 9 0.0019746429922819888 10 0.99802535696298955 
		11 4.0059671181093352e-11 12 1.6963092526835189e-23 13 4.7118321269964646e-25
		6 8 1.0559043284327017e-13 9 9.6251882124923248e-05 10 0.99990374550254102 
		11 2.6152284749017986e-09 12 2.8829573058082113e-21 13 8.0152005566423254e-23
		6 8 5.6352864529985068e-10 9 0.026256329269324079 10 0.97374367016653374 
		11 6.135876535929973e-13 12 1.2214325173783112e-25 13 3.4296305301928395e-27
		6 8 1.4896708514767585e-10 9 0.021083668027248519 10 0.97891633182326343 
		11 5.2093501814703153e-13 12 8.9791323664036779e-26 13 2.4921629179345999e-27
		6 8 1.5338085175410035e-09 9 0.02475653383004655 10 0.97524346463548639 
		11 6.5853176985561063e-13 12 1.3736944757430399e-25 13 3.8950973521374182e-27
		6 8 2.9494645269767477e-08 9 0.079995514223407171 10 0.92000445628193916 
		11 8.3469335033628512e-15 12 7.4033711169467028e-28 13 2.0985159127593177e-29
		6 8 1.1333701375281211e-08 9 0.078102471667210044 10 0.92189751699908118 
		11 7.4101056526612617e-15 12 6.2927056030210863e-28 13 1.7656675697780774e-29
		6 8 3.7650164419364618e-07 9 0.18651404030324942 10 0.81348558319510633 
		11 8.7587782077055568e-17 12 3.4051928064402983e-30 13 9.6495797037819887e-32
		6 8 2.9609711354974876e-06 9 0.38172643229446951 10 0.61827060673439505 
		11 7.0541642185604015e-19 12 1.2290443847244207e-32 13 3.4822065105340155e-34
		7 8 5.4812225232838642e-05 9 0.79428853684630019 10 0.2044001779152671 
		11 7.0233916774509005e-23 12 2.5394485442919063e-37 13 7.1933983184331137e-39 
		28 0.0012564730131998658
		7 8 0.070950329303741455 9 0.92431405633956099 10 7.5196820507376929e-06 
		11 4.3445931046906523e-32 12 6.2882700797424177e-48 13 1.7811045112394087e-49 
		28 0.0047280946746468544
		7 8 0.046022485941648483 9 0.91968341650077978 10 8.0157666476409314e-06 
		11 4.3892278144116825e-32 12 6.5068793902163499e-48 13 1.8179343782095147e-49 
		28 0.034286081790924072
		7 8 0.1298691276460886 9 0.80874073623674647 10 1.906697199802602e-07 
		11 1.4116910715209995e-34 12 8.6042943441296401e-51 13 2.4372065611861516e-52 
		28 0.061389945447444916
		7 8 0.076497025787830353 9 0.81356877522281557 10 1.9682832811790756e-07 
		11 1.3938294221376557e-34 12 8.8684343387586188e-51 13 2.4764274645479065e-52 
		28 0.109934002161026
		7 8 0.22855810821056366 9 0.62208057607140466 10 3.3286579132008258e-09 
		11 3.5249365031511168e-37 12 8.6409417363447208e-54 13 2.4477175421280407e-55 
		28 0.14936131238937378
		7 8 0.16913269460201263 9 0.62517261178433425 10 3.2669353153312695e-09 
		11 3.3471953908975295e-37 12 8.7780886451270484e-54 13 2.4498441245220673e-55 
		28 0.20569469034671783
		7 8 0.27323776483535767 9 0.39269852634011454 10 4.2331725600844304e-11 
		11 6.7974497840166921e-40 12 6.9632814114833659e-57 13 1.9421777213188795e-58 
		28 0.33406370878219604
		7 8 0.2265922874212265 9 0.34917281562064734 10 5.985651121730528e-11 
		11 4.9131059478950605e-40 12 4.1556038926019876e-57 13 1.1455114554384133e-58 
		28 0.42423489689826965
		7 8 0.15021678805351257 9 0.5432845308166484 10 4.5913716061301459e-09 
		11 2.3830602524243814e-37 12 5.1979415349956676e-54 13 1.4338128325358532e-55 
		28 0.30649867653846741
		7 8 0.28435114026069641 9 0.16641256213122479 10 6.5687081366581896e-13 
		11 8.9926139066011886e-43 12 2.7401714927255644e-60 13 7.5473573084254467e-62 
		28 0.54923629760742188
		7 8 0.32870885729789734 9 0.19748806953382841 10 4.7336220175546444e-13 
		11 1.2584766098827119e-42 12 4.6871800362200759e-60 13 1.3064340503826758e-61 
		28 0.4738030731678009
		7 8 0.23838524520397186 9 0.027737513184535101 10 1.2366113436615696e-14 
		11 4.8930052424953723e-46 12 2.9449819565790272e-64 13 8.0112660729073427e-66 
		28 0.73387724161148071
		7 8 0.23965907096862793 9 0.11286938190339657 10 1.205440337805379e-12 
		11 2.8288622276348606e-43 12 5.5802267982213027e-61 13 1.5181129885412811e-62 
		28 0.64747154712677002
		7 8 0.2837720513343811 9 0.046374499797814606 10 6.464322512915568e-15 
		11 1.5250390765187934e-45 12 1.5148538604072767e-63 13 4.1683049485480851e-65 
		28 0.66985344886779785
		7 8 0.18437466025352478 9 0.014237374067305075 10 1.4435798062690773e-15 
		11 9.7200103240329136e-48 12 1.5245355680026499e-66 13 4.1463511240103737e-68 
		28 0.8013879656791687
		7 8 0.19885715939604251 9 0.054801910141935375 10 1.3852064196759066e-13 
		11 5.4696887563045634e-45 12 3.3484438149457019e-63 13 9.1074191942946856e-65 
		28 0.74634093046188354
		7 8 0.098975485083252476 9 3.2872752855043946e-08 10 9.0677094765769416e-19 
		11 1.7051333323527201e-52 12 5.7440080306431763e-73 13 1.5620222384533661e-74 
		28 0.90102448204399477
		7 8 0.13325992256702723 9 0.0023763442877680063 10 9.3095207196216197e-17 
		11 1.0607210594269624e-49 12 3.232197078037228e-69 13 8.7900343566898622e-71 
		28 0.86436373314520465
		5 8 0.057309016821804025 9 2.2566007263160283e-08 10 4.1035353236239437e-20 
		11 1.2139808183730021e-54 28 0.94269096061218882
		7 8 0.07429690142990282 9 9.3901515117948124e-07 10 4.3504283707481917e-18 
		11 8.1776919928030655e-52 12 2.7644380639642976e-72 13 7.5175937187182728e-74 
		28 0.92570215955494584
		7 8 0.1329339202789013 9 0.02915387783968167 10 8.3407473014556884e-15 
		11 5.6100103480285936e-47 12 8.8536382938572177e-66 13 2.4078743799942063e-67 
		28 0.83791220188140869
		5 8 0.015942837906371174 9 3.7453821850915575e-07 10 1.3487560452422902e-19 
		11 3.9897222778451664e-54 28 0.98405678755541015
		7 8 0.20073643326759338 9 0.25196507562740789 10 1.0386955834223201e-10 
		11 1.4922943261045685e-40 12 8.5623290909016488e-58 13 2.3295262611064756e-59 
		28 0.54729849100112915
		7 8 0.13437768816947937 9 0.40884273499377338 10 7.4493113070416134e-09 
		11 6.9201410674132419e-38 12 1.0605935894988538e-54 13 2.8855984840088902e-56 
		28 0.45677956938743602
		7 8 0.047185689210891724 9 0.73578201838717261 10 2.7707829671064656e-07 
		11 9.8390772829547847e-35 12 5.237501609376726e-51 13 1.4455936315644083e-52 
		28 0.21703201532363892
		7 8 0.065573014318943135 9 0.56048180285973959 10 4.2345242083264227e-07 
		11 2.763750990939549e-35 12 1.0629160437066686e-51 13 2.8919023029800747e-53 
		28 0.37394475936889648
		7 8 0.3222673237323761 9 0.060814827680583106 10 4.6610676803499689e-15 
		11 2.1167889600019621e-45 12 2.6001440230872904e-63 13 7.2413304841752973e-65 
		28 0.61691784858703613
		7 8 0.37668308615684509 9 0.1988894045347564 10 5.3717602159602422e-13 
		11 1.447174313389692e-42 12 4.6614357276486848e-60 13 1.3206507526770611e-61 
		28 0.42442750930786133
		7 8 0.35572102665901184 9 0.059293478727335147 10 5.5922538415077201e-15 
		11 2.5453522383939872e-45 12 2.5316885502084348e-63 13 7.1733713189188331e-65 
		28 0.58498549461364746
		7 8 0.31684713065624237 9 0.40520657594476073 10 4.4962485104767135e-11 
		11 7.3882179456685332e-40 12 6.8475530756266293e-57 13 1.9398394954905807e-58 
		28 0.27794629335403442
		7 8 0.38436156511306763 9 0.041245877742744241 10 2.3133163289081174e-14 
		11 2.7416637147848905e-45 12 2.6526837345824819e-63 13 7.1471230358997166e-65 
		28 0.57439255714416504
		7 8 0.43023577332496643 9 0.15810438990392256 10 2.0069925366801618e-12 
		11 1.4341824463180534e-42 12 4.4539738950090403e-60 13 1.1996959169177595e-61 
		28 0.41165983676910411
		7 8 0.39601781964302063 9 0.34826120718916753 10 1.5298030776725949e-10 
		11 6.7888854653727441e-40 12 6.0203548760765828e-57 13 1.6210737655043978e-58 
		28 0.25572097301483154
		7 8 0.027130750939249992 9 0.83090133147516765 10 1.1349821300091063e-05 
		11 3.0860969805673921e-32 12 3.8462169614770097e-48 13 1.0621709804756081e-49 
		28 0.14195656776428223
		7 8 0.019384888932108879 9 0.67611001511392721 10 1.8582816146510396e-05 
		11 9.6199736274031095e-33 12 8.8649225563481185e-49 13 2.4118098073389437e-50 
		28 0.30448651313781738
		7 8 0.010092491745247631 9 0.4823318732139793 10 1.7324338089164974e-06 
		11 1.1361758160646884e-34 12 4.4150460598546379e-51 13 1.2009866062454032e-52 
		28 0.50757390260696411
		5 8 1.6918163463263617e-27 9 1.3123619717763619e-19 10 4.0692569270919402e-30 
		11 2.5578227396019601e-70 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 5 6.2799328852084286e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[6691:6906].w"
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		2 2 2.7830406281391342e-14 28 1
		1 28 1
		1 28 1
		1 28 1
		2 2 1.5915964648662422e-14 28 0.99999999999999989
		2 2 1.2358700090463323e-14 28 1
		7 7 1.5452067806209865e-13 8 3.1073287185105681e-21 9 7.8637970917368467e-11 
		10 0.99997539717074568 11 2.4602750461760117e-05 12 1.0109145948076639e-16 
		13 3.2319862156931195e-19
		7 7 2.0946092233613818e-11 8 4.2233362507691068e-19 9 6.852585340193158e-09 
		10 0.99999941817937577 11 5.7494709294478546e-07 12 7.7259483735479535e-19 
		13 2.493504788100851e-21
		7 7 1.3112877598723649e-12 8 2.3398985799395944e-18 9 3.824245801285752e-09 
		10 0.9999956919088604 11 4.304265582446507e-06 12 1.764991391717994e-17 
		13 5.9185392786033458e-20
		6 8 4.1211807645641155e-17 9 4.0248341499861842e-07 10 0.9999995865687169 
		11 1.0947868010127692e-08 12 5.2921522982263578e-21 13 1.7239753971949565e-23
		6 8 2.2011557861447626e-16 9 2.1973167941351256e-07 10 0.99999970287768725 
		11 7.7390633160504882e-08 12 1.0186556189564744e-19 13 3.4733385543340678e-22
		6 8 2.9870868328347444e-15 9 1.5922571732417487e-05 10 0.99998407725626526 
		11 1.7199932076582873e-10 12 3.2212606627134471e-23 13 1.0592659758924004e-25
		6 8 1.6360387541935955e-14 9 9.070050945590731e-06 10 0.9999909287791815 
		11 1.1698565042626071e-09 12 5.5068541769266897e-22 13 1.9043925291415484e-24
		7 7 3.3148438421254367e-12 8 7.4842376273525012e-14 9 5.1850323483766056e-06 
		10 0.99999481349225194 11 1.4720100241838256e-09 12 9.5067616859659895e-22 
		13 6.9935565943417657e-24
		7 7 5.7301660830708584e-12 8 1.0504862636711272e-15 9 1.2366722451746181e-07 
		10 0.99999977739520296 11 9.8931841236932818e-08 12 1.7981534209404482e-19 
		13 1.3095547398461241e-21
		7 7 6.0266897425593149e-14 8 1.2019263106552318e-17 9 2.2056446833968424e-09 
		10 0.99999456733706515 11 5.4304572299665591e-06 12 3.1025093803091255e-17 
		13 2.2383132708804312e-19
		6 8 6.406088053658932e-16 9 1.4525744867310234e-05 10 0.99998547422493556 
		11 3.0196513887436099e-11 12 1.7917985285028991e-24 13 4.6286321924870201e-27
		4 2 1.9216480343709281e-12 11 8.0109678890494251e-09 12 2.8645947836025695e-08 
		13 0.99999996334116248
		1 13 1
		1 13 0.99999999999999989
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		4 10 0.0024555818567333354 11 0.74036233229364534 12 0.24425882697643797 
		13 0.012923258873183352
		3 15 0.22145646810531616 16 0.61804872751235962 28 0.16049480438232422
		3 15 0.15611696243286133 16 0.70778286457061768 28 0.136100172996521
		3 15 0.083173036575317383 16 0.80312126874923706 28 0.11370569467544556
		3 15 0.034031812101602554 16 0.87199145182967186 28 0.093976736068725586
		3 15 0.014226017519831657 16 0.90911311097443104 28 0.076660871505737305
		3 15 0.073596306145191193 16 0.83990936726331711 28 0.086494326591491699
		3 15 0.037008251994848251 16 0.89211687818169594 28 0.070874869823455811
		3 15 0.0043879877775907516 16 0.93436180241405964 28 0.061250209808349609
		3 15 0.015352613292634487 16 0.9298855597153306 28 0.054761826992034912
		3 15 0.0011379254283383489 16 0.95261518831830472 28 0.046246886253356934
		2 16 0.90678822994232178 28 0.093211770057678223
		3 15 0.00086933339480310678 16 0.89286369120236486 28 0.10626697540283202
		3 15 0.097554817795753479 16 0.83776728808879852 28 0.064677894115447998
		3 15 0.11969709396362305 16 0.80248332023620605 28 0.077819585800170898
		3 15 0.14540958404541016 16 0.75299876928329468 28 0.10159164667129517
		3 15 0.29170817136764526 16 0.5623469352722168 28 0.14594489336013794
		2 16 0.96046614646911621 28 0.039533853530883789
		2 16 0.92356836795806885 28 0.076431632041931152
		2 16 0.82258105278015137 28 0.17741894721984863
		2 16 0.69136714935302734 28 0.30863285064697266
		2 16 0.67899328470230103 28 0.32100671529769897
		2 16 0.82709705829620361 28 0.17290294170379639
		2 16 0.7099878191947937 28 0.2900121808052063
		2 16 0.83942675590515137 28 0.16057324409484863
		2 16 0.93643569946289063 28 0.063564300537109375
		3 15 0.0047464529052376747 16 0.87574867811053991 28 0.11950486898422241
		3 15 0.15336430072784424 16 0.74380570650100708 28 0.10282999277114868
		3 15 0.23154985904693604 16 0.638214111328125 28 0.13023602962493896
		3 15 0.32695853710174561 16 0.51802253723144531 28 0.15501892566680908
		3 15 0.2318146824836731 16 0.64347189664840698 28 0.12471342086791992
		3 15 0.31249195337295532 16 0.51984208822250366 28 0.16766595840454102
		3 15 0.40530329942703247 16 0.39798563718795776 28 0.19671106338500979
		3 15 0.44600206613540649 16 0.30086928606033325 28 0.25312864780426025
		3 15 0.36611080169677734 16 0.41917580366134644 28 0.21471339464187622
		3 15 0.50321510434150696 16 0.18700239062309265 28 0.30978250503540039
		3 15 0.47661679983139038 16 0.27238398790359497 28 0.25099921226501465
		3 15 0.50766204297542572 16 0.10533364117145538 28 0.3870043158531189
		3 15 0.49274569749832153 16 0.041625618934631348 28 0.46562868356704706
		3 15 0.51767416298389435 16 0.093957230448722839 28 0.38836860656738276
		3 15 0.46150758862495422 16 0.21427252888679504 28 0.32421988248825073
		3 15 0.44310401380062103 16 0.14394058287143707 28 0.41295540332794189
		3 15 0.48870452493429184 16 0.031387723982334137 28 0.47990775108337402
		4 1 9.8375356472057973e-11 15 0.47545874118804932 16 0.085004568099975586 
		28 0.43953669071197504
		3 15 0.52077171206474304 16 0.15745618939399719 28 0.32177209854125977
		3 15 0.43932310305535793 16 0.0083251241594552994 28 0.55235177278518677
		3 15 0.42518332600593567 16 0.36743244528770447 28 0.20738422870635986
		3 15 0.35489961504936218 16 0.46753868460655212 28 0.17756170034408569
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 16 0.025184798985719681 28 0.97481520101428021
		2 16 0.17183014750480652 28 0.82816985249519348
		2 16 0.87193149328231812 28 0.12806850671768188
		2 16 0.94518125057220459 28 0.05481874942779541
		2 16 0.97006827592849731 28 0.029931724071502682
		2 16 0.99692994356155396 28 0.0030700564384460449
		3 15 0.00012231509026605636 16 0.99809258540335577 28 0.0017850995063781736
		3 15 0.04276680201292038 16 0.9546857550740242 28 0.0025474429130554199
		2 16 0.34348785877227783 28 0.65651214122772217
		2 16 0.93481063842773438 28 0.065189361572265625
		2 16 0.97239392995834351 28 0.027606070041656494
		2 16 0.93858355283737183 28 0.061416447162628174
		3 16 0.97432019514963031 17 0.00037810998037457466 28 0.025301694869995117
		2 16 0.94180452823638916 28 0.05819547176361084
		2 16 0.89326798915863037 28 0.10673201084136963
		2 16 0.88761478662490845 28 0.11238521337509155
		2 16 0.94552832841873169 28 0.054471671581268311
		2 16 0.82176858186721802 28 0.17823141813278198
		2 16 0.81310021877288829 28 0.18689978122711171
		2 16 0.89960765838623047 28 0.10039234161376953
		2 16 0.71116518974304199 28 0.28883481025695801
		2 16 0.69891351461410522 28 0.30108648538589478
		2 16 0.55399584770202637 28 0.44600415229797363
		2 16 0.56816339492797852 28 0.43183660507202148
		2 16 0.37070521712303162 28 0.62929478287696838
		2 16 0.54539036750793457 28 0.45460963249206549
		2 16 0.37402138113975525 28 0.62597861886024475
		2 16 0.36572027206420898 28 0.63427972793579102
		2 16 0.68955069780349731 28 0.31044930219650269
		2 16 0.73713767528533936 28 0.26286232471466064
		2 16 0.59999281167984009 28 0.40000718832015991
		2 16 0.75833258032798767 28 0.2416674196720123
		2 16 0.58303600549697876 28 0.41696399450302124
		2 16 0.8628060221672057 28 0.1371939778327943
		2 16 0.83592218160629272 28 0.16407781839370728
		2 16 0.90922427177429199 28 0.090775728225708022
		2 16 0.92037010192871094 28 0.079629898071289063
		2 16 0.93174251914024353 28 0.06825748085975647
		2 16 0.80580234527587891 28 0.19419765472412109
		2 16 0.79858940839767456 28 0.20141059160232544
		2 16 0.88331496715545654 28 0.11668503284454346
		3 16 0.95566716720350087 17 0.0038084096740931273 28 0.040524423122405999
		2 16 0.95189201831817627 28 0.04810798168182373
		3 16 0.96047439053654671 17 0.029882889240980148 28 0.0096427202224731445
		3 16 0.96167720761150122 17 0.0048944214358925819 28 0.033428370952606201
		3 16 0.95873991772532463 17 0.028279978781938553 28 0.012980103492736816
		3 16 0.89548769644279458 17 0.095230855047702789 28 0.0092814485095026322
		3 16 0.90678419081237038 17 0.080793187022209167 28 0.012422622165420449
		3 16 0.9619465060532093 17 0.01957361027598381 28 0.018479883670806885
		3 16 0.96774054830893874 17 0.0023432248272001743 28 0.029916226863861084
		3 16 0.9730440080165863 17 0.0023674461990594864 28 0.024588545784354206
		3 15 0.0070404410362243652 16 0.91661441326141357 28 0.076345145702362061
		3 16 0.96418403275310993 17 0.013005984947085381 28 0.022809982299804688
		1 28 1
		3 15 0.17341375350952148 16 0.006833881139755249 28 0.81975236535072327
		2 15 0.10651833564043045 28 0.89348166435956955
		2 15 0.15252391993999481 28 0.8474760800600053
		2 15 0.08469901978969574 28 0.91530098021030426
		3 15 0.22705930471420288 16 0.004680335521697998 28 0.76826035976409912
		3 15 0.20104963893774652 16 2.8495904302872077e-07 28 0.79895007610321045
		2 15 0.12295548617839813 28 0.87704451382160198
		3 15 0.30057638883590698 16 0.011343002319335938 28 0.68808060884475708
		3 15 0.30942431092262268 16 0.031900674104690552 28 0.65867501497268677
		2 15 0.28100863099098206 28 0.71899136900901794
		2 15 0.17559236288070679 28 0.82440763711929321
		3 15 0.40350584499537945 16 0.014698969200253487 28 0.58179518580436707
		3 15 0.39652079343795776 16 0.052437931299209595 28 0.55104127526283264
		2 15 0.37653267383575439 28 0.62346732616424561
		2 15 0.18773296475410461 28 0.81226703524589539
		2 15 0.23820675909519196 28 0.76179324090480804
		2 15 0.31442290544509888 28 0.68557709455490112
		2 15 0.1051035076379776 28 0.89489649236202251
		2 15 0.14342284202575684 28 0.85657715797424316
		2 15 0.049019988626241684 28 0.95098001137375821
		2 15 0.072388708591461182 28 0.92761129140853882
		3 15 0.46228525042533875 16 0.13120177388191223 28 0.40651297569274902
		3 15 0.38543364405632019 16 0.08511313796043396 28 0.52945321798324585
		3 15 0.43566685914993286 16 0.18418228626251221 28 0.38015085458755493
		3 15 0.47170352935791016 16 0.24680125713348389 28 0.28149521350860596
		3 15 0.42804485559463501 16 0.31570339202880859 28 0.2562517523765564
		2 15 0.096690595149993896 28 0.9033094048500061
		2 15 0.047657672315835953 28 0.95234232768416416
		2 15 0.06474863737821579 28 0.93525136262178421
		2 15 0.031046319752931595 28 0.96895368024706841
		2 15 0.0085054906085133553 28 0.99149450939148676
		2 15 0.015260933898389339 28 0.98473906610161066
		2 15 0.009917587973177433 28 0.99008241202682257
		2 15 0.0027987433131784201 28 0.99720125668682158
		2 15 0.00054816924966871738 28 0.99945183075033128
		2 15 0.0024269809946417809 28 0.99757301900535822
		2 15 0.00026705648633651435 28 0.99973294351366349
		2 1 1.5954878043733522e-11 28 1
		2 15 0.024123361334204674 28 0.97587663866579533
		2 15 0.036021430045366287 28 0.96397856995463371
		2 15 0.055280312895774841 28 0.94471968710422516
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		3 16 0.71616092682198984 17 0.28033351898193359 28 0.0035055541960765657
		3 16 0.80798551805893126 17 0.18614691495895386 28 0.0058675669821148801
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		2 17 0.086044800966914969 18 0.91395519903308498
		2 17 0.36645591657463839 18 0.63354408342536173
		2 17 0.76667167832641603 18 0.23332832167358408
		2 17 0.92242499047043469 18 0.07757500952956542
		2 17 0.92150418862225814 18 0.078495811377741836
		1 19 1;
	setAttr ".wl[6907:7213].w"
		1 19 1
		2 18 0.091268582056414693 19 0.90873141794358536
		2 18 0.083942089609193277 19 0.91605791039080664
		2 18 0.36798359393330549 19 0.63201640606669462
		2 18 0.35690024802470088 19 0.64309975197529923
		3 18 0.00091128843818993259 19 0.0025303643123845872 20 0.99655834724942549
		3 18 0.00051467888778861071 19 0.0020257311325267034 20 0.99745958997968465
		1 20 1
		1 20 0.99999999999999989
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		3 18 6.9961131984181196e-05 19 0.00015190190149891468 20 0.99977813696651685
		3 18 0.00069505107287420561 19 0.0017950687336931708 20 0.99750988019343267
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 8 2.6461239933445381e-11 9 6.3458611589872269e-22 10 9.9181359558483782e-39 
		28 0.99999999997353861
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 1.7115710267270579e-07 9 4.5226167403216098e-07 10 4.1645192204554939e-19 
		11 3.4749119165838501e-64 28 0.99999937658122318
		5 8 5.1074694201567526e-07 9 3.7014948390339287e-07 10 2.4094891102144446e-20 
		11 2.3987600695725648e-64 28 0.99999911910357409
		5 8 4.7500339779168049e-06 9 1.2744618900166496e-05 10 4.2542225166922675e-17 
		11 6.0147408926186252e-61 28 0.99998250534712185
		5 8 1.3224705436730151e-05 9 1.0842597237734698e-05 10 2.5749258665035547e-18 
		11 4.3443118569121851e-61 28 0.99997593269732543
		5 8 9.6828567003123193e-05 9 0.00026502556214335097 10 3.7817312797592095e-15 
		11 7.5551134892935267e-58 28 0.99963814587084976
		5 8 0.0002505934359472944 9 0.000238517685378475 10 2.421962630540008e-16 
		11 5.8202587382252843e-58 28 0.99951088887867401
		5 8 5.4779863112148069e-05 9 1.3503829451981063e-06 10 8.6808988533398639e-20 
		11 1.1840557415374169e-61 28 0.99994386975394267
		5 8 0.0025462722405791283 9 3.2550122694209208e-05 10 8.7678335127710482e-18 
		11 1.681293846507935e-58 28 0.99742117763672666
		7 8 0.0051688733510673046 9 0.0038203233350094646 10 2.9997498182106252e-13 
		11 7.5759137051028805e-55 12 2.6087437924925968e-76 13 5.5977026204916811e-78 
		28 0.99101080331362323
		5 8 2.3236736713027073e-06 9 4.2716655296308083e-08 10 7.5757817725984547e-22 
		11 6.1878234733912341e-65 28 0.99999763360967342
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		2 15 0.0083267185837030411 28 0.99167328141629696
		2 15 0.0012358975363895297 28 0.99876410246361047
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		7 8 0.30463252594520601 9 1.4252500477596186e-06 10 2.9375963592715678e-16 
		11 1.2154962201750818e-49 12 6.1771240812349197e-69 13 1.6649351828773754e-70 
		28 0.69536604880474595
		7 8 0.41092401742935181 9 0.018611597188651352 10 2.6199908463704521e-14 
		11 6.9579877266166946e-47 12 1.7809845506259048e-65 13 4.7990096742656939e-67 
		28 0.57046438538197064
		7 8 0.43324559492234033 9 7.3701747169252485e-05 10 1.6704325720651746e-14 
		11 7.2823339550490199e-49 12 3.7102907742650302e-68 13 1.0000150605859273e-69 
		28 0.56668070333047371
		7 8 0.29905736365934393 9 2.2539035251943262e-08 10 1.9261653295959825e-16 
		11 1.2154341743566552e-51 12 7.0857939707090486e-72 13 1.9103282031486715e-73 
		28 0.7009426138016206
		7 8 0.5116723874911272 9 0.090489288198410567 10 2.0668571278938897e-12 
		11 3.4633194817815014e-44 12 3.3793444817890506e-62 13 9.1031447223165429e-64 
		28 0.39783832430839527
		7 8 0.56276272261762139 9 0.050785377375801743 10 1.2362794147257044e-12 
		11 3.5984359279255037e-46 12 9.2328236475520906e-65 13 2.4877140581697268e-66 
		28 0.38645190000534069
		7 8 0.48035379155040225 9 0.27394596816873762 10 1.45667245090713e-10 
		11 1.5389777953116804e-41 12 4.8177672900738921e-59 13 1.2973482685803394e-60 
		28 0.24570024013519284
		7 8 0.43816999870767892 9 0.0069986777380108833 10 2.0414280813903008e-15 
		11 4.2579372653789997e-51 12 2.4849825134685799e-71 13 6.6995063636252948e-73 
		28 0.55483132355430809
		5 8 0.29712347703806519 9 4.3764329663080755e-09 10 2.2539401921621681e-17 
		11 6.5896760192210681e-54 28 0.70287651858550182
		5 8 0.16345531391185333 9 7.1288699656834112e-11 10 2.0498671645212378e-19 
		11 7.6985033314497715e-57 28 0.83654468601685794
		5 8 0.065448742416280986 9 8.0114623956422793e-13 10 1.3327950667740281e-21 
		11 5.5517134945018589e-60 28 0.9345512575829179
		5 8 0.15841969145930154 9 7.4975509293877156e-12 10 1.1746942686154811e-20 
		11 2.2571868813079269e-59 28 0.84158030853320087
		5 8 0.063952207850509854 9 8.3000869315612836e-14 10 7.6076525058410984e-23 
		11 1.339093537219808e-62 28 0.93604779214940714
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		7 8 0.0001292653879425934 9 0.18485655534612541 10 1.1495395080678801e-07 
		11 1.0697767496696272e-36 12 1.6711160255508621e-53 13 4.5452635732317957e-55 
		28 0.8150140643119812
		1 28 1
		1 28 0.99999999999999989
		6 8 1.2315469861873959e-14 9 0.0053253628745288436 10 0.99467463712518156 
		11 2.7724263299013208e-13 12 1.2231341035987722e-26 13 2.2115339236235047e-29
		6 8 6.7195573239312595e-14 9 0.004316229226647812 10 0.995683770772956 
		11 3.2896953893525085e-13 12 2.6375070358489726e-27 13 3.1305048310010663e-29
		6 8 8.0897309084781835e-13 9 0.0026605822253012901 10 0.99733941777354174 
		11 3.4801217321194227e-13 12 1.8953426754856315e-26 13 3.8303255287256953e-28
		6 8 2.2484599667347492e-14 9 0.0002296236837498653 10 0.99977037628710186 
		11 2.9125789130876923e-11 12 3.8941304792547462e-24 13 7.8879447247841505e-26
		6 8 6.4451323371325074e-12 9 0.0061284440306796145 10 0.99387155596245702 
		11 4.1827281885314535e-13 12 5.2022579933395836e-26 13 1.3347255906987506e-27
		6 8 1.8705483651681869e-11 9 0.0084291771347320445 10 0.99157082284655873 
		11 3.7923285895893152e-15 12 8.7793781929319268e-29 13 1.7692572177728685e-30
		6 8 3.391334784203601e-11 9 0.014773711467892166 10 0.98522628849771654 
		11 4.7789035404159124e-13 12 6.6392826549005201e-26 13 1.8098481024956144e-27
		6 8 1.9030183525314568e-13 9 0.00054342499993330286 10 0.99945657496641793 
		11 3.3458493924121452e-11 12 1.0204338606078562e-23 13 2.6195971824184991e-25
		6 8 1.0196929972325693e-12 9 0.0013264547080511476 10 0.99867354525352758 
		11 3.7401608762381783e-11 12 1.2816453843849742e-23 13 3.4955544897344287e-25
		6 8 2.1897205056130885e-14 9 6.1681978729084765e-05 10 0.99993831554360535 
		11 2.4776436597081842e-09 12 2.2191295987955738e-21 13 6.0564094965325989e-23
		6 8 1.6438439666085446e-12 9 0.013066678214049983 10 0.9869333217843026 
		11 3.5961108130437731e-15 12 1.1699487452852682e-29 13 1.3857740885347612e-31
		6 8 2.4920291705760135e-13 9 0.01618035712111271 10 0.98381964287863499 
		11 3.0520733615969879e-15 12 5.7441861365869782e-29 13 1.0340399110069254e-31
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[7214:7667].w"
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 17 1
		1 17 1
		1 28 1
		2 8 0.0057503581047058105 28 0.99424964189529419
		2 8 0.01102215051651001 28 0.98897784948348999
		1 28 1
		2 8 0.0034600258804857731 28 0.99653997411951423
		1 28 1
		2 8 0.014782954007387161 28 0.98521704599261284
		2 8 0.025886297225952148 28 0.97411370277404785
		2 8 0.050169140100479126 28 0.94983085989952087
		2 8 0.092661098481665496 28 0.90733890151833452
		2 8 0.037639226764440536 28 0.96236077323555935
		2 8 0.088915541768074036 28 0.91108445823192608
		2 8 0.018661651760339737 28 0.98133834823966026
		2 8 0.05989321693778038 28 0.94010678306221962
		2 8 0.13109385967254639 28 0.86890614032745361
		2 8 0.085484303534030914 28 0.91451569646596909
		2 8 0.17447246611118317 28 0.82552753388881683
		4 8 0.28198033571243286 9 7.2244817974423992e-17 10 4.5043943990435597e-27 
		28 0.71801966428756714
		5 8 0.335833340883255 9 4.4896786450922426e-15 10 5.6793631748972918e-25 
		11 2.0105102971079803e-68 28 0.66416665911674055
		4 8 0.21986554563045502 9 9.2258262304216126e-19 10 2.9182980074259157e-29 
		28 0.78013445436954498
		4 8 0.30512666702270508 9 4.7947873224583997e-17 10 2.5528158429227339e-27 
		28 0.69487333297729492
		2 8 0.010410928167402744 28 0.98958907183259726
		1 28 1
		2 8 0.0047171907499432564 28 0.99528280925005674
		2 8 0.00048724413500167429 28 0.99951275586499833
		1 28 1
		2 8 3.9339064983323624e-07 28 0.99999960660935017
		2 8 0.0041715381667017937 28 0.99582846183329821
		2 8 0.00084316730499267578 28 0.99915683269500732
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 8 0.15803477168083191 28 0.84196522831916809
		2 8 0.15102085471153259 28 0.84897914528846741
		2 8 0.06626582145690918 28 0.93373417854309082
		2 8 0.096679508686065674 28 0.90332049131393433
		2 8 0.1133575439453125 28 0.8866424560546875
		2 8 0.2326863706111908 28 0.7673136293888092
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 1 6.5209881765226907e-12 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 1 3.6688232313286662e-11 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 8 0.19098404049873352 28 0.80901595950126637
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		5 8 0.0014553779119550708 9 3.6272704219502793e-08 10 2.4316043961107828e-21 
		11 1.0519046131214028e-56 28 0.99854458581534078
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1;
	setAttr ".wl[7668:8167].w"
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[8168:8667].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[8668:9167].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1;
	setAttr ".wl[9168:9324].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		7 7 3.7691133223252e-22 8 2.5620605297171013e-32 9 1.8734981580579295e-20 
		10 0.39125947261594091 11 0.60873950105874264 12 1.0056695413169268e-06 
		13 2.0655775299568644e-08
		7 7 3.9377445686481343e-23 8 3.1671164100523742e-31 9 5.2491957716899158e-20 
		10 0.38941081091580498 11 0.61058684932118568 12 2.2800982077427843e-06 
		13 5.9664801552809903e-08
		7 7 3.5033159141765665e-26 8 1.3406500179546859e-28 9 3.1225891836583432e-19 
		10 0.37790799438595007 11 0.62208825932781875 12 3.6410375538661345e-06 
		13 1.0524867733125948e-07
		7 7 6.1460446642765416e-26 8 4.2303782937496796e-29 9 3.1567074721017753e-19 
		10 0.38192687606959574 11 0.61806955039113431 12 3.4739208982190665e-06 
		13 9.9618371932898419e-08
		7 7 1.2892402444212327e-26 8 2.0846875927461398e-28 9 2.7512104754009746e-19 
		10 0.37393558209927741 11 0.62606087699320156 12 3.446912997317476e-06 
		13 9.3994523700284058e-08
		7 7 3.7731526790362607e-27 8 1.2973947043129414e-28 9 1.4668190134864752e-19 
		10 0.37353495318091523 11 0.62646199124553303 12 2.9903549856545916e-06 
		13 6.5218566228639852e-08
		7 7 7.0926125526128571e-28 8 2.8293641284527395e-29 9 1.7574380714606768e-20 
		10 0.37380643282682269 11 0.62619108863807416 12 2.4453346521179612e-06 
		13 3.3200451147599575e-08
		7 7 1.4392188668702004e-25 8 9.5641833643182674e-30 9 2.2175498375916603e-19 
		10 0.38264237038375704 11 0.61735452730238838 12 3.0168186413015749e-06 
		13 8.5495213348024309e-08
		7 7 2.1899197792512484e-24 8 1.8879424564650576e-30 9 1.4441050992960679e-19 
		10 0.38515441043836407 11 0.61484303434039389 12 2.4861562586056683e-06 
		13 6.906498328902058e-08
		6 7 4.3595399900126683e-22 8 1.2949320126366901e-33 9 3.3605563604000293e-20 
		10 0.38976183195626019 11 0.61023816631903793 13 1.7247018365186418e-09
		6 7 4.1552158182300773e-22 8 1.3131581373054076e-34 9 3.6658894919180371e-20 
		10 0.3898869225303902 11 0.61011307616194743 13 1.3076623884722122e-09
		6 7 9.9362874875715046e-24 8 2.2250480687111787e-36 9 1.1451472179653768e-21 
		10 0.39448772166345081 11 0.60551227825776599 13 7.8783250261917203e-11
		6 7 1.182718745807643e-25 8 2.0893813471030113e-38 9 1.7730484661426874e-23 
		10 0.39905948135397173 11 0.60094051864305786 13 2.9704209249706843e-12
		6 7 1.6004286336897519e-26 8 9.4601167392821765e-38 9 2.3899294330491462e-24 
		10 0.3983076724197927 11 0.60169232757864299 13 1.564352007076183e-12
		7 7 4.0829451652755213e-27 8 1.7943044596600821e-36 9 2.2060898434803139e-24 
		10 0.4017955937647909 11 0.5982044062168832 12 1.7918430628149906e-11 
		13 4.0750003446557491e-13
		6 7 2.0702996894474266e-28 8 8.9483647974262566e-36 9 2.136349133169813e-24 
		10 0.39903175426262177 11 0.60096824573321572 13 4.1625532272189069e-12
		6 7 3.2935151133674129e-29 8 2.6601292685497394e-34 9 7.1311407444012224e-24 
		10 0.39264033479471783 11 0.60735966518616324 13 1.9118905303016103e-11
		6 7 2.1496015062163788e-27 8 1.5659812636735209e-32 9 3.0044342831054427e-22 
		10 0.38118469718531206 11 0.61881530246221472 13 3.5247318060246575e-10
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		6 7 8.1009049532880305e-26 8 5.3281581300638051e-31 9 6.8652846055215209e-21 
		10 0.37144040247261967 11 0.62855959298385256 13 4.543527724873929e-09
		6 7 4.3653977263121463e-27 8 3.9100774592873142e-30 9 4.8107274307662687e-21 
		10 0.37187111423221053 11 0.62812887132110395 13 1.4446685541483332e-08
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 5 6.8325452527214142e-12 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		7 7 2.7932129029949381e-28 8 1.0691085439760049e-30 9 3.2795047893025791e-21 
		10 0.1774713990490078 11 0.82245333526547959 12 7.3136678873572184e-05 
		13 2.1290066388898153e-06
		7 7 4.8653249235879622e-28 8 3.3379797707988684e-31 9 3.3210673727836141e-21 
		10 0.17907976914584217 11 0.82084526176498074 12 7.2864052148720901e-05 
		13 2.1050370285396589e-06
		7 7 2.9188313589375631e-29 8 1.0130678082058981e-30 9 1.5095242873253021e-21 
		10 0.17395487603750318 11 0.82598040239583559 12 6.333340059594922e-05 
		13 1.3881660651583409e-06
		7 7 1.0183164713618792e-28 8 1.6621040859455916e-30 9 2.885952686258682e-21 
		10 0.17581704676266666 11 0.82411131830018935 12 6.9721324197068041e-05 
		13 1.913612946835559e-06
		7 7 1.0278084052437872e-27 8 7.3749696440948379e-32 9 2.2967702688222896e-21 
		10 0.17945581623009602 11 0.82047788901280005 12 6.4454784154351766e-05 
		13 1.8399729494841403e-06
		7 7 1.4554380923444801e-26 8 1.3968132846665351e-32 9 1.4433101852820079e-21 
		10 0.17887852321544884 11 0.82106585413851696 12 5.4108983607642808e-05 
		13 1.5136624264152773e-06
		7 7 2.9523370926391414e-24 8 1.8133937383013663e-34 9 1.8655360772232199e-22 
		10 0.17765698507284919 11 0.82232002891307387 12 2.252129344720966e-05 
		13 4.6472062970354027e-07
		6 7 3.2736132945587646e-24 8 8.2107470611069583e-36 9 3.3039605214165325e-22 
		10 0.17393274758770849 11 0.82606721669331373 13 3.5718977775963316e-08
		6 7 1.2074279079460523e-28 8 5.9641797878323145e-40 9 2.34165413358119e-26 
		10 0.21076254373323489 11 0.78923745621902353 13 4.7741569608605227e-11
		6 7 2.8741869122208639e-29 8 1.2546542772478952e-38 9 2.1250226328743384e-26 
		10 0.21073043082427051 11 0.78926956916427793 13 1.1451617831237377e-11
		6 7 1.2678236234056806e-30 8 6.6267708246108818e-38 9 1.9922924124737137e-26 
		10 0.20137895911267245 11 0.79862104076489693 13 1.2243062030836759e-10
		1 28 1
		1 28 1
		1 28 1
		6 7 3.7421294540494794e-28 8 3.316213910016131e-33 9 5.6607148653471839e-23 
		10 0.15780738240632605 11 0.84219249602814195 13 1.2156553199480111e-07
		6 7 2.0919315246025399e-29 8 2.6179054234005669e-32 9 4.1941564943131116e-23 
		10 0.16105104485503158 11 0.83894860162955653 13 3.5351541191951476e-07
		1 28 1
		7 7 2.780224506489856e-25 8 2.3201966644490345e-33 9 5.1704189806805179e-22 
		10 0.17854295910456122 11 0.8214048251240742 12 5.0874946063949973e-05 
		13 1.3408253007323847e-06
		7 7 4.8741813406603137e-30 8 2.0831927116766386e-31 9 1.6611412977857197e-22 
		10 0.16895346959429003 11 0.83099068015644662 12 5.5101048677304659e-05 
		13 7.4920058602117452e-07
		6 7 3.3049230659221094e-24 8 7.7509227442099227e-37 9 3.8147232718282888e-22 
		10 0.18140616563824438 11 0.81859380372006096 13 3.0641694639271329e-08
		6 7 8.2161003735625795e-26 8 1.3279913996777094e-38 9 1.2310963264202064e-23 
		10 0.19240191500977041 11 0.80759808344923845 13 1.540991072762864e-09
		6 7 1.0901215580290203e-27 8 1.3626413315352244e-40 9 2.1162230468281957e-25 
		10 0.20642576946781854 11 0.79357423047392373 13 5.8257800057865443e-11
		6 7 1.8240092788191106e-31 8 2.0096160878909345e-36 9 7.1336267331532309e-26 
		10 0.18499984790640969 11 0.81500015168026085 13 4.1332948543091022e-10
		6 7 1.0312930574981627e-29 8 1.0135404095935157e-34 9 2.5876228830037678e-24 
		10 0.16676367555169441 11 0.83323631635971873 13 8.0885868637660873e-09
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		7 7 3.1074049419869949e-18 8 1.9710761996950416e-24 9 5.5920039514804438e-14 
		10 0.93476675135068032 11 0.065233248580874786 12 6.6559670757876788e-11 
		13 1.8292942076190837e-12
		7 7 4.4116797254603744e-17 8 3.2699689748846568e-25 9 2.0454859990054654e-14 
		10 0.9385644281022737 11 0.061435571840783347 12 5.5486605344251076e-11 
		13 1.4358608013161538e-12
		7 7 1.9948751214433803e-19 8 9.8550602133879397e-24 9 8.7150123405908047e-14 
		10 0.93212809373621852 11 0.067871906176541694 12 8.4777414090343255e-11 
		13 2.3753051553926896e-12
		7 7 6.0708765131788575e-20 8 4.179928651575936e-23 9 1.2128089280499982e-13 
		10 0.93175365101875485 11 0.068246348881864996 12 9.6522920916602713e-11 
		13 2.7360231329450731e-12
		7 7 3.2043977955033802e-20 8 1.2272307240294344e-22 9 1.15851095241365e-13 
		10 0.93257357360771487 11 0.067426426287932134 12 1.0133959326486209e-10 
		13 2.8976443810258054e-12
		7 7 1.2842025935235831e-20 8 2.0131734949704048e-22 9 1.0806227154149944e-13 
		10 0.9350860685703245 11 0.064913931337376427 12 8.9765989539009003e-11 
		13 2.4251613025670521e-12
		7 7 4.2616532331910958e-21 8 1.4207492714243601e-22 9 6.4984978464322069e-14 
		10 0.93877545293612341 11 0.06122454699232719 12 6.9966983627966817e-11 
		13 1.5175053137060752e-12
		7 7 1.2279082344572782e-21 8 3.5021466490727628e-23 9 9.5947848201106519e-15 
		10 0.94248426795289109 11 0.057515731994825944 12 5.157004355327538e-11 
		13 7.03222141012985e-13
		7 7 1.55420875795564e-20 8 5.8406127540982246e-24 9 3.0349740886312223e-15 
		10 0.94548732712176142 11 0.054512672839451125 12 3.8514268574525778e-11 
		13 2.702768852052109e-13
		7 7 3.3669849746597363e-19 8 9.151271709082414e-25 9 4.7193985133753563e-15 
		10 0.94532189338235173 11 0.054678106591421353 12 2.6139077360431195e-11 
		13 8.3071557622580774e-14
		7 7 3.1838742394529189e-16 8 2.9909313057054554e-26 9 7.292355153314994e-15 
		10 0.94022370231610353 11 0.059776297659690565 12 2.3715426780029304e-11 
		13 4.8294490926130605e-13
		7 7 3.2554541966588002e-23 8 9.5319105177986751e-29 9 1.0787829373537435e-18 
		10 0.9377160304197919 11 0.062283969580064706 12 1.4295703767417237e-13 
		13 3.986692084720684e-16
		7 7 3.6771466788252787e-22 8 9.1074616717974202e-30 9 1.0494884945820391e-18 
		10 0.93124892257804248 11 0.068751077421909265 12 4.8284661406920794e-14 
		13 6.2544953001395872e-17
		7 7 3.8891920325635253e-21 8 1.1052154966163697e-26 9 8.6209508455108622e-17 
		10 0.94446865334960717 11 0.055531346647852947 12 2.5323706746978113e-12 
		13 7.3007019432819368e-15
		7 7 4.8696352830386445e-21 8 2.2128632359742764e-30 9 1.0185436702965109e-18 
		10 0.925929468701013 11 0.074070531298979531 12 7.3937966657434156e-15 
		13 6.8274648936805144e-18
		7 7 1.7366285481165496e-20 8 1.6960503348203831e-31 9 1.1564058127236172e-18 
		10 0.92403794596126176 11 0.075962054038707996 12 3.0232177303818216e-14 
		13 2.1742853069560397e-17
		7 7 3.0540591592969317e-20 8 1.6189123176551091e-32 9 2.0480967159702307e-18 
		10 0.92563140618794515 11 0.074368593811998993 12 5.5769827410799958e-14 
		13 9.2811098484833476e-17
		7 7 4.0057760448033151e-18 8 2.4825924887201232e-30 9 2.0074403194107962e-16 
		10 0.93243305669165844 11 0.067566943306875835 12 1.4630397273277432e-12 
		13 2.5064128265286313e-15
		7 7 3.7229180611144659e-16 8 2.9101084693594614e-28 9 1.374743576150061e-14 
		10 0.93494054804912052 11 0.065059451931352194 12 1.9478443817938384e-11 
		13 3.4824431148186929e-14
		7 7 3.9052894119640159e-16 8 1.9597798379957344e-27 9 1.2549029328930119e-14 
		10 0.93949603803558113 11 0.060503961960769619 12 3.5927439936029735e-12 
		13 4.355075115966253e-14
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 7 3.1452860286800979e-20 8 2.193238345619765e-26 9 8.8193683812676011e-16 
		10 0.82261019473489927;
	setAttr ".wl[9324:9481].w"
		3 11 0.177389802418353 12 2.7704120457686878e-09 13 7.6334807516405909e-11
		7 7 4.8571659685579313e-19 8 3.6778857174566306e-27 9 3.2406159677346911e-16 
		10 0.82949548250118876 11 0.17050451503026459 12 2.4061077683032676e-09 
		13 6.2438606139792311e-11
		7 7 1.9922230603068223e-21 8 1.0933475675372363e-25 9 1.3568836307824704e-15 
		10 0.81799993937166982 11 0.18200005706024411 12 3.4705752508713317e-09 
		13 9.7509401034147209e-11
		7 7 6.6551938029750797e-22 8 4.5978797832426037e-25 9 1.858590882417054e-15 
		10 0.81666730966788648 11 0.18333268619679949 12 4.021013614715861e-09 
		13 1.1429852904361857e-10
		7 7 1.1471104740590927e-23 8 3.7343240807147616e-25 9 1.3673127835342752e-16 
		10 0.83330073586615527 11 0.16669926175717992 12 2.3447552239425404e-09 
		13 3.1909338954099744e-11
		7 7 4.6386709607934861e-23 8 1.5628807423924752e-24 9 9.8305990224855439e-16 
		10 0.82648085183618469 11 0.17351914500237822 12 3.0942633076136874e-09 
		13 6.7172635735237731e-11
		6 7 2.6949595814247566e-21 8 9.8519203529952464e-27 9 6.9918468459628056e-17 
		10 0.84534202541524983 11 0.1546579745812996 13 3.4504993637380829e-12
		6 7 1.2328873470941268e-22 8 6.0454119131356445e-26 9 4.2470814647050717e-17 
		10 0.84118495657853398 11 0.15881504340916774 13 1.2298292446380151e-11
		7 7 1.9989741392388941e-22 8 1.6608130808195514e-33 9 1.7529810012158152e-20 
		10 0.8099783616733649 11 0.19002163832515884 12 1.475490197276757e-12 
		13 1.0486340638335641e-15
		7 7 5.5128277731139746e-23 8 2.4698107540498819e-32 9 1.5883450087328331e-20 
		10 0.81414553619931151 11 0.18585446380034978 12 3.3826903681345471e-13 
		13 3.0886402873495486e-16
		7 7 7.2838843432168781e-20 8 3.1606621661791781e-32 9 4.8667219961238184e-18 
		10 0.81528036287243522 11 0.1847196370686662 12 5.8798304334192054e-11 
		13 1.0032110093290001e-13
		7 7 6.5350308644512208e-22 8 2.350343666413765e-34 9 5.7695598584381366e-20 
		10 0.80662774832881434 11 0.19337225166887256 12 2.3093983750334848e-12 
		13 3.8099660919417746e-15
		7 7 3.9062380715642719e-18 8 3.2935144906940542e-28 9 1.1748802926226458e-16 
		10 0.83468547135312288 11 0.16531452761019025 12 1.0159558568179806e-09 
		13 2.0730926542229914e-11
		6 7 4.7727020362516274e-18 8 2.0081102225651733e-29 9 2.0832557914950779e-16 
		10 0.83395177225686379 11 0.16604822774131389 13 1.822127164711778e-12
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		7 7 3.6107687615390214e-22 8 1.3820663303892897e-24 9 1.7935604866571749e-15 
		10 0.81730232718681584 11 0.18269766840766535 12 4.2827326301074645e-09 
		13 1.2278447622664781e-10
		7 7 1.4440038695821595e-22 8 2.287198599272564e-24 9 1.6856353491903912e-15 
		10 0.82099199621782237 11 0.17900799982894755 12 3.8490266776806848e-09 
		13 1.0420173649905777e-10
		7 7 4.5184813793084339e-25 8 1.9078942272068783e-30 9 2.8872818397811354e-20 
		10 0.82594061847412958 11 0.17405938151911324 12 6.7388741343499063e-12 
		13 1.8572249614037324e-14
		7 7 3.59859087470106e-24 8 1.0554396176647444e-31 9 1.582807677072501e-20 
		10 0.82041962430904536 11 0.17958037568856253 12 2.3891253058890252e-12 
		13 2.977359626701029e-15
		6 7 4.4834137769348824e-23 8 1.779240457289006e-28 9 1.8881536071839364e-18 
		10 0.83767589806679588 11 0.16232410193288149 13 3.2259882710162682e-13
		6 7 4.7500395440880964e-18 8 2.7338300938847639e-30 9 2.3781771207786836e-16 
		10 0.82826497765217988 11 0.17173502234649896 13 1.3209294331751445e-12
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		7 7 2.6191324311123463e-32 8 1.2647992802247834e-41 9 5.1863111510446593e-30 
		10 0.00010072770985391168 11 0.5659563452287657 12 0.42621751507763656 
		13 0.0077254119837437858
		7 7 5.2840652376648784e-32 8 2.6332141053344637e-42 9 9.7377318535380781e-30 
		10 9.9403061060866497e-05 11 0.5470820214689941 12 0.4353161007047015 
		13 0.017502474765243647
		7 7 8.3882463898541667e-33 8 5.8765295048548531e-41 9 2.2885662809078552e-30 
		10 0.00012647740365198789 11 0.57495799882059384 12 0.42025189565418553 
		13 0.0046636281215687806
		7 7 2.0781176274841195e-33 8 2.1068981508397011e-40 9 2.3815570882131381e-30 
		10 0.00018337927761451686 11 0.57425407474000767 12 0.41869002707271213 
		13 0.0068725189096656225
		7 7 4.2076768359838835e-34 8 5.6018709548204606e-40 9 4.1419661190999874e-30 
		10 0.00026021549308928035 11 0.55902618139145999 12 0.4257866234574833 
		13 0.014926979657967326
		7 7 7.5381250412273678e-35 8 8.69673621833944e-40 9 3.7729326671810704e-30 
		10 0.00032278469151900336 11 0.53007168542919914 12 0.4362494151854287 
		13 0.033356114693853217
		7 7 1.1018805947473082e-35 8 2.2308032473031421e-40 9 9.2060032578662482e-31 
		10 0.00030708394719538694 11 0.49086630685097804 12 0.4468674421747294 
		13 0.061959167027097084
		4 10 0.00020396450474868821 11 0.44666022062301636 12 0.46736312530199131 
		13 0.085772689570243643
		7 7 4.949915988259235e-32 8 1.7809194328875823e-42 9 7.1955874617323479e-30 
		10 0.00013014284822126902 11 0.52180076375607942 12 0.43906911274045407 
		13 0.038999980655245257
		7 7 6.8477541259906673e-32 8 3.3713673704199553e-42 9 7.5928011670526317e-30 
		10 0.00019702436230086535 11 0.48815664138433423 12 0.43995155903472616 
		13 0.071694775218638748
		4 10 0.00015039068543210021 11 0.44825208066056521 12 0.46356487274169922 
		13 0.08803265591230347
		4 10 0.0001736083870010896 11 0.33369576392502631 12 0.56133403428452944 
		13 0.10479659340344316
		4 10 0.00019401183446854375 11 0.3243095200238677 12 0.56821275933408932 
		13 0.10728370880757444
		4 10 0.00017874205899082174 11 0.32316344288293508 12 0.56843424583518287 
		13 0.10822356922289121
		4 10 0.00019975205956535014 11 0.32179153022102858 12 0.56592833740287185 
		13 0.11208038031653422
		4 10 0.00021132431009773803 11 0.3305565136923363 12 0.56238615180899953 
		13 0.10684601018856643
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		4 10 0.0003423564380933275 11 0.98981723551329237 12 0.0097286924719810486 
		13 0.00011171557663325338
		3 10 3.5675240041110889e-05 11 0.99992894838689916 13 3.537637305972563e-05
		7 7 6.3084548262385368e-31 8 2.7540322274164789e-41 9 7.8887055095806689e-29 
		10 0.0040837913428195287 11 0.99448758784443125 12 0.0014023491268060761 
		13 2.6271685943287386e-05
		7 7 8.7553376627655873e-29 8 4.1678635703503283e-39 9 8.7623472600539784e-27 
		10 0.012606899471400125 11 0.9872715557987265 12 0.00011934400941758763 
		13 2.2007204558048267e-06
		6 7 1.3920667711982203e-28 8 2.3870004820035343e-40 9 2.3679541978190006e-26 
		10 0.015497388527736787 11 0.98450246217692727 13 1.4929533589769726e-07
		6 7 8.7515336912887042e-29 8 1.1554672857247875e-41 9 1.7024523679261861e-26 
		10 0.011659008880067058 11 0.9883407266371077 13 2.6448282519732885e-07
		6 7 5.5613097379051811e-31 8 4.9830354075375022e-44 9 1.3978001817486597e-28 
		10 0.0029893258209228936 11 0.99700775859787427 13 2.9155812027913023e-06
		4 10 0.00019584232090175124 11 0.99979067556555834 12 1.4888613009134133e-07 
		13 1.3333227409817461e-05
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 28 0.99999999999999989
		1 28 1
		1 11 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		5 8 1.3778519743082759e-21 9 1.872265313523381e-14 10 3.8206856943926124e-24 
		11 6.5582695663762779e-61 28 0.99999999999998113
		5 8 8.1233326428174701e-20 9 3.0079497472553277e-13 10 8.6070231302910341e-23 
		11 3.6922135263225562e-58 28 0.99999999999969924
		5 8 2.0168740255894706e-18 9 4.4216586914296766e-12 10 2.6745540014868955e-21 
		11 7.8731164501956309e-56 28 0.99999999999557831
		5 8 1.4096603365713664e-23 9 4.5531714137972649e-16 10 5.1378011076865206e-26 
		11 6.0223581728921238e-64 28 0.99999999999999956
		5 8 2.6211853285133255e-21 9 9.5036926970955829e-15 10 1.3147972938018175e-24 
		11 7.4559859429104524e-61 28 0.99999999999999034
		5 8 1.0035018362308243e-19 9 2.8021273649093042e-13 10 7.9992819678096042e-23 
		11 3.4483349530694717e-58 28 0.99999999999971967
		5 8 4.7797404657466122e-23 9 2.3018204125232157e-16 10 1.5783445314273812e-26 
		11 1.0091955655414617e-63 28 0.99999999999999978
		5 8 6.4413767406842112e-25 9 4.1856693933721438e-18 10 1.4450826162608582e-28 
		11 8.2964070521013849e-67 28 1
		1 28 1
		1 28 1
		6 8 9.8766305083062295e-10 9 0.18355074078305983 10 0.81644925822927705 
		11 3.456485469045224e-21 12 8.1302918601831166e-37 13 9.468980042608116e-39
		6 8 8.4946159719592234e-09 9 0.26181048467540113 10 0.73818950682998286 
		11 3.3683490715162415e-21 12 6.9722868376247727e-36 13 1.3874466183372597e-37
		6 8 1.1822706307072708e-10 9 0.020904007354903251 10 0.97909599252686963 
		11 3.2867682289500997e-21 12 5.6547585672396948e-36 13 1.0007327680512047e-38
		6 8 6.0890693343841905e-08 9 0.3296731938440528 10 0.67032674526525393 
		11 3.8278396962309027e-21 12 1.829612879256487e-35 13 4.6866373931402604e-37
		6 8 3.4589155134449989e-07 9 0.49142117083436399 10 0.50857848327408472 
		11 3.9804818147466362e-21 12 2.0641126311509386e-35 13 5.6189647108822978e-37
		6 8 1.4998602570670831e-06 9 0.5910181346041532 10 0.4089803655355897 
		11 4.2279936993442623e-21 12 2.7817102060539799e-35 13 7.7016471589772342e-37
		6 8 5.3510789319562826e-06 9 0.62425899090741777 10 0.37573565801365028 
		11 5.3315385369231038e-21 12 4.0989101662983675e-35 13 1.1480714519147278e-36
		6 8 2.2668849898711538e-05 9 0.55055915061453853 10 0.44941818053556271 
		11 6.8271790270254599e-21 12 5.0087165948706643e-35 13 1.3445816240789681e-36
		6 8 1.4380876279638574e-05 9 0.46636340420704397 10 0.53362221491667639 
		11 6.8062825533632346e-21 12 4.2115420987216757e-35 13 9.113672222203573e-37
		6 8 5.6541173073797545e-06 9 0.36307613687737761 10 0.63691820900531504 
		11 3.7524739574818958e-21 12 1.8789046620653548e-35 13 2.6479154055511331e-37
		6 8 2.5297910384509212e-06 9 0.28300277659174516 10 0.71699469361721646 
		11 2.0056402660766719e-21 12 8.2023905341800207e-36 13 6.3716936093475962e-38
		6 8 4.2283206088984966e-07 9 0.21242281025190024 10 0.78757676691603884 
		11 2.0231776230249637e-21 12 6.0001611544951827e-36 13 2.1942527507776748e-38
		6 8 4.5369183841094803e-10 9 0.045185472488546957 10 0.95481452705776115 
		11 3.2398941665586991e-22 12 2.6886398101680299e-37 13 4.6861334719121657e-40
		6 8 4.1950548904686664e-09 9 0.14061749433156195 10 0.85938250147338313 
		11 2.8849898200994256e-23 12 1.4306916279695029e-38 13 3.9549704848873446e-41
		6 8 3.9572836559026724e-08 9 0.16749992849363166 10 0.83250003193353184 
		11 2.423420195841235e-22 12 3.3836004746361046e-37 13 1.1981435123265051e-39
		6 8 1.3554592640506489e-05 9 0.60445040164625852 10 0.39553604376110096 
		11 6.5098690492803181e-21 12 5.1547026957465252e-35 13 1.4603010604530013e-36
		5 8 9.477258622620203e-26 9 6.0873003846060929e-18 10 3.6803878431565187e-28 
		11 2.8895889345434924e-67 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		2 17 0.21865890605771635 18 0.78134109394228368
		2 17 0.21607981393196959 18 0.78392018606803027
		2 17 0.21134645359629023 18 0.78865354640370977
		2 17 0.2102808306076574 18 0.78971916939234255
		2 17 0.20733599775130165 18 0.79266400224869826;
	setAttr ".wl[9482:9612].w"
		2 17 0.2097070798477555 18 0.7902929201522445
		2 17 0.20669125911789488 18 0.79330874088210523
		2 17 0.20680931794154764 18 0.79319068205845222
		2 17 0.21208040395132235 18 0.78791959604867767
		2 17 0.20418929238395073 18 0.79581070761604922
		2 17 0.19313654026745727 18 0.80686345973254292
		2 17 0.19431102385192053 18 0.80568897614807944
		2 17 0.19579076238470927 18 0.80420923761529084
		2 17 0.19645137378884614 18 0.80354862621115397
		2 17 0.19462098751049992 18 0.80537901248950006
		2 17 0.1995299607323657 18 0.80047003926763416
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 17 0.59663655088959855 18 0.4033634491104014
		2 17 0.59445098367831839 18 0.40554901632168167
		2 17 0.59805632216869775 18 0.40194367783130225
		2 17 0.59641008613784063 18 0.40358991386215942
		2 17 0.59452320798160285 18 0.40547679201839709
		2 17 0.59563006801016527 18 0.40436993198983473
		2 17 0.59889984486296699 18 0.40110015513703301
		2 17 0.59809428360828287 18 0.40190571639171713
		2 17 0.59207617053691597 18 0.40792382946308403
		2 17 0.58499827169509211 18 0.41500172830490789
		2 17 0.57635270128617688 18 0.42364729871382323
		2 17 0.57462776803496407 18 0.42537223196503587
		2 17 0.58192117077397676 18 0.4180788292260233
		2 17 0.58880095383167097 18 0.41119904616832914
		2 17 0.57748575649187806 18 0.42251424350812194
		2 17 0.59267847659456341 18 0.40732152340543654
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 18 0.62426301022107156 19 0.3757369897789285
		2 18 0.65141591678063215 19 0.3485840832193679
		2 18 0.59445907291793476 19 0.40554092708206535
		2 18 0.60265028567245538 19 0.39734971432754473
		2 18 0.60411576922773458 19 0.39588423077226537
		2 18 0.6015153613874219 19 0.3984846386125781
		2 18 0.59870382674291356 19 0.40129617325708655
		2 18 0.60732893963426426 19 0.39267106036573568
		2 18 0.61169972272644391 19 0.38830027727355609
		2 18 0.65350427604846095 19 0.34649572395153905
		2 18 0.63192530151407478 19 0.36807469848592528
		2 18 0.65751939923419445 19 0.34248060076580561
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 18 0.98256811827661872 19 0.017431881723381296
		2 18 0.98281064019275077 19 0.017189359807249258
		2 18 0.98103833385277428 19 0.018961666147225734
		2 18 0.98232450093933377 19 0.017675499060666292
		2 18 0.98177744701671477 19 0.018222552983285307
		2 18 0.98092773710018566 19 0.019072262899814365
		2 18 0.97880254614760065 19 0.021197453852399298
		2 18 0.98095318752431915 19 0.019046812475680904
		2 18 0.98178849516846989 19 0.018211504831530011
		2 18 0.982980118399013 19 0.017019881600987035
		2 18 0.98308597403703413 19 0.016914025962965762
		2 18 0.98109692817391014 19 0.018903071826089812
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		3 18 0.17185488435434307 19 0.63627676750228157 20 0.19186834814337542
		3 18 0.12789492548641002 19 0.66906014764632427 20 0.20304492686726575
		3 18 0.034916896755474158 19 0.76996856042815043 20 0.19511454281637547
		3 18 0.00047071705710545139 19 0.82788980923972466 20 0.17163947370316979
		3 18 0.0043992748412910116 19 0.81512338337243573 20 0.18047734178627328
		3 18 0.16816008636449489 19 0.64644829039790819 20 0.18539162323759686
		3 18 0.16694671168978323 19 0.65900139288486437 20 0.17405189542535238
		3 18 0.16321166737165732 19 0.65448389977113708 20 0.18230443285720566
		3 18 0.16931388653634316 19 0.65222015313845816 20 0.17846596032519868
		3 18 0.16843363867224373 19 0.6476660846298945 20 0.18390027669786183
		3 18 0.16238533877598843 19 0.65356587861554372 20 0.18404878260846788
		3 18 2.2261604473380432e-07 19 0.79871632321280583 20 0.2012834541711494
		3 18 3.2048120621606653e-06 19 0.80636232157761767 20 0.19363447361032016
		3 18 2.9978965616906548e-06 19 0.80428185308569411 20 0.19571514901774426
		3 18 4.8722962357521755e-05 19 0.82588350742998917 20 0.17406776960765324
		3 18 0.00053511289412028402 19 0.81915895973909469 20 0.180305927366785
		3 18 0.0049308140023677106 19 0.80742731169870818 20 0.18764187429892418
		3 18 5.7630081186347415e-05 19 0.82232693314983829 20 0.17761543676897557
		3 18 0.11937208572135508 19 0.6890089983251878 20 0.19161891595345715
		3 18 0.036661375581750533 19 0.77074621653191766 20 0.19259240788633186;
	setAttr -s 33 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2393512725830087 -40.812831878662109 -14.152165412902832 1;
	setAttr ".pm[1]" -type "matrix" -0.0008499343441825117 0.99988659348727826 0.01503547388881242 0
		 -0.94572608162522775 0.0040822722363795527 -0.32493916934883366 0 -0.32496369301593303 -0.014495617152221736 0.94561538668297673 0
		 37.415646434504957 -5.9813303064815706 -7.9456094185348789 1;
	setAttr ".pm[2]" -type "matrix" 0.0043004669795836843 0.99988659964122129 0.014432388440700123 0
		 -0.99987746974085867 0.0040822722615044722 0.015113955508986336 0 0.015053325555204243 -0.014495617241437053 0.99978157829531922 0
		 22.0108224030899 -5.9813303343202966 -16.382916545608971 1;
	setAttr ".pm[3]" -type "matrix" 0.0040647545743779058 0.9998687056600033 0.01568716931124034 0
		 -0.99999173325626445 0.0040642543361404946 6.3775034781445768e-05 0 1.0015585053091089e-08 -0.015687299226874889 0.99987694795731197 0
		 7.224741550091653 -5.9617985463048866 -16.283110334372953 0.99999999999999989;
	setAttr ".pm[4]" -type "matrix" -1.2090217380027858e-09 0.99997949834162059 -0.0064025262091953481 0
		 -0.77262759762404454 0.0040647037606113372 0.6348465481592227 0 0.6348595617707754 0.004946768859953655 0.77261175997462284 0
		 -8.2135906852209022 -6.2965029606344327 -14.162299514235803 1;
	setAttr ".pm[5]" -type "matrix" -1.4264964151544595e-09 0.99999999238600967 1.1885410891868887e-10 0
		 -0.32548434698004708 -5.766843570264012e-10 0.94554744759925802 0 0.94554742833362926 1.3101349492762687e-09 0.32548435361182515 0
		 -16.084024448649146 -6.2056994130913559 -6.7807118549456415 1;
	setAttr ".pm[6]" -type "matrix" 1.0000000137645575 5.9477198461348048e-10 -1.3626797532157509e-09 0
		 -5.9477189995688206e-10 1.0000000030603244 2.131030807527773e-08 0 1.3626798912589757e-09 -2.1310307574056392e-08 1.0000000099987638 0
		 -6.2056995472754872 2.9055088605131294e-07 -20.832681990245629 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2393512725830087 -40.812831878662109 -14.152165412902832 1;
	setAttr ".pm[9]" -type "matrix" -0.00085279119967630597 0.99988640342647284 0.015048355061014738 0
		 -0.94572114913214944 0.0040839781039877588 -0.32495358008031305 0 -0.32497812361963085 -0.014508665194247249 0.94561023566950941 0
		 37.415785773294012 -5.9811296048381966 -7.9451132588946809 1;
	setAttr ".pm[10]" -type "matrix" 0.0043025326698629025 0.99988640342647295 0.014445361037280297 0
		 -0.9998772656752748 0.0040839781039877579 0.015125300280720269 0 0.015064587560254325 -0.014508665194247251 0.99978125449316202 0
		 22.01068414173016 -5.9811295958639832 -16.383082169571928 1;
	setAttr ".pm[11]" -type "matrix" 0.0040648770407613142 0.99994615535025788 0.0095479408712823184 0
		 -0.99999125700358793 0.0040740580840831148 -0.00094232006857814833 0 -0.00098116819537714408 -0.0095440269784577113 0.99995397336977798 0
		 7.2406786722429217 -6.0617928938919672 -16.239086544058285 1;
	setAttr ".pm[12]" -type "matrix" 1.1985037164530951e-07 0.99997964095950875 -0.0063810396079308426 0
		 -0.77150225781338988 0.0040598794950750371 0.63621363044760959 0 0.63622658400040755 0.0049229102142752676 0.7714865512542618 0
		 -8.2358263770805333 -6.2960826656341915 -14.144445424911265 1;
	setAttr ".pm[13]" -type "matrix" -1.0395789148149252e-09 0.99999999983234367 1.8311553966158039e-05 0
		 -0.325490285343083 -1.7314743708530903e-05 0.9455453843404229 0 0.94554538449895598 -5.9592499564635777e-06 0.32549028528853052 0
		 -16.08394382216586 -6.2055752841336567 -6.7809502693349195 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999983234378 1.731468968483109e-05 5.959406878670301e-06 0
		 -1.7314651510786666e-05 0.99999999982958498 -6.405682478284175e-06 0 -5.9595177901277747e-06 6.4055792922114558e-06 0.99999999996172662 0
		 -6.2055752795806516 -0.00028067377320971522 -20.832606173854032 1;
	setAttr ".pm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.580369234085083 -40.881076812744141 18.168113708496094 1;
	setAttr ".pm[16]" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 38.299540202149615 -5.6516842842102051 21.97669601440429 1;
	setAttr ".pm[17]" -type "matrix" 0 1 0 0 -0.85473395514644479 0 -0.51906634057672796 0
		 -0.51906634057672796 0 0.85473395514644479 0 8.0316903362320229 -5.651684284210206 30.589256421196101 1;
	setAttr ".pm[18]" -type "matrix" 0 1 0 0 -0.99998983252874263 0 0.0045094167181025111 0
		 0.0045094167181025111 0 0.99998983252874263 0 12.993758920654946 -5.6516842842102051 27.915356748691146 1;
	setAttr ".pm[19]" -type "matrix" 0 1 0 0 -0.65924459372056121 0 0.75192856419357557 0
		 0.75192856419357557 0 0.65924459372056121 0 22.596711372129437 -5.6516842842102051 16.58786178914341 1;
	setAttr ".pm[20]" -type "matrix" 0 1 0 0 -0.43466648688321796 0 0.90059149739524047 0
		 0.90059149739524047 0 0.43466648688321796 0 24.986325362083747 -5.6516842842102033 10.29301996200188 1;
	setAttr ".pm[21]" -type "matrix" 1 0 0 0 0 1 -2.7755575615628914e-16 0 0 2.7755575615628914e-16 1 0
		 -5.6516842842102024 -1.0658595931189248e-06 23.680273097354583 1;
	setAttr ".pm[22]" -type "matrix" 2.7727741085634215e-16 1 -1.0502674678498485e-13 -0
		 -0.0021115158594585681 1.0508284387584875e-13 0.99999777074790286 0 0.99999777074790286 -1.6051388198805808e-19 0.0021115158594586236 -0
		 18.194259383698387 -4.2982656025225829e-12 -40.842750394291286 1;
	setAttr ".pm[23]" -type "matrix" -0.0010028616730937052 0.99999936199295192 -0.00051988667380767502 0
		 -0.0031948858189748404 0.00051668025219597812 0.99999476285934652 0 0.99999439347081764 0.0010045173995277448 0.0031943656217930539 -0
		 12.926665734587317 -0.0071064246251802774 -40.827563833943763 1;
	setAttr ".pm[24]" -type "matrix" -0.0027805725045358331 0.99999414881207738 -0.0019926761291508021 0
		 -0.0051241638318045698 0.0019784095352362108 0.99998491430657888 0 0.9999830055363802 0.0027907413566210454 0.0051186327382027087 -0
		 7.7177830814416177 -0.053418944448619637 -40.812673567768371 1;
	setAttr ".pm[25]" -type "matrix" 0.0013859415378716748 0.99998050713183784 -0.0060880639291759006 -0
		 -0.00059748218081900775 0.0060888967504090031 0.99998128400055886 0 0.9999988610899001 -0.0013822780888772014 0.00060590938910388709 -0
		 1.8322939149110202 -0.22886029741709346 -40.820693641188662 1;
	setAttr ".pm[26]" -type "matrix" 0.016570915656532549 0.99948967858880056 -0.027309103770731973 -0
		 0.016775617683981253 0.027031087682990951 0.99949382136659359 0 0.99972195304775879 -0.017020654897241139 -0.016319126852991788 -0
		 -14.893009189906694 -0.86131257839084596 -40.560240963954193 1;
	setAttr ".pm[27]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[28]" -type "matrix" 1.2905998506604889e-15 1 -1.0729396783023863e-13 0
		 -0.0021115158594585681 1.0508284387584874e-13 0.99999777074790275 0 0.99999777074790286 -1.6051388198810738e-19 0.0021115158594586236 0
		 18.194259383698384 -4.297679075611525e-12 -40.842750394291272 1;
	setAttr ".pm[29]" -type "matrix" 1.2905998506604763e-15 1 -1.0729396783023862e-13 0
		 -0.0021115158594585681 1.0508283967373272e-13 0.99999777074790297 0 0.99999777074790286 -1.6052597839449076e-19 0.0021115158594586427 0
		 12.882434238882421 0.0011556286396645194 -40.841542488931161 1;
	setAttr ".pm[30]" -type "matrix" 1.2905998506604858e-15 1 -1.0729396783023861e-13 0
		 -0.0021115158594585404 1.0508284983812809e-13 0.99999777074790264 0 0.99999777074790275 -1.6707724884591074e-19 0.0021115158594584328 0
		 7.5948342484157001 0.0011452470992337476 -40.841493604260314 1;
	setAttr ".pm[31]" -type "matrix" 1.2905998506604794e-15 1 -1.0729396783023859e-13 0
		 -0.0021115158594585126 1.0508285322625988e-13 0.99999777074790253 0 0.99999777074790286 -1.3958838272954853e-19 0.0021115158594588938 0
		 1.8940139996592469 0.001048519516487129 -40.841412509631283 1;
	setAttr ".pm[32]" -type "matrix" 1.2905998506604763e-15 1 -1.0729396783023858e-13 3.944304526105059e-31
		 -0.0021115158594584571 1.050828464499963e-13 0.99999777074790253 -6.9388939039072284e-18
		 0.99999777074790297 -6.301792778673986e-20 0.0021115158594550566 -1.3552527156068805e-20
		 -14.126179201381932 0.0010490471247119879 -40.841398262528656 1.0000000000000002;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 19 ".ma";
	setAttr -s 33 ".dpf[0:32]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 19 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 19 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "B2190F95-45CD-4357-E8AA-F08A62A228AF";
createNode objectSet -n "skinCluster1Set";
	rename -uid "D2B0AE3D-4FCF-A4B5-A8CC-A6A5C90B39BE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "393C8482-43F7-ECC8-1410-8B9658C621F8";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "1691E8D1-4BF4-F5C8-F468-5D975BF9A9DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "A34DC1B4-4083-360E-2F47-18B944B5B4CC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId52";
	rename -uid "B0182394-4886-1C32-F0D7-00B90ED365C2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "3BB42D66-4303-1859-0F05-5DB07BCF54F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "27705F1F-4263-3D59-1486-AD9528136FCF";
	setAttr -s 27 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2393512725830078 40.812831878662109 14.152165412902832 1;
	setAttr ".wm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[11]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2393512725830078 40.812831878662109 14.152165412902832 1;
	setAttr ".wm[19]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[20]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.580369234085083 40.881076812744141 -18.168113708496094 1;
	setAttr ".wm[28]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[29]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 37 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2393512725830078 40.812831878662109
		 14.152165412902832 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8817841970012523e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000000271834264 1.0000000061505856 1.0000000056081169 0
		 0 0 0 1.8925676345825133 -7.9852995953546682 5.4333494218265663 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0.1111894794766207 0.12177521776071307 -0.69684701586716602 0.69800568226202486 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 0.99999997443905331 0.99999999999594447 1.0000000351070466 -1.0006480908170657e-24
		 5.9355796831930874e-15 -1.7561113173365082e-23 0 11.152678489685059 -8.9742142606041853e-09
		 1.1936795782929721e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.17217031725810492 0 0.98506719661921716 0.99999997281657438
		 0.9999999938494144 0.99999999439188314 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1.0000000055946909 0.99999998096072429 0.99999999879765833 -7.4575901010121015e-12
		 2.7539298904873255e-21 8.7972766647624411e-20 0 15.032044410705566 2.5341719833704701e-09
		 -3.8560166970569298e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00059595936453055599 0.0075277958292419584 -4.4863824650420435e-06 0.99997148814466763 1.0000000255609474
		 1.0000000000040556 0.99999996489295462 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 0.99999996610895991 1.0000000052788129 0.99999996814868997 4.6185277824405584e-14
		 -5.5679825578177104e-23 -9.2991354739742214e-21 0 4.5795550346374512 -1.6911325673163446e-09
		 -5.4022294193600828e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0097130155414127724 -0.33716064555588432 -0.0034787336611823809 0.94139059631459354 0.99999999440530907
		 1.0000000190392762 1.0000000012023418 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1.0000000003213161 1.0000000076139905 0.99999997994621115 1.4741918796801166e-09
		 1.7156996100942051e-19 1.0356047914593276e-16 0 1.9337219230343514 -2.3312471952863234e-09
		 -3.8934359558595588e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0030803624903901969 -0.27224115635537827 0.0008715243523734202 0.96222372897290243 1.0000000338910413
		 0.99999999472118706 1.0000000318513111 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 0.9999999862354424 0.99999999693967534 0.99999999000123585 0
		 0 0 0 3.6142641859769533 4.2063685867788081e-10 2.5389838054223901e-07 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.41064450343421932 0.41064450341139946 0.57564840987378718 0.57564840990577648 0.99999999967868392
		 0.99999999238600956 1.0000000200537893 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2393512725830078 40.812831878662109
		 14.152165412902832 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8817841970012523e-16
		 0 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -1.2887574485298158e-05 1.5451790055927271e-05
		 -2.624753575336356e-06 0 1.8925676345825195 -7.9852981567382741 5.4333486557006854 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11118942068561209 0.12177516475426825 -0.69684702514859109 0.69800569160876302 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 4.5086804227515749e-15 -2.6744299718909471e-05
		 7.594873052426755e-14 0 11.152679443359368 -8.9742142606041853e-09 1.1936795747402584e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.17217023829887917 0 0.98506721041972922 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0.00519854635654559 1.2880132010118167e-05
		 -1.5432866788166735e-06 0 15.032044410705563 2.5341719833704701e-09 -3.8560166615297931e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00011677949089423378 0.0080175202933706977 -9.3643699691338474e-07 0.99996785234827379 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -0.0039973639280468706 2.4344507482625183e-05
		 0.0033030183230326202 0 4.5795574188232422 -1.6911334554947643e-09 -5.4022297746314507e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0092461380689501643 -0.33846558935262611 -0.0033259743726757702 0.94092746354299905 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -1.8374399734084565e-05 -1.290491430669428e-05
		 -1.0201567427359933e-07 0 1.9365728819610428 9.1526786150097905e-12 1.434260710198032e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.003070801028642788 -0.2713799541681618 0.00086585137712304476 0.96246700772448379 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.6141828709296533 1.0266543171155718e-09
		 -1.3036568002888771e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.41064454558877311 0.41064454570509162 0.57564837985031114 0.57564837968725391 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.580369234085083 40.881076812744141
		 -18.168113708496094 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4408920985006262e-16
		 0 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0713150501251216 -2.5815366105945188
		 -3.8085823059082031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654757 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 1.7291559457509362e-15 0 0 15.556728363037109
		 -8.8817841970012523e-16 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.26950514359985356 0 0.96299894993360313 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.553380966186523 -1.7763568394002505e-15
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.2716757458538378 0 0.96238884506978828 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -4.4408920985005655e-16 6.2434178703980416e-31
		 -7.3638253727115885e-23 0 10.443978309631346 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0 -0.41071361670372197 0 0.91176440216436838 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2635080671143903 -2.6645352591003757e-15
		 2.0951314638750773e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.13466253541609838 0 0.99089151856058799 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.6600722913155082 -8.8817841970012523e-16
		 -1.9375632120954833e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.37594331790736163 0.37594331790736163 0.59888782064824497 0.59888782064824497 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -5.0392425618016127e-13 -1.568684809366403
		 -1.5707963267947915 0 1.7763568394002505e-15 40.881076812744091 -18.107978708906042 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 0.99999999999999989 3.8287487294418249e-31
		 -4.3368086899420177e-19 6.4759394380020806e-33 0 5.3118251448159644 -0.0011556286439621986
		 -0.0012079053601112832 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 0.99999999999999989 6.0628274649310185e-31
		 -4.3368086899420177e-19 -1.465985744016266e-23 0 5.2875999904667195 1.038154043077181e-05
		 -4.8884670832194388e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999989 1.1632616864098905e-31
		 4.3368086899420187e-19 4.0578067437279366e-24 0 5.7008202487564539 9.6727582746618333e-05
		 -8.1094629031497334e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0.02093996838533713 -0.017281019938327039
		 0.015293723547789529 0 16.020193201041181 -5.2760822483177705e-07 -1.4247102683384583e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 0.99999999999999978 -7.196171732495539e-30
		 -4.5612501363680712e-19 -1.0420702385133448e-23 0 16.020193201041177 -5.2760822485823158e-07
		 -1.4247102626541164e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 32 ".m";
	setAttr -s 33 ".p";
	setAttr -s 37 ".g[0:36]" yes yes yes yes yes yes yes yes no no yes 
		yes no no no no no no no yes yes no no no no no no no yes yes yes yes yes yes no 
		no yes;
	setAttr ".bp" yes;
createNode objectSet -n "arm_SET";
	rename -uid "3C2F0CB5-49EB-745F-3846-82A50948A4DE";
	setAttr ".ihi" 0;
	setAttr -s 32 ".dnsm";
createNode pointOnCurveInfo -n "IK_CRVShape_POCI";
	rename -uid "BA54F0C0-4605-F499-EB8D-418E98DB2667";
createNode pointOnCurveInfo -n "IK_CRVShape_POCI1";
	rename -uid "76E5D180-401D-99B2-92E3-C3AE3BE56BA4";
	setAttr ".pr" 0.16434998079108326;
createNode pointOnCurveInfo -n "IK_CRVShape_POCI2";
	rename -uid "70054729-4836-E7F8-BBD2-82AE1A91CEEB";
	setAttr ".pr" 0.32795367281592624;
createNode pointOnCurveInfo -n "IK_CRVShape_POCI3";
	rename -uid "18789EE5-4C7F-0835-F2FD-15B9912B7601";
	setAttr ".pr" 0.50434283328276208;
createNode pointOnCurveInfo -n "IK_CRVShape_POCI4";
	rename -uid "96A28889-493F-E5B6-74F2-64A03859259C";
	setAttr ".pr" 1;
createNode skinCluster -n "skinCluster2";
	rename -uid "D576042D-4A27-E013-B421-28BDA96F746E";
	setAttr -s 5 ".wl";
	setAttr ".wl[0:4].w"
		1 0 1
		2 0 0.8 1 0.19999999999999996
		1 1 1
		2 1 0.19999999999999996 2 0.8
		1 2 1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4841550858394146e-44 -40.881076812744141 18.107978820800781 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.0709143339100987e-28 -40.846954345703146 1.9478392601013246 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.8141828667820219e-27 -40.812831878662102 -14.212300300598145 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "7C94B981-4FFD-4C45-E032-66A2F94B58DB";
createNode objectSet -n "skinCluster2Set";
	rename -uid "0CBF57ED-4972-30F7-726C-77973C51EDF0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "0A1630D9-416E-B6CA-8D32-729856881EB7";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "6555FAF5-4FD9-99CB-44CE-4A96C36F28B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "4CEEE8B7-4C13-3CDA-68CC-798AAF868425";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId54";
	rename -uid "BFE19888-44CE-4C78-6762-4988DFC7D67D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "FEC2B7F2-49E2-9CB9-FA0F-949505DB31CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode dagPose -n "bindPose2";
	rename -uid "2266E3E4-46D1-6BD8-1613-1A88FD8CE4A0";
	setAttr -s 12 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4841550858394146e-44 40.881076812744141 -18.107978820800781 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4841550858394146e-44 40.881076812744141 -18.107978820800781 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4841550858394146e-44 40.881076812744141 -18.107978820800781 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0709143339100987e-28 40.846954345703146 -1.9478392601013246 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0709143339100987e-28 40.846954345703146 -1.9478392601013246 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0709143339100987e-28 40.846954345703146 -1.9478392601013246 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.8141828667820219e-27 40.812831878662102 14.212300300598145 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.8141828667820219e-27 40.812831878662102 14.212300300598145 1;
	setAttr ".wm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.8141828667820219e-27 40.812831878662102 14.212300300598145 1;
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4841550858394146e-44
		 40.881076812744141 -18.107978820800781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.0709143339100987e-28
		 40.846954345703146 -1.9478392601013246 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8141828667820219e-27
		 40.812831878662102 14.212300300598145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr -s 12 ".g[0:11]" yes yes yes no yes yes yes no yes yes yes 
		no;
	setAttr ".bp" yes;
createNode pointOnCurveInfo -n "IK_upVec_CRVShape_POCI";
	rename -uid "4A412568-4ADE-E43B-62C5-7DBF74A2E293";
createNode pointOnCurveInfo -n "IK_upVec_CRVShape_POCI1";
	rename -uid "431E15D4-4026-901B-9834-649999D00842";
	setAttr ".pr" 0.16434999329047933;
createNode pointOnCurveInfo -n "IK_upVec_CRVShape_POCI2";
	rename -uid "C5802878-4952-0B55-C469-129B2843D6C8";
	setAttr ".pr" 0.32795368531532232;
createNode pointOnCurveInfo -n "IK_upVec_CRVShape_POCI3";
	rename -uid "D8F22DB3-4C2B-494F-6B3A-AEAD8F36E230";
	setAttr ".pr" 0.50434284578215871;
createNode pointOnCurveInfo -n "IK_upVec_CRVShape_POCI4";
	rename -uid "730B3F5B-425D-F4E9-AE51-379C268CB90D";
	setAttr ".pr" 1;
createNode skinCluster -n "skinCluster3";
	rename -uid "4D03F7B7-41CB-5462-494B-ED861FFD131D";
	setAttr -s 5 ".wl";
	setAttr ".wl[0:4].w"
		3 0 0.99188717271765503 1 0.0075709571185202463 2 0.0005418701638247132
		3 0 0.86820211810554282 1 0.12729936349474305 2 0.0044985183997141446
		3 0 0.0075181130198154278 1 0.98496377533255941 2 0.0075181116476251975
		3 0 0.0044985200365907831 1 0.12729942646916889 2 0.86820205349424029
		3 0 0.00054187021596521063 1 0.0075709584894932255 2 0.99188717129454151;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4841550858394146e-44 -40.881076812744141 18.107978820800781 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.0709143339100987e-28 -40.846954345703146 1.9478392601013246 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.8141828667820219e-27 -40.812831878662102 -14.212300300598145 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "70E42CD1-4923-52BF-471E-40A6886CE0F9";
createNode objectSet -n "skinCluster3Set";
	rename -uid "57CD1210-498E-6184-3E2C-CF88B08E0FB7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "99A8920D-4351-EBCB-2653-04975CD13EA1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "EDBD5746-49D9-FC8B-870B-9C97FFBA87DD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "7431B26C-4A45-4066-D611-E28223454496";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId56";
	rename -uid "07FDAA66-4AFC-66D3-A706-5CB82B54DE5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "05D07E23-4493-B9BD-91F3-4C84D3FB2B88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode reference -n "fit_q_legRN";
	rename -uid "6F452454-4B3E-5330-FD79-239C6F6229C2";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_leg.ma";
	setAttr ".ed" -type "dataReferenceEdits" 
		"fit_q_legRN"
		"fit_q_legRN" 106
		2 "layer1" "visibility" " 1"
		5 3 "fit_q_legRN" "|fit_leg.message" "fit_q_legRN.placeHolderList[1]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP.message" "fit_q_legRN.placeHolderList[2]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_hip.message" "fit_q_legRN.placeHolderList[3]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_hip|fit_hipShape.message" 
		"fit_q_legRN.placeHolderList[4]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space.message" "fit_q_legRN.placeHolderList[5]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh.message" 
		"fit_q_legRN.placeHolderList[6]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_thighShape.message" 
		"fit_q_legRN.placeHolderList[7]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee.message" 
		"fit_q_legRN.placeHolderList[8]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_F_kneeShape.message" 
		"fit_q_legRN.placeHolderList[9]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee.message" 
		"fit_q_legRN.placeHolderList[10]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_B_kneeShape.message" 
		"fit_q_legRN.placeHolderList[11]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle.message" 
		"fit_q_legRN.placeHolderList[12]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_ankleShape.message" 
		"fit_q_legRN.placeHolderList[13]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe.message" 
		"fit_q_legRN.placeHolderList[14]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_toeShape.message" 
		"fit_q_legRN.placeHolderList[15]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe.message" 
		"fit_q_legRN.placeHolderList[16]" ""
		5 3 "fit_q_legRN" "|fit_leg|fit_leg_GRP|fit_leg_space|fit_thigh|fit_F_knee|fit_B_knee|fit_ankle|fit_hind_toe|fit_hind_tiptoe|fit_hind_tiptoeShape.message" 
		"fit_q_legRN.placeHolderList[17]" ""
		5 3 "fit_q_legRN" "|fit_leg|init_hip.message" "fit_q_legRN.placeHolderList[18]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|init_hip|init_thigh.message" "fit_q_legRN.placeHolderList[19]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|init_hip|init_thigh|init_F_knee.message" 
		"fit_q_legRN.placeHolderList[20]" ""
		5 3 "fit_q_legRN" "|fit_leg|init_hip|init_thigh|init_F_knee|init_B_knee.message" 
		"fit_q_legRN.placeHolderList[21]" ""
		5 3 "fit_q_legRN" "|fit_leg|init_hip|init_thigh|init_F_knee|init_B_knee|init_ankle.message" 
		"fit_q_legRN.placeHolderList[22]" ""
		5 3 "fit_q_legRN" "|fit_leg|init_hip|init_thigh|init_F_knee|init_B_knee|init_ankle|init_hind_toe.message" 
		"fit_q_legRN.placeHolderList[23]" ""
		5 3 "fit_q_legRN" "|fit_leg|init_hip|init_thigh|init_F_knee|init_B_knee|init_ankle|init_hind_toe|init_hind_tiptoe.message" 
		"fit_q_legRN.placeHolderList[24]" ""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP.message" "fit_q_legRN.placeHolderList[25]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP|temp_hip.message" "fit_q_legRN.placeHolderList[26]" 
		""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP|temp_hip|temp_thigh.message" 
		"fit_q_legRN.placeHolderList[27]" ""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP|temp_hip|temp_thigh|temp_F_knee.message" 
		"fit_q_legRN.placeHolderList[28]" ""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP|temp_hip|temp_thigh|temp_F_knee|temp_B_knee.message" 
		"fit_q_legRN.placeHolderList[29]" ""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP|temp_hip|temp_thigh|temp_F_knee|temp_B_knee|temp_ankle.message" 
		"fit_q_legRN.placeHolderList[30]" ""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP|temp_hip|temp_thigh|temp_F_knee|temp_B_knee|temp_ankle|temp_hind_toe.message" 
		"fit_q_legRN.placeHolderList[31]" ""
		5 3 "fit_q_legRN" "|fit_leg|temp_leg_GRP|temp_hip|temp_thigh|temp_F_knee|temp_B_knee|temp_ankle|temp_hind_toe|temp_hind_tiptoe.message" 
		"fit_q_legRN.placeHolderList[32]" ""
		5 3 "fit_q_legRN" "leg_mirror_COND.message" "fit_q_legRN.placeHolderList[33]" 
		""
		5 3 "fit_q_legRN" "fit_leg_space_local_DCMX.message" "fit_q_legRN.placeHolderList[34]" 
		""
		5 3 "fit_q_legRN" "fit_leg_space_local_MTMX.message" "fit_q_legRN.placeHolderList[35]" 
		""
		5 3 "fit_q_legRN" "fit_thigh_aligned_DCMX.message" "fit_q_legRN.placeHolderList[36]" 
		""
		5 3 "fit_q_legRN" "fit_thigh_aligned_MTMX.message" "fit_q_legRN.placeHolderList[37]" 
		""
		5 3 "fit_q_legRN" "fit_thigh_aligned_FBFM.message" "fit_q_legRN.placeHolderList[38]" 
		""
		5 3 "fit_q_legRN" "fit_thigh_x_vec.message" "fit_q_legRN.placeHolderList[39]" 
		""
		5 3 "fit_q_legRN" "fit_thigh2knee_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[40]" 
		""
		5 3 "fit_q_legRN" "fit_thigh2knee_vec.message" "fit_q_legRN.placeHolderList[41]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee_DCMX.message" "fit_q_legRN.placeHolderList[42]" 
		""
		5 3 "fit_q_legRN" "fit_thigh_DCMX.message" "fit_q_legRN.placeHolderList[43]" 
		""
		5 3 "fit_q_legRN" "fit_thigh_y_vec.message" "fit_q_legRN.placeHolderList[44]" 
		""
		5 3 "fit_q_legRN" "fit_thigh2ankle_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[45]" 
		""
		5 3 "fit_q_legRN" "fit_thigh2ankle_vec.message" "fit_q_legRN.placeHolderList[46]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee_DCMX.message" "fit_q_legRN.placeHolderList[47]" 
		""
		5 3 "fit_q_legRN" "fit_thigh_z_vec.message" "fit_q_legRN.placeHolderList[48]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee_aligned_DCMX.message" "fit_q_legRN.placeHolderList[49]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee_aligned_MTMX.message" "fit_q_legRN.placeHolderList[50]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee_aligned_FBFM.message" "fit_q_legRN.placeHolderList[51]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee_x_vec.message" "fit_q_legRN.placeHolderList[52]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee2F_knee_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[53]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee2F_knee_vec.message" "fit_q_legRN.placeHolderList[54]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee_y_vec.message" "fit_q_legRN.placeHolderList[55]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee2shoulder_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[56]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee2shoulder_vec.message" "fit_q_legRN.placeHolderList[57]" 
		""
		5 3 "fit_q_legRN" "fit_F_knee_z_vec.message" "fit_q_legRN.placeHolderList[58]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee_aligned_DCMX.message" "fit_q_legRN.placeHolderList[59]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee_aligned_MTMX.message" "fit_q_legRN.placeHolderList[60]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee_aligned_FBFM1.message" "fit_q_legRN.placeHolderList[61]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee_x_vec.message" "fit_q_legRN.placeHolderList[62]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee2ankle_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[63]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee2ankle_vec.message" "fit_q_legRN.placeHolderList[64]" 
		""
		5 3 "fit_q_legRN" "fit_ankle_DCMX.message" "fit_q_legRN.placeHolderList[65]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee_y_vec.message" "fit_q_legRN.placeHolderList[66]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee2B_knee_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[67]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee2F_knee_vec.message" "fit_q_legRN.placeHolderList[68]" 
		""
		5 3 "fit_q_legRN" "fit_B_knee_z_vec.message" "fit_q_legRN.placeHolderList[69]" 
		""
		5 3 "fit_q_legRN" "fit_ankle_aligned_DCMX.message" "fit_q_legRN.placeHolderList[70]" 
		""
		5 3 "fit_q_legRN" "fit_ankle_aligned_MTMX.message" "fit_q_legRN.placeHolderList[71]" 
		""
		5 3 "fit_q_legRN" "fit_ankle_aligned_FBFM.message" "fit_q_legRN.placeHolderList[72]" 
		""
		5 3 "fit_q_legRN" "fit_ankle_x_vec.message" "fit_q_legRN.placeHolderList[73]" 
		""
		5 3 "fit_q_legRN" "fit_ankle2F_hind_toe_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[74]" 
		""
		5 3 "fit_q_legRN" "fit_ankle2F_hind_toe_vec.message" "fit_q_legRN.placeHolderList[75]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe_DCMX.message" "fit_q_legRN.placeHolderList[76]" 
		""
		5 3 "fit_q_legRN" "fit_ankle_y_vec.message" "fit_q_legRN.placeHolderList[77]" 
		""
		5 3 "fit_q_legRN" "fit_ankle2F_knee_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[78]" 
		""
		5 3 "fit_q_legRN" "fit_ankle2F_knee_vec.message" "fit_q_legRN.placeHolderList[79]" 
		""
		5 3 "fit_q_legRN" "fit_ankle_z_vec.message" "fit_q_legRN.placeHolderList[80]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe_aligned_DCMX.message" "fit_q_legRN.placeHolderList[81]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe_aligned_MTMX.message" "fit_q_legRN.placeHolderList[82]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe_aligned_FBFM.message" "fit_q_legRN.placeHolderList[83]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe_x_vec.message" "fit_q_legRN.placeHolderList[84]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe2tiptoe_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[85]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe2tiptoe_vec.message" "fit_q_legRN.placeHolderList[86]" 
		""
		5 3 "fit_q_legRN" "fit_tiptoe_DCMX.message" "fit_q_legRN.placeHolderList[87]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe_y_vec.message" "fit_q_legRN.placeHolderList[88]" 
		""
		5 3 "fit_q_legRN" "fir_hind_toe2ankle_vec_rvsMULT.message" "fit_q_legRN.placeHolderList[89]" 
		""
		5 3 "fit_q_legRN" "fir_hind_toe2ankle_vec.message" "fit_q_legRN.placeHolderList[90]" 
		""
		5 3 "fit_q_legRN" "fit_hind_toe_z_vec.message" "fit_q_legRN.placeHolderList[91]" 
		""
		5 3 "fit_q_legRN" "fit_tiptoe_local_DCMX.message" "fit_q_legRN.placeHolderList[92]" 
		""
		5 3 "fit_q_legRN" "fit_tiptoe_local_MTMX.message" "fit_q_legRN.placeHolderList[93]" 
		""
		5 3 "fit_q_legRN" "fit_leg_space_local_DCMX1.message" "fit_q_legRN.placeHolderList[94]" 
		""
		5 3 "fit_q_legRN" "fit_leg_space_local_MTMX1.message" "fit_q_legRN.placeHolderList[95]" 
		""
		5 3 "fit_q_legRN" "temp_hip_local_DCMX.message" "fit_q_legRN.placeHolderList[96]" 
		""
		5 3 "fit_q_legRN" "temp_hip_local_MTMX.message" "fit_q_legRN.placeHolderList[97]" 
		""
		5 3 "fit_q_legRN" "init_F_knee_local_DCMX.message" "fit_q_legRN.placeHolderList[98]" 
		""
		5 3 "fit_q_legRN" "init_F_knee_local_MTMX.message" "fit_q_legRN.placeHolderList[99]" 
		""
		5 3 "fit_q_legRN" "init_B_knee_local_DCMX.message" "fit_q_legRN.placeHolderList[100]" 
		""
		5 3 "fit_q_legRN" "init_B_knee_local_MTMX.message" "fit_q_legRN.placeHolderList[101]" 
		""
		5 3 "fit_q_legRN" "temp_B_knee_local_DCMX.message" "fit_q_legRN.placeHolderList[102]" 
		""
		5 3 "fit_q_legRN" "temp_B_knee_local_MTMX.message" "fit_q_legRN.placeHolderList[103]" 
		""
		5 3 "fit_q_legRN" "init_hind_toe_local_DCMX.message" "fit_q_legRN.placeHolderList[104]" 
		""
		5 3 "fit_q_legRN" "init_hind_toe_local_MTMX.message" "fit_q_legRN.placeHolderList[105]" 
		""
		"fit_q_legRN" 1
		2 "|fit_leg" "visibility" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "fit_q_armRN";
	rename -uid "F6A2BF81-47A0-E3F4-D412-518647DDE817";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/fits/Parts/fit_q_arm.ma";
	setAttr ".ed" -type "dataReferenceEdits" 
		"fit_q_armRN"
		"fit_q_armRN" 127
		2 "layer2" "visibility" " 1"
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[1]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[2]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[3]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[4]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[5]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[6]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[7]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[8]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[9]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[10]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[11]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[12]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[13]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[14]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[15]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[16]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[17]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[18]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[19]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[20]" 
		""
		5 4 "fit_q_armRN" "|fit_arm.tempJoints" "fit_q_armRN.placeHolderList[21]" 
		""
		5 3 "fit_q_armRN" "|fit_arm.message" "fit_q_armRN.placeHolderList[22]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP.message" "fit_q_armRN.placeHolderList[23]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_scapula.message" "fit_q_armRN.placeHolderList[24]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_scapula|fit_scapulaShape.message" 
		"fit_q_armRN.placeHolderList[25]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space.message" "fit_q_armRN.placeHolderList[26]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder.message" 
		"fit_q_armRN.placeHolderList[27]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_shoulderShape.message" 
		"fit_q_armRN.placeHolderList[28]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow.message" 
		"fit_q_armRN.placeHolderList[29]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_B_elbowShape.message" 
		"fit_q_armRN.placeHolderList[30]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow.message" 
		"fit_q_armRN.placeHolderList[31]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_F_elbowShape.message" 
		"fit_q_armRN.placeHolderList[32]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist.message" 
		"fit_q_armRN.placeHolderList[33]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_wristShape.message" 
		"fit_q_armRN.placeHolderList[34]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe.message" 
		"fit_q_armRN.placeHolderList[35]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe|fit_toeShape.message" 
		"fit_q_armRN.placeHolderList[36]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe|fit_tiptoe.message" 
		"fit_q_armRN.placeHolderList[37]" ""
		5 3 "fit_q_armRN" "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe|fit_tiptoe|fit_tiptoeShape.message" 
		"fit_q_armRN.placeHolderList[38]" ""
		5 3 "fit_q_armRN" "|fit_arm|init_scapula.message" "fit_q_armRN.placeHolderList[39]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|init_scapula|init_shoulder.message" "fit_q_armRN.placeHolderList[40]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|init_scapula|init_shoulder|init_B_elbow.message" 
		"fit_q_armRN.placeHolderList[41]" ""
		5 3 "fit_q_armRN" "|fit_arm|init_scapula|init_shoulder|init_B_elbow|init_F_elbow.message" 
		"fit_q_armRN.placeHolderList[42]" ""
		5 3 "fit_q_armRN" "|fit_arm|init_scapula|init_shoulder|init_B_elbow|init_F_elbow|init_wrist.message" 
		"fit_q_armRN.placeHolderList[43]" ""
		5 3 "fit_q_armRN" "|fit_arm|init_scapula|init_shoulder|init_B_elbow|init_F_elbow|init_wrist|init_toe.message" 
		"fit_q_armRN.placeHolderList[44]" ""
		5 3 "fit_q_armRN" "|fit_arm|init_scapula|init_shoulder|init_B_elbow|init_F_elbow|init_wrist|init_toe|init_tiptoe.message" 
		"fit_q_armRN.placeHolderList[45]" ""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP.message" "fit_q_armRN.placeHolderList[46]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP|temp_scapula.message" "fit_q_armRN.placeHolderList[47]" 
		""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP|temp_scapula|temp_shoulder.message" 
		"fit_q_armRN.placeHolderList[48]" ""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP|temp_scapula|temp_shoulder|temp_B_elbow.message" 
		"fit_q_armRN.placeHolderList[49]" ""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP|temp_scapula|temp_shoulder|temp_B_elbow|temp_F_elbow.message" 
		"fit_q_armRN.placeHolderList[50]" ""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP|temp_scapula|temp_shoulder|temp_B_elbow|temp_F_elbow|temp_wrist.message" 
		"fit_q_armRN.placeHolderList[51]" ""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP|temp_scapula|temp_shoulder|temp_B_elbow|temp_F_elbow|temp_wrist|temp_toe.message" 
		"fit_q_armRN.placeHolderList[52]" ""
		5 3 "fit_q_armRN" "|fit_arm|temp_arm_GRP|temp_scapula|temp_shoulder|temp_B_elbow|temp_F_elbow|temp_wrist|temp_toe|temp_tiptoe.message" 
		"fit_q_armRN.placeHolderList[53]" ""
		5 3 "fit_q_armRN" "arm_mirror_COND.message" "fit_q_armRN.placeHolderList[54]" 
		""
		5 3 "fit_q_armRN" "fit_arm_local_DCMX.message" "fit_q_armRN.placeHolderList[55]" 
		""
		5 3 "fit_q_armRN" "fit_arm_local_MTMX.message" "fit_q_armRN.placeHolderList[56]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder_aligned_DCMX.message" "fit_q_armRN.placeHolderList[57]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder_aligned_MTMX.message" "fit_q_armRN.placeHolderList[58]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder_aligned_FBFM.message" "fit_q_armRN.placeHolderList[59]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder_x_vec.message" "fit_q_armRN.placeHolderList[60]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder2elbow_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[61]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder2elbow_vec.message" "fit_q_armRN.placeHolderList[62]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow_DCMX.message" "fit_q_armRN.placeHolderList[63]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder_DCMX.message" "fit_q_armRN.placeHolderList[64]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder_y_vec.message" "fit_q_armRN.placeHolderList[65]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder2wrist_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[66]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder2wrist_vec.message" "fit_q_armRN.placeHolderList[67]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow_DCMX.message" "fit_q_armRN.placeHolderList[68]" 
		""
		5 3 "fit_q_armRN" "fit_shoulder_z_vec.message" "fit_q_armRN.placeHolderList[69]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow_aligned_DCMX.message" "fit_q_armRN.placeHolderList[70]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow_aligned_MTMX.message" "fit_q_armRN.placeHolderList[71]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow_aligned_FBFM.message" "fit_q_armRN.placeHolderList[72]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow_x_vec.message" "fit_q_armRN.placeHolderList[73]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow2F_elbow_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[74]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow2F_elbow_vec.message" "fit_q_armRN.placeHolderList[75]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow_y_vec.message" "fit_q_armRN.placeHolderList[76]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow2shoulder_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[77]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow2shoulder_vec.message" "fit_q_armRN.placeHolderList[78]" 
		""
		5 3 "fit_q_armRN" "fit_B_elbow_z_vec.message" "fit_q_armRN.placeHolderList[79]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow_aligned_DCMX.message" "fit_q_armRN.placeHolderList[80]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow_aligned_MTMX.message" "fit_q_armRN.placeHolderList[81]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow_aligned_FBFM.message" "fit_q_armRN.placeHolderList[82]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow_x_vec.message" "fit_q_armRN.placeHolderList[83]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow2wrist_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[84]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow2wrist_vec.message" "fit_q_armRN.placeHolderList[85]" 
		""
		5 3 "fit_q_armRN" "fit_wrist_DCMX.message" "fit_q_armRN.placeHolderList[86]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow_y_vec.message" "fit_q_armRN.placeHolderList[87]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow2B_elbow_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[88]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow2B_elbow_vec.message" "fit_q_armRN.placeHolderList[89]" 
		""
		5 3 "fit_q_armRN" "fit_F_elbow_z_vec.message" "fit_q_armRN.placeHolderList[90]" 
		""
		5 3 "fit_q_armRN" "fit_wrist_aligned_DCMX.message" "fit_q_armRN.placeHolderList[91]" 
		""
		5 3 "fit_q_armRN" "fit_wrist_aligned_MTMX.message" "fit_q_armRN.placeHolderList[92]" 
		""
		5 3 "fit_q_armRN" "fit_wrist_aligned_FBFM.message" "fit_q_armRN.placeHolderList[93]" 
		""
		5 3 "fit_q_armRN" "fit_wrist_x_vec.message" "fit_q_armRN.placeHolderList[94]" 
		""
		5 3 "fit_q_armRN" "fit_wrist2F_toe_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[95]" 
		""
		5 3 "fit_q_armRN" "fit_wrist2F_toe_vec.message" "fit_q_armRN.placeHolderList[96]" 
		""
		5 3 "fit_q_armRN" "fit_toe_DCMX.message" "fit_q_armRN.placeHolderList[97]" 
		""
		5 3 "fit_q_armRN" "fit_wrist_y_vec.message" "fit_q_armRN.placeHolderList[98]" 
		""
		5 3 "fit_q_armRN" "fit_wrist2F_elbow_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[99]" 
		""
		5 3 "fit_q_armRN" "fit_wrist2F_elbow_vec.message" "fit_q_armRN.placeHolderList[100]" 
		""
		5 3 "fit_q_armRN" "fit_wrist_z_vec.message" "fit_q_armRN.placeHolderList[101]" 
		""
		5 3 "fit_q_armRN" "fit_toe_aligned_DCMX.message" "fit_q_armRN.placeHolderList[102]" 
		""
		5 3 "fit_q_armRN" "fit_toe_aligned_MTMX.message" "fit_q_armRN.placeHolderList[103]" 
		""
		5 3 "fit_q_armRN" "fit_toe_aligned_FBFM.message" "fit_q_armRN.placeHolderList[104]" 
		""
		5 3 "fit_q_armRN" "fit_toe_x_vec.message" "fit_q_armRN.placeHolderList[105]" 
		""
		5 3 "fit_q_armRN" "fit_toe2tiptoe_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[106]" 
		""
		5 3 "fit_q_armRN" "fit_toe2tiptoe_vec.message" "fit_q_armRN.placeHolderList[107]" 
		""
		5 3 "fit_q_armRN" "fit_tiptoe_DCMX1.message" "fit_q_armRN.placeHolderList[108]" 
		""
		5 3 "fit_q_armRN" "fit_toe_y_vec.message" "fit_q_armRN.placeHolderList[109]" 
		""
		5 3 "fit_q_armRN" "fir_toe2wrist_vec_rvsMULT.message" "fit_q_armRN.placeHolderList[110]" 
		""
		5 3 "fit_q_armRN" "fir_toe2wrist_vec.message" "fit_q_armRN.placeHolderList[111]" 
		""
		5 3 "fit_q_armRN" "fit_toe_z_vec.message" "fit_q_armRN.placeHolderList[112]" 
		""
		5 3 "fit_q_armRN" "fit_tiptoe_local_DCMX1.message" "fit_q_armRN.placeHolderList[113]" 
		""
		5 3 "fit_q_armRN" "fit_tiptoe_local_MTMX1.message" "fit_q_armRN.placeHolderList[114]" 
		""
		5 3 "fit_q_armRN" "fit_arm_space_local_DCMX.message" "fit_q_armRN.placeHolderList[115]" 
		""
		5 3 "fit_q_armRN" "fit_arm_space_local_MTMX.message" "fit_q_armRN.placeHolderList[116]" 
		""
		5 3 "fit_q_armRN" "init_shoulder_local_DCMX.message" "fit_q_armRN.placeHolderList[117]" 
		""
		5 3 "fit_q_armRN" "init_shoulder_local_MTMX.message" "fit_q_armRN.placeHolderList[118]" 
		""
		5 3 "fit_q_armRN" "init_B_elbow_local_DCMX.message" "fit_q_armRN.placeHolderList[119]" 
		""
		5 3 "fit_q_armRN" "init_B_elbow_local_MTMX.message" "fit_q_armRN.placeHolderList[120]" 
		""
		5 3 "fit_q_armRN" "init_F_elbow_local_DCMX.message" "fit_q_armRN.placeHolderList[121]" 
		""
		5 3 "fit_q_armRN" "init_F_elbow_local_MTMX.message" "fit_q_armRN.placeHolderList[122]" 
		""
		5 3 "fit_q_armRN" "init_wrist_local_DCMX.message" "fit_q_armRN.placeHolderList[123]" 
		""
		5 3 "fit_q_armRN" "init_wrist_local_MTMX.message" "fit_q_armRN.placeHolderList[124]" 
		""
		5 3 "fit_q_armRN" "init_toe_local_DCMX.message" "fit_q_armRN.placeHolderList[125]" 
		""
		5 3 "fit_q_armRN" "init_toe_local_MTMX.message" "fit_q_armRN.placeHolderList[126]" 
		""
		"fit_q_armRN" 10
		2 "|fit_arm" "visibility" " 0"
		2 "|fit_arm|fit_arm_GRP|fit_scapula" "translate" " -type \"double3\" 4.23935127258300781 40.81283187866210938 14.15216541290283203"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder" "translate" " -type \"double3\" 1.89256763458251953 -7.98529959535466816 5.43334942182656988"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow" "translate" 
		" -type \"double3\" -0.0094790458679216982 -10.5473785541484304 -3.62421689581531581"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow" 
		"translate" " -type \"double3\" 0.064644813537596768 -15.03020270391832724 0.22628205441888838"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist" 
		"translate" " -type \"double3\" 0.018614768981932706 -4.57951760292053223 8.8858467250929607e-09"
		
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe" 
		"translate" " -type \"double3\" 0 -1.49404715081863371 1.22764146148026043"
		2 "|fit_arm|fit_arm_GRP|fit_arm_space|fit_shoulder|fit_B_elbow|fit_F_elbow|fit_wrist|fit_toe|fit_tiptoe" 
		"translate" " -type \"double3\" 0 -1.17638627150151942 3.41745826265474761";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "modelRN";
	rename -uid "424A12A8-4187-6B6D-1D58-399445658CCF";
	setAttr -s 8 ".phl";
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 84
		5 3 "modelRN" "|Geometry.message" "modelRN.placeHolderList[2]" ""
		5 3 "modelRN" "|Geometry|body.message" "modelRN.placeHolderList[3]" 
		""
		5 3 "modelRN" "|Geometry|body|bodyShape.message" "modelRN.placeHolderList[5]" 
		""
		5 3 "modelRN" "|Geometry|body|bodyShapeOrig.message" "modelRN.placeHolderList[6]" 
		""
		5 3 "modelRN" "|Geometry|eye_l.message" "modelRN.placeHolderList[7]" 
		""
		5 3 "modelRN" "|Geometry|eye_l|eye_lShape.message" "modelRN.placeHolderList[8]" 
		""
		5 3 "modelRN" "|Geometry|eye_l|eye_lShapeOrig.message" "modelRN.placeHolderList[9]" 
		""
		5 3 "modelRN" "|Geometry|eye_r.message" "modelRN.placeHolderList[10]" 
		""
		5 3 "modelRN" "|Geometry|eye_r|eye_rShape.message" "modelRN.placeHolderList[11]" 
		""
		5 3 "modelRN" "|Geometry|eye_r|eye_rShapeOrig.message" "modelRN.placeHolderList[12]" 
		""
		5 3 "modelRN" "|Geometry|tongue.message" "modelRN.placeHolderList[13]" 
		""
		5 3 "modelRN" "|Geometry|tongue|tongueShape.message" "modelRN.placeHolderList[14]" 
		""
		5 3 "modelRN" "|Geometry|tongue|tongueShapeOrig.message" "modelRN.placeHolderList[15]" 
		""
		5 3 "modelRN" "|Geometry|nails1.message" "modelRN.placeHolderList[16]" 
		""
		5 3 "modelRN" "|Geometry|nails1|nailsShape1.message" "modelRN.placeHolderList[17]" 
		""
		5 3 "modelRN" "|Geometry|nails1|nailsShape1Orig.message" "modelRN.placeHolderList[18]" 
		""
		5 3 "modelRN" "|Geometry|nails2.message" "modelRN.placeHolderList[19]" 
		""
		5 3 "modelRN" "|Geometry|nails2|nailsShape2.message" "modelRN.placeHolderList[20]" 
		""
		5 3 "modelRN" "|Geometry|nails2|nailsShape2Orig.message" "modelRN.placeHolderList[21]" 
		""
		5 3 "modelRN" "|Geometry|nails3.message" "modelRN.placeHolderList[22]" 
		""
		5 3 "modelRN" "|Geometry|nails3|nailsShape3.message" "modelRN.placeHolderList[23]" 
		""
		5 3 "modelRN" "|Geometry|nails3|nailsShape3Orig.message" "modelRN.placeHolderList[24]" 
		""
		5 3 "modelRN" "|Geometry|nails4.message" "modelRN.placeHolderList[25]" 
		""
		5 3 "modelRN" "|Geometry|nails4|nailsShape4.message" "modelRN.placeHolderList[26]" 
		""
		5 3 "modelRN" "|Geometry|nails4|nailsShape4Orig.message" "modelRN.placeHolderList[27]" 
		""
		5 3 "modelRN" "|Geometry|nails5.message" "modelRN.placeHolderList[28]" 
		""
		5 3 "modelRN" "|Geometry|nails5|nailsShape5.message" "modelRN.placeHolderList[29]" 
		""
		5 3 "modelRN" "|Geometry|nails5|nailsShape5Orig.message" "modelRN.placeHolderList[30]" 
		""
		5 3 "modelRN" "|Geometry|nails6.message" "modelRN.placeHolderList[31]" 
		""
		5 3 "modelRN" "|Geometry|nails6|nailsShape6.message" "modelRN.placeHolderList[32]" 
		""
		5 3 "modelRN" "|Geometry|nails6|nailsShape6Orig.message" "modelRN.placeHolderList[33]" 
		""
		5 3 "modelRN" "|Geometry|nails7.message" "modelRN.placeHolderList[34]" 
		""
		5 3 "modelRN" "|Geometry|nails7|nailsShape7.message" "modelRN.placeHolderList[35]" 
		""
		5 3 "modelRN" "|Geometry|nails7|nailsShape7Orig.message" "modelRN.placeHolderList[36]" 
		""
		5 3 "modelRN" "|Geometry|nails8.message" "modelRN.placeHolderList[37]" 
		""
		5 3 "modelRN" "|Geometry|nails8|nailsShape8.message" "modelRN.placeHolderList[38]" 
		""
		5 3 "modelRN" "|Geometry|nails8|nailsShape8Orig.message" "modelRN.placeHolderList[39]" 
		""
		5 3 "modelRN" "|Geometry|nails9.message" "modelRN.placeHolderList[40]" 
		""
		5 3 "modelRN" "|Geometry|nails9|nailsShape9.message" "modelRN.placeHolderList[41]" 
		""
		5 3 "modelRN" "|Geometry|nails9|nailsShape9Orig.message" "modelRN.placeHolderList[42]" 
		""
		5 3 "modelRN" "|Geometry|nails10.message" "modelRN.placeHolderList[43]" 
		""
		5 3 "modelRN" "|Geometry|nails10|nailsShape10.message" "modelRN.placeHolderList[44]" 
		""
		5 3 "modelRN" "|Geometry|nails10|nailsShape10Orig.message" "modelRN.placeHolderList[45]" 
		""
		5 3 "modelRN" "|Geometry|nails11.message" "modelRN.placeHolderList[46]" 
		""
		5 3 "modelRN" "|Geometry|nails11|nailsShape11.message" "modelRN.placeHolderList[47]" 
		""
		5 3 "modelRN" "|Geometry|nails11|nailsShape11Orig.message" "modelRN.placeHolderList[48]" 
		""
		5 3 "modelRN" "|Geometry|nails12.message" "modelRN.placeHolderList[49]" 
		""
		5 3 "modelRN" "|Geometry|nails12|nailsShape12.message" "modelRN.placeHolderList[50]" 
		""
		5 3 "modelRN" "|Geometry|nails12|nailsShape12Orig.message" "modelRN.placeHolderList[51]" 
		""
		5 3 "modelRN" "|Geometry|nails13.message" "modelRN.placeHolderList[52]" 
		""
		5 3 "modelRN" "|Geometry|nails13|nailsShape13.message" "modelRN.placeHolderList[53]" 
		""
		5 3 "modelRN" "|Geometry|nails13|nailsShape13Orig.message" "modelRN.placeHolderList[54]" 
		""
		5 3 "modelRN" "|Geometry|nails14.message" "modelRN.placeHolderList[55]" 
		""
		5 3 "modelRN" "|Geometry|nails14|nailsShape14.message" "modelRN.placeHolderList[56]" 
		""
		5 3 "modelRN" "|Geometry|nails14|nailsShape14Orig.message" "modelRN.placeHolderList[57]" 
		""
		5 3 "modelRN" "|Geometry|nails15.message" "modelRN.placeHolderList[58]" 
		""
		5 3 "modelRN" "|Geometry|nails15|nailsShape15.message" "modelRN.placeHolderList[59]" 
		""
		5 3 "modelRN" "|Geometry|nails15|nailsShape15Orig.message" "modelRN.placeHolderList[60]" 
		""
		5 3 "modelRN" "|Geometry|nails16.message" "modelRN.placeHolderList[61]" 
		""
		5 3 "modelRN" "|Geometry|nails16|nailsShape16.message" "modelRN.placeHolderList[62]" 
		""
		5 3 "modelRN" "|Geometry|nails16|nailsShape16Orig.message" "modelRN.placeHolderList[63]" 
		""
		5 3 "modelRN" "|Geometry|nails17.message" "modelRN.placeHolderList[64]" 
		""
		5 3 "modelRN" "|Geometry|nails17|nailsShape17.message" "modelRN.placeHolderList[65]" 
		""
		5 3 "modelRN" "|Geometry|nails17|nailsShape17Orig.message" "modelRN.placeHolderList[66]" 
		""
		5 3 "modelRN" "|Geometry|nails18.message" "modelRN.placeHolderList[67]" 
		""
		5 3 "modelRN" "|Geometry|nails18|nailsShape18.message" "modelRN.placeHolderList[68]" 
		""
		5 3 "modelRN" "|Geometry|nails18|nailsShape18Orig.message" "modelRN.placeHolderList[69]" 
		""
		5 3 "modelRN" "|Geometry|teethUpper.message" "modelRN.placeHolderList[70]" 
		""
		5 3 "modelRN" "|Geometry|teethUpper|teethUpperShape.message" "modelRN.placeHolderList[71]" 
		""
		5 3 "modelRN" "|Geometry|teethUpper|teethUpperShapeOrig.message" "modelRN.placeHolderList[72]" 
		""
		5 3 "modelRN" "|Geometry|teethLower.message" "modelRN.placeHolderList[73]" 
		""
		5 3 "modelRN" "|Geometry|teethLower|teethLowerShape.message" "modelRN.placeHolderList[74]" 
		""
		5 3 "modelRN" "|Geometry|teethLower|teethLowerShapeOrig.message" "modelRN.placeHolderList[75]" 
		""
		5 3 "modelRN" "tweak1.message" "modelRN.placeHolderList[76]" ""
		5 3 "modelRN" "tweakSet1.message" "modelRN.placeHolderList[81]" ""
		5 3 "modelRN" "Dog_blinnSG.message" "modelRN.placeHolderList[83]" ""
		
		5 3 "modelRN" "Dog_blinn.message" "modelRN.placeHolderList[85]" ""
		5 3 "modelRN" "ZBrushTexture.message" "modelRN.placeHolderList[86]" 
		""
		5 3 "modelRN" "place2dTexture2.message" "modelRN.placeHolderList[87]" 
		""
		5 3 "modelRN" "bump2d1.message" "modelRN.placeHolderList[88]" ""
		5 3 "modelRN" "file1.message" "modelRN.placeHolderList[89]" ""
		5 3 "modelRN" "place2dTexture3.message" "modelRN.placeHolderList[90]" 
		""
		5 3 "modelRN" "file2.message" "modelRN.placeHolderList[91]" ""
		5 3 "modelRN" "place2dTexture4.message" "modelRN.placeHolderList[92]" 
		""
		"modelRN" 19
		0 "|modelRNfosterParent1|bodyShapeDeformed" "|Geometry|body" "-s -r "
		2 "|Geometry|body|bodyShape" "intermediateObject" " 1"
		2 "|Geometry|body|bodyShape" "vertexColorSource" " 2"
		5 4 "modelRN" "|Geometry.drawOverride" "modelRN.placeHolderList[93]" 
		""
		5 3 "modelRN" "|Geometry|body|bodyShape.worldMesh" "modelRN.placeHolderList[94]" 
		""
		5 3 "modelRN" "tweakSet1.memberWireframeColor" "modelRN.placeHolderList[95]" 
		""
		5 0 "modelRN" "groupId4.message" "tweakSet1.groupNodes" "modelRN.placeHolderList[96]" 
		"modelRN.placeHolderList[97]" ""
		5 4 "modelRN" "tweakSet1.dagSetMembers" "modelRN.placeHolderList[98]" 
		""
		5 3 "modelRN" "groupId4.groupId" "modelRN.placeHolderList[99]" ""
		5 4 "modelRN" "Dog_blinnSG.dagSetMembers" "modelRN.placeHolderList[100]" 
		""
		8 "|Geometry|body" "translateX"
		8 "|Geometry|body" "translateY"
		8 "|Geometry|body" "translateZ"
		8 "|Geometry|body" "rotateX"
		8 "|Geometry|body" "rotateY"
		8 "|Geometry|body" "rotateZ"
		8 "|Geometry|body" "scaleX"
		8 "|Geometry|body" "scaleY"
		8 "|Geometry|body" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "q_armRN";
	rename -uid "96CA5BCD-4104-5A7F-3320-28A1FF42CA54";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_arm.ma";
	setAttr -s 83 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"q_armRN"
		"q_armRN" 299
		2 "|arm_GRP1" "visibility" " 0"
		5 3 "q_armRN" "|arm_GRP1.message" "q_armRN.placeHolderList[1]" ""
		5 3 "q_armRN" "|arm_GRP1.message" "q_armRN.placeHolderList[2]" ""
		5 3 "q_armRN" "|arm_GRP1.message" "q_armRN.placeHolderList[3]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP.message" "q_armRN.placeHolderList[4]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|input_scapula.message" "q_armRN.placeHolderList[5]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|input_scapula|input_shoulder.message" 
		"q_armRN.placeHolderList[6]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow.message" 
		"q_armRN.placeHolderList[7]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow.message" 
		"q_armRN.placeHolderList[8]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow|input_wrist.message" 
		"q_armRN.placeHolderList[9]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow|input_wrist|input_toe.message" 
		"q_armRN.placeHolderList[10]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|input_scapula|input_shoulder|input_B_elbow|input_F_elbow|input_wrist|input_toe|input_tiptoe.message" 
		"q_armRN.placeHolderList[11]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP.message" "q_armRN.placeHolderList[12]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space.message" 
		"q_armRN.placeHolderList[13]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_shoulder_spaceShape.message" 
		"q_armRN.placeHolderList[14]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim.message" 
		"q_armRN.placeHolderList[15]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|IK_upper_CTLaimShape.message" 
		"q_armRN.placeHolderList[16]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC.message" 
		"q_armRN.placeHolderList[17]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_softIK_output_LOCShape.message" 
		"q_armRN.placeHolderList[18]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC.message" 
		"q_armRN.placeHolderList[19]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|upper_stretch_output_LOCShape.message" 
		"q_armRN.placeHolderList[20]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP.message" 
		"q_armRN.placeHolderList[21]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP|wrist_space.message" 
		"q_armRN.placeHolderList[22]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP|wrist_space|ikHandle1.message" 
		"q_armRN.placeHolderList[23]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|wrist_offset_GRP|wrist_space|ikHandle1|ikHandle1_poleVectorConstraint1.message" 
		"q_armRN.placeHolderList[24]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space.message" 
		"q_armRN.placeHolderList[25]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_wrist_spaceShape.message" 
		"q_armRN.placeHolderList[26]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim.message" 
		"q_armRN.placeHolderList[27]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|IK_lower_CTLaimShape.message" 
		"q_armRN.placeHolderList[28]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC.message" 
		"q_armRN.placeHolderList[29]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_softIK_output_LOCShape.message" 
		"q_armRN.placeHolderList[30]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_stretch_output_LOC.message" 
		"q_armRN.placeHolderList[31]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_stretch_output_LOC|lower_stretch_output_LOCShape.message" 
		"q_armRN.placeHolderList[32]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|lower_softIK_output_LOC|lower_stretch_output_LOC|ikHandle2.message" 
		"q_armRN.placeHolderList[33]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_lower_CTLaim|IK_lower_CTLaim_aimConstraint1.message" 
		"q_armRN.placeHolderList[34]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_wrist_space_upVec.message" 
		"q_armRN.placeHolderList[35]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|upper_softIK_output_LOC|upper_stretch_output_LOC|IK_wrist_space|IK_wrist_space_upVec|IK_wrist_space_upVecShape.message" 
		"q_armRN.placeHolderList[36]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_upper_CTLaim|IK_upper_CTLaim_aimConstraint1.message" 
		"q_armRN.placeHolderList[37]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_shoulder_space_upVec.message" 
		"q_armRN.placeHolderList[38]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_shoulder_space|IK_shoulder_space_upVec|IK_shoulder_space_upVecShape.message" 
		"q_armRN.placeHolderList[39]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|softIK_input.message" 
		"q_armRN.placeHolderList[40]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|softIK_output.message" 
		"q_armRN.placeHolderList[41]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|stretchIK_input.message" 
		"q_armRN.placeHolderList[42]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|stretchIK_output.message" 
		"q_armRN.placeHolderList[43]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula.message" 
		"q_armRN.placeHolderList[44]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder.message" 
		"q_armRN.placeHolderList[45]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow.message" 
		"q_armRN.placeHolderList[46]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow.message" 
		"q_armRN.placeHolderList[47]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist.message" 
		"q_armRN.placeHolderList[48]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|IK_toe.message" 
		"q_armRN.placeHolderList[49]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|IK_toe|IK_tiptoe.message" 
		"q_armRN.placeHolderList[50]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|IK_toe|effector4.message" 
		"q_armRN.placeHolderList[51]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|IK_wrist|effector3.message" 
		"q_armRN.placeHolderList[52]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|IK_F_elbow|effector2.message" 
		"q_armRN.placeHolderList[53]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|annotation1.message" 
		"q_armRN.placeHolderList[54]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|annotation1|annotationShape1.message" 
		"q_armRN.placeHolderList[55]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula|IK_shoulder|IK_B_elbow|effector1.message" 
		"q_armRN.placeHolderList[56]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula_aim_space.message" 
		"q_armRN.placeHolderList[57]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula_aim_space|IK_scapula_aim_space_aimConstraint1.message" 
		"q_armRN.placeHolderList[58]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_IK_GRP|IK_scapula_aim_space|IK_scapula_aim_space_pointConstraint1.message" 
		"q_armRN.placeHolderList[59]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP.message" "q_armRN.placeHolderList[60]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP|FK_scapula.message" 
		"q_armRN.placeHolderList[61]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder.message" 
		"q_armRN.placeHolderList[62]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow.message" 
		"q_armRN.placeHolderList[63]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow.message" 
		"q_armRN.placeHolderList[64]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow|FK_wrist.message" 
		"q_armRN.placeHolderList[65]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow|FK_wrist|FK_toe.message" 
		"q_armRN.placeHolderList[66]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_motion_GRP|motion_FK_GRP|FK_scapula|FK_shoulder|FK_B_elbow|FK_F_elbow|FK_wrist|FK_toe|FK_tiptoe.message" 
		"q_armRN.placeHolderList[67]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP.message" "q_armRN.placeHolderList[68]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP.message" "q_armRN.placeHolderList[69]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[70]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL.message" 
		"q_armRN.placeHolderList[71]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTLShape.message" 
		"q_armRN.placeHolderList[72]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[73]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP.message" 
		"q_armRN.placeHolderList[74]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[75]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL.message" 
		"q_armRN.placeHolderList[76]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL|IK_shoulder_CTLShape.message" 
		"q_armRN.placeHolderList[77]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL|IK_wrist_aim.message" 
		"q_armRN.placeHolderList[78]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL|IK_wrist_aim|IK_wrist_aimShape.message" 
		"q_armRN.placeHolderList[79]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP.message" "q_armRN.placeHolderList[80]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|scapula_offGRP.message" 
		"q_armRN.placeHolderList[81]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space.message" 
		"q_armRN.placeHolderList[82]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP.message" 
		"q_armRN.placeHolderList[83]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[84]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL.message" 
		"q_armRN.placeHolderList[85]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel.message" 
		"q_armRN.placeHolderList[86]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heelShape.message" 
		"q_armRN.placeHolderList[87]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL.message" 
		"q_armRN.placeHolderList[88]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_CTLShape.message" 
		"q_armRN.placeHolderList[89]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_out.message" 
		"q_armRN.placeHolderList[90]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_out|F_heel_outShape.message" 
		"q_armRN.placeHolderList[91]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_in.message" 
		"q_armRN.placeHolderList[92]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_heel_in|F_heel_inShape.message" 
		"q_armRN.placeHolderList[93]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe.message" 
		"q_armRN.placeHolderList[94]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toeShape.message" 
		"q_armRN.placeHolderList[95]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL.message" 
		"q_armRN.placeHolderList[96]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_toe_CTLShape.message" 
		"q_armRN.placeHolderList[97]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball.message" 
		"q_armRN.placeHolderList[98]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ballShape.message" 
		"q_armRN.placeHolderList[99]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL.message" 
		"q_armRN.placeHolderList[100]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_ball_CTLShape.message" 
		"q_armRN.placeHolderList[101]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist.message" 
		"q_armRN.placeHolderList[102]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wristShape.message" 
		"q_armRN.placeHolderList[103]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP.message" 
		"q_armRN.placeHolderList[104]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[105]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL.message" 
		"q_armRN.placeHolderList[106]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_CTLShape.message" 
		"q_armRN.placeHolderList[107]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space.message" 
		"q_armRN.placeHolderList[108]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_aim_space_aimConstraint1.message" 
		"q_armRN.placeHolderList[109]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP.message" 
		"q_armRN.placeHolderList[110]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP.message" 
		"q_armRN.placeHolderList[111]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space.message" 
		"q_armRN.placeHolderList[112]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|F_wrist_spaceShape.message" 
		"q_armRN.placeHolderList[113]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle3.message" 
		"q_armRN.placeHolderList[114]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle3|ikHandle3_parentConstraint1.message" 
		"q_armRN.placeHolderList[115]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle4.message" 
		"q_armRN.placeHolderList[116]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL|F_wrist_aim_space|F_wrist_space_offGRP|F_wrist_space_spcGRP|F_wrist_space|ikHandle4|ikHandle4_parentConstraint1.message" 
		"q_armRN.placeHolderList[117]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_foot_CTL_CTLShape.message" 
		"q_armRN.placeHolderList[118]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|IK_shoulder_aim.message" 
		"q_armRN.placeHolderList[119]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_foot_upVec.message" 
		"q_armRN.placeHolderList[120]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP.message" 
		"q_armRN.placeHolderList[121]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP.message" 
		"q_armRN.placeHolderList[122]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[123]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP|poleVec_CTL.message" 
		"q_armRN.placeHolderList[124]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP|poleVec_CTL|poleVec_CTLShape.message" 
		"q_armRN.placeHolderList[125]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|IK_arm_CTL_GRP|poleVec_GRP|poleVec_CTL_offGRP|poleVec_CTL_spcGRP|poleVec_CTL_spcGRP_parentConstraint1.message" 
		"q_armRN.placeHolderList[126]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP.message" "q_armRN.placeHolderList[127]" 
		""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP.message" 
		"q_armRN.placeHolderList[128]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space.message" 
		"q_armRN.placeHolderList[129]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale.message" 
		"q_armRN.placeHolderList[130]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP.message" 
		"q_armRN.placeHolderList[131]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[132]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL.message" 
		"q_armRN.placeHolderList[133]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTLShape.message" 
		"q_armRN.placeHolderList[134]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[135]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP.message" 
		"q_armRN.placeHolderList[136]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[137]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL.message" 
		"q_armRN.placeHolderList[138]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTLShape.message" 
		"q_armRN.placeHolderList[139]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[140]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP.message" 
		"q_armRN.placeHolderList[141]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[142]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL.message" 
		"q_armRN.placeHolderList[143]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTLShape.message" 
		"q_armRN.placeHolderList[144]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[145]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP.message" 
		"q_armRN.placeHolderList[146]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[147]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL.message" 
		"q_armRN.placeHolderList[148]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTLShape.message" 
		"q_armRN.placeHolderList[149]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale.message" 
		"q_armRN.placeHolderList[150]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP.message" 
		"q_armRN.placeHolderList[151]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP|FK_F_toe_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[152]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP|FK_F_toe_CTL_spcGRP|FK_F_toe_CTL.message" 
		"q_armRN.placeHolderList[153]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|FK_arm_CTL_GRP|FK_scapula_offGRP|FK_scapula_space|FK_scapula_space_ivsScale|FK_shoulder_CTL_offGRP|FK_shoulder_CTL_spcGRP|FK_shoulder_CTL|FK_shoulder_CTL_ivsScale|FK_B_elbow_CTL_offGRP|FK_B_elbow_CTL_spcGRP|FK_B_elbow_CTL|FK_B_elbow_CTL_ivsScale|FK_F_elbow_CTL_offGRP|FK_F_elbow_CTL_spcGRP|FK_F_elbow_CTL|FK_F_elbow_CTL_ivsScale|FK_F_wrist_CTL_offGRP|FK_F_wrist_CTL_spcGRP|FK_F_wrist_CTL|FK_F_wrist_CTL_ivsScale|FK_F_toe_CTL_offGRP|FK_F_toe_CTL_spcGRP|FK_F_toe_CTL|FK_F_toe_CTLShape.message" 
		"q_armRN.placeHolderList[154]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|arm_switch_CTL_offGRP.message" 
		"q_armRN.placeHolderList[155]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|arm_switch_CTL_offGRP|arm_switch_CTL_spcGRP.message" 
		"q_armRN.placeHolderList[156]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|arm_switch_CTL_offGRP|arm_switch_CTL_spcGRP|arm_switch_CTL.message" 
		"q_armRN.placeHolderList[157]" ""
		5 3 "q_armRN" "|arm_GRP1|arm_CTL_GRP|arm_switch_CTL_offGRP|arm_switch_CTL_spcGRP|arm_switch_CTL|arm_switch_CTLShape.message" 
		"q_armRN.placeHolderList[158]" ""
		5 3 "q_armRN" "|arm_GRP1|output.message" "q_armRN.placeHolderList[161]" 
		""
		5 3 "q_armRN" "|arm_GRP1|output|scapula.message" "q_armRN.placeHolderList[162]" 
		""
		5 3 "q_armRN" "|arm_GRP1|output|scapula|shoulder.message" "q_armRN.placeHolderList[168]" 
		""
		5 3 "q_armRN" "|arm_GRP1|output|scapula|shoulder|B_elbow.message" "q_armRN.placeHolderList[174]" 
		""
		5 3 "q_armRN" "|arm_GRP1|output|scapula|shoulder|B_elbow|F_elbow.message" 
		"q_armRN.placeHolderList[180]" ""
		5 3 "q_armRN" "|arm_GRP1|output|scapula|shoulder|B_elbow|F_elbow|wrist.message" 
		"q_armRN.placeHolderList[186]" ""
		5 3 "q_armRN" "|arm_GRP1|output|scapula|shoulder|B_elbow|F_elbow|wrist|toe.message" 
		"q_armRN.placeHolderList[192]" ""
		5 3 "q_armRN" "|arm_GRP1|output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe.message" 
		"q_armRN.placeHolderList[198]" ""
		5 3 "q_armRN" "IK_shoulder_space_DCMX1.message" "q_armRN.placeHolderList[204]" 
		""
		5 3 "q_armRN" "IK_shoulder_space_MTMX1.message" "q_armRN.placeHolderList[205]" 
		""
		5 3 "q_armRN" "stretch_output_mul_CTLVal_MULT.message" "q_armRN.placeHolderList[206]" 
		""
		5 3 "q_armRN" "loarm_stretch_output_mul_CTLlVal_MULT.message" "q_armRN.placeHolderList[207]" 
		""
		5 3 "q_armRN" "soft_armLen_PMA.message" "q_armRN.placeHolderList[208]" 
		""
		5 3 "q_armRN" "uparmLen1.message" "q_armRN.placeHolderList[209]" ""
		5 3 "q_armRN" "input_shoulder_local_MTMX1.message" "q_armRN.placeHolderList[210]" 
		""
		5 3 "q_armRN" "input_elbow_local_MTMX1.message" "q_armRN.placeHolderList[211]" 
		""
		5 3 "q_armRN" "midarmLen.message" "q_armRN.placeHolderList[212]" ""
		5 3 "q_armRN" "input_F_elbow_local_MTMX2.message" "q_armRN.placeHolderList[213]" 
		""
		5 3 "q_armRN" "upIKLen.message" "q_armRN.placeHolderList[214]" ""
		5 3 "q_armRN" "input_shoulder_local_dist_MTMX1.message" "q_armRN.placeHolderList[215]" 
		""
		5 3 "q_armRN" "wrist_space_local_MTMX1.message" "q_armRN.placeHolderList[216]" 
		""
		5 3 "q_armRN" "IK_negate_val_MULT.message" "q_armRN.placeHolderList[217]" 
		""
		5 3 "q_armRN" "loIKLen.message" "q_armRN.placeHolderList[218]" ""
		5 3 "q_armRN" "input_F_elbow_local_MTMX1.message" "q_armRN.placeHolderList[219]" 
		""
		5 3 "q_armRN" "F_toe_CTL_local_MTMX1.message" "q_armRN.placeHolderList[220]" 
		""
		5 3 "q_armRN" "loarm_soft_Len_PMA.message" "q_armRN.placeHolderList[221]" 
		""
		5 3 "q_armRN" "loarmLen1.message" "q_armRN.placeHolderList[222]" ""
		5 3 "q_armRN" "input_F_toe01_local_MTMX1.message" "q_armRN.placeHolderList[223]" 
		""
		5 3 "q_armRN" "CTLlen_COND.message" "q_armRN.placeHolderList[224]" ""
		
		5 3 "q_armRN" "softikV_COND1.message" "q_armRN.placeHolderList[225]" 
		""
		5 3 "q_armRN" "result_softik_len_SUBT.message" "q_armRN.placeHolderList[226]" 
		""
		5 3 "q_armRN" "mult_softikV_MULT.message" "q_armRN.placeHolderList[227]" 
		""
		5 3 "q_armRN" "power_val_POW.message" "q_armRN.placeHolderList[228]" 
		""
		5 3 "q_armRN" "negate_val_MULT.message" "q_armRN.placeHolderList[229]" 
		""
		5 3 "q_armRN" "divide_uparm_softikV_DIVD.message" "q_armRN.placeHolderList[230]" 
		""
		5 3 "q_armRN" "CTLLen_minue_dif_SUBT.message" "q_armRN.placeHolderList[231]" 
		""
		5 3 "q_armRN" "armlen_minus_softikV_SUBT.message" "q_armRN.placeHolderList[232]" 
		""
		5 3 "q_armRN" "for_zerodivide_COND1.message" "q_armRN.placeHolderList[233]" 
		""
		5 3 "q_armRN" "loarm_CTLlen_COND.message" "q_armRN.placeHolderList[234]" 
		""
		5 3 "q_armRN" "loarm_softikV_COND.message" "q_armRN.placeHolderList[235]" 
		""
		5 3 "q_armRN" "loarm_result_softik_len_SUBT.message" "q_armRN.placeHolderList[236]" 
		""
		5 3 "q_armRN" "loarm_mult_softikV_MULT.message" "q_armRN.placeHolderList[237]" 
		""
		5 3 "q_armRN" "loarm_power_val_POW.message" "q_armRN.placeHolderList[238]" 
		""
		5 3 "q_armRN" "loarm_negate_val_MULT.message" "q_armRN.placeHolderList[239]" 
		""
		5 3 "q_armRN" "divide_loarm_softikV_DIVD.message" "q_armRN.placeHolderList[240]" 
		""
		5 3 "q_armRN" "loarm_ctrlLen_minue_dif_SUBT.message" "q_armRN.placeHolderList[241]" 
		""
		5 3 "q_armRN" "loarm_armlen_minus_softikV_SUBT.message" "q_armRN.placeHolderList[242]" 
		""
		5 3 "q_armRN" "midarm_plus_stretch_PMA.message" "q_armRN.placeHolderList[243]" 
		""
		5 3 "q_armRN" "stretchCtrl_midarm_MULT.message" "q_armRN.placeHolderList[244]" 
		""
		5 3 "q_armRN" "stretched_midarmLen_MULT.message" "q_armRN.placeHolderList[245]" 
		""
		5 3 "q_armRN" "stretchedLen_SUBT.message" "q_armRN.placeHolderList[246]" 
		""
		5 3 "q_armRN" "midarm_ratio3_DIVD.message" "q_armRN.placeHolderList[247]" 
		""
		5 3 "q_armRN" "stretch_armLen_PMA.message" "q_armRN.placeHolderList[248]" 
		""
		5 3 "q_armRN" "uparm_plus_stretch_PMA.message" "q_armRN.placeHolderList[249]" 
		""
		5 3 "q_armRN" "stretchCtrl_uparm_MULT.message" "q_armRN.placeHolderList[250]" 
		""
		5 3 "q_armRN" "stretched_uparmLen_MULT.message" "q_armRN.placeHolderList[251]" 
		""
		5 3 "q_armRN" "uparm_ratio1.message" "q_armRN.placeHolderList[252]" 
		""
		5 3 "q_armRN" "loarm_plus_stretch_PMA.message" "q_armRN.placeHolderList[253]" 
		""
		5 3 "q_armRN" "loarm_stretchCtrl_arm_MULT.message" "q_armRN.placeHolderList[254]" 
		""
		5 3 "q_armRN" "loarm_stretched_arm_MULT.message" "q_armRN.placeHolderList[255]" 
		""
		5 3 "q_armRN" "loarm_stretchedLen_SUBT.message" "q_armRN.placeHolderList[256]" 
		""
		5 3 "q_armRN" "loarm_ratio_DIVD.message" "q_armRN.placeHolderList[257]" 
		""
		5 3 "q_armRN" "loarm_stretch_armLen_PMA.message" "q_armRN.placeHolderList[258]" 
		""
		5 3 "q_armRN" "scapula_CTL_local_DCMX1.message" "q_armRN.placeHolderList[259]" 
		""
		5 3 "q_armRN" "scapula_CTL_local_MTMX1.message" "q_armRN.placeHolderList[260]" 
		""
		5 3 "q_armRN" "IK_shoulder_CTL_local_DCMX1.message" "q_armRN.placeHolderList[261]" 
		""
		5 3 "q_armRN" "IK_shoulder_CTL_local_MTMX1.message" "q_armRN.placeHolderList[262]" 
		""
		5 3 "q_armRN" "F_wrist_space_scale_DCMX.message" "q_armRN.placeHolderList[263]" 
		""
		5 3 "q_armRN" "F_wrist_CTL_scale_DCMX.message" "q_armRN.placeHolderList[264]" 
		""
		5 3 "q_armRN" "F_ball_CTL_scale_DCMX.message" "q_armRN.placeHolderList[265]" 
		""
		5 3 "q_armRN" "FK_shoulder_CTL_local_DCMX.message" "q_armRN.placeHolderList[266]" 
		""
		5 3 "q_armRN" "FK_shoulder_CTL_local_MTMX.message" "q_armRN.placeHolderList[267]" 
		""
		5 3 "q_armRN" "FK_B_elbow_CTL_local_DCMX.message" "q_armRN.placeHolderList[268]" 
		""
		5 3 "q_armRN" "FK_B_elbow_CTL_local_MTMX.message" "q_armRN.placeHolderList[269]" 
		""
		5 3 "q_armRN" "FK_F_elbow_CTL_local_DCMX.message" "q_armRN.placeHolderList[270]" 
		""
		5 3 "q_armRN" "FK_F_elbow_CTL_local_MTMX.message" "q_armRN.placeHolderList[271]" 
		""
		5 3 "q_armRN" "FK_F_wrist_CTL_local_DCMX.message" "q_armRN.placeHolderList[272]" 
		""
		5 3 "q_armRN" "FK_F_wrist_CTL_local_MTMX.message" "q_armRN.placeHolderList[273]" 
		""
		5 3 "q_armRN" "FK_F_toe_CTL_local_DCMX.message" "q_armRN.placeHolderList[274]" 
		""
		5 3 "q_armRN" "FK_F_toe_CTL_local_MTMX.message" "q_armRN.placeHolderList[275]" 
		""
		5 3 "q_armRN" "makeNurbCircle11.message" "q_armRN.placeHolderList[276]" 
		""
		5 3 "q_armRN" "scapula_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[277]" 
		""
		5 3 "q_armRN" "input_wrist_local_DCMX1.message" "q_armRN.placeHolderList[278]" 
		""
		5 3 "q_armRN" "input_wrist_local_MTMX3.message" "q_armRN.placeHolderList[279]" 
		""
		5 3 "q_armRN" "unitConversion7.message" "q_armRN.placeHolderList[280]" 
		""
		5 3 "q_armRN" "ball_bk_condition1.message" "q_armRN.placeHolderList[281]" 
		""
		5 3 "q_armRN" "unitConversion10.message" "q_armRN.placeHolderList[282]" 
		""
		5 3 "q_armRN" "unitConversion11.message" "q_armRN.placeHolderList[283]" 
		""
		5 3 "q_armRN" "in_out_condition1.message" "q_armRN.placeHolderList[284]" 
		""
		5 3 "q_armRN" "in_out_default_condition1.message" "q_armRN.placeHolderList[285]" 
		""
		5 3 "q_armRN" "unitConversion9.message" "q_armRN.placeHolderList[286]" 
		""
		5 3 "q_armRN" "toe_fn_condition1.message" "q_armRN.placeHolderList[287]" 
		""
		5 3 "q_armRN" "roll_angle_SUBT.message" "q_armRN.placeHolderList[288]" 
		""
		5 3 "q_armRN" "unitConversion12.message" "q_armRN.placeHolderList[289]" 
		""
		5 3 "q_armRN" "input_tiptoe_local_DCMX1.message" "q_armRN.placeHolderList[290]" 
		""
		5 3 "q_armRN" "input_tiptoe_local_MTMX1.message" "q_armRN.placeHolderList[291]" 
		""
		5 3 "q_armRN" "unitConversion8.message" "q_armRN.placeHolderList[292]" 
		""
		5 3 "q_armRN" "ball_start_conditon1.message" "q_armRN.placeHolderList[293]" 
		""
		5 3 "q_armRN" "ball_fn_condition1.message" "q_armRN.placeHolderList[294]" 
		""
		5 3 "q_armRN" "backto_zero_ball_SUBT.message" "q_armRN.placeHolderList[295]" 
		""
		5 3 "q_armRN" "ball_remap1.message" "q_armRN.placeHolderList[296]" ""
		
		5 3 "q_armRN" "after_ball_start_SUBT.message" "q_armRN.placeHolderList[297]" 
		""
		5 3 "q_armRN" "input_toe_local_DCMX1.message" "q_armRN.placeHolderList[298]" 
		""
		5 3 "q_armRN" "input_toe_local_MTMX1.message" "q_armRN.placeHolderList[299]" 
		""
		5 3 "q_armRN" "input_wrist_local_DCMX2.message" "q_armRN.placeHolderList[300]" 
		""
		5 3 "q_armRN" "input_wrist_local_MTMX2.message" "q_armRN.placeHolderList[301]" 
		""
		5 3 "q_armRN" "unitConversion13.message" "q_armRN.placeHolderList[302]" 
		""
		5 3 "q_armRN" "toesAim_RVS.message" "q_armRN.placeHolderList[303]" ""
		
		5 3 "q_armRN" "input_F_elbow_local_DCMX1.message" "q_armRN.placeHolderList[304]" 
		""
		5 3 "q_armRN" "input_F_elbow_local_MTMX3.message" "q_armRN.placeHolderList[305]" 
		""
		5 3 "q_armRN" "upper_poleVec_offGRP_space_DCMX1.message" "q_armRN.placeHolderList[306]" 
		""
		5 3 "q_armRN" "upper_poleVec_offGRP_space_MTMX1.message" "q_armRN.placeHolderList[307]" 
		""
		5 3 "q_armRN" "unitConversion14.message" "q_armRN.placeHolderList[308]" 
		""
		5 3 "q_armRN" "FKIK_RVS1.message" "q_armRN.placeHolderList[309]" ""
		5 3 "q_armRN" "FK_scapula_space_inverse_DCMX.message" "q_armRN.placeHolderList[310]" 
		""
		5 3 "q_armRN" "makeNurbCircle12.message" "q_armRN.placeHolderList[311]" 
		""
		5 3 "q_armRN" "FK_shoulder_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[312]" 
		""
		5 3 "q_armRN" "makeNurbCircle13.message" "q_armRN.placeHolderList[313]" 
		""
		5 3 "q_armRN" "FK_B_elbow_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[314]" 
		""
		5 3 "q_armRN" "makeNurbCircle14.message" "q_armRN.placeHolderList[315]" 
		""
		5 3 "q_armRN" "FK_F_elbow_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[316]" 
		""
		5 3 "q_armRN" "makeNurbCircle15.message" "q_armRN.placeHolderList[317]" 
		""
		5 3 "q_armRN" "FK_F_wrist_CTL_inverse_DCMX.message" "q_armRN.placeHolderList[318]" 
		""
		5 3 "q_armRN" "arm_switch_CTL_space_DCMX1.message" "q_armRN.placeHolderList[319]" 
		""
		5 3 "q_armRN" "arm_switch_CTL_space_MTMX1.message" "q_armRN.placeHolderList[320]" 
		""
		5 3 "q_armRN" "arm_switch_space_CHOI1.message" "q_armRN.placeHolderList[321]" 
		""
		5 3 "q_armRN" "scapula_PRBL1.message" "q_armRN.placeHolderList[322]" 
		""
		5 3 "q_armRN" "scapula_BLCL1.message" "q_armRN.placeHolderList[323]" 
		""
		5 3 "q_armRN" "shoulder_PRBL1.message" "q_armRN.placeHolderList[324]" 
		""
		5 3 "q_armRN" "shoulder_BLCL1.message" "q_armRN.placeHolderList[325]" 
		""
		5 3 "q_armRN" "B_elbow_PRBL1.message" "q_armRN.placeHolderList[326]" 
		""
		5 3 "q_armRN" "B_elbow_BLCL1.message" "q_armRN.placeHolderList[327]" 
		""
		5 3 "q_armRN" "F_elbow_PRBL1.message" "q_armRN.placeHolderList[328]" 
		""
		5 3 "q_armRN" "F_elbow_BLCL1.message" "q_armRN.placeHolderList[329]" 
		""
		5 3 "q_armRN" "wrist_PRBL1.message" "q_armRN.placeHolderList[330]" ""
		
		5 3 "q_armRN" "wrist_BLCL1.message" "q_armRN.placeHolderList[331]" ""
		
		5 3 "q_armRN" "toe_PRBL1.message" "q_armRN.placeHolderList[332]" ""
		5 3 "q_armRN" "toe_BLCL1.message" "q_armRN.placeHolderList[333]" ""
		5 3 "q_armRN" "tiptoe_PRBL1.message" "q_armRN.placeHolderList[334]" 
		""
		5 3 "q_armRN" "tiptoe_BLCL1.message" "q_armRN.placeHolderList[335]" 
		""
		"q_armRN" 70
		0 "|q_armRNfosterParent1|scapula_CTL_offGRP_parentConstraint1" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP" 
		"-s -r "
		2 "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP|scapula_CTL_spcGRP|scapula_CTL|scapula_CTL_ivsScale|IK_shoulder_CTL_offGRP|IK_shoulder_CTL_spcGRP|IK_shoulder_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL" 
		"roll" " -k 1 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_CTL_GRP|IK_arm_CTL_GRP|input_F_toe_space|F_foot_CTL_offGRP|F_foot_CTL_spcGRP|F_foot_CTL|F_heel|F_heel_CTL|F_toe|F_toe_CTL|F_ball|F_ball_CTL|F_wrist|F_wrist_CTL_offGRP|F_wrist_CTL_spcGRP|F_wrist_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|arm_GRP|arm_output|scapula" "bindPose" " -type \"matrix\" 1 0 0 0 0 1 0 0 0 0 1 0 4.2393512725830087 40.81283187866210938 14.15216541290283203 1"
		
		2 "|arm_GRP|arm_output|scapula" "lockInfluenceWeights" " 1"
		2 "|arm_GRP|arm_output|scapula|shoulder" "bindPose" " -type \"matrix\" -0.00085279119967629491 -0.94572114913214977 -0.32497812361963085 0 0.99988640342647295 0.004083978103987751 -0.014508665194247261 0 0.015048355061014734 -0.32495358008031316 0.94561023566950941 0 6.13191890716552823 32.82753372192382813 19.58551406860351563 1"
		
		2 "|arm_GRP|arm_output|scapula|shoulder" "lockInfluenceWeights" " 1"
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow" "bindPose" " -type \"matrix\" 0.0043025326698629103 -0.99987726567527491 0.015064587560254361 0 0.99988640342647295 0.004083978103987751 -0.014508665194247261 0 0.014445361037280287 0.015125300280720233 0.99978125449316191 0 6.12240800927313966 22.28020851492039611 15.96113835865518737 1"
		
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow" "lockInfluenceWeights" " 1"
		
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow" "bindPose" " -type \"matrix\" 0.0040648770407613237 -0.99999125700358793 -0.00098116819537710613 0 0.99994615535025777 0.0040740580840831053 -0.0095440269784577252 0 0.0095479408712823045 -0.0009423200685781865 0.99995397336977809 0 6.18708386840875946 7.25000904621282416 16.18758952233580573 1"
		
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow" "lockInfluenceWeights" 
		" 1"
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist" "bindPose" 
		" -type \"matrix\" 1.1985037164617685e-07 -0.77150225781338966 0.63622658400040755 0 0.99997964095950842 0.0040598794950750259 0.0049229102142752564 0 -0.0063810396079308565 0.63621363044760948 0.77148655125426169 0 6.20569920401053921 2.67049166648768033 16.18309615224388409 1"
		
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist" "lockInfluenceWeights" 
		" 1"
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe" "bindPose" 
		" -type \"matrix\" -1.0395789225119134e-09 -0.32549028534308311 0.94554538449895587 0 0.99999999983234333 -1.7314743708541844e-05 -5.9592499564754819e-06 0 1.8311553966143812e-05 0.9455453843404229 0.32549028528853047 0 6.20569943610951924 1.17642131654708737 17.41519530270834082 1"
		
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe" "lockInfluenceWeights" 
		" 1"
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe" 
		"bindPose" " -type \"matrix\" 0.99999999983234333 -1.7314651510715095e-05 -5.9595177900590575e-06 0 1.7314689684902657e-05 0.99999999982958521 6.4055792921569044e-06 0 5.9594068787390115e-06 -6.4056824783387256e-06 0.99999999996172628 0 6.20569943337655783 3.9779339426448956e-05 20.83256919261829054 1"
		
		2 "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe" 
		"lockInfluenceWeights" " 1"
		5 4 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.translateX" "q_armRN.placeHolderList[336]" 
		""
		5 4 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.translateY" "q_armRN.placeHolderList[337]" 
		""
		5 4 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.translateZ" "q_armRN.placeHolderList[338]" 
		""
		5 4 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.rotateX" "q_armRN.placeHolderList[339]" 
		""
		5 4 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.rotateY" "q_armRN.placeHolderList[340]" 
		""
		5 4 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.rotateZ" "q_armRN.placeHolderList[341]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.rotateOrder" 
		"q_armRN.placeHolderList[342]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.parentInverseMatrix" 
		"q_armRN.placeHolderList[343]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.rotatePivot" 
		"q_armRN.placeHolderList[344]" ""
		5 3 "q_armRN" "|arm_GRP|arm_CTL_GRP|scapula_CTL_offGRP.rotatePivotTranslate" 
		"q_armRN.placeHolderList[345]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula.bindPose" "q_armRN.placeHolderList[346]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula.lockInfluenceWeights" "q_armRN.placeHolderList[347]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula.message" "q_armRN.placeHolderList[348]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula.worldMatrix" "q_armRN.placeHolderList[349]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula.objectColorRGB" "q_armRN.placeHolderList[350]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder.bindPose" "q_armRN.placeHolderList[351]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder.lockInfluenceWeights" 
		"q_armRN.placeHolderList[352]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder.message" "q_armRN.placeHolderList[353]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder.worldMatrix" "q_armRN.placeHolderList[354]" 
		""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder.objectColorRGB" 
		"q_armRN.placeHolderList[355]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow.bindPose" 
		"q_armRN.placeHolderList[356]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow.lockInfluenceWeights" 
		"q_armRN.placeHolderList[357]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow.message" 
		"q_armRN.placeHolderList[358]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow.worldMatrix" 
		"q_armRN.placeHolderList[359]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow.objectColorRGB" 
		"q_armRN.placeHolderList[360]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow.bindPose" 
		"q_armRN.placeHolderList[361]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow.lockInfluenceWeights" 
		"q_armRN.placeHolderList[362]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow.message" 
		"q_armRN.placeHolderList[363]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow.worldMatrix" 
		"q_armRN.placeHolderList[364]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow.objectColorRGB" 
		"q_armRN.placeHolderList[365]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist.bindPose" 
		"q_armRN.placeHolderList[366]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist.lockInfluenceWeights" 
		"q_armRN.placeHolderList[367]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist.message" 
		"q_armRN.placeHolderList[368]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist.worldMatrix" 
		"q_armRN.placeHolderList[369]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist.objectColorRGB" 
		"q_armRN.placeHolderList[370]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe.bindPose" 
		"q_armRN.placeHolderList[371]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe.lockInfluenceWeights" 
		"q_armRN.placeHolderList[372]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe.message" 
		"q_armRN.placeHolderList[373]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe.worldMatrix" 
		"q_armRN.placeHolderList[374]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe.objectColorRGB" 
		"q_armRN.placeHolderList[375]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe.bindPose" 
		"q_armRN.placeHolderList[376]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe.lockInfluenceWeights" 
		"q_armRN.placeHolderList[377]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe.message" 
		"q_armRN.placeHolderList[378]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe.worldMatrix" 
		"q_armRN.placeHolderList[379]" ""
		5 3 "q_armRN" "|arm_GRP|arm_output|scapula|shoulder|B_elbow|F_elbow|wrist|toe|tiptoe.objectColorRGB" 
		"q_armRN.placeHolderList[380]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "q_legRN";
	rename -uid "3DB82E48-4269-9730-CFDF-EEBB81DD1CD1";
	setAttr ".fn[0]" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/q_leg.ma";
	setAttr -s 68 ".phl";
	setAttr ".phl[218]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"q_legRN"
		"q_legRN" 290
		5 3 "q_legRN" "|leg_GRP.message" "q_legRN.placeHolderList[3]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP.message" "q_legRN.placeHolderList[4]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|input_hip.message" "q_legRN.placeHolderList[5]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|input_hip|input_thigh.message" 
		"q_legRN.placeHolderList[6]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|input_hip|input_thigh|input_F_knee.message" 
		"q_legRN.placeHolderList[7]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|input_hip|input_thigh|input_F_knee|input_B_knee.message" 
		"q_legRN.placeHolderList[8]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|input_hip|input_thigh|input_F_knee|input_B_knee|input_ankle.message" 
		"q_legRN.placeHolderList[9]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|input_hip|input_thigh|input_F_knee|input_B_knee|input_ankle|input_hind_toe.message" 
		"q_legRN.placeHolderList[10]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|input_hip|input_thigh|input_F_knee|input_B_knee|input_ankle|input_hind_toe|input_hind_tiptoe.message" 
		"q_legRN.placeHolderList[11]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP.message" "q_legRN.placeHolderList[12]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space.message" 
		"q_legRN.placeHolderList[13]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_thigh_spaceShape.message" 
		"q_legRN.placeHolderList[14]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim.message" 
		"q_legRN.placeHolderList[15]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|IK_upperLeg_CTLaimShape.message" 
		"q_legRN.placeHolderList[16]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC.message" 
		"q_legRN.placeHolderList[17]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_softIK_output_LOCShape.message" 
		"q_legRN.placeHolderList[18]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC.message" 
		"q_legRN.placeHolderList[19]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|upperLeg_stretch_output_LOCShape.message" 
		"q_legRN.placeHolderList[20]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|B_ankle_space_GRP.message" 
		"q_legRN.placeHolderList[21]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|B_ankle_space_GRP|B_ankle_space.message" 
		"q_legRN.placeHolderList[22]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|B_ankle_space_GRP|B_ankle_space|ikHandle9.message" 
		"q_legRN.placeHolderList[23]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|B_ankle_space_GRP|B_ankle_space|ikHandle9|ikHandle9_poleVectorConstraint1.message" 
		"q_legRN.placeHolderList[24]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space.message" 
		"q_legRN.placeHolderList[25]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_knee_spaceShape.message" 
		"q_legRN.placeHolderList[26]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim.message" 
		"q_legRN.placeHolderList[27]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim|IK_lowerLeg_CTLaimShape.message" 
		"q_legRN.placeHolderList[28]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim|lowerLeg_softIK_output_LOC.message" 
		"q_legRN.placeHolderList[29]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim|lowerLeg_softIK_output_LOC|lowerLeg_softIK_output_LOCShape.message" 
		"q_legRN.placeHolderList[30]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim|lowerLeg_softIK_output_LOC|lowerLeg_stretch_output_LOC.message" 
		"q_legRN.placeHolderList[31]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim|lowerLeg_softIK_output_LOC|lowerLeg_stretch_output_LOC|lowerLeg_stretch_output_LOCShape.message" 
		"q_legRN.placeHolderList[32]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim|lowerLeg_softIK_output_LOC|lowerLeg_stretch_output_LOC|ikHandle6.message" 
		"q_legRN.placeHolderList[33]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_lowerLeg_CTLaim|IK_lowerLeg_CTLaim_aimConstraint1.message" 
		"q_legRN.placeHolderList[34]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_knee_space_upVec.message" 
		"q_legRN.placeHolderList[35]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|upperLeg_softIK_output_LOC|upperLeg_stretch_output_LOC|IK_knee_space|IK_knee_space_upVec|IK_knee_space_upVecShape.message" 
		"q_legRN.placeHolderList[36]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_upperLeg_CTLaim|IK_upperLeg_CTLaim_aimConstraint1.message" 
		"q_legRN.placeHolderList[37]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_thigh_space_upVec.message" 
		"q_legRN.placeHolderList[38]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_thigh_space|IK_thigh_space_upVec|IK_thigh_space_upVecShape.message" 
		"q_legRN.placeHolderList[39]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|leg_softIK_input.message" 
		"q_legRN.placeHolderList[40]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|leg_softIK_output.message" 
		"q_legRN.placeHolderList[41]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|leg_stretchIK_input.message" 
		"q_legRN.placeHolderList[42]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|leg_stretchIK_output.message" 
		"q_legRN.placeHolderList[43]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip.message" 
		"q_legRN.placeHolderList[44]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh.message" 
		"q_legRN.placeHolderList[45]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee.message" 
		"q_legRN.placeHolderList[46]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|IK_B_knee.message" 
		"q_legRN.placeHolderList[47]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|IK_B_knee|IK_ankle.message" 
		"q_legRN.placeHolderList[48]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|IK_B_knee|IK_ankle|IK_hind_toe.message" 
		"q_legRN.placeHolderList[49]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|IK_B_knee|IK_ankle|IK_hind_toe|IK_hind_tiptoe.message" 
		"q_legRN.placeHolderList[50]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|IK_B_knee|IK_ankle|IK_hind_toe|effector8.message" 
		"q_legRN.placeHolderList[51]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|IK_B_knee|IK_ankle|effector7.message" 
		"q_legRN.placeHolderList[52]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|IK_B_knee|effector6.message" 
		"q_legRN.placeHolderList[53]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|effector9.message" 
		"q_legRN.placeHolderList[54]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|annotation2.message" 
		"q_legRN.placeHolderList[55]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip|IK_thigh|IK_F_knee|annotation2|annotationShape2.message" 
		"q_legRN.placeHolderList[56]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip_aim_space.message" 
		"q_legRN.placeHolderList[57]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip_aim_space|IK_hip_aim_space_pointConstraint1.message" 
		"q_legRN.placeHolderList[58]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_IK_GRP|IK_hip_aim_space|IK_hip_aim_space_aimConstraint1.message" 
		"q_legRN.placeHolderList[59]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP.message" "q_legRN.placeHolderList[60]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP|FK_hip.message" 
		"q_legRN.placeHolderList[61]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP|FK_hip|FK_thigh.message" 
		"q_legRN.placeHolderList[62]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP|FK_hip|FK_thigh|FK_F_knee.message" 
		"q_legRN.placeHolderList[63]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP|FK_hip|FK_thigh|FK_F_knee|FK_B_knee.message" 
		"q_legRN.placeHolderList[64]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP|FK_hip|FK_thigh|FK_F_knee|FK_B_knee|FK_ankle.message" 
		"q_legRN.placeHolderList[65]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP|FK_hip|FK_thigh|FK_F_knee|FK_B_knee|FK_ankle|FK_hind_toe.message" 
		"q_legRN.placeHolderList[66]" ""
		5 3 "q_legRN" "|leg_GRP|leg_motion_GRP|motion_FK_GRP|FK_hip|FK_thigh|FK_F_knee|FK_B_knee|FK_ankle|FK_hind_toe|FK_hind_tiptoe.message" 
		"q_legRN.placeHolderList[67]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP.message" "q_legRN.placeHolderList[68]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.message" "q_legRN.placeHolderList[69]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[70]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL.message" 
		"q_legRN.placeHolderList[71]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTLShape.message" 
		"q_legRN.placeHolderList[72]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale.message" 
		"q_legRN.placeHolderList[73]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale|IK_thigh_CTL_offGRP.message" 
		"q_legRN.placeHolderList[74]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale|IK_thigh_CTL_offGRP|IK_thigh_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[75]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale|IK_thigh_CTL_offGRP|IK_thigh_CTL_spcGRP|IK_thigh_CTL.message" 
		"q_legRN.placeHolderList[76]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale|IK_thigh_CTL_offGRP|IK_thigh_CTL_spcGRP|IK_thigh_CTL|IK_thigh_CTLShape.message" 
		"q_legRN.placeHolderList[77]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale|IK_thigh_CTL_offGRP|IK_thigh_CTL_spcGRP|IK_thigh_CTL|IK_B_ankle_upVec.message" 
		"q_legRN.placeHolderList[78]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale|IK_thigh_CTL_offGRP|IK_thigh_CTL_spcGRP|IK_thigh_CTL|IK_B_ankle_upVec|IK_B_ankle_upVecShape.message" 
		"q_legRN.placeHolderList[79]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP.message" "q_legRN.placeHolderList[80]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP.message" 
		"q_legRN.placeHolderList[81]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[82]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL.message" 
		"q_legRN.placeHolderList[83]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel.message" 
		"q_legRN.placeHolderList[84]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heelShape.message" 
		"q_legRN.placeHolderList[85]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL.message" 
		"q_legRN.placeHolderList[86]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_heel_CTLShape.message" 
		"q_legRN.placeHolderList[87]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_heel_out.message" 
		"q_legRN.placeHolderList[88]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_heel_out|B_heel_outShape.message" 
		"q_legRN.placeHolderList[89]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_heel_in.message" 
		"q_legRN.placeHolderList[90]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_heel_in|B_heel_inShape.message" 
		"q_legRN.placeHolderList[91]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe.message" 
		"q_legRN.placeHolderList[92]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toeShape.message" 
		"q_legRN.placeHolderList[93]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL.message" 
		"q_legRN.placeHolderList[94]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_toe_CTLShape.message" 
		"q_legRN.placeHolderList[95]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball.message" 
		"q_legRN.placeHolderList[96]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ballShape.message" 
		"q_legRN.placeHolderList[97]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL.message" 
		"q_legRN.placeHolderList[98]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ball_CTLShape.message" 
		"q_legRN.placeHolderList[99]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle.message" 
		"q_legRN.placeHolderList[100]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankleShape.message" 
		"q_legRN.placeHolderList[101]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP.message" 
		"q_legRN.placeHolderList[102]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[103]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL.message" 
		"q_legRN.placeHolderList[104]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_CTLShape.message" 
		"q_legRN.placeHolderList[105]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space.message" 
		"q_legRN.placeHolderList[106]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_knee_space_GRP.message" 
		"q_legRN.placeHolderList[107]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_knee_space_GRP|B_knee_space.message" 
		"q_legRN.placeHolderList[108]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_knee_space_GRP|B_knee_space|B_knee_spaceShape.message" 
		"q_legRN.placeHolderList[109]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_knee_space_GRP|B_knee_space|ikHandle7.message" 
		"q_legRN.placeHolderList[110]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_knee_space_GRP|B_knee_space|ikHandle7|ikHandle7_pointConstraint1.message" 
		"q_legRN.placeHolderList[111]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_knee_space_GRP|B_knee_space|ikHandle8.message" 
		"q_legRN.placeHolderList[112]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_knee_space_GRP|B_knee_space|ikHandle8|ikHandle8_pointConstraint1.message" 
		"q_legRN.placeHolderList[113]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_heel|B_heel_CTL|B_toe|B_toe_CTL|B_ball|B_ball_CTL|B_ankle|B_ankle_CTL_offGRP|B_ankle_CTL_spcGRP|B_ankle_CTL|B_ankle_aim_space|B_ankle_aim_space_aimConstraint1.message" 
		"q_legRN.placeHolderList[114]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_foot_CTLShape.message" 
		"q_legRN.placeHolderList[115]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|B_foot_upVec.message" 
		"q_legRN.placeHolderList[116]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL|IK_thigh_aim_space.message" 
		"q_legRN.placeHolderList[117]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_poleVec_offGRP.message" 
		"q_legRN.placeHolderList[118]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_poleVec_offGRP|B_poleVec_space.message" 
		"q_legRN.placeHolderList[119]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_poleVec_offGRP|B_poleVec_space|B_poleVec_CTL.message" 
		"q_legRN.placeHolderList[120]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_poleVec_offGRP|B_poleVec_space|B_poleVec_CTL|B_poleVec_CTLShape.message" 
		"q_legRN.placeHolderList[121]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_poleVec_offGRP|B_poleVec_space|B_poleVec_space_parentConstraint1.message" 
		"q_legRN.placeHolderList[122]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP.message" "q_legRN.placeHolderList[123]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP.message" 
		"q_legRN.placeHolderList[124]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space.message" 
		"q_legRN.placeHolderList[125]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale.message" 
		"q_legRN.placeHolderList[126]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP.message" 
		"q_legRN.placeHolderList[127]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[128]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL.message" 
		"q_legRN.placeHolderList[129]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTLShape.message" 
		"q_legRN.placeHolderList[130]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale.message" 
		"q_legRN.placeHolderList[131]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP.message" 
		"q_legRN.placeHolderList[132]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[133]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL.message" 
		"q_legRN.placeHolderList[134]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTLShape.message" 
		"q_legRN.placeHolderList[135]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale.message" 
		"q_legRN.placeHolderList[136]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP.message" 
		"q_legRN.placeHolderList[137]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[138]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL.message" 
		"q_legRN.placeHolderList[139]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTLShape.message" 
		"q_legRN.placeHolderList[140]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale.message" 
		"q_legRN.placeHolderList[141]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP.message" 
		"q_legRN.placeHolderList[142]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[143]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP|FK_ankle_CTL.message" 
		"q_legRN.placeHolderList[144]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP|FK_ankle_CTL|FK_ankle_CTLShape.message" 
		"q_legRN.placeHolderList[145]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP|FK_ankle_CTL|FK_ankle_CTL_ivsScale.message" 
		"q_legRN.placeHolderList[146]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP|FK_ankle_CTL|FK_ankle_CTL_ivsScale|FK_hind_toe_CTL_offGRP.message" 
		"q_legRN.placeHolderList[147]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP|FK_ankle_CTL|FK_ankle_CTL_ivsScale|FK_hind_toe_CTL_offGRP|FK_hind_toe_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[148]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP|FK_ankle_CTL|FK_ankle_CTL_ivsScale|FK_hind_toe_CTL_offGRP|FK_hind_toe_CTL_spcGRP|FK_hind_toe_CTL.message" 
		"q_legRN.placeHolderList[149]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|FK_leg_CTL_GRP|FK_hip_offGRP|FK_hip_space|FK_hip_space_ivsScale|FK_thigh_CTL_offGRP|FK_thigh_CTL_spcGRP|FK_thigh_CTL|FK_thigh_CTL_ivsScale|FK_F_knee_CTL_offGRP|FK_F_knee_CTL_spcGRP|FK_F_knee_CTL|FK_F_knee_CTL_ivsScale|FK_B_knee_CTL_offGRP|FK_B_knee_CTL_spcGRP|FK_B_knee_CTL|FK_B_knee_CTL_ivsScale|FK_ankle_CTL_offGRP|FK_ankle_CTL_spcGRP|FK_ankle_CTL|FK_ankle_CTL_ivsScale|FK_hind_toe_CTL_offGRP|FK_hind_toe_CTL_spcGRP|FK_hind_toe_CTL|FK_hind_toe_CTLShape.message" 
		"q_legRN.placeHolderList[150]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|leg_switch_CTL_offGRP.message" "q_legRN.placeHolderList[151]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|leg_switch_CTL_offGRP|leg_switch_CTL_spcGRP.message" 
		"q_legRN.placeHolderList[152]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|leg_switch_CTL_offGRP|leg_switch_CTL_spcGRP|leg_switch_CTL.message" 
		"q_legRN.placeHolderList[153]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|leg_switch_CTL_offGRP|leg_switch_CTL_spcGRP|leg_switch_CTL|leg_switch_CTLShape.message" 
		"q_legRN.placeHolderList[154]" ""
		5 3 "q_legRN" "|leg_GRP|output.message" "q_legRN.placeHolderList[157]" 
		""
		5 3 "q_legRN" "|leg_GRP|output|hip.message" "q_legRN.placeHolderList[158]" 
		""
		5 3 "q_legRN" "|leg_GRP|output|hip|thigh.message" "q_legRN.placeHolderList[164]" 
		""
		5 3 "q_legRN" "|leg_GRP|output|hip|thigh|F_knee.message" "q_legRN.placeHolderList[170]" 
		""
		5 3 "q_legRN" "|leg_GRP|output|hip|thigh|F_knee|B_knee.message" "q_legRN.placeHolderList[176]" 
		""
		5 3 "q_legRN" "|leg_GRP|output|hip|thigh|F_knee|B_knee|ankle.message" 
		"q_legRN.placeHolderList[182]" ""
		5 3 "q_legRN" "|leg_GRP|output|hip|thigh|F_knee|B_knee|ankle|hind_toe.message" 
		"q_legRN.placeHolderList[188]" ""
		5 3 "q_legRN" "|leg_GRP|output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe.message" 
		"q_legRN.placeHolderList[194]" ""
		5 3 "q_legRN" "IK_thigh_space_DCMX.message" "q_legRN.placeHolderList[200]" 
		""
		5 3 "q_legRN" "IK_thigh_space_MTMX.message" "q_legRN.placeHolderList[201]" 
		""
		5 3 "q_legRN" "upperLeg_stretch_output_mul_ctrlVal.message" "q_legRN.placeHolderList[202]" 
		""
		5 3 "q_legRN" "lowerLeg_stretch_output_mul_ctrlVal.message" "q_legRN.placeHolderList[203]" 
		""
		5 3 "q_legRN" "softupperLegLen.message" "q_legRN.placeHolderList[204]" 
		""
		5 3 "q_legRN" "uplegLen.message" "q_legRN.placeHolderList[205]" ""
		5 3 "q_legRN" "input_thigh_local_MTMX.message" "q_legRN.placeHolderList[206]" 
		""
		5 3 "q_legRN" "input_knee_local_MTMX.message" "q_legRN.placeHolderList[207]" 
		""
		5 3 "q_legRN" "midlegLen.message" "q_legRN.placeHolderList[208]" ""
		5 3 "q_legRN" "input_ankle_local_MTMX.message" "q_legRN.placeHolderList[209]" 
		""
		5 3 "q_legRN" "leg_ctrlLen.message" "q_legRN.placeHolderList[210]" ""
		
		5 3 "q_legRN" "B_knee_space_local_MTMX.message" "q_legRN.placeHolderList[211]" 
		""
		5 3 "q_legRN" "input_thigh_local_dist_MTMX.message" "q_legRN.placeHolderList[212]" 
		""
		5 3 "q_legRN" "leg_IK_negate_val.message" "q_legRN.placeHolderList[213]" 
		""
		5 3 "q_legRN" "softlowerLegLen.message" "q_legRN.placeHolderList[214]" 
		""
		5 3 "q_legRN" "loLegLen.message" "q_legRN.placeHolderList[215]" ""
		5 3 "q_legRN" "input_B_toe_local_MTMX.message" "q_legRN.placeHolderList[216]" 
		""
		5 3 "q_legRN" "B_toe_ctrlLen.message" "q_legRN.placeHolderList[217]" 
		""
		5 3 "q_legRN" "multMatrix10.message" "q_legRN.placeHolderList[218]" 
		""
		5 3 "q_legRN" "multMatrix4.message" "q_legRN.placeHolderList[219]" ""
		
		5 3 "q_legRN" "upperLeg_ctrllen_COND.message" "q_legRN.placeHolderList[220]" 
		""
		5 3 "q_legRN" "upperLeg_softikV_COND.message" "q_legRN.placeHolderList[221]" 
		""
		5 3 "q_legRN" "upperLeg_result_softik_len.message" "q_legRN.placeHolderList[222]" 
		""
		5 3 "q_legRN" "upperLeg_mult_softikV.message" "q_legRN.placeHolderList[223]" 
		""
		5 3 "q_legRN" "upperLeg_power_val.message" "q_legRN.placeHolderList[224]" 
		""
		5 3 "q_legRN" "upperLeg_negate_val.message" "q_legRN.placeHolderList[225]" 
		""
		5 3 "q_legRN" "upperLeg_divide_softikV.message" "q_legRN.placeHolderList[226]" 
		""
		5 3 "q_legRN" "upperLeg_ctrlLen_minue_dif.message" "q_legRN.placeHolderList[227]" 
		""
		5 3 "q_legRN" "upperLeglen_minus_softikV.message" "q_legRN.placeHolderList[228]" 
		""
		5 3 "q_legRN" "leg_for_zerodivide_COND.message" "q_legRN.placeHolderList[229]" 
		""
		5 3 "q_legRN" "lowerLeg_ctrllen_COND.message" "q_legRN.placeHolderList[230]" 
		""
		5 3 "q_legRN" "lowerLeg_softikV_COND.message" "q_legRN.placeHolderList[231]" 
		""
		5 3 "q_legRN" "lowerLeg_result_softik_len.message" "q_legRN.placeHolderList[232]" 
		""
		5 3 "q_legRN" "lowerLeg_mult_softikV.message" "q_legRN.placeHolderList[233]" 
		""
		5 3 "q_legRN" "lowerLeg_power_val.message" "q_legRN.placeHolderList[234]" 
		""
		5 3 "q_legRN" "lowerLeg_negate_val.message" "q_legRN.placeHolderList[235]" 
		""
		5 3 "q_legRN" "lowerLeg_divide_softikV.message" "q_legRN.placeHolderList[236]" 
		""
		5 3 "q_legRN" "lowerLeg_ctrlLen_minue_dif.message" "q_legRN.placeHolderList[237]" 
		""
		5 3 "q_legRN" "lowerLeglen_minus_softikV.message" "q_legRN.placeHolderList[238]" 
		""
		5 3 "q_legRN" "loleg_plus_stretch.message" "q_legRN.placeHolderList[239]" 
		""
		5 3 "q_legRN" "stretchCtrl_loleg.message" "q_legRN.placeHolderList[240]" 
		""
		5 3 "q_legRN" "stretched_lolegLen.message" "q_legRN.placeHolderList[241]" 
		""
		5 3 "q_legRN" "upperLeg_stretchedLen.message" "q_legRN.placeHolderList[242]" 
		""
		5 3 "q_legRN" "loleg_ratio.message" "q_legRN.placeHolderList[243]" ""
		
		5 3 "q_legRN" "stretch_legLen.message" "q_legRN.placeHolderList[244]" 
		""
		5 3 "q_legRN" "upleg_plus_stretch.message" "q_legRN.placeHolderList[245]" 
		""
		5 3 "q_legRN" "stretchCtrl_upleg.message" "q_legRN.placeHolderList[246]" 
		""
		5 3 "q_legRN" "stretched_uplegLen.message" "q_legRN.placeHolderList[247]" 
		""
		5 3 "q_legRN" "upleg_ratio.message" "q_legRN.placeHolderList[248]" ""
		
		5 3 "q_legRN" "lowerLeg_plus_stretch.message" "q_legRN.placeHolderList[249]" 
		""
		5 3 "q_legRN" "stretchCtrl_lowerLeg.message" "q_legRN.placeHolderList[250]" 
		""
		5 3 "q_legRN" "stretched_lowerLegLen.message" "q_legRN.placeHolderList[251]" 
		""
		5 3 "q_legRN" "lowerLeg_stretchedLen.message" "q_legRN.placeHolderList[252]" 
		""
		5 3 "q_legRN" "lowerLeg_ratio.message" "q_legRN.placeHolderList[253]" 
		""
		5 3 "q_legRN" "decomposeMatrix2.message" "q_legRN.placeHolderList[254]" 
		""
		5 3 "q_legRN" "multMatrix11.message" "q_legRN.placeHolderList[255]" 
		""
		5 3 "q_legRN" "decomposeMatrix3.message" "q_legRN.placeHolderList[256]" 
		""
		5 3 "q_legRN" "multMatrix8.message" "q_legRN.placeHolderList[257]" ""
		
		5 3 "q_legRN" "IK_B_knee_local_DCMX.message" "q_legRN.placeHolderList[258]" 
		""
		5 3 "q_legRN" "IK_ankle_local_DCMX.message" "q_legRN.placeHolderList[259]" 
		""
		5 3 "q_legRN" "IK_hind_toe_local_DCMX.message" "q_legRN.placeHolderList[260]" 
		""
		5 3 "q_legRN" "FK_thigh_local_DCMX.message" "q_legRN.placeHolderList[261]" 
		""
		5 3 "q_legRN" "FK_thigh_local_MTMX.message" "q_legRN.placeHolderList[262]" 
		""
		5 3 "q_legRN" "FK_F_knee_local_DCMX.message" "q_legRN.placeHolderList[263]" 
		""
		5 3 "q_legRN" "FK_F_knee_local_MTMX.message" "q_legRN.placeHolderList[264]" 
		""
		5 3 "q_legRN" "FK_B_knee_local_DCMX.message" "q_legRN.placeHolderList[265]" 
		""
		5 3 "q_legRN" "FK_B_knee_local_MTMX.message" "q_legRN.placeHolderList[266]" 
		""
		5 3 "q_legRN" "FK_ankle_local_DCMX.message" "q_legRN.placeHolderList[267]" 
		""
		5 3 "q_legRN" "FK_ankle_local_MTMX.message" "q_legRN.placeHolderList[268]" 
		""
		5 3 "q_legRN" "FK_hind_toe_local_DCMX.message" "q_legRN.placeHolderList[269]" 
		""
		5 3 "q_legRN" "FK_hind_toe_local_MTMX.message" "q_legRN.placeHolderList[270]" 
		""
		5 3 "q_legRN" "hip_L_CTL_inverse_DCMX.message" "q_legRN.placeHolderList[271]" 
		""
		5 3 "q_legRN" "unitConversion15.message" "q_legRN.placeHolderList[272]" 
		""
		5 3 "q_legRN" "ball_bk_condition2.message" "q_legRN.placeHolderList[273]" 
		""
		5 3 "q_legRN" "unitConversion18.message" "q_legRN.placeHolderList[274]" 
		""
		5 3 "q_legRN" "in_out_condition2.message" "q_legRN.placeHolderList[275]" 
		""
		5 3 "q_legRN" "in_out_default_condition2.message" "q_legRN.placeHolderList[276]" 
		""
		5 3 "q_legRN" "unitConversion17.message" "q_legRN.placeHolderList[277]" 
		""
		5 3 "q_legRN" "toe_fn_condition2.message" "q_legRN.placeHolderList[278]" 
		""
		5 3 "q_legRN" "plusMinusAverage2.message" "q_legRN.placeHolderList[279]" 
		""
		5 3 "q_legRN" "B_toe_local_DCMX.message" "q_legRN.placeHolderList[280]" 
		""
		5 3 "q_legRN" "B_toe_local_MTMX.message" "q_legRN.placeHolderList[281]" 
		""
		5 3 "q_legRN" "unitConversion16.message" "q_legRN.placeHolderList[282]" 
		""
		5 3 "q_legRN" "ball_start_conditon2.message" "q_legRN.placeHolderList[283]" 
		""
		5 3 "q_legRN" "ball_fn_condition2.message" "q_legRN.placeHolderList[284]" 
		""
		5 3 "q_legRN" "backto_zero_ball1.message" "q_legRN.placeHolderList[285]" 
		""
		5 3 "q_legRN" "ball_remap2.message" "q_legRN.placeHolderList[286]" ""
		
		5 3 "q_legRN" "after_ball_start1.message" "q_legRN.placeHolderList[287]" 
		""
		5 3 "q_legRN" "B_ball_local_DCMX.message" "q_legRN.placeHolderList[288]" 
		""
		5 3 "q_legRN" "B_ball_local_MTMX.message" "q_legRN.placeHolderList[289]" 
		""
		5 3 "q_legRN" "B_ankle_local_DCMX.message" "q_legRN.placeHolderList[290]" 
		""
		5 3 "q_legRN" "B_ankle_local_MTMX.message" "q_legRN.placeHolderList[291]" 
		""
		5 3 "q_legRN" "B_knee_space_GRP_local_DCMX.message" "q_legRN.placeHolderList[292]" 
		""
		5 3 "q_legRN" "B_knee_space_GRP_local_MTMX.message" "q_legRN.placeHolderList[293]" 
		""
		5 3 "q_legRN" "unitConversion19.message" "q_legRN.placeHolderList[294]" 
		""
		5 3 "q_legRN" "toesAim_RVS1.message" "q_legRN.placeHolderList[295]" 
		""
		5 3 "q_legRN" "upper_poleVec_offGRP_space_DCMX2.message" "q_legRN.placeHolderList[296]" 
		""
		5 3 "q_legRN" "upper_poleVec_offGRP_space_MTMX2.message" "q_legRN.placeHolderList[297]" 
		""
		5 3 "q_legRN" "unitConversion20.message" "q_legRN.placeHolderList[298]" 
		""
		5 3 "q_legRN" "FK_IK_RVS.message" "q_legRN.placeHolderList[299]" ""
		5 3 "q_legRN" "FK_hip_space_inverse_DCMX.message" "q_legRN.placeHolderList[300]" 
		""
		5 3 "q_legRN" "makeNurbCircle16.message" "q_legRN.placeHolderList[301]" 
		""
		5 3 "q_legRN" "FK_thigh_CTL_inverse_DCMX.message" "q_legRN.placeHolderList[302]" 
		""
		5 3 "q_legRN" "makeNurbCircle17.message" "q_legRN.placeHolderList[303]" 
		""
		5 3 "q_legRN" "FK_F_knee_CTL_inverse_DCMX.message" "q_legRN.placeHolderList[304]" 
		""
		5 3 "q_legRN" "makeNurbCircle18.message" "q_legRN.placeHolderList[305]" 
		""
		5 3 "q_legRN" "FK_B_knee_CTL_inverse_DCMX.message" "q_legRN.placeHolderList[306]" 
		""
		5 3 "q_legRN" "makeNurbCircle19.message" "q_legRN.placeHolderList[307]" 
		""
		5 3 "q_legRN" "FK_ankle_CTL_inverse_DCMX.message" "q_legRN.placeHolderList[308]" 
		""
		5 3 "q_legRN" "leg_switch_CTL_DCMX.message" "q_legRN.placeHolderList[309]" 
		""
		5 3 "q_legRN" "leg_switch_CTL_MTMX.message" "q_legRN.placeHolderList[310]" 
		""
		5 3 "q_legRN" "leg_switch_CTL_CHOI.message" "q_legRN.placeHolderList[311]" 
		""
		5 3 "q_legRN" "hip_PRBL.message" "q_legRN.placeHolderList[312]" ""
		5 3 "q_legRN" "hip_BLCL.message" "q_legRN.placeHolderList[313]" ""
		5 3 "q_legRN" "thigh_PRBL.message" "q_legRN.placeHolderList[314]" ""
		
		5 3 "q_legRN" "thigh_BLCL.message" "q_legRN.placeHolderList[315]" ""
		
		5 3 "q_legRN" "F_knee_PRBL.message" "q_legRN.placeHolderList[316]" ""
		
		5 3 "q_legRN" "F_knee_BLCL.message" "q_legRN.placeHolderList[317]" ""
		
		5 3 "q_legRN" "B_knee_PRBL.message" "q_legRN.placeHolderList[318]" ""
		
		5 3 "q_legRN" "B_knee_BLCL.message" "q_legRN.placeHolderList[319]" ""
		
		5 3 "q_legRN" "ankle_PRBL.message" "q_legRN.placeHolderList[320]" ""
		
		5 3 "q_legRN" "ankle_BLCL.message" "q_legRN.placeHolderList[321]" ""
		
		5 3 "q_legRN" "hind_toe_PRBL.message" "q_legRN.placeHolderList[322]" 
		""
		5 3 "q_legRN" "hind_toe_BLCL.message" "q_legRN.placeHolderList[323]" 
		""
		5 3 "q_legRN" "hind_tiptoe_PRBL.message" "q_legRN.placeHolderList[324]" 
		""
		5 3 "q_legRN" "hind_tiptoe_BLCL.message" "q_legRN.placeHolderList[325]" 
		""
		5 3 "q_legRN" "|leg_GRP|output.message" "q_legRN.placeHolderList[328]" 
		""
		5 3 "q_legRN" "|leg_GRP|output.message" "q_legRN.placeHolderList[329]" 
		""
		5 3 "q_legRN" "|leg_GRP|output.message" "q_legRN.placeHolderList[330]" 
		""
		5 3 "q_legRN" "|leg_GRP|output.message" "q_legRN.placeHolderList[331]" 
		""
		"q_legRN" 77
		0 "|q_legRNfosterParent1|hip_CTL_offGRP_parentConstraint1" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP" 
		"-s -r "
		1 |leg_GRP|leg_output|hip "lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		1 |leg_GRP|leg_output|hip|thigh "lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		1 |leg_GRP|leg_output|hip|thigh|F_knee "lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		1 |leg_GRP|leg_output|hip|thigh|F_knee|B_knee "lockInfluenceWeights" "liw" 
		" -ci 1 -min 0 -max 1 -at \"bool\""
		1 |leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle "lockInfluenceWeights" 
		"liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe "lockInfluenceWeights" 
		"liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		2 "|leg_GRP" "visibility" " 1"
		2 "|leg_GRP|leg_motion_GRP|input_hip" "translate" " -type \"double3\" 3.58036923408508301 40.88107681274414063 -18.16811370849609375"
		
		2 "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP|hip_CTL_spcGRP|hip_CTL|hip_CTL_ivsScale|IK_thigh_CTL_offGRP|IK_thigh_CTL_spcGRP|IK_thigh_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|leg_GRP|leg_CTL_GRP|IK_leg_CTL_GRP|B_foot_CTL_offGRP|B_foot_CTL_spcGRP|B_foot_CTL" 
		"roll" " -k 1 0"
		2 "|leg_GRP|leg_output|hip" "bindPose" " -type \"matrix\" 1 0 0 0 0 1 0 0 0 0 1 0 3.58036923408508301 40.88107681274414063 -18.16811370849609375 1"
		
		2 "|leg_GRP|leg_output|hip" "lockInfluenceWeights" " 1"
		2 "|leg_GRP|leg_output|hip|thigh" "bindPose" " -type \"matrix\" 0 -1 0 0 1 0 0 0 0 0 1 0 5.65168428421020508 38.29954020214961474 -21.97669601440428977 1"
		
		2 "|leg_GRP|leg_output|hip|thigh" "lockInfluenceWeights" " 1"
		2 "|leg_GRP|leg_output|hip|thigh|F_knee" "bindPose" " -type \"matrix\" 0 -0.85473395514644457 -0.51906634057672785 0 1 0 0 0 0 -0.51906634057672785 0.85473395514644457 0 5.65168428421020508 22.74281183911250537 -21.97669601440428977 1"
		
		2 "|leg_GRP|leg_output|hip|thigh|F_knee" "lockInfluenceWeights" " 1"
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee" "bindPose" " -type \"matrix\" 0 -0.99998983252874241 0.0045094167181025102 0 1 0 0 0 0 0.0045094167181025102 0.99998983252874241 0 5.65168428421020508 12.86774483057024732 -27.97366719381155065 1"
		
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee" "lockInfluenceWeights" " 1"
		
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle" "bindPose" " -type \"matrix\" 0 -0.65924459372056121 0.75192856419357557 0 1 0 0 0 0 0.75192856419357557 0.65924459372056121 0 5.65168428421020508 2.42387270978817781 -27.92657094341860002 1"
		
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle" "lockInfluenceWeights" 
		" 1"
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe" "bindPose" 
		" -type \"matrix\" 0 -0.43466648688321796 0.90059149739524047 0 1 0 0 0 0 0.90059149739524047 0.43466648688321796 0 5.6516842842102033 1.59091200495961704 -26.97650299854586464 1"
		
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe" "lockInfluenceWeights" 
		" 1"
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 1 0 0 0 0 1 0 5.65168428421020241 1.065859599691521e-06 -23.68027309735458275 1"
		
		2 "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe" 
		"lockInfluenceWeights" " 1"
		5 3 "q_legRN" "|leg_GRP.message" "q_legRN.placeHolderList[332]" ""
		5 3 "q_legRN" "|leg_GRP.message" "q_legRN.placeHolderList[333]" ""
		5 4 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.translateX" "q_legRN.placeHolderList[334]" 
		""
		5 4 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.translateY" "q_legRN.placeHolderList[335]" 
		""
		5 4 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.translateZ" "q_legRN.placeHolderList[336]" 
		""
		5 4 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.rotateX" "q_legRN.placeHolderList[337]" 
		""
		5 4 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.rotateY" "q_legRN.placeHolderList[338]" 
		""
		5 4 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.rotateZ" "q_legRN.placeHolderList[339]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.rotateOrder" "q_legRN.placeHolderList[340]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.parentInverseMatrix" 
		"q_legRN.placeHolderList[341]" ""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.rotatePivot" "q_legRN.placeHolderList[342]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_CTL_GRP|hip_CTL_offGRP.rotatePivotTranslate" 
		"q_legRN.placeHolderList[343]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip.lockInfluenceWeights" "q_legRN.placeHolderList[344]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip.bindPose" "q_legRN.placeHolderList[345]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip.message" "q_legRN.placeHolderList[346]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip.worldMatrix" "q_legRN.placeHolderList[347]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip.objectColorRGB" "q_legRN.placeHolderList[348]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh.lockInfluenceWeights" "q_legRN.placeHolderList[349]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh.bindPose" "q_legRN.placeHolderList[350]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh.message" "q_legRN.placeHolderList[351]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh.worldMatrix" "q_legRN.placeHolderList[352]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh.objectColorRGB" "q_legRN.placeHolderList[353]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee.lockInfluenceWeights" 
		"q_legRN.placeHolderList[354]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee.bindPose" "q_legRN.placeHolderList[355]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee.message" "q_legRN.placeHolderList[356]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee.worldMatrix" "q_legRN.placeHolderList[357]" 
		""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee.objectColorRGB" 
		"q_legRN.placeHolderList[358]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee.lockInfluenceWeights" 
		"q_legRN.placeHolderList[359]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee.bindPose" 
		"q_legRN.placeHolderList[360]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee.message" 
		"q_legRN.placeHolderList[361]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee.worldMatrix" 
		"q_legRN.placeHolderList[362]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee.objectColorRGB" 
		"q_legRN.placeHolderList[363]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle.lockInfluenceWeights" 
		"q_legRN.placeHolderList[364]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle.bindPose" 
		"q_legRN.placeHolderList[365]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle.message" 
		"q_legRN.placeHolderList[366]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle.worldMatrix" 
		"q_legRN.placeHolderList[367]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle.objectColorRGB" 
		"q_legRN.placeHolderList[368]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe.lockInfluenceWeights" 
		"q_legRN.placeHolderList[369]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe.bindPose" 
		"q_legRN.placeHolderList[370]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe.message" 
		"q_legRN.placeHolderList[371]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe.worldMatrix" 
		"q_legRN.placeHolderList[372]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe.objectColorRGB" 
		"q_legRN.placeHolderList[373]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe.lockInfluenceWeights" 
		"q_legRN.placeHolderList[374]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe.bindPose" 
		"q_legRN.placeHolderList[375]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe.message" 
		"q_legRN.placeHolderList[376]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe.worldMatrix" 
		"q_legRN.placeHolderList[377]" ""
		5 3 "q_legRN" "|leg_GRP|leg_output|hip|thigh|F_knee|B_knee|ankle|hind_toe|hind_tiptoe.objectColorRGB" 
		"q_legRN.placeHolderList[378]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode pairBlend -n "M_spine_01_JNT_PRBL";
	rename -uid "17D11B3A-4ABD-7C3B-795E-5ABACC9E311C";
createNode blendColors -n "M_spine_01_JNT_BLCL";
	rename -uid "20713D3C-4B46-FD98-59F3-67A24660A244";
createNode pairBlend -n "M_spine_02_JNT_PRBL";
	rename -uid "7AB2DA5B-4937-2B3D-B2B9-F7BA7A1637EB";
createNode blendColors -n "M_spine_02_JNT_BLCL";
	rename -uid "720DF7BC-44DE-1AAD-DD3A-96AC2B017053";
createNode pairBlend -n "M_spine_03_JNT_PRBL";
	rename -uid "A754FA45-450E-2A63-6193-559ED93ADEF4";
createNode blendColors -n "M_spine_03_JNT_BLCL";
	rename -uid "8C6E3CCB-43D2-F972-9937-E48754F6713A";
createNode pairBlend -n "M_spine_04_JNT_PRBL";
	rename -uid "7C930FFA-4604-ADE9-9AD0-E9A187835BAF";
createNode blendColors -n "M_spine_04_JNT_BLCL";
	rename -uid "E41651DE-4E3D-8860-DD67-50B6E191E233";
createNode pairBlend -n "M_spine_05_JNT_PRBL";
	rename -uid "CBD7FCE3-448E-48AE-B28F-3AACDB0BB20D";
createNode blendColors -n "M_spine_05_JNT_BLCL";
	rename -uid "DBF8D7D1-416B-AB31-A944-799124C1AF77";
createNode multMatrix -n "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX";
	rename -uid "C5556C25-4462-477D-2953-C0BB9B478D27";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "M_spine_01_JNT2spine_switch_CTL_offGRP_DCMX";
	rename -uid "457E70E6-473D-C947-9296-D6ADE6DE1501";
createNode reverse -n "spine_FK_IK_RVS";
	rename -uid "81BE13DB-4E5D-8C38-75A9-2EA803E09E65";
createNode multMatrix -n "M_root_JNT2IK_spine_CTL_GRP_MTMX";
	rename -uid "5F7EC836-41C9-7732-6BA8-F0A0D87CA3C0";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "M_root_JNT2IK_spine_CTL_GRP_DCMX";
	rename -uid "6E7E9E33-4684-0EF3-8C4E-ADA618022F11";
createNode multMatrix -n "M_root_JNT2FK_spine_CTL_GRP_MTMX";
	rename -uid "A99B3719-4BAB-A08E-B7F8-01AD22B7E598";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "M_root_JNT2FK_spine_CTL_GRP_DCMX";
	rename -uid "50758B9C-4A50-B5B6-2E32-B69A6B68ADFB";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "41745144-449A-2631-BBA8-139198FD47EB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1133.3332882987147 -544.04759742910994 ;
	setAttr ".tgi[0].vh" -type "double2" 1133.3332882987147 542.857121285939 ;
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
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 363 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
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
connectAttr "layer3.di" "modelRN.phl[93]";
connectAttr "modelRN.phl[94]" "groupParts50.ig";
connectAttr "modelRN.phl[95]" "bodyShapeDeformed.iog.og[2].gco";
connectAttr "modelRN.phl[96]" "modelRN.phl[97]";
connectAttr "bodyShapeDeformed.iog.og[2]" "modelRN.phl[98]";
connectAttr "modelRN.phl[99]" "bodyShapeDeformed.iog.og[2].gid";
connectAttr "bodyShapeDeformed.iog" "modelRN.phl[100]";
connectAttr "scapula_CTL_offGRP_parentConstraint1.ctx" "q_armRN.phl[336]";
connectAttr "scapula_CTL_offGRP_parentConstraint1.cty" "q_armRN.phl[337]";
connectAttr "scapula_CTL_offGRP_parentConstraint1.ctz" "q_armRN.phl[338]";
connectAttr "scapula_CTL_offGRP_parentConstraint1.crx" "q_armRN.phl[339]";
connectAttr "scapula_CTL_offGRP_parentConstraint1.cry" "q_armRN.phl[340]";
connectAttr "scapula_CTL_offGRP_parentConstraint1.crz" "q_armRN.phl[341]";
connectAttr "q_armRN.phl[342]" "scapula_CTL_offGRP_parentConstraint1.cro";
connectAttr "q_armRN.phl[343]" "scapula_CTL_offGRP_parentConstraint1.cpim";
connectAttr "q_armRN.phl[344]" "scapula_CTL_offGRP_parentConstraint1.crp";
connectAttr "q_armRN.phl[345]" "scapula_CTL_offGRP_parentConstraint1.crt";
connectAttr "q_armRN.phl[346]" "bindPose1.wm[12]";
connectAttr "q_armRN.phl[347]" "skinCluster1.lw[8]";
connectAttr "q_armRN.phl[348]" "bindPose1.m[12]";
connectAttr "q_armRN.phl[349]" "skinCluster1.ma[8]";
connectAttr "q_armRN.phl[350]" "skinCluster1.ifcl[8]";
connectAttr "q_armRN.phl[351]" "bindPose1.wm[13]";
connectAttr "q_armRN.phl[352]" "skinCluster1.lw[9]";
connectAttr "q_armRN.phl[353]" "bindPose1.m[13]";
connectAttr "q_armRN.phl[354]" "skinCluster1.ma[9]";
connectAttr "q_armRN.phl[355]" "skinCluster1.ifcl[9]";
connectAttr "q_armRN.phl[356]" "bindPose1.wm[14]";
connectAttr "q_armRN.phl[357]" "skinCluster1.lw[10]";
connectAttr "q_armRN.phl[358]" "bindPose1.m[14]";
connectAttr "q_armRN.phl[359]" "skinCluster1.ma[10]";
connectAttr "q_armRN.phl[360]" "skinCluster1.ifcl[10]";
connectAttr "q_armRN.phl[361]" "bindPose1.wm[15]";
connectAttr "q_armRN.phl[362]" "skinCluster1.lw[11]";
connectAttr "q_armRN.phl[363]" "bindPose1.m[15]";
connectAttr "q_armRN.phl[364]" "skinCluster1.ma[11]";
connectAttr "q_armRN.phl[365]" "skinCluster1.ifcl[11]";
connectAttr "q_armRN.phl[366]" "bindPose1.wm[16]";
connectAttr "q_armRN.phl[367]" "skinCluster1.lw[12]";
connectAttr "q_armRN.phl[368]" "bindPose1.m[16]";
connectAttr "q_armRN.phl[369]" "skinCluster1.ma[12]";
connectAttr "q_armRN.phl[370]" "skinCluster1.ifcl[12]";
connectAttr "q_armRN.phl[371]" "bindPose1.wm[17]";
connectAttr "q_armRN.phl[372]" "skinCluster1.lw[13]";
connectAttr "q_armRN.phl[373]" "bindPose1.m[17]";
connectAttr "q_armRN.phl[374]" "skinCluster1.ma[13]";
connectAttr "q_armRN.phl[375]" "skinCluster1.ifcl[13]";
connectAttr "q_armRN.phl[376]" "bindPose1.wm[18]";
connectAttr "q_armRN.phl[377]" "skinCluster1.lw[14]";
connectAttr "q_armRN.phl[378]" "bindPose1.m[18]";
connectAttr "q_armRN.phl[379]" "skinCluster1.ma[14]";
connectAttr "q_armRN.phl[380]" "skinCluster1.ifcl[14]";
connectAttr "q_legRN.phl[332]" "bindPose1.p[20]";
connectAttr "q_legRN.phl[333]" "bindPose1.m[19]";
connectAttr "hip_CTL_offGRP_parentConstraint1.ctx" "q_legRN.phl[334]";
connectAttr "hip_CTL_offGRP_parentConstraint1.cty" "q_legRN.phl[335]";
connectAttr "hip_CTL_offGRP_parentConstraint1.ctz" "q_legRN.phl[336]";
connectAttr "hip_CTL_offGRP_parentConstraint1.crx" "q_legRN.phl[337]";
connectAttr "hip_CTL_offGRP_parentConstraint1.cry" "q_legRN.phl[338]";
connectAttr "hip_CTL_offGRP_parentConstraint1.crz" "q_legRN.phl[339]";
connectAttr "q_legRN.phl[340]" "hip_CTL_offGRP_parentConstraint1.cro";
connectAttr "q_legRN.phl[341]" "hip_CTL_offGRP_parentConstraint1.cpim";
connectAttr "q_legRN.phl[342]" "hip_CTL_offGRP_parentConstraint1.crp";
connectAttr "q_legRN.phl[343]" "hip_CTL_offGRP_parentConstraint1.crt";
connectAttr "q_legRN.phl[344]" "skinCluster1.lw[15]";
connectAttr "q_legRN.phl[345]" "bindPose1.wm[21]";
connectAttr "q_legRN.phl[346]" "bindPose1.m[21]";
connectAttr "q_legRN.phl[347]" "skinCluster1.ma[15]";
connectAttr "q_legRN.phl[348]" "skinCluster1.ifcl[15]";
connectAttr "q_legRN.phl[349]" "skinCluster1.lw[16]";
connectAttr "q_legRN.phl[350]" "bindPose1.wm[22]";
connectAttr "q_legRN.phl[351]" "bindPose1.m[22]";
connectAttr "q_legRN.phl[352]" "skinCluster1.ma[16]";
connectAttr "q_legRN.phl[353]" "skinCluster1.ifcl[16]";
connectAttr "q_legRN.phl[354]" "skinCluster1.lw[17]";
connectAttr "q_legRN.phl[355]" "bindPose1.wm[23]";
connectAttr "q_legRN.phl[356]" "bindPose1.m[23]";
connectAttr "q_legRN.phl[357]" "skinCluster1.ma[17]";
connectAttr "q_legRN.phl[358]" "skinCluster1.ifcl[17]";
connectAttr "q_legRN.phl[359]" "skinCluster1.lw[18]";
connectAttr "q_legRN.phl[360]" "bindPose1.wm[24]";
connectAttr "q_legRN.phl[361]" "bindPose1.m[24]";
connectAttr "q_legRN.phl[362]" "skinCluster1.ma[18]";
connectAttr "q_legRN.phl[363]" "skinCluster1.ifcl[18]";
connectAttr "q_legRN.phl[364]" "skinCluster1.lw[19]";
connectAttr "q_legRN.phl[365]" "bindPose1.wm[25]";
connectAttr "q_legRN.phl[366]" "bindPose1.m[25]";
connectAttr "q_legRN.phl[367]" "skinCluster1.ma[19]";
connectAttr "q_legRN.phl[368]" "skinCluster1.ifcl[19]";
connectAttr "q_legRN.phl[369]" "skinCluster1.lw[20]";
connectAttr "q_legRN.phl[370]" "bindPose1.wm[26]";
connectAttr "q_legRN.phl[371]" "bindPose1.m[26]";
connectAttr "q_legRN.phl[372]" "skinCluster1.ma[20]";
connectAttr "q_legRN.phl[373]" "skinCluster1.ifcl[20]";
connectAttr "q_legRN.phl[374]" "skinCluster1.lw[21]";
connectAttr "q_legRN.phl[375]" "bindPose1.wm[27]";
connectAttr "q_legRN.phl[376]" "bindPose1.m[27]";
connectAttr "q_legRN.phl[377]" "skinCluster1.ma[21]";
connectAttr "q_legRN.phl[378]" "skinCluster1.ifcl[21]";
connectAttr "IK_M_spine_01_JNT_parentConstraint1.crx" "IK_M_spine_01_JNT.rx";
connectAttr "IK_M_spine_01_JNT_parentConstraint1.cry" "IK_M_spine_01_JNT.ry";
connectAttr "IK_M_spine_01_JNT_parentConstraint1.crz" "IK_M_spine_01_JNT.rz";
connectAttr "IK_M_spine_01_JNT_parentConstraint1.ctx" "IK_M_spine_01_JNT.tx";
connectAttr "IK_M_spine_01_JNT_parentConstraint1.cty" "IK_M_spine_01_JNT.ty";
connectAttr "IK_M_spine_01_JNT_parentConstraint1.ctz" "IK_M_spine_01_JNT.tz";
connectAttr "IK_M_spine_01_JNT.s" "IK_M_spine_02_JNT.is";
connectAttr "IK_M_spine_02_JNT_parentConstraint1.ctx" "IK_M_spine_02_JNT.tx";
connectAttr "IK_M_spine_02_JNT_parentConstraint1.cty" "IK_M_spine_02_JNT.ty";
connectAttr "IK_M_spine_02_JNT_parentConstraint1.ctz" "IK_M_spine_02_JNT.tz";
connectAttr "IK_M_spine_02_JNT_parentConstraint1.crx" "IK_M_spine_02_JNT.rx";
connectAttr "IK_M_spine_02_JNT_parentConstraint1.cry" "IK_M_spine_02_JNT.ry";
connectAttr "IK_M_spine_02_JNT_parentConstraint1.crz" "IK_M_spine_02_JNT.rz";
connectAttr "IK_M_spine_02_JNT.s" "IK_M_spine_03_JNT.is";
connectAttr "IK_M_spine_03_JNT_parentConstraint1.ctx" "IK_M_spine_03_JNT.tx";
connectAttr "IK_M_spine_03_JNT_parentConstraint1.cty" "IK_M_spine_03_JNT.ty";
connectAttr "IK_M_spine_03_JNT_parentConstraint1.ctz" "IK_M_spine_03_JNT.tz";
connectAttr "IK_M_spine_03_JNT_parentConstraint1.crx" "IK_M_spine_03_JNT.rx";
connectAttr "IK_M_spine_03_JNT_parentConstraint1.cry" "IK_M_spine_03_JNT.ry";
connectAttr "IK_M_spine_03_JNT_parentConstraint1.crz" "IK_M_spine_03_JNT.rz";
connectAttr "IK_M_spine_03_JNT.s" "IK_M_spine_04_JNT.is";
connectAttr "IK_M_spine_04_JNT_parentConstraint1.crx" "IK_M_spine_04_JNT.rx";
connectAttr "IK_M_spine_04_JNT_parentConstraint1.cry" "IK_M_spine_04_JNT.ry";
connectAttr "IK_M_spine_04_JNT_parentConstraint1.crz" "IK_M_spine_04_JNT.rz";
connectAttr "IK_M_spine_04_JNT_parentConstraint1.ctx" "IK_M_spine_04_JNT.tx";
connectAttr "IK_M_spine_04_JNT_parentConstraint1.cty" "IK_M_spine_04_JNT.ty";
connectAttr "IK_M_spine_04_JNT_parentConstraint1.ctz" "IK_M_spine_04_JNT.tz";
connectAttr "IK_M_spine_04_JNT.s" "IK_M_spine_05_JNT.is";
connectAttr "IK_M_spine_05_JNT_parentConstraint1.ctx" "IK_M_spine_05_JNT.tx";
connectAttr "IK_M_spine_05_JNT_parentConstraint1.cty" "IK_M_spine_05_JNT.ty";
connectAttr "IK_M_spine_05_JNT_parentConstraint1.ctz" "IK_M_spine_05_JNT.tz";
connectAttr "IK_M_spine_05_JNT_parentConstraint1.crx" "IK_M_spine_05_JNT.rx";
connectAttr "IK_M_spine_05_JNT_parentConstraint1.cry" "IK_M_spine_05_JNT.ry";
connectAttr "IK_M_spine_05_JNT_parentConstraint1.crz" "IK_M_spine_05_JNT.rz";
connectAttr "IK_M_spine_05_JNT.ro" "IK_M_spine_05_JNT_parentConstraint1.cro";
connectAttr "IK_M_spine_05_JNT.pim" "IK_M_spine_05_JNT_parentConstraint1.cpim";
connectAttr "IK_M_spine_05_JNT.rp" "IK_M_spine_05_JNT_parentConstraint1.crp";
connectAttr "IK_M_spine_05_JNT.rpt" "IK_M_spine_05_JNT_parentConstraint1.crt";
connectAttr "IK_M_spine_05_JNT.jo" "IK_M_spine_05_JNT_parentConstraint1.cjo";
connectAttr "IK_M_spine_05_space.t" "IK_M_spine_05_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_05_space.rp" "IK_M_spine_05_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_05_space.rpt" "IK_M_spine_05_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_05_space.r" "IK_M_spine_05_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_05_space.ro" "IK_M_spine_05_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_05_space.s" "IK_M_spine_05_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "IK_M_spine_05_space.pm" "IK_M_spine_05_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_05_JNT_parentConstraint1.w0" "IK_M_spine_05_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_M_spine_04_JNT.ro" "IK_M_spine_04_JNT_parentConstraint1.cro";
connectAttr "IK_M_spine_04_JNT.pim" "IK_M_spine_04_JNT_parentConstraint1.cpim";
connectAttr "IK_M_spine_04_JNT.rp" "IK_M_spine_04_JNT_parentConstraint1.crp";
connectAttr "IK_M_spine_04_JNT.rpt" "IK_M_spine_04_JNT_parentConstraint1.crt";
connectAttr "IK_M_spine_04_JNT.jo" "IK_M_spine_04_JNT_parentConstraint1.cjo";
connectAttr "IK_M_spine_04_space.t" "IK_M_spine_04_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_04_space.rp" "IK_M_spine_04_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_04_space.rpt" "IK_M_spine_04_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_04_space.r" "IK_M_spine_04_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_04_space.ro" "IK_M_spine_04_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_04_space.s" "IK_M_spine_04_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "IK_M_spine_04_space.pm" "IK_M_spine_04_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_04_JNT_parentConstraint1.w0" "IK_M_spine_04_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_M_spine_03_JNT.ro" "IK_M_spine_03_JNT_parentConstraint1.cro";
connectAttr "IK_M_spine_03_JNT.pim" "IK_M_spine_03_JNT_parentConstraint1.cpim";
connectAttr "IK_M_spine_03_JNT.rp" "IK_M_spine_03_JNT_parentConstraint1.crp";
connectAttr "IK_M_spine_03_JNT.rpt" "IK_M_spine_03_JNT_parentConstraint1.crt";
connectAttr "IK_M_spine_03_JNT.jo" "IK_M_spine_03_JNT_parentConstraint1.cjo";
connectAttr "IK_M_spine_03_space.t" "IK_M_spine_03_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_03_space.rp" "IK_M_spine_03_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_03_space.rpt" "IK_M_spine_03_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_03_space.r" "IK_M_spine_03_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_03_space.ro" "IK_M_spine_03_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_03_space.s" "IK_M_spine_03_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "IK_M_spine_03_space.pm" "IK_M_spine_03_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_03_JNT_parentConstraint1.w0" "IK_M_spine_03_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_M_spine_02_JNT.ro" "IK_M_spine_02_JNT_parentConstraint1.cro";
connectAttr "IK_M_spine_02_JNT.pim" "IK_M_spine_02_JNT_parentConstraint1.cpim";
connectAttr "IK_M_spine_02_JNT.rp" "IK_M_spine_02_JNT_parentConstraint1.crp";
connectAttr "IK_M_spine_02_JNT.rpt" "IK_M_spine_02_JNT_parentConstraint1.crt";
connectAttr "IK_M_spine_02_JNT.jo" "IK_M_spine_02_JNT_parentConstraint1.cjo";
connectAttr "IK_M_spine_02_space.t" "IK_M_spine_02_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_02_space.rp" "IK_M_spine_02_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_02_space.rpt" "IK_M_spine_02_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_02_space.r" "IK_M_spine_02_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_02_space.ro" "IK_M_spine_02_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_02_space.s" "IK_M_spine_02_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "IK_M_spine_02_space.pm" "IK_M_spine_02_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_02_JNT_parentConstraint1.w0" "IK_M_spine_02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_M_spine_01_JNT.ro" "IK_M_spine_01_JNT_parentConstraint1.cro";
connectAttr "IK_M_spine_01_JNT.pim" "IK_M_spine_01_JNT_parentConstraint1.cpim";
connectAttr "IK_M_spine_01_JNT.rp" "IK_M_spine_01_JNT_parentConstraint1.crp";
connectAttr "IK_M_spine_01_JNT.rpt" "IK_M_spine_01_JNT_parentConstraint1.crt";
connectAttr "IK_M_spine_01_JNT.jo" "IK_M_spine_01_JNT_parentConstraint1.cjo";
connectAttr "IK_M_spine_01_space.t" "IK_M_spine_01_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_01_space.rp" "IK_M_spine_01_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_01_space.rpt" "IK_M_spine_01_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_01_space.r" "IK_M_spine_01_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_01_space.ro" "IK_M_spine_01_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_01_space.s" "IK_M_spine_01_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "IK_M_spine_01_space.pm" "IK_M_spine_01_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_01_JNT_parentConstraint1.w0" "IK_M_spine_01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_CRVShape_POCI.p" "IK_M_spine_01_space_offGRP.t";
connectAttr "IK_M_spine_01_space_offGRP_orientConstraint1.crx" "IK_M_spine_01_space_offGRP.rx"
		;
connectAttr "IK_M_spine_01_space_offGRP_orientConstraint1.cry" "IK_M_spine_01_space_offGRP.ry"
		;
connectAttr "IK_M_spine_01_space_offGRP_orientConstraint1.crz" "IK_M_spine_01_space_offGRP.rz"
		;
connectAttr "M_hip_CTL.r" "M_hip_space.r";
connectAttr "IK_M_spine_01_space_offGRP.ro" "IK_M_spine_01_space_offGRP_orientConstraint1.cro"
		;
connectAttr "IK_M_spine_01_space_offGRP.pim" "IK_M_spine_01_space_offGRP_orientConstraint1.cpim"
		;
connectAttr "IK_M_spine_01_CTL.r" "IK_M_spine_01_space_offGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_01_CTL.ro" "IK_M_spine_01_space_offGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_01_CTL.pm" "IK_M_spine_01_space_offGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_01_space_offGRP_orientConstraint1.w0" "IK_M_spine_01_space_offGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "IK_CRVShape_POCI1.p" "IK_M_spine_02_space_offGRP.t";
connectAttr "IK_M_spine_02_space_offGRP_aimConstraint1.crx" "IK_M_spine_02_space_offGRP.rx"
		;
connectAttr "IK_M_spine_02_space_offGRP_aimConstraint1.cry" "IK_M_spine_02_space_offGRP.ry"
		;
connectAttr "IK_M_spine_02_space_offGRP_aimConstraint1.crz" "IK_M_spine_02_space_offGRP.rz"
		;
connectAttr "IK_M_spine_02_space_offGRP.pim" "IK_M_spine_02_space_offGRP_aimConstraint1.cpim"
		;
connectAttr "IK_M_spine_02_space_offGRP.t" "IK_M_spine_02_space_offGRP_aimConstraint1.ct"
		;
connectAttr "IK_M_spine_02_space_offGRP.rp" "IK_M_spine_02_space_offGRP_aimConstraint1.crp"
		;
connectAttr "IK_M_spine_02_space_offGRP.rpt" "IK_M_spine_02_space_offGRP_aimConstraint1.crt"
		;
connectAttr "IK_M_spine_02_space_offGRP.ro" "IK_M_spine_02_space_offGRP_aimConstraint1.cro"
		;
connectAttr "IK_M_spine_03_space.t" "IK_M_spine_02_space_offGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_03_space.rp" "IK_M_spine_02_space_offGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_03_space.rpt" "IK_M_spine_02_space_offGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_03_space.pm" "IK_M_spine_02_space_offGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_02_space_offGRP_aimConstraint1.w0" "IK_M_spine_02_space_offGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_M_spine_02_upVec.wm" "IK_M_spine_02_space_offGRP_aimConstraint1.wum"
		;
connectAttr "IK_CRVShape_POCI2.p" "IK_M_spine_03_space_offGRP.t";
connectAttr "IK_M_spine_03_space_offGRP_aimConstraint1.crx" "IK_M_spine_03_space_offGRP.rx"
		;
connectAttr "IK_M_spine_03_space_offGRP_aimConstraint1.cry" "IK_M_spine_03_space_offGRP.ry"
		;
connectAttr "IK_M_spine_03_space_offGRP_aimConstraint1.crz" "IK_M_spine_03_space_offGRP.rz"
		;
connectAttr "IK_M_spine_03_space_offGRP.pim" "IK_M_spine_03_space_offGRP_aimConstraint1.cpim"
		;
connectAttr "IK_M_spine_03_space_offGRP.t" "IK_M_spine_03_space_offGRP_aimConstraint1.ct"
		;
connectAttr "IK_M_spine_03_space_offGRP.rp" "IK_M_spine_03_space_offGRP_aimConstraint1.crp"
		;
connectAttr "IK_M_spine_03_space_offGRP.rpt" "IK_M_spine_03_space_offGRP_aimConstraint1.crt"
		;
connectAttr "IK_M_spine_03_space_offGRP.ro" "IK_M_spine_03_space_offGRP_aimConstraint1.cro"
		;
connectAttr "IK_M_spine_04_space.t" "IK_M_spine_03_space_offGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_04_space.rp" "IK_M_spine_03_space_offGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_04_space.rpt" "IK_M_spine_03_space_offGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_04_space.pm" "IK_M_spine_03_space_offGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_03_space_offGRP_aimConstraint1.w0" "IK_M_spine_03_space_offGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_M_spine_03_upVec.wm" "IK_M_spine_03_space_offGRP_aimConstraint1.wum"
		;
connectAttr "IK_CRVShape_POCI3.p" "IK_M_spine_04_space_offGRP.t";
connectAttr "IK_M_spine_04_space_offGRP_aimConstraint1.crx" "IK_M_spine_04_space_offGRP.rx"
		;
connectAttr "IK_M_spine_04_space_offGRP_aimConstraint1.cry" "IK_M_spine_04_space_offGRP.ry"
		;
connectAttr "IK_M_spine_04_space_offGRP_aimConstraint1.crz" "IK_M_spine_04_space_offGRP.rz"
		;
connectAttr "IK_M_spine_04_space_offGRP.pim" "IK_M_spine_04_space_offGRP_aimConstraint1.cpim"
		;
connectAttr "IK_M_spine_04_space_offGRP.t" "IK_M_spine_04_space_offGRP_aimConstraint1.ct"
		;
connectAttr "IK_M_spine_04_space_offGRP.rp" "IK_M_spine_04_space_offGRP_aimConstraint1.crp"
		;
connectAttr "IK_M_spine_04_space_offGRP.rpt" "IK_M_spine_04_space_offGRP_aimConstraint1.crt"
		;
connectAttr "IK_M_spine_04_space_offGRP.ro" "IK_M_spine_04_space_offGRP_aimConstraint1.cro"
		;
connectAttr "IK_M_spine_05_space.t" "IK_M_spine_04_space_offGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_05_space.rp" "IK_M_spine_04_space_offGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_05_space.rpt" "IK_M_spine_04_space_offGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_05_space.pm" "IK_M_spine_04_space_offGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_04_space_offGRP_aimConstraint1.w0" "IK_M_spine_04_space_offGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_M_spine_04_upVec.wm" "IK_M_spine_04_space_offGRP_aimConstraint1.wum"
		;
connectAttr "IK_CRVShape_POCI4.p" "IK_M_spine_05_space_offGRP.t";
connectAttr "IK_M_spine_05_space_offGRP_orientConstraint1.crx" "IK_M_spine_05_space_offGRP.rx"
		;
connectAttr "IK_M_spine_05_space_offGRP_orientConstraint1.cry" "IK_M_spine_05_space_offGRP.ry"
		;
connectAttr "IK_M_spine_05_space_offGRP_orientConstraint1.crz" "IK_M_spine_05_space_offGRP.rz"
		;
connectAttr "IK_M_spine_05_space_offGRP.ro" "IK_M_spine_05_space_offGRP_orientConstraint1.cro"
		;
connectAttr "IK_M_spine_05_space_offGRP.pim" "IK_M_spine_05_space_offGRP_orientConstraint1.cpim"
		;
connectAttr "IK_M_spine_03_CTL.r" "IK_M_spine_05_space_offGRP_orientConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_03_CTL.ro" "IK_M_spine_05_space_offGRP_orientConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_03_CTL.pm" "IK_M_spine_05_space_offGRP_orientConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_05_space_offGRP_orientConstraint1.w0" "IK_M_spine_05_space_offGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "IK_upVec_CRVShape_POCI.p" "IK_M_spine_01_upVec.t";
connectAttr "IK_upVec_CRVShape_POCI1.p" "IK_M_spine_02_upVec.t";
connectAttr "IK_upVec_CRVShape_POCI2.p" "IK_M_spine_03_upVec.t";
connectAttr "IK_upVec_CRVShape_POCI3.p" "IK_M_spine_04_upVec.t";
connectAttr "IK_upVec_CRVShape_POCI4.p" "IK_M_spine_05_upVec.t";
connectAttr "skinCluster2.og[0]" "IK_CRVShape.cr";
connectAttr "tweak3.pl[0].cp[0]" "IK_CRVShape.twl";
connectAttr "skinCluster2GroupId.id" "IK_CRVShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "IK_CRVShape.iog.og[0].gco";
connectAttr "groupId54.id" "IK_CRVShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "IK_CRVShape.iog.og[1].gco";
connectAttr "skinCluster3.og[0]" "IK_upVec_CRVShape.cr";
connectAttr "tweak4.pl[0].cp[0]" "IK_upVec_CRVShape.twl";
connectAttr "skinCluster3GroupId.id" "IK_upVec_CRVShape.iog.og[0].gid";
connectAttr "skinCluster3Set.mwc" "IK_upVec_CRVShape.iog.og[0].gco";
connectAttr "groupId56.id" "IK_upVec_CRVShape.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "IK_upVec_CRVShape.iog.og[1].gco";
connectAttr "FK_M_spine_01_JNT_parentConstraint1.crx" "FK_M_spine_01_JNT.rx";
connectAttr "FK_M_spine_01_JNT_parentConstraint1.cry" "FK_M_spine_01_JNT.ry";
connectAttr "FK_M_spine_01_JNT_parentConstraint1.crz" "FK_M_spine_01_JNT.rz";
connectAttr "FK_M_spine_01_JNT_parentConstraint1.ctx" "FK_M_spine_01_JNT.tx";
connectAttr "FK_M_spine_01_JNT_parentConstraint1.cty" "FK_M_spine_01_JNT.ty";
connectAttr "FK_M_spine_01_JNT_parentConstraint1.ctz" "FK_M_spine_01_JNT.tz";
connectAttr "FK_M_spine_01_JNT.s" "FK_M_spine_02_JNT.is";
connectAttr "FK_M_spine_02_JNT_parentConstraint1.ctx" "FK_M_spine_02_JNT.tx";
connectAttr "FK_M_spine_02_JNT_parentConstraint1.cty" "FK_M_spine_02_JNT.ty";
connectAttr "FK_M_spine_02_JNT_parentConstraint1.ctz" "FK_M_spine_02_JNT.tz";
connectAttr "FK_M_spine_02_JNT_parentConstraint1.crx" "FK_M_spine_02_JNT.rx";
connectAttr "FK_M_spine_02_JNT_parentConstraint1.cry" "FK_M_spine_02_JNT.ry";
connectAttr "FK_M_spine_02_JNT_parentConstraint1.crz" "FK_M_spine_02_JNT.rz";
connectAttr "FK_M_spine_02_JNT.s" "FK_M_spine_03_JNT.is";
connectAttr "FK_M_spine_03_JNT_parentConstraint1.ctx" "FK_M_spine_03_JNT.tx";
connectAttr "FK_M_spine_03_JNT_parentConstraint1.cty" "FK_M_spine_03_JNT.ty";
connectAttr "FK_M_spine_03_JNT_parentConstraint1.ctz" "FK_M_spine_03_JNT.tz";
connectAttr "FK_M_spine_03_JNT_parentConstraint1.crx" "FK_M_spine_03_JNT.rx";
connectAttr "FK_M_spine_03_JNT_parentConstraint1.cry" "FK_M_spine_03_JNT.ry";
connectAttr "FK_M_spine_03_JNT_parentConstraint1.crz" "FK_M_spine_03_JNT.rz";
connectAttr "FK_M_spine_03_JNT.s" "FK_M_spine_04_JNT.is";
connectAttr "FK_M_spine_04_JNT_parentConstraint1.crx" "FK_M_spine_04_JNT.rx";
connectAttr "FK_M_spine_04_JNT_parentConstraint1.cry" "FK_M_spine_04_JNT.ry";
connectAttr "FK_M_spine_04_JNT_parentConstraint1.crz" "FK_M_spine_04_JNT.rz";
connectAttr "FK_M_spine_04_JNT_parentConstraint1.ctx" "FK_M_spine_04_JNT.tx";
connectAttr "FK_M_spine_04_JNT_parentConstraint1.cty" "FK_M_spine_04_JNT.ty";
connectAttr "FK_M_spine_04_JNT_parentConstraint1.ctz" "FK_M_spine_04_JNT.tz";
connectAttr "FK_M_spine_04_JNT.s" "FK_M_spine_05_JNT.is";
connectAttr "FK_M_spine_05_JNT_parentConstraint1.ctx" "FK_M_spine_05_JNT.tx";
connectAttr "FK_M_spine_05_JNT_parentConstraint1.cty" "FK_M_spine_05_JNT.ty";
connectAttr "FK_M_spine_05_JNT_parentConstraint1.ctz" "FK_M_spine_05_JNT.tz";
connectAttr "FK_M_spine_05_JNT_parentConstraint1.crx" "FK_M_spine_05_JNT.rx";
connectAttr "FK_M_spine_05_JNT_parentConstraint1.cry" "FK_M_spine_05_JNT.ry";
connectAttr "FK_M_spine_05_JNT_parentConstraint1.crz" "FK_M_spine_05_JNT.rz";
connectAttr "FK_M_spine_05_JNT.ro" "FK_M_spine_05_JNT_parentConstraint1.cro";
connectAttr "FK_M_spine_05_JNT.pim" "FK_M_spine_05_JNT_parentConstraint1.cpim";
connectAttr "FK_M_spine_05_JNT.rp" "FK_M_spine_05_JNT_parentConstraint1.crp";
connectAttr "FK_M_spine_05_JNT.rpt" "FK_M_spine_05_JNT_parentConstraint1.crt";
connectAttr "FK_M_spine_05_JNT.jo" "FK_M_spine_05_JNT_parentConstraint1.cjo";
connectAttr "FK_M_spine_05_CTL.t" "FK_M_spine_05_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "FK_M_spine_05_CTL.rp" "FK_M_spine_05_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_M_spine_05_CTL.rpt" "FK_M_spine_05_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_M_spine_05_CTL.r" "FK_M_spine_05_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "FK_M_spine_05_CTL.ro" "FK_M_spine_05_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_M_spine_05_CTL.s" "FK_M_spine_05_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "FK_M_spine_05_CTL.pm" "FK_M_spine_05_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_M_spine_05_JNT_parentConstraint1.w0" "FK_M_spine_05_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_M_spine_04_JNT.ro" "FK_M_spine_04_JNT_parentConstraint1.cro";
connectAttr "FK_M_spine_04_JNT.pim" "FK_M_spine_04_JNT_parentConstraint1.cpim";
connectAttr "FK_M_spine_04_JNT.rp" "FK_M_spine_04_JNT_parentConstraint1.crp";
connectAttr "FK_M_spine_04_JNT.rpt" "FK_M_spine_04_JNT_parentConstraint1.crt";
connectAttr "FK_M_spine_04_JNT.jo" "FK_M_spine_04_JNT_parentConstraint1.cjo";
connectAttr "FK_M_spine_04_CTL.t" "FK_M_spine_04_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "FK_M_spine_04_CTL.rp" "FK_M_spine_04_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_M_spine_04_CTL.rpt" "FK_M_spine_04_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_M_spine_04_CTL.r" "FK_M_spine_04_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "FK_M_spine_04_CTL.ro" "FK_M_spine_04_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_M_spine_04_CTL.s" "FK_M_spine_04_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "FK_M_spine_04_CTL.pm" "FK_M_spine_04_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_M_spine_04_JNT_parentConstraint1.w0" "FK_M_spine_04_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_M_spine_03_JNT.ro" "FK_M_spine_03_JNT_parentConstraint1.cro";
connectAttr "FK_M_spine_03_JNT.pim" "FK_M_spine_03_JNT_parentConstraint1.cpim";
connectAttr "FK_M_spine_03_JNT.rp" "FK_M_spine_03_JNT_parentConstraint1.crp";
connectAttr "FK_M_spine_03_JNT.rpt" "FK_M_spine_03_JNT_parentConstraint1.crt";
connectAttr "FK_M_spine_03_JNT.jo" "FK_M_spine_03_JNT_parentConstraint1.cjo";
connectAttr "FK_M_spine_03_CTL.t" "FK_M_spine_03_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "FK_M_spine_03_CTL.rp" "FK_M_spine_03_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_M_spine_03_CTL.rpt" "FK_M_spine_03_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_M_spine_03_CTL.r" "FK_M_spine_03_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "FK_M_spine_03_CTL.ro" "FK_M_spine_03_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_M_spine_03_CTL.s" "FK_M_spine_03_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "FK_M_spine_03_CTL.pm" "FK_M_spine_03_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_M_spine_03_JNT_parentConstraint1.w0" "FK_M_spine_03_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_M_spine_02_JNT.ro" "FK_M_spine_02_JNT_parentConstraint1.cro";
connectAttr "FK_M_spine_02_JNT.pim" "FK_M_spine_02_JNT_parentConstraint1.cpim";
connectAttr "FK_M_spine_02_JNT.rp" "FK_M_spine_02_JNT_parentConstraint1.crp";
connectAttr "FK_M_spine_02_JNT.rpt" "FK_M_spine_02_JNT_parentConstraint1.crt";
connectAttr "FK_M_spine_02_JNT.jo" "FK_M_spine_02_JNT_parentConstraint1.cjo";
connectAttr "FK_M_spine_02_CTL.t" "FK_M_spine_02_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "FK_M_spine_02_CTL.rp" "FK_M_spine_02_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_M_spine_02_CTL.rpt" "FK_M_spine_02_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_M_spine_02_CTL.r" "FK_M_spine_02_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "FK_M_spine_02_CTL.ro" "FK_M_spine_02_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_M_spine_02_CTL.s" "FK_M_spine_02_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "FK_M_spine_02_CTL.pm" "FK_M_spine_02_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_M_spine_02_JNT_parentConstraint1.w0" "FK_M_spine_02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_M_spine_01_JNT.ro" "FK_M_spine_01_JNT_parentConstraint1.cro";
connectAttr "FK_M_spine_01_JNT.pim" "FK_M_spine_01_JNT_parentConstraint1.cpim";
connectAttr "FK_M_spine_01_JNT.rp" "FK_M_spine_01_JNT_parentConstraint1.crp";
connectAttr "FK_M_spine_01_JNT.rpt" "FK_M_spine_01_JNT_parentConstraint1.crt";
connectAttr "FK_M_spine_01_JNT.jo" "FK_M_spine_01_JNT_parentConstraint1.cjo";
connectAttr "M_hip_FK_space.t" "FK_M_spine_01_JNT_parentConstraint1.tg[0].tt";
connectAttr "M_hip_FK_space.rp" "FK_M_spine_01_JNT_parentConstraint1.tg[0].trp";
connectAttr "M_hip_FK_space.rpt" "FK_M_spine_01_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "M_hip_FK_space.r" "FK_M_spine_01_JNT_parentConstraint1.tg[0].tr";
connectAttr "M_hip_FK_space.ro" "FK_M_spine_01_JNT_parentConstraint1.tg[0].tro";
connectAttr "M_hip_FK_space.s" "FK_M_spine_01_JNT_parentConstraint1.tg[0].ts";
connectAttr "M_hip_FK_space.pm" "FK_M_spine_01_JNT_parentConstraint1.tg[0].tpm";
connectAttr "FK_M_spine_01_JNT_parentConstraint1.w0" "FK_M_spine_01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_switch_CTL.FK_IK" "IK_spine_CTL_GRP.v";
connectAttr "M_root_JNT2IK_spine_CTL_GRP_DCMX.ot" "IK_spine_CTL_GRP.t";
connectAttr "M_root_JNT2IK_spine_CTL_GRP_DCMX.or" "IK_spine_CTL_GRP.r";
connectAttr "spine_FK_IK_RVS.ox" "FK_spine_CTL_GRP.v";
connectAttr "M_root_JNT2FK_spine_CTL_GRP_DCMX.ot" "FK_spine_CTL_GRP.t";
connectAttr "M_root_JNT2FK_spine_CTL_GRP_DCMX.or" "FK_spine_CTL_GRP.r";
connectAttr "M_hip_CTL.r" "M_hip_FK_space.r";
connectAttr "M_spine_01_JNT2spine_switch_CTL_offGRP_DCMX.ot" "spine_switch_CTL_offGRP.t"
		;
connectAttr "M_spine_01_JNT2spine_switch_CTL_offGRP_DCMX.or" "spine_switch_CTL_offGRP.r"
		;
connectAttr "M_hip_CTL_offGRP_parentConstraint1.ctx" "M_hip_CTL_offGRP.tx";
connectAttr "M_hip_CTL_offGRP_parentConstraint1.cty" "M_hip_CTL_offGRP.ty";
connectAttr "M_hip_CTL_offGRP_parentConstraint1.ctz" "M_hip_CTL_offGRP.tz";
connectAttr "M_hip_CTL_offGRP_parentConstraint1.crx" "M_hip_CTL_offGRP.rx";
connectAttr "M_hip_CTL_offGRP_parentConstraint1.cry" "M_hip_CTL_offGRP.ry";
connectAttr "M_hip_CTL_offGRP_parentConstraint1.crz" "M_hip_CTL_offGRP.rz";
connectAttr "M_hip_CTL_offGRP.ro" "M_hip_CTL_offGRP_parentConstraint1.cro";
connectAttr "M_hip_CTL_offGRP.pim" "M_hip_CTL_offGRP_parentConstraint1.cpim";
connectAttr "M_hip_CTL_offGRP.rp" "M_hip_CTL_offGRP_parentConstraint1.crp";
connectAttr "M_hip_CTL_offGRP.rpt" "M_hip_CTL_offGRP_parentConstraint1.crt";
connectAttr "IK_M_spine_01_CTL.t" "M_hip_CTL_offGRP_parentConstraint1.tg[0].tt";
connectAttr "IK_M_spine_01_CTL.rp" "M_hip_CTL_offGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_01_CTL.rpt" "M_hip_CTL_offGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_01_CTL.r" "M_hip_CTL_offGRP_parentConstraint1.tg[0].tr";
connectAttr "IK_M_spine_01_CTL.ro" "M_hip_CTL_offGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_01_CTL.s" "M_hip_CTL_offGRP_parentConstraint1.tg[0].ts";
connectAttr "IK_M_spine_01_CTL.pm" "M_hip_CTL_offGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "M_hip_CTL_offGRP_parentConstraint1.w0" "M_hip_CTL_offGRP_parentConstraint1.tg[0].tw"
		;
connectAttr "FK_M_spine_01_CTL.t" "M_hip_CTL_offGRP_parentConstraint1.tg[1].tt";
connectAttr "FK_M_spine_01_CTL.rp" "M_hip_CTL_offGRP_parentConstraint1.tg[1].trp"
		;
connectAttr "FK_M_spine_01_CTL.rpt" "M_hip_CTL_offGRP_parentConstraint1.tg[1].trt"
		;
connectAttr "FK_M_spine_01_CTL.r" "M_hip_CTL_offGRP_parentConstraint1.tg[1].tr";
connectAttr "FK_M_spine_01_CTL.ro" "M_hip_CTL_offGRP_parentConstraint1.tg[1].tro"
		;
connectAttr "FK_M_spine_01_CTL.s" "M_hip_CTL_offGRP_parentConstraint1.tg[1].ts";
connectAttr "FK_M_spine_01_CTL.pm" "M_hip_CTL_offGRP_parentConstraint1.tg[1].tpm"
		;
connectAttr "M_hip_CTL_offGRP_parentConstraint1.w1" "M_hip_CTL_offGRP_parentConstraint1.tg[1].tw"
		;
connectAttr "spine_switch_CTL.FK_IK" "M_hip_CTL_offGRP_parentConstraint1.w0";
connectAttr "spine_FK_IK_RVS.ox" "M_hip_CTL_offGRP_parentConstraint1.w1";
connectAttr "M_spine_01_JNT_PRBL.or" "M_spine_01_JNT.r";
connectAttr "M_spine_01_JNT_PRBL.ot" "M_spine_01_JNT.t";
connectAttr "M_spine_01_JNT_BLCL.op" "M_spine_01_JNT.s";
connectAttr "M_spine_01_JNT.s" "M_spine_02_JNT.is";
connectAttr "M_spine_02_JNT_PRBL.ot" "M_spine_02_JNT.t";
connectAttr "M_spine_02_JNT_PRBL.or" "M_spine_02_JNT.r";
connectAttr "M_spine_02_JNT_BLCL.op" "M_spine_02_JNT.s";
connectAttr "M_spine_02_JNT.s" "M_spine_03_JNT.is";
connectAttr "M_spine_03_JNT_PRBL.ot" "M_spine_03_JNT.t";
connectAttr "M_spine_03_JNT_PRBL.or" "M_spine_03_JNT.r";
connectAttr "M_spine_03_JNT_BLCL.op" "M_spine_03_JNT.s";
connectAttr "M_spine_03_JNT.s" "M_spine_04_JNT.is";
connectAttr "M_spine_04_JNT_PRBL.or" "M_spine_04_JNT.r";
connectAttr "M_spine_04_JNT_PRBL.ot" "M_spine_04_JNT.t";
connectAttr "M_spine_04_JNT_BLCL.op" "M_spine_04_JNT.s";
connectAttr "M_spine_04_JNT.s" "M_spine_05_JNT.is";
connectAttr "M_spine_05_JNT_PRBL.ot" "M_spine_05_JNT.t";
connectAttr "M_spine_05_JNT_PRBL.or" "M_spine_05_JNT.r";
connectAttr "M_spine_05_JNT_BLCL.op" "M_spine_05_JNT.s";
connectAttr "skinCluster1GroupId.id" "bodyShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster1Set.mwc" "bodyShapeDeformed.iog.og[3].gco";
connectAttr "groupId52.id" "bodyShapeDeformed.iog.og[4].gid";
connectAttr "tweakSet2.mwc" "bodyShapeDeformed.iog.og[4].gco";
connectAttr "skinCluster1.og[0]" "bodyShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "bodyShapeDeformed.twl";
connectAttr "IK_M_spine_05_JNT.t" "scapula_CTL_offGRP_parentConstraint1.tg[0].tt"
		;
connectAttr "IK_M_spine_05_JNT.rp" "scapula_CTL_offGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_M_spine_05_JNT.rpt" "scapula_CTL_offGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_M_spine_05_JNT.r" "scapula_CTL_offGRP_parentConstraint1.tg[0].tr"
		;
connectAttr "IK_M_spine_05_JNT.ro" "scapula_CTL_offGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_M_spine_05_JNT.s" "scapula_CTL_offGRP_parentConstraint1.tg[0].ts"
		;
connectAttr "IK_M_spine_05_JNT.pm" "scapula_CTL_offGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_M_spine_05_JNT.jo" "scapula_CTL_offGRP_parentConstraint1.tg[0].tjo"
		;
connectAttr "IK_M_spine_05_JNT.ssc" "scapula_CTL_offGRP_parentConstraint1.tg[0].tsc"
		;
connectAttr "IK_M_spine_05_JNT.is" "scapula_CTL_offGRP_parentConstraint1.tg[0].tis"
		;
connectAttr "scapula_CTL_offGRP_parentConstraint1.w0" "scapula_CTL_offGRP_parentConstraint1.tg[0].tw"
		;
connectAttr "M_spine_01_JNT.t" "hip_CTL_offGRP_parentConstraint1.tg[0].tt";
connectAttr "M_spine_01_JNT.rp" "hip_CTL_offGRP_parentConstraint1.tg[0].trp";
connectAttr "M_spine_01_JNT.rpt" "hip_CTL_offGRP_parentConstraint1.tg[0].trt";
connectAttr "M_spine_01_JNT.r" "hip_CTL_offGRP_parentConstraint1.tg[0].tr";
connectAttr "M_spine_01_JNT.ro" "hip_CTL_offGRP_parentConstraint1.tg[0].tro";
connectAttr "M_spine_01_JNT.s" "hip_CTL_offGRP_parentConstraint1.tg[0].ts";
connectAttr "M_spine_01_JNT.pm" "hip_CTL_offGRP_parentConstraint1.tg[0].tpm";
connectAttr "M_spine_01_JNT.jo" "hip_CTL_offGRP_parentConstraint1.tg[0].tjo";
connectAttr "M_spine_01_JNT.ssc" "hip_CTL_offGRP_parentConstraint1.tg[0].tsc";
connectAttr "M_spine_01_JNT.is" "hip_CTL_offGRP_parentConstraint1.tg[0].tis";
connectAttr "hip_CTL_offGRP_parentConstraint1.w0" "hip_CTL_offGRP_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "softikV_COND.ocr" "ctrllen_COND.ctr";
connectAttr "result_softik_len.o1" "softikV_COND.ctr";
connectAttr "mult_softikV.ox" "result_softik_len.i1[1]";
connectAttr "power_val.ox" "mult_softikV.i2x";
connectAttr "negate_val.ox" "power_val.i2x";
connectAttr "divide_softikV.ox" "negate_val.i1x";
connectAttr "extended_softikV_COND.ocr" "extended_ctrllen_COND.ctr";
connectAttr "extended_result_softik_len.o1" "extended_softikV_COND.ctr";
connectAttr "extended_mult_softikV.ox" "extended_result_softik_len.i1[1]";
connectAttr "extended_power_val.ox" "extended_mult_softikV.i2x";
connectAttr "extended_negate_val.ox" "extended_power_val.i2x";
connectAttr "divide_expand_arm_softikV.ox" "extended_negate_val.i1x";
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch.i1[1]";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch.i1[1]";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "extended_stretchCtrl_arm.ox" "extendedarm_plus_stretch.i1[1]";
connectAttr "extended_stretched_arm.ox" "extended_stretchCtrl_arm.i2x";
connectAttr "extendedarm_ratio.ox" "extended_stretched_arm.i2x";
connectAttr "arm_switch_space_CHOI.o" "arm_switch_CTL_space_MTMX.i[0]";
connectAttr "arm_switch_CTL_space_MTMX.o" "arm_switch_CTL_space_DCMX.imat";
connectAttr "layerManager.dli[1]" "layer3.id";
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "surfaceShader1SG.msg" "materialInfo1.sg";
connectAttr "surfaceShader1.msg" "materialInfo1.m";
connectAttr "surfaceShader1.msg" "materialInfo1.t" -na;
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "lambert3.msg" "materialInfo3.m";
connectAttr "surfaceShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "surfaceShader1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "backto_zero_ball.o1" "ball_start_conditon.ctr";
connectAttr "ball_remap.ov" "backto_zero_ball.i1[1]";
connectAttr "M_spine_01_JNT.wm" "skinCluster1.ma[28]";
connectAttr "M_spine_02_JNT.wm" "skinCluster1.ma[29]";
connectAttr "M_spine_03_JNT.wm" "skinCluster1.ma[30]";
connectAttr "M_spine_04_JNT.wm" "skinCluster1.ma[31]";
connectAttr "M_spine_05_JNT.wm" "skinCluster1.ma[32]";
connectAttr "M_spine_01_JNT.liw" "skinCluster1.lw[28]";
connectAttr "M_spine_02_JNT.liw" "skinCluster1.lw[29]";
connectAttr "M_spine_03_JNT.liw" "skinCluster1.lw[30]";
connectAttr "M_spine_04_JNT.liw" "skinCluster1.lw[31]";
connectAttr "M_spine_05_JNT.liw" "skinCluster1.lw[32]";
connectAttr "M_spine_01_JNT.obcc" "skinCluster1.ifcl[28]";
connectAttr "M_spine_02_JNT.obcc" "skinCluster1.ifcl[29]";
connectAttr "M_spine_03_JNT.obcc" "skinCluster1.ifcl[30]";
connectAttr "M_spine_04_JNT.obcc" "skinCluster1.ifcl[31]";
connectAttr "M_spine_05_JNT.obcc" "skinCluster1.ifcl[32]";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "groupParts50.og" "tweak2.ip[0].ig";
connectAttr "groupId52.id" "tweak2.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "bodyShapeDeformed.iog.og[3]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId52.msg" "tweakSet2.gn" -na;
connectAttr "bodyShapeDeformed.iog.og[4]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupId52.id" "groupParts50.gi";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.w" "bindPose1.p[10]";
connectAttr "q_armRN.phl[1]" "bindPose1.p[11]";
connectAttr "q_legRN.phl[330]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.w" "bindPose1.p[19]";
connectAttr "q_legRN.phl[329]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.w" "bindPose1.p[28]";
connectAttr "spine_GRP.msg" "bindPose1.p[29]";
connectAttr "spine_output.msg" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[36]";
connectAttr "q_armRN.phl[2]" "bindPose1.m[10]";
connectAttr "q_legRN.phl[331]" "bindPose1.m[11]";
connectAttr "q_legRN.phl[328]" "bindPose1.m[20]";
connectAttr "spine_GRP.msg" "bindPose1.m[28]";
connectAttr "spine_output.msg" "bindPose1.m[29]";
connectAttr "M_spine_01_JNT.msg" "bindPose1.m[30]";
connectAttr "M_spine_02_JNT.msg" "bindPose1.m[31]";
connectAttr "M_spine_03_JNT.msg" "bindPose1.m[32]";
connectAttr "M_spine_04_JNT.msg" "bindPose1.m[33]";
connectAttr "M_spine_05_JNT.msg" "bindPose1.m[36]";
connectAttr "M_spine_01_JNT.bps" "bindPose1.wm[30]";
connectAttr "M_spine_02_JNT.bps" "bindPose1.wm[31]";
connectAttr "M_spine_03_JNT.bps" "bindPose1.wm[32]";
connectAttr "M_spine_04_JNT.bps" "bindPose1.wm[33]";
connectAttr "M_spine_05_JNT.bps" "bindPose1.wm[36]";
connectAttr "arm_switch_space_CHOI.msg" "arm_SET.dnsm" -na;
connectAttr "ctrllen_COND.msg" "arm_SET.dnsm" -na;
connectAttr "extended_ctrllen_COND.msg" "arm_SET.dnsm" -na;
connectAttr "extended_softikV_COND.msg" "arm_SET.dnsm" -na;
connectAttr "softikV_COND.msg" "arm_SET.dnsm" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "divide_expand_arm_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "divide_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "extended_mult_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "extended_negate_val.msg" "arm_SET.dnsm" -na;
connectAttr "extended_power_val.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretchCtrl_arm.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretched_arm.msg" "arm_SET.dnsm" -na;
connectAttr "extendedarm_ratio.msg" "arm_SET.dnsm" -na;
connectAttr "extendedarm_stretch_output_mul_ctrlVal.msg" "arm_SET.dnsm" -na;
connectAttr "IK_negate_val.msg" "arm_SET.dnsm" -na;
connectAttr "loarm_ratio3.msg" "arm_SET.dnsm" -na;
connectAttr "mult_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "negate_val.msg" "arm_SET.dnsm" -na;
connectAttr "power_val.msg" "arm_SET.dnsm" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" "arm_SET.dnsm" -na;
connectAttr "stretchCtrl_loarm.msg" "arm_SET.dnsm" -na;
connectAttr "stretchCtrl_uparm.msg" "arm_SET.dnsm" -na;
connectAttr "stretched_loarmLen.msg" "arm_SET.dnsm" -na;
connectAttr "stretched_uparmLen.msg" "arm_SET.dnsm" -na;
connectAttr "uparm_ratio.msg" "arm_SET.dnsm" -na;
connectAttr "extended_result_softik_len.msg" "arm_SET.dnsm" -na;
connectAttr "extendedarm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "loarm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "result_softik_len.msg" "arm_SET.dnsm" -na;
connectAttr "uparm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI1.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI2.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI3.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI4.ic";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "IK_M_spine_01_bindJNT.wm" "skinCluster2.ma[0]";
connectAttr "IK_M_spine_02_bindJNT.wm" "skinCluster2.ma[1]";
connectAttr "IK_M_spine_03_bindJNT.wm" "skinCluster2.ma[2]";
connectAttr "IK_M_spine_01_bindJNT.liw" "skinCluster2.lw[0]";
connectAttr "IK_M_spine_02_bindJNT.liw" "skinCluster2.lw[1]";
connectAttr "IK_M_spine_03_bindJNT.liw" "skinCluster2.lw[2]";
connectAttr "IK_M_spine_01_bindJNT.obcc" "skinCluster2.ifcl[0]";
connectAttr "IK_M_spine_02_bindJNT.obcc" "skinCluster2.ifcl[1]";
connectAttr "IK_M_spine_03_bindJNT.obcc" "skinCluster2.ifcl[2]";
connectAttr "groupParts52.og" "tweak3.ip[0].ig";
connectAttr "groupId54.id" "tweak3.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "IK_CRVShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId54.msg" "tweakSet3.gn" -na;
connectAttr "IK_CRVShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "IK_CRVShapeOrig.ws" "groupParts52.ig";
connectAttr "groupId54.id" "groupParts52.gi";
connectAttr "IK_M_spine_01_CTL_offGRP.msg" "bindPose2.m[0]";
connectAttr "IK_M_spine_01_CTL_spcGRP.msg" "bindPose2.m[1]";
connectAttr "IK_M_spine_01_CTL.msg" "bindPose2.m[2]";
connectAttr "IK_M_spine_01_bindJNT.msg" "bindPose2.m[3]";
connectAttr "IK_M_spine_02_CTL_offGRP.msg" "bindPose2.m[4]";
connectAttr "IK_M_spine_02_CTL_spcGRP.msg" "bindPose2.m[5]";
connectAttr "IK_M_spine_02_CTL.msg" "bindPose2.m[6]";
connectAttr "IK_M_spine_02_bindJNT.msg" "bindPose2.m[7]";
connectAttr "IK_M_spine_03_CTL_offGRP.msg" "bindPose2.m[8]";
connectAttr "IK_M_spine_03_CTL_spcGRP.msg" "bindPose2.m[9]";
connectAttr "IK_M_spine_03_CTL.msg" "bindPose2.m[10]";
connectAttr "IK_M_spine_03_bindJNT.msg" "bindPose2.m[11]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.w" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.w" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "IK_M_spine_01_bindJNT.bps" "bindPose2.wm[3]";
connectAttr "IK_M_spine_02_bindJNT.bps" "bindPose2.wm[7]";
connectAttr "IK_M_spine_03_bindJNT.bps" "bindPose2.wm[11]";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI1.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI2.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI3.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI4.ic";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "IK_M_spine_01_bindJNT.wm" "skinCluster3.ma[0]";
connectAttr "IK_M_spine_02_bindJNT.wm" "skinCluster3.ma[1]";
connectAttr "IK_M_spine_03_bindJNT.wm" "skinCluster3.ma[2]";
connectAttr "IK_M_spine_01_bindJNT.liw" "skinCluster3.lw[0]";
connectAttr "IK_M_spine_02_bindJNT.liw" "skinCluster3.lw[1]";
connectAttr "IK_M_spine_03_bindJNT.liw" "skinCluster3.lw[2]";
connectAttr "IK_M_spine_01_bindJNT.obcc" "skinCluster3.ifcl[0]";
connectAttr "IK_M_spine_02_bindJNT.obcc" "skinCluster3.ifcl[1]";
connectAttr "IK_M_spine_03_bindJNT.obcc" "skinCluster3.ifcl[2]";
connectAttr "bindPose2.msg" "skinCluster3.bp";
connectAttr "groupParts54.og" "tweak4.ip[0].ig";
connectAttr "groupId56.id" "tweak4.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "IK_upVec_CRVShape.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId56.msg" "tweakSet4.gn" -na;
connectAttr "IK_upVec_CRVShape.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "IK_upVec_CRVShapeOrig.ws" "groupParts54.ig";
connectAttr "groupId56.id" "groupParts54.gi";
connectAttr "sharedReferenceNode.sr" "fit_q_legRN.sr";
connectAttr "sharedReferenceNode.sr" "fit_q_armRN.sr";
connectAttr "modelRNfosterParent1.msg" "modelRN.fp";
connectAttr "sharedReferenceNode.sr" "q_armRN.sr";
connectAttr "q_armRNfosterParent1.msg" "q_armRN.fp";
connectAttr "sharedReferenceNode.sr" "q_legRN.sr";
connectAttr "q_legRNfosterParent1.msg" "q_legRN.fp";
connectAttr "IK_M_spine_01_JNT.t" "M_spine_01_JNT_PRBL.it1";
connectAttr "IK_M_spine_01_JNT.r" "M_spine_01_JNT_PRBL.ir1";
connectAttr "FK_M_spine_01_JNT.t" "M_spine_01_JNT_PRBL.it2";
connectAttr "FK_M_spine_01_JNT.r" "M_spine_01_JNT_PRBL.ir2";
connectAttr "spine_FK_IK_RVS.ox" "M_spine_01_JNT_PRBL.w";
connectAttr "IK_M_spine_01_JNT.s" "M_spine_01_JNT_BLCL.c1";
connectAttr "FK_M_spine_01_JNT.s" "M_spine_01_JNT_BLCL.c2";
connectAttr "spine_switch_CTL.FK_IK" "M_spine_01_JNT_BLCL.b";
connectAttr "IK_M_spine_02_JNT.t" "M_spine_02_JNT_PRBL.it1";
connectAttr "IK_M_spine_02_JNT.r" "M_spine_02_JNT_PRBL.ir1";
connectAttr "FK_M_spine_02_JNT.t" "M_spine_02_JNT_PRBL.it2";
connectAttr "FK_M_spine_02_JNT.r" "M_spine_02_JNT_PRBL.ir2";
connectAttr "spine_FK_IK_RVS.ox" "M_spine_02_JNT_PRBL.w";
connectAttr "IK_M_spine_02_JNT.s" "M_spine_02_JNT_BLCL.c1";
connectAttr "FK_M_spine_02_JNT.s" "M_spine_02_JNT_BLCL.c2";
connectAttr "spine_switch_CTL.FK_IK" "M_spine_02_JNT_BLCL.b";
connectAttr "IK_M_spine_03_JNT.t" "M_spine_03_JNT_PRBL.it1";
connectAttr "IK_M_spine_03_JNT.r" "M_spine_03_JNT_PRBL.ir1";
connectAttr "FK_M_spine_03_JNT.t" "M_spine_03_JNT_PRBL.it2";
connectAttr "FK_M_spine_03_JNT.r" "M_spine_03_JNT_PRBL.ir2";
connectAttr "spine_FK_IK_RVS.ox" "M_spine_03_JNT_PRBL.w";
connectAttr "IK_M_spine_03_JNT.s" "M_spine_03_JNT_BLCL.c1";
connectAttr "FK_M_spine_03_JNT.s" "M_spine_03_JNT_BLCL.c2";
connectAttr "spine_switch_CTL.FK_IK" "M_spine_03_JNT_BLCL.b";
connectAttr "IK_M_spine_04_JNT.t" "M_spine_04_JNT_PRBL.it1";
connectAttr "IK_M_spine_04_JNT.r" "M_spine_04_JNT_PRBL.ir1";
connectAttr "FK_M_spine_04_JNT.t" "M_spine_04_JNT_PRBL.it2";
connectAttr "FK_M_spine_04_JNT.r" "M_spine_04_JNT_PRBL.ir2";
connectAttr "spine_FK_IK_RVS.ox" "M_spine_04_JNT_PRBL.w";
connectAttr "IK_M_spine_04_JNT.s" "M_spine_04_JNT_BLCL.c1";
connectAttr "FK_M_spine_04_JNT.s" "M_spine_04_JNT_BLCL.c2";
connectAttr "spine_switch_CTL.FK_IK" "M_spine_04_JNT_BLCL.b";
connectAttr "IK_M_spine_05_JNT.t" "M_spine_05_JNT_PRBL.it1";
connectAttr "IK_M_spine_05_JNT.r" "M_spine_05_JNT_PRBL.ir1";
connectAttr "FK_M_spine_05_JNT.t" "M_spine_05_JNT_PRBL.it2";
connectAttr "FK_M_spine_05_JNT.r" "M_spine_05_JNT_PRBL.ir2";
connectAttr "spine_FK_IK_RVS.ox" "M_spine_05_JNT_PRBL.w";
connectAttr "IK_M_spine_05_JNT.s" "M_spine_05_JNT_BLCL.c1";
connectAttr "FK_M_spine_05_JNT.s" "M_spine_05_JNT_BLCL.c2";
connectAttr "spine_switch_CTL.FK_IK" "M_spine_05_JNT_BLCL.b";
connectAttr "spine_switch_CTL_offGRP.offset" "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.i[0]"
		;
connectAttr "M_spine_01_JNT.wm" "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.i[1]"
		;
connectAttr "spine_switch_CTL_offGRP.pim" "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.i[2]"
		;
connectAttr "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.o" "M_spine_01_JNT2spine_switch_CTL_offGRP_DCMX.imat"
		;
connectAttr "spine_switch_CTL.FK_IK" "spine_FK_IK_RVS.ix";
connectAttr "IK_spine_CTL_GRP.offset" "M_root_JNT2IK_spine_CTL_GRP_MTMX.i[0]";
connectAttr "M_root_JNT.wm" "M_root_JNT2IK_spine_CTL_GRP_MTMX.i[1]";
connectAttr "spine_CTL_GRP.wim" "M_root_JNT2IK_spine_CTL_GRP_MTMX.i[2]";
connectAttr "M_root_JNT2IK_spine_CTL_GRP_MTMX.o" "M_root_JNT2IK_spine_CTL_GRP_DCMX.imat"
		;
connectAttr "FK_spine_CTL_GRP.offset" "M_root_JNT2FK_spine_CTL_GRP_MTMX.i[0]";
connectAttr "M_root_JNT.wm" "M_root_JNT2FK_spine_CTL_GRP_MTMX.i[1]";
connectAttr "spine_CTL_GRP.wim" "M_root_JNT2FK_spine_CTL_GRP_MTMX.i[2]";
connectAttr "M_root_JNT2FK_spine_CTL_GRP_MTMX.o" "M_root_JNT2FK_spine_CTL_GRP_DCMX.imat"
		;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extendedarm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretched_arm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretchCtrl_arm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extendedarm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_expand_arm_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extendedarm_stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arm_switch_space_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_start_conditon.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "backto_zero_ball.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_FK_IK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of dog_V002.ma
