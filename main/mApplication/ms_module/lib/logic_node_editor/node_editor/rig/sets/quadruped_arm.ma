//Maya ASCII 2019 scene
//Name: quadruped_arm.ma
//Last modified: Fri, Jun 04, 2021 07:19:12 PM
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
	rename -uid "531F2030-449C-F056-6FAE-D09D0EA95F5A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 106.43818092650838 42.01756314580313 53.130126613927331 ;
	setAttr ".r" -type "double3" -9.9383527296077325 63.400000000003701 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "738B6CBC-4CF3-F2FF-8777-899D83F90F80";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 139.39580544044384;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "33EB1468-48F8-CF81-F9B1-17B71548EFAE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2953B0FF-481A-2E61-77DC-C2847992C023";
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
	rename -uid "5B1DEB17-4F4E-2BC4-477B-58AE09D97E7D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BCDE24F0-4B58-AD93-ADBA-0AABBD690C0D";
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
	rename -uid "5FE80A1E-4CF5-DB9E-51C5-9DA9B82D332B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E3358C1D-4582-1C35-D177-0497F1480C9A";
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
createNode transform -n "arm_GRP";
	rename -uid "2E2509CC-40B4-F0D6-EEBA-E183D5B95CE2";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -ci true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -sn "follow" -ln "follow" -dt "string";
	addAttr -ci true -sn "prefixType" -ln "prefixType" -dt "string";
	setAttr -s 2 ".iog";
	setAttr -s 2 ".rebuildMode";
	setAttr -s 5 ".init";
	setAttr -k on ".follow";
	setAttr -k on ".prefixType";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "0F153563-4A6C-CFED-6EB8-23836D18355C";
	setAttr ".v" no;
createNode transform -n "input_scapula" -p "arm_motion_GRP";
	rename -uid "C886EF97-4AB6-3748-6B88-D48AD6B9919A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "7C68BCBC-49CE-7B08-E3CA-11A314A73A00";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -8.7011337280273438 4.9459066390991211 ;
	setAttr ".r" -type "double3" -0.52397533208698288 27.710743682100155 -90.059896278189186 ;
	setAttr ".s" -type "double3" 1.0000000429453995 1.0000000680434886 0.99999999181452848 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_elbow" -p "input_shoulder";
	rename -uid "89080430-45FB-D8EC-8C89-1FA4F9DE4F88";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 10.242214031034827 1.7787442629924044e-09 -2.225818542811453e-07 ;
	setAttr ".r" -type "double3" -8.1911984901253783e-09 -34.029547058531556 1.4637066190214697e-08 ;
	setAttr ".s" -type "double3" 0.99999991550197298 0.99999999999999989 1.0000000147680039 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_wrist" -p "input_elbow";
	rename -uid "0D1F5F7E-4703-24A4-6FF2-22830FA37BC8";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 15.849438113517545 -1.5209256076786914e-09 -3.4436002493976048e-08 ;
	setAttr ".r" -type "double3" 0.44943940603026522 6.3735390761478259 0.04989327227168492 ;
	setAttr ".s" -type "double3" 1.0000000201979447 0.99999985072677022 0.99999999767305114 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_F_toe" -p "input_wrist";
	rename -uid "2E5C543C-44C8-4CE4-F04C-57B983A4C9C8";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".t" -type "double3" 4.5795577284653266 -7.5266193277911952e-10 1.5802825714672508e-10 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "motion_IK_GRP" -p "arm_motion_GRP";
	rename -uid "9CAF732D-40E3-0DF8-B27F-F5A031E03D3E";
createNode transform -n "IK_scapula_space" -p "motion_IK_GRP";
	rename -uid "CBED75B0-4E76-3DE7-9A32-D7B9623832BE";
createNode transform -n "IK_shoulder_space" -p "motion_IK_GRP";
	rename -uid "68D3D47F-4854-146B-28B8-EA81DA3AD082";
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "8D4B003C-427D-650A-C840-F684B0DB885D";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "E7AD7D8F-4CC8-A0A3-7DD7-DABF5A453BCF";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "4B6068F7-4332-A15F-69E6-98842912585B";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "4A5531F6-403B-ED69-918D-B09AE1126C06";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "4D99E0A3-455A-4D9F-2C08-18B00A2A694A";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "1901FCBD-4CEE-5B59-673E-F893478F0A69";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "7B30CCD2-490A-4022-C856-3DA26944C242";
	setAttr -k off ".v";
createNode transform -n "upper_ikHandle_offGRP" -p "upper_stretch_output_LOC";
	rename -uid "7881F87C-4483-54FD-0A21-BFBF890E823D";
	setAttr ".t" -type "double3" 4.547018678012825 0.022613638432172678 0.54422340875374964 ;
	setAttr ".r" -type "double3" -6.9331228749494276 -0.48266848513116989 89.873582448003958 ;
	setAttr ".s" -type "double3" 0.9999999319622529 0.99999996811001779 0.9999999971243182 ;
	setAttr ".sh" -type "double3" -5.7272230994793189e-10 1.1902580569994462e-09 -4.2094582787846851e-08 ;
createNode transform -n "upper_ikHandle_spcGRP" -p "upper_ikHandle_offGRP";
	rename -uid "FA20C770-4E97-7E55-F3A3-7DB8808110C2";
	setAttr ".t" -type "double3" 1.2821839187712909e-10 0 1.0008694978705379e-08 ;
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "6340222B-44CE-1AA3-6B8E-CBA11FE3C0D6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "wrist_L_CTLW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 0.047908872366633451 -20.767604794679666 -0.13511483263195365 ;
	setAttr -k on ".w0";
createNode transform -n "IK_shoulder_space_upVec" -p "IK_shoulder_space";
	rename -uid "785BFA98-40BD-9C78-F264-08906A1496B7";
	setAttr ".t" -type "double3" 1.0410075579336819e-14 1 -9.1419927183977734e-15 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "900A4926-4FF7-1A9C-C705-139EE8219AC8";
	setAttr -k off ".v";
createNode transform -n "softIK_input" -p "motion_IK_GRP";
	rename -uid "CAABC369-4CD3-E339-28DD-34B5DF094D75";
	addAttr -ci true -sn "armLen" -ln "armLen" -at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "extended_ctrl_len" -ln "extended_ctrl_len" -at "double";
	addAttr -ci true -sn "extended_len" -ln "extended_len" -at "double";
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
	setAttr -k on ".armLen";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".softik_ctrl_value";
	setAttr -k on ".extended_ctrl_len";
	setAttr -k on ".extended_len";
createNode transform -n "softIK_output" -p "motion_IK_GRP";
	rename -uid "4DB10F46-4374-DC0E-0A20-9093671E2508";
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
	rename -uid "F441EC2E-464F-046B-5E76-7CAC04ECDB21";
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
	rename -uid "4E53ADED-4797-BAD9-7BD2-2B9DC3198210";
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
createNode transform -n "IK_elbow_space" -p "motion_IK_GRP";
	rename -uid "0DE71FE8-42DE-CA06-9823-EA8A98C9A815";
createNode locator -n "IK_elbow_spaceShape" -p "IK_elbow_space";
	rename -uid "BA5AACC1-473D-3920-B2BB-179537EE17C0";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_elbow_space";
	rename -uid "1F9AAC76-4D4E-0262-246C-F194F9CA005E";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "A12DD603-49B0-386F-C612-55AA49C4ABDD";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "CA81CFDB-45EB-2F8E-B742-F6A5BAA7E63B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "81995FDE-42AA-478B-0F39-DDA4A791C72A";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "9C87467D-4D91-3E47-68B2-AA814532415F";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "FE0B6AB9-44DD-5131-25AE-DCB5C46F5918";
	setAttr -k off ".v";
createNode transform -n "lower_ikHandle_offGRP" -p "lower_stretch_output_LOC";
	rename -uid "26420990-40BF-6A27-DDC9-6F8A45858E1D";
	setAttr ".t" -type "double3" -4.5630023627788958 0.011673301683352122 0.38997630234269209 ;
	setAttr ".r" -type "double3" 4.904069202491935 -0.44596387597005371 89.818497171116633 ;
	setAttr ".s" -type "double3" 0.9999999319622529 0.99999996811001779 0.9999999971243182 ;
	setAttr ".sh" -type "double3" -5.7272230994793189e-10 1.1902580569994462e-09 -4.2094582787846851e-08 ;
createNode transform -n "lower_ikHandle_spcGRP" -p "lower_ikHandle_offGRP";
	rename -uid "15B26D93-49DB-3B81-B072-FDA3668EECC3";
	setAttr ".t" -type "double3" 1.2821839187712909e-10 0 1.0008694978705379e-08 ;
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "A9792433-4382-EBAE-95CD-C08264F53F7A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "foretoe01_L_CTLW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -0.0005094985888237474 1.4153552991406775 -0.041248488042829518 ;
	setAttr -k on ".w0";
createNode transform -n "IK_elbow_space_upVec" -p "IK_elbow_space";
	rename -uid "15B365A7-4174-7C3A-7236-7891BCB05CA3";
	setAttr ".t" -type "double3" 1.0410075579336819e-14 1 -9.1419927183977734e-15 ;
createNode locator -n "IK_elbow_space_upVecShape" -p "IK_elbow_space_upVec";
	rename -uid "D4B525F4-45AF-8194-CA29-74907BC412D7";
	setAttr -k off ".v";
createNode transform -n "motion_FK_GRP" -p "arm_motion_GRP";
	rename -uid "6CF9C0AE-4A1E-3D6A-5AE1-B79B51D35E23";
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "15821A1D-42C2-6CAC-911C-5B95AFCBDF2C";
	setAttr -s 2 ".iog";
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "0D92FB82-4017-67FB-7426-D7A752D65A60";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "1BF4B6DF-4CF0-135B-44F7-6792FA3EDCEE";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "1C9057AE-4262-44CE-06BD-DEAC79FC1605";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "F2DFCD7C-468F-AC99-C4CA-379B8A4CB565";
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
createNode transform -n "IK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "1B0A13D3-4949-4967-ADF4-C48D5B20B9A0";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674408 1.0000000222718179 1.0000000028214378 ;
	setAttr ".sh" -type "double3" -8.0815271250080359e-10 3.4848956455488211e-08 -2.2852080187929983e-08 ;
createNode transform -n "IK_shoulder_CTL_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "5EE2D168-4483-FC6E-7A81-8E96785E15CF";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "383F4059-47E6-36FF-B0A6-BDB8B5580C76";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "BCEACA86-464E-8F28-742C-5CAB1866BA75";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "C604EAF5-4BFD-A6A6-FEE2-03993E6D6AC6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		1.9999999999999991 -7.1054273576010019e-15 3.3234028999999952
		1.9999999999999991 3.3234028999999889 -3.5527136788005009e-15
		1.9999999999999991 -7.1054273576010019e-15 -3.3234029000000023
		1.9999999999999991 -7.1054273576010019e-15 -2.6587195000000041
		1.9999999999999996 2.3263824999999927 -0.33234029000000376
		1.9999999999999991 3.3234028999999889 -3.5527136788005009e-15
		1.9999999999999996 2.3263824999999927 0.33234028999999665
		1.9999999999999991 -7.1054273576010019e-15 2.658719499999997
		1.9999999999999991 -7.1054273576010019e-15 2.658719499999997
		1.9999999999999991 -7.1054273576010019e-15 3.3234028999999952
		;
createNode transform -n "wrist_CTL_offGRP" -p "IK_arm_CTL_GRP";
	rename -uid "5B2881AA-42FC-B820-7CD1-3B9B4CEDA00C";
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "wrist_CTL_spcGRP" -p "wrist_CTL_offGRP";
	rename -uid "85A3F507-41CD-018C-9D5C-4393B5CCCD50";
createNode transform -n "wrist_CTL" -p "wrist_CTL_spcGRP";
	rename -uid "4C9DCBF3-4466-9A37-4608-B3B6F0556A0F";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -min 0 -max 10 -at "double";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".softIK" 10;
	setAttr -k on ".stretchIK" 10;
createNode nurbsCurve -n "wrist_CTLShape" -p "wrist_CTL";
	rename -uid "17CAF060-4900-AA0B-323D-D3BB3F52C980";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		2.3000000000000003 -2.3000000000000003 2.3000000000000003
		2.3000000000000003 2.3000000000000003 2.3000000000000003
		2.3000000000000003 2.3000000000000003 -2.3000000000000003
		2.3000000000000003 -2.3000000000000003 -2.3000000000000003
		2.3000000000000003 -2.3000000000000003 2.3000000000000003
		-2.3000000000000003 -2.3000000000000003 2.3000000000000003
		-2.3000000000000003 2.3000000000000003 2.3000000000000003
		-2.3000000000000003 2.3000000000000003 -2.3000000000000003
		-2.3000000000000003 -2.3000000000000003 -2.3000000000000003
		2.3000000000000003 -2.3000000000000003 -2.3000000000000003
		2.3000000000000003 2.3000000000000003 -2.3000000000000003
		-2.3000000000000003 2.3000000000000003 -2.3000000000000003
		-2.3000000000000003 -2.3000000000000003 -2.3000000000000003
		-2.3000000000000003 -2.3000000000000003 2.3000000000000003
		-2.3000000000000003 2.3000000000000003 2.3000000000000003
		2.3000000000000003 2.3000000000000003 2.3000000000000003
		;
createNode transform -n "F_toe_CTL_offGRP" -p "wrist_CTL";
	rename -uid "9311143E-4198-D223-FD1B-4CA0AEB3C433";
	addAttr -ci true -sn "initTrans" -ln "initTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "initTransX" -ln "initTransX" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransY" -ln "initTransY" -at "double" -p "initTrans";
	addAttr -ci true -sn "initTransZ" -ln "initTransZ" -at "double" -p "initTrans";
	addAttr -r false -s false -ci true -m -im false -sn "rebuildMode" -ln "rebuildMode" 
		-at "message";
	setAttr -s 2 ".iog";
	setAttr ".initTrans" -type "double3" 0.018614768981932706 -4.5795176029205225 -0.004486083984375 ;
createNode transform -n "F_toe_CTL_spcGRP" -p "F_toe_CTL_offGRP";
	rename -uid "1B6990B3-4DAA-7BAD-84CD-0E92FB725702";
createNode transform -n "F_toe_CTL" -p "F_toe_CTL_spcGRP";
	rename -uid "B91CEB3F-430B-1C3F-7FD5-4089A7436289";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "F_toe_CTLShape" -p "F_toe_CTL";
	rename -uid "E137B855-4806-5EAF-F758-37823D202399";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.4731898547955 -0.78361162489122527 
		-2.2568014796867257 3.8753925704472605e-17 -1.1081941875543881 -3.1915992601566345 
		-1.4731898547955 -0.78361162489122493 -2.2568014796867244 -2.0834050726022482 -9.0121848109036685e-16 
		-1.8441102824739501e-15 -1.4731898547955 0.78361162489122371 2.2568014796867231 -2.9751395299855315e-16 
		1.1081941875543881 3.1915992601566354 1.4731898547955 0.78361162489122349 2.2568014796867231 
		2.0834050726022482 -6.9264544863712283e-16 -1.2434199490086081e-15 0 0 0 0 0 0 0 
		0 0;
createNode transform -n "IK_F_toe_local_LOC" -p "F_toe_CTL";
	rename -uid "59D6F060-447E-C5A0-C6EE-339D3532D31D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.018614767469786742 0.00014963436920290007 -0.0044293874623662077 ;
	setAttr ".r" -type "double3" 0.56459897886405341 -22.387527912010373 -89.933752995122404 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "IK_F_toe_local_LOCShape" -p "IK_F_toe_local_LOC";
	rename -uid "4D02E2EC-4C54-4572-69C2-A580A99DE9B0";
	setAttr -k off ".v";
createNode transform -n "F_toe_flex_CTL_offGRP" -p "wrist_CTL";
	rename -uid "FFFE375C-43A4-4BCE-41FD-88BBD35233D2";
	setAttr ".t" -type "double3" 0 -4.5795424554646136 -1.0658141036401503e-14 ;
createNode transform -n "F_toe_flex_CTL_spcGRP" -p "F_toe_flex_CTL_offGRP";
	rename -uid "5A8983C2-4AEB-F055-D6C7-05BD4F7A574B";
createNode transform -n "F_toe_flex_CTL" -p "F_toe_flex_CTL_spcGRP";
	rename -uid "97762FF7-4478-392F-9AAE-ED88E4EE10F1";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "F_toe_flex_CTLShape" -p "F_toe_flex_CTL";
	rename -uid "A10912C4-47EE-8C97-BED5-CBB49DFD3B48";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122438 4.8025817228828336 
		2.8273701351040854 -6.785732323111192e-17 4.9324147479480978 3.9244264099517991 0.78361162489122438 
		4.8025817228828336 5.0214826847995129 1.1081941875543881 4.4891370729263436 5.4758982725279415 
		0.78361162489122438 4.1756924229698535 5.0214826847995129 1.1100856969603501e-16 
		4.0458593979045876 3.9244264099517991 -0.78361162489122438 4.1756924229698544 2.8273701351040854 
		-1.1081941875543884 4.4891370729263436 2.3729545473756559 0 0 0 0 0 0 0 0 0;
createNode transform -n "wrist_flex_CTL_offGRP" -p "F_toe_flex_CTL";
	rename -uid "5BCF8444-4FBC-B7B5-0A96-5199450F3FF2";
	setAttr ".t" -type "double3" -5.6621339616924615e-08 4.4891370729263418 3.9244264099517991 ;
createNode transform -n "wrist_flex_CTL_spcGRP" -p "wrist_flex_CTL_offGRP";
	rename -uid "47F823E8-4F7A-2090-AF09-F38A6F3DF35E";
createNode transform -n "wrist_flex_CTL" -p "wrist_flex_CTL_spcGRP";
	rename -uid "83524F42-4008-3427-0ED1-048DF8397A2D";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "wrist_flex_CTLShape" -p "wrist_flex_CTL";
	rename -uid "AFB51B9D-4FE4-5F21-2112-9BAB06C6941B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.075383438314536311 -0.7836202148416398 
		-5.8286708792820728e-16 6.5278744948327714e-18 -1.1082063355787652 -2.7977620220553955e-16 
		-0.075383438314536311 -0.78362021484163957 -9.3258734068513153e-16 -0.10660828084273222 
		-3.3320409777644003e-17 -2.4128572597604291e-17 -0.075383438314536311 1.6426066880969854 
		3.9634961979118097e-16 -1.0679024404758346e-17 2.3229966559515103 6.5281113847959233e-16 
		0.075383438314536311 1.6426066880969841 9.792167077193881e-16 0.10660828084273222 
		4.6068688531929023e-16 6.3472101032758347e-17 0 0 0 0 0 0 0 0 0;
createNode transform -n "arm_poleVec_GRP" -p "IK_arm_CTL_GRP";
	rename -uid "45BC6C04-4ADB-B92D-4746-19A9E854B646";
	setAttr ".t" -type "double3" 37.31511129023724 -6.0800531369535022 -2.0281618861537751 ;
	setAttr ".r" -type "double3" -27.711215525831829 -0.4961230169980006 90.053028430300898 ;
	setAttr ".s" -type "double3" 0.99999997792707851 1.0000000046744835 1.0000000173984396 ;
	setAttr ".sh" -type "double3" -1.1167435822272836e-08 2.0359929255204614e-08 4.2917049389236923e-08 ;
createNode transform -n "upper_poleVec_offGRP" -p "arm_poleVec_GRP";
	rename -uid "9583B04E-4621-D635-850D-9593454E6660";
createNode transform -n "upper_poleVec_scapula_offGRP" -p "upper_poleVec_offGRP";
	rename -uid "AA4972FB-4A6C-878D-02AB-68BCFE02881A";
	setAttr ".t" -type "double3" -17.688412074028435 -1.8245475923956418 1.7592039411960947 ;
	setAttr ".r" -type "double3" 6.3194579930744093 -0.44083531645937124 89.766301169896082 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
createNode transform -n "upper_poleVec_scapula_spcGRP" -p "upper_poleVec_scapula_offGRP";
	rename -uid "5EEAE04E-49A2-DBAF-76EF-249F61F68FE8";
createNode transform -n "upper_poleVec_spcGRP" -p "upper_poleVec_scapula_spcGRP";
	rename -uid "5FD9C5FE-40C8-23B6-40C6-FE84F00307C5";
	setAttr ".t" -type "double3" 1.8061490705187193 -18.869313185759935 -9.7557479662486202 ;
	setAttr ".r" -type "double3" -0.46671164702861401 -6.3176071521603134 -89.764880240855675 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "upper_poleVec" -p "upper_poleVec_spcGRP";
	rename -uid "2AE92601-4DB6-300A-0CA7-29837DE7C545";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "upper_poleVecShape" -p "upper_poleVec";
	rename -uid "26CDE3B9-4A69-B417-A619-08B759D13DAD";
	setAttr -k off ".v";
createNode transform -n "lower_flex_poleVec_offGRP" -p "arm_poleVec_GRP";
	rename -uid "8CE6AA83-4FF0-2FA5-DC88-5593BF2F9BBF";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999878 ;
createNode transform -n "lower_flex_poleVec_spcGRP" -p "lower_flex_poleVec_offGRP";
	rename -uid "ADBB8CB9-4C72-4471-0A43-5A99B6742097";
	setAttr ".s" -type "double3" 1.0000000000000013 1 1.0000000000000011 ;
createNode transform -n "lower_poleVec_offGRP" -p "lower_flex_poleVec_spcGRP";
	rename -uid "A0D477B3-45F5-C81B-9591-748509493CFA";
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
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999811 0.99999999999999978 ;
	setAttr ".initTrans" -type "double3" -0.018614768981929153 4.5795176029205384 0.0044860839843821054 ;
	setAttr ".initRot" -type "double3" -0.019928427509681976 0.056126322594029887 -89.767106066420155 ;
createNode transform -n "lower_poleVec_spcGRP" -p "lower_poleVec_offGRP";
	rename -uid "8D00270A-41D7-22D9-A621-18B14A036AE2";
	setAttr ".t" -type "double3" 0.0098510910297395782 0.022094438542522354 9.9955312484316359 ;
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000011 0.99999999999999878 ;
createNode transform -n "lower_poleVec" -p "lower_poleVec_spcGRP";
	rename -uid "02CAFEC8-4546-5B4B-5255-AC800DD0D8F0";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "lower_poleVecShape" -p "lower_poleVec";
	rename -uid "DDE1426B-4786-D9AD-BEB5-C083F498C09B";
	setAttr -k off ".v";
createNode transform -n "FK_arm_CTL_GRP" -p "arm_CTL_GRP";
	rename -uid "4D1C995B-44E7-2E62-6803-F2A611077F46";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_arm_CTL_GRP";
	rename -uid "27499420-4623-D46C-F1F7-4DAE239DEACA";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "DD2E6F09-443A-CA9F-79AE-93AD1C96026C";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space";
	rename -uid "A1ABFA93-4A3A-C363-5FBA-4BAFC8CB60A7";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "B46A13D1-44D5-2333-14A7-82A14DDA0382";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "EA80367A-4E16-1D85-550C-239B545E434E";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "47FE947C-43C5-C6EE-902D-EB8F128ED10C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489120928 3.1657909645605455 
		-3.9494025894518061 1.5208811495611016e-14 4.4771045177197264 -4.0594246889894417e-14 
		0.78361162489123903 3.1657909645605447 3.949402589451728 1.1081941875544024 3.8203347043845097e-15 
		5.585298705274071 0.78361162489123903 -3.1657909645605424 3.949402589451728 1.5387677388538157e-14 
		-4.4771045177197291 -3.9692762789541649e-14 -0.78361162489120928 -3.1657909645605424 
		-3.9494025894518061 -1.1081941875543737 2.9776996532734011e-15 -5.5852987052741581 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_elbow_CTL_offGRP" -p "FK_shoulder_CTL";
	rename -uid "3038FF20-41AB-08E7-98F5-958608AFA5F8";
createNode transform -n "FK_elbow_CTL_spcGRP" -p "FK_elbow_CTL_offGRP";
	rename -uid "7F1395C6-408B-3D0F-6E48-85A1BCD0B98B";
createNode transform -n "FK_elbow_CTL" -p "FK_elbow_CTL_spcGRP";
	rename -uid "B7B6F350-48CF-1929-26D2-D18AE2DF6F15";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_elbow_CTLShape" -p "FK_elbow_CTL";
	rename -uid "C8A59C7E-4DEC-7CBF-7ABB-DABF564CECFC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122449 2.507557199651917 
		-3.2911688245431394 -6.7857323231109109e-17 3.5462214001740411 -2.8500075757065798e-16 
		0.78361162489122449 2.5075571996519166 3.2911688245431394 1.1081941875543877 3.0260076866411964e-15 
		4.6544155877284279 0.78361162489122449 -2.5075571996519148 3.2911688245431394 1.1100856969603222e-16 
		-3.546221400174042 4.662359927233347e-16 -0.78361162489122449 -2.5075571996519148 
		-3.2911688245431394 -1.1081941875543877 2.3585739827908124e-15 -4.6544155877284279 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_wrist_CTL_offGRP" -p "FK_elbow_CTL";
	rename -uid "7CE4AB6C-4E25-D1CD-0518-FA8F4D41E0B0";
createNode transform -n "FK_wrist_CTL_spcGRP" -p "FK_wrist_CTL_offGRP";
	rename -uid "E027171F-402B-6442-3F4A-E8AC2833B305";
createNode transform -n "FK_wrist_CTL" -p "FK_wrist_CTL_spcGRP";
	rename -uid "8E9E9E1D-453A-71E7-5AA0-608D31AA7CC4";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_wrist_CTLShape" -p "FK_wrist_CTL";
	rename -uid "8BB7CD4D-44ED-00FB-6399-47B98C61812A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122471 1.5202065522889727 
		-2.3038181771802 -9.560357429312334e-16 2.1498967238555124 -2.8107450842178277e-15 
		0.78361162489122382 1.5202065522889734 2.3038181771801942 1.1081941875543868 -1.6116151084102595e-15 
		3.2580909114098997 0.78361162489122382 -1.5202065522889747 2.3038181771801942 -7.771698500040926e-16 
		-2.1498967238555124 -2.2848793590120329e-15 -0.78361162489122471 -1.5202065522889738 
		-2.3038181771802 -1.1081941875543875 -2.0162467913695526e-15 -3.2580909114098984 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_wrist_CTL";
	rename -uid "9FE2691C-4CC4-7901-0E68-ED839D1CF2AF";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "9E354E54-4A69-EC8B-B817-48AC76C7C4AC";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "E7780E04-4EE3-9514-035F-CE90C00D76B9";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "1BB09EFF-4B9C-F4A6-55DF-7396FE27C3CE";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489121816 1.5202065522889696 
		-2.3038181771801982 5.1546317846056251e-15 2.149896723855508 -1.9758573696997104e-15 
		0.78361162489122993 1.5202065522889703 2.3038181771801951 1.1081941875543933 -3.334681242628502e-15 
		3.2580909114098975 0.78361162489122993 -1.5202065522889763 2.3038181771801951 5.3334976775327602e-15 
		-2.1498967238555178 -1.4499916444939152e-15 -0.78361162489121816 -1.5202065522889761 
		-2.3038181771801982 -1.1081941875543815 -3.7393129255877975e-15 -3.258090911409901 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "arm_switch_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "41263DC7-45BB-6894-4AD9-86BAC81557D0";
	setAttr -s 2 ".iog";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "arm_switch_CTL_spcGRP" -p "arm_switch_CTL_offGRP";
	rename -uid "86CEC181-4E4B-47D2-ED13-3DB21C2BF150";
createNode transform -n "arm_switch_CTL" -p "arm_switch_CTL_spcGRP";
	rename -uid "D6EE8E54-4426-5C82-878C-D78C9CD4E3F5";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr -s 2 ".iog";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "arm_switch_CTLShape" -p "arm_switch_CTL";
	rename -uid "F5FDA7A6-4EAF-16FD-C8C8-32A396022B39";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4CD82FA7-44C4-105E-26EB-5999461CA770";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "8FA4D05A-449B-E244-D8EF-15B62AD15E3A";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/logic_node_editor/node_editor/rig/sets/quadruped_arm.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "958A39E9-4DCC-D6AC-56B0-409D4BBC2C69";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EF4608A6-468F-BB13-96EB-7AADA3192809";
createNode displayLayerManager -n "layerManager";
	rename -uid "CC085845-4107-4727-C072-DEB7B81E3E0D";
createNode displayLayer -n "defaultLayer";
	rename -uid "BD211DF6-4F3F-597A-D51A-AAAE457017F0";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1F38D350-44E6-B405-84C8-8E806FCC704C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F0808CD2-47E0-96E2-2975-ABAE16DC8E24";
	setAttr ".g" yes;
createNode decomposeMatrix -n "IK_shoulder_space_DCMX";
	rename -uid "884B7C54-49F3-2C75-4FFF-69B027A61CD5";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "DA123919-4A3C-A4A3-0635-BCAEC49356C7";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "CB45D74D-47AC-5AAE-0AD7-BAAE91A34528";
createNode plusMinusAverage -n "soft_armLen";
	rename -uid "8A2FE421-4769-53EE-D46A-B9BAFB3B703E";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "1B131143-48C5-A221-F554-63AA59B7E712";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "35993D62-4455-CAEA-F12E-069129C99EB5";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "0B2052AC-4B52-CE61-4473-88BB1E5C8496";
	setAttr -s 2 ".i";
createNode distanceBetween -n "loarmLen";
	rename -uid "F2976E72-47BA-500A-D671-87B1917B6E9C";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "5B1A1FC9-4997-8F7C-0106-7F9E508AFAA5";
	setAttr -s 2 ".i";
createNode distanceBetween -n "ctrlLen";
	rename -uid "FF6D50FD-43D0-3F16-F237-CABCFEFD5D92";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "13D0977E-4864-55C1-A213-EE85A421BF85";
	setAttr -s 2 ".i";
createNode multMatrix -n "IK_ctrl_local_MTMX";
	rename -uid "433637A1-4C1B-AACC-452A-578C8D2B2352";
createNode multiplyDivide -n "IK_negate_val";
	rename -uid "684CD22B-4D07-96BC-E98D-759760EB79D2";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "F_toe01_ctrlLen";
	rename -uid "CE2F279F-44C9-91E0-6115-5DA300559A42";
createNode multMatrix -n "input_elbow_local_dist_MTMX";
	rename -uid "F80E02D2-44F5-F4D7-9675-D4AF897949E2";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "C031E616-47FB-6FE6-F909-AE861DB62A3A";
createNode plusMinusAverage -n "extended_soft_Len";
	rename -uid "ABDB0A89-402F-2329-BC59-A1B6FB11CF4F";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode distanceBetween -n "expandarmLen";
	rename -uid "73702B8B-4E2E-32E2-D375-0C8F89B5E384";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "FEB50C07-4DBA-3F0E-5E23-0094B3449512";
	setAttr -s 2 ".i";
createNode condition -n "ctrllen_COND";
	rename -uid "A9AD2AD4-4148-4E41-7D67-FE8DD3CD1F9A";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "EC72DCB1-44EA-B018-0373-B5AA881CD891";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "D66FF73E-47C4-C10D-07D5-A2B7DBA17B33";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV";
	rename -uid "F43D9786-40DF-EAA2-AF10-109E50254F35";
createNode multiplyDivide -n "power_val";
	rename -uid "06AADD14-4FFE-834F-26D8-4C9DA9122385";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val";
	rename -uid "0176BFB3-4B53-803F-6DD0-F2BEAEFB9AFE";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "1A2E1DC9-4CFF-1DC0-67A2-ABAA46B8E8F3";
	setAttr ".op" 2;
createNode plusMinusAverage -n "ctrlLen_minue_dif";
	rename -uid "CDE3AC81-4726-6505-9962-9F9209A4D9E2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "201A2D8C-48F3-8EC5-BDB3-A6B55AC089A5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "C610A586-4A5B-1D83-829F-8CA0A89713FA";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "extended_ctrllen_COND";
	rename -uid "1E623A72-4020-438A-9C3B-34928D1A308C";
	setAttr ".op" 2;
createNode condition -n "extended_softikV_COND";
	rename -uid "46B0B6E2-4596-ADA0-86B1-D39774C81672";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extended_result_softik_len";
	rename -uid "D5909239-47FA-FF35-88D8-7491571D4279";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "extended_mult_softikV";
	rename -uid "55502584-4B17-5A46-0022-AB99409D10D9";
createNode multiplyDivide -n "extended_power_val";
	rename -uid "2DE33FEA-4262-38E8-79B6-2195F493BD89";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "extended_negate_val";
	rename -uid "E2CD0D9A-4BBA-E748-8CF2-2B926068B142";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_expand_arm_softikV";
	rename -uid "8BB7D374-4B6A-EF33-28CB-3BA5CC3858BC";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extended_ctrlLen_minue_dif";
	rename -uid "D58C4099-44D8-8397-63C7-4CA447D45ED9";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "extended_armlen_minus_softikV";
	rename -uid "C2DB973D-4F21-FE2D-8440-CF9B6852FF31";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_plus_stretch";
	rename -uid "9A0DCCD1-4429-25F2-B92C-41A63D0A2DC4";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "4A14A03C-42E8-77E2-C49C-8C989B0D274D";
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "EF607A11-4792-55FD-4205-39932799E600";
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "AE34640D-4D6E-8325-DC31-8BA2CE08F3A7";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "1E55E686-45A1-BA9C-78BA-4EB23A4D53A6";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen";
	rename -uid "A9A23FB5-4725-624F-6CA3-2A9828E6419C";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "uparm_plus_stretch";
	rename -uid "550F8C17-49B4-972C-327D-F4A52943A9FF";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "BB5F38FC-4951-BB51-5EE1-74846151461C";
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "5764833B-484C-0122-3E35-5DBC68BFAF2F";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "A7B681E2-46B4-0DCC-2EB0-F384DDA624E7";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extendedarm_plus_stretch";
	rename -uid "0FA3D371-4A7B-632C-448F-68949961C1A1";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "extended_stretchCtrl_arm";
	rename -uid "7D72851A-4C1B-2A66-01D9-039500261229";
createNode multiplyDivide -n "extended_stretched_arm";
	rename -uid "BB518E52-4E82-8D66-658C-75A1404D8DF5";
createNode plusMinusAverage -n "extended_stretchedLen";
	rename -uid "4C0EDA8B-4575-BCB4-5FA5-7AA4A88B58B2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "extendedarm_ratio";
	rename -uid "CE916D22-4EAC-0E7E-0D8E-06B76C3BDB6C";
	setAttr ".op" 2;
createNode plusMinusAverage -n "extended_stretch_armLen";
	rename -uid "F5B57F5F-4127-ECCB-3368-B09B267EB974";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "IK_elbow_space_DCMX";
	rename -uid "44025785-4652-5A3F-4BC5-BA9DA338048D";
createNode multMatrix -n "IK_elbow_space_MTMX";
	rename -uid "BE7B5A38-428C-CD9F-5CEC-CCA0484C56D0";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "extendedarm_stretch_output_mul_ctrlVal";
	rename -uid "1B006976-4780-2D9A-3172-988AEEBA4AAE";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "07E1E83E-409C-3357-1D7E-96A0BC5B1C79";
createNode decomposeMatrix -n "wrist_CTL_offGRP_space_DCMX";
	rename -uid "BCA52B2B-45F8-AA22-28EE-42BC1CCF5A6D";
createNode multMatrix -n "wrist_CTL_offGRP_space_MTMX";
	rename -uid "A5DAE987-4DF0-4B5D-8FDD-78B2720B769D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_toe_CTL_offGRP_space_DCMX";
	rename -uid "29F0CAB7-44C4-8D7F-507D-BF8C617F55E4";
createNode multMatrix -n "F_toe_CTL_offGRP_space_MTMX";
	rename -uid "E7E71C6D-4B44-C743-DAF9-FE9160E4DF5E";
	setAttr -s 2 ".i";
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "4434A792-4D2C-79C8-B8B1-B284451EA026";
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "8C405CA5-4C1D-8BC4-7BD1-E2BCBF6B273C";
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "2CE3AD28-4338-4AE4-5E7A-329071D332BE";
createNode decomposeMatrix -n "upper_poleVec_offGRP_space_DCMX";
	rename -uid "2D00E077-42D0-DDFD-B878-50B618FB4D9B";
createNode multMatrix -n "upper_poleVec_offGRP_space_MTMX";
	rename -uid "FE0C73F9-4645-33B8-C561-3F9F06E1A392";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "lower_flex_poleVec_space_DCMX";
	rename -uid "C827223B-4214-4010-CAD2-8BA7B7C13268";
createNode multMatrix -n "lower_flex_poleVec_space_MTMX";
	rename -uid "B2A83EFA-428A-5F5B-490D-00A13C3CE234";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "lower_poleVec_offGRP_space_DCMX";
	rename -uid "F73CBC7C-4379-6DDE-10C3-67B9435944A9";
createNode multMatrix -n "lower_poleVec_offGRP_space_MTMX";
	rename -uid "5E8BDCE0-445E-CEF8-EDBD-1DA50B50538A";
	setAttr -s 2 ".i";
createNode reverse -n "FKIK_RVS";
	rename -uid "F8D98B6D-461D-7279-2947-2DAA12F46317";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "E1AFDBF1-42A2-62C1-9251-12B911613202";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "1E186A3A-4148-8F9D-AEDD-FD8A849C1DE0";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "3F696D0C-4463-452D-C500-0B8D85514E5C";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "D016A6DB-4368-E5C3-5D92-4AA1D6E2169C";
createNode choice -n "arm_switch_space_CHOI";
	rename -uid "75181B4D-46C8-9BA4-0A52-F3AF06D4FC87";
	setAttr -s 2 ".i";
createNode multMatrix -n "arm_switch_CTL_space_MTMX";
	rename -uid "EBDF5EA4-4681-F78E-9DD3-B29CFE25558B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "arm_switch_CTL_space_DCMX";
	rename -uid "AAAC97BF-45DC-A41C-BFF1-66AC43ED23FB";
createNode objectSet -n "arm_SET";
	rename -uid "0451B7BD-40E8-3D07-59BE-B0A1D2848BE7";
	setAttr ".ihi" 0;
	setAttr -s 80 ".dsm";
	setAttr -s 71 ".dnsm";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "337EF919-40E1-8755-7F45-43A0484B1CE0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1133.3332882987147 -553.57140657447724 ;
	setAttr ".tgi[0].vh" -type "double2" 1133.3332882987147 553.57140657447724 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3A723D72-4392-8CE5-1579-8BAB3B2AEDD6";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 874\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 874\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 874\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "191A34BD-4B11-80EC-0632-8D8E727FC764";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr -s 71 ".u";
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
connectAttr "F_toe_CTL_offGRP.rebuildMode" "arm_GRP.rebuildMode" -na;
connectAttr "lower_poleVec_offGRP.rebuildMode" "arm_GRP.rebuildMode" -na;
connectAttr "input_scapula.init" "arm_GRP.init" -na;
connectAttr "input_shoulder.init" "arm_GRP.init" -na;
connectAttr "input_elbow.init" "arm_GRP.init" -na;
connectAttr "input_wrist.init" "arm_GRP.init" -na;
connectAttr "input_F_toe.init" "arm_GRP.init" -na;
connectAttr "input_scapula.t" "motion_IK_GRP.t";
connectAttr "input_scapula.r" "motion_IK_GRP.r";
connectAttr "input_scapula.s" "motion_IK_GRP.s";
connectAttr "scapula_CTL.t" "IK_scapula_space.t";
connectAttr "scapula_CTL.r" "IK_scapula_space.r";
connectAttr "scapula_CTL.s" "IK_scapula_space.s";
connectAttr "IK_shoulder_space_DCMX.ot" "IK_shoulder_space.t";
connectAttr "IK_shoulder_space_DCMX.or" "IK_shoulder_space.r";
connectAttr "IK_shoulder_space_DCMX.os" "IK_shoulder_space.s";
connectAttr "IK_upper_CTLaim_aimConstraint1.crx" "IK_upper_CTLaim.rx";
connectAttr "IK_upper_CTLaim_aimConstraint1.cry" "IK_upper_CTLaim.ry";
connectAttr "IK_upper_CTLaim_aimConstraint1.crz" "IK_upper_CTLaim.rz";
connectAttr "softIK_output.output_softik" "upper_softIK_output_LOC.tx";
connectAttr "stretch_output_mul_ctrlVal.ox" "upper_stretch_output_LOC.tx";
connectAttr "F_toe_flex_CTL.r" "upper_ikHandle_spcGRP.r";
connectAttr "IK_upper_CTLaim.pim" "IK_upper_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upper_CTLaim.t" "IK_upper_CTLaim_aimConstraint1.ct";
connectAttr "IK_upper_CTLaim.rp" "IK_upper_CTLaim_aimConstraint1.crp";
connectAttr "IK_upper_CTLaim.rpt" "IK_upper_CTLaim_aimConstraint1.crt";
connectAttr "IK_upper_CTLaim.ro" "IK_upper_CTLaim_aimConstraint1.cro";
connectAttr "wrist_CTL.t" "IK_upper_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "wrist_CTL.rp" "IK_upper_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "wrist_CTL.rpt" "IK_upper_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "wrist_CTL.pm" "IK_upper_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upper_CTLaim_aimConstraint1.w0" "IK_upper_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_shoulder_space_upVec.wm" "IK_upper_CTLaim_aimConstraint1.wum";
connectAttr "soft_armLen.o1" "softIK_input.armLen";
connectAttr "ctrlLen.d" "softIK_input.ctrlLen";
connectAttr "IK_negate_val.ox" "softIK_input.softik_ctrl_value";
connectAttr "F_toe01_ctrlLen.d" "softIK_input.extended_ctrl_len";
connectAttr "extended_soft_Len.o1" "softIK_input.extended_len";
connectAttr "ctrllen_COND.ocr" "softIK_output.output_softik";
connectAttr "extended_ctrllen_COND.ocr" "softIK_output.output_extended_softik";
connectAttr "softIK_output.output_softik" "stretchIK_input.softik_len";
connectAttr "IK_negate_val.oy" "stretchIK_input.stretch_ctrl_value";
connectAttr "uparmLen.d" "stretchIK_input.uparm_len";
connectAttr "ctrlLen.d" "stretchIK_input.ctrl_len";
connectAttr "loarmLen.d" "stretchIK_input.loarm_len";
connectAttr "expandarmLen.d" "stretchIK_input.extendedarm_len";
connectAttr "softIK_output.output_extended_softik" "stretchIK_input.extended_softik_len"
		;
connectAttr "F_toe01_ctrlLen.d" "stretchIK_input.extended_ctrl_len";
connectAttr "loarm_plus_stretch.o1" "stretchIK_output.loarm_stretched";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchIK_output.stretch_ctrl_value"
		;
connectAttr "stretchedLen.o1" "stretchIK_output.stretched_len";
connectAttr "uparm_plus_stretch.o1" "stretchIK_output.uparm_stretched";
connectAttr "extendedarm_plus_stretch.o1" "stretchIK_output.extendedarm_stretched"
		;
connectAttr "extended_stretchedLen.o1" "stretchIK_output.expand_stretched_len";
connectAttr "IK_elbow_space_DCMX.ot" "IK_elbow_space.t";
connectAttr "IK_elbow_space_DCMX.or" "IK_elbow_space.r";
connectAttr "IK_elbow_space_DCMX.os" "IK_elbow_space.s";
connectAttr "IK_lower_CTLaim_aimConstraint1.crx" "IK_lower_CTLaim.rx";
connectAttr "IK_lower_CTLaim_aimConstraint1.cry" "IK_lower_CTLaim.ry";
connectAttr "IK_lower_CTLaim_aimConstraint1.crz" "IK_lower_CTLaim.rz";
connectAttr "softIK_output.output_extended_softik" "lower_softIK_output_LOC.tx";
connectAttr "extendedarm_stretch_output_mul_ctrlVal.ox" "lower_stretch_output_LOC.tx"
		;
connectAttr "wrist_flex_CTL.r" "lower_ikHandle_spcGRP.r";
connectAttr "IK_lower_CTLaim.pim" "IK_lower_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lower_CTLaim.t" "IK_lower_CTLaim_aimConstraint1.ct";
connectAttr "IK_lower_CTLaim.rp" "IK_lower_CTLaim_aimConstraint1.crp";
connectAttr "IK_lower_CTLaim.rpt" "IK_lower_CTLaim_aimConstraint1.crt";
connectAttr "IK_lower_CTLaim.ro" "IK_lower_CTLaim_aimConstraint1.cro";
connectAttr "F_toe_CTL.t" "IK_lower_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_toe_CTL.rp" "IK_lower_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_toe_CTL.rpt" "IK_lower_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_toe_CTL.pm" "IK_lower_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lower_CTLaim_aimConstraint1.w0" "IK_lower_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_elbow_space_upVec.wm" "IK_lower_CTLaim_aimConstraint1.wum";
connectAttr "input_scapula.t" "motion_FK_GRP.t";
connectAttr "input_scapula.r" "motion_FK_GRP.r";
connectAttr "input_scapula.s" "motion_FK_GRP.s";
connectAttr "input_scapula.t" "arm_CTL_GRP.t";
connectAttr "input_scapula.r" "arm_CTL_GRP.r";
connectAttr "input_scapula.s" "arm_CTL_GRP.s";
connectAttr "makeNurbCircle1.oc" "scapula_CTLShape.cr";
connectAttr "arm_switch_CTL.FK_IK" "IK_arm_CTL_GRP.v";
connectAttr "input_shoulder.t" "IK_arm_CTL_GRP.t";
connectAttr "scapula_CTL.t" "IK_shoulder_CTL_spcGRP.t";
connectAttr "scapula_CTL.r" "IK_shoulder_CTL_spcGRP.r";
connectAttr "scapula_CTL.s" "IK_shoulder_CTL_spcGRP.s";
connectAttr "wrist_CTL_offGRP_space_DCMX.ot" "wrist_CTL_offGRP.t";
connectAttr "F_toe_CTL_offGRP_space_DCMX.ot" "F_toe_CTL_offGRP.t";
connectAttr "makeNurbCircle2.oc" "F_toe_CTLShape.cr";
connectAttr "makeNurbCircle4.oc" "F_toe_flex_CTLShape.cr";
connectAttr "makeNurbCircle3.oc" "wrist_flex_CTLShape.cr";
connectAttr "upper_poleVec_offGRP_space_DCMX.ot" "upper_poleVec_offGRP.t";
connectAttr "upper_poleVec_offGRP_space_DCMX.or" "upper_poleVec_offGRP.r";
connectAttr "scapula_CTL.t" "upper_poleVec_scapula_spcGRP.t";
connectAttr "scapula_CTL.r" "upper_poleVec_scapula_spcGRP.r";
connectAttr "scapula_CTL.s" "upper_poleVec_scapula_spcGRP.s";
connectAttr "lower_flex_poleVec_space_DCMX.ot" "lower_flex_poleVec_offGRP.t";
connectAttr "lower_flex_poleVec_space_DCMX.or" "lower_flex_poleVec_offGRP.r";
connectAttr "lower_poleVec_offGRP_space_DCMX.ot" "lower_poleVec_offGRP.t";
connectAttr "lower_poleVec_offGRP_space_DCMX.or" "lower_poleVec_offGRP.r";
connectAttr "FKIK_RVS.ox" "FK_arm_CTL_GRP.v";
connectAttr "scapula_CTL.t" "FK_scapula_space.t";
connectAttr "scapula_CTL.r" "FK_scapula_space.r";
connectAttr "scapula_CTL.s" "FK_scapula_space.s";
connectAttr "input_shoulder.t" "FK_shoulder_CTL_offGRP.t";
connectAttr "input_shoulder.r" "FK_shoulder_CTL_offGRP.r";
connectAttr "input_shoulder.s" "FK_shoulder_CTL_offGRP.s";
connectAttr "makeNurbCircle7.oc" "FK_shoulder_CTLShape.cr";
connectAttr "input_elbow.t" "FK_elbow_CTL_offGRP.t";
connectAttr "input_elbow.r" "FK_elbow_CTL_offGRP.r";
connectAttr "input_elbow.s" "FK_elbow_CTL_offGRP.s";
connectAttr "makeNurbCircle8.oc" "FK_elbow_CTLShape.cr";
connectAttr "input_wrist.t" "FK_wrist_CTL_offGRP.t";
connectAttr "input_wrist.r" "FK_wrist_CTL_offGRP.r";
connectAttr "input_wrist.s" "FK_wrist_CTL_offGRP.s";
connectAttr "makeNurbCircle9.oc" "FK_wrist_CTLShape.cr";
connectAttr "input_F_toe.t" "FK_F_toe_CTL_offGRP.t";
connectAttr "input_F_toe.r" "FK_F_toe_CTL_offGRP.r";
connectAttr "input_F_toe.s" "FK_F_toe_CTL_offGRP.s";
connectAttr "makeNurbCircle10.oc" "FK_F_toe_CTLShape.cr";
connectAttr "arm_switch_CTL_space_DCMX.ot" "arm_switch_CTL_offGRP.t";
connectAttr "arm_switch_CTL_space_DCMX.os" "arm_switch_CTL_offGRP.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "IK_shoulder_space_MTMX.o" "IK_shoulder_space_DCMX.imat";
connectAttr "input_shoulder.wm" "IK_shoulder_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_shoulder_space_MTMX.i[1]";
connectAttr "stretchIK_output.stretched_len" "stretch_output_mul_ctrlVal.i1x";
connectAttr "stretchIK_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "uparmLen.d" "soft_armLen.i1[0]";
connectAttr "loarmLen.d" "soft_armLen.i1[1]";
connectAttr "input_shoulder_local_MTMX.o" "uparmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "uparmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "input_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "loarmLen.im1";
connectAttr "input_wrist_local_MTMX.o" "loarmLen.im2";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "input_shoulder_local_dist_MTMX.o" "ctrlLen.im1";
connectAttr "IK_ctrl_local_MTMX.o" "ctrlLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_dist_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_dist_MTMX.i[1]";
connectAttr "wrist_CTL.wm" "IK_ctrl_local_MTMX.i[0]";
connectAttr "wrist_CTL.softIK" "IK_negate_val.i1x";
connectAttr "wrist_CTL.stretchIK" "IK_negate_val.i1y";
connectAttr "input_elbow_local_dist_MTMX.o" "F_toe01_ctrlLen.im1";
connectAttr "F_toe_CTL_local_MTMX.o" "F_toe01_ctrlLen.im2";
connectAttr "input_elbow.wm" "input_elbow_local_dist_MTMX.i[0]";
connectAttr "input_shoulder.wim" "input_elbow_local_dist_MTMX.i[1]";
connectAttr "F_toe_CTL.wm" "F_toe_CTL_local_MTMX.i[0]";
connectAttr "loarmLen.d" "extended_soft_Len.i1[0]";
connectAttr "expandarmLen.d" "extended_soft_Len.i1[1]";
connectAttr "uparmLen.d" "extended_soft_Len.i1[2]";
connectAttr "input_wrist_local_MTMX.o" "expandarmLen.im1";
connectAttr "input_F_toe01_local_MTMX.o" "expandarmLen.im2";
connectAttr "input_F_toe.wm" "input_F_toe01_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_F_toe01_local_MTMX.i[1]";
connectAttr "softikV_COND.ocr" "ctrllen_COND.ctr";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.cfr";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.ft";
connectAttr "armlen_minus_softikV.o1" "ctrllen_COND.st";
connectAttr "result_softik_len.o1" "softikV_COND.ctr";
connectAttr "softIK_input.armLen" "softikV_COND.cfr";
connectAttr "softIK_input.softik_ctrl_value" "softikV_COND.ft";
connectAttr "softIK_input.armLen" "result_softik_len.i1[0]";
connectAttr "mult_softikV.ox" "result_softik_len.i1[1]";
connectAttr "power_val.ox" "mult_softikV.i2x";
connectAttr "softIK_input.softik_ctrl_value" "mult_softikV.i1x";
connectAttr "negate_val.ox" "power_val.i2x";
connectAttr "divide_softikV.ox" "negate_val.i1x";
connectAttr "ctrlLen_minue_dif.o1" "divide_softikV.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_softikV.i2x";
connectAttr "softIK_input.ctrlLen" "ctrlLen_minue_dif.i1[0]";
connectAttr "armlen_minus_softikV.o1" "ctrlLen_minue_dif.i1[1]";
connectAttr "softIK_input.armLen" "armlen_minus_softikV.i1[0]";
connectAttr "softIK_input.softik_ctrl_value" "armlen_minus_softikV.i1[1]";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.ft";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.cfr";
connectAttr "extended_softikV_COND.ocr" "extended_ctrllen_COND.ctr";
connectAttr "softIK_input.extended_ctrl_len" "extended_ctrllen_COND.cfr";
connectAttr "softIK_input.extended_ctrl_len" "extended_ctrllen_COND.ft";
connectAttr "extended_armlen_minus_softikV.o1" "extended_ctrllen_COND.st";
connectAttr "extended_result_softik_len.o1" "extended_softikV_COND.ctr";
connectAttr "softIK_input.extended_len" "extended_softikV_COND.cfr";
connectAttr "softIK_input.softik_ctrl_value" "extended_softikV_COND.ft";
connectAttr "softIK_input.extended_len" "extended_result_softik_len.i1[0]";
connectAttr "extended_mult_softikV.ox" "extended_result_softik_len.i1[1]";
connectAttr "extended_power_val.ox" "extended_mult_softikV.i2x";
connectAttr "softIK_input.softik_ctrl_value" "extended_mult_softikV.i1x";
connectAttr "extended_negate_val.ox" "extended_power_val.i2x";
connectAttr "divide_expand_arm_softikV.ox" "extended_negate_val.i1x";
connectAttr "extended_ctrlLen_minue_dif.o1" "divide_expand_arm_softikV.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_expand_arm_softikV.i2x";
connectAttr "softIK_input.extended_ctrl_len" "extended_ctrlLen_minue_dif.i1[0]";
connectAttr "extended_armlen_minus_softikV.o1" "extended_ctrlLen_minue_dif.i1[1]"
		;
connectAttr "softIK_input.extended_len" "extended_armlen_minus_softikV.i1[0]";
connectAttr "softIK_input.softik_ctrl_value" "extended_armlen_minus_softikV.i1[1]"
		;
connectAttr "stretchIK_input.loarm_len" "loarm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch.i1[1]";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_loarm.i2x";
connectAttr "stretchedLen.o1" "stretched_loarmLen.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretchIK_input.ctrl_len" "stretchedLen.i1[0]";
connectAttr "stretchIK_input.softik_len" "stretchedLen.i1[1]";
connectAttr "stretch_armLen.o1" "loarm_ratio3.i2x";
connectAttr "stretchIK_input.loarm_len" "loarm_ratio3.i1x";
connectAttr "stretchIK_input.uparm_len" "stretch_armLen.i1[0]";
connectAttr "stretchIK_input.loarm_len" "stretch_armLen.i1[1]";
connectAttr "stretchIK_input.extendedarm_len" "stretch_armLen.i1[2]";
connectAttr "stretchIK_input.uparm_len" "uparm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch.i1[1]";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_uparm.i2x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "stretchedLen.o1" "stretched_uparmLen.i1x";
connectAttr "stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_armLen.o1" "uparm_ratio.i2x";
connectAttr "stretchIK_input.extendedarm_len" "extendedarm_plus_stretch.i1[0]";
connectAttr "extended_stretchCtrl_arm.ox" "extendedarm_plus_stretch.i1[1]";
connectAttr "stretchIK_input.stretch_ctrl_value" "extended_stretchCtrl_arm.i1x";
connectAttr "extended_stretched_arm.ox" "extended_stretchCtrl_arm.i2x";
connectAttr "extended_stretchedLen.o1" "extended_stretched_arm.i1x";
connectAttr "extendedarm_ratio.ox" "extended_stretched_arm.i2x";
connectAttr "stretchIK_input.extended_ctrl_len" "extended_stretchedLen.i1[0]";
connectAttr "stretchIK_input.extended_softik_len" "extended_stretchedLen.i1[1]";
connectAttr "extended_stretch_armLen.o1" "extendedarm_ratio.i2x";
connectAttr "stretchIK_input.extendedarm_len" "extendedarm_ratio.i1x";
connectAttr "stretchIK_input.loarm_len" "extended_stretch_armLen.i1[0]";
connectAttr "stretchIK_input.extendedarm_len" "extended_stretch_armLen.i1[1]";
connectAttr "stretchIK_input.uparm_len" "extended_stretch_armLen.i1[2]";
connectAttr "IK_elbow_space_MTMX.o" "IK_elbow_space_DCMX.imat";
connectAttr "input_elbow.wm" "IK_elbow_space_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_elbow_space_MTMX.i[1]";
connectAttr "stretchIK_output.expand_stretched_len" "extendedarm_stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "stretchIK_output.stretch_ctrl_value" "extendedarm_stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "wrist_CTL_offGRP_space_MTMX.o" "wrist_CTL_offGRP_space_DCMX.imat";
connectAttr "input_wrist.wm" "wrist_CTL_offGRP_space_MTMX.i[0]";
connectAttr "IK_arm_CTL_GRP.wim" "wrist_CTL_offGRP_space_MTMX.i[1]";
connectAttr "F_toe_CTL_offGRP_space_MTMX.o" "F_toe_CTL_offGRP_space_DCMX.imat";
connectAttr "input_F_toe.wm" "F_toe_CTL_offGRP_space_MTMX.i[0]";
connectAttr "wrist_CTL.wim" "F_toe_CTL_offGRP_space_MTMX.i[1]";
connectAttr "upper_poleVec_offGRP_space_MTMX.o" "upper_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "input_elbow.wm" "upper_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "arm_poleVec_GRP.wim" "upper_poleVec_offGRP_space_MTMX.i[1]";
connectAttr "lower_flex_poleVec_space_MTMX.o" "lower_flex_poleVec_space_DCMX.imat"
		;
connectAttr "F_toe_CTL.wm" "lower_flex_poleVec_space_MTMX.i[0]";
connectAttr "arm_poleVec_GRP.wim" "lower_flex_poleVec_space_MTMX.i[1]";
connectAttr "lower_poleVec_offGRP_space_MTMX.o" "lower_poleVec_offGRP_space_DCMX.imat"
		;
connectAttr "input_wrist.wm" "lower_poleVec_offGRP_space_MTMX.i[0]";
connectAttr "lower_flex_poleVec_spcGRP.wim" "lower_poleVec_offGRP_space_MTMX.i[1]"
		;
connectAttr "arm_switch_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "FK_wrist_CTL.wm" "arm_switch_space_CHOI.i[0]";
connectAttr "wrist_CTL.wm" "arm_switch_space_CHOI.i[1]";
connectAttr "arm_switch_CTL.FK_IK" "arm_switch_space_CHOI.s";
connectAttr "arm_switch_space_CHOI.o" "arm_switch_CTL_space_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "arm_switch_CTL_space_MTMX.i[1]";
connectAttr "arm_switch_CTL_space_MTMX.o" "arm_switch_CTL_space_DCMX.imat";
connectAttr "arm_GRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_motion_GRP.iog" "arm_SET.dsm" -na;
connectAttr "input_scapula.iog" "arm_SET.dsm" -na;
connectAttr "input_shoulder.iog" "arm_SET.dsm" -na;
connectAttr "input_elbow.iog" "arm_SET.dsm" -na;
connectAttr "input_wrist.iog" "arm_SET.dsm" -na;
connectAttr "input_F_toe.iog" "arm_SET.dsm" -na;
connectAttr "motion_IK_GRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_scapula_space.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_space.iog" "arm_SET.dsm" -na;
connectAttr "IK_upper_CTLaim.iog" "arm_SET.dsm" -na;
connectAttr "upper_softIK_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "upper_stretch_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "upper_ikHandle_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "upper_ikHandle_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_upper_CTLaim_aimConstraint1.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_space_upVec.iog" "arm_SET.dsm" -na;
connectAttr "softIK_input.iog" "arm_SET.dsm" -na;
connectAttr "softIK_output.iog" "arm_SET.dsm" -na;
connectAttr "stretchIK_input.iog" "arm_SET.dsm" -na;
connectAttr "stretchIK_output.iog" "arm_SET.dsm" -na;
connectAttr "IK_elbow_space.iog" "arm_SET.dsm" -na;
connectAttr "IK_lower_CTLaim.iog" "arm_SET.dsm" -na;
connectAttr "lower_softIK_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "lower_stretch_output_LOC.iog" "arm_SET.dsm" -na;
connectAttr "lower_ikHandle_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "lower_ikHandle_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_lower_CTLaim_aimConstraint1.iog" "arm_SET.dsm" -na;
connectAttr "IK_elbow_space_upVec.iog" "arm_SET.dsm" -na;
connectAttr "motion_FK_GRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_CTL_GRP.iog" "arm_SET.dsm" -na;
connectAttr "scapula_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "scapula_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "scapula_CTL.iog" "arm_SET.dsm" -na;
connectAttr "IK_arm_CTL_GRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "IK_shoulder_CTL.iog" "arm_SET.dsm" -na;
connectAttr "wrist_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "wrist_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "wrist_CTL.iog" "arm_SET.dsm" -na;
connectAttr "F_toe_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "F_toe_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "F_toe_CTL.iog" "arm_SET.dsm" -na;
connectAttr "IK_F_toe_local_LOC.iog" "arm_SET.dsm" -na;
connectAttr "F_toe_flex_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "F_toe_flex_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "F_toe_flex_CTL.iog" "arm_SET.dsm" -na;
connectAttr "wrist_flex_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "wrist_flex_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "wrist_flex_CTL.iog" "arm_SET.dsm" -na;
connectAttr "arm_poleVec_GRP.iog" "arm_SET.dsm" -na;
connectAttr "upper_poleVec_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "upper_poleVec_scapula_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "upper_poleVec_scapula_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "upper_poleVec_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "upper_poleVec.iog" "arm_SET.dsm" -na;
connectAttr "lower_flex_poleVec_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "lower_flex_poleVec_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "lower_poleVec_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "lower_poleVec_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "lower_poleVec.iog" "arm_SET.dsm" -na;
connectAttr "FK_arm_CTL_GRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_scapula_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_scapula_space.iog" "arm_SET.dsm" -na;
connectAttr "FK_shoulder_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_shoulder_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_shoulder_CTL.iog" "arm_SET.dsm" -na;
connectAttr "FK_elbow_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_elbow_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_elbow_CTL.iog" "arm_SET.dsm" -na;
connectAttr "FK_wrist_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_wrist_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_wrist_CTL.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_toe_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_toe_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "FK_F_toe_CTL.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_CTL_offGRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_CTL_spcGRP.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_CTL.iog" "arm_SET.dsm" -na;
connectAttr "arm_switch_space_CHOI.msg" "arm_SET.dnsm" -na;
connectAttr "ctrllen_COND.msg" "arm_SET.dnsm" -na;
connectAttr "extended_ctrllen_COND.msg" "arm_SET.dnsm" -na;
connectAttr "extended_softikV_COND.msg" "arm_SET.dnsm" -na;
connectAttr "for_zerodivide_COND.msg" "arm_SET.dnsm" -na;
connectAttr "softikV_COND.msg" "arm_SET.dnsm" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "lower_flex_poleVec_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_elbow_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_shoulder_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "wrist_CTL_offGRP_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "lower_poleVec_offGRP_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "F_toe_CTL_offGRP_space_DCMX.msg" "arm_SET.dnsm" -na;
connectAttr "ctrlLen.msg" "arm_SET.dnsm" -na;
connectAttr "expandarmLen.msg" "arm_SET.dnsm" -na;
connectAttr "F_toe01_ctrlLen.msg" "arm_SET.dnsm" -na;
connectAttr "loarmLen.msg" "arm_SET.dnsm" -na;
connectAttr "uparmLen.msg" "arm_SET.dnsm" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "lower_flex_poleVec_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_ctrl_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "F_toe_CTL_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_elbow_local_dist_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_shoulder_local_dist_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_elbow_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "upper_poleVec_offGRP_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_elbow_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_F_toe01_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "IK_shoulder_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_shoulder_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "wrist_CTL_offGRP_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "lower_poleVec_offGRP_space_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "input_wrist_local_MTMX.msg" "arm_SET.dnsm" -na;
connectAttr "F_toe_CTL_offGRP_space_MTMX.msg" "arm_SET.dnsm" -na;
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
connectAttr "armlen_minus_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "ctrlLen_minue_dif.msg" "arm_SET.dnsm" -na;
connectAttr "extended_armlen_minus_softikV.msg" "arm_SET.dnsm" -na;
connectAttr "extended_ctrlLen_minue_dif.msg" "arm_SET.dnsm" -na;
connectAttr "extended_result_softik_len.msg" "arm_SET.dnsm" -na;
connectAttr "extended_soft_Len.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretch_armLen.msg" "arm_SET.dnsm" -na;
connectAttr "extended_stretchedLen.msg" "arm_SET.dnsm" -na;
connectAttr "extendedarm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "loarm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "result_softik_len.msg" "arm_SET.dnsm" -na;
connectAttr "soft_armLen.msg" "arm_SET.dnsm" -na;
connectAttr "stretch_armLen.msg" "arm_SET.dnsm" -na;
connectAttr "stretchedLen.msg" "arm_SET.dnsm" -na;
connectAttr "uparm_plus_stretch.msg" "arm_SET.dnsm" -na;
connectAttr "FKIK_RVS.msg" "arm_SET.dnsm" -na;
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_toe01_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "expandarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "soft_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armlen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_armLen.msg" ":defaultRenderUtilityList1.u" -na;
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
connectAttr "IK_shoulder_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upper_poleVec_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "upper_poleVec_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lower_poleVec_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lower_poleVec_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wrist_CTL_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wrist_CTL_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lower_flex_poleVec_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lower_flex_poleVec_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "IK_elbow_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_elbow_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "F_toe01_ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_soft_Len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_armlen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "extended_ctrlLen_minue_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_expand_arm_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretch_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extended_stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "extendedarm_stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "F_toe_CTL_offGRP_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "F_toe_CTL_offGRP_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arm_switch_space_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_switch_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of quadruped_arm.ma
