//Maya ASCII 2019 scene
//Name: arm.ma
//Last modified: Tue, Jun 01, 2021 05:57:01 PM
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
	rename -uid "C5BCAC03-44FA-7589-ED04-95A72C5A4916";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 24.564714656656584 63.404937470495156 14.419361728796437 ;
	setAttr ".r" -type "double3" -69.938352729604929 23.80000000000086 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D563E74A-43AF-729F-475A-F4BFDA81D1AB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 69.480931414698873;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "4F88938A-4739-AF7E-AC0C-9192EF529454";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "28516328-479B-9D32-E6C0-C7AA0DE83F58";
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
	rename -uid "AE0F4C8C-4ED9-FBA7-8248-29B0D76F1D68";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8A22EEFB-4F3D-AF23-5134-CABED257B029";
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
	rename -uid "594DEC74-461D-2A2C-78FA-1FB13D2F1BBE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2C5ABCD5-4FBD-7C95-0FBD-7995AC02BB01";
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
	rename -uid "F001881C-430C-E56C-6FE7-7FADEE2462CC";
	addAttr -ci true -sn "rightDirect" -ln "rightDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "rightDirectX" -ln "rightDirectX" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectY" -ln "rightDirectY" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectZ" -ln "rightDirectZ" -at "double" -p "rightDirect";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "mirror" -ln "mirror" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr -s 4 ".init";
	setAttr -s 87 ".package";
createNode transform -n "arm_motion_GRP" -p "arm_GRP";
	rename -uid "40FF55E4-40CF-AA04-EF08-A89EB9765021";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".v" no;
createNode transform -n "input_space" -p "arm_motion_GRP";
	rename -uid "408B9668-452A-16BC-AA1D-679F7083DE18";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".t" -type "double3" 0 0 -3.6977854932234928e-32 ;
createNode transform -n "input_shoulder" -p "input_space";
	rename -uid "DE6606E9-458B-CADF-7CD4-7E8B8821B7C4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 14.036242639644414 0 ;
	setAttr ".s" -type "double3" 1.0000000408851277 1 1.0000000408851277 ;
createNode transform -n "input_elbow" -p "input_shoulder";
	rename -uid "62BFBC4F-4B50-2407-FDC4-22911BC243F6";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".t" -type "double3" 4.1231054425877183 0 -1.7796428497529604e-09 ;
	setAttr ".r" -type "double3" 0 -28.072485279288827 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "input_wrist" -p "input_elbow";
	rename -uid "B670DF2E-4361-74B5-92FC-048F80F766F4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".t" -type "double3" 4.1231054425877192 0 1.7796426554639311e-09 ;
	setAttr ".s" -type "double3" 0.99999995911487394 1 0.99999995911487394 ;
createNode transform -n "motion_IK_GRP" -p "arm_motion_GRP";
	rename -uid "B58767F4-4B99-BBB8-0EF6-E6B3C1629F90";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "softIK_input" -p "motion_IK_GRP";
	rename -uid "BF4E051D-4152-A5D9-9690-689ED870ECC7";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "armLen" -ln "armLen" -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
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
	rename -uid "C99080F8-42D6-DC20-9490-E6847A52AF5D";
	addAttr -ci true -sn "output_softik" -ln "output_softik" -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
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
	rename -uid "F74816CC-4BF4-9547-653A-3188D6C8954E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "60B181C2-450A-7092-30C5-7CB88AAF9022";
	setAttr -k off ".v";
createNode transform -n "IK_CTLaim" -p "IK_shoulder_space";
	rename -uid "09242D44-43E2-92B8-73D5-9FB0D4E0CCB1";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode locator -n "IK_CTLaimShape" -p "IK_CTLaim";
	rename -uid "84770522-464E-70B5-7A86-FE83F2D10C15";
	setAttr -k off ".v";
createNode transform -n "softIK_output_LOC" -p "IK_CTLaim";
	rename -uid "97B845C0-4438-C668-822C-80AB7B836A2E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode locator -n "softIK_output_LOCShape" -p "softIK_output_LOC";
	rename -uid "BD577CFF-4EF5-F541-60B2-B6AC227EE1BE";
	setAttr -k off ".v";
createNode transform -n "stretch_output_LOC" -p "softIK_output_LOC";
	rename -uid "23BDCE67-4EEA-3E9F-A1F8-CC9922B0759D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "stretch_output_LOCShape" -p "stretch_output_LOC";
	rename -uid "65A491CD-473E-2521-BAA8-50940B0C9B3D";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_CTLaim_aimConstraint" -p "IK_CTLaim";
	rename -uid "C0087CA6-42D3-09F9-F005-2DAA007E994C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ik_ctrl_CTLW0" -dv 1 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
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
	rename -uid "5FA56CA2-4790-C092-E529-5BB386D1B561";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "C429BFBE-4A59-995A-38DE-A2B7EFFE73BE";
	setAttr -k off ".v";
createNode transform -n "stretchIK_input" -p "motion_IK_GRP";
	rename -uid "A49FAF80-417C-0393-45BA-81ADCADECF7E";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "uparm_len" -ln "uparm_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "softikLen" -ln "softikLen" -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
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
	rename -uid "1BBB16D1-4B58-BDF0-C71E-268804E4610D";
	addAttr -ci true -sn "uparm_stretched" -ln "uparm_stretched" -at "double";
	addAttr -ci true -sn "loarm_stretched" -ln "loarm_stretched" -at "double";
	addAttr -ci true -sn "stretched_len" -ln "stretched_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
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
createNode transform -n "motion_FK_GRP" -p "arm_motion_GRP";
	rename -uid "BA1E313E-4535-4588-1010-9E8A361CFE54";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "output_GRP" -p "arm_GRP";
	rename -uid "FCA46F5C-406F-0701-AB9D-EDAC3F0EB4D2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "arm_CTL_GRP" -p "arm_GRP";
	rename -uid "F381023F-47C9-AFFD-5D44-A1AFD5D3A87E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode transform -n "IK_shoulder_CTL_space" -p "arm_CTL_GRP";
	rename -uid "83144360-4515-9BB3-9A32-AF817409422D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode transform -n "IK_elbow_polevector_space" -p "IK_shoulder_CTL_space";
	rename -uid "A216BE9A-4676-5697-AE3E-70B043C4D82D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
createNode transform -n "IK_polevector_space" -p "IK_elbow_polevector_space";
	rename -uid "4000FEBC-4B6A-DF30-D0DF-45917DE886A8";
	addAttr -r false -s false -ci true -m -im false -sn "mirror" -ln "mirror" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".t" -type "double3" -3 -5.5552531578749917e-25 -4 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "IK_polevector" -p "IK_polevector_space";
	rename -uid "76E11AED-497F-F369-6B23-E2973FB9C481";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode nurbsCurve -n "IK_polevectorShape" -p "IK_polevector";
	rename -uid "95D0E633-40A6-0427-5EDC-7B96A07AD2D0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 1 0
		0 0 0
		-1 0 0
		1 0 0
		0 0 0
		0 -1 0
		0 0 0
		0 0 -1
		0 0 1
		0 0 0
		-8.9320851257568279e-06 5.5552531578749917e-25 4.9999999999920215
		;
createNode transform -n "IK_CTL_space" -p "IK_shoulder_CTL_space";
	rename -uid "971C0D19-4D02-F1A3-DADC-708B25C3CAFC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode transform -n "IK_CTL" -p "IK_CTL_space";
	rename -uid "F32DAEA4-424D-0DAE-597B-10BADF44ADA7";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -min 0 -max 10 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k on ".softIK";
	setAttr -k on ".stretchIK";
createNode nurbsCurve -n "IK_CTLShape" -p "IK_CTL";
	rename -uid "4E8ED328-4FBF-D1EE-5864-66BD0C02CF35";
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
createNode transform -n "FK_shoulder_CTL_space" -p "arm_CTL_GRP";
	rename -uid "205EE5EA-444E-CCB5-B127-0084566DAE11";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_space";
	rename -uid "A6F82253-4F18-F7DB-2CD1-60BA65D733AC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "61F45F48-42CF-3447-605E-9D99F6D69FF3";
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
	rename -uid "263D8029-4F2D-8777-268A-E8B04FDFF0C2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "FK_elbow_CTL" -p "FK_elbow_CTL_space";
	rename -uid "09878AF5-4D49-F08F-A069-C5ABAE757734";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FK_elbow_CTLShape" -p "FK_elbow_CTL";
	rename -uid "B7321DA1-4B21-9F15-3673-53A1E8DB127A";
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
	rename -uid "B34AA731-43BC-8654-622E-EEAB5A52B991";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "FK_wrist_CTL" -p "FK_wrist_CTL_space";
	rename -uid "FDCCE241-421C-DDCA-7E92-349DE717CF0B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FK_wrist_CTLShape" -p "FK_wrist_CTL";
	rename -uid "8EAB0E9B-4EEF-ACF0-9BE4-E4A060A0CEF7";
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
createNode transform -n "FK_IK_blend_CTL_space" -p "arm_CTL_GRP";
	rename -uid "A93DC045-4A32-B52A-C2D2-0EA822E9D655";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "FK_IK_blend_CTL" -p "FK_IK_blend_CTL_space";
	rename -uid "41C7DB37-460D-A8D7-F3FD-50949E514BBD";
	addAttr -ci true -sn "FK_IK" -ln "FK_IK" -nn "FK / IK" -min 0 -max 1 -en "FK:IK" 
		-at "enum";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
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
	rename -uid "7712C240-46C0-54AB-DD38-22A7469A5F4A";
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
	rename -uid "BCB6D957-476A-B9FA-F4A6-4A953B25E5C2";
createNode transform -n "scapula_CTL_space" -p "scapula_CTL_offGRP";
	rename -uid "7EC2F4C6-422F-2296-4FB8-FD9A1981F731";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode transform -n "scapula_CTL" -p "scapula_CTL_space";
	rename -uid "C2980F84-431E-9303-6C5E-55A22B56B8CF";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "A808C861-4B1B-1828-2187-0CB21DD44928";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E29D9B04-43B5-194F-C49A-6B91E32FB001";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "AE471276-438E-A336-D86D-5F8614D31B9E";
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
	setAttr ".mSceneName" -type "string" "D:/script/main/mApplication/ms_module/lib/rig_module/sets/human/arm.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6C95B829-47AA-A5B4-FAB9-E09FCC668494";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "ABDC8D64-491D-D06C-C413-498999638BDB";
createNode displayLayerManager -n "layerManager";
	rename -uid "7B2C3678-4485-70FC-87BE-E99862BCB950";
createNode displayLayer -n "defaultLayer";
	rename -uid "6DDA190C-40C9-8D86-567D-2AAAAEBA9ECB";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E1C9218A-4BAC-D434-FE73-A5945D67BA92";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "10D97C26-4585-0C6C-F512-07A36298725B";
	setAttr ".g" yes;
createNode condition -n "ctrllen_COND";
	rename -uid "1B0CA381-4DA6-AECD-F924-5CBB4CFE15AA";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "FAA1FD75-4AA0-A20A-F26B-A990051FFE7C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "0C309BFA-4134-EB47-C961-D0A5318EE32A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV";
	rename -uid "DB4D71C9-45B7-C16A-5CA6-4DB54B335E79";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multiplyDivide -n "power_val";
	rename -uid "945C2401-4928-AA9A-826E-3DB0D25FB67D";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "negate_val";
	rename -uid "05B9DBA6-4F28-DC67-A43B-319BE12B6ABF";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "0928F2DE-40BE-67A9-EE17-6AB1CC928333";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "ctrlLen_minus_dif";
	rename -uid "FA04AA98-43DE-B43F-22E3-0D8DD19BD58F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "1859B91F-4141-7BE9-9795-3E9969410E68";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "EFEB1175-44A5-8267-A1C3-0A99508FE100";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loarm_COND";
	rename -uid "ABF656F1-4778-D4E3-3E27-62BC4DA30591";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_armLen";
	rename -uid "8A5C352E-4B8F-4B44-929A-91A92343505F";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loarm_plus_stretch";
	rename -uid "566D9127-4392-16F6-DA3F-35AFAB022D82";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "89B8AC9E-4B63-81BB-1C78-3AB789209BE7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "DB218D00-4E3C-1896-EC51-09AAA41301EC";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "D6C00174-43A5-D19F-3796-ADBA882DD23A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "7AC34A1B-4798-E2B7-046C-2EA8C0F934E6";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode condition -n "uparm_COND";
	rename -uid "3B8C6AA1-40E4-0880-68C2-2BBAC38625D2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode plusMinusAverage -n "uparm_plus_stretch";
	rename -uid "696312FE-4A57-9229-DBCF-719BFF7E3D09";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "56C9279F-4A9A-0975-22B1-CFB9C3DDDFCF";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "3868C4F3-42D0-04BB-AA0A-39B4475A6765";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "17E9B6A3-401D-2D4F-B3FB-EA8077BE4722";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr ".op" 2;
createNode decomposeMatrix -n "input_shoulder_DCMX";
	rename -uid "07AB78E8-4FBF-C6DF-01A4-65B154EDD432";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode multMatrix -n "input_shoulder_MTMX";
	rename -uid "337B6BBE-4B6B-CAE3-81AD-A1A83503232B";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_scapula_space_DCMX";
	rename -uid "02301E74-4ED7-26C0-44F5-86AC056B6BED";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode multMatrix -n "FK_scapula_space_MTMX";
	rename -uid "B1A7C348-4384-B6CD-F08F-9F8A4C674F81";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode decomposeMatrix -n "IK_CTL_space_DCMX";
	rename -uid "DA9743FA-48B2-CDCA-8F72-2BA9948B679A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "IK_CTL_space_MTMX";
	rename -uid "47B0490C-4D90-8BA6-C423-A9B47980CD5C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_elbow_polevector_space_DCMX";
	rename -uid "373A755E-4BD4-A6D2-1FDE-0BB22D152B50";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
createNode multMatrix -n "IK_elbow_polevector_space_MTMX";
	rename -uid "29AF6C10-47D9-44F0-ACC7-58908A7EF2E2";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_fk_blend_CTL_space_DCMX";
	rename -uid "5CCEC846-4A3D-8768-B36D-4DB7B04291DE";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "IK_fk_blend_CTL_space_MTMX";
	rename -uid "8E87AC1E-4D3B-746B-7EB8-76BD04131D30";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_polevector_DCMX";
	rename -uid "7EC5568A-4EC0-E07D-062A-0EAACE1B0849";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "IK_polevector_MTMX";
	rename -uid "4C78BBAB-4E2C-6AFA-15BD-BE9EBAC8BEE4";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_scapula_space_DCMX";
	rename -uid "5E9B4A33-45C3-46AC-2F18-DBADFA24DA36";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode multMatrix -n "IK_scapula_space_MTMX";
	rename -uid "4374E667-472B-9F8D-5254-9CBCA358022C";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode decomposeMatrix -n "IK_shoulder_JNT_DCMX";
	rename -uid "6BA1F2BF-4718-5E2F-CCCC-369D294531DE";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
createNode multMatrix -n "IK_shoulder_JNT_MTMX";
	rename -uid "69212074-431F-1CA3-5063-7DBF0C2C19AE";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "output_scapula_JNT_DCMX";
	rename -uid "A55375AF-41BE-B61E-1543-BB95C50E9B76";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
createNode multMatrix -n "output_scapula_JNT_MTMX";
	rename -uid "F22E2E02-4781-CD27-EDB8-F483262A3B67";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename02" -ln "rename02" -at "message";
	setAttr -s 2 ".i";
createNode distanceBetween -n "ctrlLen";
	rename -uid "4B686CF1-4F06-C92A-28D6-79A8634996D1";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode multMatrix -n "IK_space_local_MTMX";
	rename -uid "AC113E68-46F4-94FC-2B39-72B2FAF32AE6";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local_MTMX";
	rename -uid "DAE739D3-4454-7907-64D0-DD93C46097C8";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr -s 2 ".i";
createNode distanceBetween -n "loarmLen";
	rename -uid "49F2C721-4AE0-8AD0-19A8-DDA5A632EA77";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "97DF89A2-4330-E118-094A-27BEAC68D84E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename04" -ln "rename04" -at "message";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "A78EF143-4FD9-2380-36FB-C295CAE41E88";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename05" -ln "rename05" -at "message";
	setAttr -s 2 ".i";
createNode distanceBetween -n "uparmLen";
	rename -uid "BCB2BB7B-4847-FA9E-BF5F-F694311FE9D9";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "66C3DB95-4131-9266-52AE-BA88812EF44A";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename03" -ln "rename03" -at "message";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val";
	rename -uid "C81276A9-4509-58FE-5E61-24952960D66E";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "16137A48-4829-FF38-A039-20AFA0809146";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode plusMinusAverage -n "soft_armLen";
	rename -uid "6CF13D6D-4032-67A5-771B-9BAE412605C7";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "rename01" -ln "rename01" -at "message";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode reverse -n "FKIK_RVS";
	rename -uid "6E96417E-4452-68C5-A099-E9884DBD0917";
	addAttr -r false -s false -ci true -m -im false -sn "package" -ln "package" -at "message";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "85F9F401-4FAD-B6DD-2D15-5ABFD6E99492";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1095\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1095\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1095\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A4468421-45EC-6546-FFF6-FDA3C6168153";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode decomposeMatrix -n "FK_IK_blend_local_DCMX";
	rename -uid "61CA8EE8-48C2-A48B-1A25-4C9D26CD497C";
createNode multMatrix -n "FK_IK_blend_local_MTMX";
	rename -uid "5283F572-453E-A6A3-0A66-FC8F2B88B310";
	setAttr -s 2 ".i";
createNode choice -n "FK_IK_blend_local_CHOI";
	rename -uid "6A8D28B8-41FD-6AFE-4B26-B4A872963B75";
	setAttr -s 2 ".i";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "8D8F3234-4ADB-512F-0593-C7BE559D9714";
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
	setAttr -s 55 ".u";
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
connectAttr "input_space.init" "arm_GRP.init" -na;
connectAttr "input_shoulder.init" "arm_GRP.init" -na;
connectAttr "input_elbow.init" "arm_GRP.init" -na;
connectAttr "input_wrist.init" "arm_GRP.init" -na;
connectAttr "IK_polevector_space.mirror" "arm_GRP.mirror" -na;
connectAttr "arm_motion_GRP.package" "arm_GRP.package" -na;
connectAttr "input_space.package" "arm_GRP.package" -na;
connectAttr "input_shoulder.package" "arm_GRP.package" -na;
connectAttr "input_elbow.package" "arm_GRP.package" -na;
connectAttr "input_wrist.package" "arm_GRP.package" -na;
connectAttr "motion_IK_GRP.package" "arm_GRP.package" -na;
connectAttr "softIK_input.package" "arm_GRP.package" -na;
connectAttr "softIK_output.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_space.package" "arm_GRP.package" -na;
connectAttr "IK_CTLaim.package" "arm_GRP.package" -na;
connectAttr "softIK_output_LOC.package" "arm_GRP.package" -na;
connectAttr "stretch_output_LOC.package" "arm_GRP.package" -na;
connectAttr "IK_CTLaim_aimConstraint.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_space_upVec.package" "arm_GRP.package" -na;
connectAttr "stretchIK_input.package" "arm_GRP.package" -na;
connectAttr "stretchIK_output.package" "arm_GRP.package" -na;
connectAttr "motion_FK_GRP.package" "arm_GRP.package" -na;
connectAttr "output_GRP.package" "arm_GRP.package" -na;
connectAttr "arm_CTL_GRP.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_CTL_space.package" "arm_GRP.package" -na;
connectAttr "IK_elbow_polevector_space.package" "arm_GRP.package" -na;
connectAttr "IK_polevector_space.package" "arm_GRP.package" -na;
connectAttr "IK_polevector.package" "arm_GRP.package" -na;
connectAttr "IK_CTL_space.package" "arm_GRP.package" -na;
connectAttr "IK_CTL.package" "arm_GRP.package" -na;
connectAttr "FK_IK_blend_CTL_space.package" "arm_GRP.package" -na;
connectAttr "FK_IK_blend_CTL.package" "arm_GRP.package" -na;
connectAttr "scapula_CTL_space.package" "arm_GRP.package" -na;
connectAttr "scapula_CTL.package" "arm_GRP.package" -na;
connectAttr "FK_shoulder_CTL_space.package" "arm_GRP.package" -na;
connectAttr "FK_shoulder_CTL.package" "arm_GRP.package" -na;
connectAttr "FK_elbow_CTL_space.package" "arm_GRP.package" -na;
connectAttr "FK_elbow_CTL.package" "arm_GRP.package" -na;
connectAttr "FK_wrist_CTL_space.package" "arm_GRP.package" -na;
connectAttr "FK_wrist_CTL.package" "arm_GRP.package" -na;
connectAttr "ctrllen_COND.package" "arm_GRP.package" -na;
connectAttr "for_zerodivide_COND.package" "arm_GRP.package" -na;
connectAttr "loarm_COND.package" "arm_GRP.package" -na;
connectAttr "softikV_COND.package" "arm_GRP.package" -na;
connectAttr "uparm_COND.package" "arm_GRP.package" -na;
connectAttr "input_shoulder_DCMX.package" "arm_GRP.package" -na;
connectAttr "FK_scapula_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_CTL_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_elbow_polevector_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_fk_blend_CTL_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_polevector_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_scapula_space_DCMX.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_JNT_DCMX.package" "arm_GRP.package" -na;
connectAttr "output_scapula_JNT_DCMX.package" "arm_GRP.package" -na;
connectAttr "ctrlLen.package" "arm_GRP.package" -na;
connectAttr "loarmLen.package" "arm_GRP.package" -na;
connectAttr "uparmLen.package" "arm_GRP.package" -na;
connectAttr "FK_scapula_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_CTL_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "ik_ctrl_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_elbow_polevector_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_fk_blend_CTL_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_polevector_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_scapula_space_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_shoulder_JNT_MTMX.package" "arm_GRP.package" -na;
connectAttr "IK_space_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_elbow_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_shoulder_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_wrist_local_MTMX.package" "arm_GRP.package" -na;
connectAttr "input_shoulder_MTMX.package" "arm_GRP.package" -na;
connectAttr "output_scapula_JNT_MTMX.package" "arm_GRP.package" -na;
connectAttr "divide_softikV.package" "arm_GRP.package" -na;
connectAttr "IK_negate_val.package" "arm_GRP.package" -na;
connectAttr "loarm_ratio3.package" "arm_GRP.package" -na;
connectAttr "mult_softikV.package" "arm_GRP.package" -na;
connectAttr "negate_val.package" "arm_GRP.package" -na;
connectAttr "power_val.package" "arm_GRP.package" -na;
connectAttr "stretch_output_mul_ctrlVal.package" "arm_GRP.package" -na;
connectAttr "stretchCtrl_loarm.package" "arm_GRP.package" -na;
connectAttr "stretchCtrl_uparm.package" "arm_GRP.package" -na;
connectAttr "stretched_loarmLen.package" "arm_GRP.package" -na;
connectAttr "stretched_uparmLen.package" "arm_GRP.package" -na;
connectAttr "uparm_ratio.package" "arm_GRP.package" -na;
connectAttr "armlen_minus_softikV.package" "arm_GRP.package" -na;
connectAttr "ctrlLen_minus_dif.package" "arm_GRP.package" -na;
connectAttr "loarm_plus_stretch.package" "arm_GRP.package" -na;
connectAttr "result_softik_len.package" "arm_GRP.package" -na;
connectAttr "soft_armLen.package" "arm_GRP.package" -na;
connectAttr "stretch_armLen.package" "arm_GRP.package" -na;
connectAttr "stretchedLen.package" "arm_GRP.package" -na;
connectAttr "uparm_plus_stretch.package" "arm_GRP.package" -na;
connectAttr "FKIK_RVS.package" "arm_GRP.package" -na;
connectAttr "input_space.t" "motion_IK_GRP.t";
connectAttr "input_space.r" "motion_IK_GRP.r";
connectAttr "input_space.s" "motion_IK_GRP.s";
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
connectAttr "input_space.t" "motion_FK_GRP.t";
connectAttr "input_space.r" "motion_FK_GRP.r";
connectAttr "input_space.s" "motion_FK_GRP.s";
connectAttr "input_space.t" "output_GRP.t";
connectAttr "input_space.r" "output_GRP.r";
connectAttr "input_space.s" "output_GRP.s";
connectAttr "input_space.t" "arm_CTL_GRP.t";
connectAttr "input_space.r" "arm_CTL_GRP.r";
connectAttr "input_space.s" "arm_CTL_GRP.s";
connectAttr "FK_IK_blend_CTL.FK_IK" "IK_shoulder_CTL_space.v";
connectAttr "input_shoulder.t" "IK_shoulder_CTL_space.t";
connectAttr "IK_elbow_polevector_space_DCMX.ot" "IK_elbow_polevector_space.t";
connectAttr "IK_elbow_polevector_space_DCMX.or" "IK_elbow_polevector_space.r";
connectAttr "IK_polevector_DCMX.ot" "IK_polevectorShape.cp[10]";
connectAttr "IK_CTL_space_DCMX.ot" "IK_CTL_space.t";
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
connectAttr "FK_IK_blend_local_DCMX.ot" "FK_IK_blend_CTL_space.t";
connectAttr "FK_IK_blend_local_DCMX.or" "FK_IK_blend_CTL_space.r";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
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
connectAttr "stretchIK_input.ctrlLen" "loarm_COND.ft";
connectAttr "stretch_armLen.o1" "loarm_COND.st";
connectAttr "loarm_plus_stretch.o1" "loarm_COND.ctr";
connectAttr "stretchIK_input.loarm_len" "loarm_COND.cfr";
connectAttr "stretchIK_input.uparm_len" "stretch_armLen.i1[0]";
connectAttr "stretchIK_input.loarm_len" "stretch_armLen.i1[1]";
connectAttr "stretchIK_input.loarm_len" "loarm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch.i1[1]";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_loarm.i2x";
connectAttr "stretchedLen.o1" "stretched_loarmLen.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretchIK_input.ctrlLen" "stretchedLen.i1[0]";
connectAttr "stretchIK_input.softikLen" "stretchedLen.i1[1]";
connectAttr "stretchIK_input.loarm_len" "loarm_ratio3.i1x";
connectAttr "stretch_armLen.o1" "loarm_ratio3.i2x";
connectAttr "stretchIK_input.ctrlLen" "uparm_COND.ft";
connectAttr "stretch_armLen.o1" "uparm_COND.st";
connectAttr "uparm_plus_stretch.o1" "uparm_COND.ctr";
connectAttr "stretchIK_input.uparm_len" "uparm_COND.cfr";
connectAttr "stretchIK_input.uparm_len" "uparm_plus_stretch.i1[0]";
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch.i1[1]";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "stretchIK_input.stretch_ctrl_value" "stretchCtrl_uparm.i2x";
connectAttr "stretchedLen.o1" "stretched_uparmLen.i1x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_armLen.o1" "uparm_ratio.i2x";
connectAttr "input_shoulder_MTMX.o" "input_shoulder_DCMX.imat";
connectAttr "input_shoulder.wm" "input_shoulder_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "input_shoulder_MTMX.i[1]";
connectAttr "FK_scapula_space_MTMX.o" "FK_scapula_space_DCMX.imat";
connectAttr "scapula_CTL.wm" "FK_scapula_space_MTMX.i[0]";
connectAttr "IK_CTL_space_MTMX.o" "IK_CTL_space_DCMX.imat";
connectAttr "input_wrist.wm" "IK_CTL_space_MTMX.i[0]";
connectAttr "IK_shoulder_CTL_space.wim" "IK_CTL_space_MTMX.i[1]";
connectAttr "IK_elbow_polevector_space_MTMX.o" "IK_elbow_polevector_space_DCMX.imat"
		;
connectAttr "input_elbow.wm" "IK_elbow_polevector_space_MTMX.i[0]";
connectAttr "IK_shoulder_CTL_space.wim" "IK_elbow_polevector_space_MTMX.i[1]";
connectAttr "IK_fk_blend_CTL_space_MTMX.o" "IK_fk_blend_CTL_space_DCMX.imat";
connectAttr "IK_CTL.wm" "IK_fk_blend_CTL_space_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "IK_fk_blend_CTL_space_MTMX.i[1]";
connectAttr "IK_polevector_MTMX.o" "IK_polevector_DCMX.imat";
connectAttr "IK_elbow_polevector_space.wm" "IK_polevector_MTMX.i[0]";
connectAttr "IK_polevectorShape.pim" "IK_polevector_MTMX.i[1]";
connectAttr "IK_scapula_space_MTMX.o" "IK_scapula_space_DCMX.imat";
connectAttr "scapula_CTL.wm" "IK_scapula_space_MTMX.i[0]";
connectAttr "IK_shoulder_JNT_MTMX.o" "IK_shoulder_JNT_DCMX.imat";
connectAttr "input_shoulder.wm" "IK_shoulder_JNT_MTMX.i[0]";
connectAttr "motion_IK_GRP.wim" "IK_shoulder_JNT_MTMX.i[1]";
connectAttr "output_scapula_JNT_MTMX.o" "output_scapula_JNT_DCMX.imat";
connectAttr "scapula_CTL.wm" "output_scapula_JNT_MTMX.i[0]";
connectAttr "output_GRP.wm" "output_scapula_JNT_MTMX.i[1]";
connectAttr "IK_space_local_MTMX.o" "ctrlLen.im1";
connectAttr "ik_ctrl_local_MTMX.o" "ctrlLen.im2";
connectAttr "input_shoulder.wm" "IK_space_local_MTMX.i[0]";
connectAttr "input_space.wim" "IK_space_local_MTMX.i[1]";
connectAttr "IK_CTL.wm" "ik_ctrl_local_MTMX.i[0]";
connectAttr "input_space.wim" "ik_ctrl_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "loarmLen.im1";
connectAttr "input_wrist_local_MTMX.o" "loarmLen.im2";
connectAttr "input_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "input_shoulder_local_MTMX.o" "uparmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "uparmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_space.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "IK_CTL.softIK" "IK_negate_val.i1x";
connectAttr "IK_CTL.stretchIK" "IK_negate_val.i1y";
connectAttr "stretchIK_output.stretched_len" "stretch_output_mul_ctrlVal.i1x";
connectAttr "stretchIK_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "uparmLen.d" "soft_armLen.i1[0]";
connectAttr "loarmLen.d" "soft_armLen.i1[1]";
connectAttr "FK_IK_blend_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "FK_IK_blend_local_MTMX.o" "FK_IK_blend_local_DCMX.imat";
connectAttr "FK_IK_blend_local_CHOI.o" "FK_IK_blend_local_MTMX.i[0]";
connectAttr "arm_CTL_GRP.wim" "FK_IK_blend_local_MTMX.i[1]";
connectAttr "FK_wrist_CTL.wm" "FK_IK_blend_local_CHOI.i[0]";
connectAttr "IK_CTL.wm" "FK_IK_blend_local_CHOI.i[1]";
connectAttr "FK_IK_blend_CTL.FK_IK" "FK_IK_blend_local_CHOI.s";
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
connectAttr "uparm_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_ctrl_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_fk_blend_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_fk_blend_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_elbow_polevector_space_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "IK_elbow_polevector_space_DCMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "FK_scapula_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_scapula_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_scapula_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_scapula_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "output_scapula_JNT_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "output_scapula_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_polevector_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_polevector_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_IK_blend_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_IK_blend_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_IK_blend_local_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of arm.ma
