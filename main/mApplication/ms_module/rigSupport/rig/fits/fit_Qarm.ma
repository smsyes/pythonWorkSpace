//Maya ASCII 2019 scene
//Name: fit_Qarm.ma
//Last modified: Fri, Jul 09, 2021 04:38:32 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "fit_Qarm";
	rename -uid "F1BB6091-406F-EC57-87B8-418728B880D8";
	addAttr -r false -s false -ci true -m -im false -sn "fitControls" -ln "fitControls" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "leftDirect" -ln "leftDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "leftDirectX" -ln "leftDirectX" -at "double" -p "leftDirect";
	addAttr -ci true -sn "leftDirectY" -ln "leftDirectY" -at "double" -p "leftDirect";
	addAttr -ci true -sn "leftDirectZ" -ln "leftDirectZ" -at "double" -p "leftDirect";
	addAttr -ci true -sn "rightDirect" -ln "rightDirect" -at "double3" -nc 3;
	addAttr -ci true -sn "rightDirectX" -ln "rightDirectX" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectY" -ln "rightDirectY" -at "double" -p "rightDirect";
	addAttr -ci true -sn "rightDirectZ" -ln "rightDirectZ" -at "double" -p "rightDirect";
	addAttr -ci true -sn "offsetMir" -ln "offsetMir" -at "matrix";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "type" -ln "type" -dt "string";
	setAttr -s 7 ".fitControls";
	setAttr -s 7 ".init";
	setAttr -s 7 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -cb on ".mirror";
	setAttr -l on -k on ".type" -type "string" "Qarm";
createNode transform -n "fit_Qarm_GRP" -p "fit_Qarm";
	rename -uid "87A9DC30-464B-ADDD-E8E7-1A83FBE779C6";
createNode transform -n "fit_Qscapula" -p "fit_Qarm_GRP";
	rename -uid "696B1403-432A-4CB5-7122-29B5FA588A60";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_QscapulaShape" -p "fit_Qscapula";
	rename -uid "6EFE5FA4-404B-63AC-C808-77918CA74FC8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_Qarm_space" -p "fit_Qarm_GRP";
	rename -uid "C65FA403-4DF1-5FAE-2380-5F9FF741AFB1";
createNode transform -n "fit_Qshoulder" -p "fit_Qarm_space";
	rename -uid "CEBD57BD-4B2E-3441-750D-658E3BD72B53";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
createNode nurbsCurve -n "fit_QshoulderShape" -p "fit_Qshoulder";
	rename -uid "5DC684FF-4319-1097-AD93-2DBE31B6FCAB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_QB_elbow" -p "fit_Qshoulder";
	rename -uid "85394332-4F00-F8B9-1B2B-D99CB4F68BB2";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -0.0094790458679199219 -10.547380447387695 -3.6242141723632813 ;
createNode nurbsCurve -n "fit_QB_elbowShape" -p "fit_QB_elbow";
	rename -uid "6E6AD529-4A04-5668-619B-C1A30DED326F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_QF_elbow" -p "fit_QB_elbow";
	rename -uid "4EA22AFA-4B72-48DC-D55E-9685B75C38E9";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.06464385986328125 -15.030144214630127 0.22628974914550781 ;
createNode nurbsCurve -n "fit_QF_elbowShape" -p "fit_QF_elbow";
	rename -uid "7307309B-4EC8-C09E-ABD2-B79D602CDB97";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_Qwrist" -p "fit_QF_elbow";
	rename -uid "CE29DA55-4666-B357-5D37-B39720E37B2B";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.018614768981933594 -4.5795176029205322 -0.004486083984375 ;
createNode nurbsCurve -n "fit_QwristShape" -p "fit_Qwrist";
	rename -uid "DEBAA9E2-4BC5-9541-A76B-83ACE69510D5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_Qtoe" -p "fit_Qwrist";
	rename -uid "581C05B6-4F67-6645-2FF1-C49623215023";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 9.5367431640625e-07 -1.4941015243530273 1.2321205139160156 ;
createNode nurbsCurve -n "fit_QtoeShape" -p "fit_Qtoe";
	rename -uid "8959F80B-448E-BCE1-71C5-6B9012C10C18";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "fit_Qtiptoe" -p "fit_Qtoe";
	rename -uid "74A721BA-429B-CCCB-C586-08B57250F5E7";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -1.1763595171178167 3.4173812866210938 ;
createNode nurbsCurve -n "fit_QtiptoeShape" -p "fit_Qtiptoe";
	rename -uid "64C91529-4D8F-5985-3653-9C9911413340";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 -0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		;
createNode transform -n "init_Qscapula" -p "fit_Qarm";
	rename -uid "B91ECD5E-4B8F-D117-ED8C-CEA940ED4722";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_Qshoulder" -p "init_Qscapula";
	rename -uid "203C398A-4648-54FD-6184-CE9D6B2D90EA";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_QB_elbow" -p "init_Qshoulder";
	rename -uid "077F2E05-4D7C-7DC8-410E-C1A45D0719AE";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_QF_elbow" -p "init_QB_elbow";
	rename -uid "CF3A2387-4A27-1716-CA64-8EBF9E6B38D5";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_Qwrist" -p "init_QF_elbow";
	rename -uid "B95D5EAB-4934-7D47-B8AE-8293E98AE7E5";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".sh" -type "double3" 4.0300449670852498e-10 0 0 ;
createNode transform -n "init_Qtoe" -p "init_Qwrist";
	rename -uid "BD33F7C7-4E5D-C091-3A93-1EBE2E2B0338";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_Qtiptoe" -p "init_Qtoe";
	rename -uid "A1C37676-48D9-5E1A-895C-739B00963F07";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_Qarm_GRP" -p "fit_Qarm";
	rename -uid "885B48EF-4F5C-8E80-ACE4-F3A3BC365F37";
createNode joint -n "temp_Qscapula" -p "temp_Qarm_GRP";
	rename -uid "8031C7B3-4AE9-4E60-4F2D-5A9CDB8B9DD7";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_Qshoulder" -p "temp_Qscapula";
	rename -uid "C3362BEF-49A9-BE6A-EC4C-909E9EB0D971";
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
createNode joint -n "temp_QB_elbow" -p "temp_Qshoulder";
	rename -uid "EBB1909D-4FA3-3565-E35E-7093E6BC93F9";
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
createNode joint -n "temp_QF_elbow" -p "temp_QB_elbow";
	rename -uid "21A2CE78-4477-0B7E-2DF8-DE8CC750D258";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_Qwrist" -p "temp_QF_elbow";
	rename -uid "D0414743-4341-CA63-5E77-3C99A50067B8";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_Qtoe" -p "temp_Qwrist";
	rename -uid "9AFA56CC-4B75-FD26-1926-BF80FE5AE030";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_Qtiptoe" -p "temp_Qtoe";
	rename -uid "4984680C-461E-A565-CBD6-00A72D044E10";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode condition -n "arm_mirror_COND";
	rename -uid "12C2A2B8-4392-B325-AA12-FEA2B23CB97A";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_arm_local_DCMX";
	rename -uid "CA2CC1AB-47B0-A51C-4416-EF85687DE587";
createNode multMatrix -n "fit_arm_local_MTMX";
	rename -uid "DC76DEFA-443E-36FE-5B7A-6FBCF008850D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_shoulder_aligned_DCMX";
	rename -uid "8A222105-40E0-C9FE-29CD-E0B6D0A82E93";
createNode multMatrix -n "fit_shoulder_aligned_MTMX";
	rename -uid "0F3CC36D-4870-25CD-F2F5-18B890858E8D";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_shoulder_aligned_FBFM";
	rename -uid "EDD88E21-4E1D-FC36-AA86-50963C5286DF";
createNode vectorProduct -n "fit_shoulder_x_vec";
	rename -uid "1C525BEC-47C5-57F1-DCE3-6F8264FC833B";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_shoulder2elbow_vec_rvsMULT";
	rename -uid "7C735E82-4892-BB6C-1445-CF9BEC1B9CCC";
createNode plusMinusAverage -n "fit_shoulder2elbow_vec";
	rename -uid "E4382D9D-4AE8-E799-886C-00B841854F23";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_B_elbow_DCMX";
	rename -uid "045D02AB-4F95-404C-7E02-00812AF96FC9";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "3978F04E-4237-A8D8-0245-10A326C329E6";
createNode vectorProduct -n "fit_shoulder_y_vec";
	rename -uid "8ACF59E7-4F1E-B84F-EEC3-BFAE5D240661";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_shoulder2wrist_vec_rvsMULT";
	rename -uid "3694E983-4610-1DED-7B2F-419AFEE2D54C";
createNode plusMinusAverage -n "fit_shoulder2wrist_vec";
	rename -uid "29F0DC6D-491B-1C97-83EF-599FF9269C30";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_F_elbow_DCMX";
	rename -uid "FF7E0B55-4294-3329-D39B-97B972DBD2AF";
createNode vectorProduct -n "fit_shoulder_z_vec";
	rename -uid "7998EE6F-4480-A52C-230E-F986179308D6";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_B_elbow_aligned_DCMX";
	rename -uid "126BC8FA-4728-375B-4510-838AEF223F59";
createNode multMatrix -n "fit_B_elbow_aligned_MTMX";
	rename -uid "E6EC9F2D-430C-3814-9605-E699FF53A347";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_B_elbow_aligned_FBFM";
	rename -uid "AA93639A-4278-A0B2-FE72-189CFEAF43D3";
createNode vectorProduct -n "fit_B_elbow_x_vec";
	rename -uid "B1A99109-4C17-23CD-F54A-3BADE00FF70D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_elbow2F_elbow_vec_rvsMULT";
	rename -uid "97B4A368-4386-8F50-5C06-1182C674FDEF";
createNode plusMinusAverage -n "fit_B_elbow2F_elbow_vec";
	rename -uid "040B2D1C-42AE-DF89-FDCC-05BD7165E74D";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_elbow_y_vec";
	rename -uid "2664E177-4C79-CE32-400C-3F8FEDD327F1";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_elbow2shoulder_vec_rvsMULT";
	rename -uid "D01C296D-4D40-1A66-545D-21B357238AC1";
createNode plusMinusAverage -n "fit_B_elbow2shoulder_vec";
	rename -uid "D4DFCAFE-4E51-31D2-2E29-06BFA397F19F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_elbow_z_vec";
	rename -uid "7AC4FF09-4D22-5F65-FB4A-378C068612C6";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_F_elbow_aligned_DCMX";
	rename -uid "96CD84B0-477E-B243-E4EB-AA9FD0D7EB5D";
createNode multMatrix -n "fit_F_elbow_aligned_MTMX";
	rename -uid "8A404877-47C1-D1BA-93D5-F8ADB5D8388D";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_F_elbow_aligned_FBFM";
	rename -uid "FD6B18DC-460D-CB19-806F-46B0C4F952AF";
createNode vectorProduct -n "fit_F_elbow_x_vec";
	rename -uid "399BBCC1-4E5C-C37E-ADDC-EF98416D753D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_elbow2wrist_vec_rvsMULT";
	rename -uid "7DF70FF9-47B2-46F3-D6E4-489C54C61988";
createNode plusMinusAverage -n "fit_F_elbow2wrist_vec";
	rename -uid "A90B3801-41AE-16CE-52D1-EC9277B6D60A";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "BEB9DDC4-4D64-F44F-CDE4-79B36367F0F0";
createNode vectorProduct -n "fit_F_elbow_y_vec";
	rename -uid "E0B864F5-4383-2554-A7F5-1489867C18CD";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_elbow2B_elbow_vec_rvsMULT";
	rename -uid "4099FD4F-4755-F410-97DA-4098F145DBFC";
createNode plusMinusAverage -n "fit_F_elbow2B_elbow_vec";
	rename -uid "81A08489-40A6-C36A-11F4-318CA408CAA8";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_F_elbow_z_vec";
	rename -uid "D9B8E0F1-496E-ED6C-0234-758C28E4DDF2";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_wrist_aligned_DCMX";
	rename -uid "258E618F-43FE-E631-9F40-C5BEAE9817E7";
createNode multMatrix -n "fit_wrist_aligned_MTMX";
	rename -uid "A559DD54-4770-75D6-653B-CA80D0B6633E";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_wrist_aligned_FBFM";
	rename -uid "A6AD84E0-49FE-621A-5008-A5BDC3CB769B";
createNode vectorProduct -n "fit_wrist_x_vec";
	rename -uid "2F0A41A1-4DC1-1E2F-9FDC-DB97FDCCB1CE";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_wrist2F_toe_vec_rvsMULT";
	rename -uid "54E2D20E-4F7F-3660-DDAB-43B804AFFCC5";
createNode plusMinusAverage -n "fit_wrist2F_toe_vec";
	rename -uid "1FAC9B14-4B33-2A80-E5A2-C2A1D2301CE6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_toe_DCMX";
	rename -uid "FEEF251F-4E0C-9ADC-0BE5-9480F231F047";
createNode vectorProduct -n "fit_wrist_y_vec";
	rename -uid "14194970-4833-327B-D51A-4CAA64B5AE8B";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_wrist2F_elbow_vec_rvsMULT";
	rename -uid "7CC335B6-490B-119F-4213-AB9AF10F0820";
createNode plusMinusAverage -n "fit_wrist2F_elbow_vec";
	rename -uid "B9A62A5E-44FD-B4D2-2A9C-8CA1EA74852C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_wrist_z_vec";
	rename -uid "247CC939-49F6-C703-7AE1-E3B7E8CF2804";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_toe_aligned_DCMX";
	rename -uid "D78E0E33-43E9-2785-138E-2BB291F69BD1";
createNode multMatrix -n "fit_toe_aligned_MTMX";
	rename -uid "E8C0E767-4DB4-26E4-CEFB-C3B01BB87802";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_toe_aligned_FBFM";
	rename -uid "E5FA4E4E-42F4-DE11-86E5-D6AA9E27099C";
createNode vectorProduct -n "fit_toe_x_vec";
	rename -uid "779D99A5-4C14-17F6-5872-8A9B7135480C";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_toe2tiptoe_vec_rvsMULT";
	rename -uid "7D772F03-461D-ADC6-1CAB-C78E7049BF00";
createNode plusMinusAverage -n "fit_toe2tiptoe_vec";
	rename -uid "3DA99DDA-45EE-F52B-F8BE-039731C11BDB";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_tiptoe_DCMX";
	rename -uid "C39B9E1D-454D-B6A3-4D11-6D97A83F805E";
createNode vectorProduct -n "fit_toe_y_vec";
	rename -uid "9BB0CA9C-474A-F47E-200E-668C2454229B";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fir_toe2wrist_vec_rvsMULT";
	rename -uid "74C331F0-4A0B-7F39-5E31-5BB2403DDA8D";
createNode plusMinusAverage -n "fir_toe2wrist_vec";
	rename -uid "2F53F42F-48C9-955B-2B91-4EB8D70C1961";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_toe_z_vec";
	rename -uid "223FA8CB-41AB-1E7A-D607-CDB12C53889C";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_tiptoe_local_DCMX";
	rename -uid "9D0051FA-426B-DA5B-E575-308885E03ADA";
createNode multMatrix -n "fit_tiptoe_local_MTMX";
	rename -uid "B0081704-41E9-D8EC-C482-A7B16E55EB76";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_arm_space_local_DCMX";
	rename -uid "34BF8DA2-45C5-2D8D-3EEF-01A682AD55C5";
createNode multMatrix -n "fit_arm_space_local_MTMX";
	rename -uid "23FA486A-4DF8-4E60-5152-1AA71D2B71C2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_shoulder_local_DCMX";
	rename -uid "47131700-4791-9848-8B91-2984EB90168E";
createNode multMatrix -n "init_shoulder_local_MTMX";
	rename -uid "B130EA8C-4E14-5704-9C92-D0925EF29D0E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_B_elbow_local_DCMX";
	rename -uid "C5CF0D51-4B3A-B2B6-FE4B-1A845872B6A6";
createNode multMatrix -n "init_B_elbow_local_MTMX";
	rename -uid "50D3CF93-47D7-328A-AC58-468193D91D35";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_F_elbow_local_DCMX";
	rename -uid "2FC77A72-4394-62B0-C8FD-328FC20F845D";
createNode multMatrix -n "init_F_elbow_local_MTMX";
	rename -uid "34A040B1-45B3-1C4A-C167-F59D3FA04F9A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_wrist_local_DCMX";
	rename -uid "D42DC19C-4726-EF92-FB2C-32B0CAFB022E";
createNode multMatrix -n "init_wrist_local_MTMX";
	rename -uid "2E56E815-45F3-D9FE-BE8C-709AFB5AE187";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_toe_local_DCMX";
	rename -uid "56BA4535-4ECB-586C-2405-8FA0B703C577";
createNode multMatrix -n "init_toe_local_MTMX";
	rename -uid "1CFB4316-4723-2B6C-3F39-719CA133D69C";
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
connectAttr "fit_Qscapula.fitControl" "fit_Qarm.fitControls" -na;
connectAttr "fit_Qshoulder.fitControl" "fit_Qarm.fitControls" -na;
connectAttr "fit_QB_elbow.fitControl" "fit_Qarm.fitControls" -na;
connectAttr "fit_QF_elbow.fitControl" "fit_Qarm.fitControls" -na;
connectAttr "fit_Qwrist.fitControl" "fit_Qarm.fitControls" -na;
connectAttr "fit_Qtoe.fitControl" "fit_Qarm.fitControls" -na;
connectAttr "fit_Qtiptoe.fitControl" "fit_Qarm.fitControls" -na;
connectAttr "init_Qscapula.init" "fit_Qarm.init" -na;
connectAttr "init_Qshoulder.init" "fit_Qarm.init" -na;
connectAttr "init_QB_elbow.init" "fit_Qarm.init" -na;
connectAttr "init_QF_elbow.init" "fit_Qarm.init" -na;
connectAttr "init_Qwrist.init" "fit_Qarm.init" -na;
connectAttr "init_Qtoe.init" "fit_Qarm.init" -na;
connectAttr "init_Qtiptoe.init" "fit_Qarm.init" -na;
connectAttr "temp_Qscapula.tempJoint" "fit_Qarm.tempJoints" -na;
connectAttr "temp_Qshoulder.tempJoint" "fit_Qarm.tempJoints" -na;
connectAttr "temp_QB_elbow.tempJoint" "fit_Qarm.tempJoints" -na;
connectAttr "temp_QF_elbow.tempJoint" "fit_Qarm.tempJoints" -na;
connectAttr "temp_Qwrist.tempJoints" "fit_Qarm.tempJoints" -na;
connectAttr "temp_Qtoe.tempJoints" "fit_Qarm.tempJoints" -na;
connectAttr "temp_Qtiptoe.tempJoints" "fit_Qarm.tempJoints" -na;
connectAttr "arm_mirror_COND.ocr" "fit_Qarm_GRP.sx";
connectAttr "fit_Qscapula.t" "fit_Qarm_space.t";
connectAttr "fit_Qscapula.r" "fit_Qarm_space.r";
connectAttr "fit_Qscapula.s" "fit_Qarm_space.s";
connectAttr "fit_arm_local_DCMX.ot" "init_Qscapula.t";
connectAttr "fit_arm_local_DCMX.or" "init_Qscapula.r";
connectAttr "fit_Qarm_space.s" "init_Qscapula.s";
connectAttr "fit_shoulder_aligned_DCMX.ot" "init_Qshoulder.t";
connectAttr "fit_shoulder_aligned_DCMX.or" "init_Qshoulder.r";
connectAttr "fit_shoulder_aligned_DCMX.os" "init_Qshoulder.s";
connectAttr "fit_shoulder_aligned_DCMX.osh" "init_Qshoulder.sh";
connectAttr "fit_B_elbow_aligned_DCMX.ot" "init_QB_elbow.t";
connectAttr "fit_B_elbow_aligned_DCMX.or" "init_QB_elbow.r";
connectAttr "fit_B_elbow_aligned_DCMX.os" "init_QB_elbow.s";
connectAttr "fit_B_elbow_aligned_DCMX.osh" "init_QB_elbow.sh";
connectAttr "fit_F_elbow_aligned_DCMX.ot" "init_QF_elbow.t";
connectAttr "fit_F_elbow_aligned_DCMX.os" "init_QF_elbow.s";
connectAttr "fit_F_elbow_aligned_DCMX.or" "init_QF_elbow.r";
connectAttr "fit_F_elbow_aligned_DCMX.osh" "init_QF_elbow.sh";
connectAttr "fit_wrist_aligned_DCMX.ot" "init_Qwrist.t";
connectAttr "fit_wrist_aligned_DCMX.os" "init_Qwrist.s";
connectAttr "fit_wrist_aligned_DCMX.or" "init_Qwrist.r";
connectAttr "fit_toe_aligned_DCMX.ot" "init_Qtoe.t";
connectAttr "fit_toe_aligned_DCMX.os" "init_Qtoe.s";
connectAttr "fit_toe_aligned_DCMX.or" "init_Qtoe.r";
connectAttr "fit_tiptoe_local_DCMX.ot" "init_Qtiptoe.t";
connectAttr "fit_tiptoe_local_DCMX.os" "init_Qtiptoe.s";
connectAttr "fit_tiptoe_local_DCMX.or" "init_Qtiptoe.r";
connectAttr "arm_mirror_COND.ocb" "temp_Qarm_GRP.sz";
connectAttr "fit_arm_space_local_DCMX.ot" "temp_Qscapula.t";
connectAttr "fit_arm_space_local_DCMX.or" "temp_Qscapula.jo";
connectAttr "init_shoulder_local_DCMX.ot" "temp_Qshoulder.t";
connectAttr "init_shoulder_local_DCMX.or" "temp_Qshoulder.jo";
connectAttr "temp_Qscapula.s" "temp_Qshoulder.is";
connectAttr "init_Qshoulder.s" "temp_Qshoulder.s";
connectAttr "init_B_elbow_local_DCMX.ot" "temp_QB_elbow.t";
connectAttr "init_B_elbow_local_DCMX.or" "temp_QB_elbow.jo";
connectAttr "init_QB_elbow.s" "temp_QB_elbow.s";
connectAttr "init_F_elbow_local_DCMX.ot" "temp_QF_elbow.t";
connectAttr "init_F_elbow_local_DCMX.or" "temp_QF_elbow.jo";
connectAttr "temp_QB_elbow.s" "temp_QF_elbow.is";
connectAttr "init_QF_elbow.s" "temp_QF_elbow.s";
connectAttr "temp_QF_elbow.s" "temp_Qwrist.is";
connectAttr "init_wrist_local_DCMX.ot" "temp_Qwrist.t";
connectAttr "init_wrist_local_DCMX.or" "temp_Qwrist.jo";
connectAttr "init_Qwrist.s" "temp_Qwrist.s";
connectAttr "temp_Qwrist.s" "temp_Qtoe.is";
connectAttr "init_toe_local_DCMX.ot" "temp_Qtoe.t";
connectAttr "init_toe_local_DCMX.or" "temp_Qtoe.jo";
connectAttr "init_Qtoe.s" "temp_Qtoe.s";
connectAttr "temp_Qtoe.s" "temp_Qtiptoe.is";
connectAttr "init_Qtiptoe.t" "temp_Qtiptoe.t";
connectAttr "init_Qtiptoe.r" "temp_Qtiptoe.jo";
connectAttr "init_Qtiptoe.s" "temp_Qtiptoe.s";
connectAttr "fit_Qarm.mirror" "arm_mirror_COND.ft";
connectAttr "fit_Qarm.rightDirect" "arm_mirror_COND.ct";
connectAttr "fit_Qarm.leftDirect" "arm_mirror_COND.cf";
connectAttr "fit_arm_local_MTMX.o" "fit_arm_local_DCMX.imat";
connectAttr "fit_Qarm_space.wm" "fit_arm_local_MTMX.i[0]";
connectAttr "fit_Qarm.wim" "fit_arm_local_MTMX.i[1]";
connectAttr "fit_shoulder_aligned_MTMX.o" "fit_shoulder_aligned_DCMX.imat";
connectAttr "fit_shoulder_aligned_FBFM.o" "fit_shoulder_aligned_MTMX.i[0]";
connectAttr "init_Qscapula.wim" "fit_shoulder_aligned_MTMX.i[1]";
connectAttr "fit_shoulder_x_vec.ox" "fit_shoulder_aligned_FBFM.i00";
connectAttr "fit_shoulder_x_vec.oy" "fit_shoulder_aligned_FBFM.i01";
connectAttr "fit_shoulder_x_vec.oz" "fit_shoulder_aligned_FBFM.i02";
connectAttr "fit_shoulder_y_vec.ox" "fit_shoulder_aligned_FBFM.i10";
connectAttr "fit_shoulder_y_vec.oy" "fit_shoulder_aligned_FBFM.i11";
connectAttr "fit_shoulder_y_vec.oz" "fit_shoulder_aligned_FBFM.i12";
connectAttr "fit_shoulder_z_vec.oy" "fit_shoulder_aligned_FBFM.i21";
connectAttr "fit_shoulder_z_vec.ox" "fit_shoulder_aligned_FBFM.i20";
connectAttr "fit_shoulder_z_vec.oz" "fit_shoulder_aligned_FBFM.i22";
connectAttr "fit_shoulder_DCMX.otx" "fit_shoulder_aligned_FBFM.i30";
connectAttr "fit_shoulder_DCMX.oty" "fit_shoulder_aligned_FBFM.i31";
connectAttr "fit_shoulder_DCMX.otz" "fit_shoulder_aligned_FBFM.i32";
connectAttr "fit_shoulder2elbow_vec_rvsMULT.o" "fit_shoulder_x_vec.i1";
connectAttr "fit_shoulder2elbow_vec.o3" "fit_shoulder2elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_shoulder2elbow_vec_rvsMULT.i2";
connectAttr "fit_B_elbow_DCMX.ot" "fit_shoulder2elbow_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "fit_shoulder2elbow_vec.i3[1]";
connectAttr "fit_QB_elbow.wm" "fit_B_elbow_DCMX.imat";
connectAttr "fit_Qshoulder.wm" "fit_shoulder_DCMX.imat";
connectAttr "fit_shoulder2wrist_vec_rvsMULT.o" "fit_shoulder_y_vec.i1";
connectAttr "fit_shoulder2elbow_vec_rvsMULT.o" "fit_shoulder_y_vec.i2";
connectAttr "fit_shoulder2wrist_vec.o3" "fit_shoulder2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_shoulder2wrist_vec_rvsMULT.i2";
connectAttr "fit_F_elbow_DCMX.ot" "fit_shoulder2wrist_vec.i3[0]";
connectAttr "fit_shoulder_DCMX.ot" "fit_shoulder2wrist_vec.i3[1]";
connectAttr "fit_QF_elbow.wm" "fit_F_elbow_DCMX.imat";
connectAttr "fit_shoulder2elbow_vec_rvsMULT.o" "fit_shoulder_z_vec.i1";
connectAttr "fit_shoulder_y_vec.o" "fit_shoulder_z_vec.i2";
connectAttr "fit_B_elbow_aligned_MTMX.o" "fit_B_elbow_aligned_DCMX.imat";
connectAttr "fit_B_elbow_aligned_FBFM.o" "fit_B_elbow_aligned_MTMX.i[0]";
connectAttr "init_Qshoulder.wim" "fit_B_elbow_aligned_MTMX.i[1]";
connectAttr "fit_B_elbow_x_vec.ox" "fit_B_elbow_aligned_FBFM.i00";
connectAttr "fit_B_elbow_x_vec.oy" "fit_B_elbow_aligned_FBFM.i01";
connectAttr "fit_B_elbow_x_vec.oz" "fit_B_elbow_aligned_FBFM.i02";
connectAttr "fit_B_elbow_y_vec.ox" "fit_B_elbow_aligned_FBFM.i10";
connectAttr "fit_B_elbow_y_vec.oy" "fit_B_elbow_aligned_FBFM.i11";
connectAttr "fit_B_elbow_y_vec.oz" "fit_B_elbow_aligned_FBFM.i12";
connectAttr "fit_B_elbow_z_vec.ox" "fit_B_elbow_aligned_FBFM.i20";
connectAttr "fit_B_elbow_z_vec.oy" "fit_B_elbow_aligned_FBFM.i21";
connectAttr "fit_B_elbow_z_vec.oz" "fit_B_elbow_aligned_FBFM.i22";
connectAttr "fit_B_elbow_DCMX.otx" "fit_B_elbow_aligned_FBFM.i30";
connectAttr "fit_B_elbow_DCMX.oty" "fit_B_elbow_aligned_FBFM.i31";
connectAttr "fit_B_elbow_DCMX.otz" "fit_B_elbow_aligned_FBFM.i32";
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.o" "fit_B_elbow_x_vec.i1";
connectAttr "fit_B_elbow2F_elbow_vec.o3" "fit_B_elbow2F_elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_B_elbow2F_elbow_vec_rvsMULT.i2";
connectAttr "fit_F_elbow_DCMX.ot" "fit_B_elbow2F_elbow_vec.i3[0]";
connectAttr "fit_B_elbow_DCMX.ot" "fit_B_elbow2F_elbow_vec.i3[1]";
connectAttr "fit_B_elbow2shoulder_vec_rvsMULT.o" "fit_B_elbow_y_vec.i1";
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.o" "fit_B_elbow_y_vec.i2";
connectAttr "fit_B_elbow2shoulder_vec.o3" "fit_B_elbow2shoulder_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_B_elbow2shoulder_vec_rvsMULT.i2";
connectAttr "fit_shoulder_DCMX.ot" "fit_B_elbow2shoulder_vec.i3[0]";
connectAttr "fit_B_elbow_DCMX.ot" "fit_B_elbow2shoulder_vec.i3[1]";
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.o" "fit_B_elbow_z_vec.i1";
connectAttr "fit_B_elbow_y_vec.o" "fit_B_elbow_z_vec.i2";
connectAttr "fit_F_elbow_aligned_MTMX.o" "fit_F_elbow_aligned_DCMX.imat";
connectAttr "fit_F_elbow_aligned_FBFM.o" "fit_F_elbow_aligned_MTMX.i[0]";
connectAttr "init_QB_elbow.wim" "fit_F_elbow_aligned_MTMX.i[1]";
connectAttr "fit_F_elbow_x_vec.ox" "fit_F_elbow_aligned_FBFM.i00";
connectAttr "fit_F_elbow_x_vec.oy" "fit_F_elbow_aligned_FBFM.i01";
connectAttr "fit_F_elbow_x_vec.oz" "fit_F_elbow_aligned_FBFM.i02";
connectAttr "fit_F_elbow_y_vec.ox" "fit_F_elbow_aligned_FBFM.i10";
connectAttr "fit_F_elbow_y_vec.oy" "fit_F_elbow_aligned_FBFM.i11";
connectAttr "fit_F_elbow_y_vec.oz" "fit_F_elbow_aligned_FBFM.i12";
connectAttr "fit_F_elbow_z_vec.ox" "fit_F_elbow_aligned_FBFM.i20";
connectAttr "fit_F_elbow_z_vec.oy" "fit_F_elbow_aligned_FBFM.i21";
connectAttr "fit_F_elbow_z_vec.oz" "fit_F_elbow_aligned_FBFM.i22";
connectAttr "fit_F_elbow_DCMX.otx" "fit_F_elbow_aligned_FBFM.i30";
connectAttr "fit_F_elbow_DCMX.oty" "fit_F_elbow_aligned_FBFM.i31";
connectAttr "fit_F_elbow_DCMX.otz" "fit_F_elbow_aligned_FBFM.i32";
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.o" "fit_F_elbow_x_vec.i1";
connectAttr "fit_F_elbow2wrist_vec.o3" "fit_F_elbow2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_F_elbow2wrist_vec_rvsMULT.i2";
connectAttr "fit_wrist_DCMX.ot" "fit_F_elbow2wrist_vec.i3[0]";
connectAttr "fit_F_elbow_DCMX.ot" "fit_F_elbow2wrist_vec.i3[1]";
connectAttr "fit_Qwrist.wm" "fit_wrist_DCMX.imat";
connectAttr "fit_F_elbow2B_elbow_vec_rvsMULT.o" "fit_F_elbow_y_vec.i1";
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.o" "fit_F_elbow_y_vec.i2";
connectAttr "fit_F_elbow2B_elbow_vec.o3" "fit_F_elbow2B_elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_F_elbow2B_elbow_vec_rvsMULT.i2";
connectAttr "fit_F_elbow_DCMX.ot" "fit_F_elbow2B_elbow_vec.i3[0]";
connectAttr "fit_B_elbow_DCMX.ot" "fit_F_elbow2B_elbow_vec.i3[1]";
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.o" "fit_F_elbow_z_vec.i1";
connectAttr "fit_F_elbow_y_vec.o" "fit_F_elbow_z_vec.i2";
connectAttr "fit_wrist_aligned_MTMX.o" "fit_wrist_aligned_DCMX.imat";
connectAttr "fit_wrist_aligned_FBFM.o" "fit_wrist_aligned_MTMX.i[0]";
connectAttr "init_QF_elbow.wim" "fit_wrist_aligned_MTMX.i[1]";
connectAttr "fit_wrist_x_vec.ox" "fit_wrist_aligned_FBFM.i00";
connectAttr "fit_wrist_x_vec.oy" "fit_wrist_aligned_FBFM.i01";
connectAttr "fit_wrist_x_vec.oz" "fit_wrist_aligned_FBFM.i02";
connectAttr "fit_wrist_y_vec.ox" "fit_wrist_aligned_FBFM.i10";
connectAttr "fit_wrist_y_vec.oy" "fit_wrist_aligned_FBFM.i11";
connectAttr "fit_wrist_y_vec.oz" "fit_wrist_aligned_FBFM.i12";
connectAttr "fit_wrist_z_vec.ox" "fit_wrist_aligned_FBFM.i20";
connectAttr "fit_wrist_z_vec.oy" "fit_wrist_aligned_FBFM.i21";
connectAttr "fit_wrist_z_vec.oz" "fit_wrist_aligned_FBFM.i22";
connectAttr "fit_wrist_DCMX.otx" "fit_wrist_aligned_FBFM.i30";
connectAttr "fit_wrist_DCMX.oty" "fit_wrist_aligned_FBFM.i31";
connectAttr "fit_wrist_DCMX.otz" "fit_wrist_aligned_FBFM.i32";
connectAttr "fit_wrist2F_toe_vec_rvsMULT.o" "fit_wrist_x_vec.i1";
connectAttr "fit_wrist2F_toe_vec.o3" "fit_wrist2F_toe_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_wrist2F_toe_vec_rvsMULT.i2";
connectAttr "fit_toe_DCMX.ot" "fit_wrist2F_toe_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "fit_wrist2F_toe_vec.i3[1]";
connectAttr "fit_Qtoe.wm" "fit_toe_DCMX.imat";
connectAttr "fit_wrist2F_elbow_vec_rvsMULT.o" "fit_wrist_y_vec.i1";
connectAttr "fit_wrist2F_toe_vec_rvsMULT.o" "fit_wrist_y_vec.i2";
connectAttr "fit_wrist2F_elbow_vec.o3" "fit_wrist2F_elbow_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_wrist2F_elbow_vec_rvsMULT.i2";
connectAttr "fit_F_elbow_DCMX.ot" "fit_wrist2F_elbow_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "fit_wrist2F_elbow_vec.i3[1]";
connectAttr "fit_wrist2F_toe_vec_rvsMULT.o" "fit_wrist_z_vec.i1";
connectAttr "fit_wrist_y_vec.o" "fit_wrist_z_vec.i2";
connectAttr "fit_toe_aligned_MTMX.o" "fit_toe_aligned_DCMX.imat";
connectAttr "fit_toe_aligned_FBFM.o" "fit_toe_aligned_MTMX.i[0]";
connectAttr "init_Qwrist.wim" "fit_toe_aligned_MTMX.i[1]";
connectAttr "fit_toe_x_vec.ox" "fit_toe_aligned_FBFM.i00";
connectAttr "fit_toe_x_vec.oy" "fit_toe_aligned_FBFM.i01";
connectAttr "fit_toe_x_vec.oz" "fit_toe_aligned_FBFM.i02";
connectAttr "fit_toe_y_vec.ox" "fit_toe_aligned_FBFM.i10";
connectAttr "fit_toe_y_vec.oy" "fit_toe_aligned_FBFM.i11";
connectAttr "fit_toe_y_vec.oz" "fit_toe_aligned_FBFM.i12";
connectAttr "fit_toe_z_vec.ox" "fit_toe_aligned_FBFM.i20";
connectAttr "fit_toe_z_vec.oy" "fit_toe_aligned_FBFM.i21";
connectAttr "fit_toe_z_vec.oz" "fit_toe_aligned_FBFM.i22";
connectAttr "fit_toe_DCMX.otx" "fit_toe_aligned_FBFM.i30";
connectAttr "fit_toe_DCMX.oty" "fit_toe_aligned_FBFM.i31";
connectAttr "fit_toe_DCMX.otz" "fit_toe_aligned_FBFM.i32";
connectAttr "fit_toe2tiptoe_vec_rvsMULT.o" "fit_toe_x_vec.i1";
connectAttr "fit_toe2tiptoe_vec.o3" "fit_toe2tiptoe_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fit_toe2tiptoe_vec_rvsMULT.i2";
connectAttr "fit_tiptoe_DCMX.ot" "fit_toe2tiptoe_vec.i3[0]";
connectAttr "fit_toe_DCMX.ot" "fit_toe2tiptoe_vec.i3[1]";
connectAttr "fit_Qtiptoe.wm" "fit_tiptoe_DCMX.imat";
connectAttr "fit_toe2tiptoe_vec_rvsMULT.o" "fit_toe_y_vec.i1";
connectAttr "fir_toe2wrist_vec_rvsMULT.o" "fit_toe_y_vec.i2";
connectAttr "fir_toe2wrist_vec.o3" "fir_toe2wrist_vec_rvsMULT.i1";
connectAttr "arm_mirror_COND.oc" "fir_toe2wrist_vec_rvsMULT.i2";
connectAttr "fit_toe_DCMX.ot" "fir_toe2wrist_vec.i3[0]";
connectAttr "fit_wrist_DCMX.ot" "fir_toe2wrist_vec.i3[1]";
connectAttr "fit_toe2tiptoe_vec_rvsMULT.o" "fit_toe_z_vec.i1";
connectAttr "fit_toe_y_vec.o" "fit_toe_z_vec.i2";
connectAttr "fit_tiptoe_local_MTMX.o" "fit_tiptoe_local_DCMX.imat";
connectAttr "fit_Qtiptoe.wm" "fit_tiptoe_local_MTMX.i[0]";
connectAttr "temp_Qtoe.wim" "fit_tiptoe_local_MTMX.i[1]";
connectAttr "fit_arm_space_local_MTMX.o" "fit_arm_space_local_DCMX.imat";
connectAttr "fit_Qarm_space.wm" "fit_arm_space_local_MTMX.i[0]";
connectAttr "temp_Qarm_GRP.wim" "fit_arm_space_local_MTMX.i[1]";
connectAttr "init_shoulder_local_MTMX.o" "init_shoulder_local_DCMX.imat";
connectAttr "init_Qshoulder.wm" "init_shoulder_local_MTMX.i[0]";
connectAttr "temp_Qscapula.wim" "init_shoulder_local_MTMX.i[1]";
connectAttr "init_B_elbow_local_MTMX.o" "init_B_elbow_local_DCMX.imat";
connectAttr "init_QB_elbow.wm" "init_B_elbow_local_MTMX.i[0]";
connectAttr "temp_Qshoulder.wim" "init_B_elbow_local_MTMX.i[1]";
connectAttr "init_F_elbow_local_MTMX.o" "init_F_elbow_local_DCMX.imat";
connectAttr "init_QF_elbow.wm" "init_F_elbow_local_MTMX.i[0]";
connectAttr "temp_QB_elbow.wim" "init_F_elbow_local_MTMX.i[1]";
connectAttr "init_wrist_local_MTMX.o" "init_wrist_local_DCMX.imat";
connectAttr "init_Qwrist.wm" "init_wrist_local_MTMX.i[0]";
connectAttr "temp_QF_elbow.wim" "init_wrist_local_MTMX.i[1]";
connectAttr "init_toe_local_MTMX.o" "init_toe_local_DCMX.imat";
connectAttr "init_Qtoe.wm" "init_toe_local_MTMX.i[0]";
connectAttr "temp_Qwrist.wim" "init_toe_local_MTMX.i[1]";
connectAttr "fit_shoulder_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow2F_elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_elbow_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_elbow_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_arm_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_shoulder2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_shoulder2elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "fit_B_elbow2shoulder_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_B_elbow2F_elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_wrist_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow2B_elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow2B_elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_F_elbow2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_F_elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_elbow_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_elbow_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_wrist_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_wrist_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist2F_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist2F_elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist2F_elbow_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_wrist2F_toe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_wrist_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_wrist_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe2tiptoe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe2tiptoe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_toe2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_toe2wrist_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_toe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_toe_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
// End of fit_Qarm.ma
