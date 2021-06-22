//Maya ASCII 2019 scene
//Name: q_arm.ma
//Last modified: Tue, Jun 22, 2021 06:02:58 PM
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
	rename -uid "6975F9EB-4E38-3C5D-B005-E0B1D3DC7C99";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 5 ".init";
	setAttr -k on ".follow";
	setAttr -k on ".prefixType";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "98C46B27-4991-EC64-BBC0-07BE64402B5F";
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "EA63D203-451C-CEDC-FCFA-5480082AFFB2";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "FAB2B18E-4FF2-00A2-FEC5-319566CBD282";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
	setAttr ".r" -type "double3" -0.87823557517424033 18.963366707434972 -90.051492328366749 ;
	setAttr ".s" -type "double3" 1.0000000429453995 1.0000000680434886 0.99999999181452848 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "E319C0EB-439F-F8B3-0389-74B064343B3B";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 11.152678498081176 -6.7630523403749976e-10 4.5920421243295095e-08 ;
	setAttr ".r" -type "double3" 6.8813103377255397e-08 -19.828050665451098 -3.4576068493170435e-08 ;
	setAttr ".s" -type "double3" 0.99999991550197298 0.99999999999999989 1.0000000147680039 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "4467A266-4520-AB50-CD5E-3D8F0C7E75C4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 15.032045000035824 -4.6762993477500459e-09 1.0004249872963555e-08 ;
	setAttr ".r" -type "double3" -0.013384094865826854 0.91874997429317906 -0.00021462192475247844 ;
	setAttr ".s" -type "double3" 1.0000000201979447 0.99999985072677022 0.99999999767305114 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "CF1813D5-4606-3688-0C32-66B6A46AF4CE";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.5795577284653266 -7.5485662165419853e-10 1.4718537499902595e-10 ;
	setAttr ".r" -type "double3" 1.4605930577406421 -39.559681728058756 -0.9303447933971033 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "B0724A4E-4414-3CAA-DBF5-86933C61BBF8";
	setAttr ".t" -type "double3" 1.9365728819610428 9.1526786150097905e-12 1.4342624865548714e-09 ;
	setAttr ".r" -type "double3" -0.42876198851736008 -31.492247172491378 0.22398104162895269 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "B68F1DC8-4A5C-E476-4630-B5BE657D50D6";
	setAttr ".t" -type "double3" 3.6141828709296533 1.0266543171155718e-09 -1.3036568002888771e-07 ;
	setAttr ".r" -type "double3" 71.00508559910206 -2.6566659528093497e-08 90.000000016229507 ;
createNode transform -n "motion_IK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "D3AB1E3E-41C6-F34C-1BED-729155B179CF";
createNode transform -n "IK_shoulder_space" -p "motion_IK_arm_GRP";
	rename -uid "205C6B50-499C-1EEC-1AB5-13837478C963";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "9F37DEC4-4FD8-42FA-291D-C6A029CCA81D";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "2C63B0C3-4422-6470-3163-ACAA955AE069";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "FA303752-493C-EE59-1252-938E45006BDA";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "9CFFE0F0-4D89-B5BB-500F-ECA8438F50B3";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "DF5F3528-4655-0907-45D3-A2ACAAFE5CE7";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "3EAFC927-4826-A566-9B32-B4A94F12B3C9";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "597ED490-4DC3-F885-9F6D-CBA73CF3001A";
	setAttr -k off ".v";
createNode transform -n "wrist_offset_GRP" -p "upper_stretch_output_LOC";
	rename -uid "06A76A89-44DE-B992-B88A-0C9CAFD068BC";
	setAttr ".t" -type "double3" 4.5078143145167164 0.0027108481662523332 0.80741924590541814 ;
	setAttr ".r" -type "double3" -10.153476863512063 -0.42837352305053678 89.874579056846116 ;
	setAttr ".s" -type "double3" 0.99999993196110837 0.99999997181295508 0.99999999342252588 ;
	setAttr ".sh" -type "double3" -5.9993620639617081e-10 1.0180313195912592e-09 -4.6334934472047124e-08 ;
createNode transform -n "wrist_space" -p "wrist_offset_GRP";
	rename -uid "6E466F7C-46AC-12A9-BD6D-B38E85B43BF2";
createNode ikHandle -n "ikHandle1" -p "wrist_space";
	rename -uid "100A510A-4844-80D5-6CCB-A59F5911AE6E";
	setAttr ".t" -type "double3" -0.018615705346738842 4.5796363458851133 2.1234761561572668e-05 ;
	setAttr ".r" -type "double3" 2.588269837845218 -0.41960739676470471 -0.072194743298761438 ;
	setAttr ".s" -type "double3" 1.0000000000006599 0.99999999268661111 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484927334517397e-10 1.6005933006988813e-10 1.2770773040052234e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "CCF8BC9B-4BB5-33C6-CF12-5EABFEDA46FC";
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
	rename -uid "EB98B45E-4FA0-4064-7676-D38B154375B8";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "8E0A663E-428B-314C-FD5F-D9B22EE86E7D";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "2FADC0D5-4818-D4C6-BC8F-1AB9F3A68088";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "8921DC0F-425C-C38F-95D0-0B9824A07022";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "4349AB15-438D-E700-BD9A-6EB3A851BD10";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "920F6D8F-4F99-BE3F-47C1-3CB546FD4D40";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "905A45D2-402C-0E5F-A899-13B29A3A06FC";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "A30CB21F-44C9-378F-3746-F083ED2DEB7E";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle2" -p "lower_stretch_output_LOC";
	rename -uid "F8704140-4014-994D-67E2-A0ABC5C6FEC1";
	setAttr ".t" -type "double3" -0.00011817256893786876 7.2561956443450981e-10 3.1345864925924616e-07 ;
	setAttr ".r" -type "double3" -1.4463488157537345e-27 0.00019824970204960224 7.4521846946874758e-06 ;
	setAttr ".s" -type "double3" 1.0000000159603892 1.0000000812308731 1.0000000011375991 ;
	setAttr ".sh" -type "double3" -1.6019759401675542e-10 -1.0104766364969727e-08 0 ;
	setAttr ".pv" -type "double3" -2.5035693294182551e-08 -0.0095432113891717931 0.99995446366562979 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "ABE6F551-4455-B928-896E-C29810824A2A";
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
	rename -uid "01F8F3D2-45DC-14C4-C994-8E9BF514BAF3";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "99A8A65B-46BB-4FF0-75E1-1B9E6050DCDA";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "22A55F6A-4D63-0778-CC19-B5A40FDD87F6";
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
	rename -uid "8CEC7804-4687-9B17-6D3C-86BF6CD00A81";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "07905F71-497C-B63E-4D2E-C0A45B855B1D";
	setAttr -k off ".v";
createNode transform -n "softIK_input" -p "motion_IK_arm_GRP";
	rename -uid "B18882FF-471A-A572-9351-B4AA14BFD9C8";
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
createNode transform -n "softIK_output" -p "motion_IK_arm_GRP";
	rename -uid "5D201C79-4CAA-5527-00A6-A4BD8D0E13A4";
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
createNode transform -n "stretchIK_input" -p "motion_IK_arm_GRP";
	rename -uid "42B2794E-4764-67BB-2689-4B9212754B5E";
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
createNode transform -n "stretchIK_output" -p "motion_IK_arm_GRP";
	rename -uid "F1CCE93D-4176-3901-3C99-AEA6FFE3A180";
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
createNode joint -n "IK_scapula" -p "motion_IK_arm_GRP";
	rename -uid "1CDAE4AC-4DF2-4531-634C-0F8712424A5B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "78AD3051-436D-0552-9AA2-EA82E5483499";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" -0.00073840362616806867 0.00088532235612684689 -0.00015038730212864636 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "2D107BB2-4079-C240-73DA-4786C0411B5A";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.152679443359375 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" 2.5832835939692501e-13 -0.0015323354999264265 4.3515417184169385e-12 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "58E8FF9F-4700-AB51-6618-3AAA9285AD30";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.032044410705566 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" 0.29785476583317355 0.00073797720375112438 -8.8423813274957216e-05 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "23202351-4ABC-CEB9-2E8C-BD9682B133D3";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795574188232422 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" -0.22903208225492216 0.0013948375330790754 0.18924900956414792 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "39A3393D-4FB5-8879-C492-C0966B081CEB";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -0.0010527755558493476 -0.00073939712475157705 -5.8450675800585722e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "367D372C-4F04-AEAA-EFD2-BCA480C173D8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "7A6B67E5-4652-DE1E-09EF-FC8A6B11CE31";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "D46F54E3-4A5C-D107-3308-268BE9E524C5";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "502D83A5-43DD-C5D6-4252-15B34081E0A2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "CAD2FEEB-4459-54B2-AC19-DE968DAF4AE9";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "6271F889-4FE5-09DB-6479-39861172DD79";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "211D1843-4888-D17E-C894-80A835022246";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IK_scapula_aim_space" -p "motion_IK_arm_GRP";
	rename -uid "21654C9B-4AE4-05F9-2D94-0E87335C1F55";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode aimConstraint -n "IK_scapula_aim_space_aimConstraint1" -p "IK_scapula_aim_space";
	rename -uid "332FD3E5-4076-BB8D-370C-5CABA09C6FD7";
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
	rename -uid "7E36373D-47E8-AF0B-34BC-9FA370D4C736";
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
createNode transform -n "motion_FK_arm_GRP" -p "arm_motion_GRP";
	rename -uid "D3ACDF56-4EA7-1074-4ADC-249A102CB744";
createNode joint -n "FK_scapula" -p "motion_FK_arm_GRP";
	rename -uid "D1D4C898-4CFB-C4BD-1638-9FA579E29589";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "89F0B839-4FD8-CE09-5BBF-45BFE06646AE";
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
	rename -uid "52D125E2-41A7-6926-0ECA-E6AA972796AA";
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
	rename -uid "2FCF3CD5-4B92-6F16-ADA3-FFB134D7C1A6";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "A0671F52-440D-92CA-2F73-71B77798700F";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "10C4B1A4-4667-2D61-3156-32BC23A732A0";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "21DAFDDA-4680-F008-8C6D-37A13675BD07";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "0162AF6C-4E2D-D8CB-9902-9984792E3DE3";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "A41C1816-4403-FBD4-EA21-E58C479C622E";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "55060C94-47D4-0250-4022-A28BCFCE263C";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "E0E1A475-48AB-F270-116B-F49DFBF5B803";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "FC2A57D5-427E-AB2D-79C4-5E843364E817";
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
	rename -uid "05C694EB-4C53-8D1F-B944-07B81C3E6EA4";
createNode transform -n "IK_shoulder_CTL_offGRP" -p "scapula_CTL_ivsScale";
	rename -uid "998A0E5F-4673-096D-77C5-938D55831E82";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "4EFEC6D8-4A36-2BD0-C889-C0AD16113895";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "DA502990-4988-4DE6-FBD9-AE8200AB41D9";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "FA7588E4-4143-A0C4-EB64-288C54A6231F";
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
	rename -uid "EF93A8EC-4165-F2D4-0961-90ADBD25FE12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 -2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode locator -n "IK_wrist_aimShape" -p "IK_wrist_aim";
	rename -uid "4D952F07-46CD-D439-9D87-EA95726E7F49";
	setAttr -k off ".v";
createNode transform -n "IK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "E1012C89-4EB7-F244-1F97-0DB122DB3A0D";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674408 1.0000000222718179 1.0000000028214378 ;
	setAttr ".sh" -type "double3" -8.0815271250080359e-10 3.4848956455488211e-08 -2.2852080187929983e-08 ;
createNode transform -n "scapula_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "EE3979F2-44BB-7F4D-35A0-BC9F275BA9C6";
	setAttr ".t" -type "double3" -4.7371485343050495 -1.8119642307906743 -9.8230416917541596 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "input_F_toe_space" -p "IK_arm_CTL_GRP";
	rename -uid "C200AF90-4068-46E0-D14A-CB99CA1F3679";
	setAttr ".r" -type "double3" 1.6469325546113447 -67.218225318270896 -1.1283633139358367 ;
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_foot_CTL_offGRP" -p "input_F_toe_space";
	rename -uid "7DCA011C-4E52-79A2-8B0D-6DB54DA68395";
	setAttr ".t" -type "double3" 2.817222294660148 -0.0049796501773071711 -0.77774806250817363 ;
	setAttr ".r" -type "double3" 39.409568096343335 0.3668402583336568 89.999999960581661 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_foot_CTL_spcGRP" -p "F_foot_CTL_offGRP";
	rename -uid "4FD69B57-41A4-9711-FC06-D8AACEDCCECD";
createNode transform -n "F_foot_CTL" -p "F_foot_CTL_spcGRP";
	rename -uid "88730078-4B5F-ABD8-8DBC-FC92BEB1C573";
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
	rename -uid "E0E3D951-4AC2-D4BF-F48C-21A08E3F9D3B";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00047531438057468733 1.0963452368173421e-15 -1.774207099174899 ;
createNode locator -n "F_heelShape" -p "F_heel";
	rename -uid "35619601-4266-2CA1-114A-14B188A4B699";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_heel_CTL" -p "F_heel";
	rename -uid "B12D0B08-4103-958C-3230-88A86B50D791";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_heel_CTLShape" -p "F_heel_CTL";
	rename -uid "7AA177C5-450E-7386-12DD-E587AAA92147";
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
	rename -uid "3B76EE1D-4197-9502-5143-E2BC9E8FEB43";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_heel_outShape" -p "F_heel_out";
	rename -uid "125DB8BA-4A44-1193-1808-67BEBDFDA8EF";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_heel_in" -p "F_heel_CTL";
	rename -uid "3EBB5C82-4558-3D30-EA64-328E81E7D10F";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_heel_inShape" -p "F_heel_in";
	rename -uid "AF82E6B7-4ACD-9D21-FF3C-3AB80DBEA1C1";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_toe" -p "F_heel_CTL";
	rename -uid "CCC29677-4D67-A52B-42A5-2B81264C3EC3";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00051588925943146791 -0.0082900448883849349 5.2313109798789199 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_toeShape" -p "F_toe";
	rename -uid "6B5F55BD-447A-2889-21E8-958839DC788E";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_toe_CTL" -p "F_toe";
	rename -uid "6A37C874-460A-2A98-2AE5-0F8B4F9CFD0E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_toe_CTLShape" -p "F_toe_CTL";
	rename -uid "02940D96-4605-C4F3-3A42-E68CAC5F2B8A";
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
	rename -uid "305BBD6D-429A-AAB9-879A-2A8637156392";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.0569045308913587e-05 1.1824749912369816 -3.4152706560900583 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_ballShape" -p "F_ball";
	rename -uid "01449F79-4E50-2E9F-D068-828F4CE3EB66";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_ball_CTL" -p "F_ball";
	rename -uid "3D0CB94A-4479-B838-7C9A-4C9A101FD17D";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_ball_CTLShape" -p "F_ball_CTL";
	rename -uid "D5EE5DBC-4860-3071-9B9F-3FA14ED9F0FA";
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
	rename -uid "41A440D2-4389-6A07-3760-5D85E9940517";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.3389707120836647e-09 1.4962497208127892 -1.2294518227761628 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_wristShape" -p "F_wrist";
	rename -uid "5744C797-4A68-A6C6-16AE-CB9470D98807";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_wrist_CTL_offGRP" -p "F_wrist";
	rename -uid "0DB3D1E8-49AE-2E9D-E53D-D2BA511ACFBE";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".r" -type "double3" -2.3854175277042937e-15 1.5530052155583574e-18 -2.4799552035947529e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_wrist_CTL_spcGRP" -p "F_wrist_CTL_offGRP";
	rename -uid "06703162-457C-DA08-D7E8-3F8B869D2E7F";
	setAttr ".r" -type "double3" -2.3854190443109495e-15 3.1060104311167156e-18 -2.4702489209975132e-17 ;
createNode transform -n "F_wrist_CTL" -p "F_wrist_CTL_spcGRP";
	rename -uid "F8351968-48C1-560E-8242-42A80F206325";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_wrist_CTLShape" -p "F_wrist_CTL";
	rename -uid "DA3CBA9A-4B85-08DA-025B-A4AD7E28FC40";
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
	rename -uid "93451F6C-4316-7DDD-BB13-9B8E04970A56";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode aimConstraint -n "F_wrist_aim_space_aimConstraint1" -p "F_wrist_aim_space";
	rename -uid "2D20D333-46AA-47F4-DDC2-35B69CA49601";
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
	rename -uid "E2CBFED5-4C70-DD11-55CA-3D905BE1FA1C";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.018614958724327835 4.579519406561813 0.0038132307140870125 ;
	setAttr ".r" -type "double3" -2.1699802898036298 0.42445712589591633 0.044864058968832513 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
createNode transform -n "F_wrist_space_spcGRP" -p "F_wrist_space_offGRP";
	rename -uid "94154736-4881-D77F-54D3-3D829F7EEECA";
createNode transform -n "F_wrist_space" -p "F_wrist_space_spcGRP";
	rename -uid "6504F50F-4D50-65F1-C8FE-E89F1526E1DE";
createNode locator -n "F_wrist_spaceShape" -p "F_wrist_space";
	rename -uid "B45B2C14-4967-9CE1-10B4-F38B31BC2B4F";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle3" -p "F_wrist_space";
	rename -uid "736814DF-4EAD-C326-B3A0-AFA6B8C8339A";
	setAttr ".s" -type "double3" 0.9999999750172448 0.99999999994995881 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -0.0074081065700528801 -0.037863174274077642 0.99925547771233592 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle3_parentConstraint1" -p "ikHandle3";
	rename -uid "1C9A01A8-4AA2-DDC1-FA3F-64AEC6AF8158";
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
	setAttr ".lr" -type "double3" 0.8970040306471827 -37.346726844910833 -90.383261207951662 ;
	setAttr ".rst" -type "double3" 0.00476462008062839 -6.1156346338057341 0.9968024784931373 ;
	setAttr ".rsrr" -type "double3" 0.89745150128600526 -37.235764614615547 -90.381970469649829 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle4" -p "F_wrist_space";
	rename -uid "864AFCDF-4E9F-AEBB-C59A-8F99220CBE73";
	setAttr ".s" -type "double3" 0.99999998874520257 0.99999999995098687 1.0000000113038114 ;
	setAttr ".sh" -type "double3" -1.6826897862024359e-10 4.4638121360922514e-08 -2.7357316883618989e-10 ;
	setAttr ".pv" -type "double3" -0.0074081065700528801 -0.037863174274077642 0.99925547771233592 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle4_parentConstraint1" -p "ikHandle4";
	rename -uid "EA4265D7-46DE-4DD2-F2B5-318356F67744";
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
	setAttr ".lr" -type "double3" 1.1730161980730651 -68.940879942802979 -91.156340107643103 ;
	setAttr ".rst" -type "double3" -0.021473307890486737 -7.4206173715559576 4.3671491872613508 ;
	setAttr ".rsrr" -type "double3" 1.1698569609664258 -68.829922977737894 -91.151831128654294 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "F_foot_CTL_CTLShape" -p "F_foot_CTL";
	rename -uid "7A35BA4D-4EB3-1833-5DEA-6EB8A3DCD5F7";
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
	rename -uid "3A727C3B-4663-C7C0-E566-5AA149A5A6E7";
	setAttr ".t" -type "double3" -0.073780542782908576 32.827532488643335 2.210316877696858 ;
	setAttr ".r" -type "double3" -0.87824312692754603 18.965198451129531 -90.051523022582671 ;
	setAttr ".s" -type "double3" 1.000000011279818 0.99999999995180244 0.99999998876838025 ;
	setAttr ".sh" -type "double3" 9.6423022695952796e-10 -4.4652488486428388e-08 1.2991909950836016e-10 ;
createNode transform -n "F_foot_upVec" -p "F_foot_CTL";
	rename -uid "96C10050-443D-8DEE-10F7-24B6AEB2833B";
	setAttr ".t" -type "double3" 5 7.2989347389391489e-10 8.8827831654602672e-10 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999933 ;
createNode transform -n "poleVec_GRP" -p "IK_arm_CTL_GRP";
	rename -uid "0D1C7474-466F-65AE-6FD3-F99B2DCF27A3";
	setAttr ".t" -type "double3" 37.979490170536849 -6.0674696538615542 -3.410347070883224 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "poleVec_CTL_offGRP" -p "poleVec_GRP";
	rename -uid "1ECE6D91-4662-098E-83BC-08B37795DCBC";
createNode transform -n "poleVec_CTL_spcGRP" -p "poleVec_CTL_offGRP";
	rename -uid "1B0EC4C4-4F2D-0329-8B14-A08E588189F7";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "poleVec_CTL" -p "poleVec_CTL_spcGRP";
	rename -uid "35289D90-4AC9-3D1D-F28E-A49DD446667A";
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
	rename -uid "09602E3F-4201-AE8A-3F00-2EB3EF8B21FD";
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
	rename -uid "11B28AD9-442F-4CCC-D3F3-8FBBC1DBBF88";
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
	setAttr ".lr" -type "double3" -0.0010164207541831596 -0.00069054126391499655 4.2907853723053508e-05 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 0 -15 ;
	setAttr ".rsrr" -type "double3" 3.7893327259623928e-16 -9.939233379573485e-17 -1.2726440958783867e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "97C131B1-4963-CCC5-1545-719B6A1ECC12";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "37956E1F-4C38-56D5-774D-C8B37F983418";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "AACBC2E9-4AA5-DECF-DE21-66ACAE4BBB3F";
createNode transform -n "FK_scapula_space_ivsScale" -p "FK_scapula_space";
	rename -uid "BE25270A-43A5-A331-4708-0FA3FF9F9E68";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space_ivsScale";
	rename -uid "06EC6A75-4ABA-422B-E6A4-3ABED9B757CB";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "27DCB964-4FC0-2581-0F22-5EB589CAB808";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "E145C9DC-4116-161D-A70C-379C55FC316B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "5C74F234-477B-2A11-DC37-F3A68EB9F587";
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
	rename -uid "F03C2780-4151-4528-EF22-DC9BCEA7432B";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL_ivsScale";
	rename -uid "5D182767-4E85-53EB-4BAC-3B887A21D2FC";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "CA3D53C3-4B8F-DFD3-F038-DAA15362248D";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "52BA7D9D-4511-92B2-916A-349DB80EF825";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "43ECFC93-44B6-9DC6-9C99-AA99CC429F7C";
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
	rename -uid "FA10521A-4E1B-5343-2295-8EA084C1C947";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL_ivsScale";
	rename -uid "F59A051D-4BFC-AB39-99E2-CDB6477E668E";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "0FFAECFB-4E20-E070-A783-B4850C6017A6";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "45DA6739-4264-F09E-6189-1AA180CF0CA2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "AA671A6A-4229-DF6B-9DCB-A8B4C3673418";
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
	rename -uid "6DB1750B-4C9A-CFFA-58EC-CE994922A97D";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL_ivsScale";
	rename -uid "C9DA2962-482D-8D86-0F62-2DB857BC1A2A";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "7909A38C-4C12-ADC9-D7D4-BFA24148F358";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "152BBBE8-4C7F-60C5-A592-E499DD6D563F";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "69635BF8-4B46-15CF-FDB2-2AAC461264F7";
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
	rename -uid "28A534B8-4154-4002-A65E-F59C8942B27E";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 5.3290705182007514e-15 ;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL_ivsScale";
	rename -uid "F7C77EA4-4741-97D1-6898-13A9087D31B0";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "5D192EA2-47D1-B079-3A6E-BA9226E1D5F3";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "80166892-4153-4574-9AAE-8191A9CEB51E";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "E77CB24D-4325-8234-2578-C5907EE55E7C";
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
	rename -uid "8381388B-43F4-C79E-D18A-1F81978D9C44";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "8706ACC5-4746-FD03-FB46-A2B58D68B067";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "7D6653F6-487F-3966-BDD5-E799CFD5A52F";
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
	rename -uid "C575031E-4099-0D53-E5E1-46943EB18584";
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
createNode transform -n "arm_output" -p "arm_GRP";
	rename -uid "26FA7E79-417E-5251-9CE1-D5B2558A1A5E";
createNode joint -n "scapula" -p "arm_output";
	rename -uid "B28577ED-4EF2-1661-A107-589DC0DA70DF";
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
	rename -uid "91DC4619-4A67-83E7-8278-0FAA063604E6";
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
	rename -uid "941E87CD-41B5-DC06-7656-9B9BB0FB2F54";
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
	rename -uid "21D9B7FB-4C8E-8B47-B96F-CC92596BDD9F";
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
	rename -uid "9B1364F9-4DEC-D3E3-3CD4-6FAAC34B9098";
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
	rename -uid "0116C7FF-493E-D456-C639-FCAACFFC9FB7";
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
	rename -uid "AA640FC4-40F1-C9F7-0469-D28546BBD21E";
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
	rename -uid "4C32F197-4F42-7E58-091E-8E99580C8463";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "35D28813-49DD-4AC0-B4ED-D5A388F899FB";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_CTLVal_MULT";
	rename -uid "4972B353-45ED-0B4B-AF24-9FB4CF584F42";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "8343AAC9-4435-177E-2D19-909CA3A07231";
createNode multiplyDivide -n "loarm_stretch_output_mul_CTLlVal_MULT";
	rename -uid "B61419FF-4698-4206-B1EC-0D9B1C24632D";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "E2D5D389-4A50-C574-CDC0-5D8DCFC0CCAD";
createNode plusMinusAverage -n "soft_armLen_PMA";
	rename -uid "13DB7335-4A04-16B7-AEC9-1EBE4DDEB441";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "5B2690A0-47A6-DDAF-1880-07BDE688D2FE";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "0B681694-4FB5-66F1-CB9D-C08B05179CB3";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "3CDAF9AA-41C1-BC6C-99BC-E69BA9ACD905";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midarmLen";
	rename -uid "8D850B1A-4985-8509-98AA-C28B65DF9E05";
createNode multMatrix -n "input_F_elbow_local_MTMX1";
	rename -uid "59EC6BC1-422A-E60D-7C3C-C9B438E131D2";
	setAttr -s 2 ".i";
createNode distanceBetween -n "upIKLen";
	rename -uid "E7D3300C-4DED-9549-B71A-1EA11965F551";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "521DB50E-4B38-5C96-4E15-88A03472CD3A";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "BCAC946D-4017-22C1-BDDD-9F9A08A095BA";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val_MULT";
	rename -uid "2C3A7106-4B02-2AF1-B6DD-3CAF5F52C37E";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "loIKLen";
	rename -uid "7025786F-4073-F5CA-D09D-7DA3089926FA";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "2B7E4DB5-4187-88F6-CC7E-BCAF78B9BA2F";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "80C17871-4FD6-85E4-5207-FD82C30B23DA";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "loarm_soft_Len_PMA";
	rename -uid "C155C8CE-42F3-CBDF-B4B7-88994FCD6181";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loarmLen";
	rename -uid "D25903D5-47CD-5946-8310-0294EE38E030";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "D5D30A60-464C-2EFD-575B-2196E5822EA2";
	setAttr -s 2 ".i";
createNode condition -n "CTLlen_COND";
	rename -uid "1FD634CF-4A5A-2D18-20F7-EDA655AEBCDB";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "BC1CEC82-4A76-79F9-2C1C-72A07E7DBFE7";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len_SUBT";
	rename -uid "91C8B591-4D98-3B7B-AD24-4995A8C78185";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV_MULT";
	rename -uid "A2EB6889-4301-A900-8522-CD8EA62CC074";
createNode multiplyDivide -n "power_val_POW";
	rename -uid "EF03B3D6-4042-31F6-F443-899BE3107155";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val_MULT";
	rename -uid "B2C4979D-4611-825A-309C-E19FC49BB331";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_uparm_softikV_DIVD";
	rename -uid "4FDFC2C5-4D67-90BD-CB98-DC9CD6FAB495";
	setAttr ".op" 2;
createNode plusMinusAverage -n "CTLLen_minue_dif_SUBT";
	rename -uid "D9A55D85-42B7-62DF-1372-5B8F85FB24C0";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV_SUBT";
	rename -uid "2C438537-4A20-2FBD-4DE2-0C9619390441";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "EAA3D415-44A3-7436-A315-04BAD057A685";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_CTLlen_COND";
	rename -uid "C520FF4A-47A7-4DA3-23D8-8C97208EF369";
	setAttr ".op" 2;
createNode condition -n "loarm_softikV_COND";
	rename -uid "3F47D254-43D5-0F14-4CDB-7FA1F08BD78A";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_result_softik_len_SUBT";
	rename -uid "B9D02666-4D22-0F2C-8E06-DFA3A55E9144";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_mult_softikV_MULT";
	rename -uid "775263FC-432D-F7A5-1278-FEB4767DB16A";
createNode multiplyDivide -n "loarm_power_val_POW";
	rename -uid "63EB0224-4468-5F9A-BDE6-66B966CE2333";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "loarm_negate_val_MULT";
	rename -uid "9ADEF361-474B-1C02-E5CE-40A1F3D22BB6";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_loarm_softikV_DIVD";
	rename -uid "4BE75DD1-40C4-D6F8-DCF5-C5ABE46C9D10";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_ctrlLen_minue_dif_SUBT";
	rename -uid "0B8D85F8-4267-A0B4-CD9B-A9B480359E4A";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_armlen_minus_softikV_SUBT";
	rename -uid "1D940F11-453C-0ACC-F30B-13AC6EDEA826";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "midarm_plus_stretch_PMA";
	rename -uid "6B9E7864-480A-7945-4050-61917B3A7990";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_midarm_MULT";
	rename -uid "2E6B3025-40CF-6FD0-E3A8-7AB05005A546";
createNode multiplyDivide -n "stretched_midarmLen_MULT";
	rename -uid "ECD2424B-4C45-28AD-F664-42AF59244FBB";
createNode plusMinusAverage -n "stretchedLen_SUBT";
	rename -uid "F946F939-449D-1A0C-FC25-F0BDEC427910";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "midarm_ratio3_DIVD";
	rename -uid "AB2E0A1B-4D21-15BB-522D-058ACD1E3F06";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen_PMA";
	rename -uid "C43208F4-4FBB-35F6-7AC4-1091522D3767";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch_PMA";
	rename -uid "E777EEEA-4CFD-D171-0C47-7DBE5BEF4A26";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm_MULT";
	rename -uid "142E49A4-4F1F-A403-113E-18B56E0A0F44";
createNode multiplyDivide -n "stretched_uparmLen_MULT";
	rename -uid "7EE6C61F-48C1-2D60-13DD-9298E1DD986F";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "315BDAD8-4BCC-B582-E917-A3B47BED85BF";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_plus_stretch_PMA";
	rename -uid "99C2B489-4438-AA31-08A2-41B997303572";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_stretchCtrl_arm_MULT";
	rename -uid "B3E51CF5-41F9-1937-9A92-8EBA2989166C";
createNode multiplyDivide -n "loarm_stretched_arm_MULT";
	rename -uid "76BA9329-43E5-ADC4-23DE-86B1924F23A1";
createNode plusMinusAverage -n "loarm_stretchedLen_SUBT";
	rename -uid "CAB10684-4509-09D0-12A9-809AB72819C3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio_DIVD";
	rename -uid "89AC95EE-42E1-ADA2-44A3-7D87FD30D21D";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loarm_stretch_armLen_PMA";
	rename -uid "A8DD1F5B-49DE-CE02-7708-C79EC53F2F39";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "1500F321-41CD-41BA-C908-83870669A7E0";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "3A21C172-4F0A-B4F3-1771-A0B90A2D48BB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "D2489309-46F3-AF8D-A007-D48BB63C133E";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "E0E478E2-42B7-5867-11A3-A78EE6EF0CD4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_wrist_space_scale_DCMX";
	rename -uid "4F0D8428-4ABA-2319-4067-C3A14C6A301D";
createNode decomposeMatrix -n "F_wrist_CTL_scale_DCMX";
	rename -uid "75E1712F-4995-CDF8-CED2-C488F65CBD51";
createNode decomposeMatrix -n "F_ball_CTL_scale_DCMX";
	rename -uid "7525B62E-48AB-080C-0FBD-278C90C88E7F";
createNode decomposeMatrix -n "FK_shoulder_CTL_local_DCMX";
	rename -uid "7D56A9C2-48C9-D025-E0DF-54BF6C498D41";
createNode multMatrix -n "FK_shoulder_CTL_local_MTMX";
	rename -uid "786A140E-4092-E60F-9BBB-519EC6230A22";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_elbow_CTL_local_DCMX";
	rename -uid "B6E1C3AF-4D28-BBC8-C45B-8598730513B0";
createNode multMatrix -n "FK_B_elbow_CTL_local_MTMX";
	rename -uid "955C8662-4F5B-51AB-4094-CD91A313BBA5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_elbow_CTL_local_DCMX";
	rename -uid "57BD600A-415B-65E2-8680-A98B411637D5";
createNode multMatrix -n "FK_F_elbow_CTL_local_MTMX";
	rename -uid "BAFDFA4F-4ABF-F2FC-4E0B-DC8150687BDD";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_wrist_CTL_local_DCMX";
	rename -uid "EE7C4F48-477D-076C-A726-B5B142B39A61";
createNode multMatrix -n "FK_F_wrist_CTL_local_MTMX";
	rename -uid "E969738E-45A0-EAE8-8CA9-A5B62D3578DC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_toe_CTL_local_DCMX";
	rename -uid "11A60B4E-4A94-FED9-6F1C-C499EDC76CC6";
createNode multMatrix -n "FK_F_toe_CTL_local_MTMX";
	rename -uid "2DD9D61E-45D9-AF1D-F48A-D6AB86C0973A";
	setAttr -s 2 ".i";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "F8411625-4E30-5F72-A2CD-C094E15A8EF0";
createNode decomposeMatrix -n "scapula_CTL_inverse_DCMX";
	rename -uid "CBA9A4E0-4669-3815-3958-E6BA65842249";
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "2376CDA4-4C9F-29B6-9C52-42BDC04BB455";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "1AA276EA-4DEE-FF66-906F-50B7D3F59B73";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion1";
	rename -uid "2F83AB70-4992-9B38-6539-C791C0FAEACF";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition";
	rename -uid "7CACE432-43CF-CF66-AA57-3A9A6DC9D308";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "89EDED2F-4CAD-C7CF-8F49-4D9EC3654B6B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "4C94CFC3-42AC-1512-0DB8-A3BDFA8BDB88";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition";
	rename -uid "D1258B2B-426E-6322-7A13-E7993D6C419B";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition";
	rename -uid "9378FB9D-43C9-097E-05AA-71A2738B68A7";
createNode unitConversion -n "unitConversion3";
	rename -uid "259CBED2-4F83-97E2-D1B8-10920127608B";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "526C1CA8-4CA6-BA19-52EE-97ADA3DC84FE";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "roll_angle_SUBT";
	rename -uid "7E3B86A3-48BD-B3BA-8D5A-5F945197E0FE";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion6";
	rename -uid "FCF9EE5D-43FD-6663-6350-CF9FFFB6F347";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "4955B17E-43B6-E5F3-17DC-81A857A6C165";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "555627FC-4C48-314C-45BF-679AB87CBF84";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "3C7C0A6D-44BF-ABAD-FA33-9582F90CBAFB";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon";
	rename -uid "2DA6DE8B-4634-0737-9212-4E9723C382F3";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition";
	rename -uid "472DA393-4D45-8317-16D8-F7AEC07348BD";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball_SUBT";
	rename -uid "A67E9F7B-4CEF-E3CA-F629-C89809E5C406";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap";
	rename -uid "A2AC78E7-4296-B834-4385-159F6FED2EAE";
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
	rename -uid "28472F54-4EDD-19DD-0A89-D78B3A33AC82";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "D513C3AD-4383-1334-00A2-3C9EA1A54CBF";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "60EC14F4-4E46-F4F4-07F4-B6923FC4F0BC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_wrist_local_DCMX1";
	rename -uid "FB695D3C-4E30-7BB4-F3B7-22B855DBB771";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "381B12F3-47ED-5257-6D41-C5804346D582";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion7";
	rename -uid "22EFA18E-4DAF-C836-6116-BF9C1FBF0430";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS";
	rename -uid "B418A599-46EA-A687-9F6C-539A8B2406B6";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "0D5FE67F-44B9-94A6-3BDA-F78E9A1E1ADE";
createNode multMatrix -n "input_F_elbow_local_MTMX2";
	rename -uid "9275D062-4F6F-9423-75B3-429A9B514F42";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX";
	rename -uid "78C48AEE-4435-9CB2-2E98-B984FE18A8FE";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX";
	rename -uid "97F6AF70-4852-0D4E-3C9A-569D468FD7ED";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion8";
	rename -uid "578A1A4F-4363-E6B6-160D-4AB29C2E637E";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIK_RVS";
	rename -uid "5CE3E126-4664-2469-5B2F-1D921881F906";
createNode decomposeMatrix -n "FK_scapula_space_inverse_DCMX";
	rename -uid "A67CD7A9-4756-0493-EA13-70B19CF8F4BF";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "27F36306-47AF-CB18-853A-7E82E669F93C";
createNode decomposeMatrix -n "FK_shoulder_CTL_inverse_DCMX";
	rename -uid "45439EBF-4119-7145-DA50-F0A66BEC09DB";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "CDC5B9E6-48B1-0A4D-60AE-209398057D8A";
createNode decomposeMatrix -n "FK_B_elbow_CTL_inverse_DCMX";
	rename -uid "590E3B25-40CF-528E-8D1C-30BC3E220EA0";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "3D38FF9D-40AC-464C-63F8-20B8227F1B4F";
createNode decomposeMatrix -n "FK_F_elbow_CTL_inverse_DCMX";
	rename -uid "DA8CA2FF-4016-F830-794E-578621DC6603";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "5EBCEEFC-4F78-90C6-DE22-D89230593690";
createNode decomposeMatrix -n "FK_F_wrist_CTL_inverse_DCMX";
	rename -uid "34C72922-4D43-2462-7E75-CEAF77892804";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "AE475710-43D4-CAE2-4A3C-12941C9F0B27";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "9C58D19F-4416-AD63-0CE3-33A704217199";
	setAttr -s 2 ".i";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "B010CDE9-4353-0791-8F93-8E9E3D6DB146";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "8AD618E7-4E7D-4E3B-B340-6CBEC8D592E3";
createNode blendColors -n "scapula_BLCL";
	rename -uid "6149FCE0-470A-89D3-D521-F1955332D8B0";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "8033A2E8-4768-C792-8FF5-A3AF9E90E0A9";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "91CAC783-4500-DA54-9EA8-338596356D3D";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "F92BF632-4B23-C10B-755F-0986DB1B4542";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "970EACA9-4878-1D82-759E-E3AA8F68A161";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "A2A8FEEF-4259-AA3A-2D94-E2BC76E4B040";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "6DECF1BB-433E-3D65-6E7E-4AAFC4216C8D";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "33D3791B-4883-86DE-F372-59AF50B43181";
createNode blendColors -n "wrist_BLCL";
	rename -uid "4C50AF2C-4667-9C9E-0FA7-F19FE643668F";
createNode pairBlend -n "toe_PRBL";
	rename -uid "10240254-4CFC-A2DC-E699-C0A57C0406DA";
createNode blendColors -n "toe_BLCL";
	rename -uid "5BD4DD60-4A65-0E2D-9809-9BAC1E5E45BF";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "9F97BE6E-4B33-265E-A25B-61A1DC4BCAD1";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "8E2D7297-411C-0C06-9B12-BFB535202D51";
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
connectAttr "input_scapula.t" "motion_IK_arm_GRP.t";
connectAttr "input_scapula.r" "motion_IK_arm_GRP.r";
connectAttr "input_scapula.s" "motion_IK_arm_GRP.s";
connectAttr "arm_switch_CTL.FK_IK" "motion_IK_arm_GRP.v";
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
connectAttr "input_scapula.t" "motion_FK_arm_GRP.t";
connectAttr "input_scapula.r" "motion_FK_arm_GRP.r";
connectAttr "input_scapula.s" "motion_FK_arm_GRP.s";
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
connectAttr "input_scapula.t" "arm_output.t";
connectAttr "input_scapula.r" "arm_output.r";
connectAttr "input_scapula.s" "arm_output.s";
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
connectAttr "motion_IK_arm_GRP.wim" "IK_shoulder_space_MTMX.i[1]";
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
