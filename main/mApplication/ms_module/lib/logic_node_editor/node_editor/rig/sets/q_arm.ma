//Maya ASCII 2019 scene
//Name: q_arm.ma
//Last modified: Tue, Jun 22, 2021 12:43:09 PM
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
createNode transform -n "arm_GRP";
	rename -uid "F76EE84E-4507-5A40-B729-32BC702DEE15";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 5 ".init";
	setAttr -k on ".follow";
	setAttr -k on ".prefixType";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "8D2674FB-46D2-01B7-6566-808305A3B9FA";
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "3FB985A2-40F8-7D52-F436-2AA6FAEC8AE5";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "B9CB0E78-4DE0-C09F-1A5C-98A3AD98CC15";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
	setAttr ".r" -type "double3" -0.87823557517424033 18.963366707434972 -90.051492328366749 ;
	setAttr ".s" -type "double3" 1.0000000429453995 1.0000000680434886 0.99999999181452848 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "477B1EDD-47CF-ACFB-F0D2-479A4002F6E1";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 11.152678498081176 -6.7630523403749976e-10 4.5920421243295095e-08 ;
	setAttr ".r" -type "double3" 6.8813103377255397e-08 -19.828050665451098 -3.4576068493170435e-08 ;
	setAttr ".s" -type "double3" 0.99999991550197298 0.99999999999999989 1.0000000147680039 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "567E59E8-4853-0998-0729-EEA877AC03AC";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 15.032045000035824 -4.6762993477500459e-09 1.0004249872963555e-08 ;
	setAttr ".r" -type "double3" -0.013384094865826854 0.91874997429317906 -0.00021462192475247844 ;
	setAttr ".s" -type "double3" 1.0000000201979447 0.99999985072677022 0.99999999767305114 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "ECCCA7B7-422C-0891-0A82-239E77510530";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.5795577284653266 -7.5485662165419853e-10 1.4718537499902595e-10 ;
	setAttr ".r" -type "double3" 1.4605930577406421 -39.559681728058756 -0.9303447933971033 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "847E763B-4AFB-5692-159E-8BAA06882DDF";
	setAttr ".t" -type "double3" 1.9365728819610428 9.1526786150097905e-12 1.4342624865548714e-09 ;
	setAttr ".r" -type "double3" -0.42876198851736008 -31.492247172491378 0.22398104162895269 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "DA7723C1-4DEC-C0D3-FB78-968AEE34C3FE";
	setAttr ".t" -type "double3" 3.6141828709296533 1.0266543171155718e-09 -1.3036568002888771e-07 ;
	setAttr ".r" -type "double3" 71.00508559910206 -2.6566659528093497e-08 90.000000016229507 ;
createNode transform -n "motion_IK_GRP" -p "arm_motion_GRP";
	rename -uid "C2BD9483-46C3-8A69-80A3-F7A8EB9CE56A";
createNode transform -n "IK_shoulder_space" -p "motion_IK_GRP";
	rename -uid "0DC77A78-476F-D9C1-7FDF-F79F7CE5B951";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "47E7D26F-44E9-B185-ECC2-DF8621EC28B2";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "4B08B7CE-4098-7909-8EDD-558B1638E23C";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "323F3E7A-450D-8363-62E0-BBAA4C4EC252";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "2049D72E-4955-8B34-6203-A4845DA87F9C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "A80A5E36-4673-F648-FF2E-1382B7484A38";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "03F268D3-4951-2502-21D1-BB88A9518A43";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "E2D2E5D3-4B75-9435-A874-D5B8482B4F85";
	setAttr -k off ".v";
createNode transform -n "wrist_offset_GRP" -p "upper_stretch_output_LOC";
	rename -uid "E06E7F1C-4C95-0D9B-FB02-68BE1A959F92";
	setAttr ".t" -type "double3" 4.5078143145167164 0.0027108481662523332 0.80741924590541814 ;
	setAttr ".r" -type "double3" -10.153476863512063 -0.42837352305053678 89.874579056846116 ;
	setAttr ".s" -type "double3" 0.99999993196110837 0.99999997181295508 0.99999999342252588 ;
	setAttr ".sh" -type "double3" -5.9993620639617081e-10 1.0180313195912592e-09 -4.6334934472047124e-08 ;
createNode transform -n "wrist_space" -p "wrist_offset_GRP";
	rename -uid "6759CAB4-4EBD-3A30-8434-4097AC0852D1";
createNode ikHandle -n "ikHandle1" -p "wrist_space";
	rename -uid "93FBC762-4EAA-0EF5-4B2C-DC8DEB9C6A63";
	setAttr ".t" -type "double3" -0.018615705346738842 4.5796363458851133 2.1234761561572668e-05 ;
	setAttr ".r" -type "double3" 2.588269837845218 -0.41960739676470471 -0.072194743298761438 ;
	setAttr ".s" -type "double3" 1.0000000000006599 0.99999999268661111 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484927334517397e-10 1.6005933006988813e-10 1.2770773040052234e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "6AA1C4E2-483E-1498-0269-E48BD4464DF8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "poleVecW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.063293536694878583 -10.072381771421131 -14.092013557910745 ;
	setAttr -k on ".w0";
createNode transform -n "IK_wrist_space" -p "upper_stretch_output_LOC";
	rename -uid "61CEF939-477E-F6FA-4358-65B3295C626B";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "C4DCD31E-42C8-6885-1387-6D9FC72C9653";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "0D2B67B8-497B-1944-2D4B-918259B7DA60";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "2DFF3500-4A8E-A4E8-C81C-A1B27E790B85";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "8385E37F-495D-EB17-5BB8-5A97B9861ACA";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "6618C476-4D67-E04A-DD5F-55885E55E8B9";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "4A48D346-44DF-3756-D042-6F88F1869DD6";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "02794C12-4BB9-81B0-4E33-2D8C3DD4A247";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle2" -p "lower_stretch_output_LOC";
	rename -uid "F16AA414-4183-FD2B-6EDF-39A93E8CC87C";
	setAttr ".t" -type "double3" -0.00011817256893786876 7.2561956443450981e-10 3.1345864925924616e-07 ;
	setAttr ".r" -type "double3" -1.4463488157537345e-27 0.00019824970204960224 7.4521846946874758e-06 ;
	setAttr ".s" -type "double3" 1.0000000159603892 1.0000000812308731 1.0000000011375991 ;
	setAttr ".sh" -type "double3" -1.6019759401675542e-10 -1.0104766364969727e-08 0 ;
	setAttr ".pv" -type "double3" -2.5035693294182551e-08 -0.0095432113891717931 0.99995446366562979 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "B5D16C24-4C1D-E499-7D71-2A9FAB5143FF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ankleW0" -dv 1 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "IK_wrist_space_upVec" -p "IK_wrist_space";
	rename -uid "8ABC50C1-4785-9A74-C54F-05B609766684";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "C061C5C4-4502-DA02-1E5A-0598E9D8DD0B";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "1C082B4D-40BD-96F8-A2BC-0799A0AB2716";
	addAttr -dcb 0 -ci true -sn "w0" -ln "wrist_spaceW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 0.014163495766354091 -22.049766855648084 -0.037727887064269272 ;
	setAttr -k on ".w0";
createNode transform -n "IK_shoulder_space_upVec" -p "IK_shoulder_space";
	rename -uid "C53E1874-4C47-74D9-C650-BE99F2FB5748";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "8D0CA095-4B61-3947-F885-DD9E49C75F88";
	setAttr -k off ".v";
createNode transform -n "softIK_input" -p "motion_IK_GRP";
	rename -uid "CF56AC54-4E30-5368-44BE-E98F6B8A1291";
	addAttr -ci true -sn "uparmLen" -ln "uparmLen" -at "double";
	addAttr -ci true -sn "CTLLen" -ln "CTLLen" -at "double";
	addAttr -ci true -sn "softik_CTL_value" -ln "softik_CTL_value" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "loarmIK_len" -ln "loarmIK_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
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
	setAttr -k on ".uparmLen";
	setAttr -k on ".CTLLen";
	setAttr -k on ".softik_CTL_value";
	setAttr -k on ".loarmIK_len";
	setAttr -k on ".loarm_len";
createNode transform -n "softIK_output" -p "motion_IK_GRP";
	rename -uid "F5B950EC-463B-FFDE-EC1D-A0B60EB0007B";
	addAttr -ci true -sn "output_softik" -ln "output_softik" -at "double";
	addAttr -ci true -sn "output_extended_softik" -ln "output_extended_softik" -at "double";
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
	setAttr -k on ".output_softik";
	setAttr -k on ".output_extended_softik";
createNode transform -n "stretchIK_input" -p "motion_IK_GRP";
	rename -uid "CAC710AD-4F4D-CFD7-E978-F3BED4A4F781";
	addAttr -ci true -sn "softik_len" -ln "softik_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "uparm_len" -ln "uparm_len" -at "double";
	addAttr -ci true -sn "ctrl_len" -ln "ctrl_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
	addAttr -ci true -sn "extendedarm_len" -ln "extendedarm_len" -at "double";
	addAttr -ci true -sn "extended_softik_len" -ln "extended_softik_len" -at "double";
	addAttr -ci true -sn "extended_ctrl_len" -ln "extended_ctrl_len" -at "double";
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
	setAttr -k on ".softik_len";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".uparm_len";
	setAttr -k on ".ctrl_len";
	setAttr -k on ".loarm_len";
	setAttr -k on ".extendedarm_len";
	setAttr -k on ".extended_softik_len";
	setAttr -k on ".extended_ctrl_len";
createNode transform -n "stretchIK_output" -p "motion_IK_GRP";
	rename -uid "58F712D3-43A0-42A7-6294-3BBE1C41FC42";
	addAttr -ci true -sn "loarm_stretched" -ln "loarm_stretched" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "stretched_len" -ln "stretched_len" -at "double";
	addAttr -ci true -sn "uparm_stretched" -ln "uparm_stretched" -at "double";
	addAttr -ci true -sn "extendedarm_stretched" -ln "extendedarm_stretched" -at "double";
	addAttr -ci true -sn "expand_stretched_len" -ln "expand_stretched_len" -at "double";
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
	setAttr -k on ".loarm_stretched";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".stretched_len";
	setAttr -k on ".uparm_stretched";
	setAttr -k on ".extendedarm_stretched";
	setAttr -k on ".expand_stretched_len";
createNode joint -n "IK_scapula" -p "motion_IK_GRP";
	rename -uid "411C5901-4334-379F-16C4-B0B2B0D6EBFA";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "E4591E9E-4BD7-4D1A-35C3-4D85CA46D991";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" -0.00073840409991923815 0.00088532359114367148 -0.00015038739976645411 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "E7FAE2D3-4F9A-2441-0371-F6B2B4DD6B26";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.152679443359375 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" 2.5832835940292071e-13 -0.0015323354999619914 4.3515417185179361e-12 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "756D066F-450B-F71C-B027-B7A96BD8E468";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.032044410705566 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" 0.29785476631298707 0.00073796783176896205 -8.8423716425506136e-05 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "44E8A44F-4431-6A45-C4EA-12853E14BE37";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795574188232422 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" -0.22903208245770315 0.0013948492850162206 0.18924900886318521 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "3D5F932A-42D7-401C-E7F8-75825B281426";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -0.0010527753544584686 -0.00073940156358329743 -5.8447447735963534e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "3361D2C3-4B16-DF74-7BBC-A6A59556FC79";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "9A40F67A-49B4-964C-2759-4A94E63A0C78";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "C6347496-4B19-340E-6896-F38CACAB79F4";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "4EECD93F-4A0D-206A-879A-ACA560BEEC95";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "9805B279-4734-8114-5AD1-B58BE4E0A990";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "9CD49266-43CC-3BA5-F89D-46ACEE90EF48";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "5D39F50A-41A2-300A-8EAF-F781BF12F0FB";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IK_scapula_aim_space" -p "motion_IK_GRP";
	rename -uid "B95DC2A3-4FD7-2A06-7D86-8784C7083471";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode aimConstraint -n "IK_scapula_aim_space_aimConstraint1" -p "IK_scapula_aim_space";
	rename -uid "D8A176C4-49E4-CE63-8BDA-829BB6456D8E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_foot_CTLW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" 4.5153380679406521 0 -2.7498099178733804 ;
	setAttr ".rsrr" -type "double3" -18.965937545513842 -0.86149816236375609 90.048731697747769 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "IK_scapula_aim_space_pointConstraint1" -p "IK_scapula_aim_space";
	rename -uid "9D3F764E-4935-94E5-A932-958CD4722E2B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_shoulderW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -1.8925676345825142 7.9852995953546824 -5.4333494218265663 ;
	setAttr ".rst" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr -k on ".w0";
createNode transform -n "motion_FK_GRP" -p "arm_motion_GRP";
	rename -uid "B2252EE9-4E22-94D3-6C28-AABFDA96B791";
createNode joint -n "FK_scapula" -p "motion_FK_GRP";
	rename -uid "BF140427-4F15-3C16-12AD-62BCFAB2CFF9";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "CB9C7D17-4968-C5E6-F146-DA83A3794D44";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_B_elbow" -p "FK_shoulder";
	rename -uid "C9F38E51-4FEF-E065-D1A8-6D9DABEB7AF5";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_F_elbow" -p "FK_B_elbow";
	rename -uid "E7375D10-4523-8398-AC3C-36A9299F22BA";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "66B9B20E-4C5F-68EE-1DB0-889DA744D9CA";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "2089E766-458A-07D4-E84E-A897211C1EF5";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "509E74EB-4DEE-F139-4DA8-089EEBE6C256";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "6CD0373C-40DF-A584-83D7-D5940D556F7F";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "5E8B3B95-4F41-0849-8A8B-05870D1FC68A";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "05376753-459B-008B-EF02-3C9659042771";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "FC6F37AA-464E-C219-0D10-95BBCD01C297";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "20F6F4C4-403E-9DD4-3B6A-A1B395E8C6E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.6163883751087735 2.1806013529783206 
		3.6334503822956314 2.4 -1.7774315919804762 5.1384748088521937 3.1836116248912267 
		-0.10046776481173492 3.633450382295631 3.5081941875543894 2.0135310202211683 1.1559789466492041e-15 
		3.1836116248912263 1.4667554849707138 -3.633450382295635 2.399999999999999 0.43895678312829944 
		-5.1384748088521883 1.6163883751087718 3.7478246027607689 -3.6334503822956354 1.2918058124456091 
		4.4692374044260985 1.8886750976999804e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "scapula_CTL_ivsScale" -p "scapula_CTL";
	rename -uid "8ABC662F-46A5-1BA0-5F01-F0898BCF314A";
createNode transform -n "IK_shoulder_CTL_offGRP" -p "scapula_CTL_ivsScale";
	rename -uid "31886C15-42DD-C79C-5226-3D88E2A88E2E";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "730F1A03-4A7D-CE50-0BFF-3B995D8CF304";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "9DDF481F-4F48-4569-EA50-66BCEE907423";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "652465A7-4A77-D6EA-8504-4784C1FC34B6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.9999999999999982 -8.502704039611569e-16 2.5
		3.9999999999999982 -0.95670750000000038 2.3096999999999985
		3.9999999999999982 -1.7677674999999997 1.767767499999999
		3.9999999999999982 -2.3096999999999999 0.9567074999999986
		3.9999999999999991 -2.5000000000000004 -9.3675067702747544e-16
		3.9999999999999991 -2.309699999999999 -0.9567075000000006
		4.0000000000000009 -1.767767499999999 -1.7677674999999997
		4.0000000000000009 -0.9567074999999986 -2.309699999999999
		4.0000000000000009 1.0259431434953739e-15 -2.5
		4.0000000000000009 0.95670750000000082 -2.3096999999999985
		4.0000000000000009 1.7677674999999997 -1.767767499999999
		4.0000000000000009 2.3096999999999999 -0.9567074999999986
		3.9999999999999991 2.5000000000000004 9.3675067702747544e-16
		3.9999999999999991 2.309699999999999 0.9567075000000006
		3.9999999999999982 1.7677674999999993 1.7677674999999997
		3.9999999999999982 0.9567074999999986 2.309699999999999
		3.9999999999999982 -8.502704039611569e-16 2.5
		;
createNode transform -n "IK_wrist_aim" -p "IK_shoulder_CTL";
	rename -uid "6D4DE090-4645-80F0-1175-DBA30949B53C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 -2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode locator -n "IK_wrist_aimShape" -p "IK_wrist_aim";
	rename -uid "D9C6D590-4F77-74DB-01C0-948EA12E7020";
	setAttr -k off ".v";
createNode transform -n "IK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "EEAA3919-4332-AAD3-9869-0C8E4AD4301A";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674408 1.0000000222718179 1.0000000028214378 ;
	setAttr ".sh" -type "double3" -8.0815271250080359e-10 3.4848956455488211e-08 -2.2852080187929983e-08 ;
createNode transform -n "scapula_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "A4B605B1-4886-77C5-17A8-1B8F9CF1E2DA";
	setAttr ".t" -type "double3" -4.7371485343050495 -1.8119642307906743 -9.8230416917541596 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "input_F_toe_space" -p "IK_arm_CTL_GRP";
	rename -uid "AB542173-47D4-41C5-DF4B-28828B0DB5D5";
	setAttr ".r" -type "double3" 1.6469325546113447 -67.218225318270896 -1.1283633139358367 ;
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_foot_CTL_offGRP" -p "input_F_toe_space";
	rename -uid "6F513F09-4FDD-8D2A-F778-A7B2A666EDC3";
	setAttr ".t" -type "double3" 2.817222294660148 -0.0049796501773071711 -0.77774806250817363 ;
	setAttr ".r" -type "double3" 39.409568096343335 0.3668402583336568 89.999999960581661 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_foot_CTL_spcGRP" -p "F_foot_CTL_offGRP";
	rename -uid "E1AF0CD2-420C-985A-74D0-E9A1F33B3491";
createNode transform -n "F_foot_CTL" -p "F_foot_CTL_spcGRP";
	rename -uid "E119C3D6-4B9C-7396-332E-9C84143B19DC";
	addAttr -ci true -sn "roll" -ln "roll" -at "double";
	addAttr -ci true -sn "rollStartAngle" -ln "rollStartAngle" -at "double";
	addAttr -ci true -sn "bank" -ln "bank" -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -at "double";
	addAttr -ci true -sn "stretch" -ln "stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "toesAim" -ln "toesAim" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".roll";
	setAttr -k on ".rollStartAngle" 45;
	setAttr -k on ".bank";
	setAttr -k on ".heelTwist";
	setAttr -k on ".toeTwist";
	setAttr -k on ".stretch";
	setAttr -k on ".softIK";
	setAttr -k on ".toesAim" 10;
createNode transform -n "F_heel" -p "F_foot_CTL";
	rename -uid "C0950F2D-4BC0-B86A-7B81-F6A4311751FA";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00047531438057468733 1.0963452368173421e-15 -1.774207099174899 ;
createNode locator -n "F_heelShape" -p "F_heel";
	rename -uid "E04E7B19-4D0D-931D-59F4-91807DFF2F4C";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_heel_CTL" -p "F_heel";
	rename -uid "9E69060B-4450-0C77-FCD6-8394D20354E9";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_heel_CTLShape" -p "F_heel_CTL";
	rename -uid "C297352C-4B07-F0E6-EDB4-C8AEB8140C92";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		-1.5449383168448908e-16 -0.38268299999999988 0.92387999999999959
		-1.4061604387667462e-16 -0.70710700000000004 0.70710700000000026
		-5.7349317029787868e-17 -0.92387999999999937 0.38268299999999977
		5.3672985432727786e-17 -0.999999999999999 -2.2204460492503131e-16
		4.7000661966716148e-16 -0.92388000000000026 -0.38268300000000022
		5.255177708984193e-16 -0.7071069999999996 -0.70710699999999982
		4.8388440747497593e-16 -0.38268299999999955 -0.92388000000000048
		3.8902874612075654e-16 2.4737610236096238e-16 -1
		3.7286210501246028e-16 0.38268299999999961 -0.92387999999999959
		1.3693971227961451e-16 0.70710699999999982 -0.70710700000000026
		1.6469528789524343e-16 0.92387999999999937 -0.38268299999999977
		2.5917409817098869e-17 0.999999999999999 2.2204460492503131e-16
		-3.9041622441733484e-16 0.92388000000000026 0.38268300000000022
		-2.3776055853137582e-16 0.70710699999999926 0.70710699999999982
		-3.7653843660952039e-16 0.38268299999999905 0.92388000000000048
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		;
createNode transform -n "F_heel_out" -p "F_heel_CTL";
	rename -uid "F93F263B-4BDA-81B5-BA5F-52AFE5838570";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_heel_outShape" -p "F_heel_out";
	rename -uid "DE74346E-43D2-AC79-28CB-5E9C64D6EB25";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_heel_in" -p "F_heel_CTL";
	rename -uid "A56ED684-49BB-4726-1862-C6920B33C5D8";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_heel_inShape" -p "F_heel_in";
	rename -uid "944C8A01-4600-D53E-9860-439FF857FCD9";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_toe" -p "F_heel_CTL";
	rename -uid "6AECD8BF-4B2A-02D2-7612-73A11ADA8ACE";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00051588925943146791 -0.0082900448883849349 5.2313109798789199 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_toeShape" -p "F_toe";
	rename -uid "EE0036CA-4E6D-1EC3-6686-E1AF8AA2DFE4";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_toe_CTL" -p "F_toe";
	rename -uid "76C71961-4345-942C-B5B2-80B51137EE34";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_toe_CTLShape" -p "F_toe_CTL";
	rename -uid "94B0E72A-43C3-FFDD-1E45-30918FC67DB5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		-1.5449383168448908e-16 -0.38268299999999988 0.92387999999999959
		-1.4061604387667462e-16 -0.70710700000000004 0.70710700000000026
		-5.7349317029787868e-17 -0.92387999999999937 0.38268299999999977
		5.3672985432727786e-17 -0.999999999999999 -2.2204460492503131e-16
		4.7000661966716148e-16 -0.92388000000000026 -0.38268300000000022
		5.255177708984193e-16 -0.7071069999999996 -0.70710699999999982
		4.8388440747497593e-16 -0.38268299999999955 -0.92388000000000048
		3.8902874612075654e-16 2.4737610236096238e-16 -1
		3.7286210501246028e-16 0.38268299999999961 -0.92387999999999959
		1.3693971227961451e-16 0.70710699999999982 -0.70710700000000026
		1.6469528789524343e-16 0.92387999999999937 -0.38268299999999977
		2.5917409817098869e-17 0.999999999999999 2.2204460492503131e-16
		-3.9041622441733484e-16 0.92388000000000026 0.38268300000000022
		-2.3776055853137582e-16 0.70710699999999926 0.70710699999999982
		-3.7653843660952039e-16 0.38268299999999905 0.92388000000000048
		-2.9395048465625897e-16 -1.9334723558401659e-16 1
		;
createNode transform -n "F_ball" -p "F_toe_CTL";
	rename -uid "C3367D26-4DF3-376D-6601-40BE74DCC6D4";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.0569045308913587e-05 1.1824749912369816 -3.4152706560900583 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_ballShape" -p "F_ball";
	rename -uid "CAF2A3DF-405B-6F4B-01F1-F89FC05809EE";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_ball_CTL" -p "F_ball";
	rename -uid "61D1C1AC-4376-DB59-4AB8-50B327F1C705";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_ball_CTLShape" -p "F_ball_CTL";
	rename -uid "E2151D8B-4A4D-EB79-87F9-8689E257769E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-5.2911087238126586e-16 -3.4802502405122981e-16 1.8
		-2.7808889703208035e-16 -0.68882939999999981 1.6629839999999989
		-2.5310887897801422e-16 -1.2727925999999998 1.2727926000000001
		-1.0322877065361816e-16 -1.6629839999999985 0.68882939999999948
		9.6611373778910007e-17 -1.7999999999999978 -3.9968028886505636e-16
		8.460119154008906e-16 -1.6629840000000005 -0.68882940000000037
		9.4593198761715453e-16 -1.2727925999999994 -1.2727925999999996
		8.7099193345495648e-16 -0.68882939999999893 -1.6629840000000009
		7.0025174301736168e-16 4.452769842497323e-16 -1.8
		6.7115178902242832e-16 0.68882939999999893 -1.6629839999999989
		2.4649148210330603e-16 1.2727925999999996 -1.2727926000000001
		2.9645151821143804e-16 1.6629839999999985 -0.68882939999999948
		4.6651337670777961e-17 1.7999999999999978 3.9968028886505636e-16
		-7.027492039512027e-16 1.6629840000000005 0.68882940000000037
		-4.2796900535647644e-16 1.2727925999999987 1.2727925999999996
		-6.7776918589713652e-16 0.68882939999999826 1.6629840000000009
		-5.2911087238126586e-16 -3.4802502405122981e-16 1.8
		;
createNode transform -n "F_wrist" -p "F_ball_CTL";
	rename -uid "DCF7078A-4856-A44E-F35A-CFB00DD114FD";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.3389707120836647e-09 1.4962497208127892 -1.2294518227761628 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_wristShape" -p "F_wrist";
	rename -uid "31A1DA69-4F76-AE6D-302F-E9B632F9553A";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_wrist_CTL_offGRP" -p "F_wrist";
	rename -uid "32D35D8C-4F0F-794E-05D3-219D4E3BD5A2";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".r" -type "double3" -2.3854175277042937e-15 1.5530052155583574e-18 -2.4799552035947529e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_wrist_CTL_spcGRP" -p "F_wrist_CTL_offGRP";
	rename -uid "B8488D67-4F4C-7FDF-020A-7D9D02BCA9A0";
	setAttr ".r" -type "double3" -2.3854190443109495e-15 3.1060104311167156e-18 -2.4702489209975132e-17 ;
createNode transform -n "F_wrist_CTL" -p "F_wrist_CTL_spcGRP";
	rename -uid "788EC883-49D9-D516-5A16-E79FBC3EA4A0";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_wrist_CTLShape" -p "F_wrist_CTL";
	rename -uid "9A3F0094-4368-4BD3-CC1C-44AE3FFBE6DE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-6.4669106624376994e-16 -4.2536391828483644e-16 2.2000000000000002
		-3.3988642970587606e-16 -0.84190259999999995 2.0325359999999995
		-3.0935529652868417e-16 -1.5556354000000003 1.555635400000001
		-1.2616849746553335e-16 -2.0325359999999986 0.84190259999999972
		1.1808056795200114e-16 -2.199999999999998 -4.8849813083506892e-16
		1.0340145632677555e-15 -2.0325360000000008 -0.84190260000000061
		1.1561390959765225e-15 -1.5556353999999994 -1.5556353999999999
		1.0645456964449473e-15 -0.84190259999999928 -2.0325360000000012
		8.5586324146566429e-16 5.4422742519411721e-16 -2.2000000000000002
		8.202966310274125e-16 0.8419025999999995 -2.0325359999999995
		3.0126736701515193e-16 1.5556353999999999 -1.555635400000001
		3.6232963336953557e-16 2.0325359999999986 -0.84190259999999972
		5.7018301597617521e-17 2.199999999999998 4.8849813083506892e-16
		-8.5891569371813658e-16 2.0325360000000008 0.84190260000000061
		-5.2307322876902678e-16 1.5556353999999988 1.5556353999999999
		-8.2838456054094473e-16 0.84190259999999806 2.0325360000000012
		-6.4669106624376994e-16 -4.2536391828483644e-16 2.2000000000000002
		;
createNode transform -n "F_wrist_aim_space" -p "F_wrist_CTL";
	rename -uid "6B0C2793-451A-0AF8-DFF9-1AA3A77E513E";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode aimConstraint -n "F_wrist_aim_space_aimConstraint1" -p "F_wrist_aim_space";
	rename -uid "D0842C32-4875-47C5-08E3-88B6BF53A26A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_shoulderW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "IK_shoulder_aimW1" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -6.4286579269972588 -2.1738628119424888e-05 -0.13929470681934031 ;
	setAttr ".rsrr" -type "double3" -2.3854205609176053e-15 4.6590156466750726e-18 -2.4653957796988933e-17 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "F_wrist_space_offGRP" -p "F_wrist_aim_space";
	rename -uid "D990B269-4288-1287-F049-159821D5FDC2";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.018614958724327835 4.579519406561813 0.0038132307140870125 ;
	setAttr ".r" -type "double3" -2.1699802898036298 0.42445712589591633 0.044864058968832513 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
createNode transform -n "F_wrist_space_spcGRP" -p "F_wrist_space_offGRP";
	rename -uid "CB1F8254-4C90-9A07-5F51-ED8EC7B42D08";
createNode transform -n "F_wrist_space" -p "F_wrist_space_spcGRP";
	rename -uid "8091F9E6-4B88-C0C2-EBC3-38A7735B1B58";
createNode locator -n "F_wrist_spaceShape" -p "F_wrist_space";
	rename -uid "E0508A1B-4E50-2DA3-5117-51898FA07116";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle3" -p "F_wrist_space";
	rename -uid "DA7DED6E-405E-5AD2-4584-D19372602D34";
	setAttr ".s" -type "double3" 0.9999999750172448 0.99999999994995881 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -0.0074081065700528801 -0.037863174274077642 0.99925547771233592 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle3_parentConstraint1" -p "ikHandle3";
	rename -uid "3C768B0F-4081-872D-EA6B-3AA0792079F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_ballW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.7716762218688018e-10 7.1394286272230545e-05 
		-5.8896800879892908e-05 ;
	setAttr ".tg[0].tor" -type "double3" 0.36682853681318622 -39.407319203328072 -89.999981552702707 ;
	setAttr ".lr" -type "double3" 0.89700403054465816 -37.346726844911586 -90.383261207877155 ;
	setAttr ".rst" -type "double3" 0.00476462008062839 -6.1156346338057341 0.9968024784931373 ;
	setAttr ".rsrr" -type "double3" 0.89745150128600526 -37.235764614615547 -90.381970469649829 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle4" -p "F_wrist_space";
	rename -uid "B5E60C53-4087-F276-3DDF-04B08F6829D0";
	setAttr ".s" -type "double3" 0.99999998874520257 0.99999999995098687 1.0000000113038114 ;
	setAttr ".sh" -type "double3" -1.6826897862024359e-10 4.4638121360922514e-08 -2.7357316883618989e-10 ;
	setAttr ".pv" -type "double3" -0.0074081065700528801 -0.037863174274077642 0.99925547771233592 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle4_parentConstraint1" -p "ikHandle4";
	rename -uid "8016910E-4F65-3815-EC59-8D9A78350A36";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_toeW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.5437785211579467e-10 2.618031522595941e-05 
		-7.4774193357995955e-05 ;
	setAttr ".tg[0].tor" -type "double3" -2.5975841781504691e-08 -71.004315935678548 
		-89.999999932595045 ;
	setAttr ".lr" -type "double3" 1.173016197846283 -68.940879942804827 -91.15634010741914 ;
	setAttr ".rst" -type "double3" -0.021473307890486737 -7.4206173715559576 4.3671491872613508 ;
	setAttr ".rsrr" -type "double3" 1.1698569609664258 -68.829922977737894 -91.151831128654294 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "F_foot_CTL_CTLShape" -p "F_foot_CTL";
	rename -uid "F89332D9-4957-CA83-E432-8482C037A4AA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0.3000000000000016 1.4988357199199225e-30 5.1699999999999964
		2.4197620230600871 1.4988357199199225e-30 4.6927275999999942
		3.5222814035563763 1.4988357199199225e-30 3.3335608899999931
		3.4685279612796598 1.4988357199199225e-30 1.32158307598892
		3.0063172066211714 1.4988357199199225e-30 -0.7421881854534188
		2.6170910400000009 1.4988357199199225e-30 -2.2825079529172569
		2.2045401111173426 1.4988357199199225e-30 -3.0448193872381597
		1.5971190923804535 1.4988357199199225e-30 -3.2081490131832124
		0.3000000000000016 1.4988357199199225e-30 -3.1900000000000031
		-0.99711909238045027 1.4988357199199225e-30 -3.2081490131832124
		-1.6045401111173394 1.4988357199199225e-30 -3.0448193872381597
		-2.0170910399999977 1.4988357199199225e-30 -2.2825079529172569
		-2.4063172066211682 1.4988357199199225e-30 -0.7421881854534188
		-2.8685279612796566 1.4988357199199225e-30 1.32158307598892
		-2.9222814035563731 1.4988357199199225e-30 3.3335608899999931
		-1.8197620230600839 1.4988357199199225e-30 4.6927275999999942
		0.3000000000000016 1.4988357199199225e-30 5.1699999999999964
		;
createNode transform -n "IK_shoulder_aim" -p "F_foot_CTL";
	rename -uid "4F65056F-4CB0-8B44-CF95-A69431643FED";
	setAttr ".t" -type "double3" -0.073780542782908576 32.827532488643335 2.210316877696858 ;
	setAttr ".r" -type "double3" -0.87824312692754603 18.965198451129531 -90.051523022582671 ;
	setAttr ".s" -type "double3" 1.000000011279818 0.99999999995180244 0.99999998876838025 ;
	setAttr ".sh" -type "double3" 9.6423022695952796e-10 -4.4652488486428388e-08 1.2991909950836016e-10 ;
createNode transform -n "F_foot_upVec" -p "F_foot_CTL";
	rename -uid "C1AA9683-4AB3-A248-D80F-A884A2E83CF9";
	setAttr ".t" -type "double3" 5 7.2989347389391489e-10 8.8827831654602672e-10 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999933 ;
createNode transform -n "poleVec_GRP" -p "IK_arm_CTL_GRP";
	rename -uid "878909CB-4C9B-5830-D705-29939DDFD2BB";
	setAttr ".t" -type "double3" 37.979490170536849 -6.0674696538615542 -3.410347070883224 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "poleVec_CTL_offGRP" -p "poleVec_GRP";
	rename -uid "240ABC04-4072-664D-C6B3-5DB3E1EADB8B";
createNode transform -n "poleVec_CTL_spcGRP" -p "poleVec_CTL_offGRP";
	rename -uid "6B79DDC1-4741-A8C9-182C-7184279422F4";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "poleVec_CTL" -p "poleVec_CTL_spcGRP";
	rename -uid "2A8AD970-4B5A-FDF0-E302-AC9A1F4275D3";
	addAttr -ci true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow" 10;
createNode nurbsCurve -n "poleVec_CTLShape" -p "poleVec_CTL";
	rename -uid "08E69713-4FAE-D44B-FE79-A9AEB52A0C2B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 -1 0
		0 1 0
		0 0 0
		-1 0 0
		1 0 0
		0 0 0
		0 0 1
		0 0 -1
		;
createNode parentConstraint -n "poleVec_CTL_spcGRP_parentConstraint1" -p "poleVec_CTL_spcGRP";
	rename -uid "C7CD8D93-4F7B-4FDC-686E-4C8CC9D4408F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_scapula_aim_spaceW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.6666027547068341 -18.759387094784206 -13.187591647732884 ;
	setAttr ".tg[0].tor" -type "double3" -0.830660899182319 -0.86252342005626959 -89.75357273137945 ;
	setAttr ".lr" -type "double3" -0.001016420757502968 -0.00069054126410970603 4.2907853562161999e-05 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 0 -15 ;
	setAttr ".rsrr" -type "double3" 3.7893327259623928e-16 -9.939233379573485e-17 -1.2726440958783867e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "D1FCFA5F-413A-BABE-8612-5AAD819B5929";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "B24117DC-471E-28E9-CBCE-66A68113558E";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "A198C554-41B8-5A20-C00B-BE836957B44B";
createNode transform -n "FK_scapula_space_ivsScale" -p "FK_scapula_space";
	rename -uid "C5670C09-4029-AC0F-F13C-28BBB9E8D7D5";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space_ivsScale";
	rename -uid "7D95416A-43B4-58DA-0272-4888E5352015";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "9225BD8C-4F6D-D6D5-EA83-309EB3D8B896";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "F417E994-4623-ECBE-EA77-1DA127276A6B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "AE6265F8-4C72-C7DD-011E-0D8EF03CAF39";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489120928 3.1657909645605455 
		-3.9494025894518061 1.5208811495611016e-14 4.4771045177197264 -4.0594246889894417e-14 
		0.78361162489123903 3.1657909645605447 3.949402589451728 1.1081941875544024 3.8203347043845097e-15 
		5.585298705274071 0.78361162489123903 -3.1657909645605424 3.949402589451728 1.5387677388538157e-14 
		-4.4771045177197291 -3.9692762789541649e-14 -0.78361162489120928 -3.1657909645605424 
		-3.9494025894518061 -1.1081941875543737 2.9776996532734011e-15 -5.5852987052741581 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_shoulder_CTL_ivsScale" -p "FK_shoulder_CTL";
	rename -uid "EA5B9657-43C8-6042-24F6-B19C09053C80";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL_ivsScale";
	rename -uid "93EB915F-4962-948C-E20C-E39851DE5376";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "315F4483-4A7C-1E61-4DEB-6099CD58B8A7";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "0DB8E05A-46D8-E8F6-2AD7-A2BF63AFC29A";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "9955E0C9-4F3B-40A2-ED5C-DDA9715397E9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122449 2.507557199651917 
		-3.2911688245431394 -6.7857323231109109e-17 3.5462214001740411 -2.8500075757065798e-16 
		0.78361162489122449 2.5075571996519166 3.2911688245431394 1.1081941875543877 3.0260076866411964e-15 
		4.6544155877284279 0.78361162489122449 -2.5075571996519148 3.2911688245431394 1.1100856969603222e-16 
		-3.546221400174042 4.662359927233347e-16 -0.78361162489122449 -2.5075571996519148 
		-3.2911688245431394 -1.1081941875543877 2.3585739827908124e-15 -4.6544155877284279 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_B_elbow_CTL_ivsScale" -p "FK_B_elbow_CTL";
	rename -uid "A7DAA6FD-4860-9EAB-06FB-2992C7DAA247";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL_ivsScale";
	rename -uid "CFD6F2BA-4007-A349-67E3-E9822C908F93";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "CF9CD2A9-4380-8A36-1268-20878DEFD47F";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "1DA1746F-47FC-8D36-B66C-2BACDBCD8A24";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "3A157F4F-437F-D580-3397-77AA47A6ED7F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122471 1.5202065522889727 
		-2.3038181771802 -9.560357429312334e-16 2.1498967238555124 -2.8107450842178277e-15 
		0.78361162489122382 1.5202065522889734 2.3038181771801942 1.1081941875543868 -1.6116151084102595e-15 
		3.2580909114098997 0.78361162489122382 -1.5202065522889747 2.3038181771801942 -7.771698500040926e-16 
		-2.1498967238555124 -2.2848793590120329e-15 -0.78361162489122471 -1.5202065522889738 
		-2.3038181771802 -1.1081941875543875 -2.0162467913695526e-15 -3.2580909114098984 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_elbow_CTL_ivsScale" -p "FK_F_elbow_CTL";
	rename -uid "DD7097D7-4C8A-EAF7-143D-B4A10204CC9C";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL_ivsScale";
	rename -uid "7D7FD18A-4157-B302-6F81-11AC3BCADB1F";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "F54EFE30-4156-841F-0AC7-0B90BC9C0EA2";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "ECCF703F-4B2B-1A71-47A0-8691DAA05519";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "436C1573-491A-BF38-556E-28850D75F461";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489121816 1.5202065522889696 
		-2.3038181771801982 5.1546317846056251e-15 2.149896723855508 -1.9758573696997104e-15 
		0.78361162489122993 1.5202065522889703 2.3038181771801951 1.1081941875543933 -3.334681242628502e-15 
		3.2580909114098975 0.78361162489122993 -1.5202065522889763 2.3038181771801951 5.3334976775327602e-15 
		-2.1498967238555178 -1.4499916444939152e-15 -0.78361162489121816 -1.5202065522889761 
		-2.3038181771801982 -1.1081941875543815 -3.7393129255877975e-15 -3.258090911409901 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_wrist_CTL_ivsScale" -p "FK_F_wrist_CTL";
	rename -uid "723787B7-4A4C-92BF-A287-AA92F99D2EB3";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 5.3290705182007514e-15 ;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL_ivsScale";
	rename -uid "DA6BDACB-41CF-0B12-7697-B5A2C7899490";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "D70B48B7-405C-FC00-65E9-358408C2DDAB";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "65FEA9EE-4EC3-845C-496B-F88775223BD6";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "BD722346-4AD4-15D8-6861-1CA291980628";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.3282712403633923e-15 2.3038181771801942 -2.3038181771801982
		5.2224891078367339e-15 3.2580909114098957 -1.9758573696997104e-15
		5.440092820663267e-15 2.3038181771801947 2.3038181771801951
		5.1070259132757201e-15 -3.2772322602532537e-15 3.2580909114098975
		5.440092820663267e-15 -2.3038181771802009 2.3038181771801951
		5.2224891078367276e-15 -3.2580909114099059 -1.4499916444939152e-15
		6.3282712403633923e-15 -2.3038181771802004 -2.3038181771801982
		6.6613381477509392e-15 -3.890436975665793e-15 -3.258090911409901
		6.3282712403633923e-15 2.3038181771801942 -2.3038181771801982
		5.2224891078367339e-15 3.2580909114098957 -1.9758573696997104e-15
		5.440092820663267e-15 2.3038181771801947 2.3038181771801951
		;
createNode transform -n "arm_switch_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "2D02D612-414C-F5DE-87FC-09934F6B3C0D";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "E64DB8FB-4EAF-FDFD-007F-5A8B31D6BE00";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "5B963A30-4ED1-4755-3C8F-CCB87331B766";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "arm_switch_CTLShape" -p "arm_switch_CTL";
	rename -uid "875C2B2D-4871-E2CA-F849-1AA66787F8C4";
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
createNode transform -n "output" -p "arm_GRP";
	rename -uid "13BE5DFE-46E7-6846-E4AA-98A029B4BC91";
createNode joint -n "scapula" -p "output";
	rename -uid "C26CA76E-4E82-BF8B-B1B4-DA8647D6FDD7";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2393512725830087 40.812831878662109 14.152165412902832 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "shoulder" -p "scapula";
	rename -uid "48340038-4223-D252-ECC1-1A987346DB1A";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" -0.00084993439039065947 -0.94572613304137876 -0.32496371068318641 0
		 0.99988660578705413 0.0040822722865961943 -0.014495617330534881 0 0.015035474057453759 -0.32493917299342728 0.94561539728921973 0
		 6.131918907165522 32.827532283307441 19.585514834729398 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
	setAttr ".liw" yes;
createNode joint -n "B_elbow" -p "shoulder";
	rename -uid "FF381140-469E-7068-30D1-9B97FB480E62";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.0043004667597357589 -0.99987741862522994 0.015053324785649802 0
		 0.99988659963311088 0.0040822722614712731 -0.014495617241319559 0 0.014432389454057127 0.015113956570198983 0.99978164849407736 0
		 6.1224398711465104 22.280152394293935 15.961300177556662 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
	setAttr ".liw" yes;
createNode joint -n "F_elbow" -p "B_elbow";
	rename -uid "EBE6B294-4B62-EE46-FBD7-59AE8E5C41AA";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 0.0040647546198600846 -0.99999174444555394 1.0015585220554679e-08 0
		 0.99986866758645154 0.0040642541813794902 -0.015687298629525347 0 0.015687169273517574 6.37750346280299e-05 0.99987694555292417 0
		 6.1870846754343525 7.2499506264402154 16.187582038709117 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
	setAttr ".liw" yes;
createNode joint -n "wrist" -p "F_elbow";
	rename -uid "63B9A4FC-4443-6462-4D0F-33AA07230FA4";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.2090216449517355e-09 -0.77262754525373967 0.63485951873867463 0
		 0.99997950889902987 0.0040647038035248667 0.0049467689121796971 0 -0.0064025258013377852 0.63484650771783435 0.77261171075722979 0
		 6.2056994403799308 2.6704333985583721 16.187582030586924 1;
	setAttr ".liw" yes;
createNode joint -n "toe" -p "wrist";
	rename -uid "13676A49-43FD-817B-3B76-90AA021BBCC8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.4264964751965759e-09 -0.32548434718921404 0.94554742894126886 0
		 1.0000000076139905 -5.7668445366254595e-10 1.3101348764546494e-09 0 1.1885399088529258e-10 0.94554740967564044 0.32548434055743614 0
		 6.2056994382036024 1.1763863287781027 17.415223499195982 1;
	setAttr ".liw" yes;
createNode joint -n "tiptoe" -p "toe";
	rename -uid "3CDD9851-4345-D303-75FB-728A91BBD32E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999998623544251 -5.9477194556738798e-10 1.3626797335087274e-09 0
		 5.9477191898904237e-10 0.99999999693967512 -2.1310307796174044e-08 0 -1.3626798462024035e-09 2.1310307296573683e-08 0.99999999000123574 0
		 6.2056994334685038 1.4970899386845815e-07 20.832681790400944 1;
	setAttr ".liw" yes;
createNode decomposeMatrix -n "IK_shoulder_space_DCMX";
	rename -uid "DBDC45EF-4A7D-5193-5CA7-B8B23D3815B9";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "CEA47879-454E-0277-44AD-D9A580DD7507";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_CTLVal_MULT";
	rename -uid "9A244F30-4208-E00C-6E08-F8BA2C70D6C1";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "311B1249-431D-182F-DADE-F0BF3E032034";
createNode multiplyDivide -n "loarm_stretch_output_mul_CTLlVal_MULT";
	rename -uid "4FD17CAC-4BFA-68AF-13D5-549F69174009";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "54DD0ABE-402E-385F-2260-30BB61F96872";
createNode plusMinusAverage -n "soft_armLen_PMA";
	rename -uid "4CD35DD3-4B0F-F1EB-E85E-97B3EB768F6A";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "B77D63AE-4F86-F707-8A1D-53BE4933604F";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "8408ABA1-4CAE-C594-9B89-4D8AD498B609";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "6BD03AAF-449C-1A00-07B8-F3B8786D01B3";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midarmLen";
	rename -uid "53CCA6A5-4F86-47B7-6F6F-62A9E3E86D83";
createNode multMatrix -n "input_F_elbow_local_MTMX1";
	rename -uid "162DBBF3-4A91-AD49-79B0-559E48F6F5B7";
	setAttr -s 2 ".i";
createNode distanceBetween -n "upIKLen";
	rename -uid "134F7A6B-435D-BC86-AB5E-BD990CE6E10B";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "2260356C-41CA-0BC4-A02C-C291C5B3B046";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "E08CF9E7-4A23-4529-BAF7-DAAF8361CB40";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val_MULT";
	rename -uid "ACA462F1-46EB-F7FC-28F9-4BA0AB77A4A0";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "loIKLen";
	rename -uid "32990703-4B65-AF14-44CD-F79734CF557E";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "A841B858-413C-15BD-3696-F4B7F7AF646A";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "425774BE-4F6E-A25A-9CA5-FB98414643EF";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "loarm_soft_Len_PMA";
	rename -uid "4BFE637F-4EFE-0C4A-BE67-F18F303F05F3";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loarmLen";
	rename -uid "E6540B11-46D9-42C8-0DF2-02BDA270EE4E";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "ADA177D9-4A6B-F0DA-0B97-1789943F8B6B";
	setAttr -s 2 ".i";
createNode condition -n "CTLlen_COND";
	rename -uid "A9597ACC-4C34-FD53-6074-8CBACB6A48BF";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "B053CD9C-40E2-AA3F-4780-A0AD21172F7C";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len_SUBT";
	rename -uid "90E1B429-4CAA-E42F-4EED-509ABD0539A4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV_MULT";
	rename -uid "1D66DF71-4D80-4515-42DC-8E8DFD552472";
createNode multiplyDivide -n "power_val_POW";
	rename -uid "8615245A-4865-629E-290C-308AE3F83358";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val_MULT";
	rename -uid "C9CC292F-4797-46B6-D632-D98C90CAFC20";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_uparm_softikV_DIVD";
	rename -uid "C3C3D1DC-4A74-0A5D-5C02-FB880BBA758E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "CTLLen_minue_dif_SUBT";
	rename -uid "ADFADA84-4F2A-3765-8C82-9B9B0C617082";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV_SUBT";
	rename -uid "D0F5533E-45DF-B50B-7E95-8082A1F62808";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "2B6265CA-49BE-8758-3C4A-679EAF62907B";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_CTLlen_COND";
	rename -uid "0A60CCB0-4F03-42DE-6896-C09AAEEBF1F1";
	setAttr ".op" 2;
createNode condition -n "loarm_softikV_COND";
	rename -uid "E03F7DDC-4F00-9DC1-C3ED-508925085527";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_result_softik_len_SUBT";
	rename -uid "BBA3423F-4432-3B58-1FAC-EAA66F792863";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_mult_softikV_MULT";
	rename -uid "C476DF58-461A-448D-68D8-AF8AF3798813";
createNode multiplyDivide -n "loarm_power_val_POW";
	rename -uid "D59BF4C4-4C09-31C1-F3DF-9485F23E0786";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "loarm_negate_val_MULT";
	rename -uid "A5A2242A-4A33-0F07-54A9-4494FF450D2F";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_loarm_softikV_DIVD";
	rename -uid "96ACB8E2-4FCD-1B6D-62E7-6782D58FF77D";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_ctrlLen_minue_dif_SUBT";
	rename -uid "ACA1E9EA-471E-F89C-CE55-C29873690050";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_armlen_minus_softikV_SUBT";
	rename -uid "7B6F408B-4A17-1AA3-58E5-92820440D85C";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "midarm_plus_stretch_PMA";
	rename -uid "B7F3ABBA-46DD-4111-FD42-8DBBED1AF157";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_midarm_MULT";
	rename -uid "7D5E8462-4385-EB61-48E4-18877241FEB4";
createNode multiplyDivide -n "stretched_midarmLen_MULT";
	rename -uid "C47EA15E-4796-C5D0-F3C2-93BDB51DE427";
createNode plusMinusAverage -n "stretchedLen_SUBT";
	rename -uid "FF1592E2-4B4D-A97C-3012-E9A25DA9C625";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "midarm_ratio3_DIVD";
	rename -uid "F76078BD-43A0-DB88-5C1D-859FB966631C";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen_PMA";
	rename -uid "A4141CAC-4D91-B348-FEC8-0BA1076EB2DB";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch_PMA";
	rename -uid "7698CE90-453E-8FFB-3DE0-138149D2B46F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm_MULT";
	rename -uid "D8283870-451D-0A65-8991-71AD1465E66D";
createNode multiplyDivide -n "stretched_uparmLen_MULT";
	rename -uid "F3DDEF4C-41D9-F02B-D8BC-E6AE32572D6E";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "74DEDFCC-4E94-DA12-29FC-E0A887769A2E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_plus_stretch_PMA";
	rename -uid "6D3056B7-4F9E-2FB1-6BC0-D7A581FD7BB9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_stretchCtrl_arm_MULT";
	rename -uid "6EEDD5DB-45AF-31D6-FE7E-4889DEA5B36D";
createNode multiplyDivide -n "loarm_stretched_arm_MULT";
	rename -uid "908ED5CF-44F2-BF08-5C98-688589DAF53A";
createNode plusMinusAverage -n "loarm_stretchedLen_SUBT";
	rename -uid "43E60FB2-4A7F-53D9-B416-D0959F8C2567";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio_DIVD";
	rename -uid "E0B77567-479D-0EEA-95ED-82AFE96CCB0E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_stretch_armLen_PMA";
	rename -uid "C947FD76-4165-AB8D-A78E-3788A9862F19";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "7FA88994-4019-2962-557F-61AF2DCA0758";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "19F0860C-4C4A-035A-D438-BE8752F6F826";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "48FCAF2C-4909-6D2B-D6AD-FBBB73B94D85";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "8A8DECBE-4750-CAE7-500D-9591987759B7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_wrist_space_scale_DCMX";
	rename -uid "2DDE3C11-468E-38D1-8402-A4AE1FAF1250";
createNode decomposeMatrix -n "F_wrist_CTL_scale_DCMX";
	rename -uid "39A65A91-41FB-57F0-76D3-64992DE0EA4D";
createNode decomposeMatrix -n "F_ball_CTL_scale_DCMX";
	rename -uid "649A507E-45EC-E205-780D-A0A867FB1DD1";
createNode decomposeMatrix -n "FK_shoulder_CTL_local_DCMX";
	rename -uid "88D24997-406D-DA41-C1A5-3D9865B1ECB8";
createNode multMatrix -n "FK_shoulder_CTL_local_MTMX";
	rename -uid "2A8392FB-427B-413E-D7EA-E18FBB6593EE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_elbow_CTL_local_DCMX";
	rename -uid "9C83230A-49D7-10A3-D8B3-A8BF7C3193D7";
createNode multMatrix -n "FK_B_elbow_CTL_local_MTMX";
	rename -uid "D76CDEB4-4A47-269D-1412-1096BAFB8A6F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_elbow_CTL_local_DCMX";
	rename -uid "171824BE-4195-8A3D-5613-7BAA716992D8";
createNode multMatrix -n "FK_F_elbow_CTL_local_MTMX";
	rename -uid "0430757A-4950-D703-403F-9EA27926F884";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_wrist_CTL_local_DCMX";
	rename -uid "F0C1E1C4-4DF0-E0C5-D893-2BB347880DF2";
createNode multMatrix -n "FK_F_wrist_CTL_local_MTMX";
	rename -uid "E2C79776-4FC4-4FF1-4DFA-08972123D752";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_toe_CTL_local_DCMX";
	rename -uid "CCEC31CA-4403-9B5F-8FBC-A19BCDE04072";
createNode multMatrix -n "FK_F_toe_CTL_local_MTMX";
	rename -uid "B410EC47-437D-8D60-D4DF-CAA50069FE02";
	setAttr -s 2 ".i";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "5663C972-4D62-381B-E1BE-C4916FF91058";
createNode decomposeMatrix -n "scapula_CTL_inverse_DCMX";
	rename -uid "14C7F8F7-4DBE-596C-BEB4-0899DF0CDE78";
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "B075C8DD-4C7F-D071-FAE7-C9AE27975D4A";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "A33F3E0F-4FF8-EE20-3D04-AC9963087841";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion1";
	rename -uid "3DE82205-46C7-4259-56BE-409170ECB05B";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition";
	rename -uid "99FB30B4-4C85-4C70-A579-689500EDA2EB";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "6F98D4CD-40C7-E101-7BEC-78AB44EAAE85";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "8B9CC747-40FD-F735-BEF4-6FA281A15C46";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition";
	rename -uid "7376956F-419C-661A-DBEF-29BA20441377";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition";
	rename -uid "0E95A687-4B67-6BF2-54A5-A9AE17594D46";
createNode unitConversion -n "unitConversion3";
	rename -uid "89CA3BD7-4055-BA14-8A09-CFA2C8B81B5E";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "652FE9A9-42E9-B6FA-F21D-7294B2FE4A3F";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "roll_angle_SUBT";
	rename -uid "61354D61-4E20-5438-8AFB-B5A7B8C31CCF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion6";
	rename -uid "FDF0BCBA-49B0-D2E5-05B5-7DAFCCF27B5D";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "A15C7D29-49AF-4E8E-6AD0-58B59D9F701B";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "F315601C-4E5B-5FF6-728E-8F8449277CD2";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "37AA4D9A-42B1-8C45-8DA1-6C970BDB1B85";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon";
	rename -uid "74790488-4A3C-CA89-B360-9AAFE4D2706D";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition";
	rename -uid "37392EFE-40B9-F26F-EAAE-F0BF370918B9";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball_SUBT";
	rename -uid "5BA78667-484A-CFBB-DF9F-528564F747E6";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap";
	rename -uid "B53CF561-4516-F54C-3FB9-CF8C47514CDC";
	setAttr ".imx" 90;
	setAttr -s 3 ".vl[0:2]"  0 0 2 1 1 3 1 1 2;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "after_ball_start_SUBT";
	rename -uid "6539F4C6-4459-499C-8B0B-19A85802CCDF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "A83E54D5-4705-E72D-67E3-D6BE29A5BE28";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "6630B875-4104-AD5F-467A-F6BCC0F6512C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_wrist_local_DCMX1";
	rename -uid "8F6C8139-46D4-230C-A094-7AAA88B374F0";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "478737DB-4D85-C627-229F-A681D685148C";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion7";
	rename -uid "6D25906B-40DD-DE82-1955-CEB1512D4596";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS";
	rename -uid "DBE2B605-435A-89D2-94FD-FABA52474D53";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "B8EF67E9-4E74-212E-3DEE-26BA718C1D0A";
createNode multMatrix -n "input_F_elbow_local_MTMX2";
	rename -uid "A7B3193F-4D1A-579B-59F6-A69D4145D294";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX";
	rename -uid "E0A16FA4-4597-8CEE-5A6C-2B8161AC0138";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX";
	rename -uid "F6DF4C21-4756-862E-90BB-DFBFCACD9611";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion8";
	rename -uid "D8B9A9B1-4B40-BD8A-705B-27807A71A93C";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIK_RVS";
	rename -uid "C213B5B1-4EDE-A8B3-4153-ABBFA4EB1D58";
createNode decomposeMatrix -n "FK_scapula_space_inverse_DCMX";
	rename -uid "4AE83E02-4048-ACD5-6A08-9784B4695232";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "A32A30DA-4933-7945-A5B0-A2A86A0AA389";
createNode decomposeMatrix -n "FK_shoulder_CTL_inverse_DCMX";
	rename -uid "A717642E-4C24-A5D2-58F7-26B7C63BCC24";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "85495684-4554-3EBE-4DF4-5A87E4D7B669";
createNode decomposeMatrix -n "FK_B_elbow_CTL_inverse_DCMX";
	rename -uid "50482038-4C06-48D0-1323-88A334A5AF05";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "F0E53470-44A8-EDE3-2457-F0AA7E1312FF";
createNode decomposeMatrix -n "FK_F_elbow_CTL_inverse_DCMX";
	rename -uid "823ED724-425A-7C94-A9C8-56A638C05DC3";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "70375E6B-4EFE-0D35-B766-069A60D50F87";
createNode decomposeMatrix -n "FK_F_wrist_CTL_inverse_DCMX";
	rename -uid "3CEC1ED1-4EA1-7B06-A8EC-07BB783C6046";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "8955F140-49D6-10F6-A81B-20989EA29AB0";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "EB490FC9-4600-59CF-6902-9E8696CB4CA6";
	setAttr -s 2 ".i";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "3CF37146-4AA0-1B11-FAF6-9CA7E5A33EC8";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "2BB88F56-49E4-00FB-1207-FF919124BFC8";
createNode blendColors -n "scapula_BLCL";
	rename -uid "024D2A7C-4A14-179F-34D9-95932E3F2689";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "8DFB225A-4BE1-CE98-74CD-6F82999A080B";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "B616B64D-428C-965E-466A-6BBA80AE4960";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "7F68D60F-4DF1-C00E-54B0-D0916BE1CC03";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "D6FB040C-44CB-E3D7-6679-F3BB94CC4DC9";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "DBDA851E-4B8D-8721-A1B3-AD94143A21B3";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "5875FDF6-4AB7-ADED-6460-4D9E845AD96F";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "00203B21-4429-6F3D-A02A-36A9A55BC357";
createNode blendColors -n "wrist_BLCL";
	rename -uid "6CA08DAE-4D00-188E-88F1-EA99638F2FF7";
createNode pairBlend -n "toe_PRBL";
	rename -uid "37A55248-44A7-7548-F5FB-80B6938ED047";
createNode blendColors -n "toe_BLCL";
	rename -uid "CDF6226B-45B3-1E48-9E1A-BF81EE2AEAD4";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "603B6067-4FE3-C6B5-AD39-919DE347EDFE";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "30557B59-441A-D2D6-74CF-8A88BAEF8BC0";
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
	setAttr -s 107 ".u";
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
	setAttr -s 2 ".sol";
connectAttr "input_scapula.init" "arm_GRP.init" -na;
connectAttr "input_shoulder.init" "arm_GRP.init" -na;
connectAttr "input_B_elbow.init" "arm_GRP.init" -na;
connectAttr "input_F_elbow.init" "arm_GRP.init" -na;
connectAttr "input_wrist.init" "arm_GRP.init" -na;
connectAttr "input_scapula.t" "motion_IK_GRP.t";
connectAttr "input_scapula.r" "motion_IK_GRP.r";
connectAttr "input_scapula.s" "motion_IK_GRP.s";
connectAttr "arm_switch_CTL.FK_IK" "motion_IK_GRP.v";
connectAttr "IK_shoulder_space_DCMX.ot" "IK_shoulder_space.t";
connectAttr "IK_shoulder_space_DCMX.or" "IK_shoulder_space.r";
connectAttr "IK_shoulder_space_DCMX.os" "IK_shoulder_space.s";
connectAttr "IK_upper_CTLaim_aimConstraint1.crx" "IK_upper_CTLaim.rx";
connectAttr "IK_upper_CTLaim_aimConstraint1.cry" "IK_upper_CTLaim.ry";
connectAttr "IK_upper_CTLaim_aimConstraint1.crz" "IK_upper_CTLaim.rz";
connectAttr "softIK_output.output_softik" "upper_softIK_output_LOC.tx";
connectAttr "stretch_output_mul_CTLVal_MULT.ox" "upper_stretch_output_LOC.tx";
connectAttr "F_wrist_CTL.r" "wrist_space.r";
connectAttr "F_wrist_CTL.t" "wrist_space.t";
connectAttr "IK_shoulder.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver1.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "IK_shoulder.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "IK_shoulder.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "poleVec_CTL.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "poleVec_CTL.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "poleVec_CTL.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "poleVec_CTL.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_lower_CTLaim_aimConstraint1.crx" "IK_lower_CTLaim.rx";
connectAttr "IK_lower_CTLaim_aimConstraint1.cry" "IK_lower_CTLaim.ry";
connectAttr "IK_lower_CTLaim_aimConstraint1.crz" "IK_lower_CTLaim.rz";
connectAttr "softIK_output.output_extended_softik" "lower_softIK_output_LOC.tx";
connectAttr "loarm_stretch_output_mul_CTLlVal_MULT.ox" "lower_stretch_output_LOC.tx"
		;
connectAttr "IK_F_elbow.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikSCsolver1.msg" "ikHandle2.hsv";
connectAttr "IK_lower_CTLaim.pim" "IK_lower_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lower_CTLaim.t" "IK_lower_CTLaim_aimConstraint1.ct";
connectAttr "IK_lower_CTLaim.rp" "IK_lower_CTLaim_aimConstraint1.crp";
connectAttr "IK_lower_CTLaim.rpt" "IK_lower_CTLaim_aimConstraint1.crt";
connectAttr "IK_lower_CTLaim.ro" "IK_lower_CTLaim_aimConstraint1.cro";
connectAttr "F_wrist.t" "IK_lower_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_wrist.rp" "IK_lower_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_wrist.rpt" "IK_lower_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_wrist.pm" "IK_lower_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lower_CTLaim_aimConstraint1.w0" "IK_lower_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_space_upVec.wm" "IK_lower_CTLaim_aimConstraint1.wum";
connectAttr "IK_upper_CTLaim.pim" "IK_upper_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upper_CTLaim.t" "IK_upper_CTLaim_aimConstraint1.ct";
connectAttr "IK_upper_CTLaim.rp" "IK_upper_CTLaim_aimConstraint1.crp";
connectAttr "IK_upper_CTLaim.rpt" "IK_upper_CTLaim_aimConstraint1.crt";
connectAttr "IK_upper_CTLaim.ro" "IK_upper_CTLaim_aimConstraint1.cro";
connectAttr "F_wrist_space.t" "IK_upper_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_wrist_space.rp" "IK_upper_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_wrist_space.rpt" "IK_upper_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_wrist_space.pm" "IK_upper_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upper_CTLaim_aimConstraint1.w0" "IK_upper_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_shoulder_space_upVec.wm" "IK_upper_CTLaim_aimConstraint1.wum";
connectAttr "soft_armLen_PMA.o1" "softIK_input.uparmLen";
connectAttr "upIKLen.d" "softIK_input.CTLLen";
connectAttr "IK_negate_val_MULT.ox" "softIK_input.softik_CTL_value";
connectAttr "loIKLen.d" "softIK_input.loarmIK_len";
connectAttr "loarm_soft_Len_PMA.o1" "softIK_input.loarm_len";
connectAttr "CTLlen_COND.ocr" "softIK_output.output_softik";
connectAttr "loarm_CTLlen_COND.ocr" "softIK_output.output_extended_softik";
connectAttr "softIK_output.output_softik" "stretchIK_input.softik_len";
connectAttr "IK_negate_val_MULT.oy" "stretchIK_input.stretch_ctrl_value";
connectAttr "uparmLen.d" "stretchIK_input.uparm_len";
connectAttr "upIKLen.d" "stretchIK_input.ctrl_len";
connectAttr "midarmLen.d" "stretchIK_input.loarm_len";
connectAttr "loarmLen.d" "stretchIK_input.extendedarm_len";
connectAttr "softIK_output.output_extended_softik" "stretchIK_input.extended_softik_len"
		;
connectAttr "loIKLen.d" "stretchIK_input.extended_ctrl_len";
connectAttr "midarm_plus_stretch_PMA.o1" "stretchIK_output.loarm_stretched";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchIK_output.stretch_ctrl_value"
		;
connectAttr "stretchedLen_SUBT.o1" "stretchIK_output.stretched_len";
connectAttr "uparm_plus_stretch_PMA.o1" "stretchIK_output.uparm_stretched";
connectAttr "loarm_plus_stretch_PMA.o1" "stretchIK_output.extendedarm_stretched"
		;
connectAttr "loarm_stretchedLen_SUBT.o1" "stretchIK_output.expand_stretched_len"
		;
connectAttr "scapula_CTL_local_DCMX.ot" "IK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "IK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "IK_scapula.r";
connectAttr "input_scapula.r" "IK_scapula.jo";
connectAttr "IK_shoulder_CTL_local_DCMX.ot" "IK_shoulder.t";
connectAttr "IK_scapula.s" "IK_shoulder.is";
connectAttr "IK_shoulder_CTL.s" "IK_shoulder.s";
connectAttr "input_shoulder.r" "IK_shoulder.jo";
connectAttr "stretchIK_output.uparm_stretched" "IK_B_elbow.tx";
connectAttr "IK_shoulder.s" "IK_B_elbow.is";
connectAttr "input_B_elbow.r" "IK_B_elbow.jo";
connectAttr "stretchIK_output.loarm_stretched" "IK_F_elbow.tx";
connectAttr "IK_B_elbow.s" "IK_F_elbow.is";
connectAttr "F_wrist_space_scale_DCMX.os" "IK_F_elbow.s";
connectAttr "input_F_elbow.r" "IK_F_elbow.jo";
connectAttr "IK_F_elbow.s" "IK_wrist.is";
connectAttr "stretchIK_output.extendedarm_stretched" "IK_wrist.tx";
connectAttr "F_wrist_CTL_scale_DCMX.os" "IK_wrist.s";
connectAttr "input_wrist.r" "IK_wrist.jo";
connectAttr "IK_wrist.s" "IK_toe.is";
connectAttr "F_ball_CTL_scale_DCMX.os" "IK_toe.s";
connectAttr "input_toe.t" "IK_toe.t";
connectAttr "input_toe.r" "IK_toe.jo";
connectAttr "IK_toe.s" "IK_tiptoe.is";
connectAttr "input_tiptoe.t" "IK_tiptoe.t";
connectAttr "input_tiptoe.r" "IK_tiptoe.jo";
connectAttr "IK_tiptoe.tx" "effector4.tx";
connectAttr "IK_tiptoe.ty" "effector4.ty";
connectAttr "IK_tiptoe.tz" "effector4.tz";
connectAttr "IK_toe.tx" "effector3.tx";
connectAttr "IK_toe.ty" "effector3.ty";
connectAttr "IK_toe.tz" "effector3.tz";
connectAttr "IK_wrist.tx" "effector2.tx";
connectAttr "IK_wrist.ty" "effector2.ty";
connectAttr "IK_wrist.tz" "effector2.tz";
connectAttr "poleVec_CTLShape.wm" "annotationShape1.dom" -na;
connectAttr "IK_F_elbow.tx" "effector1.tx";
connectAttr "IK_F_elbow.ty" "effector1.ty";
connectAttr "IK_F_elbow.tz" "effector1.tz";
connectAttr "IK_scapula_aim_space_aimConstraint1.crx" "IK_scapula_aim_space.rx";
connectAttr "IK_scapula_aim_space_aimConstraint1.cry" "IK_scapula_aim_space.ry";
connectAttr "IK_scapula_aim_space_aimConstraint1.crz" "IK_scapula_aim_space.rz";
connectAttr "IK_scapula_aim_space_pointConstraint1.ctx" "IK_scapula_aim_space.tx"
		;
connectAttr "IK_scapula_aim_space_pointConstraint1.cty" "IK_scapula_aim_space.ty"
		;
connectAttr "IK_scapula_aim_space_pointConstraint1.ctz" "IK_scapula_aim_space.tz"
		;
connectAttr "IK_scapula_aim_space.pim" "IK_scapula_aim_space_aimConstraint1.cpim"
		;
connectAttr "IK_scapula_aim_space.t" "IK_scapula_aim_space_aimConstraint1.ct";
connectAttr "IK_scapula_aim_space.rp" "IK_scapula_aim_space_aimConstraint1.crp";
connectAttr "IK_scapula_aim_space.rpt" "IK_scapula_aim_space_aimConstraint1.crt"
		;
connectAttr "IK_scapula_aim_space.ro" "IK_scapula_aim_space_aimConstraint1.cro";
connectAttr "F_foot_CTL.t" "IK_scapula_aim_space_aimConstraint1.tg[0].tt";
connectAttr "F_foot_CTL.rp" "IK_scapula_aim_space_aimConstraint1.tg[0].trp";
connectAttr "F_foot_CTL.rpt" "IK_scapula_aim_space_aimConstraint1.tg[0].trt";
connectAttr "F_foot_CTL.pm" "IK_scapula_aim_space_aimConstraint1.tg[0].tpm";
connectAttr "IK_scapula_aim_space_aimConstraint1.w0" "IK_scapula_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "F_foot_upVec.wm" "IK_scapula_aim_space_aimConstraint1.wum";
connectAttr "IK_scapula_aim_space.pim" "IK_scapula_aim_space_pointConstraint1.cpim"
		;
connectAttr "IK_scapula_aim_space.rp" "IK_scapula_aim_space_pointConstraint1.crp"
		;
connectAttr "IK_scapula_aim_space.rpt" "IK_scapula_aim_space_pointConstraint1.crt"
		;
connectAttr "IK_shoulder.t" "IK_scapula_aim_space_pointConstraint1.tg[0].tt";
connectAttr "IK_shoulder.rp" "IK_scapula_aim_space_pointConstraint1.tg[0].trp";
connectAttr "IK_shoulder.rpt" "IK_scapula_aim_space_pointConstraint1.tg[0].trt";
connectAttr "IK_shoulder.pm" "IK_scapula_aim_space_pointConstraint1.tg[0].tpm";
connectAttr "IK_scapula_aim_space_pointConstraint1.w0" "IK_scapula_aim_space_pointConstraint1.tg[0].tw"
		;
connectAttr "input_scapula.t" "motion_FK_GRP.t";
connectAttr "input_scapula.r" "motion_FK_GRP.r";
connectAttr "input_scapula.s" "motion_FK_GRP.s";
connectAttr "scapula_CTL.t" "FK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "FK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "FK_scapula.r";
connectAttr "FK_scapula.s" "FK_shoulder.is";
connectAttr "FK_shoulder_CTL_local_DCMX.ot" "FK_shoulder.t";
connectAttr "FK_shoulder_CTL.r" "FK_shoulder.r";
connectAttr "input_shoulder.r" "FK_shoulder.jo";
connectAttr "FK_shoulder_CTL.s" "FK_shoulder.s";
connectAttr "FK_B_elbow_CTL_local_DCMX.ot" "FK_B_elbow.t";
connectAttr "FK_B_elbow_CTL.r" "FK_B_elbow.r";
connectAttr "input_B_elbow.r" "FK_B_elbow.jo";
connectAttr "FK_B_elbow_CTL.s" "FK_B_elbow.s";
connectAttr "FK_shoulder.s" "FK_B_elbow.is";
connectAttr "FK_F_elbow_CTL_local_DCMX.ot" "FK_F_elbow.t";
connectAttr "input_F_elbow.r" "FK_F_elbow.jo";
connectAttr "FK_B_elbow.s" "FK_F_elbow.is";
connectAttr "FK_F_elbow_CTL.r" "FK_F_elbow.r";
connectAttr "FK_F_elbow_CTL.s" "FK_F_elbow.s";
connectAttr "FK_F_elbow.s" "FK_wrist.is";
connectAttr "FK_F_wrist_CTL_local_DCMX.ot" "FK_wrist.t";
connectAttr "input_wrist.r" "FK_wrist.jo";
connectAttr "FK_F_wrist_CTL.r" "FK_wrist.r";
connectAttr "FK_F_wrist_CTL.s" "FK_wrist.s";
connectAttr "FK_wrist.s" "FK_toe.is";
connectAttr "FK_F_toe_CTL_local_DCMX.ot" "FK_toe.t";
connectAttr "input_toe.r" "FK_toe.jo";
connectAttr "FK_F_toe_CTL.r" "FK_toe.r";
connectAttr "FK_F_toe_CTL.s" "FK_toe.s";
connectAttr "FK_toe.s" "FK_tiptoe.is";
connectAttr "input_tiptoe.t" "FK_tiptoe.t";
connectAttr "input_tiptoe.r" "FK_tiptoe.jo";
connectAttr "input_scapula.t" "arm_CTL_GRP.t";
connectAttr "input_scapula.r" "arm_CTL_GRP.r";
connectAttr "input_scapula.s" "arm_CTL_GRP.s";
connectAttr "makeNurbCircle1.oc" "scapula_CTLShape.cr";
connectAttr "scapula_CTL_inverse_DCMX.os" "scapula_CTL_ivsScale.s";
connectAttr "input_shoulder.t" "IK_shoulder_CTL_offGRP.t";
connectAttr "arm_switch_CTL.FK_IK" "IK_shoulder_CTL_offGRP.v";
connectAttr "arm_switch_CTL.FK_IK" "IK_arm_CTL_GRP.v";
connectAttr "input_shoulder.t" "IK_arm_CTL_GRP.t";
connectAttr "input_wrist_local_DCMX.ot" "input_F_toe_space.t";
connectAttr "input_wrist_local_DCMX.os" "input_F_toe_space.s";
connectAttr "unitConversion1.o" "F_heel.rx";
connectAttr "unitConversion4.o" "F_heel.rz";
connectAttr "unitConversion5.o" "F_heel.ry";
connectAttr "in_out_condition.oc" "F_heel.rp";
connectAttr "unitConversion3.o" "F_toe.rx";
connectAttr "unitConversion6.o" "F_toe.ry";
connectAttr "input_tiptoe_local_DCMX.ot" "F_toe.rebuildTrans";
connectAttr "unitConversion2.o" "F_ball.rx";
connectAttr "input_toe_local_DCMX.ot" "F_ball.rebuildTrans";
connectAttr "input_wrist_local_DCMX1.ot" "F_wrist.rebuildTrans";
connectAttr "F_wrist_aim_space_aimConstraint1.crx" "F_wrist_aim_space.rx";
connectAttr "F_wrist_aim_space_aimConstraint1.cry" "F_wrist_aim_space.ry";
connectAttr "F_wrist_aim_space_aimConstraint1.crz" "F_wrist_aim_space.rz";
connectAttr "unitConversion7.o" "F_wrist_aim_space_aimConstraint1.w0";
connectAttr "toesAim_RVS.ox" "F_wrist_aim_space_aimConstraint1.w1";
connectAttr "F_wrist_aim_space.pim" "F_wrist_aim_space_aimConstraint1.cpim";
connectAttr "F_wrist_aim_space.t" "F_wrist_aim_space_aimConstraint1.ct";
connectAttr "F_wrist_aim_space.rp" "F_wrist_aim_space_aimConstraint1.crp";
connectAttr "F_wrist_aim_space.rpt" "F_wrist_aim_space_aimConstraint1.crt";
connectAttr "F_wrist_aim_space.ro" "F_wrist_aim_space_aimConstraint1.cro";
connectAttr "IK_shoulder.t" "F_wrist_aim_space_aimConstraint1.tg[0].tt";
connectAttr "IK_shoulder.rp" "F_wrist_aim_space_aimConstraint1.tg[0].trp";
connectAttr "IK_shoulder.rpt" "F_wrist_aim_space_aimConstraint1.tg[0].trt";
connectAttr "IK_shoulder.pm" "F_wrist_aim_space_aimConstraint1.tg[0].tpm";
connectAttr "F_wrist_aim_space_aimConstraint1.w0" "F_wrist_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_shoulder_aim.t" "F_wrist_aim_space_aimConstraint1.tg[1].tt";
connectAttr "IK_shoulder_aim.rp" "F_wrist_aim_space_aimConstraint1.tg[1].trp";
connectAttr "IK_shoulder_aim.rpt" "F_wrist_aim_space_aimConstraint1.tg[1].trt";
connectAttr "IK_shoulder_aim.pm" "F_wrist_aim_space_aimConstraint1.tg[1].tpm";
connectAttr "F_wrist_aim_space_aimConstraint1.w1" "F_wrist_aim_space_aimConstraint1.tg[1].tw"
		;
connectAttr "IK_wrist_aim.wm" "F_wrist_aim_space_aimConstraint1.wum";
connectAttr "input_F_elbow_local_DCMX.ot" "F_wrist_space_offGRP.rebuildTrans";
connectAttr "IK_wrist.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikSCsolver1.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_parentConstraint1.ctx" "ikHandle3.tx";
connectAttr "ikHandle3_parentConstraint1.cty" "ikHandle3.ty";
connectAttr "ikHandle3_parentConstraint1.ctz" "ikHandle3.tz";
connectAttr "ikHandle3_parentConstraint1.crx" "ikHandle3.rx";
connectAttr "ikHandle3_parentConstraint1.cry" "ikHandle3.ry";
connectAttr "ikHandle3_parentConstraint1.crz" "ikHandle3.rz";
connectAttr "ikHandle3.ro" "ikHandle3_parentConstraint1.cro";
connectAttr "ikHandle3.pim" "ikHandle3_parentConstraint1.cpim";
connectAttr "ikHandle3.rp" "ikHandle3_parentConstraint1.crp";
connectAttr "ikHandle3.rpt" "ikHandle3_parentConstraint1.crt";
connectAttr "F_ball.t" "ikHandle3_parentConstraint1.tg[0].tt";
connectAttr "F_ball.rp" "ikHandle3_parentConstraint1.tg[0].trp";
connectAttr "F_ball.rpt" "ikHandle3_parentConstraint1.tg[0].trt";
connectAttr "F_ball.r" "ikHandle3_parentConstraint1.tg[0].tr";
connectAttr "F_ball.ro" "ikHandle3_parentConstraint1.tg[0].tro";
connectAttr "F_ball.s" "ikHandle3_parentConstraint1.tg[0].ts";
connectAttr "F_ball.pm" "ikHandle3_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle3_parentConstraint1.w0" "ikHandle3_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_toe.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikSCsolver1.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_parentConstraint1.ctx" "ikHandle4.tx";
connectAttr "ikHandle4_parentConstraint1.cty" "ikHandle4.ty";
connectAttr "ikHandle4_parentConstraint1.ctz" "ikHandle4.tz";
connectAttr "ikHandle4_parentConstraint1.crx" "ikHandle4.rx";
connectAttr "ikHandle4_parentConstraint1.cry" "ikHandle4.ry";
connectAttr "ikHandle4_parentConstraint1.crz" "ikHandle4.rz";
connectAttr "ikHandle4.ro" "ikHandle4_parentConstraint1.cro";
connectAttr "ikHandle4.pim" "ikHandle4_parentConstraint1.cpim";
connectAttr "ikHandle4.rp" "ikHandle4_parentConstraint1.crp";
connectAttr "ikHandle4.rpt" "ikHandle4_parentConstraint1.crt";
connectAttr "F_toe.t" "ikHandle4_parentConstraint1.tg[0].tt";
connectAttr "F_toe.rp" "ikHandle4_parentConstraint1.tg[0].trp";
connectAttr "F_toe.rpt" "ikHandle4_parentConstraint1.tg[0].trt";
connectAttr "F_toe.r" "ikHandle4_parentConstraint1.tg[0].tr";
connectAttr "F_toe.ro" "ikHandle4_parentConstraint1.tg[0].tro";
connectAttr "F_toe.s" "ikHandle4_parentConstraint1.tg[0].ts";
connectAttr "F_toe.pm" "ikHandle4_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle4_parentConstraint1.w0" "ikHandle4_parentConstraint1.tg[0].tw"
		;
connectAttr "upper_poleVec_offGRP_space_DCMX.ot" "poleVec_CTL_offGRP.t";
connectAttr "upper_poleVec_offGRP_space_DCMX.or" "poleVec_CTL_offGRP.r";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.ctx" "poleVec_CTL_spcGRP.tx";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.cty" "poleVec_CTL_spcGRP.ty";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.ctz" "poleVec_CTL_spcGRP.tz";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.crx" "poleVec_CTL_spcGRP.rx";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.cry" "poleVec_CTL_spcGRP.ry";
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.crz" "poleVec_CTL_spcGRP.rz";
connectAttr "poleVec_CTL_spcGRP.ro" "poleVec_CTL_spcGRP_parentConstraint1.cro";
connectAttr "poleVec_CTL_spcGRP.pim" "poleVec_CTL_spcGRP_parentConstraint1.cpim"
		;
connectAttr "poleVec_CTL_spcGRP.rp" "poleVec_CTL_spcGRP_parentConstraint1.crp";
connectAttr "poleVec_CTL_spcGRP.rpt" "poleVec_CTL_spcGRP_parentConstraint1.crt";
connectAttr "IK_scapula_aim_space.t" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tt"
		;
connectAttr "IK_scapula_aim_space.rp" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_scapula_aim_space.rpt" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_scapula_aim_space.r" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tr"
		;
connectAttr "IK_scapula_aim_space.ro" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_scapula_aim_space.s" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].ts"
		;
connectAttr "IK_scapula_aim_space.pm" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "poleVec_CTL_spcGRP_parentConstraint1.w0" "poleVec_CTL_spcGRP_parentConstraint1.tg[0].tw"
		;
connectAttr "unitConversion8.o" "poleVec_CTL_spcGRP_parentConstraint1.w0";
connectAttr "FKIK_RVS.ox" "FK_arm_CTL_GRP.v";
connectAttr "scapula_CTL.t" "FK_scapula_space.t";
connectAttr "scapula_CTL.r" "FK_scapula_space.r";
connectAttr "scapula_CTL.s" "FK_scapula_space.s";
connectAttr "FK_scapula_space_inverse_DCMX.os" "FK_scapula_space_ivsScale.s";
connectAttr "input_shoulder.t" "FK_shoulder_CTL_offGRP.t";
connectAttr "input_shoulder.r" "FK_shoulder_CTL_offGRP.r";
connectAttr "input_shoulder.s" "FK_shoulder_CTL_offGRP.s";
connectAttr "makeNurbCircle7.oc" "FK_shoulder_CTLShape.cr";
connectAttr "FK_shoulder_CTL_inverse_DCMX.os" "FK_shoulder_CTL_ivsScale.s";
connectAttr "input_B_elbow.t" "FK_B_elbow_CTL_offGRP.t";
connectAttr "input_B_elbow.r" "FK_B_elbow_CTL_offGRP.r";
connectAttr "input_B_elbow.s" "FK_B_elbow_CTL_offGRP.s";
connectAttr "makeNurbCircle8.oc" "FK_B_elbow_CTLShape.cr";
connectAttr "FK_B_elbow_CTL_inverse_DCMX.os" "FK_B_elbow_CTL_ivsScale.s";
connectAttr "input_F_elbow.t" "FK_F_elbow_CTL_offGRP.t";
connectAttr "input_F_elbow.r" "FK_F_elbow_CTL_offGRP.r";
connectAttr "input_F_elbow.s" "FK_F_elbow_CTL_offGRP.s";
connectAttr "makeNurbCircle9.oc" "FK_F_elbow_CTLShape.cr";
connectAttr "FK_F_elbow_CTL_inverse_DCMX.os" "FK_F_elbow_CTL_ivsScale.s";
connectAttr "input_wrist.t" "FK_F_wrist_CTL_offGRP.t";
connectAttr "input_wrist.r" "FK_F_wrist_CTL_offGRP.r";
connectAttr "input_wrist.s" "FK_F_wrist_CTL_offGRP.s";
connectAttr "makeNurbCircle10.oc" "FK_F_wrist_CTLShape.cr";
connectAttr "FK_F_wrist_CTL_inverse_DCMX.os" "FK_F_wrist_CTL_ivsScale.s";
connectAttr "input_toe.t" "FK_F_toe_CTL_offGRP.t";
connectAttr "input_toe.r" "FK_F_toe_CTL_offGRP.r";
connectAttr "input_toe.s" "FK_F_toe_CTL_offGRP.s";
connectAttr "arm_switch_CTL_space_DCMX.ot" "arm_switch_CTL_offGRP.t";
connectAttr "arm_switch_CTL_space_DCMX.os" "arm_switch_CTL_offGRP.s";
connectAttr "input_scapula.t" "output.t";
connectAttr "input_scapula.r" "output.r";
connectAttr "input_scapula.s" "output.s";
connectAttr "scapula_PRBL.ot" "scapula.t";
connectAttr "input_scapula.r" "scapula.jo";
connectAttr "scapula_PRBL.or" "scapula.r";
connectAttr "scapula_BLCL.op" "scapula.s";
connectAttr "shoulder_PRBL.ot" "shoulder.t";
connectAttr "input_shoulder.r" "shoulder.jo";
connectAttr "scapula.s" "shoulder.is";
connectAttr "shoulder_PRBL.or" "shoulder.r";
connectAttr "shoulder_BLCL.op" "shoulder.s";
connectAttr "B_elbow_PRBL.ot" "B_elbow.t";
connectAttr "input_B_elbow.r" "B_elbow.jo";
connectAttr "B_elbow_PRBL.or" "B_elbow.r";
connectAttr "shoulder.s" "B_elbow.is";
connectAttr "B_elbow_BLCL.op" "B_elbow.s";
connectAttr "F_elbow_PRBL.ot" "F_elbow.t";
connectAttr "input_F_elbow.r" "F_elbow.jo";
connectAttr "B_elbow.s" "F_elbow.is";
connectAttr "F_elbow_PRBL.or" "F_elbow.r";
connectAttr "F_elbow_BLCL.op" "F_elbow.s";
connectAttr "F_elbow.s" "wrist.is";
connectAttr "wrist_PRBL.ot" "wrist.t";
connectAttr "input_wrist.r" "wrist.jo";
connectAttr "wrist_PRBL.or" "wrist.r";
connectAttr "wrist_BLCL.op" "wrist.s";
connectAttr "wrist.s" "toe.is";
connectAttr "toe_PRBL.ot" "toe.t";
connectAttr "input_toe.r" "toe.jo";
connectAttr "toe_PRBL.or" "toe.r";
connectAttr "toe_BLCL.op" "toe.s";
connectAttr "toe.s" "tiptoe.is";
connectAttr "tiptoe_PRBL.ot" "tiptoe.t";
connectAttr "input_tiptoe.r" "tiptoe.jo";
connectAttr "tiptoe_PRBL.or" "tiptoe.r";
connectAttr "tiptoe_BLCL.op" "tiptoe.s";
connectAttr "IK_shoulder_space_MTMX.o" "IK_shoulder_space_DCMX.imat";
connectAttr "input_shoulder.wm" "IK_shoulder_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_shoulder_space_MTMX.i[1]";
connectAttr "stretchIK_output.stretched_len" "stretch_output_mul_CTLVal_MULT.i1x"
		;
connectAttr "stretchIK_output.stretch_ctrl_value" "stretch_output_mul_CTLVal_MULT.i2x"
		;
connectAttr "stretchIK_output.expand_stretched_len" "loarm_stretch_output_mul_CTLlVal_MULT.i1x"
		;
connectAttr "stretchIK_output.stretch_ctrl_value" "loarm_stretch_output_mul_CTLlVal_MULT.i2x"
		;
connectAttr "uparmLen.d" "soft_armLen_PMA.i1[0]";
connectAttr "midarmLen.d" "soft_armLen_PMA.i1[1]";
connectAttr "input_shoulder_local_MTMX.o" "uparmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "uparmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "input_B_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "midarmLen.im1";
connectAttr "input_F_elbow_local_MTMX1.o" "midarmLen.im2";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX1.i[0]";
connectAttr "input_scapula.wim" "input_F_elbow_local_MTMX1.i[1]";
connectAttr "input_shoulder_local_dist_MTMX.o" "upIKLen.im1";
connectAttr "wrist_space_local_MTMX.o" "upIKLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_dist_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_dist_MTMX.i[1]";
connectAttr "F_wrist_space.wm" "wrist_space_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "wrist_space_local_MTMX.i[1]";
connectAttr "F_foot_CTL.softIK" "IK_negate_val_MULT.i1x";
connectAttr "F_foot_CTL.stretch" "IK_negate_val_MULT.i1y";
connectAttr "input_F_elbow_local_MTMX.o" "loIKLen.im1";
connectAttr "F_toe_CTL_local_MTMX.o" "loIKLen.im2";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX.i[0]";
connectAttr "input_B_elbow.wim" "input_F_elbow_local_MTMX.i[1]";
connectAttr "F_wrist.wm" "F_toe_CTL_local_MTMX.i[0]";
connectAttr "input_B_elbow.wim" "F_toe_CTL_local_MTMX.i[1]";
connectAttr "midarmLen.d" "loarm_soft_Len_PMA.i1[0]";
connectAttr "loarmLen.d" "loarm_soft_Len_PMA.i1[1]";
connectAttr "input_F_elbow_local_MTMX1.o" "loarmLen.im1";
connectAttr "input_F_toe01_local_MTMX.o" "loarmLen.im2";
connectAttr "input_wrist.wm" "input_F_toe01_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_F_toe01_local_MTMX.i[1]";
connectAttr "softikV_COND.ocr" "CTLlen_COND.ctr";
connectAttr "softIK_input.CTLLen" "CTLlen_COND.cfr";
connectAttr "softIK_input.CTLLen" "CTLlen_COND.ft";
connectAttr "armlen_minus_softikV_SUBT.o1" "CTLlen_COND.st";
connectAttr "result_softik_len_SUBT.o1" "softikV_COND.ctr";
connectAttr "softIK_input.uparmLen" "softikV_COND.cfr";
connectAttr "softIK_input.softik_CTL_value" "softikV_COND.ft";
connectAttr "softIK_input.uparmLen" "result_softik_len_SUBT.i1[0]";
connectAttr "mult_softikV_MULT.ox" "result_softik_len_SUBT.i1[1]";
connectAttr "power_val_POW.ox" "mult_softikV_MULT.i2x";
connectAttr "softIK_input.softik_CTL_value" "mult_softikV_MULT.i1x";
connectAttr "negate_val_MULT.ox" "power_val_POW.i2x";
connectAttr "divide_uparm_softikV_DIVD.ox" "negate_val_MULT.i1x";
connectAttr "CTLLen_minue_dif_SUBT.o1" "divide_uparm_softikV_DIVD.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_uparm_softikV_DIVD.i2x";
connectAttr "softIK_input.CTLLen" "CTLLen_minue_dif_SUBT.i1[0]";
connectAttr "armlen_minus_softikV_SUBT.o1" "CTLLen_minue_dif_SUBT.i1[1]";
connectAttr "softIK_input.uparmLen" "armlen_minus_softikV_SUBT.i1[0]";
connectAttr "softIK_input.softik_CTL_value" "armlen_minus_softikV_SUBT.i1[1]";
connectAttr "softIK_input.softik_CTL_value" "for_zerodivide_COND.ft";
connectAttr "softIK_input.softik_CTL_value" "for_zerodivide_COND.cfr";
connectAttr "loarm_softikV_COND.ocr" "loarm_CTLlen_COND.ctr";
connectAttr "softIK_input.loarmIK_len" "loarm_CTLlen_COND.cfr";
connectAttr "softIK_input.loarmIK_len" "loarm_CTLlen_COND.ft";
connectAttr "loarm_armlen_minus_softikV_SUBT.o1" "loarm_CTLlen_COND.st";
connectAttr "loarm_result_softik_len_SUBT.o1" "loarm_softikV_COND.ctr";
connectAttr "softIK_input.loarm_len" "loarm_softikV_COND.cfr";
connectAttr "softIK_input.softik_CTL_value" "loarm_softikV_COND.ft";
connectAttr "softIK_input.loarm_len" "loarm_result_softik_len_SUBT.i1[0]";
connectAttr "loarm_mult_softikV_MULT.ox" "loarm_result_softik_len_SUBT.i1[1]";
connectAttr "loarm_power_val_POW.ox" "loarm_mult_softikV_MULT.i2x";
connectAttr "softIK_input.softik_CTL_value" "loarm_mult_softikV_MULT.i1x";
connectAttr "loarm_negate_val_MULT.ox" "loarm_power_val_POW.i2x";
connectAttr "divide_loarm_softikV_DIVD.ox" "loarm_negate_val_MULT.i1x";
connectAttr "loarm_ctrlLen_minue_dif_SUBT.o1" "divide_loarm_softikV_DIVD.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_loarm_softikV_DIVD.i2x";
connectAttr "softIK_input.loarmIK_len" "loarm_ctrlLen_minue_dif_SUBT.i1[0]";
connectAttr "loarm_armlen_minus_softikV_SUBT.o1" "loarm_ctrlLen_minue_dif_SUBT.i1[1]"
		;
connectAttr "softIK_input.loarm_len" "loarm_armlen_minus_softikV_SUBT.i1[0]";
connectAttr "softIK_input.softik_CTL_value" "loarm_armlen_minus_softikV_SUBT.i1[1]"
		;
connectAttr "stretchIK_input.loarm_len" "midarm_plus_stretch_PMA.i1[0]";
connectAttr "stretchCtrl_midarm_MULT.ox" "midarm_plus_stretch_PMA.i1[1]";
connectAttr "stretched_midarmLen_MULT.ox" "stretchCtrl_midarm_MULT.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_midarm_MULT.i2x";
connectAttr "stretchedLen_SUBT.o1" "stretched_midarmLen_MULT.i1x";
connectAttr "midarm_ratio3_DIVD.ox" "stretched_midarmLen_MULT.i2x";
connectAttr "stretchIK_input.ctrl_len" "stretchedLen_SUBT.i1[0]";
connectAttr "stretchIK_input.softik_len" "stretchedLen_SUBT.i1[1]";
connectAttr "stretch_armLen_PMA.o1" "midarm_ratio3_DIVD.i2x";
connectAttr "stretchIK_input.loarm_len" "midarm_ratio3_DIVD.i1x";
connectAttr "stretchIK_input.uparm_len" "stretch_armLen_PMA.i1[0]";
connectAttr "stretchIK_input.loarm_len" "stretch_armLen_PMA.i1[1]";
connectAttr "stretchIK_input.extendedarm_len" "stretch_armLen_PMA.i1[2]";
connectAttr "stretchIK_input.uparm_len" "uparm_plus_stretch_PMA.i1[0]";
connectAttr "stretchCtrl_uparm_MULT.ox" "uparm_plus_stretch_PMA.i1[1]";
connectAttr "stretched_uparmLen_MULT.ox" "stretchCtrl_uparm_MULT.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_uparm_MULT.i2x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen_MULT.i2x";
connectAttr "stretchedLen_SUBT.o1" "stretched_uparmLen_MULT.i1x";
connectAttr "stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_armLen_PMA.o1" "uparm_ratio.i2x";
connectAttr "stretchIK_input.extendedarm_len" "loarm_plus_stretch_PMA.i1[0]";
connectAttr "loarm_stretchCtrl_arm_MULT.ox" "loarm_plus_stretch_PMA.i1[1]";
connectAttr "stretchIK_input.stretch_ctrl_value" "loarm_stretchCtrl_arm_MULT.i1x"
		;
connectAttr "loarm_stretched_arm_MULT.ox" "loarm_stretchCtrl_arm_MULT.i2x";
connectAttr "loarm_stretchedLen_SUBT.o1" "loarm_stretched_arm_MULT.i1x";
connectAttr "loarm_ratio_DIVD.ox" "loarm_stretched_arm_MULT.i2x";
connectAttr "stretchIK_input.extended_ctrl_len" "loarm_stretchedLen_SUBT.i1[0]";
connectAttr "stretchIK_input.extended_softik_len" "loarm_stretchedLen_SUBT.i1[1]"
		;
connectAttr "loarm_stretch_armLen_PMA.o1" "loarm_ratio_DIVD.i2x";
connectAttr "stretchIK_input.extendedarm_len" "loarm_ratio_DIVD.i1x";
connectAttr "stretchIK_input.loarm_len" "loarm_stretch_armLen_PMA.i1[0]";
connectAttr "stretchIK_input.extendedarm_len" "loarm_stretch_armLen_PMA.i1[1]";
connectAttr "stretchIK_input.uparm_len" "loarm_stretch_armLen_PMA.i1[2]";
connectAttr "scapula_CTL_local_MTMX.o" "scapula_CTL_local_DCMX.imat";
connectAttr "scapula_CTL.wm" "scapula_CTL_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "scapula_CTL_local_MTMX.i[1]";
connectAttr "IK_shoulder_CTL_local_MTMX.o" "IK_shoulder_CTL_local_DCMX.imat";
connectAttr "IK_shoulder_CTL.wm" "IK_shoulder_CTL_local_MTMX.i[0]";
connectAttr "IK_scapula.wim" "IK_shoulder_CTL_local_MTMX.i[1]";
connectAttr "F_wrist_space.wm" "F_wrist_space_scale_DCMX.imat";
connectAttr "F_wrist_CTL.wm" "F_wrist_CTL_scale_DCMX.imat";
connectAttr "F_ball_CTL.wm" "F_ball_CTL_scale_DCMX.imat";
connectAttr "FK_shoulder_CTL_local_MTMX.o" "FK_shoulder_CTL_local_DCMX.imat";
connectAttr "FK_shoulder_CTL.wm" "FK_shoulder_CTL_local_MTMX.i[0]";
connectAttr "FK_scapula.wim" "FK_shoulder_CTL_local_MTMX.i[1]";
connectAttr "FK_B_elbow_CTL_local_MTMX.o" "FK_B_elbow_CTL_local_DCMX.imat";
connectAttr "FK_B_elbow_CTL.wm" "FK_B_elbow_CTL_local_MTMX.i[0]";
connectAttr "FK_shoulder.wim" "FK_B_elbow_CTL_local_MTMX.i[1]";
connectAttr "FK_F_elbow_CTL_local_MTMX.o" "FK_F_elbow_CTL_local_DCMX.imat";
connectAttr "FK_F_elbow_CTL.wm" "FK_F_elbow_CTL_local_MTMX.i[0]";
connectAttr "FK_B_elbow.wim" "FK_F_elbow_CTL_local_MTMX.i[1]";
connectAttr "FK_F_wrist_CTL_local_MTMX.o" "FK_F_wrist_CTL_local_DCMX.imat";
connectAttr "FK_F_wrist_CTL.wm" "FK_F_wrist_CTL_local_MTMX.i[0]";
connectAttr "FK_F_elbow.wim" "FK_F_wrist_CTL_local_MTMX.i[1]";
connectAttr "FK_F_toe_CTL_local_MTMX.o" "FK_F_toe_CTL_local_DCMX.imat";
connectAttr "FK_F_toe_CTL.wm" "FK_F_toe_CTL_local_MTMX.i[0]";
connectAttr "FK_wrist.wim" "FK_F_toe_CTL_local_MTMX.i[1]";
connectAttr "scapula_CTL.wim" "scapula_CTL_inverse_DCMX.imat";
connectAttr "input_wrist_local_MTMX1.o" "input_wrist_local_DCMX.imat";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX1.i[0]";
connectAttr "IK_arm_CTL_GRP.wim" "input_wrist_local_MTMX1.i[1]";
connectAttr "ball_bk_condition.ocr" "unitConversion1.i";
connectAttr "F_foot_CTL.roll" "ball_bk_condition.ft";
connectAttr "F_foot_CTL.roll" "ball_bk_condition.cfr";
connectAttr "F_foot_CTL.bank" "unitConversion4.i";
connectAttr "F_foot_CTL.heelTwist" "unitConversion5.i";
connectAttr "F_foot_CTL.bank" "in_out_condition.ft";
connectAttr "in_out_default_condition.oc" "in_out_condition.ct";
connectAttr "F_heel_out.t" "in_out_condition.cf";
connectAttr "F_foot_CTL.bank" "in_out_default_condition.ft";
connectAttr "F_heel_in.t" "in_out_default_condition.cf";
connectAttr "toe_fn_condition.ocr" "unitConversion3.i";
connectAttr "F_foot_CTL.rollStartAngle" "toe_fn_condition.st";
connectAttr "F_foot_CTL.roll" "toe_fn_condition.ft";
connectAttr "roll_angle_SUBT.o1" "toe_fn_condition.ctr";
connectAttr "F_foot_CTL.roll" "roll_angle_SUBT.i1[0]";
connectAttr "F_foot_CTL.rollStartAngle" "roll_angle_SUBT.i1[1]";
connectAttr "F_foot_CTL.toeTwist" "unitConversion6.i";
connectAttr "input_tiptoe_local_MTMX.o" "input_tiptoe_local_DCMX.imat";
connectAttr "input_tiptoe.wm" "input_tiptoe_local_MTMX.i[0]";
connectAttr "F_heel_CTL.wim" "input_tiptoe_local_MTMX.i[1]";
connectAttr "ball_start_conditon.ocr" "unitConversion2.i";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.ft";
connectAttr "F_foot_CTL.rollStartAngle" "ball_start_conditon.st";
connectAttr "backto_zero_ball_SUBT.o1" "ball_start_conditon.ctr";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.cfr";
connectAttr "F_foot_CTL.roll" "ball_fn_condition.ft";
connectAttr "F_foot_CTL.roll" "ball_fn_condition.ctr";
connectAttr "F_foot_CTL.rollStartAngle" "backto_zero_ball_SUBT.i1[0]";
connectAttr "ball_remap.ov" "backto_zero_ball_SUBT.i1[1]";
connectAttr "after_ball_start_SUBT.o1" "ball_remap.i";
connectAttr "F_foot_CTL.rollStartAngle" "ball_remap.omx";
connectAttr "F_foot_CTL.roll" "after_ball_start_SUBT.i1[0]";
connectAttr "F_foot_CTL.rollStartAngle" "after_ball_start_SUBT.i1[1]";
connectAttr "input_toe_local_MTMX.o" "input_toe_local_DCMX.imat";
connectAttr "input_toe.wm" "input_toe_local_MTMX.i[0]";
connectAttr "F_toe_CTL.wim" "input_toe_local_MTMX.i[1]";
connectAttr "input_wrist_local_MTMX.o" "input_wrist_local_DCMX1.imat";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "F_ball_CTL.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "F_foot_CTL.toesAim" "unitConversion7.i";
connectAttr "unitConversion7.o" "toesAim_RVS.ix";
connectAttr "input_F_elbow_local_MTMX2.o" "input_F_elbow_local_DCMX.imat";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX2.i[0]";
connectAttr "F_wrist_aim_space.wim" "input_F_elbow_local_MTMX2.i[1]";
connectAttr "upper_poleVec_offGRP_space_MTMX.o" "upper_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "input_B_elbow.wm" "upper_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "poleVec_GRP.wim" "upper_poleVec_offGRP_space_MTMX.i[1]";
connectAttr "poleVec_CTL.follow" "unitConversion8.i";
connectAttr "arm_switch_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "FK_scapula_space.wim" "FK_scapula_space_inverse_DCMX.imat";
connectAttr "FK_shoulder_CTL.wim" "FK_shoulder_CTL_inverse_DCMX.imat";
connectAttr "FK_B_elbow_CTL.wim" "FK_B_elbow_CTL_inverse_DCMX.imat";
connectAttr "FK_F_elbow_CTL.wim" "FK_F_elbow_CTL_inverse_DCMX.imat";
connectAttr "FK_F_wrist_CTL.wim" "FK_F_wrist_CTL_inverse_DCMX.imat";
connectAttr "arm_switch_CTL_space_MTMX.o" "arm_switch_CTL_space_DCMX.imat";
connectAttr "arm_switch_space_CHOI.o" "arm_switch_CTL_space_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "arm_switch_CTL_space_MTMX.i[1]";
connectAttr "FK_F_wrist_CTL.wm" "arm_switch_space_CHOI.i[0]";
connectAttr "F_wrist_CTL.wm" "arm_switch_space_CHOI.i[1]";
connectAttr "arm_switch_CTL.FK_IK" "arm_switch_space_CHOI.s";
connectAttr "IK_scapula.t" "scapula_PRBL.it1";
connectAttr "IK_scapula.r" "scapula_PRBL.ir1";
connectAttr "FK_scapula.t" "scapula_PRBL.it2";
connectAttr "FK_scapula.r" "scapula_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "scapula_PRBL.w";
connectAttr "IK_scapula.s" "scapula_BLCL.c1";
connectAttr "FK_scapula.s" "scapula_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "scapula_BLCL.b";
connectAttr "IK_shoulder.t" "shoulder_PRBL.it1";
connectAttr "IK_shoulder.r" "shoulder_PRBL.ir1";
connectAttr "FK_shoulder.t" "shoulder_PRBL.it2";
connectAttr "FK_shoulder.r" "shoulder_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "shoulder_PRBL.w";
connectAttr "IK_shoulder.s" "shoulder_BLCL.c1";
connectAttr "FK_shoulder.s" "shoulder_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "shoulder_BLCL.b";
connectAttr "IK_B_elbow.t" "B_elbow_PRBL.it1";
connectAttr "IK_B_elbow.r" "B_elbow_PRBL.ir1";
connectAttr "FK_B_elbow.t" "B_elbow_PRBL.it2";
connectAttr "FK_B_elbow.r" "B_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "B_elbow_PRBL.w";
connectAttr "IK_B_elbow.s" "B_elbow_BLCL.c1";
connectAttr "FK_B_elbow.s" "B_elbow_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "B_elbow_BLCL.b";
connectAttr "IK_F_elbow.t" "F_elbow_PRBL.it1";
connectAttr "IK_F_elbow.r" "F_elbow_PRBL.ir1";
connectAttr "FK_F_elbow.t" "F_elbow_PRBL.it2";
connectAttr "FK_F_elbow.r" "F_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "F_elbow_PRBL.w";
connectAttr "IK_F_elbow.s" "F_elbow_BLCL.c1";
connectAttr "FK_F_elbow.s" "F_elbow_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "F_elbow_BLCL.b";
connectAttr "IK_wrist.t" "wrist_PRBL.it1";
connectAttr "IK_wrist.r" "wrist_PRBL.ir1";
connectAttr "FK_wrist.t" "wrist_PRBL.it2";
connectAttr "FK_wrist.r" "wrist_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "wrist_PRBL.w";
connectAttr "IK_wrist.s" "wrist_BLCL.c1";
connectAttr "FK_wrist.s" "wrist_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "wrist_BLCL.b";
connectAttr "IK_toe.t" "toe_PRBL.it1";
connectAttr "IK_toe.r" "toe_PRBL.ir1";
connectAttr "FK_toe.t" "toe_PRBL.it2";
connectAttr "FK_toe.r" "toe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "toe_PRBL.w";
connectAttr "IK_toe.s" "toe_BLCL.c1";
connectAttr "FK_toe.s" "toe_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "toe_BLCL.b";
connectAttr "IK_tiptoe.t" "tiptoe_PRBL.it1";
connectAttr "IK_tiptoe.r" "tiptoe_PRBL.ir1";
connectAttr "FK_tiptoe.t" "tiptoe_PRBL.it2";
connectAttr "FK_tiptoe.r" "tiptoe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "tiptoe_PRBL.w";
connectAttr "IK_tiptoe.s" "tiptoe_BLCL.c1";
connectAttr "FK_tiptoe.s" "tiptoe_BLCL.c2";
connectAttr "arm_switch_CTL.FK_IK" "tiptoe_BLCL.b";
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_toe01_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "soft_armLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "upIKLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armlen_minus_softikV_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CTLLen_minue_dif_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_uparm_softikV_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val_POW.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CTLlen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midarm_ratio3_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_armLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_midarmLen_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_midarm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midarm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_CTLVal_MULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "loarm_ratio_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretched_arm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretchCtrl_arm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upper_poleVec_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "upper_poleVec_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "F_toe_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loIKLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_soft_Len_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_armlen_minus_softikV_SUBT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "loarm_ctrlLen_minue_dif_SUBT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "divide_loarm_softikV_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_power_val_POW.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_mult_softikV_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_result_softik_len_SUBT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "loarm_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_CTLlen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretch_armLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretchedLen_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_stretch_output_mul_CTLlVal_MULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arm_switch_space_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_bk_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_fn_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_start_conditon.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toe_fn_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "roll_angle_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "after_ball_start_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "backto_zero_ball_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "in_out_default_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesAim_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_B_elbow_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_shoulder_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_F_elbow_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_F_wrist_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_shoulder_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_B_elbow_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_shoulder_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_B_elbow_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_scapula_space_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_F_elbow_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_elbow_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_wrist_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_wrist_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_toe_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_F_toe_CTL_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scapula_CTL_inverse_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_wrist_CTL_scale_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_ball_CTL_scale_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_wrist_space_scale_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_tiptoe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_tiptoe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_toe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_DCMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikSCsolver1.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
// End of q_arm.ma
