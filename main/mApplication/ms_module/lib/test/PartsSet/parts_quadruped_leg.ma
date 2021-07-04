//Maya ASCII 2019 scene
//Name: parts_quadruped_leg.ma
//Last modified: Tue, May 11, 2021 12:12:51 PM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "15BA4E59-4E59-8E93-F334-ACA1582E97F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 92.326750563581413 72.05708571505977 31.657685658525683 ;
	setAttr ".r" -type "double3" -26.138352729305069 419.39999999952954 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BC47E1F1-4232-7210-E794-8D8D05B8B526";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 111.12577689949966;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.6515858503392611 19.561349522696336 -26.119244221249666 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "CB650CE4-4B3C-19B8-C221-E48074AFCF8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5BE48CCE-4D38-3215-7E54-29AB2935B383";
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
	rename -uid "FC636404-4BC0-BAA1-E3B1-CAAB2419657E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8673F71F-48AC-6FFB-AC88-839ECAB16372";
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
	rename -uid "AB3A9C93-4036-9EE0-C01D-1C807AED9B0A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8C0C9AF1-48DC-B553-0594-2A97EB31554B";
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
createNode transform -n "leg_GRP";
	rename -uid "01317A15-4F9E-C260-A009-488BDA184490";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 2 ".iog";
	setAttr -s 2 ".rebuildMode";
	setAttr -s 5 ".init";
	setAttr -k on ".prefixType";
createNode transform -n "leg_motion_GRP" -p "leg_GRP";
	rename -uid "5770B0DC-4767-E780-AF5C-5EA6B372067A";
	setAttr ".v" no;
createNode transform -n "input_hip" -p "leg_motion_GRP";
	rename -uid "63B9CB47-4953-93D7-FE12-99876B690DEF";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
createNode transform -n "input_thigh" -p "input_hip";
	rename -uid "D281AEA7-4449-586A-8051-95A088B0330A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 2.0713150501251221 -2.4073028564453125 0 ;
	setAttr ".r" -type "double3" 0 9.6145742939888414 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "input_knee" -p "input_thigh";
	rename -uid "9BCB6C90-4AA8-0585-1558-C8AAEA748C9C";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 14.413311073045826 0 -9.2860890532620033e-08 ;
	setAttr ".r" -type "double3" 0 24.808835516604692 0 ;
	setAttr ".s" -type "double3" 1.0000000519103551 1 1.0000000519103551 ;
createNode transform -n "input_ankle" -p "input_knee";
	rename -uid "A07504AB-4738-4FF6-B56D-E497E738A432";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 13.462105844960195 -8.8817841970012523e-16 -9.7126701348315692e-08 ;
	setAttr ".r" -type "double3" 0 -35.779471559252869 0 ;
	setAttr ".s" -type "double3" 0.99999994890369348 1 0.99999994890369348 ;
createNode transform -n "input_B_toe" -p "input_ankle";
	rename -uid "945E1850-4C3E-C55A-1B06-7C84A0287934";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 10.648109404222893 8.8817841970012523e-16 4.7434767225240648e-10 ;
	setAttr ".s" -type "double3" 1 1.0000000142892349 1.0000000142892349 ;
createNode transform -n "motion_IK_GRP" -p "leg_motion_GRP";
	rename -uid "891D2B50-4F6B-450C-CE56-1EBE9071ED91";
	setAttr -s 2 ".iog";
createNode transform -n "IK_hip_space" -p "motion_IK_GRP";
	rename -uid "9DB886EA-453C-E3EF-0F5F-2FA35D6DE0A7";
	setAttr ".t" -type "double3" 2.299082835222066e-08 9.3623519603625027e-08 -8.9822589544041875e-07 ;
createNode joint -n "IK_hip_JNT" -p "IK_hip_space";
	rename -uid "7F9C3B29-4BAE-F611-096F-6CA3B2BC03B5";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.57279155036866225;
createNode joint -n "IK_thigh_JNT" -p "IK_hip_JNT";
	rename -uid "9DDB5522-45C7-377D-85A9-82A2C2941E06";
	addAttr -ci true -sn "initTrans" -ln "initTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "initTransX" -ln "initTransX" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransY" -ln "initTransY" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransZ" -ln "initTransZ" -at "double" -p "initTrans";
	setAttr -s 2 ".iog";
	setAttr ".r" -type "double3" -1.3728056434322746e-14 3.5535000145812298e-30 2.9115810235391074e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1937919038631488;
createNode joint -n "IK_knee_JNT" -p "IK_thigh_JNT";
	rename -uid "8B87A930-46B7-E00B-65E3-57A56FAE2BAA";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 14.413311004638672 -6.2172489379008766e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -8.5298665192865505e-07 1.3308516687667957e-05 -1.2074981497163335e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1445917352907937;
createNode joint -n "IK_ankle_JNT" -p "IK_knee_JNT";
	rename -uid "7EB305F2-484C-E8C5-D1AA-34A74AA4AF2D";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 13.462106704711914 0 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -2.3027538280218197e-22 -2.7607037303725317e-06 -3.1952593166220613e-22 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.99904020379521696;
createNode joint -n "IK_B_toe0_JNT" -p "IK_ankle_JNT";
	rename -uid "45D396BD-4C36-85CE-4C0D-B3BC89E5EDDA";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 10.648109436035156 -8.8817841970012523e-16 -1.7763568394002505e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5013341295983873;
createNode ikEffector -n "effector2" -p "IK_ankle_JNT";
	rename -uid "08CE60E1-4024-AC19-77C5-E7A53A8E27B2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "IK_knee_JNT";
	rename -uid "4C3B6C68-4FDE-F129-EE2A-F893D7B38100";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IK_thigh_space" -p "motion_IK_GRP";
	rename -uid "6586ABEB-40F4-7425-812A-C89F0373FFFF";
createNode locator -n "IK_thigh_spaceShape" -p "IK_thigh_space";
	rename -uid "61F6319F-4A84-32A9-B0FC-F1A06F728BE0";
	setAttr -k off ".v";
createNode transform -n "IK_upperLeg_CTLaim" -p "IK_thigh_space";
	rename -uid "1D47090D-4355-BFF9-2FE0-99951416B855";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "IK_upperLeg_CTLaimShape" -p "IK_upperLeg_CTLaim";
	rename -uid "47AF5B7E-460C-89F8-8416-06864D36EC78";
	setAttr -k off ".v";
createNode transform -n "upperLeg_softIK_output_LOC" -p "IK_upperLeg_CTLaim";
	rename -uid "570CDB51-41A4-CF2C-2A35-15AA33F62827";
	setAttr ".t" -type "double3" 27.22545051574707 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_softIK_output_LOCShape" -p "upperLeg_softIK_output_LOC";
	rename -uid "786F6F36-4DB2-9653-E809-71AA48CF2975";
	setAttr -k off ".v";
createNode transform -n "upperLeg_stretch_output_LOC" -p "upperLeg_softIK_output_LOC";
	rename -uid "1C645E79-4D80-A36F-CBBA-279A7FF9A1CC";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode locator -n "upperLeg_stretch_output_LOCShape" -p "upperLeg_stretch_output_LOC";
	rename -uid "98208591-4DD0-F77E-6ED4-DEBEB2AA470B";
	setAttr -k off ".v";
createNode transform -n "IK_B_toe_flex_local_offGRP" -p "upperLeg_stretch_output_LOC";
	rename -uid "C478A23D-472D-5F52-8B42-93BFB4FC1438";
	setAttr ".t" -type "double3" 9.8056228524887903 1.5987211554602254e-14 4.1511466900800862 ;
	setAttr ".r" -type "double3" -21.588982155756764 1.5902773407317584e-15 90.000000000000057 ;
createNode transform -n "IK_B_toe_flex_local_spcGRP" -p "IK_B_toe_flex_local_offGRP";
	rename -uid "93C66B85-4D6B-50BB-24D9-5887DC347739";
createNode transform -n "upperLeg_ikHandle_offGRP" -p "IK_B_toe_flex_local_spcGRP";
	rename -uid "0668391D-471F-B89C-864B-CE8C116750DB";
	setAttr ".t" -type "double3" -1.3116254482525846e-07 10.645128936477311 -0.25199484747692935 ;
createNode ikHandle -n "upperLeg_ikHandle" -p "upperLeg_ikHandle_offGRP";
	rename -uid "8D543C45-48DD-5B0F-F7FA-AE86B48FC53A";
	setAttr ".t" -type "double3" 1.5415336651614098e-07 -1.9385628835522084e-06 -7.5794813625407187e-07 ;
	setAttr ".r" -type "double3" -2.3067479297375234e-06 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000151032806 1.0000000151032804 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "upperLeg_ikHandle";
	rename -uid "AD92654F-4B8C-CA81-F780-3DB86E28908C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_poleVecW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.2990809256384637e-08 -22.69041652744707 9.9659343446023705 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IK_upperLeg_CTLaim_aimConstraint1" -p "IK_upperLeg_CTLaim";
	rename -uid "EA84146F-407C-4217-20E7-2B853B399792";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_ankle_offset_LOCW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -2.9593625319897447e-08 11.974412884855838 -2.821706048302148e-07 ;
	setAttr -k on ".w0";
createNode transform -n "IK_thigh_space_upVec" -p "IK_thigh_space";
	rename -uid "D783CC7F-4C78-ADF8-63AA-B18D4BD7392E";
	setAttr ".t" -type "double3" 6.2325491732529114e-15 1 -6.0636337963556973e-15 ;
createNode locator -n "IK_thigh_space_upVecShape" -p "IK_thigh_space_upVec";
	rename -uid "F2DF9116-429B-47DE-91B8-F8AC394AE94F";
	setAttr -k off ".v";
createNode transform -n "IK_knee_space" -p "motion_IK_GRP";
	rename -uid "BC81E94E-4FD4-FF73-E288-FF8E5AFC2732";
createNode locator -n "IK_knee_spaceShape" -p "IK_knee_space";
	rename -uid "C712A064-4569-A462-A691-FD836FA6D9F1";
	setAttr -k off ".v";
createNode transform -n "IK_lowerLeg_CTLaim" -p "IK_knee_space";
	rename -uid "271439A8-45AB-3130-55BD-31A4992584BF";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "IK_lowerLeg_CTLaimShape" -p "IK_lowerLeg_CTLaim";
	rename -uid "982B106F-49BC-901C-986B-66967548B9A8";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_softIK_output_LOC" -p "IK_lowerLeg_CTLaim";
	rename -uid "10F49FC1-489A-8021-0F78-AE91638C2653";
	setAttr ".t" -type "double3" 22.960750579833984 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_softIK_output_LOCShape" -p "lowerLeg_softIK_output_LOC";
	rename -uid "8FEBE20D-4459-8033-BFA0-97B7B419DAD9";
	setAttr -k off ".v";
createNode transform -n "lowerLeg_stretch_output_LOC" -p "lowerLeg_softIK_output_LOC";
	rename -uid "AAC54481-43FC-5160-C813-E0AE2FB7816B";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode locator -n "lowerLeg_stretch_output_LOCShape" -p "lowerLeg_stretch_output_LOC";
	rename -uid "2DB984EE-48A9-79AC-9FA0-758B1773FBD7";
	setAttr -k off ".v";
createNode transform -n "IK_ankle_flex_local_offGRP" -p "lowerLeg_stretch_output_LOC";
	rename -uid "63545F10-4077-C882-8CEF-4FA853006EF0";
	setAttr ".t" -type "double3" -10.002941320380531 -4.4408920985006262e-15 -3.6501296818809728 ;
	setAttr ".r" -type "double3" -18.691241513948722 0 89.999999999999986 ;
createNode transform -n "IK_ankle_flex_local_spcGRP" -p "IK_ankle_flex_local_offGRP";
	rename -uid "4CE0AEA9-4728-E08C-577A-B092CBB887FE";
createNode transform -n "lowerLeg_ikHandle_offGRP" -p "IK_ankle_flex_local_spcGRP";
	rename -uid "B66A8B5E-43C2-08DA-03E5-ABBB5E368199";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 -10.645127257617185 0.25199252154928686 ;
createNode ikHandle -n "lowerLeg_ikHandle" -p "lowerLeg_ikHandle_offGRP";
	rename -uid "5AD06563-497A-E17C-1270-FAA78520E4A2";
	setAttr ".t" -type "double3" 2.2990819914525673e-08 -7.1244092447741991e-07 -1.3411786383699109e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999996319292739 0.99999996319292761 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_poleVectorConstraint1" -p "lowerLeg_ikHandle";
	rename -uid "C3982D84-4FD5-AA6B-075D-588AE18A3125";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_poleVecW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.2990835013558808e-08 -11.341311993628254 -17.607383246166819 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IK_lowerLeg_CTLaim_aimConstraint1" -p "IK_lowerLeg_CTLaim";
	rename -uid "F7FC9975-48C8-7BFE-34C9-56871C04A363";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_B_toe_CTLW0" -dv 1 -at "double";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -4.6979091140431782e-08 -15.732176964170399 3.4003825556383181e-07 ;
	setAttr -k on ".w0";
createNode transform -n "IK_knee_space_upVec" -p "IK_knee_space";
	rename -uid "AB7E2A3E-4B66-D37E-C279-77A91746CC93";
	setAttr ".t" -type "double3" -8.5414944037635054e-16 1 4.9389353589875994e-15 ;
createNode locator -n "IK_knee_space_upVecShape" -p "IK_knee_space_upVec";
	rename -uid "ADC5C963-4DD5-C8C9-72FF-53BE5F1FAC5A";
	setAttr -k off ".v";
createNode transform -n "leg_softIK_input" -p "motion_IK_GRP";
	rename -uid "C321493A-4D34-E202-7A09-57B7C2B4E486";
	addAttr -ci true -sn "upper_legLen" -ln "upper_legLen" -at "double";
	addAttr -ci true -sn "upper_ctrlLen" -ln "upper_ctrlLen" -at "double";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lower_legLen" -ln "lower_legLen" -at "double";
	addAttr -ci true -sn "lower_ctrlLen" -ln "lower_ctrlLen" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".upper_legLen";
	setAttr -k on ".upper_ctrlLen";
	setAttr -k on ".softik_ctrl_value";
	setAttr -k on ".lower_legLen";
	setAttr -k on ".lower_ctrlLen";
createNode transform -n "leg_softIK_output" -p "motion_IK_GRP";
	rename -uid "23D4CC0E-4598-F8AA-E21C-B8A5D4AFFBCF";
	addAttr -ci true -sn "output_upper_softik" -ln "output_upper_softik" -at "double";
	addAttr -ci true -sn "output_lower_softik" -ln "output_lower_softik" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".output_upper_softik";
	setAttr -k on ".output_lower_softik";
createNode transform -n "leg_stretchIK_input" -p "motion_IK_GRP";
	rename -uid "E9EDC0C6-450A-073B-ED22-78A51FBB08F2";
	addAttr -ci true -sn "upperSoftik_len" -ln "upperSoftik_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "upLeg_len" -ln "upLeg_len" -at "double";
	addAttr -ci true -sn "upperCtrl_len" -ln "upperCtrl_len" -at "double";
	addAttr -ci true -sn "midLeg_len" -ln "midLeg_len" -at "double";
	addAttr -ci true -sn "loLegLen" -ln "loLegLen" -at "double";
	addAttr -ci true -sn "lowerSoftik_len" -ln "lowerSoftik_len" -at "double";
	addAttr -ci true -sn "lowerCtrl_len" -ln "lowerCtrl_len" -at "double";
	setAttr -l on -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".upperSoftik_len";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".upLeg_len";
	setAttr -k on ".upperCtrl_len";
	setAttr -k on ".midLeg_len";
	setAttr -k on ".loLegLen";
	setAttr -k on ".lowerSoftik_len";
	setAttr -k on ".lowerCtrl_len";
createNode transform -n "leg_stretchIK_output" -p "motion_IK_GRP";
	rename -uid "46A1F027-4E53-24F6-D512-76A7DB47A375";
	addAttr -ci true -sn "midLeg_stretched" -ln "midLeg_stretched" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "upperStretched_len" -ln "upperStretched_len" -at "double";
	addAttr -ci true -sn "upleg_stretched" -ln "upleg_stretched" -at "double";
	addAttr -ci true -sn "loLeg_Stretched" -ln "loLeg_Stretched" -at "double";
	addAttr -ci true -sn "lowerStretched_len" -ln "lowerStretched_len" -at "double";
	setAttr -l on -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".midLeg_stretched";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".upperStretched_len";
	setAttr -k on ".upleg_stretched";
	setAttr -k on ".loLeg_Stretched";
	setAttr -k on ".lowerStretched_len";
createNode transform -n "motion_FK_GRP" -p "leg_motion_GRP";
	rename -uid "CA72AA1F-4520-63A2-9284-C1AC57425B57";
createNode joint -n "FK_hip_JNT" -p "motion_FK_GRP";
	rename -uid "C2403534-4F9D-AD64-F560-9EAA223575C4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.57279155036866225;
createNode joint -n "FK_thigh_JNT" -p "FK_hip_JNT";
	rename -uid "3FB116BA-40CB-AAAA-B271-CCAFF9406067";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1937919038631488;
createNode joint -n "FK_knee_JNT" -p "FK_thigh_JNT";
	rename -uid "1DBC7051-4AEA-E6B0-B67B-E286A96C8519";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1445917352907937;
createNode joint -n "FK_ankle_JNT" -p "FK_knee_JNT";
	rename -uid "4F202F6F-4B25-972E-EC9C-7EB58E86E8B0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.99904020379521696;
createNode joint -n "FK_B_toe0_JNT" -p "FK_ankle_JNT";
	rename -uid "A9D2E43F-4E31-85A7-4C0B-F8969A5AD539";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5013341295983873;
createNode transform -n "leg_CTL_GRP" -p "leg_GRP";
	rename -uid "C39B2F85-4D1A-C0B2-3806-D39FD7F3F0AA";
createNode transform -n "hip_L_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "2F7488DF-41CC-7D86-47AE-C6B5F6ED3DEC";
createNode transform -n "hip_L_CTL_spcGRP" -p "hip_L_CTL_offGRP";
	rename -uid "9BD2DAE3-406E-E7ED-9F1D-5094032F41A1";
createNode transform -n "hip_L_CTL" -p "hip_L_CTL_spcGRP";
	rename -uid "7A9ADC3E-4F4C-53D8-946F-53994612A8FC";
createNode nurbsCurve -n "hip_L_CTLShape" -p "hip_L_CTL";
	rename -uid "D398B94A-4EA7-9E03-9E50-0C988D29ED7A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.0999999999999948 3.6334503822956306 3.6334503822956492
		3.0999999999999983 2.4424906541753444e-15 5.1384748088522123
		3.1000000000000001 1.3523812645055771 3.6334503822956492
		3.0999999999999983 2.6827684246472541 2.0039525594484076e-14
		3.1000000000000001 1.3523812645055759 -3.6334503822956168
		3.0999999999999983 -9.9920072216264089e-16 -5.1384748088521706
		3.0999999999999948 3.6334503822956292 -3.6334503822956177
		3.0999999999999956 5.1384748088521839 1.8873791418627661e-14
		3.0999999999999948 3.6334503822956306 3.6334503822956492
		3.0999999999999983 2.4424906541753444e-15 5.1384748088522123
		3.1000000000000001 1.3523812645055771 3.6334503822956492
		;
createNode transform -n "IK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "D222844F-4D27-6824-28BC-D9B105D82731";
	setAttr -s 2 ".iog";
	setAttr ".r" -type "double3" 0 9.6145742939888397 -90 ;
	setAttr ".s" -type "double3" 0.99999998489671948 1 0.99999998489671948 ;
createNode transform -n "IK_ankle_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "CEA5A5CB-42C3-D612-E505-6F9A54A0F152";
	setAttr ".r" -type "double3" 0 -10.97063604264817 0 ;
	setAttr ".s" -type "double3" 1.0000000008140459 1 1.0000000008140459 ;
createNode transform -n "IK_ankle_spcGRP" -p "IK_ankle_offGRP";
	rename -uid "63CC01E0-4208-164C-ED2D-DDB1BDCE2F80";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
createNode transform -n "IK_ankle_CTL_local_offGRP" -p "IK_ankle_spcGRP";
	rename -uid "09C7A96E-4C4A-7337-B686-2E9E02EB4B70";
	setAttr ".t" -type "double3" 10.648109404222904 8.8817841970012523e-16 4.7434056682504888e-10 ;
	setAttr ".r" -type "double3" 1.356061748659338 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000142892345 1.0000000142892345 ;
createNode transform -n "IK_ankle_CTL_local_spcGRP" -p "IK_ankle_CTL_local_offGRP";
	rename -uid "1B95DF51-4FF0-0AA4-85B1-77910F26FF0D";
createNode transform -n "IK_ankle_CTL" -p "IK_ankle_CTL_local_spcGRP";
	rename -uid "622204A6-495B-B723-432A-AEA7D8468F63";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".softIK";
	setAttr -k on ".stretchIK";
createNode nurbsCurve -n "IK_ankle_CTLShape" -p "IK_ankle_CTL";
	rename -uid "E7B058BC-4329-ED99-4512-A5ABFA6EFD04";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		2.3200000000000003 -2.3200000000000003 2.3200000000000003
		2.3200000000000003 2.3200000000000003 2.3200000000000003
		2.3200000000000003 2.3200000000000003 -2.3200000000000003
		2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		2.3200000000000003 -2.3200000000000003 2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 2.3200000000000003
		-2.3200000000000003 2.3200000000000003 2.3200000000000003
		-2.3200000000000003 2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		2.3200000000000003 2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 -2.3200000000000003
		-2.3200000000000003 -2.3200000000000003 2.3200000000000003
		-2.3200000000000003 2.3200000000000003 2.3200000000000003
		2.3200000000000003 2.3200000000000003 2.3200000000000003
		;
createNode transform -n "IK_B_toe_flex_CTL_offGRP" -p "IK_ankle_CTL";
	rename -uid "0C54ECED-4C1E-EB0C-80DE-46AA393482C3";
createNode transform -n "IK_B_toe_flex_CTL_spcGRP" -p "IK_B_toe_flex_CTL_offGRP";
	rename -uid "6DF35AD8-4A58-45D7-5270-61A1DAF369F4";
createNode transform -n "IK_B_toe_flex_CTL" -p "IK_B_toe_flex_CTL_spcGRP";
	rename -uid "339E79BC-4B2F-FE84-F679-1EACA0163041";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_B_toe_flex_CTLShape" -p "IK_B_toe_flex_CTL";
	rename -uid "DE4D43A4-4682-A79B-C8FB-F685B7CF9583";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 5.5861933477740582 2.8273701351040854
		-2.7979910232057762e-30 6.040608935502485 3.9244264099517991
		-1.1102230246251565e-16 5.5861933477740582 5.0214826847995129
		0 4.4891370729263436 5.4758982725279415
		-1.1102230246251565e-16 3.3920807980786289 5.0214826847995129
		2.7486872166294634e-30 2.9376652103501995 3.9244264099517991
		1.1102230246251565e-16 3.3920807980786298 2.8273701351040854
		-2.2204460492503131e-16 4.4891370729263436 2.3729545473756559
		1.1102230246251565e-16 5.5861933477740582 2.8273701351040854
		-2.7979910232057762e-30 6.040608935502485 3.9244264099517991
		-1.1102230246251565e-16 5.5861933477740582 5.0214826847995129
		;
createNode transform -n "IK_ankle_flex_CTL_offGRP" -p "IK_B_toe_flex_CTL";
	rename -uid "D210D6B1-4D92-FDD5-5EAA-1087B0CBAFF7";
	setAttr ".t" -type "double3" -5.6621339616924615e-08 4.4891370729263418 3.9244264099517991 ;
createNode transform -n "IK_ankle_flex_CTL_spcGRP" -p "IK_ankle_flex_CTL_offGRP";
	rename -uid "49EA1176-43CB-3AFC-F00D-D89D34ED8C91";
createNode transform -n "IK_ankle_flex_CTL" -p "IK_ankle_flex_CTL_spcGRP";
	rename -uid "6DD82BC6-42D5-4D98-9599-369E55FD793D";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_ankle_flex_CTLShape" -p "IK_ankle_flex_CTL";
	rename -uid "8DF37457-4354-11E9-46E3-D2BD66FE37D4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.8589950632057608 -8.5899504151942807e-06 -5.8286708792820728e-16
		7.4385197725941893e-17 -1.2148024377545141e-05 -2.7977620220553955e-16
		-0.8589950632057608 -8.5899504151942807e-06 -9.3258734068513153e-16
		-1.2148024683971204 2.4128572597604301e-17 -2.4128572597604291e-17
		-0.8589950632057608 0.85899506320576091 3.9634961979118097e-16
		-1.2168759410079059e-16 1.2148024683971219 6.5281113847959233e-16
		0.8589950632057608 0.85899506320575969 9.792167077193881e-16
		1.2148024683971204 3.0956283524129434e-16 6.3472101032758347e-17
		0.8589950632057608 -8.5899504151942807e-06 -5.8286708792820728e-16
		7.4385197725941893e-17 -1.2148024377545141e-05 -2.7977620220553955e-16
		-0.8589950632057608 -8.5899504151942807e-06 -9.3258734068513153e-16
		;
createNode transform -n "IK_B_toe_CTL_offGRP" -p "IK_ankle_CTL";
	rename -uid "3C67F0B6-4921-A876-8D40-8DB6B1941BB0";
	addAttr -ci true -sn "initTrans" -ln "initTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "initTransX" -ln "initTransX" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransY" -ln "initTransY" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransZ" -ln "initTransZ" -at "double" -p "initTrans";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	setAttr -s 2 ".iog";
	setAttr ".r" -type "double3" 3.9756933518294038e-16 -7.5269520085988317e-17 -3.1796638646290565e-15 ;
createNode transform -n "IK_B_toe_CTL_spcGRP" -p "IK_B_toe_CTL_offGRP";
	rename -uid "54CCB125-4C9C-4E55-C8AD-0F97B8C44FFA";
createNode transform -n "IK_B_toe_CTL" -p "IK_B_toe_CTL_spcGRP";
	rename -uid "0890C3FA-4E93-EA2B-5896-92B892CED155";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_B_toe_CTLShape" -p "IK_B_toe_CTL";
	rename -uid "2E3D42DF-4692-1678-F1C5-119A4AAA59E5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.3007952973194339 -0.78361162489122416 
		2.084406922210658 1.1264315656364128e-16 -1.1081941875543866 2.9477965388946732 -1.3007952973194339 
		-0.78361162489122393 2.0844069222106567 -1.8396023513402859 -5.7448982375248255e-17 
		1.5281429311816058e-16 -1.3007952973194339 0.78361162489122405 -2.084406922210658 
		-1.8427422569541374e-16 1.1081941875543861 -2.9477965388946754 1.3007952973194339 
		0.78361162489122393 -2.0844069222106567 1.8396023513402859 1.5112405007799595e-16 
		-4.0198997320746915e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "IK_lower_local_offGRP" -p "IK_ankle_CTL";
	rename -uid "7B404C6D-4DE8-5058-B2BE-80AC124C88F8";
	setAttr ".v" no;
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" -1.3116254926615056e-07 10.64512893647731 -0.25199484747691869 ;
	setAttr ".r" -type "double3" -1.0136452660277877e-14 -4.4822924494631397e-14 -2.092528478743933e-14 ;
createNode transform -n "IK_lower_local" -p "IK_lower_local_offGRP";
	rename -uid "0FE5BFC0-4BA0-40B3-D9BC-EA9A458E7734";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 0 0 ;
createNode locator -n "IK_lower_localShape" -p "IK_lower_local";
	rename -uid "A4D794EE-4600-63D6-C34D-7AB021CAC370";
	setAttr -k off ".v";
createNode transform -n "IK_thigh_CTL_offGRP" -p "IK_leg_CTL_GRP";
	rename -uid "E81096DB-406B-83CE-37DF-03A4DC56EA3E";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".t" -type "double3" -5.7712838952284073e-08 -2.2990830572666709e-08 9.0124602181163027e-07 ;
	setAttr ".r" -type "double3" -9.6145742939888308 3.8705425531566048e-14 90.000000000000057 ;
	setAttr ".s" -type "double3" 1 1.0000000151032804 1.0000000151032804 ;
	setAttr ".offset" -type "matrix" -9.6863977148416995e-16 1 -6.7553711391130397e-16 3.0814879110195774e-33
		 -0.98595359919449821 -2.7755575615628901e-17 -0.16701955107703786 3.4694469519536126e-18
		 -0.16701955107703795 -3.4694469519536103e-18 0.98595359919449843 8.6736173798840287e-19
		 -5.7712838952284073e-08 -2.2990830572666709e-08 9.0124601825891659e-07 1;
createNode transform -n "hip_L_space_offGRP" -p "IK_thigh_CTL_offGRP";
	rename -uid "8982E97E-4EA1-17DB-D2EE-1C85C2F4DDFE";
	setAttr ".t" -type "double3" -2.0713150271342911 2.4073029500688321 -8.9822589544041875e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "hip_L_space_spcGRP" -p "hip_L_space_offGRP";
	rename -uid "508AC737-4DAC-E03D-E4A9-D3B299F71F1A";
createNode transform -n "IK_thigh_CTL_spcGRP" -p "hip_L_space_spcGRP";
	rename -uid "FA81751C-42F3-3103-A965-68B5E29983F8";
	setAttr ".t" -type "double3" 2.0713150271342911 -2.4073029500688321 8.9822589544041875e-07 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "IK_thigh_CTL" -p "IK_thigh_CTL_spcGRP";
	rename -uid "15A0BF49-42C4-948D-17F7-B097F260B558";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_thigh_CTLShape" -p "IK_thigh_CTL";
	rename -uid "9E9179C3-4BED-E1C7-9092-8882A693E4A8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		6.5999999999999996 0 3.4648243000000001
		6.5999999999999996 3.4648242999999979 0
		6.5999999999999996 0 -3.4648243000000001
		6.5999999999999996 0 -2.7718564999999988
		6.5999999999999996 2.4253774999999993 -0.3464824299999999
		6.5999999999999996 3.4648242999999979 0
		6.5999999999999996 2.4253774999999993 0.3464824299999999
		6.5999999999999996 0 2.7718564999999988
		6.5999999999999996 0 2.7718564999999988
		6.5999999999999996 0 3.4648243000000001
		;
createNode transform -n "leg_poleVec_GRP" -p "IK_leg_CTL_GRP";
	rename -uid "361D261D-4668-3382-1F06-57B2B4916A36";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "upper_poleVec_offGRP" -p "leg_poleVec_GRP";
	rename -uid "3F799459-4007-CCF3-0149-6DA4B4F969AF";
	setAttr -s 2 ".iog";
	setAttr ".s" -type "double3" 1.0000000151032804 1 1.0000000151032804 ;
createNode transform -n "upper_flex_poleVec_offGRP" -p "upper_poleVec_offGRP";
	rename -uid "FADA41E0-47D4-2E67-C984-00AADFE9DB13";
	setAttr ".t" -type "double3" -13.083147000085591 -2.2990832349023549e-08 -6.0477099840341459 ;
	setAttr ".r" -type "double3" -34.423409810593526 0 90 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "upper_flex_poleVec_spcGRP" -p "upper_flex_poleVec_offGRP";
	rename -uid "C92F33AF-494B-47C8-E6F9-C2A8129E7B57";
createNode transform -n "upper_poleVec_spcGRP" -p "upper_flex_poleVec_spcGRP";
	rename -uid "FDEDA7D9-4DBE-4A87-60BD-DBBCBAFF6275";
	setAttr ".t" -type "double3" 2.2990831460845129e-08 -14.210855390385252 -2.4073056620198479 ;
	setAttr ".r" -type "double3" 0 34.423409810593533 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "upper_poleVec_space" -p "upper_poleVec_spcGRP";
	rename -uid "822992BA-46EA-0C24-A98E-3E98070964D2";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 15 ;
createNode transform -n "upper_poleVec" -p "upper_poleVec_space";
	rename -uid "985F78D5-4774-4FA2-6C59-72B184DBBA07";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "upper_poleVecShape" -p "upper_poleVec";
	rename -uid "F56684BF-4B34-81EE-DCF9-F2985A5A43D5";
	setAttr -k off ".v";
createNode transform -n "lower_flex_poleVec_offGRP" -p "leg_poleVec_GRP";
	rename -uid "C81FD762-4054-1288-C9E5-38864BD5F113";
	setAttr ".v" no;
	setAttr -s 2 ".iog";
	setAttr ".s" -type "double3" 1 1.0000000151032806 1.0000000151032806 ;
createNode transform -n "lower_flex_poleVec_spcGRP" -p "lower_flex_poleVec_offGRP";
	rename -uid "B93FFCD2-49EC-124E-B3AE-56B1980E13CF";
createNode transform -n "lower_poleVec_spcGRP" -p "lower_flex_poleVec_spcGRP";
	rename -uid "52F8EF9C-4C41-3D69-14CD-6BAB840ECE5F";
	addAttr -ci true -sn "initTrans" -ln "initTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "initTransX" -ln "initTransX" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransY" -ln "initTransY" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransZ" -ln "initTransZ" -at "double" -p "initTrans";
	addAttr -ci true -sn "initRot" -ln "initRot" -at "double3" -nc 3;
	addAttr -ci true -sn "initRotX" -ln "initRotX" -at "double" -p "initRot";
	addAttr -ci true -sn "initRotY" -ln "initRotY" -at "double" -p "initRot";
	addAttr -ci true -sn "initRotZ" -ln "initRotZ" -at "double" -p "initRot";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 0 10.645127058029173 -0.25199317932128906 ;
	setAttr ".r" -type "double3" 0 -1.3560617486593369 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999967 ;
createNode transform -n "lower_poleVec_space" -p "lower_poleVec_spcGRP";
	rename -uid "C9DF95EC-47A6-E43D-146F-3C847B96C9C5";
	setAttr ".t" -type "double3" -8.8817841970012563e-16 -4.3321966757057152e-15 -10 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 1 ;
createNode transform -n "lower_poleVec" -p "lower_poleVec_space";
	rename -uid "336A9CCE-4ED8-0F3B-0157-65B8FAF27561";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 1.1126304536671584e-15 6.4392935428259079e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode locator -n "lower_poleVecShape" -p "lower_poleVec";
	rename -uid "FFB9012E-4CA7-31CA-3CF7-A2B87746A3F7";
	setAttr -k off ".v";
createNode transform -n "FK_leg_CTL_GRP" -p "leg_CTL_GRP";
	rename -uid "27547182-49B6-7DA4-0A4E-54B9714DF2A1";
	setAttr ".t" -type "double3" 2.0713151582968319 -2.4073033071275134 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 9.6145692709009243 -90.000000000000028 ;
createNode transform -n "FK_hip_offGRP" -p "FK_leg_CTL_GRP";
	rename -uid "DF2F4018-41A0-8C4D-B4AC-31BC40271C3F";
	setAttr ".t" -type "double3" -2.3734893594166664 -2.0713151582968332 -0.40206650350775419 ;
	setAttr ".r" -type "double3" -9.6145692709009243 0 90.000000000000028 ;
createNode transform -n "FK_hip_spcGRP" -p "FK_hip_offGRP";
	rename -uid "6E55755C-4400-7C3A-1F3A-5BB75E7A5B2F";
createNode transform -n "FK_thigh_CTL_offGRP" -p "FK_hip_spcGRP";
	rename -uid "985E4445-4D6B-6DC1-E5D5-BC9BB091AE4F";
createNode transform -n "FK_thigh_CTL_spcGRP" -p "FK_thigh_CTL_offGRP";
	rename -uid "B5C12511-4E40-1E83-47EB-149031129BDB";
createNode transform -n "FK_thigh_CTL" -p "FK_thigh_CTL_spcGRP";
	rename -uid "312F3EBE-4915-C5EB-E748-F2AA645B7826";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_thigh_CTLShape" -p "FK_thigh_CTL";
	rename -uid "7285F5A4-4330-6C73-C240-7C9363F7A1DB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.7836116248912236 4.4753908802885745 
		5.2590025051797964 -6.7857323231109011e-17 6.3291584798249509 4.5540650691180704e-16 
		0.7836116248912236 4.4753908802885736 -5.2590025051797964 1.1081941875543875 3.2810469323975997e-16 
		-7.4373526673793364 0.7836116248912236 -4.4753908802885745 -5.2590025051797964 1.1100856969603226e-16 
		-6.3291584798249518 -7.4500470332978742e-16 -0.7836116248912236 -4.4753908802885736 
		5.2590025051797964 -1.1081941875543875 -8.6310510720820413e-16 7.4373526673793364 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_knee_CTL_offGRP" -p "FK_thigh_CTL";
	rename -uid "4597DD17-4643-999F-7AC0-9994DD8B4C8E";
createNode transform -n "FK_knee_CTL_spcGRP" -p "FK_knee_CTL_offGRP";
	rename -uid "FD24587B-4892-BE9D-940E-13BBDF643EF7";
createNode transform -n "FK_knee_CTL" -p "FK_knee_CTL_spcGRP";
	rename -uid "53FEAA33-479E-EF7E-BCAF-64AE07B9612E";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "FK_knee_CTLShape" -p "FK_knee_CTL";
	rename -uid "A326D19D-477F-D478-1C7D-9FB539C6999D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122183 2.8976901287346348 
		3.6813017536258585 1.7084995161691405e-15 4.0979526796111498 -8.026300357419338e-15 
		0.78361162489122516 2.8976901287346339 -3.6813017536258585 1.1081941875543881 2.1243859055525751e-16 
		-5.2061468671655371 0.78361162489122516 -2.8976901287346348 -3.6813017536258585 1.8873654090962807e-15 
		-4.0979526796111507 -8.8665882045884472e-15 -0.78361162489122183 -2.8976901287346339 
		3.6813017536258585 -1.1081941875543859 -5.5883636002234418e-16 5.2061468671655362 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_ankle_CTL_offGRP" -p "FK_knee_CTL";
	rename -uid "380456CE-4C83-2006-339E-A381BCE846C9";
createNode transform -n "FK_ankle_CTL_spcGRP" -p "FK_ankle_CTL_offGRP";
	rename -uid "087C7F9D-44C1-0AB6-664E-88A39B7BDA0B";
createNode transform -n "FK_ankle_CTL" -p "FK_ankle_CTL_spcGRP";
	rename -uid "6FDBC50E-4C92-D924-CEB5-B8B2BA8363BD";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_ankle_CTLShape" -p "FK_ankle_CTL";
	rename -uid "5DD1F041-4FD4-E669-FC01-8DB492DFB78C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122427 1.8669256377193952 
		2.6505372626106194 -6.7857323231109097e-17 2.6402315568048005 2.295248794835509e-16 
		0.78361162489122427 1.8669256377193957 -2.6505372626106194 1.1081941875543877 1.3687007013471593e-16 
		-3.7484257443591873 0.78361162489122427 -1.8669256377193952 -2.6505372626106194 1.1100856969603226e-16 
		-2.6402315568048009 -3.7548237047821296e-16 -0.78361162489122427 -1.8669256377193957 
		2.6505372626106194 -1.1081941875543877 -3.6004744519424908e-16 3.7484257443591873 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_B_toe_CTL_offGRP" -p "FK_ankle_CTL";
	rename -uid "7D7F1EEF-44F9-CAA3-8A2C-93B5A7F2EE6B";
createNode transform -n "FK_B_toe_CTL_spcGRP" -p "FK_B_toe_CTL_offGRP";
	rename -uid "1FCE1B97-4C0E-6E7A-8BBF-49A4AB9F8716";
createNode transform -n "FK_B_toe_CTL" -p "FK_B_toe_CTL_spcGRP";
	rename -uid "32F816D1-4E52-B302-3A02-88B9B4C71474";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "FK_B_toe_CTLShape" -p "FK_B_toe_CTL";
	rename -uid "3D9D968C-4288-359F-86AA-50B198700131";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122405 1.8669256377193952 
		2.6505372626106194 3.7623188661895316e-16 2.6402315568048005 -1.2725904047228195e-15 
		0.78361162489122471 1.8669256377193957 -2.6505372626106194 1.1081941875543881 -1.979182078577896e-15 
		-3.7484257443591873 0.78361162489122471 -1.8669256377193948 -2.6505372626106194 5.5509777954609406e-16 
		-2.6402315568048009 -1.8775976546845811e-15 -0.78361162489122405 -1.8669256377193957 
		2.6505372626106194 -1.1081941875543873 -2.4760995939068662e-15 3.7484257443591873 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "leg_switch_CTL_offGRP" -p "leg_CTL_GRP";
	rename -uid "D5E03F70-4866-B6A1-290C-9596DFD36C7D";
createNode transform -n "leg_switch_CTL_spcGRP" -p "leg_switch_CTL_offGRP";
	rename -uid "D020A0F9-4D66-0EBF-19F4-87A7D79637A3";
createNode transform -n "leg_switch_CTL" -p "leg_switch_CTL_spcGRP";
	rename -uid "CC1828D6-49D6-C885-7A43-5B91F20EE8D3";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "leg_switch_CTLShape" -p "leg_switch_CTL";
	rename -uid "2B0B30FE-4E4A-D5AD-355A-C9A0089762D1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		0 -1.4901161415892261e-09 0
		6.6410247564315785 1.4901179179460655e-09 0
		6.2108428955078114 0.33222502470016657 0
		6.0857520580291737 0.68974572420120417 0
		6.2859173297882069 1.1457456350326556 0
		6.7959670305252065 1.3241260051727313 0
		7.3786776542663564 1.2321258783340472 0
		7.3786776542663564 0.92220836877823054 0
		6.8153388977050771 1.0707044601440447 0
		6.5247933149337758 0.97708451747894465 0
		6.4101818084716786 0.74141520261764704 0
		6.4941157579421986 0.52994400262832819 0
		6.8008263587951649 0.31043985486030756 0
		6.971933889389037 0.21358031034469782 0
		7.4045289039611806 -0.11894857138395132 0
		7.5271735668182362 -0.49504771828651251 0
		7.2979834556579579 -0.99541139602660955 0
		6.6894544839858998 -1.1842378377914411 0
		6.0728264331817616 -1.0793453454971296 0
		6.0728264331817616 -0.74360972642898382 0
		6.7378843307495107 -0.93084943294524969 0
		7.0582809925079335 -0.82513040304183782 0
		7.1801321983337392 -0.54992383718490423 0
		7.1002314567565907 -0.31101468205451788 0
		6.805652904510497 -0.091477505862711084 0
		6.6410247564315785 1.4901179179460655e-09 0
		;
createNode pointConstraint -n "leg_switch_CTL_offGRP_pointConstraint1" -p "leg_switch_CTL_offGRP";
	rename -uid "D9F36BA9-4C6B-C4B6-3947-23AD3D92BCA2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "B_toe_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.042810365310288e-14 2.1316282072803006e-14 0 ;
	setAttr ".rst" -type "double3" 5.6516844153727464 2.5131329958365569 -27.933609079681816 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "leg_switch_CTL_offGRP_orientConstraint1" -p "leg_switch_CTL_offGRP";
	rename -uid "B32080FF-4111-0145-BDDE-BA9AE7B1F770";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_GRPW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "output_GRP" -p "leg_GRP";
	rename -uid "088EF43D-4A38-E103-0193-41AEAE9E32F8";
createNode joint -n "hip_JNT" -p "output_GRP";
	rename -uid "BC3EEBD5-4B7E-BF70-67A3-5C81BB943D70";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.57279155036866225;
createNode joint -n "thigh_JNT" -p "hip_JNT";
	rename -uid "1958C1BA-4CAB-19AB-4BEB-56861E55F571";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1937919038631488;
createNode joint -n "knee_JNT" -p "thigh_JNT";
	rename -uid "CB4FBF5A-4FA7-EF9B-8158-E5B805E4CA13";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.1445917352907937;
createNode joint -n "ankle_JNT" -p "knee_JNT";
	rename -uid "557433FD-4437-5006-D2EB-729296D3D6D8";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.99904020379521696;
createNode joint -n "B_toe_JNT" -p "ankle_JNT";
	rename -uid "0952E04A-4155-9B14-25A2-DD81187EEEA3";
	setAttr -s 2 ".iog";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5013341295983873;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4D6FCD3E-4841-60B8-A7D8-4D89CFA0C82B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "7F94F3D8-4067-568A-04CF-C899A288FE65";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/parts/PartsSet/parts_quadruped_leg.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EB351D77-40EA-EF2A-7C80-218D025A6322";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "205BD71C-4C40-1F52-66F5-FDAC7618F556";
createNode displayLayerManager -n "layerManager";
	rename -uid "EC905223-447B-9418-3911-EC8EA374AD0F";
createNode displayLayer -n "defaultLayer";
	rename -uid "E6D0DF7E-43C3-AEBE-1643-42B19E5F24C3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C42074DA-4D5D-CEC1-8943-A885FC5729E2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FECAF8CB-4A7E-9BAF-77FA-F89421DF8BA6";
	setAttr ".g" yes;
createNode decomposeMatrix -n "input_thigh2IK_thigh_JNT_DCMX";
	rename -uid "AE80A96B-4AD1-72C4-4E92-B5BB11FA5368";
createNode multMatrix -n "input_thigh2IK_thigh_JNT_MTMX";
	rename -uid "20A16591-4710-FB3B-7911-5CACA316A931";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_thigh_CTL_local2IK_JNT_DCMX";
	rename -uid "DFC5680F-41B9-36D0-4F3D-9CBE70A038D8";
createNode multMatrix -n "IK_thigh_CTL_local2IK_JNT_MTMX";
	rename -uid "B508B224-4EC2-44EE-906E-6D8D90E1D3C9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_thigh_space_DCMX";
	rename -uid "54AC36AE-4F14-BAB0-AB1C-C5ACEF7DC877";
createNode multMatrix -n "IK_thigh_space_MTMX";
	rename -uid "09838CF1-4093-1083-8E1D-609FA24E6E3D";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "upperLeg_stretch_output_mul_ctrlVal";
	rename -uid "CCA67E80-4694-3763-AE81-D7978B99A2D6";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "52C979A4-467F-BF9F-B1E9-6F986D3ECB04";
createNode decomposeMatrix -n "input_knee2IK_knee_space_DCMX";
	rename -uid "6E0C6AD4-41AC-C0B1-4C5A-36B7C380B659";
createNode multMatrix -n "input_knee2IK_knee_space_MTMX";
	rename -uid "B76C6E33-4E63-16C2-FA37-B3B204F5B6A8";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "lowerLeg_stretch_output_mul_ctrlVal";
	rename -uid "C6CB919E-4547-ABBB-6582-10A173082926";
createNode plusMinusAverage -n "softupperLegLen";
	rename -uid "82D80C7D-4189-31AE-EE8E-F7BD83B66B35";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uplegLen";
	rename -uid "856AC7DF-4DC5-71C8-7468-03943D9D6797";
createNode multMatrix -n "input_thigh_local_MTMX";
	rename -uid "9E777118-4193-BCCE-B9F2-2786D1C08D7C";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_knee_local_MTMX";
	rename -uid "C2528085-4774-79EC-5FB6-DE96E1AEF0B9";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midlegLen";
	rename -uid "9161E4D7-471D-57AE-A7EE-F68EF0B75414";
createNode multMatrix -n "input_ankle_local_MTMX";
	rename -uid "5B215965-41A6-19D0-01C7-E88A69D322C8";
	setAttr -s 2 ".i";
createNode distanceBetween -n "leg_ctrlLen";
	rename -uid "439AC6E0-4194-82D6-3610-D59B93FFDD72";
createNode multMatrix -n "ik_leg_ctrl_local_MTMX";
	rename -uid "496A6FAA-4541-8C7B-8DE8-8AAD054892CA";
createNode multMatrix -n "ik_leg_space_local_MTMX";
	rename -uid "D713DD04-4F37-C68C-72DB-C381BD62442F";
createNode multiplyDivide -n "leg_IK_negate_val";
	rename -uid "8EE9E2AE-4FE4-E1BD-486F-04B890D40D72";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode plusMinusAverage -n "softlowerLegLen";
	rename -uid "F0103B5B-4412-A586-4BD8-F1945ABDA754";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode distanceBetween -n "loLegLen";
	rename -uid "24105BF6-48EE-DDCE-1AC0-6A86D27C51FE";
createNode multMatrix -n "input_B_toe_local_MTMX";
	rename -uid "75FBDEC2-4368-5EAB-9416-B099DC38F095";
	setAttr -s 2 ".i";
createNode distanceBetween -n "B_toe_ctrlLen";
	rename -uid "77187195-41A0-6BC5-B55B-BA85988F6498";
createNode multMatrix -n "ik_knee_space_local_MTMX";
	rename -uid "18A53BCA-4433-2BF1-8BC9-9387D0859AA7";
createNode multMatrix -n "ik_B_toe_ctrl_local_MTMX";
	rename -uid "B52D8A24-4B67-9ECC-302A-2DACAE69B59B";
createNode condition -n "upperLeg_ctrllen_COND";
	rename -uid "19FA5604-4D2C-5D5C-7A74-A395E05A3806";
	setAttr ".op" 2;
createNode condition -n "upperLeg_softikV_COND";
	rename -uid "9FC510F1-4A04-0F24-F263-E592BE2B4A68";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_result_softik_len";
	rename -uid "8221F290-4051-0C80-40B5-889652D94083";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "upperLeg_mult_softikV";
	rename -uid "F2B20271-4296-A67F-4022-979B3030787E";
createNode multiplyDivide -n "upperLeg_power_val";
	rename -uid "C04612B8-4E57-9397-1C85-DC8102F9994D";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "upperLeg_negate_val";
	rename -uid "4054EDDD-4799-2467-3A55-D39C4B70A26D";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "upperLeg_divide_softikV";
	rename -uid "58419B9A-480E-F5B1-D7E5-2493E0EFFDE8";
	setAttr ".op" 2;
createNode plusMinusAverage -n "upperLeg_ctrlLen_minue_dif";
	rename -uid "AF402C18-4AF1-126F-63DF-AE94254F9B98";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "upperLeglen_minus_softikV";
	rename -uid "9783461A-406A-33E1-015E-8D91AF696EBD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "leg_for_zerodivide_COND";
	rename -uid "110917EA-46D1-1D8C-FE92-6FA9A522D1A9";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "lowerLeg_ctrllen_COND";
	rename -uid "4F69CF2E-498F-9990-2DDD-D9AE4F87E238";
	setAttr ".op" 2;
createNode condition -n "lowerLeg_softikV_COND";
	rename -uid "9E8DEDD0-4F40-7D63-B2D1-C6821502B8F1";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_result_softik_len";
	rename -uid "1B8F4E10-4418-5F7E-F5A6-A3ADAEB20CBB";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_mult_softikV";
	rename -uid "36CF082A-460A-0A77-6F89-3FBDE25918FC";
createNode multiplyDivide -n "lowerLeg_power_val";
	rename -uid "E68F0FD5-4F6D-A12A-391A-78A42558F46D";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "lowerLeg_negate_val";
	rename -uid "D9F1AF98-49FA-B111-1F9B-20B8D4ACBE7A";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lowerLeg_divide_softikV";
	rename -uid "E579A0A6-42E0-9A2E-5E40-BCAEB062B5BE";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_ctrlLen_minue_dif";
	rename -uid "337FE75B-4005-DCF8-E43E-7FB65AC3C27B";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "lowerLeglen_minus_softikV";
	rename -uid "E9C5DB92-44CD-7514-2EF2-AAA61F4A8EA2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loleg_plus_stretch";
	rename -uid "F25D501B-4BBD-DBCD-4083-CB92B44C96BD";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loleg";
	rename -uid "9DA41CF9-4162-E2FD-B4BE-EC9DC3049F06";
createNode multiplyDivide -n "stretched_lolegLen";
	rename -uid "68639684-4CED-6959-3AB5-79A89A9F4DD7";
createNode plusMinusAverage -n "upperLeg_stretchedLen";
	rename -uid "484F06CC-47BF-6F84-5922-7589E211EFF3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loleg_ratio";
	rename -uid "A8070252-4367-582B-3A94-0AA39E68AAE3";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_legLen";
	rename -uid "30112F65-4D3D-582B-51D7-E1862961C57D";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upleg_plus_stretch";
	rename -uid "2A4E0C34-482D-DA54-54D9-44B151AFA1A7";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upleg";
	rename -uid "6768B225-422F-330C-0B64-2091271CE63E";
createNode multiplyDivide -n "stretched_uplegLen";
	rename -uid "E7F43323-44E8-AD4B-0A32-BDAF33A53EED";
createNode multiplyDivide -n "upleg_ratio";
	rename -uid "AAC877C2-4939-5B0C-FC9A-D3BD573706B8";
	setAttr ".op" 2;
createNode plusMinusAverage -n "lowerLeg_plus_stretch";
	rename -uid "310B0AF3-469A-D751-9ED7-829FCDBA68AB";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_lowerLeg";
	rename -uid "B58E6421-41D4-C0BD-2265-959536C7A0FF";
createNode multiplyDivide -n "stretched_lowerLegLen";
	rename -uid "B661A04F-4C82-FDCD-1CF2-A896F16A884D";
createNode plusMinusAverage -n "lowerLeg_stretchedLen";
	rename -uid "67E706D6-4F7A-AF0D-05B0-84A3765C6B5A";
	setAttr ".op" 2;
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "lowerLeg_ratio";
	rename -uid "1C3F53D2-47F9-29B7-EF89-348027B79248";
	setAttr ".op" 2;
createNode decomposeMatrix -n "input_B_toe2IK_B_toe_CTL_DCMX";
	rename -uid "4F05BDB5-408E-CABD-1036-5F9CEB58B716";
createNode multMatrix -n "input_B_toe2IK_B_toe_CTL_MTMX";
	rename -uid "DC917A38-4612-1059-3320-4A922866A2F3";
	setAttr -s 2 ".i";
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "51DA5479-4CBB-596B-56EE-7EA326495A91";
createNode decomposeMatrix -n "upper_poleVec_offGRP_DCMX";
	rename -uid "970D47D3-4A58-E43D-2A54-1EA7715B3BAF";
createNode multMatrix -n "upper_poleVec_offGRP_MTMX";
	rename -uid "E0BDE43B-47A4-FAB3-6A60-7AAF4FF6620C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankle_poleVec_offGRP_DCMX";
	rename -uid "D981B53C-4A24-2F85-A722-2386FCC929C8";
createNode multMatrix -n "ankle_poleVec_offGRP_MTMX";
	rename -uid "D7A899CD-4832-C387-F243-BEBFA4C54C34";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_ankle2lower_poleVec_DCMX";
	rename -uid "E7A09B24-4E34-6A23-235B-D19DEE6DB2AF";
createNode multMatrix -n "input_ankle2lower_poleVec_MTMX";
	rename -uid "8D6D2D98-43E1-5D41-EA79-0284D8E5C5F2";
	setAttr -s 2 ".i";
createNode reverse -n "FK_IK_RVS";
	rename -uid "89383429-4538-478E-D677-8F88868EB987";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "07F41915-48E2-53FB-789C-459992D2E704";
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "8E98F865-4142-ACE5-B855-D79B5B07BBE3";
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "407C6CBE-4F22-DB4F-9647-BA9C7758CF87";
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "B224AE31-4820-BC89-2F52-A49B8FAB8639";
createNode blendColors -n "hip_BLCL";
	rename -uid "2F5680DF-4DB2-FAEF-6969-0685092A2929";
createNode pairBlend -n "hip_PRBL";
	rename -uid "C8D2D43E-4C8B-4785-9296-A4A76924F40F";
createNode blendColors -n "thigh_BLCL";
	rename -uid "EB8E82A0-4A7E-E1FA-3E10-83A83B886F63";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode pairBlend -n "thigh_PRBL";
	rename -uid "0E72895F-4A2B-7A01-1882-71984256CCA7";
createNode blendColors -n "knee_BLCL";
	rename -uid "1C876B53-4822-A525-1580-1F896E3F632E";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode pairBlend -n "knee_PRBL";
	rename -uid "C68EDE97-4EE8-3F98-1AB2-2FBE2D37B18A";
createNode blendColors -n "ankle_BLCL";
	rename -uid "612E17EE-4A34-5F62-ABE2-40BBBFD8D9A6";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode pairBlend -n "ankle_PRBL";
	rename -uid "E108576A-4577-F771-9BFD-AEB4C84F4468";
createNode pairBlend -n "B_toe_PRBL";
	rename -uid "C9EC4901-4ED3-9336-5240-1BB91A16A16C";
createNode blendColors -n "B_toe_BLCL";
	rename -uid "AE1DA086-443C-CCDB-4D16-07A151C33CC7";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D011AC0F-4671-A263-EBFE-E9805FE6C594";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1043\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1043\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1043\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CB5FE9F7-4CD0-731B-7994-76893AA97AF5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multMatrix -n "input_ankle2IK_ankle_offGRP_MTMX";
	rename -uid "8F993DBD-4271-AB20-3515-F386F50922EB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_ankle2IK_ankle_offGRP_DCMX";
	rename -uid "2345EEBD-402E-5129-A9C8-85ABD8373CDF";
createNode unitConversion -n "unitConversion2";
	rename -uid "B8AEA8DA-482C-7D27-AC29-E7BCE88180E9";
	setAttr ".cf" 57.295779513082323;
createNode objectSet -n "leg_SET";
	rename -uid "735BDEFC-43E0-1992-AB3F-2F94A4FAF6DF";
	setAttr ".ihi" 0;
	setAttr -s 112 ".dsm";
	setAttr -s 86 ".dnsm";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "FD62A06C-4187-B9FE-D1E4-C1896FE6EBA0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1133.3332882987147 -553.57140657447724 ;
	setAttr ".tgi[0].vh" -type "double2" 1133.3332882987147 553.57140657447724 ;
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
	setAttr -s 65 ".u";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "IK_B_toe_CTL_offGRP.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "lower_poleVec_spcGRP.rebuildMode" "leg_GRP.rebuildMode" -na;
connectAttr "input_hip.init" "leg_GRP.init" -na;
connectAttr "input_thigh.init" "leg_GRP.init" -na;
connectAttr "input_knee.init" "leg_GRP.init" -na;
connectAttr "input_ankle.init" "leg_GRP.init" -na;
connectAttr "input_B_toe.init" "leg_GRP.init" -na;
connectAttr "input_hip.t" "motion_IK_GRP.t";
connectAttr "input_hip.r" "motion_IK_GRP.r";
connectAttr "input_hip.s" "motion_IK_GRP.s";
connectAttr "hip_L_CTL.t" "IK_hip_JNT.t";
connectAttr "hip_L_CTL.r" "IK_hip_JNT.r";
connectAttr "IK_hip_JNT.s" "IK_thigh_JNT.is";
connectAttr "IK_thigh_CTL_local2IK_JNT_DCMX.ot" "IK_thigh_JNT.t";
connectAttr "input_thigh.r" "IK_thigh_JNT.jo";
connectAttr "input_thigh2IK_thigh_JNT_DCMX.ot" "IK_thigh_JNT.initTrans";
connectAttr "IK_thigh_JNT.s" "IK_knee_JNT.is";
connectAttr "leg_stretchIK_output.upleg_stretched" "IK_knee_JNT.tx";
connectAttr "input_knee.r" "IK_knee_JNT.jo";
connectAttr "IK_knee_JNT.s" "IK_ankle_JNT.is";
connectAttr "leg_stretchIK_output.midLeg_stretched" "IK_ankle_JNT.tx";
connectAttr "input_ankle.r" "IK_ankle_JNT.jo";
connectAttr "IK_ankle_JNT.s" "IK_B_toe0_JNT.is";
connectAttr "leg_stretchIK_output.loLeg_Stretched" "IK_B_toe0_JNT.tx";
connectAttr "input_B_toe.r" "IK_B_toe0_JNT.jo";
connectAttr "IK_B_toe0_JNT.tx" "effector2.tx";
connectAttr "IK_B_toe0_JNT.ty" "effector2.ty";
connectAttr "IK_B_toe0_JNT.tz" "effector2.tz";
connectAttr "IK_ankle_JNT.tx" "effector1.tx";
connectAttr "IK_ankle_JNT.ty" "effector1.ty";
connectAttr "IK_ankle_JNT.tz" "effector1.tz";
connectAttr "IK_thigh_space_DCMX.ot" "IK_thigh_space.t";
connectAttr "IK_thigh_space_DCMX.or" "IK_thigh_space.r";
connectAttr "IK_thigh_space_DCMX.os" "IK_thigh_space.s";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.crx" "IK_upperLeg_CTLaim.rx";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.cry" "IK_upperLeg_CTLaim.ry";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.crz" "IK_upperLeg_CTLaim.rz";
connectAttr "leg_softIK_output.output_upper_softik" "upperLeg_softIK_output_LOC.tx"
		;
connectAttr "upperLeg_stretch_output_mul_ctrlVal.ox" "upperLeg_stretch_output_LOC.tx"
		;
connectAttr "IK_B_toe_flex_CTL.r" "IK_B_toe_flex_local_spcGRP.r";
connectAttr "IK_thigh_JNT.msg" "upperLeg_ikHandle.hsj";
connectAttr "effector1.hp" "upperLeg_ikHandle.hee";
connectAttr "ikRPsolver.msg" "upperLeg_ikHandle.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "upperLeg_ikHandle.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "upperLeg_ikHandle.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "upperLeg_ikHandle.pvz";
connectAttr "upperLeg_ikHandle.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "IK_thigh_JNT.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "IK_thigh_JNT.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "upper_poleVec.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "upper_poleVec.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "upper_poleVec.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "upper_poleVec.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_upperLeg_CTLaim.pim" "IK_upperLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upperLeg_CTLaim.t" "IK_upperLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_upperLeg_CTLaim.rp" "IK_upperLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_upperLeg_CTLaim.rpt" "IK_upperLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_upperLeg_CTLaim.ro" "IK_upperLeg_CTLaim_aimConstraint1.cro";
connectAttr "IK_lower_local.t" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "IK_lower_local.rp" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "IK_lower_local.rpt" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "IK_lower_local.pm" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.w0" "IK_upperLeg_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_thigh_space_upVec.wm" "IK_upperLeg_CTLaim_aimConstraint1.wum";
connectAttr "input_knee2IK_knee_space_DCMX.ot" "IK_knee_space.t";
connectAttr "input_knee2IK_knee_space_DCMX.or" "IK_knee_space.r";
connectAttr "input_knee2IK_knee_space_DCMX.os" "IK_knee_space.s";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crx" "IK_lowerLeg_CTLaim.rx";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.cry" "IK_lowerLeg_CTLaim.ry";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.crz" "IK_lowerLeg_CTLaim.rz";
connectAttr "leg_softIK_output.output_lower_softik" "lowerLeg_softIK_output_LOC.tx"
		;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.ox" "lowerLeg_stretch_output_LOC.tx"
		;
connectAttr "IK_ankle_flex_CTL.r" "IK_ankle_flex_local_spcGRP.r";
connectAttr "IK_knee_JNT.msg" "lowerLeg_ikHandle.hsj";
connectAttr "effector2.hp" "lowerLeg_ikHandle.hee";
connectAttr "ikRPsolver.msg" "lowerLeg_ikHandle.hsv";
connectAttr "ikHandle2_poleVectorConstraint1.ctx" "lowerLeg_ikHandle.pvx";
connectAttr "ikHandle2_poleVectorConstraint1.cty" "lowerLeg_ikHandle.pvy";
connectAttr "ikHandle2_poleVectorConstraint1.ctz" "lowerLeg_ikHandle.pvz";
connectAttr "lowerLeg_ikHandle.pim" "ikHandle2_poleVectorConstraint1.cpim";
connectAttr "IK_knee_JNT.pm" "ikHandle2_poleVectorConstraint1.ps";
connectAttr "IK_knee_JNT.t" "ikHandle2_poleVectorConstraint1.crp";
connectAttr "lower_poleVec.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "lower_poleVec.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp";
connectAttr "lower_poleVec.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt";
connectAttr "lower_poleVec.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_lowerLeg_CTLaim.pim" "IK_lowerLeg_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lowerLeg_CTLaim.t" "IK_lowerLeg_CTLaim_aimConstraint1.ct";
connectAttr "IK_lowerLeg_CTLaim.rp" "IK_lowerLeg_CTLaim_aimConstraint1.crp";
connectAttr "IK_lowerLeg_CTLaim.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.crt";
connectAttr "IK_lowerLeg_CTLaim.ro" "IK_lowerLeg_CTLaim_aimConstraint1.cro";
connectAttr "IK_B_toe_CTL.t" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "IK_B_toe_CTL.rp" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "IK_B_toe_CTL.rpt" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "IK_B_toe_CTL.pm" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.w0" "IK_lowerLeg_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_knee_space_upVec.wm" "IK_lowerLeg_CTLaim_aimConstraint1.wum";
connectAttr "softupperLegLen.o1" "leg_softIK_input.upper_legLen";
connectAttr "leg_ctrlLen.d" "leg_softIK_input.upper_ctrlLen";
connectAttr "leg_IK_negate_val.ox" "leg_softIK_input.softik_ctrl_value";
connectAttr "softlowerLegLen.o1" "leg_softIK_input.lower_legLen";
connectAttr "B_toe_ctrlLen.d" "leg_softIK_input.lower_ctrlLen";
connectAttr "upperLeg_ctrllen_COND.ocr" "leg_softIK_output.output_upper_softik";
connectAttr "lowerLeg_ctrllen_COND.ocr" "leg_softIK_output.output_lower_softik";
connectAttr "leg_softIK_output.output_upper_softik" "leg_stretchIK_input.upperSoftik_len"
		;
connectAttr "leg_IK_negate_val.ox" "leg_stretchIK_input.stretch_ctrl_value";
connectAttr "uplegLen.d" "leg_stretchIK_input.upLeg_len";
connectAttr "leg_ctrlLen.d" "leg_stretchIK_input.upperCtrl_len";
connectAttr "midlegLen.d" "leg_stretchIK_input.midLeg_len";
connectAttr "loLegLen.d" "leg_stretchIK_input.loLegLen";
connectAttr "leg_softIK_output.output_lower_softik" "leg_stretchIK_input.lowerSoftik_len"
		;
connectAttr "B_toe_ctrlLen.d" "leg_stretchIK_input.lowerCtrl_len";
connectAttr "loleg_plus_stretch.o1" "leg_stretchIK_output.midLeg_stretched";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "leg_stretchIK_output.stretch_ctrl_value"
		;
connectAttr "upperLeg_stretchedLen.o1" "leg_stretchIK_output.upperStretched_len"
		;
connectAttr "upleg_plus_stretch.o1" "leg_stretchIK_output.upleg_stretched";
connectAttr "lowerLeg_plus_stretch.o1" "leg_stretchIK_output.loLeg_Stretched";
connectAttr "lowerLeg_stretchedLen.o1" "leg_stretchIK_output.lowerStretched_len"
		;
connectAttr "input_hip.t" "motion_FK_GRP.t";
connectAttr "input_hip.r" "motion_FK_GRP.r";
connectAttr "input_hip.s" "motion_FK_GRP.s";
connectAttr "hip_L_CTL.s" "FK_hip_JNT.s";
connectAttr "hip_L_CTL.t" "FK_hip_JNT.t";
connectAttr "hip_L_CTL.r" "FK_hip_JNT.r";
connectAttr "FK_hip_JNT.s" "FK_thigh_JNT.is";
connectAttr "FK_thigh_CTL.s" "FK_thigh_JNT.s";
connectAttr "input_thigh.t" "FK_thigh_JNT.t";
connectAttr "FK_thigh_CTL.r" "FK_thigh_JNT.r";
connectAttr "input_thigh.r" "FK_thigh_JNT.jo";
connectAttr "FK_thigh_JNT.s" "FK_knee_JNT.is";
connectAttr "FK_knee_CTL.s" "FK_knee_JNT.s";
connectAttr "input_knee.t" "FK_knee_JNT.t";
connectAttr "FK_knee_CTL.r" "FK_knee_JNT.r";
connectAttr "input_knee.r" "FK_knee_JNT.jo";
connectAttr "FK_knee_JNT.s" "FK_ankle_JNT.is";
connectAttr "FK_ankle_CTL.s" "FK_ankle_JNT.s";
connectAttr "input_ankle.t" "FK_ankle_JNT.t";
connectAttr "FK_ankle_CTL.r" "FK_ankle_JNT.r";
connectAttr "input_ankle.r" "FK_ankle_JNT.jo";
connectAttr "FK_ankle_JNT.s" "FK_B_toe0_JNT.is";
connectAttr "input_B_toe.t" "FK_B_toe0_JNT.t";
connectAttr "FK_B_toe_CTL.r" "FK_B_toe0_JNT.r";
connectAttr "FK_B_toe_CTL.s" "FK_B_toe0_JNT.s";
connectAttr "input_B_toe.r" "FK_B_toe0_JNT.jo";
connectAttr "input_hip.t" "leg_CTL_GRP.t";
connectAttr "input_hip.r" "leg_CTL_GRP.r";
connectAttr "input_hip.s" "leg_CTL_GRP.s";
connectAttr "leg_switch_CTL.FK_IK" "IK_leg_CTL_GRP.v";
connectAttr "input_thigh.t" "IK_leg_CTL_GRP.t";
connectAttr "input_ankle2IK_ankle_offGRP_DCMX.ot" "IK_ankle_offGRP.t";
connectAttr "input_B_toe2IK_B_toe_CTL_DCMX.ot" "IK_B_toe_CTL_offGRP.initTrans";
connectAttr "makeNurbCircle5.oc" "IK_B_toe_CTLShape.cr";
connectAttr "hip_L_CTL.t" "hip_L_space_spcGRP.t";
connectAttr "hip_L_CTL.r" "hip_L_space_spcGRP.r";
connectAttr "hip_L_CTL.s" "hip_L_space_spcGRP.s";
connectAttr "upper_poleVec_offGRP_DCMX.ot" "upper_poleVec_offGRP.t";
connectAttr "upper_poleVec_offGRP_DCMX.or" "upper_poleVec_offGRP.r";
connectAttr "IK_thigh_CTL.t" "upper_flex_poleVec_spcGRP.t";
connectAttr "IK_thigh_CTL.r" "upper_flex_poleVec_spcGRP.r";
connectAttr "ankle_poleVec_offGRP_DCMX.ot" "lower_flex_poleVec_offGRP.t";
connectAttr "ankle_poleVec_offGRP_DCMX.or" "lower_flex_poleVec_offGRP.r";
connectAttr "IK_B_toe_CTL.r" "lower_flex_poleVec_spcGRP.r";
connectAttr "IK_B_toe_CTL.t" "lower_flex_poleVec_spcGRP.t";
connectAttr "input_ankle2lower_poleVec_DCMX.ot" "lower_poleVec_spcGRP.initTrans"
		;
connectAttr "unitConversion2.o" "lower_poleVec_spcGRP.initRot";
connectAttr "FK_IK_RVS.ox" "FK_leg_CTL_GRP.v";
connectAttr "hip_L_CTL.t" "FK_hip_spcGRP.t";
connectAttr "hip_L_CTL.r" "FK_hip_spcGRP.r";
connectAttr "hip_L_CTL.s" "FK_hip_spcGRP.s";
connectAttr "input_thigh.t" "FK_thigh_CTL_offGRP.t";
connectAttr "input_thigh.r" "FK_thigh_CTL_offGRP.r";
connectAttr "input_thigh.s" "FK_thigh_CTL_offGRP.s";
connectAttr "makeNurbCircle14.oc" "FK_thigh_CTLShape.cr";
connectAttr "input_knee.t" "FK_knee_CTL_offGRP.t";
connectAttr "input_knee.r" "FK_knee_CTL_offGRP.r";
connectAttr "input_knee.s" "FK_knee_CTL_offGRP.s";
connectAttr "makeNurbCircle15.oc" "FK_knee_CTLShape.cr";
connectAttr "input_ankle.t" "FK_ankle_CTL_offGRP.t";
connectAttr "input_ankle.r" "FK_ankle_CTL_offGRP.r";
connectAttr "input_ankle.s" "FK_ankle_CTL_offGRP.s";
connectAttr "makeNurbCircle16.oc" "FK_ankle_CTLShape.cr";
connectAttr "input_B_toe.t" "FK_B_toe_CTL_offGRP.t";
connectAttr "input_B_toe.r" "FK_B_toe_CTL_offGRP.r";
connectAttr "input_B_toe.s" "FK_B_toe_CTL_offGRP.s";
connectAttr "makeNurbCircle17.oc" "FK_B_toe_CTLShape.cr";
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.ctx" "leg_switch_CTL_offGRP.tx"
		;
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.cty" "leg_switch_CTL_offGRP.ty"
		;
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.ctz" "leg_switch_CTL_offGRP.tz"
		;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.crx" "leg_switch_CTL_offGRP.rx"
		;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.cry" "leg_switch_CTL_offGRP.ry"
		;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.crz" "leg_switch_CTL_offGRP.rz"
		;
connectAttr "leg_switch_CTL_offGRP.pim" "leg_switch_CTL_offGRP_pointConstraint1.cpim"
		;
connectAttr "leg_switch_CTL_offGRP.rp" "leg_switch_CTL_offGRP_pointConstraint1.crp"
		;
connectAttr "leg_switch_CTL_offGRP.rpt" "leg_switch_CTL_offGRP_pointConstraint1.crt"
		;
connectAttr "B_toe_JNT.t" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].tt";
connectAttr "B_toe_JNT.rp" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].trp";
connectAttr "B_toe_JNT.rpt" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].trt";
connectAttr "B_toe_JNT.pm" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].tpm";
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.w0" "leg_switch_CTL_offGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_switch_CTL_offGRP.ro" "leg_switch_CTL_offGRP_orientConstraint1.cro"
		;
connectAttr "leg_switch_CTL_offGRP.pim" "leg_switch_CTL_offGRP_orientConstraint1.cpim"
		;
connectAttr "leg_GRP.r" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tr";
connectAttr "leg_GRP.ro" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tro";
connectAttr "leg_GRP.pm" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tpm";
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.w0" "leg_switch_CTL_offGRP_orientConstraint1.tg[0].tw"
		;
connectAttr "input_hip.t" "output_GRP.t";
connectAttr "input_hip.r" "output_GRP.r";
connectAttr "input_hip.s" "output_GRP.s";
connectAttr "hip_BLCL.op" "hip_JNT.s";
connectAttr "hip_PRBL.ot" "hip_JNT.t";
connectAttr "hip_PRBL.or" "hip_JNT.r";
connectAttr "input_hip.r" "hip_JNT.jo";
connectAttr "hip_JNT.s" "thigh_JNT.is";
connectAttr "thigh_BLCL.op" "thigh_JNT.s";
connectAttr "thigh_PRBL.ot" "thigh_JNT.t";
connectAttr "thigh_PRBL.or" "thigh_JNT.r";
connectAttr "input_thigh.r" "thigh_JNT.jo";
connectAttr "thigh_JNT.s" "knee_JNT.is";
connectAttr "knee_BLCL.op" "knee_JNT.s";
connectAttr "knee_PRBL.ot" "knee_JNT.t";
connectAttr "knee_PRBL.or" "knee_JNT.r";
connectAttr "input_knee.r" "knee_JNT.jo";
connectAttr "knee_JNT.s" "ankle_JNT.is";
connectAttr "ankle_BLCL.op" "ankle_JNT.s";
connectAttr "ankle_PRBL.ot" "ankle_JNT.t";
connectAttr "ankle_PRBL.or" "ankle_JNT.r";
connectAttr "input_ankle.r" "ankle_JNT.jo";
connectAttr "B_toe_PRBL.ot" "B_toe_JNT.t";
connectAttr "ankle_JNT.s" "B_toe_JNT.is";
connectAttr "B_toe_PRBL.or" "B_toe_JNT.r";
connectAttr "B_toe_BLCL.op" "B_toe_JNT.s";
connectAttr "input_B_toe.r" "B_toe_JNT.jo";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "input_thigh2IK_thigh_JNT_MTMX.o" "input_thigh2IK_thigh_JNT_DCMX.imat"
		;
connectAttr "input_thigh.wm" "input_thigh2IK_thigh_JNT_MTMX.i[0]";
connectAttr "IK_hip_JNT.wim" "input_thigh2IK_thigh_JNT_MTMX.i[1]";
connectAttr "IK_thigh_CTL_local2IK_JNT_MTMX.o" "IK_thigh_CTL_local2IK_JNT_DCMX.imat"
		;
connectAttr "IK_thigh_CTL.wm" "IK_thigh_CTL_local2IK_JNT_MTMX.i[1]";
connectAttr "IK_hip_JNT.wim" "IK_thigh_CTL_local2IK_JNT_MTMX.i[2]";
connectAttr "IK_thigh_space_MTMX.o" "IK_thigh_space_DCMX.imat";
connectAttr "input_thigh.wm" "IK_thigh_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_thigh_space_MTMX.i[1]";
connectAttr "leg_stretchIK_output.upperStretched_len" "upperLeg_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "leg_stretchIK_output.stretch_ctrl_value" "upperLeg_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "input_knee2IK_knee_space_MTMX.o" "input_knee2IK_knee_space_DCMX.imat"
		;
connectAttr "input_knee.wm" "input_knee2IK_knee_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "input_knee2IK_knee_space_MTMX.i[1]";
connectAttr "leg_stretchIK_output.stretch_ctrl_value" "lowerLeg_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "leg_stretchIK_output.lowerStretched_len" "lowerLeg_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "uplegLen.d" "softupperLegLen.i1[0]";
connectAttr "midlegLen.d" "softupperLegLen.i1[1]";
connectAttr "input_thigh_local_MTMX.o" "uplegLen.im1";
connectAttr "input_knee_local_MTMX.o" "uplegLen.im2";
connectAttr "input_thigh.wm" "input_thigh_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_thigh_local_MTMX.i[1]";
connectAttr "input_knee.wm" "input_knee_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_knee_local_MTMX.i[1]";
connectAttr "input_knee_local_MTMX.o" "midlegLen.im1";
connectAttr "input_ankle_local_MTMX.o" "midlegLen.im2";
connectAttr "input_ankle.wm" "input_ankle_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_ankle_local_MTMX.i[1]";
connectAttr "ik_leg_ctrl_local_MTMX.o" "leg_ctrlLen.im2";
connectAttr "ik_leg_space_local_MTMX.o" "leg_ctrlLen.im1";
connectAttr "IK_lower_local.wm" "ik_leg_ctrl_local_MTMX.i[0]";
connectAttr "input_thigh.wm" "ik_leg_space_local_MTMX.i[0]";
connectAttr "IK_ankle_CTL.softIK" "leg_IK_negate_val.i1x";
connectAttr "IK_ankle_CTL.stretchIK" "leg_IK_negate_val.i1y";
connectAttr "uplegLen.d" "softlowerLegLen.i1[0]";
connectAttr "midlegLen.d" "softlowerLegLen.i1[1]";
connectAttr "loLegLen.d" "softlowerLegLen.i1[2]";
connectAttr "input_ankle_local_MTMX.o" "loLegLen.im1";
connectAttr "input_B_toe_local_MTMX.o" "loLegLen.im2";
connectAttr "input_B_toe.wm" "input_B_toe_local_MTMX.i[0]";
connectAttr "input_hip.wim" "input_B_toe_local_MTMX.i[1]";
connectAttr "ik_knee_space_local_MTMX.o" "B_toe_ctrlLen.im1";
connectAttr "ik_B_toe_ctrl_local_MTMX.o" "B_toe_ctrlLen.im2";
connectAttr "input_knee.wm" "ik_knee_space_local_MTMX.i[0]";
connectAttr "IK_B_toe_CTL.wm" "ik_B_toe_ctrl_local_MTMX.i[0]";
connectAttr "upperLeg_softikV_COND.ocr" "upperLeg_ctrllen_COND.ctr";
connectAttr "leg_softIK_input.upper_ctrlLen" "upperLeg_ctrllen_COND.cfr";
connectAttr "leg_softIK_input.upper_ctrlLen" "upperLeg_ctrllen_COND.ft";
connectAttr "upperLeglen_minus_softikV.o1" "upperLeg_ctrllen_COND.st";
connectAttr "upperLeg_result_softik_len.o1" "upperLeg_softikV_COND.ctr";
connectAttr "leg_softIK_input.upper_legLen" "upperLeg_softikV_COND.cfr";
connectAttr "leg_softIK_input.softik_ctrl_value" "upperLeg_softikV_COND.ft";
connectAttr "leg_softIK_input.upper_legLen" "upperLeg_result_softik_len.i1[0]";
connectAttr "upperLeg_mult_softikV.ox" "upperLeg_result_softik_len.i1[1]";
connectAttr "upperLeg_power_val.ox" "upperLeg_mult_softikV.i2x";
connectAttr "leg_softIK_input.softik_ctrl_value" "upperLeg_mult_softikV.i1x";
connectAttr "upperLeg_negate_val.ox" "upperLeg_power_val.i2x";
connectAttr "upperLeg_divide_softikV.ox" "upperLeg_negate_val.i1x";
connectAttr "upperLeg_ctrlLen_minue_dif.o1" "upperLeg_divide_softikV.i1x";
connectAttr "leg_for_zerodivide_COND.ocr" "upperLeg_divide_softikV.i2x";
connectAttr "leg_softIK_input.upper_ctrlLen" "upperLeg_ctrlLen_minue_dif.i1[0]";
connectAttr "upperLeglen_minus_softikV.o1" "upperLeg_ctrlLen_minue_dif.i1[1]";
connectAttr "leg_softIK_input.upper_legLen" "upperLeglen_minus_softikV.i1[0]";
connectAttr "leg_softIK_input.softik_ctrl_value" "upperLeglen_minus_softikV.i1[1]"
		;
connectAttr "leg_softIK_input.softik_ctrl_value" "leg_for_zerodivide_COND.ft";
connectAttr "leg_softIK_input.softik_ctrl_value" "leg_for_zerodivide_COND.cfr";
connectAttr "lowerLeg_softikV_COND.ocr" "lowerLeg_ctrllen_COND.ctr";
connectAttr "leg_softIK_input.lower_ctrlLen" "lowerLeg_ctrllen_COND.cfr";
connectAttr "leg_softIK_input.lower_ctrlLen" "lowerLeg_ctrllen_COND.ft";
connectAttr "lowerLeglen_minus_softikV.o1" "lowerLeg_ctrllen_COND.st";
connectAttr "lowerLeg_result_softik_len.o1" "lowerLeg_softikV_COND.ctr";
connectAttr "leg_softIK_input.lower_legLen" "lowerLeg_softikV_COND.cfr";
connectAttr "leg_softIK_input.softik_ctrl_value" "lowerLeg_softikV_COND.ft";
connectAttr "leg_softIK_input.lower_legLen" "lowerLeg_result_softik_len.i1[0]";
connectAttr "lowerLeg_mult_softikV.ox" "lowerLeg_result_softik_len.i1[1]";
connectAttr "lowerLeg_power_val.ox" "lowerLeg_mult_softikV.i2x";
connectAttr "leg_softIK_input.softik_ctrl_value" "lowerLeg_mult_softikV.i1x";
connectAttr "lowerLeg_negate_val.ox" "lowerLeg_power_val.i2x";
connectAttr "lowerLeg_divide_softikV.ox" "lowerLeg_negate_val.i1x";
connectAttr "lowerLeg_ctrlLen_minue_dif.o1" "lowerLeg_divide_softikV.i1x";
connectAttr "leg_for_zerodivide_COND.ocr" "lowerLeg_divide_softikV.i2x";
connectAttr "leg_softIK_input.lower_ctrlLen" "lowerLeg_ctrlLen_minue_dif.i1[0]";
connectAttr "lowerLeglen_minus_softikV.o1" "lowerLeg_ctrlLen_minue_dif.i1[1]";
connectAttr "leg_softIK_input.lower_legLen" "lowerLeglen_minus_softikV.i1[0]";
connectAttr "leg_softIK_input.softik_ctrl_value" "lowerLeglen_minus_softikV.i1[1]"
		;
connectAttr "leg_stretchIK_input.midLeg_len" "loleg_plus_stretch.i1[0]";
connectAttr "stretchCtrl_loleg.ox" "loleg_plus_stretch.i1[1]";
connectAttr "stretched_lolegLen.ox" "stretchCtrl_loleg.i1x";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "stretchCtrl_loleg.i2x";
connectAttr "upperLeg_stretchedLen.o1" "stretched_lolegLen.i1x";
connectAttr "loleg_ratio.ox" "stretched_lolegLen.i2x";
connectAttr "leg_stretchIK_input.upperCtrl_len" "upperLeg_stretchedLen.i1[0]";
connectAttr "leg_stretchIK_input.upperSoftik_len" "upperLeg_stretchedLen.i1[1]";
connectAttr "stretch_legLen.o1" "loleg_ratio.i2x";
connectAttr "leg_stretchIK_input.midLeg_len" "loleg_ratio.i1x";
connectAttr "leg_stretchIK_input.upLeg_len" "stretch_legLen.i1[0]";
connectAttr "leg_stretchIK_input.midLeg_len" "stretch_legLen.i1[1]";
connectAttr "leg_stretchIK_input.loLegLen" "stretch_legLen.i1[2]";
connectAttr "leg_stretchIK_input.upLeg_len" "upleg_plus_stretch.i1[0]";
connectAttr "stretchCtrl_upleg.ox" "upleg_plus_stretch.i1[1]";
connectAttr "stretched_uplegLen.ox" "stretchCtrl_upleg.i1x";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "stretchCtrl_upleg.i2x";
connectAttr "upleg_ratio.ox" "stretched_uplegLen.i2x";
connectAttr "upperLeg_stretchedLen.o1" "stretched_uplegLen.i1x";
connectAttr "leg_stretchIK_input.upLeg_len" "upleg_ratio.i1x";
connectAttr "stretch_legLen.o1" "upleg_ratio.i2x";
connectAttr "leg_stretchIK_input.loLegLen" "lowerLeg_plus_stretch.i1[0]";
connectAttr "stretchCtrl_lowerLeg.ox" "lowerLeg_plus_stretch.i1[1]";
connectAttr "stretched_lowerLegLen.ox" "stretchCtrl_lowerLeg.i1x";
connectAttr "leg_stretchIK_input.stretch_ctrl_value" "stretchCtrl_lowerLeg.i2x";
connectAttr "lowerLeg_stretchedLen.o1" "stretched_lowerLegLen.i1x";
connectAttr "lowerLeg_ratio.ox" "stretched_lowerLegLen.i2x";
connectAttr "leg_stretchIK_input.lowerCtrl_len" "lowerLeg_stretchedLen.i1[0]";
connectAttr "leg_stretchIK_input.lowerSoftik_len" "lowerLeg_stretchedLen.i1[1]";
connectAttr "stretch_legLen.o1" "lowerLeg_ratio.i2x";
connectAttr "leg_stretchIK_input.loLegLen" "lowerLeg_ratio.i1x";
connectAttr "input_B_toe2IK_B_toe_CTL_MTMX.o" "input_B_toe2IK_B_toe_CTL_DCMX.imat"
		;
connectAttr "input_B_toe.wm" "input_B_toe2IK_B_toe_CTL_MTMX.i[0]";
connectAttr "IK_ankle_CTL.wim" "input_B_toe2IK_B_toe_CTL_MTMX.i[1]";
connectAttr "upper_poleVec_offGRP_MTMX.o" "upper_poleVec_offGRP_DCMX.imat";
connectAttr "input_knee.wm" "upper_poleVec_offGRP_MTMX.i[0]";
connectAttr "leg_poleVec_GRP.wim" "upper_poleVec_offGRP_MTMX.i[1]";
connectAttr "ankle_poleVec_offGRP_MTMX.o" "ankle_poleVec_offGRP_DCMX.imat";
connectAttr "IK_B_toe_CTL.wm" "ankle_poleVec_offGRP_MTMX.i[0]";
connectAttr "lower_flex_poleVec_offGRP.pim" "ankle_poleVec_offGRP_MTMX.i[1]";
connectAttr "input_ankle2lower_poleVec_MTMX.o" "input_ankle2lower_poleVec_DCMX.imat"
		;
connectAttr "input_ankle.wm" "input_ankle2lower_poleVec_MTMX.i[0]";
connectAttr "lower_flex_poleVec_spcGRP.wim" "input_ankle2lower_poleVec_MTMX.i[1]"
		;
connectAttr "leg_switch_CTL.FK_IK" "FK_IK_RVS.ix";
connectAttr "IK_hip_JNT.s" "hip_BLCL.c1";
connectAttr "FK_hip_JNT.s" "hip_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "hip_BLCL.b";
connectAttr "IK_hip_JNT.t" "hip_PRBL.it1";
connectAttr "IK_hip_JNT.r" "hip_PRBL.ir1";
connectAttr "FK_hip_JNT.t" "hip_PRBL.it2";
connectAttr "FK_hip_JNT.r" "hip_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "hip_PRBL.w";
connectAttr "FK_thigh_JNT.s" "thigh_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "thigh_BLCL.b";
connectAttr "IK_thigh_JNT.t" "thigh_PRBL.it1";
connectAttr "IK_thigh_JNT.r" "thigh_PRBL.ir1";
connectAttr "FK_thigh_JNT.t" "thigh_PRBL.it2";
connectAttr "FK_thigh_JNT.r" "thigh_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "thigh_PRBL.w";
connectAttr "FK_knee_JNT.s" "knee_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "knee_BLCL.b";
connectAttr "IK_knee_JNT.t" "knee_PRBL.it1";
connectAttr "IK_knee_JNT.r" "knee_PRBL.ir1";
connectAttr "FK_knee_JNT.t" "knee_PRBL.it2";
connectAttr "FK_knee_JNT.r" "knee_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "knee_PRBL.w";
connectAttr "FK_ankle_JNT.s" "ankle_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "ankle_BLCL.b";
connectAttr "IK_ankle_JNT.t" "ankle_PRBL.it1";
connectAttr "IK_ankle_JNT.r" "ankle_PRBL.ir1";
connectAttr "FK_ankle_JNT.t" "ankle_PRBL.it2";
connectAttr "FK_ankle_JNT.r" "ankle_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "ankle_PRBL.w";
connectAttr "IK_B_toe0_JNT.t" "B_toe_PRBL.it1";
connectAttr "IK_B_toe0_JNT.r" "B_toe_PRBL.ir1";
connectAttr "FK_B_toe0_JNT.t" "B_toe_PRBL.it2";
connectAttr "FK_B_toe0_JNT.r" "B_toe_PRBL.ir2";
connectAttr "FK_IK_RVS.ox" "B_toe_PRBL.w";
connectAttr "FK_B_toe0_JNT.s" "B_toe_BLCL.c2";
connectAttr "leg_switch_CTL.FK_IK" "B_toe_BLCL.b";
connectAttr "input_ankle.wm" "input_ankle2IK_ankle_offGRP_MTMX.i[0]";
connectAttr "IK_leg_CTL_GRP.wim" "input_ankle2IK_ankle_offGRP_MTMX.i[1]";
connectAttr "input_ankle2IK_ankle_offGRP_MTMX.o" "input_ankle2IK_ankle_offGRP_DCMX.imat"
		;
connectAttr "input_ankle2lower_poleVec_DCMX.or" "unitConversion2.i";
connectAttr "leg_GRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_motion_GRP.iog" "leg_SET.dsm" -na;
connectAttr "input_hip.iog" "leg_SET.dsm" -na;
connectAttr "input_thigh.iog" "leg_SET.dsm" -na;
connectAttr "input_knee.iog" "leg_SET.dsm" -na;
connectAttr "input_ankle.iog" "leg_SET.dsm" -na;
connectAttr "input_B_toe.iog" "leg_SET.dsm" -na;
connectAttr "motion_IK_GRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_hip_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_hip_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_JNT.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe0_JNT.iog" "leg_SET.dsm" -na;
connectAttr "effector2.iog" "leg_SET.dsm" -na;
connectAttr "effector1.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_upperLeg_CTLaim.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_softIK_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_stretch_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_local_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_ikHandle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "upperLeg_ikHandle.iog" "leg_SET.dsm" -na;
connectAttr "ikHandle1_poleVectorConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_upperLeg_CTLaim_aimConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_space_upVec.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_space.iog" "leg_SET.dsm" -na;
connectAttr "IK_lowerLeg_CTLaim.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_softIK_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_stretch_output_LOC.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_local_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_ikHandle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "lowerLeg_ikHandle.iog" "leg_SET.dsm" -na;
connectAttr "ikHandle2_poleVectorConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_lowerLeg_CTLaim_aimConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "IK_knee_space_upVec.iog" "leg_SET.dsm" -na;
connectAttr "leg_softIK_input.iog" "leg_SET.dsm" -na;
connectAttr "leg_softIK_output.iog" "leg_SET.dsm" -na;
connectAttr "leg_stretchIK_input.iog" "leg_SET.dsm" -na;
connectAttr "leg_stretchIK_output.iog" "leg_SET.dsm" -na;
connectAttr "motion_FK_GRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_hip_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_JNT.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe0_JNT.iog" "leg_SET.dsm" -na;
connectAttr "leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL_local_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_flex_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_ankle_flex_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_B_toe_CTL.iog" "leg_SET.dsm" -na;
connectAttr "IK_lower_local_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_lower_local.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_space_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_L_space_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "IK_thigh_CTL.iog" "leg_SET.dsm" -na;
connectAttr "leg_poleVec_GRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_flex_poleVec_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_flex_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec_space.iog" "leg_SET.dsm" -na;
connectAttr "upper_poleVec.iog" "leg_SET.dsm" -na;
connectAttr "lower_flex_poleVec_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "lower_flex_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "lower_poleVec_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "lower_poleVec_space.iog" "leg_SET.dsm" -na;
connectAttr "lower_poleVec.iog" "leg_SET.dsm" -na;
connectAttr "FK_leg_CTL_GRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_hip_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_hip_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_thigh_CTL.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_knee_CTL.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_ankle_CTL.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "FK_B_toe_CTL.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_offGRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_spcGRP.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_offGRP_pointConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "leg_switch_CTL_offGRP_orientConstraint1.iog" "leg_SET.dsm" -na;
connectAttr "output_GRP.iog" "leg_SET.dsm" -na;
connectAttr "hip_JNT.iog" "leg_SET.dsm" -na;
connectAttr "thigh_JNT.iog" "leg_SET.dsm" -na;
connectAttr "knee_JNT.iog" "leg_SET.dsm" -na;
connectAttr "ankle_JNT.iog" "leg_SET.dsm" -na;
connectAttr "B_toe_JNT.iog" "leg_SET.dsm" -na;
connectAttr "ankle_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "B_toe_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "hip_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "knee_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "thigh_BLCL.msg" "leg_SET.dnsm" -na;
connectAttr "leg_for_zerodivide_COND.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_ctrllen_COND.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_softikV_COND.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_ctrllen_COND.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_softikV_COND.msg" "leg_SET.dnsm" -na;
connectAttr "ankle_poleVec_offGRP_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_CTL_local2IK_JNT_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2IK_ankle_offGRP_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2lower_poleVec_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_B_toe2IK_B_toe_CTL_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee2IK_knee_space_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_thigh2IK_thigh_JNT_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_DCMX.msg" "leg_SET.dnsm" -na;
connectAttr "B_toe_ctrlLen.msg" "leg_SET.dnsm" -na;
connectAttr "leg_ctrlLen.msg" "leg_SET.dnsm" -na;
connectAttr "loLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "midlegLen.msg" "leg_SET.dnsm" -na;
connectAttr "uplegLen.msg" "leg_SET.dnsm" -na;
connectAttr "ankle_poleVec_offGRP_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_B_toe_ctrl_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_knee_space_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_leg_ctrl_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "ik_leg_space_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_CTL_local2IK_JNT_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "IK_thigh_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2IK_ankle_offGRP_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle2lower_poleVec_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_ankle_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_B_toe2IK_B_toe_CTL_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_B_toe_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee2IK_knee_space_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_knee_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_thigh2IK_thigh_JNT_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "input_thigh_local_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_MTMX.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle14.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle15.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle16.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle17.msg" "leg_SET.dnsm" -na;
connectAttr "makeNurbCircle5.msg" "leg_SET.dnsm" -na;
connectAttr "leg_IK_negate_val.msg" "leg_SET.dnsm" -na;
connectAttr "loleg_ratio.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_divide_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_mult_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_negate_val.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_power_val.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_ratio.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.msg" "leg_SET.dnsm" -na;
connectAttr "stretchCtrl_loleg.msg" "leg_SET.dnsm" -na;
connectAttr "stretchCtrl_lowerLeg.msg" "leg_SET.dnsm" -na;
connectAttr "stretchCtrl_upleg.msg" "leg_SET.dnsm" -na;
connectAttr "stretched_lolegLen.msg" "leg_SET.dnsm" -na;
connectAttr "stretched_lowerLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "stretched_uplegLen.msg" "leg_SET.dnsm" -na;
connectAttr "upleg_ratio.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_divide_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_mult_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_negate_val.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_power_val.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_stretch_output_mul_ctrlVal.msg" "leg_SET.dnsm" -na;
connectAttr "ankle_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "B_toe_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "hip_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "knee_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "thigh_PRBL.msg" "leg_SET.dnsm" -na;
connectAttr "loleg_plus_stretch.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_ctrlLen_minue_dif.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_plus_stretch.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_result_softik_len.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeg_stretchedLen.msg" "leg_SET.dnsm" -na;
connectAttr "lowerLeglen_minus_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "softlowerLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "softupperLegLen.msg" "leg_SET.dnsm" -na;
connectAttr "stretch_legLen.msg" "leg_SET.dnsm" -na;
connectAttr "upleg_plus_stretch.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_ctrlLen_minue_dif.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_result_softik_len.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeg_stretchedLen.msg" "leg_SET.dnsm" -na;
connectAttr "upperLeglen_minus_softikV.msg" "leg_SET.dnsm" -na;
connectAttr "FK_IK_RVS.msg" "leg_SET.dnsm" -na;
connectAttr "input_thigh_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_ankle_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_B_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uplegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midlegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softupperLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_leg_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_leg_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeglen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_legLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loleg_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upleg_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_lolegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uplegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loleg.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_upleg.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loleg_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upleg_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upperLeg_stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "loLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softlowerLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_B_toe_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_knee_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "B_toe_ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeglen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_lowerLegLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_lowerLeg.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lowerLeg_stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FK_IK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_knee2IK_knee_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_knee2IK_knee_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_ankle2lower_poleVec_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "input_ankle2lower_poleVec_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "input_thigh2IK_thigh_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_thigh2IK_thigh_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_B_toe2IK_B_toe_CTL_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "input_B_toe2IK_B_toe_CTL_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "IK_thigh_CTL_local2IK_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_thigh_CTL_local2IK_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "input_ankle2IK_ankle_offGRP_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "input_ankle2IK_ankle_offGRP_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of parts_quadruped_leg.ma
