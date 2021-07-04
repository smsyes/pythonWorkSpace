//Maya ASCII 2019 scene
//Name: q_spine.ma
//Last modified: Tue, Jun 22, 2021 07:06:15 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
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
	rename -uid "9EE86E40-4CAF-3D12-1593-24874A7279EE";
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
	setAttr ".tg[0].tot" -type "double3" 1.1185475123909328e-07 1.8477439578390431e-09 
		2.3493171852351225e-09 ;
	setAttr ".tg[0].tor" -type "double3" 1.5471685595910261 -1.0821816003003768 0.94965638920833528 ;
	setAttr ".lr" -type "double3" 1.1997718116171907 -0.99012950814756551 0.87626581232818401 ;
	setAttr ".rst" -type "double3" 16.019813801038083 -3.333711344402703e-15 -1.3677822288116204e-05 ;
	setAttr ".rsrr" -type "double3" 1.9567865716035313e-16 -1.9878466759146985e-16 2.0189067802258657e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_04_JNT_parentConstraint1" -p "IK_M_spine_04_JNT";
	rename -uid "E641F303-4818-5357-718A-3180B3A88789";
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
	setAttr ".tg[0].tot" -type "double3" -0.00034567462559298434 -0.0216955744299554 
		-0.024695674073072382 ;
	setAttr ".tg[0].tor" -type "double3" 1.5359501564715763 -0.088374427940163189 0.077594266935364156 ;
	setAttr ".lr" -type "double3" 0.23429077167539689 -0.25888567317568595 0.2392410655344471 ;
	setAttr ".rst" -type "double3" 5.7009596049319189 -1.4579502579235421e-15 1.2739813257667265e-05 ;
	setAttr ".rsrr" -type "double3" 1.9876040188497665e-16 -3.7466250825345376e-17 3.8825130388958926e-19 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_03_JNT_parentConstraint1" -p "IK_M_spine_03_JNT";
	rename -uid "B3A04E05-4EDE-C29B-20EF-3AAF946119B9";
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
	setAttr ".tg[0].tot" -type "double3" -0.00015843486070465929 -0.0064194167611554276 
		-0.0070114701282975034 ;
	setAttr ".tg[0].tor" -type "double3" 0.34732013988363913 0.17326186095709992 -0.15861083134070758 ;
	setAttr ".lr" -type "double3" 0.084077743144195582 0.11048810824345688 -0.10191327508007679 ;
	setAttr ".rst" -type "double3" 5.2877287783295612 -1.2786637564035479e-15 -3.9540202919852163e-05 ;
	setAttr ".rsrr" -type "double3" -4.9696166897867449e-17 2.4751020622961327e-17 -2.504220910087852e-17 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_02_JNT_parentConstraint1" -p "IK_M_spine_02_JNT";
	rename -uid "2C32E8D2-4675-8C8E-D170-B885AC81606D";
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
	setAttr ".tg[0].tot" -type "double3" -2.3842493970249734e-05 -0.0011538456853246171 
		-0.0012096084017372277 ;
	setAttr ".tg[0].tor" -type "double3" 0.1142383549501975 0.062157496296200661 -0.057368162636442559 ;
	setAttr ".lr" -type "double3" 0.029725078052690142 0.062072808684893239 -0.057459784655552439 ;
	setAttr ".rst" -type "double3" 5.3118489873099328 -1.2274459838694264e-15 4.0478211943195674e-05 ;
	setAttr ".rsrr" -type "double3" 2.4854149875557005e-17 2.4835950595687182e-17 -2.486021630218028e-17 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IK_M_spine_01_JNT_parentConstraint1" -p "IK_M_spine_01_JNT";
	rename -uid "ED640CA7-47FD-0BF8-CDA9-A1BB66BFD2DB";
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
	setAttr ".tg[0].tot" -type "double3" 1.1189453630322532e-07 -2.4466179082693884e-11 
		2.099440621350368e-10 ;
	setAttr ".tg[0].tor" -type "double3" 0.029794221505004746 0.013465794381561837 -0.012465041942664365 ;
	setAttr ".lr" -type "double3" 1.9083328088781097e-14 2.5444437451708134e-14 -6.3611093629270304e-15 ;
	setAttr ".rst" -type "double3" -8.9377626011774398e-19 40.881076812744112 -18.107978708906046 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-15 -9.5416640443905503e-15 3.180554681463516e-15 ;
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
createNode transform -n "IK_spine_CTL_GRP" -p "spine_CTL_GRP";
	rename -uid "F542B099-46AE-6635-74F2-9EABC2F0FD6A";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.879018962979004 -89.999999999993989 ;
	setAttr ".radi" 2;
createNode joint -n "M_spine_02_JNT" -p "M_spine_01_JNT";
	rename -uid "5A329B95-4DB2-A56E-B89E-55890B528495";
	setAttr ".radi" 2;
createNode joint -n "M_spine_03_JNT" -p "M_spine_02_JNT";
	rename -uid "EBC95D38-4AAE-AC03-DADD-9FB749C757A3";
	setAttr ".radi" 2;
createNode joint -n "M_spine_04_JNT" -p "M_spine_03_JNT";
	rename -uid "FE2CA3AE-40B8-6AD0-9C72-FB9EA873255C";
	setAttr ".radi" 2;
createNode joint -n "M_spine_05_JNT" -p "M_spine_04_JNT";
	rename -uid "66216E40-4218-BF48-5D35-61B1EF15B27B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
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
createNode tweak -n "tweak3";
	rename -uid "7C94B981-4FFD-4C45-E032-66A2F94B58DB";
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
createNode tweak -n "tweak4";
	rename -uid "70E42CD1-4923-52BF-471E-40A6886CE0F9";
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
createNode reverse -n "spine_FK_IK_RVS";
	rename -uid "81BE13DB-4E5D-8C38-75A9-2EA803E09E65";
createNode decomposeMatrix -n "M_spine_01_JNT2spine_switch_CTL_offGRP_DCMX";
	rename -uid "457E70E6-473D-C947-9296-D6ADE6DE1501";
createNode multMatrix -n "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX";
	rename -uid "C5556C25-4462-477D-2953-C0BB9B478D27";
	setAttr -s 3 ".i";
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
connectAttr "spine_FK_IK_RVS.ox" "FK_spine_CTL_GRP.v";
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
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI1.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI2.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI3.ic";
connectAttr "IK_CRVShape.ws" "IK_CRVShape_POCI4.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI1.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI2.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI3.ic";
connectAttr "IK_upVec_CRVShape.ws" "IK_upVec_CRVShape_POCI4.ic";
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
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "IK_CRVShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupParts52.og" "tweak3.ip[0].ig";
connectAttr "groupId54.id" "tweak3.ip[0].gi";
connectAttr "groupId54.msg" "tweakSet3.gn" -na;
connectAttr "IK_CRVShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "IK_CRVShapeOrig.ws" "groupParts52.ig";
connectAttr "groupId54.id" "groupParts52.gi";
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
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "IK_upVec_CRVShape.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupParts54.og" "tweak4.ip[0].ig";
connectAttr "groupId56.id" "tweak4.ip[0].gi";
connectAttr "groupId56.msg" "tweakSet4.gn" -na;
connectAttr "IK_upVec_CRVShape.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "IK_upVec_CRVShapeOrig.ws" "groupParts54.ig";
connectAttr "groupId56.id" "groupParts54.gi";
connectAttr "spine_switch_CTL.FK_IK" "spine_FK_IK_RVS.ix";
connectAttr "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.o" "M_spine_01_JNT2spine_switch_CTL_offGRP_DCMX.imat"
		;
connectAttr "spine_switch_CTL_offGRP.offset" "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.i[0]"
		;
connectAttr "M_spine_01_JNT.wm" "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.i[1]"
		;
connectAttr "spine_switch_CTL_offGRP.pim" "M_spine_01_JNT2spine_switch_CTL_offGRP_MTMX.i[2]"
		;
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
connectAttr "spine_FK_IK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
// End of q_spine.ma
