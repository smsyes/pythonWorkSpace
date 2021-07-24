//Maya ASCII 2019 scene
//Name: arm.ma
//Last modified: Wed, Jul 21, 2021 10:37:07 PM
//Codeset: 949
requires maya "2019";
requires "mtoa" "3.2.2";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "arm_GRP";
	rename -uid "1A3BC927-4398-9953-6125-2B8E661EFF22";
	addAttr -ci true -sn "type" -ln "type" -dt "string";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "fileName" -ln "fileName" -dt "string";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr -l on -k on ".type" -type "string" "set";
	setAttr -cb on ".mirror";
	setAttr -l on -k on ".fileName" -type "string" "arm";
	setAttr -s 4 ".input";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "D80FCDA6-4A7F-B9CA-84BD-1DB88F6929B9";
createNode transform -n "input_space" -p "arm_motion_GRP";
	rename -uid "E3434F06-40E5-851F-E11B-299FC29D52E6";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 0 0 -3.6977854932234928e-32 ;
	setAttr -cb on ".mirror";
createNode transform -n "input_shoulder" -p "input_space";
	rename -uid "27B2775C-44FD-0044-F16A-9AAAE3913867";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 14.036242639644414 0 ;
	setAttr ".s" -type "double3" 1.0000000408851277 1 1.0000000408851277 ;
createNode transform -n "input_elbow" -p "input_shoulder";
	rename -uid "1E7C91D5-49A4-0700-EF96-3088BF74A362";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.1231054425877183 0 -1.7796428497529604e-09 ;
	setAttr ".r" -type "double3" 0 -28.072485279288827 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "input_wrist" -p "input_elbow";
	rename -uid "2997A80B-4E00-8D5B-6F7B-7A83BCDB599B";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.1231054425877192 0 1.7796426554639311e-09 ;
	setAttr ".s" -type "double3" 0.99999995911487394 1 0.99999995911487394 ;
createNode transform -n "motion_IK_GRP" -p "arm_motion_GRP";
	rename -uid "1CD4860D-4061-B391-2859-21A53B09ED45";
createNode transform -n "softIK_input" -p "motion_IK_GRP";
	rename -uid "E4FC6562-4692-1B9A-0B88-C58FCE5C2DAB";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "armLen" -ln "armLen" -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".softik_ctrl_value";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".armLen";
createNode transform -n "softIK_output" -p "motion_IK_GRP";
	rename -uid "27789E67-4CAE-5F8C-ED75-6B9899EB5F8F";
	addAttr -ci true -sn "output_softik" -ln "output_softik" -at "double";
	setAttr -k off -cb on ".v";
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
createNode transform -n "IK_shoulder_space" -p "motion_IK_GRP";
	rename -uid "CEFDF508-41CB-46D0-02DC-059A52D38321";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "65AA22EB-4835-09A2-0909-D78E5F01AF36";
	setAttr -k off ".v";
createNode transform -n "IK_CTLaim" -p "IK_shoulder_space";
	rename -uid "43840D41-410E-FE3C-1521-FE9AA18B931B";
createNode locator -n "IK_CTLaimShape" -p "IK_CTLaim";
	rename -uid "3E62CA35-43AA-F901-11C1-DB9EED893C5D";
	setAttr -k off ".v";
createNode transform -n "softIK_output_LOC" -p "IK_CTLaim";
	rename -uid "DC1F616E-4A8C-3628-C70B-4188540A8C63";
createNode locator -n "softIK_output_LOCShape" -p "softIK_output_LOC";
	rename -uid "C4447FAA-48FE-E03F-6417-AA91E5B6118A";
	setAttr -k off ".v";
createNode transform -n "stretch_output_LOC" -p "softIK_output_LOC";
	rename -uid "0BD43770-46CE-CCC8-E7B3-EBAEB6AF4190";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "stretch_output_LOCShape" -p "stretch_output_LOC";
	rename -uid "EDBEF2A7-4649-CA40-D0B4-59B27FB94BF5";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle1" -p "stretch_output_LOC";
	rename -uid "19ECC4C1-4FD1-0739-2B21-5C8BD429BCFB";
	setAttr ".t" -type "double3" -3.270810076116959e-07 -2.2204460492503131e-16 2.2204455045510236e-16 ;
	setAttr ".s" -type "double3" 0.99999995911487383 1 0.99999995911487383 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "2BE557B7-4198-8E76-4E3E-0C99D7385F9D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_polevectorW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.0597148488806791 -5.5552531578749917e-25 -5.6081765587454235 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IK_CTLaim_aimConstraint" -p "IK_CTLaim";
	rename -uid "A190342D-4940-25EE-41EB-1C9AC53CE587";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ik_ctrl_CTLW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 0 -42.847913159681212 0 ;
	setAttr -k on ".w0";
createNode transform -n "IK_shoulder_space_upVec" -p "IK_shoulder_space";
	rename -uid "77108EEF-42D8-F900-495D-7A8B4AE62335";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "3CB67A01-4278-E950-2D7D-0AA945CE32C4";
	setAttr -k off ".v";
createNode transform -n "stretchIK_input" -p "motion_IK_GRP";
	rename -uid "A8C64DC4-4C90-26D8-3D8F-4997C09F6F4A";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "uparm_len" -ln "uparm_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "softikLen" -ln "softikLen" -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".uparm_len";
	setAttr -k on ".loarm_len";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".softikLen";
createNode transform -n "stretchIK_output" -p "motion_IK_GRP";
	rename -uid "EAD84807-4259-AF36-1B88-82A9309545B4";
	addAttr -ci true -sn "uparm_stretched" -ln "uparm_stretched" -at "double";
	addAttr -ci true -sn "loarm_stretched" -ln "loarm_stretched" -at "double";
	addAttr -ci true -sn "stretched_len" -ln "stretched_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".uparm_stretched";
	setAttr -k on ".loarm_stretched";
	setAttr -k on ".stretched_len";
	setAttr -k on ".stretch_ctrl_value";
createNode joint -n "IK_scapula" -p "motion_IK_GRP";
	rename -uid "E393C365-4ADD-3473-35E8-509EA3AF68F8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "A3E8C59F-4828-7322-90AC-2D9027A24B3A";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" -1.3614415852913579e-14 -9.2743557084026993e-06 -3.4036015488333327e-15 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_elbow" -p "IK_shoulder";
	rename -uid "7A8FDC2E-4279-1D3A-CA8D-2FBB83734D83";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 4.123105525970459 0 -1.779642877508536e-09 ;
	setAttr ".r" -type "double3" 0 1.8560926402362237e-05 0 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_wrist" -p "IK_elbow";
	rename -uid "F784BA40-49EF-874F-EEA5-3AA24B3823AB";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 4.123105525970459 0 1.7796430995531409e-09 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode ikEffector -n "effector1" -p "IK_elbow";
	rename -uid "9CF15365-452A-2FDC-0EC9-4A8F0DA2D7B2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_elbow";
	rename -uid "DCA99EFC-4E7D-64C3-312E-EDAE881F948F";
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "3CA095F5-45D0-211A-0FA0-A1BC3B628CBF";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode transform -n "motion_FK_GRP" -p "arm_motion_GRP";
	rename -uid "8AADBD61-462B-16E3-1B8E-F7A08578E144";
	setAttr ".v" no;
createNode joint -n "FK_scapula" -p "motion_FK_GRP";
	rename -uid "52965EF2-4CF2-FAD4-961F-6BA30AE0E8A7";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "C7AAB1E7-4A5F-622D-3FFF-A8B1E6E5A02B";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_elbow" -p "FK_shoulder";
	rename -uid "4A4F65D7-4F5B-5DBD-99D1-E7B9A436A722";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "FK_wrist" -p "FK_elbow";
	rename -uid "C9104A19-46F2-918C-171C-40B2C92D7D9B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode transform -n "output_GRP" -p "arm_GRP";
	rename -uid "E78C2132-400A-505B-5526-E7B4FA770FF4";
createNode joint -n "scapula" -p "output_GRP";
	rename -uid "20E8D433-49B1-B68C-B67A-6BBF6FBE433E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "shoulder" -p "scapula";
	rename -uid "C1306B6D-48F9-C4CE-8D47-0AB972D702DA";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "elbow" -p "shoulder";
	rename -uid "1B26FF88-4709-09CC-B4E8-7899656995A5";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "wrist" -p "elbow";
	rename -uid "2FAAA709-4DAF-528C-7D84-7B9BA66B37D8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "521D42AB-4D72-2417-E715-D292E190F00C";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode transform -n "IK_shoulder_CTL_space" -p "arm_CTL_GRP";
	rename -uid "C24D52E2-4D8F-59E2-AB0A-5091E71D3072";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode transform -n "IK_elbow_polevector_space" -p "IK_shoulder_CTL_space";
	rename -uid "A6ABADA6-4474-6011-0193-EBADEE4A997C";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
createNode transform -n "IK_polevector_space" -p "IK_elbow_polevector_space";
	rename -uid "DC94267D-4C56-A383-B14F-309BE7C45A43";
	setAttr ".t" -type "double3" -3 -5.5552531578749917e-25 -4 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "IK_polevector" -p "IK_polevector_space";
	rename -uid "9541BD2D-4FE5-0125-4069-31B7E71B175F";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode nurbsCurve -n "IK_polevectorShape" -p "IK_polevector";
	rename -uid "D0004B17-4A7F-387E-B971-A3A4BE419A57";
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
createNode transform -n "IK_CTL_space" -p "IK_shoulder_CTL_space";
	rename -uid "ED9BEB3A-49FD-0623-00E6-84961EF3E584";
createNode transform -n "IK_CTL" -p "IK_CTL_space";
	rename -uid "3E4A9E76-4110-A6E5-71DD-199DD6DEF3C1";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -min 0 -max 10 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k on ".softIK";
	setAttr -k on ".stretchIK";
createNode nurbsCurve -n "IK_CTLShape" -p "IK_CTL";
	rename -uid "FA24BB04-45A4-2C3F-3F00-49B6CB306CEA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1 -1 1
		1 1 1
		1 1 -1
		1 -1 -1
		1 -1 1
		-1 -1 1
		-1 1 1
		-1 1 -1
		-1 -1 -1
		1 -1 -1
		1 1 -1
		-1 1 -1
		-1 -1 -1
		-1 -1 1
		-1 1 1
		1 1 1
		;
createNode transform -n "FK_IK_blend_CTL_space" -p "arm_CTL_GRP";
	rename -uid "44D49CE5-451A-1424-2DC9-449F7653531D";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "FK_IK_blend_CTL" -p "FK_IK_blend_CTL_space";
	rename -uid "3F0CD1AD-41E2-D728-6ABA-41B6055E03EB";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".FK_IK" 1;
createNode nurbsCurve -n "FK_IK_blend_CTLShape" -p "FK_IK_blend_CTL";
	rename -uid "39D1FDC3-484B-8C95-40D6-618CB7AF2135";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 0
		0 -6.6613381477509392e-16 -2.0000000000000004
		1 -6.6613381477509392e-16 -3
		0 -1.3322676295501878e-15 -4.0000000000000009
		-1 -6.6613381477509392e-16 -3
		0 -6.6613381477509392e-16 -2.0000000000000004
		0 0.99999999999999911 -3.0000000000000009
		0 -1.3322676295501878e-15 -4.0000000000000009
		0 -1.0000000000000009 -3
		1 -6.6613381477509392e-16 -3
		0 0.99999999999999911 -3.0000000000000009
		-1 -6.6613381477509392e-16 -3
		0 -1.0000000000000009 -3
		0 -6.6613381477509392e-16 -2.0000000000000004
		;
createNode transform -n "scapula_CTL_offGRP" -p "arm_CTL_GRP";
	rename -uid "EA06AA9F-4A45-AEA7-476C-12A922790E74";
createNode transform -n "scapula_CTL_space" -p "scapula_CTL_offGRP";
	rename -uid "34058B7B-4D7D-00AC-B703-50941E468CF6";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode transform -n "scapula_CTL" -p "scapula_CTL_space";
	rename -uid "632DF882-45BC-33D1-97F2-7AB80FC073E2";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "53C2F110-451D-51E7-EF42-F3BAD264BC58";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 26 0 no 3
		31 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		 26 26 26
		29
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0.40000000000000002 1.6000000000000001
		-0.40000000000000002 1.2000000000000004 1.2000000000000004
		-0.40000000000000002 1.6000000000000001 0.40000000000000002
		-0.40000000000000002 1.6000000000000001 -0.40000000000000002
		-0.40000000000000002 1.2000000000000004 -1.2000000000000004
		-0.40000000000000002 0.40000000000000002 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		-0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0 -1.6000000000000001
		0.40000000000000002 0.40000000000000002 -1.6000000000000001
		0.40000000000000002 1.2000000000000004 -1.2000000000000004
		0.40000000000000002 1.6000000000000001 -0.40000000000000002
		0.40000000000000002 1.6000000000000001 0.40000000000000002
		0.40000000000000002 1.2000000000000004 1.2000000000000004
		0.40000000000000002 0.40000000000000002 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		-0.40000000000000002 0 1.6000000000000001
		;
createNode transform -n "FK_shoulder_CTL_space" -p "scapula_CTL";
	rename -uid "1EA7B4DA-4ECA-CF66-61CA-AEBFE83F7324";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_space";
	rename -uid "2D237D19-4178-5563-CB11-B4AE7C09C256";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "02B780D3-45A3-F669-9388-409FD8419926";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		-4.4408920985006262e-16 1.1081941875543879 -3.2112695072372299e-16
		-3.3306690738754696e-16 0.7836116248912246 0.78361162489122405
		-1.7887962569362486e-16 2.2289823389653639e-16 1.1081941875543881
		0 -0.78361162489122416 0.78361162489122438
		2.2204460492503131e-16 -1.1081941875543884 5.9521325992805852e-16
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		;
createNode transform -n "FK_elbow_CTL_space" -p "FK_shoulder_CTL";
	rename -uid "D03FF377-423E-1B73-402B-B7834A9078F1";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "FK_elbow_CTL" -p "FK_elbow_CTL_space";
	rename -uid "B2108411-435D-437F-DD35-77AFFEA22106";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_elbow_CTLShape" -p "FK_elbow_CTL";
	rename -uid "5922424B-4CDE-E27E-FC0F-DFA05E1039C2";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		-2.4606854055573011e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910707351847e-16 0.78361162489122471 0.78361162489122405
		-6.785732323110922e-17 3.3392053635905205e-16 1.1081941875543881
		1.260143602537489e-16 -0.78361162489122405 0.78361162489122438
		2.4606854055573006e-16 -1.1081941875543881 5.9521325992805852e-16
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "FK_wrist_CTL_space" -p "FK_elbow_CTL";
	rename -uid "7128D6BF-456D-69C6-C47D-6AAF0E9029F5";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "FK_wrist_CTL" -p "FK_wrist_CTL_space";
	rename -uid "F3259C8E-460E-9BEF-44FD-2CA5603AA43A";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode nurbsCurve -n "FK_wrist_CTLShape" -p "FK_wrist_CTL";
	rename -uid "44FD1269-4B45-B77F-D646-21A7071B1BF6";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		-2.4606853890136889e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910541915725e-16 0.78361162489122471 0.78361162489122405
		-6.7857321576748008e-17 3.3392053470469082e-16 1.1081941875543881
		1.2601436190811012e-16 -0.78361162489122405 0.78361162489122438
		2.4606854221009129e-16 -1.1081941875543881 5.9521325992805852e-16
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		;
createNode condition -n "mirror_switch_COND";
	rename -uid "EBDBDC2F-4280-492D-CDE2-5EA9E6691ED0";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "IK_negate_val";
	rename -uid "39DCF807-4BE4-6A9A-73B4-3B90468286A0";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "ctrlLen";
	rename -uid "6A30886B-4A88-804C-7A17-9FBF38F3D7FE";
createNode multMatrix -n "IK_space_local_MTMX";
	rename -uid "469DD31F-4370-6EEC-E576-008382F72F16";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local_MTMX";
	rename -uid "CE25AB8B-4E37-1B44-6A80-9C92632AD123";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "soft_armLen";
	rename -uid "CCB58F3C-4385-27F5-2FDD-82802B7F043F";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "uparmLen";
	rename -uid "724BB55E-4279-FA8B-363F-9C9DE9D2FA6E";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "D6CEDF82-43D8-56E1-6B04-A8967E447E8D";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "6B5A0ABB-4743-9A02-A6F3-71AAA3A844A7";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -s 2 ".i";
createNode distanceBetween -n "loarmLen";
	rename -uid "04E8CCFF-4DDD-9818-392A-9AA0737509A4";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "81397F76-42A7-B299-726A-37992DFA146A";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -s 2 ".i";
createNode condition -n "ctrllen_COND";
	rename -uid "82EAF8A7-45C3-8A86-76CA-C99A13EE4002";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "5B433465-4C81-1376-F355-98B1D3B8DBDC";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "50EDD8BB-48DD-D2CF-27D5-4C9E0457D13E";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV";
	rename -uid "93225341-4867-61E9-7553-88B3B97C1A89";
createNode multiplyDivide -n "power_val";
	rename -uid "295FCDE6-4DFE-E7F8-0E68-9B861D705FCB";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "negate_val";
	rename -uid "05EC4FDF-4717-E999-EBEA-F6A05E00DCD2";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "0F2720CD-48C9-C4D3-CE8F-D7B8983430FB";
	setAttr ".op" 2;
createNode plusMinusAverage -n "ctrlLen_minus_dif";
	rename -uid "535F1807-426E-80DF-4813-41A30625DA82";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "B0A4F370-4324-1C72-2BE0-FD98C2466821";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "16907BC8-48CB-0979-0A3F-4395FAA18FEE";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode decomposeMatrix -n "input_shoulder_DCMX";
	rename -uid "72C84CC3-4D29-B60A-A615-98AD4AAA232F";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode multMatrix -n "input_shoulder_MTMX";
	rename -uid "19638979-4772-AB8A-7B6B-B6871C03C3AF";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "D80F8E04-449C-A7D2-3ABF-EAB838D6CB4C";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "F804AE82-4CC1-6F08-E309-76857B42C50A";
createNode plusMinusAverage -n "uparm_plus_stretch";
	rename -uid "5D36587C-4A0B-4251-C57E-B79CA0B28BAF";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "C65BBE97-47D3-AD0A-9C2A-37B356C97077";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "B204296D-4F33-0F68-38DD-29ADE0D9E199";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "16FC31F5-421E-9286-6A7C-5AA746F57459";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "7F001A29-430E-717D-C50E-168B9F2A5E6A";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen";
	rename -uid "BC0238B6-4BBB-37E8-473F-EE9D6CF4F8DC";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_plus_stretch";
	rename -uid "8BA83B7E-408A-8614-92F5-C1810738AA67";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "643CA0B5-4F64-350A-0ECA-608A79162258";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "CF4B7EA0-4DCE-6300-8EB8-50B26ABAC118";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "0B942D88-4393-4FCC-2304-858CE23B5C93";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode decomposeMatrix -n "FK_shoulder_local_DCMX";
	rename -uid "3B93C284-434D-A392-5687-E9A939DF0245";
createNode multMatrix -n "FK_shoulder_local_MTMX";
	rename -uid "16219DA8-4A36-0C49-95BC-CDAE33FF4934";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_elbow_local_DCMX";
	rename -uid "2CD95D48-4FC5-CE25-A4C2-F2B28050D524";
createNode multMatrix -n "FK_elbow_local_MTMX";
	rename -uid "B22AC6DB-453E-1A5C-866B-10AD894C88FD";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_wrist_local_DCMX";
	rename -uid "1142AABA-45AA-6827-EA33-579003B7CA77";
createNode multMatrix -n "FK_wrist_local_MTMX";
	rename -uid "2B6B2416-4120-80C5-E247-4B98DF23C17A";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "42CEDA00-49E1-33D7-7582-A29AFE92DC0D";
createNode blendColors -n "scapula_BLCL";
	rename -uid "F8AA1D88-4B38-B6C4-8AF0-8B9550259F1C";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "B891434A-43EB-9D1B-B3FD-A9A5596999C6";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "EEAC494A-4825-8905-2E0C-739B594D90AD";
createNode blendColors -n "elbow_BLCL";
	rename -uid "33F7D24E-4A19-E2D5-2CCB-8FB4C52758BF";
createNode pairBlend -n "elbow_PRBL";
	rename -uid "BF5F35F2-4FAC-526D-7E19-748CC2116D6E";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "8633CA6D-40F5-4D11-5730-88A3859812E3";
createNode blendColors -n "wrist_BLCL";
	rename -uid "46C909BD-4CE0-9504-4A32-8F9A64D4650C";
createNode decomposeMatrix -n "IK_elbow_polevector_space_DCMX";
	rename -uid "FC5C5655-46FA-897E-7892-3E858870E64B";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
createNode multMatrix -n "IK_elbow_polevector_space_MTMX";
	rename -uid "8CAAFD1E-4CD7-8E4F-0F85-3E96AD7E0C70";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_CTL_space_DCMX";
	rename -uid "52AB981E-4C52-984E-1302-258BE5FB8AAC";
createNode multMatrix -n "IK_CTL_space_MTMX";
	rename -uid "D54F604F-415C-FF9A-45B5-398E14558131";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_IK_blend_local_DCMX";
	rename -uid "3563FA84-4B24-0FE7-629F-F3AB94C435C2";
createNode multMatrix -n "FK_IK_blend_local_MTMX";
	rename -uid "D02B1F97-499F-8603-1EE0-CF952C27C9EB";
	setAttr -s 2 ".i";
createNode choice -n "FK_IK_blend_local_CHOI";
	rename -uid "5E15592A-4FF6-9195-9F3C-2FB6A4ADE7BC";
	setAttr -s 2 ".i";
createNode reverse -n "FKIK_RVS";
	rename -uid "F284AF53-420A-2BB7-6278-22B00A1307C8";
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
	setAttr -s 42 ".u";
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
connectAttr "input_space.input" "arm_GRP.input" -na;
connectAttr "input_shoulder.input" "arm_GRP.input" -na;
connectAttr "input_elbow.input" "arm_GRP.input" -na;
connectAttr "input_wrist.input" "arm_GRP.input" -na;
connectAttr "arm_GRP.mirror" "input_space.mirror";
connectAttr "mirror_switch_COND.oc" "input_space.s";
connectAttr "input_space.t" "motion_IK_GRP.t";
connectAttr "input_space.r" "motion_IK_GRP.r";
connectAttr "input_space.s" "motion_IK_GRP.s";
connectAttr "FK_IK_blend_CTL.FK_IK" "motion_IK_GRP.v";
connectAttr "IK_negate_val.ox" "softIK_input.softik_ctrl_value";
connectAttr "ctrlLen.d" "softIK_input.ctrlLen";
connectAttr "soft_armLen.o1" "softIK_input.armLen";
connectAttr "ctrllen_COND.ocr" "softIK_output.output_softik";
connectAttr "input_shoulder_DCMX.ot" "IK_shoulder_space.t";
connectAttr "input_shoulder_DCMX.or" "IK_shoulder_space.r";
connectAttr "input_shoulder_DCMX.os" "IK_shoulder_space.s";
connectAttr "IK_CTLaim_aimConstraint.crx" "IK_CTLaim.rx";
connectAttr "IK_CTLaim_aimConstraint.cry" "IK_CTLaim.ry";
connectAttr "IK_CTLaim_aimConstraint.crz" "IK_CTLaim.rz";
connectAttr "softIK_output.output_softik" "softIK_output_LOC.tx";
connectAttr "stretch_output_mul_ctrlVal.ox" "stretch_output_LOC.tx";
connectAttr "IK_shoulder.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "IK_shoulder.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "IK_shoulder.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "IK_polevector.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "IK_polevector.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "IK_polevector.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "IK_polevector.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IK_CTLaim.pim" "IK_CTLaim_aimConstraint.cpim";
connectAttr "IK_CTLaim.t" "IK_CTLaim_aimConstraint.ct";
connectAttr "IK_CTLaim.rp" "IK_CTLaim_aimConstraint.crp";
connectAttr "IK_CTLaim.rpt" "IK_CTLaim_aimConstraint.crt";
connectAttr "IK_CTLaim.ro" "IK_CTLaim_aimConstraint.cro";
connectAttr "IK_CTL.t" "IK_CTLaim_aimConstraint.tg[0].tt";
connectAttr "IK_CTL.rp" "IK_CTLaim_aimConstraint.tg[0].trp";
connectAttr "IK_CTL.rpt" "IK_CTLaim_aimConstraint.tg[0].trt";
connectAttr "IK_CTL.pm" "IK_CTLaim_aimConstraint.tg[0].tpm";
connectAttr "IK_CTLaim_aimConstraint.w0" "IK_CTLaim_aimConstraint.tg[0].tw";
connectAttr "IK_shoulder_space_upVec.wm" "IK_CTLaim_aimConstraint.wum";
connectAttr "IK_negate_val.oy" "stretchIK_input.stretch_ctrl_value";
connectAttr "uparmLen.d" "stretchIK_input.uparm_len";
connectAttr "loarmLen.d" "stretchIK_input.loarm_len";
connectAttr "ctrlLen.d" "stretchIK_input.ctrlLen";
connectAttr "softIK_output.output_softik" "stretchIK_input.softikLen";
connectAttr "uparm_plus_stretch.o1" "stretchIK_output.uparm_stretched";
connectAttr "loarm_plus_stretch.o1" "stretchIK_output.loarm_stretched";
connectAttr "stretchedLen.o1" "stretchIK_output.stretched_len";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchIK_output.stretch_ctrl_value"
		;
connectAttr "scapula_CTL.t" "IK_scapula.t";
connectAttr "input_space.r" "IK_scapula.jo";
connectAttr "scapula_CTL.s" "IK_scapula.s";
connectAttr "scapula_CTL.r" "IK_scapula.r";
connectAttr "input_shoulder.r" "IK_shoulder.jo";
connectAttr "IK_scapula.s" "IK_shoulder.is";
connectAttr "stretchIK_output.uparm_stretched" "IK_elbow.tx";
connectAttr "input_elbow.r" "IK_elbow.jo";
connectAttr "IK_shoulder.s" "IK_elbow.is";
connectAttr "stretchIK_output.loarm_stretched" "IK_wrist.tx";
connectAttr "input_wrist.r" "IK_wrist.jo";
connectAttr "IK_elbow.s" "IK_wrist.is";
connectAttr "IK_wrist.tx" "effector1.tx";
connectAttr "IK_wrist.ty" "effector1.ty";
connectAttr "IK_wrist.tz" "effector1.tz";
connectAttr "IK_polevectorShape.wm" "annotationShape1.dom" -na;
connectAttr "input_space.t" "motion_FK_GRP.t";
connectAttr "input_space.r" "motion_FK_GRP.r";
connectAttr "input_space.s" "motion_FK_GRP.s";
connectAttr "scapula_CTL.t" "FK_scapula.t";
connectAttr "input_space.r" "FK_scapula.jo";
connectAttr "scapula_CTL.s" "FK_scapula.s";
connectAttr "scapula_CTL.r" "FK_scapula.r";
connectAttr "FK_scapula.s" "FK_shoulder.is";
connectAttr "FK_shoulder_local_DCMX.os" "FK_shoulder.s";
connectAttr "FK_shoulder_local_DCMX.ot" "FK_shoulder.t";
connectAttr "FK_shoulder_CTL.r" "FK_shoulder.r";
connectAttr "input_shoulder.r" "FK_shoulder.jo";
connectAttr "FK_shoulder.s" "FK_elbow.is";
connectAttr "FK_elbow_local_DCMX.os" "FK_elbow.s";
connectAttr "FK_elbow_local_DCMX.ot" "FK_elbow.t";
connectAttr "FK_elbow_CTL.r" "FK_elbow.r";
connectAttr "input_elbow.r" "FK_elbow.jo";
connectAttr "FK_wrist_local_DCMX.ot" "FK_wrist.t";
connectAttr "input_wrist.r" "FK_wrist.jo";
connectAttr "FK_elbow.s" "FK_wrist.is";
connectAttr "FK_wrist_local_DCMX.os" "FK_wrist.s";
connectAttr "FK_wrist_CTL.r" "FK_wrist.r";
connectAttr "input_space.t" "output_GRP.t";
connectAttr "input_space.r" "output_GRP.r";
connectAttr "input_space.s" "output_GRP.s";
connectAttr "scapula_PRBL.ot" "scapula.t";
connectAttr "input_space.r" "scapula.jo";
connectAttr "scapula_BLCL.op" "scapula.s";
connectAttr "scapula_PRBL.or" "scapula.r";
connectAttr "scapula.s" "shoulder.is";
connectAttr "shoulder_BLCL.op" "shoulder.s";
connectAttr "input_shoulder.r" "shoulder.jo";
connectAttr "shoulder_PRBL.ot" "shoulder.t";
connectAttr "shoulder_PRBL.or" "shoulder.r";
connectAttr "shoulder.s" "elbow.is";
connectAttr "elbow_BLCL.op" "elbow.s";
connectAttr "input_elbow.r" "elbow.jo";
connectAttr "elbow_PRBL.ot" "elbow.t";
connectAttr "elbow_PRBL.or" "elbow.r";
connectAttr "wrist_PRBL.ot" "wrist.t";
connectAttr "input_wrist.r" "wrist.jo";
connectAttr "elbow.s" "wrist.is";
connectAttr "wrist_PRBL.or" "wrist.r";
connectAttr "wrist_BLCL.op" "wrist.s";
connectAttr "input_space.t" "arm_CTL_GRP.t";
connectAttr "input_space.r" "arm_CTL_GRP.r";
connectAttr "input_space.s" "arm_CTL_GRP.s";
connectAttr "FK_IK_blend_CTL.FK_IK" "IK_shoulder_CTL_space.v";
connectAttr "input_shoulder.t" "IK_shoulder_CTL_space.t";
connectAttr "IK_elbow_polevector_space_DCMX.ot" "IK_elbow_polevector_space.t";
connectAttr "IK_elbow_polevector_space_DCMX.or" "IK_elbow_polevector_space.r";
connectAttr "IK_CTL_space_DCMX.ot" "IK_CTL_space.t";
connectAttr "FK_IK_blend_local_DCMX.ot" "FK_IK_blend_CTL_space.t";
connectAttr "FK_IK_blend_local_DCMX.or" "FK_IK_blend_CTL_space.r";
connectAttr "FKIK_RVS.ox" "FK_shoulder_CTL_space.v";
connectAttr "input_shoulder.t" "FK_shoulder_CTL_space.t";
connectAttr "input_shoulder.r" "FK_shoulder_CTL_space.r";
connectAttr "input_shoulder.s" "FK_shoulder_CTL_space.s";
connectAttr "input_elbow.t" "FK_elbow_CTL_space.t";
connectAttr "input_elbow.r" "FK_elbow_CTL_space.r";
connectAttr "input_elbow.s" "FK_elbow_CTL_space.s";
connectAttr "input_wrist.t" "FK_wrist_CTL_space.t";
connectAttr "input_wrist.r" "FK_wrist_CTL_space.r";
connectAttr "input_wrist.s" "FK_wrist_CTL_space.s";
connectAttr "input_space.mirror" "mirror_switch_COND.ft";
connectAttr "IK_CTL.softIK" "IK_negate_val.i1x";
connectAttr "IK_CTL.stretchIK" "IK_negate_val.i1y";
connectAttr "IK_space_local_MTMX.o" "ctrlLen.im1";
connectAttr "ik_ctrl_local_MTMX.o" "ctrlLen.im2";
connectAttr "input_shoulder.wm" "IK_space_local_MTMX.i[0]";
connectAttr "input_space.wim" "IK_space_local_MTMX.i[1]";
connectAttr "IK_CTL.wm" "ik_ctrl_local_MTMX.i[0]";
connectAttr "input_space.wim" "ik_ctrl_local_MTMX.i[1]";
connectAttr "uparmLen.d" "soft_armLen.i1[0]";
connectAttr "loarmLen.d" "soft_armLen.i1[1]";
connectAttr "input_shoulder_local_MTMX.o" "uparmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "uparmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "input_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "loarmLen.im1";
connectAttr "input_wrist_local_MTMX.o" "loarmLen.im2";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "softikV_COND.ocr" "ctrllen_COND.ctr";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.ft";
connectAttr "armlen_minus_softikV.o1" "ctrllen_COND.st";
connectAttr "softIK_input.ctrlLen" "ctrllen_COND.cfr";
connectAttr "softIK_input.softik_ctrl_value" "softikV_COND.ft";
connectAttr "result_softik_len.o1" "softikV_COND.ctr";
connectAttr "softIK_input.armLen" "softikV_COND.cfr";
connectAttr "softIK_input.armLen" "result_softik_len.i1[0]";
connectAttr "mult_softikV.ox" "result_softik_len.i1[1]";
connectAttr "softIK_input.softik_ctrl_value" "mult_softikV.i1x";
connectAttr "power_val.ox" "mult_softikV.i2x";
connectAttr "negate_val.ox" "power_val.i2x";
connectAttr "divide_softikV.ox" "negate_val.i1x";
connectAttr "ctrlLen_minus_dif.o1" "divide_softikV.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_softikV.i2x";
connectAttr "softIK_input.ctrlLen" "ctrlLen_minus_dif.i1[0]";
connectAttr "armlen_minus_softikV.o1" "ctrlLen_minus_dif.i1[1]";
connectAttr "softIK_input.armLen" "armlen_minus_softikV.i1[0]";
connectAttr "softIK_input.softik_ctrl_value" "armlen_minus_softikV.i1[1]";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.ft";
connectAttr "softIK_input.softik_ctrl_value" "for_zerodivide_COND.cfr";
connectAttr "input_shoulder_MTMX.o" "input_shoulder_DCMX.imat";
connectAttr "input_shoulder.wm" "input_shoulder_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "input_shoulder_MTMX.i[1]";
connectAttr "stretchIK_output.stretched_len" "stretch_output_mul_ctrlVal.i1x";
connectAttr "stretchIK_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "stretchIK_input.uparm_len" "uparm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch.i1[1]";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_uparm.i2x";
connectAttr "stretchedLen.o1" "stretched_uparmLen.i1x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "stretchIK_input.ctrlLen" "stretchedLen.i1[0]";
connectAttr "stretchIK_input.softikLen" "stretchedLen.i1[1]";
connectAttr "stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_armLen.o1" "uparm_ratio.i2x";
connectAttr "stretchIK_input.uparm_len" "stretch_armLen.i1[0]";
connectAttr "stretchIK_input.loarm_len" "stretch_armLen.i1[1]";
connectAttr "stretchIK_input.loarm_len" "loarm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch.i1[1]";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_loarm.i2x";
connectAttr "stretchedLen.o1" "stretched_loarmLen.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretchIK_input.loarm_len" "loarm_ratio3.i1x";
connectAttr "stretch_armLen.o1" "loarm_ratio3.i2x";
connectAttr "FK_shoulder_local_MTMX.o" "FK_shoulder_local_DCMX.imat";
connectAttr "FK_shoulder_CTL.wm" "FK_shoulder_local_MTMX.i[0]";
connectAttr "FK_scapula.wim" "FK_shoulder_local_MTMX.i[1]";
connectAttr "FK_elbow_local_MTMX.o" "FK_elbow_local_DCMX.imat";
connectAttr "FK_elbow_CTL.wm" "FK_elbow_local_MTMX.i[0]";
connectAttr "FK_shoulder.wim" "FK_elbow_local_MTMX.i[1]";
connectAttr "FK_wrist_local_MTMX.o" "FK_wrist_local_DCMX.imat";
connectAttr "FK_wrist_CTL.wm" "FK_wrist_local_MTMX.i[0]";
connectAttr "FK_elbow.wim" "FK_wrist_local_MTMX.i[1]";
connectAttr "FK_scapula.t" "scapula_PRBL.it1";
connectAttr "FK_scapula.r" "scapula_PRBL.ir1";
connectAttr "IK_scapula.t" "scapula_PRBL.it2";
connectAttr "IK_scapula.r" "scapula_PRBL.ir2";
connectAttr "FK_IK_blend_CTL.FK_IK" "scapula_PRBL.w";
connectAttr "FK_scapula.s" "scapula_BLCL.c2";
connectAttr "IK_scapula.s" "scapula_BLCL.c1";
connectAttr "FK_IK_blend_CTL.FK_IK" "scapula_BLCL.b";
connectAttr "FK_shoulder.s" "shoulder_BLCL.c2";
connectAttr "IK_shoulder.s" "shoulder_BLCL.c1";
connectAttr "FK_IK_blend_CTL.FK_IK" "shoulder_BLCL.b";
connectAttr "FK_shoulder.t" "shoulder_PRBL.it1";
connectAttr "FK_shoulder.r" "shoulder_PRBL.ir1";
connectAttr "IK_shoulder.t" "shoulder_PRBL.it2";
connectAttr "IK_shoulder.r" "shoulder_PRBL.ir2";
connectAttr "FK_IK_blend_CTL.FK_IK" "shoulder_PRBL.w";
connectAttr "FK_elbow.s" "elbow_BLCL.c2";
connectAttr "IK_elbow.s" "elbow_BLCL.c1";
connectAttr "FK_IK_blend_CTL.FK_IK" "elbow_BLCL.b";
connectAttr "FK_elbow.t" "elbow_PRBL.it1";
connectAttr "FK_elbow.r" "elbow_PRBL.ir1";
connectAttr "IK_elbow.t" "elbow_PRBL.it2";
connectAttr "IK_elbow.r" "elbow_PRBL.ir2";
connectAttr "FK_IK_blend_CTL.FK_IK" "elbow_PRBL.w";
connectAttr "FK_wrist.t" "wrist_PRBL.it1";
connectAttr "FK_wrist.r" "wrist_PRBL.ir1";
connectAttr "IK_wrist.t" "wrist_PRBL.it2";
connectAttr "IK_wrist.r" "wrist_PRBL.ir2";
connectAttr "FK_IK_blend_CTL.FK_IK" "wrist_PRBL.w";
connectAttr "FK_wrist.s" "wrist_BLCL.c2";
connectAttr "IK_wrist.s" "wrist_BLCL.c1";
connectAttr "FK_IK_blend_CTL.FK_IK" "wrist_BLCL.b";
connectAttr "IK_elbow_polevector_space_MTMX.o" "IK_elbow_polevector_space_DCMX.imat"
		;
connectAttr "input_elbow.wm" "IK_elbow_polevector_space_MTMX.i[0]";
connectAttr "IK_shoulder_CTL_space.wim" "IK_elbow_polevector_space_MTMX.i[1]";
connectAttr "IK_CTL_space_MTMX.o" "IK_CTL_space_DCMX.imat";
connectAttr "input_wrist.wm" "IK_CTL_space_MTMX.i[0]";
connectAttr "IK_shoulder_CTL_space.wim" "IK_CTL_space_MTMX.i[1]";
connectAttr "FK_IK_blend_local_MTMX.o" "FK_IK_blend_local_DCMX.imat";
connectAttr "FK_IK_blend_local_CHOI.o" "FK_IK_blend_local_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "FK_IK_blend_local_MTMX.i[1]";
connectAttr "FK_wrist_CTL.wm" "FK_IK_blend_local_CHOI.i[0]";
connectAttr "IK_CTL.wm" "FK_IK_blend_local_CHOI.i[1]";
connectAttr "FK_IK_blend_CTL.FK_IK" "FK_IK_blend_local_CHOI.s";
connectAttr "FK_IK_blend_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "armlen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minus_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "soft_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_elbow_polevector_space_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_elbow_polevector_space_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_IK_blend_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_IK_blend_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_IK_blend_local_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mirror_switch_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of arm.ma
