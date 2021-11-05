//Maya ASCII 2019 scene
//Name: Qarm.ma
//Last modified: Fri, Jul 16, 2021 06:01:40 PM
//Codeset: 949
requires maya "2019";
requires "mtoa" "3.2.2";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "RenderMan_for_Maya" "4.0.3";
requires "redshift4maya" "2.6.31";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -n "Qarm_GRP";
	rename -uid "4EB9E720-4950-6178-CBE1-DEB7E0F27D1C";
createNode transform -n "fit_Qarm" -p "Qarm_GRP";
	rename -uid "161FB201-4AA8-A4EA-DCB7-E5ACBA17A3F6";
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
	rename -uid "CB038E66-4C89-E359-E792-BC98D14351DB";
createNode transform -n "fit_Qscapula" -p "fit_Qarm_GRP";
	rename -uid "32C382D4-431A-DB19-639E-6BB7BB5A9289";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_QscapulaShape" -p "fit_Qscapula";
	rename -uid "CF5875C9-4AF6-EAA2-484E-0FB81C6EA804";
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
	rename -uid "950A1617-48BF-6DE5-46BC-DD9B0CAD12FB";
createNode transform -n "fit_Qshoulder" -p "fit_Qarm_space";
	rename -uid "299BCBBB-43DE-E85F-A6DE-A4BB408E28E9";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
createNode nurbsCurve -n "fit_QshoulderShape" -p "fit_Qshoulder";
	rename -uid "BC3ADB1C-4AFB-F16D-13CF-90B3A1C55D32";
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
	rename -uid "85312952-4E8F-58E2-DBC3-5BAFF0E56F92";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -0.0094790458679199219 -10.547380447387695 -3.6242141723632813 ;
createNode nurbsCurve -n "fit_QB_elbowShape" -p "fit_QB_elbow";
	rename -uid "B3C085F6-474E-FD61-22AA-0685CA918B03";
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
	rename -uid "90D0D8CB-4748-4AAD-5FFE-CBA342036C23";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.06464385986328125 -15.030144214630127 0.22628974914550781 ;
createNode nurbsCurve -n "fit_QF_elbowShape" -p "fit_QF_elbow";
	rename -uid "A577C698-4E86-EFAF-B800-4B991E675EE8";
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
	rename -uid "08F5C46C-4F8A-D3C3-7B7C-F8BAF21E7206";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0.018614768981933594 -4.5795176029205322 -0.004486083984375 ;
createNode nurbsCurve -n "fit_QwristShape" -p "fit_Qwrist";
	rename -uid "D200804B-45B1-D96D-8499-5C8981535CFF";
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
	rename -uid "E276B1A4-4ADB-338B-4BDA-21AC0C18754D";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 9.5367431640625e-07 -1.4941015243530273 1.2321205139160156 ;
createNode nurbsCurve -n "fit_QtoeShape" -p "fit_Qtoe";
	rename -uid "5104FF9C-4016-130E-5BE2-249B1567BB7B";
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
	rename -uid "0597AA58-4187-2E0D-D326-C7943E39C741";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -1.1763595171178167 3.4173812866210938 ;
createNode nurbsCurve -n "fit_QtiptoeShape" -p "fit_Qtiptoe";
	rename -uid "F35B45FA-4573-6C4B-D993-06AE82805AF2";
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
	rename -uid "FFFBF27D-45B9-EB02-B196-E2ABE7BD2EA1";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_Qshoulder" -p "init_Qscapula";
	rename -uid "955C494E-4DF7-2A3F-DD7B-97B011AB3AFF";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_QB_elbow" -p "init_Qshoulder";
	rename -uid "66D6A97E-471E-6C82-F162-FBB6C48CC206";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_QF_elbow" -p "init_QB_elbow";
	rename -uid "1933FABE-44BA-CFA8-0572-698BB86894F1";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_Qwrist" -p "init_QF_elbow";
	rename -uid "0F6722F3-4A5D-B609-9168-89B445FE0DA6";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".sh" -type "double3" 4.0300449670852498e-10 0 0 ;
createNode transform -n "init_Qtoe" -p "init_Qwrist";
	rename -uid "B8ECDBFE-436C-D145-A546-6CB7C00D01D3";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_Qtiptoe" -p "init_Qtoe";
	rename -uid "540774BA-4646-BEE2-FC3E-8EB15393A581";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_Qarm_GRP" -p "fit_Qarm";
	rename -uid "5FCD5B1D-49ED-B5F1-EC43-1A80C035013E";
createNode joint -n "temp_Qscapula" -p "temp_Qarm_GRP";
	rename -uid "97EDC26C-42D1-925A-E526-B0A1C34A8991";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_Qshoulder" -p "temp_Qscapula";
	rename -uid "74BEDF6F-468A-8725-1803-2F9E06CAD095";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_QB_elbow" -p "temp_Qshoulder";
	rename -uid "A10A875C-4018-491C-E6EC-2495714DA62A";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "temp_QF_elbow" -p "temp_QB_elbow";
	rename -uid "013FD80F-4B8B-C76F-04F4-D6842BD78E96";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_Qwrist" -p "temp_QF_elbow";
	rename -uid "D56B1302-4805-62E9-CD22-F79EF455E519";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "temp_Qtoe" -p "temp_Qwrist";
	rename -uid "CAE3C81F-4EED-1D68-7890-D99FC044517D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "temp_Qtiptoe" -p "temp_Qtoe";
	rename -uid "24602CE3-4801-8095-817F-AAA56E90E14C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "set_Qarm" -p "Qarm_GRP";
	rename -uid "A670E3E9-456C-1D2C-3E77-F88064D782F5";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "mirror" -ln "mirror" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "type" -ln "type" -dt "string";
	setAttr -s 6 ".reBuildMode";
	setAttr -s 7 ".input";
	setAttr -s 2 ".reBuildAttr";
	setAttr -l on -k on ".type" -type "string" "Qarm";
createNode transform -n "Qarm_motion_GRP" -p "set_Qarm";
	rename -uid "0864A011-404D-31DC-33D2-8A9FC31A808A";
createNode transform -n "input_scapula" -p "Qarm_motion_GRP";
	rename -uid "CD2C8138-4A50-C738-DC06-D8B665E2D550";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.2393512725830078 40.812831878662109 14.152165412902832 ;
createNode transform -n "input_shoulder" -p "input_scapula";
	rename -uid "114EA23B-4242-014A-F0EE-CE909821DFA5";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.8925676345825195 -7.9852981567382813 5.4333486557006836 ;
	setAttr ".r" -type "double3" -0.87822632282824908 18.963366707434972 -90.051492328366749 ;
	setAttr ".s" -type "double3" 1.0000000596541891 0.99999997041493938 1.000000020322811 ;
	setAttr ".sh" -type "double3" -2.8036088078368331e-10 3.3719246004932747e-08 1.0572035607859451e-10 ;
createNode transform -n "input_B_elbow" -p "input_shoulder";
	rename -uid "B8796646-4E35-4754-EF93-AD9A0F2936A6";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 11.152678498081166 -6.7629546407488306e-10 4.5920422131473515e-08 ;
	setAttr ".r" -type "double3" 6.8566897946502188e-08 -19.828083153045551 -4.6052495049693163e-08 ;
	setAttr ".s" -type "double3" 0.99999996654560874 0.99999999998459921 0.99999997179149047 ;
	setAttr ".sh" -type "double3" 2.1171626372433398e-10 3.3135056597680606e-08 -1.6550101075195091e-10 ;
createNode transform -n "input_F_elbow" -p "input_B_elbow";
	rename -uid "4DDAF1B6-4C5B-281B-2B18-BE82C6BEE8D2";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 15.031986341669402 -8.7500264811524175e-09 -3.3928628795365512e-09 ;
	setAttr ".r" -type "double3" -0.013196246886768993 0.91878242726947013 -0.00021163387107903499 ;
	setAttr ".s" -type "double3" 0.99999996221579857 1.0000000122470938 1.0000000098297848 ;
	setAttr ".sh" -type "double3" -2.0933663518072943e-10 1.2459050320449457e-08 8.5800833911861524e-10 ;
createNode transform -n "input_wrist" -p "input_F_elbow";
	rename -uid "86B3C6E9-4514-ECC3-DCFD-55A3C8A52D6E";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 4.5795577284653248 -7.5485750983261823e-10 1.4719248042638355e-10 ;
	setAttr ".r" -type "double3" 1.4602709320101939 -39.558478476165973 -0.93011580036176145 ;
	setAttr ".s" -type "double3" 1.0000000812322047 1.0000000209404025 0.99999999615625523 ;
	setAttr ".sh" -type "double3" -7.2802977959889585e-10 -9.3988372119328675e-09 -1.5300182268104505e-09 ;
createNode transform -n "input_toe" -p "input_wrist";
	rename -uid "EE6F37A5-4CFD-F9EB-0473-D0819C9AAE7B";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 1.9366106004663823 1.4245493673570309e-11 2.2318538128729415e-09 ;
	setAttr ".r" -type "double3" -0.42868454630810876 -31.493451577779997 0.22394830479530262 ;
	setAttr ".s" -type "double3" 1.0000000602801609 0.99999997178359012 0.99999996793625223 ;
	setAttr ".sh" -type "double3" 5.6084428528852418e-10 6.7709557581405657e-10 7.0979026434055606e-08 ;
createNode transform -n "input_tiptoe" -p "input_toe";
	rename -uid "1C7420AD-45DC-8C68-D19C-9AB8722F7630";
	addAttr -r false -s false -ci true -m -im false -sn "input" -ln "input" -at "message";
	setAttr ".t" -type "double3" 3.6141825737368265 6.3248428716633498e-10 5.9709609701030786e-08 ;
	setAttr ".r" -type "double3" 71.005082889498738 5.3992794259425524e-05 90.000000095998658 ;
createNode transform -n "motion_IK_Qarm_GRP" -p "Qarm_motion_GRP";
	rename -uid "3E71C0E8-43D3-26FE-B319-15AF2C557958";
createNode transform -n "IK_shoulder_space" -p "motion_IK_Qarm_GRP";
	rename -uid "8BED465D-43DA-2BCB-A003-F9BFE0A89410";
	setAttr ".v" no;
createNode locator -n "IK_shoulder_spaceShape" -p "IK_shoulder_space";
	rename -uid "0668D512-4F31-870E-3317-2FA2AE9C5396";
	setAttr -k off ".v";
createNode transform -n "IK_upper_CTLaim" -p "IK_shoulder_space";
	rename -uid "75D9A7BB-4C7B-F825-0B96-59A98A447737";
createNode locator -n "IK_upper_CTLaimShape" -p "IK_upper_CTLaim";
	rename -uid "154829A5-4005-AA86-E83F-F29A317E6C72";
	setAttr -k off ".v";
createNode transform -n "upper_softIK_output_LOC" -p "IK_upper_CTLaim";
	rename -uid "565F5C9C-4319-2920-592E-BC995015D442";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "upper_softIK_output_LOCShape" -p "upper_softIK_output_LOC";
	rename -uid "CBD6072E-45FA-BAFF-0C08-BEB8631E7637";
	setAttr -k off ".v";
createNode transform -n "upper_stretch_output_LOC" -p "upper_softIK_output_LOC";
	rename -uid "D9A36A02-4829-E55B-DCB6-79BCE080F9E7";
createNode locator -n "upper_stretch_output_LOCShape" -p "upper_stretch_output_LOC";
	rename -uid "7D88FBC2-472A-564F-D822-D9AEF36C8AB6";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_space" -p "upper_stretch_output_LOC";
	rename -uid "DC921A7A-4E10-5702-08B1-BE8B16E244ED";
	setAttr ".t" -type "double3" -1.2104802600276798e-06 -7.5694375212265186e-09 -5.121141590791467e-07 ;
	setAttr ".r" -type "double3" 0.27951954931234579 -10.154874231528666 0.034455854939076137 ;
	setAttr ".s" -type "double3" 0.99999994847993323 0.99999985072719677 0.99999999966060982 ;
	setAttr ".sh" -type "double3" 1.8379381589221255e-10 4.6339146896518719e-08 5.8535092764981833e-10 ;
createNode locator -n "IK_wrist_spaceShape" -p "IK_wrist_space";
	rename -uid "6455AEF7-49E7-CB01-C3C1-E38BC420BFD2";
	setAttr -k off ".v";
createNode transform -n "IK_lower_CTLaim" -p "IK_wrist_space";
	rename -uid "4BD74B78-463B-34A1-AC19-56A9487173A3";
createNode locator -n "IK_lower_CTLaimShape" -p "IK_lower_CTLaim";
	rename -uid "ADC5138D-470F-533A-3591-868C2B2F2FE2";
	setAttr -k off ".v";
createNode transform -n "lower_softIK_output_LOC" -p "IK_lower_CTLaim";
	rename -uid "DD0966E3-469D-AC51-6798-15969507B8F4";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "lower_softIK_output_LOCShape" -p "lower_softIK_output_LOC";
	rename -uid "E23E766F-4520-FAFF-EDA6-209EF4521E9B";
	setAttr -k off ".v";
createNode transform -n "lower_stretch_output_LOC" -p "lower_softIK_output_LOC";
	rename -uid "0A76377E-4AF0-2539-DC2C-F6AD46394B04";
createNode locator -n "lower_stretch_output_LOCShape" -p "lower_stretch_output_LOC";
	rename -uid "15A62551-47FB-67CC-51ED-D384DEA70EDB";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_lower_CTLaim_aimConstraint1" -p "IK_lower_CTLaim";
	rename -uid "4D629119-4CFD-EBF4-748A-CCB6DC438087";
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
	rename -uid "597E5C75-4EE0-90A7-341D-2E9AF9A07995";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "IK_wrist_space_upVecShape" -p "IK_wrist_space_upVec";
	rename -uid "263CA8AD-4403-9C3D-BA8B-FCA866073473";
	setAttr -k off ".v";
createNode aimConstraint -n "IK_upper_CTLaim_aimConstraint1" -p "IK_upper_CTLaim";
	rename -uid "E973D76D-43BB-1821-557E-EBBF1342F65F";
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
	rename -uid "7B792423-462B-B34B-74F8-F891FC9F66DE";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0.99999999999999645 -1.4488410471358293e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "IK_shoulder_space_upVecShape" -p "IK_shoulder_space_upVec";
	rename -uid "81447D44-4532-09F1-D316-BA875A3E9D2C";
	setAttr -k off ".v";
createNode transform -n "F_softIK_input" -p "motion_IK_Qarm_GRP";
	rename -uid "78FE33D3-41D8-A6ED-0AC1-009A973015DB";
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
createNode transform -n "F_softIK_output" -p "motion_IK_Qarm_GRP";
	rename -uid "60806EEB-4CC8-C37E-1D62-1DB42A8FB410";
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
createNode transform -n "F_stretchIK_input" -p "motion_IK_Qarm_GRP";
	rename -uid "1F9F9FC4-400B-81C4-A598-CBA4E276E6D3";
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
createNode transform -n "F_stretchIK_output" -p "motion_IK_Qarm_GRP";
	rename -uid "E49F0661-42E5-9E06-A84D-64BF879AA758";
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
createNode joint -n "IK_scapula" -p "motion_IK_Qarm_GRP";
	rename -uid "595390C4-45BE-7C4F-DA32-879202EEE3DF";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "IK_shoulder" -p "IK_scapula";
	rename -uid "D8FF0622-437A-F3AE-2072-53A0C6550AFA";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".r" -type "double3" 0.39145884555770921 0.0023851287106923494 0.078994649373434894 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_B_elbow" -p "IK_shoulder";
	rename -uid "F1B48135-46C2-FC4A-772F-BC8524E804ED";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendy_Num" -ln "bendy_Num" -dv 2 -min 1 -at "long";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 11.152679443359375 -8.9742142606041853e-09 1.1936795782929721e-06 ;
	setAttr ".r" -type "double3" -1.6757501491425648e-12 0.0099400686093455131 -2.9413126512262471e-11 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
	setAttr -cb on ".bendy";
	setAttr -cb on ".bendy_Num";
createNode joint -n "IK_F_elbow" -p "IK_B_elbow";
	rename -uid "9267876B-49BB-0958-383B-8E872814BB30";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".t" -type "double3" 15.031987190246582 2.5341719833704701e-09 -3.8560166970569298e-07 ;
	setAttr ".r" -type "double3" -0.097682455882472069 -0.059878685170531354 0.05177580548244172 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "IK_wrist" -p "IK_F_elbow";
	rename -uid "734A78FD-4671-F27C-3400-928A7A9FCF73";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".t" -type "double3" 4.5795578956604004 -1.6911325673163446e-09 -5.4022294193600828e-08 ;
	setAttr ".r" -type "double3" -0.22881291923469368 0.050011528638475938 0.1896022336440242 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_toe" -p "IK_wrist";
	rename -uid "3F64A996-49A6-6979-B6BB-00AEE4108A58";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".r" -type "double3" -0.0011320641418268735 -0.0014436551477971142 0.00064441269480072165 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "IK_tiptoe" -p "IK_toe";
	rename -uid "BD596E9D-4D92-3E4F-A31C-D1A7EC86A09D";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "IK_toe";
	rename -uid "1BC60E66-4A12-467F-81CF-FBB283BB1C68";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "IK_wrist";
	rename -uid "58790BE5-4987-F26E-D1C8-9D8AE6957B4E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "IK_F_elbow";
	rename -uid "56CB2C9C-42C0-EB03-8725-E8B7DE32F1F6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "annotation1" -p "IK_B_elbow";
	rename -uid "3DEB2D62-4535-832B-6C8F-138F5426BB93";
	setAttr ".t" -type "double3" -8.9360968357597487e-07 3.4117686415387095e-10 -1.826985396496607e-06 ;
	setAttr ".r" -type "double3" 6.774172046376167 -0.37329499561941193 89.755288451157469 ;
	setAttr ".s" -type "double3" 1.0000000000000557 1.0000000051263818 0.99999999487356228 ;
	setAttr ".sh" -type "double3" -1.0573117945411546e-10 0 -1.0055801201649958e-08 ;
	setAttr ".rp" -type "double3" -5.4793150919311932e-10 2.9532789096813225e-07 6.8498021125974968e-08 ;
	setAttr ".rpt" -type "double3" -2.8464103594697376e-07 -2.9532788907309106e-07 3.4351845923446598e-08 ;
	setAttr ".sp" -type "double3" -5.4793147796772246e-10 2.9532789014297123e-07 6.8498021477125803e-08 ;
	setAttr ".spt" -type "double3" -3.1225396850659118e-17 8.2516102907017073e-16 -3.5115083401814678e-16 ;
createNode annotationShape -n "annotationShape1" -p "annotation1";
	rename -uid "3B3CC1F0-44AB-AB04-8A34-29B5641F0239";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".txt" -type "string" "";
createNode ikEffector -n "effector1" -p "IK_B_elbow";
	rename -uid "6BAAA1A2-4F08-1C01-6A64-6BB96861235F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "F_IK_scapula_aim_space" -p "motion_IK_Qarm_GRP";
	rename -uid "A07F295F-44B0-B82C-0566-969ED2E23DA2";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode parentConstraint -n "F_IK_scapula_aim_space_parentConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "04485B4B-4811-1920-0961-519550FEA89F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_scapulaW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-15 1.438616408222515e-06 
		-7.6612588273405891e-07 ;
	setAttr ".tg[0].tor" -type "double3" 1.9914476863012003 -12.155108259981747 0.79110438969324093 ;
	setAttr ".lr" -type "double3" 1.9914476863012003 -12.15510825998175 0.79110438969324115 ;
	setAttr ".rst" -type "double3" 6.2172489379008766e-15 1.438616408222515e-06 -7.6612588273405891e-07 ;
	setAttr ".rsrr" -type "double3" 1.9914476863012003 -12.15510825998175 0.79110438969324115 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "F_IK_scapula_aim_space_aimConstraint1" -p "F_IK_scapula_aim_space";
	rename -uid "413DE8E0-40A4-3D7B-79C3-7DB72443FA0C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_foot_CTLW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 3.0479106891216277 0 -2.9469819946213933 ;
	setAttr ".rsrr" -type "double3" -5.086530654884583e-17 3.0722192615296335e-09 -1.6358490790857892e-10 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_foot_IKH_offGRP" -p "motion_IK_Qarm_GRP";
	rename -uid "85C7A037-44D3-1B09-683B-91A21B89EF3B";
	setAttr ".v" no;
	setAttr ".sh" -type "double3" -1.3407756635411868e-10 0 -1.1400404598915197e-08 ;
createNode transform -n "F_IK_foot_IKH_spcGRP" -p "F_IK_foot_IKH_offGRP";
	rename -uid "F23C0D7D-4750-2416-6A55-149593655746";
createNode transform -n "F_IK_foot_IKH_stretched_space" -p "F_IK_foot_IKH_spcGRP";
	rename -uid "544E710F-4056-1202-42C5-2AA4F79E8698";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" 0 4.5795574188232422 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode ikHandle -n "ikHandle1" -p "F_IK_foot_IKH_stretched_space";
	rename -uid "455355E0-4531-5FA8-8C0D-33A0A8D8275A";
	setAttr ".t" -type "double3" -0.018615705346738842 7.8927061871958415e-05 2.1234761550914527e-05 ;
	setAttr ".r" -type "double3" 2.5882698378452331 -0.41960739676470571 -0.072194743298763853 ;
	setAttr ".s" -type "double3" 1.0000000000006601 0.99999999268661144 1.0000000073127291 ;
	setAttr ".sh" -type "double3" 2.4484928169353064e-10 1.6005935782546354e-10 1.2770773227402367e-08 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "0E1976B0-4D76-39D3-2315-45A057BE8581";
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
createNode transform -n "F_IK_wrist_IKH_offGRP" -p "motion_IK_Qarm_GRP";
	rename -uid "97989E7A-41B1-CE40-2B78-108B5A12A929";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.0000000000421587 1.0000000049107367 0.99999999504710524 ;
	setAttr ".sh" -type "double3" 2.4192292366149829e-10 2.7025974036510174e-10 -4.9077322426682531e-08 ;
createNode transform -n "F_IK_wrist_IKH_spcGRP" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "07EA413F-4EE4-4385-0A27-F691A94E511B";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode ikHandle -n "ikHandle2" -p "F_IK_wrist_IKH_spcGRP";
	rename -uid "1BBDFD0F-4A13-3D5C-B6C1-F3AD0D0EE5C2";
	setAttr ".t" -type "double3" -4.7843769834798877e-07 0.00011821710214698911 6.4083167217177106e-07 ;
	setAttr ".r" -type "double3" -0.54547297245450888 0.15887274140822377 -89.766315359356682 ;
	setAttr ".s" -type "double3" 0.9999999952166112 0.99999999995787225 1.0000000048255155 ;
	setAttr ".sh" -type "double3" 7.4955236486562746e-10 -4.9127046391158295e-08 -1.6183015439831835e-10 ;
	setAttr ".pv" -type "double3" -1.1761283891172135e-05 -0.0027693946176213921 0.99999616997701735 ;
	setAttr ".roc" yes;
createNode aimConstraint -n "F_IK_wrist_IKH_offGRP_aimConstraint1" -p "F_IK_wrist_IKH_offGRP";
	rename -uid "C7972C0B-4C7D-C606-8D51-BCAC5CF20AF0";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_wrist_spaceW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -0.056123258466719964 -0.00093961681351428209 -0.23289379168730068 ;
	setAttr ".rsrr" -type "double3" 1.2424800027794772e-17 -3.6398559739649008e-19 -2.8436374796600794e-22 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_B_elbow_aim_space" -p "motion_IK_Qarm_GRP";
	rename -uid "901D960B-43E8-E79F-20F3-81A84AB91551";
	setAttr ".sh" -type "double3" 0 5.0848239461121112e-09 0 ;
createNode transform -n "F_IK_B_elbow_upVec" -p "F_IK_B_elbow_aim_space";
	rename -uid "91E8E61E-4A80-52EC-4A92-8A80B3973296";
	setAttr ".t" -type "double3" -1.0310053158435474e-11 5 4.0902489728544822e-11 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "motion_FK_Qarm_GRP" -p "Qarm_motion_GRP";
	rename -uid "E91F6C19-4455-8D8E-D4BA-DA86E1920619";
createNode joint -n "FK_scapula" -p "motion_FK_Qarm_GRP";
	rename -uid "876593A3-4ADD-6D18-E5C7-A3A5FAF78ABF";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "FK_shoulder" -p "FK_scapula";
	rename -uid "71744C72-4247-5D17-08C5-B29D84DCBD5D";
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
	rename -uid "107FE45B-4E5A-7149-B9EA-408236665C36";
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
	rename -uid "DB94988E-47D4-2109-ECD5-B28ADAFBB00F";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "FK_wrist" -p "FK_F_elbow";
	rename -uid "132270DD-417B-51F0-28F9-3DB3BABF712B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_toe" -p "FK_wrist";
	rename -uid "94EEEB9D-41D9-6B9E-2A0F-DA9DE90FB226";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode joint -n "FK_tiptoe" -p "FK_toe";
	rename -uid "4744E561-49D3-2B40-B81B-7490A8C9E9EC";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".s" -type "double3" 0.9999999862354424 0.99999999693967534 0.99999999000123585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "Qarm_CTL_GRP" -p "set_Qarm";
	rename -uid "22FD3E42-4EB8-D3A8-D9A2-66BC60B1D991";
createNode transform -n "scapula_CTL_offGRP" -p "Qarm_CTL_GRP";
	rename -uid "DF5B1D3F-4206-0E5B-8503-9CB5D59AF207";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
createNode transform -n "scapula_CTL_spcGRP" -p "scapula_CTL_offGRP";
	rename -uid "4ACB9CFF-4B8A-58C6-37C1-69A8B21EDFA7";
createNode transform -n "scapula_CTL" -p "scapula_CTL_spcGRP";
	rename -uid "211A7B52-4391-7E13-64C8-97AAC960FEFC";
createNode nurbsCurve -n "scapula_CTLShape" -p "scapula_CTL";
	rename -uid "A1704F0C-4515-5AD0-6748-CC989ED47774";
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
	rename -uid "708DC9D7-446B-E282-D46A-06A071D7A9B3";
createNode transform -n "IK_shoulder_CTL_offGRP" -p "scapula_CTL_ivsScale";
	rename -uid "FC2DF5AD-4B1E-7245-D7C5-99A6DF82B262";
createNode transform -n "IK_shoulder_CTL_spcGRP" -p "IK_shoulder_CTL_offGRP";
	rename -uid "7260F865-4FA5-83B9-18EB-A7B2FAB8C577";
createNode transform -n "IK_shoulder_CTL" -p "IK_shoulder_CTL_spcGRP";
	rename -uid "22E5A717-4418-8475-8255-3184579515A0";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
createNode nurbsCurve -n "IK_shoulder_CTLShape" -p "IK_shoulder_CTL";
	rename -uid "B68028CD-441E-126D-254C-828916537891";
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
createNode transform -n "IK_Qarm_CTL_GRP" -p "Qarm_CTL_GRP";
	rename -uid "EC1B29BB-4A6C-8C1C-CFB8-CEA0CC5FB2F2";
	setAttr ".r" -type "double3" -0.52397543261054391 27.710743702475501 -90.059896176239462 ;
	setAttr ".s" -type "double3" 0.99999997490674386 1.0000000222718179 1.0000000028214373 ;
	setAttr ".sh" -type "double3" -8.0815278926231564e-10 3.4848956455488224e-08 -2.2852080175786929e-08 ;
createNode transform -n "F_input_F_toe_space" -p "IK_Qarm_CTL_GRP";
	rename -uid "2CBDC8C3-46CB-D434-3D76-A69C1FAF8CDC";
	setAttr ".r" -type "double3" 1.6469325546113447 -67.218225318270896 -1.1283633139358367 ;
	setAttr ".sh" -type "double3" 2.1695908780126458e-08 2.1559709725877711e-08 9.187143278952951e-09 ;
createNode transform -n "F_IK_foot_CTL_offGRP" -p "F_input_F_toe_space";
	rename -uid "94CE9D2F-4DB2-99E5-0D54-0689D5B2F0DA";
	setAttr ".r" -type "double3" 39.512126764094496 0.36560916188151232 89.999999992268116 ;
	setAttr ".s" -type "double3" 1.0000000602801611 0.9999999717835899 0.9999999679362519 ;
	setAttr ".sh" -type "double3" 5.6084424885933025e-10 6.7709564693772167e-10 7.0979026878144869e-08 ;
createNode transform -n "F_IK_foot_CTL_spcGRP" -p "F_IK_foot_CTL_offGRP";
	rename -uid "884B4BFA-4111-567D-04C5-8FA5E34A7004";
createNode transform -n "F_IK_foot_CTL" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "3E409FBC-4051-F60E-8EC9-81BADE5C3EFD";
	addAttr -ci true -sn "roll" -ln "roll" -at "double";
	addAttr -ci true -sn "rollStartAngle" -ln "rollStartAngle" -at "double";
	addAttr -ci true -sn "bank" -ln "bank" -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -at "double";
	addAttr -ci true -sn "stretch" -ln "stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "toesAim" -ln "toesAim" -min 0 -max 10 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "resetAttr" -ln "resetAttr" -dt "string";
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
	setAttr -k on ".resetAttr" -type "string" "toesAim";
createNode nurbsCurve -n "F_IK_foot_CTLShape" -p "F_IK_foot_CTL";
	rename -uid "B2831B16-4E6B-A391-34A0-53BFC7865D5A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 -2.6704911268714313 8.4654313432986772
		1.4603183280000001 -2.6704911268714313 8.1749574232986788
		2.6983203120000008 -2.6704911268714313 7.3477516552986781
		3.5255260799999975 -2.6704911268714313 6.1097496712986796
		3.8159999999999981 -2.6704911268714313 4.4638354123544453
		3.5255260799999975 -2.6704911268714313 2.1853674423809348
		2.6983203120000008 -2.6704911268714313 -0.44276769034261215
		1.4603183280000001 -2.6704911268714313 -2.6583587481527102
		0 -2.6704911268714313 -3.5387479512522266
		-1.4603183280000001 -2.6704911268714313 -2.6583587481527102
		-2.6983203120000008 -2.6704911268714313 -0.44276873275138784
		-3.5255260799999975 -2.6704911268714313 2.1853674423809348
		-3.8159999999999981 -2.6704911268714313 4.4638354123544453
		-3.5255260799999975 -2.6704911268714313 6.1097496712986796
		-2.6983203120000008 -2.6704911268714313 7.3477516552986781
		-1.4603183280000001 -2.6704911268714313 8.1749574232986788
		0 -2.6704911268714313 8.4654313432986772
		;
createNode transform -n "F_IK_heel" -p "F_IK_foot_CTL";
	rename -uid "EDD0D4D0-4E9E-2FE8-EACB-21802620ED6B";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.00042915506789320546 -2.6714803804686604 -0.58180752943567171 ;
	setAttr ".s" -type "double3" 1.0000000000000189 1.0000000001270557 0.99999999987292476 ;
createNode locator -n "F_IK_heelShape" -p "F_IK_heel";
	rename -uid "A132BAF8-4C2C-1D93-E1BB-E3AF51569C94";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_CTL" -p "F_IK_heel";
	rename -uid "E04C0D1F-4B80-FB9B-2FB0-F180ABB4D4D3";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_heel_CTLShape" -p "F_IK_heel_CTL";
	rename -uid "09BD53F3-4822-8375-3A8C-2DAA8AC87EDC";
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
createNode transform -n "F_IK_heel_out" -p "F_IK_heel_CTL";
	rename -uid "685B0F3D-43CC-CD9C-2151-F0B55BC9B551";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5734729510428913 -1.1102230246251581e-15 0.0071562015207415897 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_outShape" -p "F_IK_heel_out";
	rename -uid "69A2152E-4AFE-89A6-866A-9090FABE4A68";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_heel_in" -p "F_IK_heel_CTL";
	rename -uid "E7839903-4829-21B6-31FC-BC8773D69299";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0746966742909621 -8.8817841970012523e-16 0.0071562015207362606 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_heel_inShape" -p "F_IK_heel_in";
	rename -uid "3D7A162D-4163-4EFA-D940-C19ACE1C1442";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "F_IK_toe" -p "F_IK_heel_CTL";
	rename -uid "BB7C8246-48C8-49D6-F85F-FAA1004045A9";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.00042819718444597754 0.0010189729279164424 5.2313096535730192 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_toeShape" -p "F_IK_toe";
	rename -uid "B69BEEDC-40F8-E6B5-3D55-D49AD9553A40";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_toe_CTL" -p "F_IK_toe";
	rename -uid "A5DAE4DC-4737-7639-B2F6-0AAD3ED8FD1A";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 4.4373425918681914e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_toe_CTLShape" -p "F_IK_toe_CTL";
	rename -uid "209813F1-46D5-332D-4942-FA958A816D7E";
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
createNode transform -n "F_IK_ball" -p "F_IK_toe_CTL";
	rename -uid "F06D86B8-43D5-5284-51BF-23B865160E34";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.0279733448091974e-09 1.1763597177972938 -3.417381495211341 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_ballShape" -p "F_IK_ball";
	rename -uid "BC04FF34-4908-9AD9-639F-51868F7CEF0F";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_ball_CTL" -p "F_IK_ball";
	rename -uid "B0592D64-4867-8C48-9152-849A51BD0372";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode nurbsCurve -n "F_IK_ball_CTLShape" -p "F_IK_ball_CTL";
	rename -uid "4661A526-42E0-EECF-6E6A-A9943ADF80B3";
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
createNode transform -n "F_IK_wrist" -p "F_IK_ball_CTL";
	rename -uid "43D09B55-4D02-45B5-7D7E-D3A564146961";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -9.5585547388310488e-07 1.494101689404028 -1.2321206288520727 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode locator -n "F_IK_wristShape" -p "F_IK_wrist";
	rename -uid "521353CF-4446-A2D5-CE8C-B8A09E39295E";
	setAttr -k off ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
createNode transform -n "F_IK_wrist_CTL_offGRP" -p "F_IK_wrist";
	rename -uid "B156EAAB-4C33-855F-E9A3-6C8753038A08";
	setAttr ".t" -type "double3" 5.83548853683169e-09 -1.2002814173683873e-06 8.1494937376191956e-07 ;
	setAttr ".r" -type "double3" -2.3854175277042937e-15 1.5530052155583574e-18 -2.4799552035947529e-17 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "F_IK_wrist_CTL_spcGRP" -p "F_IK_wrist_CTL_offGRP";
	rename -uid "7EA1CFFB-4627-34A6-17E4-E0B81E0A95AC";
	setAttr ".r" -type "double3" -2.3854190443109495e-15 3.1060104311167156e-18 -2.4702489209975132e-17 ;
createNode transform -n "F_IK_wrist_CTL" -p "F_IK_wrist_CTL_spcGRP";
	rename -uid "4C360A0D-4A54-5BDE-718C-ECADF9F3CE3F";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode nurbsCurve -n "F_IK_wrist_CTLShape" -p "F_IK_wrist_CTL";
	rename -uid "44907097-4D17-D011-9555-5DA17616FDB1";
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
createNode transform -n "F_IK_wrist_aim_space" -p "F_IK_wrist_CTL";
	rename -uid "26446BF4-4871-F979-961D-B7A8DAD158F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "F_IK_wrist_space_offGRP" -p "F_IK_wrist_aim_space";
	rename -uid "A4E10ABB-4A1B-FDC8-129A-02838F0C6F48";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" -0.018614958138226889 4.5795194356718429 0.0038132333483460457 ;
	setAttr ".r" -type "double3" -2.1699802898036298 0.42445712589591633 0.044864058968832513 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
createNode transform -n "F_IK_wrist_space_spcGRP" -p "F_IK_wrist_space_offGRP";
	rename -uid "4F66A986-40FB-1684-9416-85A8CA9F7BFE";
createNode transform -n "F_IK_wrist_space" -p "F_IK_wrist_space_spcGRP";
	rename -uid "FA94B696-4EEF-A1AD-2282-61B044630F33";
createNode locator -n "F_IK_wrist_spaceShape" -p "F_IK_wrist_space";
	rename -uid "EA095B7C-4556-4727-AF45-B88714DECD40";
	setAttr -k off ".v";
createNode transform -n "F_IK_ball_HIK_offGRP" -p "F_IK_wrist_space";
	rename -uid "6359AC22-4B90-ACB3-E477-13B92BDD25C8";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999989 ;
	setAttr ".offset" -type "matrix" 0.99999999999999978 4.9629248566405559e-18 -1.8965067689023785e-16 0
		 1.4420769014228965e-18 0.99999999999999989 -2.1033522146218786e-17 0 2.215499376838348e-17 1.1058862159352145e-16 0.99999999999999989 0
		 -1.7763568394002505e-15 -1.1102230246251565e-15 0 1;
createNode transform -n "F_IK_ball_HIK_spcGRP" -p "F_IK_ball_HIK_offGRP";
	rename -uid "A9244ABA-4C18-D7FE-C588-FD9B7C91C79A";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode ikHandle -n "ikHandle3" -p "F_IK_ball_HIK_spcGRP";
	rename -uid "A87C9327-447D-A4E6-0099-D18B1FA2FEB4";
	setAttr ".t" -type "double3" -2.7716673400846048e-10 7.13942862720085e-05 -5.8896800879892908e-05 ;
	setAttr ".r" -type "double3" 0.36682853681319 -39.407319203328051 -89.999981552702693 ;
	setAttr ".s" -type "double3" 0.99999997501724491 0.99999999994995847 1.0000000250327983 ;
	setAttr ".pv" -type "double3" -1.6569485866874694e-05 -0.001936703931673155 0.99999812932350263 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_toes_offGRP" -p "F_IK_wrist_space";
	rename -uid "3AC6F676-4AA7-0879-8554-408A3B54C580";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	setAttr ".s" -type "double3" 1.0000001123986972 0.99999991149429801 0.99999997610701563 ;
	setAttr ".offset" -type "matrix" -1.122524116587561e-05 -0.3271762692356654 0.94496344560011036 0
		 0.99999991126344923 1.3640862050561222e-05 1.6601918939111104e-05 0 -1.8321869029597954e-05 0.94496331677768519 0.32717622441561645 0
		 4.0569045308913587e-05 1.1824749912369799 -3.4152706560900619 1;
createNode transform -n "F_IK_toes_spcGRP" -p "F_IK_toes_offGRP";
	rename -uid "031D429A-428A-9DD8-7072-3BA3D22FE8E2";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 0 ;
createNode ikHandle -n "ikHandle4" -p "F_IK_toes_spcGRP";
	rename -uid "27DB661F-4C33-0E0E-67C5-B683598B6F12";
	setAttr ".t" -type "double3" 3.6141828709296568 1.0266445471529551e-09 -1.3036567914070929e-07 ;
	setAttr ".r" -type "double3" -0.0010497036872594225 -0.10178956180527497 0.00064504591715971928 ;
	setAttr ".s" -type "double3" 0.99999987634694898 1.0000000884566962 1.0000000351963667 ;
	setAttr ".sh" -type "double3" -1.6375400185764307e-10 4.5122375985809187e-08 -2.7121353226259421e-10 ;
	setAttr ".pv" -type "double3" 0.94559510906539035 5.3060795854239578e-09 0.32534551405281276 ;
	setAttr ".roc" yes;
createNode transform -n "F_IK_wrist_upVec" -p "F_IK_wrist_space";
	rename -uid "26570EA9-4373-BBCE-F394-339405A76BF6";
	setAttr ".t" -type "double3" 5.0149187335882859 -4.5814882082128987 -0.14031934237416621 ;
	setAttr ".r" -type "double3" 2.0594095074060412 -0.42147551289646024 -0.061649804715152537 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
createNode orientConstraint -n "F_IK_wrist_aim_space_orientConstraint1" -p "F_IK_wrist_aim_space";
	rename -uid "83FB8D16-4568-7B2A-725F-8FA7EB12D73B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_IK_wrist_HIK_aim_space_01W0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "F_IK_wrist_HIK_aim_space_02W1" -dv 
		1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0.0084064051117158818 2.2201112890502894e-05 -1.339025934053613e-06 ;
	setAttr ".rsrr" -type "double3" 0.11096697536063686 -0.00095087604771596033 0.00077931747371000055 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "F_IK_wrist_HIK_aim_space_01" -p "F_IK_wrist_CTL";
	rename -uid "F67250C9-459F-51F2-33C3-2485AD6E491A";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_01_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_01";
	rename -uid "90D85D6C-48C7-7922-274E-39899E5184F8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IK_shoulderW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -6.42865792700022 -2.1738628133563444e-05 -0.13929470681936479 ;
	setAttr ".rsrr" -type "double3" 0.11096697535925171 -0.0009508760477166862 0.0007793174737012119 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_wrist_HIK_aim_space_02" -p "F_IK_wrist_CTL";
	rename -uid "12F1FD8B-43B5-E7C6-A8FA-5C939FF8DB8C";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999922 ;
createNode aimConstraint -n "F_IK_wrist_HIK_aim_space_02_aimConstraint1" -p "F_IK_wrist_HIK_aim_space_02";
	rename -uid "9C3BE4E8-49A5-38E2-A5C2-B983EBFBB67A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "F_IK_shoulder_aimW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" -0.045982967612595613 -0.42450193417577486 -0.23290250936992599 ;
	setAttr ".rsrr" -type "double3" 0.11096697536202153 -0.00095087604771484815 0.0007793174737184865 ;
	setAttr -k on ".w0";
createNode transform -n "F_IK_toes_CTL_offGRP" -p "F_IK_ball";
	rename -uid "8D61B5B0-46D6-80F9-F85C-75AD098E4726";
	setAttr ".t" -type "double3" -2.7219027032288068e-10 3.4425292410489305e-05 -2.8520831147460513e-05 ;
	setAttr ".r" -type "double3" 0.0018582069029984454 -70.902162945575128 -90.001965772588477 ;
	setAttr ".s" -type "double3" 0.99999998872355333 0.99999999995783906 1.0000000113186065 ;
	setAttr ".sh" -type "double3" -1.7648380828941762e-10 4.4669212600603299e-08 -3.1653020613024059e-10 ;
createNode transform -n "F_IK_toes_CTL_spcGRP" -p "F_IK_toes_CTL_offGRP";
	rename -uid "1171C3AE-47D2-510B-37B6-3BBB3F4B91BA";
createNode transform -n "F_IK_toes_CTL" -p "F_IK_toes_CTL_spcGRP";
	rename -uid "F753DC32-4D51-27BB-06DD-B2B9D0D2E32E";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "F_IK_toes_CTLShape" -p "F_IK_toes_CTL";
	rename -uid "51511E75-4720-09C8-C610-648D6D00AED1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		8.1229010054588594e-16 -2.1647058823529388 0.13529411764705904
		0.88017090000000064 -1.989629882352939 0.13529411764705959
		1.6263461000000001 -1.4910519823529413 0.13529411764705981
		2.1249239999999987 -0.74487678235293964 0.13529411764705973
		2.2999999999999998 0.13529411764705965 0.13529411764705968
		2.1249239999999983 1.0154650176470585 0.13529411764705959
		1.6263460999999995 1.7616402176470578 0.13529411764705968
		0.88017089999999876 2.2602181176470579 0.13529411764705906
		-9.1382636311412207e-16 2.4352941176470564 0.1352941176470589
		-8.801709000000008e-13 2.260218117647057 0.13529411764705868
		-1.6263461e-12 1.7616402176470565 0.13529411764705837
		-2.1249239999999993e-12 1.015465017647057 0.13529411764705832
		-2.3000000000000003e-12 0.13529411764705782 0.13529411764705795
		-2.1249239999999985e-12 -0.74487678235294219 0.13529411764705804
		-1.6263461e-12 -1.4910519823529416 0.13529411764705812
		-8.8017089999999918e-13 -1.9896298823529395 0.13529411764705832
		8.1229010054588594e-16 -2.1647058823529388 0.13529411764705904
		;
createNode transform -n "F_IK_foot_upVec" -p "F_IK_foot_CTL";
	rename -uid "38E2D815-47D3-C89D-7C10-299850326410";
	setAttr ".t" -type "double3" 4.9999832928857222 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000191 1.0000000001270566 0.99999999987292443 ;
createNode transform -n "F_IK_shoulder_aim" -p "F_IK_foot_CTL";
	rename -uid "172E3B27-40A5-43FC-773F-C88652FD55C9";
	addAttr -ci true -sn "rebuildTrans" -ln "rebuildTrans" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildTransX" -ln "rebuildTransX" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransY" -ln "rebuildTransY" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildTransZ" -ln "rebuildTransZ" -at "double" -p "rebuildTrans";
	addAttr -ci true -sn "rebuildRot" -ln "rebuildRot" -at "double3" -nc 3;
	addAttr -ci true -sn "rebuildRotX" -ln "rebuildRotX" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "rebuildRotY" -ln "rebuildRotY" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "rebuildRotZ" -ln "rebuildRotZ" -at "double" -p "rebuildRot";
	addAttr -ci true -sn "offset" -ln "offset" -at "matrix";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildMode" -ln "reBuildMode" 
		-at "message";
	setAttr ".t" -type "double3" -0.018614769996910141 4.5795176277955818 0.0044861075223465718 ;
	setAttr ".r" -type "double3" -2.1615736153574381 0.4244564942249095 0.044923164098840028 ;
	setAttr ".s" -type "double3" 1.0000000701013958 0.9999999066744627 1.0000000022809146 ;
	setAttr ".sh" -type "double3" 9.6455228632383525e-10 -4.4653706036239818e-08 1.348710029468594e-10 ;
	setAttr ".offset" -type "matrix" 0.0032878678346197044 0.99996794608163686 0.007321160260186671 0
		 -0.99924647245587694 0.0035684486658097052 -0.038647106489732172 0 -0.038671977810439989 -0.0071886205031055197 0.99922610484524432 0
		 -2.6645352591003757e-15 0 7.1054273576010019e-15 1;
createNode transform -n "IK_wrist_aim_02" -p "F_IK_shoulder_aim";
	rename -uid "D31D471A-46AB-AE03-7D2D-BCB8CCDEE614";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5 6.173900325234301e-09 0 ;
	setAttr ".s" -type "double3" 1.0000000000068536 0.99999999991385691 1.0000000000792879 ;
createNode locator -n "IK_wrist_aim_02Shape" -p "IK_wrist_aim_02";
	rename -uid "B782ED8E-4707-CF8C-42B1-6AA74A245A87";
	setAttr -k off ".v";
createNode transform -n "IK_wrist_aim_01_offGRP" -p "F_IK_foot_CTL_spcGRP";
	rename -uid "95519EFD-4BD8-A7BE-CE61-218D27D50D20";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.073779620813175129 30.157042877318151 3.4024093980083592 ;
	setAttr ".r" -type "double3" 4.1400102720045335e-06 0 0 ;
	setAttr ".s" -type "double3" 0.99999993653098629 0.99999997611884706 1.0000000160150011 ;
	setAttr ".sh" -type "double3" -1.374294140973877e-09 -1.6453843262042158e-09 2.0616827675848184e-07 ;
createNode transform -n "IK_wrist_aim_01_spcGRP" -p "IK_wrist_aim_01_offGRP";
	rename -uid "4B0EF600-42FC-2972-B856-A1907CD3FD10";
	setAttr ".t" -type "double3" 4 -8.4523057846777332e-15 -3.5527136788004997e-15 ;
createNode transform -n "IK_wrist_aim_01" -p "IK_wrist_aim_01_spcGRP";
	rename -uid "C26F9B4F-41F9-3C01-508B-FEAED1965277";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
createNode locator -n "IK_wrist_aim_01Shape" -p "IK_wrist_aim_01";
	rename -uid "60043B0D-4ED4-6257-7ED8-E9B2A3C61D19";
	setAttr -k off ".v";
createNode transform -n "poleVec_CTL_offGRP" -p "IK_Qarm_CTL_GRP";
	rename -uid "15C53116-4024-ED2A-DF3A-9F9058A0EA24";
	setAttr ".t" -type "double3" 11.964648055106839 0.0024318457687506623 -0.09674286897485862 ;
	setAttr ".r" -type "double3" 0.033486879914301423 -36.230992471850698 -0.0083644218628579556 ;
	setAttr ".sh" -type "double3" 1.6378709506112675e-08 4.3758846258862413e-08 4.1213463893951901e-08 ;
createNode transform -n "poleVec_CTL_follow_GRP" -p "poleVec_CTL_offGRP";
	rename -uid "45F05D07-4732-51E5-2A97-CD91C4B1EE26";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode transform -n "poleVec_CTL_spcGRP" -p "poleVec_CTL_follow_GRP";
	rename -uid "7D5BD8CA-4DE1-6327-D9E2-1B9985F24445";
	setAttr ".t" -type "double3" -5.7623499216674645e-07 2.1135072643119202e-06 -24.999999717115145 ;
	setAttr ".s" -type "double3" 1.0000000224337573 0.99999998888163488 0.99999998868460549 ;
	setAttr ".sh" -type "double3" 8.0067073892273867e-10 2.3049398956053739e-08 -8.4540291715809198e-08 ;
createNode transform -n "poleVec_CTL" -p "poleVec_CTL_spcGRP";
	rename -uid "C2E23D1D-487F-96D1-9AA9-4B8EF67DC817";
	addAttr -ci true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "reBuildAttr" -ln "reBuildAttr" 
		-at "message";
	addAttr -ci true -sn "resetAttr" -ln "resetAttr" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.7763568394002505e-14 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow" 10;
	setAttr -k on ".resetAttr" -type "string" "follow";
createNode nurbsCurve -n "poleVec_CTLShape" -p "poleVec_CTL";
	rename -uid "BC2E5241-4932-9906-87A1-11A8231F505C";
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
createNode transform -n "poleVec_input_space" -p "poleVec_CTL_offGRP";
	rename -uid "BA5CF34C-477D-C9DA-E90D-3C86225BD0F5";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode parentConstraint -n "poleVec_input_space_parentConstraint1" -p "poleVec_input_space";
	rename -uid "78287EE2-4C8D-4845-8531-4CAC5EECFE2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "input_B_elbowW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.8364553535701838e-31 2.7432512904921081e-06 
		0 ;
	setAttr ".rst" -type "double3" -1.0658141036401503e-14 -2.6645352591003757e-15 3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "poleVec_input_space_aimConstraint1" -p "poleVec_input_space";
	rename -uid "70120073-492D-AEE5-242D-2B98A960CB20";
	addAttr -dcb 0 -ci true -sn "w0" -ln "input_F_elbowW0" -dv 1 -at "double";
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
createNode transform -n "poleVec_aim_space" -p "poleVec_CTL_offGRP";
	rename -uid "0A35D767-4DDD-8741-FB8F-49B1AA512208";
	setAttr ".s" -type "double3" 0.99999997756624281 1.0000000111183651 1.0000000113153944 ;
	setAttr ".sh" -type "double3" -8.0067071071009883e-10 -2.3049398240138636e-08 8.4540291698648456e-08 ;
createNode parentConstraint -n "poleVec_aim_space_parentConstraint1" -p "poleVec_aim_space";
	rename -uid "E4F7C690-412F-4133-9F05-D9A29FDF4CD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "F_IK_scapula_aim_spaceW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.8830885882525248 -18.53268055688741 -0.21597141470972936 ;
	setAttr ".tg[0].tor" -type "double3" -0.4394987622572657 -8.5190367710687376 -89.753575520729413 ;
	setAttr ".lr" -type "double3" 7.9513867036587919e-16 -7.9513867036587919e-16 -4.9696166897867449e-17 ;
	setAttr ".rst" -type "double3" 0 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-16 -7.9513867036587919e-16 -4.9696166897867449e-17 ;
	setAttr -k on ".w0";
createNode transform -n "FK_Qarm_CTL_GRP" -p "Qarm_CTL_GRP";
	rename -uid "4A3A1DCA-477D-79E2-426B-0FA097D3F51B";
	setAttr ".t" -type "double3" -4.2393512725830078 -40.812831878662109 -14.152165412902832 ;
createNode transform -n "FK_scapula_offGRP" -p "FK_Qarm_CTL_GRP";
	rename -uid "9D559EDD-4100-C9CA-41A5-AC8CB58645AC";
	setAttr ".t" -type "double3" 4.2393512725830087 40.812831878662109 14.152165412902832 ;
createNode transform -n "FK_scapula_space" -p "FK_scapula_offGRP";
	rename -uid "4A256CEE-45AD-5B9D-5CA6-46A260FF4683";
createNode transform -n "FK_scapula_space_ivsScale" -p "FK_scapula_space";
	rename -uid "CD9D18FC-4966-4D09-4639-72AB3D334C98";
createNode transform -n "FK_shoulder_CTL_offGRP" -p "FK_scapula_space_ivsScale";
	rename -uid "9BCCCC45-47D0-E914-7A8D-FF81F2F1F0CD";
createNode transform -n "FK_shoulder_CTL_spcGRP" -p "FK_shoulder_CTL_offGRP";
	rename -uid "58E4382E-4E95-E42B-EC6E-AFA5B4E96656";
createNode transform -n "FK_shoulder_CTL" -p "FK_shoulder_CTL_spcGRP";
	rename -uid "D61849C7-4E9E-B1D3-6B11-5E9BAEA032A1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "FK_shoulder_CTLShape" -p "FK_shoulder_CTL";
	rename -uid "C05CA0F5-4B4D-746B-8843-189DCDE43C57";
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
	rename -uid "F6695558-4B75-0FA2-C88A-A2B7FA1FBDFA";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
createNode transform -n "FK_B_elbow_CTL_offGRP" -p "FK_shoulder_CTL_ivsScale";
	rename -uid "1AC74E6F-47C4-01F9-9E62-5C9357DC1B83";
createNode transform -n "FK_B_elbow_CTL_spcGRP" -p "FK_B_elbow_CTL_offGRP";
	rename -uid "D8434C8A-4574-4135-0584-198901F7BA27";
createNode transform -n "FK_B_elbow_CTL" -p "FK_B_elbow_CTL_spcGRP";
	rename -uid "3AD447F8-42A6-5343-4A99-E59053DA69AA";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "FK_B_elbow_CTLShape" -p "FK_B_elbow_CTL";
	rename -uid "2834F316-4A12-03CB-165F-A6B25DDEAAFE";
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
	rename -uid "401E509D-48B0-335B-144A-079D094C8564";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "FK_F_elbow_CTL_offGRP" -p "FK_B_elbow_CTL_ivsScale";
	rename -uid "5A9A93EC-4C64-1C66-A4DE-C687105525D1";
createNode transform -n "FK_F_elbow_CTL_spcGRP" -p "FK_F_elbow_CTL_offGRP";
	rename -uid "B2349BA3-4235-D26D-65E9-95A37A7E981F";
createNode transform -n "FK_F_elbow_CTL" -p "FK_F_elbow_CTL_spcGRP";
	rename -uid "700DEF0E-479D-7D0B-E3A4-42B574ED683B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "FK_F_elbow_CTLShape" -p "FK_F_elbow_CTL";
	rename -uid "39999D71-4337-BBA4-EB42-A38E54552486";
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
	rename -uid "6D1E9A9D-4294-37BE-B0B7-859C92BBD4FF";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 7.1054273576010019e-15 ;
createNode transform -n "FK_F_wrist_CTL_offGRP" -p "FK_F_elbow_CTL_ivsScale";
	rename -uid "11D23883-410D-53C2-8859-C49200E28C24";
createNode transform -n "FK_F_wrist_CTL_spcGRP" -p "FK_F_wrist_CTL_offGRP";
	rename -uid "71AB393F-41EE-C2FE-6D00-EA859CAD6516";
createNode transform -n "FK_F_wrist_CTL" -p "FK_F_wrist_CTL_spcGRP";
	rename -uid "914F1CFC-4F7C-9B94-F0EE-DDBE393173A4";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_wrist_CTLShape" -p "FK_F_wrist_CTL";
	rename -uid "0644F733-486D-90BB-64E5-53A6625087C5";
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
	rename -uid "1954C5A6-4AE4-6BAE-8D1D-558461567A1C";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 5.3290705182007514e-15 ;
createNode transform -n "FK_F_toe_CTL_offGRP" -p "FK_F_wrist_CTL_ivsScale";
	rename -uid "153E8288-4195-D5E2-E631-399A7D429970";
createNode transform -n "FK_F_toe_CTL_spcGRP" -p "FK_F_toe_CTL_offGRP";
	rename -uid "955E84DB-4CBE-AA05-9DE5-D0B102102BBC";
createNode transform -n "FK_F_toe_CTL" -p "FK_F_toe_CTL_spcGRP";
	rename -uid "6AF2CCB0-4A19-4E3D-E2FD-2EB7EFDCF702";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode nurbsCurve -n "FK_F_toe_CTLShape" -p "FK_F_toe_CTL";
	rename -uid "2CEE9D5A-4211-B598-6CAF-629A7536AD3C";
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
createNode transform -n "Qarm_switch_CTL_offGRP" -p "Qarm_CTL_GRP";
	rename -uid "15ABF9B0-46CE-0FA3-28C3-86A685409EAC";
	setAttr ".r" -type "double3" 0 -6.659286364314237e-15 2.3158413774406226e-14 ;
createNode transform -n "Qarm_switch_CTL_spcGRP" -p "Qarm_switch_CTL_offGRP";
	rename -uid "BFDCF075-4255-A2D0-7D97-99A588DE60BE";
createNode transform -n "Qarm_switch_CTL" -p "Qarm_switch_CTL_spcGRP";
	rename -uid "134182D5-4AAF-EBAA-A7A5-28B5FDFF461B";
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
createNode nurbsCurve -n "Qarm_switch_CTLShape" -p "Qarm_switch_CTL";
	rename -uid "C31E13E2-4888-0649-9AF5-30A2B93EB391";
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
createNode transform -n "Qarm_output" -p "set_Qarm";
	rename -uid "CA1F1EEF-4B96-B764-D028-49B356C4F122";
createNode joint -n "scapula" -p "Qarm_output";
	rename -uid "1A3923B1-4B9F-B62A-05C5-F786B15CE320";
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
	rename -uid "6A0E13DB-4BEE-E338-23B8-CDB44F0C2528";
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
	rename -uid "05F78CD8-4F63-6268-FDB0-5C8DD35B4B8E";
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
	rename -uid "58428D7B-4D4C-9BD6-B2C8-DE9A8BC7AA30";
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
	rename -uid "2B4EC08D-4C39-19BF-2EE8-80BB2130CAE3";
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
	rename -uid "7A7E8BBA-43BD-8389-7C3A-639CD0FF5D7E";
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
	rename -uid "D4763E58-4D09-4960-3DC0-54AF699DAB97";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999998623544251 -5.9477194556738798e-10 1.3626797335087274e-09 0
		 5.9477191898904237e-10 0.99999999693967512 -2.1310307796174044e-08 0 -1.3626798462024035e-09 2.1310307296573683e-08 0.99999999000123574 0
		 6.2056994334685038 1.4970899386845815e-07 20.832681790400944 1;
	setAttr ".liw" yes;
createNode condition -n "arm_mirror_COND";
	rename -uid "5FC8501A-403D-DCCB-300E-02800C3A88B8";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_arm_local_DCMX";
	rename -uid "9C8780C2-4552-F43D-F7E7-19B936EE5BA4";
createNode multMatrix -n "fit_arm_local_MTMX";
	rename -uid "A5B62315-4B59-4E7B-AA6A-43925E66C83D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_shoulder_aligned_DCMX";
	rename -uid "37D8CE6A-4743-3FB0-E3BB-23AEDE31583B";
createNode multMatrix -n "fit_shoulder_aligned_MTMX";
	rename -uid "F0CFC332-417E-4969-4096-499B7D0BBB4C";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_shoulder_aligned_FBFM";
	rename -uid "6BA224BD-4C95-F5CF-7152-588BD1336D74";
createNode vectorProduct -n "fit_shoulder_x_vec";
	rename -uid "E34864C6-47D3-2580-EDC7-ADA3F1E4D785";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_shoulder2elbow_vec_rvsMULT";
	rename -uid "38096720-4249-BAE1-114B-B0979B9497B4";
createNode plusMinusAverage -n "fit_shoulder2elbow_vec";
	rename -uid "FDFE3663-4AAD-C99A-E59F-8DA9C544E7E0";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_B_elbow_DCMX";
	rename -uid "EABEE9CF-43A4-81A4-7DD8-6FB7E67BFBDF";
createNode decomposeMatrix -n "fit_shoulder_DCMX";
	rename -uid "0734C5E5-4101-D1CC-FAC7-40882E1FB113";
createNode vectorProduct -n "fit_shoulder_y_vec";
	rename -uid "A261DDB2-4CF5-BB6B-22D3-5D984C69BD25";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_shoulder2wrist_vec_rvsMULT";
	rename -uid "58C848D4-4CD0-37E4-C918-86B687A78A22";
createNode plusMinusAverage -n "fit_shoulder2wrist_vec";
	rename -uid "ABEECC0A-49EE-7F69-530A-7E9F71FF881D";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_F_elbow_DCMX";
	rename -uid "9F00B443-4CAE-736E-0D19-FAB25AEF5232";
createNode vectorProduct -n "fit_shoulder_z_vec";
	rename -uid "466C8E05-4BB5-EE90-F84C-F992392082C9";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_B_elbow_aligned_DCMX";
	rename -uid "D5E4105F-44A4-5732-F1E7-D497E82E423B";
createNode multMatrix -n "fit_B_elbow_aligned_MTMX";
	rename -uid "61D95354-4EAB-8336-B8E5-938BED27C1A0";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_B_elbow_aligned_FBFM";
	rename -uid "B5551106-4EBB-9F59-F888-BC96F611C3BC";
createNode vectorProduct -n "fit_B_elbow_x_vec";
	rename -uid "7CDB2BB2-47D3-173B-3613-8FA3575A4DB0";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_elbow2F_elbow_vec_rvsMULT";
	rename -uid "F6A045F9-49FB-B0E9-4955-94A9C481C480";
createNode plusMinusAverage -n "fit_B_elbow2F_elbow_vec";
	rename -uid "7A4B10D8-4C68-0AD7-2442-3388972A27CE";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_elbow_y_vec";
	rename -uid "E6438EDE-4E37-D189-09D1-6DB47D14220A";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_elbow2shoulder_vec_rvsMULT";
	rename -uid "CB030AC9-4E44-D82E-C610-BDB810D9DD62";
createNode plusMinusAverage -n "fit_B_elbow2shoulder_vec";
	rename -uid "060CF91A-481D-5977-5365-65B9D8429327";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_elbow_z_vec";
	rename -uid "3929EA80-49BB-2055-8848-53A4A4B55DD5";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_F_elbow_aligned_DCMX";
	rename -uid "200E52E1-4EB9-3347-C559-32BF48C206FA";
createNode multMatrix -n "fit_F_elbow_aligned_MTMX";
	rename -uid "814DB7E2-4B74-36E1-1508-EB9852667C4D";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_F_elbow_aligned_FBFM";
	rename -uid "A0C3F8E6-4164-DEDA-203B-8EA26E5D84FC";
createNode vectorProduct -n "fit_F_elbow_x_vec";
	rename -uid "53CA1297-4F28-E565-0651-858BEDF9E833";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_elbow2wrist_vec_rvsMULT";
	rename -uid "3E0DD08A-47A9-5590-EBCD-F288CAEA80F2";
createNode plusMinusAverage -n "fit_F_elbow2wrist_vec";
	rename -uid "D8B63133-4B3D-4C3B-4684-6C9D3B40D773";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_wrist_DCMX";
	rename -uid "885FE401-4834-42E7-7AED-02B003E8E61D";
createNode vectorProduct -n "fit_F_elbow_y_vec";
	rename -uid "9820BD85-49EA-BABD-D622-4EA4C3DFC4C9";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_elbow2B_elbow_vec_rvsMULT";
	rename -uid "00C897D3-4CAA-A8A7-CECC-D6BB1D0E3A82";
createNode plusMinusAverage -n "fit_F_elbow2B_elbow_vec";
	rename -uid "77532C4A-4B71-6B21-5FEE-D38BA4185481";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_F_elbow_z_vec";
	rename -uid "056931FE-4FE0-D389-3333-43ABA1D67D01";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_wrist_aligned_DCMX";
	rename -uid "C4D22477-4BD1-EE94-A98F-A0B511BA3006";
createNode multMatrix -n "fit_wrist_aligned_MTMX";
	rename -uid "F0DC70A5-4FC3-0C49-11EE-A59718A94C83";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_wrist_aligned_FBFM";
	rename -uid "A00BCB5C-4163-DF12-2770-D4864A34D857";
createNode vectorProduct -n "fit_wrist_x_vec";
	rename -uid "6917DE6C-4D8F-A07C-3831-5EB76D88BA68";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_wrist2F_toe_vec_rvsMULT";
	rename -uid "D732E5EE-4345-4A95-970E-0083CD271DD8";
createNode plusMinusAverage -n "fit_wrist2F_toe_vec";
	rename -uid "0D113D4A-497E-8674-0C3E-B6ABE1101C80";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_toe_DCMX";
	rename -uid "B092ABFB-4D08-8493-950B-CE8C2581F296";
createNode vectorProduct -n "fit_wrist_y_vec";
	rename -uid "35E69E4C-41F2-90B2-510C-4486EA10E085";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_wrist2F_elbow_vec_rvsMULT";
	rename -uid "2B5D23E4-49DF-8171-177C-9EA80FC4022B";
createNode plusMinusAverage -n "fit_wrist2F_elbow_vec";
	rename -uid "F9A5726A-4986-A519-B771-889453324BE7";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_wrist_z_vec";
	rename -uid "CEE5AA3A-4E9F-81AD-6523-9EA3F0A8B847";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_toe_aligned_DCMX";
	rename -uid "F1B1B2B3-497E-DBAD-932F-E5907BAF1B9C";
createNode multMatrix -n "fit_toe_aligned_MTMX";
	rename -uid "54A10C73-48B0-56C7-3D00-42999E9F7C95";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_toe_aligned_FBFM";
	rename -uid "9C057DCE-47F3-3BBF-B6F2-8CA6BE75F28C";
createNode vectorProduct -n "fit_toe_x_vec";
	rename -uid "57ABFACE-4130-C0B3-1775-3EAF81C02CF5";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_toe2tiptoe_vec_rvsMULT";
	rename -uid "CBC98313-4B36-93FD-CFFA-619432A0BD6A";
createNode plusMinusAverage -n "fit_toe2tiptoe_vec";
	rename -uid "494CB64D-4F87-EB50-2AEE-7FBB5B51D956";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_tiptoe_DCMX";
	rename -uid "76B4DA6C-425D-E914-AD57-F18D8E6B29FD";
createNode vectorProduct -n "fit_toe_y_vec";
	rename -uid "196EBEE7-429E-8657-2184-ADA23FCB73B6";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fir_toe2wrist_vec_rvsMULT";
	rename -uid "C7056FE0-4657-A0F8-9C68-A5AE0A020DBA";
createNode plusMinusAverage -n "fir_toe2wrist_vec";
	rename -uid "A3182493-40A5-E703-35D6-8C8B3A5588BF";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_toe_z_vec";
	rename -uid "1621E8EE-48C9-2598-70BA-9997068B6497";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_tiptoe_local_DCMX";
	rename -uid "ED19168D-40A0-9E62-6A63-389FE0A98DBD";
createNode multMatrix -n "fit_tiptoe_local_MTMX";
	rename -uid "EBBFBFDE-4C3E-BA5C-7FC0-E7BA9687E3DE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_arm_space_local_DCMX";
	rename -uid "6746D695-428B-35A0-E5F6-C485B2BE69CF";
createNode multMatrix -n "fit_arm_space_local_MTMX";
	rename -uid "4B2550C1-44C5-7AAF-836B-DBA3861351A2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_shoulder_local_DCMX";
	rename -uid "8DCD3993-4200-4DC4-6CAF-0A94EC7CA60E";
createNode multMatrix -n "init_shoulder_local_MTMX";
	rename -uid "B663F8AE-40B3-0570-A331-6CA9EC52E546";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_B_elbow_local_DCMX";
	rename -uid "364675D0-4C71-39D1-808F-52A464398574";
createNode multMatrix -n "init_B_elbow_local_MTMX";
	rename -uid "94B15765-4562-6FBE-4457-8C8322BC72F6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_F_elbow_local_DCMX";
	rename -uid "EEC037BE-4012-7F1E-E2B9-B2AF8BDFA46D";
createNode multMatrix -n "init_F_elbow_local_MTMX";
	rename -uid "CC132069-48A5-96AD-1AF1-D490603C9739";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_wrist_local_DCMX";
	rename -uid "362C1891-47C4-D9AB-4E26-FDA093D05B8F";
createNode multMatrix -n "init_wrist_local_MTMX";
	rename -uid "4EC689DE-4275-BFB9-7095-0491D6140E5B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_toe_local_DCMX";
	rename -uid "7E68191C-4079-FCA4-F94C-8D846BCBCBE2";
createNode multMatrix -n "init_toe_local_MTMX";
	rename -uid "B765D1C0-445E-5E3F-B244-D78C3AEA9D11";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_space_DCMX";
	rename -uid "99D1B435-4E3E-037A-FB1C-23A63F83EC0A";
createNode multMatrix -n "IK_shoulder_space_MTMX";
	rename -uid "CCA8DCFA-45F0-4A32-1BA4-DEA0917A6F6F";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "stretch_output_mul_CTLVal_MULT";
	rename -uid "FC4B6CEB-456D-18EA-014F-9E8D4784A9A1";
createNode multiplyDivide -n "loQarm_stretch_output_mul_CTLlVal_MULT";
	rename -uid "D691E6B9-42C4-AA3E-5DB5-64AEDA95CFCD";
createNode plusMinusAverage -n "soft_QarmLen_PMA";
	rename -uid "AD26C5F7-4D47-DE09-5D84-39B9D01CDA81";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "upQarmLen";
	rename -uid "F5CE542F-4585-1730-742B-019162136B6B";
createNode multMatrix -n "input_shoulder_local_MTMX";
	rename -uid "61A40044-489B-B41F-364C-96A9062AC147";
	setAttr -s 2 ".i";
createNode multMatrix -n "input_elbow_local_MTMX";
	rename -uid "B3B9EACE-43C0-F7A6-BD4F-769C482B8E67";
	setAttr -s 2 ".i";
createNode distanceBetween -n "midQarmLen";
	rename -uid "11624B94-4427-7F5D-91CD-3A92C4B1D7AD";
createNode multMatrix -n "input_F_elbow_local_MTMX1";
	rename -uid "D9DA8EC1-41D0-3599-BAD8-30B448EF5BDE";
	setAttr -s 2 ".i";
createNode distanceBetween -n "upIKLen";
	rename -uid "A572479E-4B8D-0346-5946-6F973F9BD102";
createNode multMatrix -n "input_shoulder_local_dist_MTMX";
	rename -uid "66DE1CE8-4655-C25C-4E0A-02B90B358566";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_space_local_MTMX";
	rename -uid "2DCC2024-44AE-EFB9-252A-74A22763BC41";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IK_negate_val_MULT";
	rename -uid "8DCD30F0-43F5-8530-11A5-56A648C0CFEA";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode distanceBetween -n "loIKLen";
	rename -uid "B4407CA0-4434-7B3B-478C-5E8E6FD320ED";
createNode multMatrix -n "input_F_elbow_local_MTMX";
	rename -uid "D10424F8-4AA0-5E6D-DDC3-8AA165201183";
	setAttr -s 2 ".i";
createNode multMatrix -n "F_toe_CTL_local_MTMX";
	rename -uid "EB5D1574-4056-2A09-4008-AEB327774ED1";
	setAttr -s 2 ".i";
createNode plusMinusAverage -n "loQarm_soft_Len_PMA";
	rename -uid "7A95AA08-4DEF-B6E0-B041-6C84EEC5142B";
	setAttr -s 3 ".i1[2]"  0;
	setAttr -s 2 ".i1";
createNode distanceBetween -n "loQarmLen";
	rename -uid "F4E29F5F-4589-7FC1-53D7-438F5F791CE2";
createNode multMatrix -n "input_F_toe01_local_MTMX";
	rename -uid "ACB5DB64-4FB2-DD08-ECB2-FBA73C945893";
	setAttr -s 2 ".i";
createNode condition -n "CTLlen_COND";
	rename -uid "4DF9443F-40A1-6249-867C-81BDC086F494";
	setAttr ".op" 2;
createNode condition -n "softikV_COND";
	rename -uid "39F429C6-48E5-D05D-22DF-0DB5E8B8EC88";
	setAttr ".op" 2;
createNode plusMinusAverage -n "result_softik_len_SUBT";
	rename -uid "787BB53D-4AE0-5C36-A460-9DAD60AAB9F2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "mult_softikV_MULT";
	rename -uid "E8839BBA-48B3-0DA3-EDDC-11B8F7C8DD41";
createNode multiplyDivide -n "power_val_POW";
	rename -uid "E398B69C-414B-0E2F-7DBC-B88693B63885";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "negate_val_MULT";
	rename -uid "14946257-40E3-2609-AB94-93A0691A06DC";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_upQarm_softikV_DIVD";
	rename -uid "044DFB53-4A51-F787-5083-EAA327D196B0";
	setAttr ".op" 2;
createNode plusMinusAverage -n "CTLLen_minue_dif_SUBT";
	rename -uid "16AC1EBD-4BAB-9260-AC3F-4689D8051731";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "Qarmlen_minus_softikV_SUBT";
	rename -uid "9EA52D76-40BE-C6FF-9544-C1BE9CCABEAF";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "for_zerodivide_COND";
	rename -uid "97A13D89-4695-EFFE-1419-4A89C66656B2";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode condition -n "loQarm_CTLlen_COND";
	rename -uid "E1A6D866-4CE6-0A06-2CB7-AE917B3E27FA";
	setAttr ".op" 2;
createNode condition -n "loQarm_softikV_COND";
	rename -uid "622A87C5-4B81-B0A3-D7D9-37A3AE84B451";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loQarm_result_softik_len_SUBT";
	rename -uid "D0BED224-4BD7-2F91-D392-7FA3A25EF420";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loQarm_mult_softikV_MULT";
	rename -uid "9BA275DB-4BAD-1E7C-C0B0-C1824CF96455";
createNode multiplyDivide -n "loQarm_power_val_POW";
	rename -uid "F28C31BB-4C99-A194-5D54-F0B775D3D75A";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 3 0 0 ;
createNode multiplyDivide -n "loQarm_negate_val_MULT";
	rename -uid "F9AF2070-41E6-7366-EF25-F3AEC0AEACCD";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "divide_loQarm_softikV_DIVD";
	rename -uid "81FFBE39-4616-C46E-C681-44BC41C33CD6";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loQarm_ctrlLen_minue_dif_SUBT";
	rename -uid "D947A56D-4414-780B-2346-E8AF62521918";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "loQarm_Qarmlen_minus_softikV_SUBT";
	rename -uid "7909DAF2-471C-631C-5068-0594314307CD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "midQarm_plus_stretch_PMA";
	rename -uid "5CBD9696-43DF-8E09-570F-2189A3DA6BA8";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_midQarm_MULT";
	rename -uid "AFA17B0B-46F9-0974-E531-C9ACBE6EDC60";
createNode multiplyDivide -n "stretched_midQarmLen_MULT";
	rename -uid "328A2140-4D7C-DE6B-4A0E-26873041E791";
createNode plusMinusAverage -n "stretchedLen_SUBT";
	rename -uid "A92C2D6B-4859-F8F4-8C32-F59AF2D1252A";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "midQarm_ratio3_DIVD";
	rename -uid "D852F087-4238-FBDC-3451-BEA8CFDA39C1";
	setAttr ".op" 2;
createNode plusMinusAverage -n "stretch_QarmLen_PMA";
	rename -uid "AAF64AFB-4856-089B-6122-E4B0E6289787";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode plusMinusAverage -n "upQarm_plus_stretch_PMA";
	rename -uid "148250B1-43F0-23D6-0DDD-168129785F29";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "stretchCtrl_upQarm_MULT";
	rename -uid "8431635E-4026-BDE2-3DDA-B18F50448CE6";
createNode multiplyDivide -n "stretched_upQarmLen_MULT";
	rename -uid "3AF2EF87-45C5-813B-FAFC-1181DCA27C5B";
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "31E989E9-4F68-7DD5-A0CD-2DA5C75DB7BF";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loQarm_plus_stretch_PMA";
	rename -uid "71B5E533-43F5-E2F5-C548-C2BA2F970F7D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loQarm_stretchCtrl_Qarm_MULT";
	rename -uid "6C134407-4296-855B-D112-8D84C2A7E1C7";
createNode multiplyDivide -n "loQarm_stretched_Qarm_MULT";
	rename -uid "6AB267DC-491F-D694-9DC6-7DA04D12D3BD";
createNode plusMinusAverage -n "loQarm_stretchedLen_SUBT";
	rename -uid "9CE07210-4EBD-FE21-E7A2-C8AAA171C906";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loQarm_ratio_DIVD";
	rename -uid "B690C0BD-4295-C658-85DF-9B889CE728E3";
	setAttr ".op" 2;
createNode plusMinusAverage -n "loQarm_stretch_QarmLen_PMA";
	rename -uid "75085403-4031-E8BA-5762-29A1175B9F3A";
	setAttr -s 3 ".i1";
	setAttr -s 3 ".i1";
createNode decomposeMatrix -n "scapula_CTL_local_DCMX";
	rename -uid "6007F36D-4C57-2DFF-7FE9-A99F0C8B47EE";
createNode multMatrix -n "scapula_CTL_local_MTMX";
	rename -uid "993DB134-493E-B368-F617-F58CA6E8372B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "IK_shoulder_CTL_local_DCMX";
	rename -uid "79F8621D-427F-3FFA-A155-EA9808758665";
createNode multMatrix -n "IK_shoulder_CTL_local_MTMX";
	rename -uid "FD7A1369-47D2-6BEC-C8A0-909502BE2A9E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_wrist_space_scale_DCMX";
	rename -uid "D219ABBA-4AC7-ACB0-D789-FFB9B6C730E9";
createNode decomposeMatrix -n "F_wrist_CTL_scale_DCMX";
	rename -uid "0C8FB512-4AA2-3A81-FCCA-FCB7A4CAA630";
createNode decomposeMatrix -n "F_ball_CTL_scale_DCMX";
	rename -uid "BDA6F243-4D78-4250-2379-F999CE8D82B0";
createNode decomposeMatrix -n "F_IK_foot_IKH_offGRP_local_DCMX";
	rename -uid "C1ACDB06-4C6F-2204-E44B-3CBB9939D668";
createNode multMatrix -n "F_IK_foot_IKH_offGRP_local_MTMX";
	rename -uid "576349BB-41BD-D16C-7747-7A8D9589ED73";
	setAttr -s 2 ".i";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "6EF1B922-4803-3B90-DDE0-D99BDCDAAB7A";
createNode decomposeMatrix -n "F_IK_wrist_IKH_offGRP_local_DCMX";
	rename -uid "AE43689C-42FD-4685-65A7-B2832CE84776";
createNode multMatrix -n "F_IK_wrist_IKH_offGRP_local_MTMX";
	rename -uid "7994D9BC-4C15-AAD6-5FBA-FD8783630CA5";
	setAttr -s 2 ".i";
createNode ikSCsolver -n "ikSCsolver1";
	rename -uid "5E6EB65E-46EF-FDAF-9146-7EBB6DA31ECB";
createNode decomposeMatrix -n "F_IK_B_elbow_aim_space_local_DCMX";
	rename -uid "B9394F5D-4158-7880-753D-DAB55FF04CCF";
createNode multMatrix -n "F_IK_B_elbow_aim_space_local_MTMX";
	rename -uid "D743CA14-47EA-C948-E89E-3E93E25F0187";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_shoulder_CTL_local_DCMX";
	rename -uid "DF70E2DD-41E7-1236-6384-5FB0A61F86F0";
createNode multMatrix -n "FK_shoulder_CTL_local_MTMX";
	rename -uid "24E740EA-4188-0866-2183-C4AF6FCBDE29";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_B_elbow_CTL_local_DCMX";
	rename -uid "1EAD8B10-456C-CE69-0276-3CA009931490";
createNode multMatrix -n "FK_B_elbow_CTL_local_MTMX";
	rename -uid "7503F514-44B5-377F-06A6-E4B0BE398B9B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_elbow_CTL_local_DCMX";
	rename -uid "20D43177-4D1B-B722-DF92-F6ABCD8973D6";
createNode multMatrix -n "FK_F_elbow_CTL_local_MTMX";
	rename -uid "B962D50D-4A31-75AA-F9DE-0DBC490EEF4B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_wrist_CTL_local_DCMX";
	rename -uid "7193DC33-4119-C06E-25EB-80875B2EC671";
createNode multMatrix -n "FK_F_wrist_CTL_local_MTMX";
	rename -uid "85D3ED0F-49EC-E2AA-06FA-F9A90591304F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FK_F_toe_CTL_local_DCMX";
	rename -uid "C82E80CF-44C9-4C3A-3B63-0E950CC224F6";
createNode multMatrix -n "FK_F_toe_CTL_local_MTMX";
	rename -uid "4D7D8C82-4344-08D6-D569-62A5E6E685B2";
	setAttr -s 2 ".i";
createNode condition -n "Qarm_mirror_scale_COND";
	rename -uid "FBE420E5-41C0-B4BC-A2AC-F8951289BD80";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 1 1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "E1381E97-4180-B90E-E21C-1BA6F96EE248";
createNode decomposeMatrix -n "scapula_CTL_inverse_DCMX";
	rename -uid "C6B71912-48A7-B51E-C690-A5BF4B7AF1F7";
createNode decomposeMatrix -n "input_wrist_local_DCMX";
	rename -uid "FE15150E-4B2E-1416-8E25-979D6910434C";
createNode multMatrix -n "input_wrist_local_MTMX1";
	rename -uid "C90C45A9-4E7C-05F9-E17B-27A1C836C16D";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion12";
	rename -uid "41260F7B-453F-2525-5949-12B790CA7200";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "Qarm_mirror_rotate_COND";
	rename -uid "958D82AC-4C07-9BFC-4C1A-F893E0591106";
	setAttr ".cf" -type "float3" 0 -180 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "6EAF0608-4596-6B79-0F50-BDABA5A13D2F";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_bk_condition";
	rename -uid "2723A52A-49BB-EB47-4891-BCAA35734CA4";
	setAttr ".op" 3;
createNode unitConversion -n "unitConversion4";
	rename -uid "A2868D61-49E5-6390-EABA-47A9D8323F64";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "17E7AFAD-4B47-066F-5F41-469DB69898E6";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "in_out_condition";
	rename -uid "10FDAFD6-4BC2-52D0-153E-69A3CE002C65";
	setAttr ".op" 3;
createNode condition -n "in_out_default_condition";
	rename -uid "549BCE9E-4C2D-7175-72B0-DFB797500082";
createNode unitConversion -n "unitConversion3";
	rename -uid "7746AF43-41C1-7388-F866-64A9C158C9E9";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "toe_fn_condition";
	rename -uid "BD75471D-481E-66D4-A8A6-2F91EC9B5E2C";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "roll_angle_SUBT";
	rename -uid "5AB94AE8-444D-A9ED-A19C-2E884DA31AA4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion6";
	rename -uid "DE6B4DA7-43C5-69F6-6A4A-A0B2BF494134";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "input_tiptoe_local_DCMX";
	rename -uid "FFF1DDCF-406D-8935-47DB-C8AF6C27B453";
createNode multMatrix -n "input_tiptoe_local_MTMX";
	rename -uid "98890B8E-4C55-3FFC-58C6-0ABAACEBC107";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "A1546A70-46B4-1131-218E-DBA885DE7DA5";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "ball_start_conditon";
	rename -uid "D82CADCC-4652-84A0-DADB-B6BD8A724086";
	setAttr ".op" 2;
createNode condition -n "ball_fn_condition";
	rename -uid "87DBEB0B-46C6-5B6C-F837-5289D16816EA";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "backto_zero_ball_SUBT";
	rename -uid "2333F096-4F42-3A87-E87C-DDA4E08D6BE0";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "ball_remap";
	rename -uid "B1A40425-451B-631F-1FDD-2180439D7F76";
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
	rename -uid "09CC27AB-4D98-7824-24D7-2CBDB8456623";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode decomposeMatrix -n "input_toe_local_DCMX";
	rename -uid "2EF91870-4B6A-5D4A-5959-EC9C27AA906A";
createNode multMatrix -n "input_toe_local_MTMX";
	rename -uid "7FA29B5E-4382-9383-A8B0-32892D4FCCC4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_wrist_local_DCMX1";
	rename -uid "A4FC14FB-40E8-8183-D1A1-A8A6A61E0935";
createNode multMatrix -n "input_wrist_local_MTMX";
	rename -uid "3D34840D-4244-F6B3-170C-7A9C9336245A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "input_F_elbow_local_DCMX";
	rename -uid "36FF103F-4E18-1A55-32B6-F2A319A3D174";
createNode multMatrix -n "input_F_elbow_local_MTMX2";
	rename -uid "7D046A0E-4921-5E2D-FA74-88AD6B3FDAC9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX";
	rename -uid "325A4609-4A8C-5A01-FD96-B9B0E236CAF4";
createNode multMatrix -n "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX";
	rename -uid "D32CD4AF-499B-C7A3-D433-F6B079F706FE";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "F_IK_toe2F_IK_toes_offGRP_DCMX";
	rename -uid "BBC0BD83-454A-662C-64E4-0EBE01BF2F9C";
createNode multMatrix -n "F_IK_toe2F_IK_toes_offGRP_MTMX";
	rename -uid "0B067A9A-4FCC-B391-2A5E-DA9B491809DD";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion7";
	rename -uid "24754E36-4450-85CC-DF47-B4A2EC07E41A";
	setAttr ".cf" 0.1;
createNode reverse -n "toesAim_RVS";
	rename -uid "BAA1E381-41DA-7506-705C-9A89938607C8";
createNode decomposeMatrix -n "input_F_elbow2F_IK_shoulder_aim_DCMX";
	rename -uid "6F889C23-468A-3D29-CD86-AF961D362C57";
createNode multMatrix -n "input_F_elbow2F_IK_shoulder_aim_MTMX";
	rename -uid "DAA34496-4D64-FCA2-8518-5F897A223040";
	setAttr -s 3 ".i";
createNode unitConversion -n "unitConversion9";
	rename -uid "7189519E-44AC-93EF-0584-0083E2ACEED9";
	setAttr ".cf" 57.295779513082323;
createNode pairBlend -n "poleVec_follow_PRBL";
	rename -uid "FAECD3EE-4738-16F1-7996-188DFB53BB38";
createNode unitConversion -n "unitConversion8";
	rename -uid "644CAE8C-4E94-7FC4-5DF4-1CB60AD72996";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIK_RVS";
	rename -uid "6194F074-4D96-4048-D876-729564EA2A01";
createNode decomposeMatrix -n "FK_scapula_space_inverse_DCMX";
	rename -uid "26DDFB3B-44C2-A6F0-9280-5CBCB0D49706";
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "D0FFAC0E-4289-CF10-F304-ACA6F9A2283D";
createNode decomposeMatrix -n "FK_shoulder_CTL_inverse_DCMX";
	rename -uid "A773466D-465C-756B-389B-498924DD03C5";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "0BB0AAAE-49FA-140A-8642-19AE4AD4C5E4";
createNode decomposeMatrix -n "FK_B_elbow_CTL_inverse_DCMX";
	rename -uid "4545C73A-4A3F-BD58-5509-51B9693D8555";
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "5923A4AF-4490-BBF8-89D8-C2B5B0F7BC0B";
createNode decomposeMatrix -n "FK_F_elbow_CTL_inverse_DCMX";
	rename -uid "0BE3B7AF-4DB2-17B1-6028-4F81617F284C";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "3BDCD189-48B5-FA0B-97A2-C593BA9F5F70";
createNode decomposeMatrix -n "FK_F_wrist_CTL_inverse_DCMX";
	rename -uid "F9588B37-43F6-BBEE-B3E2-5AB6474CCA84";
createNode decomposeMatrix -n "Qarm_switch_CTL_space_DCMX";
	rename -uid "DB8DA8EA-42A8-B8F3-0B19-F69EE6179F3F";
createNode multMatrix -n "Qarm_switch_CTL_space_MTMX";
	rename -uid "4DE4EB47-45C4-975E-B319-E79B5BA13082";
	setAttr -s 2 ".i";
createNode choice -n "Qarm_switch_space_CHOI";
	rename -uid "471A2A9F-43F0-C789-871A-E09689E49A6B";
	setAttr -s 2 ".i";
createNode pairBlend -n "scapula_PRBL";
	rename -uid "2BC5E26A-4C04-0B03-0673-1F8C5CE8A6D1";
createNode blendColors -n "scapula_BLCL";
	rename -uid "4C10E3B7-4AC3-2848-3B0B-2E9D2D03216D";
createNode pairBlend -n "shoulder_PRBL";
	rename -uid "2981E28C-4173-04C2-5A3E-719A7DCDADDB";
createNode blendColors -n "shoulder_BLCL";
	rename -uid "2CAD4492-4B2F-DA4F-85DE-64B3AD687E08";
createNode pairBlend -n "B_elbow_PRBL";
	rename -uid "E4037257-4DC2-B610-8E83-ADAC8E37048C";
createNode blendColors -n "B_elbow_BLCL";
	rename -uid "E2C54DE9-4D00-C747-368D-F6828A8F801B";
createNode pairBlend -n "F_elbow_PRBL";
	rename -uid "30F6761E-4EC7-D0A4-8C95-D5BE67BFAEA1";
createNode blendColors -n "F_elbow_BLCL";
	rename -uid "0693B3D9-479F-1F89-5043-858402F81DF4";
createNode pairBlend -n "wrist_PRBL";
	rename -uid "66961312-4B55-565B-44E8-0C8B626AD077";
createNode blendColors -n "wrist_BLCL";
	rename -uid "41FB4A72-453E-5332-45A9-7687F0AC6F86";
createNode pairBlend -n "toe_PRBL";
	rename -uid "4902213A-4C52-6C0F-C4EC-298A3DB73ECE";
createNode blendColors -n "toe_BLCL";
	rename -uid "7272D675-43CE-3247-7844-D183B647915D";
createNode pairBlend -n "tiptoe_PRBL";
	rename -uid "3DEEA1FA-4A93-28A8-B6CE-30B792B8A4E9";
createNode blendColors -n "tiptoe_BLCL";
	rename -uid "530D2562-45EF-79FE-6B65-C4A95D41A848";
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
	setAttr -s 178 ".u";
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
connectAttr "F_IK_foot_IKH_stretched_space.reBuildMode" "set_Qarm.reBuildMode" -na
		;
connectAttr "F_IK_toe.reBuildMode" "set_Qarm.reBuildMode" -na;
connectAttr "F_IK_ball.reBuildMode" "set_Qarm.reBuildMode" -na;
connectAttr "F_IK_wrist.reBuildMode" "set_Qarm.reBuildMode" -na;
connectAttr "F_IK_wrist_space_offGRP.reBuildMode" "set_Qarm.reBuildMode" -na;
connectAttr "F_IK_shoulder_aim.reBuildMode" "set_Qarm.reBuildMode" -na;
connectAttr "input_scapula.input" "set_Qarm.input" -na;
connectAttr "input_shoulder.input" "set_Qarm.input" -na;
connectAttr "input_B_elbow.input" "set_Qarm.input" -na;
connectAttr "input_F_elbow.input" "set_Qarm.input" -na;
connectAttr "input_wrist.input" "set_Qarm.input" -na;
connectAttr "input_toe.input" "set_Qarm.input" -na;
connectAttr "input_tiptoe.input" "set_Qarm.input" -na;
connectAttr "poleVec_CTL.reBuildAttr" "set_Qarm.reBuildAttr" -na;
connectAttr "F_IK_foot_CTL.reBuildAttr" "set_Qarm.reBuildAttr" -na;
connectAttr "input_scapula.t" "motion_IK_Qarm_GRP.t";
connectAttr "input_scapula.r" "motion_IK_Qarm_GRP.r";
connectAttr "input_scapula.s" "motion_IK_Qarm_GRP.s";
connectAttr "Qarm_switch_CTL.FK_IK" "motion_IK_Qarm_GRP.v";
connectAttr "IK_shoulder_space_DCMX.ot" "IK_shoulder_space.t";
connectAttr "IK_shoulder_space_DCMX.or" "IK_shoulder_space.r";
connectAttr "IK_shoulder_space_DCMX.os" "IK_shoulder_space.s";
connectAttr "IK_upper_CTLaim_aimConstraint1.crx" "IK_upper_CTLaim.rx";
connectAttr "IK_upper_CTLaim_aimConstraint1.cry" "IK_upper_CTLaim.ry";
connectAttr "IK_upper_CTLaim_aimConstraint1.crz" "IK_upper_CTLaim.rz";
connectAttr "F_softIK_output.output_softik" "upper_softIK_output_LOC.tx";
connectAttr "stretch_output_mul_CTLVal_MULT.ox" "upper_stretch_output_LOC.tx";
connectAttr "IK_lower_CTLaim_aimConstraint1.crx" "IK_lower_CTLaim.rx";
connectAttr "IK_lower_CTLaim_aimConstraint1.cry" "IK_lower_CTLaim.ry";
connectAttr "IK_lower_CTLaim_aimConstraint1.crz" "IK_lower_CTLaim.rz";
connectAttr "F_softIK_output.output_extended_softik" "lower_softIK_output_LOC.tx"
		;
connectAttr "loQarm_stretch_output_mul_CTLlVal_MULT.ox" "lower_stretch_output_LOC.tx"
		;
connectAttr "IK_lower_CTLaim.pim" "IK_lower_CTLaim_aimConstraint1.cpim";
connectAttr "IK_lower_CTLaim.t" "IK_lower_CTLaim_aimConstraint1.ct";
connectAttr "IK_lower_CTLaim.rp" "IK_lower_CTLaim_aimConstraint1.crp";
connectAttr "IK_lower_CTLaim.rpt" "IK_lower_CTLaim_aimConstraint1.crt";
connectAttr "IK_lower_CTLaim.ro" "IK_lower_CTLaim_aimConstraint1.cro";
connectAttr "F_IK_wrist.t" "IK_lower_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_IK_wrist.rp" "IK_lower_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_IK_wrist.rpt" "IK_lower_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_IK_wrist.pm" "IK_lower_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_lower_CTLaim_aimConstraint1.w0" "IK_lower_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_space_upVec.wm" "IK_lower_CTLaim_aimConstraint1.wum";
connectAttr "IK_upper_CTLaim.pim" "IK_upper_CTLaim_aimConstraint1.cpim";
connectAttr "IK_upper_CTLaim.t" "IK_upper_CTLaim_aimConstraint1.ct";
connectAttr "IK_upper_CTLaim.rp" "IK_upper_CTLaim_aimConstraint1.crp";
connectAttr "IK_upper_CTLaim.rpt" "IK_upper_CTLaim_aimConstraint1.crt";
connectAttr "IK_upper_CTLaim.ro" "IK_upper_CTLaim_aimConstraint1.cro";
connectAttr "F_IK_wrist_space.t" "IK_upper_CTLaim_aimConstraint1.tg[0].tt";
connectAttr "F_IK_wrist_space.rp" "IK_upper_CTLaim_aimConstraint1.tg[0].trp";
connectAttr "F_IK_wrist_space.rpt" "IK_upper_CTLaim_aimConstraint1.tg[0].trt";
connectAttr "F_IK_wrist_space.pm" "IK_upper_CTLaim_aimConstraint1.tg[0].tpm";
connectAttr "IK_upper_CTLaim_aimConstraint1.w0" "IK_upper_CTLaim_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_shoulder_space_upVec.wm" "IK_upper_CTLaim_aimConstraint1.wum";
connectAttr "soft_QarmLen_PMA.o1" "F_softIK_input.uparmLen";
connectAttr "upIKLen.d" "F_softIK_input.CTLLen";
connectAttr "IK_negate_val_MULT.ox" "F_softIK_input.softik_CTL_value";
connectAttr "loIKLen.d" "F_softIK_input.loarmIK_len";
connectAttr "loQarm_soft_Len_PMA.o1" "F_softIK_input.loarm_len";
connectAttr "CTLlen_COND.ocr" "F_softIK_output.output_softik";
connectAttr "loQarm_CTLlen_COND.ocr" "F_softIK_output.output_extended_softik";
connectAttr "F_softIK_output.output_softik" "F_stretchIK_input.softik_len";
connectAttr "IK_negate_val_MULT.oy" "F_stretchIK_input.stretch_ctrl_value";
connectAttr "upQarmLen.d" "F_stretchIK_input.uparm_len";
connectAttr "upIKLen.d" "F_stretchIK_input.ctrl_len";
connectAttr "midQarmLen.d" "F_stretchIK_input.loarm_len";
connectAttr "loQarmLen.d" "F_stretchIK_input.extendedarm_len";
connectAttr "F_softIK_output.output_extended_softik" "F_stretchIK_input.extended_softik_len"
		;
connectAttr "loIKLen.d" "F_stretchIK_input.extended_ctrl_len";
connectAttr "midQarm_plus_stretch_PMA.o1" "F_stretchIK_output.loarm_stretched";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "F_stretchIK_output.stretch_ctrl_value"
		;
connectAttr "stretchedLen_SUBT.o1" "F_stretchIK_output.stretched_len";
connectAttr "upQarm_plus_stretch_PMA.o1" "F_stretchIK_output.uparm_stretched";
connectAttr "loQarm_plus_stretch_PMA.o1" "F_stretchIK_output.extendedarm_stretched"
		;
connectAttr "loQarm_stretchedLen_SUBT.o1" "F_stretchIK_output.expand_stretched_len"
		;
connectAttr "scapula_CTL_local_DCMX.ot" "IK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "IK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "IK_scapula.r";
connectAttr "input_scapula.r" "IK_scapula.jo";
connectAttr "IK_shoulder_CTL_local_DCMX.ot" "IK_shoulder.t";
connectAttr "IK_scapula.s" "IK_shoulder.is";
connectAttr "IK_shoulder_CTL.s" "IK_shoulder.s";
connectAttr "input_shoulder.r" "IK_shoulder.jo";
connectAttr "F_stretchIK_output.uparm_stretched" "IK_B_elbow.tx";
connectAttr "IK_shoulder.s" "IK_B_elbow.is";
connectAttr "input_B_elbow.r" "IK_B_elbow.jo";
connectAttr "F_stretchIK_output.loarm_stretched" "IK_F_elbow.tx";
connectAttr "IK_B_elbow.s" "IK_F_elbow.is";
connectAttr "F_wrist_space_scale_DCMX.os" "IK_F_elbow.s";
connectAttr "input_F_elbow.r" "IK_F_elbow.jo";
connectAttr "IK_F_elbow.s" "IK_wrist.is";
connectAttr "F_stretchIK_output.extendedarm_stretched" "IK_wrist.tx";
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
connectAttr "F_IK_scapula_aim_space_aimConstraint1.crx" "F_IK_scapula_aim_space.rx"
		;
connectAttr "F_IK_scapula_aim_space_aimConstraint1.cry" "F_IK_scapula_aim_space.ry"
		;
connectAttr "F_IK_scapula_aim_space_aimConstraint1.crz" "F_IK_scapula_aim_space.rz"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.ctx" "F_IK_scapula_aim_space.tx"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.cty" "F_IK_scapula_aim_space.ty"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.ctz" "F_IK_scapula_aim_space.tz"
		;
connectAttr "F_IK_scapula_aim_space.ro" "F_IK_scapula_aim_space_parentConstraint1.cro"
		;
connectAttr "F_IK_scapula_aim_space.pim" "F_IK_scapula_aim_space_parentConstraint1.cpim"
		;
connectAttr "F_IK_scapula_aim_space.rp" "F_IK_scapula_aim_space_parentConstraint1.crp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "F_IK_scapula_aim_space_parentConstraint1.crt"
		;
connectAttr "IK_scapula.t" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tt";
connectAttr "IK_scapula.rp" "F_IK_scapula_aim_space_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_scapula.rpt" "F_IK_scapula_aim_space_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_scapula.r" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tr";
connectAttr "IK_scapula.ro" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_scapula.s" "F_IK_scapula_aim_space_parentConstraint1.tg[0].ts";
connectAttr "IK_scapula.pm" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tpm"
		;
connectAttr "IK_scapula.jo" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tjo"
		;
connectAttr "IK_scapula.ssc" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tsc"
		;
connectAttr "IK_scapula.is" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tis"
		;
connectAttr "F_IK_scapula_aim_space_parentConstraint1.w0" "F_IK_scapula_aim_space_parentConstraint1.tg[0].tw"
		;
connectAttr "F_IK_scapula_aim_space.pim" "F_IK_scapula_aim_space_aimConstraint1.cpim"
		;
connectAttr "F_IK_scapula_aim_space.t" "F_IK_scapula_aim_space_aimConstraint1.ct"
		;
connectAttr "F_IK_scapula_aim_space.rp" "F_IK_scapula_aim_space_aimConstraint1.crp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "F_IK_scapula_aim_space_aimConstraint1.crt"
		;
connectAttr "F_IK_scapula_aim_space.ro" "F_IK_scapula_aim_space_aimConstraint1.cro"
		;
connectAttr "F_IK_foot_CTL.t" "F_IK_scapula_aim_space_aimConstraint1.tg[0].tt";
connectAttr "F_IK_foot_CTL.rp" "F_IK_scapula_aim_space_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_foot_CTL.rpt" "F_IK_scapula_aim_space_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_foot_CTL.pm" "F_IK_scapula_aim_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_scapula_aim_space_aimConstraint1.w0" "F_IK_scapula_aim_space_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_foot_upVec.wm" "F_IK_scapula_aim_space_aimConstraint1.wum";
connectAttr "F_IK_foot_IKH_offGRP_local_DCMX.ot" "F_IK_foot_IKH_offGRP.t";
connectAttr "F_IK_foot_IKH_offGRP_local_DCMX.or" "F_IK_foot_IKH_offGRP.r";
connectAttr "F_IK_foot_IKH_offGRP_local_DCMX.os" "F_IK_foot_IKH_offGRP.s";
connectAttr "F_IK_wrist_CTL.r" "F_IK_foot_IKH_spcGRP.r";
connectAttr "F_IK_wrist_CTL.t" "F_IK_foot_IKH_spcGRP.t";
connectAttr "lower_softIK_output_LOC.tx" "F_IK_foot_IKH_stretched_space.rebuildTransY"
		;
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
connectAttr "F_IK_wrist_IKH_offGRP_local_DCMX.ot" "F_IK_wrist_IKH_offGRP.t";
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.crx" "F_IK_wrist_IKH_offGRP.rx"
		;
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.cry" "F_IK_wrist_IKH_offGRP.ry"
		;
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.crz" "F_IK_wrist_IKH_offGRP.rz"
		;
connectAttr "IK_F_elbow.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikSCsolver1.msg" "ikHandle2.hsv";
connectAttr "F_IK_wrist_IKH_offGRP.pim" "F_IK_wrist_IKH_offGRP_aimConstraint1.cpim"
		;
connectAttr "F_IK_wrist_IKH_offGRP.t" "F_IK_wrist_IKH_offGRP_aimConstraint1.ct";
connectAttr "F_IK_wrist_IKH_offGRP.rp" "F_IK_wrist_IKH_offGRP_aimConstraint1.crp"
		;
connectAttr "F_IK_wrist_IKH_offGRP.rpt" "F_IK_wrist_IKH_offGRP_aimConstraint1.crt"
		;
connectAttr "F_IK_wrist_IKH_offGRP.ro" "F_IK_wrist_IKH_offGRP_aimConstraint1.cro"
		;
connectAttr "F_IK_wrist_space.t" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].tt"
		;
connectAttr "F_IK_wrist_space.rp" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_wrist_space.rpt" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_wrist_space.pm" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_IKH_offGRP_aimConstraint1.w0" "F_IK_wrist_IKH_offGRP_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_wrist_upVec.wm" "F_IK_wrist_IKH_offGRP_aimConstraint1.wum";
connectAttr "F_IK_B_elbow_aim_space_local_DCMX.ot" "F_IK_B_elbow_aim_space.t";
connectAttr "F_IK_B_elbow_aim_space_local_DCMX.or" "F_IK_B_elbow_aim_space.r";
connectAttr "F_IK_B_elbow_aim_space_local_DCMX.os" "F_IK_B_elbow_aim_space.s";
connectAttr "input_scapula.t" "motion_FK_Qarm_GRP.t";
connectAttr "input_scapula.r" "motion_FK_Qarm_GRP.r";
connectAttr "input_scapula.s" "motion_FK_Qarm_GRP.s";
connectAttr "scapula_CTL.t" "FK_scapula.t";
connectAttr "scapula_CTL_local_DCMX.os" "FK_scapula.s";
connectAttr "scapula_CTL_local_DCMX.or" "FK_scapula.r";
connectAttr "input_scapula.r" "FK_scapula.jo";
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
connectAttr "input_scapula.t" "Qarm_CTL_GRP.t";
connectAttr "input_scapula.r" "Qarm_CTL_GRP.r";
connectAttr "input_scapula.s" "Qarm_CTL_GRP.s";
connectAttr "Qarm_mirror_scale_COND.oc" "scapula_CTL_offGRP.s";
connectAttr "makeNurbCircle1.oc" "scapula_CTLShape.cr";
connectAttr "scapula_CTL_inverse_DCMX.os" "scapula_CTL_ivsScale.s";
connectAttr "input_shoulder.t" "IK_shoulder_CTL_offGRP.t";
connectAttr "Qarm_switch_CTL.FK_IK" "IK_shoulder_CTL_offGRP.v";
connectAttr "Qarm_mirror_scale_COND.oc" "IK_shoulder_CTL_offGRP.s";
connectAttr "Qarm_switch_CTL.FK_IK" "IK_Qarm_CTL_GRP.v";
connectAttr "input_shoulder.t" "IK_Qarm_CTL_GRP.t";
connectAttr "input_wrist_local_DCMX.ot" "F_input_F_toe_space.t";
connectAttr "input_wrist_local_DCMX.os" "F_input_F_toe_space.s";
connectAttr "unitConversion12.o" "F_IK_foot_CTL_spcGRP.r";
connectAttr "unitConversion1.o" "F_IK_heel.rx";
connectAttr "unitConversion4.o" "F_IK_heel.rz";
connectAttr "unitConversion5.o" "F_IK_heel.ry";
connectAttr "in_out_condition.oc" "F_IK_heel.rp";
connectAttr "unitConversion3.o" "F_IK_toe.rx";
connectAttr "unitConversion6.o" "F_IK_toe.ry";
connectAttr "input_tiptoe_local_DCMX.ot" "F_IK_toe.rebuildTrans";
connectAttr "unitConversion2.o" "F_IK_ball.rx";
connectAttr "input_toe_local_DCMX.ot" "F_IK_ball.rebuildTrans";
connectAttr "input_wrist_local_DCMX1.ot" "F_IK_wrist.rebuildTrans";
connectAttr "F_IK_wrist_aim_space_orientConstraint1.crx" "F_IK_wrist_aim_space.rx"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.cry" "F_IK_wrist_aim_space.ry"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.crz" "F_IK_wrist_aim_space.rz"
		;
connectAttr "input_F_elbow_local_DCMX.ot" "F_IK_wrist_space_offGRP.rebuildTrans"
		;
connectAttr "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX.ot" "F_IK_ball_HIK_offGRP.t";
connectAttr "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX.or" "F_IK_ball_HIK_offGRP.r";
connectAttr "IK_wrist.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikSCsolver1.msg" "ikHandle3.hsv";
connectAttr "F_IK_toe2F_IK_toes_offGRP_DCMX.ot" "F_IK_toes_offGRP.t";
connectAttr "F_IK_toe2F_IK_toes_offGRP_DCMX.or" "F_IK_toes_offGRP.r";
connectAttr "F_IK_toes_CTL.r" "F_IK_toes_spcGRP.r";
connectAttr "IK_toe.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikSCsolver1.msg" "ikHandle4.hsv";
connectAttr "F_IK_wrist_aim_space.ro" "F_IK_wrist_aim_space_orientConstraint1.cro"
		;
connectAttr "F_IK_wrist_aim_space.pim" "F_IK_wrist_aim_space_orientConstraint1.cpim"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.r" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tr"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.ro" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tro"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.pm" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.w0" "F_IK_wrist_aim_space_orientConstraint1.tg[0].tw"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.r" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tr"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.ro" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tro"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.pm" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tpm"
		;
connectAttr "F_IK_wrist_aim_space_orientConstraint1.w1" "F_IK_wrist_aim_space_orientConstraint1.tg[1].tw"
		;
connectAttr "unitConversion7.o" "F_IK_wrist_aim_space_orientConstraint1.w0";
connectAttr "toesAim_RVS.ox" "F_IK_wrist_aim_space_orientConstraint1.w1";
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crx" "F_IK_wrist_HIK_aim_space_01.rx"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.cry" "F_IK_wrist_HIK_aim_space_01.ry"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crz" "F_IK_wrist_HIK_aim_space_01.rz"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.pim" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.cpim"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.t" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.ct"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.rp" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crp"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.rpt" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.crt"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01.ro" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.cro"
		;
connectAttr "IK_shoulder.t" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tt"
		;
connectAttr "IK_shoulder.rp" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].trp"
		;
connectAttr "IK_shoulder.rpt" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].trt"
		;
connectAttr "IK_shoulder.pm" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_HIK_aim_space_01_aimConstraint1.w0" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_aim_01.wm" "F_IK_wrist_HIK_aim_space_01_aimConstraint1.wum"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crx" "F_IK_wrist_HIK_aim_space_02.rx"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.cry" "F_IK_wrist_HIK_aim_space_02.ry"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crz" "F_IK_wrist_HIK_aim_space_02.rz"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.pim" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.cpim"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.t" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.ct"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.rp" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crp"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.rpt" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.crt"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02.ro" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.cro"
		;
connectAttr "F_IK_shoulder_aim.t" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tt"
		;
connectAttr "F_IK_shoulder_aim.rp" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].trp"
		;
connectAttr "F_IK_shoulder_aim.rpt" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].trt"
		;
connectAttr "F_IK_shoulder_aim.pm" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tpm"
		;
connectAttr "F_IK_wrist_HIK_aim_space_02_aimConstraint1.w0" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.tg[0].tw"
		;
connectAttr "IK_wrist_aim_02.wm" "F_IK_wrist_HIK_aim_space_02_aimConstraint1.wum"
		;
connectAttr "input_F_elbow2F_IK_shoulder_aim_DCMX.ot" "F_IK_shoulder_aim.rebuildTrans"
		;
connectAttr "unitConversion9.o" "F_IK_shoulder_aim.rebuildRot";
connectAttr "poleVec_follow_PRBL.ot" "poleVec_CTL_follow_GRP.t";
connectAttr "poleVec_follow_PRBL.or" "poleVec_CTL_follow_GRP.r";
connectAttr "poleVec_input_space_aimConstraint1.crx" "poleVec_input_space.rx";
connectAttr "poleVec_input_space_aimConstraint1.cry" "poleVec_input_space.ry";
connectAttr "poleVec_input_space_aimConstraint1.crz" "poleVec_input_space.rz";
connectAttr "poleVec_input_space_parentConstraint1.ctx" "poleVec_input_space.tx"
		;
connectAttr "poleVec_input_space_parentConstraint1.cty" "poleVec_input_space.ty"
		;
connectAttr "poleVec_input_space_parentConstraint1.ctz" "poleVec_input_space.tz"
		;
connectAttr "poleVec_input_space.ro" "poleVec_input_space_parentConstraint1.cro"
		;
connectAttr "poleVec_input_space.pim" "poleVec_input_space_parentConstraint1.cpim"
		;
connectAttr "poleVec_input_space.rp" "poleVec_input_space_parentConstraint1.crp"
		;
connectAttr "poleVec_input_space.rpt" "poleVec_input_space_parentConstraint1.crt"
		;
connectAttr "input_B_elbow.t" "poleVec_input_space_parentConstraint1.tg[0].tt";
connectAttr "input_B_elbow.rp" "poleVec_input_space_parentConstraint1.tg[0].trp"
		;
connectAttr "input_B_elbow.rpt" "poleVec_input_space_parentConstraint1.tg[0].trt"
		;
connectAttr "input_B_elbow.r" "poleVec_input_space_parentConstraint1.tg[0].tr";
connectAttr "input_B_elbow.ro" "poleVec_input_space_parentConstraint1.tg[0].tro"
		;
connectAttr "input_B_elbow.s" "poleVec_input_space_parentConstraint1.tg[0].ts";
connectAttr "input_B_elbow.pm" "poleVec_input_space_parentConstraint1.tg[0].tpm"
		;
connectAttr "poleVec_input_space_parentConstraint1.w0" "poleVec_input_space_parentConstraint1.tg[0].tw"
		;
connectAttr "poleVec_input_space.pim" "poleVec_input_space_aimConstraint1.cpim";
connectAttr "poleVec_input_space.t" "poleVec_input_space_aimConstraint1.ct";
connectAttr "poleVec_input_space.rp" "poleVec_input_space_aimConstraint1.crp";
connectAttr "poleVec_input_space.rpt" "poleVec_input_space_aimConstraint1.crt";
connectAttr "poleVec_input_space.ro" "poleVec_input_space_aimConstraint1.cro";
connectAttr "input_F_elbow.t" "poleVec_input_space_aimConstraint1.tg[0].tt";
connectAttr "input_F_elbow.rp" "poleVec_input_space_aimConstraint1.tg[0].trp";
connectAttr "input_F_elbow.rpt" "poleVec_input_space_aimConstraint1.tg[0].trt";
connectAttr "input_F_elbow.pm" "poleVec_input_space_aimConstraint1.tg[0].tpm";
connectAttr "poleVec_input_space_aimConstraint1.w0" "poleVec_input_space_aimConstraint1.tg[0].tw"
		;
connectAttr "F_IK_B_elbow_upVec.wm" "poleVec_input_space_aimConstraint1.wum";
connectAttr "poleVec_aim_space_parentConstraint1.ctx" "poleVec_aim_space.tx";
connectAttr "poleVec_aim_space_parentConstraint1.cty" "poleVec_aim_space.ty";
connectAttr "poleVec_aim_space_parentConstraint1.ctz" "poleVec_aim_space.tz";
connectAttr "poleVec_aim_space_parentConstraint1.crx" "poleVec_aim_space.rx";
connectAttr "poleVec_aim_space_parentConstraint1.cry" "poleVec_aim_space.ry";
connectAttr "poleVec_aim_space_parentConstraint1.crz" "poleVec_aim_space.rz";
connectAttr "poleVec_aim_space.ro" "poleVec_aim_space_parentConstraint1.cro";
connectAttr "poleVec_aim_space.pim" "poleVec_aim_space_parentConstraint1.cpim";
connectAttr "poleVec_aim_space.rp" "poleVec_aim_space_parentConstraint1.crp";
connectAttr "poleVec_aim_space.rpt" "poleVec_aim_space_parentConstraint1.crt";
connectAttr "F_IK_scapula_aim_space.t" "poleVec_aim_space_parentConstraint1.tg[0].tt"
		;
connectAttr "F_IK_scapula_aim_space.rp" "poleVec_aim_space_parentConstraint1.tg[0].trp"
		;
connectAttr "F_IK_scapula_aim_space.rpt" "poleVec_aim_space_parentConstraint1.tg[0].trt"
		;
connectAttr "F_IK_scapula_aim_space.r" "poleVec_aim_space_parentConstraint1.tg[0].tr"
		;
connectAttr "F_IK_scapula_aim_space.ro" "poleVec_aim_space_parentConstraint1.tg[0].tro"
		;
connectAttr "F_IK_scapula_aim_space.s" "poleVec_aim_space_parentConstraint1.tg[0].ts"
		;
connectAttr "F_IK_scapula_aim_space.pm" "poleVec_aim_space_parentConstraint1.tg[0].tpm"
		;
connectAttr "poleVec_aim_space_parentConstraint1.w0" "poleVec_aim_space_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIK_RVS.ox" "FK_Qarm_CTL_GRP.v";
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
connectAttr "Qarm_switch_CTL_space_DCMX.ot" "Qarm_switch_CTL_offGRP.t";
connectAttr "Qarm_switch_CTL_space_DCMX.os" "Qarm_switch_CTL_offGRP.s";
connectAttr "input_scapula.t" "Qarm_output.t";
connectAttr "input_scapula.r" "Qarm_output.r";
connectAttr "input_scapula.s" "Qarm_output.s";
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
connectAttr "IK_shoulder_space_MTMX.o" "IK_shoulder_space_DCMX.imat";
connectAttr "input_shoulder.wm" "IK_shoulder_space_MTMX.i[0]";
connectAttr "motion_IK_Qarm_GRP.wim" "IK_shoulder_space_MTMX.i[1]";
connectAttr "F_stretchIK_output.stretched_len" "stretch_output_mul_CTLVal_MULT.i1x"
		;
connectAttr "F_stretchIK_output.stretch_ctrl_value" "stretch_output_mul_CTLVal_MULT.i2x"
		;
connectAttr "F_stretchIK_output.expand_stretched_len" "loQarm_stretch_output_mul_CTLlVal_MULT.i1x"
		;
connectAttr "F_stretchIK_output.stretch_ctrl_value" "loQarm_stretch_output_mul_CTLlVal_MULT.i2x"
		;
connectAttr "upQarmLen.d" "soft_QarmLen_PMA.i1[0]";
connectAttr "midQarmLen.d" "soft_QarmLen_PMA.i1[1]";
connectAttr "input_shoulder_local_MTMX.o" "upQarmLen.im1";
connectAttr "input_elbow_local_MTMX.o" "upQarmLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_MTMX.i[1]";
connectAttr "input_B_elbow.wm" "input_elbow_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_elbow_local_MTMX.i[1]";
connectAttr "input_elbow_local_MTMX.o" "midQarmLen.im1";
connectAttr "input_F_elbow_local_MTMX1.o" "midQarmLen.im2";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX1.i[0]";
connectAttr "input_scapula.wim" "input_F_elbow_local_MTMX1.i[1]";
connectAttr "input_shoulder_local_dist_MTMX.o" "upIKLen.im1";
connectAttr "wrist_space_local_MTMX.o" "upIKLen.im2";
connectAttr "input_shoulder.wm" "input_shoulder_local_dist_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_shoulder_local_dist_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wm" "wrist_space_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "wrist_space_local_MTMX.i[1]";
connectAttr "F_IK_foot_CTL.softIK" "IK_negate_val_MULT.i1x";
connectAttr "F_IK_foot_CTL.stretch" "IK_negate_val_MULT.i1y";
connectAttr "input_F_elbow_local_MTMX.o" "loIKLen.im1";
connectAttr "F_toe_CTL_local_MTMX.o" "loIKLen.im2";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX.i[0]";
connectAttr "input_B_elbow.wim" "input_F_elbow_local_MTMX.i[1]";
connectAttr "F_IK_wrist.wm" "F_toe_CTL_local_MTMX.i[0]";
connectAttr "input_B_elbow.wim" "F_toe_CTL_local_MTMX.i[1]";
connectAttr "midQarmLen.d" "loQarm_soft_Len_PMA.i1[0]";
connectAttr "loQarmLen.d" "loQarm_soft_Len_PMA.i1[1]";
connectAttr "input_F_elbow_local_MTMX1.o" "loQarmLen.im1";
connectAttr "input_F_toe01_local_MTMX.o" "loQarmLen.im2";
connectAttr "input_wrist.wm" "input_F_toe01_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "input_F_toe01_local_MTMX.i[1]";
connectAttr "softikV_COND.ocr" "CTLlen_COND.ctr";
connectAttr "F_softIK_input.CTLLen" "CTLlen_COND.cfr";
connectAttr "F_softIK_input.CTLLen" "CTLlen_COND.ft";
connectAttr "Qarmlen_minus_softikV_SUBT.o1" "CTLlen_COND.st";
connectAttr "result_softik_len_SUBT.o1" "softikV_COND.ctr";
connectAttr "F_softIK_input.uparmLen" "softikV_COND.cfr";
connectAttr "F_softIK_input.softik_CTL_value" "softikV_COND.ft";
connectAttr "F_softIK_input.uparmLen" "result_softik_len_SUBT.i1[0]";
connectAttr "mult_softikV_MULT.ox" "result_softik_len_SUBT.i1[1]";
connectAttr "power_val_POW.ox" "mult_softikV_MULT.i2x";
connectAttr "F_softIK_input.softik_CTL_value" "mult_softikV_MULT.i1x";
connectAttr "negate_val_MULT.ox" "power_val_POW.i2x";
connectAttr "divide_upQarm_softikV_DIVD.ox" "negate_val_MULT.i1x";
connectAttr "CTLLen_minue_dif_SUBT.o1" "divide_upQarm_softikV_DIVD.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_upQarm_softikV_DIVD.i2x";
connectAttr "F_softIK_input.CTLLen" "CTLLen_minue_dif_SUBT.i1[0]";
connectAttr "Qarmlen_minus_softikV_SUBT.o1" "CTLLen_minue_dif_SUBT.i1[1]";
connectAttr "F_softIK_input.uparmLen" "Qarmlen_minus_softikV_SUBT.i1[0]";
connectAttr "F_softIK_input.softik_CTL_value" "Qarmlen_minus_softikV_SUBT.i1[1]"
		;
connectAttr "F_softIK_input.softik_CTL_value" "for_zerodivide_COND.ft";
connectAttr "F_softIK_input.softik_CTL_value" "for_zerodivide_COND.cfr";
connectAttr "loQarm_softikV_COND.ocr" "loQarm_CTLlen_COND.ctr";
connectAttr "F_softIK_input.loarmIK_len" "loQarm_CTLlen_COND.cfr";
connectAttr "F_softIK_input.loarmIK_len" "loQarm_CTLlen_COND.ft";
connectAttr "loQarm_Qarmlen_minus_softikV_SUBT.o1" "loQarm_CTLlen_COND.st";
connectAttr "loQarm_result_softik_len_SUBT.o1" "loQarm_softikV_COND.ctr";
connectAttr "F_softIK_input.loarm_len" "loQarm_softikV_COND.cfr";
connectAttr "F_softIK_input.softik_CTL_value" "loQarm_softikV_COND.ft";
connectAttr "F_softIK_input.loarm_len" "loQarm_result_softik_len_SUBT.i1[0]";
connectAttr "loQarm_mult_softikV_MULT.ox" "loQarm_result_softik_len_SUBT.i1[1]";
connectAttr "loQarm_power_val_POW.ox" "loQarm_mult_softikV_MULT.i2x";
connectAttr "F_softIK_input.softik_CTL_value" "loQarm_mult_softikV_MULT.i1x";
connectAttr "loQarm_negate_val_MULT.ox" "loQarm_power_val_POW.i2x";
connectAttr "divide_loQarm_softikV_DIVD.ox" "loQarm_negate_val_MULT.i1x";
connectAttr "loQarm_ctrlLen_minue_dif_SUBT.o1" "divide_loQarm_softikV_DIVD.i1x";
connectAttr "for_zerodivide_COND.ocr" "divide_loQarm_softikV_DIVD.i2x";
connectAttr "F_softIK_input.loarmIK_len" "loQarm_ctrlLen_minue_dif_SUBT.i1[0]";
connectAttr "loQarm_Qarmlen_minus_softikV_SUBT.o1" "loQarm_ctrlLen_minue_dif_SUBT.i1[1]"
		;
connectAttr "F_softIK_input.loarm_len" "loQarm_Qarmlen_minus_softikV_SUBT.i1[0]"
		;
connectAttr "F_softIK_input.softik_CTL_value" "loQarm_Qarmlen_minus_softikV_SUBT.i1[1]"
		;
connectAttr "F_stretchIK_input.loarm_len" "midQarm_plus_stretch_PMA.i1[0]";
connectAttr "stretchCtrl_midQarm_MULT.ox" "midQarm_plus_stretch_PMA.i1[1]";
connectAttr "stretched_midQarmLen_MULT.ox" "stretchCtrl_midQarm_MULT.i1x";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "stretchCtrl_midQarm_MULT.i2x"
		;
connectAttr "stretchedLen_SUBT.o1" "stretched_midQarmLen_MULT.i1x";
connectAttr "midQarm_ratio3_DIVD.ox" "stretched_midQarmLen_MULT.i2x";
connectAttr "F_stretchIK_input.ctrl_len" "stretchedLen_SUBT.i1[0]";
connectAttr "F_stretchIK_input.softik_len" "stretchedLen_SUBT.i1[1]";
connectAttr "stretch_QarmLen_PMA.o1" "midQarm_ratio3_DIVD.i2x";
connectAttr "F_stretchIK_input.loarm_len" "midQarm_ratio3_DIVD.i1x";
connectAttr "F_stretchIK_input.uparm_len" "stretch_QarmLen_PMA.i1[0]";
connectAttr "F_stretchIK_input.loarm_len" "stretch_QarmLen_PMA.i1[1]";
connectAttr "F_stretchIK_input.extendedarm_len" "stretch_QarmLen_PMA.i1[2]";
connectAttr "F_stretchIK_input.uparm_len" "upQarm_plus_stretch_PMA.i1[0]";
connectAttr "stretchCtrl_upQarm_MULT.ox" "upQarm_plus_stretch_PMA.i1[1]";
connectAttr "stretched_upQarmLen_MULT.ox" "stretchCtrl_upQarm_MULT.i1x";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "stretchCtrl_upQarm_MULT.i2x"
		;
connectAttr "uparm_ratio.ox" "stretched_upQarmLen_MULT.i2x";
connectAttr "stretchedLen_SUBT.o1" "stretched_upQarmLen_MULT.i1x";
connectAttr "F_stretchIK_input.uparm_len" "uparm_ratio.i1x";
connectAttr "stretch_QarmLen_PMA.o1" "uparm_ratio.i2x";
connectAttr "F_stretchIK_input.extendedarm_len" "loQarm_plus_stretch_PMA.i1[0]";
connectAttr "loQarm_stretchCtrl_Qarm_MULT.ox" "loQarm_plus_stretch_PMA.i1[1]";
connectAttr "F_stretchIK_input.stretch_ctrl_value" "loQarm_stretchCtrl_Qarm_MULT.i1x"
		;
connectAttr "loQarm_stretched_Qarm_MULT.ox" "loQarm_stretchCtrl_Qarm_MULT.i2x";
connectAttr "loQarm_stretchedLen_SUBT.o1" "loQarm_stretched_Qarm_MULT.i1x";
connectAttr "loQarm_ratio_DIVD.ox" "loQarm_stretched_Qarm_MULT.i2x";
connectAttr "F_stretchIK_input.extended_ctrl_len" "loQarm_stretchedLen_SUBT.i1[0]"
		;
connectAttr "F_stretchIK_input.extended_softik_len" "loQarm_stretchedLen_SUBT.i1[1]"
		;
connectAttr "loQarm_stretch_QarmLen_PMA.o1" "loQarm_ratio_DIVD.i2x";
connectAttr "F_stretchIK_input.extendedarm_len" "loQarm_ratio_DIVD.i1x";
connectAttr "F_stretchIK_input.loarm_len" "loQarm_stretch_QarmLen_PMA.i1[0]";
connectAttr "F_stretchIK_input.extendedarm_len" "loQarm_stretch_QarmLen_PMA.i1[1]"
		;
connectAttr "F_stretchIK_input.uparm_len" "loQarm_stretch_QarmLen_PMA.i1[2]";
connectAttr "scapula_CTL_local_MTMX.o" "scapula_CTL_local_DCMX.imat";
connectAttr "scapula_CTL.wm" "scapula_CTL_local_MTMX.i[0]";
connectAttr "input_scapula.wim" "scapula_CTL_local_MTMX.i[1]";
connectAttr "IK_shoulder_CTL_local_MTMX.o" "IK_shoulder_CTL_local_DCMX.imat";
connectAttr "IK_shoulder_CTL.wm" "IK_shoulder_CTL_local_MTMX.i[0]";
connectAttr "IK_scapula.wim" "IK_shoulder_CTL_local_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wm" "F_wrist_space_scale_DCMX.imat";
connectAttr "F_IK_wrist_CTL.wm" "F_wrist_CTL_scale_DCMX.imat";
connectAttr "F_IK_ball_CTL.wm" "F_ball_CTL_scale_DCMX.imat";
connectAttr "F_IK_foot_IKH_offGRP_local_MTMX.o" "F_IK_foot_IKH_offGRP_local_DCMX.imat"
		;
connectAttr "F_IK_wrist_aim_space.wm" "F_IK_foot_IKH_offGRP_local_MTMX.i[0]";
connectAttr "motion_IK_Qarm_GRP.wim" "F_IK_foot_IKH_offGRP_local_MTMX.i[1]";
connectAttr "F_IK_wrist_IKH_offGRP_local_MTMX.o" "F_IK_wrist_IKH_offGRP_local_DCMX.imat"
		;
connectAttr "F_IK_wrist.wm" "F_IK_wrist_IKH_offGRP_local_MTMX.i[0]";
connectAttr "motion_IK_Qarm_GRP.wim" "F_IK_wrist_IKH_offGRP_local_MTMX.i[1]";
connectAttr "F_IK_B_elbow_aim_space_local_MTMX.o" "F_IK_B_elbow_aim_space_local_DCMX.imat"
		;
connectAttr "input_B_elbow.wm" "F_IK_B_elbow_aim_space_local_MTMX.i[0]";
connectAttr "motion_IK_Qarm_GRP.wim" "F_IK_B_elbow_aim_space_local_MTMX.i[1]";
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
connectAttr "set_Qarm.mirror" "Qarm_mirror_scale_COND.ft";
connectAttr "scapula_CTL.wim" "scapula_CTL_inverse_DCMX.imat";
connectAttr "input_wrist_local_MTMX1.o" "input_wrist_local_DCMX.imat";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX1.i[0]";
connectAttr "IK_Qarm_CTL_GRP.wim" "input_wrist_local_MTMX1.i[1]";
connectAttr "Qarm_mirror_rotate_COND.oc" "unitConversion12.i";
connectAttr "set_Qarm.mirror" "Qarm_mirror_rotate_COND.ft";
connectAttr "ball_bk_condition.ocr" "unitConversion1.i";
connectAttr "F_IK_foot_CTL.roll" "ball_bk_condition.ft";
connectAttr "F_IK_foot_CTL.roll" "ball_bk_condition.cfr";
connectAttr "F_IK_foot_CTL.bank" "unitConversion4.i";
connectAttr "F_IK_foot_CTL.heelTwist" "unitConversion5.i";
connectAttr "F_IK_foot_CTL.bank" "in_out_condition.ft";
connectAttr "in_out_default_condition.oc" "in_out_condition.ct";
connectAttr "F_IK_heel_out.t" "in_out_condition.cf";
connectAttr "F_IK_foot_CTL.bank" "in_out_default_condition.ft";
connectAttr "F_IK_heel_in.t" "in_out_default_condition.cf";
connectAttr "toe_fn_condition.ocr" "unitConversion3.i";
connectAttr "F_IK_foot_CTL.rollStartAngle" "toe_fn_condition.st";
connectAttr "F_IK_foot_CTL.roll" "toe_fn_condition.ft";
connectAttr "roll_angle_SUBT.o1" "toe_fn_condition.ctr";
connectAttr "F_IK_foot_CTL.roll" "roll_angle_SUBT.i1[0]";
connectAttr "F_IK_foot_CTL.rollStartAngle" "roll_angle_SUBT.i1[1]";
connectAttr "F_IK_foot_CTL.toeTwist" "unitConversion6.i";
connectAttr "input_tiptoe_local_MTMX.o" "input_tiptoe_local_DCMX.imat";
connectAttr "input_tiptoe.wm" "input_tiptoe_local_MTMX.i[0]";
connectAttr "F_IK_heel_CTL.wim" "input_tiptoe_local_MTMX.i[1]";
connectAttr "ball_start_conditon.ocr" "unitConversion2.i";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.ft";
connectAttr "F_IK_foot_CTL.rollStartAngle" "ball_start_conditon.st";
connectAttr "backto_zero_ball_SUBT.o1" "ball_start_conditon.ctr";
connectAttr "ball_fn_condition.ocr" "ball_start_conditon.cfr";
connectAttr "F_IK_foot_CTL.roll" "ball_fn_condition.ft";
connectAttr "F_IK_foot_CTL.roll" "ball_fn_condition.ctr";
connectAttr "F_IK_foot_CTL.rollStartAngle" "backto_zero_ball_SUBT.i1[0]";
connectAttr "ball_remap.ov" "backto_zero_ball_SUBT.i1[1]";
connectAttr "after_ball_start_SUBT.o1" "ball_remap.i";
connectAttr "F_IK_foot_CTL.rollStartAngle" "ball_remap.omx";
connectAttr "F_IK_foot_CTL.roll" "after_ball_start_SUBT.i1[0]";
connectAttr "F_IK_foot_CTL.rollStartAngle" "after_ball_start_SUBT.i1[1]";
connectAttr "input_toe_local_MTMX.o" "input_toe_local_DCMX.imat";
connectAttr "input_toe.wm" "input_toe_local_MTMX.i[0]";
connectAttr "F_IK_toe_CTL.wim" "input_toe_local_MTMX.i[1]";
connectAttr "input_wrist_local_MTMX.o" "input_wrist_local_DCMX1.imat";
connectAttr "input_wrist.wm" "input_wrist_local_MTMX.i[0]";
connectAttr "F_IK_ball_CTL.wim" "input_wrist_local_MTMX.i[1]";
connectAttr "input_F_elbow_local_MTMX2.o" "input_F_elbow_local_DCMX.imat";
connectAttr "input_F_elbow.wm" "input_F_elbow_local_MTMX2.i[0]";
connectAttr "F_IK_wrist_aim_space.wim" "input_F_elbow_local_MTMX2.i[1]";
connectAttr "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.o" "F_IK_ball2F_IK_ball_HIK_offGRP_DCMX.imat"
		;
connectAttr "F_IK_ball_HIK_offGRP.offset" "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.i[0]"
		;
connectAttr "F_IK_ball.wm" "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wim" "F_IK_ball2F_IK_ball_HIK_offGRP_MTMX.i[2]";
connectAttr "F_IK_toe2F_IK_toes_offGRP_MTMX.o" "F_IK_toe2F_IK_toes_offGRP_DCMX.imat"
		;
connectAttr "F_IK_toes_offGRP.offset" "F_IK_toe2F_IK_toes_offGRP_MTMX.i[0]";
connectAttr "F_IK_toe.wm" "F_IK_toe2F_IK_toes_offGRP_MTMX.i[1]";
connectAttr "F_IK_wrist_space.wim" "F_IK_toe2F_IK_toes_offGRP_MTMX.i[2]";
connectAttr "F_IK_foot_CTL.toesAim" "unitConversion7.i";
connectAttr "unitConversion7.o" "toesAim_RVS.ix";
connectAttr "input_F_elbow2F_IK_shoulder_aim_MTMX.o" "input_F_elbow2F_IK_shoulder_aim_DCMX.imat"
		;
connectAttr "F_IK_shoulder_aim.offset" "input_F_elbow2F_IK_shoulder_aim_MTMX.i[0]"
		;
connectAttr "input_F_elbow.wm" "input_F_elbow2F_IK_shoulder_aim_MTMX.i[1]";
connectAttr "F_IK_foot_CTL.wim" "input_F_elbow2F_IK_shoulder_aim_MTMX.i[2]";
connectAttr "input_F_elbow2F_IK_shoulder_aim_DCMX.or" "unitConversion9.i";
connectAttr "poleVec_input_space.t" "poleVec_follow_PRBL.it1";
connectAttr "poleVec_aim_space.t" "poleVec_follow_PRBL.it2";
connectAttr "poleVec_input_space.r" "poleVec_follow_PRBL.ir1";
connectAttr "poleVec_aim_space.r" "poleVec_follow_PRBL.ir2";
connectAttr "unitConversion8.o" "poleVec_follow_PRBL.w";
connectAttr "poleVec_CTL.follow" "unitConversion8.i";
connectAttr "Qarm_switch_CTL.FK_IK" "FKIK_RVS.ix";
connectAttr "FK_scapula_space.wim" "FK_scapula_space_inverse_DCMX.imat";
connectAttr "FK_shoulder_CTL.wim" "FK_shoulder_CTL_inverse_DCMX.imat";
connectAttr "FK_B_elbow_CTL.wim" "FK_B_elbow_CTL_inverse_DCMX.imat";
connectAttr "FK_F_elbow_CTL.wim" "FK_F_elbow_CTL_inverse_DCMX.imat";
connectAttr "FK_F_wrist_CTL.wim" "FK_F_wrist_CTL_inverse_DCMX.imat";
connectAttr "Qarm_switch_CTL_space_MTMX.o" "Qarm_switch_CTL_space_DCMX.imat";
connectAttr "Qarm_switch_space_CHOI.o" "Qarm_switch_CTL_space_MTMX.i[0]";
connectAttr "Qarm_CTL_GRP.wim" "Qarm_switch_CTL_space_MTMX.i[1]";
connectAttr "FK_F_wrist_CTL.wm" "Qarm_switch_space_CHOI.i[0]";
connectAttr "F_IK_wrist_CTL.wm" "Qarm_switch_space_CHOI.i[1]";
connectAttr "Qarm_switch_CTL.FK_IK" "Qarm_switch_space_CHOI.s";
connectAttr "IK_scapula.t" "scapula_PRBL.it1";
connectAttr "IK_scapula.r" "scapula_PRBL.ir1";
connectAttr "FK_scapula.t" "scapula_PRBL.it2";
connectAttr "FK_scapula.r" "scapula_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "scapula_PRBL.w";
connectAttr "IK_scapula.s" "scapula_BLCL.c1";
connectAttr "FK_scapula.s" "scapula_BLCL.c2";
connectAttr "Qarm_switch_CTL.FK_IK" "scapula_BLCL.b";
connectAttr "IK_shoulder.t" "shoulder_PRBL.it1";
connectAttr "IK_shoulder.r" "shoulder_PRBL.ir1";
connectAttr "FK_shoulder.t" "shoulder_PRBL.it2";
connectAttr "FK_shoulder.r" "shoulder_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "shoulder_PRBL.w";
connectAttr "IK_shoulder.s" "shoulder_BLCL.c1";
connectAttr "FK_shoulder.s" "shoulder_BLCL.c2";
connectAttr "Qarm_switch_CTL.FK_IK" "shoulder_BLCL.b";
connectAttr "IK_B_elbow.t" "B_elbow_PRBL.it1";
connectAttr "IK_B_elbow.r" "B_elbow_PRBL.ir1";
connectAttr "FK_B_elbow.t" "B_elbow_PRBL.it2";
connectAttr "FK_B_elbow.r" "B_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "B_elbow_PRBL.w";
connectAttr "IK_B_elbow.s" "B_elbow_BLCL.c1";
connectAttr "FK_B_elbow.s" "B_elbow_BLCL.c2";
connectAttr "Qarm_switch_CTL.FK_IK" "B_elbow_BLCL.b";
connectAttr "IK_F_elbow.t" "F_elbow_PRBL.it1";
connectAttr "IK_F_elbow.r" "F_elbow_PRBL.ir1";
connectAttr "FK_F_elbow.t" "F_elbow_PRBL.it2";
connectAttr "FK_F_elbow.r" "F_elbow_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "F_elbow_PRBL.w";
connectAttr "IK_F_elbow.s" "F_elbow_BLCL.c1";
connectAttr "FK_F_elbow.s" "F_elbow_BLCL.c2";
connectAttr "Qarm_switch_CTL.FK_IK" "F_elbow_BLCL.b";
connectAttr "IK_wrist.t" "wrist_PRBL.it1";
connectAttr "IK_wrist.r" "wrist_PRBL.ir1";
connectAttr "FK_wrist.t" "wrist_PRBL.it2";
connectAttr "FK_wrist.r" "wrist_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "wrist_PRBL.w";
connectAttr "IK_wrist.s" "wrist_BLCL.c1";
connectAttr "FK_wrist.s" "wrist_BLCL.c2";
connectAttr "Qarm_switch_CTL.FK_IK" "wrist_BLCL.b";
connectAttr "IK_toe.t" "toe_PRBL.it1";
connectAttr "IK_toe.r" "toe_PRBL.ir1";
connectAttr "FK_toe.t" "toe_PRBL.it2";
connectAttr "FK_toe.r" "toe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "toe_PRBL.w";
connectAttr "IK_toe.s" "toe_BLCL.c1";
connectAttr "FK_toe.s" "toe_BLCL.c2";
connectAttr "Qarm_switch_CTL.FK_IK" "toe_BLCL.b";
connectAttr "IK_tiptoe.t" "tiptoe_PRBL.it1";
connectAttr "IK_tiptoe.r" "tiptoe_PRBL.ir1";
connectAttr "FK_tiptoe.t" "tiptoe_PRBL.it2";
connectAttr "FK_tiptoe.r" "tiptoe_PRBL.ir2";
connectAttr "FKIK_RVS.ox" "tiptoe_PRBL.w";
connectAttr "IK_tiptoe.s" "tiptoe_BLCL.c1";
connectAttr "FK_tiptoe.s" "tiptoe_BLCL.c2";
connectAttr "Qarm_switch_CTL.FK_IK" "tiptoe_BLCL.b";
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
connectAttr "input_shoulder_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_elbow_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_elbow_local_MTMX1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_F_toe01_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upQarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midQarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "soft_QarmLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_shoulder_local_dist_MTMX.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "upIKLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Qarmlen_minus_softikV_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CTLLen_minue_dif_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "for_zerodivide_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_upQarm_softikV_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val_POW.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CTLlen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midQarm_ratio3_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_QarmLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_midQarmLen_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_midQarm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "midQarm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_upQarmLen_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_upQarm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "upQarm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_CTLVal_MULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "loQarm_ratio_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_stretched_Qarm_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_stretchCtrl_Qarm_MULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "loQarm_plus_stretch_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_shoulder_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FKIK_RVS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "F_toe_CTL_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loIKLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_soft_Len_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_Qarmlen_minus_softikV_SUBT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "loQarm_ctrlLen_minue_dif_SUBT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "divide_loQarm_softikV_DIVD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_negate_val_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_power_val_POW.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_mult_softikV_MULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_result_softik_len_SUBT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "loQarm_softikV_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_CTLlen_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_stretch_QarmLen_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_stretchedLen_SUBT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loQarm_stretch_output_mul_CTLlVal_MULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Qarm_switch_space_CHOI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Qarm_switch_CTL_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Qarm_switch_CTL_space_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
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
connectAttr "Qarm_mirror_rotate_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Qarm_mirror_scale_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikSCsolver1.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
// End of Qarm.ma
