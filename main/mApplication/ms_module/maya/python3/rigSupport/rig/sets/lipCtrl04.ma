//Maya ASCII 2018ff09 scene
//Name: lipCtrl04.ma
//Last modified: Mon, Jan 10, 2022 12:28:15 PM
//Codeset: 949
requires maya "2018ff09";
requires "mtoa" "3.1.2.1";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "LipRigGrp";
	rename -uid "DBF4A7F4-47DD-650D-4619-958049E583B3";
createNode transform -n "LipCtrlGrp" -p "LipRigGrp";
	rename -uid "5AD04BEC-497C-A6AA-F958-E0BC88D4E410";
	setAttr ".t" -type "double3" -2.7794001988259344e-08 1.2612133559741778e-13 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipMainRootCnt" -p "LipCtrlGrp";
	rename -uid "3EEA0388-4739-B850-EE5E-24A57DF45DB1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipMainCtrlOffGrp" -p "LipMainRootCnt";
	rename -uid "62BA8BE9-406E-2807-59AD-A79C4FE59FCB";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "LipMainCtrlGrp" -p "LipMainCtrlOffGrp";
	rename -uid "6CCC3688-42A8-231F-2EC1-B2B6F8CC9D2C";
createNode transform -n "LipMainCtrl" -p "LipMainCtrlGrp";
	rename -uid "B98083F9-4BC3-A5C0-E12E-988CA5865F16";
	addAttr -ci true -sn "LeftZip" -ln "LeftZip" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "RightZip" -ln "RightZip" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".LeftZip";
	setAttr -k on ".RightZip";
createNode nurbsCurve -n "LipMainCtrlShape" -p "LipMainCtrl";
	rename -uid "C082802E-4824-DAB8-8BCF-62876A4C6166";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.42252338814134988 0.36108823674989227 
		1.2836116248912177 -1.6646266508904475e-15 0.5106558816250778 1.6081941875543808 
		0.42252338814134655 0.36108823674989227 1.2836116248912177 0.59753830592932455 1.5878375614554578e-14 
		0.49999999999999312 0.42252338814134655 -0.36108823674986051 -0.28361162489123048 
		-1.5681821614241331e-15 -0.51065588162504649 -0.60819418755439414 -0.42252338814134988 
		-0.36108823674986051 -0.28361162489123004 -0.59753830592932788 1.5782265161200122e-14 
		0.49999999999999356 0 0 0 0 0 0 0 0 0;
createNode transform -n "UpLipMainCtrlOffGrp" -p "LipMainCtrl";
	rename -uid "BAEB48D1-434E-DA33-9F7B-169EF155C46F";
createNode transform -n "UpLipMainCtrl" -p "UpLipMainCtrlOffGrp";
	rename -uid "080032A9-4A0F-9EBC-1697-0BADC8B6AFA8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "UpLipMainCtrlShape" -p "UpLipMainCtrl";
	rename -uid "4CBFE441-4F17-8734-1998-07BA31541313";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.28887058939989935 0.28887058939991683 0.49999999999999356
		-1.6030230585683175e-15 0.40852470530006557 0.49999999999999356
		-0.28887058939990257 0.28887058939991683 0.49999999999999356
		-0.36767223477004624 0.09216000000001591 0.49999999999999356
		-0.25998353045991246 0.092159999999409173 0.49999999999999356
		-1.6648679614237044e-15 0.092159999999157985 0.49999999999999356
		0.25998353045990924 0.092159999999409173 0.49999999999999356
		0.36767223477004302 0.092160000000015715 0.49999999999999356
		0.28887058939989935 0.28887058939991683 0.49999999999999356
		-1.6030230585683175e-15 0.40852470530006557 0.49999999999999356
		-0.28887058939990257 0.28887058939991683 0.49999999999999356
		;
createNode transform -n "DownLipMainCtrlOffGrp" -p "LipMainCtrl";
	rename -uid "9F03E1DC-4262-CC08-BB35-22B315200909";
createNode transform -n "DownLipMainCtrl" -p "DownLipMainCtrlOffGrp";
	rename -uid "9C6ADBC3-4273-8F72-F818-2D9FE7A537E3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "DownLipMainCtrlShape" -p "DownLipMainCtrl";
	rename -uid "679C6488-4D3D-B7CD-14D3-D3B68D0A6942";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 26;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.25998353045990924 -0.092159999999377587 0.49999999999999356
		-1.6055245509319091e-15 -0.092159999999126316 0.49999999999999356
		-0.25998353045991246 -0.092159999999377587 0.49999999999999356
		-0.36767223477004624 -0.092159999999984157 0.49999999999999356
		-0.28887058939990257 -0.28887058939988519 0.49999999999999356
		-1.668960181336979e-15 -0.40852470530003393 0.49999999999999356
		0.28887058939989935 -0.28887058939988519 0.49999999999999356
		0.36767223477004302 -0.092159999999984296 0.49999999999999356
		0.25998353045990924 -0.092159999999377587 0.49999999999999356
		-1.6055245509319091e-15 -0.092159999999126316 0.49999999999999356
		-0.25998353045991246 -0.092159999999377587 0.49999999999999356
		;
createNode transform -n "RightLipConerRootCnt" -p "LipCtrlGrp";
	rename -uid "FA0D7782-42BA-6946-BE79-2583E01B68B4";
	setAttr ".t" -type "double3" -1.1236462315164584 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightLipConerCtrlOffGrp" -p "RightLipConerRootCnt";
	rename -uid "4BEC6E73-401C-746F-563D-AC8C503796D8";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999956 -1.0000000000000004 ;
createNode transform -n "RightLipConerCtrlGrp" -p "RightLipConerCtrlOffGrp";
	rename -uid "C101530C-42FA-42C5-64B3-A9909793FBD8";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightLipConerRvs" -p "RightLipConerCtrlGrp";
	rename -uid "26E89BA2-4AE5-3B4A-F6FB-2C9A63C94261";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "RightLipConerCtrl" -p "RightLipConerRvs";
	rename -uid "59EE1F0C-4086-E1C6-1EE4-AB9105163120";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "RightLipConerCtrlShape" -p "RightLipConerCtrl";
	rename -uid "4A10983E-47C5-62C3-B864-92BEC9CE59EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041955 0.14105009248043618 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980548 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043618 8.992806499463768e-15
		-0.19947495375979069 1.5772038319552815e-14 8.992806499463768e-15
		-0.14105009248042122 -0.1410500924804047 8.992806499463768e-15
		-8.7606757687614956e-16 -0.19947495375977428 8.992806499463768e-15
		0.14105009248041955 -0.1410500924804047 8.992806499463768e-15
		0.19947495375978908 1.5734495173711227e-14 8.992806499463768e-15
		0.14105009248041955 0.14105009248043618 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980548 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043618 8.992806499463768e-15
		;
createNode transform -n "RightUpLipConerCtrlGrp" -p "RightLipConerCtrl";
	rename -uid "E41F3A52-459A-271D-1053-64A9764726B6";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "RightUpLipConerCtrl" -p "RightUpLipConerCtrlGrp";
	rename -uid "B760CC89-4B63-547E-B50E-A798B0615288";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipConerCtrlShape" -p "RightUpLipConerCtrl";
	rename -uid "07D38EF8-4554-7654-9110-669EFABA2B94";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.098735064736293371 0.098735064736310121 8.992806499463768e-15
		-8.4753601160374386e-16 0.1396324676318686 8.992806499463768e-15
		-0.098735064736295147 0.098735064736310024 8.992806499463768e-15
		-0.13963246763185372 1.576893607450455e-14 8.992806499463768e-15
		-0.098735064736295147 -9.8735060665867086e-07 8.992806499463768e-15
		-8.7007311411256322e-16 -1.3963246252827044e-06 8.992806499463768e-15
		0.098735064736293371 -9.8735060665867001e-07 8.992806499463768e-15
		0.13963246763185205 1.5742655872415442e-14 8.992806499463768e-15
		0.098735064736293371 0.098735064736310121 8.992806499463768e-15
		-8.4753601160374386e-16 0.1396324676318686 8.992806499463768e-15
		-0.098735064736295147 0.098735064736310024 8.992806499463768e-15
		;
createNode transform -n "RightDownLipConerCtrlGrp" -p "RightLipConerCtrl";
	rename -uid "2476CEFD-44CE-0479-46E7-4FBC7B070CDE";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipConerCtrl" -p "RightDownLipConerCtrlGrp";
	rename -uid "497529BC-42A3-A72F-01B5-FA99990F841E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipConerCtrlShape" -p "RightDownLipConerCtrl";
	rename -uid "D37F133E-4523-DC95-395F-39A44B4A3E33";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.098735064736293371 9.8735063818206629e-07 8.992806499463768e-15
		-8.4753601160374386e-16 1.396324656806099e-06 8.992806499463768e-15
		-0.098735064736295147 9.8735063818206586e-07 8.992806499463768e-15
		-0.13963246763185372 1.576893607450455e-14 8.992806499463768e-15
		-0.098735064736295147 -0.098735064736278563 8.992806499463768e-15
		-8.7007311411256322e-16 -0.13963246763183723 8.992806499463768e-15
		0.098735064736293371 -0.098735064736278494 8.992806499463768e-15
		0.13963246763185205 1.5742655872415442e-14 8.992806499463768e-15
		0.098735064736293371 9.8735063818206629e-07 8.992806499463768e-15
		-8.4753601160374386e-16 1.396324656806099e-06 8.992806499463768e-15
		-0.098735064736295147 9.8735063818206586e-07 8.992806499463768e-15
		;
createNode transform -n "RightUpLipBRootCnt" -p "LipCtrlGrp";
	rename -uid "022B2E1D-4C9F-267C-AC5A-35AF2876D6F3";
	setAttr ".t" -type "double3" -0.88580799763464613 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipBCtrlOffGrp" -p "RightUpLipBRootCnt";
	rename -uid "3500E33F-44B3-764D-ACB7-B7A183935329";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
createNode transform -n "RightUpLipBCtrlGrp" -p "RightUpLipBCtrlOffGrp";
	rename -uid "7BA26385-4F4D-3809-7278-FF8A0DEAE866";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightUpLipBRvs" -p "RightUpLipBCtrlGrp";
	rename -uid "1931F58E-456E-FCEA-DDB4-31A3CAE221E3";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightUpLipBCtrl" -p "RightUpLipBRvs";
	rename -uid "BA80664D-462D-0B85-C87A-BAA73832B9D7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipBCtrlShape" -p "RightUpLipBCtrl";
	rename -uid "A0D3A7FE-42F8-B35E-DAED-4485A8FA8852";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041939 0.14105009248043626 8.992806499463768e-15
		-9.5489401861177963e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042139 0.14105009248043612 8.992806499463768e-15
		-0.19947495375979085 1.5772038319552815e-14 8.992806499463768e-15
		-0.14105009248042139 -1.410500873410257e-06 8.992806499463768e-15
		-9.8708987933866522e-16 -1.9947494714445908e-06 8.992806499463768e-15
		0.14105009248041939 -1.410500873410257e-06 8.992806499463768e-15
		0.19947495375978885 1.5734495173711227e-14 8.992806499463768e-15
		0.14105009248041939 0.14105009248043626 8.992806499463768e-15
		-9.5489401861177963e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042139 0.14105009248043612 8.992806499463768e-15
		;
createNode transform -n "RightUpLipARootCnt" -p "LipCtrlGrp";
	rename -uid "66FB54F8-4A4C-7A7E-C03D-B69DB38F11F1";
	setAttr ".t" -type "double3" -0.52005924890315369 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipACtrlOffGrp" -p "RightUpLipARootCnt";
	rename -uid "0AD09E38-4ABD-68E8-BA88-B38A4957712D";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 -1.0000000000000004 ;
createNode transform -n "RightUpLipACtrlGrp" -p "RightUpLipACtrlOffGrp";
	rename -uid "7FA82FCC-42C9-F613-447B-48840CCA1968";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightUpLipARvs" -p "RightUpLipACtrlGrp";
	rename -uid "A9987A4D-4EF1-F8A1-E60E-5ABCC35B81BA";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "RightUpLipACtrl" -p "RightUpLipARvs";
	rename -uid "C59D63FE-46EF-DC46-CFBC-E1A6C9DF9DC0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipACtrlShape" -p "RightUpLipACtrl";
	rename -uid "4222B15C-4D55-88E9-9C47-2799AC0113BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041939 0.14105009248043626 8.992806499463768e-15
		-9.5489401861177963e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042139 0.14105009248043612 8.992806499463768e-15
		-0.19947495375979085 1.5772038319552815e-14 8.992806499463768e-15
		-0.14105009248042139 -1.410500873410257e-06 8.992806499463768e-15
		-9.8708987933866522e-16 -1.9947494714445908e-06 8.992806499463768e-15
		0.14105009248041939 -1.410500873410257e-06 8.992806499463768e-15
		0.19947495375978885 1.5734495173711227e-14 8.992806499463768e-15
		0.14105009248041939 0.14105009248043626 8.992806499463768e-15
		-9.5489401861177963e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042139 0.14105009248043612 8.992806499463768e-15
		;
createNode transform -n "CenterUpLipMRootCnt" -p "LipCtrlGrp";
	rename -uid "08DC9003-4B54-D4CD-B634-F3B91845B016";
	setAttr ".t" -type "double3" -6.7409069010880237e-07 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterUpLipMCtrlOffGrp" -p "CenterUpLipMRootCnt";
	rename -uid "5165884C-4960-9EB1-5DC6-ABB854A0021B";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "CenterUpLipMCtrlGrp" -p "CenterUpLipMCtrlOffGrp";
	rename -uid "2E44734B-422B-A1D1-EC0F-AE92061CCC0F";
createNode transform -n "CenterUpLipMRvs" -p "CenterUpLipMCtrlGrp";
	rename -uid "D2F0C143-4034-EF39-7034-52B315745829";
createNode transform -n "CenterUpLipMCtrl" -p "CenterUpLipMRvs";
	rename -uid "754A9052-46C3-8A8C-9550-4A8F6136F5C1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterUpLipMCtrlShape" -p "CenterUpLipMCtrl";
	rename -uid "C565A367-4B80-E1BD-4ABC-1C8A42E49E62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041955 0.14105009248043626 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043612 8.992806499463768e-15
		-0.19947495375979069 1.5772038319552815e-14 8.992806499463768e-15
		-0.14105009248042122 -1.410500873410257e-06 8.992806499463768e-15
		-8.7606757687614956e-16 -1.9947494714445908e-06 8.992806499463768e-15
		0.14105009248041955 -1.410500873410257e-06 8.992806499463768e-15
		0.19947495375978908 1.5734495173711227e-14 8.992806499463768e-15
		0.14105009248041955 0.14105009248043626 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043612 8.992806499463768e-15
		;
createNode transform -n "LeftUpLipARootCnt" -p "LipCtrlGrp";
	rename -uid "E2D50A06-4597-F833-4235-D68D1B06475E";
	setAttr ".t" -type "double3" 0.52005810447382472 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipACtrlOffGrp" -p "LeftUpLipARootCnt";
	rename -uid "066AEA29-4DD6-90CA-BEDB-87BC1DF46C09";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999967 ;
createNode transform -n "LeftUpLipACtrlGrp" -p "LeftUpLipACtrlOffGrp";
	rename -uid "29CBE40B-4915-F301-5212-298AF13B1266";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipARvs" -p "LeftUpLipACtrlGrp";
	rename -uid "182F878B-4D02-8149-C664-0CA65D59364E";
createNode transform -n "LeftUpLipACtrl" -p "LeftUpLipARvs";
	rename -uid "20FA8D58-4AE8-2BCD-D7DB-12BD6B191EDE";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipACtrlShape" -p "LeftUpLipACtrl";
	rename -uid "D2052A46-4D35-4526-EC14-C09AC36C22ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041955 0.14105009248043626 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043612 8.992806499463768e-15
		-0.19947495375979069 1.5772038319552815e-14 8.992806499463768e-15
		-0.14105009248042122 -1.410500873410257e-06 8.992806499463768e-15
		-8.7606757687614956e-16 -1.9947494714445908e-06 8.992806499463768e-15
		0.14105009248041955 -1.410500873410257e-06 8.992806499463768e-15
		0.19947495375978908 1.5734495173711227e-14 8.992806499463768e-15
		0.14105009248041955 0.14105009248043626 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043612 8.992806499463768e-15
		;
createNode transform -n "LeftUpLipBRootCnt" -p "LipCtrlGrp";
	rename -uid "D79975E4-4409-D2C0-5E3C-DBA9892F2863";
	setAttr ".t" -type "double3" 0.88580748128310938 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipBCtrlOffGrp" -p "LeftUpLipBRootCnt";
	rename -uid "38DD2F71-4BAF-3FFB-637D-468118C7FCC4";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999989 ;
createNode transform -n "LeftUpLipBCtrlGrp" -p "LeftUpLipBCtrlOffGrp";
	rename -uid "FB263343-46C8-41E6-5FC7-2FAF966AE72D";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipBRvs" -p "LeftUpLipBCtrlGrp";
	rename -uid "8E5690C3-4F53-F268-D05F-71981D27C884";
createNode transform -n "LeftUpLipBCtrl" -p "LeftUpLipBRvs";
	rename -uid "10A58A87-41ED-83BE-F8C8-42A9A1827DE4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipBCtrlShape" -p "LeftUpLipBCtrl";
	rename -uid "FCEAFF88-4EDF-C8C6-696C-5389D0EF2E58";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041955 0.14105009248043626 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043612 8.992806499463768e-15
		-0.19947495375979069 1.5772038319552815e-14 8.992806499463768e-15
		-0.14105009248042122 -1.410500873410257e-06 8.992806499463768e-15
		-8.7606757687614956e-16 -1.9947494714445908e-06 8.992806499463768e-15
		0.14105009248041955 -1.410500873410257e-06 8.992806499463768e-15
		0.19947495375978908 1.5734495173711227e-14 8.992806499463768e-15
		0.14105009248041955 0.14105009248043626 8.992806499463768e-15
		-8.4387171614926397e-16 0.19947495375980556 8.992806499463768e-15
		-0.14105009248042122 0.14105009248043612 8.992806499463768e-15
		;
createNode transform -n "LeftLipConerRootCnt" -p "LipCtrlGrp";
	rename -uid "91E1F747-4D83-C19E-ABE2-D1B0D6FAFABC";
	setAttr ".t" -type "double3" 1.1236463148910252 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftLipConerCtrlOffGrp" -p "LeftLipConerRootCnt";
	rename -uid "30E9ADF5-47D6-1A6B-D5D4-11BBD24C5398";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "LeftLipConerCtrlGrp" -p "LeftLipConerCtrlOffGrp";
	rename -uid "CD1B8BB3-4F65-ABDD-E051-909A7825CFDA";
createNode transform -n "LeftLipConerRvs" -p "LeftLipConerCtrlGrp";
	rename -uid "13B591F9-426C-C606-D544-0B841664A6BE";
createNode transform -n "LeftLipConerCtrl" -p "LeftLipConerRvs";
	rename -uid "A88A50B8-46DA-A48F-5821-7094B3DE9892";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "LeftLipConerCtrlShape" -p "LeftLipConerCtrl";
	rename -uid "2BE8159A-4507-AB90-0D04-49B6F6DD37A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.64256153241080449 0.14105009248043618 
		0.78361162489123437 -9.1172903938037313e-16 0.19947495375980542 1.108194187554397 
		0.64256153241080316 0.14105009248043618 0.78361162489123393 0.90871923379459774 1.5761697502725269e-14 
		8.659739592076221e-15 0.64256153241080316 -0.1410500924804047 -0.7836116248912155 
		-7.6505900718011733e-16 -0.19947495375977423 -1.1081941875543797 -0.64256153241080449 
		-0.1410500924804047 -0.78361162489121539 -0.90871923379459907 1.5761697502725269e-14 
		8.8817841970012523e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftUpLipConerCtrlGrp" -p "LeftLipConerCtrl";
	rename -uid "2D92DE7A-4948-0D53-AB5C-82A31DC24529";
	setAttr ".t" -type "double3" -1.1430856261540612e-12 -1.0658141036401503e-14 -3.4461322684364859e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipConerCtrl" -p "LeftUpLipConerCtrlGrp";
	rename -uid "83730193-4BFB-1493-3E0C-8192B05E2A2B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipConerCtrlShape" -p "LeftUpLipConerCtrl";
	rename -uid "4286FFE9-44C7-E3BB-9141-D789F662E924";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.10155606658590177 0.10155606658591855 8.992806499463768e-15
		-8.472917252401116e-16 0.1436219667070644 8.992806499463768e-15
		-0.10155606658590355 0.10155606658591844 8.992806499463768e-15
		-0.14362196670704952 1.5769142890841102e-14 8.992806499463768e-15
		-0.10155606658590355 -1.0155606244421094e-06 8.992806499463768e-15
		-8.7047274496346945e-16 -1.4362196150268304e-06 8.992806499463768e-15
		0.10155606658590177 -1.0155606244421092e-06 8.992806499463768e-15
		0.14362196670704785 1.5742111825835159e-14 8.992806499463768e-15
		0.10155606658590177 0.10155606658591855 8.992806499463768e-15
		-8.472917252401116e-16 0.1436219667070644 8.992806499463768e-15
		-0.10155606658590355 0.10155606658591844 8.992806499463768e-15
		;
createNode transform -n "LeftDownLipConerCtrlGrp" -p "LeftLipConerCtrl";
	rename -uid "0A67E1FE-4B3D-B10B-6D2B-2C847DF1C043";
	setAttr ".t" -type "double3" 1.1528555887707626e-12 -1.0658141036401503e-14 3.1263880373444408e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipConerCtrl" -p "LeftDownLipConerCtrlGrp";
	rename -uid "98E115CC-492F-BE82-018D-2192E16774D5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipConerCtrlShape" -p "LeftDownLipConerCtrl";
	rename -uid "D8E2B872-4B56-3B4E-8228-33BAB3164E39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.10155606658590177 1.0155606559655055e-06 8.992806499463768e-15
		-8.472917252401116e-16 1.4362196465502244e-06 8.992806499463768e-15
		-0.10155606658590355 1.0155606559655044e-06 8.992806499463768e-15
		-0.14362196670704952 1.5769142890841102e-14 8.992806499463768e-15
		-0.10155606658590355 -0.10155606658588698 8.992806499463768e-15
		-8.7047274496346945e-16 -0.14362196670703303 8.992806499463768e-15
		0.10155606658590177 -0.10155606658588691 8.992806499463768e-15
		0.14362196670704785 1.5742111825835159e-14 8.992806499463768e-15
		0.10155606658590177 1.0155606559655055e-06 8.992806499463768e-15
		-8.472917252401116e-16 1.4362196465502244e-06 8.992806499463768e-15
		-0.10155606658590355 1.0155606559655044e-06 8.992806499463768e-15
		;
createNode transform -n "LeftDownLipBRootCnt" -p "LipCtrlGrp";
	rename -uid "85E2BA78-4A86-9E63-A671-418616D62CA4";
	setAttr ".t" -type "double3" 0.88580748427537004 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipBCtrlOffGrp" -p "LeftDownLipBRootCnt";
	rename -uid "25543C41-48EA-8F35-C45C-08B588F33062";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 -1 ;
createNode transform -n "LeftDownLipBCtrlGrp" -p "LeftDownLipBCtrlOffGrp";
	rename -uid "EA429AD2-4D63-607D-2217-279576A79648";
createNode transform -n "LeftDownLipBRvs" -p "LeftDownLipBCtrlGrp";
	rename -uid "DD47B8A7-474D-7FB4-5FBB-45A998C96CF7";
createNode transform -n "LeftDownLipBCtrl" -p "LeftDownLipBRvs";
	rename -uid "BE1600B9-4F93-180C-0711-08AD69BB0646";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipBCtrlShape" -p "LeftDownLipBCtrl";
	rename -uid "61C7605D-4F5C-0C15-0E44-9994760E7BC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.14105009248041986 -1.4105009049210282e-06 8.992806499463768e-15
		6.218264370816388e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.141050092480421 -1.4105009049557227e-06 8.992806499463768e-15
		0.19947495375979038 -1.5798882308503957e-14 8.992806499463768e-15
		0.141050092480421 0.14105009248040465 8.992806499463768e-15
		6.8316750433061116e-16 0.19947495375977412 8.992806499463768e-15
		-0.14105009248041978 0.14105009248040473 8.992806499463768e-15
		-0.19947495375978924 -1.5687860006041442e-14 8.992806499463768e-15
		-0.14105009248041986 -1.4105009049210282e-06 8.992806499463768e-15
		6.218264370816388e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.141050092480421 -1.4105009049557227e-06 8.992806499463768e-15
		;
createNode transform -n "LeftDownLipARootCnt" -p "LipCtrlGrp";
	rename -uid "EBF1CAE6-4015-49AF-FB7C-6390B928D2C7";
	setAttr ".t" -type "double3" 0.52005810963002419 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipACtrlOffGrp" -p "LeftDownLipARootCnt";
	rename -uid "99F1EBC0-40B7-1B2E-3345-AB8D654C89B4";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LeftDownLipACtrlGrp" -p "LeftDownLipACtrlOffGrp";
	rename -uid "0D251F12-4EFB-571E-6B20-83A6FAA13900";
createNode transform -n "LeftDownLipARvs" -p "LeftDownLipACtrlGrp";
	rename -uid "D9B9DD46-4775-C842-C901-C8B18B6B8A82";
createNode transform -n "LeftDownLipACtrl" -p "LeftDownLipARvs";
	rename -uid "17FB4FE5-4738-2675-EDAE-1794685910DF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipACtrlShape" -p "LeftDownLipACtrl";
	rename -uid "C62FCE88-4106-3900-D6CF-C285A7B4E834";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.14105009248041986 -1.4105009049210282e-06 8.992806499463768e-15
		6.218264370816388e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.141050092480421 -1.4105009049557227e-06 8.992806499463768e-15
		0.19947495375979038 -1.5798882308503957e-14 8.992806499463768e-15
		0.141050092480421 0.14105009248040465 8.992806499463768e-15
		6.8316750433061116e-16 0.19947495375977412 8.992806499463768e-15
		-0.14105009248041978 0.14105009248040473 8.992806499463768e-15
		-0.19947495375978924 -1.5687860006041442e-14 8.992806499463768e-15
		-0.14105009248041986 -1.4105009049210282e-06 8.992806499463768e-15
		6.218264370816388e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.141050092480421 -1.4105009049557227e-06 8.992806499463768e-15
		;
createNode transform -n "CenterDownLipMRootCnt" -p "LipCtrlGrp";
	rename -uid "8D448E46-498D-018D-A06D-4BA1094D2987";
	setAttr ".t" -type "double3" -6.6810499133469237e-07 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterDownLipMCtrlOffGrp" -p "CenterDownLipMRootCnt";
	rename -uid "CCC5D361-42A3-8739-4B0C-9EA866D01B46";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 -1 ;
createNode transform -n "CenterDownLipMCtrlGrp" -p "CenterDownLipMCtrlOffGrp";
	rename -uid "74DE52BF-481A-6A4F-B135-F3B8E1D947B1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "CenterDownLipMRvs" -p "CenterDownLipMCtrlGrp";
	rename -uid "93A8E090-4ED0-7BE2-2008-57ACC93322C7";
createNode transform -n "CenterDownLipMCtrl" -p "CenterDownLipMRvs";
	rename -uid "A30AF1FE-4910-B25E-C6FF-188D394AC35C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterDownLipMCtrlShape" -p "CenterDownLipMCtrl";
	rename -uid "4CCA0F4A-4484-1DC9-929A-C7AF0E93F60F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.14105009248041955 -1.4105009084727992e-06 8.992806499463768e-15
		8.4387086584228019e-16 -1.9947495065206995e-06 8.992806499463768e-15
		0.14105009248042127 -1.4105009085491268e-06 8.992806499463768e-15
		0.19947495375979066 -1.9468614140746844e-14 8.992806499463768e-15
		0.14105009248042122 0.14105009248040104 8.992806499463768e-15
		9.6271827042976778e-16 0.19947495375977042 8.992806499463768e-15
		-0.14105009248041936 0.14105009248040098 8.992806499463768e-15
		-0.19947495375978908 -1.9295141793149164e-14 8.992806499463768e-15
		-0.14105009248041955 -1.4105009084727992e-06 8.992806499463768e-15
		8.4387086584228019e-16 -1.9947495065206995e-06 8.992806499463768e-15
		0.14105009248042127 -1.4105009085491268e-06 8.992806499463768e-15
		;
createNode transform -n "RightDownLipARootCnt" -p "LipCtrlGrp";
	rename -uid "53AC54ED-4895-C713-9E3E-B9884EA6A449";
	setAttr ".t" -type "double3" -0.52005924374740198 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipACtrlOffGrp" -p "RightDownLipARootCnt";
	rename -uid "1405A57B-4CAD-5DB1-407A-C7A1EFB2791D";
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightDownLipACtrlGrp" -p "RightDownLipACtrlOffGrp";
	rename -uid "5DD9D99C-46C3-07A6-31BA-F9A0B175880F";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightDownLipARvs" -p "RightDownLipACtrlGrp";
	rename -uid "F640AE2B-4671-4B3E-FA5B-819ABC77F9CD";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightDownLipACtrl" -p "RightDownLipARvs";
	rename -uid "14E47753-4D28-37C1-0E80-94BD6430EE64";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipACtrlShape" -p "RightDownLipACtrl";
	rename -uid "55D40D37-4BDE-B118-67DA-FA8EF0DC89E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.14105009248041936 -1.4105009049150685e-06 8.992806499463768e-15
		9.5489348854664348e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.1410500924804213 -1.4105009049844575e-06 8.992806499463768e-15
		0.19947495375979085 -1.5827616994812388e-14 8.992806499463768e-15
		0.1410500924804213 0.14105009248040468 8.992806499463768e-15
		1.0547118744575897e-15 0.19947495375977423 8.992806499463768e-15
		-0.14105009248041941 0.14105009248040482 8.992806499463768e-15
		-0.19947495375978885 -1.5702716904542058e-14 8.992806499463768e-15
		-0.14105009248041936 -1.4105009049150685e-06 8.992806499463768e-15
		9.5489348854664348e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.1410500924804213 -1.4105009049844575e-06 8.992806499463768e-15
		;
createNode transform -n "RightDownLipBRootCnt" -p "LipCtrlGrp";
	rename -uid "D3AF1708-481D-1FD3-0CAA-B79E6E06276F";
	setAttr ".t" -type "double3" -0.88580810804045251 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipBCtrlOffGrp" -p "RightDownLipBRootCnt";
	rename -uid "6CA6403F-4D45-88ED-4DA0-6A88702A7E6A";
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "RightDownLipBCtrlGrp" -p "RightDownLipBCtrlOffGrp";
	rename -uid "B07B32EF-41A7-4738-93DA-7A8FD4B589CB";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipBRvs" -p "RightDownLipBCtrlGrp";
	rename -uid "85D9C726-4799-25D5-707F-03995BEC50C0";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipBCtrl" -p "RightDownLipBRvs";
	rename -uid "8D37E66C-498A-8DD5-2B17-449545A60C76";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipBCtrlShape" -p "RightDownLipBCtrl";
	rename -uid "86150034-4DF1-29B7-8286-91A5B9542952";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.14105009248041936 -1.4105009049150685e-06 8.992806499463768e-15
		9.5489348854664348e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.1410500924804213 -1.4105009049844575e-06 8.992806499463768e-15
		0.19947495375979085 -1.5827616994812388e-14 8.992806499463768e-15
		0.1410500924804213 0.14105009248040468 8.992806499463768e-15
		1.0547118744575897e-15 0.19947495375977423 8.992806499463768e-15
		-0.14105009248041941 0.14105009248040482 8.992806499463768e-15
		-0.19947495375978885 -1.5702716904542058e-14 8.992806499463768e-15
		-0.14105009248041936 -1.4105009049150685e-06 8.992806499463768e-15
		9.5489348854664348e-16 -1.9947495029679841e-06 8.992806499463768e-15
		0.1410500924804213 -1.4105009049844575e-06 8.992806499463768e-15
		;
createNode transform -n "LipSysGrp" -p "LipRigGrp";
	rename -uid "789B86CB-4529-EE39-5ADE-9E8C1E9F8AA5";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipSurfPosGrp" -p "LipSysGrp";
	rename -uid "018384CF-4890-96C3-CBC8-F2A5EC2B72F0";
	setAttr ".v" no;
createNode transform -n "LipSurfAPosGrp" -p "LipSurfPosGrp";
	rename -uid "7C98ED60-4A70-9E42-DBB2-05B99125B5F7";
createNode transform -n "LipSurf0APosGrp" -p "LipSurfAPosGrp";
	rename -uid "F787C427-4A93-8F7B-0386-8C89FA7D0B24";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf0APos" -p "LipSurf0APosGrp";
	rename -uid "D7304C26-4D76-8AB0-77A5-37A78A57D17E";
createNode locator -n "LipSurf0APosShape" -p "LipSurf0APos";
	rename -uid "56CDDE22-4206-FCE3-68BA-56B839DEBF73";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2APosGrp" -p "LipSurfAPosGrp";
	rename -uid "6D79D627-4C6F-7384-C194-EBAC30D4C9A4";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf2APos" -p "LipSurf2APosGrp";
	rename -uid "017C0D2B-4DE3-60A6-52BE-6BA8261F53B8";
createNode locator -n "LipSurf2APosShape" -p "LipSurf2APos";
	rename -uid "B47EFE7B-4FFE-E37A-2933-1E812A72DB0D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3APosGrp" -p "LipSurfAPosGrp";
	rename -uid "22254BCD-4A4F-F5DA-E2E1-F4BE32CE79B5";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf3APos" -p "LipSurf3APosGrp";
	rename -uid "A1F300EE-4B14-C806-E88E-FF90D18CD4FF";
createNode locator -n "LipSurf3APosShape" -p "LipSurf3APos";
	rename -uid "DDE23AF6-4F66-2C10-6935-A194C1328942";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4APosGrp" -p "LipSurfAPosGrp";
	rename -uid "04C0E193-46D6-741D-8CAC-57BD0E2D6C3A";
createNode transform -n "LipSurf4APos" -p "LipSurf4APosGrp";
	rename -uid "51F53818-4338-1A32-2B51-498050BA420B";
createNode locator -n "LipSurf4APosShape" -p "LipSurf4APos";
	rename -uid "53EC1157-4DCE-BBC7-5246-A0AC388C5F65";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5APosGrp" -p "LipSurfAPosGrp";
	rename -uid "867FE4E0-4FC9-94A3-6A69-85BAB92E229E";
createNode transform -n "LipSurf5APos" -p "LipSurf5APosGrp";
	rename -uid "1AA2EFC0-40F8-1702-9FBD-52B6A979DBBB";
createNode locator -n "LipSurf5APosShape" -p "LipSurf5APos";
	rename -uid "066F282E-4A0C-68A9-6A07-0D956B4E7F62";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6APosGrp" -p "LipSurfAPosGrp";
	rename -uid "8BCE2EE0-455C-5790-1309-44A4A33D05C0";
createNode transform -n "LipSurf6APos" -p "LipSurf6APosGrp";
	rename -uid "94B59F01-479C-9070-AEB9-199B277A36ED";
createNode locator -n "LipSurf6APosShape" -p "LipSurf6APos";
	rename -uid "98A47C5A-42A1-2E41-198E-F485FE55782C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8APosGrp" -p "LipSurfAPosGrp";
	rename -uid "58B7C288-49FC-860F-4428-038D3E4C75BA";
createNode transform -n "LipSurf8APos" -p "LipSurf8APosGrp";
	rename -uid "5B897561-4C11-ADCF-19BC-FEB1CBC4D7C5";
createNode locator -n "LipSurf8APosShape" -p "LipSurf8APos";
	rename -uid "6011B9FA-43AA-7D7C-E846-4B974493B7C9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurfBPosGrp" -p "LipSurfPosGrp";
	rename -uid "E0AE7117-4BC1-E1B3-2A43-CD9BC887C7E5";
createNode transform -n "LipSurf0BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "4921FF16-46D2-C352-2B81-25936CB3CF15";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf0BPos" -p "LipSurf0BPosGrp";
	rename -uid "957F8B01-4552-1967-AA34-3DB8F239A6F6";
createNode locator -n "LipSurf0BPosShape" -p "LipSurf0BPos";
	rename -uid "FEC3E829-485A-4AC7-14F5-6D81C56AB2B8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "612BA737-41BA-6EF2-CFA9-75A35C6E5FBE";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf2BPos" -p "LipSurf2BPosGrp";
	rename -uid "E32B69AF-42F5-9595-3487-96BB61AB0FEB";
createNode locator -n "LipSurf2BPosShape" -p "LipSurf2BPos";
	rename -uid "E31E9E1C-4315-A982-0C9E-D69F47349780";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "18E0A37A-4DA5-6D88-AA90-6AB72781B8C6";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf3BPos" -p "LipSurf3BPosGrp";
	rename -uid "1F48CF6D-4DDF-08B4-D274-64839DB54510";
createNode locator -n "LipSurf3BPosShape" -p "LipSurf3BPos";
	rename -uid "CEEDBAA0-44D0-8668-74A9-07B8701BF742";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "862BF74F-4CED-58F6-92ED-D9A1DEAC8762";
createNode transform -n "LipSurf4BPos" -p "LipSurf4BPosGrp";
	rename -uid "98E7B369-4F9A-E046-EEFC-85A0E40267FE";
createNode locator -n "LipSurf4BPosShape" -p "LipSurf4BPos";
	rename -uid "0815AE00-4354-0569-B2AD-0D8BE7E124FD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "A31D9D25-49BC-747B-F4F2-539EFEBAD3BF";
createNode transform -n "LipSurf5BPos" -p "LipSurf5BPosGrp";
	rename -uid "0E858086-4919-762D-E4B8-27A98A07AAFC";
createNode locator -n "LipSurf5BPosShape" -p "LipSurf5BPos";
	rename -uid "40DC32D4-4D81-9E58-6708-D9B1263EF75A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "8769DFD9-487C-5742-F421-47BFB9A0A98D";
createNode transform -n "LipSurf6BPos" -p "LipSurf6BPosGrp";
	rename -uid "FAACC742-4461-D012-F899-3F946174E90C";
createNode locator -n "LipSurf6BPosShape" -p "LipSurf6BPos";
	rename -uid "632E919E-42EE-F85C-A7F2-768F74405B38";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "AB74002D-4788-21E0-0661-D4BDCD34A856";
createNode transform -n "LipSurf8BPos" -p "LipSurf8BPosGrp";
	rename -uid "C1FE6C47-4FAE-20D7-D12A-30985F156E97";
createNode locator -n "LipSurf8BPosShape" -p "LipSurf8BPos";
	rename -uid "34BB84A1-465A-25A0-4F22-DC96D56C2354";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipZipGrp" -p "LipSysGrp";
	rename -uid "121E8731-495D-92E4-C30D-F2AA578BB881";
	setAttr ".v" no;
createNode transform -n "LipSurfAZipPosGrp" -p "LipZipGrp";
	rename -uid "B59E3541-4E5B-9DC3-60A5-2398D957D3F1";
createNode transform -n "LipSurf0AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "F5AA5C22-46B5-126B-2CD2-5891B6D0D2D9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "9E6BD9B4-4521-B414-FFCB-87AEEFD78B09";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "0ACB3E14-414D-F367-ECB8-259D61AF8109";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "4811BF44-452F-4F7D-E95E-77A257170496";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "8874E2D9-47DD-FEED-BCA6-2AAA6CE11F47";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "D3331DA7-4C65-D051-D719-C4ABD287F78E";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "9BB91885-4FD7-1825-94EF-1893E8D5F54A";
	setAttr ".dla" yes;
createNode transform -n "LipSurfBZipPosGrp" -p "LipZipGrp";
	rename -uid "0AB88817-4ED6-ABD5-B3FA-EF97DD5A93C5";
	setAttr ".t" -type "double3" 6.3527471044072525e-22 0 -1.3440637491868301e-14 ;
createNode transform -n "LipSurf0BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "050BD2A2-4761-C3D0-62F3-EE94B0C037DA";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "8D5CD8C6-4755-F00A-74E5-5E9DC9A3DF67";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "F431BE28-4BFE-1339-1FED-8FA20C3AD106";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "C922382A-46D9-0607-DE18-6F977C52F209";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "8DDDE84E-42C2-7C0C-945F-DEA41B160420";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "2C87CB80-4746-1A8D-1263-FF8ABF452C3D";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "BAF28165-480E-4C1F-A965-0084325AA5CA";
	setAttr ".r" -type "double3" 0 -3.2542848354264213e-27 0 ;
	setAttr ".dla" yes;
createNode transform -n "LipCrvsGrp" -p "LipSysGrp";
	rename -uid "9F537059-4E17-F910-39C9-DF951B311FD4";
createNode transform -n "LibZipSurf" -p "LipCrvsGrp";
	rename -uid "75B3ED76-4A3A-FE28-593A-7B859A7E96AD";
	setAttr ".v" no;
createNode nurbsSurface -n "LibZipSurfShape" -p "LibZipSurf";
	rename -uid "1EB14987-4867-7697-09DA-6FA24A042603";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "LipPosCrvGrp" -p "LipCrvsGrp";
	rename -uid "47F5B864-43CF-F390-2C68-ADB2905C12C4";
	setAttr ".tmp" yes;
	setAttr ".ovdt" 2;
createNode transform -n "LipDownPosCrv" -p "LipPosCrvGrp";
	rename -uid "A148B247-4FFB-0B82-2C02-68A2F04AD194";
createNode bezierCurve -n "LipDownPosCrvShape" -p "LipDownPosCrv";
	rename -uid "4CF015F7-472D-7CB2-5E2C-2EBB5238A6CA";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipDownPosCrvShapeOrig" -p "LipDownPosCrv";
	rename -uid "EA9B52CC-4114-A1A3-FD3B-B7BD593DD4A2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1236455623334476 -3.5527136788005033e-15 0.99999999999999822
		-1.1236455623334476 -3.5527136788005033e-15 0.99999999999999822
		-0.89999927475939678 -1.2269108659853202e-13 0.99999999999998579
		7.2524060363017278e-07 -1.2244615723870255e-13 0.99999999999997868
		0.90000072524060382 -1.2244615723870255e-13 0.99999999999998224
		1.1236469890099767 -1.0658141036401508e-14 0.99999999999999933
		1.1236469890099767 -1.0658141036401508e-14 0.99999999999999933
		;
createNode transform -n "LipUpPosCrv" -p "LipPosCrvGrp";
	rename -uid "87031A60-499C-1EB9-A414-0AABDD849D90";
createNode bezierCurve -n "LipUpPosCrvShape" -p "LipUpPosCrv";
	rename -uid "1A7D2207-4821-3907-ECD3-B7891C07D4ED";
	setAttr -k off ".v";
	setAttr ".ovc" 22;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipUpPosCrvShapeOrig" -p "LipUpPosCrv";
	rename -uid "628B96C5-451C-1029-3F41-2C86927836F2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1236455623334476 -3.5527136788005025e-15 0.99999999999999822
		-1.1236455623334476 -3.5527136788005025e-15 0.99999999999999822
		-0.89999930889893975 1.0658141036401512e-14 0.99999999999999623
		6.9110106061117151e-07 1.4210854715202013e-14 0.99999999999999212
		0.90000069110106096 1.4210854715202013e-14 0.99999999999999567
		1.1236469890099767 -7.1054273576010034e-15 1.0000000000000029
		1.1236469890099767 -7.1054273576010034e-15 1.0000000000000029
		;
createNode transform -n "LipLocalGrp" -p "LipSysGrp";
	rename -uid "EBCE570B-43AA-2E9C-CCB0-5BBF4DFB06FD";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipLocalLoc" -p "LipLocalGrp";
	rename -uid "87687400-4AEF-973B-65A8-00966F7B3F82";
createNode locator -n "LipLocalLocShape" -p "LipLocalLoc";
	rename -uid "2DC60D62-454F-1581-24A1-7DA27A9F86EA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipDownRightLocalPos" -p "LipLocalGrp";
	rename -uid "6C9FA25A-4CDD-2545-B15D-609ECFC37AC9";
createNode locator -n "LipDownRightLocalPosShape" -p "LipDownRightLocalPos";
	rename -uid "6EE79353-4748-3BB8-9FF8-B69ABE2EC790";
	setAttr -k off ".v";
createNode transform -n "LipDownLeftLocalPos" -p "LipLocalGrp";
	rename -uid "CABEA846-4EB5-7FC6-E0E5-14984E484A8F";
createNode locator -n "LipDownLeftLocalPosShape" -p "LipDownLeftLocalPos";
	rename -uid "7E332D74-48C4-286C-C375-D4A2649FBE78";
	setAttr -k off ".v";
createNode transform -n "LipRootLocalPos" -p "LipLocalGrp";
	rename -uid "382B8623-4CBD-26B0-BFCF-1E81033F0ECB";
createNode transform -n "LipRootPoser" -p "LipSysGrp";
	rename -uid "0807531C-4977-8A01-5868-C4AD0B266AAB";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -cb on ".mode";
createNode nurbsCurve -n "LipRootPoserShape" -p "LipRootPoser";
	rename -uid "13CCF3F6-4AA3-97AA-52D7-DE991A1EDAE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 0 no 3
		19 0 0.10000000000000001 0.20000000000000001 0.29999999999999999 0.40000000000000002
		 0.5 0.59999999999999998 0.69999999999999996 0.80000000000000004 0.90000000000000002
		 1 1.1000000000000001 1.2 1.3 1.3999999999999999 1.5 1.6000000000000001 1.7 1.8
		19
		0.5 0.5 -0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 0.5 -0.5
		;
createNode transform -n "LipPosersGrp" -p "LipRootPoser";
	rename -uid "BD5600C5-4042-AC99-3E14-BFA23498DCD3";
createNode transform -n "LipRootPos" -p "LipPosersGrp";
	rename -uid "6F031A9E-4B8F-9F19-E5A4-B4BF08DFCA5E";
createNode transform -n "LipMainUpCntOffGrp" -p "LipRootPos";
	rename -uid "7F166E2A-4635-1704-D944-30AF5A6A495C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainUpCnt" -p "LipMainUpCntOffGrp";
	rename -uid "68CFC36C-498C-C810-D02C-B6B59D8965F3";
createNode transform -n "UpLipMainCntOffGrp" -p "LipMainUpCnt";
	rename -uid "55DE3932-4C9B-1F70-055F-DB8809825676";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.5527136788005009e-15 ;
createNode transform -n "UpLipMainCnt" -p "UpLipMainCntOffGrp";
	rename -uid "333A4A6F-491E-2D95-8E1B-AF9829BE0087";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "UpLip2CrvPosOffGrp" -p "UpLipMainCnt";
	rename -uid "6CE7DDFD-4B15-8B19-E747-F8A2F6EA5702";
	setAttr ".t" -type "double3" -0.89999930889893964 0 -1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1.0000000000000004 ;
createNode transform -n "UpLip2CrvPos" -p "UpLip2CrvPosOffGrp";
	rename -uid "E6F30AAE-4B7A-A55C-52BD-CBA119BB488F";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "UpLip2CrvPosShape" -p "UpLip2CrvPos";
	rename -uid "A0A28124-448C-F1CB-AEAB-3886B2AE7B8C";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "UpLip2CrvPos";
	rename -uid "81F0F341-4B86-384B-2DBE-DFA057384CDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-4.4408918338028345e-17 0 1.7763568394002497e-15
		-4.4408918338028345e-17 0.20000000298023232 1.7763568394002497e-15
		-4.4408918338028345e-17 0.15000000596046448 -0.050000000745056311
		-4.4408918338028345e-17 0.15000000596046448 0.05000000074505985
		-4.4408918338028345e-17 0.20000000298023232 1.7763568394002497e-15
		0.050000000745058136 0.15000000596046448 1.7763568394002497e-15
		-0.050000000745058011 0.15000000596046448 1.7763568394002497e-15
		-4.4408918338028345e-17 0.15000000596046448 -0.050000000745056311
		0.050000000745058136 0.15000000596046448 1.7763568394002497e-15
		-4.4408918338028345e-17 0.15000000596046448 0.05000000074505985
		-0.050000000745058011 0.15000000596046448 1.7763568394002497e-15
		-4.4408918338028345e-17 0.20000000298023232 1.7763568394002497e-15
		;
createNode nurbsCurve -n "AxisZShape" -p "UpLip2CrvPos";
	rename -uid "D723EB3F-47B7-D8C3-5163-4A93B1F2F494";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-4.4408918338028345e-17 0 1.7763568394002497e-15
		-4.4408918338028345e-17 0 0.20000000298023402
		-4.4408918338028345e-17 0.050000000745058081 0.15000000596046617
		-4.4408918338028345e-17 -0.050000000745058081 0.15000000596046617
		-4.4408918338028345e-17 0 0.20000000298023402
		-0.050000000745058011 0 0.15000000596046617
		0.050000000745058136 0 0.15000000596046617
		-4.4408918338028345e-17 0.050000000745058081 0.15000000596046617
		-0.050000000745058011 0 0.15000000596046617
		-4.4408918338028345e-17 -0.050000000745058081 0.15000000596046617
		0.050000000745058136 0 0.15000000596046617
		-4.4408918338028345e-17 0 0.20000000298023402
		;
createNode nurbsCurve -n "AxisXShape" -p "UpLip2CrvPos";
	rename -uid "A407784F-483E-7164-0930-4596177229A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-4.4408918338028345e-17 0 1.7763568394002497e-15
		0.20000000298023235 0 1.7763568394002497e-15
		0.15000000596046456 0.050000000745058081 1.7763568394002497e-15
		0.15000000596046456 -0.050000000745058081 1.7763568394002497e-15
		0.20000000298023235 0 1.7763568394002497e-15
		0.15000000596046456 0 -0.050000000745056311
		0.15000000596046456 0 0.05000000074505985
		0.15000000596046456 -0.050000000745058081 1.7763568394002497e-15
		0.15000000596046456 0 -0.050000000745056311
		0.15000000596046456 0.050000000745058081 1.7763568394002497e-15
		0.15000000596046456 0 0.05000000074505985
		0.20000000298023235 0 1.7763568394002497e-15
		;
createNode transform -n "UpLip3CrvPosOffGrp" -p "UpLipMainCnt";
	rename -uid "6D8558D1-4B53-6A7B-AF89-E5982B3BED50";
	setAttr ".t" -type "double3" 6.9110106061117162e-07 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "UpLip3CrvPos" -p "UpLip3CrvPosOffGrp";
	rename -uid "5C9B918F-4CD1-E2DC-942D-288F6762B9FC";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.0587911840678754e-22 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "UpLip3CrvPosShape" -p "UpLip3CrvPos";
	rename -uid "D90781F5-4B91-0D6A-1D7D-40BDAE0F7513";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "UpLip3CrvPos";
	rename -uid "EB455CB2-494F-9CB7-C92D-649400B38615";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.9920069569286165e-17 -1.7763568394002497e-15 -1.7763568394002497e-15
		-9.9920069569286165e-17 0.20000000298023055 -1.7763568394002497e-15
		-9.9920069569286165e-17 0.15000000596046278 -0.05000000074505985
		-9.9920069569286165e-17 0.15000000596046278 0.050000000745056311
		-9.9920069569286165e-17 0.20000000298023055 -1.7763568394002497e-15
		0.050000000745058081 0.15000000596046278 -1.7763568394002497e-15
		-0.050000000745058081 0.15000000596046278 -1.7763568394002497e-15
		-9.9920069569286165e-17 0.15000000596046278 -0.05000000074505985
		0.050000000745058081 0.15000000596046278 -1.7763568394002497e-15
		-9.9920069569286165e-17 0.15000000596046278 0.050000000745056311
		-0.050000000745058081 0.15000000596046278 -1.7763568394002497e-15
		-9.9920069569286165e-17 0.20000000298023055 -1.7763568394002497e-15
		;
createNode nurbsCurve -n "AxisZShape" -p "UpLip3CrvPos";
	rename -uid "8549F317-41E4-F618-8114-508417735E18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.9920069569286165e-17 -1.7763568394002497e-15 -1.7763568394002497e-15
		-9.9920069569286165e-17 -1.7763568394002497e-15 0.20000000298023055
		-9.9920069569286165e-17 0.050000000745056311 0.15000000596046278
		-9.9920069569286165e-17 -0.05000000074505985 0.15000000596046278
		-9.9920069569286165e-17 -1.7763568394002497e-15 0.20000000298023055
		-0.050000000745058081 -1.7763568394002497e-15 0.15000000596046278
		0.050000000745058081 -1.7763568394002497e-15 0.15000000596046278
		-9.9920069569286165e-17 0.050000000745056311 0.15000000596046278
		-0.050000000745058081 -1.7763568394002497e-15 0.15000000596046278
		-9.9920069569286165e-17 -0.05000000074505985 0.15000000596046278
		0.050000000745058081 -1.7763568394002497e-15 0.15000000596046278
		-9.9920069569286165e-17 -1.7763568394002497e-15 0.20000000298023055
		;
createNode nurbsCurve -n "AxisXShape" -p "UpLip3CrvPos";
	rename -uid "E49D6F7D-4690-A579-C45E-6CBAB6FEE23C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.9920069569286165e-17 -1.7763568394002497e-15 -1.7763568394002497e-15
		0.20000000298023232 -1.7763568394002497e-15 -1.7763568394002497e-15
		0.15000000596046448 0.050000000745056311 -1.7763568394002497e-15
		0.15000000596046448 -0.05000000074505985 -1.7763568394002497e-15
		0.20000000298023232 -1.7763568394002497e-15 -1.7763568394002497e-15
		0.15000000596046448 -1.7763568394002497e-15 -0.05000000074505985
		0.15000000596046448 -1.7763568394002497e-15 0.050000000745056311
		0.15000000596046448 -0.05000000074505985 -1.7763568394002497e-15
		0.15000000596046448 -1.7763568394002497e-15 -0.05000000074505985
		0.15000000596046448 0.050000000745056311 -1.7763568394002497e-15
		0.15000000596046448 -1.7763568394002497e-15 0.050000000745056311
		0.20000000298023232 -1.7763568394002497e-15 -1.7763568394002497e-15
		;
createNode transform -n "UpLip4CrvPosOffGrp" -p "UpLipMainCnt";
	rename -uid "AD661770-4452-D605-1794-8285399BA834";
	setAttr ".t" -type "double3" 0.90000069110106096 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "UpLip4CrvPos" -p "UpLip4CrvPosOffGrp";
	rename -uid "C25FBDEC-440A-1557-C1D4-C788D1FD2B77";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "UpLip4CrvPosShape" -p "UpLip4CrvPos";
	rename -uid "E3D741A2-4D0E-F35C-A223-E498A738D0CE";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "UpLip4CrvPos";
	rename -uid "E67EF27B-439B-4FA6-B8D3-3798D4B58D70";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.5543122080054396e-16 -1.7763568394002497e-15 0
		-1.5543122080054396e-16 0.20000000298023055 0
		-1.5543122080054396e-16 0.15000000596046278 -0.050000000745058081
		-1.5543122080054396e-16 0.15000000596046278 0.050000000745058081
		-1.5543122080054396e-16 0.20000000298023055 0
		0.050000000745058011 0.15000000596046278 0
		-0.050000000745058136 0.15000000596046278 0
		-1.5543122080054396e-16 0.15000000596046278 -0.050000000745058081
		0.050000000745058011 0.15000000596046278 0
		-1.5543122080054396e-16 0.15000000596046278 0.050000000745058081
		-0.050000000745058136 0.15000000596046278 0
		-1.5543122080054396e-16 0.20000000298023055 0
		;
createNode nurbsCurve -n "AxisZShape" -p "UpLip4CrvPos";
	rename -uid "B9099067-40BC-929D-5A2D-9BAC65BFF3C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.5543122080054396e-16 -1.7763568394002497e-15 0
		-1.5543122080054396e-16 -1.7763568394002497e-15 0.20000000298023232
		-1.5543122080054396e-16 0.050000000745056311 0.15000000596046448
		-1.5543122080054396e-16 -0.05000000074505985 0.15000000596046448
		-1.5543122080054396e-16 -1.7763568394002497e-15 0.20000000298023232
		-0.050000000745058136 -1.7763568394002497e-15 0.15000000596046448
		0.050000000745058011 -1.7763568394002497e-15 0.15000000596046448
		-1.5543122080054396e-16 0.050000000745056311 0.15000000596046448
		-0.050000000745058136 -1.7763568394002497e-15 0.15000000596046448
		-1.5543122080054396e-16 -0.05000000074505985 0.15000000596046448
		0.050000000745058011 -1.7763568394002497e-15 0.15000000596046448
		-1.5543122080054396e-16 -1.7763568394002497e-15 0.20000000298023232
		;
createNode nurbsCurve -n "AxisXShape" -p "UpLip4CrvPos";
	rename -uid "702A35C3-445F-AD8F-AF52-E98BB64982D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.5543122080054396e-16 -1.7763568394002497e-15 0
		0.20000000298023221 -1.7763568394002497e-15 0
		0.15000000596046437 0.050000000745056311 0
		0.15000000596046437 -0.05000000074505985 0
		0.20000000298023221 -1.7763568394002497e-15 0
		0.15000000596046437 -1.7763568394002497e-15 -0.050000000745058081
		0.15000000596046437 -1.7763568394002497e-15 0.050000000745058081
		0.15000000596046437 -0.05000000074505985 0
		0.15000000596046437 -1.7763568394002497e-15 -0.050000000745058081
		0.15000000596046437 0.050000000745056311 0
		0.15000000596046437 -1.7763568394002497e-15 0.050000000745058081
		0.20000000298023221 -1.7763568394002497e-15 0
		;
createNode transform -n "LipWorldLoc" -p "LipPosersGrp";
	rename -uid "3D2B0A35-4FB0-97F9-FF51-DC9F75B2EEEC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LipWorldLocShape" -p "LipWorldLoc";
	rename -uid "1DBFDDFE-4F05-5351-991F-D885D96AB747";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipMainDownCntOffGrp" -p "LipWorldLoc";
	rename -uid "A0A9FDDF-4D64-4F83-662B-30806986479A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainDownCnt" -p "LipMainDownCntOffGrp";
	rename -uid "C3E6A7CA-41ED-4E01-C015-FEBFD6D8F5EE";
createNode transform -n "DownLipMainCntOffGrp" -p "LipMainDownCnt";
	rename -uid "C64B0994-4082-DBAA-7E45-58BC20DBAF8D";
	setAttr ".t" -type "double3" 5.2939559203393771e-22 -3.5527136788005009e-15 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "DownLipMainCnt" -p "DownLipMainCntOffGrp";
	rename -uid "C08F6F71-4691-0910-39F8-0EA2AEEE472A";
createNode transform -n "DownLip2CrvPosOffGrp" -p "DownLipMainCnt";
	rename -uid "09142983-4D94-3CAD-9087-DA95E25FB2F3";
	setAttr ".t" -type "double3" -0.89999927475939667 -1.2624380027733247e-13 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "DownLip2CrvPos" -p "DownLip2CrvPosOffGrp";
	rename -uid "FCD58E30-4635-ADC1-34A5-AEBCC05263B5";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "DownLip2CrvPosShape" -p "DownLip2CrvPos";
	rename -uid "9B9F7B4C-42EB-458F-88BF-D2A7CE69A08A";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "DownLip2CrvPos";
	rename -uid "868881A2-49FF-9FD1-3A4F-D5B51E5E7DAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.5543122080054396e-16 0 0
		-1.5543122080054396e-16 0.20000000298023232 0
		-1.5543122080054396e-16 0.15000000596046448 -0.050000000745058081
		-1.5543122080054396e-16 0.15000000596046448 0.050000000745058081
		-1.5543122080054396e-16 0.20000000298023232 0
		0.050000000745058011 0.15000000596046448 0
		-0.050000000745058136 0.15000000596046448 0
		-1.5543122080054396e-16 0.15000000596046448 -0.050000000745058081
		0.050000000745058011 0.15000000596046448 0
		-1.5543122080054396e-16 0.15000000596046448 0.050000000745058081
		-0.050000000745058136 0.15000000596046448 0
		-1.5543122080054396e-16 0.20000000298023232 0
		;
createNode nurbsCurve -n "AxisZShape" -p "DownLip2CrvPos";
	rename -uid "5C71E1F3-4029-BBF2-3858-4EAA590A4EE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.5543122080054396e-16 0 0
		-1.5543122080054396e-16 0 0.20000000298023232
		-1.5543122080054396e-16 0.050000000745058081 0.15000000596046448
		-1.5543122080054396e-16 -0.050000000745058081 0.15000000596046448
		-1.5543122080054396e-16 0 0.20000000298023232
		-0.050000000745058136 0 0.15000000596046448
		0.050000000745058011 0 0.15000000596046448
		-1.5543122080054396e-16 0.050000000745058081 0.15000000596046448
		-0.050000000745058136 0 0.15000000596046448
		-1.5543122080054396e-16 -0.050000000745058081 0.15000000596046448
		0.050000000745058011 0 0.15000000596046448
		-1.5543122080054396e-16 0 0.20000000298023232
		;
createNode nurbsCurve -n "AxisXShape" -p "DownLip2CrvPos";
	rename -uid "075BF4D7-40B1-B9B0-27C8-5E891F87F63E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.5543122080054396e-16 0 0
		0.20000000298023221 0 0
		0.15000000596046437 0.050000000745058081 0
		0.15000000596046437 -0.050000000745058081 0
		0.20000000298023221 0 0
		0.15000000596046437 0 -0.050000000745058081
		0.15000000596046437 0 0.050000000745058081
		0.15000000596046437 -0.050000000745058081 0
		0.15000000596046437 0 -0.050000000745058081
		0.15000000596046437 0.050000000745058081 0
		0.15000000596046437 0 0.050000000745058081
		0.20000000298023221 0 0
		;
createNode transform -n "DownLip3CrvPosOffGrp" -p "DownLipMainCnt";
	rename -uid "729394C9-40B1-888B-860D-D684D9558500";
	setAttr ".t" -type "double3" 7.2524060363017215e-07 -1.25998870917503e-13 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999989 ;
createNode transform -n "DownLip3CrvPos" -p "DownLip3CrvPosOffGrp";
	rename -uid "88625458-4377-B0BD-8E49-7AA1263D133D";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.0587911840678754e-22 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "DownLip3CrvPosShape" -p "DownLip3CrvPos";
	rename -uid "D2053F4A-4A44-B968-C43B-2B9502ECB8EA";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "DownLip3CrvPos";
	rename -uid "9974D3F3-4A04-EC5E-C1A5-F5BBC0DB8616";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.992017544840456e-17 0 0
		-9.992017544840456e-17 0.20000000298023232 0
		-9.992017544840456e-17 0.15000000596046448 -0.050000000745058081
		-9.992017544840456e-17 0.15000000596046448 0.050000000745058081
		-9.992017544840456e-17 0.20000000298023232 0
		0.050000000745058081 0.15000000596046448 0
		-0.050000000745058081 0.15000000596046448 0
		-9.992017544840456e-17 0.15000000596046448 -0.050000000745058081
		0.050000000745058081 0.15000000596046448 0
		-9.992017544840456e-17 0.15000000596046448 0.050000000745058081
		-0.050000000745058081 0.15000000596046448 0
		-9.992017544840456e-17 0.20000000298023232 0
		;
createNode nurbsCurve -n "AxisZShape" -p "DownLip3CrvPos";
	rename -uid "57ED926D-4142-E06F-0107-C7B5B99787CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.992017544840456e-17 0 0
		-9.992017544840456e-17 0 0.20000000298023232
		-9.992017544840456e-17 0.050000000745058081 0.15000000596046448
		-9.992017544840456e-17 -0.050000000745058081 0.15000000596046448
		-9.992017544840456e-17 0 0.20000000298023232
		-0.050000000745058081 0 0.15000000596046448
		0.050000000745058081 0 0.15000000596046448
		-9.992017544840456e-17 0.050000000745058081 0.15000000596046448
		-0.050000000745058081 0 0.15000000596046448
		-9.992017544840456e-17 -0.050000000745058081 0.15000000596046448
		0.050000000745058081 0 0.15000000596046448
		-9.992017544840456e-17 0 0.20000000298023232
		;
createNode nurbsCurve -n "AxisXShape" -p "DownLip3CrvPos";
	rename -uid "8047A7CC-468B-1FC3-E366-8AB9E8ABEC50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.992017544840456e-17 0 0
		0.20000000298023232 0 0
		0.15000000596046448 0.050000000745058081 0
		0.15000000596046448 -0.050000000745058081 0
		0.20000000298023232 0 0
		0.15000000596046448 0 -0.050000000745058081
		0.15000000596046448 0 0.050000000745058081
		0.15000000596046448 -0.050000000745058081 0
		0.15000000596046448 0 -0.050000000745058081
		0.15000000596046448 0.050000000745058081 0
		0.15000000596046448 0 0.050000000745058081
		0.20000000298023232 0 0
		;
createNode transform -n "DownLip4CrvPosOffGrp" -p "DownLipMainCnt";
	rename -uid "4CD93E0D-4270-36EB-A912-BD9C33FBFD4D";
	setAttr ".t" -type "double3" 0.90000072524060393 -1.25998870917503e-13 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999989 ;
createNode transform -n "DownLip4CrvPos" -p "DownLip4CrvPosOffGrp";
	rename -uid "EA7C1698-4DAF-C5FB-0D5F-F085DE2DF852";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "DownLip4CrvPosShape" -p "DownLip4CrvPos";
	rename -uid "5142ABCC-46B0-A712-138F-3F88B76E8184";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "DownLip4CrvPos";
	rename -uid "B1C0BEBD-4E4C-D636-ADC1-4281A9EC159A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-4.4408918338028345e-17 1.7763568394002497e-15 -1.7763568394002497e-15
		-4.4408918338028345e-17 0.20000000298023402 -1.7763568394002497e-15
		-4.4408918338028345e-17 0.15000000596046617 -0.05000000074505985
		-4.4408918338028345e-17 0.15000000596046617 0.050000000745056311
		-4.4408918338028345e-17 0.20000000298023402 -1.7763568394002497e-15
		0.050000000745058136 0.15000000596046617 -1.7763568394002497e-15
		-0.050000000745058011 0.15000000596046617 -1.7763568394002497e-15
		-4.4408918338028345e-17 0.15000000596046617 -0.05000000074505985
		0.050000000745058136 0.15000000596046617 -1.7763568394002497e-15
		-4.4408918338028345e-17 0.15000000596046617 0.050000000745056311
		-0.050000000745058011 0.15000000596046617 -1.7763568394002497e-15
		-4.4408918338028345e-17 0.20000000298023402 -1.7763568394002497e-15
		;
createNode nurbsCurve -n "AxisZShape" -p "DownLip4CrvPos";
	rename -uid "7E88A39A-4BAE-4410-277B-8D9CDA54AAC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-4.4408918338028345e-17 1.7763568394002497e-15 -1.7763568394002497e-15
		-4.4408918338028345e-17 1.7763568394002497e-15 0.20000000298023055
		-4.4408918338028345e-17 0.05000000074505985 0.15000000596046278
		-4.4408918338028345e-17 -0.050000000745056311 0.15000000596046278
		-4.4408918338028345e-17 1.7763568394002497e-15 0.20000000298023055
		-0.050000000745058011 1.7763568394002497e-15 0.15000000596046278
		0.050000000745058136 1.7763568394002497e-15 0.15000000596046278
		-4.4408918338028345e-17 0.05000000074505985 0.15000000596046278
		-0.050000000745058011 1.7763568394002497e-15 0.15000000596046278
		-4.4408918338028345e-17 -0.050000000745056311 0.15000000596046278
		0.050000000745058136 1.7763568394002497e-15 0.15000000596046278
		-4.4408918338028345e-17 1.7763568394002497e-15 0.20000000298023055
		;
createNode nurbsCurve -n "AxisXShape" -p "DownLip4CrvPos";
	rename -uid "76918F72-4DD4-191D-D9A2-6F92114EB15E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-4.4408918338028345e-17 1.7763568394002497e-15 -1.7763568394002497e-15
		0.20000000298023235 1.7763568394002497e-15 -1.7763568394002497e-15
		0.15000000596046456 0.05000000074505985 -1.7763568394002497e-15
		0.15000000596046456 -0.050000000745056311 -1.7763568394002497e-15
		0.20000000298023235 1.7763568394002497e-15 -1.7763568394002497e-15
		0.15000000596046456 1.7763568394002497e-15 -0.05000000074505985
		0.15000000596046456 1.7763568394002497e-15 0.050000000745056311
		0.15000000596046456 -0.050000000745056311 -1.7763568394002497e-15
		0.15000000596046456 1.7763568394002497e-15 -0.05000000074505985
		0.15000000596046456 0.05000000074505985 -1.7763568394002497e-15
		0.15000000596046456 1.7763568394002497e-15 0.050000000745056311
		0.20000000298023235 1.7763568394002497e-15 -1.7763568394002497e-15
		;
createNode transform -n "Lip5WorldPBPosGrp" -p "LipPosersGrp";
	rename -uid "90DCA30D-4C4F-BB55-38BF-65AEF8B3FD55";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
createNode transform -n "Lip5MainCntGrp" -p "Lip5WorldPBPosGrp";
	rename -uid "CF8E3091-4EF8-0DFD-2B85-DE831108220F";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Lip5CrvPosGrp" -p "Lip5MainCntGrp";
	rename -uid "DD363EE7-48D7-B636-E20D-C2A6B253E4DA";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.1236469890099767 -3.5527136788004986e-15 1.0000000000000029 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Lip5CrvPosGrpShape" -p "Lip5CrvPosGrp";
	rename -uid "A008DBA8-473A-B58C-B4A9-DDA01E881929";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "UpLip5MainCntGrp" -p "Lip5CrvPosGrp";
	rename -uid "84143709-438C-803C-4800-85A6DC243D3A";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "UpLip5CrvPosGrp" -p "UpLip5MainCntGrp";
	rename -uid "008DCA80-4197-48D4-12F5-EAABA56B3B5B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
createNode transform -n "UpLip5CrvPos" -p "UpLip5CrvPosGrp";
	rename -uid "BCEB8195-4C74-8A1C-A5C8-64A8D383C94B";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "UpLip5CrvPosShape" -p "UpLip5CrvPos";
	rename -uid "052B070A-4B62-73BF-732B-7CACAACBF7C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip5MainCntGrp" -p "Lip5CrvPosGrp";
	rename -uid "13C05E07-4C15-6480-2ACC-06B7D9F20C1D";
	setAttr ".v" no;
createNode transform -n "DownLip5CrvPosGrp" -p "DownLip5MainCntGrp";
	rename -uid "4A884720-4294-410E-FA5D-9F9EFC7A346A";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "DownLip5CrvPos" -p "DownLip5CrvPosGrp";
	rename -uid "9340469E-4820-9970-A473-0094DF5AE4E1";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "DownLip5CrvPosShape" -p "DownLip5CrvPos";
	rename -uid "B7F16E8D-4B05-423D-7152-2B9E26AF1CB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "Lip5CrvPosGrp";
	rename -uid "8AE1DBB1-45FF-D25C-7B67-DCBD2EB93F41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.9920069569286165e-17 0 1.7763568394002497e-15
		-9.9920069569286165e-17 0.20000000298023232 1.7763568394002497e-15
		-9.9920069569286165e-17 0.15000000596046448 -0.050000000745056311
		-9.9920069569286165e-17 0.15000000596046448 0.05000000074505985
		-9.9920069569286165e-17 0.20000000298023232 1.7763568394002497e-15
		0.050000000745058081 0.15000000596046448 1.7763568394002497e-15
		-0.050000000745058081 0.15000000596046448 1.7763568394002497e-15
		-9.9920069569286165e-17 0.15000000596046448 -0.050000000745056311
		0.050000000745058081 0.15000000596046448 1.7763568394002497e-15
		-9.9920069569286165e-17 0.15000000596046448 0.05000000074505985
		-0.050000000745058081 0.15000000596046448 1.7763568394002497e-15
		-9.9920069569286165e-17 0.20000000298023232 1.7763568394002497e-15
		;
createNode nurbsCurve -n "AxisZShape" -p "Lip5CrvPosGrp";
	rename -uid "116F9388-4230-BCD9-D867-80A2DD4338AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.9920069569286165e-17 0 1.7763568394002497e-15
		-9.9920069569286165e-17 0 0.20000000298023402
		-9.9920069569286165e-17 0.050000000745058081 0.15000000596046617
		-9.9920069569286165e-17 -0.050000000745058081 0.15000000596046617
		-9.9920069569286165e-17 0 0.20000000298023402
		-0.050000000745058081 0 0.15000000596046617
		0.050000000745058081 0 0.15000000596046617
		-9.9920069569286165e-17 0.050000000745058081 0.15000000596046617
		-0.050000000745058081 0 0.15000000596046617
		-9.9920069569286165e-17 -0.050000000745058081 0.15000000596046617
		0.050000000745058081 0 0.15000000596046617
		-9.9920069569286165e-17 0 0.20000000298023402
		;
createNode nurbsCurve -n "AxisXShape" -p "Lip5CrvPosGrp";
	rename -uid "42A90942-4D73-6A9C-FE78-848324F29828";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-9.9920069569286165e-17 0 1.7763568394002497e-15
		0.20000000298023232 0 1.7763568394002497e-15
		0.15000000596046448 0.050000000745058081 1.7763568394002497e-15
		0.15000000596046448 -0.050000000745058081 1.7763568394002497e-15
		0.20000000298023232 0 1.7763568394002497e-15
		0.15000000596046448 0 -0.050000000745056311
		0.15000000596046448 0 0.05000000074505985
		0.15000000596046448 -0.050000000745058081 1.7763568394002497e-15
		0.15000000596046448 0 -0.050000000745056311
		0.15000000596046448 0.050000000745058081 1.7763568394002497e-15
		0.15000000596046448 0 0.05000000074505985
		0.20000000298023232 0 1.7763568394002497e-15
		;
createNode transform -n "Lip1WorldPBPosGrp" -p "LipPosersGrp";
	rename -uid "6CF39AD5-47F4-E6E9-56F2-C99440371CEE";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "Lip1MainCntGrp" -p "Lip1WorldPBPosGrp";
	rename -uid "4AE24440-48FB-3374-48F4-1488F8F73B20";
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000009 ;
createNode transform -n "Lip1CrvPosGrp" -p "Lip1MainCntGrp";
	rename -uid "EED61B3C-4134-F8A2-5F87-09AC0E23DD81";
	setAttr ".t" -type "double3" -1.1236455623334478 0 1.0000000000000011 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 -1.0000000000000007 ;
createNode transform -n "Lip1CrvPos" -p "Lip1CrvPosGrp";
	rename -uid "6159CBD6-4EE0-CD9D-6A3C-29AC7933EB78";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Lip1CrvPosShape" -p "Lip1CrvPos";
	rename -uid "ED6A5BB1-4E9D-E984-F569-7B947C035A93";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "UpLip1MainCntGrp" -p "Lip1CrvPos";
	rename -uid "9A42A7C7-4D38-9F1B-E7AB-6E9B7F70CFB6";
	setAttr ".v" no;
createNode transform -n "UpLip1CrvPosGrp" -p "UpLip1MainCntGrp";
	rename -uid "50CE38A0-44E9-1C21-6175-ECB347C64772";
createNode transform -n "UpLip1CrvPos" -p "UpLip1CrvPosGrp";
	rename -uid "ECB79FE0-4092-FCD0-9B92-99977296DF7C";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "UpLip1CrvPosShape" -p "UpLip1CrvPos";
	rename -uid "7FEC166A-4CF7-E856-70C9-0482DD2B8A9D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip1MainCntGrp" -p "Lip1CrvPos";
	rename -uid "8952E765-4719-D3EB-DE55-6E8AE34F7A43";
	setAttr ".v" no;
createNode transform -n "DownLip1CrvPosGrp" -p "DownLip1MainCntGrp";
	rename -uid "ECF08158-4630-3787-BB13-6E80134F5F3F";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "DownLip1CrvPos" -p "DownLip1CrvPosGrp";
	rename -uid "7E72DA1E-4CDA-BD6A-7EB3-559E3BD090D7";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "DownLip1CrvPosShape" -p "DownLip1CrvPos";
	rename -uid "024A0601-4DB0-8A11-232E-FD9535619BF5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "Lip1CrvPos";
	rename -uid "ACDFBC06-4022-E76B-833A-1389DD7D9015";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.1102232893229509e-17 1.7763568394002497e-15 0
		1.1102232893229509e-17 0.20000000298023402 0
		1.1102232893229509e-17 0.15000000596046617 -0.050000000745058081
		1.1102232893229509e-17 0.15000000596046617 0.050000000745058081
		1.1102232893229509e-17 0.20000000298023402 0
		0.050000000745058185 0.15000000596046617 0
		-0.050000000745057969 0.15000000596046617 0
		1.1102232893229509e-17 0.15000000596046617 -0.050000000745058081
		0.050000000745058185 0.15000000596046617 0
		1.1102232893229509e-17 0.15000000596046617 0.050000000745058081
		-0.050000000745057969 0.15000000596046617 0
		1.1102232893229509e-17 0.20000000298023402 0
		;
createNode nurbsCurve -n "AxisZShape" -p "Lip1CrvPos";
	rename -uid "758309B8-4634-57B2-D567-CE936994EDA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.1102232893229509e-17 1.7763568394002497e-15 0
		1.1102232893229509e-17 1.7763568394002497e-15 0.20000000298023232
		1.1102232893229509e-17 0.05000000074505985 0.15000000596046448
		1.1102232893229509e-17 -0.050000000745056311 0.15000000596046448
		1.1102232893229509e-17 1.7763568394002497e-15 0.20000000298023232
		-0.050000000745057969 1.7763568394002497e-15 0.15000000596046448
		0.050000000745058185 1.7763568394002497e-15 0.15000000596046448
		1.1102232893229509e-17 0.05000000074505985 0.15000000596046448
		-0.050000000745057969 1.7763568394002497e-15 0.15000000596046448
		1.1102232893229509e-17 -0.050000000745056311 0.15000000596046448
		0.050000000745058185 1.7763568394002497e-15 0.15000000596046448
		1.1102232893229509e-17 1.7763568394002497e-15 0.20000000298023232
		;
createNode nurbsCurve -n "AxisXShape" -p "Lip1CrvPos";
	rename -uid "F47BA896-4464-DDFF-2258-61A5CE62557F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.1102232893229509e-17 1.7763568394002497e-15 0
		0.20000000298023235 1.7763568394002497e-15 0
		0.15000000596046453 0.05000000074505985 0
		0.15000000596046453 -0.050000000745056311 0
		0.20000000298023235 1.7763568394002497e-15 0
		0.15000000596046453 1.7763568394002497e-15 -0.050000000745058081
		0.15000000596046453 1.7763568394002497e-15 0.050000000745058081
		0.15000000596046453 -0.050000000745056311 0
		0.15000000596046453 1.7763568394002497e-15 -0.050000000745058081
		0.15000000596046453 0.05000000074505985 0
		0.15000000596046453 1.7763568394002497e-15 0.050000000745058081
		0.20000000298023235 1.7763568394002497e-15 0
		;
createNode transform -n "LipCtrlCrvGrp" -p "LipPosersGrp";
	rename -uid "50C19B3A-413A-C18B-6F81-12BEE8B775E1";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "LipCtrlCrv" -p "LipCtrlCrvGrp";
	rename -uid "5D80B6DB-46EB-093D-0FEB-20B9B8F7BE8A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LipCtrlCrvShape" -p "LipCtrlCrv";
	rename -uid "631710FE-4DF2-02A2-E9F9-AC9145013043";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
	setAttr -s 12 ".cp[0:11]" -type "double3" 7.1525573663855369e-07 -11.599583142178929 
		-24.657157215964798 -0.0014407279809440787 -11.521193734152934 -24.706697139083744 
		-0.026079527565027627 -11.565474510192866 -24.815874099731435 -1.389587511724244e-08 
		-11.668156623840332 -24.966852188110199 0.025487244129180908 -11.565474510192871 
		-24.815874099731442 0.00144195556640625 -11.521193504333496 -24.706697463989364 6.8746397574592777e-07 
		-11.599582672119046 -24.657157897949233 -0.058618009090423584 -11.668156623840332 
		-24.763734817504933 0 -11.713601112365723 -24.910547256469627 -1.3895867595481448e-08 
		-11.745661735534668 -24.96749305725082 -0.00059229374779889987 -11.713601112365717 
		-24.910547256469609 0.058619344089431369 -11.668156623840332 -24.763734647008761;
createNode nurbsCurve -n "LipCtrlCrvShapeOrig" -p "LipCtrlCrv";
	rename -uid "C0BD1C6C-437D-53AC-8F1F-549595CA67BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.1236462593078607 11.599583142178925 25.657157215964798
		-0.8978820798079048 11.594675293906352 25.706697139083744
		-0.52917761402509078 11.638956069946284 25.815874099731438
		-7.019115275674892e-07 11.74163818359375 25.966852188110352
		0.52917641401290894 11.638956069946289 25.815874099731445
		0.89788150787353516 11.594675064086914 25.706697463989258
		1.1236462870996229 11.599582672119039 25.657157897949233
		0.95794147253036499 11.608457565307617 25.763734817504883
		0.55466365814208984 11.653902053833008 25.910547256469727
		-6.9589642134881835e-07 11.685962677001953 25.967493057250977
		-0.55466484784231951 11.653902053833002 25.910547256469709
		-0.95794215187828025 11.608457682822591 25.763734647008761
		;
createNode transform -n "LipMainPoserOffGrp" -p "LipPosersGrp";
	rename -uid "5C5EC050-4658-4EA9-FB9E-7A84DF1CA388";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "LipMainPoser" -p "LipMainPoserOffGrp";
	rename -uid "328531C8-4A33-78C2-6325-3E8DDD30A5FA";
	setAttr ".t" -type "double3" 0 7.1054273576010066e-15 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode nurbsCurve -n "LipMainPoserShape" -p "LipMainPoser";
	rename -uid "349BED8F-4E7D-8987-8B47-1FA4F49C0CB1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.54852813742385709 0.23508348746736735 
		0.98361162489122467 -4.6935684681549787e-17 0.33245825626631625 1.3081941875543877 
		0.54852813742385709 0.23508348746736735 0.98361162489122445 0.77573593128807161 1.7234694712570555e-17 
		0.2 0.54852813742385709 -0.23508348746736735 -0.58361162489122453 7.8270440367449149e-17 
		-0.33245825626631659 -0.90819418755438863 -0.54852813742385709 -0.23508348746736735 
		-0.58361162489122453 -0.77573593128807161 -4.5337215023402696e-17 0.19999999999999979 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "LipCtrlPosGrp" -p "LipSysGrp";
	rename -uid "F2460E2E-41AF-ED17-6751-CE99E545A04F";
	setAttr ".v" no;
createNode transform -n "LipCtrl0Pos" -p "LipCtrlPosGrp";
	rename -uid "C1E13413-49F5-7DCD-5362-F8BFAC91C328";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl0PosShape" -p "LipCtrl0Pos";
	rename -uid "02BD1373-4159-13D8-984C-AFB59DFB0326";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl1Pos" -p "LipCtrlPosGrp";
	rename -uid "3629E3F4-4757-85CF-8200-8AB1DFB22EE2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl1PosShape" -p "LipCtrl1Pos";
	rename -uid "DC265AE6-47F3-6DF1-9816-AF8D48F4CDE5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl2Pos" -p "LipCtrlPosGrp";
	rename -uid "0A159B11-4D55-26D9-2B41-8E9384D85F12";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl2PosShape" -p "LipCtrl2Pos";
	rename -uid "7C88AD3D-411C-0032-18A1-209E016209D0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl3Pos" -p "LipCtrlPosGrp";
	rename -uid "F2863D68-4F96-17DC-F32F-A1B632B64E40";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl3PosShape" -p "LipCtrl3Pos";
	rename -uid "5476EEA8-4BF6-43C3-568E-CE8FAEBF77E2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl4Pos" -p "LipCtrlPosGrp";
	rename -uid "5B0B0555-4545-60EB-AF18-AB815459AAC1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl4PosShape" -p "LipCtrl4Pos";
	rename -uid "A59285AC-41D8-BC12-084F-7997BD75D18A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl5Pos" -p "LipCtrlPosGrp";
	rename -uid "0AD88410-420E-9F2A-1099-25BB0331C2C4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl5PosShape" -p "LipCtrl5Pos";
	rename -uid "C81D54CE-407E-B69D-46E1-30B4C807D84E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl6Pos" -p "LipCtrlPosGrp";
	rename -uid "1F62A2C3-423D-0E1F-F0B2-C797BC72C8C9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl6PosShape" -p "LipCtrl6Pos";
	rename -uid "3287CC67-4C21-2A75-B5D6-25B7E69641FD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl7Pos" -p "LipCtrlPosGrp";
	rename -uid "0BE2EB8C-42CA-E830-8C8B-AF811D5A80D9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl7PosShape" -p "LipCtrl7Pos";
	rename -uid "EC954486-4683-2098-5CDA-7C8BB731EEB3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl8Pos" -p "LipCtrlPosGrp";
	rename -uid "4886D0F0-4F15-CFA4-C68E-84897399C9E1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl8PosShape" -p "LipCtrl8Pos";
	rename -uid "555BC05F-4331-DBD5-23DD-10911878F34B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl9Pos" -p "LipCtrlPosGrp";
	rename -uid "086A522B-4FAB-0226-B221-479F118848A9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl9PosShape" -p "LipCtrl9Pos";
	rename -uid "DA3C0F74-4B8B-1D2F-9846-46BEFAA61827";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl10Pos" -p "LipCtrlPosGrp";
	rename -uid "92EC0FED-41A3-EEF5-1FA7-248869628CC7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl10PosShape" -p "LipCtrl10Pos";
	rename -uid "6D555502-4C6B-CCF9-6392-59B1729F5D0A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrl11Pos" -p "LipCtrlPosGrp";
	rename -uid "99F18185-42CE-4744-9D90-BF932F640467";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LipCtrl11PosShape" -p "LipCtrl11Pos";
	rename -uid "D0DC990A-41E9-015C-12CB-FEA0D72E903F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode reverse -n "LipModeRvs";
	rename -uid "D45B1516-414A-5270-B46C-C1BA81FC49DC";
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "F7A5902C-49A0-58F3-6DAA-2C82DEA5C345";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode multiplyDivide -n "RightLipConerCtrlRvsMultMD";
	rename -uid "837B5B71-4B4D-8853-DDEE-04BAE45E0566";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pairBlend -n "UpLip2CrvPosPosBRotPB";
	rename -uid "1B28C79C-404F-16AB-E351-A8B59485684E";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosPosBRotPBwML";
	rename -uid "24779798-4906-519F-C527-499F81F4AE57";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipBCtrlRvsMultMD";
	rename -uid "694F4F85-4340-B509-1356-58A90700243A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pairBlend -n "UpLip2CrvPosARotPB";
	rename -uid "6B3D2500-4F4A-7066-BB65-18BB5A5098EB";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosARotPBwML";
	rename -uid "9AC3359A-43CF-CCC5-9522-FBB986F66C78";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipACtrlRvsMultMD";
	rename -uid "6388E92A-47CF-B35B-2BE6-19AA7C795E89";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "CenterUpLipMCtrlRvsMultMD";
	rename -uid "3881A3B8-436E-8F9F-41C9-5C97CC419B1A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pairBlend -n "UpLip4CrvPosARotPB";
	rename -uid "3DCCAA9E-478C-0A6A-53CA-B8BE898D62E0";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosARotPBwML";
	rename -uid "A6CC6ED3-4420-F15B-0462-1AA1F4AAB8AF";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipACtrlRvsMultMD";
	rename -uid "71E0F692-48F3-63A6-E421-2EB436580360";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pairBlend -n "UpLip4CrvPosBRotPB";
	rename -uid "6244A673-474C-4EF3-9A89-0CBE1D01EB50";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosBRotPBwML";
	rename -uid "A7005907-48C8-B776-25FE-E18A371271A6";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipBCtrlRvsMultMD";
	rename -uid "71E1EA06-4955-E6FA-4976-84BE11BB89BF";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftLipConerCtrlRvsMultMD";
	rename -uid "40A01AD6-4C83-4805-DC1E-4694FA2187A8";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "5D7B0BE0-46E7-2F4F-DE16-208E7715AB4C";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pairBlend -n "DownLip4CrvPosPosBRotPB";
	rename -uid "98DD6501-4F0E-D320-CF8A-6B84EE0C170B";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosPosBRotPBwML";
	rename -uid "DC1246CB-4337-C12A-4125-8D8628F79A49";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipBCtrlRvsMultMD";
	rename -uid "FD3F0C44-4AC2-C751-B812-80B5149DDF6E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pairBlend -n "DownLip4CrvPosARotPB";
	rename -uid "29B71C61-459E-D147-CDAB-468B90E7B390";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosARotPBwML";
	rename -uid "21579EF4-4E23-8191-3595-84B315772816";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipACtrlRvsMultMD";
	rename -uid "080492A4-4813-0831-3A0E-A59485E05AD4";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "CenterDownLipMCtrlRvsMultMD";
	rename -uid "DF79647C-4CAD-8C01-AD18-37B85118FAEC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pairBlend -n "DownLip2CrvPosARotPB";
	rename -uid "B9AFD6E8-4089-E2F6-0946-E5946E2BD2F3";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosARotPBwML";
	rename -uid "35D088FC-48FC-3D5B-BC99-1D8244999A61";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipACtrlRvsMultMD";
	rename -uid "523E7515-4431-5A61-C55D-F69451C7B8EC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pairBlend -n "DownLip2CrvPosBRotPB";
	rename -uid "4D3D2B2E-49E0-C0AC-0420-A49D29986B74";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosBRotPBwML";
	rename -uid "B26F7563-4C9F-0608-2D3C-A38EF6A1FA68";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipBCtrlRvsMultMD1";
	rename -uid "8F3F0657-4586-B6EB-3856-B3A4EB0D8730";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LibSurf0APosPC";
	rename -uid "BB5B4052-4DD2-1B91-C04D-9BBDAC5DF5BD";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf2APosPC";
	rename -uid "AAE58277-4B65-C9B7-8D3C-92815133B7F5";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf3APosPC";
	rename -uid "0F4C669A-4ABE-F7FC-F67A-E680F41B25E0";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf4APosPC";
	rename -uid "8CD74670-42AD-9013-D594-E9BCC9269D42";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf5APosPC";
	rename -uid "B884051E-4653-F651-876A-0AB461264F12";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf6APosPC";
	rename -uid "791532C1-4A61-AEE9-862F-F2909172B193";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf8APosPC";
	rename -uid "D5E1BEEB-4F54-C8C8-68E7-4683AB6712F3";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf0BPosPC";
	rename -uid "2E25D7CD-448D-51AA-5C5F-DEAFD393B669";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf2BPosPC";
	rename -uid "9F127918-445F-4E83-2CFB-A0A3AE789297";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf3BPosPC";
	rename -uid "A6C88699-411E-5B46-46CC-9D8C6AC6CE86";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf4BPosPC";
	rename -uid "6E154C77-45A9-5822-0F60-539755CEBBB8";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf5BPosPC";
	rename -uid "23C51ACA-4783-3AD3-3721-C6902F7EB2EB";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf6BPosPC";
	rename -uid "AD2E76AA-466E-BFE7-1B0C-17A126592A34";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LibSurf8BPosPC";
	rename -uid "9981036D-46FA-B219-0D0A-9FA771AF6A3F";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf0APB";
	rename -uid "39E4AB0C-42B6-DE5F-6F75-E081D35F1EB6";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf0PS";
	rename -uid "780B923E-43BF-28A4-79A8-BD8AC4010A32";
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf0ARM";
	rename -uid "FB3902CD-47B9-6AD8-33C9-C5B248B4BCDA";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf2APB";
	rename -uid "D0F31CA0-4D48-AEE6-C0D0-EB9406193F7F";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2ARM";
	rename -uid "375FEB25-4DBD-F9DE-C07A-548126A6E511";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf2PS";
	rename -uid "F214CB90-4896-A322-699B-F29E0B25A743";
	setAttr ".u" 0.25;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf3APB";
	rename -uid "D59CFF6F-455B-4E94-FD20-96A92A070D24";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3ARM";
	rename -uid "278A1253-4819-6AE2-A509-AF9EF7658A56";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf3PS";
	rename -uid "63719608-4D17-31FD-5E65-4488A515A8AD";
	setAttr ".u" 0.375;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf4APB";
	rename -uid "5A9D23AC-4E74-468F-2E3C-A0A4E52A1FB5";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4ARM";
	rename -uid "4B14D870-4903-D455-6240-258E7A1337BF";
	setAttr ".imx" 0.5;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode blendTwoAttr -n "LibACenterAB";
	rename -uid "2EE5980C-4770-18C1-28C6-1E9DC56F20D6";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pointOnSurfaceInfo -n "LibSurf4PS";
	rename -uid "4D5F8619-480D-E62E-C767-499CA1A3E0B6";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf5APB";
	rename -uid "30EE2290-43BF-2003-5FEB-9FA909DF2B4C";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5ARM";
	rename -uid "9C6E5C3A-44F6-8F0B-D664-F199B204A6C6";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf5PS";
	rename -uid "DE25ED67-40E9-F71F-ECA0-C0AF57E28A6C";
	setAttr ".u" 0.625;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf6APB";
	rename -uid "93273448-419D-80A7-47E8-F3B22B9B713A";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6ARM";
	rename -uid "50FC1583-44BF-B537-CC66-308034878738";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf6PS";
	rename -uid "5811D25F-4182-D39A-9378-03A552A9081E";
	setAttr ".u" 0.75;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf8APB";
	rename -uid "CD281C5B-4DA9-488A-B0EF-339DD164B4FC";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf8PS";
	rename -uid "D46B4798-4D0E-D2AB-D52B-A185927854C8";
	setAttr ".u" 1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf8ARM";
	rename -uid "CE3BC1F2-4B34-C367-3B51-A89D2100A24B";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf0BPB";
	rename -uid "7E279A6D-4A98-E4EC-3D5F-A492A31940A0";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf0BRM";
	rename -uid "023784A5-4C23-98C6-25D8-D5B0F038AD95";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf2BPB";
	rename -uid "665FC595-4C43-E770-C384-E4B29D34672B";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2BRM";
	rename -uid "0BA6082F-4CEC-FA62-0A7E-6797225BC6AA";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf3BPB";
	rename -uid "29D720F7-433D-4D74-7787-A2B5820CCB7D";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3BRM";
	rename -uid "AC713B5E-4BD9-A448-AFBB-F9A45715869C";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf4BPB";
	rename -uid "D3983699-4D27-9B34-708E-54AD49279957";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4BRM";
	rename -uid "39B6D84C-42D2-73A9-E559-72863BC2A8AF";
	setAttr ".imx" 0.5;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode blendTwoAttr -n "LibBAB";
	rename -uid "705BC5DC-4F6A-B18A-BFF5-D68E72BC9B19";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pairBlend -n "LibSurf5BPB";
	rename -uid "98BA3480-40ED-630B-9DF7-218EA154EC84";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5BRM";
	rename -uid "0F485654-4920-EA0A-BAE2-4884AB3501FD";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf6BPB";
	rename -uid "24E7C7F7-4475-E497-7073-628B2637D1D7";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6BRM";
	rename -uid "42B8E34A-41D7-A899-9524-7286EC06C39F";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf8BPB";
	rename -uid "497C4A53-4BBC-34A7-0605-99896B29A8FE";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf8BRM";
	rename -uid "BE42E4D8-437C-7F79-11F7-14A6B4FABF34";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode loft -n "loft1";
	rename -uid "936AE216-421D-0867-9A5D-45BF9DF313D8";
	setAttr -s 2 ".ic";
	setAttr ".u" yes;
	setAttr ".rsn" yes;
createNode pairBlend -n "LipRightLocalPosPB";
	rename -uid "B440B6EA-4070-FBBA-9FEA-BDB108CC137A";
	setAttr ".ri" 1;
createNode pairBlend -n "LipLeftLocalPosPB";
	rename -uid "FFFAE7D5-4C5E-B6E2-F75C-0682EC57D684";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip5WorldPB";
	rename -uid "12FCADAE-485D-9424-5CE0-18B27D8CD8DD";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip1WorldPB";
	rename -uid "616374ED-4084-C4B1-7C99-46A8287876DF";
	setAttr ".ri" 1;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "1CCB1375-4E2B-DA87-986F-10AEE11FC3EB";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnCurveInfo -n "LipCtrlCrvPC";
	rename -uid "EB9B91A7-4182-3E6C-469B-AE87BB7390ED";
createNode decomposeMatrix -n "LipCtrlCrv0PosDM";
	rename -uid "F9A19A3E-4EAE-ECE9-BFE4-45938448610E";
createNode multMatrix -n "LipCtrlCrv0PosMM";
	rename -uid "BC9E47D3-4BD6-E436-316F-6FBC6B35B511";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1236469586675262 11.599582185924042 25.657159128307303 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC1";
	rename -uid "B9744064-46D5-183F-47B8-9BA40E8581FE";
	setAttr ".pr" 1;
createNode decomposeMatrix -n "LipCtrlCrv1PosDM";
	rename -uid "24025505-454F-2620-F9D4-DEA49BC5D24C";
createNode multMatrix -n "LipCtrlCrv1PosMM";
	rename -uid "949E190F-4E5B-B803-A9D8-D1A38EC93031";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.89788237783252178 11.594675293899209 25.70669713908373 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC2";
	rename -uid "234983D3-453A-2E0D-E518-06A47AD486FF";
	setAttr ".pr" 2;
createNode decomposeMatrix -n "LipCtrlCrv2PosDM";
	rename -uid "513DE658-4D64-64BB-1282-CB83DC63B858";
createNode multMatrix -n "LipCtrlCrv2PosMM";
	rename -uid "FB6251A7-4DDF-1BC9-049D-BE985E8E3AC3";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.52917767363020607 11.6389560699463 25.815874099731449 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC3";
	rename -uid "E24B64FD-45C9-81C6-E232-69A404C1EA47";
	setAttr ".pr" 3;
createNode decomposeMatrix -n "LipCtrlCrv3PosDM";
	rename -uid "46C89E38-472A-B894-B048-61BA79C59F62";
createNode multMatrix -n "LipCtrlCrv3PosMM";
	rename -uid "E79D87B8-4249-39A3-3568-AB8F587D9A3B";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.3032824718670681e-07 11.741638183507671 25.966852188086875 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC4";
	rename -uid "8F1334D0-4E8A-265D-379E-2FA5808B4B8B";
	setAttr ".pr" 4;
createNode decomposeMatrix -n "LipCtrlCrv4PosDM";
	rename -uid "990CC213-4853-3D23-FE42-698F17E1A1DC";
createNode multMatrix -n "LipCtrlCrv4PosMM";
	rename -uid "28480638-4E74-66E8-E382-9ABB7DBFF093";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.52917641401290894 11.638956069946289 25.815874099731445 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC5";
	rename -uid "838CD123-4173-3CB4-78B7-97B2E0E19FAF";
	setAttr ".pr" 5;
createNode decomposeMatrix -n "LipCtrlCrv5PosDM";
	rename -uid "77CDD63D-4A10-B496-716D-9F8696599B51";
createNode multMatrix -n "LipCtrlCrv5PosMM";
	rename -uid "C3358BEE-4A71-51C7-DC7C-F1B440726A5C";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.89788150787353516 11.594675064086914 25.706697463989258 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC6";
	rename -uid "C00EFBDE-46EF-763A-921C-2792CE565615";
	setAttr ".pr" 6;
createNode decomposeMatrix -n "LipCtrlCrv6PosDM";
	rename -uid "4CC73A9D-4B58-0F02-8CCF-17A944F1A1A4";
createNode multMatrix -n "LipCtrlCrv6PosMM";
	rename -uid "936F7BA2-4FEE-256F-5AD4-A28FC36C27F4";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1236462870996229 11.599582672119038 25.657157897949233 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC7";
	rename -uid "0A17FA4A-4972-5FCB-ADFD-E68232A51BBA";
	setAttr ".pr" 7;
createNode decomposeMatrix -n "LipCtrlCrv7PosDM";
	rename -uid "7ACA1146-44ED-2277-29E9-6C83768B8269";
createNode multMatrix -n "LipCtrlCrv7PosMM";
	rename -uid "6734D661-4A22-7344-05D4-5B91A4BDA06D";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.95794147253036499 11.608457565307617 25.763734817504886 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC8";
	rename -uid "31C2C73A-4436-0B8D-AA9B-01BCCF68395F";
	setAttr ".pr" 8;
createNode decomposeMatrix -n "LipCtrlCrv8PosDM";
	rename -uid "84F4AF7C-4111-6840-6574-D180B58F9C0E";
createNode multMatrix -n "LipCtrlCrv8PosMM";
	rename -uid "FAF944BB-4206-7753-39FF-A3A579454C62";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.55466365814208984 11.653902053833008 25.910547256469723 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC9";
	rename -uid "A3C23A58-4C9E-572B-5E33-3595DADAB726";
	setAttr ".pr" 9;
createNode decomposeMatrix -n "LipCtrlCrv9PosDM";
	rename -uid "77B39143-4EE1-ECFD-CE2D-099B5D78A838";
createNode multMatrix -n "LipCtrlCrv9PosMM";
	rename -uid "6BBBC618-4BF7-9399-31AB-5CA23DAF3996";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.2490805254805279e-07 11.685962677001953 25.967493057250977 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC10";
	rename -uid "7DB292DE-4235-D653-9CB9-9680C915BE9B";
	setAttr ".pr" 10;
createNode decomposeMatrix -n "LipCtrlCrv10PosDM";
	rename -uid "0F57B995-4DD5-E255-80EE-A884985D63DC";
createNode multMatrix -n "LipCtrlCrv10PosMM";
	rename -uid "F02665AC-425F-6770-3C0E-839BAA27DAAC";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.55466490744745345 11.653902053833026 25.910547256469705 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LipCtrlCrvPC11";
	rename -uid "28DF43D8-4593-B352-7F3F-9E855C2AA3D8";
	setAttr ".pr" 11;
createNode decomposeMatrix -n "LipCtrlCrv11PosDM";
	rename -uid "B6081EC1-45A4-3E48-319A-CCA29C7FFCE6";
createNode multMatrix -n "LipCtrlCrv11PosMM";
	rename -uid "DBF464B7-49FF-CC13-D239-23991009F4ED";
	setAttr -s 4 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.95794256910969655 11.608456729147871 25.763734647023618 1;
	setAttr ".i[2]" -type "matrix" -5.7062261650502833e-14 -1 3.5223353656987743e-13 0
		 0.15991635364413334 -3.5686590355464342e-13 -0.98713056878873151 0 0.9871305687887314 3.2726881879826163e-18 0.15991635364413376 0
		 -21.276245726054864 1.143307968494051e-08 10.12083041078635 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".tmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av ".hfs";
	setAttr -av ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcr";
	setAttr -av ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr -av ".msaa";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -k on ".an";
	setAttr -k on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 24 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "iff";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -k on ".pff" yes;
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av ".pram" -type "string" "";
	setAttr -av ".poam" -type "string" "";
	setAttr -av ".prlm" -type "string" "";
	setAttr -av ".polm" -type "string" "";
	setAttr -av ".prm" -type "string" "";
	setAttr -av ".pom" -type "string" "";
	setAttr ".pfrm" -type "string" "";
	setAttr ".pfom" -type "string" "";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w" 1024;
	setAttr -av ".h" 1024;
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar" 1;
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfp" -type "string" "C:/Program Files/Autodesk/Maya2022/resources/OCIO-configs/Maya2022-default/config.ocio";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "LipModeRvs.ox" "LipCtrlGrp.tmp";
connectAttr "LipRootPoser.r" "LipMainRootCnt.r";
connectAttr "LipMainPoser.t" "LipMainRootCnt.t";
connectAttr "makeNurbCircle14.oc" "LipMainCtrlShape.cr";
connectAttr "LipRootPoser.r" "RightLipConerRootCnt.r";
connectAttr "Lip1CrvPos.r" "RightLipConerCtrlGrp.r";
connectAttr "RightLipConerCtrlRvsMultMD.o" "RightLipConerRvs.t";
connectAttr "LipRootPoser.r" "RightUpLipBRootCnt.r";
connectAttr "UpLip2CrvPosPosBRotPB.or" "RightUpLipBCtrlGrp.r";
connectAttr "RightUpLipBCtrlRvsMultMD.o" "RightUpLipBRvs.t";
connectAttr "LipRootPoser.r" "RightUpLipARootCnt.r";
connectAttr "UpLip2CrvPosARotPB.or" "RightUpLipACtrlGrp.r";
connectAttr "RightUpLipACtrlRvsMultMD.o" "RightUpLipARvs.t";
connectAttr "LipRootPoser.r" "CenterUpLipMRootCnt.r";
connectAttr "UpLip3CrvPos.r" "CenterUpLipMCtrlGrp.r";
connectAttr "CenterUpLipMCtrlRvsMultMD.o" "CenterUpLipMRvs.t";
connectAttr "LipRootPoser.r" "LeftUpLipARootCnt.r";
connectAttr "UpLip4CrvPosARotPB.or" "LeftUpLipACtrlGrp.r";
connectAttr "LeftUpLipACtrlRvsMultMD.o" "LeftUpLipARvs.t";
connectAttr "LipRootPoser.r" "LeftUpLipBRootCnt.r";
connectAttr "UpLip4CrvPosBRotPB.or" "LeftUpLipBCtrlGrp.r";
connectAttr "LeftUpLipBCtrlRvsMultMD.o" "LeftUpLipBRvs.t";
connectAttr "LipRootPoser.r" "LeftLipConerRootCnt.r";
connectAttr "Lip5CrvPosGrp.r" "LeftLipConerCtrlGrp.r";
connectAttr "LeftLipConerCtrlRvsMultMD.o" "LeftLipConerRvs.t";
connectAttr "makeNurbCircle15.oc" "LeftLipConerCtrlShape.cr";
connectAttr "LipRootPoser.r" "LeftDownLipBRootCnt.r";
connectAttr "DownLip4CrvPosPosBRotPB.or" "LeftDownLipBCtrlGrp.r";
connectAttr "LeftDownLipBCtrlRvsMultMD.o" "LeftDownLipBRvs.t";
connectAttr "LipRootPoser.r" "LeftDownLipARootCnt.r";
connectAttr "DownLip4CrvPosARotPB.or" "LeftDownLipACtrlGrp.r";
connectAttr "LeftDownLipACtrlRvsMultMD.o" "LeftDownLipARvs.t";
connectAttr "LipRootPoser.r" "CenterDownLipMRootCnt.r";
connectAttr "DownLip3CrvPos.r" "CenterDownLipMCtrlGrp.r";
connectAttr "CenterDownLipMCtrlRvsMultMD.o" "CenterDownLipMRvs.t";
connectAttr "LipRootPoser.r" "RightDownLipARootCnt.r";
connectAttr "DownLip2CrvPosARotPB.or" "RightDownLipACtrlGrp.r";
connectAttr "RightDownLipACtrlRvsMultMD.o" "RightDownLipARvs.t";
connectAttr "LipRootPoser.r" "RightDownLipBRootCnt.r";
connectAttr "DownLip2CrvPosBRotPB.or" "RightDownLipBCtrlGrp.r";
connectAttr "RightDownLipBCtrlRvsMultMD1.o" "RightDownLipBRvs.t";
connectAttr "LibSurf0APosPC.p" "LipSurf0APosGrp.t";
connectAttr "Lip1CrvPos.r" "LipSurf0APos.r";
connectAttr "LibSurf2APosPC.p" "LipSurf2APosGrp.t";
connectAttr "UpLip2CrvPosPosBRotPB.or" "LipSurf2APos.r";
connectAttr "LibSurf3APosPC.p" "LipSurf3APosGrp.t";
connectAttr "UpLip2CrvPosARotPB.or" "LipSurf3APos.r";
connectAttr "LibSurf4APosPC.p" "LipSurf4APosGrp.t";
connectAttr "UpLip3CrvPos.r" "LipSurf4APos.r";
connectAttr "LibSurf5APosPC.p" "LipSurf5APosGrp.t";
connectAttr "UpLip4CrvPosARotPB.or" "LipSurf5APos.r";
connectAttr "LibSurf6APosPC.p" "LipSurf6APosGrp.t";
connectAttr "UpLip4CrvPosBRotPB.or" "LipSurf6APos.r";
connectAttr "LibSurf8APosPC.p" "LipSurf8APosGrp.t";
connectAttr "Lip5CrvPosGrp.r" "LipSurf8APos.r";
connectAttr "LibSurf0BPosPC.p" "LipSurf0BPosGrp.t";
connectAttr "Lip1CrvPos.r" "LipSurf0BPos.r";
connectAttr "LibSurf2BPosPC.p" "LipSurf2BPosGrp.t";
connectAttr "DownLip2CrvPosBRotPB.or" "LipSurf2BPos.r";
connectAttr "LibSurf3BPosPC.p" "LipSurf3BPosGrp.t";
connectAttr "DownLip2CrvPosARotPB.or" "LipSurf3BPos.r";
connectAttr "LibSurf4BPosPC.p" "LipSurf4BPosGrp.t";
connectAttr "DownLip3CrvPos.r" "LipSurf4BPos.r";
connectAttr "LibSurf5BPosPC.p" "LipSurf5BPosGrp.t";
connectAttr "DownLip4CrvPosARotPB.or" "LipSurf5BPos.r";
connectAttr "LibSurf6BPosPC.p" "LipSurf6BPosGrp.t";
connectAttr "DownLip4CrvPosPosBRotPB.or" "LipSurf6BPos.r";
connectAttr "LibSurf8BPosPC.p" "LipSurf8BPosGrp.t";
connectAttr "Lip5CrvPosGrp.r" "LipSurf8BPos.r";
connectAttr "LibSurf0APB.ot" "LipSurf0AZipPos.t";
connectAttr "LibSurf2APB.ot" "LipSurf2AZipPos.t";
connectAttr "LibSurf3APB.ot" "LipSurf3AZipPos.t";
connectAttr "LibSurf4APB.ot" "LipSurf4AZipPos.t";
connectAttr "LibSurf5APB.ot" "LipSurf5AZipPos.t";
connectAttr "LibSurf6APB.ot" "LipSurf6AZipPos.t";
connectAttr "LibSurf8APB.ot" "LipSurf8AZipPos.t";
connectAttr "LibSurf0BPB.ot" "LipSurf0BZipPos.t";
connectAttr "LibSurf2BPB.ot" "LipSurf2BZipPos.t";
connectAttr "LibSurf3BPB.ot" "LipSurf3BZipPos.t";
connectAttr "LibSurf4BPB.ot" "LipSurf4BZipPos.t";
connectAttr "LibSurf5BPB.ot" "LipSurf5BZipPos.t";
connectAttr "LibSurf6BPB.ot" "LipSurf6BZipPos.t";
connectAttr "LibSurf8BPB.ot" "LipSurf8BZipPos.t";
connectAttr "loft1.os" "LibZipSurfShape.cr";
connectAttr "LipModeRvs.ox" "LipPosCrvGrp.v";
connectAttr "LipDownPosCrvShapeOrig.ws" "LipDownPosCrvShape.cr";
connectAttr "DownLip1CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[0]";
connectAttr "DownLip1CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[1]";
connectAttr "DownLip2CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[2]";
connectAttr "DownLip3CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[3]";
connectAttr "DownLip4CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[4]";
connectAttr "DownLip5CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[5]";
connectAttr "DownLip5CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[6]";
connectAttr "LipUpPosCrvShapeOrig.ws" "LipUpPosCrvShape.cr";
connectAttr "UpLip1CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[0]";
connectAttr "UpLip1CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[1]";
connectAttr "UpLip2CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[2]";
connectAttr "UpLip3CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[3]";
connectAttr "UpLip4CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[4]";
connectAttr "UpLip5CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[5]";
connectAttr "UpLip5CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[6]";
connectAttr "LipWorldLoc.r" "LipLocalLoc.r";
connectAttr "LipWorldLoc.t" "LipLocalLoc.t";
connectAttr "LipWorldLoc.s" "LipLocalLoc.s";
connectAttr "LipRightLocalPosPB.or" "LipDownRightLocalPos.r";
connectAttr "LipLeftLocalPosPB.or" "LipDownLeftLocalPos.r";
connectAttr "LipModeRvs.ox" "LipPosersGrp.v";
connectAttr "LipMainPoser.t" "LipMainUpCntOffGrp.t";
connectAttr "LipMainCtrl.t" "LipMainUpCnt.t";
connectAttr "LipMainCtrl.r" "LipMainUpCnt.r";
connectAttr "UpLipMainCtrl.r" "UpLipMainCnt.r";
connectAttr "UpLipMainCtrl.t" "UpLipMainCnt.t";
connectAttr "LipMainPoser.t" "LipMainDownCntOffGrp.t";
connectAttr "LipMainCtrl.t" "LipMainDownCnt.t";
connectAttr "LipMainCtrl.r" "LipMainDownCnt.r";
connectAttr "DownLipMainCtrl.t" "DownLipMainCnt.t";
connectAttr "DownLipMainCtrl.r" "DownLipMainCnt.r";
connectAttr "Lip5WorldPB.ot" "Lip5WorldPBPosGrp.t";
connectAttr "Lip5WorldPB.or" "Lip5WorldPBPosGrp.r";
connectAttr "LipMainCtrl.t" "Lip5MainCntGrp.t";
connectAttr "LipMainCtrl.r" "Lip5MainCntGrp.r";
connectAttr "UpLipMainCtrl.r" "UpLip5MainCntGrp.r";
connectAttr "UpLipMainCtrl.t" "UpLip5MainCntGrp.t";
connectAttr "DownLipMainCtrl.t" "DownLip5MainCntGrp.t";
connectAttr "DownLipMainCtrl.r" "DownLip5MainCntGrp.r";
connectAttr "Lip1WorldPB.ot" "Lip1WorldPBPosGrp.t";
connectAttr "Lip1WorldPB.or" "Lip1WorldPBPosGrp.r";
connectAttr "LipMainCtrl.t" "Lip1MainCntGrp.t";
connectAttr "LipMainCtrl.r" "Lip1MainCntGrp.r";
connectAttr "UpLipMainCtrl.t" "UpLip1MainCntGrp.t";
connectAttr "UpLipMainCtrl.r" "UpLip1MainCntGrp.r";
connectAttr "DownLipMainCtrl.t" "DownLip1MainCntGrp.t";
connectAttr "DownLipMainCtrl.r" "DownLip1MainCntGrp.r";
connectAttr "LipCtrlCrvShapeOrig.ws" "LipCtrlCrvShape.cr";
connectAttr "makeNurbCircle16.oc" "LipMainPoserShape.cr";
connectAttr "LipCtrlCrvPC.p" "LipCtrl0Pos.t";
connectAttr "LipCtrlCrv0PosDM.or" "LipCtrl0Pos.r";
connectAttr "LipCtrlCrvPC1.p" "LipCtrl1Pos.t";
connectAttr "LipCtrlCrv1PosDM.or" "LipCtrl1Pos.r";
connectAttr "LipCtrlCrvPC2.p" "LipCtrl2Pos.t";
connectAttr "LipCtrlCrv2PosDM.or" "LipCtrl2Pos.r";
connectAttr "LipCtrlCrvPC3.p" "LipCtrl3Pos.t";
connectAttr "LipCtrlCrv3PosDM.or" "LipCtrl3Pos.r";
connectAttr "LipCtrlCrvPC4.p" "LipCtrl4Pos.t";
connectAttr "LipCtrlCrv4PosDM.or" "LipCtrl4Pos.r";
connectAttr "LipCtrlCrvPC5.p" "LipCtrl5Pos.t";
connectAttr "LipCtrlCrv5PosDM.or" "LipCtrl5Pos.r";
connectAttr "LipCtrlCrvPC6.p" "LipCtrl6Pos.t";
connectAttr "LipCtrlCrv6PosDM.or" "LipCtrl6Pos.r";
connectAttr "LipCtrlCrvPC7.p" "LipCtrl7Pos.t";
connectAttr "LipCtrlCrv7PosDM.or" "LipCtrl7Pos.r";
connectAttr "LipCtrlCrvPC8.p" "LipCtrl8Pos.t";
connectAttr "LipCtrlCrv8PosDM.or" "LipCtrl8Pos.r";
connectAttr "LipCtrlCrvPC9.p" "LipCtrl9Pos.t";
connectAttr "LipCtrlCrv9PosDM.or" "LipCtrl9Pos.r";
connectAttr "LipCtrlCrvPC10.p" "LipCtrl10Pos.t";
connectAttr "LipCtrlCrv10PosDM.or" "LipCtrl10Pos.r";
connectAttr "LipCtrlCrvPC11.p" "LipCtrl11Pos.t";
connectAttr "LipCtrlCrv11PosDM.or" "LipCtrl11Pos.r";
connectAttr "LipRootPoser.mode" "LipModeRvs.ix";
connectAttr "RightLipConerCtrl.t" "RightLipConerCtrlRvsMultMD.i1";
connectAttr "UpLip2CrvPos.r" "UpLip2CrvPosPosBRotPB.ir2";
connectAttr "UpLip2CrvPosPosBRotPBwML.o" "UpLip2CrvPosPosBRotPB.w";
connectAttr "UpLip2CrvPos.BPbw" "UpLip2CrvPosPosBRotPBwML.i1";
connectAttr "RightUpLipBCtrl.t" "RightUpLipBCtrlRvsMultMD.i1";
connectAttr "UpLip2CrvPos.r" "UpLip2CrvPosARotPB.ir2";
connectAttr "UpLip2CrvPosARotPBwML.o" "UpLip2CrvPosARotPB.w";
connectAttr "UpLip2CrvPos.APbw" "UpLip2CrvPosARotPBwML.i1";
connectAttr "RightUpLipACtrl.t" "RightUpLipACtrlRvsMultMD.i1";
connectAttr "CenterUpLipMCtrl.t" "CenterUpLipMCtrlRvsMultMD.i1";
connectAttr "UpLip4CrvPos.r" "UpLip4CrvPosARotPB.ir2";
connectAttr "UpLip4CrvPosARotPBwML.o" "UpLip4CrvPosARotPB.w";
connectAttr "UpLip4CrvPos.APbw" "UpLip4CrvPosARotPBwML.i1";
connectAttr "LeftUpLipACtrl.t" "LeftUpLipACtrlRvsMultMD.i1";
connectAttr "UpLip4CrvPos.r" "UpLip4CrvPosBRotPB.ir2";
connectAttr "UpLip4CrvPosBRotPBwML.o" "UpLip4CrvPosBRotPB.w";
connectAttr "UpLip4CrvPos.BPbw" "UpLip4CrvPosBRotPBwML.i1";
connectAttr "LeftUpLipBCtrl.t" "LeftUpLipBCtrlRvsMultMD.i1";
connectAttr "LeftLipConerCtrl.t" "LeftLipConerCtrlRvsMultMD.i1";
connectAttr "DownLip4CrvPos.r" "DownLip4CrvPosPosBRotPB.ir2";
connectAttr "DownLip4CrvPosPosBRotPBwML.o" "DownLip4CrvPosPosBRotPB.w";
connectAttr "DownLip4CrvPos.BPbw" "DownLip4CrvPosPosBRotPBwML.i1";
connectAttr "LeftDownLipBCtrl.t" "LeftDownLipBCtrlRvsMultMD.i1";
connectAttr "DownLip4CrvPos.r" "DownLip4CrvPosARotPB.ir2";
connectAttr "DownLip4CrvPosARotPBwML.o" "DownLip4CrvPosARotPB.w";
connectAttr "DownLip4CrvPos.APbw" "DownLip4CrvPosARotPBwML.i1";
connectAttr "LeftDownLipACtrl.t" "LeftDownLipACtrlRvsMultMD.i1";
connectAttr "CenterDownLipMCtrl.t" "CenterDownLipMCtrlRvsMultMD.i1";
connectAttr "DownLip2CrvPos.r" "DownLip2CrvPosARotPB.ir2";
connectAttr "DownLip2CrvPosARotPBwML.o" "DownLip2CrvPosARotPB.w";
connectAttr "DownLip2CrvPos.APbw" "DownLip2CrvPosARotPBwML.i1";
connectAttr "RightDownLipACtrl.t" "RightDownLipACtrlRvsMultMD.i1";
connectAttr "DownLip2CrvPos.r" "DownLip2CrvPosBRotPB.ir2";
connectAttr "DownLip2CrvPosBRotPBwML.o" "DownLip2CrvPosBRotPB.w";
connectAttr "DownLip2CrvPos.BPbw" "DownLip2CrvPosBRotPBwML.i1";
connectAttr "RightDownLipBCtrl.t" "RightDownLipBCtrlRvsMultMD1.i1";
connectAttr "LipUpPosCrvShape.ws" "LibSurf0APosPC.ic";
connectAttr "LipUpPosCrvShape.ws" "LibSurf2APosPC.ic";
connectAttr "LipUpPosCrvShape.ws" "LibSurf3APosPC.ic";
connectAttr "LipUpPosCrvShape.ws" "LibSurf4APosPC.ic";
connectAttr "LipUpPosCrvShape.ws" "LibSurf5APosPC.ic";
connectAttr "LipUpPosCrvShape.ws" "LibSurf6APosPC.ic";
connectAttr "LipUpPosCrvShape.ws" "LibSurf8APosPC.ic";
connectAttr "LipDownPosCrvShape.ws" "LibSurf0BPosPC.ic";
connectAttr "LipDownPosCrvShape.ws" "LibSurf2BPosPC.ic";
connectAttr "LipDownPosCrvShape.ws" "LibSurf3BPosPC.ic";
connectAttr "LipDownPosCrvShape.ws" "LibSurf4BPosPC.ic";
connectAttr "LipDownPosCrvShape.ws" "LibSurf5BPosPC.ic";
connectAttr "LipDownPosCrvShape.ws" "LibSurf6BPosPC.ic";
connectAttr "LipDownPosCrvShape.ws" "LibSurf8BPosPC.ic";
connectAttr "LibSurf0PS.p" "LibSurf0APB.it1";
connectAttr "LibSurf0ARM.ov" "LibSurf0APB.w";
connectAttr "LipSurf0APosShape.wp" "LibSurf0APB.it2";
connectAttr "LibZipSurfShape.ws" "LibSurf0PS.is";
connectAttr "LipMainCtrl.RightZip" "LibSurf0ARM.i";
connectAttr "LipSurf2APosShape.wp" "LibSurf2APB.it1";
connectAttr "LibSurf2ARM.ov" "LibSurf2APB.w";
connectAttr "LibSurf2PS.p" "LibSurf2APB.it2";
connectAttr "LipMainCtrl.RightZip" "LibSurf2ARM.i";
connectAttr "LibZipSurfShape.ws" "LibSurf2PS.is";
connectAttr "LipSurf3APosShape.wp" "LibSurf3APB.it1";
connectAttr "LibSurf3ARM.ov" "LibSurf3APB.w";
connectAttr "LibSurf3PS.p" "LibSurf3APB.it2";
connectAttr "LipMainCtrl.RightZip" "LibSurf3ARM.i";
connectAttr "LibZipSurfShape.ws" "LibSurf3PS.is";
connectAttr "LipSurf4APosShape.wp" "LibSurf4APB.it1";
connectAttr "LibSurf4ARM.ov" "LibSurf4APB.w";
connectAttr "LibSurf4PS.p" "LibSurf4APB.it2";
connectAttr "LibACenterAB.o" "LibSurf4ARM.i";
connectAttr "LipMainCtrl.LeftZip" "LibACenterAB.i[0]";
connectAttr "LipMainCtrl.RightZip" "LibACenterAB.i[1]";
connectAttr "LibZipSurfShape.ws" "LibSurf4PS.is";
connectAttr "LipSurf5APosShape.wp" "LibSurf5APB.it1";
connectAttr "LibSurf5ARM.ov" "LibSurf5APB.w";
connectAttr "LibSurf5PS.p" "LibSurf5APB.it2";
connectAttr "LipMainCtrl.LeftZip" "LibSurf5ARM.i";
connectAttr "LibZipSurfShape.ws" "LibSurf5PS.is";
connectAttr "LipSurf6APosShape.wp" "LibSurf6APB.it1";
connectAttr "LibSurf6ARM.ov" "LibSurf6APB.w";
connectAttr "LibSurf6PS.p" "LibSurf6APB.it2";
connectAttr "LipMainCtrl.LeftZip" "LibSurf6ARM.i";
connectAttr "LibZipSurfShape.ws" "LibSurf6PS.is";
connectAttr "LibSurf8PS.p" "LibSurf8APB.it1";
connectAttr "LibSurf8ARM.ov" "LibSurf8APB.w";
connectAttr "LipSurf8APosShape.wp" "LibSurf8APB.it2";
connectAttr "LibZipSurfShape.ws" "LibSurf8PS.is";
connectAttr "LipMainCtrl.LeftZip" "LibSurf8ARM.i";
connectAttr "LibSurf0PS.p" "LibSurf0BPB.it1";
connectAttr "LibSurf0BRM.ov" "LibSurf0BPB.w";
connectAttr "LipSurf0BPosShape.wp" "LibSurf0BPB.it2";
connectAttr "LipMainCtrl.RightZip" "LibSurf0BRM.i";
connectAttr "LipSurf2BPosShape.wp" "LibSurf2BPB.it1";
connectAttr "LibSurf2BRM.ov" "LibSurf2BPB.w";
connectAttr "LibSurf2PS.p" "LibSurf2BPB.it2";
connectAttr "LipMainCtrl.RightZip" "LibSurf2BRM.i";
connectAttr "LipSurf3BPosShape.wp" "LibSurf3BPB.it1";
connectAttr "LibSurf3BRM.ov" "LibSurf3BPB.w";
connectAttr "LibSurf3PS.p" "LibSurf3BPB.it2";
connectAttr "LipMainCtrl.RightZip" "LibSurf3BRM.i";
connectAttr "LipSurf4BPosShape.wp" "LibSurf4BPB.it1";
connectAttr "LibSurf4BRM.ov" "LibSurf4BPB.w";
connectAttr "LibSurf4PS.p" "LibSurf4BPB.it2";
connectAttr "LibBAB.o" "LibSurf4BRM.i";
connectAttr "LipMainCtrl.LeftZip" "LibBAB.i[0]";
connectAttr "LipMainCtrl.RightZip" "LibBAB.i[1]";
connectAttr "LipSurf5BPosShape.wp" "LibSurf5BPB.it1";
connectAttr "LibSurf5BRM.ov" "LibSurf5BPB.w";
connectAttr "LibSurf5PS.p" "LibSurf5BPB.it2";
connectAttr "LipMainCtrl.LeftZip" "LibSurf5BRM.i";
connectAttr "LipSurf6BPosShape.wp" "LibSurf6BPB.it1";
connectAttr "LibSurf6BRM.ov" "LibSurf6BPB.w";
connectAttr "LibSurf6PS.p" "LibSurf6BPB.it2";
connectAttr "LipMainCtrl.LeftZip" "LibSurf6BRM.i";
connectAttr "LibSurf8PS.p" "LibSurf8BPB.it1";
connectAttr "LibSurf8BRM.ov" "LibSurf8BPB.w";
connectAttr "LipSurf8BPosShape.wp" "LibSurf8BPB.it2";
connectAttr "LipMainCtrl.LeftZip" "LibSurf8BRM.i";
connectAttr "LipUpPosCrvShape.ws" "loft1.ic[0]";
connectAttr "LipDownPosCrvShape.ws" "loft1.ic[2]";
connectAttr "LipLocalLoc.t" "LipRightLocalPosPB.it1";
connectAttr "LipRootLocalPos.t" "LipRightLocalPosPB.it2";
connectAttr "LipLocalLoc.r" "LipRightLocalPosPB.ir1";
connectAttr "LipRootLocalPos.r" "LipRightLocalPosPB.ir2";
connectAttr "RightLipConerCtrl.Pbw" "LipRightLocalPosPB.w";
connectAttr "LipRootLocalPos.t" "LipLeftLocalPosPB.it2";
connectAttr "LipRootLocalPos.r" "LipLeftLocalPosPB.ir2";
connectAttr "LipLocalLoc.t" "LipLeftLocalPosPB.it1";
connectAttr "LipLocalLoc.r" "LipLeftLocalPosPB.ir1";
connectAttr "LeftLipConerCtrl.Pbw" "LipLeftLocalPosPB.w";
connectAttr "LipRootPos.r" "Lip5WorldPB.ir1";
connectAttr "LipWorldLoc.r" "Lip5WorldPB.ir2";
connectAttr "LipRootPos.t" "Lip5WorldPB.it1";
connectAttr "LipWorldLoc.t" "Lip5WorldPB.it2";
connectAttr "LeftLipConerCtrl.Pbw" "Lip5WorldPB.w";
connectAttr "LipWorldLoc.t" "Lip1WorldPB.it2";
connectAttr "LipWorldLoc.r" "Lip1WorldPB.ir2";
connectAttr "LipRootPos.t" "Lip1WorldPB.it1";
connectAttr "LipRootPos.r" "Lip1WorldPB.ir1";
connectAttr "RightLipConerCtrl.Pbw" "Lip1WorldPB.w";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC.ic";
connectAttr "LipCtrlCrv0PosMM.o" "LipCtrlCrv0PosDM.imat";
connectAttr "LipCtrl0Pos.pim" "LipCtrlCrv0PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC1.ic";
connectAttr "LipCtrlCrv1PosMM.o" "LipCtrlCrv1PosDM.imat";
connectAttr "LipCtrl1Pos.pim" "LipCtrlCrv1PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC2.ic";
connectAttr "LipCtrlCrv2PosMM.o" "LipCtrlCrv2PosDM.imat";
connectAttr "LipCtrl2Pos.pim" "LipCtrlCrv2PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC3.ic";
connectAttr "LipCtrlCrv3PosMM.o" "LipCtrlCrv3PosDM.imat";
connectAttr "LipCtrl3Pos.pim" "LipCtrlCrv3PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC4.ic";
connectAttr "LipCtrlCrv4PosMM.o" "LipCtrlCrv4PosDM.imat";
connectAttr "LipCtrl4Pos.pim" "LipCtrlCrv4PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC5.ic";
connectAttr "LipCtrlCrv5PosMM.o" "LipCtrlCrv5PosDM.imat";
connectAttr "LipCtrl5Pos.pim" "LipCtrlCrv5PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC6.ic";
connectAttr "LipCtrlCrv6PosMM.o" "LipCtrlCrv6PosDM.imat";
connectAttr "LipCtrl6Pos.pim" "LipCtrlCrv6PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC7.ic";
connectAttr "LipCtrlCrv7PosMM.o" "LipCtrlCrv7PosDM.imat";
connectAttr "LipCtrl7Pos.pim" "LipCtrlCrv7PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC8.ic";
connectAttr "LipCtrlCrv8PosMM.o" "LipCtrlCrv8PosDM.imat";
connectAttr "LipCtrl8Pos.pim" "LipCtrlCrv8PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC9.ic";
connectAttr "LipCtrlCrv9PosMM.o" "LipCtrlCrv9PosDM.imat";
connectAttr "LipCtrl9Pos.pim" "LipCtrlCrv9PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC10.ic";
connectAttr "LipCtrlCrv10PosMM.o" "LipCtrlCrv10PosDM.imat";
connectAttr "LipCtrl10Pos.pim" "LipCtrlCrv10PosMM.i[4]";
connectAttr "LipCtrlCrvShape.ws" "LipCtrlCrvPC11.ic";
connectAttr "LipCtrlCrv11PosMM.o" "LipCtrlCrv11PosDM.imat";
connectAttr "LipCtrl11Pos.pim" "LipCtrlCrv11PosMM.i[4]";
connectAttr "LibACenterAB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LibBAB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightUpLipBCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightUpLipACtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CenterUpLipMCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftUpLipACtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftUpLipBCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightDownLipBCtrlRvsMultMD1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightDownLipACtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftDownLipACtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftDownLipBCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CenterDownLipMCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightLipConerCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftLipConerCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LipModeRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DownLip2CrvPosARotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DownLip2CrvPosBRotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpLip4CrvPosARotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpLip4CrvPosBRotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpLip2CrvPosARotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpLip2CrvPosPosBRotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DownLip4CrvPosPosBRotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DownLip4CrvPosARotPBwML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LibZipSurfShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
// End of lipCtrl04.ma
