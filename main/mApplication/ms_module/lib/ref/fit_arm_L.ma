//Ma                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            joint -n "output_elbow_L" -p "output_shoulder_L";
	rename -uid "D5579F60-491C-0104-A454-32AFE004F70E";
createNode joint -n "output_wrist_L" -p "output_elbow_L";
	rename -uid "F971A81C-4E1A-8537-1877-85929669B810";
createNode decomposeMatrix -n "space_L_DCMX";
	rename -uid "90F3DAFC-4914-C27F-1913-F293E34E7EB1";
createNode decomposeMatrix -n "shoulder_aligned_L_DCMX";
	rename -uid "7AFB594F-4B30-209A-61C8-4FA00D9B8EA9";
createNode fourByFourMatrix -n "shoulder_aligned_L_FBFM";
	rename -uid "4094B51C-466C-9B94-F152-8B8C3F55BAF0";
createNode vectorProduct -n "shoulder_x_L_vec";
	rename -uid "3B42A89E-4214-EC95-46BD-A094AD0F1489";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode plusMinusAverage -n "shoulder2elbow_L_vec";
	rename -uid "0DD8A55E-475B-5319-AA52-82AE835C2612";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "ref_elbow_L_DCMX";
	rename -uid "AEF8508F-4E89-F096-37A7-CCA97BAB0F27";
createNode decomposeMatrix -n "ref_shoulder_L_DCMX";
	rename -uid "6E5F971A-48BD-274F-8C85-79B97B2F7FCA";
createNode vectorProduct -n "shoulder_y_L_vec";
	rename -uid "112F9616-4359-63EA-88B6-33AEC129373F";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode plusMinusAverage -n "shoulder2wrist_L_vec";
	rename -uid "2F29A561-428C-43D1-19E1-AABC49541710";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "ref_wrist_L_DCMX";
	rename -uid "CE6C86B8-4117-745B-13D3-F1B77CBEAC12";
createNode vectorProduct -n "shoulder_z_Vec1";
	rename -uid "3D66C71B-40AC-27D1-359F-DDBCE66F5638";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "shoulder2elbow_init_L_DCMX";
	rename -uid "07EDE408-4FE9-0275-5E28-6094BD23416D";
createNode multMatrix -n "shoulder2elbow_init_L_MTMX";
	rename -uid "BCAEFE61-4E4C-BAFC-8930-CEB069D395CB";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "elbow_aligned_L_FBFM";
	rename -uid "5265BE13-40CC-EA8E-B54A-EA8BCE661C8B";
createNode vectorProduct -n "elbow_x_L_vec";
	rename -uid "6C9E1168-42D8-A209-ACEC-7EAF1F5BB131";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode plusMinusAverage -n "elbow2wrist_L_vec";
	rename -uid "1983F1A1-450D-9283-8FA0-E8AADF94276A";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_L_vec";
	rename -uid "E90D6653-42D5-2A3F-DF11-1CB3FF207AB9";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode plusMinusAverage -n "elbow2start_L_vec";
	rename -uid "2310F4D4-48B2-D118-95E8-B8BF757740B4";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_z_L_vec";
	rename -uid "1F8A08F1-4CFB-119D-73EC-73B6F3EA3940";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "wrist_aligned_init_L_DCMX";
	rename -uid "087619E8-4952-FAB0-53D2-6795FB404032";
createNode multMatrix -n "wrist_aligned_init_L_MTMX";
	rename -uid "3015BDD4-447A-435F-EE99-789BD1840E24";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_JNT_L_DCMX";
	rename -uid "601A5556-457F-5252-CD83-B3AEAAAB0048";
createNode multMatrix -n "shoulder_JNT_L_MTMX";
	rename -uid "C0D51B2A-430F-0C37-0FC4-D4A28274052D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder2elbow_JNT_L_DCMX";
	rename -uid "E6CE3938-42DA-8DE2-59BF-FC82254BCFAD";
createNode multMatrix -n "shoulder2elbow_JNT_L_MTMX";
	rename -uid "B9B50076-4A99-6EAA-469B-35B094E79AF6";
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
	setAttr -s 25 ".u";
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
connectAttr "space_L_DCMX.ot" "fit_arm_L_space.t";
connectAttr "space_L_DCMX.or" "fit_arm_L_space.r";
connectAttr "space_L_DCMX.os" "fit_arm_L_space.s";
connectAttr "shoulder_aligned_L_DCMX.ot" "init_shoulder_L.t";
connectAttr "shoulder_aligned_L_DCMX.or" "init_shoulder_L.r";
connectAttr "shoulder_aligned_L_DCMX.os" "init_shoulder_L.s";
connectAttr "shoulder_aligned_L_DCMX.osh" "init_shoulder_L.sh";
connectAttr "shoulder2elbow_init_L_DCMX.ot" "init_elbow_L.t";
connectAttr "shoulder2elbow_init_L_DCMX.or" "init_elbow_L.r";
connectAttr "shoulder2elbow_init_L_DCMX.os" "init_elbow_L.s";
connectAttr "shoulder2elbow_init_L_DCMX.osh" "init_elbow_L.sh";
connectAttr "wrist_aligned_init_L_DCMX.ot" "init_wrist_L.t";
connectAttr "wrist_aligned_init_L_DCMX.os" "init_wrist_L.s";
connectAttr "fit_arm_L_space.t" "output_scapula_L.t";
connectAttr "fit_arm_L_space.r" "output_scapula_L.jo";
connectAttr "shoulder_JNT_L_DCMX.ot" "output_shoulder_L.t";
connectAttr "shoulder_JNT_L_DCMX.or" "output_shoulder_L.jo";
connectAttr "output_scapula_L.s" "output_shoulder_L.is";
connectAttr "shoulder2elbow_JNT_L_DCMX.ot" "output_elbow_L.t";
connectAttr "shoulder2elbow_JNT_L_DCMX.or" "output_elbow_L.jo";
connectAttr "init_wrist_L.t" "output_wrist_L.t";
connectAttr "init_wrist_L.r" "output_wrist_L.jo";
connectAttr "output_elbow_L.s" "output_wrist_L.is";
connectAttr "input_arm_L.wm" "space_L_DCMX.imat";
connectAttr "shoulder_aligned_L_FBFM.o" "shoulder_aligned_L_DCMX.imat";
connectAttr "shoulder_x_L_vec.ox" "shoulder_aligned_L_FBFM.i00";
connectAttr "shoulder_x_L_vec.oy" "shoulder_aligned_L_FBFM.i01";
connectAttr "shoulder_x_L_vec.oz" "shoulder_aligned_L_FBFM.i02";
connectAttr "shoulder_y_L_vec.ox" "shoulder_aligned_L_FBFM.i10";
connectAttr "shoulder_y_L_vec.oy" "shoulder_aligned_L_FBFM.i11";
connectAttr "shoulder_y_L_vec.oz" "shoulder_aligned_L_FBFM.i12";
connectAttr "shoulder_z_Vec1.oy" "shoulder_aligned_L_FBFM.i21";
connectAttr "shoulder_z_Vec1.ox" "shoulder_aligned_L_FBFM.i20";
connectAttr "shoulder_z_Vec1.oz" "shoulder_aligned_L_FBFM.i22";
connectAttr "ref_shoulder_L_DCMX.otx" "shoulder_aligned_L_FBFM.i30";
connectAttr "ref_shoulder_L_DCMX.oty" "shoulder_aligned_L_FBFM.i31";
connectAttr "ref_shoulder_L_DCMX.otz" "shoulder_aligned_L_FBFM.i32";
connectAttr "shoulder2elbow_L_vec.o3" "shoulder_x_L_vec.i1";
connectAttr "ref_elbow_L_DCMX.ot" "shoulder2elbow_L_vec.i3[0]";
connectAttr "ref_shoulder_L_DCMX.ot" "shoulder2elbow_L_vec.i3[1]";
connectAttr "ref_elbow_L.wm" "ref_elbow_L_DCMX.imat";
connectAttr "fit_shoulder_L.wm" "ref_shoulder_L_DCMX.imat";
connectAttr "shoulder2wrist_L_vec.o3" "shoulder_y_L_vec.i1";
connectAttr "shoulder2elbow_L_vec.o3" "shoulder_y_L_vec.i2";
connectAttr "ref_wrist_L_DCMX.ot" "shoulder2wrist_L_vec.i3[0]";
connectAttr "ref_shoulder_L_DCMX.ot" "shoulder2wrist_L_vec.i3[1]";
connectAttr "ref_wrist_L.wm" "ref_wrist_L_DCMX.imat";
connectAttr "shoulder2elbow_L_vec.o3" "shoulder_z_Vec1.i1";
connectAttr "shoulder_y_L_vec.o" "shoulder_z_Vec1.i2";
connectAttr "shoulder2elbow_init_L_MTMX.o" "shoulder2elbow_init_L_DCMX.imat";
connectAttr "elbow_aligned_L_FBFM.o" "shoulder2elbow_init_L_MTMX.i[0]";
connectAttr "init_shoulder_L.wim" "shoulder2elbow_init_L_MTMX.i[1]";
connectAttr "elbow_x_L_vec.ox" "elbow_aligned_L_FBFM.i00";
connectAttr "elbow_x_L_vec.oy" "elbow_aligned_L_FBFM.i01";
connectAttr "elbow_x_L_vec.oz" "elbow_aligned_L_FBFM.i02";
connectAttr "elbow_y_L_vec.ox" "elbow_aligned_L_FBFM.i10";
connectAttr "elbow_y_L_vec.oy" "elbow_aligned_L_FBFM.i11";
connectAttr "elbow_y_L_vec.oz" "elbow_aligned_L_FBFM.i12";
connectAttr "elbow_z_L_vec.ox" "elbow_aligned_L_FBFM.i20";
connectAttr "elbow_z_L_vec.oy" "elbow_aligned_L_FBFM.i21";
connectAttr "elbow_z_L_vec.oz" "elbow_aligned_L_FBFM.i22";
connectAttr "ref_elbow_L_DCMX.otx" "elbow_aligned_L_FBFM.i30";
connectAttr "ref_elbow_L_DCMX.oty" "elbow_aligned_L_FBFM.i31";
connectAttr "ref_elbow_L_DCMX.otz" "elbow_aligned_L_FBFM.i32";
connectAttr "elbow2wrist_L_vec.o3" "elbow_x_L_vec.i1";
connectAttr "ref_wrist_L_DCMX.ot" "elbow2wrist_L_vec.i3[0]";
connectAttr "ref_elbow_L_DCMX.ot" "elbow2wrist_L_vec.i3[1]";
connectAttr "elbow2start_L_vec.o3" "elbow_y_L_vec.i1";
connectAttr "elbow2wrist_L_vec.o3" "elbow_y_L_vec.i2";
connectAttr "ref_shoulder_L_DCMX.ot" "elbow2start_L_vec.i3[0]";
connectAttr "ref_elbow_L_DCMX.ot" "elbow2start_L_vec.i3[1]";
connectAttr "elbow2wrist_L_vec.o3" "elbow_z_L_vec.i1";
connectAttr "elbow_y_L_vec.o" "elbow_z_L_vec.i2";
connectAttr "wrist_aligned_init_L_MTMX.o" "wrist_aligned_init_L_DCMX.imat";
connectAttr "ref_wrist_L.wm" "wrist_aligned_init_L_MTMX.i[0]";
connectAttr "init_elbow_L.wim" "wrist_aligned_init_L_MTMX.i[1]";
connectAttr "shoulder_JNT_L_MTMX.o" "shoulder_JNT_L_DCMX.imat";
connectAttr "init_shoulder_L.wm" "shoulder_JNT_L_MTMX.i[0]";
connectAttr "output_scapula_L.wim" "shoulder_JNT_L_MTMX.i[1]";
connectAttr "shoulder2elbow_JNT_L_MTMX.o" "shoulder2elbow_JNT_L_DCMX.imat";
connectAttr "init_elbow_L.wm" "shoulder2elbow_JNT_L_MTMX.i[0]";
connectAttr "init_shoulder_L.wim" "shoulder2elbow_JNT_L_MTMX.i[1]";
connectAttr "ref_shoulder_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ref_elbow_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ref_wrist_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2wrist_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_y_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_z_Vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_L_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_x_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2start_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_y_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_z_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_x_L_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_L_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_init_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_L_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_JNT_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_L_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_JNT_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder2elbow_init_L_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_L_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_aligned_init_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "space_L_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
// End of fit_arm_L.ma
