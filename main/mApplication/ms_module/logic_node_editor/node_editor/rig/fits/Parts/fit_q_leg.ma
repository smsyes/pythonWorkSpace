//Maya ASCII 2019 scene
//Name: fit_q_leg.ma
//Last modified: Tue, Jun 22, 2021 02:21:58 PM
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
createNode transform -n "fit_leg";
	rename -uid "CA736AA8-46AE-B4A3-45E7-0EA1D3EA68D4";
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
	setAttr -s 7 ".fitControls";
	setAttr -s 7 ".init";
	setAttr -s 7 ".tempJoints";
	setAttr ".leftDirect" -type "double3" 1 1 1 ;
	setAttr ".rightDirect" -type "double3" -1 -1 -1 ;
	setAttr ".offsetMir" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -cb on ".mirror";
createNode transform -n "fit_leg_GRP" -p "fit_leg";
	rename -uid "7EBAB587-4B9C-FD32-E3B9-579FC4BC4B4F";
createNode transform -n "fit_hip" -p "fit_leg_GRP";
	rename -uid "C72BFF83-48D8-0709-EF94-0BABCF64ABCD";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 3.580369234085083 40.881076812744141 -18.168113708496094 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsCurve -n "fit_hipShape" -p "fit_hip";
	rename -uid "E61DD0BF-460C-C8B1-60CA-DBA4D99BC7FC";
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
createNode transform -n "fit_leg_space" -p "fit_leg_GRP";
	rename -uid "E4B0F4E3-43B9-9F71-7E2A-1DB043B1A635";
createNode transform -n "fit_thigh" -p "fit_leg_space";
	rename -uid "511638DD-4CAC-5DFD-236E-F496A763757C";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 2.0713150501251221 -2.5815353393554688 -3.8085823059082031 ;
createNode nurbsCurve -n "fit_thighShape" -p "fit_thigh";
	rename -uid "4ADB7859-4985-CE06-242D-2B9860AC2EAC";
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
createNode transform -n "fit_F_knee" -p "fit_thigh";
	rename -uid "E70D2494-4F35-AC99-2D8A-E38CFC42554C";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -15.556730270385742 0 ;
createNode nurbsCurve -n "fit_F_kneeShape" -p "fit_F_knee";
	rename -uid "AA622A64-494B-FA5C-FD87-E5A71E1E1C80";
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
createNode transform -n "fit_B_knee" -p "fit_F_knee";
	rename -uid "B422DEAF-43E9-A206-2F4D-3F8057BB520F";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -9.875065803527832 -5.9969711303710938 ;
createNode nurbsCurve -n "fit_B_kneeShape" -p "fit_B_knee";
	rename -uid "1A2FDB70-4673-9752-46F3-CF87850A06A1";
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
createNode transform -n "fit_ankle" -p "fit_B_knee";
	rename -uid "78D69901-4B31-6200-5891-6696FD06A9DD";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -10.443872451782227 0.04709625244140625 ;
createNode nurbsCurve -n "fit_ankleShape" -p "fit_ankle";
	rename -uid "0C2FF31E-4DB1-1D75-20E6-5194F1751977";
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
createNode transform -n "fit_hind_toe" -p "fit_ankle";
	rename -uid "D33FB4AC-4BE0-6565-869C-4A816BC7CF7E";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -0.83296072483062744 0.95006752014160156 ;
createNode nurbsCurve -n "fit_hind_toeShape" -p "fit_hind_toe";
	rename -uid "A9DD602B-4BF9-494F-00B8-48BCA32BFE0A";
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
createNode transform -n "fit_hind_tiptoe" -p "fit_hind_toe";
	rename -uid "0EB47874-460A-A59A-F55B-FC9DBE20B871";
	addAttr -r false -s false -ci true -m -im false -sn "fitControl" -ln "fitControl" 
		-at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" 0 -1.5909109229095293 3.2962303161621094 ;
createNode nurbsCurve -n "fit_hind_tiptoeShape" -p "fit_hind_tiptoe";
	rename -uid "68EAD7B3-459E-1420-8847-7CB1D8F919AF";
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
createNode transform -n "init_hip" -p "fit_leg";
	rename -uid "9D041EA4-4F08-B515-5024-CB9133E45E94";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_thigh" -p "init_hip";
	rename -uid "D1963935-442C-4B9A-447F-BF9CB9CFCD1E";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_F_knee" -p "init_thigh";
	rename -uid "1726293D-4479-AB49-5A8A-7D9106600054";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_B_knee" -p "init_F_knee";
	rename -uid "8BF606FE-4970-E864-D96B-1C9C109A6FC2";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_ankle" -p "init_B_knee";
	rename -uid "122DE468-420F-9B3D-90C5-D58DB37119AB";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
	setAttr ".sh" -type "double3" 4.0300449670852498e-10 0 0 ;
createNode transform -n "init_hind_toe" -p "init_ankle";
	rename -uid "7875C4D8-4B10-BF5B-4FCB-6EABA42A33D4";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "init_hind_tiptoe" -p "init_hind_toe";
	rename -uid "700F0298-428A-B42C-465F-E988B7521D1A";
	addAttr -r false -s false -ci true -m -im false -sn "init" -ln "init" -at "message";
createNode transform -n "temp_leg_GRP" -p "fit_leg";
	rename -uid "E3758975-4E6D-7703-6838-168CBF8FAD13";
createNode joint -n "temp_hip" -p "temp_leg_GRP";
	rename -uid "C4F5689D-41A6-6EE0-38CA-61A9160EDB3B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "scapula";
createNode joint -n "temp_thigh" -p "temp_hip";
	rename -uid "1BED179D-4BA7-9AB8-A93B-BB92597EB0E8";
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
createNode joint -n "temp_F_knee" -p "temp_thigh";
	rename -uid "F0C466AE-4DB6-A439-1745-C3BF65AA42D9";
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
createNode joint -n "temp_B_knee" -p "temp_F_knee";
	rename -uid "E42B7EFB-467B-7AD7-0C3B-2AAB5923DD2C";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoint" -ln "tempJoint" 
		-at "message";
	setAttr ".dla" yes;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
createNode joint -n "temp_ankle" -p "temp_B_knee";
	rename -uid "3AA68F04-4AEE-5F33-7DFC-E28F98131D6E";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_hind_toe" -p "temp_ankle";
	rename -uid "638BB633-4B00-B150-9AB1-10AEB1340B66";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode joint -n "temp_hind_tiptoe" -p "temp_hind_toe";
	rename -uid "CD48CAAA-4833-D68E-01CB-D094761F078B";
	addAttr -r false -s false -ci true -m -im false -sn "tempJoints" -ln "tempJoints" 
		-at "message";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode condition -n "leg_mirror_COND";
	rename -uid "60E544B2-4888-AAE3-FBC2-CCA75827EC87";
	setAttr ".st" 1;
createNode decomposeMatrix -n "fit_leg_space_local_DCMX";
	rename -uid "9B6EF8F8-44F3-0EDD-208B-E6ADA401DB86";
createNode multMatrix -n "fit_leg_space_local_MTMX";
	rename -uid "4EF29CA1-42D7-439E-4531-C5AE37DFE393";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_thigh_aligned_DCMX";
	rename -uid "8BB8FA1E-405A-8FD2-716D-1F9157C976B2";
createNode multMatrix -n "fit_thigh_aligned_MTMX";
	rename -uid "66D001A4-41D2-20FA-83FD-E2A7AFA783C3";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_thigh_aligned_FBFM";
	rename -uid "96D2D823-498A-5B37-4779-05BF1442355B";
createNode vectorProduct -n "fit_thigh_x_vec";
	rename -uid "A098E303-422F-F4C5-D0E4-618BB6610BF4";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_thigh2knee_vec_rvsMULT";
	rename -uid "AC4267A2-4B0C-00BB-52FC-179A228F6FC4";
createNode plusMinusAverage -n "fit_thigh2knee_vec";
	rename -uid "820CA4A1-41C1-D0AF-A2B3-45827363792B";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_F_knee_DCMX";
	rename -uid "376EDFE7-4FE5-0B79-CB25-63A126AEA193";
createNode decomposeMatrix -n "fit_thigh_DCMX";
	rename -uid "C25A261B-4D84-C203-CB27-0D993C0CC867";
createNode vectorProduct -n "fit_thigh_y_vec";
	rename -uid "A88C7DDE-4AB4-2EFF-E0B3-36BF3AA49BC2";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_thigh2ankle_vec_rvsMULT";
	rename -uid "D16AB64A-4BAA-A0BE-C6AD-FABA63B60ED8";
createNode plusMinusAverage -n "fit_thigh2ankle_vec";
	rename -uid "A0D6C91D-402E-2C5B-D200-BBB65E72F62E";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_B_knee_DCMX";
	rename -uid "8531047C-48C3-E56C-C256-A2AF55D73EA7";
createNode vectorProduct -n "fit_thigh_z_vec";
	rename -uid "EAC0C05F-43CD-1A76-9D51-DA82951CD433";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_F_knee_aligned_DCMX";
	rename -uid "6951B310-4888-8E81-F848-FF843EAB3238";
createNode multMatrix -n "fit_F_knee_aligned_MTMX";
	rename -uid "A6E0BF15-4D71-2146-622C-63BF5B3014D6";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_F_knee_aligned_FBFM";
	rename -uid "86ED4A8E-40CB-8FF7-0B39-AD837D14AF51";
createNode vectorProduct -n "fit_F_knee_x_vec";
	rename -uid "25544A9E-4D00-EDC3-3CF0-65AB5C601643";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_knee2F_knee_vec_rvsMULT";
	rename -uid "668A28B8-4A28-7D6E-0A3C-6A9364990744";
createNode plusMinusAverage -n "fit_F_knee2F_knee_vec";
	rename -uid "7CEB6DA9-4D1C-E2B4-C232-6CAD1503CF00";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_F_knee_y_vec";
	rename -uid "386FB529-4BC3-218B-B98C-3FA5C57DFB70";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_F_knee2shoulder_vec_rvsMULT";
	rename -uid "3374B746-4310-D09B-CADD-90AD37CB4826";
createNode plusMinusAverage -n "fit_F_knee2shoulder_vec";
	rename -uid "6E30CBF0-47A9-52C1-7459-C7B9094EEAEA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_F_knee_z_vec";
	rename -uid "2747ADCD-40A3-CB48-03D7-95A3565A68B5";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_B_knee_aligned_DCMX";
	rename -uid "8B0B0E86-4C12-0FCB-9834-FB86092D0018";
createNode multMatrix -n "fit_B_knee_aligned_MTMX";
	rename -uid "55E06977-407B-DC1B-FEC8-4AB5E941BD69";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_B_knee_aligned_FBFM1";
	rename -uid "556FB1B0-41E3-83AA-0C0A-ED98B016532E";
createNode vectorProduct -n "fit_B_knee_x_vec";
	rename -uid "047952CF-4965-8C4B-83D4-EF8ACB179BD0";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_knee2ankle_vec_rvsMULT";
	rename -uid "C7F82BC5-483A-DA19-D803-419F288F20FC";
createNode plusMinusAverage -n "fit_B_knee2ankle_vec";
	rename -uid "A767C5E3-4BF3-6462-83FD-80849979E1A7";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_ankle_DCMX";
	rename -uid "0567DD42-4C9E-04C1-140D-3EAC2D075436";
createNode vectorProduct -n "fit_B_knee_y_vec";
	rename -uid "E3671DF6-4D5F-6C27-8BC2-C49493953826";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_B_knee2B_knee_vec_rvsMULT";
	rename -uid "0EE19121-4143-54AC-F4EE-CC83FDFF682F";
createNode plusMinusAverage -n "fit_B_knee2F_knee_vec";
	rename -uid "49FA3057-4EC2-E3DC-034A-1191D5C7B3CE";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_B_knee_z_vec";
	rename -uid "26AE7C8E-4B07-391A-7AF3-D9BABD0D9356";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_ankle_aligned_DCMX";
	rename -uid "4F26B8B4-40BE-43F5-3378-11A66E5EA64A";
createNode multMatrix -n "fit_ankle_aligned_MTMX";
	rename -uid "2204CB3D-4246-F721-8267-E494D9F64E40";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_ankle_aligned_FBFM";
	rename -uid "BAF4F9F6-4D52-B33D-2A09-16BD9F9276D7";
createNode vectorProduct -n "fit_ankle_x_vec";
	rename -uid "A9FA52F0-4C89-FBB4-FF33-5EA06387EE39";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_ankle2F_hind_toe_vec_rvsMULT";
	rename -uid "6590DF87-408C-4DE8-10BF-98BA3D26590A";
createNode plusMinusAverage -n "fit_ankle2F_hind_toe_vec";
	rename -uid "FAD4628F-48F0-ED1F-3A68-21B7AD6A6B72";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_hind_toe_DCMX";
	rename -uid "88FE9118-45BD-5C8D-923B-0A9241054AC2";
createNode vectorProduct -n "fit_ankle_y_vec";
	rename -uid "10ED0F4C-4777-BDEA-7548-70A47E17C283";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_ankle2F_knee_vec_rvsMULT";
	rename -uid "950EE970-46E6-CA00-8704-078EEFA47EA8";
createNode plusMinusAverage -n "fit_ankle2F_knee_vec";
	rename -uid "97DCC87B-441C-979D-3ED7-C7BEE646273F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_ankle_z_vec";
	rename -uid "3F6BBA2E-4545-B39B-AAC4-6A9E55096A23";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_hind_toe_aligned_DCMX";
	rename -uid "8EF3ED6E-4AD2-7CAF-2750-0FA58E85FC4F";
createNode multMatrix -n "fit_hind_toe_aligned_MTMX";
	rename -uid "4D46EBA8-4173-B9BC-7090-AD8443A4ED11";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "fit_hind_toe_aligned_FBFM";
	rename -uid "FE8C3AB5-4D72-F8D7-2FB3-5982BA680CA5";
createNode vectorProduct -n "fit_hind_toe_x_vec";
	rename -uid "72CF02D6-4191-1EB8-B974-D3BEEEB6684D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "fit_hind_toe2tiptoe_vec_rvsMULT";
	rename -uid "E812BB1F-46A2-BE7D-4A0A-47BB4C64CD67";
createNode plusMinusAverage -n "fit_hind_toe2tiptoe_vec";
	rename -uid "950B0F77-49BC-2CC9-02E1-54A1B2A565C2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "fit_tiptoe_DCMX";
	rename -uid "2C796FB1-49EB-1E82-853D-A3833508E7DD";
createNode vectorProduct -n "fit_hind_toe_y_vec";
	rename -uid "03CC0F07-4D0C-726B-D403-29B074D7AB1A";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode multiplyDivide -n "fir_hind_toe2ankle_vec_rvsMULT";
	rename -uid "70B9DD13-4378-D49F-032B-F19CD05C4886";
createNode plusMinusAverage -n "fir_hind_toe2ankle_vec";
	rename -uid "B4783044-4A71-6DD0-ADDB-21BD38AB0E2F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "fit_hind_toe_z_vec";
	rename -uid "0BF4AE6D-45BB-302C-1F6D-68947F1ED54C";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode decomposeMatrix -n "fit_tiptoe_local_DCMX";
	rename -uid "5EC69728-4388-D711-5967-8D91265E0144";
createNode multMatrix -n "fit_tiptoe_local_MTMX";
	rename -uid "1245B9F5-44D5-13EC-4676-1DADAF1B82D0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fit_leg_space_local_DCMX1";
	rename -uid "429370C1-4CC4-E3A4-A52F-8D8EEBBD145E";
createNode multMatrix -n "fit_leg_space_local_MTMX1";
	rename -uid "ED55A068-4588-0D6E-E6B5-D38446D63317";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_hip_local_DCMX";
	rename -uid "F51CF3E3-454E-B3F1-1E54-F0998A34B8DC";
createNode multMatrix -n "temp_hip_local_MTMX";
	rename -uid "4A27D383-4368-35AA-1055-7380A524F2BB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_F_knee_local_DCMX";
	rename -uid "510A9B66-4B09-2D1C-F28F-5A92DA83C38D";
createNode multMatrix -n "init_F_knee_local_MTMX";
	rename -uid "B0F53ED7-40FF-2EEC-7FF0-61A619881496";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_B_knee_local_DCMX";
	rename -uid "2311E3F7-4D1E-90E3-6A6D-B6958198BBA0";
createNode multMatrix -n "init_B_knee_local_MTMX";
	rename -uid "C83786DF-4735-FE89-DD85-98A617A6F4DE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "temp_B_knee_local_DCMX";
	rename -uid "C8113D44-438C-9D4C-8F92-8EBF5F7B0AF9";
createNode multMatrix -n "temp_B_knee_local_MTMX";
	rename -uid "3D4900B8-4969-6133-4B37-23BC0CADC8A0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "init_hind_toe_local_DCMX";
	rename -uid "79E93B11-4283-B919-04CE-3BB4E31E9D14";
createNode multMatrix -n "init_hind_toe_local_MTMX";
	rename -uid "7ABB0DFA-45DA-2EA7-355F-9B8616B1B37E";
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
	setAttr -s 292 ".u";
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
connectAttr "fit_hip.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_thigh.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_F_knee.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_B_knee.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_ankle.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_hind_toe.fitControl" "fit_leg.fitControls" -na;
connectAttr "fit_hind_tiptoe.fitControl" "fit_leg.fitControls" -na;
connectAttr "init_hip.init" "fit_leg.init" -na;
connectAttr "init_thigh.init" "fit_leg.init" -na;
connectAttr "init_F_knee.init" "fit_leg.init" -na;
connectAttr "init_B_knee.init" "fit_leg.init" -na;
connectAttr "init_ankle.init" "fit_leg.init" -na;
connectAttr "init_hind_toe.init" "fit_leg.init" -na;
connectAttr "init_hind_tiptoe.init" "fit_leg.init" -na;
connectAttr "temp_hip.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_thigh.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_F_knee.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_B_knee.tempJoint" "fit_leg.tempJoints" -na;
connectAttr "temp_ankle.tempJoints" "fit_leg.tempJoints" -na;
connectAttr "temp_hind_toe.tempJoints" "fit_leg.tempJoints" -na;
connectAttr "temp_hind_tiptoe.tempJoints" "fit_leg.tempJoints" -na;
connectAttr "leg_mirror_COND.ocr" "fit_leg_GRP.sx";
connectAttr "fit_hip.t" "fit_leg_space.t";
connectAttr "fit_hip.r" "fit_leg_space.r";
connectAttr "fit_hip.s" "fit_leg_space.s";
connectAttr "fit_leg_space_local_DCMX.ot" "init_hip.t";
connectAttr "fit_leg_space_local_DCMX.or" "init_hip.r";
connectAttr "fit_leg_space.s" "init_hip.s";
connectAttr "fit_thigh_aligned_DCMX.ot" "init_thigh.t";
connectAttr "fit_thigh_aligned_DCMX.or" "init_thigh.r";
connectAttr "fit_thigh_aligned_DCMX.os" "init_thigh.s";
connectAttr "fit_thigh_aligned_DCMX.osh" "init_thigh.sh";
connectAttr "fit_F_knee_aligned_DCMX.ot" "init_F_knee.t";
connectAttr "fit_F_knee_aligned_DCMX.or" "init_F_knee.r";
connectAttr "fit_F_knee_aligned_DCMX.os" "init_F_knee.s";
connectAttr "fit_F_knee_aligned_DCMX.osh" "init_F_knee.sh";
connectAttr "fit_B_knee_aligned_DCMX.ot" "init_B_knee.t";
connectAttr "fit_B_knee_aligned_DCMX.os" "init_B_knee.s";
connectAttr "fit_B_knee_aligned_DCMX.or" "init_B_knee.r";
connectAttr "fit_B_knee_aligned_DCMX.osh" "init_B_knee.sh";
connectAttr "fit_ankle_aligned_DCMX.ot" "init_ankle.t";
connectAttr "fit_ankle_aligned_DCMX.os" "init_ankle.s";
connectAttr "fit_ankle_aligned_DCMX.or" "init_ankle.r";
connectAttr "fit_hind_toe_aligned_DCMX.ot" "init_hind_toe.t";
connectAttr "fit_hind_toe_aligned_DCMX.os" "init_hind_toe.s";
connectAttr "fit_hind_toe_aligned_DCMX.or" "init_hind_toe.r";
connectAttr "fit_tiptoe_local_DCMX.ot" "init_hind_tiptoe.t";
connectAttr "fit_tiptoe_local_DCMX.os" "init_hind_tiptoe.s";
connectAttr "fit_tiptoe_local_DCMX.or" "init_hind_tiptoe.r";
connectAttr "leg_mirror_COND.ocb" "temp_leg_GRP.sz";
connectAttr "fit_leg_space_local_DCMX1.ot" "temp_hip.t";
connectAttr "fit_leg_space_local_DCMX1.or" "temp_hip.jo";
connectAttr "temp_hip_local_DCMX.ot" "temp_thigh.t";
connectAttr "temp_hip_local_DCMX.or" "temp_thigh.jo";
connectAttr "temp_hip.s" "temp_thigh.is";
connectAttr "init_thigh.s" "temp_thigh.s";
connectAttr "init_F_knee_local_DCMX.ot" "temp_F_knee.t";
connectAttr "init_F_knee_local_DCMX.or" "temp_F_knee.jo";
connectAttr "init_F_knee.s" "temp_F_knee.s";
connectAttr "init_B_knee_local_DCMX.ot" "temp_B_knee.t";
connectAttr "init_B_knee_local_DCMX.or" "temp_B_knee.jo";
connectAttr "temp_F_knee.s" "temp_B_knee.is";
connectAttr "init_B_knee.s" "temp_B_knee.s";
connectAttr "temp_B_knee.s" "temp_ankle.is";
connectAttr "temp_B_knee_local_DCMX.ot" "temp_ankle.t";
connectAttr "temp_B_knee_local_DCMX.or" "temp_ankle.jo";
connectAttr "init_ankle.s" "temp_ankle.s";
connectAttr "temp_ankle.s" "temp_hind_toe.is";
connectAttr "init_hind_toe_local_DCMX.ot" "temp_hind_toe.t";
connectAttr "init_hind_toe_local_DCMX.or" "temp_hind_toe.jo";
connectAttr "init_hind_toe.s" "temp_hind_toe.s";
connectAttr "temp_hind_toe.s" "temp_hind_tiptoe.is";
connectAttr "init_hind_tiptoe.t" "temp_hind_tiptoe.t";
connectAttr "init_hind_tiptoe.r" "temp_hind_tiptoe.jo";
connectAttr "init_hind_tiptoe.s" "temp_hind_tiptoe.s";
connectAttr "fit_leg.mirror" "leg_mirror_COND.ft";
connectAttr "fit_leg.rightDirect" "leg_mirror_COND.ct";
connectAttr "fit_leg.leftDirect" "leg_mirror_COND.cf";
connectAttr "fit_leg_space_local_MTMX.o" "fit_leg_space_local_DCMX.imat";
connectAttr "fit_leg_space.wm" "fit_leg_space_local_MTMX.i[0]";
connectAttr "fit_leg.wim" "fit_leg_space_local_MTMX.i[1]";
connectAttr "fit_thigh_aligned_MTMX.o" "fit_thigh_aligned_DCMX.imat";
connectAttr "fit_thigh_aligned_FBFM.o" "fit_thigh_aligned_MTMX.i[0]";
connectAttr "init_hip.wim" "fit_thigh_aligned_MTMX.i[1]";
connectAttr "fit_thigh_x_vec.ox" "fit_thigh_aligned_FBFM.i00";
connectAttr "fit_thigh_x_vec.oy" "fit_thigh_aligned_FBFM.i01";
connectAttr "fit_thigh_x_vec.oz" "fit_thigh_aligned_FBFM.i02";
connectAttr "fit_thigh_y_vec.ox" "fit_thigh_aligned_FBFM.i10";
connectAttr "fit_thigh_y_vec.oy" "fit_thigh_aligned_FBFM.i11";
connectAttr "fit_thigh_y_vec.oz" "fit_thigh_aligned_FBFM.i12";
connectAttr "fit_thigh_z_vec.oy" "fit_thigh_aligned_FBFM.i21";
connectAttr "fit_thigh_z_vec.ox" "fit_thigh_aligned_FBFM.i20";
connectAttr "fit_thigh_z_vec.oz" "fit_thigh_aligned_FBFM.i22";
connectAttr "fit_thigh_DCMX.otx" "fit_thigh_aligned_FBFM.i30";
connectAttr "fit_thigh_DCMX.oty" "fit_thigh_aligned_FBFM.i31";
connectAttr "fit_thigh_DCMX.otz" "fit_thigh_aligned_FBFM.i32";
connectAttr "fit_thigh2knee_vec_rvsMULT.o" "fit_thigh_x_vec.i1";
connectAttr "fit_thigh2knee_vec.o3" "fit_thigh2knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_thigh2knee_vec_rvsMULT.i2";
connectAttr "fit_F_knee_DCMX.ot" "fit_thigh2knee_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "fit_thigh2knee_vec.i3[1]";
connectAttr "fit_F_knee.wm" "fit_F_knee_DCMX.imat";
connectAttr "fit_thigh.wm" "fit_thigh_DCMX.imat";
connectAttr "fit_thigh2ankle_vec_rvsMULT.o" "fit_thigh_y_vec.i1";
connectAttr "fit_thigh2knee_vec_rvsMULT.o" "fit_thigh_y_vec.i2";
connectAttr "fit_thigh2ankle_vec.o3" "fit_thigh2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_thigh2ankle_vec_rvsMULT.i2";
connectAttr "fit_thigh_DCMX.ot" "fit_thigh2ankle_vec.i3[0]";
connectAttr "fit_B_knee_DCMX.ot" "fit_thigh2ankle_vec.i3[1]";
connectAttr "fit_B_knee.wm" "fit_B_knee_DCMX.imat";
connectAttr "fit_thigh2knee_vec_rvsMULT.o" "fit_thigh_z_vec.i1";
connectAttr "fit_thigh_y_vec.o" "fit_thigh_z_vec.i2";
connectAttr "fit_F_knee_aligned_MTMX.o" "fit_F_knee_aligned_DCMX.imat";
connectAttr "fit_F_knee_aligned_FBFM.o" "fit_F_knee_aligned_MTMX.i[0]";
connectAttr "init_thigh.wim" "fit_F_knee_aligned_MTMX.i[1]";
connectAttr "fit_F_knee_x_vec.ox" "fit_F_knee_aligned_FBFM.i00";
connectAttr "fit_F_knee_x_vec.oy" "fit_F_knee_aligned_FBFM.i01";
connectAttr "fit_F_knee_x_vec.oz" "fit_F_knee_aligned_FBFM.i02";
connectAttr "fit_F_knee_y_vec.ox" "fit_F_knee_aligned_FBFM.i10";
connectAttr "fit_F_knee_y_vec.oy" "fit_F_knee_aligned_FBFM.i11";
connectAttr "fit_F_knee_y_vec.oz" "fit_F_knee_aligned_FBFM.i12";
connectAttr "fit_F_knee_z_vec.ox" "fit_F_knee_aligned_FBFM.i20";
connectAttr "fit_F_knee_z_vec.oy" "fit_F_knee_aligned_FBFM.i21";
connectAttr "fit_F_knee_z_vec.oz" "fit_F_knee_aligned_FBFM.i22";
connectAttr "fit_F_knee_DCMX.otx" "fit_F_knee_aligned_FBFM.i30";
connectAttr "fit_F_knee_DCMX.oty" "fit_F_knee_aligned_FBFM.i31";
connectAttr "fit_F_knee_DCMX.otz" "fit_F_knee_aligned_FBFM.i32";
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.o" "fit_F_knee_x_vec.i1";
connectAttr "fit_F_knee2F_knee_vec.o3" "fit_F_knee2F_knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_F_knee2F_knee_vec_rvsMULT.i2";
connectAttr "fit_B_knee_DCMX.ot" "fit_F_knee2F_knee_vec.i3[0]";
connectAttr "fit_F_knee_DCMX.ot" "fit_F_knee2F_knee_vec.i3[1]";
connectAttr "fit_F_knee2shoulder_vec_rvsMULT.o" "fit_F_knee_y_vec.i1";
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.o" "fit_F_knee_y_vec.i2";
connectAttr "fit_F_knee2shoulder_vec.o3" "fit_F_knee2shoulder_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_F_knee2shoulder_vec_rvsMULT.i2";
connectAttr "fit_F_knee_DCMX.ot" "fit_F_knee2shoulder_vec.i3[0]";
connectAttr "fit_thigh_DCMX.ot" "fit_F_knee2shoulder_vec.i3[1]";
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.o" "fit_F_knee_z_vec.i1";
connectAttr "fit_F_knee_y_vec.o" "fit_F_knee_z_vec.i2";
connectAttr "fit_B_knee_aligned_MTMX.o" "fit_B_knee_aligned_DCMX.imat";
connectAttr "fit_B_knee_aligned_FBFM1.o" "fit_B_knee_aligned_MTMX.i[0]";
connectAttr "init_F_knee.wim" "fit_B_knee_aligned_MTMX.i[1]";
connectAttr "fit_B_knee_x_vec.ox" "fit_B_knee_aligned_FBFM1.i00";
connectAttr "fit_B_knee_x_vec.oy" "fit_B_knee_aligned_FBFM1.i01";
connectAttr "fit_B_knee_x_vec.oz" "fit_B_knee_aligned_FBFM1.i02";
connectAttr "fit_B_knee_y_vec.ox" "fit_B_knee_aligned_FBFM1.i10";
connectAttr "fit_B_knee_y_vec.oy" "fit_B_knee_aligned_FBFM1.i11";
connectAttr "fit_B_knee_y_vec.oz" "fit_B_knee_aligned_FBFM1.i12";
connectAttr "fit_B_knee_z_vec.ox" "fit_B_knee_aligned_FBFM1.i20";
connectAttr "fit_B_knee_z_vec.oy" "fit_B_knee_aligned_FBFM1.i21";
connectAttr "fit_B_knee_z_vec.oz" "fit_B_knee_aligned_FBFM1.i22";
connectAttr "fit_B_knee_DCMX.otx" "fit_B_knee_aligned_FBFM1.i30";
connectAttr "fit_B_knee_DCMX.oty" "fit_B_knee_aligned_FBFM1.i31";
connectAttr "fit_B_knee_DCMX.otz" "fit_B_knee_aligned_FBFM1.i32";
connectAttr "fit_B_knee2ankle_vec_rvsMULT.o" "fit_B_knee_x_vec.i1";
connectAttr "fit_B_knee2ankle_vec.o3" "fit_B_knee2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_B_knee2ankle_vec_rvsMULT.i2";
connectAttr "fit_ankle_DCMX.ot" "fit_B_knee2ankle_vec.i3[0]";
connectAttr "fit_B_knee_DCMX.ot" "fit_B_knee2ankle_vec.i3[1]";
connectAttr "fit_ankle.wm" "fit_ankle_DCMX.imat";
connectAttr "fit_B_knee2B_knee_vec_rvsMULT.o" "fit_B_knee_y_vec.i1";
connectAttr "fit_B_knee2ankle_vec_rvsMULT.o" "fit_B_knee_y_vec.i2";
connectAttr "fit_B_knee2F_knee_vec.o3" "fit_B_knee2B_knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_B_knee2B_knee_vec_rvsMULT.i2";
connectAttr "fit_F_knee_DCMX.ot" "fit_B_knee2F_knee_vec.i3[0]";
connectAttr "fit_B_knee_DCMX.ot" "fit_B_knee2F_knee_vec.i3[1]";
connectAttr "fit_B_knee2ankle_vec_rvsMULT.o" "fit_B_knee_z_vec.i1";
connectAttr "fit_B_knee_y_vec.o" "fit_B_knee_z_vec.i2";
connectAttr "fit_ankle_aligned_MTMX.o" "fit_ankle_aligned_DCMX.imat";
connectAttr "fit_ankle_aligned_FBFM.o" "fit_ankle_aligned_MTMX.i[0]";
connectAttr "init_B_knee.wim" "fit_ankle_aligned_MTMX.i[1]";
connectAttr "fit_ankle_x_vec.ox" "fit_ankle_aligned_FBFM.i00";
connectAttr "fit_ankle_x_vec.oy" "fit_ankle_aligned_FBFM.i01";
connectAttr "fit_ankle_x_vec.oz" "fit_ankle_aligned_FBFM.i02";
connectAttr "fit_ankle_y_vec.ox" "fit_ankle_aligned_FBFM.i10";
connectAttr "fit_ankle_y_vec.oy" "fit_ankle_aligned_FBFM.i11";
connectAttr "fit_ankle_y_vec.oz" "fit_ankle_aligned_FBFM.i12";
connectAttr "fit_ankle_z_vec.ox" "fit_ankle_aligned_FBFM.i20";
connectAttr "fit_ankle_z_vec.oy" "fit_ankle_aligned_FBFM.i21";
connectAttr "fit_ankle_z_vec.oz" "fit_ankle_aligned_FBFM.i22";
connectAttr "fit_ankle_DCMX.otx" "fit_ankle_aligned_FBFM.i30";
connectAttr "fit_ankle_DCMX.oty" "fit_ankle_aligned_FBFM.i31";
connectAttr "fit_ankle_DCMX.otz" "fit_ankle_aligned_FBFM.i32";
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.o" "fit_ankle_x_vec.i1";
connectAttr "fit_ankle2F_hind_toe_vec.o3" "fit_ankle2F_hind_toe_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_ankle2F_hind_toe_vec_rvsMULT.i2";
connectAttr "fit_hind_toe_DCMX.ot" "fit_ankle2F_hind_toe_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "fit_ankle2F_hind_toe_vec.i3[1]";
connectAttr "fit_hind_toe.wm" "fit_hind_toe_DCMX.imat";
connectAttr "fit_ankle2F_knee_vec_rvsMULT.o" "fit_ankle_y_vec.i1";
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.o" "fit_ankle_y_vec.i2";
connectAttr "fit_ankle2F_knee_vec.o3" "fit_ankle2F_knee_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_ankle2F_knee_vec_rvsMULT.i2";
connectAttr "fit_B_knee_DCMX.ot" "fit_ankle2F_knee_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "fit_ankle2F_knee_vec.i3[1]";
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.o" "fit_ankle_z_vec.i1";
connectAttr "fit_ankle_y_vec.o" "fit_ankle_z_vec.i2";
connectAttr "fit_hind_toe_aligned_MTMX.o" "fit_hind_toe_aligned_DCMX.imat";
connectAttr "fit_hind_toe_aligned_FBFM.o" "fit_hind_toe_aligned_MTMX.i[0]";
connectAttr "init_ankle.wim" "fit_hind_toe_aligned_MTMX.i[1]";
connectAttr "fit_hind_toe_x_vec.ox" "fit_hind_toe_aligned_FBFM.i00";
connectAttr "fit_hind_toe_x_vec.oy" "fit_hind_toe_aligned_FBFM.i01";
connectAttr "fit_hind_toe_x_vec.oz" "fit_hind_toe_aligned_FBFM.i02";
connectAttr "fit_hind_toe_y_vec.ox" "fit_hind_toe_aligned_FBFM.i10";
connectAttr "fit_hind_toe_y_vec.oy" "fit_hind_toe_aligned_FBFM.i11";
connectAttr "fit_hind_toe_y_vec.oz" "fit_hind_toe_aligned_FBFM.i12";
connectAttr "fit_hind_toe_z_vec.ox" "fit_hind_toe_aligned_FBFM.i20";
connectAttr "fit_hind_toe_z_vec.oy" "fit_hind_toe_aligned_FBFM.i21";
connectAttr "fit_hind_toe_z_vec.oz" "fit_hind_toe_aligned_FBFM.i22";
connectAttr "fit_hind_toe_DCMX.otx" "fit_hind_toe_aligned_FBFM.i30";
connectAttr "fit_hind_toe_DCMX.oty" "fit_hind_toe_aligned_FBFM.i31";
connectAttr "fit_hind_toe_DCMX.otz" "fit_hind_toe_aligned_FBFM.i32";
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.o" "fit_hind_toe_x_vec.i1";
connectAttr "fit_hind_toe2tiptoe_vec.o3" "fit_hind_toe2tiptoe_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fit_hind_toe2tiptoe_vec_rvsMULT.i2";
connectAttr "fit_tiptoe_DCMX.ot" "fit_hind_toe2tiptoe_vec.i3[0]";
connectAttr "fit_hind_toe_DCMX.ot" "fit_hind_toe2tiptoe_vec.i3[1]";
connectAttr "fit_hind_tiptoe.wm" "fit_tiptoe_DCMX.imat";
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.o" "fit_hind_toe_y_vec.i1";
connectAttr "fir_hind_toe2ankle_vec_rvsMULT.o" "fit_hind_toe_y_vec.i2";
connectAttr "fir_hind_toe2ankle_vec.o3" "fir_hind_toe2ankle_vec_rvsMULT.i1";
connectAttr "leg_mirror_COND.oc" "fir_hind_toe2ankle_vec_rvsMULT.i2";
connectAttr "fit_hind_toe_DCMX.ot" "fir_hind_toe2ankle_vec.i3[0]";
connectAttr "fit_ankle_DCMX.ot" "fir_hind_toe2ankle_vec.i3[1]";
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.o" "fit_hind_toe_z_vec.i1";
connectAttr "fit_hind_toe_y_vec.o" "fit_hind_toe_z_vec.i2";
connectAttr "fit_tiptoe_local_MTMX.o" "fit_tiptoe_local_DCMX.imat";
connectAttr "fit_hind_tiptoe.wm" "fit_tiptoe_local_MTMX.i[0]";
connectAttr "temp_hind_toe.wim" "fit_tiptoe_local_MTMX.i[1]";
connectAttr "fit_leg_space_local_MTMX1.o" "fit_leg_space_local_DCMX1.imat";
connectAttr "fit_leg_space.wm" "fit_leg_space_local_MTMX1.i[0]";
connectAttr "temp_leg_GRP.wim" "fit_leg_space_local_MTMX1.i[1]";
connectAttr "temp_hip_local_MTMX.o" "temp_hip_local_DCMX.imat";
connectAttr "init_thigh.wm" "temp_hip_local_MTMX.i[0]";
connectAttr "temp_hip.wim" "temp_hip_local_MTMX.i[1]";
connectAttr "init_F_knee_local_MTMX.o" "init_F_knee_local_DCMX.imat";
connectAttr "init_F_knee.wm" "init_F_knee_local_MTMX.i[0]";
connectAttr "temp_thigh.wim" "init_F_knee_local_MTMX.i[1]";
connectAttr "init_B_knee_local_MTMX.o" "init_B_knee_local_DCMX.imat";
connectAttr "init_B_knee.wm" "init_B_knee_local_MTMX.i[0]";
connectAttr "temp_F_knee.wim" "init_B_knee_local_MTMX.i[1]";
connectAttr "temp_B_knee_local_MTMX.o" "temp_B_knee_local_DCMX.imat";
connectAttr "init_ankle.wm" "temp_B_knee_local_MTMX.i[0]";
connectAttr "temp_B_knee.wim" "temp_B_knee_local_MTMX.i[1]";
connectAttr "init_hind_toe_local_MTMX.o" "init_hind_toe_local_DCMX.imat";
connectAttr "init_hind_toe.wm" "init_hind_toe_local_MTMX.i[0]";
connectAttr "temp_ankle.wim" "init_hind_toe_local_MTMX.i[1]";
connectAttr "fit_thigh_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh2knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee2F_knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_hip_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_hip_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_F_knee_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_leg_space_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_leg_space_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_thigh2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_thigh2knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_F_knee2shoulder_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_F_knee2F_knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_ankle_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee2F_knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee2B_knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_B_knee2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_B_knee_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_B_knee_aligned_FBFM1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_B_knee_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_B_knee_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "temp_B_knee_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_mirror_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle2F_hind_toe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle2F_knee_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle2F_knee_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fit_ankle2F_hind_toe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_ankle_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_ankle_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe2tiptoe_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_hind_toe_aligned_FBFM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe2tiptoe_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_hind_toe2ankle_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fir_hind_toe2ankle_vec_rvsMULT.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "init_hind_toe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_hind_toe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_aligned_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_hind_toe_aligned_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_tiptoe_local_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
// End of fit_q_leg.ma
